uint64_t sub_1B0797770()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  swift_endAccess();
  return v2;
}

void *sub_1B07977D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a2;
  v15 = a1;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
  v8 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v20 = (&v6 - v8);
  v16 = 0;
  v9 = type metadata accessor for MessageSectionDataConcatenator();
  v10 = *(v9 - 8);
  v11 = v9 - 8;
  v12 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v15);
  v13 = (&v6 - v12);
  v24 = &v6 - v12;
  v23 = v4;
  v22 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = (v2 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  swift_beginAccess();
  v17 = *v14;
  v18 = &v21;
  v21 = v15;
  v19 = type metadata accessor for InProgressMessageDownload.Section();
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(v18);
  if ((*(*(v19 - 8) + 48))(v20, 1) == 1)
  {
    sub_1B07ADE14(v20);
    swift_endAccess();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B07AE938(v20, v13);
      swift_endAccess();
      sub_1B07AE9EC(v13, v7);
      (*(v10 + 56))(v7, 0, 1, v9);
      return sub_1B07AE888(v13);
    }

    sub_1B0760B84(v20);
    swift_endAccess();
  }

  return (*(v10 + 56))(v7, 1, 1, v9);
}

uint64_t sub_1B0797A7C(uint64_t a1)
{
  v9 = a1;
  v7 = 0;
  v13 = sub_1B0E443C8();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v2 = &v6 - v6;
  v14 = &v6 - v6;
  v8 = (*(*(type metadata accessor for MessageSectionData.Segment(v1) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v6 - v8;
  v4 = type metadata accessor for MessageSectionData(v3);
  sub_1B07AB12C(v9 + *(v4 + 28), v10);
  (*(v11 + 16))(v2, v10, v13);
  sub_1B07AB694(v10);
  v15 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v11 + 8))(v14, v13);
  return v15;
}

uint64_t sub_1B0797C00(uint64_t *a1)
{
  v2 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0797C2C(uint64_t a1)
{
  v6 = a1;
  v4 = 0;
  v9 = sub_1B0E443C8();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v1 = &v4 - v5;
  v10 = &v4 - v5;
  v2 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  (*(v7 + 16))(v1, v6 + *(v2 + 28), v9);
  v11 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  (*(v7 + 8))(v10, v9);
  return v11;
}

uint64_t sub_1B0797D40(uint64_t a1)
{
  v9 = a1;
  v8 = sub_1B0E443C8();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t *sub_1B0797E8C(uint64_t *a1)
{
  sub_1B074E4B4(a1, v5);
  v2 = type metadata accessor for InProgressMessageDownload.EMLX();
  sub_1B07AEDE0(a1, (v1 + *(v2 + 20)));
  return sub_1B074E868(a1);
}

uint64_t sub_1B0797EF8(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B07AEE78(v1, v3 - v3[0]);
  sub_1B07AF054(v4, v3[1]);
  return sub_1B07AF3D4(v5);
}

uint64_t sub_1B0797FC0(uint64_t a1)
{
  v2 = type metadata accessor for InProgressMessageDownload.Result();
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

uint64_t sub_1B0797FF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1B07B45C0(a1, a3);
  result = type metadata accessor for InProgressMessageDownload.Result();
  *&a3[*(result + 20)] = a2;
  return result;
}

BOOL sub_1B0798040()
{
  v4[5] = 0;
  v1 = type metadata accessor for InProgressMessageDownload.EMLX();
  memcpy(__dst, (v0 + *(v1 + 20)), sizeof(__dst));
  sub_1B074E4B4(__dst, v4);
  v3 = sub_1B07980E0();
  sub_1B074E868(__dst);
  return (v3 & 1) == 0;
}

uint64_t sub_1B07980E0()
{
  v13 = v0;
  v8 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v10 = sub_1B0E454F8();

  sub_1B074E4B4(v9, v12);
  if (v10)
  {
    v5 = v9[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = sub_1B0E454F8();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_1B074E868(v9);
  sub_1B074E4B4(v9, v11);
  if (v7)
  {
    v2 = v9[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3 = sub_1B0E454F8();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  sub_1B074E868(v9);
  return v4 & 1;
}

id sub_1B07982B0()
{
  v4 = "Fatal error";
  v5 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v6 = "Message/InProgressMessageDownload.swift";
  v14 = 0;
  v12 = sub_1B0E443C8();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = &v2 - v7;
  v14 = v0;
  (*(v9 + 16))(&v2 - v7);
  v8 = sub_1B0E44338();
  v13 = MFDataFromDispatchData(v8);
  MEMORY[0x1E69E5920](v8);
  (*(v9 + 8))(v11, v12);
  if (v13)
  {
    return v13;
  }

  sub_1B0E465A8();
  __break(1u);
  return v3;
}

uint64_t sub_1B0798464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v12 = a3;
  v9 = a1;
  v8[1] = a2;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v8 - v10;
  v16 = MEMORY[0x1EEE9AC00](v9);
  v15 = v4;
  v14 = v3;
  sub_1B0798550(v16, v4, v8 - v10);
  v5 = v11;
  v6 = type metadata accessor for InProgressMessageDownload.Completed();
  return sub_1B0797FF8(v13, *(v5 + *(v6 + 32)), v12);
}

void *sub_1B0798550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v59 = a1;
  v60 = a2;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
  v29 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v15 - v29;
  v61 = 0;
  v31 = type metadata accessor for InProgressMessageDownload.EMLX();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v15 - v34;
  v79 = &v15 - v34;
  v36 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v37 = (&v15 - v36);
  v38 = (*(*(_s31PreviouslyDownloadedMessageDataV4MIMEOMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v39 = &v15 - v38;
  v40 = (*(*(_s31PreviouslyDownloadedMessageDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v61);
  v41 = &v15 - v40;
  v42 = type metadata accessor for Message(v5);
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v15 - v45;
  v78 = &v15 - v45;
  v47 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v15 - v47;
  v49 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20F8, &qword_1B0E9B580) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v50 = (&v15 - v49);
  v51 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v55 = &v15 - v54;
  v77 = &v15 - v54;
  v8 = _s6LoggerVMa_1();
  v56 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v15 - v56;
  v58 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v71 = &v15 - v58;
  v70 = sub_1B0E443C8();
  v68 = *(v70 - 8);
  v69 = v70 - 8;
  v63 = *(v68 + 64);
  v62 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v15 - v62;
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v15 - v65;
  v76 = &v15 - v65;
  v75 = v10;
  v74 = v11;
  v73 = v3;
  v67 = type metadata accessor for InProgressMessageDownload.Completed();
  sub_1B075F4A8((v3 + v67[11]), v71);
  if ((*(v68 + 48))(v71, 1, v70) == 1)
  {
    sub_1B075B1E0(v71);
    sub_1B07997A8();
    if ((*(v52 + 48))(v50, 1, v51) == 1)
    {
      v13 = v39;
      sub_1B07AEB1C(v50);
      sub_1B075E87C(v28 + v67[6], v41);
      sub_1B07AF5B8(v41, v13);
      sub_1B075ECD0(v41);
      v22 = sub_1B08255A8();
      sub_1B075EC04(v39);
      if (v22)
      {
        v19 = *(v28 + v67[9]);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v72 = v19;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
        sub_1B07AF6E0();
        v20 = sub_1B0E45748();

        v21 = v20 ^ 1;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        sub_1B079C618(v60, v37);
        if ((*(v43 + 48))(v37, 1, v42) == 1)
        {
          sub_1B07AF920(v37);
          return (*(v32 + 56))(v27, 1, 1, v31);
        }

        else
        {
          v14 = v28;
          (*(v43 + 32))(v46, v37, v42);
          (*(v43 + 16))(v48, v46, v42);
          v15 = *(v14 + v67[9]);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v16 = sub_1B0799230();
          v17 = *v28;

          sub_1B074B69C(v60, v57);
          sub_1B079C7E4(v48, v15, v16, v17, v59, v57, v27);
          return (*(v43 + 8))(v46, v42);
        }
      }

      else
      {
        sub_1B0799E14(v59, v60, v30);
        if ((*(v32 + 48))(v30, 1, v31) == 1)
        {
          sub_1B07AF3D4(v30);
          return (*(v32 + 56))(v27, 1, 1, v31);
        }

        else
        {
          sub_1B07AF768(v30, v35);
          sub_1B07AF800(v35, v27);
          (*(v32 + 56))(v27, 0, 1, v31);
          return sub_1B07AF320(v35);
        }
      }
    }

    else
    {
      sub_1B07AC238(v50, v55);
      (*(v68 + 16))(v64, &v55[*(v51 + 28)], v70);
      Message.init(_:)(v64, v48);
      v23 = sub_1B0799230();
      v24 = *v28;

      sub_1B074B69C(v60, v57);
      sub_1B079986C(v48, v23, v24, v59, v57, v27);
      return sub_1B07AC2FC(v55);
    }
  }

  else
  {
    (*(v68 + 32))(v66, v71, v70);
    (*(v68 + 16))(v64, v66, v70);
    v25 = sub_1B0799230();
    v26 = *v28;

    sub_1B074B69C(v60, v57);
    sub_1B0799428(v64, v25, v26, v59, v57, v27);
    (*(v32 + 56))(v27, 0, 1, v31);
    return (*(v68 + 8))(v66, v70);
  }
}

uint64_t sub_1B0799230()
{
  v11 = 0;
  v10 = sub_1B07A2788;
  v18 = 0;
  v3[5] = 0;
  v4 = _s31PreviouslyDownloadedMessageDataVMa();
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v6 = v3 - v5;
  v18 = v0;
  v7 = type metadata accessor for InProgressMessageDownload.Completed();
  v8 = *(v0 + *(v7 + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17[0] = v8;
  v9 = sub_1B07167A8();
  v1 = sub_1B0E44588();
  v14 = &v16;
  v16 = v1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2128, &qword_1B0E9B5A8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07AF9C8();
  sub_1B0E44FD8();
  sub_1B039E440(v17);
  v3[1] = v17[1];
  sub_1B075E87C((v3[4] + *(v7 + 24)), v6);
  v3[0] = *&v6[*(v4 + 20)];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B075ECD0(v6);
  v3[3] = &v15;
  v15 = v3[0];
  v3[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  sub_1B07AFA50();
  return sub_1B0E454B8();
}

uint64_t sub_1B0799428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v35 = a1;
  v32 = a2;
  v19 = a3;
  v31 = a4;
  v30 = a5;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v17 = 0;
  v36 = sub_1B0E443C8();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v16 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](0);
  v22 = &v15 - v16;
  v27 = type metadata accessor for Message(v6);
  v25 = *(v27 - 8);
  v26 = v27 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v15 - v18;
  v28 = &v15 - v18;
  v45 = &v15 - v18;
  v23 = type metadata accessor for InProgressMessageDownload.EMLX();
  v8 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v22);
  v37 = &v15 - v10;
  v44 = &v15 - v10;
  v43 = v11;
  v42 = v32;
  v41 = v19;
  v40 = v12;
  v39 = v13;
  v21 = *(v33 + 16);
  v20 = v33 + 16;
  v21(v9);
  Message.init(_:)(v22, v7);
  v24 = v46;
  sub_1B07A2A88(v31, v32, v46);
  (v21)(v22, v35, v36);
  (*(v33 + 32))(v37, v22, v36);
  sub_1B074E4B4(v24, v38);
  memcpy((v37 + *(v23 + 20)), v24, 0x28uLL);
  sub_1B074E868(v24);
  (*(v25 + 8))(v28, v27);
  sub_1B07AF800(v37, v29);
  sub_1B074B764(v30);

  (*(v33 + 8))(v35, v36);
  return sub_1B07AF320(v37);
}

uint64_t *sub_1B07997A8()
{
  v4 = v0;
  v2 = *(v0 + *(type metadata accessor for InProgressMessageDownload.Completed() + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
  sub_1B07AFAD8();
  sub_1B0E44FB8();
  return sub_1B039E440(&v3);
}

uint64_t sub_1B079986C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a6;
  v36 = a1;
  v35 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v23 = 0;
  v6 = _s6LoggerVMa_1();
  v20 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v21 = &v19 - v20;
  v22 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v34 = &v19 - v22;
  v24 = sub_1B0E443C8();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v19 - v27;
  v29 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v19 - v29;
  v52 = &v19 - v29;
  v37 = type metadata accessor for InProgressMessageDownload.EMLX();
  v38 = *(v37 - 8);
  v39 = v37 - 8;
  v41 = *(v38 + 64);
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v36);
  v42 = &v19 - v40;
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v44 = &v19 - v43;
  v51 = &v19 - v43;
  v50 = v10;
  v49 = v11;
  v48 = v12;
  v47 = v13;
  v46 = v14;
  sub_1B07A2814(v10, v15);
  v45 = 0;
  (*(v25 + 56))(v34, 0, 1, v24);
  if ((*(v25 + 48))(v34, 1, v24) == 1)
  {
    sub_1B075B1E0(v34);
    sub_1B074B764(v33);

    v16 = type metadata accessor for Message(0);
    (*(*(v16 - 8) + 8))(v36);
    return (*(v38 + 56))(v19, 1, 1, v37);
  }

  else
  {
    (*(v25 + 32))(v30, v34, v24);
    (*(v25 + 16))(v28, v30, v24);
    sub_1B074B69C(v33, v21);
    sub_1B0799428(v28, v35, v31, v32, v21, v42);
    sub_1B07AF768(v42, v44);
    (*(v25 + 8))(v30, v24);
    sub_1B07AF800(v44, v19);
    (*(v38 + 56))(v19, 0, 1, v37);
    sub_1B074B764(v33);
    v18 = type metadata accessor for Message(0);
    (*(*(v18 - 8) + 8))(v36);
    return sub_1B07AF320(v44);
  }
}

uint64_t sub_1B0799E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v224 = a3;
  v294 = a1;
  v289 = a2;
  v226 = sub_1B079EE08;
  v227 = sub_1B074E050;
  v228 = sub_1B07B073C;
  v229 = sub_1B0394C30;
  v230 = sub_1B0394C24;
  v231 = sub_1B074DFFC;
  v232 = sub_1B039BA88;
  v233 = sub_1B039BB94;
  v234 = sub_1B0394C24;
  v235 = sub_1B039BBA0;
  v236 = sub_1B039BC08;
  v237 = sub_1B06BA324;
  v238 = sub_1B074E0E4;
  v239 = sub_1B039BCF8;
  v240 = sub_1B07AFC70;
  v241 = sub_1B039BCF8;
  v242 = sub_1B07AB020;
  v243 = sub_1B039BC08;
  v244 = sub_1B0398F5C;
  v245 = sub_1B0398F5C;
  v246 = sub_1B0399178;
  v247 = sub_1B0398F5C;
  v248 = sub_1B0398F5C;
  v249 = sub_1B039BA94;
  v250 = sub_1B0398F5C;
  v251 = sub_1B0398F5C;
  v252 = sub_1B0399178;
  v253 = sub_1B0398F5C;
  v254 = sub_1B0398F5C;
  v255 = sub_1B03991EC;
  v256 = sub_1B0398F5C;
  v257 = sub_1B0398F5C;
  v258 = sub_1B03993BC;
  v259 = sub_1B0398F5C;
  v260 = sub_1B0398F5C;
  v261 = sub_1B039BCEC;
  v262 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v264 = sub_1B039BCEC;
  v265 = sub_1B0398F5C;
  v266 = sub_1B0398F5C;
  v267 = sub_1B03991EC;
  v268 = sub_1B079F204;
  v312 = 0;
  v311 = 0;
  v310 = 0;
  v309 = 0;
  v308 = 0;
  v307 = 0;
  v269 = 0;
  v305 = 0;
  v287 = 0;
  v270 = *(type metadata accessor for InProgressMessageDownload.Completed() - 8);
  v271 = v270;
  v272 = *(v270 + 64);
  v273 = (v272 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v274 = (&v120 - v273);
  v275 = _s6LoggerVMa_1();
  v276 = (*(*(v275 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v287);
  v277 = &v120 - v276;
  v278 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v279 = &v120 - v278;
  v280 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v281 = &v120 - v280;
  v282 = sub_1B0E439A8();
  v283 = *(v282 - 8);
  v284 = v282 - 8;
  v285 = (*(v283 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v282);
  v286 = &v120 - v285;
  v288 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v287);
  v298 = &v120 - v288;
  v299 = type metadata accessor for Message(v8);
  v296 = *(v299 - 8);
  v297 = v299 - 8;
  v291 = *(v296 + 64);
  v290 = (v291 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v289);
  v292 = &v120 - v290;
  v293 = (v291 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v295 = &v120 - v293;
  v312 = &v120 - v293;
  v311 = v294;
  v310 = v10;
  v309 = v3;
  sub_1B079CCFC(v10, v11);
  if ((*(v296 + 48))(v298, 1, v299) == 1)
  {
    sub_1B07AF920(v298);
    v119 = type metadata accessor for InProgressMessageDownload.EMLX();
    return (*(*(v119 - 8) + 56))(v224, 1);
  }

  else
  {
    v12 = v269;
    (*(v296 + 32))(v295, v298, v299);
    v220 = Message.findPartsMissingData(cache:)(v294);
    v308 = v220;
    v306[2] = v220;
    v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
    sub_1B07AFB60();
    result = sub_1B0E44F58();
    v222 = v12;
    v223 = result;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v218 = v223;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v307 = v218;
      v306[1] = v218;
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      v217 = sub_1B07AFBE8();
      v219 = sub_1B0E45748();

      if (v219)
      {
        v118 = type metadata accessor for InProgressMessageDownload.EMLX();
        (*(*(v118 - 8) + 56))(v224, 1);
        sub_1B039E440(&v307);

        return (*(v296 + 8))(v295, v299);
      }

      (*(v283 + 16))(v286, v289, v282);
      sub_1B074B69C(v289, v281);
      sub_1B074B69C(v281, v279);
      sub_1B074E41C(v281, v277);
      v14 = (v279 + *(v275 + 20));
      v160 = *v14;
      v161 = *(v14 + 1);
      v162 = *(v14 + 1);
      v163 = *(v14 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v279);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v159 = 36;
      v183 = 7;
      v15 = swift_allocObject();
      v16 = v161;
      v17 = v162;
      v18 = v163;
      v168 = v15;
      *(v15 + 16) = v160;
      *(v15 + 20) = v16;
      *(v15 + 24) = v17;
      *(v15 + 32) = v18;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = swift_allocObject();
      v20 = v161;
      v21 = v162;
      v22 = v163;
      v158 = v19;
      *(v19 + 16) = v160;
      *(v19 + 20) = v20;
      *(v19 + 24) = v21;
      *(v19 + 32) = v22;

      v182 = 32;
      v23 = swift_allocObject();
      v24 = v158;
      v172 = v23;
      *(v23 + 16) = v227;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      v25 = swift_allocObject();
      v26 = v161;
      v27 = v162;
      v28 = v163;
      v29 = v25;
      v30 = v277;
      v175 = v29;
      *(v29 + 16) = v160;
      *(v29 + 20) = v26;
      *(v29 + 24) = v27;
      *(v29 + 32) = v28;
      sub_1B074B764(v30);
      v164 = v307;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v186 = 24;
      v31 = swift_allocObject();
      v32 = v274;
      v33 = v31;
      v34 = v225;
      v178 = v33;
      *(v33 + 16) = v164;
      sub_1B07AFC78(v34, v32);
      v165 = (*(v271 + 80) + 16) & ~*(v271 + 80);
      v166 = swift_allocObject();
      sub_1B07B02D8(v274, (v166 + v165));

      v35 = swift_allocObject();
      v36 = v166;
      v184 = v35;
      *(v35 + 16) = v228;
      *(v35 + 24) = v36;

      v214 = sub_1B0E43988();
      v215 = sub_1B0E45908();
      v180 = 17;
      v187 = swift_allocObject();
      v170 = 16;
      *(v187 + 16) = 16;
      v188 = swift_allocObject();
      v181 = 4;
      *(v188 + 16) = 4;
      v37 = swift_allocObject();
      v167 = v37;
      *(v37 + 16) = v229;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v167;
      v189 = v38;
      *(v38 + 16) = v230;
      *(v38 + 24) = v39;
      v190 = swift_allocObject();
      *(v190 + 16) = 0;
      v191 = swift_allocObject();
      *(v191 + 16) = 1;
      v40 = swift_allocObject();
      v41 = v168;
      v169 = v40;
      *(v40 + 16) = v231;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v169;
      v192 = v42;
      *(v42 + 16) = v232;
      *(v42 + 24) = v43;
      v193 = swift_allocObject();
      *(v193 + 16) = v170;
      v194 = swift_allocObject();
      *(v194 + 16) = v181;
      v44 = swift_allocObject();
      v171 = v44;
      *(v44 + 16) = v233;
      *(v44 + 24) = 0;
      v45 = swift_allocObject();
      v46 = v171;
      v195 = v45;
      *(v45 + 16) = v234;
      *(v45 + 24) = v46;
      v196 = swift_allocObject();
      *(v196 + 16) = 0;
      v197 = swift_allocObject();
      *(v197 + 16) = v181;
      v47 = swift_allocObject();
      v48 = v172;
      v173 = v47;
      *(v47 + 16) = v235;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v173;
      v198 = v49;
      *(v49 + 16) = v236;
      *(v49 + 24) = v50;
      v199 = swift_allocObject();
      *(v199 + 16) = 112;
      v200 = swift_allocObject();
      v177 = 8;
      *(v200 + 16) = 8;
      v174 = swift_allocObject();
      *(v174 + 16) = 0x786F626C69616DLL;
      v51 = swift_allocObject();
      v52 = v174;
      v201 = v51;
      *(v51 + 16) = v237;
      *(v51 + 24) = v52;
      v202 = swift_allocObject();
      *(v202 + 16) = 37;
      v203 = swift_allocObject();
      *(v203 + 16) = v177;
      v53 = swift_allocObject();
      v54 = v175;
      v176 = v53;
      *(v53 + 16) = v238;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v176;
      v204 = v55;
      *(v55 + 16) = v239;
      *(v55 + 24) = v56;
      v205 = swift_allocObject();
      *(v205 + 16) = 32;
      v206 = swift_allocObject();
      *(v206 + 16) = v177;
      v57 = swift_allocObject();
      v58 = v178;
      v179 = v57;
      *(v57 + 16) = v240;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v179;
      v207 = v59;
      *(v59 + 16) = v241;
      *(v59 + 24) = v60;
      v208 = swift_allocObject();
      *(v208 + 16) = 0;
      v209 = swift_allocObject();
      *(v209 + 16) = v181;
      v61 = swift_allocObject();
      v62 = v184;
      v185 = v61;
      *(v61 + 16) = v242;
      *(v61 + 24) = v62;
      v63 = swift_allocObject();
      v64 = v185;
      v211 = v63;
      *(v63 + 16) = v243;
      *(v63 + 24) = v64;
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v210 = sub_1B0E46A48();
      v212 = v65;

      v66 = v187;
      v67 = v212;
      *v212 = v244;
      v67[1] = v66;

      v68 = v188;
      v69 = v212;
      v212[2] = v245;
      v69[3] = v68;

      v70 = v189;
      v71 = v212;
      v212[4] = v246;
      v71[5] = v70;

      v72 = v190;
      v73 = v212;
      v212[6] = v247;
      v73[7] = v72;

      v74 = v191;
      v75 = v212;
      v212[8] = v248;
      v75[9] = v74;

      v76 = v192;
      v77 = v212;
      v212[10] = v249;
      v77[11] = v76;

      v78 = v193;
      v79 = v212;
      v212[12] = v250;
      v79[13] = v78;

      v80 = v194;
      v81 = v212;
      v212[14] = v251;
      v81[15] = v80;

      v82 = v195;
      v83 = v212;
      v212[16] = v252;
      v83[17] = v82;

      v84 = v196;
      v85 = v212;
      v212[18] = v253;
      v85[19] = v84;

      v86 = v197;
      v87 = v212;
      v212[20] = v254;
      v87[21] = v86;

      v88 = v198;
      v89 = v212;
      v212[22] = v255;
      v89[23] = v88;

      v90 = v199;
      v91 = v212;
      v212[24] = v256;
      v91[25] = v90;

      v92 = v200;
      v93 = v212;
      v212[26] = v257;
      v93[27] = v92;

      v94 = v201;
      v95 = v212;
      v212[28] = v258;
      v95[29] = v94;

      v96 = v202;
      v97 = v212;
      v212[30] = v259;
      v97[31] = v96;

      v98 = v203;
      v99 = v212;
      v212[32] = v260;
      v99[33] = v98;

      v100 = v204;
      v101 = v212;
      v212[34] = v261;
      v101[35] = v100;

      v102 = v205;
      v103 = v212;
      v212[36] = v262;
      v103[37] = v102;

      v104 = v206;
      v105 = v212;
      v212[38] = v263;
      v105[39] = v104;

      v106 = v207;
      v107 = v212;
      v212[40] = v264;
      v107[41] = v106;

      v108 = v208;
      v109 = v212;
      v212[42] = v265;
      v109[43] = v108;

      v110 = v209;
      v111 = v212;
      v212[44] = v266;
      v111[45] = v110;

      v112 = v211;
      v113 = v212;
      v212[46] = v267;
      v113[47] = v112;
      sub_1B0394964();

      if (os_log_type_enabled(v214, v215))
      {
        v114 = v222;
        v151 = sub_1B0E45D78();
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v152 = sub_1B03949A8(0);
        v153 = sub_1B03949A8(2);
        v154 = &v304;
        v304 = v151;
        v155 = &v303;
        v303 = v152;
        v156 = &v302;
        v302 = v153;
        sub_1B0394A48(3, &v304);
        sub_1B0394A48(8, v154);
        v300 = v244;
        v301 = v187;
        sub_1B03949FC(&v300, v154, v155, v156);
        v157 = v114;
        if (v114)
        {

          __break(1u);
        }

        else
        {
          v300 = v245;
          v301 = v188;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v147 = 0;
          v300 = v246;
          v301 = v189;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v146 = 0;
          v300 = v247;
          v301 = v190;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v145 = 0;
          v300 = v248;
          v301 = v191;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v144 = 0;
          v300 = v249;
          v301 = v192;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v143 = 0;
          v300 = v250;
          v301 = v193;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v142 = 0;
          v300 = v251;
          v301 = v194;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v141 = 0;
          v300 = v252;
          v301 = v195;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v140 = 0;
          v300 = v253;
          v301 = v196;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v139 = 0;
          v300 = v254;
          v301 = v197;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v138 = 0;
          v300 = v255;
          v301 = v198;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v137 = 0;
          v300 = v256;
          v301 = v199;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v136 = 0;
          v300 = v257;
          v301 = v200;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v135 = 0;
          v300 = v258;
          v301 = v201;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v134 = 0;
          v300 = v259;
          v301 = v202;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v133 = 0;
          v300 = v260;
          v301 = v203;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v132 = 0;
          v300 = v261;
          v301 = v204;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v131 = 0;
          v300 = v262;
          v301 = v205;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v130 = 0;
          v300 = v263;
          v301 = v206;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v129 = 0;
          v300 = v264;
          v301 = v207;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v128 = 0;
          v300 = v265;
          v301 = v208;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v127 = 0;
          v300 = v266;
          v301 = v209;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v126 = 0;
          v300 = v267;
          v301 = v211;
          sub_1B03949FC(&v300, &v304, &v303, &v302);
          v125 = 0;
          _os_log_impl(&dword_1B0389000, v214, v215, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Filling out empty & missing section(s) %s for UID %u.", v151, 0x3Bu);
          sub_1B03998A8(v152);
          sub_1B03998A8(v153);
          sub_1B0E45D58();

          v148 = v125;
        }
      }

      else
      {
        v115 = v222;

        v148 = v115;
      }

      v116 = v148;
      MEMORY[0x1E69E5920](v214);
      (*(v283 + 8))(v286, v282);
      v306[0] = v164;
      v117 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
      result = sub_1B039CA88(v268, 0, v216, v117, MEMORY[0x1E69E73E0], v217, MEMORY[0x1E69E7410], v149);
      v124 = result;
      if (!v116)
      {
        v121 = v124;
        sub_1B039E440(v306);
        v305 = v121;
        (*(v296 + 16))(v292, v295, v299);
        v122 = sub_1B0799230();
        v123 = *v225;

        sub_1B074B69C(v289, v281);
        sub_1B079C7E4(v292, v121, v122, v123, v294, v281, v224);
        sub_1B039E440(&v307);

        return (*(v296 + 8))(v295, v299);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B079C618@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = a2;
  v5 = a1;
  v14 = 0;
  v13 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v6;
  v14 = MEMORY[0x1EEE9AC00](v5);
  v13 = v2;
  sub_1B079CCFC(v14, &v4 - v6);
  v8 = type metadata accessor for Message(0);
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = *(v9 + 48);
  v12 = v9 + 48;
  if ((v11)(v7, 1) == 1)
  {
    sub_1B079F310(v5, v4);
    result = v11(v7, 1, v8);
    if (result != 1)
    {
      return sub_1B07AF920(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v4, v7, v8);
    return (*(v9 + 56))(v4, 0, 1, v8);
  }

  return result;
}

uint64_t sub_1B079C7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v21 = a7;
  v34 = a1;
  v33 = a2;
  v42 = a3;
  v31 = a4;
  v30 = a5;
  v32 = a6;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v25 = 0;
  v7 = _s6LoggerVMa_1();
  v22 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v23 = &v20 - v22;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v46 = &v20 - v24;
  v47 = sub_1B0E443C8();
  v44 = *(v47 - 8);
  v45 = v47 - 8;
  v26 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v25);
  v27 = &v20 - v26;
  v28 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v20 - v28;
  v55 = &v20 - v28;
  v35 = type metadata accessor for InProgressMessageDownload.EMLX();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v39 = *(v36 + 64);
  v38 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v34);
  v40 = &v20 - v38;
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v43 = &v20 - v41;
  v54 = &v20 - v41;
  v53 = v11;
  v52 = v12;
  v51 = v42;
  v50 = v13;
  v49 = v14;
  v48 = v15;
  sub_1B07A28B8(v11, v12, v13, v15, v16);
  if ((*(v44 + 48))(v46, 1, v47) == 1)
  {
    sub_1B075B1E0(v46);
    sub_1B074B764(v32);

    v17 = type metadata accessor for Message(0);
    (*(*(v17 - 8) + 8))(v34);
    return (*(v36 + 56))(v21, 1, 1, v35);
  }

  else
  {
    (*(v44 + 32))(v29, v46, v47);
    (*(v44 + 16))(v27, v29, v47);
    sub_1B074B69C(v32, v23);
    sub_1B0799428(v27, v42, v31, v30, v23, v40);
    sub_1B07AF768(v40, v43);
    (*(v44 + 8))(v29, v47);
    sub_1B07AF800(v43, v21);
    (*(v36 + 56))(v21, 0, 1, v35);
    sub_1B074B764(v32);

    v19 = type metadata accessor for Message(0);
    (*(*(v19 - 8) + 8))(v34);
    return sub_1B07AF320(v43);
  }
}

uint64_t sub_1B079CCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v213 = a1;
  v163 = sub_1B074E050;
  v164 = sub_1B0394C30;
  v165 = sub_1B0394C24;
  v166 = sub_1B074DFFC;
  v167 = sub_1B039BA88;
  v168 = sub_1B039BB94;
  v169 = sub_1B0394C24;
  v170 = sub_1B039BBA0;
  v171 = sub_1B039BC08;
  v172 = sub_1B06BA324;
  v173 = sub_1B074E0E4;
  v174 = sub_1B039BCF8;
  v175 = sub_1B07B07A0;
  v176 = sub_1B03B0DF8;
  v177 = sub_1B0398F5C;
  v178 = sub_1B0398F5C;
  v179 = sub_1B0399178;
  v180 = sub_1B0398F5C;
  v181 = sub_1B0398F5C;
  v182 = sub_1B039BA94;
  v183 = sub_1B0398F5C;
  v184 = sub_1B0398F5C;
  v185 = sub_1B0399178;
  v186 = sub_1B0398F5C;
  v187 = sub_1B0398F5C;
  v188 = sub_1B03991EC;
  v189 = sub_1B0398F5C;
  v190 = sub_1B0398F5C;
  v191 = sub_1B03993BC;
  v192 = sub_1B0398F5C;
  v193 = sub_1B0398F5C;
  v194 = sub_1B039BCEC;
  v195 = sub_1B0398F5C;
  v196 = sub_1B0398F5C;
  v197 = sub_1B0399260;
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v198 = 0;
  v214 = 0;
  v199 = _s6LoggerVMa_1();
  v200 = (*(*(v199 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v201 = v99 - v200;
  v202 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v203 = v99 - v202;
  v204 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v205 = v99 - v204;
  v206 = sub_1B0E439A8();
  v207 = *(v206 - 8);
  v208 = v206 - 8;
  v209 = (*(v207 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v214);
  v210 = v99 - v209;
  v225 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  v211 = (*(*(v225 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v214);
  v226 = v99 - v211;
  v212 = (*(*(_s31PreviouslyDownloadedMessageDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v214);
  v224 = v99 - v212;
  v215 = sub_1B0E443C8();
  v217 = *(v215 - 8);
  v216 = v215 - 8;
  v218 = v217;
  v220 = *(v217 + 64);
  v219 = (v220 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v214);
  v221 = v99 - v219;
  v222 = (v220 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v223 = v99 - v222;
  v234 = v99 - v222;
  v233 = v8;
  v232 = v2;
  v9 = type metadata accessor for InProgressMessageDownload.Completed();
  sub_1B075E87C((v2 + *(v9 + 24)), v224);
  sub_1B07AF5B8(v224, v226);
  sub_1B075ECD0(v224);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = v210;
    v115 = v218;
    v118 = *(v217 + 32);
    v117 = v217 + 32;
    v118(v223, v226, v215);
    (*(v207 + 16))(v10, v213, v206);
    sub_1B074B69C(v213, v205);
    sub_1B074B69C(v205, v203);
    sub_1B074E41C(v205, v201);
    v11 = (v203 + *(v199 + 20));
    v109 = *v11;
    v110 = *(v11 + 1);
    v111 = *(v11 + 1);
    v112 = *(v11 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v203);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v108 = 36;
    v133 = 7;
    v12 = swift_allocObject();
    v13 = v110;
    v14 = v111;
    v15 = v112;
    v120 = v12;
    *(v12 + 16) = v109;
    *(v12 + 20) = v13;
    *(v12 + 24) = v14;
    *(v12 + 32) = v15;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = swift_allocObject();
    v17 = v110;
    v18 = v111;
    v19 = v112;
    v107 = v16;
    *(v16 + 16) = v109;
    *(v16 + 20) = v17;
    *(v16 + 24) = v18;
    *(v16 + 32) = v19;

    v132 = 32;
    v20 = swift_allocObject();
    v21 = v107;
    v125 = v20;
    *(v20 + 16) = v163;
    *(v20 + 24) = v21;
    sub_1B0394868();
    sub_1B0394868();

    v22 = swift_allocObject();
    v23 = v110;
    v24 = v111;
    v25 = v112;
    v26 = v22;
    v27 = v201;
    v128 = v26;
    *(v26 + 16) = v109;
    *(v26 + 20) = v23;
    *(v26 + 24) = v24;
    *(v26 + 32) = v25;
    sub_1B074B764(v27);
    v113 = *(v217 + 16);
    v114 = v217 + 16;
    v113(v221, v223, v215);
    v116 = (*(v115 + 80) + 16) & ~*(v115 + 80);
    v134 = swift_allocObject();
    v118((v134 + v116), v221, v215);
    sub_1B07575C4();

    v160 = sub_1B0E43988();
    v161 = sub_1B0E458D8();
    v130 = 17;
    v136 = swift_allocObject();
    v122 = 16;
    *(v136 + 16) = 16;
    v137 = swift_allocObject();
    v124 = 4;
    *(v137 + 16) = 4;
    v28 = swift_allocObject();
    v119 = v28;
    *(v28 + 16) = v164;
    *(v28 + 24) = 0;
    v29 = swift_allocObject();
    v30 = v119;
    v138 = v29;
    *(v29 + 16) = v165;
    *(v29 + 24) = v30;
    v139 = swift_allocObject();
    *(v139 + 16) = 0;
    v140 = swift_allocObject();
    *(v140 + 16) = 1;
    v31 = swift_allocObject();
    v32 = v120;
    v121 = v31;
    *(v31 + 16) = v166;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v121;
    v141 = v33;
    *(v33 + 16) = v167;
    *(v33 + 24) = v34;
    v142 = swift_allocObject();
    *(v142 + 16) = v122;
    v143 = swift_allocObject();
    *(v143 + 16) = v124;
    v35 = swift_allocObject();
    v123 = v35;
    *(v35 + 16) = v168;
    *(v35 + 24) = 0;
    v36 = swift_allocObject();
    v37 = v123;
    v144 = v36;
    *(v36 + 16) = v169;
    *(v36 + 24) = v37;
    v145 = swift_allocObject();
    *(v145 + 16) = 0;
    v146 = swift_allocObject();
    *(v146 + 16) = v124;
    v38 = swift_allocObject();
    v39 = v125;
    v126 = v38;
    *(v38 + 16) = v170;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v126;
    v147 = v40;
    *(v40 + 16) = v171;
    *(v40 + 24) = v41;
    v148 = swift_allocObject();
    *(v148 + 16) = 112;
    v149 = swift_allocObject();
    v131 = 8;
    *(v149 + 16) = 8;
    v127 = swift_allocObject();
    *(v127 + 16) = 0x786F626C69616DLL;
    v42 = swift_allocObject();
    v43 = v127;
    v150 = v42;
    *(v42 + 16) = v172;
    *(v42 + 24) = v43;
    v151 = swift_allocObject();
    *(v151 + 16) = 37;
    v152 = swift_allocObject();
    *(v152 + 16) = v131;
    v44 = swift_allocObject();
    v45 = v128;
    v129 = v44;
    *(v44 + 16) = v173;
    *(v44 + 24) = v45;
    v46 = swift_allocObject();
    v47 = v129;
    v153 = v46;
    *(v46 + 16) = v174;
    *(v46 + 24) = v47;
    v154 = swift_allocObject();
    *(v154 + 16) = 0;
    v155 = swift_allocObject();
    *(v155 + 16) = v131;
    v48 = swift_allocObject();
    v49 = v134;
    v135 = v48;
    *(v48 + 16) = v175;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v135;
    v157 = v50;
    *(v50 + 16) = v176;
    *(v50 + 24) = v51;
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v156 = sub_1B0E46A48();
    v158 = v52;

    v53 = v136;
    v54 = v158;
    *v158 = v177;
    v54[1] = v53;

    v55 = v137;
    v56 = v158;
    v158[2] = v178;
    v56[3] = v55;

    v57 = v138;
    v58 = v158;
    v158[4] = v179;
    v58[5] = v57;

    v59 = v139;
    v60 = v158;
    v158[6] = v180;
    v60[7] = v59;

    v61 = v140;
    v62 = v158;
    v158[8] = v181;
    v62[9] = v61;

    v63 = v141;
    v64 = v158;
    v158[10] = v182;
    v64[11] = v63;

    v65 = v142;
    v66 = v158;
    v158[12] = v183;
    v66[13] = v65;

    v67 = v143;
    v68 = v158;
    v158[14] = v184;
    v68[15] = v67;

    v69 = v144;
    v70 = v158;
    v158[16] = v185;
    v70[17] = v69;

    v71 = v145;
    v72 = v158;
    v158[18] = v186;
    v72[19] = v71;

    v73 = v146;
    v74 = v158;
    v158[20] = v187;
    v74[21] = v73;

    v75 = v147;
    v76 = v158;
    v158[22] = v188;
    v76[23] = v75;

    v77 = v148;
    v78 = v158;
    v158[24] = v189;
    v78[25] = v77;

    v79 = v149;
    v80 = v158;
    v158[26] = v190;
    v80[27] = v79;

    v81 = v150;
    v82 = v158;
    v158[28] = v191;
    v82[29] = v81;

    v83 = v151;
    v84 = v158;
    v158[30] = v192;
    v84[31] = v83;

    v85 = v152;
    v86 = v158;
    v158[32] = v193;
    v86[33] = v85;

    v87 = v153;
    v88 = v158;
    v158[34] = v194;
    v88[35] = v87;

    v89 = v154;
    v90 = v158;
    v158[36] = v195;
    v90[37] = v89;

    v91 = v155;
    v92 = v158;
    v158[38] = v196;
    v92[39] = v91;

    v93 = v157;
    v94 = v158;
    v158[40] = v197;
    v94[41] = v93;
    sub_1B0394964();

    if (os_log_type_enabled(v160, v161))
    {
      v95 = v198;
      v100 = sub_1B0E45D78();
      v99[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v101 = sub_1B03949A8(0);
      v102 = sub_1B03949A8(1);
      v103 = &v231;
      v231 = v100;
      v104 = &v230;
      v230 = v101;
      v105 = &v229;
      v229 = v102;
      sub_1B0394A48(3, &v231);
      sub_1B0394A48(7, v103);
      v227 = v177;
      v228 = v136;
      sub_1B03949FC(&v227, v103, v104, v105);
      v106 = v95;
      if (v95)
      {

        __break(1u);
      }

      else
      {
        v227 = v178;
        v228 = v137;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[19] = 0;
        v227 = v179;
        v228 = v138;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[18] = 0;
        v227 = v180;
        v228 = v139;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[17] = 0;
        v227 = v181;
        v228 = v140;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[16] = 0;
        v227 = v182;
        v228 = v141;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[15] = 0;
        v227 = v183;
        v228 = v142;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[14] = 0;
        v227 = v184;
        v228 = v143;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[13] = 0;
        v227 = v185;
        v228 = v144;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[12] = 0;
        v227 = v186;
        v228 = v145;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[11] = 0;
        v227 = v187;
        v228 = v146;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[10] = 0;
        v227 = v188;
        v228 = v147;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[9] = 0;
        v227 = v189;
        v228 = v148;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[8] = 0;
        v227 = v190;
        v228 = v149;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[7] = 0;
        v227 = v191;
        v228 = v150;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[6] = 0;
        v227 = v192;
        v228 = v151;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[5] = 0;
        v227 = v193;
        v228 = v152;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[4] = 0;
        v227 = v194;
        v228 = v153;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[3] = 0;
        v227 = v195;
        v228 = v154;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[2] = 0;
        v227 = v196;
        v228 = v155;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        v99[1] = 0;
        v227 = v197;
        v228 = v157;
        sub_1B03949FC(&v227, &v231, &v230, &v229);
        _os_log_impl(&dword_1B0389000, v160, v161, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Using existing (sparse) message data (%{iec-bytes}ld) to build EMLX.", v100, 0x35u);
        sub_1B03998A8(v101);
        sub_1B03998A8(v102);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v160);
    (*(v207 + 8))(v210, v206);
    v113(v221, v223, v215);
    Message.init(_:)(v221, v162);
    v96 = type metadata accessor for Message(0);
    (*(*(v96 - 8) + 56))(v162, 0, 1);
    return (*(v217 + 8))(v223, v215);
  }

  else
  {
    sub_1B075EC04(v226);
    v98 = type metadata accessor for Message(0);
    return (*(*(v98 - 8) + 56))(v162, 1);
  }
}

uint64_t sub_1B079EE08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 40);
  result = sub_1B07B0B1C(v6, v7, v8, v9, v10);
  if (v10 == 1)
  {
    if ((v7 & 1) == 0 && v6 == 0)
    {
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *a2 = v5;
      return result;
    }
  }

  else
  {
    result = sub_1B07B0B7C(v6, v7, v8, v9, v10);
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1B079EF88(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  v1 = sub_1B07AFBE8();
  v3 = sub_1B039CA88(sub_1B079F0E8, 0, v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v7);
  sub_1B039E440(&v9);
  v8 = v3;
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v4 = sub_1B0E448E8();

  sub_1B039E440(&v8);

  return v4;
}

uint64_t sub_1B079F0E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469E8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B079F204@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v7 = a2;
  v3 = a1;
  v12 = 0;
  v9 = 0;
  v4 = (*(*(sub_1B0E443C8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v3 - v4;
  v8 = *MEMORY[0x1EEE9AC00](v3);
  v12 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v15;
  sub_1B075FEBC(v15);
  v6 = v14;
  memcpy(v14, v5, 0xB1uLL);
  v10 = v13;
  MessageSectionData.Segment.Initial.init(bodyStructure:)(v14, v13);
  sub_1B0E44378();
  return sub_1B08C0760(v10, v8, v9, v9, v9, v9, v11, v7);
}

uint64_t sub_1B079F310@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v341 = a2;
  v451 = a1;
  v343 = sub_1B074E050;
  v344 = sub_1B07B073C;
  v345 = sub_1B0394C30;
  v346 = sub_1B0394C24;
  v347 = sub_1B074DFFC;
  v348 = sub_1B039BA88;
  v349 = sub_1B039BB94;
  v350 = sub_1B0394C24;
  v351 = sub_1B039BBA0;
  v352 = sub_1B039BC08;
  v353 = 0x786F626C69616DLL;
  v354 = sub_1B06BA324;
  v355 = sub_1B074E0E4;
  v356 = sub_1B039BCF8;
  v357 = sub_1B07AB020;
  v358 = sub_1B039BC08;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0399178;
  v362 = sub_1B0398F5C;
  v363 = sub_1B0398F5C;
  v364 = sub_1B039BA94;
  v365 = sub_1B0398F5C;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0399178;
  v368 = sub_1B0398F5C;
  v369 = sub_1B0398F5C;
  v370 = sub_1B03991EC;
  v371 = sub_1B0398F5C;
  v372 = sub_1B0398F5C;
  v373 = sub_1B03993BC;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0398F5C;
  v376 = sub_1B039BCEC;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0398F5C;
  v379 = sub_1B03991EC;
  v380 = sub_1B074E050;
  v381 = sub_1B07B073C;
  v382 = sub_1B0394C24;
  v383 = sub_1B074DFFC;
  v384 = sub_1B039BA88;
  v385 = sub_1B0394C24;
  v386 = sub_1B039BBA0;
  v387 = sub_1B039BC08;
  v388 = sub_1B06BA324;
  v389 = sub_1B074E0E4;
  v390 = sub_1B039BCF8;
  v391 = sub_1B07AB020;
  v392 = sub_1B039BC08;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0398F5C;
  v395 = sub_1B0399178;
  v396 = sub_1B0398F5C;
  v397 = sub_1B0398F5C;
  v398 = sub_1B039BA94;
  v399 = sub_1B0398F5C;
  v400 = sub_1B0398F5C;
  v401 = sub_1B0399178;
  v402 = sub_1B0398F5C;
  v403 = sub_1B0398F5C;
  v404 = sub_1B03991EC;
  v405 = sub_1B0398F5C;
  v406 = sub_1B0398F5C;
  v407 = sub_1B03993BC;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0398F5C;
  v410 = sub_1B039BCEC;
  v411 = sub_1B0398F5C;
  v412 = sub_1B0398F5C;
  v413 = sub_1B03991EC;
  v480 = 0;
  v479 = 0;
  v478 = 0;
  v477 = 0;
  v476 = 0;
  v414 = 0;
  v461 = 0;
  v452 = type metadata accessor for InProgressMessageDownload.Completed();
  v415 = *(v452 - 8);
  v416 = v415;
  v417 = *(v415 + 64);
  v418 = (v417 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v419 = (v197 - v418);
  v420 = _s6LoggerVMa_1();
  v421 = (*(*(v420 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v461);
  v422 = v197 - v421;
  v423 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v424 = v197 - v423;
  v425 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v426 = v197 - v425;
  v427 = sub_1B0E439A8();
  v428 = *(v427 - 8);
  v429 = v427 - 8;
  v430 = (*(v428 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v461);
  v431 = v197 - v430;
  v432 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v433 = v197 - v432;
  v434 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  v435 = (*(*(v434 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v461);
  v436 = v197 - v435;
  v9 = _s31PreviouslyDownloadedMessageDataVMa();
  v437 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v438 = v197 - v437;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
  v439 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v462 = v197 - v439;
  v440 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v461);
  v441 = v197 - v440;
  v442 = sub_1B0E443C8();
  v443 = *(v442 - 8);
  v444 = v442 - 8;
  v445 = (*(v443 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v461);
  v446 = v197 - v445;
  v480 = v197 - v445;
  v447 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v448 = v197 - v447;
  v449 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v450 = v197 - v449;
  v479 = v197 - v449;
  v453 = type metadata accessor for Message(v15);
  v454 = *(v453 - 8);
  v455 = v453 - 8;
  v457 = *(v454 + 64);
  v456 = (v457 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v452);
  v458 = v197 - v456;
  v459 = (v457 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v460 = v197 - v459;
  v478 = v197 - v459;
  v477 = v18;
  v476 = v2;
  sub_1B075EE10((v2 + *(v17 + 28)), v19);
  v20 = type metadata accessor for MessageHeader();
  if ((*(*(v20 - 8) + 48))(v462, 1) == 1)
  {
    sub_1B075F220(v462);
    (*(v443 + 56))(v441, 1, 1, v442);
  }

  else
  {
    (*(v443 + 16))(v441, v462, v442);
    sub_1B075CD68(v462);
    (*(v443 + 56))(v441, 0, 1, v442);
  }

  if ((*(v443 + 48))(v441, 1, v442) != 1)
  {
    (*(v443 + 32))(v450, v441, v442);
    (*(v443 + 16))(v448, v450, v442);
    Message.init(_:)(v448, v458);
    (*(v454 + 32))(v460, v458, v453);
    (*(v443 + 8))(v450, v442);
    goto LABEL_14;
  }

  sub_1B075B1E0(v441);
  sub_1B075E87C((v342 + *(v452 + 24)), v438);
  sub_1B07AF5B8(v438, v436);
  sub_1B075ECD0(v438);
  if (!swift_getEnumCaseMultiPayload())
  {
    (*(v443 + 32))(v446, v436, v442);
    (*(v443 + 16))(v448, v446, v442);
    Message.init(_:)(v448, v458);
    (*(v454 + 32))(v460, v458, v453);
    (*(v443 + 8))(v446, v442);
LABEL_14:
    v260 = v469;
    v261 = 177;
    memcpy(v469, (v342 + 8), 0xB1uLL);
    sub_1B075DC38(v469, v468);
    v262 = v470;
    memcpy(v470, v260, v261);
    if (sub_1B075FACC(v262) == 1)
    {
      (*(v428 + 16))(v431, v451, v427);
      sub_1B074B69C(v451, v426);
      sub_1B074B69C(v426, v424);
      sub_1B074E41C(v426, v422);
      v110 = (v424 + *(v420 + 20));
      v207 = *v110;
      v208 = *(v110 + 1);
      v209 = *(v110 + 1);
      v210 = *(v110 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v424);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v206 = 36;
      v227 = 7;
      v111 = swift_allocObject();
      v112 = v208;
      v113 = v209;
      v114 = v210;
      v214 = v111;
      *(v111 + 16) = v207;
      *(v111 + 20) = v112;
      *(v111 + 24) = v113;
      *(v111 + 32) = v114;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v115 = swift_allocObject();
      v116 = v208;
      v117 = v209;
      v118 = v210;
      v205 = v115;
      *(v115 + 16) = v207;
      *(v115 + 20) = v116;
      *(v115 + 24) = v117;
      *(v115 + 32) = v118;

      v226 = 32;
      v119 = swift_allocObject();
      v120 = v205;
      v218 = v119;
      *(v119 + 16) = v380;
      *(v119 + 24) = v120;
      sub_1B0394868();
      sub_1B0394868();

      v121 = swift_allocObject();
      v122 = v208;
      v123 = v209;
      v124 = v210;
      v125 = v121;
      v126 = v422;
      v222 = v125;
      *(v125 + 16) = v207;
      *(v125 + 20) = v122;
      *(v125 + 24) = v123;
      *(v125 + 32) = v124;
      sub_1B074B764(v126);
      sub_1B07AFC78(v342, v419);
      v211 = (*(v416 + 80) + 16) & ~*(v416 + 80);
      v212 = swift_allocObject();
      sub_1B07B02D8(v419, (v212 + v211));

      v127 = swift_allocObject();
      v128 = v212;
      v228 = v127;
      *(v127 + 16) = v381;
      *(v127 + 24) = v128;

      v254 = sub_1B0E43988();
      v255 = sub_1B0E458E8();
      v224 = 17;
      v230 = swift_allocObject();
      v216 = 16;
      *(v230 + 16) = 16;
      v231 = swift_allocObject();
      v225 = 4;
      *(v231 + 16) = 4;
      v129 = swift_allocObject();
      v213 = v129;
      *(v129 + 16) = v345;
      *(v129 + 24) = 0;
      v130 = swift_allocObject();
      v131 = v213;
      v232 = v130;
      *(v130 + 16) = v382;
      *(v130 + 24) = v131;
      v233 = swift_allocObject();
      *(v233 + 16) = 0;
      v234 = swift_allocObject();
      *(v234 + 16) = 1;
      v132 = swift_allocObject();
      v133 = v214;
      v215 = v132;
      *(v132 + 16) = v383;
      *(v132 + 24) = v133;
      v134 = swift_allocObject();
      v135 = v215;
      v235 = v134;
      *(v134 + 16) = v384;
      *(v134 + 24) = v135;
      v236 = swift_allocObject();
      *(v236 + 16) = v216;
      v237 = swift_allocObject();
      *(v237 + 16) = v225;
      v136 = swift_allocObject();
      v217 = v136;
      *(v136 + 16) = v349;
      *(v136 + 24) = 0;
      v137 = swift_allocObject();
      v138 = v217;
      v238 = v137;
      *(v137 + 16) = v385;
      *(v137 + 24) = v138;
      v239 = swift_allocObject();
      *(v239 + 16) = 0;
      v240 = swift_allocObject();
      *(v240 + 16) = v225;
      v139 = swift_allocObject();
      v140 = v218;
      v219 = v139;
      *(v139 + 16) = v386;
      *(v139 + 24) = v140;
      v141 = swift_allocObject();
      v142 = v219;
      v241 = v141;
      *(v141 + 16) = v387;
      *(v141 + 24) = v142;
      v242 = swift_allocObject();
      *(v242 + 16) = 112;
      v243 = swift_allocObject();
      v221 = 8;
      *(v243 + 16) = 8;
      v220 = swift_allocObject();
      *(v220 + 16) = v353;
      v143 = swift_allocObject();
      v144 = v220;
      v244 = v143;
      *(v143 + 16) = v388;
      *(v143 + 24) = v144;
      v245 = swift_allocObject();
      *(v245 + 16) = 37;
      v246 = swift_allocObject();
      *(v246 + 16) = v221;
      v145 = swift_allocObject();
      v146 = v222;
      v223 = v145;
      *(v145 + 16) = v389;
      *(v145 + 24) = v146;
      v147 = swift_allocObject();
      v148 = v223;
      v247 = v147;
      *(v147 + 16) = v390;
      *(v147 + 24) = v148;
      v248 = swift_allocObject();
      *(v248 + 16) = 0;
      v249 = swift_allocObject();
      *(v249 + 16) = v225;
      v149 = swift_allocObject();
      v150 = v228;
      v229 = v149;
      *(v149 + 16) = v391;
      *(v149 + 24) = v150;
      v151 = swift_allocObject();
      v152 = v229;
      v251 = v151;
      *(v151 + 16) = v392;
      *(v151 + 24) = v152;
      v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v250 = sub_1B0E46A48();
      v252 = v153;

      v154 = v230;
      v155 = v252;
      *v252 = v393;
      v155[1] = v154;

      v156 = v231;
      v157 = v252;
      v252[2] = v394;
      v157[3] = v156;

      v158 = v232;
      v159 = v252;
      v252[4] = v395;
      v159[5] = v158;

      v160 = v233;
      v161 = v252;
      v252[6] = v396;
      v161[7] = v160;

      v162 = v234;
      v163 = v252;
      v252[8] = v397;
      v163[9] = v162;

      v164 = v235;
      v165 = v252;
      v252[10] = v398;
      v165[11] = v164;

      v166 = v236;
      v167 = v252;
      v252[12] = v399;
      v167[13] = v166;

      v168 = v237;
      v169 = v252;
      v252[14] = v400;
      v169[15] = v168;

      v170 = v238;
      v171 = v252;
      v252[16] = v401;
      v171[17] = v170;

      v172 = v239;
      v173 = v252;
      v252[18] = v402;
      v173[19] = v172;

      v174 = v240;
      v175 = v252;
      v252[20] = v403;
      v175[21] = v174;

      v176 = v241;
      v177 = v252;
      v252[22] = v404;
      v177[23] = v176;

      v178 = v242;
      v179 = v252;
      v252[24] = v405;
      v179[25] = v178;

      v180 = v243;
      v181 = v252;
      v252[26] = v406;
      v181[27] = v180;

      v182 = v244;
      v183 = v252;
      v252[28] = v407;
      v183[29] = v182;

      v184 = v245;
      v185 = v252;
      v252[30] = v408;
      v185[31] = v184;

      v186 = v246;
      v187 = v252;
      v252[32] = v409;
      v187[33] = v186;

      v188 = v247;
      v189 = v252;
      v252[34] = v410;
      v189[35] = v188;

      v190 = v248;
      v191 = v252;
      v252[36] = v411;
      v191[37] = v190;

      v192 = v249;
      v193 = v252;
      v252[38] = v412;
      v193[39] = v192;

      v194 = v251;
      v195 = v252;
      v252[40] = v413;
      v195[41] = v194;
      sub_1B0394964();

      if (os_log_type_enabled(v254, v255))
      {
        v196 = v414;
        v198 = sub_1B0E45D78();
        v197[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v199 = sub_1B03949A8(0);
        v200 = sub_1B03949A8(1);
        v201 = &v467;
        v467 = v198;
        v202 = &v466;
        v466 = v199;
        v203 = &v465;
        v465 = v200;
        sub_1B0394A48(3, &v467);
        sub_1B0394A48(7, v201);
        v463 = v393;
        v464 = v230;
        sub_1B03949FC(&v463, v201, v202, v203);
        v204 = v196;
        if (v196)
        {

          __break(1u);
        }

        else
        {
          v463 = v394;
          v464 = v231;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[19] = 0;
          v463 = v395;
          v464 = v232;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[18] = 0;
          v463 = v396;
          v464 = v233;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[17] = 0;
          v463 = v397;
          v464 = v234;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[16] = 0;
          v463 = v398;
          v464 = v235;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[15] = 0;
          v463 = v399;
          v464 = v236;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[14] = 0;
          v463 = v400;
          v464 = v237;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[13] = 0;
          v463 = v401;
          v464 = v238;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[12] = 0;
          v463 = v402;
          v464 = v239;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[11] = 0;
          v463 = v403;
          v464 = v240;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[10] = 0;
          v463 = v404;
          v464 = v241;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[9] = 0;
          v463 = v405;
          v464 = v242;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[8] = 0;
          v463 = v406;
          v464 = v243;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[7] = 0;
          v463 = v407;
          v464 = v244;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[6] = 0;
          v463 = v408;
          v464 = v245;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[5] = 0;
          v463 = v409;
          v464 = v246;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[4] = 0;
          v463 = v410;
          v464 = v247;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[3] = 0;
          v463 = v411;
          v464 = v248;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[2] = 0;
          v463 = v412;
          v464 = v249;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          v197[1] = 0;
          v463 = v413;
          v464 = v251;
          sub_1B03949FC(&v463, &v467, &v466, &v465);
          _os_log_impl(&dword_1B0389000, v254, v255, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No BodyStructure for UID %u.", v198, 0x31u);
          sub_1B03998A8(v199);
          sub_1B03998A8(v200);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v254);
      (*(v428 + 8))(v431, v427);
      (*(v454 + 56))(v341, 1, 1, v453);
      return (*(v454 + 8))(v460, v453);
    }

    else
    {
      v257 = v470;
      v256 = __dst;
      memcpy(__dst, v470, 0xB1uLL);
      (*(v454 + 16))(v458, v460, v453);
      static Message.makeSparse(messageHeaders:bodyStructure:lineEnding:)(v458, v256, 2u, v341);
      v259 = *(v454 + 8);
      v258 = v454 + 8;
      v259(v458, v453);
      (*(v454 + 56))(v341, 0, 1, v453);
      sub_1B075E648(v257);
      return (v259)(v460, v453);
    }
  }

  v21 = v433;
  sub_1B075EC04(v436);
  (*(v428 + 16))(v21, v451, v427);
  sub_1B074B69C(v451, v426);
  sub_1B074B69C(v426, v424);
  sub_1B074E41C(v426, v422);
  v22 = (v424 + *(v420 + 20));
  v292 = *v22;
  v293 = *(v22 + 1);
  v294 = *(v22 + 1);
  v295 = *(v22 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v424);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v291 = 36;
  v312 = 7;
  v23 = swift_allocObject();
  v24 = v293;
  v25 = v294;
  v26 = v295;
  v299 = v23;
  *(v23 + 16) = v292;
  *(v23 + 20) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = v26;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27 = swift_allocObject();
  v28 = v293;
  v29 = v294;
  v30 = v295;
  v290 = v27;
  *(v27 + 16) = v292;
  *(v27 + 20) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = v30;

  v311 = 32;
  v31 = swift_allocObject();
  v32 = v290;
  v303 = v31;
  *(v31 + 16) = v343;
  *(v31 + 24) = v32;
  sub_1B0394868();
  sub_1B0394868();

  v33 = swift_allocObject();
  v34 = v293;
  v35 = v294;
  v36 = v295;
  v37 = v33;
  v38 = v422;
  v307 = v37;
  *(v37 + 16) = v292;
  *(v37 + 20) = v34;
  *(v37 + 24) = v35;
  *(v37 + 32) = v36;
  sub_1B074B764(v38);
  sub_1B07AFC78(v342, v419);
  v296 = (*(v416 + 80) + 16) & ~*(v416 + 80);
  v297 = swift_allocObject();
  sub_1B07B02D8(v419, (v297 + v296));

  v39 = swift_allocObject();
  v40 = v297;
  v313 = v39;
  *(v39 + 16) = v344;
  *(v39 + 24) = v40;

  v339 = sub_1B0E43988();
  v340 = sub_1B0E458E8();
  v309 = 17;
  v315 = swift_allocObject();
  v301 = 16;
  *(v315 + 16) = 16;
  v316 = swift_allocObject();
  v310 = 4;
  *(v316 + 16) = 4;
  v41 = swift_allocObject();
  v298 = v41;
  *(v41 + 16) = v345;
  *(v41 + 24) = 0;
  v42 = swift_allocObject();
  v43 = v298;
  v317 = v42;
  *(v42 + 16) = v346;
  *(v42 + 24) = v43;
  v318 = swift_allocObject();
  *(v318 + 16) = 0;
  v319 = swift_allocObject();
  *(v319 + 16) = 1;
  v44 = swift_allocObject();
  v45 = v299;
  v300 = v44;
  *(v44 + 16) = v347;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  v47 = v300;
  v320 = v46;
  *(v46 + 16) = v348;
  *(v46 + 24) = v47;
  v321 = swift_allocObject();
  *(v321 + 16) = v301;
  v322 = swift_allocObject();
  *(v322 + 16) = v310;
  v48 = swift_allocObject();
  v302 = v48;
  *(v48 + 16) = v349;
  *(v48 + 24) = 0;
  v49 = swift_allocObject();
  v50 = v302;
  v323 = v49;
  *(v49 + 16) = v350;
  *(v49 + 24) = v50;
  v324 = swift_allocObject();
  *(v324 + 16) = 0;
  v325 = swift_allocObject();
  *(v325 + 16) = v310;
  v51 = swift_allocObject();
  v52 = v303;
  v304 = v51;
  *(v51 + 16) = v351;
  *(v51 + 24) = v52;
  v53 = swift_allocObject();
  v54 = v304;
  v326 = v53;
  *(v53 + 16) = v352;
  *(v53 + 24) = v54;
  v327 = swift_allocObject();
  *(v327 + 16) = 112;
  v328 = swift_allocObject();
  v306 = 8;
  *(v328 + 16) = 8;
  v305 = swift_allocObject();
  *(v305 + 16) = v353;
  v55 = swift_allocObject();
  v56 = v305;
  v329 = v55;
  *(v55 + 16) = v354;
  *(v55 + 24) = v56;
  v330 = swift_allocObject();
  *(v330 + 16) = 37;
  v331 = swift_allocObject();
  *(v331 + 16) = v306;
  v57 = swift_allocObject();
  v58 = v307;
  v308 = v57;
  *(v57 + 16) = v355;
  *(v57 + 24) = v58;
  v59 = swift_allocObject();
  v60 = v308;
  v332 = v59;
  *(v59 + 16) = v356;
  *(v59 + 24) = v60;
  v333 = swift_allocObject();
  *(v333 + 16) = 0;
  v334 = swift_allocObject();
  *(v334 + 16) = v310;
  v61 = swift_allocObject();
  v62 = v313;
  v314 = v61;
  *(v61 + 16) = v357;
  *(v61 + 24) = v62;
  v63 = swift_allocObject();
  v64 = v314;
  v336 = v63;
  *(v63 + 16) = v358;
  *(v63 + 24) = v64;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v335 = sub_1B0E46A48();
  v337 = v65;

  v66 = v315;
  v67 = v337;
  *v337 = v359;
  v67[1] = v66;

  v68 = v316;
  v69 = v337;
  v337[2] = v360;
  v69[3] = v68;

  v70 = v317;
  v71 = v337;
  v337[4] = v361;
  v71[5] = v70;

  v72 = v318;
  v73 = v337;
  v337[6] = v362;
  v73[7] = v72;

  v74 = v319;
  v75 = v337;
  v337[8] = v363;
  v75[9] = v74;

  v76 = v320;
  v77 = v337;
  v337[10] = v364;
  v77[11] = v76;

  v78 = v321;
  v79 = v337;
  v337[12] = v365;
  v79[13] = v78;

  v80 = v322;
  v81 = v337;
  v337[14] = v366;
  v81[15] = v80;

  v82 = v323;
  v83 = v337;
  v337[16] = v367;
  v83[17] = v82;

  v84 = v324;
  v85 = v337;
  v337[18] = v368;
  v85[19] = v84;

  v86 = v325;
  v87 = v337;
  v337[20] = v369;
  v87[21] = v86;

  v88 = v326;
  v89 = v337;
  v337[22] = v370;
  v89[23] = v88;

  v90 = v327;
  v91 = v337;
  v337[24] = v371;
  v91[25] = v90;

  v92 = v328;
  v93 = v337;
  v337[26] = v372;
  v93[27] = v92;

  v94 = v329;
  v95 = v337;
  v337[28] = v373;
  v95[29] = v94;

  v96 = v330;
  v97 = v337;
  v337[30] = v374;
  v97[31] = v96;

  v98 = v331;
  v99 = v337;
  v337[32] = v375;
  v99[33] = v98;

  v100 = v332;
  v101 = v337;
  v337[34] = v376;
  v101[35] = v100;

  v102 = v333;
  v103 = v337;
  v337[36] = v377;
  v103[37] = v102;

  v104 = v334;
  v105 = v337;
  v337[38] = v378;
  v105[39] = v104;

  v106 = v336;
  v107 = v337;
  v337[40] = v379;
  v107[41] = v106;
  sub_1B0394964();

  if (os_log_type_enabled(v339, v340))
  {
    v108 = v414;
    v283 = sub_1B0E45D78();
    v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v284 = sub_1B03949A8(0);
    v285 = sub_1B03949A8(1);
    v286 = &v475;
    v475 = v283;
    v287 = &v474;
    v474 = v284;
    v288 = &v473;
    v473 = v285;
    sub_1B0394A48(3, &v475);
    sub_1B0394A48(7, v286);
    v471 = v359;
    v472 = v315;
    sub_1B03949FC(&v471, v286, v287, v288);
    v289 = v108;
    if (v108)
    {

      __break(1u);
    }

    else
    {
      v471 = v360;
      v472 = v316;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v281 = 0;
      v471 = v361;
      v472 = v317;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v280 = 0;
      v471 = v362;
      v472 = v318;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v279 = 0;
      v471 = v363;
      v472 = v319;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v278 = 0;
      v471 = v364;
      v472 = v320;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v277 = 0;
      v471 = v365;
      v472 = v321;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v276 = 0;
      v471 = v366;
      v472 = v322;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v275 = 0;
      v471 = v367;
      v472 = v323;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v274 = 0;
      v471 = v368;
      v472 = v324;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v273 = 0;
      v471 = v369;
      v472 = v325;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v272 = 0;
      v471 = v370;
      v472 = v326;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v271 = 0;
      v471 = v371;
      v472 = v327;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v270 = 0;
      v471 = v372;
      v472 = v328;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v269 = 0;
      v471 = v373;
      v472 = v329;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v268 = 0;
      v471 = v374;
      v472 = v330;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v267 = 0;
      v471 = v375;
      v472 = v331;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v266 = 0;
      v471 = v376;
      v472 = v332;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v265 = 0;
      v471 = v377;
      v472 = v333;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v264 = 0;
      v471 = v378;
      v472 = v334;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      v263 = 0;
      v471 = v379;
      v472 = v336;
      sub_1B03949FC(&v471, &v475, &v474, &v473);
      _os_log_impl(&dword_1B0389000, v339, v340, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] No downloaded or existing message header for UID %u.", v283, 0x31u);
      sub_1B03998A8(v284);
      sub_1B03998A8(v285);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v339);
  (*(v428 + 8))(v433, v427);
  return (*(v454 + 56))(v341, 1, 1, v453);
}

uint64_t sub_1B07A2708(uint64_t *a1)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v1 = sub_1B0E46A48();
  rawValue = SectionSpecifier.Part.init(_:)(v1).array._rawValue;
  v5 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v4, rawValue);

  return v5 & 1;
}

uint64_t sub_1B07A2788(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B0E454D8();
}

uint64_t sub_1B07A2814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1;
  v2 = Message.count.getter();
  v7 = a1;
  return sub_1B077E63C(v2, sub_1B07B0804, v6, a2);
}

uint64_t *sub_1B07A28B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15[0] = 0;
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15[1] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2138, &qword_1B0E9B5C8);
  v5 = sub_1B07AF6E0();
  sub_1B039CA88(sub_1B07A2B84, 0, v12, v13, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v14);
  type metadata accessor for PartReplacement();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2140, &qword_1B0E9B5D0);
  sub_1B07167A8();
  sub_1B07B082C();
  v7 = sub_1B0E44718();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15[0] = v7;
  sub_1B07A2D14(a1, v7, a3, a4, a5);

  return sub_1B039E440(v15);
}

void *sub_1B07A2A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = Message.findPartsMissingData(cache:)(a1);
  sub_1B07A5D58(a2, v3, v8);
  return memcpy(a3, v8, 0x28uLL);
}

uint64_t sub_1B07A2B84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v7 = a1;
  v14 = 0;
  v12 = 0;
  v8 = sub_1B0E443C8();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v4 - v4;
  v14 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2138, &qword_1B0E9B5C8) + 48);
  sub_1B074E7A8(v7, v10);
  v2 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  (*(v5 + 16))(v11, v7 + *(v2 + 28), v8);
  v13 = v10 + v9;
  Message.init(_:)(v11, v10 + v9);
  type metadata accessor for PartReplacement();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B07A2D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v31 = a3;
  v38 = a2;
  v23 = a1;
  v24 = a5;
  v39 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v43 = 0;
  v42 = 0;
  v25 = _s6LoggerVMa_1();
  v27 = *(*(v25 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](0);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v18[-v29];
  v7 = MEMORY[0x1EEE9AC00](v6);
  v28 = &v18[-v29];
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v18[-v29];
  v33 = sub_1B0E439A8();
  v34 = *(v33 - 8);
  v35 = v34;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = a1;
  v49 = v10;
  v48 = v11;
  v47 = v12;
  v37 = type metadata accessor for PartReplacement();
  sub_1B07167A8();
  v45 = sub_1B0E446B8();
  v44 = Message.count.getter();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2148, &qword_1B0E9B5D8);
  sub_1B07B08B4();
  sub_1B0E44FD8();
  v41 = 0;
  sub_1B039E440(&v45);
  v19 = v46;
  v43 = v46;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = v18;
  v13 = MEMORY[0x1EEE9AC00](v19);
  v14 = v38;
  *&v18[-16] = v23;
  *&v18[-8] = v14;
  sub_1B077E63C(v13, sub_1B07B093C, &v18[-32], v15);
  v21 = 0;
  v22 = 0;

  v16 = sub_1B0E443C8();
  (*(*(v16 - 8) + 56))(v24, 0, 1);
  return v21;
}

unint64_t sub_1B07A5234(void *a1)
{
  result = PartReplacement.count.getter();
  if (__OFADD__(*a1, result))
  {
    __break(1u);
  }

  else
  {
    *a1 += result;
  }

  return result;
}

uint64_t sub_1B07A5350()
{
  v2 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A537C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1B07A53B8()
{
  v2 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A53E4(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t sub_1B07A5420()
{
  v2 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A544C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

BOOL sub_1B07A5488(uint64_t *a1, uint64_t *a2)
{
  v19 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v20 = sub_1B0E45478();

  if (v20)
  {
    v14 = a1[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = a2[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = sub_1B0E45478();

    if (v15)
    {
      v11 = a1[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = a2[2];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = sub_1B0E45478();

      if (v12)
      {
        v8 = a1[3];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v7 = a2[3];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v9 = sub_1B0E45478();

        if (v9)
        {
          v5 = a1[4];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v4 = a2[4];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v6 = sub_1B0E44758();

          return (v6 & 1) != 0;
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

  else
  {
    return 0;
  }
}

uint64_t sub_1B07A56F0()
{
  sub_1B0E46A48();
  sub_1B07167A8();
  return sub_1B0E45438();
}

BOOL sub_1B07A5738(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1B07A5488(__dst, v5);
}

uint64_t sub_1B07A57A0()
{
  v9 = v0;
  v5 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v7 = sub_1B0E454F8();

  sub_1B074E4B4(v6, v8);
  if (v7)
  {
    v2 = v6[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v3 = sub_1B0E454F8();

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  sub_1B074E868(v6);
  return v4 & 1;
}

uint64_t sub_1B07A5884()
{
  v3 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v6 = sub_1B0E454A8();

  v4 = v0[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E454A8();

  result = v6;
  if (!__OFADD__(v6, v5))
  {
    return v6 + v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B07A5938()
{
  v11 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07167A8();
  v14 = sub_1B0E454A8();

  v12 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = sub_1B0E454A8();

  result = v14;
  v15 = v14 + v13;
  if (__OFADD__(v14, v13))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v10 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B0E454A8();

  result = v8;
  v9 = v15 + v8;
  if (__OFADD__(v15, v8))
  {
    goto LABEL_15;
  }

  v5 = *(v10 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E454A8();

  result = v6;
  if (!__OFADD__(v9, v6))
  {
    return v9 + v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B07A5A98()
{
  memset(&v14[1], 0, 0x28uLL);
  memcpy(__dst, v0, sizeof(__dst));
  v14[1] = __dst[0];
  v14[2] = __dst[1];
  v14[3] = __dst[2];
  v14[4] = __dst[3];
  v14[5] = __dst[4];
  v4 = v0[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v16 = v0[3];
  sub_1B074E7A8(&v16, v14);
  v13[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07167A8();
  sub_1B07B0968();
  v13[0] = sub_1B0E454B8();
  sub_1B07B09F0();
  v5 = sub_1B0E45078();
  sub_1B039E440(v13);
  v12 = v5;
  sub_1B074E4B4(v6, v11);
  v10 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  v1 = sub_1B07AFBE8();
  v3 = sub_1B039CA88(sub_1B07B0A68, v9, v7, &unk_1F26BC448, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v8);
  sub_1B074E868(v6);
  sub_1B039E440(&v12);
  return v3;
}

void sub_1B07A5C80(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = 0;
  v11 = 0;
  v12 = *a1;
  v8 = v12;
  v11 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = *(a2 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = v12;
  sub_1B07167A8();
  sub_1B0E44778();
  sub_1B039E440(&v10);

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v8);
  *a3 = v3;
  a3[1] = v4;
  a3[2] = v5;
}

uint64_t *sub_1B07A5D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v33[0] = 0;
  v33[1] = 0;
  memset(v25, 0, 0x29uLL);
  v33[3] = a1;
  v33[2] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = sub_1B07A642C();
  v23 = sub_1B07A56F0();
  v20 = sub_1B07A56F0();
  v3 = sub_1B07A56F0();
  sub_1B0741390(v23, v20, a1, v3, v22, v35);
  memcpy(__b, v35, sizeof(__b));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
  sub_1B07B0A94();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2150, &qword_1B0E9B5E0);
    sub_1B0E46518();
    v14 = v27;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v31;
    if (!v26)
    {
      break;
    }

    v5 = v30;
    v6 = v29;
    v7 = v28;
    v8 = v27;
    v25[0] = v26;
    v25[1] = v27;
    v25[2] = v28;
    v25[3] = v29;
    v25[4] = v30;
    LOBYTE(v25[5]) = v31;
    sub_1B07B0B1C(v27, v28, v29, v30, v31);
    switch(v18)
    {
      case 0:
        goto LABEL_17;
      case 1:
        goto LABEL_21;
      case 2:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
        sub_1B0E454D8();

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v5)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2158, &qword_1B0E9B5E8);
          sub_1B0E44788();
        }

        goto LABEL_27;
    }

    if (v14 || v15 || v16 || v17)
    {
      if (v8 == 1 && !v7 && !v6 && !v17)
      {
LABEL_21:
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
        sub_1B0E454D8();

        goto LABEL_28;
      }

      __break(1u);
LABEL_17:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
      sub_1B0E454D8();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v7)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2158, &qword_1B0E9B5E8);
        sub_1B0E44788();
      }

LABEL_27:
    }

LABEL_28:

    sub_1B07B0B7C(v8, v7, v6, v5, v18);
  }

  sub_1B039E440(v33);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B0E45558();

  v9 = __b[0];
  v10 = __b[1];
  v11 = __b[2];
  v12 = __b[3];
  v13 = __b[4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  result = sub_1B074E868(__b);
  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  a3[4] = v13;
  return result;
}

uint64_t sub_1B07A642C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5EF0, &qword_1B0E9B500);
  sub_1B0E46A48();
  sub_1B07167A8();
  sub_1B0E445D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2158, &qword_1B0E9B5E8);
  sub_1B07AFB60();
  sub_1B0E44FD8();
  return v1;
}

uint64_t sub_1B07A653C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 40);
  result = sub_1B07B0B1C(v4, v5, v6, v7, v8);
  switch(v8)
  {
    case 0:
LABEL_16:
      if (!v5)
      {
        return result;
      }

LABEL_19:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2158, &qword_1B0E9B5E8);
      sub_1B0E44788();

    case 1:
      return result;
    case 2:
      if (!v7)
      {
        return result;
      }

      goto LABEL_19;
  }

  if ((v4 || v5 || v6 || v7) && (v4 != 1 || v5 || v6 || v7))
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B07A67A4()
{
  v2 = *v0;
  v3 = v0[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A67DC(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1B07A6840()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A6878(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1B07A68C4()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64) & 1;
  return result;
}

uint64_t sub_1B07A68D4(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_1B07A68E8()
{
  v2 = *(v0 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A6914(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_1B07A6950()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A6988(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_1B07A69D4()
{
  LODWORD(v2) = *(v0 + 96);
  BYTE4(v2) = *(v0 + 100) & 1;
  return v2;
}

uint64_t sub_1B07A69FC(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 100) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1B07A6A24()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112) & 1;
  return result;
}

uint64_t sub_1B07A6A34(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_1B07A6A48()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07A6A80(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1B07A6ACC()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72) & 1;
  return result;
}

uint64_t sub_1B07A6ADC(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t sub_1B07A6B00(uint64_t a1, uint64_t a2)
{
  v24[2] = a1;
  v24[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24[0] = sub_1B0E44838();
  v24[1] = v2;
  v23[2] = a1;
  v23[3] = a2;
  v18 = MEMORY[0x1B2726DE0](v24[0], v2, a1, a2);
  sub_1B03B1198(v24);
  if (v18)
  {

    v25 = 0;
    v15 = 0;
LABEL_14:

    return v15;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23[0] = sub_1B0E44838();
  v23[1] = v3;
  v22[2] = a1;
  v22[3] = a2;
  v14 = MEMORY[0x1B2726DE0](v23[0], v3, a1, a2);
  sub_1B03B1198(v23);
  if (v14)
  {

    v25 = 1;
    v15 = 1;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22[0] = sub_1B0E44838();
  v22[1] = v4;
  v21[2] = a1;
  v21[3] = a2;
  v13 = MEMORY[0x1B2726DE0](v22[0], v4, a1, a2);
  sub_1B03B1198(v22);
  if (v13)
  {

    v25 = 2;
    v15 = 2;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21[0] = sub_1B0E44838();
  v21[1] = v5;
  v20[2] = a1;
  v20[3] = a2;
  v12 = MEMORY[0x1B2726DE0](v21[0], v5, a1, a2);
  sub_1B03B1198(v21);
  if (v12)
  {

    v25 = 3;
    v15 = 3;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[0] = sub_1B0E44838();
  v20[1] = v6;
  v19[2] = a1;
  v19[3] = a2;
  v11 = MEMORY[0x1B2726DE0](v20[0], v6, a1, a2);
  sub_1B03B1198(v20);
  if (v11)
  {

    v25 = 4;
    v15 = 4;
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19[0] = sub_1B0E44838();
  v19[1] = v7;
  v10 = MEMORY[0x1B2726DE0](v19[0], v7, a1, a2);
  sub_1B03B1198(v19);
  if (v10)
  {

    v25 = 5;
    v15 = 5;
    goto LABEL_14;
  }

  return 6;
}

BOOL sub_1B07A6F24(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      default:
        v4 = 5;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      default:
        v3 = 5;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B07A7464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B07A6B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B07A74B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B07A6F0C();
  *a1 = result;
  return result;
}

uint64_t sub_1B07A753C(uint64_t a1)
{
  v33 = a1;
  v54 = 0;
  v53 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21C8, &qword_1B0E9BE28);
  v34 = *(v44 - 8);
  v35 = v44 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v11 - v36;
  v54 = MEMORY[0x1EEE9AC00](v33);
  v53 = v1;
  v37 = v54[3];
  v38 = v54[4];
  __swift_project_boxed_opaque_existential_0(v54, v37);
  sub_1B07B0C58();
  sub_1B0E46D48();
  v2 = v41;
  v42 = *v40;
  v43 = v40[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v52 = 0;
  sub_1B0E46928();
  v45 = v2;
  v46 = v2;
  if (v2)
  {
    v15 = v46;

    result = (*(v34 + 8))(v39, v44);
    v16 = v15;
  }

  else
  {

    v3 = v45;
    v29 = v40[2];
    v30 = v40[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v51 = 1;
    sub_1B0E46928();
    v31 = v3;
    v32 = v3;
    if (v3)
    {
      v14 = v32;

      result = (*(v34 + 8))(v39, v44);
      v16 = v14;
    }

    else
    {

      v4 = v31;
      v25 = v40[4];
      v26 = v40[5];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v50 = 2;
      sub_1B0E468C8();
      v27 = v4;
      v28 = v4;
      if (v4)
      {
        v13 = v28;

        result = (*(v34 + 8))(v39, v44);
        v16 = v13;
      }

      else
      {

        v5 = v27;
        v21 = v40[6];
        v22 = v40[7];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v49 = 3;
        sub_1B0E468C8();
        v23 = v5;
        v24 = v5;
        if (v5)
        {
          v12 = v24;

          result = (*(v34 + 8))(v39, v44);
          v16 = v12;
        }

        else
        {

          v6 = v23;
          v7 = v40[8];
          v8 = *(v40 + 72);
          v48 = 4;
          sub_1B0E468E8();
          v19 = v6;
          v20 = v6;
          if (v6)
          {
            v11[1] = v20;
          }

          else
          {
            v9 = *(v40 + 73);
            v47 = 5;
            sub_1B0E468D8();
            v17 = 0;
            v18 = 0;
          }

          return (*(v34 + 8))(v39, v44);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B07A7A6C(uint64_t a1, uint64_t a2)
{
  v36[2] = a1;
  v36[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36[0] = sub_1B0E44838();
  v36[1] = v2;
  v35[2] = a1;
  v35[3] = a2;
  v26 = MEMORY[0x1B2726DE0](v36[0], v2, a1, a2);
  sub_1B03B1198(v36);
  if (v26)
  {

    v37 = 0;
    v23 = 0;
LABEL_22:

    return v23;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35[0] = sub_1B0E44838();
  v35[1] = v3;
  v34[2] = a1;
  v34[3] = a2;
  v22 = MEMORY[0x1B2726DE0](v35[0], v3, a1, a2);
  sub_1B03B1198(v35);
  if (v22)
  {

    v37 = 1;
    v23 = 1;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v34[0] = sub_1B0E44838();
  v34[1] = v4;
  v33[2] = a1;
  v33[3] = a2;
  v21 = MEMORY[0x1B2726DE0](v34[0], v4, a1, a2);
  sub_1B03B1198(v34);
  if (v21)
  {

    v37 = 2;
    v23 = 2;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33[0] = sub_1B0E44838();
  v33[1] = v5;
  v32[2] = a1;
  v32[3] = a2;
  v20 = MEMORY[0x1B2726DE0](v33[0], v5, a1, a2);
  sub_1B03B1198(v33);
  if (v20)
  {

    v37 = 3;
    v23 = 3;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32[0] = sub_1B0E44838();
  v32[1] = v6;
  v31[2] = a1;
  v31[3] = a2;
  v19 = MEMORY[0x1B2726DE0](v32[0], v6, a1, a2);
  sub_1B03B1198(v32);
  if (v19)
  {

    v37 = 4;
    v23 = 4;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v31[0] = sub_1B0E44838();
  v31[1] = v7;
  v30[2] = a1;
  v30[3] = a2;
  v18 = MEMORY[0x1B2726DE0](v31[0], v7, a1, a2);
  sub_1B03B1198(v31);
  if (v18)
  {

    v37 = 5;
    v23 = 5;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30[0] = sub_1B0E44838();
  v30[1] = v8;
  v29[2] = a1;
  v29[3] = a2;
  v17 = MEMORY[0x1B2726DE0](v30[0], v8, a1, a2);
  sub_1B03B1198(v30);
  if (v17)
  {

    v37 = 6;
    v23 = 6;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29[0] = sub_1B0E44838();
  v29[1] = v9;
  v28[2] = a1;
  v28[3] = a2;
  v16 = MEMORY[0x1B2726DE0](v29[0], v9, a1, a2);
  sub_1B03B1198(v29);
  if (v16)
  {

    v37 = 7;
    v23 = 7;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28[0] = sub_1B0E44838();
  v28[1] = v10;
  v27[2] = a1;
  v27[3] = a2;
  v15 = MEMORY[0x1B2726DE0](v28[0], v10, a1, a2);
  sub_1B03B1198(v28);
  if (v15)
  {

    v37 = 8;
    v23 = 8;
    goto LABEL_22;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v27[0] = sub_1B0E44838();
  v27[1] = v11;
  v14 = MEMORY[0x1B2726DE0](v27[0], v11, a1, a2);
  sub_1B03B1198(v27);
  if (v14)
  {

    v37 = 9;
    v23 = 9;
    goto LABEL_22;
  }

  return 10;
}

BOOL sub_1B07A80F0(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      case 8:
        v4 = 8;
        break;
      default:
        v4 = 9;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      case 8:
        v3 = 8;
        break;
      default:
        v3 = 9;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B07A88B0(uint64_t a1)
{
  v53 = a1;
  v82 = 0;
  v81 = 0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21B8, &qword_1B0E9BE18);
  v54 = *(v64 - 8);
  v55 = v64 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v59 = v18 - v56;
  v82 = MEMORY[0x1EEE9AC00](v53);
  v81 = v1;
  v57 = v82[3];
  v58 = v82[4];
  __swift_project_boxed_opaque_existential_0(v82, v57);
  sub_1B07B0D50();
  sub_1B0E46D48();
  v2 = v61;
  v62 = *v60;
  v63 = v60[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v80 = 0;
  sub_1B0E46928();
  v65 = v2;
  v66 = v2;
  if (v2)
  {
    v24 = v66;

    result = (*(v54 + 8))(v59, v64);
    v25 = v24;
  }

  else
  {

    v3 = v65;
    v4 = *(v60 + 4);
    v79 = 1;
    sub_1B0E46988();
    v51 = v3;
    v52 = v3;
    if (v3)
    {
      v23 = v52;
      result = (*(v54 + 8))(v59, v64);
      v25 = v23;
    }

    else
    {
      v5 = *(v60 + 20);
      v78 = 2;
      sub_1B0E468D8();
      v49 = 0;
      v50 = 0;
      v45 = v60[3];
      v46 = v60[4];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v77 = 3;
      sub_1B0E468C8();
      v47 = 0;
      v48 = 0;

      v6 = v47;
      v41 = v60[5];
      v42 = v60[6];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v76 = 4;
      sub_1B0E468C8();
      v43 = v6;
      v44 = v6;
      if (v6)
      {
        v22 = v44;

        result = (*(v54 + 8))(v59, v64);
        v25 = v22;
      }

      else
      {

        v7 = v43;
        v8 = v60[7];
        v9 = *(v60 + 64);
        v75 = 5;
        sub_1B0E468E8();
        v39 = v7;
        v40 = v7;
        if (v7)
        {
          v21 = v40;
          result = (*(v54 + 8))(v59, v64);
          v25 = v21;
        }

        else
        {
          v83 = v60[9];
          sub_1B074E7A8(&v83, &v74);
          v36 = &v73;
          v73 = v83;
          v34 = &v72;
          v72 = 6;
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21C0, &qword_1B0E9BE20);
          sub_1B07B3CCC();
          v10 = v39;
          sub_1B0E46958();
          v37 = v10;
          v38 = v10;
          if (v10)
          {
            v20 = v38;
            sub_1B039E440(&v73);
            result = (*(v54 + 8))(v59, v64);
            v25 = v20;
          }

          else
          {
            sub_1B039E440(&v73);
            v11 = v37;
            v30 = v60[10];
            v31 = v60[11];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v71 = 7;
            sub_1B0E468C8();
            v32 = v11;
            v33 = v11;
            if (v11)
            {
              v19 = v33;

              result = (*(v54 + 8))(v59, v64);
              v25 = v19;
            }

            else
            {

              v12 = v32;
              v13 = *(v60 + 24);
              v14 = *(v60 + 100);
              v70 = 8;
              v68 = v13;
              v69 = v14 & 1;
              sub_1B0E46908();
              v28 = v12;
              v29 = v12;
              if (v12)
              {
                v18[2] = v29;
              }

              else
              {
                v15 = v60[13];
                v16 = *(v60 + 112);
                v67 = 9;
                sub_1B0E468E8();
                v26 = 0;
                v27 = 0;
              }

              return (*(v54 + 8))(v59, v64);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B07A9190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B07A7A6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B07A91BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B07A80D8();
  *a1 = result;
  return result;
}

void *sub_1B07A92BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v105 = a4;
  v124 = a1;
  v123 = a2;
  v133 = a3;
  v134 = 0;
  v106 = sub_1B07AA064;
  v107 = sub_1B07AA178;
  v108 = sub_1B07AA288;
  v109 = sub_1B07AABB8;
  memset(v174, 0, 0x71uLL);
  v172 = 0;
  v173 = 0;
  v171 = 0;
  v110 = 0;
  v147 = 0;
  v146 = 0;
  v175 = 0;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  v112 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v39 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
  v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v39 - v115;
  v117 = 0;
  v118 = sub_1B0E443C8();
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v117);
  v122 = &v39 - v121;
  v175 = &v39 - v121;
  v125 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v124);
  v127 = &v39 - v126;
  v172 = v4;
  v173 = v5;
  v171 = v6;
  BYTE4(v174[2]) = 2;
  memset(&v174[3], 0, 40);
  LOBYTE(v174[8]) = 1;
  memset(&v174[10], 0, 20);
  BYTE4(v174[12]) = 1;
  v174[13] = 0;
  LOBYTE(v174[14]) = 1;
  v168 = MailboxName.debugDescription.getter();
  v169 = v7;
  sub_1B03F5BE0();
  sub_1B0E45738();
  v128 = v170;
  v129 = sub_1B0E44EC8();
  v130 = v8;

  v174[0] = v129;
  v174[1] = v130;
  v9 = *(v133 + 16);
  v132 = v167;
  v167[0] = v9;
  v131 = sub_1B07467B8();
  v10 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v132, MEMORY[0x1E69E7668], &type metadata for UID, v131, v10);
  LODWORD(v174[2]) = v167[1];
  v135 = (v133 + 24);
  v136 = &v166;
  swift_beginAccess();
  v137 = __dst;
  v138 = 177;
  memcpy(__dst, v135, 0xB1uLL);
  sub_1B075DC38(__dst, v165);
  swift_endAccess();
  v139 = v164;
  memcpy(v164, v137, v138);
  v104 = sub_1B075FACC(v139) != 1;
  v103 = v104;
  sub_1B075E728(v164);
  if (v103)
  {
    v102 = 1;
  }

  else
  {
    v102 = 2;
  }

  BYTE4(v174[2]) = v102;
  v99 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData);
  v100 = &v163;
  swift_beginAccess();
  sub_1B07AF5B8(v99, v127);
  swift_endAccess();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v146 = v122;
      (*(v119 + 32))(v122, v127, v118);
      v146 = v122;
      v85 = 7;
      v18 = sub_1B0E46A28();
      v89 = &v144;
      v144 = v18;
      v145 = v19;
      v87 = 1;
      v20 = sub_1B0E44838();
      v86 = v21;
      MEMORY[0x1B2728B30](v20);

      v143 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      sub_1B0E469F8();
      v22 = sub_1B0E44838();
      v88 = v23;
      MEMORY[0x1B2728B30](v22);

      v91 = v144;
      v90 = v145;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v89);
      v174[3] = sub_1B0E44C88();
      v174[4] = v24;

      (*(v119 + 8))(v122, v118);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v174[3] = sub_1B0E44838();
      v174[4] = v26;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v174[3] = sub_1B0E44838();
        v174[4] = v25;
      }

      else
      {
        v174[3] = 0;
        v174[4] = 0;
      }
    }
  }

  else
  {
    (*(v119 + 32))(v122, v127, v118);
    v175 = v122;
    v92 = 8;
    v11 = sub_1B0E46A28();
    v96 = &v141;
    v141 = v11;
    v142 = v12;
    v94 = 1;
    v13 = sub_1B0E44838();
    v93 = v14;
    MEMORY[0x1B2728B30](v13);

    v140 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B0E469F8();
    v15 = sub_1B0E44838();
    v95 = v16;
    MEMORY[0x1B2728B30](v15);

    v98 = v141;
    v97 = v142;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v96);
    v174[3] = sub_1B0E44C88();
    v174[4] = v17;

    (*(v119 + 8))(v122, v118);
  }

  v78 = v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData;
  v80 = &v162;
  swift_beginAccess();
  v79 = _s31PreviouslyDownloadedMessageDataVMa();
  v83 = *(v78 + *(v79 + 20));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v161[3] = v83;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
  v82 = sub_1B07AFBE8();
  v84 = sub_1B0E45748();

  if (v84)
  {
    v27 = v110;
    v174[5] = 0;
    v174[6] = 0;

    v77 = v27;
  }

  else
  {
    v28 = v110;
    v70 = v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_existingData;
    v71 = v161;
    v73 = 0;
    swift_beginAccess();
    v72 = *(v70 + *(v79 + 20));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v160 = v72;
    result = sub_1B039CA88(v106, v73, v81, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v82, MEMORY[0x1E69E7410], v74);
    v75 = v28;
    v76 = result;
    if (v28)
    {
      __break(1u);
      goto LABEL_25;
    }

    v63 = v76;
    sub_1B039E440(&v160);
    v67 = &v159;
    v159 = v63;
    v65 = sub_1B0E44838();
    v66 = v30;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v68 = sub_1B0E448E8();
    v69 = v31;

    sub_1B039E440(v67);
    v174[5] = v68;
    v174[6] = v69;

    v77 = v75;
  }

  v32 = v116;
  v33 = v77;
  v59 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_downloadedHeader);
  v60 = &v156;
  v61 = 0;
  swift_beginAccess();
  sub_1B075EE10(v59, v32);
  swift_endAccess();
  result = sub_1B03F1A20(v107, v61, v114, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], v74, &v157);
  v62 = v33;
  if (v33)
  {
LABEL_25:
    __break(1u);
    __break(1u);
    goto LABEL_26;
  }

  sub_1B075F220(v116);
  v174[7] = v157;
  LOBYTE(v174[8]) = v158 & 1;
  v52 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_sections);
  v53 = &v155;
  v55 = 0;
  swift_beginAccess();
  v54 = *v52;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v154 = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2090, &qword_1B0E9B520);
  v34 = sub_1B07ABB40();
  v35 = sub_1B039CA88(v108, v55, v56, &unk_1F26BA9C8, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v74);
  v57 = 0;
  v58 = v35;
  v48 = v35;
  sub_1B039E440(&v154);
  v174[9] = v48;
  v49 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_passAndActionID);
  v50 = &v153;
  swift_beginAccess();
  v51 = *v49;
  swift_endAccess();
  if (v51 == 2)
  {
    v174[10] = 0;
    v174[11] = 0;

    LODWORD(v174[12]) = 0;
    BYTE4(v174[12]) = 1;
  }

  else
  {
    v47 = v51;
    v46 = HIDWORD(v51);
    LOBYTE(v147) = v51 & 1;
    HIDWORD(v147) = HIDWORD(v51);
    v174[10] = DownloadPass.rawValue.getter(v51 & 1);
    v174[11] = v36;

    LODWORD(v174[12]) = v46;
    BYTE4(v174[12]) = 0;
  }

  v37 = v57;
  v38 = v113;
  v43 = (v133 + OBJC_IVAR____TtC7Message25InProgressMessageDownload_cleanedUpFullMessageData);
  v44 = &v150;
  v45 = 0;
  swift_beginAccess();
  sub_1B075F4A8(v43, v38);
  swift_endAccess();
  result = sub_1B03F1A20(v109, v45, v111, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], v74, &v151);
  if (!v37)
  {
    sub_1B075B1E0(v113);
    v40 = v174;
    v174[13] = v151;
    LOBYTE(v174[14]) = v152 & 1;
    v41 = v149;
    v42 = 113;
    memcpy(v149, v174, 0x71uLL);
    sub_1B07B0DCC(v149, &v148);

    sub_1B07B0EDC(v40);
    return memcpy(v105, v41, v42);
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B07AA064@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = 0;
  v9 = *a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469E8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B07AA178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v10[1] = a1;
  v17 = 0;
  v15 = sub_1B0E443C8();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v11 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v15);
  v16 = v10 - v11;
  v17 = v3;
  (*(v13 + 16))(v10 - v11, v2);
  v4 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v5 = v13;
  v6 = v15;
  v7 = v4;
  v8 = v16;
  *v12 = v7;
  return (*(v5 + 8))(v8, v6);
}

void *sub_1B07AA288@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v18 = a2;
  v10 = a1;
  v19 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  v8 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v7 - v8);
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v15 = (&v7 - v9);
  v19 = v4;
  sub_1B07B3DE0(v4, (&v7 - v9));
  v13 = *v15;
  v16 = *(v11 + 48);
  sub_1B07B3DE0(v10, v12);
  v14 = *v12;
  v5 = *(v11 + 48);
  v17 = v20;
  sub_1B07AA3DC(v13, (v12 + v5), v20);

  sub_1B0760B84((v15 + v16));
  return memcpy(v18, v17, 0x4AuLL);
}

void *sub_1B07AA3DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v76 = a1;
  v84 = a2;
  __c = 0;
  memset(__b, 0, 0x4AuLL);
  v95 = 0;
  v94 = 0;
  memset(&v91[10], 0, 0x38uLL);
  v89 = 0;
  v98 = 0;
  v97 = 0;
  v78 = 0;
  v64 = sub_1B0E443C8();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v68 = &v28 - v67;
  v69 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  v70 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v71 = &v28 - v70;
  v98 = &v28 - v70;
  v72 = (*(*(type metadata accessor for MessageSectionDataConcatenator() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v73 = &v28 - v72;
  v97 = &v28 - v72;
  v85 = type metadata accessor for InProgressMessageDownload.Section();
  v74 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v78);
  v86 = (&v28 - v74);
  v95 = v3;
  v94 = v4;
  memset(&__b[4], 0, 40);
  v79 = 1;
  LOWORD(__b[9]) = 513;
  v5 = sub_1B0E46A28();
  v81 = &v92;
  v92 = v5;
  v93 = v6;
  v77 = "";
  v7 = sub_1B0E44838();
  v75 = v8;
  MEMORY[0x1B2728B30](v7);

  v91[17] = v76;
  sub_1B0E469E8();
  v9 = sub_1B0E44838();
  v80 = v10;
  MEMORY[0x1B2728B30](v9);

  v83 = v92;
  v82 = v93;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v81);
  __b[0] = sub_1B0E44C88();
  __b[1] = v11;
  sub_1B0760600(v84, v86);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = v68;
      sub_1B07AC238(v86, v71);
      v98 = v71;
      __b[2] = sub_1B0E44838();
      __b[3] = v15;
      v51 = *(v71 + 1);
      v52 = *(v71 + 2);
      v49 = *(v71 + 3);
      v50 = *(v71 + 4);
      sub_1B07B1004(v51, v52);
      v53 = sub_1B07AAC04(v51, v52, v49, v50);
      v54 = v16;
      sub_1B07AD750(v51, v52);
      __b[4] = v53;
      __b[5] = v54;

      (*(v65 + 16))(v14, &v71[*(v69 + 28)], v64);
      v55 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*(v65 + 8))(v68, v64);
      __b[8] = v55;
      LOBYTE(__b[9]) = 0;
      sub_1B07AC2FC(v71);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v48 = *v86;
      v89 = v48;
      __b[2] = sub_1B0E44838();
      __b[3] = v17;
      v42 = sub_1B0754760();
      v43 = v18;
      v40 = v19;
      v41 = v20;
      v44 = sub_1B07AAC04(v42, v18, v19, v20);
      v45 = v21;
      sub_1B07AD750(v42, v43);
      __b[4] = v44;
      __b[5] = v45;

      v22 = sub_1B07547DC();
      __b[6] = String.init(_:)(v22);
      __b[7] = v23;

      v46 = &v88;
      swift_beginAccess();
      v47 = *(v48 + 32);
      swift_endAccess();
      BYTE1(__b[9]) = v47;
    }

    else
    {
      v36 = *v86;
      v32 = v86[1];
      v37 = v86[2];
      v31 = v86[3];
      v38 = v86[4];
      v35 = v86[5];
      v39 = v86[6];
      v91[10] = v36;
      v91[11] = v32;
      v91[12] = v37;
      v91[13] = v31;
      v91[14] = v38;
      v91[15] = v35;
      v91[16] = v39;
      __b[2] = sub_1B0E44838();
      __b[3] = v24;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v33 = sub_1B07AAC04(v32, v37, v31, v38);
      v34 = v25;
      sub_1B07AD750(v32, v37);
      __b[4] = v33;
      __b[5] = v34;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __b[6] = String.init(_:)(v35);
      __b[7] = v26;
    }
  }

  else
  {
    sub_1B07AE938(v86, v73);
    v97 = v73;
    __b[2] = sub_1B0E44838();
    __b[3] = v12;
    v58 = *(v73 + 2);
    v59 = *(v73 + 3);
    v56 = *(v73 + 4);
    v57 = *(v73 + 5);
    sub_1B07B1004(v58, v59);
    v60 = sub_1B07AAC04(v58, v59, v56, v57);
    v61 = v13;
    sub_1B07AD750(v58, v59);
    __b[4] = v60;
    __b[5] = v61;

    sub_1B07AE888(v73);
  }

  v29 = v91;
  v28 = __b;
  v30 = 74;
  memcpy(v91, __b, 0x4AuLL);
  sub_1B07B0F38(v91, &v90);
  sub_1B0760B84(v84);

  sub_1B0754BBC(v28);
  return memcpy(v62, v29, v30);
}

uint64_t sub_1B07AABB8@<X0>(uint64_t *a1@<X8>)
{
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  *a1 = result;
  return result;
}

uint64_t sub_1B07AAC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2178, &qword_1B0E9B5F8);
  sub_1B03F1A20(sub_1B07AACD4, 0, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v6, v7);
  return v7[0];
}

uint64_t sub_1B07AACD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = sub_1B0E44BA8();
  v11 = v2;
  v3 = sub_1B0E44838();
  v14 = MEMORY[0x1B2726DB0](v10, v11, v3);
  v15 = v4;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B0E44BA8();
  v16 = MEMORY[0x1B2726DB0](v14, v15, v5);
  v17 = v6;

  result = v16;
  *a2 = v16;
  a2[1] = v17;
  return result;
}

uint64_t sub_1B07AAE14(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v7 = a1;
  v8 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  sub_1B03F1A20(sub_1B07AAF40, 0, v2, MEMORY[0x1E69E73E0], &type metadata for Media.Subtype, v5, &v9);
  v6 = v9;
  if (v9.stringValue._object)
  {
    v10 = v6;
  }

  else
  {
    v3._countAndFlagsBits = sub_1B0E44838();
    v10 = Media.Subtype.init(stringLiteral:)(v3);
  }

  return v10.stringValue._countAndFlagsBits;
}

uint64_t sub_1B07AAF40@<X0>(Swift::String *a1@<X0>, NIOIMAPCore2::Media::Subtype *a2@<X8>)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = Media.Subtype.init(_:)(v4);
  result = v3.stringValue._countAndFlagsBits;
  *a2 = v3;
  return result;
}

uint64_t sub_1B07AAFAC(uint64_t (*a1)(void))
{
  v4[0] = a1();
  v3 = sub_1B07467B8();
  v1 = sub_1B041C1E8();
  BinaryInteger.init<A>(_:)(v4, MEMORY[0x1E69E7668], &type metadata for UID, v3, v1);
  return v4[1];
}

uint64_t sub_1B07AB02C(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = SectionSpecifier.Part.debugDescription.getter(v2);

  return v3;
}

uint64_t sub_1B07AB080(uint64_t a1, void *a2)
{
  v3.stringValue._countAndFlagsBits = a1;
  v3.stringValue._object = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return String.init(_:)(v3)._countAndFlagsBits;
}

uint64_t sub_1B07AB0B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5.stringValue._countAndFlagsBits = a3;
  v5.stringValue._object = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return String.init(_:)(v5)._countAndFlagsBits;
}

uint64_t sub_1B07AB12C(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v51 = a2;
  v50 = 0;
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(v51, v52);
  v3 = type metadata accessor for MessageSectionData.Segment(0);
  v4 = v52;
  *(v51 + *(v3 + 20)) = *(v52 + *(v3 + 20));
  v53 = *(v3 + 24);
  v54 = *(v3 + 24);
  if (*(v4 + v54 + 176) == 254 || *(v52 + v54 + 176) == 255)
  {
    memcpy((v51 + v53), (v52 + v54), 0xB1uLL);
  }

  else
  {
    v5 = v53;
    v31[15] = v52 + v54;
    v6 = *(v52 + v54);
    v7 = *(v52 + v54 + 8);
    v8 = *(v52 + v54 + 16);
    v9 = *(v52 + v54 + 24);
    v10 = *(v52 + v54 + 32);
    v11 = *(v52 + v54 + 40);
    v32 = *(v52 + v54 + 48);
    v33 = *(v52 + v54 + 56);
    v34 = *(v52 + v54 + 64);
    v35 = *(v52 + v54 + 72);
    v36 = *(v52 + v54 + 80);
    v37 = *(v52 + v54 + 88);
    v38 = *(v52 + v54 + 96);
    v39 = *(v52 + v54 + 104);
    v40 = *(v52 + v54 + 112);
    v41 = *(v52 + v54 + 120);
    v42 = *(v52 + v54 + 128);
    v43 = *(v52 + v54 + 136);
    v44 = *(v52 + v54 + 144);
    v45 = *(v52 + v54 + 152);
    v46 = *(v52 + v54 + 160);
    v47 = *(v52 + v54 + 168);
    v48 = *(v52 + v54 + 176);
    v31[16] = v31;
    sub_1B0716BB8(v6, v7, v8, v9, v10, v11, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v45;
    v26 = v46;
    v27 = v47;
    v28 = v48;
    v29 = v51 + v5;
    v49 = v29;
    *v29 = v6;
    *(v29 + 8) = v7;
    *(v29 + 16) = v8;
    *(v29 + 24) = v9;
    *(v29 + 32) = v10;
    *(v29 + 40) = v11;
    *(v29 + 48) = v12;
    *(v29 + 56) = v13;
    *(v29 + 64) = v14;
    *(v29 + 72) = v15;
    *(v29 + 80) = v16;
    *(v29 + 88) = v17;
    *(v29 + 96) = v18;
    *(v29 + 104) = v19;
    *(v29 + 112) = v20;
    *(v29 + 120) = v21;
    *(v29 + 128) = v22;
    *(v29 + 136) = v23;
    *(v29 + 144) = v24;
    *(v29 + 152) = v25;
    *(v29 + 160) = v26;
    *(v29 + 168) = v27;
    *(v29 + 176) = v28 & 1;
  }

  return v51;
}

uint64_t *sub_1B07AB440(unsigned __int8 *a1, uint64_t *a2)
{
  v45 = a1;
  v46 = a2;
  if (a1[176] == 254 || *(v45 + 176) == 255)
  {
    memcpy(v46, v45, 0xB1uLL);
  }

  else
  {
    v2 = *v45;
    v3 = v45[1];
    v4 = v45[2];
    v5 = v45[3];
    v6 = v45[4];
    v7 = v45[5];
    v28 = v45[6];
    v29 = v45[7];
    v30 = v45[8];
    v31 = v45[9];
    v32 = v45[10];
    v33 = v45[11];
    v34 = v45[12];
    v35 = v45[13];
    v36 = v45[14];
    v37 = v45[15];
    v38 = v45[16];
    v39 = v45[17];
    v40 = v45[18];
    v41 = v45[19];
    v42 = v45[20];
    v43 = v45[21];
    v44 = *(v45 + 176);
    v27[16] = v27;
    sub_1B0716BB8(v2, v3, v4, v5, v6, v7, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v8 = v28;
    v9 = v29;
    v10 = v30;
    v11 = v31;
    v12 = v32;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v42;
    v23 = v43;
    v24 = v44;
    v25 = v46;
    *v46 = v2;
    v25[1] = v3;
    v25[2] = v4;
    v25[3] = v5;
    v25[4] = v6;
    v25[5] = v7;
    v25[6] = v8;
    v25[7] = v9;
    v25[8] = v10;
    v25[9] = v11;
    v25[10] = v12;
    v25[11] = v13;
    v25[12] = v14;
    v25[13] = v15;
    v25[14] = v16;
    v25[15] = v17;
    v25[16] = v18;
    v25[17] = v19;
    v25[18] = v20;
    v25[19] = v21;
    v25[20] = v22;
    v25[21] = v23;
    *(v25 + 176) = v24 & 1;
  }

  return v46;
}

uint64_t sub_1B07AB694(uint64_t a1)
{
  v27 = a1;
  v26[17] = 0;
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(v27);
  v28 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v27 + v28 + 176) != 254 && *(v27 + v28 + 176) != 255)
  {
    v26[15] = v27 + v28;
    v2 = *(v27 + v28);
    v3 = *(v27 + v28 + 8);
    v4 = *(v27 + v28 + 16);
    v5 = *(v27 + v28 + 24);
    v6 = *(v27 + v28 + 32);
    v7 = *(v27 + v28 + 40);
    v8 = *(v27 + v28 + 48);
    v9 = *(v27 + v28 + 56);
    v10 = *(v27 + v28 + 64);
    v11 = *(v27 + v28 + 72);
    v12 = *(v27 + v28 + 80);
    v13 = *(v27 + v28 + 88);
    v14 = *(v27 + v28 + 96);
    v15 = *(v27 + v28 + 104);
    v16 = *(v27 + v28 + 112);
    v17 = *(v27 + v28 + 120);
    v18 = *(v27 + v28 + 128);
    v19 = *(v27 + v28 + 136);
    v20 = *(v27 + v28 + 144);
    v21 = *(v27 + v28 + 152);
    v22 = *(v27 + v28 + 160);
    v23 = *(v27 + v28 + 168);
    v24 = *(v27 + v28 + 176);
    v26[16] = v26;
    sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  }

  return v27;
}

uint64_t sub_1B07AB810(uint64_t a1)
{
  v1 = *(a1 + 176) ^ 0xFF;
  if (v1 >= 0xFE)
  {
    v1 = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_1B07AB910(void *a1)
{
  v32 = a1;
  v1 = *a1;

  v2 = v32[2];

  v33 = 0;
  v31 = *(type metadata accessor for MessageSectionData(0) + 28);
  v3 = *(*(sub_1B0E443C8() - 8) + 8);
  v34 = v32 + v31;
  v3();
  v35 = *(type metadata accessor for MessageSectionData.Segment(0) + 24);
  if (*(v32 + v31 + v35 + 176) != 254 && *(v32 + v31 + v35 + 176) != 255)
  {
    v29 = v32 + v31 + v35;
    v4 = *v29;
    v5 = *(v29 + 1);
    v6 = *(v29 + 2);
    v7 = *(v29 + 3);
    v8 = *(v29 + 4);
    v9 = *(v29 + 5);
    v10 = *(v29 + 6);
    v11 = *(v29 + 7);
    v12 = *(v29 + 8);
    v13 = *(v29 + 9);
    v14 = *(v29 + 10);
    v15 = *(v29 + 11);
    v16 = *(v29 + 12);
    v17 = *(v29 + 13);
    v18 = *(v29 + 14);
    v19 = *(v29 + 15);
    v20 = *(v29 + 16);
    v21 = *(v29 + 17);
    v22 = *(v29 + 18);
    v23 = *(v29 + 19);
    v24 = *(v29 + 20);
    v25 = *(v29 + 21);
    v26 = v29[176];
    v30 = &v28;
    sub_1B075E1EC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  }

  return v32;
}

uint64_t type metadata accessor for InProgressMessageDownload.Completed()
{
  v1 = qword_1EB6DC0B0;
  if (!qword_1EB6DC0B0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B07ABB40()
{
  v2 = qword_1EB6DB7B0;
  if (!qword_1EB6DB7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2090, &qword_1B0E9B520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B07ABBC8(uint64_t *a1)
{
  v46 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  if (!(*(*(v47 - 8) + 48))(v46, 1))
  {
    v1 = *v46;

    v44 = v46 + *(v47 + 48);
    type metadata accessor for InProgressMessageDownload.Section();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v6 = *v44;

          if (*(v44 + 2))
          {
            v7 = *(v44 + 2);

            v8 = *(v44 + 4);
          }

          if (v44[216] != 255)
          {
            v9 = *(v44 + 5);
            v10 = *(v44 + 6);
            v11 = *(v44 + 7);
            v12 = *(v44 + 8);
            v13 = *(v44 + 9);
            v14 = *(v44 + 10);
            v15 = *(v44 + 11);
            v16 = *(v44 + 12);
            v17 = *(v44 + 13);
            v18 = *(v44 + 14);
            v19 = *(v44 + 15);
            v20 = *(v44 + 16);
            v21 = *(v44 + 17);
            v22 = *(v44 + 18);
            v23 = *(v44 + 19);
            v24 = *(v44 + 20);
            v25 = *(v44 + 21);
            v26 = *(v44 + 22);
            v27 = *(v44 + 23);
            v28 = *(v44 + 24);
            v29 = *(v44 + 25);
            v30 = *(v44 + 26);
            v31 = v44[216];
            v41 = v39;
            sub_1B075E1EC(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
          }

          v39[15] = 0;
          v40 = &v44[*(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() + 28)];
          v32 = sub_1B0E443C8();
          (*(*(v32 - 8) + 8))(v40);
          break;
        case 2:
          v33 = *v44;

          break;
        case 3:
          v34 = *v44;

          v35 = *(v44 + 2);

          v36 = *(v44 + 4);

          v37 = *(v44 + 6);

          break;
      }
    }

    else
    {
      v2 = *(v44 + 1);

      if (*(v44 + 3))
      {
        v3 = *(v44 + 3);

        v4 = *(v44 + 5);
      }

      v42 = 0;
      v43 = &v44[*(type metadata accessor for MessageSectionDataConcatenator() + 28)];
      v5 = type metadata accessor for MessageSectionData.Concatenator(0);
      (*(*(v5 - 8) + 8))(v43);
    }
  }

  return v46;
}

uint64_t *sub_1B07ABF00(uint64_t *a1)
{
  v46 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2078, &qword_1B0E9B508);
  if (!(*(*(v47 - 8) + 48))(v46, 1))
  {
    v1 = *v46;

    v44 = v46 + *(v47 + 48);
    type metadata accessor for InProgressMessageDownload.Section();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v6 = *v44;

          if (*(v44 + 2))
          {
            v7 = *(v44 + 2);

            v8 = *(v44 + 4);
          }

          if (v44[216] != 255)
          {
            v9 = *(v44 + 5);
            v10 = *(v44 + 6);
            v11 = *(v44 + 7);
            v12 = *(v44 + 8);
            v13 = *(v44 + 9);
            v14 = *(v44 + 10);
            v15 = *(v44 + 11);
            v16 = *(v44 + 12);
            v17 = *(v44 + 13);
            v18 = *(v44 + 14);
            v19 = *(v44 + 15);
            v20 = *(v44 + 16);
            v21 = *(v44 + 17);
            v22 = *(v44 + 18);
            v23 = *(v44 + 19);
            v24 = *(v44 + 20);
            v25 = *(v44 + 21);
            v26 = *(v44 + 22);
            v27 = *(v44 + 23);
            v28 = *(v44 + 24);
            v29 = *(v44 + 25);
            v30 = *(v44 + 26);
            v31 = v44[216];
            v41 = v39;
            sub_1B075E1EC(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
          }

          v39[15] = 0;
          v40 = &v44[*(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() + 28)];
          v32 = sub_1B0E443C8();
          (*(*(v32 - 8) + 8))(v40);
          break;
        case 2:
          v33 = *v44;

          break;
        case 3:
          v34 = *v44;

          v35 = *(v44 + 2);

          v36 = *(v44 + 4);

          v37 = *(v44 + 6);

          break;
      }
    }

    else
    {
      v2 = *(v44 + 1);

      if (*(v44 + 3))
      {
        v3 = *(v44 + 3);

        v4 = *(v44 + 5);
      }

      v42 = 0;
      v43 = &v44[*(type metadata accessor for MessageSectionDataConcatenator() + 28)];
      v5 = type metadata accessor for MessageSectionData.Concatenator(0);
      (*(*(v5 - 8) + 8))(v43);
    }
  }

  return v46;
}

uint64_t sub_1B07AC238(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  memcpy((a2 + 40), (a1 + 40), 0xB1uLL);
  v4 = *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() + 28);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))(a2 + v4, a1 + v4);
  return a2;
}

void *sub_1B07AC2FC(void *a1)
{
  v32 = a1;
  v1 = *a1;

  if (v32[2])
  {
    v2 = v32[2];

    v3 = v32[4];
  }

  if (*(v32 + 216) != 255)
  {
    v4 = v32[5];
    v5 = v32[6];
    v6 = v32[7];
    v7 = v32[8];
    v8 = v32[9];
    v9 = v32[10];
    v10 = v32[11];
    v11 = v32[12];
    v12 = v32[13];
    v13 = v32[14];
    v14 = v32[15];
    v15 = v32[16];
    v16 = v32[17];
    v17 = v32[18];
    v18 = v32[19];
    v19 = v32[20];
    v20 = v32[21];
    v21 = v32[22];
    v22 = v32[23];
    v23 = v32[24];
    v24 = v32[25];
    v25 = v32[26];
    v26 = *(v32 + 216);
    v31 = v29;
    sub_1B075E1EC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  }

  v29[16] = 0;
  v30 = v32 + *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() + 28);
  v27 = sub_1B0E443C8();
  (*(*(v27 - 8) + 8))(v30);
  return v32;
}

unint64_t sub_1B07AC484()
{
  v2 = qword_1EB6DB7F0;
  if (!qword_1EB6DB7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E20B8, &qword_1B0E9B540);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07AC53C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *sub_1B07AC570(void *a1, void *a2)
{
  v60 = a1;
  v61 = a2;
  v62 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v60;
  *v61 = v62;
  if (v2[2])
  {
    v3 = v60;
    v61[1] = v60[1];
    v58 = v3[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = v60;
    v5 = v61;
    v61[2] = v58;
    v5[3] = v4[3];
    v59 = v4[4];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v61[4] = v59;
  }

  else
  {
    v6 = v61;
    v7 = v60;
    *(v61 + 1) = *(v60 + 1);
    *(v6 + 3) = *(v7 + 3);
  }

  v56 = v61 + 5;
  v57 = v60 + 5;
  if (*(v60 + 216) == 255)
  {
    memcpy(v56, v57, 0xB1uLL);
  }

  else
  {
    v8 = v60[5];
    v9 = v60[6];
    v10 = v60[7];
    v11 = v60[8];
    v12 = v60[9];
    v13 = v60[10];
    v39 = v60[11];
    v40 = v60[12];
    v41 = v60[13];
    v42 = v60[14];
    v43 = v60[15];
    v44 = v60[16];
    v45 = v60[17];
    v46 = v60[18];
    v47 = v60[19];
    v48 = v60[20];
    v49 = v60[21];
    v50 = v60[22];
    v51 = v60[23];
    v52 = v60[24];
    v53 = v60[25];
    v54 = v60[26];
    v55 = *(v60 + 216);
    v38 = v35;
    sub_1B0716BB8(v8, v9, v10, v11, v12, v13, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
    v14 = v39;
    v15 = v40;
    v16 = v41;
    v17 = v42;
    v18 = v43;
    v19 = v44;
    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = v51;
    v27 = v52;
    v28 = v53;
    v29 = v54;
    v30 = v55;
    v31 = v61;
    v61[5] = v8;
    v31[6] = v9;
    v31[7] = v10;
    v31[8] = v11;
    v31[9] = v12;
    v31[10] = v13;
    v31[11] = v14;
    v31[12] = v15;
    v31[13] = v16;
    v31[14] = v17;
    v31[15] = v18;
    v31[16] = v19;
    v31[17] = v20;
    v31[18] = v21;
    v31[19] = v22;
    v31[20] = v23;
    v31[21] = v24;
    v31[22] = v25;
    v31[23] = v26;
    v31[24] = v27;
    v31[25] = v28;
    v31[26] = v29;
    *(v31 + 216) = v30 & 1;
  }

  v35[16] = 0;
  v32 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  v37 = v61 + *(v32 + 28);
  v36 = v60 + *(v32 + 28);
  v33 = sub_1B0E443C8();
  (*(*(v33 - 8) + 16))(v37, v36);
  return v61;
}

unint64_t sub_1B07AC8FC()
{
  v2 = qword_1EB6DB5C0;
  if (!qword_1EB6DB5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E20C8, &qword_1B0E9B550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AC98C()
{
  v2 = qword_1EB6DC9F0;
  if (!qword_1EB6DC9F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07ACA38()
{
  v2 = qword_1EB6DB7B8;
  if (!qword_1EB6DB7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2090, &qword_1B0E9B520);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07ACAC0()
{
  v2 = qword_1EB6DB5C8;
  if (!qword_1EB6DB5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E20D8, &unk_1B0E9B560);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B07ACB48(char *a1, uint64_t *a2)
{
  if (a1[32] == 255)
  {
    memcpy(a2, a1, 0x21uLL);
  }

  else
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    v7 = a1[32];
    sub_1B07ACBF8(*a1, v4, v5, v6, v7);
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    *(a2 + 32) = v7;
  }

  return a2;
}

uint64_t sub_1B07ACBF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
      return sub_1B07ACD88(result, a2);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    case 10:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B07ACD88(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0xA)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B07ACDC4(uint64_t a1)
{
  if (*(a1 + 32) != 255)
  {
    sub_1B07ACE18(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  }

  return a1;
}

uint64_t sub_1B07ACE18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
      return sub_1B07ACFA8(result, a2);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:

    case 10:
  }

  return result;
}

uint64_t sub_1B07ACFA8(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0xA)
  {
  }

  return result;
}

uint64_t sub_1B07ACFE4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = *(a1 + 8);

    v2 = *(a1 + 24);
  }

  return a1;
}

uint64_t *sub_1B07AD030(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  if (*(a1 + 64) != 255)
  {
    sub_1B07ACE18(a1[4], a1[5], a1[6], a1[7], *(a1 + 64));
  }

  return a1;
}

uint64_t sub_1B07AD09C()
{
  result = *(v0 + 16);
  sub_1B06A4360();
  return result;
}

uint64_t sub_1B07AD0B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_1B07AB080(*(v0 + 16), *(v0 + 24));
}

void *sub_1B07AD120(void *a1, void *a2)
{
  v15 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v15;
  a2[1] = a1[1];
  v18 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[2] = v18;
  if (a1[4])
  {
    v10 = a1[3];

    a2[3] = v10;
    v11 = a1[4];

    a2[4] = v11;
    v12 = a1[5];

    a2[5] = v12;
    v13 = a2 + 6;
    v14 = a1 + 6;
    if (a1[7] == 1)
    {
      memcpy(v13, v14, 0x48uLL);
    }

    else
    {
      if (a1[7])
      {
        a2[6] = a1[6];
        v6 = a1[7];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[7] = v6;
        v7 = a1[8];

        a2[8] = v7;
        v8 = a1[9];

        a2[9] = v8;
        v9 = a1[10];

        a2[10] = v9;
      }

      else
      {
        memcpy(v13, v14, 0x28uLL);
      }

      if (a1[11])
      {
        v5 = a1[11];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[11] = v5;
        if (a1[14])
        {
          a2[12] = a1[12];
          v3 = a1[13];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[13] = v3;
          v4 = a1[14];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[14] = v4;
        }

        else
        {
          *(a2 + 6) = *(a1 + 6);
          a2[14] = a1[14];
        }
      }

      else
      {
        *(a2 + 11) = *(a1 + 11);
        *(a2 + 13) = *(a1 + 13);
      }
    }
  }

  else
  {
    memcpy(a2 + 3, a1 + 3, 0x60uLL);
  }

  return a2;
}

unint64_t sub_1B07AD3B4()
{
  v2 = qword_1EB6DB5F0;
  if (!qword_1EB6DB5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E20F0, &qword_1B0E9B578);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07AD43C(void *a1, void *a2)
{
  v13 = *a1;

  *a2 = v13;
  v14 = a1[1];

  a2[1] = v14;
  v15 = a1[2];

  a2[2] = v15;
  v16 = a1[3];

  a2[3] = v16;
  a2[4] = a1[4];
  v17 = a1[5];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[5] = v17;
  a2[6] = a1[6];
  v18 = a1[7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[7] = v18;
  a2[8] = a1[8];
  v20 = a1[9];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[9] = v20;
  a2[10] = a1[10];
  if (a1[12] == 1)
  {
    memcpy(a2 + 11, a1 + 11, 0x58uLL);
  }

  else
  {
    a2[11] = a1[11];
    v10 = a1[12];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[12] = v10;
    __dst = a2 + 13;
    __src = a1 + 13;
    if (a1[14] == 1)
    {
      memcpy(__dst, __src, 0x48uLL);
    }

    else
    {
      if (a1[14])
      {
        a2[13] = a1[13];
        v6 = a1[14];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[14] = v6;
        v7 = a1[15];

        a2[15] = v7;
        v8 = a1[16];

        a2[16] = v8;
        v9 = a1[17];

        a2[17] = v9;
      }

      else
      {
        memcpy(__dst, __src, 0x28uLL);
      }

      if (a1[18])
      {
        v5 = a1[18];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        a2[18] = v5;
        if (a1[21])
        {
          a2[19] = a1[19];
          v3 = a1[20];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[20] = v3;
          v4 = a1[21];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          a2[21] = v4;
        }

        else
        {
          *(a2 + 19) = *(a1 + 19);
          a2[21] = a1[21];
        }
      }

      else
      {
        *(a2 + 9) = *(a1 + 9);
        *(a2 + 10) = *(a1 + 10);
      }
    }
  }

  return a2;
}

uint64_t sub_1B07AD750(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1B07AD790(void *a1, void *a2)
{
  v59 = a1;
  v61 = a2;
  v56 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v59;
  v3 = v61;
  *v61 = v56;
  *(v3 + 2) = *(v2 + 2);
  *(v3 + 3) = *(v2 + 3);
  v57 = v2[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v61[2] = v57;
  v62 = 0;
  v4 = type metadata accessor for MessageSectionData(0);
  v58 = *(v4 + 28);
  v60 = *(v4 + 28);
  v5 = *(*(sub_1B0E443C8() - 8) + 16);
  v63 = v61 + v58;
  v64 = v59 + v60;
  v5();
  v6 = type metadata accessor for MessageSectionData.Segment(0);
  v7 = v59 + v60;
  v63[*(v6 + 20)] = *(v59 + v60 + *(v6 + 20));
  v65 = *(v6 + 24);
  v66 = *(v6 + 24);
  if (v7[v66 + 176] == 254 || *(v59 + v60 + v66 + 176) == 255)
  {
    memcpy(v61 + v58 + v65, v59 + v60 + v66, 0xB1uLL);
  }

  else
  {
    v8 = v65;
    v9 = v58;
    v36 = v59 + v60 + v66;
    v10 = *v36;
    v11 = *(v36 + 1);
    v12 = *(v36 + 2);
    v13 = *(v36 + 3);
    v14 = *(v36 + 4);
    v15 = *(v36 + 5);
    v38 = *(v36 + 6);
    v39 = *(v36 + 7);
    v40 = *(v36 + 8);
    v41 = *(v36 + 9);
    v42 = *(v36 + 10);
    v43 = *(v36 + 11);
    v44 = *(v36 + 12);
    v45 = *(v36 + 13);
    v46 = *(v36 + 14);
    v47 = *(v36 + 15);
    v48 = *(v36 + 16);
    v49 = *(v36 + 17);
    v50 = *(v36 + 18);
    v51 = *(v36 + 19);
    v52 = *(v36 + 20);
    v53 = *(v36 + 21);
    v54 = v36[176];
    v37 = &v35;
    sub_1B0716BB8(v10, v11, v12, v13, v14, v15, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    v16 = v38;
    v17 = v39;
    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = v47;
    v26 = v48;
    v27 = v49;
    v28 = v50;
    v29 = v51;
    v30 = v52;
    v31 = v53;
    v32 = v54;
    v33 = v61 + v9 + v8;
    v55 = v33;
    *v33 = v10;
    *(v33 + 1) = v11;
    *(v33 + 2) = v12;
    *(v33 + 3) = v13;
    *(v33 + 4) = v14;
    *(v33 + 5) = v15;
    *(v33 + 6) = v16;
    *(v33 + 7) = v17;
    *(v33 + 8) = v18;
    *(v33 + 9) = v19;
    *(v33 + 10) = v20;
    *(v33 + 11) = v21;
    *(v33 + 12) = v22;
    *(v33 + 13) = v23;
    *(v33 + 14) = v24;
    *(v33 + 15) = v25;
    *(v33 + 16) = v26;
    *(v33 + 17) = v27;
    *(v33 + 18) = v28;
    *(v33 + 19) = v29;
    *(v33 + 20) = v30;
    *(v33 + 21) = v31;
    v33[176] = v32 & 1;
  }

  return v61;
}

uint64_t sub_1B07ADB58(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 16) = *(a1 + 16);
  v5 = *(type metadata accessor for MessageSectionData(0) + 28);
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))();
  v3 = type metadata accessor for MessageSectionData.Segment(0);
  *(a2 + v5 + *(v3 + 20)) = *(a1 + v5 + *(v3 + 20));
  memcpy((a2 + v5 + *(v3 + 24)), (a1 + v5 + *(v3 + 24)), 0xB1uLL);
  return a2;
}

uint64_t sub_1B07ADC58()
{
  v1 = *(type metadata accessor for MessageSectionData(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0791DF8(v2);
}

uint64_t sub_1B07ADCBC()
{
  v1 = *(type metadata accessor for MessageSectionData(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0791E24(v2);
}

void *sub_1B07ADD20(void *a1)
{
  v8 = type metadata accessor for MessageSectionDataConcatenator();
  if (!(*(*(v8 - 8) + 48))(a1, 1))
  {
    v1 = a1[1];

    if (a1[3])
    {
      v2 = a1[3];

      v3 = a1[5];
    }

    v6 = a1 + *(v8 + 28);
    v4 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v4 - 8) + 8))(v6);
  }

  return a1;
}

uint64_t *sub_1B07ADE14(uint64_t *a1)
{
  v44 = a1;
  v45 = type metadata accessor for InProgressMessageDownload.Section();
  if (!(*(*(v45 - 8) + 48))(v44, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:
          v5 = *v44;

          if (v44[2])
          {
            v6 = v44[2];

            v7 = v44[4];
          }

          if (*(v44 + 216) != 255)
          {
            v8 = v44[5];
            v9 = v44[6];
            v10 = v44[7];
            v11 = v44[8];
            v12 = v44[9];
            v13 = v44[10];
            v14 = v44[11];
            v15 = v44[12];
            v16 = v44[13];
            v17 = v44[14];
            v18 = v44[15];
            v19 = v44[16];
            v20 = v44[17];
            v21 = v44[18];
            v22 = v44[19];
            v23 = v44[20];
            v24 = v44[21];
            v25 = v44[22];
            v26 = v44[23];
            v27 = v44[24];
            v28 = v44[25];
            v29 = v44[26];
            v30 = *(v44 + 216);
            v40 = v38;
            sub_1B075E1EC(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
          }

          v38[16] = 0;
          v39 = v44 + *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() + 28);
          v31 = sub_1B0E443C8();
          (*(*(v31 - 8) + 8))(v39);
          break;
        case 2:
          v32 = *v44;

          break;
        case 3:
          v33 = *v44;

          v34 = v44[2];

          v35 = v44[4];

          v36 = v44[6];

          break;
      }
    }

    else
    {
      v1 = v44[1];

      if (v44[3])
      {
        v2 = v44[3];

        v3 = v44[5];
      }

      v41 = 0;
      v42 = v44 + *(type metadata accessor for MessageSectionDataConcatenator() + 28);
      v4 = type metadata accessor for MessageSectionData.Concatenator(0);
      (*(*(v4 - 8) + 8))(v42);
    }
  }

  return v44;
}

char *sub_1B07AE118(char *a1, char *a2)
{
  v91 = a1;
  v90 = a2;
  v92 = type metadata accessor for InProgressMessageDownload.Section();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  if ((*(v93 + 48))(v91, 1))
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2080, &qword_1B0E9B510);
    memcpy(v90, v91, *(*(v49 - 8) + 64));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v82 = *v91;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v11 = v91;
        *v90 = v82;
        if (*(v11 + 2))
        {
          v12 = v91;
          *(v90 + 1) = *(v91 + 1);
          v80 = *(v12 + 2);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v13 = v91;
          v14 = v90;
          *(v90 + 2) = v80;
          *(v14 + 3) = *(v13 + 3);
          v81 = *(v13 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *(v90 + 4) = v81;
        }

        else
        {
          v15 = v90;
          v16 = v91;
          *(v90 + 8) = *(v91 + 8);
          *(v15 + 24) = *(v16 + 24);
        }

        v78 = v90 + 40;
        v79 = v91 + 40;
        if (v91[216] == 255)
        {
          memcpy(v78, v79, 0xB1uLL);
        }

        else
        {
          v17 = *(v91 + 5);
          v18 = *(v91 + 6);
          v19 = *(v91 + 7);
          v20 = *(v91 + 8);
          v21 = *(v91 + 9);
          v22 = *(v91 + 10);
          v61 = *(v91 + 11);
          v62 = *(v91 + 12);
          v63 = *(v91 + 13);
          v64 = *(v91 + 14);
          v65 = *(v91 + 15);
          v66 = *(v91 + 16);
          v67 = *(v91 + 17);
          v68 = *(v91 + 18);
          v69 = *(v91 + 19);
          v70 = *(v91 + 20);
          v71 = *(v91 + 21);
          v72 = *(v91 + 22);
          v73 = *(v91 + 23);
          v74 = *(v91 + 24);
          v75 = *(v91 + 25);
          v76 = *(v91 + 26);
          v77 = v91[216];
          v60 = &v51;
          sub_1B0716BB8(v17, v18, v19, v20, v21, v22, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77);
          v23 = v61;
          v24 = v62;
          v25 = v63;
          v26 = v64;
          v27 = v65;
          v28 = v66;
          v29 = v67;
          v30 = v68;
          v31 = v69;
          v32 = v70;
          v33 = v71;
          v34 = v72;
          v35 = v73;
          v36 = v74;
          v37 = v75;
          v38 = v76;
          v39 = v77;
          v40 = v90;
          *(v90 + 5) = v17;
          *(v40 + 6) = v18;
          *(v40 + 7) = v19;
          *(v40 + 8) = v20;
          *(v40 + 9) = v21;
          *(v40 + 10) = v22;
          *(v40 + 11) = v23;
          *(v40 + 12) = v24;
          *(v40 + 13) = v25;
          *(v40 + 14) = v26;
          *(v40 + 15) = v27;
          *(v40 + 16) = v28;
          *(v40 + 17) = v29;
          *(v40 + 18) = v30;
          *(v40 + 19) = v31;
          *(v40 + 20) = v32;
          *(v40 + 21) = v33;
          *(v40 + 22) = v34;
          *(v40 + 23) = v35;
          *(v40 + 24) = v36;
          *(v40 + 25) = v37;
          *(v40 + 26) = v38;
          v40[216] = v39 & 1;
        }

        v57 = 0;
        v41 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
        v59 = &v90[*(v41 + 28)];
        v58 = &v91[*(v41 + 28)];
        v42 = sub_1B0E443C8();
        (*(*(v42 - 8) + 16))(v59, v58);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v56 = *v91;

          *v90 = v56;
        }

        else
        {
          v52 = *v91;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v43 = v91;
          v44 = v90;
          *v90 = v52;
          *(v44 + 1) = *(v43 + 1);
          v53 = *(v43 + 2);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v45 = v91;
          v46 = v90;
          *(v90 + 2) = v53;
          *(v46 + 3) = *(v45 + 3);
          v54 = *(v45 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v47 = v91;
          v48 = v90;
          *(v90 + 4) = v54;
          *(v48 + 5) = *(v47 + 5);
          v55 = *(v47 + 6);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          *(v90 + 6) = v55;
        }

        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v2 = v91;
      *v90 = *v91;
      v88 = *(v2 + 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v3 = v91;
      *(v90 + 1) = v88;
      if (*(v3 + 3))
      {
        v4 = v91;
        *(v90 + 2) = *(v91 + 2);
        v86 = *(v4 + 3);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v5 = v91;
        v6 = v90;
        *(v90 + 3) = v86;
        *(v6 + 4) = *(v5 + 4);
        v87 = *(v5 + 5);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        *(v90 + 5) = v87;
      }

      else
      {
        v7 = v90;
        v8 = v91;
        *(v90 + 1) = *(v91 + 1);
        *(v7 + 2) = *(v8 + 2);
      }

      v83 = 0;
      v9 = type metadata accessor for MessageSectionDataConcatenator();
      v85 = &v90[*(v9 + 28)];
      v84 = &v91[*(v9 + 28)];
      v10 = type metadata accessor for MessageSectionData.Concatenator(0);
      (*(*(v10 - 8) + 16))(v85, v84);
      swift_storeEnumTagMultiPayload();
    }

    (*(v93 + 56))(v90, 0, 1, v92);
  }

  return v90;
}

uint64_t sub_1B07AE75C()
{
  v1 = *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B0797C00(v2);
}

uint64_t sub_1B07AE7C0()
{
  v1 = *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0797C2C(v2);
}

uint64_t sub_1B07AE824()
{
  v1 = *(type metadata accessor for MessageSectionData(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B0797A7C(v2);
}

void *sub_1B07AE888(void *a1)
{
  v1 = a1[1];

  if (a1[3])
  {
    v2 = a1[3];

    v3 = a1[5];
  }

  v6 = a1 + *(type metadata accessor for MessageSectionDataConcatenator() + 28);
  v4 = type metadata accessor for MessageSectionData.Concatenator(0);
  (*(*(v4 - 8) + 8))(v6);
  return a1;
}

uint64_t sub_1B07AE938(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  v4 = *(type metadata accessor for MessageSectionDataConcatenator() + 28);
  v2 = type metadata accessor for MessageSectionData.Concatenator(0);
  (*(*(v2 - 8) + 32))(a2 + v4, a1 + v4);
  return a2;
}

uint64_t sub_1B07AE9EC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v11 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v11;
  if (*(a1 + 24))
  {
    *(a2 + 16) = *(a1 + 16);
    v7 = *(a1 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(a2 + 24) = v7;
    *(a2 + 32) = *(a1 + 32);
    v8 = *(a1 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(a2 + 40) = v8;
  }

  else
  {
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
  }

  v2 = type metadata accessor for MessageSectionDataConcatenator();
  v6 = a2 + *(v2 + 28);
  v5 = a1 + *(v2 + 28);
  v3 = type metadata accessor for MessageSectionData.Concatenator(0);
  (*(*(v3 - 8) + 16))(v6, v5);
  return a2;
}

uint64_t *sub_1B07AEB1C(uint64_t *a1)
{
  v32 = a1;
  v33 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  if (!(*(*(v33 - 8) + 48))(v32, 1))
  {
    v1 = *v32;

    if (v32[2])
    {
      v2 = v32[2];

      v3 = v32[4];
    }

    if (*(v32 + 216) != 255)
    {
      v4 = v32[5];
      v5 = v32[6];
      v6 = v32[7];
      v7 = v32[8];
      v8 = v32[9];
      v9 = v32[10];
      v10 = v32[11];
      v11 = v32[12];
      v12 = v32[13];
      v13 = v32[14];
      v14 = v32[15];
      v15 = v32[16];
      v16 = v32[17];
      v17 = v32[18];
      v18 = v32[19];
      v19 = v32[20];
      v20 = v32[21];
      v21 = v32[22];
      v22 = v32[23];
      v23 = v32[24];
      v24 = v32[25];
      v25 = v32[26];
      v26 = *(v32 + 216);
      v31 = &v29;
      sub_1B075E1EC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    }

    v30 = v32 + *(v33 + 28);
    v27 = sub_1B0E443C8();
    (*(*(v27 - 8) + 8))(v30);
  }

  return v32;
}

unint64_t sub_1B07AECF0()
{
  v2 = qword_1EB6E2108;
  if (!qword_1EB6E2108)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2108);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for InProgressMessageDownload.EMLX()
{
  v1 = qword_1EB6DC0F0;
  if (!qword_1EB6DC0F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t *sub_1B07AEDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = v2;

  v4 = a2[1];
  a2[1] = a1[1];

  v5 = a2[2];
  a2[2] = a1[2];

  v6 = a2[3];
  a2[3] = a1[3];

  v7 = a2[4];
  a2[4] = a1[4];

  return a2;
}

char *sub_1B07AEE78(char *a1, char *a2)
{
  v14 = type metadata accessor for InProgressMessageDownload.EMLX();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    v10 = &a2[*(v14 + 20)];
    v9 = &a1[*(v14 + 20)];
    v5 = *v9;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *v10 = v5;
    v6 = *(v9 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v10 + 1) = v6;
    v7 = *(v9 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v10 + 2) = v7;
    v8 = *(v9 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v10 + 3) = v8;
    v11 = *(v9 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v10 + 4) = v11;
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

char *sub_1B07AF054(char *a1, char *a2)
{
  v16 = type metadata accessor for InProgressMessageDownload.EMLX();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a2, 1))
  {
    if (v18(a1, 1, v16))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
      memcpy(a2, a1, *(*(v10 - 8) + 64));
    }

    else
    {
      v9 = sub_1B0E443C8();
      (*(*(v9 - 8) + 32))(a2, a1);
      memcpy(&a2[*(v16 + 20)], &a1[*(v16 + 20)], 0x28uLL);
      (*(v17 + 56))(a2, 0, 1, v16);
    }
  }

  else if (v18(a1, 1, v16))
  {
    sub_1B07AF320(a2);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
    memcpy(a2, a1, *(*(v8 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 40))(a2, a1);
    v13 = &a2[*(v16 + 20)];
    v12 = &a1[*(v16 + 20)];
    v3 = *v13;
    *v13 = *v12;

    v4 = *(v13 + 1);
    *(v13 + 1) = *(v12 + 1);

    v5 = *(v13 + 2);
    *(v13 + 2) = *(v12 + 2);

    v6 = *(v13 + 3);
    *(v13 + 3) = *(v12 + 3);

    v7 = *(v13 + 4);
    *(v13 + 4) = *(v12 + 4);
  }

  return a2;
}

uint64_t sub_1B07AF320(uint64_t a1)
{
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(a1);
  v8 = (a1 + *(type metadata accessor for InProgressMessageDownload.EMLX() + 20));
  v2 = *v8;

  v3 = v8[1];

  v4 = v8[2];

  v5 = v8[3];

  v6 = v8[4];

  return a1;
}

uint64_t sub_1B07AF3D4(uint64_t a1)
{
  v10 = type metadata accessor for InProgressMessageDownload.EMLX();
  if (!(*(*(v10 - 8) + 48))(a1, 1))
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(a1);
    v8 = (a1 + *(v10 + 20));
    v2 = *v8;

    v3 = v8[1];

    v4 = v8[2];

    v5 = v8[3];

    v6 = v8[4];
  }

  return a1;
}

uint64_t type metadata accessor for InProgressMessageDownload.Result()
{
  v1 = qword_1EB6DC0D8;
  if (!qword_1EB6DC0D8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1B07AF53C()
{
  v2 = qword_1EB6E2118;
  if (!qword_1EB6E2118)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2118);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07AF5B8(const void *a1, void *a2)
{
  v6 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

unint64_t sub_1B07AF6E0()
{
  v2 = qword_1EB6DB2C0;
  if (!qword_1EB6DB2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07AF768(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for InProgressMessageDownload.EMLX();
  memcpy((a2 + *(v3 + 20)), (a1 + *(v3 + 20)), 0x28uLL);
  return a2;
}

uint64_t sub_1B07AF800(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(type metadata accessor for InProgressMessageDownload.EMLX() + 20);
  v6 = *(a1 + v5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = (a2 + v5);
  *(a2 + v5) = v6;
  v7 = *(a1 + v5 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[1] = v7;
  v8 = *(a1 + v5 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[2] = v8;
  v9 = *(a1 + v5 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[3] = v9;
  v12 = *(a1 + v5 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  v11[4] = v12;
  return result;
}

uint64_t sub_1B07AF920(uint64_t a1)
{
  v3 = type metadata accessor for Message(0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B07AF9C8()
{
  v2 = qword_1EB6DB2D8;
  if (!qword_1EB6DB2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2128, &qword_1B0E9B5A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AFA50()
{
  v2 = qword_1EB6DB5D8;
  if (!qword_1EB6DB5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AFAD8()
{
  v2 = qword_1EB6DB2C8;
  if (!qword_1EB6DB2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2120, &qword_1B0E9B5A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AFB60()
{
  v2 = qword_1EB6DB0A0;
  if (!qword_1EB6DB0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07AFBE8()
{
  v2 = qword_1EB6DB5D0;
  if (!qword_1EB6DB5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5D0);
    return WitnessTable;
  }

  return v2;
}

_DWORD *sub_1B07AFC78(uint64_t a1, _DWORD *a2)
{
  v84 = a1;
  v85 = a2;
  *a2 = *a1;
  if (*(a1 + 184) == 255)
  {
    memcpy(v85 + 2, (v84 + 8), 0xB1uLL);
  }

  else
  {
    v2 = *(v84 + 8);
    v3 = *(v84 + 16);
    v4 = *(v84 + 24);
    v5 = *(v84 + 32);
    v6 = *(v84 + 40);
    v7 = *(v84 + 48);
    v67 = *(v84 + 56);
    v68 = *(v84 + 64);
    v69 = *(v84 + 72);
    v70 = *(v84 + 80);
    v71 = *(v84 + 88);
    v72 = *(v84 + 96);
    v73 = *(v84 + 104);
    v74 = *(v84 + 112);
    v75 = *(v84 + 120);
    v76 = *(v84 + 128);
    v77 = *(v84 + 136);
    v78 = *(v84 + 144);
    v79 = *(v84 + 152);
    v80 = *(v84 + 160);
    v81 = *(v84 + 168);
    v82 = *(v84 + 176);
    v83 = *(v84 + 184);
    v66 = &v42;
    sub_1B0716BB8(v2, v3, v4, v5, v6, v7, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    v8 = v67;
    v9 = v68;
    v10 = v69;
    v11 = v70;
    v12 = v71;
    v13 = v72;
    v14 = v73;
    v15 = v74;
    v16 = v75;
    v17 = v76;
    v18 = v77;
    v19 = v78;
    v20 = v79;
    v21 = v80;
    v22 = v81;
    v23 = v82;
    v24 = v83;
    v25 = v85;
    *(v85 + 1) = v2;
    *(v25 + 2) = v3;
    *(v25 + 3) = v4;
    *(v25 + 4) = v5;
    *(v25 + 5) = v6;
    *(v25 + 6) = v7;
    *(v25 + 7) = v8;
    *(v25 + 8) = v9;
    *(v25 + 9) = v10;
    *(v25 + 10) = v11;
    *(v25 + 11) = v12;
    *(v25 + 12) = v13;
    *(v25 + 13) = v14;
    *(v25 + 14) = v15;
    *(v25 + 15) = v16;
    *(v25 + 16) = v17;
    *(v25 + 17) = v18;
    *(v25 + 18) = v19;
    *(v25 + 19) = v20;
    *(v25 + 20) = v21;
    *(v25 + 21) = v22;
    *(v25 + 22) = v23;
    *(v25 + 184) = v24 & 1;
  }

  v60 = 0;
  v61 = type metadata accessor for InProgressMessageDownload.Completed();
  v62 = v85 + *(v61 + 24);
  v63 = (v84 + *(v61 + 24));
  v64 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v26 = sub_1B0E443C8();
    (*(*(v26 - 8) + 16))(v62, v63);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v62, v63, *(*(v64 - 8) + 64));
  }

  v52 = 0;
  v27 = _s31PreviouslyDownloadedMessageDataVMa();
  v53 = *(v27 + 20);
  v54 = *&v63[*(v27 + 20)];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = v85;
  v29 = v61;
  v30 = v84;
  *&v62[v53] = v54;
  __dst = v28 + *(v29 + 28);
  __src = (v30 + *(v29 + 28));
  v57 = type metadata accessor for MessageHeader();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(__src, 1))
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(__dst, __src, *(*(v32 - 8) + 64));
  }

  else
  {
    v31 = sub_1B0E443C8();
    (*(*(v31 - 8) + 16))(__dst, __src);
    (*(v58 + 56))(__dst, 0, 1, v57);
  }

  v33 = v84;
  v34 = v61;
  *(v85 + *(v61 + 32)) = *(v84 + *(v61 + 32));
  v43 = *(v34 + 36);
  v44 = *(v33 + *(v34 + 36));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35 = v61;
  v36 = v84;
  *(v85 + v43) = v44;
  v45 = *(v35 + 40);
  v46 = *(v36 + *(v35 + 40));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = v85;
  v38 = v61;
  v39 = v84;
  *(v85 + v45) = v46;
  v47 = v37 + *(v38 + 44);
  v48 = (v39 + *(v38 + 44));
  v49 = sub_1B0E443C8();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  if ((*(v50 + 48))(v48, 1))
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(v47, v48, *(*(v40 - 8) + 64));
  }

  else
  {
    (*(v50 + 16))(v47, v48, v49);
    (*(v50 + 56))(v47, 0, 1, v49);
  }

  return v85;
}

_DWORD *sub_1B07B02D8(_DWORD *a1, _DWORD *a2)
{
  *a2 = *a1;
  memcpy(a2 + 2, a1 + 2, 0xB1uLL);
  v17 = type metadata accessor for InProgressMessageDownload.Completed();
  v18 = v17[6];
  v20 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v18, a1 + v18, *(*(v20 - 8) + 64));
  }

  v3 = _s31PreviouslyDownloadedMessageDataVMa();
  *(a2 + v18 + *(v3 + 20)) = *(a1 + v18 + *(v3 + 20));
  __dst = a2 + v17[7];
  __src = a1 + v17[7];
  v14 = type metadata accessor for MessageHeader();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(__src, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    v4 = sub_1B0E443C8();
    (*(*(v4 - 8) + 32))(__dst, __src);
    (*(v15 + 56))(__dst, 0, 1, v14);
  }

  *(a2 + v17[8]) = *(a1 + v17[8]);
  *(a2 + v17[9]) = *(a1 + v17[9]);
  *(a2 + v17[10]) = *(a1 + v17[10]);
  v8 = a2 + v17[11];
  v9 = a1 + v17[11];
  v10 = sub_1B0E443C8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(v8, v9, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(v8, v9, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  return a2;
}

uint64_t sub_1B07B073C()
{
  v1 = *(type metadata accessor for InProgressMessageDownload.Completed() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B079F1FC(v2);
}

uint64_t sub_1B07B07A0()
{
  v1 = *(sub_1B0E443C8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07A26E4();
}

unint64_t sub_1B07B082C()
{
  v2 = qword_1EB6DB5A8;
  if (!qword_1EB6DB5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2140, &qword_1B0E9B5D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B08B4()
{
  v2 = qword_1EB6DB7E8;
  if (!qword_1EB6DB7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2148, &qword_1B0E9B5D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B0968()
{
  v2 = qword_1EB6DADA8;
  if (!qword_1EB6DADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B09F0()
{
  v2 = qword_1EB6DE660;
  if (!qword_1EB6DE660)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE660);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B0A94()
{
  v2 = qword_1EB6DB098;
  if (!qword_1EB6DB098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB098);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07B0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B07B0B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  return result;
}

unint64_t sub_1B07B0BDC()
{
  v2 = qword_1EB6E2160;
  if (!qword_1EB6E2160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2160);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B0C58()
{
  v2 = qword_1EB6E2168;
  if (!qword_1EB6E2168)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2168);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B0CD4()
{
  v2 = qword_1EB6E2170;
  if (!qword_1EB6E2170)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B0D50()
{
  v2 = qword_1EB6DC188;
  if (!qword_1EB6DC188)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC188);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07B0DCC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 32) = v4;
  *(a2 + 40) = *(a1 + 40);
  v5 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 48) = v5;
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  v6 = *(a1 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 72) = v6;
  *(a2 + 80) = *(a1 + 80);
  v8 = *(a1 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 88) = v8;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 100) = *(a1 + 100);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  return result;
}

void *sub_1B07B0EDC(void *a1)
{
  v1 = a1[1];

  v2 = a1[4];

  v3 = a1[6];

  v4 = a1[9];

  v5 = a1[11];

  return a1;
}

uint64_t sub_1B07B0F38(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v4;
  *(a2 + 32) = *(a1 + 32);
  v5 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 40) = v5;
  *(a2 + 48) = *(a1 + 48);
  v7 = *(a1 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 56) = v7;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 73) = *(a1 + 73);
  return result;
}

uint64_t sub_1B07B1004(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t type metadata accessor for InProgressMessageDownload()
{
  v1 = qword_1EB6DC0A0;
  if (!qword_1EB6DC0A0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B07B10D4()
{
  v6 = _s31PreviouslyDownloadedMessageDataVMa();
  updated = v6;
  if (v0 <= 0x3F)
  {
    v8 = *(v6 - 8) + 64;
    v5 = sub_1B07B12AC();
    updated = v5;
    if (v1 <= 0x3F)
    {
      v9 = *(v5 - 8) + 64;
      v4 = sub_1B07B1348();
      updated = v4;
      if (v2 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
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

uint64_t sub_1B07B12AC()
{
  v4 = qword_1EB6DCC68;
  if (!qword_1EB6DCC68)
  {
    type metadata accessor for MessageHeader();
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DCC68);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07B1348()
{
  v4 = qword_1EB6DB970;
  if (!qword_1EB6DB970)
  {
    sub_1B0E443C8();
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB970);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07B13E4()
{
  v4 = type metadata accessor for MessageSectionDataConcatenator();
  if (v0 <= 0x3F)
  {
    v4 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
    if (v1 <= 0x3F)
    {
      v4 = _s26AttachmentDecoderAndWriterCMa();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1B07B14F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFE)
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

uint64_t sub_1B07B15EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    *(result + 16) = 0;
    if (a3 >= 0xFF)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1B07B1824()
{
  v8 = sub_1B07B1A08();
  if (v0 <= 0x3F)
  {
    v8 = _s31PreviouslyDownloadedMessageDataVMa();
    if (v1 <= 0x3F)
    {
      v8 = sub_1B07B12AC();
      if (v2 <= 0x3F)
      {
        v8 = sub_1B07B1A9C();
        if (v3 <= 0x3F)
        {
          v8 = sub_1B07B1B34();
          if (v4 <= 0x3F)
          {
            v8 = sub_1B07B1BD0();
            if (v5 <= 0x3F)
            {
              v8 = sub_1B07B1348();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

uint64_t sub_1B07B1A08()
{
  v4 = qword_1EB6DE8E0;
  if (!qword_1EB6DE8E0)
  {
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DE8E0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07B1A9C()
{
  v4 = qword_1EB6DC0C0;
  if (!qword_1EB6DC0C0)
  {
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DC0C0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07B1B34()
{
  v4 = qword_1EB6DB2D0;
  if (!qword_1EB6DB2D0)
  {
    type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB2D0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07B1BD0()
{
  v4 = qword_1EB6DB2E0;
  if (!qword_1EB6DB2E0)
  {
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB2E0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07B1C68(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && a1[8])
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *a1 - 2;
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

uint64_t sub_1B07B1D80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 > 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B07B1F78(uint64_t a1, int a2)
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

uint64_t sub_1B07B2090(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore25MediaO0B4TypeVSg(uint64_t a1)
{
  v2 = -1;
  if (*(a1 + 8) < 0x100000000uLL)
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_7Message010InProgressA8DownloadC0D4KindO(uint64_t a1)
{
  if ((*(a1 + 56) & 3u) < 2)
  {
    return *(a1 + 56) & 3;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_1B07B2404(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 57))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 56) ^ 0xFF;
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

uint64_t sub_1B07B24FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 57);
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
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
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B07B26C8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 56) = a2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 2;
  }

  return result;
}

uint64_t sub_1B07B27A8()
{
  v2 = sub_1B0E443C8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B07B28A4()
{
  v3 = sub_1B07B2970();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B07B1A9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B07B2970()
{
  v4 = qword_1EB6DC0E8;
  if (!qword_1EB6DC0E8)
  {
    type metadata accessor for InProgressMessageDownload.EMLX();
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DC0E8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07B2A64(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
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

uint64_t sub_1B07B2B7C(uint64_t result, int a2, int a3)
{
  v3 = (result + 113);
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 80) = 0;
    *(result + 72) = 0;
    *(result + 64) = 0;
    *(result + 104) = 0;
    *(result + 96) = 0;
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 112) = 0;
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
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1B07B2DA8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 74))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
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

uint64_t sub_1B07B2EC0(uint64_t result, int a2, int a3)
{
  v3 = (result + 74);
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 48) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 64) = 0;
    *(result + 72) = 0;
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
      *(result + 8) = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1B07B30A8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
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

_BYTE *sub_1B07B3210(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
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

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1B07B3420(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF6)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 9) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 246;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 10;
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

_BYTE *sub_1B07B3588(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF6)
  {
    v5 = ((a3 + 9) >> 8) + 1;
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

  if (a2 > 0xF6)
  {
    v4 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
      *result = a2 + 9;
    }
  }

  return result;
}

unint64_t sub_1B07B37B0()
{
  v2 = qword_1EB6DC178;
  if (!qword_1EB6DC178)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC178);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B3844()
{
  v2 = qword_1EB6DC180;
  if (!qword_1EB6DC180)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B38D8()
{
  v2 = qword_1EB6E2180;
  if (!qword_1EB6E2180)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2180);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B396C()
{
  v2 = qword_1EB6E2188;
  if (!qword_1EB6E2188)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B3A00()
{
  v2 = qword_1EB6E2190;
  if (!qword_1EB6E2190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B3A94()
{
  v2 = qword_1EB6E2198;
  if (!qword_1EB6E2198)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B3B28()
{
  v2 = qword_1EB6E21A0;
  if (!qword_1EB6E21A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E21A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B3BBC()
{
  v2 = qword_1EB6E21A8;
  if (!qword_1EB6E21A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E21A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B3C50()
{
  v2 = qword_1EB6E21B0;
  if (!qword_1EB6E21B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E21B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B3CCC()
{
  v2 = qword_1EB6DB2F0;
  if (!qword_1EB6DB2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21C0, &qword_1B0E9BE20);
    sub_1B07B3D64();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07B3D64()
{
  v2 = qword_1EB6DC170;
  if (!qword_1EB6DC170)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC170);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07B3DE0(void *a1, void *a2)
{
  v126 = a1;
  v122 = a2;
  v123 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *v122 = v123;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E20B0, &qword_1B0E9B538);
  v124 = *(v2 + 48);
  v125 = *(v2 + 48);
  v127 = type metadata accessor for InProgressMessageDownload.Section();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v109 = v126 + v125;
      v108 = *(v126 + v125);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = v126 + v125;
      v110 = (v122 + v124);
      *v110 = v108;
      if (*(v19 + 2))
      {
        v20 = v125;
        v21 = v126;
        v22 = v124;
        v23 = v122;
        v110[1] = *(v109 + 1);
        v106 = v23 + v22;
        v105 = v21 + v20;
        v104 = *(v21 + v20 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v24 = v105;
        v25 = v106;
        *(v106 + 2) = v104;
        *(v25 + 3) = *(v24 + 24);
        v107 = *(v24 + 32);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        *(v106 + 4) = v107;
      }

      else
      {
        v26 = v124;
        v27 = v122;
        v28 = v125;
        v29 = v126;
        *(v110 + 1) = *(v109 + 8);
        *(v27 + v26 + 24) = *(v29 + v28 + 24);
      }

      v100 = v122 + v124;
      __dst = v122 + v124 + 40;
      v102 = v126 + v125;
      __src = v126 + v125 + 40;
      if (*(v126 + v125 + 216) == 255)
      {
        memcpy(__dst, __src, 0xB1uLL);
      }

      else
      {
        v30 = v124;
        v31 = v100;
        v32 = *(v102 + 5);
        v80 = v126 + v125;
        v33 = *(v126 + v125 + 48);
        v34 = *(v126 + v125 + 56);
        v35 = *(v126 + v125 + 64);
        v36 = *(v126 + v125 + 72);
        v37 = *(v126 + v125 + 80);
        v82 = *(v126 + v125 + 88);
        v83 = *(v126 + v125 + 96);
        v84 = *(v126 + v125 + 104);
        v85 = *(v126 + v125 + 112);
        v86 = *(v126 + v125 + 120);
        v87 = *(v126 + v125 + 128);
        v88 = *(v126 + v125 + 136);
        v89 = *(v126 + v125 + 144);
        v90 = *(v126 + v125 + 152);
        v91 = *(v126 + v125 + 160);
        v92 = *(v126 + v125 + 168);
        v93 = *(v126 + v125 + 176);
        v94 = *(v126 + v125 + 184);
        v95 = *(v126 + v125 + 192);
        v96 = *(v126 + v125 + 200);
        v97 = *(v126 + v125 + 208);
        v38 = *(v126 + v125 + 216);
        v98 = v38;
        v81 = &v68;
        sub_1B0716BB8(v32, v33, v34, v35, v36, v37, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v38);
        v39 = v122;
        v40 = v82;
        v41 = v83;
        v42 = v84;
        v43 = v85;
        v44 = v86;
        v45 = v87;
        v46 = v88;
        v47 = v89;
        v48 = v90;
        v49 = v91;
        v50 = v92;
        v51 = v93;
        v52 = v94;
        v53 = v95;
        v54 = v96;
        v55 = v97;
        v56 = v98;
        *(v31 + 5) = v32;
        v57 = v39 + v30;
        v99 = v57;
        *(v57 + 6) = v33;
        *(v57 + 7) = v34;
        *(v57 + 8) = v35;
        *(v57 + 9) = v36;
        *(v57 + 10) = v37;
        *(v57 + 11) = v40;
        *(v57 + 12) = v41;
        *(v57 + 13) = v42;
        *(v57 + 14) = v43;
        *(v57 + 15) = v44;
        *(v57 + 16) = v45;
        *(v57 + 17) = v46;
        *(v57 + 18) = v47;
        *(v57 + 19) = v48;
        *(v57 + 20) = v49;
        *(v57 + 21) = v50;
        *(v57 + 22) = v51;
        *(v57 + 23) = v52;
        *(v57 + 24) = v53;
        *(v57 + 25) = v54;
        *(v57 + 26) = v55;
        v57[216] = v56 & 1;
      }

      v76 = 0;
      v58 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
      v59 = *(v58 + 28);
      v79 = v122 + v124;
      v78 = v122 + v124 + v59;
      v77 = v126 + v125 + *(v58 + 28);
      v60 = sub_1B0E443C8();
      (*(*(v60 - 8) + 16))(v78, v77);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v75 = *(v126 + v125);

        *(v122 + v124) = v75;
      }

      else
      {
        v72 = v126 + v125;
        v69 = *(v126 + v125);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v61 = v126 + v125;
        v62 = (v122 + v124);
        v73 = v62;
        *v62 = v69;
        v62[1] = *(v61 + 1);
        v70 = *(v61 + 2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v63 = v72;
        v64 = v73;
        v73[2] = v70;
        v64[3] = *(v63 + 3);
        v71 = *(v63 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v65 = v72;
        v66 = v73;
        v73[4] = v71;
        v66[5] = *(v65 + 5);
        v74 = *(v65 + 6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v73[6] = v74;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v3 = v126 + v125;
    v121 = v126 + v125;
    v4 = *(v126 + v125);
    v119 = v122 + v124;
    *v119 = v4;
    v120 = *(v3 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = v121;
    *(v119 + 1) = v120;
    if (*(v5 + 3))
    {
      v6 = v125;
      v7 = v126;
      v8 = v124;
      v9 = v122;
      *(v119 + 2) = *(v121 + 2);
      v117 = v9 + v8;
      v116 = v7 + v6;
      v115 = *(v7 + v6 + 24);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v10 = v116;
      v11 = v117;
      *(v117 + 3) = v115;
      *(v11 + 4) = *(v10 + 32);
      v118 = *(v10 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v117 + 5) = v118;
    }

    else
    {
      v12 = v124;
      v13 = v122;
      v14 = v125;
      v15 = v126;
      *(v119 + 1) = *(v121 + 1);
      *(v13 + v12 + 32) = *(v15 + v14 + 32);
    }

    v111 = 0;
    v16 = type metadata accessor for MessageSectionDataConcatenator();
    v17 = *(v16 + 28);
    v114 = v122 + v124;
    v113 = v122 + v124 + v17;
    v112 = v126 + v125 + *(v16 + 28);
    v18 = type metadata accessor for MessageSectionData.Concatenator(0);
    (*(*(v18 - 8) + 16))(v113, v112);
    swift_storeEnumTagMultiPayload();
  }

  return v122;
}

uint64_t sub_1B07B44D4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PartReplacement();
  swift_getEnumCaseMultiPayload();
  v2 = type metadata accessor for Message(0);
  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

char *sub_1B07B45C0(char *a1, char *a2)
{
  v7 = type metadata accessor for InProgressMessageDownload.EMLX();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2110, &qword_1B0E9B590);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))(a2, a1);
    memcpy(&a2[*(v7 + 20)], &a1[*(v7 + 20)], 0x28uLL);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_1B07B4718(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1B07ACBF8(*a1, v4, v5, v6, v7);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

__n128 sub_1B07B47AC(uint64_t *a1, uint64_t a2)
{
  v8 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v8;
  *(a2 + 8) = a1[1];
  v10 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v10;
  *(a2 + 24) = *(a1 + 24);
  if (*(a1 + 64) == 255)
  {
    memcpy((a2 + 32), a1 + 4, 0x21uLL);
  }

  else
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = *(a1 + 64);
    sub_1B07ACBF8(v3, v4, v5, v6, v7);
    *(a2 + 32) = v3;
    *(a2 + 40) = v4;
    *(a2 + 48) = v5;
    *(a2 + 56) = v6;
    *(a2 + 64) = v7;
  }

  result = *(a1 + 9);
  *(a2 + 72) = result;
  return result;
}

char *sub_1B07B48B8(char *a1, char *a2)
{
  v7 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = _s31PreviouslyDownloadedMessageDataVMa();
  result = a2;
  *&a2[*(v3 + 20)] = *&a1[*(v3 + 20)];
  return result;
}

void *sub_1B07B4A00(const void *a1, void *a2)
{
  v7 = type metadata accessor for MessageHeader();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E26F0, &unk_1B0E9B4F0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B0E443C8();
    (*(*(v2 - 8) + 32))(a2, a1);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

void *sub_1B07B4B30(const void *a1, void *a2)
{
  v6 = sub_1B0E443C8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t Data.makeWithCRLFLineEndings()(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v29 = a1;
  v30 = a2;
  v2 = MEMORY[0x1B2725070]();
  v24 = ceil(v2 * 1.03 + 10.0);
  if (((*&v24 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v24 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v24 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v27 = sub_1B0E42FD8();
  v28 = v3;
  v25 = sub_1B0E42FB8();
  v26 = v4;
  while (1)
  {
    sub_1B0E46A48();
    *v5 = 10;
    sub_1B0394964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    sub_1B07B517C();
    v18 = sub_1B0E43008();
    v20 = v6;
    type metadata accessor for SearchOptions();
    sub_1B0E46A48();
    sub_1B06928A0();
    sub_1B0E46028();
    v22 = v25;
    v19 = sub_1B0E42F68();
    v21 = v7;
    v23 = v8;
    sub_1B0391D50(v18, v20);
    if (v23)
    {
      break;
    }

    if (v22 < v19)
    {
      if (v19 < v22)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v16 = sub_1B0E42FF8();
      v17 = v9;
      sub_1B0E42FA8();
      sub_1B0391D50(v16, v17);
    }

    sub_1B0E46A48();
    *v10 = 13;
    v10[1] = 10;
    sub_1B0394964();
    sub_1B0E42F88();

    sub_1B07B5204(&v25, v19, v21);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
  if ((sub_1B0E458A8() & 1) == 0)
  {
    v14 = sub_1B0E42FF8();
    v15 = v11;
    sub_1B0E42FA8();
    sub_1B0391D50(v14, v15);
  }

  v13 = v27;
  sub_1B03B2000(v27, v28);
  sub_1B075D3E8(&v27);
  return v13;
}

unint64_t sub_1B07B517C()
{
  v2 = qword_1EB6DADF0;
  if (!qword_1EB6DADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07B5204(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v5 = *(result + 8);
  if (v5 < a3)
  {
    result = sub_1B0E465A8();
    __break(1u);
  }

  *v3 = a3;
  v3[1] = v5;
  return result;
}

uint64_t Data.makeWithLFLineEndings()(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  MEMORY[0x1B2725070]();
  v23 = sub_1B0E42FD8();
  v24 = v2;
  v22[0] = sub_1B0E42FB8();
  v22[1] = v3;
  sub_1B0E46A48();
  *v4 = 13;
  v4[1] = 10;
  sub_1B0394964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v20 = sub_1B0E43008();
  v21 = v5;
  while (1)
  {
    type metadata accessor for SearchOptions();
    sub_1B0E46A48();
    sub_1B06928A0();
    sub_1B0E46028();
    v17 = v22[0];
    v6 = sub_1B0E42F68();
    v18 = v6;
    v19 = v7;
    if (v8)
    {
      break;
    }

    if (v17 < v6)
    {
      if (v6 < v17)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v15 = sub_1B0E42FF8();
      v16 = v9;
      sub_1B0E42FA8();
      sub_1B0391D50(v15, v16);
    }

    sub_1B07B5664();
    sub_1B0E45808();
    sub_1B07B5204(v22, v18, v19);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1850, &unk_1B0E9B040);
  if ((sub_1B0E458A8() & 1) == 0)
  {
    v13 = sub_1B0E42FF8();
    v14 = v10;
    sub_1B0E42FA8();
    sub_1B0391D50(v13, v14);
  }

  v12 = v23;
  sub_1B03B2000(v23, v24);
  sub_1B0391D50(v20, v21);
  sub_1B075D3E8(&v23);
  return v12;
}

unint64_t sub_1B07B5664()
{
  v2 = qword_1EB6E21D8;
  if (!qword_1EB6E21D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E21D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07B56DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a1;
  v100 = a2;
  v87 = a3;
  v88 = a4;
  v76 = sub_1B07B7740;
  v77 = sub_1B074F16C;
  v78 = sub_1B074250C;
  v79 = sub_1B074250C;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v129 = 0;
  v102 = v127;
  __len = 40;
  __c = 0;
  memset(v127, 0, sizeof(v127));
  memset(v126, 0, sizeof(v126));
  memset(v125, 0, sizeof(v125));
  memset(v122, 0, sizeof(v122));
  v120 = 0;
  v116 = 0;
  v115 = 0;
  v111 = 0;
  v110 = 0;
  v107 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v81 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v20 - v81;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v83 = *(v99 - 8);
  v84 = v99 - 8;
  v85 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v99);
  v86 = &v20 - v85;
  v132 = &v20 - v85;
  v89 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21E0, &unk_1B0E9BE40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v95);
  v90 = (&v20 - v89);
  v91 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v92 = (&v20 - v91);
  v93 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v94 = (&v20 - v93);
  *&v130 = v10;
  *(&v130 + 1) = v11;
  *&v131 = v12;
  *(&v131 + 1) = v13;
  v129 = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v97 = &v128;
  v128 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
  sub_1B07B61A0();
  sub_1B0E45568();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v98 = sub_1B0E45C48();
  v101 = sub_1B074E39C();
  v103 = &v133;
  sub_1B0E445C8();
  memcpy(v102, v103, __len);
  while (1)
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21E8, &qword_1B0E9BE50);
    sub_1B0E446D8();
    sub_1B07B6228(v92, v94);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21F0, &qword_1B0E9BE58);
    v14 = *(v70 - 8);
    v68 = *(v14 + 48);
    v69 = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v15 = v68(v94, 1);
    v71 = v67;
    v72 = v70;
    v73 = v68;
    v74 = v69;
    if (v15 == 1)
    {
      break;
    }

    v66 = *v94;
    v16 = v94 + *(v70 + 48);
    v107 = v66;
    sub_1B074BA2C(v16, v86);
    MEMORY[0x1E69E5928](v66);
    v63 = &v106;
    v106 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
    v64 = &v105;
    v65 = sub_1B0E44728();
    MessageIdentifierSet.formUnion(_:)(v86, v99);
    v65();
    MEMORY[0x1E69E5920](v106);
    sub_1B03D09B8(v86);
    MEMORY[0x1E69E5920](v66);
  }

  v58 = v74;
  v59 = v73;
  v60 = v72;
  v61 = v71;
  sub_1B06B91B0(v127);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v62 = &v134;
  sub_1B0E445C8();
  memcpy(v126, v62, sizeof(v126));
  while (1)
  {
    sub_1B0E446D8();
    sub_1B07B6228(v92, v90);
    if (v59(v90, 1, v60) == 1)
    {
      break;
    }

    v111 = v86;
    v57 = *v90;
    v17 = v90 + *(v60 + 48);
    v110 = v57;
    sub_1B074BA2C(v17, v86);
    MEMORY[0x1E69E5928](v57);
    v54 = &v109;
    v109 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
    v55 = &v108;
    v56 = sub_1B0E44728();
    MessageIdentifierSet.formUnion(_:)(v86, v99);
    v56();
    MEMORY[0x1E69E5920](v109);
    sub_1B03D09B8(v86);
    MEMORY[0x1E69E5920](v57);
  }

  sub_1B06B91B0(v126);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  v51 = &v135;
  sub_1B0E445C8();
  memcpy(v125, v51, sizeof(v125));
  v52 = 0;
  for (i = 0; ; i = v41)
  {
    v45 = i;
    v44 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21F8, &qword_1B0E9BE60);
    sub_1B0E446D8();
    v46 = v123;
    v47 = v124;
    v48 = v44;
    v49 = v45;
    if (!v123)
    {
      break;
    }

    v42 = v46;
    v43 = v47;
    v39 = v47;
    v40 = v46;
    v116 = v46;
    v115 = v47;
    MEMORY[0x1E69E5928](v46);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v35 = &v114;
    v114 = v39;
    v34 = &v113;
    v113 = v40;
    v18 = swift_allocObject();
    v38 = v18;
    *(v18 + 16) = v76;
    *(v18 + 24) = 0;

    sub_1B04197E4(v44);
    v41 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2208, &qword_1B0E9BE78);
    v36 = &v112;
    v37 = sub_1B0E44728();
    sub_1B071CBBC();
    sub_1B0E452D8();
    v37();

    MEMORY[0x1E69E5920](v113);

    MEMORY[0x1E69E5920](v40);
    v52 = v77;
  }

  v30 = v49;
  v31 = v48;
  sub_1B06B91B0(v125);
  v32 = *v75;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = &v136;
  sub_1B0E45448();
  memcpy(v122, v33, sizeof(v122));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2200, &unk_1B0E9BE68);
    sub_1B0E45508();
    v29 = v121;
    if (!v121)
    {
      break;
    }

    v28 = v29;
    v27 = v29;
    v120 = v29;
    MEMORY[0x1E69E5928](v29);
    v23 = *(v83 + 56);
    v22 = v83 + 56;
    v21 = 1;
    v23(v82, 1, 1, v99);
    v20 = &v119;
    v119 = v27;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
    sub_1B0E44788();
    MEMORY[0x1E69E5928](v27);
    v23(v82, v21, v21, v99);
    v118[1] = v27;
    sub_1B0E44788();
    MEMORY[0x1E69E5928](v27);
    v26 = v118;
    v118[0] = 0;
    v25 = &v117;
    v117 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2208, &qword_1B0E9BE78);
    sub_1B0E44788();
    MEMORY[0x1E69E5920](v27);
  }

  sub_1B06B91B0(v122);
  return sub_1B04197E4(v31);
}

unint64_t sub_1B07B61A0()
{
  v2 = qword_1EB6DACF0;
  if (!qword_1EB6DACF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1C90, &qword_1B0E9E010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACF0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07B6228(void *a1, void *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21F0, &qword_1B0E9BE58);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21E0, &unk_1B0E9BE40);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 48);
    v5 = a1 + *(v9 + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

uint64_t sub_1B07B639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a4;
  v33 = a3;
  v34 = a2;
  v39 = a1;
  v36 = 0;
  v52 = 0;
  v35 = 0;
  v48 = 0;
  v47[1] = 0;
  v47[0] = 0;
  v43 = 0;
  v42 = 0;
  v54 = a1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v53 = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v38 = sub_1B0E45C48();
  v37 = v38;
  sub_1B074E39C();
  v40 = sub_1B0E454F8();

  if ((v40 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v41 = v39;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
    sub_1B07B61A0();
    v28 = sub_1B0E45378();
    v29 = sub_1B0E451A8();

    [v30 deleteLocalMessageActionsWithIDs_];
  }

  v5 = v35;
  v50 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2210, &unk_1B0E9BE80);
  v49 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21 = &v10;
  MEMORY[0x1EEE9AC00](&v10);
  v23 = v9;
  v9[2] = v6;
  v9[3] = v34;
  v9[4] = v33;
  v9[5] = v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1B50, &unk_1B0E9DDF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2218, &qword_1B0E9BE90);
  v22 = v25;
  sub_1B071CEA8();
  sub_1B0E44FD8();
  v26 = v5;

  v19 = v51;
  v18 = v51;
  v48 = v51;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v46 = v19;
  sub_1B07B81D0();
  sub_1B0E45798();
  for (i = v26; ; i = v12)
  {
    v15 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2220, &qword_1B0E9BE98);
    sub_1B0E46518();
    v16 = v44;
    v17 = v45;
    if (!v44)
    {
      break;
    }

    v13 = v16;
    v14 = v17;
    v11 = v17;
    v10 = v16;
    v12 = v15;
    v42 = v16;
    v43 = v17;
    [v30 persistResults_forAction_];
  }

  sub_1B039E440(v47);
}

uint64_t sub_1B07B681C()
{
  v5 = 0u;
  v6 = 0u;
  sub_1B0E45C48();
  sub_1B0E46A48();
  sub_1B074E39C();
  v4 = sub_1B0E45438();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C78, &qword_1B0E9B080);
  sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(&v5 + 1) = v1;
  sub_1B0E46A48();
  v2 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2228, &qword_1B0E9BF00);
  sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
  v3 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(&v6 + 1) = v3;
  sub_1B071F9F0(&v5);
  return v4;
}

uint64_t sub_1B07B6998(void *a1)
{
  v17 = a1;
  v25 = 0;
  v24 = 0;
  v6[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v6 - v6[0];
  v25 = MEMORY[0x1EEE9AC00](v17);
  v24 = v1;
  v16 = 0x1FBCFA000uLL;
  v2 = [v25 0x1FBCFA3C7];
  v6[1] = v23;
  v23[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C90, &qword_1B0E9E010);
  sub_1B0E454D8();
  MEMORY[0x1E69E5920](v23[1]);
  v7 = [v17 (v16 + 967)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(v10 - 8);
  v12 = *(v3 + 56);
  v11 = v3 + 56;
  v9 = 1;
  v12(v14, 1);
  v8 = &v22;
  v22 = v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
  sub_1B0E44788();
  v13 = [v17 (v16 + 967)];
  (v12)(v14, v9, v9, v10);
  v21[1] = v13;
  sub_1B0E44788();
  v4 = [v17 (v16 + 967)];
  v19 = v21;
  v21[0] = 0;
  v18 = &v20;
  v20 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2208, &qword_1B0E9BE78);
  return sub_1B0E44788();
}

uint64_t sub_1B07B6C10(uint64_t a1, void *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = MessageIdentifierSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v7 = *v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5928](a2);
    v6 = [a2 persistentID];
    MEMORY[0x1E69E5920](a2);
    sub_1B0E45C48();
    sub_1B074E39C();
    v8 = sub_1B0E45528();
    MEMORY[0x1E69E5920](v6);

    result = v8;
    if ((v8 & 1) == 0)
    {
      MEMORY[0x1E69E5928](a2);
      v4 = [a2 persistentID];
      MEMORY[0x1E69E5920](a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
      v5 = sub_1B0E44728();
      MessageIdentifierSet.formUnion(_:)(a1, v11);
      v5();
      return MEMORY[0x1E69E5920](v4);
    }
  }

  return result;
}

uint64_t sub_1B07B6E28(uint64_t a1, void *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = MessageIdentifierSet.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v7 = *v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5928](a2);
    v6 = [a2 persistentID];
    MEMORY[0x1E69E5920](a2);
    sub_1B0E45C48();
    sub_1B074E39C();
    v8 = sub_1B0E45528();
    MEMORY[0x1E69E5920](v6);

    result = v8;
    if ((v8 & 1) == 0)
    {
      MEMORY[0x1E69E5928](a2);
      v4 = [a2 persistentID];
      MEMORY[0x1E69E5920](a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1C98, &qword_1B0E9B0A0);
      v5 = sub_1B0E44728();
      MessageIdentifierSet.formUnion(_:)(a1, v11);
      v5();
      return MEMORY[0x1E69E5920](v4);
    }
  }

  return result;
}

uint64_t sub_1B07B7040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B0E45C48();
  v15 = sub_1B074E39C();
  v19 = sub_1B0E454F8();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v19)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v12 = MEMORY[0x1B27267E0](a2, v14, v4, v15);

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v13)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v10 = MEMORY[0x1B27267E0](a3, v14, v5, v15);

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v11)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1C30, &unk_1B0E9AEA0);
    v8 = MEMORY[0x1B27267E0](a4, v14, v6, v15);

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}