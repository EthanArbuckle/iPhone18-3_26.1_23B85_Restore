uint64_t sub_1A7DBB890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v36 = v3;

  v10 = 0;
  while (v7)
  {
LABEL_11:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v36 + 48) + 24 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = *(*(v36 + 56) + 16 * v13 + 8);
    result = type metadata accessor for IDSLinksQualityReportBuilder();
    if (*(*(v37 + *(result + 20)) + 16))
    {

      sub_1A7CD12D4(v15, v16, v17);
      if (v19)
      {
        v20 = sub_1A7DBE624(v44, v15, v16, v17);
        v21 = v20;
        v39 = v22;
        if (*(v22 + 8))
        {
          v33 = v20;
          v34 = v8;
          v35 = v4;
          v23 = *(v18 + 16);
          if (v23)
          {
            v24 = (v18 + 72);
            do
            {
              v25 = *(v24 - 5);
              v26 = *(v24 - 4);
              v27 = *v24;
              v28 = *(v39 + 96);
              v42 = *(v24 - 2);
              v43 = *(v24 - 3);
              v41 = *(v24 - 1);
              sub_1A7D52320(v25, v26, v43, v42, v41, *v24);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v39 + 96) = v28;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v28 = sub_1A7CCCFA0(0, *(v28 + 2) + 1, 1, v28);
                *(v39 + 96) = v28;
              }

              v31 = *(v28 + 2);
              v30 = *(v28 + 3);
              if (v31 >= v30 >> 1)
              {
                v28 = sub_1A7CCCFA0((v30 > 1), v31 + 1, 1, v28);
                *(v39 + 96) = v28;
              }

              v24 += 24;
              *(v28 + 2) = v31 + 1;
              v32 = &v28[64 * v31];
              *(v32 + 4) = a2;
              *(v32 + 5) = a3;
              *(v32 + 6) = v25;
              *(v32 + 7) = v26;
              *(v32 + 8) = v43;
              *(v32 + 9) = v42;
              *(v32 + 10) = v41;
              *(v32 + 44) = v27;
              --v23;
            }

            while (v23);
          }

          v33(v44, 0);

          v8 = v34;
          v4 = v35;
        }

        else
        {

          v21(v44, 0);
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t IDSLinksQualityReportBuilder.report()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for IDSLinksQualityReportBuilder();

  v3 = sub_1A7DBB5A0(v2);

  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for IDSLinksQualityReportBuilder()
{
  result = qword_1EB2B3120;
  if (!qword_1EB2B3120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

IDSFoundation::IDSLinksQualityReportBuilder::Delta __swiftcall IDSLinksQualityReportBuilder.delta(since:)(IDSFoundation::IDSLinksQualityReportBuilder::SyncToken_optional since)
{
  v3 = v2;
  v74 = v1;
  v4 = *since.value.syncTokenByLinkCycle._rawValue;

  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v89 = v8;
    *v7 = 136315138;
    v85 = v4;

    sub_1A7CC7FFC(&qword_1EB2B64E8);
    v9 = sub_1A7E222F0();
    v11 = sub_1A7B0CB38(v9, v10, &v89);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "IDSLinksQualityReportBuilder: delta(since:): collecting delta since sync token %s...", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  v12 = MEMORY[0x1E69E7CC0];
  *&v91 = sub_1A7CE38F4(MEMORY[0x1E69E7CC0]);
  *(&v91 + 1) = sub_1A7CE3A04(v12);
  v13 = *(v3 + *(type metadata accessor for IDSLinksQualityReportBuilder() + 20));
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v78 = v13;

  v21 = 0;
  v77 = v4;
  v75 = v18;
  v76 = v14;
  while (v17)
  {
LABEL_14:
    v30 = __clz(__rbit64(v17)) | (v21 << 6);
    v31 = (*(v78 + 48) + 24 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];
    v35 = *(v78 + 56) + 104 * v30;
    v81 = *(v35 + 80);
    v84 = v34;
    v80 = *(v35 + 96);
    if (v4)
    {
      v36 = *(v4 + 16);

      if (v36)
      {
        v37 = sub_1A7CD12D4(v32, v33, v34);
        if (v38)
        {
          v39 = 0;
          v40 = *(*(v4 + 56) + 8 * v37);
          goto LABEL_20;
        }
      }
    }

    else
    {
    }

    v40 = 0;
    v39 = 1;
LABEL_20:

    v41 = sub_1A7E22040();
    v42 = sub_1A7E228F0();

    v83 = v32;
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v32;
      v44 = swift_slowAlloc();
      v79 = v39;
      v45 = swift_slowAlloc();
      v85 = v45;
      *v44 = 136315394;
      *&v89 = v43;
      *(&v89 + 1) = v33;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1AC561C90](58, 0xE100000000000000);
      v87 = v84;
      v46 = sub_1A7E23090();
      MEMORY[0x1AC561C90](v46);

      v47 = sub_1A7B0CB38(v89, *(&v89 + 1), &v85);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      *&v89 = v40;
      BYTE8(v89) = v79;
      sub_1A7CC7FFC(&qword_1EB2B76D8);
      v48 = sub_1A7E222F0();
      v50 = sub_1A7B0CB38(v48, v49, &v85);

      *(v44 + 14) = v50;
      _os_log_impl(&dword_1A7AD9000, v41, v42, "IDSLinksQualityReportBuilder: delta(since:): sync token for link cycle %s: %s", v44, 0x16u);
      swift_arrayDestroy();
      v51 = v45;
      v39 = v79;
      MEMORY[0x1AC5654B0](v51, -1, -1);
      MEMORY[0x1AC5654B0](v44, -1, -1);
    }

    v89 = v81;
    v90 = v80;
    v87 = v40;
    v88 = v39;
    sub_1A7DF2EE0(&v87, &v85);

    v53 = v85;
    v52 = v86;
    if (*(v86 + 16))
    {

      v54 = sub_1A7E22040();
      v55 = sub_1A7E228F0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v85 = v82;
        *v56 = 136315394;
        *&v89 = v83;
        *(&v89 + 1) = v33;
        swift_bridgeObjectRetain_n();
        MEMORY[0x1AC561C90](58, 0xE100000000000000);
        v87 = v84;
        v57 = sub_1A7E23090();
        MEMORY[0x1AC561C90](v57);

        v58 = sub_1A7B0CB38(v89, *(&v89 + 1), &v85);

        *(v56 + 4) = v58;
        *(v56 + 12) = 2080;
        *&v89 = v53;
        *(&v89 + 1) = v52;

        v59 = IDSLinkQualityReport.Delta.description.getter();
        v61 = v60;

        v62 = sub_1A7B0CB38(v59, v61, &v85);

        *(v56 + 14) = v62;
        v63 = v55;
        v22 = v83;
        _os_log_impl(&dword_1A7AD9000, v54, v63, "IDSLinksQualityReportBuilder: delta(since:): delta for link cycle %s: %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v82, -1, -1);
        v64 = v56;
        v23 = v84;
        MEMORY[0x1AC5654B0](v64, -1, -1);
      }

      else
      {

        v22 = v83;
        v23 = v84;
      }

      v24 = *(&v91 + 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v89 = v24;
      sub_1A7DC4F8C(v53, v52, v22, v33, v23, isUniquelyReferenced_nonNull_native);

      *(&v91 + 1) = v89;
    }

    v17 &= v17 - 1;
    v26 = v91;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v89 = v26;
    *&v91 = 0x8000000000000000;
    sub_1A7DC4E14(v53, v83, v33, v84, v27);

    v28 = v89;

    *&v91 = v28;
    v14 = v76;
    v4 = v77;
    v18 = v75;
  }

  while (1)
  {
    v29 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v29 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v29);
    ++v21;
    if (v17)
    {
      v21 = v29;
      goto LABEL_14;
    }
  }

  v65 = sub_1A7E22040();
  v66 = sub_1A7E228F0();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *&v89 = v68;
    *v67 = 136315138;
    swift_beginAccess();
    v87 = v91;
    sub_1A7DC9254();

    v69 = sub_1A7E23090();
    v71 = v70;

    v72 = sub_1A7B0CB38(v69, v71, &v89);

    *(v67 + 4) = v72;
    _os_log_impl(&dword_1A7AD9000, v65, v66, "IDSLinksQualityReportBuilder: delta(since:): new sync token: %s", v67, 0xCu);
    sub_1A7B0CD6C(v68);
    MEMORY[0x1AC5654B0](v68, -1, -1);
    MEMORY[0x1AC5654B0](v67, -1, -1);
  }

  v19 = swift_beginAccess();
  *v74 = v91;
LABEL_29:
  result.deltaByLinkCycle._rawValue = v20;
  result.syncToken.syncTokenByLinkCycle._rawValue = v19;
  return result;
}

void (*IDSLinksQualityReportBuilder.withReport<A>(forLinkCycle:_:)(uint64_t *a1, void (*a2)(uint64_t)))(uint64_t a1)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(type metadata accessor for IDSLinksQualityReportBuilder() + 20);
  if (!*(*(v2 + v7) + 16) || (sub_1A7CD12D4(v4, v5, v6), (v8 & 1) == 0))
  {
    v14[0] = v4;
    v14[1] = v5;
    v14[2] = v6;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0xE000000000000000;
    v19 = 4;
    v20 = 0xA0000000ALL;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = MEMORY[0x1E69E7CC0];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *(v2 + v7);
    sub_1A7DC4018(v14, v4, v5, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + v7) = v13[0];
  }

  result = sub_1A7DC9138(v13, v4, v5, v6);
  if (*(v11 + 8))
  {
    v12 = result;
    a2(v11);
    return (v12)(v13, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IDSLinksQualityReportBuilder.LinkCycle.uniqueID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSLinksQualityReportBuilder.LinkCycle.uniqueID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IDSLinksQualityReportBuilder.LinkCycle.description.getter()
{
  v3 = *v0;

  MEMORY[0x1AC561C90](58, 0xE100000000000000);
  v1 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v1);

  return v3;
}

BOOL static IDSLinksQualityReportBuilder.LinkCycle.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1A7E230D0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1A7DBC700()
{
  if (*v0)
  {
    return 0x65636E6174736E69;
  }

  else
  {
    return 0x4449657571696E75;
  }
}

uint64_t sub_1A7DBC740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xEA00000000004449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DBC824(uint64_t a1)
{
  v2 = sub_1A7DC92A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DBC860(uint64_t a1)
{
  v2 = sub_1A7DC92A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksQualityReportBuilder.LinkCycle.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B76E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v10 - v6;
  v10[0] = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DC92A8();
  sub_1A7E23260();
  v12 = 0;
  v8 = v10[1];
  sub_1A7E22FF0();
  if (!v8)
  {
    v11 = 1;
    sub_1A7E23020();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t IDSLinksQualityReportBuilder.LinkCycle.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1A7E22350();
  return MEMORY[0x1AC562AF0](v1);
}

uint64_t IDSLinksQualityReportBuilder.LinkCycle.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1A7E23200();
  sub_1A7E22350();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t IDSLinksQualityReportBuilder.LinkCycle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B76F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v16 - v8;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DC92A8();
  sub_1A7E23250();
  if (v2)
  {
    return sub_1A7B0CD6C(a1);
  }

  v18 = 0;
  v10 = sub_1A7E22EF0();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  v14 = sub_1A7E22F20();
  (*(v6 + 8))(v9, v5);
  *a2 = v13;
  a2[1] = v12;
  a2[2] = v14;

  sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DBCCA8()
{
  v1 = *(v0 + 16);
  sub_1A7E23200();
  sub_1A7E22350();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

uint64_t sub_1A7DBCD0C()
{
  v1 = *(v0 + 16);
  sub_1A7E22350();
  return MEMORY[0x1AC562AF0](v1);
}

uint64_t sub_1A7DBCD44()
{
  v1 = *(v0 + 16);
  sub_1A7E23200();
  sub_1A7E22350();
  MEMORY[0x1AC562AF0](v1);
  return sub_1A7E23240();
}

BOOL sub_1A7DBCDA4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1A7E230D0();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1A7DBCE30()
{
  v3 = *v0;

  MEMORY[0x1AC561C90](58, 0xE100000000000000);
  v1 = sub_1A7E23090();
  MEMORY[0x1AC561C90](v1);

  return v3;
}

uint64_t IDSLinksQualityReportBuilder.SyncToken.syncTokenByLinkCycle.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IDSLinksQualityReportBuilder.SyncToken.description.getter()
{
  sub_1A7DC92FC();
  v0 = sub_1A7E22170();
  MEMORY[0x1AC561C90](v0);

  MEMORY[0x1AC561C90](93, 0xE100000000000000);
  return 0x656B6F54636E7953;
}

uint64_t sub_1A7DBCFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001A7EB13C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A7E230D0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A7DBD03C(uint64_t a1)
{
  v2 = sub_1A7DC9350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DBD078(uint64_t a1)
{
  v2 = sub_1A7DC9350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksQualityReportBuilder.SyncToken.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7700);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DC9350();

  sub_1A7E23260();
  v10[1] = v8;
  sub_1A7CC7FFC(&qword_1EB2B7710);
  sub_1A7DC93F8(&qword_1EB2B7718, sub_1A7DC93A4, sub_1A7D519C8);
  sub_1A7E23030();

  return (*(v4 + 8))(v7, v3);
}

uint64_t IDSLinksQualityReportBuilder.SyncToken.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B7728);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v11 - v8;
  sub_1A7CE38F4(MEMORY[0x1E69E7CC0]);

  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DC9350();
  sub_1A7E23250();
  if (!v2)
  {
    sub_1A7CC7FFC(&qword_1EB2B7710);
    sub_1A7DC93F8(&qword_1EB2B7730, sub_1A7DC9488, sub_1A7D51ADC);
    sub_1A7E22F30();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DBD470()
{
  sub_1A7DC92FC();
  v0 = sub_1A7E22170();
  MEMORY[0x1AC561C90](v0);

  MEMORY[0x1AC561C90](93, 0xE100000000000000);
  return 0x656B6F54636E7953;
}

uint64_t IDSLinksQualityReportBuilder.Delta.syncToken.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t IDSLinksQualityReportBuilder.Delta.deltaByLinkCycle.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1A7DBD5AC()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656B6F54636E7973;
  }
}

uint64_t sub_1A7DBD5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656B6F54636E7973 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1A7E230D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A7EB13E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A7E230D0();

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

uint64_t sub_1A7DBD6DC(uint64_t a1)
{
  v2 = sub_1A7DC94DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DBD718(uint64_t a1)
{
  v2 = sub_1A7DC94DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksQualityReportBuilder.Delta.encode(to:)(void *a1)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B7740);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  v11 = v1[1];
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DC94DC();

  sub_1A7E23260();
  v13 = v9;
  v12 = 0;
  sub_1A7D563DC();
  sub_1A7E23030();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1A7CC7FFC(&qword_1EB2B7750);
    sub_1A7DC9530(&qword_1EB2B7758, sub_1A7DC93A4, sub_1A7DC95C0);
    sub_1A7E23030();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t IDSLinksQualityReportBuilder.Delta.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v4 = sub_1A7CC7FFC(&qword_1EB2B7768);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A7CE38F4(MEMORY[0x1E69E7CC0]);
  v17 = sub_1A7CE3A04(v9);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DC94DC();
  sub_1A7E23250();
  if (!v2)
  {
    v10 = v5;
    v11 = v16;
    v18 = 0;
    sub_1A7D165B8();
    sub_1A7E22F30();
    v12 = v19;

    sub_1A7CC7FFC(&qword_1EB2B7750);
    v18 = 1;
    sub_1A7DC9530(&qword_1EB2B7770, sub_1A7DC9488, sub_1A7DC9614);
    sub_1A7E22F30();
    (*(v10 + 8))(v8, v4);

    v14 = v19;
    *v11 = v12;
    v11[1] = v14;
  }

  sub_1A7B0CD6C(a1);
}

uint64_t sub_1A7DBDC2C()
{
  v1 = 0x6174654D6B6E696CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6379436B6E696CLL;
  }
}

uint64_t sub_1A7DBDC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7DC9F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7DBDCC0(uint64_t a1)
{
  v2 = sub_1A7DC9668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DBDCFC(uint64_t a1)
{
  v2 = sub_1A7DC9668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSLinksQualityReportBuilder.Report.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7780);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = *(v1 + 5);
  v31 = *(v1 + 3);
  v32 = v9;
  v33[0] = *(v1 + 7);
  *(v33 + 15) = *(v1 + 71);
  v10 = v1[10];
  v11 = v1[11];
  v20 = v1[12];
  v12 = a1[3];
  v13 = a1;
  v15 = &v19 - v14;
  sub_1A7CC9878(v13, v12);
  sub_1A7DC9668();

  sub_1A7E23260();
  *&v28 = v6;
  *(&v28 + 1) = v7;
  *&v29 = v8;
  LOBYTE(v25[0]) = 0;
  sub_1A7DC93A4();
  v16 = v34;
  sub_1A7E23030();
  if (!v16)
  {
    v18 = v20;

    v28 = v31;
    v29 = v32;
    v30[0] = v33[0];
    *(v30 + 15) = *(v33 + 15);
    v27 = 1;
    sub_1A7CEB448(&v31, v25);
    sub_1A7DC96BC();
    sub_1A7E23030();
    v25[0] = v28;
    v25[1] = v29;
    *v26 = v30[0];
    *&v26[15] = *(v30 + 15);
    sub_1A7CEB5C8(v25);
    v22 = v10;
    v23 = v11;
    v24 = v18;
    v21 = 2;
    sub_1A7DC9710();

    sub_1A7E23030();
  }

  return (*(v4 + 8))(v15, v3);
}

uint64_t IDSLinksQualityReportBuilder.Report.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A7CC7FFC(&qword_1EB2B77A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - v8;
  v10 = a1[3];
  v81 = a1;
  sub_1A7CC9878(a1, v10);
  sub_1A7DC9668();
  sub_1A7E23250();
  if (v2)
  {
    sub_1A7B0CD6C(v81);
    LOBYTE(v42) = 0;
    *(&v42 + 1) = v80[0];
    HIDWORD(v42) = *(v80 + 3);
    v43 = 0;
    v44 = 0;
    v45 = 0xE000000000000000;
    *&v46 = 4;
    *(&v46 + 1) = 0xA0000000ALL;
    LOWORD(v47) = 0;
    BYTE2(v47) = 0;
    sub_1A7CEB5C8(&v42);
  }

  else
  {
    v34 = v6;
    LOBYTE(v35) = 0;
    sub_1A7DC9488();
    v11 = v5;
    sub_1A7E22F30();
    v12 = v42;
    *(&v30 + 1) = v43;
    v13 = v44;
    v69 = 1;
    sub_1A7DC9764();
    sub_1A7E22F30();
    *&v30 = v12;
    v26 = v13;
    v31 = v70;
    v80[0] = *v71;
    *(v80 + 3) = *&v71[3];
    v33 = v72;
    v14 = v74;
    v32 = v73;
    v15 = v75;
    LODWORD(v12) = v76;
    v28 = v78;
    v29 = v77;
    v27 = v79;
    v61[0] = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0xE000000000000000;
    v65 = 4;
    v66 = 0xA0000000ALL;
    v67 = 0;
    v68 = 0;
    sub_1A7CEB5C8(v61);
    v57 = 2;
    sub_1A7DC97B8();
    sub_1A7E22F30();
    (*(v34 + 8))(v9, v11);
    v16 = v58;
    v17 = v59;
    v34 = v60;

    v18 = *(&v30 + 1);
    v35 = v30;
    v19 = v26;
    *&v36 = v26;
    BYTE8(v36) = v31;
    HIDWORD(v36) = *(v80 + 3);
    *(&v36 + 9) = v80[0];
    v37 = v33;
    *&v38 = v32;
    *(&v38 + 1) = v14;
    *&v39 = __PAIR64__(v12, v15);
    BYTE8(v39) = v29;
    BYTE9(v39) = v28;
    v20 = v27;
    BYTE10(v39) = v27;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v21 = v34;
    v41 = v34;
    v22 = v40;
    *(a2 + 64) = v39;
    *(a2 + 80) = v22;
    *(a2 + 96) = v21;
    v23 = v38;
    *(a2 + 32) = v37;
    *(a2 + 48) = v23;
    v24 = v36;
    *a2 = v35;
    *(a2 + 16) = v24;
    sub_1A7DC980C(&v35, &v42);
    sub_1A7B0CD6C(v81);
    v42 = v30;
    v43 = v18;
    v44 = v19;
    LOBYTE(v45) = v31;
    *(&v45 + 1) = v80[0];
    HIDWORD(v45) = *(v80 + 3);
    v46 = v33;
    v47 = v32;
    v48 = v14;
    v49 = v15;
    v50 = v12;
    v51 = v29;
    v52 = v28;
    v53 = v20;
    v54 = v16;
    v55 = v17;
    v56 = v34;
    return sub_1A7DC9844(&v42);
  }
}

uint64_t IDSLinksQualityReportBuilder.reportsByLinkCycle.getter()
{
  type metadata accessor for IDSLinksQualityReportBuilder();
}

uint64_t IDSLinksQualityReportBuilder.reportsByLinkCycle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IDSLinksQualityReportBuilder() + 20);

  *(v1 + v3) = a1;
  return result;
}

void (*sub_1A7DBE624(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1A7DC9138(v8, a2, a3, a4);
  return sub_1A7DBE6B4;
}

void sub_1A7DBE6B4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t IDSLinksQualityReportBuilder.syncToken.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_1A7CE38F4(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + *(type metadata accessor for IDSLinksQualityReportBuilder() + 20));
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v33 = v3;

  v9 = 0;
  v31 = v8;
  v32 = v4;
  while (v7)
  {
LABEL_11:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v33 + 48) + 24 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v34 = *(*(*(v33 + 56) + 104 * v11 + 96) + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1A7CD12D4(v13, v14, v15);
    v19 = v2[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_24;
    }

    v22 = v17;
    if (v2[3] >= v21)
    {

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v22)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1A7DC760C();
        if (v22)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1A7DC075C(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_1A7CD12D4(v13, v14, v15);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_26;
      }

      v18 = v23;

      if (v22)
      {
LABEL_4:

        *(v2[7] + 8 * v18) = v34;
        goto LABEL_5;
      }
    }

    v2[(v18 >> 6) + 8] |= 1 << v18;
    v25 = (v2[6] + 24 * v18);
    *v25 = v13;
    v25[1] = v14;
    v25[2] = v15;
    *(v2[7] + 8 * v18) = v34;
    v26 = v2[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_25;
    }

    v2[2] = v28;
LABEL_5:
    v7 &= v7 - 1;

    v8 = v31;
    v4 = v32;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      *a1 = v2;
      return result;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1A7E23140();
  __break(1u);
  return result;
}

uint64_t sub_1A7DBE974(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B50D0);
  v35 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 32 * v20;
      v38 = *v22;
      v23 = *(v22 + 1);
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v36 = *(v21 + 8 * v20);
      v37 = *(v22 + 24);
      if ((v35 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E23220();
      sub_1A7E23220();
      sub_1A7E22350();
      MEMORY[0x1AC562B10](v37);
      result = sub_1A7E23240();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v38;
      *(v16 + 1) = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 24) = v37;
      *(*(v7 + 56) + 8 * v15) = v36;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DBEC5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B50C8);
  v36 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 32 * v21;
      v40 = *v22;
      v39 = *(v22 + 1);
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      v25 = (*(v5 + 56) + 16 * v21);
      v26 = v25[1];
      v37 = *v25;
      v38 = *(v22 + 24);
      if ((v36 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E23220();
      sub_1A7E23220();
      sub_1A7E22350();
      MEMORY[0x1AC562B10](v38);
      result = sub_1A7E23240();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v40;
      *(v16 + 1) = v39;
      *(v16 + 8) = v24;
      *(v16 + 16) = v23;
      *(v16 + 24) = v38;
      v17 = (*(v7 + 56) + 16 * v15);
      *v17 = v37;
      v17[1] = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DBEF5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5208);
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_1A7B1503C(v21, v30);
      }

      else
      {
        sub_1A7B0CD10(v21, v30);
      }

      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v20);
      result = sub_1A7E23240();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1A7B1503C(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DBF1F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5230);
  v38 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      if ((v38 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DBF4D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5148);
  v34 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DBF7C8(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v9 = *v5;
  sub_1A7CC7FFC(a3);
  v35 = a2;
  result = sub_1A7E22E00();
  v11 = result;
  if (*(v9 + 16))
  {
    v34 = v5;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48) + 24 * v23;
      if (v35)
      {
        sub_1A7CE5028(v24, v36, a5);
        v25 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        sub_1A7CD1F00(v24, v36, a5);
        v25 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v36[0]);
      result = sub_1A7E23240();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1A7CE5028(v36, *(v11 + 48) + 24 * v19, a5);
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v7 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v7 = v34;
    if (v33 >= 64)
    {
      bzero((v9 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v7 = v11;
  return result;
}

uint64_t sub_1A7DBFAA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5060);
  v50 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v48 = v2;
    v49 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v55 = v21;
      v25 = *(v5 + 56);
      v26 = (*(v5 + 48) + 24 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = (v25 + 104 * v24);
      if (v50)
      {
        v53 = v30[1];
        v54 = *v30;
        v31 = v30[2];
        v32 = *(v30 + 5);
        v60 = *(v30 + 3);
        v61 = v32;
        v62[0] = *(v30 + 7);
        *(v62 + 15) = *(v30 + 71);
        v33 = v30[10];
        v34 = v30[11];
        v51 = v31;
        v52 = v30[12];
      }

      else
      {
        v36 = *(v30 + 1);
        v35 = *(v30 + 2);
        v57 = *v30;
        v58[0] = v36;
        v58[1] = v35;
        v38 = *(v30 + 4);
        v37 = *(v30 + 5);
        v39 = *(v30 + 3);
        v59 = v30[12];
        v58[3] = v38;
        v58[4] = v37;
        v58[2] = v39;
        v34 = *(&v37 + 1);
        v33 = v37;
        v52 = v59;
        v53 = *(&v57 + 1);
        v54 = v57;
        v51 = *&v58[0];

        sub_1A7DC980C(&v57, v56);
        v60 = *(v58 + 8);
        v61 = *(&v58[1] + 8);
        v62[0] = *(&v58[2] + 8);
        *(v62 + 15) = *(&v58[3] + 7);
      }

      sub_1A7E23200();
      sub_1A7E22350();
      MEMORY[0x1AC562AF0](v29);
      result = sub_1A7E23240();
      v40 = -1 << *(v7 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v14 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v16 = v27;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v14 + 8 * v42);
          if (v46 != -1)
          {
            v15 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v41) & ~*(v14 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v16 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v7 + 48) + 24 * v15);
      *v17 = v16;
      v17[1] = v28;
      v17[2] = v29;
      v18 = *(v7 + 56) + 104 * v15;
      v19 = v61;
      *(v18 + 24) = v60;
      *v18 = v54;
      *(v18 + 8) = v53;
      *(v18 + 16) = v51;
      *(v18 + 40) = v19;
      *(v18 + 56) = v62[0];
      *(v18 + 71) = *(v62 + 15);
      *(v18 + 80) = v33;
      *(v18 + 88) = v34;
      *(v18 + 96) = v52;
      ++*(v7 + 16);
      v5 = v49;
      v12 = v55;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_34;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v9, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DBFED0(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v9 = *v5;
  sub_1A7CC7FFC(a3);
  v37 = a2;
  result = sub_1A7E22E00();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v5;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48) + 24 * v24;
      if (v37)
      {
        sub_1A7CE5028(v25, v40, a5);
        v26 = (*(v9 + 56) + 32 * v24);
        v38 = *v26;
        v39 = v26[1];
      }

      else
      {
        sub_1A7CD1F00(v25, v40, a5);
        v27 = (*(v9 + 56) + 32 * v24);
        v38 = *v27;
        v39 = v27[1];
      }

      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v40[0]);
      result = sub_1A7E23240();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1A7CE5028(v40, *(v11 + 48) + 24 * v19, a5);
      v20 = (*(v11 + 56) + 32 * v19);
      *v20 = v38;
      v20[1] = v39;
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v7 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v7 = v36;
    if (v35 >= 64)
    {
      bzero((v9 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v7 = v11;
  return result;
}

uint64_t sub_1A7DC01D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B51F0);
  v34 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC0478(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5170);
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 16 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *v22;
      v33 = *(v22 + 24);
      v34 = *(v22 + 8);
      v35 = v21;
      v24 = *(&v21 + 1);
      if ((a2 & 1) == 0)
      {
      }

      sub_1A7E23200();
      if (v24)
      {
        MEMORY[0x1AC562AF0](1);
        sub_1A7E22350();
      }

      else
      {
        MEMORY[0x1AC562AF0](0);
      }

      result = sub_1A7E23240();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v35;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v23;
      *(v16 + 8) = v34;
      *(v16 + 24) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC075C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B51A8);
  v35 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v36 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      MEMORY[0x1AC562AF0](v25);
      result = sub_1A7E23240();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      *(*(v7 + 56) + 8 * v15) = v36;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC0A20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B51A0);
  v36 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 24 * v21);
      v23 = v22[1];
      v24 = v22[2];
      v25 = (*(v5 + 56) + 16 * v21);
      v26 = v25[1];
      v37 = *v25;
      v38 = *v22;
      if ((v36 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      MEMORY[0x1AC562AF0](v24);
      result = sub_1A7E23240();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v38;
      v16[1] = v23;
      v16[2] = v24;
      v17 = (*(v7 + 56) + 16 * v15);
      *v17 = v37;
      v17[1] = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC0CF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5088);
  v37 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v40 = *v24;
      v41 = *v22;
      v38 = *(v24 + 17);
      v39 = *(v24 + 16);
      v26 = *(v24 + 24);
      if ((v37 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v41;
      v16[1] = v23;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v40;
      *(v17 + 8) = v25;
      *(v17 + 16) = v39;
      *(v17 + 17) = v38;
      *(v17 + 24) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC0FE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B50B8);
  v33 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC1284(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1A7E21B60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5190);
  v41 = a2;
  result = sub_1A7E22E00();
  v11 = result;
  if (*(v9 + 16))
  {
    v45 = v5;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v9;
    v40 = v6;
    v43 = (v6 + 32);
    v18 = result + 64;
    v19 = v42;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v43)(v19, v26, v45);
        v27 = *(*(v9 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v19, v26, v45);
        v27 = *(*(v9 + 56) + 8 * v24);
      }

      sub_1A7DCA074();
      result = sub_1A7E221C0();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v19 = v42;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v19 = v42;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v43)(*(v11 + 48) + v44 * v20, v19, v45);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1A7DC1630(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5198);
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x1AC562AC0](*(v7 + 40), v20, 1);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC18A4(uint64_t a1, int a2)
{
  v3 = v2;
  v40 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v6);
  v39 = &v35 - v7;
  v8 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5180);
  v38 = a2;
  result = sub_1A7E22E00();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v17 = (v5 + 32);
    v18 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v8 + 48) + 8 * v23);
      v25 = *(v5 + 72);
      v26 = *(v8 + 56) + v25 * v23;
      if (v38)
      {
        (*v17)(v39, v26, v40);
      }

      else
      {
        (*v36)(v39, v26, v40);
      }

      result = sub_1A7E231F0();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v24;
      result = (*v17)(*(v10 + 56) + v25 * v19, v39, v40);
      ++*(v10 + 16);
      v5 = v37;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1A7DC1BF8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1A7E21B60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5158);
  v41 = a2;
  result = sub_1A7E22E00();
  v11 = result;
  if (*(v9 + 16))
  {
    v45 = v5;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v9;
    v40 = v6;
    v43 = (v6 + 32);
    v18 = result + 64;
    v19 = v42;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v41)
      {
        (*v43)(v19, v26, v45);
        v27 = *(*(v9 + 56) + 8 * v24);
      }

      else
      {
        (*v38)(v19, v26, v45);
        v27 = *(*(v9 + 56) + 8 * v24);
      }

      sub_1A7DCA074();
      result = sub_1A7E221C0();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v19 = v42;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v19 = v42;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v43)(*(v11 + 48) + v44 * v20, v19, v45);
      *(*(v11 + 56) + 8 * v20) = v27;
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1A7DC1FA4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1A7E21B60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5168);
  v40 = a2;
  result = sub_1A7E22E00();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v6 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
      }

      else
      {
        (*v37)(v44, v26, v5);
      }

      v42 = *(*(v10 + 56) + 8 * v24);
      sub_1A7DCA074();
      result = sub_1A7E221C0();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v6 = v38;
      v10 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1A7DC233C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5218);
  v37 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC25FC(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v36 - v7;
  v8 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5078);
  v40 = a2;
  result = sub_1A7E22E00();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v8;
    v39 = v5;
    v17 = (v5 + 32);
    v18 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = *(*(v8 + 48) + 8 * v23);
      v26 = *(v39 + 72);
      v27 = v24 + v26 * v23;
      if (v40)
      {
        (*v17)(v41, v27, v42);
      }

      else
      {
        (*v37)(v41, v27, v42);
      }

      sub_1A7E23200();
      MEMORY[0x1AC562B10](v25);
      result = sub_1A7E23240();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v10 + 48) + 8 * v19) = v25;
      result = (*v17)(*(v10 + 56) + v26 * v19, v41, v42);
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1A7DC29C4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1A7CC7FFC(a3);
  v36 = a2;
  result = sub_1A7E22E00();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1A7DC2C60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B50D8);
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1A7E22960();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC2EC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B50A0);
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1A7E22960();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A7DC314C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1A7CC7FFC(a3);
  v35 = a2;
  result = sub_1A7E22E00();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1A7E23200();
      sub_1A7E22350();
      result = sub_1A7E23240();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1A7DC33EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A7CC7FFC(&qword_1EB2B5080);
  v30 = a2;
  result = sub_1A7E22E00();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1A7E23200();
      MEMORY[0x1AC562AF0](v20);
      result = sub_1A7E23240();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A7DC367C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1A7CD0D3C(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A7DBE974(v20, a6 & 1);
      result = sub_1A7CD0D3C(a2, a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1A7DC6580();
      result = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * result) = a1;
    return result;
  }

  v25[(result >> 6) + 8] |= 1 << result;
  v26 = v25[6] + 32 * result;
  *v26 = a2;
  *(v26 + 8) = a3;
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  *(v25[7] + 8 * result) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;
}

uint64_t sub_1A7DC3814(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1A7CD0D3C(a3, a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1A7DBEC5C(v22, a7 & 1);
      v17 = sub_1A7CD0D3C(a3, a4, a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1A7DC66F8();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = v27[6] + 32 * v17;
  *v30 = a3;
  *(v30 + 8) = a4;
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

_OWORD *sub_1A7DC39CC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A7CD0DFC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1A7DC6884();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1A7DBEF5C(v14, a3 & 1);
    v9 = sub_1A7CD0DFC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1A7E23140();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_1A7B0CD6C(v20);

    return sub_1A7B1503C(a1, v20);
  }

  else
  {

    return sub_1A7DC6248(v9, a2, a1, v19);
  }
}

uint64_t sub_1A7DC3AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1A7CD1234(a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_1A7DC714C(&qword_1EB2B5128, &unk_1A7E520F0, &qword_1EB2B4AE8);
      goto LABEL_7;
    }

    sub_1A7DBFED0(v19, a6 & 1, &qword_1EB2B5128, &unk_1A7E520F0, &qword_1EB2B4AE8);
    v25 = sub_1A7CD1234(a5);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A7CD1F00(a5, v27, &qword_1EB2B4AE8);
      return sub_1A7DC6324(v16, v27, a1, a2, a3, a4, v22, &qword_1EB2B4AE8);
    }

LABEL_15:
    sub_1A7CC7FFC(&qword_1EB2B4AE8);
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
}

uint64_t sub_1A7DC3CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1A7CD1248(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A7DBF1F0(v20, a6 & 1);
      v15 = sub_1A7CD1248(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1A7DC6A00();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v25[7] + 24 * v15);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

uint64_t sub_1A7DC3E9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A7CD1248(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A7DBF4D8(v16, a4 & 1);
      v11 = sub_1A7CD1248(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A7DC6BA0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1A7DC4018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A7CD12D4(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A7DBFAA0(v18, a5 & 1);
      v13 = sub_1A7CD12D4(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A7DC6F18();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 104 * v13;

    return sub_1A7DCA0CC(a1, v24);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 24 * v13);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v27 = v23[7] + 104 * v13;
  v28 = *a1;
  v29 = *(a1 + 32);
  *(v27 + 16) = *(a1 + 16);
  *(v27 + 32) = v29;
  *v27 = v28;
  v30 = *(a1 + 48);
  v31 = *(a1 + 64);
  v32 = *(a1 + 80);
  *(v27 + 96) = *(a1 + 96);
  *(v27 + 64) = v31;
  *(v27 + 80) = v32;
  *(v27 + 48) = v30;
  v33 = v23[2];
  v17 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v34;
}

uint64_t sub_1A7DC41D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1A7CD1390(a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_1A7DC714C(&qword_1EB2B5138, &unk_1A7E52100, &qword_1EB2B4B18);
      goto LABEL_7;
    }

    sub_1A7DBFED0(v19, a6 & 1, &qword_1EB2B5138, &unk_1A7E52100, &qword_1EB2B4B18);
    v25 = sub_1A7CD1390(a5);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A7CD1F00(a5, v27, &qword_1EB2B4B18);
      return sub_1A7DC6324(v16, v27, a1, a2, a3, a4, v22, &qword_1EB2B4B18);
    }

LABEL_15:
    sub_1A7CC7FFC(&qword_1EB2B4B18);
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
}

uint64_t sub_1A7DC43C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1A7CD12C0(a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_1A7DC714C(&qword_1EB2B5118, &unk_1A7E43390, &qword_1EB2B4B30);
      goto LABEL_7;
    }

    sub_1A7DBFED0(v19, a6 & 1, &qword_1EB2B5118, &unk_1A7E43390, &qword_1EB2B4B30);
    v25 = sub_1A7CD12C0(a5);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A7CD1F00(a5, v27, &qword_1EB2B4B30);
      return sub_1A7DC6324(v16, v27, a1, a2, a3, a4, v22, &qword_1EB2B4B30);
    }

LABEL_15:
    sub_1A7CC7FFC(&qword_1EB2B4B30);
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
}

unint64_t sub_1A7DC45AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A7CD1248(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A7DC01D8(v16, a4 & 1);
      result = sub_1A7CD1248(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A7DC7320();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1A7DC4710(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A7CD1248(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A7DC314C(v16, a4 & 1, &qword_1EB2B50C0);
      v11 = sub_1A7CD1248(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A7DC8E78(&qword_1EB2B50C0);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1A7DC48B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1A7CD137C(a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_1A7DC714C(&qword_1EB2B51E0, &unk_1A7E43458, &qword_1EB2B4B40);
      goto LABEL_7;
    }

    sub_1A7DBFED0(v19, a6 & 1, &qword_1EB2B51E0, &unk_1A7E43458, &qword_1EB2B4B40);
    v25 = sub_1A7CD137C(a5);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A7CD1F00(a5, v27, &qword_1EB2B4B40);
      return sub_1A7DC6324(v16, v27, a1, a2, a3, a4, v22, &qword_1EB2B4B40);
    }

LABEL_15:
    sub_1A7CC7FFC(&qword_1EB2B4B40);
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
}

uint64_t sub_1A7DC4A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_1A7CD1220(a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_1A7DC714C(&qword_1EB2B5090, &unk_1A7E432F0, &qword_1EB2B4B00);
      goto LABEL_7;
    }

    sub_1A7DBFED0(v19, a6 & 1, &qword_1EB2B5090, &unk_1A7E432F0, &qword_1EB2B4B00);
    v25 = sub_1A7CD1220(a5);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A7CD1F00(a5, v27, &qword_1EB2B4B00);
      return sub_1A7DC6324(v16, v27, a1, a2, a3, a4, v22, &qword_1EB2B4B00);
    }

LABEL_15:
    sub_1A7CC7FFC(&qword_1EB2B4B00);
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
}

unint64_t sub_1A7DC4C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A7CD1424(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A7DC0478(v16, a4 & 1);
      result = sub_1A7CD1424(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A7DC7488();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * result;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v24 = (v21[6] + 16 * result);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * result;
  v26 = *(a1 + 16);
  *v25 = *a1;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a1 + 32);
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v28;
}

unint64_t sub_1A7DC4E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1A7CD12D4(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A7DC075C(v18, a5 & 1);
      result = sub_1A7CD12D4(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1A7DC760C();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * result) = a1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v24 = (v23[6] + 24 * result);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  *(v23[7] + 8 * result) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v26;
}

uint64_t sub_1A7DC4F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1A7CD12D4(a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1A7DC0A20(v20, a6 & 1);
      v15 = sub_1A7CD12D4(a3, a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1A7DC7780();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 16 * v15);
    *v26 = a1;
    v26[1] = a2;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 24 * v15);
  *v28 = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = (v25[7] + 16 * v15);
  *v29 = a1;
  v29[1] = a2;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

uint64_t sub_1A7DC5130(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1A7CD1248(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1A7DC0CF8(v22, a7 & 1);
      v17 = sub_1A7CD1248(a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1A7DC7908();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * v17;
    *v28 = a1;
    *(v28 + 8) = a2;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a5;
  v30[1] = a6;
  v31 = v27[7] + 32 * v17;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

unint64_t sub_1A7DC52F4(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A7CD1248(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1A7DC0FE0(v16, a3 & 1);
      result = sub_1A7CD1248(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A7DC7AA4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1A7DC5450(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A7E21B60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1A7CD14FC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1A7DC7C0C();
      goto LABEL_7;
    }

    sub_1A7DC1284(v18, a3 & 1);
    v23 = sub_1A7CD14FC(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1A7DC63C8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

unint64_t sub_1A7DC561C(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A7CD1580(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A7DC1630(v14, a3 & 1);
      result = sub_1A7CD1580(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A7DC8FEC(&qword_1EB2B5198);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1A7DC577C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A7CD14B8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A7DC7EA0();
      goto LABEL_7;
    }

    sub_1A7DC18A4(v13, a3 & 1);
    v24 = sub_1A7CD14B8(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1A7CC7FFC(&qword_1EB2B61D0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1A7DC6480(v10, a2, a1, v16);
}

uint64_t sub_1A7DC58F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A7E21B60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1A7CD14FC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1A7DC8110();
      goto LABEL_7;
    }

    sub_1A7DC1BF8(v18, a3 & 1);
    v23 = sub_1A7CD14FC(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1A7DC63C8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

uint64_t sub_1A7DC5ABC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A7E21B60();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1A7CD14FC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + 8 * v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_1A7DC8390();
    goto LABEL_7;
  }

  sub_1A7DC1FA4(result, a3 & 1);
  result = sub_1A7CD14FC(a2);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1A7DC63C8(v15, v12, a1, v21);
}

uint64_t sub_1A7DC5C58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A7CD15C0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A7DC8778();
      goto LABEL_7;
    }

    sub_1A7DC25FC(v13, a3 & 1);
    v24 = sub_1A7CD15C0(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1A7CC7FFC(&qword_1EB2B7818);
    result = sub_1A7E23140();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1A7CC7FFC(&qword_1EB2B61D0);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1A7DC6480(v10, a2, a1, v16);
}

void sub_1A7DC5DD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A7CD1248(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A7DC29C4(v16, a4 & 1, &qword_1EB2B50E0);
      v11 = sub_1A7CD1248(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A7E23140();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A7DC8A44(&qword_1EB2B50E0);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_1A7DC5F74(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A7CD162C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A7DC2C60(v13, a3 & 1);
      v8 = sub_1A7CD162C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A7CD1EB4();
        sub_1A7E23140();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1A7DC8BA0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

id sub_1A7DC60DC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A7CD162C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A7DC2EC8(v13, a3 & 1);
      v8 = sub_1A7CD162C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A7CD1EB4();
        result = sub_1A7E23140();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A7DC8D00();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

_OWORD *sub_1A7DC6248(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1A7B1503C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1A7DC62B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v7 = a6[7] + 104 * result;
  v8 = *(a5 + 16);
  *v7 = *a5;
  *(v7 + 16) = v8;
  *(v7 + 96) = *(a5 + 96);
  v9 = *(a5 + 80);
  *(v7 + 64) = *(a5 + 64);
  *(v7 + 80) = v9;
  v10 = *(a5 + 48);
  *(v7 + 32) = *(a5 + 32);
  *(v7 + 48) = v10;
  v11 = a6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v13;
  }

  return result;
}

uint64_t sub_1A7DC6324(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  result = sub_1A7CE5028(a2, a7[6] + 24 * a1, a8);
  v15 = (a7[7] + 32 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v16 = a7[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v18;
  }

  return result;
}

uint64_t sub_1A7DC63C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A7E21B60();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1A7DC6480(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1A7DC6538(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void *sub_1A7DC6580()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B50D0);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *v18;
        v21 = *(v18 + 8);
        v20 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v4 + 48) + 32 * v17;
        *v24 = v19;
        *(v24 + 8) = v21;
        *(v24 + 16) = v20;
        *(v24 + 24) = v22;
        *(*(v4 + 56) + 8 * v17) = v23;
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

void *sub_1A7DC66F8()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B50C8);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *v19;
        v22 = *(v19 + 8);
        v21 = *(v19 + 16);
        v23 = *(v19 + 24);
        v17 *= 16;
        v24 = (*(v2 + 56) + v17);
        v25 = *v24;
        v26 = v24[1];
        v27 = *(v4 + 48) + v18;
        *v27 = v20;
        *(v27 + 8) = v22;
        *(v27 + 16) = v21;
        *(v27 + 24) = v23;
        v28 = (*(v4 + 56) + v17);
        *v28 = v25;
        v28[1] = v26;
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

void *sub_1A7DC6884()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5208);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1A7B0CD10(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1A7B1503C(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1A7DC6A00()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5230);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;
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

void *sub_1A7DC6BA0()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5148);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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

void *sub_1A7DC6D58(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  sub_1A7CC7FFC(a1);
  v5 = *v3;
  v6 = sub_1A7E22DF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v21 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v23 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v11 << 6);
        sub_1A7CD1F00(*(v5 + 48) + 24 * v19, v24, a3);
        v20 = *(*(v5 + 56) + 8 * v19);
        sub_1A7CE5028(v24, *(v7 + 48) + 24 * v19, a3);
        *(*(v7 + 56) + 8 * v19) = v20;

        v14 = v23;
      }

      while (v23);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v4 = v21;
        goto LABEL_21;
      }

      v18 = *(v5 + 64 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v23 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_1A7DC6F18()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5060);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1A7DC980C(&v36, v35))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 24 * v16;
      v18 = (*(v2 + 48) + 24 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[2];
      v16 *= 104;
      v22 = *(v2 + 56) + v16;
      v24 = *(v22 + 64);
      v23 = *(v22 + 80);
      v25 = *(v22 + 48);
      v42 = *(v22 + 96);
      v40 = v24;
      v41 = v23;
      v39 = v25;
      v27 = *(v22 + 16);
      v26 = *(v22 + 32);
      v36 = *v22;
      v37 = v27;
      v38 = v26;
      v28 = (*(v4 + 48) + v17);
      *v28 = v20;
      v28[1] = v19;
      v28[2] = v21;
      v29 = *(v4 + 56) + v16;
      v30 = v36;
      v31 = v38;
      *(v29 + 16) = v37;
      *(v29 + 32) = v31;
      *v29 = v30;
      v32 = v39;
      v33 = v40;
      v34 = v41;
      *(v29 + 96) = v42;
      *(v29 + 64) = v33;
      *(v29 + 80) = v34;
      *(v29 + 48) = v32;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1A7DC714C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  sub_1A7CC7FFC(a1);
  v6 = *v3;
  v7 = sub_1A7E22DF0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v5;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = 24 * v21;
        sub_1A7CD1F00(*(v6 + 48) + 24 * v21, v28, a3);
        v21 *= 32;
        v23 = (*(v6 + 56) + v21);
        v26 = *v23;
        v27 = v23[1];
        sub_1A7CE5028(v28, *(v8 + 48) + v22, a3);
        v24 = (*(v8 + 56) + v21);
        *v24 = v26;
        v24[1] = v27;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v5 = v25;
        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

void *sub_1A7DC7320()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B51F0);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1A7DC7488()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5170);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v17 *= 40;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 24);
        *(*(v4 + 48) + v18) = *(*(v2 + 48) + v18);
        v23 = *(v4 + 56) + v17;
        *v23 = v20;
        *(v23 + 8) = v21;
        *(v23 + 24) = v22;
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

void *sub_1A7DC760C()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B51A8);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v18 = (*(v2 + 48) + 24 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 24 * v17);
        *v23 = v20;
        v23[1] = v19;
        v23[2] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_1A7DC7780()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B51A0);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v18 = 24 * v17;
        v19 = (*(v2 + 48) + 24 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v17 *= 16;
        v23 = (*(v2 + 56) + v17);
        v24 = *v23;
        v25 = v23[1];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v26[2] = v22;
        v27 = (*(v4 + 56) + v17);
        *v27 = v24;
        v27[1] = v25;
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

void *sub_1A7DC7908()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5088);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;
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

void *sub_1A7DC7AA4()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B50B8);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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

char *sub_1A7DC7C0C()
{
  v1 = v0;
  v34 = sub_1A7E21B60();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC7FFC(&qword_1EB2B5190);
  v4 = *v0;
  v5 = sub_1A7E22DF0();
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

void *sub_1A7DC7EA0()
{
  v1 = v0;
  v30 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v2);
  v29 = &v25 - v3;
  sub_1A7CC7FFC(&qword_1EB2B5180);
  v4 = *v0;
  v5 = sub_1A7E22DF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

char *sub_1A7DC8110()
{
  v1 = v0;
  v34 = sub_1A7E21B60();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v2);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC7FFC(&qword_1EB2B5158);
  v4 = *v0;
  v5 = sub_1A7E22DF0();
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

char *sub_1A7DC8390()
{
  v1 = v0;
  v32 = sub_1A7E21B60();
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7CC7FFC(&qword_1EB2B5168);
  v4 = *v0;
  v5 = sub_1A7E22DF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_1A7DC8600()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B5218);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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

void *sub_1A7DC8778()
{
  v1 = v0;
  v30 = sub_1A7CC7FFC(&qword_1EB2B61D0);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v2);
  v29 = &v25 - v3;
  sub_1A7CC7FFC(&qword_1EB2B5078);
  v4 = *v0;
  v5 = sub_1A7E22DF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

id sub_1A7DC8A44(uint64_t *a1)
{
  v2 = v1;
  sub_1A7CC7FFC(a1);
  v3 = *v1;
  v4 = sub_1A7E22DF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_1A7DC8BA0()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B50D8);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_1A7DC8D00()
{
  v1 = v0;
  sub_1A7CC7FFC(&qword_1EB2B50A0);
  v2 = *v0;
  v3 = sub_1A7E22DF0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_1A7DC8E78(uint64_t *a1)
{
  v2 = v1;
  sub_1A7CC7FFC(a1);
  v3 = *v1;
  v4 = sub_1A7E22DF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1A7DC8FEC(uint64_t *a1)
{
  v2 = v1;
  sub_1A7CC7FFC(a1);
  v3 = *v1;
  v4 = sub_1A7E22DF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void (*sub_1A7DC9138(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_1A7DFD284(v9);
  v9[9] = sub_1A7DFCF38(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_1A7DC91F4;
}

void sub_1A7DC91F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t sub_1A7DC9254()
{
  result = qword_1EB2B76E0;
  if (!qword_1EB2B76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76E0);
  }

  return result;
}

unint64_t sub_1A7DC92A8()
{
  result = qword_1EB2B76F0;
  if (!qword_1EB2B76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B76F0);
  }

  return result;
}

unint64_t sub_1A7DC92FC()
{
  result = qword_1EB2B3138;
  if (!qword_1EB2B3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3138);
  }

  return result;
}

unint64_t sub_1A7DC9350()
{
  result = qword_1EB2B7708;
  if (!qword_1EB2B7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7708);
  }

  return result;
}

unint64_t sub_1A7DC93A4()
{
  result = qword_1EB2B7720;
  if (!qword_1EB2B7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7720);
  }

  return result;
}

uint64_t sub_1A7DC93F8(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B7710);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7DC9488()
{
  result = qword_1EB2B7738;
  if (!qword_1EB2B7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7738);
  }

  return result;
}

unint64_t sub_1A7DC94DC()
{
  result = qword_1EB2B7748;
  if (!qword_1EB2B7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7748);
  }

  return result;
}

uint64_t sub_1A7DC9530(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B7750);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7DC95C0()
{
  result = qword_1EB2B7760;
  if (!qword_1EB2B7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7760);
  }

  return result;
}

unint64_t sub_1A7DC9614()
{
  result = qword_1EB2B7778;
  if (!qword_1EB2B7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7778);
  }

  return result;
}

unint64_t sub_1A7DC9668()
{
  result = qword_1EB2B7788;
  if (!qword_1EB2B7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7788);
  }

  return result;
}

unint64_t sub_1A7DC96BC()
{
  result = qword_1EB2B7790;
  if (!qword_1EB2B7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7790);
  }

  return result;
}

unint64_t sub_1A7DC9710()
{
  result = qword_1EB2B7798;
  if (!qword_1EB2B7798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7798);
  }

  return result;
}

unint64_t sub_1A7DC9764()
{
  result = qword_1EB2B77A8;
  if (!qword_1EB2B77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77A8);
  }

  return result;
}

unint64_t sub_1A7DC97B8()
{
  result = qword_1EB2B77B0;
  if (!qword_1EB2B77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77B0);
  }

  return result;
}

unint64_t sub_1A7DC9878()
{
  result = qword_1EB2B3130;
  if (!qword_1EB2B3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3130);
  }

  return result;
}

void sub_1A7DC98F4()
{
  sub_1A7E22060();
  if (v0 <= 0x3F)
  {
    sub_1A7DC9978();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A7DC9978()
{
  if (!qword_1EB2B3098)
  {
    sub_1A7DC92FC();
    v0 = sub_1A7E22190();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2B3098);
    }
  }
}

__n128 sub_1A7DC9A0C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A7DC9A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1A7DC9A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A7DC9B2C()
{
  result = qword_1EB2B77B8;
  if (!qword_1EB2B77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77B8);
  }

  return result;
}

unint64_t sub_1A7DC9B84()
{
  result = qword_1EB2B77C0;
  if (!qword_1EB2B77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77C0);
  }

  return result;
}

unint64_t sub_1A7DC9BDC()
{
  result = qword_1EB2B77C8;
  if (!qword_1EB2B77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77C8);
  }

  return result;
}

unint64_t sub_1A7DC9C34()
{
  result = qword_1EB2B77D0;
  if (!qword_1EB2B77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77D0);
  }

  return result;
}

unint64_t sub_1A7DC9C8C()
{
  result = qword_1EB2B77D8;
  if (!qword_1EB2B77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77D8);
  }

  return result;
}

unint64_t sub_1A7DC9CE4()
{
  result = qword_1EB2B77E0;
  if (!qword_1EB2B77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77E0);
  }

  return result;
}

unint64_t sub_1A7DC9D3C()
{
  result = qword_1EB2B77E8;
  if (!qword_1EB2B77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77E8);
  }

  return result;
}

unint64_t sub_1A7DC9D94()
{
  result = qword_1EB2B77F0;
  if (!qword_1EB2B77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77F0);
  }

  return result;
}

unint64_t sub_1A7DC9DEC()
{
  result = qword_1EB2B77F8;
  if (!qword_1EB2B77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B77F8);
  }

  return result;
}

unint64_t sub_1A7DC9E44()
{
  result = qword_1EB2B7800;
  if (!qword_1EB2B7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7800);
  }

  return result;
}

unint64_t sub_1A7DC9E9C()
{
  result = qword_1EB2B7808;
  if (!qword_1EB2B7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7808);
  }

  return result;
}

unint64_t sub_1A7DC9EF4()
{
  result = qword_1EB2B7810;
  if (!qword_1EB2B7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7810);
  }

  return result;
}

uint64_t sub_1A7DC9F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6379436B6E696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174654D6B6E696CLL && a2 == 0xEC00000061746164 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A7EB1400 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

unint64_t sub_1A7DCA074()
{
  result = qword_1EB2B3038;
  if (!qword_1EB2B3038)
  {
    sub_1A7E21B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B3038);
  }

  return result;
}

void *LinkEngineConnectBestController.__allocating_init(fallbackDelay:disconnectDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t LinkEngineConnectBestController.update(linkConnector:scheduler:links:behavior:now:)(uint64_t a1, void (**a2)(void, void), void *a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v12 = a3[3];
  v13 = a3[4];
  v14 = sub_1A7CC9878(a3, v12);
  return sub_1A7DCA318(a1, a2, v14, a4, a5, a6, v6, v12, v13);
}

uint64_t sub_1A7DCA1E0()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2CC8);
  sub_1A7B0CB00(v0, qword_1EB2B2CC8);
  return sub_1A7E22050();
}