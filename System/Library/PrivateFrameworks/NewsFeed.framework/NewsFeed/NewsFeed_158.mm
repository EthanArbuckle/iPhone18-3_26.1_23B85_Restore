uint64_t FormatMediaTimingFunctionName.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7261656E696CLL;
  v3 = 0x74754F65736165;
  v4 = 0x61456E4965736165;
  if (v1 != 3)
  {
    v4 = 0x746C7561666564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E4965736165;
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

NewsFeed::FormatMediaTimingFunctionName_optional __swiftcall FormatMediaTimingFunctionName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D69BA9CC()
{
  result = qword_1EC88F7E8;
  if (!qword_1EC88F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F7E8);
  }

  return result;
}

uint64_t sub_1D69BAA20()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69BAB08()
{
  sub_1D72621EC();
}

uint64_t sub_1D69BABDC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D69BACCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7261656E696CLL;
  v5 = 0xE700000000000000;
  v6 = 0x74754F65736165;
  v7 = 0xED000074754F6573;
  v8 = 0x61456E4965736165;
  if (v2 != 3)
  {
    v8 = 0x746C7561666564;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E4965736165;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D69BAD70(uint64_t a1)
{
  *(a1 + 8) = sub_1D69BADA0();
  result = sub_1D69BADF4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D69BADA0()
{
  result = qword_1EC88F7F0;
  if (!qword_1EC88F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F7F0);
  }

  return result;
}

unint64_t sub_1D69BADF4()
{
  result = qword_1EC88F7F8;
  if (!qword_1EC88F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F7F8);
  }

  return result;
}

unint64_t sub_1D69BAE48(uint64_t a1)
{
  result = sub_1D666B390();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69BAE70(void *a1)
{
  a1[1] = sub_1D69BAEA8();
  a1[2] = sub_1D69BAEFC();
  result = sub_1D69BA9CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69BAEA8()
{
  result = qword_1EC88F800;
  if (!qword_1EC88F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F800);
  }

  return result;
}

unint64_t sub_1D69BAEFC()
{
  result = qword_1EC88F808;
  if (!qword_1EC88F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F808);
  }

  return result;
}

uint64_t sub_1D69BB050(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    v5 = *v1;
    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v3;
    v9 = 6;
    sub_1D62B6164(v5, v4, v3, 1);
    result = sub_1D703E0C8(v8, &v9);
    if (!v2)
    {
      v6 = result;
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      *(v7 + 32) = v6;
      *(v7 + 40) = 0;

      sub_1D6C4D24C(v7 | 0x3000000000000000);
    }
  }

  return result;
}

uint64_t *sub_1D69BB124(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v74 = a1;
  v4 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27DC8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v67 - v10;
  v12 = type metadata accessor for FormatOption();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D72585BC();
  v71 = *(v17 - 8);
  v72 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v69 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v70 = &v67 - v22;
  v23 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v23, v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v30 = &v67 - v28;
  if (*(v2 + 24) == 1)
  {
    v31 = v2[1];
    v67 = v2[2];
    v68 = v3;
    v32 = *v2;
    v2 = *(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options);

    FormatOptionCollection.subscript.getter(v32, v31, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1D5F873CC(v11);
      *v7 = v32;
      v7[1] = v31;
      swift_storeEnumTagMultiPayload();
      sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      sub_1D5D28724(v7, v33, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      sub_1D69BC178(v7, type metadata accessor for FormatLayoutError);
    }

    else
    {

      sub_1D5D5E4DC(v11, v16, type metadata accessor for FormatOption);

      v36 = v68;
      sub_1D6B744A8(v74, v76);
      if (v36)
      {
        sub_1D69BC178(v16, type metadata accessor for FormatOption);
      }

      else
      {

        v44 = v70;
        sub_1D6B80238(v76[0], v32, v31, v67, v74, v70);
        sub_1D69BC178(v16, type metadata accessor for FormatOption);

        v45 = *(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
        v46 = *(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
        v48 = v71;
        v47 = v72;
        (*(v71 + 16))(v69, v44, v72);

        sub_1D725A7EC();
        v49 = v76[0];
        v50 = *(*(v76[0] + 40) + 16);
        swift_beginAccess();
        if (*(*(v50 + 16) + 16))
        {
          v75 = *(v49 + 56);

          v52 = sub_1D6F622E0(v51);
          sub_1D5B886D0(v52);

          v53 = v75;
        }

        else
        {
          v53 = sub_1D6E46E28();
        }

        v62 = MEMORY[0x1E69E7CD0];
        v77 = MEMORY[0x1E69E7CD0];
        swift_beginAccess();
        v63 = qword_1EC893B38;
        v64 = off_1EC893B40;

        v65 = sub_1D5BE240C(v63, v64, v53);

        if (v65)
        {
          sub_1D5FEA1F0();
          v62 = v77;
        }

        type metadata accessor for FormatWebEmbedData();
        swift_allocObject();
        v66 = v73;

        v2 = sub_1D69B58D8(v45, v46, v69, v66, v62);
        (*(v48 + 8))(v70, v47);
      }
    }
  }

  else
  {
    v34 = v29;
    v35 = v27;
    sub_1D6B7BE60(*(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v67 - v28);
    if (!v3)
    {
      v38 = *(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
      v37 = *(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
      sub_1D5D28724(v30, v34, type metadata accessor for FeedWebEmbed);

      sub_1D725A7EC();
      v39 = v76[0];
      v40 = *(*(v76[0] + 40) + 16);
      swift_beginAccess();
      if (*(*(v40 + 16) + 16))
      {
        v75 = *(v39 + 56);

        v42 = sub_1D6F622E0(v41);
        sub_1D5B886D0(v42);

        v43 = v75;
      }

      else
      {
        v43 = sub_1D6E46E28();
      }

      v77 = MEMORY[0x1E69E7CD0];
      swift_beginAccess();
      v54 = qword_1EC893B38;
      v55 = off_1EC893B40;

      v56 = sub_1D5BE240C(v54, v55, v43);

      if (v56)
      {
        sub_1D5FEA1F0();
        sub_1D69BC178(v30, type metadata accessor for FeedWebEmbed);
        v57 = v77;
      }

      else
      {
        sub_1D69BC178(v30, type metadata accessor for FeedWebEmbed);
        v57 = MEMORY[0x1E69E7CD0];
      }

      type metadata accessor for FormatWebEmbedData();
      v2 = swift_allocObject();
      v2[2] = v38;
      v2[3] = v37;
      v58 = v34;
      (*(v71 + 16))(v2 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_url, v34 + v35[8], v72);
      *(v2 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_indexFileURLPromise) = *(v34 + v35[10]);
      *(v2 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataURLPromise) = *(v34 + v35[11]);
      sub_1D686B7BC(v34 + v35[13], v2 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_dataVisualization);
      v59 = OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem;
      sub_1D5D5E4DC(v58, v2 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_feedItem, type metadata accessor for FeedWebEmbed);
      v60 = type metadata accessor for FeedItem(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v60 - 8) + 56))(v2 + v59, 0, 1, v60);
      *(v2 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_config) = v73;
      *(v2 + OBJC_IVAR____TtC8NewsFeed18FormatWebEmbedData_routeOptions) = v57;
    }
  }

  return v2;
}

BOOL _s8NewsFeed25FormatWebEmbedNodeBindingO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v5 & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      sub_1D62B61A8(*a1, v3, v4, 0);
      sub_1D62B61A8(v6, v7, v8, 0);
      return ((v6 ^ v2) & 1) == 0;
    }

    goto LABEL_13;
  }

  if ((*(a2 + 24) & 1) == 0)
  {

LABEL_13:
    sub_1D62B6164(v6, v7, v8, v9);
    sub_1D62B61A8(v2, v3, v4, v5);
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = v9;
LABEL_14:
    sub_1D62B61A8(v13, v14, v15, v16);
    return 0;
  }

  v10 = v2 == v6 && v3 == v7;
  if (!v10 && (sub_1D72646CC() & 1) == 0)
  {
    sub_1D62B6164(v6, v7, v8, 1);
    sub_1D62B6164(v2, v3, v4, 1);
    sub_1D62B61A8(v2, v3, v4, 1);
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = 1;
    goto LABEL_14;
  }

  sub_1D62B6164(v6, v7, v8, 1);
  sub_1D62B6164(v2, v3, v4, 1);
  sub_1D62B6164(v6, v7, v8, 1);
  sub_1D62B6164(v2, v3, v4, 1);
  v11 = sub_1D6341C50(v4, v8);
  sub_1D62B61A8(v2, v3, v4, 1);
  sub_1D62B61A8(v6, v7, v8, 1);
  sub_1D62B61A8(v6, v7, v8, 1);
  sub_1D62B61A8(v2, v3, v4, 1);
  result = 1;
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void sub_1D69BBC64(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27DC8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - v16;
  if (*(v1 + 24) == 1)
  {
    v32 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v33[0] = *v1;
    v33[1] = v19;
    v33[2] = v18;
    v34 = 6;

    v21 = sub_1D703E0C8(v33, &v34);
    if (!v3)
    {
      v31 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v32 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5F873CC(v13);
        if (*(a1 + 48))
        {
          v22 = 1;
LABEL_8:
          (*(v32 + 56))(v17, v22, 1, v5);
          sub_1D5F873CC(v17);
          return;
        }

        type metadata accessor for FormatLayoutError();
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        *v24 = v20;
        v24[1] = v19;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        sub_1D5D5E4DC(v13, v9, type metadata accessor for FormatOption);
        v33[0] = v9[2];
        v23 = v31;

        FormatOptionValue.type.getter(&v34);
        if (sub_1D6183C84(v34, v23))
        {
          swift_bridgeObjectRelease_n();
          sub_1D5D5E4DC(v9, v17, type metadata accessor for FormatOption);
          v22 = 0;
          goto LABEL_8;
        }

        type metadata accessor for FormatDerivedDataError();
        sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
        swift_allocError();
        v26 = v25;
        v28 = *v9;
        v27 = v9[1];
        v33[0] = v9[2];

        FormatOptionValue.type.getter(&v34);
        v29 = v34;
        *v26 = v28;
        *(v26 + 8) = v27;
        *(v26 + 16) = v29;
        *(v26 + 24) = v23;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D69BC178(v9, type metadata accessor for FormatOption);
      }
    }
  }
}

unint64_t sub_1D69BC054(uint64_t a1)
{
  result = sub_1D69BC07C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69BC07C()
{
  result = qword_1EC88F810;
  if (!qword_1EC88F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F810);
  }

  return result;
}

unint64_t sub_1D69BC0D0(void *a1)
{
  a1[1] = sub_1D5CCB634();
  a1[2] = sub_1D66F5090();
  result = sub_1D69BC108();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69BC108()
{
  result = qword_1EC88F818;
  if (!qword_1EC88F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F818);
  }

  return result;
}

uint64_t sub_1D69BC178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D69BC1D8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D725BD1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v51 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5D3A7E0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B5BFDC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v53 = &v48[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v48[-v21];
  v23 = OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_tableView;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v57 = v4;
  *&v4[v23] = v24;
  v61 = a1;

  sub_1D69BD9B8(&v61);
  v54 = 0;

  v55 = v61;
  sub_1D5B5BFDC(0, &qword_1EC88F868, sub_1D69BDA60, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  *(inited + 32) = 0;
  v26 = *(v8 + 16);
  v58 = a3;
  v52 = v26;
  v26(v22, a3, v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  v27 = *(v12 + 48);
  sub_1D5D3A874(v59, v15);
  sub_1D5D3A874(v22, &v15[v27]);
  v28 = *(v8 + 48);
  if (v28(v15, 1, v7) == 1)
  {
    sub_1D5F40BCC(v22);
    v29 = v28(&v15[v27], 1, v7);
    v30 = v58;
    if (v29 == 1)
    {
      sub_1D5F40BCC(v15);
LABEL_9:
      sub_1D5B5BFDC(0, &qword_1EDF19B20, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6F90]);
      v38 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D7273AE0;
      v32 = v52(v34 + v38, v30, v7);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v50 = inited + 32;
  v31 = v53;
  sub_1D5D3A874(v15, v53);
  if (v28(&v15[v27], 1, v7) == 1)
  {
    sub_1D5F40BCC(v22);
    (*(v8 + 8))(v31, v7);
    v30 = v58;
LABEL_6:
    v32 = sub_1D69BDAF8(v15);
    goto LABEL_7;
  }

  v35 = &v15[v27];
  v36 = v51;
  (*(v8 + 32))(v51, v35, v7);
  sub_1D61EF968(&qword_1EDF178B8);
  v49 = sub_1D7261FBC();
  v37 = *(v8 + 8);
  v37(v36, v7);
  sub_1D5F40BCC(v22);
  v37(v31, v7);
  v32 = sub_1D5F40BCC(v15);
  v30 = v58;
  if (v49)
  {
    goto LABEL_9;
  }

LABEL_7:
  v34 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v39 = v59;
  *(inited + 40) = v34;
  *(inited + 48) = 1;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v48[-16] = v30;
  v40 = v55;

  sub_1D62ED708(sub_1D69BDB54, &v48[-32], v40);
  *(inited + 56) = v41;
  *(inited + 64) = 2;
  MEMORY[0x1EEE9AC00](v41, v42);
  *&v48[-16] = v30;
  sub_1D69BC858(sub_1D69BDB84, &v48[-32], v40);
  *(inited + 72) = v43;
  v44 = sub_1D605BCAC(inited);
  swift_setDeallocating();
  sub_1D69BDA60();
  swift_arrayDestroy();
  v45 = v57;
  *&v57[OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_sections] = v44;
  sub_1D5D3A874(v39, v45 + OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_selectedRemoteVersion);
  v60.receiver = v45;
  v60.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v60, sel_initWithNibName_bundle_, 0, 0);
  sub_1D5F40BCC(v39);
  (*(v8 + 8))(v30, v7);
  return v46;
}

void sub_1D69BC858(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v5 = sub_1D725BD1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v32 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v33 = &v24 - v12;
  v27 = *(a3 + 16);
  if (v27)
  {
    v13 = 0;
    v28 = v6 + 16;
    v31 = (v6 + 32);
    v14 = MEMORY[0x1E69E7CC0];
    v25 = v5;
    v26 = a3;
    v24 = v6;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v16 = *(v6 + 72);
      v17 = v33;
      (*(v6 + 16))(v33, a3 + v15 + v16 * v13, v5, v11);
      v18 = v29(v17);
      if (v3)
      {
        (*(v6 + 8))(v33, v5);

        goto LABEL_15;
      }

      if ((v18 & 1) == 0)
      {
        (*(v6 + 8))(v33, v5);
        goto LABEL_15;
      }

      v19 = *v31;
      (*v31)(v32, v33, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5D5A84C(0, *(v14 + 16) + 1, 1);
        v14 = v34;
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D5D5A84C(v21 > 1, v22 + 1, 1);
        v14 = v34;
      }

      ++v13;
      *(v14 + 16) = v22 + 1;
      v23 = v14 + v15 + v22 * v16;
      v5 = v25;
      v19(v23, v32, v25);
      a3 = v26;
      v6 = v24;
      if (v27 == v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1D69BCB88()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor_];

    v6 = *&v1[OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_tableView];
    [v6 setDataSource_];
    [v6 setAlwaysBounceVertical_];
    v7 = [v4 secondaryLabelColor];
    [v6 setTintColor_];

    v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v6 setTableFooterView_];

    sub_1D69BF330();
    sub_1D7262DAC();
    v9 = [v1 navigationItem];
    v10 = sub_1D726203C();
    [v9 setTitle_];

    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v11 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t *sub_1D69BCEBC@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t type metadata accessor for DebugFormatUploadDiffVersionsViewController()
{
  result = qword_1EC88F840;
  if (!qword_1EC88F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D69BCFB4()
{
  sub_1D5B5BFDC(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D69BD0F8(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  sub_1D5D3A7E0();
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BFDC(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v54 - v13;
  v15 = sub_1D725BD1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v62 = &v54 - v25;
  v26 = sub_1D7258DAC();
  if (v26 <= 2)
  {
    v27 = *(v1 + OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_sections);
    if (*(v27 + 16))
    {
      v28 = sub_1D5BEFB80(v26);
      if (v29)
      {
        v30 = *(*(v27 + 56) + 8 * v28);

        v31 = sub_1D7258D7C();
        if ((v31 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v31 < *(v30 + 16))
        {
          v58 = v2;
          v61 = v14;
          v32 = v30 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v31;
          v33 = *(v16 + 16);
          v56 = v10;
          v57 = v33;
          v33(v22, v32, v15);

          v54 = *(v16 + 32);
          v54(v62, v22, v15);
          sub_1D69BF330();
          v34 = sub_1D7262D8C();
          v35 = [v34 textLabel];
          if (v35)
          {
            v36 = v35;
            sub_1D725BC9C();
            v37 = sub_1D726203C();

            [v36 setText_];
          }

          v38 = [v34 textLabel];
          if (v38)
          {
            v39 = v38;
            v40 = [objc_opt_self() systemFontOfSize_];
            [v39 setFont_];
          }

          v41 = OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_selectedRemoteVersion;
          v42 = v61;
          v57(v61, v62, v15);
          (*(v16 + 56))(v42, 0, 1, v15);
          v43 = *(v60 + 48);
          sub_1D5D3A874(v58 + v41, v6);
          sub_1D5D3A874(v42, &v6[v43]);
          v44 = *(v16 + 48);
          if (v44(v6, 1, v15) == 1)
          {
            sub_1D5F40BCC(v42);
            v45 = v44(&v6[v43], 1, v15);
            v46 = v62;
            if (v45 == 1)
            {
              sub_1D5F40BCC(v6);
LABEL_18:
              v48 = 3;
              goto LABEL_19;
            }
          }

          else
          {
            v47 = v56;
            sub_1D5D3A874(v6, v56);
            if (v44(&v6[v43], 1, v15) != 1)
            {
              v49 = v55;
              v54(v55, &v6[v43], v15);
              sub_1D61EF968(&qword_1EDF178B8);
              v50 = sub_1D7261FBC();
              v51 = *(v16 + 8);
              v51(v49, v15);
              sub_1D5F40BCC(v61);
              v51(v47, v15);
              sub_1D5F40BCC(v6);
              v46 = v62;
              if (v50)
              {
                goto LABEL_18;
              }

LABEL_16:
              v48 = 0;
LABEL_19:
              [v34 setAccessoryType_];
              [v34 setSelectionStyle_];
              (*(v16 + 8))(v46, v15);
              return v34;
            }

            sub_1D5F40BCC(v61);
            (*(v16 + 8))(v47, v15);
            v46 = v62;
          }

          sub_1D69BDAF8(v6);
          goto LABEL_16;
        }

        __break(1u);
      }
    }
  }

  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1D7263D4C();

  v64 = 0xD000000000000013;
  v65 = 0x80000001D73DDEC0;
  v63 = sub_1D7258DAC();
  v53 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v53);

  result = sub_1D726402C();
  __break(1u);
  return result;
}

unint64_t sub_1D69BD964()
{
  result = qword_1EC88F858;
  if (!qword_1EC88F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F858);
  }

  return result;
}

void sub_1D69BD9B8(void **a1)
{
  v2 = *(sub_1D725BD1C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D5D5A9C0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D69BDC00(v5);
  *a1 = v3;
}

void sub_1D69BDA60()
{
  if (!qword_1EC88F870)
  {
    sub_1D5B5BFDC(255, &qword_1EC882E10, MEMORY[0x1E69D6B38], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88F870);
    }
  }
}

uint64_t sub_1D69BDAF8(uint64_t a1)
{
  sub_1D5D3A7E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D69BDB84()
{
  sub_1D725BD1C();
  sub_1D61EF968(&qword_1EDF43A50);
  return sub_1D7261F5C() & 1;
}

void sub_1D69BDC00(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D725BD1C();
        v6 = sub_1D726276C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D725BD1C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D69BDFDC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D69BDD2C(0, v2, 1, a1);
  }
}

void sub_1D69BDD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v48 = &v34 - v13;
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v45 = *(v16 + 16);
    v46 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v42 = (v16 + 32);
    v43 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v41 = -v20;
    v23 = a1 - a3;
    v35 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v39 = v22;
    v40 = a3;
    v37 = v24;
    v38 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v47;
      v27 = v45;
      (v45)(v47, v24, v8, v17);
      v28 = v48;
      v27(v48, v25, v8);
      sub_1D61EF968(&qword_1EDF43A50);
      v29 = sub_1D7261F4C();
      v30 = *v21;
      (*v21)(v28, v8);
      v30(v26, v8);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v40 + 1;
        v22 = &v39[v35];
        v23 = v38 - 1;
        v24 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v25, v32, v8);
      v25 += v41;
      v24 += v41;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D69BDFDC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v126 = a1;
  v8 = sub_1D725BD1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v138 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v144 = &v123 - v17;
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v143 = &v123 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v24 = sub_1D62FF50C(v24);
    }

    v146 = v24;
    v119 = *(v24 + 2);
    if (v119 >= 2)
    {
      while (*a3)
      {
        v120 = *&v24[16 * v119];
        v121 = *&v24[16 * v119 + 24];
        sub_1D69BE9DC(*a3 + v9[9] * v120, *a3 + v9[9] * *&v24[16 * v119 + 16], *a3 + v9[9] * v121, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v121 < v120)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D62FF50C(v24);
        }

        if (v119 - 2 >= *(v24 + 2))
        {
          goto LABEL_120;
        }

        v122 = &v24[16 * v119];
        *v122 = v120;
        *(v122 + 1) = v121;
        v146 = v24;
        sub_1D62FF480(v119 - 1);
        v24 = v146;
        v119 = *(v146 + 2);
        if (v119 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v123 = a4;
  v23 = 0;
  v141 = (v9 + 1);
  v142 = v9 + 2;
  v140 = (v9 + 4);
  v24 = MEMORY[0x1E69E7CC0];
  v128 = v9;
  v145 = v8;
  v124 = a3;
  while (1)
  {
    v25 = v23;
    v129 = v24;
    if (v23 + 1 >= v22)
    {
      v38 = v23 + 1;
    }

    else
    {
      v136 = v22;
      v125 = v5;
      v26 = *a3;
      v27 = v9[9];
      v28 = v23;
      v127 = v23;
      v29 = &v26[v27 * (v23 + 1)];
      v30 = v8;
      v31 = v9[2];
      v32 = v143;
      v31(v143, v29, v30, v20);
      v33 = &v26[v27 * v28];
      v34 = v144;
      v135 = v31;
      (v31)(v144, v33, v30);
      v134 = sub_1D61EF968(&qword_1EDF43A50);
      LODWORD(v137) = sub_1D7261F4C();
      v35 = v9[1];
      v35(v34, v30);
      v133 = v35;
      v35(v32, v30);
      v36 = v127 + 2;
      v139 = v27;
      v37 = &v26[v27 * (v127 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        v39 = v143;
        v40 = v9;
        v41 = v145;
        v42 = v135;
        (v135)(v143, v37, v145);
        v43 = v144;
        v42(v144, v29, v41);
        v44 = sub_1D7261F4C() & 1;
        v45 = v133;
        (v133)(v43, v41);
        v46 = v41;
        v9 = v40;
        v45(v39, v46);
        ++v36;
        v37 += v139;
        v29 += v139;
        if ((v137 & 1) != v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v5 = v125;
      v24 = v129;
      v8 = v145;
      a3 = v124;
      v25 = v127;
      if (v137)
      {
        if (v38 < v127)
        {
          goto LABEL_123;
        }

        if (v127 < v38)
        {
          v47 = v38;
          v48 = v139 * (v38 - 1);
          v49 = v38 * v139;
          v136 = v38;
          v50 = v127;
          v51 = v127 * v139;
          do
          {
            if (v50 != --v47)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v137 = *v140;
              v137(v131, &v53[v51], v145);
              if (v51 < v48 || &v53[v51] >= &v53[v49])
              {
                v52 = v145;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v52 = v145;
                if (v51 != v48)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v137(&v53[v48], v131, v52);
              v9 = v128;
              v24 = v129;
            }

            ++v50;
            v48 -= v139;
            v49 -= v139;
            v51 += v139;
          }

          while (v50 < v47);
          v5 = v125;
          v8 = v145;
          v25 = v127;
          v38 = v136;
        }
      }
    }

    v54 = a3[1];
    if (v38 < v54)
    {
      if (__OFSUB__(v38, v25))
      {
        goto LABEL_122;
      }

      if (v38 - v25 < v123)
      {
        if (__OFADD__(v25, v123))
        {
          goto LABEL_124;
        }

        if (v25 + v123 >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v25 + v123;
        }

        if (v55 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v38 != v55)
        {
          break;
        }
      }
    }

    v56 = v38;
    if (v38 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1D698BA94(0, *(v24 + 2) + 1, 1, v24);
    }

    v58 = *(v24 + 2);
    v57 = *(v24 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v24 = sub_1D698BA94((v57 > 1), v58 + 1, 1, v24);
    }

    *(v24 + 2) = v59;
    v60 = &v24[16 * v58];
    *(v60 + 4) = v25;
    *(v60 + 5) = v56;
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_131;
    }

    v132 = v56;
    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v24 + 4);
          v63 = *(v24 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_52:
          if (v65)
          {
            goto LABEL_110;
          }

          v78 = &v24[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_113;
          }

          v84 = &v24[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_117;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v88 = &v24[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_66:
        if (v83)
        {
          goto LABEL_112;
        }

        v91 = &v24[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_115;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_73:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v100 = *&v24[16 * v99 + 32];
        v101 = *&v24[16 * v61 + 40];
        sub_1D69BE9DC(*a3 + v9[9] * v100, *a3 + v9[9] * *&v24[16 * v61 + 32], *a3 + v9[9] * v101, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v101 < v100)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D62FF50C(v24);
        }

        if (v99 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v102 = &v24[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v146 = v24;
        sub_1D62FF480(v61);
        v24 = v146;
        v59 = *(v146 + 2);
        v8 = v145;
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v24[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_108;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_109;
      }

      v73 = &v24[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_111;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_114;
      }

      if (v77 >= v69)
      {
        v95 = &v24[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_118;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v132;
    if (v132 >= v22)
    {
      goto LABEL_94;
    }
  }

  v125 = v5;
  v103 = *a3;
  v104 = v9[9];
  v139 = v9[2];
  v105 = v103 + v104 * (v38 - 1);
  v106 = -v104;
  v127 = v25;
  v107 = v25 - v38;
  v137 = v103;
  v130 = v104;
  v108 = v103 + v38 * v104;
  v132 = v55;
LABEL_85:
  v135 = v105;
  v136 = v38;
  v133 = v108;
  v134 = v107;
  v109 = v105;
  while (1)
  {
    v110 = v143;
    v111 = v139;
    (v139)(v143, v108, v8);
    v112 = v144;
    v111(v144, v109, v145);
    sub_1D61EF968(&qword_1EDF43A50);
    v113 = sub_1D7261F4C();
    v114 = *v141;
    v115 = v112;
    v8 = v145;
    (*v141)(v115, v145);
    v114(v110, v8);
    if ((v113 & 1) == 0)
    {
LABEL_84:
      v38 = v136 + 1;
      v105 = &v135[v130];
      v107 = v134 - 1;
      v108 = &v133[v130];
      v56 = v132;
      if (v136 + 1 != v132)
      {
        goto LABEL_85;
      }

      v5 = v125;
      a3 = v124;
      v9 = v128;
      v24 = v129;
      v25 = v127;
      if (v132 < v127)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v116 = *v140;
    v117 = v138;
    (*v140)(v138, v108, v8);
    swift_arrayInitWithTakeFrontToBack();
    v116(v109, v117, v8);
    v109 += v106;
    v108 += v106;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_1D69BE9DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = sub_1D725BD1C();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v9);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v53 = &v44 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v55 = a3;
  v17 = (a2 - a1) / v15;
  v59 = a1;
  v58 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v19;
      v31 = v55;
      v46 = a1;
      v47 = a4;
      v50 = v29;
      do
      {
        v44 = v28;
        v32 = a2 + v29;
        v33 = v28;
        v51 = a2;
        v52 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v59 = a2;
            v28 = v44;
            goto LABEL_59;
          }

          v35 = v31;
          v45 = v33;
          v55 = v31 + v29;
          v36 = v30 + v29;
          v37 = *v49;
          v38 = v53;
          v39 = v30 + v29;
          v40 = v30;
          v41 = v56;
          (*v49)(v53, v39, v56);
          v42 = v54;
          (v37)(v54, v32, v41);
          sub_1D61EF968(&qword_1EDF43A50);
          LOBYTE(v37) = sub_1D7261F4C();
          v43 = *v48;
          (*v48)(v42, v41);
          v43(v38, v41);
          if (v37)
          {
            break;
          }

          v33 = v36;
          v31 = v55;
          if (v35 < v40 || v55 >= v40)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v52;
            a1 = v46;
          }

          else
          {
            v32 = v52;
            a1 = v46;
            if (v35 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v36;
          v34 = v36 > v47;
          v29 = v50;
          a2 = v51;
          if (!v34)
          {
            v28 = v33;
            goto LABEL_58;
          }
        }

        v31 = v55;
        if (v35 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v46;
          v30 = v40;
        }

        else
        {
          a2 = v52;
          a1 = v46;
          v30 = v40;
          if (v35 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v45;
        v29 = v50;
      }

      while (v30 > v47);
    }

LABEL_58:
    v59 = a2;
LABEL_59:
    v57 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v18;
    v57 = a4 + v18;
    if (v18 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v15;
      v49 = (v8 + 8);
      do
      {
        v21 = v53;
        v22 = v56;
        v23 = v50;
        v50(v53, a2, v56);
        v24 = v54;
        v23(v54, a4, v22);
        sub_1D61EF968(&qword_1EDF43A50);
        LOBYTE(v23) = sub_1D7261F4C();
        v25 = *v49;
        (*v49)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v48;
          if (a1 < a2 || a1 >= v48 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

  sub_1D62FF5C8(&v59, &v58, &v57);
}

uint64_t sub_1D69BEFA4(unint64_t a1)
{
  if (a1 > 2)
  {
    sub_1D7263D4C();

    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    result = sub_1D726402C();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_sections);
    if (*(v2 + 16) && (v3 = sub_1D5BEFB80(a1), (v4 & 1) != 0))
    {
      return *(*(*(v2 + 56) + 8 * v3) + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D69BF0A4(uint64_t a1)
{
  switch(a1)
  {
    case 2:
      v1 = 1702323534;
      return v1 | 0x6556207200000000;
    case 1:
      v1 = 1701080143;
      return v1 | 0x6556207200000000;
    case 0:
      return 0xD000000000000010;
  }

  sub_1D7263D4C();

  v3 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v3);

  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t sub_1D69BF1C0(uint64_t a1)
{
  if (a1 == 2)
  {
    return 0xD000000000000063;
  }

  if (a1 == 1)
  {
    return 0xD000000000000063;
  }

  if (a1)
  {
    sub_1D7263D4C();

    v6 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v6);

    result = sub_1D726402C();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_sections);
    if (*(v3 + 16) && (v4 = sub_1D5BEFB80(0), (v5 & 1) != 0))
    {
      if (*(*(*(v3 + 56) + 8 * v4) + 16))
      {
        return 0;
      }

      else
      {
        return 0xD00000000000006ELL;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D69BF330()
{
  result = qword_1EC88DCB0;
  if (!qword_1EC88DCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88DCB0);
  }

  return result;
}

uint64_t type metadata accessor for SportsDataVisualizationResponseScoreItem()
{
  result = qword_1EDF06348;
  if (!qword_1EDF06348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D69BF3F0()
{
  sub_1D5B49F38(319, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D5B499C4();
    if (v1 <= 0x3F)
    {
      sub_1D5B49F38(319, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SportsDataVisualizationResponseMetadata();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D69BF4FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = type metadata accessor for SportsDataVisualizationResponseMetadata();
  MEMORY[0x1EEE9AC00](v56, v3);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49AC0(0, &qword_1EDF3BB80, MEMORY[0x1E69D64C0]);
  v59 = v5;
  v55 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v50 - v7;
  sub_1D69C04D0(0, &qword_1EDF03850, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v60 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v17 + *(v18 + 40)) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69C02CC();
  v19 = v61;
  sub_1D7264B0C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v59;
  LOBYTE(v62) = 0;
  v22 = v13;
  v23 = v17;
  *v17 = sub_1D72642BC();
  v17[1] = v24;
  v53 = v24;
  LOBYTE(v62) = 1;
  v25 = sub_1D726422C();
  v54 = a1;
  v17[2] = v25;
  v17[3] = v26;
  LOBYTE(v62) = 2;
  v52 = 0;
  v27 = sub_1D726422C();
  v61 = 0;
  v17[4] = v27;
  v17[5] = v28;
  LOBYTE(v62) = 3;
  if (sub_1D726434C())
  {
    v66 = 3;
    sub_1D69C048C(&qword_1EDF3BB88, &qword_1EDF3BB80, MEMORY[0x1E69D64C0]);
    v50 = v8;
    v29 = v21;
    v30 = v61;
    sub_1D726431C();
    v61 = v30;
    v31 = v58;
    if (v30)
    {
      (*(v60 + 8))(v22, v10);
      v32 = 0;
      goto LABEL_10;
    }

    v51 = v22;
    v34 = v50;
    v33 = sub_1D725A74C();
    (*(v55 + 8))(v34, v29);
  }

  else
  {
    v51 = v22;
    v33 = MEMORY[0x1E69E7CC0];
    v31 = v58;
  }

  v17[6] = v33;
  LOBYTE(v62) = 5;
  sub_1D69C0320(&qword_1EDF064C8);
  v35 = v51;
  v36 = v61;
  sub_1D726431C();
  v61 = v36;
  v37 = v10;
  v38 = v57;
  v39 = v60;
  if (!v36)
  {
    sub_1D69C0364(v31, v17 + *(v14 + 36));
    sub_1D5B49F38(0, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
    v66 = 4;
    sub_1D69C059C(&qword_1EDF04A98, sub_1D5F0E5E8);
    v41 = v61;
    sub_1D726431C();
    v61 = v41;
    if (v41)
    {
      v66 = 6;
      sub_1D683D488();
      sub_1D726431C();
      v59 = 0;
      v58 = v37;
      v43 = v62;
      v44 = v63;
      v46 = v64;
      v45 = v65;
      sub_1D5B49F38(0, &qword_1EDF01E40, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E6F90]);
      v47 = swift_allocObject();
      v48 = v47;
      *(v47 + 16) = xmmword_1D7273AE0;
      *(v47 + 32) = 0x617453746E657665;
      *(v47 + 40) = 0xEF61746144636974;
      *(v47 + 48) = 0x7461446465626D65;
      *(v47 + 56) = 0xE900000000000061;
      *(v47 + 64) = v43;
      *(v47 + 72) = v44;
      if (v45)
      {
        v49 = sub_1D6994480(1, 2, 1, v47);

        (*(v60 + 8))(v35, v58);
        *(v49 + 2) = 2;
        strcpy(v49 + 80, "eventLiveData");
        *(v49 + 47) = -4864;
        strcpy(v49 + 96, "liveEmbedData");
        *(v49 + 55) = -4864;
        *(v49 + 14) = v46;
        *(v49 + 15) = v45;
        v61 = v59;
        v23 = v17;
        v17[7] = v49;
      }

      else
      {

        (*(v60 + 8))(v35, v58);
        v17[7] = v48;
        v23 = v17;
        v61 = v59;
      }

      v42 = v57;
    }

    else
    {
      (*(v39 + 8))(v35, v37);
      v17[7] = v62;
      v42 = v38;
      a1 = v54;
    }

    sub_1D69C03C8(v23, v42);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D69C042C(v23, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  }

  (*(v60 + 8))(v35, v37);
  v32 = 1;
LABEL_10:
  v40 = v52;
  __swift_destroy_boxed_opaque_existential_1(v54);

  if (!v40)
  {
  }

  if (v32)
  {
  }

  return result;
}

uint64_t sub_1D69BFD38(void *a1)
{
  v3 = v1;
  sub_1D69C04D0(0, &qword_1EC88F878, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69C02CC();
  sub_1D7264B5C();
  LOBYTE(v16) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v16 = *(v3 + 16);
    v15 = 1;
    v11 = MEMORY[0x1E69E6720];
    sub_1D5B49F38(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D69C0534(&qword_1EDF054F0, &qword_1EDF43BE0, v11);
    sub_1D726443C();
    v16 = *(v3 + 32);
    v15 = 2;
    sub_1D726443C();
    *&v16 = *(v3 + 48);
    v15 = 3;
    v12 = MEMORY[0x1E69E62F8];
    sub_1D5B49F38(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D69C0534(&qword_1EDF04A90, &qword_1EDF43BA0, v12);
    sub_1D726443C();
    *&v16 = *(v3 + 56);
    v15 = 4;
    sub_1D5B49F38(0, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D69C059C(&qword_1EC880E68, sub_1D5F0E774);
    sub_1D726443C();
    type metadata accessor for SportsDataVisualizationResponseScoreItem();
    LOBYTE(v16) = 5;
    type metadata accessor for SportsDataVisualizationResponseMetadata();
    sub_1D69C0320(&qword_1EC88F880);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D69C00F4()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x74654D746E657665;
  if (v1 != 5)
  {
    v3 = 0x72756F5361746164;
  }

  v4 = 0x736449676174;
  if (v1 != 3)
  {
    v4 = 0x53617461446C7275;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6449746E657665;
  if (v1 != 1)
  {
    v5 = 0x615465756761656CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D69C01FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69C0744(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69C0224(uint64_t a1)
{
  v2 = sub_1D69C02CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69C0260(uint64_t a1)
{
  v2 = sub_1D69C02CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D69C02CC()
{
  result = qword_1EDF06380;
  if (!qword_1EDF06380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06380);
  }

  return result;
}

uint64_t sub_1D69C0320(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsDataVisualizationResponseMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D69C0364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69C03C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69C042C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D69C048C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49AC0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D69C04D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69C02CC();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseScoreItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D69C0534(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49F38(255, a2, MEMORY[0x1E69E6158], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D69C059C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49F38(255, &qword_1EDF04AA0, &type metadata for SportsDataVisualizationResponseURLDataSource, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D69C0640()
{
  result = qword_1EC88F888;
  if (!qword_1EC88F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F888);
  }

  return result;
}

unint64_t sub_1D69C0698()
{
  result = qword_1EDF06370;
  if (!qword_1EDF06370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06370);
  }

  return result;
}

unint64_t sub_1D69C06F0()
{
  result = qword_1EDF06378;
  if (!qword_1EDF06378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06378);
  }

  return result;
}

uint64_t sub_1D69C0744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6E6143636D75 && a2 == 0xEE0064496C616369;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449746E657665 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615465756761656CLL && a2 == 0xEB00000000644967 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736449676174 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53617461446C7275 && a2 == 0xEE0073656372756FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74654D746E657665 && a2 == 0xED00006174616461 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t static FamilyStatus.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (a1[1] == a2[1]) & ~(*a2 ^ *a1);
  if (*a2 >= 0)
  {
    LOBYTE(v4) = 0;
  }

  if (v3 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 ^ v2 ^ 1;
  }

  if (v2 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  return v6 & 1;
}

uint64_t sub_1D69C09EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (a1[1] == a2[1]) & ~(*a2 ^ *a1);
  if (*a2 >= 0)
  {
    LOBYTE(v4) = 0;
  }

  if (v3 < 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 ^ v2 ^ 1;
  }

  if (v2 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  return v6 & 1;
}

uint64_t sub_1D69C0A2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x654D796C696D6166;
  v4 = 0xEC0000007265626DLL;
  v5 = 0x80000001D73B8C30;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001D73B8C30;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 1702060386;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x654D796C696D6166;
  if (*a2 == 1)
  {
    v5 = 0xEC0000007265626DLL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1702060386;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D69C0B30()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69C0BD8()
{
  sub_1D72621EC();
}

uint64_t sub_1D69C0C6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69C0D10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D69C1BF8();
  *a1 = result;
  return result;
}

void sub_1D69C0D40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC0000007265626DLL;
  v5 = 0x654D796C696D6166;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001D73B8C30;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702060386;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D69C0DA4()
{
  v1 = 0x654D796C696D6166;
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
    return 1702060386;
  }
}

uint64_t sub_1D69C0E04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D69C1BF8();
  *a1 = result;
  return result;
}

uint64_t sub_1D69C0E2C(uint64_t a1)
{
  v2 = sub_1D69C13E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69C0E68(uint64_t a1)
{
  v2 = sub_1D69C13E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D69C0EA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265626D656DLL;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265626D656DLL;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D69C0F40()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69C0FB8()
{
  sub_1D72621EC();
}

uint64_t sub_1D69C101C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69C1090@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D69C10F0(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x7265626D656DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FamilyStatus.encode(to:)(void *a1)
{
  sub_1D69C171C(0, &qword_1EDF19BA8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69C13E4();
  sub_1D7264B5C();
  if (v10 < 0)
  {
    v16 = 1;
    v18 = 0;
    sub_1D69C1438();
    v12 = v15;
    sub_1D726443C();
    if (!v12)
    {
      v16 = v10 & 1;
      v17 = v9;
      v18 = 1;
      sub_1D69C148C();
      sub_1D726443C();
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    sub_1D69C1438();
    v11 = v15;
    sub_1D726443C();
    if (!v11)
    {
      v16 = 2;
      sub_1D726440C();
    }
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D69C13E4()
{
  result = qword_1EDF33BC0;
  if (!qword_1EDF33BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33BC0);
  }

  return result;
}

unint64_t sub_1D69C1438()
{
  result = qword_1EDF33BA8;
  if (!qword_1EDF33BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33BA8);
  }

  return result;
}

unint64_t sub_1D69C148C()
{
  result = qword_1EC88F890;
  if (!qword_1EC88F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F890);
  }

  return result;
}

uint64_t FamilyStatus.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1D69C171C(0, &qword_1EDF19C78, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69C13E4();
  sub_1D7264B0C();
  if (!v2)
  {
    v17 = 0;
    sub_1D69C1780();
    sub_1D726431C();
    if (v15[0])
    {
      v17 = 1;
      sub_1D69C17D4();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v12 = v16;
      v13 = v15[0] | 0x8000000000000000;
    }

    else
    {
      v15[0] = 2;
      v14 = sub_1D72642CC();
      (*(v7 + 8))(v10, v6);
      v12 = 0;
      v13 = v14 & 1;
    }

    *a2 = v13;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D69C171C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69C13E4();
    v7 = a3(a1, &type metadata for FamilyStatus.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69C1780()
{
  result = qword_1EDF33B98;
  if (!qword_1EDF33B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33B98);
  }

  return result;
}

unint64_t sub_1D69C17D4()
{
  result = qword_1EC88F898;
  if (!qword_1EC88F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F898);
  }

  return result;
}

unint64_t FamilyStatus.description.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    sub_1D7263D4C();

    v8 = 0xD000000000000015;
    if (v1)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (v1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    MEMORY[0x1DA6F9910](v5, v6);

    MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73DDF40);
    v2 = sub_1D72644BC();
  }

  else
  {
    sub_1D7263D4C();

    v8 = 0xD000000000000013;
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    v4 = v3;
  }

  MEMORY[0x1DA6F9910](v2, v4);

  return v8;
}

uint64_t getEnumTagSinglePayload for FamilyStatus(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
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

uint64_t storeEnumTagSinglePayload for FamilyStatus(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 2 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D69C1A9C()
{
  result = qword_1EC88F8A0;
  if (!qword_1EC88F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8A0);
  }

  return result;
}

unint64_t sub_1D69C1AF4()
{
  result = qword_1EC88F8A8;
  if (!qword_1EC88F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8A8);
  }

  return result;
}

unint64_t sub_1D69C1B4C()
{
  result = qword_1EDF33BB0;
  if (!qword_1EDF33BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33BB0);
  }

  return result;
}

unint64_t sub_1D69C1BA4()
{
  result = qword_1EDF33BB8;
  if (!qword_1EDF33BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33BB8);
  }

  return result;
}

uint64_t sub_1D69C1BF8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D69C1C44()
{
  result = qword_1EDF33BA0;
  if (!qword_1EDF33BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33BA0);
  }

  return result;
}

NewsFeed::PuzzleTeaserInteractionType_optional __swiftcall PuzzleTeaserInteractionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleTeaserInteractionType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1752461154;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E4572657474656CLL;
  }
}

uint64_t sub_1D69C1D54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000001D73BC380;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001D73BC380;
  }

  else
  {
    v3 = 1752461154;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E4572657474656CLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000797274;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 1752461154;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E4572657474656CLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000797274;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D69C1E48()
{
  result = qword_1EC88F8B0;
  if (!qword_1EC88F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8B0);
  }

  return result;
}

uint64_t sub_1D69C1E9C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69C1F44()
{
  sub_1D72621EC();
}

uint64_t sub_1D69C1FD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D69C2088(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000797274;
  v4 = 0x80000001D73BC380;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 1752461154;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E4572657474656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D69C21AC()
{
  result = qword_1EC88F8B8;
  if (!qword_1EC88F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8B8);
  }

  return result;
}

uint64_t static CoverIssueViewLayout.makeLayoutForMyMagazines(context:factories:options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1D725A36C();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a3;
  v15 = a1;
  v16 = a2;
  v17 = v11;
  (*(v12 + 104))(v10, *MEMORY[0x1E69D7378], v8);
  sub_1D6076C70(0, &qword_1EDF17FC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D69C2338(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v41 - v10;
  v12 = a2[40];
  v13 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v12);
  v14 = (*(v13 + 16))(v12, v13);
  if (qword_1EDF05CE0 != -1)
  {
    swift_once();
  }

  [qword_1EDFFC540 size];
  v17 = v14 * (v15 / v16);
  v18 = a2[40];
  v19 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v18);
  (*(v19 + 48))(v18, v19);
  v20 = a2[40];
  v21 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v20);
  (*(v21 + 56))(v20, v21);
  v46 = a1;
  v22 = *MEMORY[0x1E69D74A8];
  v45 = *(v8 + 104);
  v23 = v45(v11, v22, v7);
  v43 = &v41;
  v44 = a1;
  MEMORY[0x1EEE9AC00](v23, v24);
  *(&v41 - 8) = a3;
  *(&v41 - 7) = a2;
  *(&v41 - 3) = xmmword_1D730CE50;
  v37 = v17;
  v38 = *&v14;
  v25 = MEMORY[0x1E69D7150];
  sub_1D6076C70(0, &qword_1EDF18070, MEMORY[0x1E69D7150]);
  v27 = v26;
  v28 = sub_1D6076CF4(&qword_1EDF18078, &qword_1EDF18070, v25);
  v39 = v28;
  v42 = v27;
  sub_1D7259A2C();
  v29 = *(v8 + 8);
  v29(v11, v7);
  v30 = v7;
  v31 = v44;
  v46 = v44;
  v32 = *MEMORY[0x1E69D7460];
  v45(v11, v32, v30);
  v39 = v27;
  v40 = v28;
  v37 = COERCE_DOUBLE(sub_1D69C567C);
  v38 = 0;
  sub_1D7259B2C();
  v33 = (v29)(v11, v30);
  v43 = &v41;
  v46 = v31;
  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  (v45)(v11, v32, v30, v35);
  v40 = v28;
  v38 = &v37;
  v39 = v42;
  v37 = COERCE_DOUBLE(sub_1D69C617C);
  sub_1D7259B2C();
  return (v29)(v11, v30);
}

uint64_t sub_1D69C27CC(uint64_t a1, void (*a2)(uint64_t, uint64_t), void *a3, uint64_t a4, double a5, double a6)
{
  v90 = a4;
  v85 = a2;
  v99 = a1;
  sub_1D69C61CC();
  v89 = v10;
  v88 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v87 = (v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (v82 - v21);
  *&v105 = a1;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4024000000000000;
  *v22 = v23;
  v24 = *(v15 + 104);
  v94 = *MEMORY[0x1E69D7488];
  v24(v22);
  v25 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v27 = v26;
  v28 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v25);
  v95 = v27;
  v29 = v28;
  sub_1D7259A9C();
  v30 = *(v15 + 8);
  v98 = v15 + 8;
  v92 = v30;
  v30(v22, v14);
  v112 = v99;
  KeyPath = swift_getKeyPath();
  v31 = *MEMORY[0x1E69D74A8];
  v93 = v14;
  v97 = v15 + 104;
  v96 = v24;
  (v24)(v18, v31, v14);
  v111 = *(v85 + 3);
  v32 = a3[1];
  if (a3[11] == 1 || (v33 = a3[14]) == 0)
  {

    FCIssue.issueCoverModel.getter(&v108);
  }

  else
  {
    v34 = a3[15];
    *&v108 = a3[1];
    *(&v108 + 1) = v34;
    *&v109 = v33;
    v110[24] = 0;

    v35 = v33;
    v36 = v32;
  }

  v105 = v108;
  v106 = v109;
  v107[0] = *v110;
  *(v107 + 9) = *&v110[9];
  v37 = a3[40];
  v38 = a3[41];
  __swift_project_boxed_opaque_existential_1(a3 + 37, v37);
  v39 = (*(v38 + 64))(v37, v38);
  v100 = 0;
  v101 = 0x4010000000000000;
  v102 = v39;
  v103 = -1;
  v104 = 0x3FE0000000000000;
  sub_1D69C62E0(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  sub_1D5EF9538();
  sub_1D69C6348();
  sub_1D69C6184(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
  v91 = a3;
  v40 = v87;
  sub_1D7259D2C();
  v82[1] = v29;
  sub_1D7259A5C();

  (*(v88 + 8))(v40, v89);
  v41 = v93;
  v42 = v92;
  v92(v18, v93);
  v43 = v99;
  *&v105 = v99;
  v44 = swift_allocObject();
  *(v44 + 16) = a5;
  *v22 = v44;
  (v96)(v22, v94, v41);
  sub_1D7259A9C();
  v42(v22, v41);
  *&v105 = v43;
  sub_1D5EF9444();
  v46 = v45;
  v89 = v45;
  KeyPath = swift_allocBox();
  v48 = v47;
  v49 = *(v46 + 48);
  LODWORD(v88) = *MEMORY[0x1E69D71E8];
  v50 = v88;
  v51 = sub_1D725A09C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 104);
  v54 = v52 + 104;
  v87 = v22;
  v55 = v51;
  v83 = v51;
  v53(v48, v50);
  v84 = v54;
  v85 = v53;
  v56 = swift_allocObject();
  v57 = v91[40];
  v58 = v91[41];
  __swift_project_boxed_opaque_existential_1(v91 + 37, v57);
  *(v56 + 16) = (*(v58 + 24))(v57, v58);
  *(v48 + v49) = v56;
  v59 = v55;
  v60 = v87;
  (v53)(v48 + v49, *MEMORY[0x1E69D71F0], v59);
  *v60 = KeyPath;
  LODWORD(KeyPath) = *MEMORY[0x1E69D7468];
  v61 = v93;
  v62 = v96;
  v63 = (v96)(v60);
  MEMORY[0x1EEE9AC00](v63, v64);
  sub_1D72599EC();
  v65 = v92;
  v92(v60, v61);
  v66 = v99;
  *&v105 = v99;
  v67 = swift_allocObject();
  *(v67 + 16) = a6;
  *v60 = v67;
  (v62)(v60, v94, v61);
  sub_1D7259A9C();
  v65(v60, v61);
  *&v105 = v66;
  v82[0] = "none; eligibility: ";
  v68 = v89;
  v69 = swift_allocBox();
  v71 = v70;
  v72 = *(v68 + 48);
  v73 = v83;
  v74 = v85;
  (v85)(v70, v88, v83);
  v75 = v73;
  v76 = v65;
  (v74)(v71 + v72, *MEMORY[0x1E69D7208], v75);
  *v60 = v69;
  v77 = v96;
  v78 = (v96)(v60, KeyPath, v61);
  MEMORY[0x1EEE9AC00](v78, v79);
  sub_1D72599EC();
  result = v76(v60, v61);
  if ((v90 & 2) != 0)
  {
    *&v105 = v99;
    v81 = swift_allocObject();
    *(v81 + 16) = 0x4038000000000000;
    *v60 = v81;
    (v77)(v60, v94, v61);
    sub_1D7259A9C();
    return v76(v60, v61);
  }

  return result;
}

uint64_t sub_1D69C3284(uint64_t a1, uint64_t a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v24 - v6);
  v29 = a1;
  sub_1D5EF9444();
  v9 = v8;
  v25 = swift_allocBox();
  v11 = v10;
  v12 = *(v9 + 48);
  v13 = *MEMORY[0x1E69D71E8];
  v14 = sub_1D725A09C();
  v15 = *(*(v14 - 8) + 104);
  v15(v11, v13, v14);
  v16 = swift_allocObject();
  v17 = a2;
  v24 = a2;
  v18 = *(a2 + 320);
  v19 = *(v17 + 328);
  __swift_project_boxed_opaque_existential_1((v17 + 296), v18);
  *(v16 + 16) = (*(v19 + 24))(v18, v19);
  *(v11 + v12) = v16;
  v15(v11 + v12, *MEMORY[0x1E69D71F0], v14);
  v20 = v26;
  *v7 = v25;
  v21 = v27;
  (*(v20 + 104))(v7, *MEMORY[0x1E69D7468], v27);
  v28 = v24;
  v22 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v22);
  sub_1D72599EC();
  return (*(v20 + 8))(v7, v21);
}

uint64_t sub_1D69C3560(uint64_t a1, uint64_t a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v22 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 336);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    v20 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v20);
    sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
    v21 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D69C38A8(uint64_t a1, uint64_t a2, double a3)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v134[-v10];
  if (*(a2 + 32))
  {
    if (*(a2 + 32) == 1)
    {
      v151 = a1;
      sub_1D5EF9444();
      v13 = v12;
      v14 = swift_allocBox();
      v16 = v15;
      v17 = v7;
      v138 = v13;
      v18 = *(v13 + 48);
      v150 = a2;
      v19 = *MEMORY[0x1E69D7208];
      v20 = sub_1D725A09C();
      v149 = a1;
      v21 = v20;
      v22 = *(v20 - 8);
      v23 = *(v22 + 104);
      v24 = v22 + 104;
      v23(v16, v19, v20);
      v25 = v16 + v18;
      v26 = v17;
      v143 = v21;
      v146 = v23;
      v140 = v24;
      v23(v25, v19, v21);
      *v11 = v14;
      v28 = (v8 + 104);
      v27 = *(v8 + 104);
      v139 = *MEMORY[0x1E69D7468];
      v29 = v27(v11);
      MEMORY[0x1EEE9AC00](v29, v30);
      v31 = MEMORY[0x1E69D6F38];
      sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
      v33 = v32;
      v34 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v31);
      v133 = v34;
      sub_1D72599EC();
      v35 = v150;
      v37 = *(v8 + 8);
      v36 = v8 + 8;
      v37(v11, v26);
      v151 = v149;
      v38 = swift_allocObject();
      *(v38 + 16) = 0x4010000000000000;
      *v11 = v38;
      v137 = *MEMORY[0x1E69D7480];
      v144 = v28;
      v145 = v27;
      v27(v11);
      v142 = v33;
      sub_1D7259A9C();
      v141 = v37;
      result = (v37)(v11, v26);
      if ((*(v35 + 56) & 9) == 1)
      {
        v151 = v149;
        v40 = v138;
        v136 = swift_allocBox();
        v42 = v41;
        v147 = v26;
        v138 = *(v40 + 48);
        v43 = swift_allocObject();
        *(v43 + 16) = a3;
        *v42 = v43;
        v135 = *MEMORY[0x1E69D71F0];
        v44 = v143;
        v146(v42);
        v45 = swift_allocObject();
        v148 = v36;
        v46 = v45;
        v47 = v35;
        v48 = *(v35 + 320);
        v49 = v34;
        v50 = *(v47 + 328);
        __swift_project_boxed_opaque_existential_1((v47 + 296), v48);
        *(v46 + 16) = (*(v50 + 8))(v48, v50);
        v51 = v138;
        *(v42 + v138) = v46;
        (v146)(v42 + v51, v135, v44);
        *v11 = v136;
        v52 = v147;
        v53 = v145;
        v54 = (v145)(v11, v139, v147);
        MEMORY[0x1EEE9AC00](v54, v55);
        *&v134[-32] = v47;
        *&v134[-24] = a3;
        v133 = v49;
        sub_1D7259A2C();
        v56 = v141;
        v141(v11, v52);
        v151 = v149;
        v57 = swift_allocObject();
        *(v57 + 16) = 0x4010000000000000;
        *v11 = v57;
        (v53)(v11, v137, v52);
        sub_1D7259A9C();
        return v56(v11, v52);
      }
    }

    else
    {
      v147 = v7;
      if ((*(a2 + 56) & 9) == 1)
      {
        v151 = a1;
        sub_1D5EF9444();
        v83 = v82;
        v84 = swift_allocBox();
        v149 = a1;
        v86 = v85;
        v145 = *(v83 + 48);
        v146 = v84;
        v87 = swift_allocObject();
        *(v87 + 16) = a3;
        *v86 = v87;
        v148 = v8;
        v88 = *MEMORY[0x1E69D71F0];
        v89 = sub_1D725A09C();
        v90 = *(*(v89 - 8) + 104);
        v90(v86, v88, v89);
        v91 = swift_allocObject();
        v150 = a2;
        v92 = *(a2 + 320);
        v93 = *(v150 + 328);
        __swift_project_boxed_opaque_existential_1((v150 + 296), v92);
        *(v91 + 16) = (*(v93 + 8))(v92, v93);
        v94 = v145;
        *(v145 + v86) = v91;
        v90((v94 + v86), v88, v89);
        v95 = v147;
        *v11 = v146;
        v96 = *(v148 + 104);
        LODWORD(v146) = *MEMORY[0x1E69D7468];
        v97 = v96(v11);
        MEMORY[0x1EEE9AC00](v97, v98);
        *&v134[-32] = v150;
        *&v134[-24] = a3;
        v99 = MEMORY[0x1E69D6F38];
        sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
        v133 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v99);
        sub_1D7259A2C();
        v100 = *(v148 + 8);
        v100(v11, v95);
        v151 = v149;
        v101 = swift_allocObject();
        *(v101 + 16) = 0x4010000000000000;
        *v11 = v101;
        (v96)(v11, *MEMORY[0x1E69D7480], v95);
        a1 = v149;
        v8 = v148;
        sub_1D7259A9C();
        v100(v11, v95);
      }

      else
      {
        LODWORD(v146) = *MEMORY[0x1E69D7468];
        v95 = v147;
      }

      v151 = a1;
      sub_1D5EF9444();
      v122 = v121;
      v123 = swift_allocBox();
      v125 = v124;
      v126 = *(v122 + 48);
      v127 = sub_1D725A09C();
      v128 = swift_allocBox();
      sub_1D725A08C();
      *v125 = v128;
      v129 = *(*(v127 - 8) + 104);
      v129(v125, *MEMORY[0x1E69D71F8], v127);
      v129((v125 + v126), *MEMORY[0x1E69D7208], v127);
      *v11 = v123;
      v130 = (*(v8 + 104))(v11, v146, v95);
      MEMORY[0x1EEE9AC00](v130, v131);
      v132 = MEMORY[0x1E69D6F38];
      sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
      v133 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v132);
      sub_1D72599EC();
      return (*(v8 + 8))(v11, v95);
    }
  }

  else
  {
    v148 = v8;
    v149 = a1;
    v58 = *(a2 + 56) & 9;
    v150 = a2;
    if (v58 == 1)
    {
      v151 = a1;
      sub_1D5EF9444();
      v60 = v59;
      v61 = swift_allocBox();
      v63 = v62;
      v64 = *(v60 + 48);
      v146 = v61;
      v147 = v64;
      v65 = swift_allocObject();
      *(v65 + 16) = a3;
      *v63 = v65;
      v66 = *MEMORY[0x1E69D71F0];
      v67 = sub_1D725A09C();
      v68 = *(v67 - 8);
      v144 = *(v68 + 104);
      v145 = (v68 + 104);
      v144(v63, v66, v67);
      v69 = swift_allocObject();
      v70 = a2;
      v72 = *(a2 + 320);
      v71 = *(a2 + 328);
      __swift_project_boxed_opaque_existential_1((v70 + 296), v72);
      *(v69 + 16) = (*(v71 + 8))(v72, v71);
      v73 = v147;
      *(v63 + v147) = v69;
      LODWORD(v147) = v66;
      v144((v63 + v73), v66, v67);
      *v11 = v146;
      v74 = *MEMORY[0x1E69D7468];
      v75 = v148;
      v144 = *(v148 + 104);
      LODWORD(v146) = v74;
      v76 = (v144)(v11);
      v145 = v134;
      MEMORY[0x1EEE9AC00](v76, v77);
      *&v134[-32] = v70;
      *&v134[-24] = a3;
      v78 = MEMORY[0x1E69D6F38];
      sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
      v79 = v78;
      a1 = v149;
      v133 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v79);
      sub_1D7259A2C();
      v80 = *(v75 + 8);
      v80(v11, v7);
      v151 = a1;
      v81 = swift_allocObject();
      *(v81 + 16) = 0x4010000000000000;
      *v11 = v81;
      LODWORD(v145) = *MEMORY[0x1E69D7480];
      (v144)(v11);
      sub_1D7259A9C();
      v80(v11, v7);
    }

    else
    {
      LODWORD(v147) = *MEMORY[0x1E69D71F0];
      LODWORD(v146) = *MEMORY[0x1E69D7468];
      LODWORD(v145) = *MEMORY[0x1E69D7480];
    }

    v151 = a1;
    sub_1D5EF9444();
    v103 = v102;
    v104 = swift_allocBox();
    v106 = v105;
    v107 = *(v103 + 48);
    v108 = sub_1D725A09C();
    v109 = swift_allocBox();
    v111 = v110;
    v112 = swift_allocObject();
    *(v112 + 16) = a3;
    *v111 = v112;
    v113 = *(*(v108 - 8) + 104);
    v113(v111, v147, v108);
    *v106 = v109;
    v113(v106, *MEMORY[0x1E69D71F8], v108);
    v113((v106 + v107), *MEMORY[0x1E69D7208], v108);
    *v11 = v104;
    v114 = v148;
    v115 = *(v148 + 104);
    v116 = v115(v11, v146, v7);
    MEMORY[0x1EEE9AC00](v116, v117);
    v118 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v133 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v118);
    sub_1D72599EC();
    v119 = *(v114 + 8);
    v119(v11, v7);
    v151 = v149;
    v120 = swift_allocObject();
    *(v120 + 16) = 0x4010000000000000;
    *v11 = v120;
    v115(v11, v145, v7);
    sub_1D7259A9C();
    return (v119)(v11, v7);
  }

  return result;
}

uint64_t sub_1D69C4800(uint64_t a1, void *a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v23 - v6);
  v28 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444();
  v9 = v8;
  v24 = swift_allocBox();
  v11 = v10;
  v12 = *(v9 + 48);
  v13 = *MEMORY[0x1E69D71E8];
  v14 = sub_1D725A09C();
  v15 = *(*(v14 - 8) + 104);
  v15(v11, v13, v14);
  v16 = swift_allocObject();
  v17 = a2[40];
  v18 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v17);
  *(v16 + 16) = (*(v18 + 8))(v17, v18);
  *(v11 + v12) = v16;
  v15(v11 + v12, *MEMORY[0x1E69D71F0], v14);
  v19 = v25;
  *v7 = v24;
  v20 = v26;
  (*(v19 + 104))(v7, *MEMORY[0x1E69D7468], v26);
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return (*(v19 + 8))(v7, v20);
}

uint64_t sub_1D69C4AF8(uint64_t a1, uint64_t a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v22 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 360);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    v20 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v20);
    sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
    v21 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D69C4E38(uint64_t a1, uint64_t a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v30 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 360);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    sub_1D6076D50();
    sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
    v21 = v20;
    v22 = *(v20 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7270C10;
    v26 = v25 + v24;
    v27 = v19;
    sub_1D725A28C();
    v28 = *(v22 + 104);
    v28(v26, *MEMORY[0x1E69D6FC0], v21);
    sub_1D725A28C();
    v28(v26 + v23, *MEMORY[0x1E69D6FD0], v21);
    v29 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v29);
    sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D69C5298(uint64_t a1, void *a2, double a3, double a4)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v37 - v12);
  v41 = a1;
  v14 = swift_allocObject();
  v15 = a2[40];
  v16 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v15);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = a2[40];
  v19 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v18);
  *(v14 + 16) = (v17 - (*(v19 + 16))(v18, v19)) * 0.5;
  *v13 = v14;
  v20 = *MEMORY[0x1E69D7488];
  v38 = *(v10 + 104);
  v37[0] = v9;
  v38(v13, v20, v9);
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v37[3] = v22;
  v37[2] = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21);
  sub_1D7259A9C();
  v23 = *(v10 + 8);
  v39 = v10 + 8;
  v40 = v23;
  v23(v13, v9);
  v41 = a1;
  v37[1] = swift_getKeyPath();
  sub_1D5EF9444();
  v25 = v24;
  v26 = swift_allocBox();
  v28 = v27;
  v29 = *(v25 + 48);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *v28 = v30;
  v31 = *MEMORY[0x1E69D71F0];
  v32 = sub_1D725A09C();
  v33 = *(*(v32 - 8) + 104);
  v33(v28, v31, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v28 + v29) = v34;
  v33((v28 + v29), v31, v32);
  *v13 = v26;
  v35 = v37[0];
  v38(v13, *MEMORY[0x1E69D7468], v37[0]);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return v40(v13, v35);
}

uint64_t sub_1D69C567C(void *a1)
{
  v1 = *a1;
  v84 = a1;
  v86 = v1;
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v59 - v7);
  v87 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444();
  v10 = v9;
  v83 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *MEMORY[0x1E69D71E8];
  v16 = sub_1D725A09C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  v19 = v17 + 104;
  v75 = v16;
  v18(v13, v15);
  v78 = v19;
  v76 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4000000000000000;
  *(v13 + v14) = v20;
  v77 = *MEMORY[0x1E69D71F0];
  (v18)(v13 + v14);
  *v8 = v11;
  v80 = *MEMORY[0x1E69D7468];
  v21 = v5;
  v22 = *(v5 + 104);
  v81 = v5 + 104;
  v82 = v22;
  (v22)(v8);
  sub_1D6076D50();
  v74 = v23;
  sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v65 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 80);
  v72 = *(v25 + 72);
  v73 = v26;
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7273AE0;
  v71 = *MEMORY[0x1E69D7050];
  v29 = v71;
  sub_1D69C62E0(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  v68 = v30;
  v31 = *(v30 - 8);
  v69 = *(v31 + 104);
  v70 = v31 + 104;
  v60 = v27;
  v69(v28 + v27, v29, v30);
  v64 = *MEMORY[0x1E69D7080];
  v66 = *(v25 + 104);
  v67 = v25 + 104;
  v66(v28 + v27);
  v63 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v62 = sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
  v85 = v8;
  sub_1D7259A7C();

  v32 = *(v21 + 8);
  v61 = v21 + 8;
  KeyPath = v32;
  v32(v8, v4);
  v87 = v84;
  v84 = swift_getKeyPath();
  v33 = v83;
  v34 = swift_allocBox();
  v36 = v35;
  v37 = *(v33 + 48);
  v38 = swift_allocObject();
  *(v38 + 16) = 0x403C000000000000;
  *v36 = v38;
  v39 = v77;
  v40 = v75;
  v41 = v76;
  (v76)(v36, v77, v75);
  v42 = swift_allocObject();
  *(v42 + 16) = 0x403C000000000000;
  *(v36 + v37) = v42;
  v41(v36 + v37, v39, v40);
  *v85 = v34;
  v59 = v4;
  v82();
  v43 = v72;
  v44 = v60;
  v45 = swift_allocObject();
  v83 = v45;
  *(v45 + 16) = xmmword_1D7279970;
  v46 = v45 + v44;
  v47 = v68;
  v48 = v69;
  v69(v45 + v44, v71, v68);
  v49 = v64;
  v50 = v65;
  v51 = v66;
  (v66)(v46, v64, v65);
  v48(v46 + v43, *MEMORY[0x1E69D7070], v47);
  v51(v46 + v43, v49, v50);
  __asm { FMOV            V0.2D, #-10.0 }

  *(v46 + 2 * v43) = _Q0;
  v51(v46 + 2 * v43, *MEMORY[0x1E69D7090], v50);
  v57 = v85;
  sub_1D7259A7C();

  return KeyPath(v57, v59);
}

uint64_t sub_1D69C5D40(uint64_t a1, double a2)
{
  sub_1D69C62E0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v30 - v6);
  v33 = a1;
  KeyPath = swift_getKeyPath();
  sub_1D5EF9444();
  v9 = v8;
  v10 = swift_allocBox();
  v12 = v11;
  v13 = *(v9 + 48);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *v12 = v14;
  v15 = *MEMORY[0x1E69D71F0];
  v16 = sub_1D725A09C();
  v17 = *(*(v16 - 8) + 104);
  v17(v12, v15, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v12 + v13) = v18;
  v17((v12 + v13), v15, v16);
  *v7 = v10;
  v20 = v30;
  v19 = v31;
  (*(v30 + 104))(v7, *MEMORY[0x1E69D7468], v31);
  sub_1D6076D50();
  sub_1D69C62E0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7273AE0;
  v26 = *MEMORY[0x1E69D7070];
  sub_1D69C62E0(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v27 - 8) + 104))(v25 + v24, v26, v27);
  (*(v23 + 104))(v25 + v24, *MEMORY[0x1E69D7080], v22);
  v28 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v28);
  sub_1D69C6184(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return (*(v20 + 8))(v7, v19);
}

uint64_t sub_1D69C6184(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D69C61CC()
{
  if (!qword_1EDF18098)
  {
    sub_1D69C62E0(255, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EF9538();
    sub_1D69C6348();
    sub_1D69C6184(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
    v0 = sub_1D7259D3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF18098);
    }
  }
}

void sub_1D69C62E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D69C6348()
{
  result = qword_1EDF18100;
  if (!qword_1EDF18100)
  {
    sub_1D69C62E0(255, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18100);
  }

  return result;
}

uint64_t FormatGroupNodeMaskDataLayoutAttributes.maskData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 96);
  v3 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = v3;
  v12 = *(v2 + 64);
  v4 = v12;
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v6 = v9[0];
  v9[1] = v5;
  *(a1 + 32) = v10;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v6;
  *(a1 + 16) = v5;
  return sub_1D69C64F0(v9, v8);
}

uint64_t FormatGroupNodeMaskDataLayoutAttributes.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = v0 + *(*v0 + 96);
  sub_1D69C65F8(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  return v0;
}

void sub_1D69C65F8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  switch(a9)
  {
    case 2:

      sub_1D5CDE22C(a7);
      break;
    case 1:

      break;
    case 0:

      sub_1D5ED34A0(a1, a2, a3);
      break;
  }
}

uint64_t FormatGroupNodeMaskDataLayoutAttributes.__deallocating_deinit()
{
  FormatGroupNodeMaskDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D69C670C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s8NewsFeed18FormatGroupBindingV4FontO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16) | (*(a1 + 18) << 16);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16) | (*(a2 + 18) << 16);
  v9 = *(a1 + 18) >> 5;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if ((v8 & 0xE00000) != 0x600000)
        {
          goto LABEL_50;
        }
      }

      else if ((v8 & 0xE00000) != 0x800000)
      {
        goto LABEL_50;
      }

      goto LABEL_24;
    }

    if ((v8 & 0xE00000) != 0x400000)
    {
      goto LABEL_50;
    }

    a3.n128_u64[0] = *a1;
    if (v4 != v7)
    {
      goto LABEL_50;
    }

    if ((*(a1 + 16) & 0xFF00) == 0xC00)
    {
      if ((*(a2 + 16) & 0xFF00) != 0xC00)
      {
        goto LABEL_50;
      }

      goto LABEL_37;
    }

    if ((*(a2 + 16) & 0xFF00) == 0xC00)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

  if (!(*(a1 + 18) >> 5))
  {
    if ((v8 & 0xFFFFFFu) >= 0x200000)
    {
      goto LABEL_50;
    }

    a3.n128_u64[0] = *a1;
    if (HIWORD(v5))
    {
      if (HIWORD(v5) == 1)
      {
        if (BYTE2(v8) != 1 || v4 != v7)
        {
          goto LABEL_50;
        }
      }

      else if (BYTE2(v8) != 2 || v4 != v7)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (BYTE2(v8))
      {
        v12 = 0;
      }

      else
      {
        v12 = v4 == v7;
      }

      if (!v12)
      {
        goto LABEL_50;
      }
    }

    if ((*(a1 + 16) & 0xFF00) == 0xC00)
    {
      if ((*(a2 + 16) & 0xFF00) == 0xC00)
      {
LABEL_37:
        v11 = 1;
        return v11 & 1;
      }

LABEL_50:
      v11 = 0;
      return v11 & 1;
    }

    if ((*(a2 + 16) & 0xFF00) == 0xC00)
    {
      goto LABEL_50;
    }

LABEL_41:
    if (*(a1 + 16))
    {
      if ((*(a2 + 16) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        goto LABEL_50;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (v3 != v6)
      {
        goto LABEL_50;
      }
    }

    LOBYTE(v24[0]) = HIBYTE(*(a1 + 16));
    LOBYTE(v21[0]) = BYTE1(v8);
    v14 = FormatFontScalingStyle.rawValue.getter(a3);
    v16 = v15;
    if (v14 == FormatFontScalingStyle.rawValue.getter(v17) && v16 == v18)
    {

      v11 = 1;
      return v11 & 1;
    }

    v19 = sub_1D72646CC();

    if (v19)
    {
      goto LABEL_37;
    }

    goto LABEL_50;
  }

  if ((v8 & 0xE00000) != 0x200000)
  {
    goto LABEL_50;
  }

LABEL_24:
  v24[0] = *a1;
  *&v24[1] = v3;
  v25 = v5;
  v26 = BYTE2(v5) & 0x1F;
  *v21 = v7;
  *&v21[1] = v6;
  v22 = v8;
  v23 = BYTE2(v8) & 0x1F;
  v11 = _s8NewsFeed16FormatTagBindingV4FontO2eeoiySbAE_AEtFZ_0(v24, v21, a3);
  return v11 & 1;
}

unint64_t sub_1D69C6A58(uint64_t a1)
{
  result = sub_1D69C6A80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69C6A80()
{
  result = qword_1EC88F8C0;
  if (!qword_1EC88F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8C0);
  }

  return result;
}

unint64_t sub_1D69C6AD4(void *a1)
{
  a1[1] = sub_1D6664D3C();
  a1[2] = sub_1D6704D54();
  result = sub_1D69C6B0C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69C6B0C()
{
  result = qword_1EC88F8C8;
  if (!qword_1EC88F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8C8);
  }

  return result;
}

uint64_t _s4FontOwet_0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 19))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 18) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 18) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s4FontOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 60;
    *(result + 8) = 0;
    if (a3 >= 0x3C)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 18) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1D69C6C1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = a1 + 16;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_1D69C6C38(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  result = a1 + 16;
  *(result + 2) = ((v3 | (*(result + 2) << 16)) & 0x3FFFF | (a2 << 21)) >> 16;
  *result = v3;
  return result;
}

uint64_t Dictionary<>.formatVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26[-v6];
  v8 = sub_1D7263FCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2ED14(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v26[-v15];
  sub_1D7263FBC();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    if (*(a1 + 16) && (v18 = sub_1D5B7C598(v12), (v19 & 1) != 0))
    {
      sub_1D5B76B10(*(a1 + 56) + 32 * v18, v26);
      (*(v9 + 8))(v12, v8);
      v20 = sub_1D725BD1C();
      v21 = swift_dynamicCast();
      v22 = *(v20 - 8);
      (*(v22 + 56))(v16, v21 ^ 1u, 1, v20);
      if ((*(v22 + 48))(v16, 1, v20) != 1)
      {
        return (*(v22 + 32))(a2, v16, v20);
      }
    }

    else
    {
      (*(v9 + 8))(v12, v8);
      v23 = sub_1D725BD1C();
      (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    }

    sub_1D5F40BCC(v16);
    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDF3CA58);
    return (*(*(v24 - 8) + 16))(a2, v25, v24);
  }

  return result;
}

uint64_t sub_1D69C7098(char a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = MEMORY[0x1E69E6370];
    v12[0] = a1 & 1;
    return sub_1D5B7C248(v12, v10);
  }

  return result;
}

uint64_t Dictionary<>.allowSourceMaps.setter(char a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = MEMORY[0x1E69E6370];
    v12[0] = a1 & 1;
    return sub_1D5B7C248(v12, v10);
  }

  return result;
}

uint64_t Dictionary<>.errorOnUnknownKeys.setter(char a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = MEMORY[0x1E69E6370];
    v12[0] = a1 & 1;
    return sub_1D5B7C248(v12, v10);
  }

  return result;
}

uint64_t Dictionary<>.appVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26[-v6];
  v8 = sub_1D7263FCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2ED14(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v26[-v15];
  sub_1D7263FBC();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    if (*(a1 + 16) && (v18 = sub_1D5B7C598(v12), (v19 & 1) != 0))
    {
      sub_1D5B76B10(*(a1 + 56) + 32 * v18, v26);
      (*(v9 + 8))(v12, v8);
      v20 = sub_1D725BD1C();
      v21 = swift_dynamicCast();
      v22 = *(v20 - 8);
      (*(v22 + 56))(v16, v21 ^ 1u, 1, v20);
      if ((*(v22 + 48))(v16, 1, v20) != 1)
      {
        return (*(v22 + 32))(a2, v16, v20);
      }
    }

    else
    {
      (*(v9 + 8))(v12, v8);
      v23 = sub_1D725BD1C();
      (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    }

    sub_1D5F40BCC(v16);
    if (qword_1EDF3CA98 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDF3CAA0);
    return (*(*(v24 - 8) + 16))(a2, v25, v24);
  }

  return result;
}

uint64_t sub_1D69C7978@<X0>(uint64_t a1@<X8>)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1D7263FBC();
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.allowSourceMaps.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1D7263FBC();
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.errorOnUnknownKeys.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1D7263FBC();
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

void (*Dictionary<>.ignoreMetadata.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[2] = v8;
  v9 = sub_1D7263FCC();
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v5[6] = v12;
  *(v5 + 56) = Dictionary<>.ignoreMetadata.getter(*v1) & 1;
  return sub_1D69C7EA0;
}

uint64_t sub_1D69C7EE4(uint64_t a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v15 - v4;
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = sub_1D725BD1C();
    v15[3] = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    v14 = *(v12 - 8);
    (*(v14 + 16))(boxed_opaque_existential_1, a1, v12);
    sub_1D5B7C248(v15, v10);
    return (*(v14 + 8))(a1, v12);
  }

  return result;
}

void (*Dictionary<>.appVersion.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x98uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[9] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[9] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[10] = v8;
  v9 = sub_1D7263FCC();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[13] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[13] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v5[14] = v12;
  v13 = sub_1D725BD1C();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64);
  if (v3)
  {
    v5[17] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v5[17] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v5[18] = v16;
  Dictionary<>.appVersion.getter(*v1, v16);
  return sub_1D69C82D8;
}

uint64_t sub_1D69C82F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[2] = a5;
  v25[3] = a6;
  v25[1] = a2;
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v25 - v9;
  v11 = sub_1D7263FCC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D725BD1C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v22(v21, a1, v16, v19);
  sub_1D7263FBC();
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v26[3] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    (v22)(boxed_opaque_existential_1, v21, v16);
    sub_1D5B7C248(v26, v15);
    return (*(v17 + 8))(v21, v16);
  }

  return result;
}

void (*Dictionary<>.formatVersion.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x98uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v1;
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[9] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[9] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[10] = v8;
  v9 = sub_1D7263FCC();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[13] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[13] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v5[14] = v12;
  v13 = sub_1D725BD1C();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64);
  if (v3)
  {
    v5[17] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v5[17] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v5[18] = v16;
  Dictionary<>.formatVersion.getter(*v1, v16);
  return sub_1D69C8750;
}

void sub_1D69C8774(uint64_t **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v16 = v2[11];
    v17 = v2[12];
    v18 = v2[10];
    sub_1D7263FBC();
    if ((*(v17 + 48))(v18, 1, v16) != 1)
    {
      v7 = v2[17];
      v6 = v2[18];
      v19 = v2[15];
      v20 = v2[16];
      v11 = v2[13];
      v10 = v2[14];
      v12 = v2[9];
      v15 = v2[10];
      (*(v2[12] + 32))(v10, v15, v2[11]);
      v2[7] = v19;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 4);
      (*(v20 + 16))(boxed_opaque_existential_1, v6, v19);
      sub_1D5B7C248((v2 + 4), v10);
      (*(v20 + 8))(v6, v19);
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v3 = v2[11];
  v4 = v2[12];
  v5 = v2[9];
  v23 = *(v2[16] + 16);
  v23(v2[17], v2[18], v2[15]);
  sub_1D7263FBC();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v2[17];
  v6 = v2[18];
  v9 = v2[15];
  v8 = v2[16];
  v11 = v2[13];
  v10 = v2[14];
  v12 = v2[9];
  v22 = v2[10];
  (*(v2[12] + 32))(v11, v12, v2[11]);
  v2[3] = v9;
  v13 = __swift_allocate_boxed_opaque_existential_1(v2);
  v23(v13, v7, v9);
  sub_1D5B7C248(v2, v11);
  v14 = *(v8 + 8);
  v14(v7, v9);
  v14(v6, v9);
  v15 = v22;
LABEL_6:
  free(v6);
  free(v7);
  free(v10);
  free(v11);
  free(v15);
  free(v12);

  free(v2);
}

uint64_t sub_1D69C89E0(uint64_t a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (*(a1 + 16) && (v12 = sub_1D5B7C598(v10), (v13 & 1) != 0))
    {
      sub_1D5B76B10(*(a1 + 56) + 32 * v12, v15);
      (*(v7 + 8))(v10, v6);
      if (swift_dynamicCast())
      {
        return v14[15];
      }
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D69C8BE0(char *a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v14 = MEMORY[0x1E69E6370];
    v13[0] = v11;
    return sub_1D5B7C248(v13, v10);
  }

  return result;
}

void (*Dictionary<>.bindingContent.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[2] = v8;
  v9 = sub_1D7263FCC();
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v5[6] = v12;
  *(v5 + 56) = Dictionary<>.bindingContent.getter(*v1) & 1;
  return sub_1D69C8EF4;
}

void sub_1D69C8F18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 24);
  v5 = (*(*a1 + 32) + 48);
  if ((a2 & 1) == 0)
  {
    v12 = v2[2];
    sub_1D7263FBC();
    if ((*v5)(v12, 1, v4) != 1)
    {
      v8 = v2[5];
      v7 = v2[6];
      v10 = v2[1];
      v9 = v2[2];
      (*(v2[4] + 32))(v7, v9, v2[3]);
      v14 = MEMORY[0x1E69E6370];
      v13[0] = v3;
      v11 = v7;
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v6 = v2[1];
  sub_1D7263FBC();
  if ((*v5)(v6, 1, v4) == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v2[5];
  v7 = v2[6];
  v10 = v2[1];
  v9 = v2[2];
  (*(v2[4] + 32))(v8, v10, v2[3]);
  v14 = MEMORY[0x1E69E6370];
  v13[0] = v3;
  v11 = v8;
LABEL_6:
  sub_1D5B7C248(v13, v11);
  free(v7);
  free(v8);
  free(v9);
  free(v10);

  free(v2);
}

uint64_t sub_1D69C909C(char *a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v14 = MEMORY[0x1E69E6370];
    v13[0] = v11;
    return sub_1D5B7C248(v13, v10);
  }

  return result;
}

uint64_t (*Dictionary<>.allowSourceMaps.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = Dictionary<>.allowSourceMaps.getter(*v1) & 1;
  return sub_1D69C9284;
}

uint64_t sub_1D69C92AC(char *a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v14 = MEMORY[0x1E69E6370];
    v13[0] = v11;
    return sub_1D5B7C248(v13, v10);
  }

  return result;
}

uint64_t (*Dictionary<>.errorOnUnknownKeys.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = Dictionary<>.errorOnUnknownKeys.getter(*v1) & 1;
  return sub_1D69C9494;
}

uint64_t ImageRequestOptions.init(scale:traitCollection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *(type metadata accessor for ImageRequestOptions() + 24);
  v7 = sub_1D725CB5C();
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *a2 = a3;
  *(a2 + 8) = a1;
  return result;
}

uint64_t ImageRequestOptions.init(scale:traitCollection:border:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = a1;
  v5 = a3 + *(type metadata accessor for ImageRequestOptions() + 24);

  return sub_1D69C9598(a2, v5);
}

uint64_t sub_1D69C9598(uint64_t a1, uint64_t a2)
{
  sub_1D6081298();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D69C9624()
{
  sub_1D69C96B8();
  if (v0 <= 0x3F)
  {
    sub_1D6081298();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D69C96B8()
{
  result = qword_1EDF1AA18;
  if (!qword_1EDF1AA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AA18);
  }

  return result;
}

id VideoView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *VideoView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1D725F6DC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1D5BB95B0();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1EDF1BA28;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x1E69CE128]) init];
  v19 = qword_1EDF1BA08;
  type metadata accessor for VideoLiveIcon();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = qword_1EDF1BA30;
  type metadata accessor for VideoDurationView();
  *&v4[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = qword_1EDF1BA38;
  sub_1D725FBCC();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = qword_1EDF1BA40;
  type metadata accessor for VideoLogoBackdropView(0);
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[qword_1EDF1BA10] = 0x4024000000000000;
  *&v4[qword_1EDF1BA18] = 0x4076800000000000;
  *&v4[qword_1EDF1BA20] = 0x4054000000000000;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = *&v23[qword_1EDF1BA28];
  v25 = v23;
  [v25 addSubview_];
  [v25 addSubview_];
  [v25 addSubview_];
  v26 = qword_1EDF1BA40;
  [v25 addSubview_];
  [v25 addSubview_];
  v27 = *&v25[v26];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor_];

  v31 = *&v25[v26];
  sub_1D725F6AC();
  sub_1D725F6AC();
  v32 = [v28 blackColor];
  v33 = [v32 colorWithAlphaComponent_];

  v34 = [v28 clearColor];
  sub_1D725E8DC();
  v35 = sub_1D725E94C();
  (*(*(v35 - 8) + 56))(v17, 0, 1, v35);
  v36 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  swift_beginAccess();
  sub_1D5E48BF4(v17, v31 + v36);
  swift_endAccess();
  sub_1D5E48C58();

  sub_1D69C9C0C(v17);
  return v25;
}

uint64_t sub_1D69C9C0C(uint64_t a1)
{
  sub_1D5BB95B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall VideoView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D69CA0F0;
  *(v3 + 24) = v2;
  v7[4] = sub_1D5F39624;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D69C9704;
  v7[3] = &block_descriptor_56;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_1D69C9E30(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v27) * 0.5 + -40.0;
  [a1 bounds];
  v29.origin.y = CGRectGetHeight(v28) * 0.5 + -40.0;
  v29.size.width = 80.0;
  v29.origin.x = v2;
  v29.size.height = 80.0;
  CGRectIntegral(v29);
  sub_1D726344C();
  v3 = *&a1[qword_1EDF1BA08];
  v4 = OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label;
  result = [*(v3 + OBJC_IVAR____TtC8NewsFeed13VideoLiveIcon_label) font];
  if (result)
  {
    v6 = result;
    [result capHeight];
    v8 = v7;

    v9 = v8 + 12.0;
    [*(v3 + v4) intrinsicContentSize];
    v11 = v10 + 12.0;
    [a1 bounds];
    v31.origin.y = CGRectGetHeight(v30) - v9 + -10.0;
    v31.origin.x = 10.0;
    v31.size.width = v11;
    v31.size.height = v9;
    CGRectIntegral(v31);
    sub_1D726344C();
    v12 = *&a1[qword_1EDF1BA30];
    v13 = OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label;
    result = [*(v12 + OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label) font];
    if (result)
    {
      v14 = result;
      [result capHeight];
      v16 = v15;

      v17 = v16 + 12.0;
      [*(v12 + v13) intrinsicContentSize];
      v19 = v18 + 12.0;
      [a1 bounds];
      v33.origin.y = CGRectGetHeight(v32) - v17 + -10.0;
      v33.origin.x = 10.0;
      v33.size.width = v19;
      v33.size.height = v17;
      CGRectIntegral(v33);
      sub_1D726344C();
      [a1 bounds];
      v20 = CGRectGetWidth(v34) + -360.0;
      [a1 bounds];
      v36.origin.y = CGRectGetHeight(v35) + -360.0;
      v36.size.width = 360.0;
      v36.origin.x = v20;
      v36.size.height = 360.0;
      CGRectIntegral(v36);
      sub_1D726344C();
      v21 = *&a1[qword_1EDF1BA38];
      [a1 bounds];
      Width = CGRectGetWidth(v37);
      [v21 bounds];
      v23 = Width - CGRectGetWidth(v38) + -10.0;
      [a1 bounds];
      Height = CGRectGetHeight(v39);
      [v21 bounds];
      v25 = Height - CGRectGetHeight(v40) + -10.0;
      [v21 bounds];
      v26 = CGRectGetWidth(v41);
      [v21 bounds];
      v43.size.height = CGRectGetHeight(v42);
      v43.origin.x = v23;
      v43.origin.y = v25;
      v43.size.width = v26;
      CGRectIntegral(v43);
      return sub_1D726344C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D69CA0F8(void *a1)
{
  v1 = a1;
  VideoView.layoutSubviews()();
}

void sub_1D69CA140()
{
  v1 = *(v0 + qword_1EDF1BA40);
}

id VideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D69CA1E8(uint64_t a1)
{
  v2 = *(a1 + qword_1EDF1BA40);
}

void sub_1D69CA26C()
{
  v1 = qword_1EDF1BA28;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69CE128]) init];
  v2 = qword_1EDF1BA08;
  type metadata accessor for VideoLiveIcon();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = qword_1EDF1BA30;
  type metadata accessor for VideoDurationView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = qword_1EDF1BA38;
  sub_1D725FBCC();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = qword_1EDF1BA40;
  type metadata accessor for VideoLogoBackdropView(0);
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + qword_1EDF1BA10) = 0x4024000000000000;
  *(v0 + qword_1EDF1BA18) = 0x4076800000000000;
  *(v0 + qword_1EDF1BA20) = 0x4054000000000000;
  sub_1D726402C();
  __break(1u);
}

id FeedPuzzleType.debugAssetHandle.getter()
{
  v1 = [*(v0 + 56) coverImageAssetHandle];

  return v1;
}

uint64_t sub_1D69CA41C(SEL *a1)
{
  v2 = [*(v1 + 56) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D726207C();

  return v4;
}

uint64_t FeedPuzzleType.additionalFormatFeedItems.getter()
{
  v1 = *(v0 + 56);
  sub_1D5BDEE4C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  *(v2 + 56) = &type metadata for FeedTag;
  *(v2 + 64) = sub_1D5EE5BA8();
  v3 = swift_allocObject();
  *(v2 + 32) = v3;
  v4 = [swift_unknownObjectRetain() identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *(v3 + 96) = xmmword_1D7279980;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  *(v3 + 32) = v1;
  *(v3 + 40) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0xE000000000000000;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v8 = MEMORY[0x1E69E7CD0];
  *(v3 + 80) = 0;
  *(v3 + 88) = v8;
  return v2;
}

void FeedPuzzleType.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t FeedPuzzleType.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

uint64_t FeedPuzzleType.identifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t FeedPuzzleType.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

double FeedPuzzleType.init(identifier:puzzleType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  result = 0.0;
  *(a4 + 24) = xmmword_1D728A8E0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t sub_1D69CA660()
{
  v1 = [*(v0 + 56) name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

id sub_1D69CA6C8()
{
  v1 = [*(v0 + 56) coverImageAssetHandle];

  return v1;
}

uint64_t FeedPuzzleType.groupItem.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  type metadata accessor for FeedGroupItem();
  swift_storeEnumTagMultiPayload();
  return sub_1D63071F4(v7, &v6);
}

uint64_t sub_1D69CA764@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  type metadata accessor for FeedGroupItem();
  swift_storeEnumTagMultiPayload();
  return sub_1D63071F4(v7, &v6);
}

uint64_t static FeedPuzzleType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FeedPuzzleType.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D69CAC64();
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D69CA85C()
{
  sub_1D7264A0C();
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D69CA8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D69CAD84();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D69CA914()
{
  sub_1D7264A0C();
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D69CA97C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t FeedPuzzleType.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = &v21 - v11;
  v13 = *(v1 + 56);
  v14 = [v13 identifier];
  if (!v14)
  {
    sub_1D726207C();
    v14 = sub_1D726203C();
  }

  v15 = [objc_opt_self() nss:v14 NewsURLForPuzzleTypeID:?];

  if (v15)
  {
    sub_1D72584EC();

    (*(v4 + 32))(v12, v7, v3);
    sub_1D725844C();
    v16 = [v13 name];
    sub_1D726207C();

    sub_1D725F83C();
    (*(v4 + 8))(v12, v3);
    v17 = sub_1D725F84C();
    return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
  }

  else
  {
    v19 = sub_1D725F84C();
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, 1, 1, v19);
  }
}

unint64_t sub_1D69CAC64()
{
  result = qword_1EC88F8D8;
  if (!qword_1EC88F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8D8);
  }

  return result;
}

unint64_t sub_1D69CACB8(uint64_t a1)
{
  result = sub_1D5FC4B3C();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D69CACEC(uint64_t a1, int a2)
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

uint64_t sub_1D69CAD34(uint64_t result, int a2, int a3)
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

unint64_t sub_1D69CAD84()
{
  result = qword_1EC88F8E0;
  if (!qword_1EC88F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8E0);
  }

  return result;
}

void *sub_1D69CADF0(uint64_t a1, uint64_t a2)
{
  sub_1D5B56150(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v21 = a2;
  v4 = sub_1D5ECF4A0(sub_1D69CB088, v20, &unk_1F50F7548);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v4, v22);

  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v5 = swift_allocObject();
  *(inited + 32) = v5;
  *(v5 + 48) = v23;
  v6 = v22[1];
  *(v5 + 16) = v22[0];
  *(v5 + 32) = v6;
  v19 = a2;
  v7 = sub_1D7196690(sub_1D69CB0A8, v18, &unk_1F50F7570);
  v8 = sub_1D5F62998(v7);

  sub_1D6795150(0x6D69542065746144, 0xE900000000000065, 0, 0, v8, v24);

  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v9 = swift_allocObject();
  *(inited + 72) = v9;
  *(v9 + 48) = v25;
  v10 = v24[1];
  *(v9 + 16) = v24[0];
  *(v9 + 32) = v10;
  v17[2] = a2;
  v11 = sub_1D7199984(sub_1D69CB0C4, v17, &unk_1F50F7518);
  v12 = sub_1D5F62998(v11);

  sub_1D6795150(0x656C7A7A7550, 0xE600000000000000, 0, 0, v12, v26);

  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v13 = swift_allocObject();
  *(inited + 112) = v13;
  *(v13 + 48) = v27;
  v14 = v26[1];
  *(v13 + 16) = v26[0];
  *(v13 + 32) = v14;
  v15 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v15;
}

uint64_t FormatTextNodeAttachmentAlignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x61437265746E6563;
  }

  else
  {
    return 0x656E696C65736162;
  }
}

void sub_1D69CB128(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = sub_1D725A19C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0uLL;
  v17 = 0;
  v18 = *v4 != 1 || a2 == 0;
  if (v18 || (~*(a2 + 56) & 0xF000000000000007) == 0)
  {
    v19 = 1;
LABEL_7:
    *a4 = 0;
    *(a4 + 8) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = v19;
    return;
  }

  v20 = v13;
  v39 = *(a2 + 56);

  v21 = sub_1D5F4FDC4(a1);

  if (!v5)
  {
    sub_1D7259EDC();
    sub_1D725A18C();
    v23 = v22;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    if (v38 == 1)
    {
      [v21 pointSize];
      v25 = v24;
      sub_1D7264C3C();
      v26 = round(v23 * (v25 * 4.0) * 0.25);
      if (!v37)
      {
        v26 = v25;
      }

      v27 = [v21 fontWithSize_];
    }

    else
    {
      v27 = v21;
    }

    v28 = v27;
    (*(v11 + 8))(v15, v20);
    [v28 capHeight];
    v30 = v29;
    [a3 size];
    *&v32 = (v30 - v31) * 0.5;
    v36 = v32;
    [a3 size];
    v35 = v33;
    [a3 size];
    v17 = v34;

    *&v16 = v36;
    v19 = 0;
    *(&v16 + 1) = v35;
    goto LABEL_7;
  }
}

NewsFeed::FormatTextNodeAttachmentAlignment_optional __swiftcall FormatTextNodeAttachmentAlignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D69CB430(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x61437265746E6563;
  }

  else
  {
    v3 = 0x656E696C65736162;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF74686769654870;
  }

  if (*a2)
  {
    v5 = 0x61437265746E6563;
  }

  else
  {
    v5 = 0x656E696C65736162;
  }

  if (*a2)
  {
    v6 = 0xEF74686769654870;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D69CB4E8()
{
  result = qword_1EC88F8F0;
  if (!qword_1EC88F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8F0);
  }

  return result;
}

uint64_t sub_1D69CB53C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69CB5CC()
{
  sub_1D72621EC();
}

uint64_t sub_1D69CB648()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D69CB6D4(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C65736162;
  if (*v1)
  {
    v2 = 0x61437265746E6563;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF74686769654870;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D69CB720(uint64_t a1)
{
  *(a1 + 8) = sub_1D69CB750();
  result = sub_1D5CCFF18();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D69CB750()
{
  result = qword_1EC88F8F8;
  if (!qword_1EC88F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F8F8);
  }

  return result;
}

unint64_t sub_1D69CB7A4(uint64_t a1)
{
  result = sub_1D69CB7CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69CB7CC()
{
  result = qword_1EC88F900;
  if (!qword_1EC88F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F900);
  }

  return result;
}

unint64_t sub_1D69CB820(void *a1)
{
  a1[1] = sub_1D5CCFE64();
  a1[2] = sub_1D66C65C0();
  result = sub_1D69CB4E8();
  a1[3] = result;
  return result;
}

void sub_1D69CB880(uint64_t a1)
{
  v13 = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v2 = *(a1 + 16);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));

        v11 = sub_1D69CB9F8(a1, v10, &v13);
        v12 = *(v10 + 24);
        if (v11)
        {
          sub_1D726345C();

          v7 = v8;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          sub_1D726345C();

          v7 = v8;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v8 = v7;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D69CB9F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  v6 = sub_1D6EE8B60();
  v8 = *a3;
  if (*(*a3 + 16))
  {
    v9 = v6;
    v10 = v7;

    v11 = sub_1D5B69D90(v9, v10);
    v13 = v12;

    if (v13)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v48 = *(a2 + 16);
  sub_1D6EE5698(&v47);
  v15 = v47;
  if (v47 >> 62)
  {
    if (v47 >> 62 == 1)
    {
      sub_1D5EB15C4(v47);
      goto LABEL_25;
    }

    if (v47 == 0x8000000000000000)
    {
      v27 = sub_1D6EE8B60();
      v29 = v28;
      v30 = *(a2 + 24);

      if ([v30 isHidden])
      {
        v31 = 1;
      }

      else
      {
        [v30 frame];
        v31 = sub_1D726337C();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *a3;
      sub_1D6D7A7A0(v31 & 1, v27, v29, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v32 = sub_1D6EE8B60();
      v34 = v33;

      v35 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *a3;
      sub_1D6D7A7A0(1, v32, v34, v35);
    }

    v8 = v46;
  }

  else
  {
    v17 = *(v47 + 16);
    v16 = *(v47 + 24);
    v18 = sub_1D6EE8B60();
    v20 = v19;
    swift_beginAccess();
    v21 = *(a1 + 16);
    v22 = *(v21 + 16);

    if (v22)
    {

      v23 = sub_1D5B69D90(v17, v16);
      v25 = v24;

      if (v25)
      {
        v26 = *(*(v21 + 56) + 8 * v23);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v36 = sub_1D69CB9F8(a1, v26, a3);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v45 = *a3;
    sub_1D6D7A7A0(v36 & 1, v18, v20, v37);

    sub_1D5EB15C4(v15);
    v8 = v45;
  }

  *a3 = v8;
LABEL_25:
  v48 = *(a2 + 16);
  result = sub_1D6EE8B60();
  if (*(v8 + 16))
  {
    v41 = result;
    v42 = v40;

    v11 = sub_1D5B69D90(v41, v42);
    v44 = v43;

    if (v44)
    {
LABEL_27:
      v14 = *(*(v8 + 56) + v11);

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D69CBD58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 121))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 120) & 0x7E | (*(a1 + 120) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D69CBDA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 120) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1D69CBE54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D69CBE9C(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D69CBF1C(uint64_t a1, double *a2, char *a3)
{
  v85 = a1;
  v5 = type metadata accessor for InternalErrorViewLayout.Context();
  v79 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v78 = v7;
  v80 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v83 = a2[1];
  v84 = v8;
  v9 = a2[2];
  v81 = a2[3];
  v82 = v9;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v13 = a2[7];
  v14 = a2[9];
  v60 = a2[8];
  v59 = v14;
  v15 = a2[11];
  v58 = a2[10];
  v57 = v15;
  v16 = a2[12];
  v17 = a2[13];
  v18 = a2[14];
  v19 = a2[15];
  v20 = a2[17];
  v64 = a2[16];
  v63 = v20;
  v21 = a2[19];
  v62 = a2[18];
  v61 = v21;
  v22 = a2[21];
  v68 = a2[20];
  v67 = v22;
  v23 = a2[23];
  v66 = a2[22];
  v65 = v23;
  v24 = a2[25];
  v72 = a2[24];
  v71 = v24;
  v25 = a2[27];
  v70 = a2[26];
  v69 = v25;
  v26 = a2[28];
  v75 = a2[29];
  v76 = v26;
  v27 = a2[31];
  v74 = a2[30];
  v73 = v27;
  v28 = *&a3[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_titleLabel];
  [v28 setNumberOfLines_];
  v77 = *&a3[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_subtitleLabel];
  v29 = v77;
  [v77 setNumberOfLines_];
  v30 = *&a3[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_footerLabel];
  [v30 setNumberOfLines_];
  v31 = *&a3[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_iconImageView];
  [v31 setFrame_];
  [v28 setFrame_];
  v32 = *&a3[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_errorLabel];
  [v32 setFrame_];
  [v29 setFrame_];
  [v30 setFrame_];
  v33 = *&a3[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_button];
  [v33 setFrame_];
  v34 = *&a3[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_attachmentLabel];
  [v34 setFrame_];
  v35 = sub_1D726203C();
  v36 = [objc_opt_self() systemImageNamed_];

  [v31 setImage_];
  v37 = objc_opt_self();
  v38 = [v37 whiteColor];
  [v31 setTintColor_];

  v39 = v85;
  [v28 setAttributedText_];
  [v32 setAttributedText_];
  [v77 setAttributedText_];
  [v30 setAttributedText_];
  v40 = v39[8];
  v77 = v34;
  [v34 setAttributedText_];
  [v33 setAttributedTitle:v39[7] forState:0];
  v41 = [v37 whiteColor];
  [v33 setBackgroundColor_];

  v42 = [v33 layer];
  [v42 setCornerRadius_];

  v43 = [v33 layer];
  [v43 setCornerCurve_];

  if (qword_1EDF26C50 != -1)
  {
    swift_once();
  }

  [a3 setBackgroundColor_];
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v80;
  sub_1D69CD5E8(v39, v80);
  v47 = (v79[80] + 24) & ~v79[80];
  v79 = a3;
  v48 = (v47 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v44;
  sub_1D69CD7C4(v46, v49 + v47, type metadata accessor for InternalErrorViewLayout.Context);
  *(v49 + v48) = v45;

  v50 = sub_1D725D03C();
  v51 = swift_allocObject();
  v52 = v86;
  swift_weakInit();
  v53 = v85;
  sub_1D69CD5E8(v85, v46);
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  sub_1D69CD7C4(v46, v54 + v47, type metadata accessor for InternalErrorViewLayout.Context);

  return sub_1D71AE5A8(*&v79[OBJC_IVAR____TtC8NewsFeed17InternalErrorView_debugButton], *(v53 + 16), *(v52 + 16), v84, v83, v82, v81);
}

uint64_t sub_1D69CC640(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D725D7FC();
  v85 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D69CD760(0, &unk_1EDF3B6E0, MEMORY[0x1E69D77E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v86 = &ObjectType - v10;
  sub_1D69CD760(0, &unk_1EC88DF00, MEMORY[0x1E69D8750], v7);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &ObjectType - v13;
  sub_1D69CD760(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, v7);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = (&ObjectType - v17);
  v19 = type metadata accessor for DebugGroupLayoutKey();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &ObjectType - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v87 = result;
  if (result)
  {
    v84 = a2;
    sub_1D6AEA8E8(v18);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {

      return sub_1D69CD8A4(v18, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    }

    else
    {
      sub_1D69CD7C4(v18, v23, type metadata accessor for DebugGroupLayoutKey);
      v25 = &v23[*(v19 + 24)];
      v26 = *(v25 + 4);
      v27 = *(v25 + 5);
      v77 = v25;
      __swift_project_boxed_opaque_existential_1(v25 + 1, v26);
      (*(v27 + 64))(&v89, v26, v27);
      v28 = v91;
      v82 = v14;
      if (v91)
      {
        v29 = v92;
        __swift_project_boxed_opaque_existential_1(&v89, v91);
        v74 = (*(v29 + 16))(v28, v29);
        v31 = v30;
        __swift_destroy_boxed_opaque_existential_1(&v89);
      }

      else
      {
        sub_1D6330678(&v89);
        v74 = 0;
        v31 = 0xE000000000000000;
      }

      v80 = v6;
      v81 = v3;
      v32 = &v23[*(v19 + 28)];
      v33 = *(type metadata accessor for GroupLayoutContext() + 44);
      v75 = v32;
      LOBYTE(v89) = *(v32 + v33);
      FeedKind.rawValue.getter();
      v34 = sub_1D726213C();
      v36 = v35;

      v37 = v87;
      v38 = *(v87 + 16);
      v39 = *(v38 + 16);
      v76 = *(v38 + 24);
      sub_1D725F82C();
      v83 = v39;
      swift_unknownObjectRetain();
      v78 = sub_1D725F7DC();
      if (qword_1EC87D898 != -1)
      {
        swift_once();
      }

      v40 = sub_1D725D19C();
      v41 = __swift_project_value_buffer(v40, qword_1EC88FCB0);
      v42 = *(v40 - 8);
      v43 = v86;
      (*(v42 + 16))(v86, v41, v40);
      (*(v42 + 56))(v43, 0, 1, v40);
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1D7263D4C();

      v89 = 0xD000000000000010;
      v90 = 0x80000001D73DE120;
      v44 = *(v37 + 32);
      v45 = *(v37 + 40);

      MEMORY[0x1DA6F9910](v44, v45);

      MEMORY[0x1DA6F9910](8285, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v34, v36);

      MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
      MEMORY[0x1DA6F9910](v74, v31);

      v74 = v89;
      v73 = v90;
      sub_1D69CD760(0, &unk_1EDF19AF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6F90]);
      v46 = sub_1D725D52C();
      v47 = *(v46 - 8);
      v48 = *(v47 + 72);
      v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1D7284F00;
      v72 = v50;
      v51 = (v50 + v49);
      v52 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v79 = v23;
      if (Strong)
      {
        v54 = Strong;
        v55 = [Strong window];
      }

      else
      {
        v55 = 0;
      }

      *(v52 + 16) = v55;
      ObjectType = swift_getObjectType();
      *v51 = v52;
      v56 = *(v47 + 104);
      v56(v51, *MEMORY[0x1E69D7938], v46);
      v57 = swift_allocObject();
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      __swift_project_value_buffer(v58, qword_1EDF3CA58);
      v57[2] = sub_1D725BC9C();
      v57[3] = v59;
      v57[4] = 0xD000000000000013;
      v57[5] = 0x80000001D73DABA0;
      *(v51 + v48) = v57;
      v60 = *MEMORY[0x1E69D7940];
      v56((v51 + v48), v60, v46);
      v61 = swift_allocObject();
      if (qword_1EDF3CA98 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v58, qword_1EDF3CAA0);
      v61[2] = sub_1D725BC9C();
      v61[3] = v62;
      v61[4] = 0xD000000000000017;
      v61[5] = 0x80000001D73DABC0;
      *(v51 + 2 * v48) = v61;
      v56((v51 + 2 * v48), v60, v46);
      v63 = type metadata accessor for InternalErrorViewLayout.Context();
      sub_1D714B174(v84 + *(v63 + 48), 1, (v51 + 3 * v48));
      static RadarAttachment.feedGroup(_:)(v77 + 1, (v51 + 4 * v48));
      v64 = static RadarAttachment.feedGroupLayoutContext(_:)(v75, (v51 + 5 * v48));
      v65 = *(v87 + 24);
      MEMORY[0x1EEE9AC00](v64, v66);
      v67 = v79;
      *(&ObjectType - 2) = v79;

      v68 = sub_1D7196CEC(sub_1D69CD888, (&ObjectType - 4), v65);

      v88 = v72;
      sub_1D6988494(v68);
      (*(v85 + 104))(v80, *MEMORY[0x1E69D79C8], v81);
      v69 = v82;
      sub_1D725F61C();
      v70 = sub_1D725F62C();
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      sub_1D725D9CC();
      sub_1D69CD8A4(v69, &unk_1EC88DF00, MEMORY[0x1E69D8750]);

      swift_unknownObjectRelease();

      return sub_1D69CD82C(v67);
    }
  }

  return result;
}

uint64_t sub_1D69CD0C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (a2 + *(type metadata accessor for DebugGroupLayoutKey() + 24));
  __swift_project_boxed_opaque_existential_1(v6 + 1, v6[4]);
  v7 = sub_1D725AA4C();
  v9 = v8;
  v11 = v6[4];
  v10 = v6[5];
  __swift_project_boxed_opaque_existential_1(v6 + 1, v11);
  (*(v10 + 64))(v19, v11, v10);
  v12 = v20;
  if (v20)
  {
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v14 = (*(v13 + 8))(v12, v13);
    v12 = v15;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_1D6330678(v19);
    v14 = 0;
  }

  v16 = (*(v5 + 8))(v7, v9, v14, v12, v4, v5);

  *a3 = v16;
  return result;
}

uint64_t sub_1D69CD230(uint64_t a1, uint64_t a2)
{
  sub_1D69CD760(0, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (v21 - v5);
  v7 = type metadata accessor for DebugGroupLayoutKey();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_1D6AEA8E8(v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_1D69CD8A4(v6, qword_1EDF2CEF0, type metadata accessor for DebugGroupLayoutKey);
    }

    else
    {
      sub_1D69CD7C4(v6, v11, type metadata accessor for DebugGroupLayoutKey);
      v21[2] = *(*(v13 + 16) + 24);
      v21[1] = swift_getObjectType();
      v14 = qword_1EDF16C48;
      swift_unknownObjectRetain();
      if (v14 != -1)
      {
        swift_once();
      }

      sub_1D69CD760(0, &unk_1EDF19AF0, MEMORY[0x1E69D7970], MEMORY[0x1E69E6F90]);
      v15 = *(sub_1D725D52C() - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D7279970;
      v19 = (v18 + v17);
      v20 = type metadata accessor for InternalErrorViewLayout.Context();
      sub_1D714B174(a2 + *(v20 + 48), 1, v19);
      static RadarAttachment.feedGroup(_:)(&v11[*(v7 + 24) + 8], (v19 + v16));
      static RadarAttachment.feedGroupLayoutContext(_:)(&v11[*(v7 + 28)], (v19 + 2 * v16));
      v21[4] = v18;
      sub_1D725D9CC();

      swift_unknownObjectRelease();
      sub_1D69CD82C(v11);
    }
  }

  return result;
}

uint64_t sub_1D69CD5A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D69CD5E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalErrorViewLayout.Context();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69CD64C()
{
  v1 = *(type metadata accessor for InternalErrorViewLayout.Context() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D69CC640(v2, v3);
}

uint64_t sub_1D69CD6EC()
{
  v1 = *(type metadata accessor for InternalErrorViewLayout.Context() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1D69CD230(v2, v3);
}

void sub_1D69CD760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D69CD7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D69CD82C(uint64_t a1)
{
  v2 = type metadata accessor for DebugGroupLayoutKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D69CD8A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D69CD760(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t FormatArticleList.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatArticleList.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FormatArticleList.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FormatArticleList.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatArticleList.init(from:)(a1);
  return v2;
}

uint64_t FormatArticleList.init(from:)(void *a1)
{
  v3 = v1;
  sub_1D69CDE0C(0, &qword_1EDF03A70, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v16 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69CDBA8();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v16;
    v12 = sub_1D72642BC();
    v14 = v13;
    (*(v10 + 8))(v9, v6);
    *(v3 + 16) = v12;
    *(v3 + 24) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1D69CDBA8()
{
  result = qword_1EDF10D60[0];
  if (!qword_1EDF10D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF10D60);
  }

  return result;
}

uint64_t sub_1D69CDBFC(uint64_t a1)
{
  v2 = sub_1D69CDBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69CDC38(uint64_t a1)
{
  v2 = sub_1D69CDBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatArticleList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatArticleList.encode(to:)(void *a1)
{
  sub_1D69CDE0C(0, &qword_1EDF02728, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69CDBA8();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

void sub_1D69CDE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69CDBA8();
    v7 = a3(a1, &type metadata for FormatArticleList.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D69CDE70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatArticleList.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D69CDEC8(void *a1)
{
  sub_1D69CDE0C(0, &qword_1EDF02728, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69CDBA8();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t FormatArticleList.debugDescription.getter()
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_1D69CE090(void *a1)
{
  a1[1] = sub_1D69CE140(&unk_1EDF10D38);
  a1[2] = sub_1D69CE140(&qword_1EDF10D48);
  result = sub_1D69CE140(&qword_1EC88F908);
  a1[3] = result;
  return result;
}

uint64_t sub_1D69CE140(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatArticleList();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D69CE180()
{
  v1 = *v0;
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D69CE268()
{
  result = qword_1EC88F910;
  if (!qword_1EC88F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F910);
  }

  return result;
}

unint64_t sub_1D69CE2C0()
{
  result = qword_1EDF10D50;
  if (!qword_1EDF10D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10D50);
  }

  return result;
}

unint64_t sub_1D69CE318()
{
  result = qword_1EDF10D58;
  if (!qword_1EDF10D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10D58);
  }

  return result;
}

uint64_t sub_1D69CE36C(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = a2[3];
  *v59 = a2[2];
  *&v59[16] = v4;
  *&v59[32] = a2[4];
  v5 = a2[1];
  v57 = *a2;
  v58 = v5;
  v6 = *v2;
  v7 = *v2 >> 60;
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        goto LABEL_34;
      }

      v21 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = 0;
        while (1)
        {
          v14 = v22 == v23;
          if (v22 == v23)
          {
            break;
          }

          if (v23 >= *(v21 + 16))
          {
LABEL_41:
            __break(1u);
            return result;
          }

          v24 = v23 + 1;
          *&v49 = *(v21 + 32 + 8 * v23);
          *v56 = *v59;
          *&v56[16] = *&v59[16];
          *&v56[32] = *&v59[32];
          v54 = v57;
          v55 = v58;
          result = sub_1D69CE36C(v3, &v54);
          v23 = v24;
          if ((result & 1) == 0)
          {
            return v14 & 1;
          }
        }

        return v14 & 1;
      }
    }

    else
    {
      if (v7 != 7)
      {
        if (v7 == 8)
        {
          *&v54 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

          v16 = sub_1D69CE36C(v3, a2);

          v14 = v16 ^ 1;
        }

        else
        {
          v41 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          *&v49 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          *(&v49 + 1) = v41;
          v42 = a2[3];
          *v56 = a2[2];
          *&v56[16] = v42;
          *&v56[32] = a2[4];
          v43 = a2[1];
          v54 = *a2;
          v55 = v43;
          v14 = sub_1D7080250(result);
        }

        return v14 & 1;
      }

      v31 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = 0;
        while (1)
        {
          v14 = v32 != v33;
          if (v32 == v33)
          {
            return v14 & 1;
          }

          if (v33 >= *(v31 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v34 = v33 + 1;
          *&v49 = *(v31 + 32 + 8 * v33);
          *v56 = *v59;
          *&v56[16] = *&v59[16];
          *&v56[32] = *&v59[32];
          v54 = v57;
          v55 = v58;
          result = sub_1D69CE36C(v3, &v54);
          v33 = v34;
          if (result)
          {
            return v14 & 1;
          }
        }
      }
    }

LABEL_37:
    v14 = 1;
    return v14 & 1;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v25 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v27 = type metadata accessor for FormatContentSubgroupFilterContext();
      sub_1D69D0228(v3 + *(v27 + 20), &v49);
      if (*(&v50 + 1))
      {
        sub_1D5B63F14(&v49, &v54);
        v28 = *(&v55 + 1);
        v29 = *v56;
        __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
        v30 = *(v29 + 16);

        v14 = v30(v25, v26, v28, v29) == 0;
        goto LABEL_32;
      }
    }

    else if (v7 == 3)
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v10 = type metadata accessor for FormatContentSubgroupFilterContext();
      sub_1D69D0228(v3 + *(v10 + 20), &v49);
      if (*(&v50 + 1))
      {
        sub_1D5B63F14(&v49, &v54);
        v11 = *(&v55 + 1);
        v12 = *v56;
        __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
        v13 = *(v12 + 16);

        v14 = v13(v8, v9, v11, v12) > 0;
LABEL_32:
        __swift_destroy_boxed_opaque_existential_1(&v54);

        return v14 & 1;
      }
    }

    else
    {
      v35 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v37 = type metadata accessor for FormatContentSubgroupFilterContext();
      sub_1D69D0228(v3 + *(v37 + 20), &v49);
      if (*(&v50 + 1))
      {
        sub_1D5B63F14(&v49, &v54);
        v38 = *(&v55 + 1);
        v39 = *v56;
        __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
        v40 = *(v39 + 24);

        v14 = v40(v35, v36, v38, v39);
        goto LABEL_32;
      }
    }

    sub_1D69D028C(&v49);
LABEL_34:
    v14 = 0;
    return v14 & 1;
  }

  if (v7)
  {
    if ((*((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 1) == 0)
    {
      v44 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v55 = v58;
      *&v56[8] = *&v59[8];
      *&v56[24] = *&v59[24];
      *v56 = *v59 & 0x7FFFFFFFFFFFFFFFLL;
      *&v56[40] = *&v59[40];
      v51 = *v56;
      v52 = *&v56[16];
      v53 = *&v56[32];
      v54 = v57;
      v49 = v57;
      v50 = v58;
      sub_1D5CE9930(&v57, &v48);
      FormatContentSubgroup.Resolved.feedItemIdentifiers.getter();
      v46 = v45;
      sub_1D5CB71DC(&v54);
      v47 = *(v46 + 16);

      v14 = v47 >= v44;
      return v14 & 1;
    }

    goto LABEL_37;
  }

  v17 = *(result + *(type metadata accessor for FormatContentSubgroupFilterContext() + 24));
  if (!*(v17 + 16))
  {
    goto LABEL_34;
  }

  v18 = sub_1D5B69D90(*(v6 + 16), *(v6 + 24));
  if ((v19 & 1) == 0)
  {
    goto LABEL_34;
  }

  v20 = (*(v17 + 56) + 80 * v18);
  v55 = v20[1];
  *v56 = v20[2];
  *&v56[16] = v20[3];
  *&v56[32] = v20[4];
  v54 = *v20;
  v14 = sub_1D6D5AF70(v3);
  return v14 & 1;
}

uint64_t static FormatContentSubgroupFilter.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 60;
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        if (v3 >> 60 != 5)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (v3 >> 60 != 6)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          if (v3 >> 60 == 8)
          {
            v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v17 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v18 = v5;

            v6 = static FormatContentSubgroupFilter.== infix(_:_:)(&v18, &v17);

            return v6 & 1;
          }

          goto LABEL_42;
        }

        if (v3 >> 60 != 9)
        {
          goto LABEL_42;
        }

        goto LABEL_25;
      }

      if (v3 >> 60 != 7)
      {
        goto LABEL_42;
      }
    }

    v15 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v15) = sub_1D633BBE4(v15, v16);

    return v15 & 1;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      if (!(v3 >> 60))
      {
        v7 = *(v2 + 16);
        v8 = *(v2 + 24);
        goto LABEL_26;
      }

      goto LABEL_42;
    }

    if (v3 >> 60 != 1)
    {
      goto LABEL_42;
    }

    v12 = v2 & 0xFFFFFFFFFFFFFFFLL;
    v13 = v3 & 0xFFFFFFFFFFFFFFFLL;
    v14 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    if ((*(v12 + 24) & 1) == 0)
    {
      if (*(v12 + 16) != *(v13 + 16))
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if ((v14 & 1) == 0)
    {
LABEL_42:
      v6 = 0;
      return v6 & 1;
    }

LABEL_43:
    v6 = 1;
    return v6 & 1;
  }

  if (v4 == 2)
  {
    if (v3 >> 60 != 2)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (v4 == 3)
    {
      if (v3 >> 60 == 3)
      {
        goto LABEL_25;
      }

      goto LABEL_42;
    }

    if (v3 >> 60 != 4)
    {
      goto LABEL_42;
    }
  }

LABEL_25:
  v9 = v2 & 0xFFFFFFFFFFFFFFFLL;
  v7 = *(v9 + 16);
  v8 = *(v9 + 24);
  v3 &= 0xFFFFFFFFFFFFFFFuLL;
LABEL_26:
  if (v7 == *(v3 + 16) && v8 == *(v3 + 24))
  {
    goto LABEL_43;
  }

  return sub_1D72646CC();
}

uint64_t FormatContentSubgroupFilter.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D69CFD84(0, &qword_1EDF19BE8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v37 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69CFBE0();
  sub_1D7264B0C();
  if (!v2)
  {
    v39 = 0;
    sub_1D69CFC34();
    sub_1D726431C();
    if (v37 > 4u)
    {
      if (v37 <= 6u)
      {
        if (v37 != 5)
        {
          v39 = 1;
          sub_1D5F352C0();
          sub_1D726431C();
          (*(v7 + 8))(v10, v6);
          v35 = v37;
          v36 = swift_allocObject();
          *(v36 + 16) = v35;
          *a2 = v36 | 0x6000000000000000;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        (*(v7 + 8))(v10, v6);
        v20 = swift_allocEmptyBox();
        v21 = 0x5000000000000000;
      }

      else
      {
        if (v37 == 7)
        {
          v39 = 1;
          sub_1D5F353FC();
          sub_1D726431C();
          (*(v7 + 8))(v10, v6);
          v25 = v37;
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          *a2 = v26 | 0x7000000000000000;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        if (v37 == 8)
        {
          v39 = 1;
          sub_1D5F3558C();
          sub_1D726431C();
          (*(v7 + 8))(v10, v6);
          v15 = v37;
          v16 = swift_allocObject();
          *(v16 + 16) = v15;
          *a2 = v16 | 0x8000000000000000;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v39 = 1;
        sub_1D69CFC88();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v30 = v37;
        v31 = v38;
        v20 = swift_allocObject();
        *(v20 + 16) = v30;
        *(v20 + 24) = v31;
        v21 = 0x9000000000000000;
      }

      *a2 = v20 | v21;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v37 <= 1u)
    {
      v39 = 1;
      if (v37)
      {
        sub_1D69CFD30();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v32 = v37;
        v33 = v38;
        v34 = swift_allocObject();
        *(v34 + 16) = v32;
        *(v34 + 24) = v33;
        *a2 = v34 | 0x1000000000000000;
      }

      else
      {
        sub_1D60119E4();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v17 = v37;
        v18 = v38;
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        *(v19 + 24) = v18;
        *a2 = v19;
      }
    }

    else if (v37 == 2)
    {
      v39 = 1;
      sub_1D6720D10();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v22 = v37;
      v23 = v38;
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;
      *a2 = v24 | 0x2000000000000000;
    }

    else
    {
      v39 = 1;
      if (v37 == 3)
      {
        sub_1D69CFCDC();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v12 = v37;
        v13 = v38;
        v14 = swift_allocObject();
        *(v14 + 16) = v12;
        *(v14 + 24) = v13;
        *a2 = v14 | 0x3000000000000000;
      }

      else
      {
        sub_1D5F3F878();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v27 = v37;
        v28 = v38;
        v29 = swift_allocObject();
        *(v29 + 16) = v27;
        *(v29 + 24) = v28;
        *a2 = v29 | 0x4000000000000000;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatContentSubgroupFilter.encode(to:)(void *a1)
{
  sub_1D69CFD84(0, &unk_1EDF025C8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69CFBE0();
  sub_1D7264B5C();
  v11 = v10 >> 60;
  if ((v10 >> 60) <= 4)
  {
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v19 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        LOBYTE(v28) = 2;
        v30 = 0;
        sub_1D69CFDE8();

        sub_1D726443C();
        if (!v2)
        {
          v28 = v19;
          v29 = v18;
          v30 = 1;
          sub_1D6720D64();
          goto LABEL_32;
        }
      }

      else if (v11 == 3)
      {
        v13 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v12 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        LOBYTE(v28) = 3;
        v30 = 0;
        sub_1D69CFDE8();

        sub_1D726443C();
        if (!v2)
        {
          v28 = v13;
          v29 = v12;
          v30 = 1;
          sub_1D69CFE90();
LABEL_32:
          sub_1D726443C();
          goto LABEL_33;
        }
      }

      else
      {
        v22 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v21 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        LOBYTE(v28) = 4;
        v30 = 0;
        sub_1D69CFDE8();

        sub_1D726443C();
        if (!v2)
        {
          v28 = v22;
          v29 = v21;
          v30 = 1;
          sub_1D5F3F8CC();
          goto LABEL_32;
        }
      }

      goto LABEL_33;
    }

    if (!v11)
    {
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      LOBYTE(v28) = 0;
      v30 = 0;
      sub_1D69CFDE8();

      sub_1D726443C();
      if (!v2)
      {
        v28 = v17;
        v29 = v16;
        v30 = 1;
        sub_1D6011A38();
        goto LABEL_32;
      }

LABEL_33:
      (*(v6 + 8))(v9, v5);
    }

    v25 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v26 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    LOBYTE(v28) = 1;
    v30 = 0;
    sub_1D69CFDE8();
    sub_1D726443C();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v28 = v25;
    LOBYTE(v29) = v26;
    v30 = 1;
    sub_1D69CFEE4();
LABEL_28:
    sub_1D726443C();
    return (*(v6 + 8))(v9, v5);
  }

  if (v11 <= 6)
  {
    if (v11 != 5)
    {
      v27 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v28) = 6;
      v30 = 0;
      sub_1D69CFDE8();

      sub_1D726443C();
      if (!v2)
      {
        v28 = v27;
        v30 = 1;
        sub_1D5F35314();
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    LOBYTE(v28) = 5;
    v30 = 0;
    sub_1D69CFDE8();
    goto LABEL_28;
  }

  if (v11 == 7)
  {
    v20 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v28) = 7;
    v30 = 0;
    sub_1D69CFDE8();

    sub_1D726443C();
    if (!v2)
    {
      v28 = v20;
      v30 = 1;
      sub_1D5F35450();
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v11 != 8)
  {
    v24 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    LOBYTE(v28) = 9;
    v30 = 0;
    sub_1D69CFDE8();

    sub_1D726443C();
    if (!v2)
    {
      v28 = v24;
      v29 = v23;
      v30 = 1;
      sub_1D69CFE3C();
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v14 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  LOBYTE(v28) = 8;
  v30 = 0;
  sub_1D69CFDE8();

  sub_1D726443C();
  if (!v2)
  {
    v28 = v14;
    v30 = 1;
    sub_1D5F355E0();
    sub_1D726443C();
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D69CF6D4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 29295;
    v6 = 7630702;
    if (a1 != 8)
    {
      v6 = 0x726F7463656C6573;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65766F6D6572;
    if (a1 != 5)
    {
      v7 = 6581857;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1802398060;
    v2 = 1701015151;
    v3 = 0x6465646563657270;
    if (a1 != 3)
    {
      v3 = 0x636572507473616CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6D65726975716572;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D69CF7F8@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D69CF858@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D69CF8BC(uint64_t a1)
{
  v2 = sub_1D69CFBE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69CF8F8(uint64_t a1)
{
  v2 = sub_1D69CFBE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D69CF934(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D69CF6D4(*a1);
  v5 = v4;
  if (v3 == sub_1D69CF6D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D69CF9BC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D69CF6D4(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69CFA20()
{
  sub_1D69CF6D4(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D69CFA74()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D69CF6D4(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69CFAD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D69D01DC();
  *a1 = result;
  return result;
}

uint64_t sub_1D69CFB04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D69CF6D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D69CFBE0()
{
  result = qword_1EDF22730;
  if (!qword_1EDF22730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22730);
  }

  return result;
}

unint64_t sub_1D69CFC34()
{
  result = qword_1EDF22710;
  if (!qword_1EDF22710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22710);
  }

  return result;
}

unint64_t sub_1D69CFC88()
{
  result = qword_1EDF1D908;
  if (!qword_1EDF1D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D908);
  }

  return result;
}

unint64_t sub_1D69CFCDC()
{
  result = qword_1EC88F918;
  if (!qword_1EC88F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F918);
  }

  return result;
}

unint64_t sub_1D69CFD30()
{
  result = qword_1EDF06568;
  if (!qword_1EDF06568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06568);
  }

  return result;
}

void sub_1D69CFD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69CFBE0();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69CFDE8()
{
  result = qword_1EDF0B010;
  if (!qword_1EDF0B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B010);
  }

  return result;
}

unint64_t sub_1D69CFE3C()
{
  result = qword_1EDF07168;
  if (!qword_1EDF07168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07168);
  }

  return result;
}

unint64_t sub_1D69CFE90()
{
  result = qword_1EC88F920;
  if (!qword_1EC88F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F920);
  }

  return result;
}

unint64_t sub_1D69CFEE4()
{
  result = qword_1EDF06570;
  if (!qword_1EDF06570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06570);
  }

  return result;
}

unint64_t sub_1D69CFF38(void *a1)
{
  a1[1] = sub_1D5B59EA0();
  a1[2] = sub_1D5B59EF4();
  result = sub_1D69CFF70();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69CFF70()
{
  result = qword_1EC88F928;
  if (!qword_1EC88F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F928);
  }

  return result;
}

unint64_t sub_1D69D002C()
{
  result = qword_1EC88F930;
  if (!qword_1EC88F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F930);
  }

  return result;
}

unint64_t sub_1D69D0084()
{
  result = qword_1EC88F938;
  if (!qword_1EC88F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F938);
  }

  return result;
}

unint64_t sub_1D69D00DC()
{
  result = qword_1EDF22720;
  if (!qword_1EDF22720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22720);
  }

  return result;
}

unint64_t sub_1D69D0134()
{
  result = qword_1EDF22728;
  if (!qword_1EDF22728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22728);
  }

  return result;
}

unint64_t sub_1D69D0188()
{
  result = qword_1EDF22718;
  if (!qword_1EDF22718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22718);
  }

  return result;
}

uint64_t sub_1D69D01DC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D69D0228(uint64_t a1, uint64_t a2)
{
  sub_1D5E9D770();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69D028C(uint64_t a1)
{
  sub_1D5E9D770();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1D69D02E8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v11 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentFrameView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentSafeAreaFrameView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_systemSafeAreaFrameView;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v37.receiver = v4;
  v37.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_systemSafeAreaFrameView;
  v16 = *&v14[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_systemSafeAreaFrameView];
  v17 = v14;
  v18 = [v16 layer];
  [v18 setBorderWidth_];

  v19 = [*&v14[v15] layer];
  v20 = objc_opt_self();
  v21 = [v20 systemRedColor];
  v22 = [v21 CGColor];

  [v19 setBorderColor_];
  [v17 addSubview_];
  v23 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentSafeAreaFrameView;
  v24 = [*&v17[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentSafeAreaFrameView] layer];
  [v24 setBorderWidth_];

  v25 = [*&v17[v23] layer];
  v26 = [v20 systemBlueColor];
  v27 = [v26 CGColor];

  [v25 setBorderColor_];
  [v17 addSubview_];
  v28 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentFrameView;
  v29 = [*&v17[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentFrameView] layer];
  [v29 setBorderWidth_];

  v30 = [*&v17[v28] layer];
  v31 = [v20 systemYellowColor];
  v32 = [v31 CGColor];

  [v30 setBorderColor_];
  v33 = *&v17[v28];
  v34 = [v20 systemYellowColor];
  v35 = [v34 colorWithAlphaComponent_];

  [v33 setBackgroundColor_];
  [v17 addSubview_];

  return v17;
}

id sub_1D69D0730()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_systemSafeAreaFrameView];
  v2 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide;
  [*&v0[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide] systemSafeAreaFrame];
  [v1 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentSafeAreaFrameView];
  [*&v0[v2] contentSafeAreaFrame];
  [v3 setFrame_];
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentFrameView];
  [*&v0[v2] contentFrame];
  return [v4 setFrame_];
}

void sub_1D69D08D4()
{
  v1 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v2 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentFrameView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_contentSafeAreaFrameView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_systemSafeAreaFrameView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

void *sub_1D69D0A24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66EE520(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1D69D0A6C(void *a1)
{
  a1[1] = sub_1D6658A88();
  a1[2] = sub_1D6658E64();
  result = sub_1D69D0AA4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69D0AA4()
{
  result = qword_1EC88F960;
  if (!qword_1EC88F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F960);
  }

  return result;
}

unint64_t sub_1D69D0AF8(uint64_t a1)
{
  result = sub_1D69D0B20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69D0B20()
{
  result = qword_1EC88F968;
  if (!qword_1EC88F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F968);
  }

  return result;
}

void sub_1D69D0B74(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC8NewsFeed15FormatStateView_state);
    v7 = *(Strong + OBJC_IVAR____TtC8NewsFeed15FormatStateView_state + 8);
    if (!v7 || (*v6 == v3 ? (v8 = v7 == v2) : (v8 = 0), !v8 && (sub_1D72646CC() & 1) == 0))
    {
      *v6 = v3;
      v6[1] = v2;

      sub_1D6DE7B38();
    }
  }
}

uint64_t sub_1D69D0C30(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  sub_1D725AB5C();
  if (v1 == v6 && v2 == v7)
  {
  }

  v4 = sub_1D72646CC();

  if ((v4 & 1) == 0)
  {
    return sub_1D725AB1C();
  }

  return result;
}

uint64_t sub_1D69D0E34(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = *(a2 + 16);
  v9 = *(v8 + 56);
  v10 = &a3[OBJC_IVAR____TtC8NewsFeed15FormatStateView_identifier];
  *v10 = *(v8 + 48);
  *(v10 + 1) = v9;

  swift_beginAccess();
  sub_1D726344C();
  swift_beginAccess();
  [a3 setUserInteractionEnabled_];
  v11 = v7[9];
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  if (v11 < 0)
  {
    v14 = v11 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    sub_1D6CC591C(*(v4 + 16), *(v4 + 24), &v22);
    v22 = v24;
    v23 = v25;
    sub_1D69D10F8();
    swift_allocObject();

    v14 = sub_1D725AB4C();
  }

  sub_1D725AB5C();
  v15 = v23;
  v16 = &a3[OBJC_IVAR____TtC8NewsFeed15FormatStateView_state];
  *v16 = v22;
  *(v16 + 1) = v15;

  sub_1D6DE7B38();
  sub_1D725AB6C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FormatLayoutViewToken();
  sub_1D725B35C();

  v17 = v7[10];
  v18 = v7[11];
  v20[0] = v7[9];
  v20[1] = v17;
  v20[2] = v18;
  sub_1D60720B0(v20[0]);

  sub_1D607184C(v12, v13, sub_1D69D10F0, v14, &v22);

  sub_1D5E32990(v20[0]);
  sub_1D69B8790(&v22, v20);
  if (v21)
  {
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_1D725A72C();

    sub_1D6148074(&v22);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_1D6148074(&v22);

    return sub_1D6148074(v20);
  }
}

void sub_1D69D10F8()
{
  if (!qword_1EDF3BB60)
  {
    sub_1D69D115C();
    v0 = sub_1D725AB7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BB60);
    }
  }
}

unint64_t sub_1D69D115C()
{
  result = qword_1EDF27030;
  if (!qword_1EDF27030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27030);
  }

  return result;
}

uint64_t sub_1D69D11E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 192);
  sub_1D726348C();
  [a2 setUserInteractionEnabled_];
  if (v11)
  {
    [a2 setAccessibilityIgnoresInvertColors_];
    v12 = *(v11 + 72);
    v13 = *(v11 + 80);
    v14 = *(v11 + 88);
    sub_1D5ED34B0(v12, v13, v14);
  }

  else
  {
    [a2 setAccessibilityIgnoresInvertColors_];
    v12 = 0;
    v13 = 0;
    v14 = -2;
  }

  v15 = [a2 layer];
  [a2 bounds];
  v29 = v12;
  v30 = v13;
  v31 = v14;
  sub_1D6E549E4(v15, &v29, v16, v17, v18, v19);

  sub_1D5ED348C(v12, v13, v14);
  if (v11)
  {
    v21 = *(v11 + 64);
    v20 = *(v11 + 72);
    v22 = *(v11 + 80);
    v23 = *(v11 + 88);

    sub_1D5ED34B0(v20, v22, v23);
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v21 = 0;
    v23 = -2;
  }

  v24 = [a2 layer];
  v29 = v20;
  v30 = v22;
  v31 = v23;
  sub_1D6D111F4(v24, a4, v21, &v29, a5, a6);

  sub_1D5ED348C(v20, v22, v23);
  if (v11)
  {
  }

  else
  {
    v25 = 0;
  }

  v29 = v25;
  sub_1D613DC18(a2, &v29, v28);
}

double sub_1D69D1420@<D0>(char *a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v152 = a2;
  v143 = a3;
  v3 = *a1;
  v150 = a1;
  v151 = v3;
  v4 = sub_1D725ABCC();
  v144 = *(v4 - 8);
  v145 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v157 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B4D4(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v149 = &v143 - v9;
  sub_1D5BA1CF0(0, &qword_1EDF17430, &qword_1EDF17438, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v148 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v147 = &v143 - v15;
  sub_1D5BA1CF0(0, &qword_1EDF173F0, &qword_1EDF173F8, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v146 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v166 = &v143 - v21;
  sub_1D5BA1F84();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v154 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v165 = &v143 - v27;
  sub_1D5B7B4D4(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v170 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v156 = &v143 - v33;
  sub_1D5B7B4D4(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v143 - v40;
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69D62D0];
  sub_1D5BA1CF0(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v143 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v143 - v50;
  v169 = MEMORY[0x1E69D6200];
  sub_1D5BA0DFC(0, &qword_1EDF17448, v42, v43, MEMORY[0x1E69D6200]);
  v53 = v52;
  v160 = v52;
  v54 = *(v52 - 8);
  v55 = *(v54 + 56);
  v161 = v55;
  v162 = v54 + 56;
  v158 = v51;
  v55(v51, 1, 1, v52);
  v159 = v47;
  v55(v47, 1, 1, v53);
  v168 = MEMORY[0x1E69D6208];
  v56 = MEMORY[0x1E69D62D0];
  sub_1D5BA0DFC(0, &qword_1EDF173B0, v42, MEMORY[0x1E69D62D0], MEMORY[0x1E69D6208]);
  v164 = v57;
  swift_allocObject();
  sub_1D725C71C();
  v167 = MEMORY[0x1E69D6160];
  sub_1D5BA0DFC(0, &qword_1EDF17538, v42, v56, MEMORY[0x1E69D6160]);
  v163 = v58;
  swift_allocObject();
  v174 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v60 = v59;
  v61 = *(*(v59 - 8) + 56);
  v61(v41, 1, 1, v59);
  v61(v37, 1, 1, v60);
  sub_1D5BA2244(0, &qword_1EDF173E0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  swift_allocObject();
  v173 = sub_1D725C4BC();
  v61(v41, 1, 1, v60);
  v61(v37, 1, 1, v60);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v172 = sub_1D725C4BC();
  sub_1D5BA2088();
  v63 = v62;
  v64 = *(*(v62 - 8) + 56);
  v65 = v156;
  v64(v156, 1, 1, v62);
  v66 = v170;
  v64(v170, 1, 1, v63);
  sub_1D5B9E160(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374();
  swift_allocObject();
  v171 = sub_1D725C4BC();
  v64(v65, 1, 1, v63);
  v64(v66, 1, 1, v63);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v170 = sub_1D725C4BC();
  v67 = v160;
  v68 = v161;
  v161(v158, 1, 1, v160);
  v68(v159, 1, 1, v67);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v156 = sub_1D725C4BC();
  sub_1D5BA1EE0(0, &qword_1EDF17498, MEMORY[0x1E69D6200]);
  v70 = v69;
  v71 = *(*(v69 - 8) + 56);
  v71(v165, 1, 1, v69);
  v72 = v154;
  v71(v154, 1, 1, v70);
  sub_1D5BA1EE0(0, &qword_1EDF173D8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA1EE0(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v155 = sub_1D725C4BC();
  v71(v165, 1, 1, v70);
  v71(v72, 1, 1, v70);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v165 = sub_1D725C4BC();
  v73 = MEMORY[0x1E69E6530];
  v74 = MEMORY[0x1E69D62F8];
  sub_1D5BA0DFC(0, &qword_1EDF173F8, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8], v169);
  v76 = v75;
  v77 = *(*(v75 - 8) + 56);
  v77(v166, 1, 1, v75);
  v78 = v146;
  v77(v146, 1, 1, v76);
  sub_1D5BA0DFC(0, &qword_1EDF17388, v73, v74, v168);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA0DFC(0, &qword_1EDF17510, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8], v167);
  swift_allocObject();
  v154 = sub_1D725C4BC();
  v77(v166, 1, 1, v76);
  v77(v78, 1, 1, v76);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v166 = sub_1D725C4BC();
  v79 = MEMORY[0x1E69E6370];
  v80 = MEMORY[0x1E69D62E0];
  sub_1D5BA0DFC(0, &qword_1EDF17438, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], v169);
  v82 = v81;
  v83 = *(*(v81 - 8) + 56);
  v83(v147, 1, 1, v81);
  v83(v148, 1, 1, v82);
  sub_1D5BA0DFC(0, &qword_1EDF173A0, v79, v80, v168);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA0DFC(0, &qword_1EDF17528, v79, v80, v167);
  swift_allocObject();
  v169 = sub_1D725C4BC();
  v84 = v160;
  v85 = v161;
  v161(v158, 1, 1, v160);
  v85(v159, 1, 1, v84);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v168 = sub_1D725C4BC();
  sub_1D725C4CC();
  v86 = v150;
  v87 = *(v150 + 3);
  v182 = *(v150 + 2);
  v183 = v87;

  sub_1D725C74C();

  sub_1D725C4CC();
  v88 = qword_1EDFFCF58;
  v89 = sub_1D725891C();
  v90 = *(v89 - 8);
  v91 = *(v90 + 16);
  v92 = v149;
  v91(v149, &v86[v88], v89);
  v93 = *(v90 + 56);
  v93(v92, 0, 1, v89);
  sub_1D725C74C();

  sub_1D725C4CC();
  v91(v92, &v86[qword_1EDFFCF50], v89);
  v94 = v86;
  v93(v92, 0, 1, v89);
  sub_1D725C74C();

  sub_1D725C4CC();
  v95 = sub_1D5BE1A00();
  if (v95)
  {
    v96 = *(v95 + 16);
    v97 = *(v95 + 24);
  }

  else
  {
    v96 = 0;
    v97 = 1;
  }

  v182 = v96;
  v183 = v97;
  sub_1D725C74C();

  sub_1D725C4CC();
  v98 = *(*v86 + 272);
  swift_beginAccess();
  v99 = *&v86[v98];
  v100 = v156;
  v101 = v166;
  if (v99)
  {
    v102 = sub_1D6F790F0();
  }

  else
  {
    v102 = 0;
    v103 = 1;
  }

  v182 = v102;
  v183 = v103;
  sub_1D725C74C();

  sub_1D725C4CC();
  v104 = FeedCursor.rootCursor.getter();
  v106 = *(v104 + 16);
  v105 = *(v104 + 24);

  v182 = v106;
  v183 = v105;
  sub_1D725C74C();

  v107 = v154;
  sub_1D725C4CC();
  v182 = *(v94 + qword_1EDFFCEF8);
  LOBYTE(v183) = 0;
  sub_1D725C74C();

  sub_1D725C4CC();
  v182 = *(v94 + qword_1EDFFCF18);
  LOBYTE(v183) = 0;
  sub_1D725C74C();

  sub_1D725C4CC();
  LOBYTE(v182) = FeedCursor.reachedEnd.getter() & 1;
  sub_1D725C74C();

  sub_1D725C4CC();
  v108 = *(v94 + 32);
  v109 = *&aActive_4[8 * v108];
  v110 = *&aRepooledexpand[8 * v108 + 16];
  v182 = v109;
  v183 = v110;
  sub_1D725C74C();

  sub_1D725B06C();
  swift_allocObject();
  sub_1D72578DC();
  v111 = v153;
  sub_1D725B04C();
  if (v111)
  {

    v112 = v155;
    v113 = v173;
    v114 = v174;
    v115 = v171;
  }

  else
  {
    v167 = 0;
    v164 = sub_1D725C4CC();
    v182 = 0x2D617461642E63;
    v183 = 0xE700000000000000;
    v116 = v94[2];
    v117 = v94[3];

    MEMORY[0x1DA6F9910](v116, v117);

    v118 = v182;
    v119 = v183;
    v120 = v94;
    v121 = v94[2];
    v122 = v120[3];

    v123 = sub_1D725ABAC();
    v182 = sub_1D60F2034(v118, v119, v121, v122, v123, v124);
    v183 = v125;
    v184 = v126;
    sub_1D5BA1E78(0, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
    swift_allocObject();
    v182 = sub_1D725C56C();
    sub_1D725C74C();

    v164 = sub_1D725C4CC();
    v182 = 0x2D6C6F6F702E63;
    v183 = 0xE700000000000000;
    v127 = v120[2];
    v128 = v120[3];

    MEMORY[0x1DA6F9910](v127, v128);

    v129 = v183;
    v130 = v120[3];
    v162 = v120[2];
    v163 = v182;

    v194 = sub_1D725ABBC();
    sub_1D725B4FC();
    sub_1D5B9DF6C(&unk_1EDF17B58, MEMORY[0x1E69D6878]);
    v131 = v167;
    v132 = sub_1D72578BC();
    v167 = v131;
    if (!v131)
    {
      v135 = v132;
      v136 = v133;

      v182 = sub_1D60F2034(v163, v129, v162, v130, v135, v136);
      v183 = v137;
      v184 = v138;
      swift_allocObject();
      v182 = sub_1D725C56C();
      sub_1D725C74C();

      (*(v144 + 8))(v157, v145);
      *&v176 = v174;
      *(&v176 + 1) = v173;
      *&v177 = v172;
      *(&v177 + 1) = v171;
      *&v178 = v170;
      *(&v178 + 1) = v156;
      *&v179 = v155;
      *(&v179 + 1) = v165;
      *&v180 = v154;
      *(&v180 + 1) = v166;
      *&v181 = v169;
      *(&v181 + 1) = v168;
      v182 = v174;
      v183 = v173;
      v184 = v172;
      v185 = v171;
      v186 = v170;
      v187 = v156;
      v188 = v155;
      v189 = v165;
      v190 = v154;
      v191 = v166;
      v192 = v169;
      v193 = v168;
      sub_1D5BA739C(&v176, &v175);
      sub_1D5BA7608(&v182);
      v139 = v179;
      v140 = v143;
      v143[2] = v178;
      v140[3] = v139;
      v141 = v181;
      v140[4] = v180;
      v140[5] = v141;
      result = *&v176;
      v142 = v177;
      *v140 = v176;
      v140[1] = v142;
      return result;
    }

    (*(v144 + 8))(v157, v145);
    v113 = v173;
    v114 = v174;
    v115 = v171;
    v112 = v155;
    v100 = v156;
    v107 = v154;
    v101 = v166;
  }

  v182 = v114;
  v183 = v113;
  v184 = v172;
  v185 = v115;
  v186 = v170;
  v187 = v100;
  v188 = v112;
  v189 = v165;
  v190 = v107;
  v191 = v101;
  v192 = v169;
  v193 = v168;
  sub_1D5BA7608(&v182);
  return result;
}

uint64_t sub_1D69D2A98()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EDFFC6C8 = qword_1EC881F18;
  unk_1EDFFC6D0 = unk_1EC881F20;
}