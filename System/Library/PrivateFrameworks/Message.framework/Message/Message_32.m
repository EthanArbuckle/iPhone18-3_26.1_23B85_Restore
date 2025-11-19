uint64_t sub_1B08BE008(unsigned int a1, uint64_t a2, int a3)
{
  v11 = 0;
  v14 = a1;
  v12 = a2;
  v13 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
  sub_1B0E445B8();
  swift_endAccess();
  sub_1B03B1198(&v8);
}

void sub_1B08BE0E8(void *a1@<X8>)
{
  v12 = v1;
  swift_beginAccess();
  v6 = *(v1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  type metadata accessor for InProgressMessageDownload();
  sub_1B08AC714();
  v7 = sub_1B0E44628();

  swift_beginAccess();
  v8 = *(v1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v11 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29D0, &qword_1B0E9F010);
  v2 = sub_1B08BF138();
  sub_1B039CA88(sub_1B08BE26C, 0, v9, &unk_1F26BA928, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v10);
  sub_1B039E440(&v11);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v7);
  *a1 = v3;
  a1[1] = v4;
}

void *sub_1B08BE26C@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 1);
  v3 = a1[4];
  v5 = *(a1 + 3);
  v7 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B07A92BC(v4, v3, v5, v8);

  return memcpy(a2, v8, 0x71uLL);
}

uint64_t sub_1B08BE338(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = sub_1B0E44838();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v12[0], v2, a1, a2);
  sub_1B03B1198(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = sub_1B0E44838();
  v11[1] = v3;
  v6 = MEMORY[0x1B2726DE0](v11[0], v3, a1, a2);
  sub_1B03B1198(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1B08BE5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v18 = a2;
  v10 = a3;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A18, &qword_1B0E9F338);
  v12 = *(v19 - 8);
  v13 = v19 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v8 - v14;
  v28 = MEMORY[0x1EEE9AC00](v11);
  v26 = v3;
  v27 = v4;
  v15 = v28[3];
  v16 = v28[4];
  __swift_project_boxed_opaque_existential_0(v28, v15);
  sub_1B08BF23C();
  sub_1B0E46D48();
  v5 = v20;
  v25 = 0;
  sub_1B0E46948();
  v21 = v5;
  v22 = v5;
  if (v5)
  {
    v8[2] = v22;
    return (*(v12 + 8))(v17, v19);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8[6] = &v24;
    v24 = v10;
    v8[4] = &v23;
    v23 = 1;
    v8[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A20, &qword_1B0E9F340);
    sub_1B08BFB30();
    v6 = v21;
    sub_1B0E46958();
    v8[7] = v6;
    v9 = v6;
    if (v6)
    {
      v8[1] = v9;
    }

    sub_1B039E440(&v24);
    return (*(v12 + 8))(v17, v19);
  }
}

uint64_t sub_1B08BE898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B08BE338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B08BE984(uint64_t a1)
{
  v41 = a1;
  v42 = type metadata accessor for InProgressMessageDownload.Completed();
  if (!(*(*(v42 - 1) + 48))(v41, 1))
  {
    if (*(v41 + 184) != 255)
    {
      v1 = *(v41 + 8);
      v2 = *(v41 + 16);
      v3 = *(v41 + 24);
      v4 = *(v41 + 32);
      v5 = *(v41 + 40);
      v6 = *(v41 + 48);
      v7 = *(v41 + 56);
      v8 = *(v41 + 64);
      v9 = *(v41 + 72);
      v10 = *(v41 + 80);
      v11 = *(v41 + 88);
      v12 = *(v41 + 96);
      v13 = *(v41 + 104);
      v14 = *(v41 + 112);
      v15 = *(v41 + 120);
      v16 = *(v41 + 128);
      v17 = *(v41 + 136);
      v18 = *(v41 + 144);
      v19 = *(v41 + 152);
      v20 = *(v41 + 160);
      v21 = *(v41 + 168);
      v22 = *(v41 + 176);
      v23 = *(v41 + 184);
      v40 = &v31;
      sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v38 = v41 + v42[6];
    _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 2)
    {
      v24 = sub_1B0E443C8();
      (*(*(v24 - 8) + 8))(v38);
    }

    v36 = 0;
    v25 = *(v38 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

    v37 = v41 + v42[7];
    v26 = type metadata accessor for MessageHeader();
    if (!(*(*(v26 - 8) + 48))(v37, 1))
    {
      v27 = sub_1B0E443C8();
      (*(*(v27 - 8) + 8))(v37);
    }

    v28 = *(v41 + v42[9]);

    v29 = *(v41 + v42[10]);

    v32 = v41 + v42[11];
    v33 = sub_1B0E443C8();
    v34 = *(v33 - 8);
    v35 = v33 - 8;
    if (!(*(v34 + 48))(v32, 1))
    {
      (*(v34 + 8))(v32, v33);
    }
  }

  return v41;
}

uint64_t sub_1B08BED00(uint64_t a1)
{
  v43 = a1;
  if (*(a1 + 184) != 255)
  {
    v1 = *(v43 + 8);
    v2 = *(v43 + 16);
    v3 = *(v43 + 24);
    v4 = *(v43 + 32);
    v5 = *(v43 + 40);
    v6 = *(v43 + 48);
    v7 = *(v43 + 56);
    v8 = *(v43 + 64);
    v9 = *(v43 + 72);
    v10 = *(v43 + 80);
    v11 = *(v43 + 88);
    v12 = *(v43 + 96);
    v13 = *(v43 + 104);
    v14 = *(v43 + 112);
    v15 = *(v43 + 120);
    v16 = *(v43 + 128);
    v17 = *(v43 + 136);
    v18 = *(v43 + 144);
    v19 = *(v43 + 152);
    v20 = *(v43 + 160);
    v21 = *(v43 + 168);
    v22 = *(v43 + 176);
    v23 = *(v43 + 184);
    v42 = &v31;
    sub_1B075E1EC(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v38 = 0;
  v39 = type metadata accessor for InProgressMessageDownload.Completed();
  v40 = v43 + v39[6];
  _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v24 = sub_1B0E443C8();
    (*(*(v24 - 8) + 8))(v40);
  }

  v36 = 0;
  v25 = *(v40 + *(_s31PreviouslyDownloadedMessageDataVMa() + 20));

  v37 = v43 + v39[7];
  v26 = type metadata accessor for MessageHeader();
  if (!(*(*(v26 - 8) + 48))(v37, 1))
  {
    v27 = sub_1B0E443C8();
    (*(*(v27 - 8) + 8))(v37);
  }

  v28 = *(v43 + v39[9]);

  v29 = *(v43 + v39[10]);

  v32 = v43 + v39[11];
  v33 = sub_1B0E443C8();
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  if (!(*(v34 + 48))(v32, 1))
  {
    (*(v34 + 8))(v32, v33);
  }

  return v43;
}

unint64_t sub_1B08BF03C()
{
  v2 = qword_1EB6E2A00;
  if (!qword_1EB6E2A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E29F8, &qword_1B0E9F048);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BF138()
{
  v2 = qword_1EB6DB730;
  if (!qword_1EB6DB730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E29D0, &qword_1B0E9F010);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BF1C0()
{
  v2 = qword_1EB6E2A08;
  if (!qword_1EB6E2A08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2A08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BF23C()
{
  v2 = qword_1EB6DBCF8;
  if (!qword_1EB6DBCF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBCF8);
    return WitnessTable;
  }

  return v2;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  return result;
}

uint64_t sub_1B08BF2F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1B08BF40C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B08BF644()
{
  v2 = type metadata accessor for MessageHeader();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t type metadata accessor for MessagesBeingDownloaded.PopResult()
{
  v1 = qword_1EB6DBCC0;
  if (!qword_1EB6DBCC0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B08BF7C0()
{
  v2 = type metadata accessor for InProgressMessageDownload.Completed();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_1B08BF864()
{
  v2 = qword_1EB6DBCE0;
  if (!qword_1EB6DBCE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBCE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BF8F8()
{
  v2 = qword_1EB6DBCE8;
  if (!qword_1EB6DBCE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBCE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BF98C()
{
  v2 = qword_1EB6DBCF0;
  if (!qword_1EB6DBCF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBCF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BFA20()
{
  v2 = qword_1EB6E2A10;
  if (!qword_1EB6E2A10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BFAB4()
{
  v2 = qword_1EB6DBCD0;
  if (!qword_1EB6DBCD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DBCD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BFB30()
{
  v2 = qword_1EB6DB2E8;
  if (!qword_1EB6DB2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A20, &qword_1B0E9F340);
    sub_1B08BFBC8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08BFBC8()
{
  v2 = qword_1EB6DC168;
  if (!qword_1EB6DC168)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC168);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08BFC50()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(*(v0 + 16));
}

uint64_t sub_1B08BFC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v24 = a2;
  v35 = 0;
  v42 = 0;
  v41 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A38, &unk_1B0E9F360);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v27 = v19 - v26;
  v28 = type metadata accessor for MessageSectionData.Concatenator(v3);
  v29 = *(v28 - 8);
  v30 = v29;
  v4 = *(v29 + 64);
  v5 = MEMORY[0x1EEE9AC00](v35);
  v31 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(*(type metadata accessor for MessageSectionData.Segment(v5) - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v35);
  v37 = v19 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v37;
  v42 = v8;
  v41 = v2;
  v9 = type metadata accessor for MessageSectionData(v7);
  sub_1B07AB12C(v34 + *(v9 + 28), v37);
  v10 = type metadata accessor for MessageSectionDataConcatenator();
  v11 = v36;
  v38 = v10;
  v12 = v2 + *(v10 + 28);
  MessageSectionData.Concatenator.appendData(_:)(v37);
  v39 = v11;
  v40 = v11;
  if (v11)
  {
    v19[0] = v40;
    return sub_1B07AB694(v33);
  }

  else
  {
    v13 = v31;
    v20 = 0;
    sub_1B07AB694(v33);
    (*(v30 + 16))(v13, v23 + *(v38 + 28), v28);
    MessageSectionData.Concatenator.completed.getter(v27);
    (*(v30 + 8))(v31, v28);
    v19[2] = v19;
    MEMORY[0x1EEE9AC00](v19);
    v21 = &v19[-4];
    v19[-2] = v14;
    v15 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
    v16 = v20;
    sub_1B03F1A20(sub_1B08C1120, v21, v25, MEMORY[0x1E69E73E0], v15, v17, v24);
    v22 = v16;
    if (v16)
    {
      result = 0;
      __break(1u);
    }

    else
    {
      v19[1] = 0;
      return sub_1B08C11C0(v27);
    }
  }

  return result;
}

uint64_t type metadata accessor for MessageSectionDataConcatenator()
{
  v1 = qword_1EB6DC058;
  if (!qword_1EB6DC058)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B08BFFF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v31 = a7;
  v64 = a1;
  v68 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v71[23] = 0;
  v52 = 0;
  v67 = type metadata accessor for MessageSectionData(0);
  v32 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v33 = (v23 - v32);
  v34 = sub_1B0E443C8();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v38 = v23 - v37;
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A38, &unk_1B0E9F360) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v52);
  v40 = v23 - v39;
  v41 = type metadata accessor for MessageSectionData.Concatenator.Completed(v7);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v52);
  v45 = v23 - v44;
  v77 = v23 - v44;
  v46 = (*(*(type metadata accessor for MessageSectionData.Segment(v8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v69 = v23 - v46;
  v47 = (*(*(sub_1B0E42E68() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v52);
  v65 = v23 - v47;
  v53 = type metadata accessor for MessageSectionData.Concatenator(v9);
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v59 = v54[8];
  v56 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v52);
  v57 = v23 - v56;
  v58 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v60 = v23 - v58;
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v62 = v23 - v61;
  v76 = v23 - v61;
  v75 = v12;
  v74 = v13;
  *&v72 = v14;
  *(&v72 + 1) = v15;
  *&v73 = v16;
  *(&v73 + 1) = v17;
  sub_1B08C1350();
  v18 = sub_1B08C0C38();
  v19 = v62;
  v63 = v18;
  v66 = [v18 temporaryDirectory];
  sub_1B0E42DE8();
  MEMORY[0x1E69E5920](v63);
  MessageSectionData.Concatenator.init(expectedMessageSize:inMemoryThreshold:baseDirectory:)(v64, 0x20000, v65, v19);
  MEMORY[0x1E69E5920](v66);
  sub_1B07AB12C(v68 + *(v67 + 28), v69);
  MessageSectionData.Concatenator.appendData(_:)(v69);
  v70 = 0;
  v20 = v60;
  sub_1B07AB694(v69);
  v29 = v54[2];
  v30 = v54 + 2;
  v29(v20, v62, v53);
  MessageSectionData.Concatenator.completed.getter(v40);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_1B08C11C0(v40);
    v24 = v54[1];
    v23[2] = v54 + 1;
    v24(v60, v53);
    sub_1B07AD790(v68, v33);
    sub_1B07B1004(v48, v49);
    v29(v57, v62, v53);
    sub_1B08C0C68(v33, v48, v49, v50, v51, v57, v31);
    type metadata accessor for MessageSectionDataConcatenator.CreateResult();
    swift_storeEnumTagMultiPayload();
    return (v24)(v62, v53);
  }

  else
  {
    sub_1B08C1428(v40, v45);
    v28 = v54[1];
    v27 = v54 + 1;
    v28(v60, v53);
    v26 = v68[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B1004(v48, v49);
    v21 = (v45 + *(v41 + 20));
    v25 = __dst;
    memcpy(__dst, v21, 0xB1uLL);
    sub_1B075DC38(__dst, v71);
    (*(v35 + 16))(v38, v45, v34);
    sub_1B08C0760(v25, v26, v48, v49, v50, v51, v38, v31);
    type metadata accessor for MessageSectionDataConcatenator.CreateResult();
    swift_storeEnumTagMultiPayload();
    sub_1B08C14C0(v45);
    return (v28)(v62, v53);
  }
}

uint64_t sub_1B08C0760@<X0>(void *__src@<X5>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a2;
  *(a8 + 1) = a3;
  *(a8 + 2) = a4;
  *(a8 + 3) = a5;
  *(a8 + 4) = a6;
  memcpy(a8 + 40, __src, 0xB1uLL);
  v11 = *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() + 28);
  v8 = sub_1B0E443C8();
  return (*(*(v8 - 8) + 32))(&a8[v11], a7);
}

uint64_t sub_1B08C080C()
{
  v2 = v0[2];
  v3 = v0[4];
  v4 = v0[5];
  sub_1B07B1004(v2, v0[3]);
  return v2;
}

uint64_t sub_1B08C085C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for MessageSectionDataConcatenator() + 28);
  v2 = type metadata accessor for MessageSectionData.Concatenator(0);
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B08C08D4(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = type metadata accessor for MessageSectionData.Concatenator(0);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = type metadata accessor for MessageSectionDataConcatenator();
  (*(v8 + 40))(v1 + *(v2 + 28), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1B08C09F4()
{
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  sub_1B07B1004(v2, v0[2]);
  return v2;
}

uint64_t sub_1B08C0A64(unsigned __int8 *a1)
{
  sub_1B075DC38(a1, v4);
  sub_1B075DEC8(a1, (v1 + 40));
  return sub_1B075E728(a1);
}

uint64_t sub_1B08C0AA0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for MessageSectionDataConcatenator.CompleteSection() + 28);
  v2 = sub_1B0E443C8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B08C0B18(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = sub_1B0E443C8();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
  (*(v8 + 40))(v1 + *(v2 + 28), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

void *sub_1B08C0C68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a7;
  v39 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v34 = a6;
  v45 = 0;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0;
  v24 = 0;
  v33 = type metadata accessor for MessageSectionData.Concatenator(0);
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v25 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = &v24 - v25;
  v29 = type metadata accessor for MessageSectionDataConcatenator();
  v26 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v39);
  v40 = (&v24 - v26);
  v45 = &v24 - v26;
  v44 = v7;
  *&v42 = v8;
  *(&v42 + 1) = v9;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  v41 = v12;
  *v40 = *(v7 + 12);
  v27 = *(v7 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = v35;
  v14 = v36;
  v40[1] = v27;
  sub_1B07B1004(v13, v14);
  v15 = v28;
  v16 = v31;
  v17 = v34;
  v18 = v33;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v22 = v40;
  v40[2] = v35;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = v21;
  (*(v16 + 16))(v15, v17, v18);
  (*(v31 + 32))(v40 + *(v29 + 28), v28, v33);
  sub_1B07AE9EC(v40, v30);
  (*(v31 + 8))(v34, v33);
  sub_1B07AD750(v35, v36);
  sub_1B07AB910(v39);
  return sub_1B07AE888(v40);
}

uint64_t sub_1B08C0EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a3;
  v20 = a1;
  v15 = a2;
  v32 = 0;
  v31 = 0;
  v17 = 0;
  v21 = sub_1B0E443C8();
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v10 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v28 = &v9 - v10;
  v12 = *(*(type metadata accessor for MessageSectionDataConcatenator() - 8) + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v15);
  v16 = (&v9 - v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v14 = (&v9 - v13);
  v32 = v5;
  v31 = v4;
  sub_1B07AE9EC(v4, &v9 - v13);
  v29 = v14[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07AE888(v14);
  sub_1B07AE9EC(v15, v16);
  v23 = v16[2];
  v24 = v16[3];
  v25 = v16[4];
  v26 = v16[5];
  sub_1B07B1004(v23, v24);
  sub_1B07AE888(v16);
  v6 = type metadata accessor for MessageSectionData.Concatenator.Completed(v17);
  v7 = (v20 + *(v6 + 20));
  v27 = __dst;
  memcpy(__dst, v7, 0xB1uLL);
  sub_1B075DC38(__dst, v30);
  (*(v18 + 16))(v28, v20, v21);
  return sub_1B08C0760(v27, v29, v23, v24, v25, v26, v28, v22);
}

uint64_t type metadata accessor for MessageSectionDataConcatenator.CompleteSection()
{
  v1 = qword_1EB6DC078;
  if (!qword_1EB6DC078)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B08C11C0(uint64_t a1)
{
  v28 = a1;
  v29 = type metadata accessor for MessageSectionData.Concatenator.Completed(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1))
  {
    v1 = sub_1B0E443C8();
    (*(*(v1 - 8) + 8))(v28);
    v27 = v28 + *(v29 + 20);
    if (*(v27 + 176) != 255)
    {
      v2 = *v27;
      v3 = *(v27 + 8);
      v4 = *(v27 + 16);
      v5 = *(v27 + 24);
      v6 = *(v27 + 32);
      v7 = *(v27 + 40);
      v8 = *(v27 + 48);
      v9 = *(v27 + 56);
      v10 = *(v27 + 64);
      v11 = *(v27 + 72);
      v12 = *(v27 + 80);
      v13 = *(v27 + 88);
      v14 = *(v27 + 96);
      v15 = *(v27 + 104);
      v16 = *(v27 + 112);
      v17 = *(v27 + 120);
      v18 = *(v27 + 128);
      v19 = *(v27 + 136);
      v20 = *(v27 + 144);
      v21 = *(v27 + 152);
      v22 = *(v27 + 160);
      v23 = *(v27 + 168);
      v24 = *(v27 + 176);
      v26[16] = v26;
      sub_1B075E1EC(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  return v28;
}

unint64_t sub_1B08C1350()
{
  v2 = qword_1EB6DABF8;
  if (!qword_1EB6DABF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DABF8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for MessageSectionDataConcatenator.CreateResult()
{
  v1 = qword_1EB6DC068;
  if (!qword_1EB6DC068)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B08C1428(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E443C8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for MessageSectionData.Concatenator.Completed(0);
  memcpy((a2 + *(v3 + 20)), (a1 + *(v3 + 20)), 0xB1uLL);
  return a2;
}

uint64_t sub_1B08C14C0(uint64_t a1)
{
  v27 = a1;
  v26[17] = 0;
  v1 = sub_1B0E443C8();
  (*(*(v1 - 8) + 8))(v27);
  v28 = *(type metadata accessor for MessageSectionData.Concatenator.Completed(0) + 20);
  if (*(v27 + v28 + 176) != 255)
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

uint64_t sub_1B08C166C()
{
  v3 = sub_1B08C1758();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for MessageSectionData.Concatenator(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B08C1758()
{
  v4 = qword_1EB6DE178;
  if (!qword_1EB6DE178)
  {
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DE178);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B08C17EC()
{
  v3 = type metadata accessor for MessageSectionDataConcatenator();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for MessageSectionDataConcatenator.CompleteSection();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B08C18F4()
{
  v3 = sub_1B08C1758();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B0E443C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B08C1A04()
{
  v2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A40, &qword_1B0E9F3B0);
  sub_1B0E46A48();
  sub_1B0417568();
  v1 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B08C1A90(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

BOOL sub_1B08C1B58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6;
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 != 1)
      {
        return 0;
      }

      v15[0] = a1;
      v14 = a4;
      v7 = sub_1B041C1E8();
      return (static MessageIdentifierRange.__derived_struct_equals(_:_:)(v15, &v14, &type metadata for UID, v7) & 1) != 0 && *(&v10 + 1) == a5;
    }

    else
    {
      if (v10 != 0)
      {
        return a6 == 2 && a4 == 1 && !a5;
      }

      return a6 == 2 && a4 == 0 && a5 == 0;
    }
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    v13 = a1;
    v12 = a4;
    v6 = sub_1B041C1E8();
    return (static MessageIdentifierRange.__derived_struct_equals(_:_:)(&v13, &v12, &type metadata for UID, v6) & 1) != 0;
  }
}

uint64_t sub_1B08C1F14(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v11 = *a1;
  v12 = *v4;
  sub_1B0417568();
  v5 = sub_1B0E44778();
  if (v15 != 255)
  {
    v5 = sub_1B08C2154(a4, v13, v14, v15, v16);
    if ((v5 & 1) == 0)
    {
      return v13;
    }
  }

  v7 = a2(v5);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A48, &qword_1B0E9F3B8);
  sub_1B0E44788();
  return v7;
}

BOOL sub_1B08C2154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *&v10 = a2;
  *(&v10 + 1) = a3;
  if (a4 && (a4 == 1 || v10 != 0))
  {
    return 0;
  }

  else
  {
    v7 = sub_1B08C1F04();
    MonotonicTime.seconds(since:)(a5, a1);
    return v7 < v5;
  }
}

uint64_t sub_1B08C2260(uint64_t *a1)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A48, &qword_1B0E9F3B8);
  v3 = sub_1B0E44768();
  if (*(v1 + 16) != 255)
  {
    sub_1B08C2334();
  }

  return v3();
}

void sub_1B08C2334()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      *v2 = *v0 | (HIDWORD(*v0) << 32);
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
    }

    else
    {
      v1 = *(v0 + 8);
      if (*v0 != 0)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
        *(v2 + 16) = 2;
      }
    }
  }
}

uint64_t sub_1B08C2440(uint64_t a1)
{
  v5 = a1;
  v4 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mailboxRowID);
  return sub_1B08C2260(&v3);
}

uint64_t sub_1B08C24A4(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A50, &unk_1B0E9F3C0);
  sub_1B08C289C();
  if (sub_1B0E45748())
  {
    v19 = 1;
    v20 = 0;
    v21 = 2;
    v5 = 1;
  }

  else if (sub_1B0E452A8() != 1 || (sub_1B0E45728(), v11 == 2))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12[1] = a1;
    sub_1B08C2924();
    v12[0] = sub_1B0E46398();
    sub_1B08C29D8();
    sub_1B0E44F98();
    sub_1B039E440(v12);
    if (v15 == 2)
    {
      v3 = 0;
      v4 = 1;
    }

    else
    {
      v3 = v13 | (v14 << 32);
      v4 = 0;
    }

    if (v4)
    {
      v19 = 0;
      v20 = 0;
      v21 = 2;
      v5 = 0;
    }

    else
    {
      v19 = v3 | (HIDWORD(v3) << 32);
      v20 = 0;
      v21 = 0;
      v5 = v19;
    }
  }

  else
  {
    if (v11)
    {
      v19 = v9 | (v10 << 32);
      v20 = a2;
      v21 = 1;
      v6 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v21 = 2;
      v6 = 0;
    }

    v5 = v6;
  }

  return v5;
}

unint64_t sub_1B08C289C()
{
  v2 = qword_1EB6DAF28;
  if (!qword_1EB6DAF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A50, &unk_1B0E9F3C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08C2924()
{
  v2 = qword_1EB6DAF20;
  if (!qword_1EB6DAF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A50, &unk_1B0E9F3C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08C29D8()
{
  v2 = qword_1EB6DAF30;
  if (!qword_1EB6DAF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A50, &unk_1B0E9F3C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08C2A60(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v20[1] = 0;
  v22 = a1;
  v23 = a2 & 1;
  v21 = a3 & 1;
  v20[2] = a4;
  v20[3] = a5;
  if (a2)
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v11 = a1;
    v12 = 0;
  }

  v18 = v11;
  v19 = v12 & 1;
  if (v12)
  {
    v10 = sub_1B041C1E8();
    static MessageIdentifier.min.getter(&type metadata for UID, v10);
    v17[0] = v17[1];
    static MessageIdentifier.max.getter(&type metadata for UID, v10);
    v16[0] = v16[1];
    static MessageIdentifier.... infix(_:_:)(v17, v16, &type metadata for UID, v10, v20);
  }

  else
  {
    v20[0] = v18;
  }

  v8 = sub_1B08C2C68(v20[0], a3 & 1, a4, a5, 4);
  v7 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B08C24A4(v8, v7);

  return v9;
}

uint64_t sub_1B08C2C68(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = 0;
  v30 = 0;
  v31 = 0;
  v27 = 0;
  v44 = a1;
  v21 = HIDWORD(a1);
  v43 = a1;
  v42 = a2 & 1;
  v40 = a3;
  v41 = a4;
  v39 = a5;
  v36 = a1;
  v22 = sub_1B03948EC();
  v23 = sub_1B041C1E8();
  v20 = MEMORY[0x1E69E6530];
  BinaryInteger.init<A>(_:)(&v36, MEMORY[0x1E69E6530], &type metadata for UID, v22, v23);
  v24 = v37;
  v34 = v21;
  BinaryInteger.init<A>(_:)(&v34, v20, &type metadata for UID, v22, v23);
  v25 = v35;
  if (v35 < v24)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v32 = v24;
  v33 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24B0, &qword_1B0E9CC68);
  sub_1B08C3104();
  sub_1B039A4F8();
  v13 = sub_1B0E45CF8();
  v14 = v5;
  v30 = v13;
  v31 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = sub_1B0E44AC8();

  v28 = v13;
  v29 = v14;
  v16 = [v19 rangesOfIndexedUIDsInRange:v13 requiresBody:v14 forMailbox:a2 & 1 limit:{v15, a5}];
  MEMORY[0x1E69E5920](v15);
  if (!v16)
  {
    return sub_1B0E46A48();
  }

  v27 = v16;
  v12 = [v16 ranges];
  if (v12)
  {
    sub_1B07F1764();
    v10 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v12);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v9 = v11;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v26 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2350, &qword_1B0E9F3D0);
  sub_1B07F1654();
  v8 = sub_1B0E44F58();
  sub_1B039E440(&v26);
  [v16 messageCount];
  MEMORY[0x1E69E5920](v16);
  return v8;
}

unint64_t sub_1B08C3104()
{
  v2 = qword_1EB6DB6E8;
  if (!qword_1EB6DB6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E24B0, &qword_1B0E9CC68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB6E8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_1B08C3234(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v22 = a1;
  v23 = a2;
  v24 = a3 & 1;
  v10 = a3 & 1;
  v19 = a4;
  v20 = a5;
  v21 = a6 & 1;
  v12 = a6 & 1;
  v16 = a1;
  v17 = a2;
  v18 = a3 & 1;
  v14[1] = a4;
  v14[2] = a5;
  v15 = a6 & 1;
  v14[0] = a1;
  v13 = a4;
  v6 = sub_1B041C1E8();
  return (static MessageIdentifierRange.__derived_struct_equals(_:_:)(v14, &v13, &type metadata for UID, v6) & 1) != 0 && a2 == a5 && (v10 & 1) == (v12 & 1);
}

void sub_1B08C344C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = 0;
  v24 = 0;
  v25 = 0;
  v21 = 0;
  v17 = 0;
  v13 = 0;
  v28 = *a1;
  type metadata accessor for MFMailMessageLibraryIndexedUIDRange();
  sub_1B0E45CB8();
  v9 = HIDWORD(v26);
  if ((v27 & 0xFF00000000) == 0x200000000)
  {
    goto LABEL_10;
  }

  v24 = v26;
  LODWORD(v25) = v27;
  BYTE4(v25) = BYTE4(v27) & 1;
  v22 = v27;
  v23 = 0;
  v21 = v27;
  if (!v27)
  {
    goto LABEL_10;
  }

  v18 = v26;
  v5 = sub_1B041C1E8();
  v6 = sub_1B07467B8();
  MessageIdentifier.init<A>(exactly:)(&v18, &type metadata for UID, MEMORY[0x1E69E7668], v5, v6, &v19);
  v7 = v19;
  if (v20 & 1) != 0 || (v17 = v19, v14 = v9, MessageIdentifier.init<A>(exactly:)(&v14, &type metadata for UID, MEMORY[0x1E69E7668], v5, v6, &v15), (v16))
  {
LABEL_10:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
  }

  else
  {
    v13 = v15;
    v11 = v7;
    v10 = v15;
    static MessageIdentifier.... infix(_:_:)(&v11, &v10, &type metadata for UID, v5, &v12);
    sub_1B08C3390();
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v2 & 1;
  }
}

uint64_t sub_1B08C3730(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFD && *(a1 + 32))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = 255 - *(a1 + 16);
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

uint64_t sub_1B08C384C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0xFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0xFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~(a2 - 1);
    }
  }

  return result;
}

uint64_t sub_1B08C3A24(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B08C3B1C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B08C3CD4(uint64_t a1)
{
  if (*(a1 + 16) < 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_1B08C3CEC(uint64_t result, unsigned int a2)
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

uint64_t sub_1B08C3D54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
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

uint64_t sub_1B08C3E78(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B08C4040(void *a1)
{
  v14 = a1;
  v17 = 0;
  v16 = 0;
  v6 = 0;
  v5 = (*(*(sub_1B0E431A8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &v5 - v5;
  v9 = sub_1B0E443C8();
  v11 = *(v9 - 8);
  v8 = v9 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v5 - v7;
  v10 = (*(*(type metadata accessor for Message(v1) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v13 = &v5 - v10;
  v17 = v14;
  v16 = v3;
  (*(v11 + 16))(v2);
  Message.init(_:)(v12, v13);

  sub_1B08C4204();
  return sub_1B08C421C(v13, 500, v14, v15);
}

uint64_t sub_1B08C421C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = a1;
  v33 = a2;
  v34 = a3;
  v28 = a4;
  v35 = sub_1B08C4780;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v22 = 0;
  v29 = sub_1B0E431A8();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v23 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v30 = &v17 - v23;
  v24 = (*(*(type metadata accessor for MessageSummary.Accumulator() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v17 - v24;
  v25 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v17 - v25;
  v49 = &v17 - v25;
  v46 = a1;
  v45 = v8;
  v44 = v7;
  v43 = v9;

  (*(v26 + 16))(v30, v28, v29);
  v31 = sub_1B07575C4();
  v32 = v10;
  v11 = sub_1B08C4650();
  sub_1B08C4674(v33, v34, v30, v31, v32, v11, v37);
  v36 = &v41;
  v42 = v37;
  v12 = sub_1B03904C0();
  Message.enumeratePartsForDisplay(strategy:maximumByteCountPerPart:cache:closure:)(v12 & 1, 130000, v34, v35, v36);
  sub_1B08C49A4(v37, v38);
  v39 = sub_1B08C4AC8(v38);
  v40 = v13;
  if (v13)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = &v47;
    v47 = v39;
    v48 = v40;
    sub_1B08C4E3C(v37);
    (*(v26 + 8))(v28, v29);

    v15 = type metadata accessor for Message(0);
    (*(*(v15 - 8) + 8))(v21);
    sub_1B03B1198(v17);
    v19 = v39;
    v20 = v40;
  }

  else
  {

    sub_1B08C4E3C(v37);
    (*(v26 + 8))(v28, v29);

    v18 = 0;
    v14 = type metadata accessor for Message(0);
    (*(*(v14 - 8) + 8))(v21);
    v19 = v18;
    v20 = v18;
  }

  return v19;
}

uint64_t type metadata accessor for MessageSummary.Accumulator()
{
  v1 = qword_1EB6DC048;
  if (!qword_1EB6DC048)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

int *sub_1B08C4674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v16 = type metadata accessor for MessageSummary.Accumulator();
  v10 = v16[6];
  v7 = sub_1B0E431A8();
  (*(*(v7 - 8) + 32))(&a7[v10], a3);
  result = v16;
  v9 = &a7[v16[7]];
  *v9 = a4;
  *(v9 + 1) = a5;
  *&a7[v16[8]] = a6;
  return result;
}

uint64_t *sub_1B08C4788(void *__src)
{
  v15 = 0;
  v16 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v13 = sub_1B08C4EF0(__dst);
  if (v13)
  {
    if (v13 == 1)
    {
      v3 = sub_1B08C4F00(__dst);
      v8 = *v3;
      v9 = v3[1];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B08C6524(v8, v9);
    }

    else
    {
      v4 = sub_1B08C4F00(__dst);
      memcpy(v18, v4, sizeof(v18));
      sub_1B08C4F88(v18, v14);
      v6 = v18[3].n128_i64[1];
      v7 = v18[4];
      sub_1B08C50F0(v18[3].n128_i64[1], v18[4].n128_u64[0]);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      ContentDisposition.filename.getter(v6, v7.n128_i64[0], v7.n128_i64[1]);
      if (v5)
      {
        sub_1B08C512C(v6, v7.n128_u64[0]);

        sub_1B08C66A8();
      }

      else
      {
        sub_1B08C512C(v6, v7.n128_u64[0]);
      }

      return sub_1B08C5168(v18);
    }
  }

  else
  {
    v1 = sub_1B08C4F00(__dst);
    v10 = *v1;
    v12 = v1[1];
    v11 = *(v1 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B08C63C0(v10, v12, v11);
  }
}

char *sub_1B08C49A4(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v10 = type metadata accessor for MessageSummary.Accumulator();
  v6 = v10[6];
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  v3 = v10[7];
  v8 = &a2[v3];
  *&a2[v3] = *&a1[v3];
  v9 = *&a1[v3 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v8 + 1) = v9;
  v12 = v10[8];
  v13 = *&a1[v12];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v12] = v13;
  return result;
}

uint64_t sub_1B08C4AC8(uint64_t a1)
{
  v28 = a1;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v26 = 0;
  v21 = sub_1B0E431A8();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v8 - v24;
  v35 = sub_1B0E429A8();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v27 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v34 = &v8 - v27;
  v42 = v1;
  v29 = type metadata accessor for MessageSummary.Accumulator();
  v2 = (v28 + v29[7]);
  v30 = *v2;
  v31 = v2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = v41;
  v41[0] = v30;
  v41[1] = v31;
  sub_1B0E42988();
  sub_1B07C7F5C();
  v38 = sub_1B0E45F08();
  v37 = v3;
  (*(v32 + 8))(v34, v35);
  sub_1B03B1198(v36);
  v39 = v38;
  v40 = v37;
  if ((sub_1B0E44DA8() & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v38);
    v17 = v4;
    v18 = v5;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = v17;
    v44 = v18;
    v19 = v17;
    v20 = v18;
LABEL_6:
    v10 = v20;
    v9 = v19;

    sub_1B08C4E3C(v28);
    sub_1B03B1198(&v43);
    v12 = v9;
    v13 = v10;
    return v12;
  }

  v14 = *(v28 + v29[8]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  (*(v22 + 16))(v25, v28 + v29[6], v21);
  v15 = sub_1B08C552C(v14, v25);
  v16 = v6;
  if (v6)
  {
    v11 = v16;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = v15;
    v44 = v11;
    v19 = v15;
    v20 = v11;
    goto LABEL_6;
  }

  sub_1B08C4E3C(v28);
  v12 = 0;
  v13 = 0;
  return v12;
}

uint64_t sub_1B08C4E3C(uint64_t a1)
{
  v1 = *(a1 + 8);

  v7 = type metadata accessor for MessageSummary.Accumulator();
  v6 = v7[6];
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 8))(a1 + v6);
  v3 = *(a1 + v7[7] + 8);

  v4 = *(a1 + v7[8]);

  return a1;
}

void *sub_1B08C4F00(void *result)
{
  v1 = result[1];
  v2 = result[2];
  v3 = result[3];
  v4 = result[4];
  v5 = result[5];
  v6 = result[6];
  v7 = result[7];
  v8 = result[8];
  v9 = result[9];
  v10 = result[10];
  v11 = result[11];
  v12 = result[13];
  v13 = result[14];
  v14 = result[15];
  v15 = result[12] & 0x3FFFFFFFFFFFFFFFLL;
  *result = *result;
  result[1] = v1;
  result[2] = v2;
  result[3] = v3;
  result[4] = v4;
  result[5] = v5;
  result[6] = v6;
  result[7] = v7;
  result[8] = v8;
  result[9] = v9;
  result[10] = v10;
  result[11] = v11;
  result[12] = v15;
  result[13] = v12;
  result[14] = v13;
  result[15] = v14;
  return result;
}

__n128 sub_1B08C4F88(__n128 *a1, __n128 *a2)
{
  v6 = a1->n128_u64[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2->n128_u64[0] = v6;
  v7 = a1->n128_i64[1];
  v8 = a1[1].n128_i64[0];
  v9 = a1[1].n128_i64[1];
  v10 = a1[2].n128_i64[0];
  v11 = a1[2].n128_i8[8];
  sub_1B07ACBF8(v7, v8, v9, v10, v11);
  a2->n128_u64[1] = v7;
  a2[1].n128_u64[0] = v8;
  a2[1].n128_u64[1] = v9;
  a2[2].n128_u64[0] = v10;
  a2[2].n128_u8[8] = v11;
  v14 = a1[3].n128_u64[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[3].n128_u64[0] = v14;
  if (a1[4].n128_u64[0] > 2)
  {
    a2[3].n128_u64[1] = a1[3].n128_u64[1];
    v5 = a1[4].n128_u64[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a2[4].n128_u64[0] = v5;
  }

  else
  {
    *(a2 + 56) = *(a1 + 56);
  }

  v3 = a1[4].n128_u64[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[4].n128_u64[1] = v3;
  a2[5].n128_u64[0] = a1[5].n128_u64[0];
  v4 = a1[5].n128_u64[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[5].n128_u64[1] = v4;
  a2[6].n128_u8[0] = a1[6].n128_u8[0];
  a2[6].n128_u64[1] = a1[6].n128_u64[1];
  result = a1[7];
  a2[7] = result;
  return result;
}

uint64_t sub_1B08C50F0(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B08C512C(uint64_t a1, unint64_t a2)
{
  if (a2 > 2)
  {
  }

  return result;
}

uint64_t *sub_1B08C5168(uint64_t *a1)
{
  v1 = *a1;

  sub_1B07ACE18(a1[1], a1[2], a1[3], a1[4], *(a1 + 40));
  v2 = a1[6];

  if (a1[8] > 2)
  {
    v3 = a1[8];
  }

  v4 = a1[9];

  v5 = a1[11];

  return a1;
}

uint64_t sub_1B08C5204()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_1B08C5230(uint64_t a1)
{

  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
}

uint64_t sub_1B08C526C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for MessageSummary.Accumulator() + 24);
  v2 = sub_1B0E431A8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B08C52E4(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = sub_1B0E431A8();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = type metadata accessor for MessageSummary.Accumulator();
  (*(v8 + 40))(v1 + *(v2 + 24), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1B08C5404()
{
  v1 = (v0 + *(type metadata accessor for MessageSummary.Accumulator() + 28));
  v3 = *v1;
  v4 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t sub_1B08C544C(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v2 + *(type metadata accessor for MessageSummary.Accumulator() + 28));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1B08C54A8()
{
  v2 = *(v0 + *(type metadata accessor for MessageSummary.Accumulator() + 32));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B08C54E0(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for MessageSummary.Accumulator() + 32));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B08C552C(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v82 = a2;
  v51 = "Format string for when there’s a single file in a message.  Parameter is the filename.";
  v52 = "SINGLE_FILE";
  v53 = "Format string for when there’s more than one file in a message.  Parameter is the joined filenames.";
  v54 = "MULTI_FILE";
  v109 = 0;
  v110 = 0;
  v108 = 0;
  v107 = 0;
  v102 = 0;
  v103 = 0;
  v94 = 0;
  v95 = 0;
  v60 = 0;
  v55 = sub_1B0E431A8();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v59 = &v19 - v58;
  v61 = (*(*(sub_1B0E44AB8() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v19 - v61;
  v63 = sub_1B0E44A98();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v19 - v66;
  v68 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v66);
  v69 = &v19 - v68;
  v70 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v68);
  v71 = &v19 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A58, &qword_1B0E9F4E8);
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v19 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A60, &qword_1B0E9F4F0);
  v78 = *(v77 - 8);
  v79 = v77 - 8;
  v80 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v19 - v80;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A68, &unk_1B0E9F4F8);
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (*(v85 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v83);
  v88 = &v19 - v87;
  v89 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v90 = &v19 - v89;
  v108 = v6;
  v107 = v7;
  if (sub_1B0E452A8() > 1)
  {
    v36 = &v96;
    v96 = v83;
    (*(v78 + 104))(v81, *MEMORY[0x1E6968638], v77);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v38 = sub_1B06E3764();
    sub_1B08C6280(v76);
    sub_1B0E42868();
    (*(v73 + 8))(v76, v72);
    (*(v78 + 8))(v81, v77);
    sub_1B0E42BA8();
    v40 = *(v85 + 8);
    v39 = v85 + 8;
    v40(v88, v84);
    sub_1B08C67B0();
    sub_1B0E44EF8();
    v40(v90, v84);
    v43 = v97;
    v46 = v98;
    v94 = v97;
    v95 = v98;
    v41 = 13;
    sub_1B0E44A88();
    v44 = 1;
    sub_1B0E44838();
    v42 = v8;
    sub_1B0E44A78();

    sub_1B0E44A68();
    sub_1B0E44838();
    v45 = v9;
    sub_1B0E44A78();

    (*(v64 + 16))(v69, v71, v63);
    (*(v64 + 32))(v67, v69, v63);
    (*(v64 + 8))(v71, v63);
    sub_1B0E44AA8();
    (*(v56 + 16))(v59, v82, v55);
    v91 = v53;
    v92 = 101;
    v93 = 0;
    v10 = sub_1B07B843C(v54, 10, 2, v62, v59, v53, 101, 0);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v10);
    v47 = v11;
    v48 = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v109 = v47;
    v110 = v48;

    v49 = v47;
    v50 = v48;
LABEL_6:
    v20 = v50;
    v19 = v49;
    (*(v56 + 8))(v82, v55);

    sub_1B03B1198(&v109);
    v29 = v19;
    v30 = v20;
    return v29;
  }

  v106 = v83;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0750598();
  sub_1B0E45728();
  v34 = v104;
  v35 = v105;
  if (v105)
  {
    v31 = v34;
    v32 = v35;
    v26 = v35;
    v23 = v34;
    v102 = v34;
    v103 = v35;
    v21 = 12;
    sub_1B0E44A88();
    v24 = 1;
    sub_1B0E44838();
    v22 = v13;
    sub_1B0E44A78();

    sub_1B0E44A68();
    sub_1B0E44838();
    v25 = v14;
    sub_1B0E44A78();

    (*(v64 + 16))(v69, v71, v63);
    (*(v64 + 32))(v67, v69, v63);
    (*(v64 + 8))(v71, v63);
    sub_1B0E44AA8();
    (*(v56 + 16))(v59, v82, v55);
    v99 = v51;
    v100 = 88;
    v101 = 0;
    v15 = sub_1B07B843C(v52, 11, 2, v62, v59, v51, 88, 0);
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v15);
    v27 = v16;
    v28 = v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v109 = v27;
    v110 = v28;

    v49 = v27;
    v50 = v28;
    goto LABEL_6;
  }

  (*(v56 + 8))(v82, v55);

  v29 = 0;
  v30 = 0;
  return v29;
}

uint64_t sub_1B08C6280@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6968658];
  sub_1B0E42938();
  sub_1B08C7A78();
  v1 = sub_1B0E42B98();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1B08C632C()
{
  v7 = *v0;
  v1 = (v0 + *(type metadata accessor for MessageSummary.Accumulator() + 28));
  v4 = *v1;
  v5 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E44CF8();

  result = v6;
  if (!__OFSUB__(v7, v6))
  {
    return v7 - v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B08C63C0(uint64_t a1, uint64_t a2, int a3)
{
  v12 = a1;
  v14 = a2;
  v13 = a3;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v16 = (*(*(type metadata accessor for MessageSummary.Accumulator() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v15);
  v17 = v9 - v16;
  v24 = v4;
  v25 = v5;
  v23 = v6;
  v22 = v3;
  sub_1B08C49A4(v3, v9 - v16);
  v19 = sub_1B08C632C();
  sub_1B08C4E3C(v17);
  result = v19;
  if (v18 < v19)
  {
    result = sub_1B08C6838(v13, v12, v14);
    v10 = result;
    v11 = v8;
    if (v8)
    {
      v9[2] = v10;
      v9[3] = v11;
      v9[1] = v11;
      v20 = v10;
      v21 = v11;
      sub_1B08C6524(v10, v11);
    }
  }

  return result;
}

uint64_t sub_1B08C6524(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v15 = type metadata accessor for MessageSummary.Accumulator();
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v14);
  v17 = v8 - v16;
  v23 = v3;
  v24 = v4;
  v22 = v2;
  sub_1B08C49A4(v2, v8 - v16);
  v19 = sub_1B08C632C();
  sub_1B08C4E3C(v17);
  result = v19;
  if (v18 < v19)
  {
    sub_1B08C49A4(v14, v17);
    v9 = sub_1B08C632C();
    sub_1B08C4E3C(v17);
    result = sub_1B08C6AD0(v12, v13, v9);
    v10 = result;
    v11 = v6;
    if (v6)
    {
      v8[2] = v10;
      v8[3] = v11;
      v8[1] = v11;
      v20 = v10;
      v21 = v11;
      v7 = &v14[*(v15 + 28)];
      MEMORY[0x1B2726E80]();
    }
  }

  return result;
}

uint64_t sub_1B08C66A8()
{
  result = sub_1B0E44DA8();
  if ((result & 1) == 0)
  {
    v2 = type metadata accessor for MessageSummary.Accumulator();
    v3 = *(v5 + *(v2 + 32));
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v4 = sub_1B0E452A8();

    result = v4;
    if (v4 < 20)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1 = v5 + *(v2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
      return sub_1B0E452E8();
    }
  }

  return result;
}

unint64_t sub_1B08C67B0()
{
  v2 = qword_1EB6E2A78;
  if (!qword_1EB6E2A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A68, &unk_1B0E9F4F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2A78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08C6838(char a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v13 = a2;
  v14 = a3;
  v12 = 0;
  sub_1B08C70A0(a1);
  type metadata accessor for FlowedTextConversionOptions();
  sub_1B0E46A48();
  *v3 = 4;
  v3[1] = 8;
  sub_1B0394964();
  sub_1B0693A08();
  sub_1B0E46028();
  sub_1B0694500();
  sub_1B0E46FA8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B0E44AC8();
  [v8 mf:v11 convertFromFlowedText:&v12 visuallyEmpty:?];
  MEMORY[0x1E69E5920](v8);

  sub_1B0E45FE8();
  if (swift_dynamicCast())
  {
    v6 = v9;
    v7 = v10;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  if (v12)
  {

    goto LABEL_10;
  }

  v5 = v6;
LABEL_11:
  *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1B08C6AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a2;
  v45 = a3;
  sub_1B08C71D0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B08C7234();
  v44 = v23;
  sub_1B08C727C();
  v21 = sub_1B08C0C38();
  v43 = v21;
  [v23 addSubparser_];
  v20 = [v23 newStringAccumulatorWithOptions_lengthLimit_];
  v42 = v20;
  v25 = swift_allocObject();
  v41 = v25 + 16;
  *(v25 + 16) = 0;
  swift_unknownObjectRetain();

  v3 = swift_allocObject();
  *(v3 + 16) = v20;
  *(v3 + 24) = v25;
  v39 = sub_1B08C74E8;
  v40 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = 0;
  v37 = sub_1B08C74F4;
  v38 = &block_descriptor_9;
  v19 = _Block_copy(&aBlock);

  [v21 setFoundTextBlock_];
  _Block_release(v19);
  swift_unknownObjectRetain();
  v4 = swift_allocObject();
  *(v4 + 16) = v20;
  v32 = sub_1B08C7604;
  v33 = v4;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = 0;
  v30 = sub_1B06C276C;
  v31 = &block_descriptor_9;
  v22 = _Block_copy(&v27);

  [v21 setFoundWhitespaceBlock_];
  _Block_release(v22);
  v24 = [v23 parse];
  swift_beginAccess();
  v26 = *(v25 + 16);
  swift_endAccess();
  if (v26)
  {
    v15 = 1;
  }

  else
  {
    v15 = v24 ^ 1;
  }

  swift_unknownObjectRetain();
  if (v15)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = [v20 accumulatedString];
    sub_1B0E44AD8();
    swift_unknownObjectRelease();
    v13 = sub_1B0E44DA8();

    MEMORY[0x1E69E5920](v12);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  swift_unknownObjectRelease();
  if (v14)
  {
    v6 = sub_1B08C760C(a1, a2, a3);

    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v21);
    MEMORY[0x1E69E5920](v23);
    return v6;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = [v20 accumulatedString];
    sub_1B0E44AD8();
    swift_unknownObjectRelease();
    v11 = sub_1B0E44DA8();

    MEMORY[0x1E69E5920](v10);
    if (v11)
    {

      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v21);
      MEMORY[0x1E69E5920](v23);
      return 0;
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v7 = [v20 accumulatedString];
      v8 = sub_1B0E44AD8();
      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v7);

      swift_unknownObjectRelease();
      MEMORY[0x1E69E5920](v21);
      MEMORY[0x1E69E5920](v23);
      return v8;
    }
  }
}

uint64_t sub_1B08C70A0(char a1)
{
  type metadata accessor for FlowedTextConversionOptions();
  sub_1B0E46A48();
  sub_1B0693A08();
  sub_1B0E46028();
  if (a1)
  {
    sub_1B0694500();
    if (a1 != 1)
    {
      sub_1B0E46F48();
    }

    sub_1B0E46F48();
  }

  return v3;
}

unint64_t sub_1B08C71D0()
{
  v2 = qword_1EB6DA920;
  if (!qword_1EB6DA920)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA920);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B08C727C()
{
  v2 = qword_1EB6DA608;
  if (!qword_1EB6DA608)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA608);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B08C72E0(void *a1, unint64_t a2, _BYTE *a3, void *a4, uint64_t a5)
{
  if (a2 < 2)
  {
    swift_getObjectType();
    [a1 valueForAttributes_];
    type metadata accessor for ECMessageBodyElementAttributes();
    sub_1B08C7994();
    if ((sub_1B0E44A28() & 1) == 0)
    {
      swift_getObjectType();
      swift_getObjectType();
      swift_unknownObjectRetain();
      [a4 appendInnerTextWithConsumableNode_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    *(a5 + 16) = 1;
    swift_endAccess();
    swift_getObjectType();
    sub_1B0E44838();
    v7 = sub_1B0E44AC8();

    [a4 appendCustomEntityWithTag:0 stringRepresentation:v7];
    MEMORY[0x1E69E5920](v7);
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = [a4 isFull];
  swift_unknownObjectRelease();
  result = v6;
  *a3 = v6;
  return result;
}

uint64_t sub_1B08C74F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);
  swift_unknownObjectRelease();
}

uint64_t sub_1B08C756C(uint64_t a1, void *a2)
{
  swift_getObjectType();
  sub_1B0E44838();
  v4 = sub_1B0E44AC8();

  [a2 appendString_];
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B08C760C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_opt_self();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = sub_1B0E44AC8();

  v14 = [v11 plainTextFromHTML:v13 limit:a3];
  MEMORY[0x1E69E5920](v13);
  sub_1B0E44AD8();
  v15 = sub_1B0E44AC8();

  MEMORY[0x1E69E5920](v14);
  v16 = MFCreateStringByCondensingWhitespace(v15);
  MEMORY[0x1E69E5920](v15);
  if (v16)
  {
    v7 = sub_1B0E44AD8();
    v8 = v3;
    MEMORY[0x1E69E5920](v16);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (!v10)
  {
    return 0;
  }

  v4 = sub_1B0E44DA8();
  if (v4)
  {

    return 0;
  }

  return v9;
}

uint64_t sub_1B08C7870()
{
  v4 = type metadata accessor for Cache();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B0E431A8();
    if (v1 <= 0x3F)
    {
      v4 = sub_1B041BC68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

unint64_t sub_1B08C7994()
{
  v2 = qword_1EB6DA718;
  if (!qword_1EB6DA718)
  {
    type metadata accessor for ECMessageBodyElementAttributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA718);
    return WitnessTable;
  }

  return v2;
}

id sub_1B08C7A14()
{
  v2 = sub_1B0E44AC8();
  v3 = [v1 initWithHTML_];
  MEMORY[0x1E69E5920](v2);

  return v3;
}

unint64_t sub_1B08C7A78()
{
  v2 = qword_1EB6E2AE0;
  if (!qword_1EB6E2AE0)
  {
    sub_1B0E42938();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2AE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08C7AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v192 = a5;
  v252 = a1;
  v257 = a2;
  v245 = a3;
  v246 = a4;
  v193 = sub_1B070B550;
  v194 = sub_1B039BCF8;
  v195 = sub_1B070B550;
  v196 = sub_1B039BCF8;
  v197 = sub_1B070B550;
  v198 = sub_1B039BCF8;
  v199 = sub_1B0398F5C;
  v200 = sub_1B0398F5C;
  v201 = sub_1B039BCEC;
  v202 = sub_1B0398F5C;
  v203 = sub_1B0398F5C;
  v204 = sub_1B039BCEC;
  v205 = sub_1B0398F5C;
  v206 = sub_1B0398F5C;
  v207 = sub_1B039BCEC;
  v208 = sub_1B08CA1C0;
  v209 = sub_1B03FB388;
  v210 = sub_1B039BCF8;
  v211 = sub_1B070B550;
  v212 = sub_1B039BCF8;
  v213 = sub_1B070B550;
  v214 = sub_1B039BCF8;
  v215 = sub_1B070B550;
  v216 = sub_1B039BCF8;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0398F5C;
  v219 = sub_1B039BCEC;
  v220 = sub_1B0398F5C;
  v221 = sub_1B0398F5C;
  v222 = sub_1B039BCEC;
  v223 = sub_1B0398F5C;
  v224 = sub_1B0398F5C;
  v225 = sub_1B039BCEC;
  v226 = sub_1B0398F5C;
  v227 = sub_1B0398F5C;
  v228 = sub_1B039BCEC;
  v229 = "Fatal error";
  v230 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v231 = "Message/MFAttachment+Swift.swift";
  v277 = 0;
  v276 = 0;
  v274 = 0;
  v275 = 0;
  v272 = 0;
  v273 = 0;
  v271 = 0;
  v269 = 0;
  v270 = 0;
  v232 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FE0, &qword_1B0E9B2B0);
  v233 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v234 = v103 - v233;
  v235 = 0;
  v236 = sub_1B0E43788();
  v238 = *(v236 - 8);
  v237 = v236 - 8;
  v239 = v238;
  v240 = *(v238 + 64);
  v241 = (v240 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v235);
  v242 = v103 - v241;
  v243 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v244 = v103 - v243;
  v277 = v103 - v243;
  v247 = sub_1B0E439A8();
  v248 = *(v247 - 8);
  v249 = v247 - 8;
  v250 = (*(v248 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v257);
  v251 = v103 - v250;
  v276 = v103 - v250;
  v274 = v10;
  v275 = v9;
  v272 = v11;
  v273 = v12;
  v271 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v253 = sub_1B0E44AC8();
  v256 = [v253 pathExtension];
  v254 = sub_1B0E44AD8();
  v255 = v13;
  v269 = v254;
  v270 = v13;
  MEMORY[0x1E69E5920](v253);
  MEMORY[0x1E69E5920](v256);

  v258 = MFLogGeneral();
  if (v258)
  {
    v191 = v258;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0E439B8();
  static MediaType.uniformType(filename:mimeType:)(v245, v246, v234);
  if ((*(v238 + 48))(v234, 1, v236) == 1)
  {
    sub_1B075D100(v234);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v118 = 32;
    v119 = 7;
    v65 = swift_allocObject();
    v66 = v257;
    v111 = v65;
    *(v65 + 16) = v252;
    *(v65 + 24) = v66;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v67 = swift_allocObject();
    v68 = v255;
    v113 = v67;
    *(v67 + 16) = v254;
    *(v67 + 24) = v68;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v69 = swift_allocObject();
    v70 = v246;
    v120 = v69;
    *(v69 + 16) = v245;
    *(v69 + 24) = v70;
    v134 = sub_1B0E43988();
    v135 = sub_1B0E458E8();
    v116 = 17;
    v122 = swift_allocObject();
    v115 = 32;
    *(v122 + 16) = 32;
    v123 = swift_allocObject();
    v117 = 8;
    *(v123 + 16) = 8;
    v71 = swift_allocObject();
    v72 = v111;
    v112 = v71;
    *(v71 + 16) = v193;
    *(v71 + 24) = v72;
    v73 = swift_allocObject();
    v74 = v112;
    v124 = v73;
    *(v73 + 16) = v194;
    *(v73 + 24) = v74;
    v125 = swift_allocObject();
    *(v125 + 16) = v115;
    v126 = swift_allocObject();
    *(v126 + 16) = v117;
    v75 = swift_allocObject();
    v76 = v113;
    v114 = v75;
    *(v75 + 16) = v195;
    *(v75 + 24) = v76;
    v77 = swift_allocObject();
    v78 = v114;
    v127 = v77;
    *(v77 + 16) = v196;
    *(v77 + 24) = v78;
    v128 = swift_allocObject();
    *(v128 + 16) = v115;
    v129 = swift_allocObject();
    *(v129 + 16) = v117;
    v79 = swift_allocObject();
    v80 = v120;
    v121 = v79;
    *(v79 + 16) = v197;
    *(v79 + 24) = v80;
    v81 = swift_allocObject();
    v82 = v121;
    v131 = v81;
    *(v81 + 16) = v198;
    *(v81 + 24) = v82;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v130 = sub_1B0E46A48();
    v132 = v83;

    v84 = v122;
    v85 = v132;
    *v132 = v199;
    v85[1] = v84;

    v86 = v123;
    v87 = v132;
    v132[2] = v200;
    v87[3] = v86;

    v88 = v124;
    v89 = v132;
    v132[4] = v201;
    v89[5] = v88;

    v90 = v125;
    v91 = v132;
    v132[6] = v202;
    v91[7] = v90;

    v92 = v126;
    v93 = v132;
    v132[8] = v203;
    v93[9] = v92;

    v94 = v127;
    v95 = v132;
    v132[10] = v204;
    v95[11] = v94;

    v96 = v128;
    v97 = v132;
    v132[12] = v205;
    v97[13] = v96;

    v98 = v129;
    v99 = v132;
    v132[14] = v206;
    v99[15] = v98;

    v100 = v131;
    v101 = v132;
    v132[16] = v207;
    v101[17] = v100;
    sub_1B0394964();

    if (os_log_type_enabled(v134, v135))
    {
      v102 = v232;
      v104 = sub_1B0E45D78();
      v103[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v105 = sub_1B03949A8(0);
      v106 = sub_1B03949A8(3);
      v107 = &v268;
      v268 = v104;
      v108 = &v267;
      v267 = v105;
      v109 = &v266;
      v266 = v106;
      sub_1B0394A48(2, &v268);
      sub_1B0394A48(3, v107);
      v264 = v199;
      v265 = v122;
      sub_1B03949FC(&v264, v107, v108, v109);
      v110 = v102;
      if (v102)
      {

        __break(1u);
      }

      else
      {
        v264 = v200;
        v265 = v123;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        v103[7] = 0;
        v264 = v201;
        v265 = v124;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        v103[6] = 0;
        v264 = v202;
        v265 = v125;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        v103[5] = 0;
        v264 = v203;
        v265 = v126;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        v103[4] = 0;
        v264 = v204;
        v265 = v127;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        v103[3] = 0;
        v264 = v205;
        v265 = v128;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        v103[2] = 0;
        v264 = v206;
        v265 = v129;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        v103[1] = 0;
        v264 = v207;
        v265 = v131;
        sub_1B03949FC(&v264, &v268, &v267, &v266);
        _os_log_impl(&dword_1B0389000, v134, v135, "UTType for filename:[%s] extension:[%s] mimeType:[%s] indeterminate", v104, 0x20u);
        sub_1B03998A8(v105);
        sub_1B03998A8(v106);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v134);
    (*(v238 + 56))(v192, 1, 1, v236);
    (*(v248 + 8))(v251, v247);
  }

  else
  {
    v156 = v239;
    v159 = *(v238 + 32);
    v158 = v238 + 32;
    v159(v244, v234, v236);
    v154 = *(v238 + 16);
    v155 = v238 + 16;
    v154(v242, v244, v236);
    v157 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v171 = 7;
    v160 = swift_allocObject();
    v159((v160 + v157), v242, v236);

    v170 = 32;
    v14 = swift_allocObject();
    v15 = v160;
    v161 = v14;
    *(v14 + 16) = v208;
    *(v14 + 24) = v15;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = swift_allocObject();
    v17 = v257;
    v163 = v16;
    *(v16 + 16) = v252;
    *(v16 + 24) = v17;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = swift_allocObject();
    v19 = v255;
    v165 = v18;
    *(v18 + 16) = v254;
    *(v18 + 24) = v19;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = swift_allocObject();
    v21 = v246;
    v172 = v20;
    *(v20 + 16) = v245;
    *(v20 + 24) = v21;
    v189 = sub_1B0E43988();
    v190 = sub_1B0E458D8();
    v168 = 17;
    v174 = swift_allocObject();
    v167 = 32;
    *(v174 + 16) = 32;
    v175 = swift_allocObject();
    v169 = 8;
    *(v175 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v161;
    v162 = v22;
    *(v22 + 16) = v209;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v162;
    v176 = v24;
    *(v24 + 16) = v210;
    *(v24 + 24) = v25;
    v177 = swift_allocObject();
    *(v177 + 16) = v167;
    v178 = swift_allocObject();
    *(v178 + 16) = v169;
    v26 = swift_allocObject();
    v27 = v163;
    v164 = v26;
    *(v26 + 16) = v211;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v164;
    v179 = v28;
    *(v28 + 16) = v212;
    *(v28 + 24) = v29;
    v180 = swift_allocObject();
    *(v180 + 16) = v167;
    v181 = swift_allocObject();
    *(v181 + 16) = v169;
    v30 = swift_allocObject();
    v31 = v165;
    v166 = v30;
    *(v30 + 16) = v213;
    *(v30 + 24) = v31;
    v32 = swift_allocObject();
    v33 = v166;
    v182 = v32;
    *(v32 + 16) = v214;
    *(v32 + 24) = v33;
    v183 = swift_allocObject();
    *(v183 + 16) = v167;
    v184 = swift_allocObject();
    *(v184 + 16) = v169;
    v34 = swift_allocObject();
    v35 = v172;
    v173 = v34;
    *(v34 + 16) = v215;
    *(v34 + 24) = v35;
    v36 = swift_allocObject();
    v37 = v173;
    v186 = v36;
    *(v36 + 16) = v216;
    *(v36 + 24) = v37;
    v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v185 = sub_1B0E46A48();
    v187 = v38;

    v39 = v174;
    v40 = v187;
    *v187 = v217;
    v40[1] = v39;

    v41 = v175;
    v42 = v187;
    v187[2] = v218;
    v42[3] = v41;

    v43 = v176;
    v44 = v187;
    v187[4] = v219;
    v44[5] = v43;

    v45 = v177;
    v46 = v187;
    v187[6] = v220;
    v46[7] = v45;

    v47 = v178;
    v48 = v187;
    v187[8] = v221;
    v48[9] = v47;

    v49 = v179;
    v50 = v187;
    v187[10] = v222;
    v50[11] = v49;

    v51 = v180;
    v52 = v187;
    v187[12] = v223;
    v52[13] = v51;

    v53 = v181;
    v54 = v187;
    v187[14] = v224;
    v54[15] = v53;

    v55 = v182;
    v56 = v187;
    v187[16] = v225;
    v56[17] = v55;

    v57 = v183;
    v58 = v187;
    v187[18] = v226;
    v58[19] = v57;

    v59 = v184;
    v60 = v187;
    v187[20] = v227;
    v60[21] = v59;

    v61 = v186;
    v62 = v187;
    v187[22] = v228;
    v62[23] = v61;
    sub_1B0394964();

    if (os_log_type_enabled(v189, v190))
    {
      v63 = v232;
      v147 = sub_1B0E45D78();
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v148 = sub_1B03949A8(0);
      v149 = sub_1B03949A8(4);
      v150 = &v263;
      v263 = v147;
      v151 = &v262;
      v262 = v148;
      v152 = &v261;
      v261 = v149;
      sub_1B0394A48(2, &v263);
      sub_1B0394A48(4, v150);
      v259 = v217;
      v260 = v174;
      sub_1B03949FC(&v259, v150, v151, v152);
      v153 = v63;
      if (v63)
      {

        __break(1u);
      }

      else
      {
        v259 = v218;
        v260 = v175;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v145 = 0;
        v259 = v219;
        v260 = v176;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v144 = 0;
        v259 = v220;
        v260 = v177;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v143 = 0;
        v259 = v221;
        v260 = v178;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v142 = 0;
        v259 = v222;
        v260 = v179;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v141 = 0;
        v259 = v223;
        v260 = v180;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v140 = 0;
        v259 = v224;
        v260 = v181;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v139 = 0;
        v259 = v225;
        v260 = v182;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v138 = 0;
        v259 = v226;
        v260 = v183;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v137 = 0;
        v259 = v227;
        v260 = v184;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        v136 = 0;
        v259 = v228;
        v260 = v186;
        sub_1B03949FC(&v259, &v263, &v262, &v261);
        _os_log_impl(&dword_1B0389000, v189, v190, "UTType [%s] for filename:[%s] via extension:[%s] mimeType:[%s]", v147, 0x2Au);
        sub_1B03998A8(v148);
        sub_1B03998A8(v149);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v189);
    v154(v192, v244, v236);
    (*(v238 + 56))(v192, 0, 1, v236);
    (*(v238 + 8))(v244, v236);
    (*(v248 + 8))(v251, v247);
  }
}

uint64_t sub_1B08CA1C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B0E43788();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B08C9F6C(v3, a1);
}

unint64_t sub_1B08CA234()
{
  v2 = qword_1EB6E2AF0;
  if (!qword_1EB6E2AF0)
  {
    sub_1B0E43788();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2AF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08CA2B4()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DBA38);
  __swift_project_value_buffer(v1, qword_1EB6DBA38);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B08CA358()
{
  if (qword_1EB6DBA30 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DBA38);
}

uint64_t sub_1B08CA3C4()
{
  v16 = 0;
  v15 = 0;
  v5 = 0;
  v7 = sub_1B0E428D8();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = &v5 - v6;
  v16 = v0;
  sub_1B0E42928();
  v14 = sub_1B0E42908();
  v15 = v14;
  v11 = sub_1B0E46A48();
  v10 = v1;
  sub_1B0E428B8();
  v2 = *(v8 + 72);
  sub_1B0E428C8();
  v3 = v11;
  sub_1B0394964();
  v12 = v3;
  sub_1B08CA4FC();
  sub_1B0E46028();
  sub_1B0E428E8();
  return v14;
}

unint64_t sub_1B08CA4FC()
{
  v2 = qword_1EB6DED40;
  if (!qword_1EB6DED40)
  {
    sub_1B0E428D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DED40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08CA57C()
{
  v2 = (v0 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B08CA5E4(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

id sub_1B08CA668(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDatabase_];
  MEMORY[0x1E69E5920](a1);
  return v3;
}

id sub_1B08CA6C0(uint64_t a1)
{
  v10 = 0;
  v9 = a1;
  _s14ImplementationCMa();
  MEMORY[0x1E69E5928](a1);
  v1 = sub_1B08CA7C0(a1);
  *OBJC_IVAR___MFMailboxFrecencyController_implementation = sub_1B08CA894(v1, v2, v3, v4);
  v8.receiver = v10;
  v8.super_class = MFMailboxFrecencyController;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x1E69E5928](v7);
  v10 = v7;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v10);
  return v7;
}

uint64_t sub_1B08CA7C0(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v6 = sub_1B08CDD38(a1);
  sub_1B08CDE1C(a1);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v6);
  v10 = v1;
  v8 = v2;
  *&v9 = v3;
  *(&v9 + 1) = v4;

  *&v11 = v10;
  *(&v11 + 1) = v8;
  v12 = v9;
  MEMORY[0x1E69E5920](a1);
  sub_1B08CDE98(&v11);
  return v10;
}

uint64_t sub_1B08CA944()
{
  v2 = (v0 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  v4 = sub_1B08CA9CC();

  return v4;
}

uint64_t sub_1B08CA9CC()
{
  v19 = 0;
  v17 = sub_1B043C314;
  v21 = sub_1B08CCA20;
  v9 = sub_1B08CCB04;
  v31 = 0;
  v30 = 0;
  v16 = &v29;
  v29 = 0;
  v14 = 0;
  v10 = sub_1B0E43108();
  v11 = *(v10 - 8);
  v12 = v10 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v4 - v13;
  v31 = &v4 - v13;
  v30 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B00, &qword_1B0E9F568);
  v29 = sub_1B0E46A48();
  sub_1B0E430F8();
  v25 = v15;
  v26 = v16;
  sub_1B08CC97C(v17, v24, v16);
  v18 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B08, &qword_1B0E9F570);
  sub_1B08CDED0();
  v1 = sub_1B0E44FF8();
  v22 = 0;
  v23 = v1;
  v6 = v1;
  sub_1B039E440(&v28);
  v27 = v6;
  v2 = sub_1B08CDF58();
  v8 = sub_1B039CA88(v9, 0, v20, &unk_1F26DCB80, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v7);
  v5 = v8;
  sub_1B039E440(&v27);
  (*(v11 + 8))(v15, v10);
  sub_1B039E440(&v29);
  return v5;
}

uint64_t *sub_1B08CAD30@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v7 = 0;
  v6 = sub_1B08CAE44;
  v12 = 0;
  v9 = sub_1B0E43308();
  v4 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = &v3 - v4;
  v12 = v1;
  v11 = sub_1B08CA944();
  sub_1B0E432F8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B10, &qword_1B0E9F578);
  sub_1B08CDFE0();
  sub_1B0E44FD8();
  return sub_1B039E440(&v11);
}

uint64_t sub_1B08CAE94(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  swift_beginAccess();
  v5 = *v3;

  swift_endAccess();
  v6 = sub_1B08CAF2C(a1);

  return v6;
}

uint64_t sub_1B08CAF2C(uint64_t a1)
{
  v31 = a1;
  v36 = 0;
  v48 = 0;
  v47 = 0;
  v44 = 0;
  v42 = 0;
  v32 = sub_1B0E43108();
  v33 = *(v32 - 8);
  v34 = v33;
  v2 = *(v33 + 64);
  v3 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v3;
  v47 = v1;
  v46 = v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B18, &qword_1B0E9F588);
  v5 = sub_1B06E3518();
  v7 = sub_1B039CA88(sub_1B08CCBE4, v36, v37, v38, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  v39 = 0;
  v40 = v7;
  v45 = v7;
  v25 = 0;
  v26 = sub_1B03EE50C();
  v23 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B20, &qword_1B0E9F590);
  v28 = sub_1B08CE068();
  v24 = v28;
  sub_1B08CE0E4();
  v8 = sub_1B0E44718();
  v29 = 0;
  v30 = v8;
  v18 = v8;
  v44 = v8;
  v13 = &unk_1F26DCC08;
  v43 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B28, &qword_1B0E9F598);
  sub_1B08CE16C();
  v16 = sub_1B0E45378();
  sub_1B0E430F8();
  v17 = sub_1B08CCC88(v16, v35);
  v15 = v17;
  (*(v34 + 8))(v35, v32);

  v42 = v17;
  v41 = v17;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = &v11;
  MEMORY[0x1EEE9AC00](&v11);
  v20 = &v11 - 4;
  *(&v11 - 2) = v9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B30, &unk_1B0E9F5A0);
  sub_1B08CE21C();
  v22 = sub_1B0E44F58();
  v12 = v22;

  return v12;
}

uint64_t sub_1B08CB3FC(void *a1)
{
  v7 = (v1 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  v10 = [a1 allMailboxUids];
  if (v10)
  {
    sub_1B03EE50C();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v10);
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

  v3 = sub_1B08CAF2C(v4);

  return v3;
}

uint64_t sub_1B08CB668(uint64_t a1)
{
  v6 = a1;
  v14 = 0;
  v13 = 0;
  v10 = sub_1B0E43108();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v3;
  v14 = MEMORY[0x1EEE9AC00](v6);
  v13 = v1;
  v4 = (v1 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  v5 = &v12;
  swift_beginAccess();
  v11 = *v4;

  swift_endAccess();
  sub_1B0E430F8();
  sub_1B08CB798(v6, v9);
  (*(v7 + 8))(v9, v10);
}

uint64_t sub_1B08CB798(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v21 = a2;
  v28 = 0;
  v30 = sub_1B08CD1F0;
  v14 = sub_1B08CE2A4;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v15 = 0;
  v16 = sub_1B0E44288();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = &v9 - v19;
  v23 = sub_1B0E44238();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v9 - v26;
  v43 = v3;
  v42 = v4;
  v41 = v2;
  v40 = v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18C0, &qword_1B0E99EB8);
  sub_1B06D85C8();
  v31 = sub_1B0E44F58();
  v12 = v31;
  v39 = v31;
  v11 = *(v13 + 48);
  MEMORY[0x1E69E5928](v11);
  sub_1B0E44228();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = swift_allocObject();
  v6 = v14;
  v7 = v12;
  *(v5 + 16) = v13;
  *(v5 + 24) = v7;
  v37 = v6;
  v38 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = 0;
  v35 = sub_1B038C908;
  v36 = &block_descriptor_10;
  v10 = _Block_copy(&aBlock);
  sub_1B039B81C();
  MEMORY[0x1B2727B00](0, v20, v27, v10);
  (*(v17 + 8))(v20, v16);
  _Block_release(v10);

  (*(v24 + 8))(v27, v23);
  MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1B08CBB98()
{
  v2 = (v0 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  sub_1B08CBC14();
}

uint64_t sub_1B08CBC14()
{
  v10[2] = 0;
  v8 = [objc_opt_self() mailAccounts];
  if (v8)
  {
    sub_1B08CE3C0();
    v6 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v8);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v5 = v7;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v10[1] = v5;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B38, &qword_1B0E9F5B0);
  v0 = sub_1B08CE2B0();
  MEMORY[0x1B27270C0](v10, v2, v0);
  v3 = v10[0];

  v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B48, &qword_1B0E9F5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18C0, &qword_1B0E99EB8);
  sub_1B08CE338();
  sub_1B06D85C8();
  v4 = sub_1B0E45008();
  sub_1B039E440(&v9);
  sub_1B08CD090(v4);
}

uint64_t sub_1B08CBEC0()
{
  v2 = (v0 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  sub_1B08CBF3C();
}

uint64_t sub_1B08CBF3C()
{
  v4 = sub_1B08CE424;
  v24 = 0;
  v6 = 0;
  v10 = sub_1B0E44288();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v2 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = &v2 - v2;
  v15 = sub_1B0E44238();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v3 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v14 = &v2 - v3;
  v24 = v0;
  v16 = *(v0 + 48);
  MEMORY[0x1E69E5928](v16);
  sub_1B0E44228();

  v22 = v4;
  v23 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = 0;
  v20 = sub_1B038C908;
  v21 = &block_descriptor_3_0;
  v11 = _Block_copy(&aBlock);
  sub_1B039B81C();
  MEMORY[0x1B2727B00](v6, v9, v14, v11);
  (*(v7 + 8))(v9, v10);
  _Block_release(v11);

  (*(v12 + 8))(v14, v15);
  return MEMORY[0x1E69E5920](v16);
}

uint64_t sub_1B08CC1CC()
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    sub_1B08D3A10();
    sub_1B0E465B8();
    __break(1u);
  }

  v1 = (v3 + OBJC_IVAR___MFMailboxFrecencyController_implementation);
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  sub_1B08CC2C0();
}

uint64_t sub_1B08CC2C0()
{
  v13 = v0;
  queue = *(v0 + 48);
  MEMORY[0x1E69E5928](queue);
  v4 = swift_allocObject();
  *(v4 + 16) = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
  *(v4 + 24) = 0;

  v11 = sub_1B04020AC;
  v12 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = 0;
  v9 = sub_1B0402058;
  v10 = &block_descriptor_9_0;
  block = _Block_copy(&aBlock);

  dispatch_sync(queue, block);
  _Block_release(block);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return MEMORY[0x1E69E5920](queue);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B08CC540()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];

  return v2;
}

uint64_t sub_1B08CC598()
{
  v2 = *(v0 + 48);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08CC5CC()
{
  v2 = 0;
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = v1;
  sub_1B039E440(&v2);
  return v1;
}

uint64_t sub_1B08CC624()
{
  v2 = *(v0 + 56);

  return v2;
}

void *sub_1B08CC650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v29 = a2;
  v31 = a3;
  v32 = a4;
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v28 = 0;
  v17 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v16 - v17;
  v22 = sub_1B0E459C8();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v18 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v16 - v18;
  v19 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v16 - v19;
  *&v36 = v5;
  *(&v36 + 1) = v6;
  *&v37 = v7;
  *(&v37 + 1) = v8;
  v35 = v4;
  sub_1B06CCC58();
  v23 = sub_1B0E44838();
  v24 = v9;
  sub_1B0E44278();
  (*(v20 + 104))(v27, *MEMORY[0x1E69E8098], v22);
  sub_1B06BFBDC();
  v10 = sub_1B0E45A08();
  v11 = v33;
  v33[6] = v10;
  v34 = sub_1B08CC5CC();
  v11[7] = sub_1B06C70B0(&v34, &unk_1F26DCB00);

  v12 = v29;
  v13 = v31;
  v14 = v32;
  v11[2] = v30;
  v11[3] = v12;
  v11[4] = v13;
  v11[5] = v14;

  return v33;
}

uint64_t sub_1B08CC8E0()
{
  sub_1B08CDE98(v0 + 16);
  MEMORY[0x1E69E5920](*(v0 + 48));
  sub_1B0391AD4((v0 + 56));
  return v2;
}

uint64_t sub_1B08CC97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = a1;
  v10 = a2;
  v8 = v3;
  v6 = a1;
  v7 = a2;
  return sub_1B08D1C7C(sub_1B08D3A48, v5, MEMORY[0x1E69E7CA8] + 8, a3);
}

BOOL sub_1B08CCA20(uint64_t a1, uint64_t a2)
{
  memset(&v17[7], 0, 0x31uLL);
  memset(v17, 0, 0x31uLL);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v17[7] = *a1;
  v17[8] = v2;
  v17[9] = v3;
  v17[10] = v4;
  v17[11] = v5;
  v17[12] = v6;
  LOBYTE(v17[13]) = v7 & 1;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  return *a2 < *&v17[7];
}

uint64_t sub_1B08CCB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x31uLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v2 = *(a1 + 48);
  v10 = v2;
  __b[0] = *a1;
  __b[1] = v5;
  __b[2] = v6;
  __b[3] = v7;
  __b[4] = v8;
  __b[5] = v9;
  LOBYTE(__b[6]) = v2 & 1;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10 & 1;
  return result;
}

uint64_t sub_1B08CCBE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v10 = *a1;
  v6 = [*a1 persistentID];
  v2 = sub_1B0E44AD8();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v2);
  v7 = v3;
  v8 = v4;
  MEMORY[0x1E69E5920](v6);
  *a2 = v7;
  a2[1] = v8;
  result = MEMORY[0x1E69E5928](v10);
  a2[2] = v10;
  return result;
}

uint64_t sub_1B08CCC88(uint64_t a1, uint64_t a2)
{
  v6 = sub_1B08CF828();
  v7 = v2;

  v8 = sub_1B08CF8C4(a1, a2, v6, v7);

  return v8;
}

uint64_t sub_1B08CCD1C(void *a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v3 = *a1;
  v4 = a1[1];
  v7 = a1;
  v6 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5[0] = v3;
  v5[1] = v4;
  sub_1B03EE50C();
  sub_1B08CE068();
  sub_1B0E44778();
  return sub_1B03B1198(v5);
}

uint64_t sub_1B08CCE84(void *a1)
{
  v6 = [a1 allMailboxUids];
  if (v6)
  {
    sub_1B03EE50C();
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

  v2 = sub_1B08CAF2C(v3);

  return v2;
}

uint64_t sub_1B08CD090(uint64_t a1)
{
  v4 = a1;
  v10 = 0;
  v9 = 0;
  v8 = sub_1B0E43108();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v3 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v3 - v3;
  v10 = MEMORY[0x1EEE9AC00](v4);
  v9 = v1;
  sub_1B0E430F8();
  sub_1B08CB798(v4, v7);
  return (*(v5 + 8))(v7, v8);
}

uint64_t sub_1B08CD1F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = sub_1B08CD248(v4);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B08CD248(uint64_t a1)
{
  v18 = a1;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v16 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v17 = &v9 - v16;
  v19 = sub_1B0E42E68();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v9 - v22;
  v24 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v25 = &v9 - v24;
  v30 = &v9 - v24;
  v27 = v4;
  v26 = [v4 url];
  if (v26)
  {
    v15 = v26;
    v14 = v26;
    sub_1B0E42DE8();
    (*(v20 + 32))(v17, v23, v19);
    (*(v20 + 56))(v17, 0, 1, v19);
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    (*(v20 + 56))(v17, 1, 1, v19);
  }

  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_1B06E3800(v17);
    MEMORY[0x1E69E5920](v18);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    (*(v20 + 32))(v25, v17, v19);
    v5 = sub_1B0E42D18();
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v5);
    v11 = v6;
    v10 = v7;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = &v28;
    v28 = v11;
    v29 = v10;
    (*(v20 + 8))(v25, v19);
    MEMORY[0x1E69E5920](v18);
    sub_1B03B1198(v9);
    v12 = v11;
    v13 = v10;
  }

  return v12;
}

uint64_t sub_1B08CD5B8(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v12 = 0;
  v11 = 0;
  v10 = sub_1B0E43108();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v5 - v5;
  v12 = a1;
  v11 = v3;
  sub_1B0E430F8();
  sub_1B08CD69C(v6, v9);
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1B08CD69C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v20 = a1;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v19 = 0;
  v28 = 0;
  v25 = sub_1B0E44468();
  v22 = *(v25 - 8);
  v24 = v22;
  v3 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v20);
  v26 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = v4;
  v31 = v6;
  v30 = v2;

  v23 = *(v2 + 48);
  v7 = v23;
  v8 = v24;
  *v26 = v23;
  v9 = *MEMORY[0x1E69E8020];
  (*(v8 + 104))();
  v27 = sub_1B0E44488();
  (*(v24 + 8))(v26, v25);
  result = v27;
  if (v27)
  {
    v11 = v19;

    v17 = *(v18 + 56);
    v15[2] = v17;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v15[3] = v15;
    MEMORY[0x1EEE9AC00](v15);
    v12 = v21;
    v16 = &v15[-6];
    v15[-4] = v20;
    v15[-3] = v12;
    v15[-2] = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B10, &qword_1B0E9F578);
    sub_1B03E1B3C(sub_1B08D3A74, v16, v17, &unk_1F26DCB00, v14);
    if (!v11)
    {

      v15[1] = v29;
      v28 = v29;
      sub_1B08CF468(v29);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B08CD920@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = 0;
  v11 = *a1;
  v9 = [v11 allMailboxUids];
  if (v9)
  {
    sub_1B03EE50C();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v9);
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

  v10 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
  sub_1B06BD108();
  sub_1B06E35CC();
  result = sub_1B0E44F58();
  v3 = result;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    result = sub_1B039E440(&v10);
    *a2 = v3;
  }

  return result;
}

id sub_1B08CDAF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_1B08CDB7C()
{
  v7 = v0;
  v4 = sub_1B08D3624;
  v5 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B58, &qword_1B0EA1120);
  return sub_1B08D320C(sub_1B08D3AA4, v3, v1, &v6);
}

uint64_t sub_1B08CDC6C(uint64_t a1, uint64_t a2)
{

  v3 = v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1B08CDCEC(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t (*sub_1B08CDD38(uint64_t a1))()
{
  MEMORY[0x1E69E5928](a1);
  v1 = swift_allocObject();
  result = sub_1B08D4E8C;
  *(v1 + 16) = a1;
  return result;
}

uint64_t (*sub_1B08CDE1C(uint64_t a1))()
{
  MEMORY[0x1E69E5928](a1);
  v1 = swift_allocObject();
  result = sub_1B08D4E84;
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B08CDE98(uint64_t a1)
{
  v1 = *(a1 + 8);

  v2 = *(a1 + 24);

  return a1;
}

unint64_t sub_1B08CDED0()
{
  v2 = qword_1EB6DB048;
  if (!qword_1EB6DB048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B08, &qword_1B0E9F570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB048);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CDF58()
{
  v2 = qword_1EB6DB040;
  if (!qword_1EB6DB040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B08, &qword_1B0E9F570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CDFE0()
{
  v2 = qword_1EB6DAEA8;
  if (!qword_1EB6DAEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B10, &qword_1B0E9F578);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CE068()
{
  v2 = qword_1EB6DA760;
  if (!qword_1EB6DA760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CE0E4()
{
  v2 = qword_1EB6DAEB8;
  if (!qword_1EB6DAEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B20, &qword_1B0E9F590);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CE16C()
{
  v2 = qword_1EB6DB808;
  if (!qword_1EB6DB808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B28, &qword_1B0E9F598);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB808);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CE21C()
{
  v2 = qword_1EB6DAE90;
  if (!qword_1EB6DAE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B30, &unk_1B0E9F5A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CE2B0()
{
  v2 = qword_1EB6E2B40;
  if (!qword_1EB6E2B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B38, &qword_1B0E9F5B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2B40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CE338()
{
  v2 = qword_1EB6E2B50;
  if (!qword_1EB6E2B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B48, &qword_1B0E9F5B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2B50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08CE3C0()
{
  v2 = qword_1EB6DACB0;
  if (!qword_1EB6DACB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DACB0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B08CE4B0@<X0>(uint64_t *a1@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B70, &qword_1B0E9F5D0);
  sub_1B08D3D78();
  v4 = sub_1B0E44F58();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_1B08CE5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v56 = a4;
  v64 = a3;
  v55 = a1;
  v54 = a5;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  memset(v72, 0, 25);
  v71 = 0u;
  v57 = sub_1B0E439A8();
  v58 = *(v57 - 8);
  v59 = v58;
  v60 = *(v58 + 64);
  v6 = MEMORY[0x1EEE9AC00](v56);
  v61 = v22 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v7;
  v63 = v7[1];
  v84 = v62;
  v85 = v63;
  v83 = a2;
  v82 = v8;
  v81 = v6;
  v65 = sub_1B08CECBC();
  v66 = v9;

  sub_1B08CEE5C(v62, v63, v64, v65, v66, &v77);

  v67 = v77;
  v68 = v78;
  v69 = v79;
  v70 = v80;
  if (v78)
  {
    v49 = v67;
    v50 = v68;
    v51 = v69;
    v52 = v70;
    v41 = v69;
    v40 = *(&v68 + 1);
    v38 = v68;
    v39 = v67;
    v71 = v67;
    v72[0] = v68;
    *&v72[1] = v69;
    v42 = v70 & 1;
    BYTE8(v72[1]) = v70 & 1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = v38;
    v13 = *(&v39 + 1);
    v14 = v40;
    v15 = v41;
    v16 = v54;
    v17 = v42;
    *v54 = v39;
    v16[1] = v13;
    v16[2] = v12;
    v16[3] = v14;
    v16[4] = v15;
    *(v16 + 40) = v17;

    result = v53;
    v43 = v53;
  }

  else
  {
    v10 = v61;
    v11 = sub_1B08CA358();
    (*(v59 + 16))(v10, v11, v57);
    v47 = sub_1B0E43988();
    v44 = v47;
    v46 = sub_1B0E458E8();
    v45 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v48 = sub_1B0E46A48();
    if (os_log_type_enabled(v47, v46))
    {
      v36 = v53;
      v28 = sub_1B0E45D78();
      v24 = v28;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v26 = 0;
      v29 = sub_1B03949A8(0);
      v27 = v29;
      v30 = sub_1B03949A8(v26);
      v76 = v28;
      v75 = v29;
      v74 = v30;
      v31 = 0;
      v32 = &v76;
      sub_1B0394A48(0, &v76);
      sub_1B0394A48(v31, v32);
      v73 = v48;
      v33 = v22;
      MEMORY[0x1EEE9AC00](v22);
      v34 = &v22[-6];
      v22[-4] = v19;
      v22[-3] = &v75;
      v22[-2] = &v74;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      v20 = v36;
      sub_1B0E45018();
      v37 = v20;
      if (v20)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v44, v45, "Trying to update row that doesn’t exist in the database. Ignoring.", v24, 2u);
        v22[1] = 0;
        sub_1B03998A8(v27);
        sub_1B03998A8(v30);
        sub_1B0E45D58();

        v23 = v37;
      }
    }

    else
    {

      v23 = v53;
    }

    v22[0] = v23;

    (*(v59 + 8))(v61, v57);
    v21 = v54;
    result = v22[0];
    *v54 = 0;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = 0;
    *(v21 + 40) = 0;
  }

  return result;
}

uint64_t sub_1B08CED54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a1;
  v14 = a2;
  v12 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = a1;
  v11 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B60, &qword_1B0E9F5C0);
  sub_1B08D1C7C(sub_1B08D3AD0, v9, v4, a3);
}

uint64_t sub_1B08CEE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v71 = v98;
  v77 = a5;
  v76 = a4;
  v75 = a3;
  v84 = a2;
  v83 = a1;
  v73 = a6;
  v74 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v97 = 0;
  v96 = 0;
  v90 = 0;
  v78 = sub_1B0E43108();
  v79 = *(v78 - 8);
  v80 = v79;
  v7 = *(v79 + 64);
  v8 = MEMORY[0x1EEE9AC00](v83);
  v81 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v8;
  v111 = v10;
  v109 = v11;
  v107 = v12;
  v108 = v13;
  v106 = v6;
  v82 = *v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v103[0] = v82;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v88 = v83;
  v89 = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B10, &qword_1B0E9F578);
  v85 = v86;
  sub_1B08D3B2C();
  sub_1B0E456F8();
  v87 = 0;

  sub_1B039E440(v103);
  v70 = v103[1];
  if ((v104 & 1) == 0)
  {
    v69 = v70;
    v90 = v70;
    v105 = v70;
    v67 = v70;
    v68 = v87;
LABEL_7:
    v44 = v68;
    v45 = v67;
    v20 = *v72;
    v46 = v94;
    sub_1B0E453A8();
    v47 = v94[3];
    v48 = v94[4];
    v49 = v95;
    sub_1B043C118(v46);
    if (v49)
    {
      (*(v80 + 16))(v81, v75, v78);
      v36 = sub_1B08CFD88(v81);
      v37 = v25;
      v38 = &v93;
      v21 = sub_1B0E45398();
      v26 = v37;
      v24 = v38;
      *(v22 + 24) = v36;
      *(v22 + 32) = v26;
    }

    else
    {
      v42 = v47;
      v43 = v48;
      v96 = v47;
      v97 = v48;
      sub_1B08CFE5C();
      v39 = v96;
      v40 = v97;
      v41 = v91;
      v21 = sub_1B0E45398();
      v23 = v40;
      v24 = v41;
      *(v22 + 24) = v39;
      *(v22 + 32) = v23;
    }

    *(v22 + 40) = 0;
    v21(v24);
    v27 = *v72;
    sub_1B0E453A8();
    v28 = v73;
    v29 = v44;
    v30 = v91[5];
    v31 = v91[6];
    v32 = v91[7];
    v33 = v91[8];
    v34 = v92;
    *v73 = v91[4];
    v28[1] = v30;
    v28[2] = v31;
    v28[3] = v32;
    v28[4] = v33;
    *(v28 + 40) = v34;
    return v29;
  }

  v76(&v99, v83, v84);
  v63 = v99;
  v64 = v100;
  v65 = v101;
  v66 = v102;
  if (!v100)
  {
    v18 = v87;
    v19 = v73;
    *v73 = 0;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = 0;
    *(v19 + 40) = 0;
    return v18;
  }

  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v14 = v87;
  v54 = v64;
  v112 = v63;
  v113 = v64;
  v114 = v65;
  v115 = v66 & 1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = &v36;
  MEMORY[0x1EEE9AC00](&v36);
  v56 = &v36 - 4;
  *(&v36 - 2) = &v112;
  v57 = sub_1B08D3BE0();
  sub_1B08D3C68();
  sub_1B0E45898();
  v58 = v14;
  if (!v14)
  {
    v15 = v72;

    v51 = *v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v52 = sub_1B0E452A8();
    v53 = v52;

    v105 = v52;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v16 = v112;
    v17 = v113;
    *(v71 + 25) = *(v71 + 217);
    v98[1] = v17;
    v98[0] = v16;
    sub_1B0E452E8();

    v67 = v53;
    v68 = v58;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B08CF468(uint64_t a1)
{
  v14 = a1;
  v25 = 0;
  v26 = a1;
  sub_1B0E42928();
  v16 = sub_1B08CA3C4();
  v15 = v16;
  v24 = v16;
  v23 = v14;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B10, &qword_1B0E9F578);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B68, &qword_1B0E9F5C8);
  v1 = sub_1B08D3B2C();
  v19 = 0;
  v20 = sub_1B039CA88(sub_1B08D3CF0, v16, v17, v18, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v2);
  v9 = v20;

  v22 = v20;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8[3] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v7[2] = v9;
  v10 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v6;
  v6[2] = sub_1B08D3D24;
  v6[3] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B58, &qword_1B0EA1120);
  sub_1B08D320C(sub_1B08D3D4C, v11, v4, &v21);
  v12 = 0;
  v13 = 0;

  v8[2] = v12;
}

BOOL sub_1B08CF6E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = sub_1B08D0C60(a1, a2, a4, a5);

  return v14 && (a3 & 1) == (a6 & 1);
}

uint64_t sub_1B08CF8C4(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v32 = 0;
  v33 = 0;
  v47 = a1;
  v46 = a2;
  v44 = a3;
  v45 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v43 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B70, &qword_1B0E9F5D0);
  sub_1B08CE068();
  sub_1B08D3D78();
  v19 = sub_1B0E45598();
  v42 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B78, &qword_1B0E9F5D8);
  sub_1B0E46A48();
  v41 = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v22 = v19;
  v23 = a2;
  v24 = &v41;
  a3(sub_1B08D3E00, v21);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v39 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B80, &qword_1B0E9F5E0);
  sub_1B08D3E3C();
  v11 = sub_1B0E44FF8();
  sub_1B039E440(&v39);
  v38 = v11;
  v13 = sub_1B08D3EC4();
  v14 = sub_1B039CA88(sub_1B08D1310, 0, v16, &unk_1F26DC948, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v12);
  sub_1B039E440(&v38);
  v40 = v14;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v36 = a1;
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B88, &unk_1B0E9F5E8);
    sub_1B0E46518();
    v9 = v34;
    v10 = v35;
    if (!v35)
    {
      break;
    }

    v32 = v34;
    v33 = v35;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v30[0] = v9;
    v30[1] = v10;
    sub_1B0E44778();
    sub_1B03B1198(v30);
    v28 = v30[2];
    v29 = v31 & 1;
    if (v31)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B08CF7DC();
      v25 = v4;
      v26 = v5;
      v27 = v6 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2B30, &unk_1B0E9F5A0);
      sub_1B0E452E8();
    }
  }

  sub_1B039E440(v37);
  v8 = v40;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B039E440(&v40);
  sub_1B039E440(&v41);

  return v8;
}

double sub_1B08CFD88(uint64_t a1)
{
  v1 = sub_1B0E43028();
  sub_1B08CFE20(v1);
  v6 = v2;
  v3 = sub_1B0E43108();
  (*(*(v3 - 8) + 8))(a1);
  return v6;
}

double sub_1B08CFEB0(double a1)
{
  v4 = sub_1B043A0CC(a1, *v1, v1[1]) + 1.0;
  sub_1B0E46B78();
  result = v5;
  *v1 = a1;
  v1[1] = v5;
  return result;
}

uint64_t sub_1B08CFF7C()
{
  sub_1B0E46A48();
  *v0 = "d";
  *(v0 + 8) = 1;
  *(v0 + 16) = 2;
  *(v0 + 24) = "v";
  *(v0 + 32) = 1;
  *(v0 + 40) = 2;
  sub_1B0394964();
  v4 = sub_1B0E467E8();

  if (!v4)
  {
    v3 = 0;
LABEL_6:

    return v3;
  }

  if (v4 == 1)
  {
    v3 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_1B08D00B0()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B08CFF7C();

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 & 1;
  }
}

uint64_t sub_1B08D0154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v15 = a2;
  v7[5] = a3;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BC0, &qword_1B0E9FBB0);
  v9 = *(v16 - 8);
  v10 = v16 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v7 - v11;
  v24 = MEMORY[0x1EEE9AC00](v8);
  v22 = v3;
  v23 = v4;
  v12 = v24[3];
  v13 = v24[4];
  __swift_project_boxed_opaque_existential_0(v24, v12);
  sub_1B043BCAC();
  sub_1B0E46D48();
  v5 = v17;
  v21 = 0;
  sub_1B0E46968();
  v18 = v5;
  v19 = v5;
  if (v5)
  {
    v7[1] = v19;
  }

  else
  {
    v20 = 1;
    sub_1B0E46968();
    v7[3] = 0;
    v7[4] = 0;
  }

  return (*(v9 + 8))(v14, v16);
}

uint64_t sub_1B08D04B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B08CFF7C();
  *a2 = result;
  return result;
}

uint64_t sub_1B08D04E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_1B043BD5C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B08D0520@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B08D00B0();
  *a1 = result;
  return result;
}

void sub_1B08D060C(long double a1, double a2)
{
  v4 = round(a1);
  if (((*&v4 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v4 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v4 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v2 = round(a2 * 1000.0);
  if (((*&v2 >> 52) & 0x7FFLL) == 0x7FF)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 <= -9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (v2 >= 9.22337204e18)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v4);
}

uint64_t sub_1B08D0930(long double a1, double a2)
{
  sub_1B08D060C(a1, a2);
  sub_1B08D3FC8();
  return sub_1B0E428F8();
}

uint64_t sub_1B08D0A00()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B08D0A38()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40) & 1;
  return result;
}

uint64_t sub_1B08D0A4C(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 24) = result;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  return result;
}

uint64_t sub_1B08D0A64()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = sub_1B08D0AC4(v2, v3);

  return v4;
}

uint64_t sub_1B08D0AC4(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v18 = 0;
  v19 = 0;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v6 - v11;
  v18 = v2;
  v19 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E42E38();

  v15 = sub_1B0E42E68();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  if ((*(v16 + 48))(v14, 1) == 1)
  {
    sub_1B06E3800(v14);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v7 = sub_1B0E42E08();
    v8 = v4;
    (*(v16 + 8))(v14, v15);
    v9 = v7;
    v10 = v8;
  }

  return v9;
}

BOOL sub_1B08D0C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = MEMORY[0x1B2726DE0](a1, a2, a3, a4);

  return (v9 & 1) != 0;
}

uint64_t sub_1B08D0D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a1;
  v6[2] = a2;
  v6[3] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6[0] = a2;
  v6[1] = a3;
  sub_1B0E46C48();
  return sub_1B03B1198(v6);
}

uint64_t sub_1B08D0E04()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B08D0DA8();
}

uint64_t sub_1B08D0EC4()
{
  result = *v0;
  v2 = v0[1];
  sub_1B08D0E78();
  return result;
}

void sub_1B08D0EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = v9;
  v12[1] = v10;
  sub_1B08CE068();
  v11 = sub_1B0E45528();
  sub_1B03B1198(v12);
  if (v11)
  {
    if (v8)
    {
      v4 = 0.0;
      v5 = 1;
    }

    else
    {
      v4 = sub_1B043C320(v6, v7);
      v5 = 0;
    }

    if ((v5 & 1) == 0 && v4 >= 0.01)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BC8, &qword_1B0E9FBB8);
      sub_1B0E44788();
    }
  }
}

BOOL sub_1B08D10D4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v10 = a1[1];
  v19 = *a1;
  v20 = v10;
  v7 = *a2;
  v8 = a2[1];
  v17 = *a2;
  v18 = v8;
  v16 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = *a3;
  v14[0] = v19;
  v14[1] = v10;
  sub_1B08CE068();
  sub_1B0E44778();
  sub_1B03B1198(v14);
  if (v15)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  else
  {
    v6 = *&v14[2];
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *a3;
  v12[0] = v7;
  v12[1] = v8;
  sub_1B0E44778();
  sub_1B03B1198(v12);
  if (v13)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  else
  {
    v5 = *&v12[2];
  }

  return v5 < v6;
}

void sub_1B08D1310(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08CF7DC();
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4 & 1;
}

BOOL sub_1B08D138C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B08D0C60(v4, v7, a2, a3);

  return v8;
}

uint64_t sub_1B08D1414(uint64_t a1, void *a2)
{
  memset(__b, 0, 0x29uLL);
  v18 = 0;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  __b[0] = *a1;
  __b[1] = v11;
  __b[2] = v12;
  __b[3] = v2;
  __b[4] = v3;
  LOBYTE(__b[5]) = v4 & 1;
  v18 = a2;
  v17 = __b[0];
  v20 = *a2;
  v16 = v20;
  v14 = static MailboxRowID.== infix(_:_:)(&v17, &v16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B043C08C(a2, v15);
  if (v14)
  {
    v9 = 1;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = a2[1];
    v7 = a2[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v8 = sub_1B08D0C60(v11, v12, v6, v7);

    v9 = v8;
  }

  sub_1B043C118(a2);
  return v9 & 1;
}

uint64_t sub_1B08D1574@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v39 = a1;
  v37 = a2;
  v38 = a3;
  sub_1B0E44838();
  v23 = sub_1B0E44AC8();

  v24 = [a1 preparedStatementForQueryString_];
  MEMORY[0x1E69E5920](v23);
  if (v24)
  {
    v18 = v24;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v36 = v18;
  memset(__src, 0, 41);
  v35[0] = sub_1B0E46A28();
  v35[1] = v4;
  v5 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v5);

  v33 = a2;
  v34 = a3;
  sub_1B08D4D14();
  sub_1B0E469F8();
  v6 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v6);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v35);
  sub_1B0E44C88();
  v16 = sub_1B0E44AC8();
  v17 = [v16 ef_SQLBinding];
  MEMORY[0x1E69E5920](v16);
  if (v17)
  {
    [v17 bindToStatement:v18 usingIndex:0];
    MEMORY[0x1E69E5920](v17);
  }

  v40 = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = __src;

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B08D4D90;
  *(v11 + 24) = v12;

  v31 = sub_1B043B748;
  v32 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = 0;
  v29 = sub_1B043B530;
  v30 = &block_descriptor_85;
  v14 = _Block_copy(&aBlock);

  v25 = v40;
  v15 = [v18 executeUsingBlock:v14 error:&v25];
  v13 = v25;
  MEMORY[0x1E69E5928](v25);
  v7 = v40;
  v40 = v13;
  MEMORY[0x1E69E5920](v7);
  _Block_release(v14);
  if (v15)
  {
    memcpy(a4, __src, 0x29uLL);
    MEMORY[0x1E69E5920](v18);
    sub_1B04197E4(sub_1B08D4D90);
    result = sub_1B04197E4(sub_1B043B748);
    v9 = __OFSUB__(*MEMORY[0x1E69E9840], v42);
  }

  else
  {
    v10 = v40;
    sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v10);
    swift_willThrow();
    sub_1B043C118(__src);
    MEMORY[0x1E69E5920](v18);
    sub_1B04197E4(sub_1B08D4D90);
    result = sub_1B04197E4(sub_1B043B748);
    *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1B08D1ACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(__b, 0, 0x29uLL);
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  MEMORY[0x1E69E5928](a1);
  result = sub_1B043B754(a1, &v17);
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  if (v19)
  {
    __b[0] = v17;
    __b[1] = v18;
    __b[2] = v19;
    __b[3] = v20;
    __b[4] = v21;
    LOBYTE(__b[5]) = v22 & 1;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = *(a4 + 16);
    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 16) = v12;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
    *(a4 + 40) = v15 & 1;
  }

  return result;
}

uint64_t sub_1B08D1C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v25 = a2;
  v22 = a3;
  v26 = sub_1B08D4044;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v42 = a3;
  v21 = *(a3 - 8);
  v15 = a3 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v11 - v13;
  v41 = v11 - v13;
  v16 = sub_1B0E45D88();
  v18 = *(*(v16 - 8) + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v11 - v17;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11 - v17);
  v23 = v11 - v20;
  v40 = v11 - v20;
  v38 = v24;
  v39 = v5;
  v37 = v4;
  v6 = *(v21 + 56);
  v29 = 1;
  v6();
  v27 = *(v4 + 16);
  v30 = *(v4 + 24);

  v7 = sub_1B0E44838();
  v28 = v8;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v31 = v27(v7);

  v36 = v31 & 1 & v29;

  v9 = v31;
  if (v31)
  {
    sub_1B039A874(v23, v19, v22, v16);
    if ((*(v21 + 48))(v19, 1, v22) != 1)
    {
      (*(v21 + 32))(v14, v19, v22);
      (*(v21 + 16))(v12, v14, v22);
      (*(v21 + 8))(v14, v22);
      return sub_1B08D40E0(v23, v22);
    }

    v9 = sub_1B08D40E0(v19, v22);
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v9);
  sub_1B08D4064();
  v11[2] = swift_allocError();
  swift_willThrow();
  return sub_1B08D40E0(v23, v22);
}

uint64_t sub_1B08D2094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v59 = v117;
  v60 = a3;
  v63 = a1;
  v66 = a2;
  v73 = sub_1B08D4CD0;
  v75 = sub_1B06BCD8C;
  v79 = sub_1B08D4CD8;
  v83 = sub_1B074E950;
  v85 = sub_1B0398F5C;
  v87 = sub_1B0398F5C;
  v89 = sub_1B03992D4;
  v91 = sub_1B0398F5C;
  v93 = sub_1B0398F5C;
  v96 = sub_1B074E9C8;
  v62 = sub_1B08D4CE0;
  v115 = 0;
  v107 = 0;
  v108 = 0;
  v69 = sub_1B0E439A8();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v64 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69);
  v3 = &v37 - v64;
  v65 = &v37 - v64;
  v71 = __dst;
  v72 = 41;
  memcpy(__dst, v4, 0x29uLL);
  v115 = v66;
  v5 = sub_1B08CA358();
  (*(v67 + 16))(v3, v5, v69);
  sub_1B043C08C(v71, v114);
  v70 = 57;
  v81 = 7;
  v74 = swift_allocObject();
  memcpy((v74 + 16), v71, v72);
  sub_1B043C08C(v71, v113);
  v82 = swift_allocObject();
  memcpy((v82 + 16), v71, v72);
  v100 = sub_1B0E43988();
  v101 = sub_1B0E458C8();
  v77 = 17;
  v86 = swift_allocObject();
  *(v86 + 16) = 0;
  v88 = swift_allocObject();
  v78 = 8;
  *(v88 + 16) = 8;
  v80 = 32;
  v6 = swift_allocObject();
  v7 = v74;
  v76 = v6;
  *(v6 + 16) = v73;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v76;
  v90 = v8;
  *(v8 + 16) = v75;
  *(v8 + 24) = v9;
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  v94 = swift_allocObject();
  *(v94 + 16) = v78;
  v10 = swift_allocObject();
  v11 = v82;
  v84 = v10;
  *(v10 + 16) = v79;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v84;
  v97 = v12;
  *(v12 + 16) = v83;
  *(v12 + 24) = v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v95 = sub_1B0E46A48();
  v98 = v14;

  v15 = v86;
  v16 = v98;
  *v98 = v85;
  v16[1] = v15;

  v17 = v88;
  v18 = v98;
  v98[2] = v87;
  v18[3] = v17;

  v19 = v90;
  v20 = v98;
  v98[4] = v89;
  v20[5] = v19;

  v21 = v92;
  v22 = v98;
  v98[6] = v91;
  v22[7] = v21;

  v23 = v94;
  v24 = v98;
  v98[8] = v93;
  v24[9] = v23;

  v25 = v97;
  v26 = v98;
  v98[10] = v96;
  v26[11] = v25;
  sub_1B0394964();

  if (os_log_type_enabled(v100, v101))
  {
    v52 = sub_1B0E45D78();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v51 = 0;
    v53 = sub_1B03949A8(0);
    v54 = sub_1B03949A8(v51);
    v55 = &v106;
    v106 = v52;
    v56 = &v105;
    v105 = v53;
    v57 = &v104;
    v104 = v54;
    sub_1B0394A48(0, &v106);
    sub_1B0394A48(2, v55);
    v27 = v61;
    v102 = v85;
    v103 = v86;
    sub_1B03949FC(&v102, v55, v56, v57);
    v58 = v27;
    if (v27)
    {

      __break(1u);
    }

    else
    {
      v102 = v87;
      v103 = v88;
      sub_1B03949FC(&v102, &v106, &v105, &v104);
      v47 = 0;
      v102 = v89;
      v103 = v90;
      sub_1B03949FC(&v102, &v106, &v105, &v104);
      v46 = 0;
      v102 = v91;
      v103 = v92;
      sub_1B03949FC(&v102, &v106, &v105, &v104);
      v45 = 0;
      v102 = v93;
      v103 = v94;
      sub_1B03949FC(&v102, &v106, &v105, &v104);
      v44 = 0;
      v102 = v96;
      v103 = v97;
      sub_1B03949FC(&v102, &v106, &v105, &v104);
      v43 = 0;
      _os_log_impl(&dword_1B0389000, v100, v101, "Updating mailbox row %lld to %f", v52, 0x16u);
      v42 = 0;
      sub_1B03998A8(v53);
      sub_1B03998A8(v54);
      sub_1B0E45D58();

      v48 = v43;
    }
  }

  else
  {

    v48 = v61;
  }

  v40 = v48;
  MEMORY[0x1E69E5920](v100);
  (*(v67 + 8))(v65, v69);
  v28 = v59;
  *v59 = *&__dst[3];
  v117[16] = __dst[5];
  v109 = *v28;
  v110 = __dst[5];

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BE8, &qword_1B0E9FBD8);
  v30 = v40;
  sub_1B039A570(v62, v66, v29, MEMORY[0x1E69E73E0], MEMORY[0x1E6969080], v49, &v111);
  v41 = v30;
  if (v30)
  {

    __break(1u);
  }

  else
  {

    v31 = v111;
    v38 = v111;
    v32 = v112;
    v39 = v112;
    v107 = v111;
    v108 = v112;
    __dst[6] = __dst[0];
    *v60 = __dst[0];
    sub_1B070E18C(v31, v32);
    v33 = v60;
    v34 = v38;
    v35 = v39;
    v60[1] = v38;
    v33[2] = v35;
    return sub_1B070E144(v34, v35);
  }

  return result;
}

double sub_1B08D29D8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v3 = 0.0;
    v4 = 1;
  }

  else
  {
    *&v3 = *(a1 + 32) >> 64;
    v4 = 0;
  }

  if (v4)
  {
    return 0.0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B08D2A9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B08D0930(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B08D2B00(void *a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v40 = 0;
  v41 = 0;
  v39 = a1;
  v38 = a2;
  sub_1B0E44838();
  v32 = sub_1B0E44AC8();

  v33 = [a1 preparedStatementForQueryString_];
  MEMORY[0x1E69E5920](v32);
  if (v33)
  {
    v28 = v33;
  }

  else
  {
    LOBYTE(v6) = 2;
    v7 = 548;
    LODWORD(v8) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v37 = v28;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v35[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BD0, &qword_1B0E9FBC0);
  sub_1B08D4BE4();
  sub_1B0E45798();
  for (i = v30; ; i = v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BD8, &unk_1B0E9FBC8);
    sub_1B0E46518();
    v25 = v48;
    v26 = v49;
    if ((v49 & 0xF000000000000000) == 0xB000000000000000)
    {
      sub_1B039E440(v36);
      result = MEMORY[0x1E69E5920](v28);
      v3 = __OFSUB__(*MEMORY[0x1E69E9840], v50);
      return result;
    }

    v24 = v49;
    v23 = v48;
    v44 = v47;
    v45 = v48;
    v46 = v49;
    sub_1B070E18C(v48, v49);
    if ((v26 & 0xF000000000000000) == 0xF000000000000000)
    {
      sub_1B08D4C6C();
      v21 = sub_1B08C0C38();
      v22 = [v21 ef_SQLBinding];
      MEMORY[0x1E69E5920](v21);
      if (v22)
      {
        [v22 bindToStatement:v28 usingIndex:0];
        MEMORY[0x1E69E5920](v22);
      }
    }

    else
    {
      v40 = v25;
      v41 = v26;
      sub_1B03B2000(v25, v26);
      v19 = sub_1B0E42F18();
      v20 = [v19 ef_SQLBinding];
      MEMORY[0x1E69E5920](v19);
      if (v20)
      {
        [v20 bindToStatement:v28 usingIndex:0];
        MEMORY[0x1E69E5920](v20);
      }

      sub_1B0391D50(v23, v24);
      sub_1B0391D50(v23, v24);
    }

    sub_1B070E18C(v25, v26);
    v17 = sub_1B0E46BF8();
    v18 = [v17 ef_SQLBinding];
    MEMORY[0x1E69E5920](v17);
    if (v18)
    {
      [v18 bindToStatement:v28 usingIndex:1];
      MEMORY[0x1E69E5920](v18);
    }

    sub_1B070E144(v25, v26);
    v43 = 0;
    v35[0] = 0;
    v16 = [v28 executeUsingBlock:0 error:{v35, v6, v7, v8}];
    v15 = v35[0];
    MEMORY[0x1E69E5928](v35[0]);
    v4 = v43;
    v43 = v15;
    MEMORY[0x1E69E5920](v4);
    if (v16)
    {
      v14 = i;
    }

    else
    {
      v10 = v43;
      v11 = sub_1B0E42CD8();
      MEMORY[0x1E69E5920](v10);
      swift_willThrow();

      v14 = 0;
    }

    v42 = 0;
    v34 = 0;
    v13 = [v28 resetWithError_];
    v12 = v34;
    MEMORY[0x1E69E5928](v34);
    v5 = v42;
    v42 = v12;
    MEMORY[0x1E69E5920](v5);
    if ((v13 & 1) == 0)
    {
      break;
    }

    sub_1B070E144(v25, v26);
  }

  v9 = v42;
  sub_1B0E42CD8();
  MEMORY[0x1E69E5920](v9);
  swift_willThrow();
  sub_1B070E144(v23, v24);
  sub_1B039E440(v36);
  result = MEMORY[0x1E69E5920](v28);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B08D3198@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B08D320C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v24 = a1;
  v25 = a2;
  v22 = a3;
  v26 = sub_1B08D4044;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v36 = 0;
  v42 = a3;
  v21 = *(a3 - 8);
  v15 = a3 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v14 = v11 - v13;
  v41 = v11 - v13;
  v16 = sub_1B0E45D88();
  v18 = *(*(v16 - 8) + 64);
  v17 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v11 - v17;
  v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11 - v17);
  v23 = v11 - v20;
  v40 = v11 - v20;
  v38 = v24;
  v39 = v5;
  v37 = v4;
  v6 = *(v21 + 56);
  v29 = 1;
  v6();
  v27 = *(v4 + 32);
  v30 = *(v4 + 40);

  v7 = sub_1B0E44838();
  v28 = v8;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v31 = v27(v7);

  v36 = v31 & 1 & v29;

  v9 = v31;
  if (v31)
  {
    sub_1B039A874(v23, v19, v22, v16);
    if ((*(v21 + 48))(v19, 1, v22) != 1)
    {
      (*(v21 + 32))(v14, v19, v22);
      (*(v21 + 16))(v12, v14, v22);
      (*(v21 + 8))(v14, v22);
      return sub_1B08D40E0(v23, v22);
    }

    v9 = sub_1B08D40E0(v19, v22);
  }

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v9);
  sub_1B08D4184();
  v11[2] = swift_allocError();
  swift_willThrow();
  return sub_1B08D40E0(v23, v22);
}

uint64_t sub_1B08D3624(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = a1;
  sub_1B0E44838();
  v12 = sub_1B0E44AC8();

  v13 = [a1 preparedStatementForQueryString_];
  MEMORY[0x1E69E5920](v12);
  if (v13)
  {
    v10 = v13;
  }

  else
  {
    LOBYTE(v3) = 2;
    v4 = 566;
    LODWORD(v5) = 0;
    sub_1B0E465A8();
    __break(1u);
  }

  v15 = v10;
  v17 = 0;
  v14 = 0;
  v9 = [v10 executeUsingBlock:0 error:{&v14, v3, v4, v5}];
  v8 = v14;
  MEMORY[0x1E69E5928](v14);
  v1 = v17;
  v17 = v8;
  MEMORY[0x1E69E5920](v1);
  if ((v9 & 1) == 0)
  {
    v6 = v17;
    v7 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v6);
    swift_willThrow();
  }

  result = MEMORY[0x1E69E5920](v10);
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B08D3834@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = 0;
  return result;
}

uint64_t sub_1B08D3884(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a5;
  v22 = 0;
  v21 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v23 = a5;
  v14 = sub_1B0E45D88();
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v9 - v15;
  v22 = MEMORY[0x1EEE9AC00](v13);
  v21 = v6;
  v19 = v7;
  v20 = a4;
  v7();
  v17 = 0;
  (*(*(v10 - 8) + 56))(v16, 0, 1);
  sub_1B08D49E4(v16, v12, v10, v14);
  return 1;
}

uint64_t sub_1B08D3A74@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1B08CE4B0(a1);
}

unint64_t sub_1B08D3B2C()
{
  v2 = qword_1EB6DAEA0;
  if (!qword_1EB6DAEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B10, &qword_1B0E9F578);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D3BE0()
{
  v2 = qword_1EB6DAEB0;
  if (!qword_1EB6DAEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B10, &qword_1B0E9F578);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D3C68()
{
  v2 = qword_1EB6DAE98;
  if (!qword_1EB6DAE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B10, &qword_1B0E9F578);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D3D78()
{
  v2 = qword_1EB6DAEC8;
  if (!qword_1EB6DAEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B70, &qword_1B0E9F5D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D3E3C()
{
  v2 = qword_1EB6DB810;
  if (!qword_1EB6DB810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B80, &qword_1B0E9F5E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D3EC4()
{
  v2 = qword_1EB6DAEC0;
  if (!qword_1EB6DAEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2B70, &qword_1B0E9F5D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D3F4C()
{
  v2 = qword_1EB6E2B90;
  if (!qword_1EB6E2B90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2B90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D3FC8()
{
  v2 = qword_1EB6DA730;
  if (!qword_1EB6DA730)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D4064()
{
  v2 = qword_1EB6E2B98;
  if (!qword_1EB6E2B98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2B98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08D40E0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

unint64_t sub_1B08D4184()
{
  v2 = qword_1EB6E2BA0;
  if (!qword_1EB6E2BA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2BA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFMailboxFrecencyController()
{
  v2 = qword_1EB6E2BA8;
  if (!qword_1EB6E2BA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2BA8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B08D4278(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B08D4390(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 16) = 0;
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

uint64_t sub_1B08D45A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
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

uint64_t sub_1B08D46C0(uint64_t result, int a2, int a3)
{
  v3 = (result + 41);
  if (a2 < 0)
  {
    *(result + 24) = 0;
    *(result + 16) = 0;
    *(result + 8) = 0;
    *result = a2 + 0x80000000;
    *(result + 32) = 0;
    *(result + 40) = 0;
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
      *(result + 16) = (a2 - 1);
    }
  }

  return result;
}

unint64_t sub_1B08D48D4()
{
  v2 = qword_1EB6E2BB0;
  if (!qword_1EB6E2BB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2BB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D4968()
{
  v2 = qword_1EB6DA758;
  if (!qword_1EB6DA758)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA758);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B08D49E4(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 48);
  if (v10())
  {
    if ((v10)(a1, 1, a3))
    {
      memcpy(a2, a1, *(*(a4 - 8) + 64));
    }

    else
    {
      (*(v9 + 32))(a2, a1, a3);
      (*(v9 + 56))(a2, 0, 1, a3);
    }
  }

  else if ((v10)(a1, 1, a3))
  {
    (*(v9 + 8))(a2, a3);
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 40))(a2, a1, a3);
  }

  return a2;
}

unint64_t sub_1B08D4BE4()
{
  v2 = qword_1EB6DB2A0;
  if (!qword_1EB6DB2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2BD0, &qword_1B0E9FBC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D4C6C()
{
  v2 = qword_1EB6E2BE0;
  if (!qword_1EB6E2BE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2BE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B08D4D14()
{
  v2 = qword_1EB6DA750;
  if (!qword_1EB6DA750)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA750);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B08D4E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B07C9120();
  v11 = sub_1B08D5128(a1, a2, a3);
  v12 = v3;
  if (v8)
  {
    return v5;
  }

  v6 = sub_1B08D5D08(v11, v3);
  sub_1B0391D50(v11, v12);
  return v6;
}

uint64_t sub_1B08D4FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B07C9120();
  v11 = sub_1B08D5128(a1, a2, a3);
  v12 = v3;
  if (v8)
  {
    return v5;
  }

  v6 = static MFMailboxPersistence_iOS.mailboxAttributes(data:)(v11, v3);
  sub_1B0391D50(v11, v12);
  return v6;
}

uint64_t sub_1B08D5128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v22 = a2;
  v19 = a3;
  v4 = v3;
  v25 = v4;
  v47 = sub_1B08D6054;
  v60 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v20 = 0;
  v35 = sub_1B0E42CF8();
  v28 = *(v35 - 8);
  v29 = v35 - 8;
  v21 = (v28[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = v16 - v21;
  v41 = sub_1B0E42E68();
  v39 = *(v41 - 8);
  v40 = v41 - 8;
  v24 = *(v39 + 64);
  v23 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v34);
  v42 = v16 - v23;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v45 = v16 - v8;
  v60 = v16 - v8;
  v58 = v26;
  v59 = v9;
  v57 = a3;
  v56 = v25;
  v27 = v55;
  v55[0] = v26;
  v55[1] = v9;
  v10 = *MEMORY[0x1E6968F58];
  v31 = v28[13];
  v30 = v28 + 13;
  v31(v7, v10);
  v33 = sub_1B07C7F5C();
  v32 = MEMORY[0x1E69E6158];
  sub_1B0E42E58();
  v37 = v28[1];
  v36 = v28 + 1;
  v37(v34, v35);
  v11 = sub_1B0E44838();
  v38 = v54;
  v54[0] = v11;
  v54[1] = v12;
  (v31)(v34, *MEMORY[0x1E6968F68], v35);
  sub_1B0E42E58();
  v37(v34, v35);
  sub_1B03B1198(v38);
  v43 = *(v39 + 8);
  v44 = v39 + 8;
  v43(v42, v41);
  v13 = [objc_opt_self() mailboxCacheQueue];
  v14 = v46;
  v48 = v13;
  v51 = v45;
  sub_1B0E459D8();
  v49 = v14;
  v50 = v14;
  if (v14)
  {
    v16[0] = v50;
    MEMORY[0x1E69E5920](v48);
    v43(v45, v41);
    return v16[1];
  }

  else
  {
    MEMORY[0x1E69E5920](v48);
    v17 = v52;
    v18 = v53;
    v43(v45, v41);
    return v17;
  }
}

uint64_t static MFMailboxPersistence_iOS.mailboxAttributes(data:)(uint64_t a1, uint64_t a2)
{
  v54 = 0;
  memset(__b, 0, sizeof(__b));
  v47 = 0;
  v46 = 0;
  v45[0] = 0;
  v45[1] = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v56 = a1;
  v57 = a2;
  v55 = v2;
  sub_1B0E42C18();
  v54 = sub_1B0E42C08();
  sub_1B08D607C();
  sub_1B0E42BF8();
  if (v30)
  {

    return v20;
  }

  v22 = v49;
  v23 = v50;
  v27 = v51;
  v24 = v52;
  v25 = v53;
  __b[0] = v49;
  __b[1] = v50;
  __b[2] = v51;
  __b[3] = v52;
  __b[4] = v53;
  v26 = swift_allocObject();
  v47 = v26 + 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BF0, &unk_1B0E9FBE0);
  sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  type metadata accessor for MailboxAttributes();
  sub_1B08A4220();
  *(v26 + 16) = sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v27)
  {
    v34 = v23;
    v35 = v27;
    v3 = sub_1B0E44DA8();
    if ((v3 & 1) != 0 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), !v25))
    {
    }

    else
    {
      v32 = v24;
      v33 = v25;
      v4 = sub_1B0E44DA8();
      if ((v4 & 1) == 0)
      {
        v31[3] = v23;
        v31[4] = v27;
        v31[1] = v24;
        v31[2] = v25;
        sub_1B03F5BE0();
        v19 = MEMORY[0x1E69E6158];
        sub_1B08D64D8();
        v31[0] = sub_1B0E45678();
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C08, &unk_1B0E9FC00);
        v5 = sub_1B08D6558();
        v21 = sub_1B039CA88(sub_1B08D64F0, 0, v18, v19, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v20);
        sub_1B039E440(v31);
        v46 = v21;

        goto LABEL_14;
      }
    }
  }

  v46 = sub_1B0E46A48();
LABEL_14:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BF8, &qword_1B0E9FBF0);
  sub_1B08D60F8();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C00, &qword_1B0E9FBF8);
    sub_1B0E46518();
    v16 = v41;
    v17 = v42;
    if (!v42)
    {
      break;
    }

    v58 = v39;
    v59 = v40 & 1;
    v60 = v41;
    v61 = v42;
    v62 = v43;
    v14 = v46;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = v14;
    sub_1B0750598();
    v15 = sub_1B0E45748();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v15)
    {
      v13 = 0;
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0E453A8();
      v10 = v36;
      v11 = v37;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = MEMORY[0x1B2726DE0](v10, v11, v16, v17);

      v13 = v12;
    }

    if (v13)
    {
      v9 = sub_1B0E46A48();
      sub_1B08D61B0(&v58, v9, v26);
    }

    else
    {
      v8 = v46;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B08D61B0(&v58, v8, v26);
    }
  }

  sub_1B039E440(v45);
  swift_beginAccess();
  v7 = *(v26 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  sub_1B039E440(&v46);

  return v7;
}

uint64_t sub_1B08D5D08(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v15 = 0u;
  v16 = 0u;
  v10 = 0;
  v11 = 0;
  v21 = a1;
  v22 = a2;
  sub_1B0E42C18();
  v19 = sub_1B0E42C08();
  sub_1B08D65E0();
  sub_1B0E42BF8();
  if (v7)
  {

    return v4;
  }

  else
  {
    v15 = v17;
    v16 = v18;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = v18;
    sub_1B03F5BE0();
    sub_1B0E45728();
    if (v13)
    {
      v10 = v12;
      v11 = v13;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v8 = v17;
      if (*(&v17 + 1))
      {
        v9 = v8;
      }

      else
      {
        *&v9 = sub_1B0E44838();
        *(&v9 + 1) = v2;
      }

      v5 = v9;

      return v5;
    }

    else
    {

      return 0;
    }
  }
}

uint64_t sub_1B08D5FC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1B08D6180();
  result = sub_1B0E42E98();
  if (!v4)
  {
    *a1 = result;
    a1[1] = v2;
  }

  return result;
}

unint64_t sub_1B08D607C()
{
  v2 = qword_1EB6DA8B8;
  if (!qword_1EB6DA8B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D60F8()
{
  v2 = qword_1EB6DAF08;
  if (!qword_1EB6DAF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2BF8, &qword_1B0E9FBF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08D6180()
{
  sub_1B08D9280(0);

  return 0;
}

uint64_t sub_1B08D61B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v18[4] = a1;
  v18[3] = a2;
  v18[2] = a3 + 16;
  sub_1B0E46A48();
  v6 = v3;
  v22 = *(a1 + 1);
  sub_1B070B280(&v22, v18);
  *v6 = v22;
  sub_1B0394964();
  v7 = sub_1B0E45238();

  v17 = v7;
  v20 = *a1;
  v21 = *(a1 + 8);
  v28 = v20;
  v29 = v21;
  if ((v21 & 1) == 0 && v28)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E22F8, &qword_1B0E9C150);
    sub_1B0E44788();
    swift_endAccess();
  }

  v19 = a1[4];
  sub_1B074E7A8(&v19, &v16);
  v30 = v19;
  if (v19)
  {
    v31 = v30;
    sub_1B074E7A8(&v31, &v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BF8, &qword_1B0E9FBF0);
    sub_1B08D60F8();
    sub_1B0E45798();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C00, &qword_1B0E9FBF8);
      sub_1B0E46518();
      if (!v12)
      {
        break;
      }

      v23 = v9;
      v24 = v10 & 1;
      v25 = v11;
      v26 = v12;
      v27 = v13;
      sub_1B08D61B0(&v23, v7, a3);
    }

    sub_1B039E440(v15);
    sub_1B039E440(&v31);
  }
}

uint64_t sub_1B08D64F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  result = sub_1B0E44EC8();
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_1B08D6558()
{
  v2 = qword_1EB6E2C10;
  if (!qword_1EB6E2C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2C08, &unk_1B0E9FC00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2C10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D65E0()
{
  v2 = qword_1EB6DA898;
  if (!qword_1EB6DA898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08D665C(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = sub_1B0E44838();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x1B2726DE0](v12[0], v2, a1, a2);
  sub_1B03B1198(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11[0] = sub_1B0E44838();
  v11[1] = v3;
  v6 = MEMORY[0x1B2726DE0](v11[0], v3, a1, a2);
  sub_1B03B1198(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_1B08D685C()
{
  v2 = qword_1EB6E2C18;
  if (!qword_1EB6E2C18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2C18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08D6964(uint64_t *a1)
{
  v24 = a1;
  v37 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C50, &qword_1B0EA0288);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = v8 - v28;
  v37 = MEMORY[0x1EEE9AC00](v24);
  v38 = 0;
  v39 = 0;
  v31 = v37[3];
  v32 = v37[4];
  __swift_project_boxed_opaque_existential_0(v37, v31);
  sub_1B08D6D24();
  v1 = v30;
  sub_1B0E46D18();
  v33 = v1;
  v34 = v1;
  if (v1)
  {
    v10 = v34;
  }

  else
  {
    v36 = 0;
    v2 = sub_1B0E46818();
    v20 = 0;
    v21 = v2;
    v22 = v3;
    v23 = 0;
    v38 = v2;
    v39 = v3;

    v4 = v20;
    v35 = 1;
    v5 = sub_1B0E46848();
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v4;
    if (!v4)
    {
      v14 = v18;
      v13 = v17;
      v11 = &v38;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v40 = v13;
      v41 = v14;
      (*(v26 + 8))(v29, v25);
      v15 = v38;
      v12 = v39;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_destroy_boxed_opaque_existential_0(v24);
      sub_1B06FF6F0(v11);
      return v15;
    }

    v9 = v19;
    (*(v26 + 8))(v29, v25);
    v10 = v9;
  }

  v8[0] = v10;
  __swift_destroy_boxed_opaque_existential_0(v24);
  sub_1B03B1198(&v38);
  return v8[1];
}

uint64_t sub_1B08D6CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B08D665C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1B08D6D24()
{
  v2 = qword_1EB6DA8B0;
  if (!qword_1EB6DA8B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08D6DD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B08D6964(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1B08D6E5C()
{
  result = *v0;
  v2 = v0[1] & 1;
  return result;
}

uint64_t sub_1B08D6E6C(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1B08D6E80()
{
  sub_1B0E46A48();
  *v0 = "MailboxAttributes";
  *(v0 + 8) = 17;
  *(v0 + 16) = 2;
  *(v0 + 24) = "MailboxName";
  *(v0 + 32) = 11;
  *(v0 + 40) = 2;
  *(v0 + 48) = "MailboxChildren";
  *(v0 + 56) = 15;
  *(v0 + 64) = 2;
  sub_1B0394964();
  v4 = sub_1B0E467E8();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_8:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  return 3;
}

uint64_t sub_1B08D7000()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B08D6E80();

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t *sub_1B08D718C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v38 = a1;
  v53 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C58, &unk_1B0EA0290);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v14 - v42;
  v53 = MEMORY[0x1EEE9AC00](v38);
  v54 = 0;
  v55 = 1;
  v58 = 0;
  v45 = v53[3];
  v46 = v53[4];
  __swift_project_boxed_opaque_existential_0(v53, v45);
  sub_1B08D8094();
  v2 = v44;
  sub_1B0E46D18();
  v47 = v2;
  v48 = v2;
  if (v2)
  {
    v17 = v48;
    v18 = 4;
  }

  else
  {
    v52 = 0;
    v3 = sub_1B0E46828();
    v33 = 0;
    v34 = v3;
    v35 = v4;
    v36 = 0;
    v27 = v4;
    v28 = v3;
    v54 = v3;
    v55 = v4 & 1;
    v51 = 1;
    v5 = sub_1B0E46848();
    v29 = 0;
    v30 = v5;
    v31 = v6;
    v32 = 0;
    v56 = v5;
    v57 = v6;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BF8, &qword_1B0E9FBF0);
    v23 = &v49;
    v49 = 2;
    sub_1B08D90F0();
    v7 = v29;
    sub_1B0E46838();
    v25 = v7;
    v26 = v7;
    if (!v7)
    {
      v22 = v50;
      v19 = &v54;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v58 = v22;

      (*(v40 + 8))(v43, v39);
      v20 = v56;
      v21 = v57;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      __swift_destroy_boxed_opaque_existential_0(v38);
      result = sub_1B08D9248(v19);
      v9 = v27;
      v10 = v20;
      v11 = v21;
      v12 = v37;
      v13 = v22;
      *v37 = v28;
      *(v12 + 8) = v9 & 1;
      v12[2] = v10;
      v12[3] = v11;
      v12[4] = v13;
      return result;
    }

    v16 = v26;
    (*(v40 + 8))(v43, v39);
    v17 = v16;
    v18 = 6;
  }

  v15 = v18;
  v14 = v17;
  __swift_destroy_boxed_opaque_existential_0(v38);
  if ((v15 & 2) != 0)
  {
    sub_1B03B1198(&v56);
  }

  return sub_1B039E440(&v58);
}

uint64_t sub_1B08D7648()
{
  sub_1B0E46A48();
  *v0 = "mboxes";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  *(v0 + 24) = "namespace";
  *(v0 + 32) = 9;
  *(v0 + 40) = 2;
  *(v0 + 48) = "separator";
  *(v0 + 56) = 9;
  *(v0 + 64) = 2;
  sub_1B0394964();
  v4 = sub_1B0E467E8();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_8:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_8;
    case 2:
      v3 = 2;
      goto LABEL_8;
  }

  return 3;
}

uint64_t sub_1B08D77C4()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B08D7648();

  if (v2 == 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t *sub_1B08D7950@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v40 = a1;
  v55 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C48, &qword_1B0EA0280);
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = v15 - v44;
  v55 = MEMORY[0x1EEE9AC00](v40);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v47 = v55[3];
  v48 = v55[4];
  __swift_project_boxed_opaque_existential_0(v55, v47);
  sub_1B08D842C();
  v2 = v46;
  sub_1B0E46D18();
  v49 = v2;
  v50 = v2;
  if (v2)
  {
    v19 = v50;
    v20 = 6;
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2BF8, &qword_1B0E9FBF0);
    v35 = &v53;
    v53 = 0;
    sub_1B08D90F0();
    v3 = v49;
    sub_1B0E46868();
    v37 = v3;
    v38 = v3;
    if (v3)
    {
      v18 = v38;
      (*(v42 + 8))(v45, v41);
      v19 = v18;
      v20 = 6;
    }

    else
    {
      v56 = v54;
      v52 = 1;
      v4 = sub_1B0E46818();
      v31 = 0;
      v32 = v4;
      v33 = v5;
      v34 = 0;
      v57 = v4;
      v58 = v5;

      v6 = v31;
      v51 = 2;
      v7 = sub_1B0E46818();
      v27 = v6;
      v28 = v7;
      v29 = v8;
      v30 = v6;
      if (!v6)
      {
        v26 = v29;
        v25 = v28;
        v21 = &v56;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v59 = v25;
        v60 = v26;

        (*(v42 + 8))(v45, v41);
        v22 = v56;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v23 = v57;
        v24 = v58;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_destroy_boxed_opaque_existential_0(v40);
        result = sub_1B08D9204(v21);
        v10 = v23;
        v11 = v24;
        v12 = v25;
        v13 = v39;
        v14 = v26;
        *v39 = v22;
        v13[1] = v10;
        v13[2] = v11;
        v13[3] = v12;
        v13[4] = v14;
        return result;
      }

      v17 = v30;
      (*(v42 + 8))(v45, v41);
      v19 = v17;
      v20 = 7;
    }
  }

  v16 = v20;
  v15[1] = v19;
  __swift_destroy_boxed_opaque_existential_0(v40);
  if (v16)
  {
    sub_1B039E440(&v56);
  }

  v15[0] = &v56;
  sub_1B03B1198(&v57);
  return sub_1B03B1198(v15[0] + 24);
}

unint64_t sub_1B08D7E64()
{
  v2 = qword_1EB6E2C20;
  if (!qword_1EB6E2C20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2C20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08D7FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B08D6E80();
  *a2 = result;
  return result;
}

uint64_t sub_1B08D7FE8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_1B08D7098();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B08D8038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B08D7000();
  *a1 = result;
  return result;
}

unint64_t sub_1B08D8094()
{
  v2 = qword_1EB6DA8F0;
  if (!qword_1EB6DA8F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B08D8140@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B08D718C(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x28uLL);
  }

  return result;
}

unint64_t sub_1B08D81FC()
{
  v2 = qword_1EB6E2C28;
  if (!qword_1EB6E2C28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2C28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08D8348@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_1B08D7648();
  *a2 = result;
  return result;
}

uint64_t sub_1B08D8380@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  result = sub_1B08D785C();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B08D83D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B08D77C4();
  *a1 = result;
  return result;
}

unint64_t sub_1B08D842C()
{
  v2 = qword_1EB6DA8D0;
  if (!qword_1EB6DA8D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08D84D8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v3 = *(a1 + 24);
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

uint64_t sub_1B08D8618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B08D8824(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
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

uint64_t sub_1B08D893C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B08D8B64()
{
  v2 = qword_1EB6E2C30;
  if (!qword_1EB6E2C30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2C30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D8BF8()
{
  v2 = qword_1EB6E2C38;
  if (!qword_1EB6E2C38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2C38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D8C8C()
{
  v2 = qword_1EB6DA8C0;
  if (!qword_1EB6DA8C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D8D20()
{
  v2 = qword_1EB6DA8C8;
  if (!qword_1EB6DA8C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D8DB4()
{
  v2 = qword_1EB6DA8E0;
  if (!qword_1EB6DA8E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D8E48()
{
  v2 = qword_1EB6DA8E8;
  if (!qword_1EB6DA8E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D8EDC()
{
  v2 = qword_1EB6DA8A0;
  if (!qword_1EB6DA8A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D8F70()
{
  v2 = qword_1EB6DA8A8;
  if (!qword_1EB6DA8A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D9004()
{
  v2 = qword_1EB6E2C40;
  if (!qword_1EB6E2C40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2C40);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B08D9080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B08D7950(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x28uLL);
  }

  return result;
}

unint64_t sub_1B08D90F0()
{
  v2 = qword_1EB6DAF10;
  if (!qword_1EB6DAF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2BF8, &qword_1B0E9FBF0);
    sub_1B08D9188();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08D9188()
{
  v2 = qword_1EB6DA8D8;
  if (!qword_1EB6DA8D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA8D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B08D9204(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  v3 = a1[4];

  return a1;
}

uint64_t sub_1B08D9248(uint64_t a1)
{
  v1 = *(a1 + 24);

  v2 = *(a1 + 32);

  return a1;
}

uint64_t sub_1B08D9280(uint64_t result)
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
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for ReadingOptions();
    v1 = sub_1B0E45278();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_1B08D932C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s();
  sub_1B0E46358();
  v5 = sub_1B0E46348();
  (*(*(a2 - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1B08D93F4()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6DBA68);
  __swift_project_value_buffer(v1, qword_1EB6DBA68);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B08D9498()
{
  if (qword_1EB6DBA60 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6DBA68);
}

void *sub_1B08D9524(const void *a1, void *a2)
{
  v6 = sub_1B0E444E8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B08D964C(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B08D9524(v1, v3 - v3[0]);
  sub_1B08D96F0(v4, v3[1]);
  return sub_1B08D9918(v5);
}

void *sub_1B08D96F0(const void *a1, void *a2)
{
  v7 = sub_1B0E444E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1B08D9918(uint64_t a1)
{
  v3 = sub_1B0E444E8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B08D99C0()
{
  v2 = *(v0 + *(_s5StateVMa_0() + 20));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t _s5StateVMa_0()
{
  v1 = qword_1EB6DAAE8;
  if (!qword_1EB6DAAE8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B08D9A6C(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(_s5StateVMa_0() + 20));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B08D9AB8@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1B08DF2C4(a1, a3);
  result = _s5StateVMa_0();
  *&a3[*(result + 20)] = a2;
  return result;
}

uint64_t sub_1B08D9B38(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

uint64_t sub_1B08D9BC8()
{
  v6 = 0;
  sub_1B08D9B38(v0 + OBJC_IVAR___MFMailboxUserInfo__lock, v3);
  if (!v4)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0392800(v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C70, &qword_1B0EA02A8);
  swift_dynamicCast();
  return v2;
}

uint64_t sub_1B08D9D00()
{
  v5 = 0;
  sub_1B08D9B38(v0 + OBJC_IVAR___MFMailboxUserInfo__fileURL, v2);
  if (!v3)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0392800(v2, v4);
  sub_1B0E42E68();
  return swift_dynamicCast();
}

id MFMailboxUserInfo.init(fileURL:)(uint64_t a1)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1B0E42E68();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1) == 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = sub_1B0E42D58();
    (*(v8 + 8))(a1, v7);
    v4 = v3;
  }

  v2 = [v5 initWithFileURL_];
  MEMORY[0x1E69E5920](v4);
  return v2;
}

char *MFMailboxUserInfo.init(fileURL:)(uint64_t a1)
{
  v27 = a1;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
  v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v15 - v24;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v26 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v15 - v26;
  v32 = sub_1B0E42E68();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v28 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v27);
  v29 = &v15 - v28;
  v41 = &v15 - v28;
  v39 = v3;
  v40 = v1;
  sub_1B071C180(v3, v4);
  if ((*(v30 + 48))(v33, 1, v32) == 1)
  {
    sub_1B06E3800(v33);
    sub_1B06E3800(v27);
    v20 = v40;
    v21 = 0;
    type metadata accessor for MFMailboxUserInfo();
    swift_deallocPartialClassInstance();
    return v21;
  }

  else
  {
    (*(v30 + 32))(v29, v33, v32);
    v16 = v40;
    v5 = _s5StateVMa_0();
    (*(*(v5 - 8) + 56))(v25, 1);
    v17 = sub_1B08D932C(v25, v23);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C70, &qword_1B0EA02A8);
    v7 = v32;
    *(&v38 + 1) = v6;
    *&v37 = v17;
    v8 = &v16[OBJC_IVAR___MFMailboxUserInfo__lock];
    *v8 = v37;
    *(v8 + 1) = v38;
    v18 = v40;
    *(&v36 + 1) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v35);
    (*(v30 + 16))(boxed_opaque_existential_0, v29, v32);
    v10 = v30;
    v11 = v32;
    v12 = v29;
    v13 = &v18[OBJC_IVAR___MFMailboxUserInfo__fileURL];
    *v13 = v35;
    *(v13 + 1) = v36;
    (*(v10 + 8))(v12, v11);
    v34.receiver = v40;
    v34.super_class = MFMailboxUserInfo;
    v19 = objc_msgSendSuper2(&v34, sel_init);
    MEMORY[0x1E69E5928](v19);
    v40 = v19;
    sub_1B06E3800(v27);
    MEMORY[0x1E69E5920](v40);
    return v19;
  }
}

unint64_t type metadata accessor for MFMailboxUserInfo()
{
  v2 = qword_1EB6E2CA8;
  if (!qword_1EB6E2CA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2CA8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t MFMailboxUserInfo.subscript.getter(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v13 = a2;
  v11 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = a1;
  v9 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
  sub_1B08DAB54(sub_1B08DAB48, v7, v3);

  return v10;
}

uint64_t MFMailboxUserInfo.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v13 = a2;
  v14 = a3;
  v12 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a1);
  v9 = a2;
  v10 = a3;
  v11 = a1;
  sub_1B08DAD88(sub_1B08DAD78, v8, MEMORY[0x1E69E7CA8] + 8);

  MEMORY[0x1E69E5920](a1);

  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B08DA8A8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v6 = *a2;
  v10 = a2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E44AC8();
  v9 = [v4 objectForKeyedSubscript_];
  MEMORY[0x1E69E5920](v7);
  *a3 = v9;

  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1B08DA970(void *a1, void *a2, uint64_t *a3)
{
  v7 = *a3;
  v10 = a3[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B06BD0C8(a1, &v11);
  v9 = v11;
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2);
  v8 = sub_1B0E44AC8();
  [v6 setObject:v9 forKeyedSubscript:?];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v9);
}

uint64_t sub_1B08DAA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9[6] = a1;
  v9[4] = a2;
  v9[5] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8[0] = a2;
  v8[1] = a3;
  sub_1B0E44778();
  sub_1B03B1198(v8);
  if (v9[3])
  {
    sub_1B08A67A0();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a4 = 0;
    }
  }

  else
  {
    result = sub_1B041C0EC(v9);
    *a4 = 0;
  }

  return result;
}

uint64_t sub_1B08DAB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v17 = a1;
  v18 = a2;
  v16 = v3;
  v9 = sub_1B08D9BC8();
  (MEMORY[0x1E69E5928])();
  v12 = a3;
  v13 = a1;
  v14 = a2;
  v15 = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
  sub_1B03E1B3C(sub_1B08DB27C, v11, v9, v4, a3);
  (MEMORY[0x1E69E5920])();
}

uint64_t sub_1B08DAC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a4);
  if (a4)
  {
    sub_1B08A67A0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C90, &qword_1B0EA02B8);
  return sub_1B0E44788();
}

uint64_t sub_1B08DAD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v17 = a1;
  v18 = a2;
  v16 = v3;
  v9 = sub_1B08D9BC8();
  (MEMORY[0x1E69E5928])();
  v12 = a3;
  v13 = v6;
  v14 = a1;
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
  sub_1B03E1B3C(sub_1B08DC318, v11, v9, v4, a3);
  (MEMORY[0x1E69E5920])();
}

uint64_t sub_1B08DAF6C@<X0>(char *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = a6;
  v22 = a1;
  v20 = a2;
  v21 = a3;
  v29 = a4;
  v19 = a5;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v41 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
  v18 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v15 - v18;
  v32 = _s5StateVMa_0();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v23 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v22);
  v24 = &v15 - v23;
  v25 = *(v8 - 8);
  v26 = v8 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v28 = &v15 - v27;
  v40 = &v15 - v27;
  v39 = v9;
  v37 = v10;
  v38 = v11;
  v36 = v12;
  sub_1B08DF42C(v9, v13);
  MEMORY[0x1E69E5928](v29);
  v34 = *(v30 + 48);
  v35 = v30 + 48;
  if (v34(v33, 1, v32) == 1)
  {
    sub_1B08DB2BC(v22, v24);
    if (v34(v33, 1, v32) != 1)
    {
      sub_1B08DF64C(v33);
    }
  }

  else
  {
    sub_1B08DEB44(v33, v24);
  }

  MEMORY[0x1E69E5920](v29);
  v16 = *&v24[*(v32 + 20)];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08DEA84(v24);
  v20(v16);

  (*(v25 + 16))(v17, v28, v19);
  return (*(v25 + 8))(v28, v19);
}

uint64_t sub_1B08DB2BC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v100 = a1;
  v83 = a2;
  v119 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v92 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v85 = 0;
  v117 = 0;
  v116 = 0;
  v108 = 0;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
  v86 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105 - 8);
  v87 = &v27 - v86;
  v88 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0) - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v92);
  v90 = (v88 + 15) & 0xFFFFFFFFFFFFFFF0;
  v89 = &v27 - v90;
  MEMORY[0x1EEE9AC00](v3);
  v91 = &v27 - v90;
  v93 = _s5StateVMa_0();
  v94 = *(v93 - 8);
  v95 = v94;
  v96 = *(v94 + 64);
  v4 = MEMORY[0x1EEE9AC00](v92);
  v98 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = &v27 - v98;
  v113 = &v27 - v98;
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v27 - v98;
  v112 = &v27 - v98;
  v101 = sub_1B0E42E68();
  v102 = *(v101 - 8);
  v103 = v102;
  v5 = *(v102 + 64);
  v6 = MEMORY[0x1EEE9AC00](v100);
  v104 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v6;
  v110 = v2;
  v106 = sub_1B08D9BC8();
  if ((sub_1B08DE390(0, v106) & 1) == 0)
  {
    sub_1B0E44838();
    v26 = 0;
    v25 = 2709;
    sub_1B0E465B8();
    __break(1u);
  }

  v8 = v85;

  sub_1B08D9D00();
  v77 = 0;
  type metadata accessor for ReadingOptions();
  v78 = sub_1B0E46A48();
  sub_1B0692C30();
  sub_1B0E46028();
  v9 = sub_1B0E42E98();
  v79 = v8;
  v80 = v9;
  v81 = v10;
  v82 = v8;
  if (v8)
  {
    goto LABEL_20;
  }

  v73 = v81;
  v72 = v80;
  (*(v103 + 8))(v104, v101);
  v74 = v72;
  v75 = v73;
  for (i = v79; ; i = v33)
  {
    v69 = i;
    v70 = v75;
    v71 = v74;
    if (v75 >> 60 == 15)
    {
      v66 = v69;
    }

    else
    {
      v67 = v71;
      v68 = v70;
      v56 = v70;
      v57 = v71;
      v116 = v71;
      v117 = v70;
      v61 = 0;
      v115 = 0;
      v60 = objc_opt_self();
      sub_1B03B2000(v57, v56);
      v64 = sub_1B0E42F18();
      sub_1B0391D50(v57, v56);
      type metadata accessor for MutabilityOptions();
      v58 = 1;
      v11 = sub_1B0E46A48();
      *v12 = v58;
      sub_1B0394964();
      v59 = v11;
      sub_1B0692D60();
      sub_1B0E46028();
      v109[0] = v115;
      v65 = [v60 propertyListWithData:v64 options:v109[1] format:v61 error:v109];
      v62 = v65;
      v63 = v109[0];
      v13 = v109[0];
      v14 = v115;
      v115 = v63;

      if (v65)
      {
        v55 = v62;
        v53 = v62;
        v54 = &v114;
        sub_1B0E45FE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C90, &qword_1B0EA02B8);
        if (swift_dynamicCast())
        {
          v52 = v107;
        }

        else
        {
          v52 = 0;
        }

        v49 = v52;
        swift_unknownObjectRelease();
        v50 = v49;
        v51 = v69;
      }

      else
      {
        v27 = v115;
        v28 = sub_1B0E42CD8();

        swift_willThrow();
        v29 = 0;
        v30 = 0;

        v50 = v29;
        v51 = v30;
      }

      v47 = v51;
      v48 = v50;
      if (v50)
      {
        v46 = v48;
        v15 = v47;
        v42 = v48;
        v108 = v48;
        sub_1B08DE1B0(v57, v56, v91);
        v16 = *(*(sub_1B0E444E8() - 8) + 56);
        v43 = 0;
        v44 = 1;
        v16(v91);
        sub_1B08D9AB8(v91, v42, v99);
        sub_1B08DE458(v99, v87);
        (*(v95 + 56))(v87, v43, v44, v93);
        sub_1B08DE5B0(v87, v100);
        sub_1B08DE458(v99, v83);
        sub_1B08DEA84(v99);
        sub_1B0391D50(v57, v56);
        v45 = v15;
        goto LABEL_18;
      }

      sub_1B0391D50(v57, v56);
      v66 = v47;
    }

    v17 = v66;
    v34 = 0;
    v40 = sub_1B0E444E8();
    (*(*(v40 - 8) + 56))(v91, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C88, &unk_1B0EA3630);
    sub_1B0E46A48();
    v18 = sub_1B0E445D8();
    sub_1B08D9AB8(v91, v18, v97);
    v35 = *&v97[*(v93 + 20)];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = sub_1B08DD8B4(v35);
    v37 = v19;

    v118[0] = v36;
    v118[1] = v37;
    v38 = &v27;
    MEMORY[0x1EEE9AC00](&v27);
    v39 = &v27 - 4;
    v25 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1FC8, &unk_1B0E9B250);
    sub_1B03F1A20(sub_1B08DE42C, v39, v21, MEMORY[0x1E69E73E0], v40, v22, v89);
    v41 = v17;
    if (!v17)
    {
      break;
    }

    __break(1u);
LABEL_20:
    v31 = v82;
    v32 = 0;
    v33 = 0;
    (*(v103 + 8))(v104, v101);

    v74 = v32;
    v75 = 0xF000000000000000;
  }

  sub_1B043C03C(v118);
  sub_1B08D96F0(v89, v97);
  sub_1B08DE458(v97, v87);
  (*(v95 + 56))(v87, 0, 1, v93);
  sub_1B08DE5B0(v87, v100);
  sub_1B08DEB44(v97, v83);
  v45 = v41;
LABEL_18:
  result = v45;
  v24 = __OFSUB__(*MEMORY[0x1E69E9840], v119);
  return result;
}

uint64_t sub_1B08DBF84@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15 = a6;
  v26 = a1;
  v29 = a2;
  v24 = a3;
  v25 = a4;
  v16 = a5;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v42 = a5;
  v17 = *(a5 - 8);
  v18 = a5 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v14 - v19;
  v41 = &v14 - v19;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
  v21 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v22 = &v14 - v21;
  v23 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v21);
  v33 = &v14 - v23;
  v32 = _s5StateVMa_0();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v27 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v26);
  v28 = &v14 - v27;
  v40 = &v14 - v27;
  v39 = v8;
  v38 = v9;
  v36 = v10;
  v37 = v11;
  sub_1B08DF42C(v8, v12);
  MEMORY[0x1E69E5928](v29);
  v34 = *(v30 + 48);
  v35 = v30 + 48;
  if (v34(v33, 1, v32) == 1)
  {
    sub_1B08DB2BC(v26, v28);
    if (v34(v33, 1, v32) != 1)
    {
      sub_1B08DF64C(v33);
    }
  }

  else
  {
    sub_1B08DEB44(v33, v28);
  }

  MEMORY[0x1E69E5920](v29);
  v24(&v28[*(v32 + 20)]);
  sub_1B08DC358(v28);
  sub_1B08DE458(v28, v22);
  (*(v30 + 56))(v22, 0, 1, v32);
  sub_1B08DE5B0(v22, v26);
  (*(v17 + 16))(v15, v20, v16);
  (*(v17 + 8))(v20, v16);
  return sub_1B08DEA84(v28);
}

uint64_t sub_1B08DC358(char *a1)
{
  v139 = a1;
  v129 = v1;
  v99 = 0;
  v94 = sub_1B07135E4;
  v95 = sub_1B070B324;
  v96 = sub_1B0398F5C;
  v97 = sub_1B0398F5C;
  v98 = sub_1B070B4B4;
  v159 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v157 = 0;
  v158 = 0;
  v149 = 0;
  v101 = 0;
  v148 = 0;
  v146 = 0;
  v130 = 0;
  v102 = sub_1B0E439A8();
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v106 = v37 - v105;
  v107 = sub_1B0E42E68();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v107);
  v111 = v37 - v110;
  v112 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37 - v110);
  v113 = v37 - v112;
  v114 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37 - v112);
  v115 = v37 - v114;
  v116 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37 - v114);
  v117 = v37 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C98, qword_1B0EA02C0);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v118);
  v120 = v37 - v119;
  v121 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v130);
  v122 = v37 - v121;
  v123 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v124 = v37 - v123;
  v125 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v126 = v37 - v125;
  v127 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v128 = v37 - v127;
  v131 = sub_1B0E444E8();
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v135 = *(v132 + 64);
  v134 = (v135 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v130);
  v136 = v37 - v134;
  v137 = (v135 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v138 = v37 - v137;
  v153 = v37 - v137;
  v152 = v139;
  v151 = v12;
  v140 = *&v139[*(_s5StateVMa_0() + 20)];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v141 = sub_1B08DD8B4(v140);
  v142 = v13;

  if ((v142 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_15;
  }

  v92 = v141;
  v93 = v142;
  v82 = v142;
  v83 = v141;
  v157 = v141;
  v158 = v142;
  sub_1B08DE1B0(v141, v142, v138);
  v84 = *(v132 + 16);
  v85 = v132 + 16;
  v84(v128, v138, v131);
  v86 = *(v132 + 56);
  v87 = v132 + 56;
  v89 = 1;
  v86(v128, 0);
  sub_1B08D9524(v139, v126);
  v88 = &v120[*(v118 + 48)];
  sub_1B08D9524(v128, v120);
  sub_1B08D9524(v126, v88);
  v90 = *(v132 + 48);
  v91 = v132 + 48;
  if (v90(v120, v89, v131) == 1)
  {
    if (v90(v88, 1, v131) != 1)
    {
      goto LABEL_10;
    }

    sub_1B08D9918(v120);
    v81 = 1;
  }

  else
  {
    sub_1B08D9524(v120, v124);
    if (v90(v88, 1, v131) == 1)
    {
      (*(v132 + 8))(v124, v131);
LABEL_10:
      sub_1B08DEC8C(v120);
      v81 = 0;
      goto LABEL_8;
    }

    (*(v132 + 32))(v136, v88, v131);
    sub_1B08DEEE0();
    v80 = sub_1B0E44A28();
    v79 = *(v132 + 8);
    v78 = v132 + 8;
    v79(v136, v131);
    v79(v124, v131);
    sub_1B08D9918(v120);
    v81 = v80;
  }

LABEL_8:
  v77 = v81;
  sub_1B08D9918(v126);
  sub_1B08D9918(v128);
  if ((v77 & 1) == 0)
  {
    v15 = v101;
    type metadata accessor for WritingOptions();
    v16 = sub_1B0E46A48();
    *v17 = 1;
    v17[1] = 0x40000000;
    sub_1B0394964();
    v74 = v16;
    sub_1B0692E90();
    sub_1B0E46028();
    v75 = v150;
    v149 = v150;
    sub_1B08D9D00();
    sub_1B0E42F78();
    v76 = v15;
    if (v15)
    {
      v66 = v76;
      v69 = 0;
      v65 = 0;
      v68 = *(v108 + 8);
      v67 = v108 + 8;
      v68(v117, v107);
      v18 = v66;
      v148 = v66;
      v156 = 0;
      v72 = [objc_opt_self() defaultManager];
      sub_1B08D9D00();
      sub_1B0E42DA8();
      v68(v113, v107);
      v71 = sub_1B0E42D58();
      v68(v115, v107);
      v147 = v156;
      v73 = [v72 createDirectoryAtURL:v71 withIntermediateDirectories:1 attributes:v69 error:&v147];
      v70 = v147;
      MEMORY[0x1E69E5928](v147);
      v19 = v156;
      v156 = v70;
      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](v71);
      MEMORY[0x1E69E5920](v72);
      if (v73)
      {
        v64 = v65;
      }

      else
      {
        v60 = v156;
        v61 = sub_1B0E42CD8();
        MEMORY[0x1E69E5920](v60);
        swift_willThrow();
        v62 = 0;

        v64 = v62;
      }

      v20 = v64;
      sub_1B08D9D00();
      sub_1B0E42F78();
      v63 = v20;
      if (v20)
      {
        v21 = v106;
        v46 = v63;
        v45 = 0;
        v68(v111, v107);
        v22 = v46;
        v146 = v46;
        v23 = sub_1B08D9498();
        (*(v103 + 16))(v21, v23, v102);
        v24 = v46;
        v49 = 7;
        v50 = swift_allocObject();
        *(v50 + 16) = v46;
        v58 = sub_1B0E43988();
        v59 = sub_1B0E458E8();
        v47 = 17;
        v52 = swift_allocObject();
        *(v52 + 16) = 64;
        v53 = swift_allocObject();
        *(v53 + 16) = 8;
        v48 = 32;
        v25 = swift_allocObject();
        v26 = v50;
        v51 = v25;
        *(v25 + 16) = v94;
        *(v25 + 24) = v26;
        v27 = swift_allocObject();
        v28 = v51;
        v55 = v27;
        *(v27 + 16) = v95;
        *(v27 + 24) = v28;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v54 = sub_1B0E46A48();
        v56 = v29;

        v30 = v52;
        v31 = v56;
        *v56 = v96;
        v31[1] = v30;

        v32 = v53;
        v33 = v56;
        v56[2] = v97;
        v33[3] = v32;

        v34 = v55;
        v35 = v56;
        v56[4] = v98;
        v35[5] = v34;
        sub_1B0394964();

        if (os_log_type_enabled(v58, v59))
        {
          v36 = v45;
          v38 = sub_1B0E45D78();
          v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v39 = sub_1B03949A8(1);
          v40 = sub_1B03949A8(0);
          v41 = &v145;
          v145 = v38;
          v42 = &v155;
          v155 = v39;
          v43 = &v154;
          v154 = v40;
          sub_1B0394A48(2, &v145);
          sub_1B0394A48(1, v41);
          v143 = v96;
          v144 = v52;
          sub_1B03949FC(&v143, v41, v42, v43);
          v44 = v36;
          if (v36)
          {

            __break(1u);
          }

          else
          {
            v143 = v97;
            v144 = v53;
            sub_1B03949FC(&v143, &v145, &v155, &v154);
            v37[0] = 0;
            v143 = v98;
            v144 = v55;
            sub_1B03949FC(&v143, &v145, &v155, &v154);
            _os_log_impl(&dword_1B0389000, v58, v59, "Failed to write mailbox user-info: %@", v38, 0xCu);
            sub_1B03998A8(v39);
            sub_1B03998A8(v40);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v58);
        (*(v103 + 8))(v106, v102);
      }

      else
      {
        v68(v111, v107);
        v84(v122, v138, v131);
        (v86)(v122, 0, 1, v131);
        sub_1B08D96F0(v122, v139);
      }
    }

    else
    {
      (*(v108 + 8))(v117, v107);
      v84(v122, v138, v131);
      (v86)(v122, 0, 1, v131);
      sub_1B08D96F0(v122, v139);
    }
  }

  (*(v132 + 8))(v138, v131);
  result = sub_1B0391D50(v83, v82);
LABEL_15:
  *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B08DD8B4(uint64_t a1)
{
  v63 = a1;
  v53 = sub_1B07135E4;
  v54 = sub_1B070B324;
  v55 = sub_1B0398F5C;
  v56 = sub_1B0398F5C;
  v57 = sub_1B070B4B4;
  v79 = *MEMORY[0x1E69E9840];
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v65 = 0;
  v58 = sub_1B0E439A8();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v62 = v21 - v61;
  v75 = MEMORY[0x1EEE9AC00](v63);
  v74 = v1;
  v78 = 0;
  v64 = objc_opt_self();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v67 = sub_1B0E44598();

  v73 = v78;
  v68 = [v64 dataWithPropertyList:v67 format:200 options:v65 error:&v73];
  v66 = v73;
  MEMORY[0x1E69E5928](v73);
  v2 = v78;
  v78 = v66;
  MEMORY[0x1E69E5920](v2);
  swift_unknownObjectRelease();
  if (v68)
  {
    v52 = v68;
    v47 = v68;
    v48 = sub_1B0E42F38();
    v49 = v3;
    MEMORY[0x1E69E5920](v47);
    v50 = v48;
    v51 = v49;
  }

  else
  {
    v29 = v78;
    v31 = sub_1B0E42CD8();
    MEMORY[0x1E69E5920](v29);
    swift_willThrow();
    v5 = v62;
    v30 = 0;
    v6 = v31;
    v72 = v31;
    v7 = sub_1B08D9498();
    (*(v59 + 16))(v5, v7, v58);
    v8 = v31;
    v34 = 7;
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    v43 = sub_1B0E43988();
    v44 = sub_1B0E458E8();
    v32 = 17;
    v37 = swift_allocObject();
    *(v37 + 16) = 64;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v33 = 32;
    v9 = swift_allocObject();
    v10 = v35;
    v36 = v9;
    *(v9 + 16) = v53;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v36;
    v40 = v11;
    *(v11 + 16) = v54;
    *(v11 + 24) = v12;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v39 = sub_1B0E46A48();
    v41 = v13;

    v14 = v37;
    v15 = v41;
    *v41 = v55;
    v15[1] = v14;

    v16 = v38;
    v17 = v41;
    v41[2] = v56;
    v17[3] = v16;

    v18 = v40;
    v19 = v41;
    v41[4] = v57;
    v19[5] = v18;
    sub_1B0394964();

    if (os_log_type_enabled(v43, v44))
    {
      v20 = v30;
      v22 = sub_1B0E45D78();
      v21[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v23 = sub_1B03949A8(1);
      v24 = sub_1B03949A8(0);
      v25 = &v71;
      v71 = v22;
      v26 = &v77;
      v77 = v23;
      v27 = &v76;
      v76 = v24;
      sub_1B0394A48(2, &v71);
      sub_1B0394A48(1, v25);
      v69 = v55;
      v70 = v37;
      sub_1B03949FC(&v69, v25, v26, v27);
      v28 = v20;
      if (v20)
      {

        __break(1u);
      }

      else
      {
        v69 = v56;
        v70 = v38;
        sub_1B03949FC(&v69, &v71, &v77, &v76);
        v21[1] = 0;
        v69 = v57;
        v70 = v40;
        sub_1B03949FC(&v69, &v71, &v77, &v76);
        _os_log_impl(&dword_1B0389000, v43, v44, "Failed to encode mailbox user-info: %@", v22, 0xCu);
        sub_1B03998A8(v23);
        sub_1B03998A8(v24);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v43);
    (*(v59 + 8))(v62, v58);

    v50 = 0;
    v51 = 0xF000000000000000;
  }

  v45 = v51;
  v46 = v50;
  *MEMORY[0x1E69E9840];
  return v50;
}

uint64_t sub_1B08DE1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a3;
  v12 = a1;
  v13 = a2;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v21 = sub_1B0E44558();
  v17 = *(v21 - 8);
  v18 = v21 - 8;
  v10 = *(v17 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v8 - v9;
  v11 = v9;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v20 = &v8 - v11;
  v28 = &v8 - v11;
  v26 = v4;
  v27 = v5;
  v25 = v6;
  sub_1B0E44548();
  v15 = v24;
  v24[0] = v12;
  v24[1] = v13;
  v14 = sub_1B08DEF60();
  sub_1B08DEFE0();
  sub_1B0E444B8();
  (*(v17 + 16))(v19, v20, v21);
  sub_1B0E44538();
  v23 = *(v17 + 8);
  v22 = v17 + 8;
  v23(v19, v21);
  return (v23)(v20, v21);
}

char *sub_1B08DE458(char *a1, char *a2)
{
  v8 = sub_1B0E444E8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, v8);
    (*(v9 + 56))(a2, 0, 1, v8);
  }

  v4 = *(_s5StateVMa_0() + 20);
  v5 = *&a1[v4];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *&a2[v4] = v5;
  return result;
}

char *sub_1B08DE5B0(char *a1, char *a2)
{
  v17 = _s5StateVMa_0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if ((v19)(a2, 1))
  {
    if (v19(a1, 1, v17))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
      memcpy(a2, a1, *(*(v8 - 8) + 64));
    }

    else
    {
      v10 = sub_1B0E444E8();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(a1, 1))
      {
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
        memcpy(a2, a1, *(*(v7 - 8) + 64));
      }

      else
      {
        (*(v11 + 32))(a2, a1, v10);
        (*(v11 + 56))(a2, 0, 1, v10);
      }

      *&a2[*(v17 + 20)] = *&a1[*(v17 + 20)];
      (*(v18 + 56))();
    }
  }

  else if (v19(a1, 1, v17))
  {
    sub_1B08DEA84(a2);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C80, &qword_1B0EA02B0);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v12 = sub_1B0E444E8();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if ((v14)(a2, 1))
    {
      if (v14(a1, 1, v12))
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
        memcpy(a2, a1, *(*(v3 - 8) + 64));
      }

      else
      {
        (*(v13 + 32))(a2, a1, v12);
        (*(v13 + 56))(a2, 0, 1, v12);
      }
    }

    else if (v14(a1, 1, v12))
    {
      (*(v13 + 8))(a2, v12);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
      memcpy(a2, a1, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v13 + 40))(a2, a1, v12);
    }

    v4 = &a2[*(v17 + 20)];
    v5 = *v4;
    *v4 = *&a1[*(v17 + 20)];
  }

  return a2;
}

uint64_t sub_1B08DEA84(uint64_t a1)
{
  v4 = sub_1B0E444E8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v1 = *(a1 + *(_s5StateVMa_0() + 20));

  return a1;
}

char *sub_1B08DEB44(char *a1, char *a2)
{
  v7 = sub_1B0E444E8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C60, &qword_1B0EA02A0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  v3 = _s5StateVMa_0();
  result = a2;
  *&a2[*(v3 + 20)] = *&a1[*(v3 + 20)];
  return result;
}

uint64_t sub_1B08DEC8C(uint64_t a1)
{
  v4 = sub_1B0E444E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2C98, qword_1B0EA02C0) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

void sub_1B08DEDB8(const os_unfair_lock *a1, char a2)
{
  if (a2)
  {
    os_unfair_lock_assert_not_owner(a1);
  }

  else
  {
    os_unfair_lock_assert_owner(a1);
  }
}

uint64_t sub_1B08DEE04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a1 + ((*(*a1 + 48) + 3) & 0xFFFFFFFFFFFFFFFCLL)) = 0;
  return (*(*(*(v3 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

unint64_t sub_1B08DEEE0()
{
  v2 = qword_1EB6DB968;
  if (!qword_1EB6DB968)
  {
    sub_1B0E444E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB968);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08DEF60()
{
  v2 = qword_1EB6DB958;
  if (!qword_1EB6DB958)
  {
    sub_1B0E44558();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB958);
    return WitnessTable;
  }

  return v2;
}