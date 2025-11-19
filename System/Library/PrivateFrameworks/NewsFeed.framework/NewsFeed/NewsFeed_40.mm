uint64_t _s8NewsFeed0B3TagV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = [*(a1 + 16) identifier];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = [*(a2 + 16) identifier];
  v10 = sub_1D726207C();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_1D72646CC();

    if ((v14 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
LABEL_17:
    v19 = 0;
    return v19 & 1;
  }

  v15 = FeedTag.name.getter();
  v17 = v16;
  if (v15 == FeedTag.name.getter() && v17 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_1D72646CC();
  }

  return v19 & 1;
}

unint64_t sub_1D5EEF780(uint64_t a1)
{
  result = sub_1D5EEF7A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EEF7A8()
{
  result = qword_1EC880A90;
  if (!qword_1EC880A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880A90);
  }

  return result;
}

unint64_t sub_1D5EEF800()
{
  result = qword_1EC880A98;
  if (!qword_1EC880A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880A98);
  }

  return result;
}

unint64_t sub_1D5EEF858()
{
  result = qword_1EC880AA0;
  if (!qword_1EC880AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880AA0);
  }

  return result;
}

unint64_t sub_1D5EEF8B0()
{
  result = qword_1EDF13068[0];
  if (!qword_1EDF13068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF13068);
  }

  return result;
}

unint64_t sub_1D5EEF908()
{
  result = qword_1EDF13060;
  if (!qword_1EDF13060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13060);
  }

  return result;
}

unint64_t sub_1D5EEF95C(uint64_t a1)
{
  result = sub_1D5EEF984();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5EEF984()
{
  result = qword_1EDF34F80;
  if (!qword_1EDF34F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34F80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B3TagV9OverridesV5ImageVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B3TagV9OverridesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D5EEFA48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_1D5EEFA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5EEFAF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D5EEFB54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D5EEFBE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5EEFC30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5EEFCA0(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1D5FEA2A4(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1D5EEFD2C(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1D5FEF7A4(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

void *sub_1D5EEFD88(uint64_t a1, uint64_t a2)
{
  sub_1D5EA74B8();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5EED200(a2, &v53, &unk_1EDF34F60, &type metadata for FeedTag);
  if (*(&v53 + 1))
  {
    v69 = v59;
    v70 = v60;
    v71 = v61;
    v72 = v62;
    v65 = v55;
    v66 = v56;
    v67 = v57;
    v68 = v58;
    v63 = v53;
    v64 = v54;
    v8 = *(a1 + 112);
    v59 = *(a1 + 96);
    v60 = v8;
    v61 = *(a1 + 128);
    v62 = *(a1 + 144);
    v9 = *(a1 + 48);
    v55 = *(a1 + 32);
    v56 = v9;
    v10 = *(a1 + 80);
    v57 = *(a1 + 64);
    v58 = v10;
    v11 = *(a1 + 16);
    v53 = *a1;
    v54 = v11;
    v47 = v64;
    sub_1D5EF032C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(&v74 + 1) = &type metadata for FeedTag;
    v75 = sub_1D5EE5BA8();
    *&v73 = swift_allocObject();
    sub_1D5EE5AF8(&v63, v73 + 16);
    sub_1D713A66C(&v73, v52);
    __swift_destroy_boxed_opaque_existential_1(&v73);
    v12 = v52[0];
    v52[0] = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, 0, 0);
    v13 = v52[0];
    if (v12)
    {
      while (1)
      {
        v14 = v12 & -v12;
        *&v73 = 91;
        *(&v73 + 1) = 0xE100000000000000;
        v51 = v14;
        v50 = sub_1D713AFE4();
        sub_1D5EF039C(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v15 = sub_1D7261F3C();
        v17 = v16;

        MEMORY[0x1DA6F9910](v15, v17);

        MEMORY[0x1DA6F9910](93, 0xE100000000000000);
        v18 = sub_1D5FD24A4(1uLL, v73, *(&v73 + 1));
        v20 = v19;

        result = sub_1D726398C();
        if (__OFSUB__(result, 1))
        {
          break;
        }

        result = sub_1D726396C();
        if (v22)
        {
          v23 = v20;
        }

        else
        {
          v23 = result;
        }

        if (v23 >> 14 < v18 >> 14)
        {
          goto LABEL_15;
        }

        v24 = sub_1D72639BC();
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v31 = MEMORY[0x1DA6F97E0](v24, v26, v28, v30);
        v33 = v32;

        v34 = type metadata accessor for FormatInspectionItem(0);
        v35 = (v7 + *(v34 + 24));
        *v35 = 0;
        v35[1] = 0xE000000000000000;
        v36 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
        *v7 = v31;
        v7[1] = v33;
        v7[2] = 0;
        v7[3] = 0;
        v37 = v7 + *(v34 + 28);
        *v37 = 0;
        *(v37 + 1) = 0;
        v37[16] = -1;
        (*(*(v34 - 8) + 56))(v7, 0, 1, v34);
        v52[0] = v13;
        v39 = *(v13 + 16);
        v38 = *(v13 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D69972A4(v38 > 1, v39 + 1, 1);
          v13 = v52[0];
        }

        *(v13 + 16) = v39 + 1;
        sub_1D5E4F52C(v7, v13 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39);
        v40 = v14 == v12;
        v12 ^= v14;
        if (v40)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_12:
      sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v13, &v73);

      v41 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v41 + 64) = &off_1F518B2C0;
      v42 = swift_allocObject();
      *(v41 + 32) = v42;
      *(v42 + 48) = v75;
      v43 = v74;
      *(v42 + 16) = v73;
      *(v42 + 32) = v43;
      v44 = v47;
      swift_getObjectType();
      v45 = sub_1D6A5AE4C(&v53, v44);
      swift_setDeallocating();
      sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0);
      swift_arrayDestroy();
      sub_1D5EE5B54(&v63);
      return v45;
    }
  }

  else
  {
    sub_1D5EED48C(&v53, &unk_1EDF34F60, &type metadata for FeedTag);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void sub_1D5EF032C()
{
  if (!qword_1EC880AC0)
  {
    sub_1D5BFB8A8(255, &unk_1EC880480, &qword_1EC880AD0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880AC0);
    }
  }
}

void sub_1D5EF039C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5EF03EC()
{
  sub_1D5EF0664(v0 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace);
  v1 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace__isExpanded;
  sub_1D5EF05B8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatWorkspaceTreeWorkspace()
{
  result = qword_1EC880AE0;
  if (!qword_1EC880AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5EF04EC()
{
  type metadata accessor for DebugFormatWorkspace();
  if (v0 <= 0x3F)
  {
    sub_1D5EF05B8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D5EF05B8()
{
  if (!qword_1EC880AF0)
  {
    v0 = sub_1D72600EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880AF0);
    }
  }
}

uint64_t sub_1D5EF0614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D726008C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5EF0664(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspace();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5EF06C0@<X0>(uint64_t a1@<X4>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D725CE8C();
  BlueprintItem<>.feedItem.getter(v8, a1);
  FeedItem.identifier.getter();
  sub_1D5BCA74C(v7, type metadata accessor for FeedItem);
  v9 = sub_1D726230C();

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (v9)
  {
    BlueprintItem<>.feedItem.getter(v8, a1);
    v11 = FeedItem.identifier.getter();
    v12 = v15;
    result = sub_1D5BCA74C(v7, type metadata accessor for FeedItem);
    v14 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CD0];
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

uint64_t sub_1D5EF0848(uint64_t a1, _OWORD *a2)
{
  v4 = type metadata accessor for FormatContent.Resolved();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5CEB7B8(a1, v8, type metadata accessor for FormatContent.Resolved);
  type metadata accessor for FeedGroupDebugFormat();
  v9 = swift_allocObject();
  v10 = a2[3];
  *(v9 + 48) = a2[2];
  *(v9 + 64) = v10;
  *(v9 + 80) = a2[4];
  v11 = a2[1];
  *(v9 + 16) = *a2;
  *(v9 + 32) = v11;
  *(v9 + 96) = *&v8[*(v5 + 40)];
  sub_1D5CED910(v8, v9 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content, type metadata accessor for FormatContent.Resolved);
  sub_1D5CB7180(a2, v13);

  return v9;
}

uint64_t sub_1D5EF0964@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v25 = a2;
  v26 = a4;
  v27 = a1;
  v28 = a3;
  v29 = a5;
  sub_1D725CE8C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_1D725B15C();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D7263D7C();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v22 - v9;
  sub_1D5D56DE0(255, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720]);
  v22[1] = sub_1D7263F7C();
  swift_getWitnessTable();
  sub_1D72640BC();
  swift_getWitnessTable();
  v11 = sub_1D7263F7C();
  v23 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v22 - v14;
  MEMORY[0x1DA6F9AF0](v5, WitnessTable, v13);
  v16 = swift_allocObject();
  v17 = v28;
  v16[2] = v25;
  v16[3] = v17;
  v18 = v27;
  v16[4] = v26;
  v16[5] = v18;
  v19 = v18;
  swift_getWitnessTable();
  sub_1D726418C();

  (*(v24 + 8))(v10, v7);
  v32 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D7262C9C();
  (*(v23 + 8))(v15, v11);
  *(v34 + 9) = *(v36 + 9);
  v34[0] = v36[0];
  v33[2] = v35[2];
  v33[3] = v35[3];
  v33[5] = v35[5];
  v33[6] = v35[6];
  v33[4] = v35[4];
  v33[0] = v35[0];
  v33[1] = v35[1];
  *(v36 + 9) = *(v34 + 9);
  result = get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v35);
  if (result == 1)
  {
    v21 = 0;
  }

  else
  {
    result = sub_1D5EF1C70(v33);
    v21 = BYTE8(v36[1]);
  }

  *v29 = v21;
  return result;
}

__n128 sub_1D5EF0DD0@<Q0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725CE8C();
  BlueprintItem<>.feedItem.getter(v10, a2);
  FeedItem.feedIssue.getter(&v24);
  sub_1D5BCA74C(v9, type metadata accessor for FeedItem);
  v32[6] = v30;
  v33[0] = v31[0];
  *(v33 + 9) = *(v31 + 9);
  v32[2] = v26;
  v32[3] = v27;
  v32[4] = v28;
  v32[5] = v29;
  v32[0] = v24;
  v32[1] = v25;
  v40 = v30;
  v41[0] = v31[0];
  *(v41 + 9) = *(v31 + 9);
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v34 = v24;
  v35 = v25;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v34) == 1)
  {
    goto LABEL_2;
  }

  v11 = [v34 identifier];
  v12 = sub_1D726207C();
  v14 = v13;

  v15 = [a1 identifier];
  v16 = sub_1D726207C();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {

LABEL_7:
    v30 = v40;
    v31[0] = v41[0];
    *(v31 + 9) = *(v41 + 9);
    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v24 = v34;
    v25 = v35;
    nullsub_1(&v24);
    goto LABEL_8;
  }

  v19 = sub_1D72646CC();

  if (v19)
  {
    goto LABEL_7;
  }

  sub_1D5EF1C70(v32);
LABEL_2:
  sub_1D5D62850(&v24);
LABEL_8:
  v20 = v31[0];
  *(a3 + 96) = v30;
  *(a3 + 112) = v20;
  *(a3 + 121) = *(v31 + 9);
  v21 = v27;
  *(a3 + 32) = v26;
  *(a3 + 48) = v21;
  v22 = v29;
  *(a3 + 64) = v28;
  *(a3 + 80) = v22;
  result = v25;
  *a3 = v24;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1D5EF103C@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v35 = a3;
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedHeadline(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1D725CE8C();
  BlueprintItem<>.feedItem.getter(v18, a2);
  FeedItem.feedHeadline.getter(v8);
  sub_1D5BCA74C(v12, type metadata accessor for FeedItem);
  if ((*(v14 + 48))(v8, 1, v13) != 1)
  {
    sub_1D5CED910(v8, v17, type metadata accessor for FeedHeadline);
    v23 = [v17[5] identifier];
    v24 = sub_1D726207C();
    v26 = v25;

    v27 = [a1 identifier];
    v28 = sub_1D726207C();
    v30 = v29;

    if (v24 == v28 && v26 == v30)
    {
    }

    else
    {
      v32 = sub_1D72646CC();

      if ((v32 & 1) == 0)
      {
        v19 = type metadata accessor for FeedHeadline;
        v20 = v17;
        goto LABEL_3;
      }
    }

    v22 = v35;
    sub_1D5CED910(v17, v35, type metadata accessor for FeedHeadline);
    v21 = 0;
    return (*(v14 + 56))(v22, v21, 1, v13);
  }

  v19 = sub_1D5B69BE0;
  v20 = v8;
LABEL_3:
  sub_1D5BCA74C(v20, v19);
  v21 = 1;
  v22 = v35;
  return (*(v14 + 56))(v22, v21, 1, v13);
}

uint64_t sub_1D5EF1350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for FeedHeadline(0);
  v46 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatWebEmbed.Resolved();
  sub_1D5CEB7B8(a1 + *(v19 + 36), v18, sub_1D5B5D160);
  sub_1D5B5D194();
  v21 = v20;
  v22 = *(v20 - 8);
  if ((*(v22 + 48))(v18, 1, v20) == 1)
  {
    sub_1D5BCA74C(v18, sub_1D5B5D160);
    v23 = 1;
    v24 = v47;
  }

  else
  {
    sub_1D725BF7C();
    v25 = v48;
    (*(v22 + 8))(v18, v21);
    v26 = sub_1D726045C();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
    v27 = v7[6];
    v28 = type metadata accessor for SharedItem();
    (*(*(v28 - 8) + 56))(&v10[v27], 1, 1, v28);
    *v10 = 258;
    v45 = v7[7];
    v10[v45] = 1;
    v29 = v7[8];
    v10[v29] = 0;
    v44[0] = v7[9];
    v10[v44[0]] = 0;
    v30 = v7[10];
    v10[v30] = 0;
    *&v6[v3[12]] = xmmword_1D727C330;
    v44[1] = swift_getObjectType();
    v31 = [v25 identifier];
    v32 = sub_1D726207C();
    v34 = v33;

    *v6 = v32;
    *(v6 + 1) = v34;
    *(v6 + 5) = v25;
    *(v6 + 6) = 0;
    sub_1D5CEB7B8(v14, &v6[v3[11]], sub_1D5D504A0);
    sub_1D5CEB7B8(v10, &v6[v3[10]], type metadata accessor for FeedHeadline.State);
    *&v6[v3[14]] = 0;
    v6[56] = 0;
    v35 = [swift_unknownObjectRetain() title];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 ne_isNaturallyRTL];

      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    *(v6 + 2) = v38;
    v6[24] = 0;
    sub_1D5BC7BD4(&v48);
    swift_unknownObjectRelease();
    if (v10[v29] - 1 <= 1 && (v48 & 0x1000) == 0)
    {
      v48 |= 0x1000uLL;
    }

    v39 = v10[v30];
    v24 = v47;
    v40 = 0x80000000;
    if (!v10[v30])
    {
      v40 = 0x100000000;
    }

    if ((v48 & v40) != 0)
    {
      v40 = 0;
    }

    *(v6 + 4) = v48 | v40;
    if (v10[v45])
    {
      if (v10[v44[0]])
      {
        sub_1D5BCA74C(v10, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v14, sub_1D5D504A0);
        v41 = 1;
      }

      else if (v39)
      {
        v43 = [v25 sourceChannel];
        sub_1D5BCA74C(v10, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v14, sub_1D5D504A0);
        v41 = 2;
        if (v43)
        {
          v41 = v43;
        }
      }

      else
      {
        sub_1D5BCA74C(v10, type metadata accessor for FeedHeadline.State);
        sub_1D5BCA74C(v14, sub_1D5D504A0);
        v41 = 2;
      }
    }

    else
    {
      sub_1D5BCA74C(v10, type metadata accessor for FeedHeadline.State);
      sub_1D5BCA74C(v14, sub_1D5D504A0);
      v41 = 0;
    }

    *&v6[v3[13]] = v41;
    sub_1D5CED910(v6, v24, type metadata accessor for FeedHeadline);
    v23 = 0;
  }

  return (*(v46 + 56))(v24, v23, 1, v3);
}

uint64_t sub_1D5EF1950@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v35 = a3;
  sub_1D5D5046C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedRecipe();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1D725CE8C();
  BlueprintItem<>.feedItem.getter(v18, a2);
  FeedItem.feedRecipe.getter(v8);
  sub_1D5BCA74C(v12, type metadata accessor for FeedItem);
  if ((*(v14 + 48))(v8, 1, v13) != 1)
  {
    sub_1D5CED910(v8, v17, type metadata accessor for FeedRecipe);
    v23 = [v17[7] identifier];
    v24 = sub_1D726207C();
    v26 = v25;

    v27 = [a1 identifier];
    v28 = sub_1D726207C();
    v30 = v29;

    if (v24 == v28 && v26 == v30)
    {
    }

    else
    {
      v32 = sub_1D72646CC();

      if ((v32 & 1) == 0)
      {
        v19 = type metadata accessor for FeedRecipe;
        v20 = v17;
        goto LABEL_3;
      }
    }

    v22 = v35;
    sub_1D5CED910(v17, v35, type metadata accessor for FeedRecipe);
    v21 = 0;
    return (*(v14 + 56))(v22, v21, 1, v13);
  }

  v19 = sub_1D5D5046C;
  v20 = v8;
LABEL_3:
  sub_1D5BCA74C(v20, v19);
  v21 = 1;
  v22 = v35;
  return (*(v14 + 56))(v22, v21, 1, v13);
}

uint64_t sub_1D5EF1C70(uint64_t a1)
{
  sub_1D5D56DE0(0, &qword_1EDF34E30, &type metadata for FeedIssue, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5EF1D08()
{
  v1 = *(type metadata accessor for FormatContent.Resolved() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D5EF0848(v0 + v2, v3);
}

uint64_t sub_1D5EF1D94(uint64_t a1, uint64_t a2)
{
  sub_1D5B49898(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EF1E4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5EF1EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D5EF1EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1D5EF2238(void *a1)
{
  if ((sub_1D7261A3C() & 1) == 0)
  {
    v2 = [a1 topViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 navigationItem];

      v5 = sub_1D726203C();
      v6 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithTitle:v5 style:0 target:0 action:0];

      [v4 setBackBarButtonItem_];
    }
  }
}

uint64_t FeedServiceConfigExpansion.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t FeedServiceConfigType.appVersion.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF3CA98 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725BD1C();
  v3 = __swift_project_value_buffer(v2, qword_1EDF3CAA0);
  v6 = *(v2 - 8);
  (*(v6 + 16))(a1, v3, v2);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v2);
}

uint64_t FeedServiceConfigType.cacheKey.getter(uint64_t a1, uint64_t a2)
{
  sub_1D5B5B2A0();
  v21[1] = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = v21 - v11;
  v13 = swift_checkMetadataState();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = v21 - v17;
  (*(a2 + 64))(a1, a2, v16);
  (*(AssociatedConformanceWitness + 40))(v13, AssociatedConformanceWitness);
  (*(v14 + 8))(v18, v13);
  v19 = swift_getAssociatedConformanceWitness();
  (*(v19 + 40))(AssociatedTypeWitness, v19);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return sub_1D72620FC();
}

uint64_t FeedServiceConfigType.groups.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = &v19 - v8;
  v10 = swift_checkMetadataState();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v19 - v14;
  (*(a2 + 64))(a1, a2, v13);
  (*(AssociatedConformanceWitness + 40))(v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v15, v10);
  v16 = swift_getAssociatedConformanceWitness();
  v17 = (*(v16 + 48))(AssociatedTypeWitness, v16);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return v17;
}

uint64_t FeedServiceConfigType.replacing(groups:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a1;
  v47 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v44 = AssociatedTypeWitness;
  v45 = v8;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v39 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v43 = v37 - v13;
  v14 = swift_checkMetadataState();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v37 - v21;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = v37 - v26;
  v28 = *(a3 + 64);
  v41 = a2;
  v42 = v4;
  v38 = a3;
  v28(a2, a3, v25);
  (v28)(a2, a3);
  v30 = v39;
  v29 = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 40))(v14, AssociatedConformanceWitness);
  v31 = *(v15 + 8);
  v37[1] = v15 + 8;
  v31(v18, v14);
  v32 = v44;
  v33 = swift_getAssociatedConformanceWitness();
  v34 = v43;
  (*(v33 + 72))(v46, v32, v33);
  v35 = *(v45 + 8);
  v35(v30, v32);
  (*(v29 + 56))(v34, v14, v29);
  v35(v34, v32);
  v31(v22, v14);
  (*(v38 + 136))(v27, v41);
  return (v31)(v27, v14);
}

uint64_t _s8NewsFeed0B17ServiceConfigTypePAAE45excludedGroupKindsForIgnoredTagIdentificationShy0B4Pool_0bG04KindQZGvg_0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_1D7261D1C();
}

unint64_t sub_1D5EF2F3C()
{
  result = qword_1EC880B60;
  if (!qword_1EC880B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880B60);
  }

  return result;
}

uint64_t sub_1D5EF30F8(uint64_t a1)
{
  sub_1D5BDD37C(0, &qword_1EDF34B00, type metadata accessor for FeedBannerAd, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5EF31B8()
{
  if (!qword_1EDF37128[0])
  {
    type metadata accessor for FeedBannerAdViewLayout.Context(255);
    sub_1D7260C5C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF37128);
    }
  }
}

uint64_t sub_1D5EF3228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D5EF329C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v41 = a3;
  v46 = a1;
  v38 = type metadata accessor for FormatCompilerOptions(0);
  v5 = MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
LABEL_46:
    v7 = sub_1D7263BFC();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v43 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__inventoryShowDeprecatedPackages;
      v45 = a2 & 0xC000000000000001;
      v44 = a2 & 0xFFFFFFFFFFFFFF8;
      v42 = a2 + 32;
      v47 = (v41 + 32);
      v52 = "isolatedThunderstormsNight";
      v48 = "ignoreUnusedProperty";
      v40 = a2;
      v39 = v7;
      while (1)
      {
        if (v45)
        {
          v53 = MEMORY[0x1DA6FB460](v8, a2, v5);
          v9 = __OFADD__(v8, 1);
          v10 = v8 + 1;
          if (v9)
          {
LABEL_42:
            __break(1u);
            return v58;
          }
        }

        else
        {
          if (v8 >= *(v44 + 16))
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          v53 = *(v42 + 8 * v8);

          v9 = __OFADD__(v8, 1);
          v10 = v8 + 1;
          if (v9)
          {
            goto LABEL_42;
          }
        }

        v51 = v10;

        sub_1D725972C();

        if ((v56 & 1) == 0)
        {
          v11 = v37;
          sub_1D5EF3B18(*(v53 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v37);
          v12 = *(v11 + *(v38 + 32));

          sub_1D5EF3B7C(v11);
          if (*(v12 + 16))
          {
            sub_1D7264A0C();
            sub_1D72621EC();
            v13 = sub_1D7264A5C();
            v14 = -1 << *(v12 + 32);
            v15 = v13 & ~v14;
            if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
            {
              v16 = ~v14;
              do
              {
                if (*(*(v12 + 48) + v15) && *(*(v12 + 48) + v15) != 1)
                {

                  goto LABEL_6;
                }

                v17 = sub_1D72646CC();

                if (v17)
                {

                  goto LABEL_6;
                }

                v15 = (v15 + 1) & v16;
              }

              while (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
            }
          }
        }

        v49 = *(v41 + 16);
        if (!v49)
        {
          goto LABEL_5;
        }

        v18 = *v47;
        v19 = *(*v47 + 16);
        if (!v19)
        {
          goto LABEL_5;
        }

        v20 = 1;
        while (2)
        {
          v50 = v20;

          v21 = 0;
          v22 = (v18 + 40);
          a2 = v19 - 1;
          v23 = 1;
          while (1)
          {
            if (v23)
            {
              v25 = *(v22 - 1);
              v24 = *v22;
              v26 = *(v53 + 16);
              v27 = v26 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
              swift_beginAccess();
              if (*(v27 + 8))
              {
                v56 = sub_1D726210C();
                v57 = v28;
                v54 = v25;
                v55 = v24;
                sub_1D5BF4D9C();

                v29 = sub_1D7263ABC();

                if (v29)
                {

LABEL_29:
                  if (a2 == v21)
                  {

                    a2 = v40;
                    v7 = v39;
                    goto LABEL_5;
                  }

                  v23 = 1;
                  goto LABEL_23;
                }

                v31 = *(v53 + 16);
                v33 = *(v31 + 16);
                v32 = *(v31 + 24);
                v56 = v33;
                v57 = v32;
                v54 = v25;
                v55 = v24;
                v34 = sub_1D7263ABC();

                if (v34)
                {
                  goto LABEL_29;
                }
              }

              else
              {
                v30 = *(v26 + 24);
                v56 = *(v26 + 16);
                v57 = v30;
                v54 = v25;
                v55 = v24;
                sub_1D5BF4D9C();
                if (sub_1D7263ABC())
                {
                  goto LABEL_29;
                }
              }
            }

            if (a2 == v21)
            {
              break;
            }

            v23 = 0;
LABEL_23:
            ++v21;
            v22 += 2;
            if (v21 >= *(v18 + 16))
            {
              __break(1u);
              goto LABEL_45;
            }
          }

          if (v50 == v49)
          {

            a2 = v40;
            v7 = v39;
            goto LABEL_6;
          }

          v18 = v47[v50];
          v20 = v50 + 1;
          v19 = *(v18 + 16);
          a2 = v40;
          v7 = v39;
          if (v19)
          {
            continue;
          }

          break;
        }

LABEL_5:
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
LABEL_6:
        v8 = v51;
        if (v51 == v7)
        {
          return v58;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D5EF384C()
{

  v1 = OBJC_IVAR____TtC8NewsFeed28DebugFormatInventoryTreeRole__debugPackages;
  sub_1D5EF3A98(0, &qword_1EC880B80, sub_1D5EF3A64, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatInventoryTreeRole()
{
  result = qword_1EC880B70;
  if (!qword_1EC880B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5EF3984()
{
  sub_1D5EF3A98(319, &qword_1EC880B80, sub_1D5EF3A64, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D5EF3A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5EF3B08@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1D5EF3B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCompilerOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EF3B7C(uint64_t a1)
{
  v2 = type metadata accessor for FormatCompilerOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NewsFeed::FeedGroupNativeAdInsertionLocation_optional __swiftcall FeedGroupNativeAdInsertionLocation.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedGroupNativeAdInsertionLocation.rawValue.getter()
{
  v1 = 0x676E696C69617274;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1D5EF3CCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696C69617274;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

unint64_t sub_1D5EF3DC4()
{
  result = qword_1EC880B88;
  if (!qword_1EC880B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880B88);
  }

  return result;
}

uint64_t sub_1D5EF3E18()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EF3EB4()
{
  sub_1D72621EC();
}

uint64_t sub_1D5EF3F3C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5EF3FE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696C69617274;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D5EF4124()
{
  result = qword_1EDF352A0;
  if (!qword_1EDF352A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF352A0);
  }

  return result;
}

id sub_1D5EF41B0(uint64_t a1, id a2)
{
  v2 = [a2 resolvedColorWithTraitCollection_];
  v3 = sub_1D726354C();
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = sub_1D726354C();
  if (!v5)
  {

LABEL_6:
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [objc_opt_self() ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

  if (v7)
  {
    return v7;
  }

LABEL_7:

  return a2;
}

id sub_1D5EF42B4(uint64_t a1, id a2)
{
  v2 = [a2 resolvedColorWithTraitCollection_];
  v3 = sub_1D726354C();
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = sub_1D726354C();
  if (!v5)
  {

LABEL_6:
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [objc_opt_self() ts:v4 dynamicColor:v5 withDarkStyleVariant:?];

  if (v7)
  {
    return v7;
  }

LABEL_7:

  return a2;
}

id sub_1D5EF43C8(uint64_t a1)
{
  v2 = FormatColor.color.getter(a1);
  v3 = [(objc_class *)v2 resolvedColorWithTraitCollection:a1];

  return v3;
}

void *sub_1D5EF4424(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 112);
  v131[6] = *(a1 + 96);
  v131[7] = v2;
  v131[8] = *(a1 + 128);
  v132 = *(a1 + 144);
  v3 = *(a1 + 48);
  v131[2] = *(a1 + 32);
  v131[3] = v3;
  v4 = *(a1 + 80);
  v131[4] = *(a1 + 64);
  v131[5] = v4;
  v5 = *(a1 + 16);
  v131[0] = *a1;
  v131[1] = v5;
  v6 = *a2;
  if ((~*a2 & 0xF000000000000007) == 0)
  {
    v7 = MEMORY[0x1E69E6F90];
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v7);
    sub_1D5EA74B8();
    v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    v12 = (v11 + v10);
    v13 = 1701736270;
    v14 = 0xE400000000000000;
LABEL_3:
    sub_1D711F844(1701869908, 0xE400000000000000, v13, v14, v12);
    v15 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v15 - 8) + 56))(v11 + v10, 0, 1, v15);
    sub_1D6795150(0x6F737365636F7250, 0xE900000000000072, 0, 0, v11, &v121);
    swift_setDeallocating();
    sub_1D5EF5F0C(v11 + v10, sub_1D5EA74B8);
LABEL_13:
    swift_deallocClassInstance();
    *(v8 + 56) = &type metadata for FormatInspectionGroup;
    *(v8 + 64) = &off_1F518B2C0;
    v51 = swift_allocObject();
    *(v8 + 32) = v51;
    v52 = v122;
    *(v51 + 16) = v121;
    *(v51 + 32) = v52;
    *(v51 + 48) = v123;
    v45 = sub_1D7073500(v8);
    swift_setDeallocating();
    sub_1D5EF5F0C(v8 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    return v45;
  }

  v16 = v6 >> 61;
  if ((v6 >> 61) > 2)
  {
    if (v16 == 3)
    {
      v54 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v55 = MEMORY[0x1E69E6F90];
      sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7273AE0;
      sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v55);
      sub_1D5EA74B8();
      v59 = *(*(v58 - 8) + 72);
      v60 = (*(*(v58 - 8) + 80) + 32) & ~*(*(v58 - 8) + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1D7270C10;

      sub_1D711F844(1701869908, 0xE400000000000000, 0x6563616C706552, 0xE700000000000000, (v61 + v60));
      v62 = type metadata accessor for FormatInspectionItem(0);
      v63 = *(*(v62 - 8) + 56);
      v63(v61 + v60, 0, 1, v62);
      v64 = *(a1 + 112);
      v127 = *(a1 + 96);
      v128 = v64;
      v129 = *(a1 + 128);
      v130 = *(a1 + 144);
      v65 = *(a1 + 48);
      v123 = *(a1 + 32);
      v124 = v65;
      v66 = *(a1 + 80);
      v125 = *(a1 + 64);
      v126 = v66;
      v67 = *(a1 + 16);
      v121 = *a1;
      v122 = v67;
      v120 = v54;

      v68 = sub_1D6E09E48(&v121, &v120);
      sub_1D5C84FF4(v120);
      sub_1D7120960(0x65756C6156, 0xE500000000000000, v68, (v61 + v60 + v59));
      v63(v61 + v60 + v59, 0, 1, v62);
      sub_1D6795150(0x6F737365636F7250, 0xE900000000000072, 0, 0, v61, &v121);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v57 + 56) = &type metadata for FormatInspectionGroup;
      *(v57 + 64) = &off_1F518B2C0;
      v69 = swift_allocObject();
      *(v57 + 32) = v69;
      v70 = v122;
      *(v69 + 16) = v121;
      *(v69 + 32) = v70;
      *(v69 + 48) = v123;
      v45 = sub_1D7073500(v57);
      swift_setDeallocating();
      sub_1D5EF5F0C(v57 + 32, sub_1D5E4F358);
      swift_deallocClassInstance();
    }

    else
    {
      if (v16 != 4)
      {
        if (v6 == 0xA000000000000000)
        {
          v105 = MEMORY[0x1E69E6F90];
          sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_1D7273AE0;
          sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v105);
          sub_1D5EA74B8();
          v10 = (*(*(v106 - 8) + 80) + 32) & ~*(*(v106 - 8) + 80);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1D7273AE0;
          v13 = 0x646574696D694CLL;
          v12 = (v11 + v10);
          v14 = 0xE700000000000000;
        }

        else
        {
          v97 = MEMORY[0x1E69E6F90];
          if (v6 == 0xA000000000000008)
          {
            sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
            v8 = swift_allocObject();
            *(v8 + 16) = xmmword_1D7273AE0;
            sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v97);
            sub_1D5EA74B8();
            v10 = (*(*(v98 - 8) + 80) + 32) & ~*(*(v98 - 8) + 80);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_1D7273AE0;
            v13 = 0x694C206172747845;
            v14 = 0xED0000646574696DLL;
            v12 = (v11 + v10);
          }

          else
          {
            sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
            v8 = swift_allocObject();
            *(v8 + 16) = xmmword_1D7273AE0;
            sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v97);
            sub_1D5EA74B8();
            v10 = (*(*(v107 - 8) + 80) + 32) & ~*(*(v107 - 8) + 80);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_1D7273AE0;
            v12 = (v11 + v10);
            v14 = 0x80000001D73C1A80;
            v13 = 0xD000000000000012;
          }
        }

        goto LABEL_3;
      }

      v27 = v6 & 0x1FFFFFFFFFFFFFFFLL;
      v113 = *(v27 + 16);
      v118 = *(v27 + 24);
      v115 = *(v27 + 32);
      v28 = MEMORY[0x1E69E6F90];
      sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D7273AE0;
      sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v28);
      sub_1D5EA74B8();
      v32 = *(*(v31 - 8) + 72);
      v33 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D7279970;
      v35 = v34 + v33;

      sub_1D711F844(1701869908, 0xE400000000000000, 0x646E656C42, 0xE500000000000000, (v34 + v33));
      v36 = type metadata accessor for FormatInspectionItem(0);
      v37 = *(*(v36 - 8) + 56);
      v37(v35, 0, 1, v36);
      v38 = *(a1 + 112);
      v127 = *(a1 + 96);
      v128 = v38;
      v129 = *(a1 + 128);
      v130 = *(a1 + 144);
      v39 = *(a1 + 48);
      v123 = *(a1 + 32);
      v124 = v39;
      v40 = *(a1 + 80);
      v125 = *(a1 + 64);
      v126 = v40;
      v41 = *(a1 + 16);
      v121 = *a1;
      v122 = v41;
      v120 = v113;

      v42 = sub_1D6E09E48(&v121, &v120);
      sub_1D5C84FF4(v120);
      sub_1D7120960(0x726F6C6F43, 0xE500000000000000, v42, (v35 + v32));
      v37(v35 + v32, 0, 1, v36);
      sub_1D711A80C(0x6168706C41, 0xE500000000000000, v118, v115, (v35 + 2 * v32));
      v37(v35 + 2 * v32, 0, 1, v36);
      sub_1D6795150(0x6F737365636F7250, 0xE900000000000072, 0, 0, v34, &v121);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v30 + 56) = &type metadata for FormatInspectionGroup;
      *(v30 + 64) = &off_1F518B2C0;
      v43 = swift_allocObject();
      *(v30 + 32) = v43;
      v44 = v122;
      *(v43 + 16) = v121;
      *(v43 + 32) = v44;
      *(v43 + 48) = v123;
      v45 = sub_1D7073500(v30);
      swift_setDeallocating();
      sub_1D5EF5F0C(v30 + 32, sub_1D5E4F358);
      swift_deallocClassInstance();
    }

    return v45;
  }

  if (!v16)
  {
    v117 = *(v6 + 24);
    v18 = *(v6 + 16);
    v46 = MEMORY[0x1E69E6F90];
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v46);
    sub_1D5EA74B8();
    v21 = *(*(v47 - 8) + 72);
    v48 = (*(*(v47 - 8) + 80) + 32) & ~*(*(v47 - 8) + 80);
    v23 = 2 * v21;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7279970;
    v25 = (v24 + v48);
    v26 = 0x6E6769737341;
    goto LABEL_12;
  }

  v17 = v6 & 0x1FFFFFFFFFFFFFFFLL;
  if (v16 == 1)
  {
    v117 = *(v17 + 24);
    v18 = *(v17 + 16);
    v19 = MEMORY[0x1E69E6F90];
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v19);
    sub_1D5EA74B8();
    v21 = *(*(v20 - 8) + 72);
    v22 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
    v23 = 2 * v21;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7279970;
    v25 = (v24 + v22);
    v26 = 0x796669646F4DLL;
LABEL_12:
    sub_1D711F844(1701869908, 0xE400000000000000, v26, 0xE600000000000000, v25);
    v49 = type metadata accessor for FormatInspectionItem(0);
    v50 = *(*(v49 - 8) + 56);
    v50(v25, 0, 1, v49);
    sub_1D712066C(0x6E656E6F706D6F43, 0xE900000000000074, v18, v25 + v21);
    v50((v25 + v21), 0, 1, v49);
    sub_1D711A80C(0x65756C6156, 0xE500000000000000, v117, 0, (v25 + v23));
    v50((v25 + v23), 0, 1, v49);
    sub_1D6795150(0x6F737365636F7250, 0xE900000000000072, 0, 0, v24, &v121);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_13;
  }

  v72 = *(v17 + 16);
  v71 = *(v17 + 24);
  v73 = MEMORY[0x1E69E6F90];
  sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1D7273AE0;
  sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v73);
  sub_1D5EA74B8();
  v119 = *(*(v75 - 8) + 72);
  v76 = (*(*(v75 - 8) + 80) + 32) & ~*(*(v75 - 8) + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1D7279970;
  v78 = v77 + v76;
  v116 = v71;

  sub_1D711F844(1701869908, 0xE400000000000000, 0x6F697469646E6F43, 0xEB000000006C616ELL, (v77 + v76));
  v79 = type metadata accessor for FormatInspectionItem(0);
  v80 = *(*(v79 - 8) + 56);
  v80(v78, 0, 1, v79);
  v81 = (v72 >> 58) & 0x38;
  v110 = *(&unk_1D727FDC8 + v81);
  v111 = *(&unk_1D727FDA0 + v81);
  sub_1D5B56024(0, &qword_1EC8803C0, sub_1D5E4F38C, v73);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1D7273AE0;
  v83 = *(a1 + 112);
  v127 = *(a1 + 96);
  v128 = v83;
  v129 = *(a1 + 128);
  v130 = *(a1 + 144);
  v84 = *(a1 + 48);
  v123 = *(a1 + 32);
  v124 = v84;
  v85 = *(a1 + 80);
  v125 = *(a1 + 64);
  v126 = v85;
  v86 = *(a1 + 16);
  v121 = *a1;
  v122 = v86;
  v120 = v72;

  v87 = sub_1D68BC3CC(&v121, &v120);
  sub_1D5C8500C(v120);
  *(v82 + 56) = &type metadata for FormatInspection;
  *(v82 + 64) = &off_1F51E3FD0;
  *(v82 + 32) = v87;
  v88 = sub_1D5F62BFC(v82);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v82 + 32);
  swift_deallocClassInstance();
  v89 = sub_1D7073500(v88);

  sub_1D711AD20(0x6973736572707845, 0xEA00000000006E6FLL, v89, v111, v110, (v78 + v119));
  v109 = v78;
  v112 = v79;
  v80(v78 + v119, 0, 1, v79);
  v90 = *(v116 + 16);
  v91 = MEMORY[0x1E69E7CC0];
  if (v90)
  {
    v108 = v77;
    v120 = MEMORY[0x1E69E7CC0];
    sub_1D6997EC0(0, v90, 0);
    v91 = v120;
    v92 = (v116 + 32);
    do
    {
      v93 = *v92++;
      *&v121 = v93;
      sub_1D5ECF0E0(v93);
      sub_1D5ECF0E0(v93);
      v94 = sub_1D5EF4424(v131, &v121);
      sub_1D5EF5F6C(v93);
      sub_1D5ECF11C(v93);
      v120 = v91;
      v96 = *(v91 + 16);
      v95 = *(v91 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_1D6997EC0((v95 > 1), v96 + 1, 1);
        v91 = v120;
      }

      *(&v122 + 1) = &type metadata for FormatInspection;
      *&v123 = &off_1F51E3FD0;
      *&v121 = v94;
      *(v91 + 16) = v96 + 1;
      sub_1D5B63F14(&v121, v91 + 40 * v96 + 32);
      --v90;
    }

    while (v90);
    v77 = v108;
  }

  v99 = (v109 + 2 * v119);
  v100 = sub_1D5F62BFC(v91);

  v101 = sub_1D7073500(v100);

  sub_1D711AD20(0x6F737365636F7250, 0xE900000000000072, v101, 0, 0, v99);
  v80(v99, 0, 1, v112);
  sub_1D6795150(0x6F737365636F7250, 0xE900000000000072, 0, 0, v77, &v121);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v114 + 56) = &type metadata for FormatInspectionGroup;
  *(v114 + 64) = &off_1F518B2C0;
  v102 = swift_allocObject();
  *(v114 + 32) = v102;
  v103 = v122;
  *(v102 + 16) = v121;
  *(v102 + 32) = v103;
  *(v102 + 48) = v123;
  v104 = sub_1D7073500(v114);
  swift_setDeallocating();
  sub_1D5EF5F0C(v114 + 32, sub_1D5E4F358);
  swift_deallocClassInstance();

  return v104;
}

uint64_t _s8NewsFeed20FormatColorProcessorO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 >> 61 != 3)
      {
        goto LABEL_29;
      }

      v14 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v24 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v22 = v14;
      sub_1D5ECF0E0(v3);
      sub_1D5ECF0E0(v2);
      v11 = static FormatColor.== infix(_:_:)(&v24, &v22);
    }

    else
    {
      if (v4 != 4)
      {
        if (v2 == 0xA000000000000000)
        {
          if (v3 != 0xA000000000000000)
          {
            goto LABEL_29;
          }

          sub_1D5ECF11C(0xA000000000000000);
          v20 = 0xA000000000000000;
        }

        else if (v2 == 0xA000000000000008)
        {
          if (v3 != 0xA000000000000008)
          {
            goto LABEL_29;
          }

          sub_1D5ECF11C(0xA000000000000008);
          v20 = 0xA000000000000008;
        }

        else
        {
          if (v3 != 0xA000000000000010)
          {
            goto LABEL_29;
          }

          sub_1D5ECF11C(0xA000000000000010);
          v20 = 0xA000000000000010;
        }

        sub_1D5ECF11C(v20);
        v13 = 1;
        return v13 & 1;
      }

      if (v3 >> 61 != 4)
      {
LABEL_29:
        sub_1D5ECF0E0(*a2);
        sub_1D5ECF0E0(v2);
        goto LABEL_30;
      }

      v9 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v24 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = v9;
      v22 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = v10;
      sub_1D5ECF0E0(v3);
      sub_1D5ECF0E0(v2);
      v11 = _s8NewsFeed25FormatColorBlendProcessorV2eeoiySbAC_ACtFZ_0(&v24, &v22);
    }

    v13 = v11;
    sub_1D5ECF11C(v2);
    sub_1D5ECF11C(v3);
    return v13 & 1;
  }

  if (!v4)
  {
    if (!(v3 >> 61))
    {
      v5 = *(v2 + 24);
      v6 = *(v3 + 24);
      v7 = *(v3 + 16);
      v8 = *(v2 + 16);
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v3 >> 61 == 2)
    {
      v15 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v17 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      *&v24 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v22 = v17;
      sub_1D5ECF0E0(v3);
      sub_1D5ECF0E0(v2);

      v18 = static FormatColorExpression.== infix(_:_:)(&v24, &v22);

      if (v18)
      {
        v19 = sub_1D6344A00(v15, v16);
        sub_1D5ECF11C(v2);
        sub_1D5ECF11C(v3);
        if (v19)
        {
          v13 = 1;
          return v13 & 1;
        }

LABEL_31:
        v13 = 0;
        return v13 & 1;
      }

LABEL_30:
      sub_1D5ECF11C(v2);
      sub_1D5ECF11C(v3);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v3 >> 61 != 1)
  {
    goto LABEL_29;
  }

  v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v6 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_12:
  sub_1D5ECF0E0(*a2);
  sub_1D5ECF0E0(v2);
  v12 = sub_1D6DD3A24(v8, v7);
  sub_1D5ECF11C(v2);
  sub_1D5ECF11C(v3);
  v13 = v12 & (v5 == v6);
  return v13 & 1;
}

unint64_t sub_1D5EF5C58(uint64_t a1)
{
  result = sub_1D5EF5C80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EF5C80()
{
  result = qword_1EC880B90;
  if (!qword_1EC880B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880B90);
  }

  return result;
}

unint64_t sub_1D5EF5CD4(void *a1)
{
  a1[1] = sub_1D5EF5D0C();
  a1[2] = sub_1D5EF5D60();
  result = sub_1D5EF5DB4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EF5D0C()
{
  result = qword_1EDF2B480;
  if (!qword_1EDF2B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B480);
  }

  return result;
}

unint64_t sub_1D5EF5D60()
{
  result = qword_1EDF0F1A0;
  if (!qword_1EDF0F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F1A0);
  }

  return result;
}

unint64_t sub_1D5EF5DB4()
{
  result = qword_1EC880B98;
  if (!qword_1EC880B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880B98);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed20FormatColorProcessorO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_1D5EF5E24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5EF5E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D5EF5ED0(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

uint64_t sub_1D5EF5F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5EF5F6C(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D5ECF11C(result);
  }

  return result;
}

uint64_t sub_1D5EF5F90(void *a1)
{
  v3 = v1;
  sub_1D5EF9D94(0, &qword_1EC880BA8, sub_1D5EF9CEC, &type metadata for J6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EF9CEC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5EF9194(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5EF9DFC(&qword_1EC880BB0, sub_1D5EF9E8C);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5EF61EC()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D5EF6228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D73C1B40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D5EF6308(uint64_t a1)
{
  v2 = sub_1D5EF9CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EF6344(uint64_t a1)
{
  v2 = sub_1D5EF9CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5EF6380@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5EF9A38(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D5EF63E0()
{
  sub_1D5EF925C();

  return sub_1D725A24C();
}

uint64_t sub_1D5EF645C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D5EF9D94(0, &qword_1EDF18000, sub_1D5EF96F4, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D5EF6518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a2;
  v53 = a1;
  v41 = a3;
  v44 = sub_1D725895C();
  v6 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  v48 = &v40 - v15;
  v51 = type metadata accessor for GroupLayoutBindingContext();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v17);
  v46 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v47 = *v3;
  v20 = *(v3 + 1);
  v21 = v3[16];
  v45 = type metadata accessor for GroupLayoutBindingContext;
  sub_1D5BE3F40(a1, v46, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v16, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v43 = sub_1D725893C();
  v42 = v22;
  (*(v6 + 8))(v9, v44);
  v64 = &type metadata for J6_V1;
  v44 = sub_1D5ECE094();
  v65 = v44;
  LOBYTE(v62) = v19;
  *(&v62 + 1) = v20;
  v63 = v21;
  type metadata accessor for GroupLayoutKey();
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v20, v21);
  v60 = sub_1D7264C5C();
  v61 = v24;
  v58 = 95;
  v59 = 0xE100000000000000;
  v56 = 45;
  v57 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v42;
  *v28 = v43;
  v28[1] = v29;
  sub_1D5B68374(&v62, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v31 = v52;
  sub_1D5BDA89C(v46, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v45);
  (*(v49 + 56))(v23 + v30, 0, 1, v51);
  v32 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v48, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v54 + 56))(v23 + v32, 0, 1, v55);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  v64 = &type metadata for J6_V1;
  v65 = v44;
  LOBYTE(v62) = v47;
  *(&v62 + 1) = v20;
  v63 = v21;
  sub_1D5BE3F40(v50, v31, type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v20, v21);
  v33 = v66;
  v34 = sub_1D6B97C40(&unk_1F50F5E78, 0, 0, 0, 0, 0, 0, 0);
  if (v33)
  {
    sub_1D5EF8F94(v31);

    return __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  else
  {
    v36 = v34;
    v37 = type metadata accessor for J6_V1.Bound();
    v38 = v41;
    v41[3] = v37;
    v38[4] = sub_1D5EF9194(&qword_1EDF05EF0, type metadata accessor for J6_V1.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    *boxed_opaque_existential_1 = v23;
    sub_1D5B63F14(&v62, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA89C(v31, boxed_opaque_existential_1 + *(v37 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v37 + 28)) = v36;
  }

  return result;
}

uint64_t sub_1D5EF6A5C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for J6_V1.Bound() + 28));
  v36 = v1;
  v9 = sub_1D5ECA874(sub_1D5EF91DC, v35, v8);
  *&v28 = 0;
  v10 = v9;
  *&v38 = v9;
  sub_1D5EF985C(0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context, MEMORY[0x1E69E62F8]);
  v12 = v11;
  sub_1D5BD4984(&qword_1EDF04EB8, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context);
  v30 = v12;
  v13 = sub_1D7262C1C();
  v14 = *MEMORY[0x1E69D7130];
  v15 = sub_1D7259D1C();
  (*(*(v15 - 8) + 104))(v7, v14, v15);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v32 = v13;
  v33 = 2;
  v34 = v2;
  sub_1D5EF95E0(0, &qword_1EDF17FA0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v16 = sub_1D725A4CC();

  v29 = v16;
  v17 = v28;
  sub_1D725A4DC();
  if (v17)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v18 = v40;
    v19 = MEMORY[0x1E69E62F8];
    sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5BD4984(&qword_1EDF04EC0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context);
    v20 = sub_1D5BD4984(&qword_1EDF04ED8, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes);
    v28 = v38;
    v27 = v39;
    v37 = v18;
    *&v38 = v10;
    MEMORY[0x1EEE9AC00](v20, v21);

    v22 = sub_1D725C00C();

    v23 = v31;
    *v31 = 0;
    *(v23 + 24) = v27;
    *(v23 + 8) = v28;
    *&v38 = v22;
    sub_1D5EF985C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v19);
    sub_1D5BD4984(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
    sub_1D5BDEFF8();
    v24 = sub_1D72623BC();

    v26 = MEMORY[0x1E69E7CC0];
    *(v23 + 5) = v24;
    *(v23 + 6) = v26;
  }

  return result;
}

uint64_t sub_1D5EF6EE0@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  v155 = v6;
  v156 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v154 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF9748(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v146 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v145 = &v144 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v144 - v18;
  v153 = &v144 - v18;
  v20 = a1[7];
  v178 = a1[6];
  v179[0] = v20;
  *(v179 + 9) = *(a1 + 121);
  v21 = a1[3];
  v174 = a1[2];
  v175 = v21;
  v22 = a1[5];
  v176 = a1[4];
  v177 = v22;
  v23 = a1[1];
  v172 = *a1;
  v173 = v23;
  v24 = *a2;
  sub_1D5D62850(v180);
  v25 = a2 + *(type metadata accessor for J6_V1.Bound() + 24);
  v26 = type metadata accessor for GroupLayoutContext();
  v27 = *(*&v25[*(v26 + 40)] + 16);
  v28 = *&v25[*(v26 + 32)];
  sub_1D5B68374(v27 + 16, &v157);
  sub_1D5B68374(v27 + 56, &v168);
  v29 = v28 * *(v27 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v30 = swift_allocObject();
  sub_1D5B63F14(&v157, v30 + 16);
  sub_1D5B63F14(&v168, v30 + 56);
  *(v30 + 96) = v29;
  sub_1D5ECF2C4(&v172, &v160);
  FeedLayoutStylerFactory.styler()(v171);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v30 + 16);
  __swift_destroy_boxed_opaque_existential_1(v30 + 56);
  swift_deallocClassInstance();
  v31 = v176;
  v32 = a3;
  *(a3 + 88) = v177;
  v33 = v179[0];
  *(a3 + 104) = v178;
  *(a3 + 120) = v33;
  *(a3 + 129) = *(v179 + 9);
  v34 = v172;
  *(a3 + 24) = v173;
  v35 = v175;
  *(a3 + 40) = v174;
  *(a3 + 56) = v35;
  *(a3 + 72) = v31;
  *(a3 + 8) = v34;
  v36 = v180[4];
  *(a3 + 232) = v180[5];
  v37 = v181[0];
  *(a3 + 248) = v180[6];
  *(a3 + 264) = v37;
  *(a3 + 273) = *(v181 + 9);
  v38 = v180[0];
  *(a3 + 168) = v180[1];
  v39 = v180[3];
  *(a3 + 184) = v180[2];
  *(a3 + 200) = v39;
  *(a3 + 216) = v36;
  *a3 = v24;
  *(a3 + 152) = v38;
  sub_1D5B68374(v171, a3 + 296);
  sub_1D5B68374(v171, &v168);
  v151 = *(v7 + 56);
  v152 = v7 + 56;
  v151(v19, 1, 1, v6);
  v40 = swift_allocObject();
  v41 = v179[0];
  v40[7] = v178;
  v40[8] = v41;
  *(v40 + 137) = *(v179 + 9);
  v42 = v175;
  v40[3] = v174;
  v40[4] = v42;
  v43 = v177;
  v40[5] = v176;
  v40[6] = v43;
  v44 = v173;
  v40[1] = v172;
  v40[2] = v44;
  sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
  v147 = v45;
  v46 = swift_allocObject();
  *(v46 + 2) = 0xC04E000000000000;
  v47 = v170;
  __swift_project_boxed_opaque_existential_1(&v168, v169);
  v166 = v178;
  v167[0] = v179[0];
  *(v167 + 9) = *(v179 + 9);
  v162 = v174;
  v163 = v175;
  v164 = v176;
  v165 = v177;
  v160 = v172;
  v161 = v173;
  sub_1D5ECF2C4(&v172, &v157);
  sub_1D5ECF2C4(&v172, &v157);

  v48 = sub_1D6CAFA6C();
  v49 = (*(v47 + 80))(v48);

  *&v46[*(*v46 + 120)] = v49;
  *&v46[*(*v46 + 136)] = v49;
  v50 = v49;
  v51 = v154;
  sub_1D725890C();
  v52 = *(*v46 + 128);
  v53 = v155;
  v54 = *(v156 + 32);
  v156 += 32;
  v149 = v54;
  v54(&v46[v52], v51, v155);
  v148 = objc_opt_self();
  LOBYTE(v51) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v46[qword_1EDF347F8] = v51;
  v55 = v153;
  sub_1D5DF42F8(v153, &v46[qword_1EDF347F0]);
  v56 = swift_allocObject();
  v56[2] = sub_1D5EF97AC;
  v56[3] = v40;
  v56[4] = v50;
  *(v46 + 3) = sub_1D5EF97B4;
  *(v46 + 4) = v56;
  v32[42] = v46;
  sub_1D5B68374(v171, &v168);
  v151(v55, 1, 1, v53);
  v57 = swift_allocObject();
  v58 = v179[0];
  v57[7] = v178;
  v57[8] = v58;
  *(v57 + 137) = *(v179 + 9);
  v59 = v175;
  v57[3] = v174;
  v57[4] = v59;
  v60 = v177;
  v57[5] = v176;
  v57[6] = v60;
  v61 = v173;
  v57[1] = v172;
  v57[2] = v61;
  v62 = swift_allocObject();
  *(v62 + 2) = 0xC04E000000000000;
  v63 = v170;
  __swift_project_boxed_opaque_existential_1(&v168, v169);
  v166 = v178;
  v167[0] = v179[0];
  *(v167 + 9) = *(v179 + 9);
  v162 = v174;
  v163 = v175;
  v164 = v176;
  v165 = v177;
  v160 = v172;
  v161 = v173;
  sub_1D5ECF2C4(&v172, &v157);
  v64 = sub_1D6CAFA6C();
  v65 = (*(v63 + 88))(v64);

  *&v62[*(*v62 + 120)] = v65;
  *&v62[*(*v62 + 136)] = v65;
  v66 = v65;
  v67 = v154;
  sub_1D725890C();
  v68 = v155;
  v149(&v62[*(*v62 + 128)], v67, v155);
  LOBYTE(v67) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v168);
  v62[qword_1EDF347F8] = v67;
  sub_1D5DF42F8(v153, &v62[qword_1EDF347F0]);
  v69 = swift_allocObject();
  v69[2] = sub_1D5EF97C0;
  v69[3] = v57;
  v69[4] = v66;
  *(v62 + 3) = sub_1D5EF9FF8;
  *(v62 + 4) = v69;
  v150 = v32;
  v32[43] = v62;
  sub_1D5B68374(v171, &v157);
  v151(v145, 1, 1, v68);
  v70 = swift_allocObject();
  v71 = v179[0];
  v70[7] = v178;
  v70[8] = v71;
  *(v70 + 137) = *(v179 + 9);
  v72 = v175;
  v70[3] = v174;
  v70[4] = v72;
  v73 = v177;
  v70[5] = v176;
  v70[6] = v73;
  v74 = v173;
  v70[1] = v172;
  v70[2] = v74;
  v75 = swift_allocObject();
  *(v75 + 2) = 0xC04E000000000000;
  v77 = v158;
  v76 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  if (v177 == 1 || !v178)
  {
    v78 = v172;
    sub_1D5ECF2C4(&v172, &v160);
    v79 = [v78 coverDate];
    sub_1D726207C();
  }

  else
  {
    sub_1D5ECF2C4(&v172, &v160);
  }

  v80 = sub_1D726213C();
  v82 = v81;

  v83 = (*(v76 + 96))(v80, v82, v77, v76);

  *&v75[*(*v75 + 120)] = v83;
  *&v75[*(*v75 + 136)] = v83;
  v84 = v83;
  v85 = v154;
  sub_1D725890C();
  v86 = v155;
  v149(&v75[*(*v75 + 128)], v85, v155);
  LOBYTE(v85) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v75[qword_1EDF347F8] = v85;
  sub_1D5DF42F8(v145, &v75[qword_1EDF347F0]);
  v87 = swift_allocObject();
  v87[2] = sub_1D5EF97C8;
  v87[3] = v70;
  v87[4] = v84;
  *(v75 + 3) = sub_1D5EF9FF8;
  *(v75 + 4) = v87;
  v150[44] = v75;
  sub_1D5B68374(v171, &v157);
  v151(v146, 1, 1, v86);
  v88 = swift_allocObject();
  v89 = v179[0];
  v88[7] = v178;
  v88[8] = v89;
  *(v88 + 137) = *(v179 + 9);
  v90 = v175;
  v88[3] = v174;
  v88[4] = v90;
  v91 = v177;
  v88[5] = v176;
  v88[6] = v91;
  v92 = v173;
  v88[1] = v172;
  v88[2] = v92;
  v93 = swift_allocObject();
  *(v93 + 2) = 0xC04E000000000000;
  v94 = BYTE8(v173);
  v95 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, v158);
  if (v94 == 2)
  {
    LOBYTE(v168) = 2;
    sub_1D5ECF2C4(&v172, &v160);
    v96 = sub_1D6CAFB7C();
    v97 = (*(v95 + 96))(v96);
  }

  else
  {
    LOBYTE(v168) = v94;
    sub_1D5ECF2C4(&v172, &v160);
    v98 = sub_1D6CAFB7C();
    v97 = (*(v95 + 104))(v98);
  }

  v99 = v97;

  *&v93[*(*v93 + 120)] = v99;
  *&v93[*(*v93 + 136)] = v99;
  v100 = v99;
  v101 = v154;
  sub_1D725890C();
  v102 = v101;
  v103 = v155;
  v149(&v93[*(*v93 + 128)], v102, v155);
  v104 = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v93[qword_1EDF347F8] = v104;
  sub_1D5DF42F8(v146, &v93[qword_1EDF347F0]);
  v105 = swift_allocObject();
  v105[2] = sub_1D5EF97D0;
  v105[3] = v88;
  v105[4] = v100;
  *(v93 + 3) = sub_1D5EF9FF8;
  *(v93 + 4) = v105;
  v150[45] = v93;
  sub_1D5B68374(v171, &v160);
  v151(v153, 1, 1, v103);
  v106 = swift_allocObject();
  *(v106 + 2) = 0xC04E000000000000;
  v107 = *(&v161 + 1);
  v108 = v162;
  __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v146 = ObjCClassFromMetadata;
  v145 = objc_opt_self();
  v110 = [v145 bundleForClass_];
  sub_1D725811C();

  v111 = sub_1D726213C();
  v113 = v112;

  v114 = (*(v108 + 112))(v111, v113, v107, v108);

  *&v106[*(*v106 + 120)] = v114;
  *&v106[*(*v106 + 136)] = v114;
  v115 = v114;
  v116 = v154;
  sub_1D725890C();
  v117 = v155;
  v149(&v106[*(*v106 + 128)], v116, v155);
  LOBYTE(v116) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v106[qword_1EDF347F8] = v116;
  v118 = v153;
  sub_1D5DF42F8(v153, &v106[qword_1EDF347F0]);
  v119 = swift_allocObject();
  v119[2] = sub_1D6EAD6D0;
  v119[3] = 0;
  v119[4] = v115;
  *(v106 + 3) = sub_1D5EF9FF8;
  *(v106 + 4) = v119;
  v150[46] = v106;
  sub_1D5B68374(v171, &v160);
  v151(v118, 1, 1, v117);
  v120 = swift_allocObject();
  *(v120 + 2) = 0xC04E000000000000;
  v121 = *(&v161 + 1);
  v122 = v162;
  __swift_project_boxed_opaque_existential_1(&v160, *(&v161 + 1));
  v123 = [v145 bundleForClass_];
  sub_1D725811C();

  v124 = sub_1D726213C();
  v126 = v125;

  v127 = (*(v122 + 120))(v124, v126, v121, v122);

  *&v120[*(*v120 + 120)] = v127;
  *&v120[*(*v120 + 136)] = v127;
  v128 = v127;
  v129 = v154;
  sub_1D725890C();
  v130 = v155;
  v131 = v149;
  v149(&v120[*(*v120 + 128)], v129, v155);
  v132 = v148;
  LOBYTE(v124) = [v148 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v160);
  v120[qword_1EDF347F8] = v124;
  v133 = v153;
  sub_1D5DF42F8(v153, &v120[qword_1EDF347F0]);
  v134 = swift_allocObject();
  v134[2] = sub_1D6EAD7F8;
  v134[3] = 0;
  v134[4] = v128;
  *(v120 + 3) = sub_1D5EF9FF8;
  *(v120 + 4) = v134;
  v150[47] = v120;
  sub_1D5B68374(v171, &v157);
  v151(v133, 1, 1, v130);
  v135 = swift_allocObject();
  v136 = v179[0];
  v135[7] = v178;
  v135[8] = v136;
  *(v135 + 137) = *(v179 + 9);
  v137 = v175;
  v135[3] = v174;
  v135[4] = v137;
  v138 = v177;
  v135[5] = v176;
  v135[6] = v138;
  v139 = v173;
  v135[1] = v172;
  v135[2] = v139;
  sub_1D5EF97E0();
  v140 = swift_allocObject();
  *(v140 + 2) = 0xC04E000000000000;
  sub_1D5ECF2C4(&v172, &v160);
  sub_1D6EAD930(&v172, &v160);
  sub_1D5ECF320(&v172);
  v141 = v160;
  *&v140[*(*v140 + 120)] = v160;
  *&v140[*(*v140 + 136)] = v141;
  swift_bridgeObjectRetain_n();
  sub_1D725890C();
  v131(&v140[*(*v140 + 128)], v129, v130);
  LOBYTE(v133) = [v132 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v140[qword_1EDF347F8] = v133;
  sub_1D5DF42F8(v153, &v140[qword_1EDF347F0]);
  v142 = swift_allocObject();
  *(v142 + 16) = sub_1D5EF97D8;
  *(v142 + 24) = v135;
  *(v142 + 32) = v141;
  *(v140 + 3) = sub_1D5EF98AC;
  *(v140 + 4) = v142;
  result = __swift_destroy_boxed_opaque_existential_1(v171);
  v150[48] = v140;
  return result;
}

void sub_1D5EF8164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v53 = a4;
  v42 = a3;
  sub_1D5EF9D94(0, &qword_1EDF17F68, sub_1D5EF9208, &type metadata for J6_V1.Layout, MEMORY[0x1E69D74B0]);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = (&v41 - v8);
  v54 = *(a2 + 16);
  v55 = a2;
  if (v54)
  {
    v9 = 0;
    v10 = *(v55 + 32);
    v55 += 32;
    v41 = v10 + 32;
    v48 = *MEMORY[0x1E69D7488];
    v46 = (v7 + 8);
    v47 = (v7 + 104);
    v45 = *MEMORY[0x1E69D74A8];
    v44 = *MEMORY[0x1E69D7098];
    p_cache = _TtC8NewsFeed15ManagerAssembly.cache;
    v43 = xmmword_1D7273AE0;
    v49 = v10;
    do
    {
      v27 = *(v55 + 8 * v9);
      v28 = *(v27 + 16);
      v29 = *(v10 + 16);
      v60 = v9;
      if (v28 == v29)
      {
        if (v28)
        {

          if (v27 != v10)
          {
            v30 = v27 + 32;

            v31 = v41;
            do
            {
              sub_1D5EF92B8(v30, v62);
              sub_1D5EF92B8(v31, v61);
              v33 = v62[0];
              v34 = v61[0];
              v35 = *(v62[0] + 16) == *(v61[0] + 16) && *(v62[0] + 24) == *(v61[0] + 24);
              if (!v35 && (sub_1D72646CC() & 1) == 0 || ((v36 = p_cache[155], v37 = *&v36[v33], v38 = *&v36[v33 + 8], v39 = &v36[v34], v37 == *v39) ? (v40 = v38 == *(v39 + 1)) : (v40 = 0), !v40 && (sub_1D72646CC() & 1) == 0))
              {
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
LABEL_29:

                v28 = *(v27 + 16);
                goto LABEL_26;
              }

              if (v62[2] == v61[2] && v62[3] == v61[3])
              {
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
              }

              else
              {
                v32 = sub_1D72646CC();
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
                if ((v32 & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              v30 += 392;
              v31 += 392;
              --v28;
            }

            while (v28);
          }
        }

        else
        {
        }
      }

      else
      {

LABEL_26:
        if (v28 != v42)
        {

          goto LABEL_5;
        }
      }

      v12 = v52;
      v62[0] = v52;
      v13 = swift_allocObject();
      *(v13 + 16) = 0x4024000000000000;
      v15 = v50;
      v14 = v51;
      *v50 = v13;
      v16 = *v47;
      (*v47)(v15, v48, v14);
      v17 = MEMORY[0x1E69D7150];
      v58 = v27;
      sub_1D5EF95E0(0, &qword_1EDF18020, MEMORY[0x1E69D7150]);
      v57 = v18;
      v56 = sub_1D5EF9314(&qword_1EDF18028, &qword_1EDF18020, v17);
      sub_1D7259A9C();
      v59 = *v46;
      v59(v15, v14);
      v62[0] = v12;
      v16(v15, v45, v14);
      sub_1D5EF9358();
      sub_1D5EF9D94(0, &qword_1EDF180B0, sub_1D5EF9208, &type metadata for J6_V1.Layout, MEMORY[0x1E69D70D8]);
      v20 = v19;
      v21 = p_cache;
      v22 = *(v19 - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v43;
      v25 = (*(v22 + 104))(v24 + v23, v44, v20);
      p_cache = v21;
      MEMORY[0x1EEE9AC00](v25, v26);
      sub_1D72599EC();

      v10 = v49;
      v59(v15, v14);
LABEL_5:
      v9 = v60 + 1;
    }

    while (v60 + 1 != v54);
  }
}

void sub_1D5EF86E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v62 = sub_1D725A36C();
  v5 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v6);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF9D94(0, &qword_1EDF17F68, sub_1D5EF9208, &type metadata for J6_V1.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v50 - v12);
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = type metadata accessor for J6_V1.Bound();
    v60 = *(a3 + *(v15 + 24) + *(type metadata accessor for GroupLayoutContext() + 40));
    v16 = a2 + 32;
    v59 = *MEMORY[0x1E69D7200];
    v58 = *MEMORY[0x1E69D7208];
    v57 = *MEMORY[0x1E69D7468];
    v56 = (v10 + 104);
    v55 = *MEMORY[0x1E69D7050];
    v53 = (v10 + 8);
    v54 = (v5 + 104);
    v52 = *MEMORY[0x1E69D7080];
    v51 = *MEMORY[0x1E69D7378];
    v50 = xmmword_1D7273AE0;
    do
    {
      v65 = v16;
      v66 = v14;
      sub_1D5EF92B8(v16, v68);
      v67 = v63;
      KeyPath = swift_getKeyPath();
      sub_1D5EF9444();
      v18 = v17;
      v19 = swift_allocBox();
      v21 = v20;
      v22 = *(v18 + 48);
      sub_1D725993C();
      v23 = swift_allocBox();
      sub_1D725992C();
      *v21 = v23;
      v24 = sub_1D725A09C();
      v25 = *(*(v24 - 8) + 104);
      v25(v21, v59, v24);
      v25((v21 + v22), v58, v24);
      *v13 = v19;
      (*v56)(v13, v57, v9);
      sub_1D5EF9358();
      sub_1D5EF9D94(0, &qword_1EDF180B0, sub_1D5EF9208, &type metadata for J6_V1.Layout, MEMORY[0x1E69D70D8]);
      v27 = v26;
      v28 = *(v26 - 8);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v50;
      sub_1D5EF9D94(0, &qword_1EDF180D8, sub_1D5EF9208, &type metadata for J6_V1.Layout, MEMORY[0x1E69D7078]);
      (*(*(v31 - 8) + 104))(v30 + v29, v55, v31);
      (*(v28 + 104))(v30 + v29, v52, v27);
      v32 = *(v60 + 24);
      v33 = v70;
      v34 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v35 = v9;
      v36 = *(v34 + 16);

      v37 = v36(v33, v34);
      if (qword_1EDF05CE0 != -1)
      {
        swift_once();
      }

      [qword_1EDFFC540 size];
      v40 = v37 * (v38 / v39);
      v41 = v70;
      v42 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      (*(v42 + 48))(v41, v42);
      v43 = v70;
      v44 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v45 = (*(v44 + 56))(v43, v44);
      v47 = MEMORY[0x1EEE9AC00](v45, v46).n128_u64[0];
      *(&v50 - 6) = v32;
      *(&v50 - 5) = v68;
      *(&v50 - 4) = v40;
      *(&v50 - 3) = v37;
      v49 = v47;
      (*v54)(v61, v51, v62);
      sub_1D5EF94BC();
      swift_allocObject();
      sub_1D725A4CC();

      v48 = MEMORY[0x1E69D6F38];
      sub_1D5EF95E0(0, &qword_1EDF18108, MEMORY[0x1E69D6F38]);
      sub_1D5EF9314(&qword_1EDF18110, &qword_1EDF18108, v48);
      v49 = sub_1D5EF9664();
      sub_1D7259A4C();

      (*v53)(v13, v35);
      sub_1D5EF93F0(v68);
      v16 = v65 + 392;
      v14 = v66 - 1;
      v9 = v35;
    }

    while (v66 != 1);
  }
}

uint64_t sub_1D5EF8DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  sub_1D5EF92B8(a2, v10 + 16);
  memcpy((v10 + 408), a3, 0x180uLL);
  v11 = a4 + *(type metadata accessor for J6_V1.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v13 = *(v11 + *(result + 28));
  v14 = __OFADD__(v13, a1);
  v15 = v13 + a1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 792) = v15;
    *a5 = v10 | 0x5000000000000000;
  }

  return result;
}

unint64_t sub_1D5EF8EBC(uint64_t a1)
{
  *(a1 + 8) = sub_1D5EF8EEC();
  result = sub_1D5EF8F40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5EF8EEC()
{
  result = qword_1EDF05E00;
  if (!qword_1EDF05E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E00);
  }

  return result;
}

unint64_t sub_1D5EF8F40()
{
  result = qword_1EDF05E08;
  if (!qword_1EDF05E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E08);
  }

  return result;
}

uint64_t sub_1D5EF8F94(uint64_t a1)
{
  v2 = type metadata accessor for GroupLayoutContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for J6_V1.Bound()
{
  result = qword_1EDF05EE0;
  if (!qword_1EDF05EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5EF9064()
{
  type metadata accessor for GroupLayoutKey();
  if (v0 <= 0x3F)
  {
    sub_1D5C10AB0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext();
      if (v2 <= 0x3F)
      {
        sub_1D5EF985C(319, &qword_1EC880BA0, &type metadata for FeedIssue, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5EF913C(uint64_t a1)
{
  result = sub_1D5EF9194(&qword_1EDF05EF8, type metadata accessor for J6_V1.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EF9194(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5EF9208()
{
  result = qword_1EDF05E10;
  if (!qword_1EDF05E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E10);
  }

  return result;
}

unint64_t sub_1D5EF925C()
{
  result = qword_1EDF05E28;
  if (!qword_1EDF05E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E28);
  }

  return result;
}

uint64_t sub_1D5EF9314(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D5EF95E0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5EF9358()
{
  if (!qword_1EDF023E8)
  {
    sub_1D5EF9D94(255, &qword_1EDF180B0, sub_1D5EF9208, &type metadata for J6_V1.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF023E8);
    }
  }
}

void sub_1D5EF9444()
{
  if (!qword_1EDF3BFC8)
  {
    sub_1D725A09C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF3BFC8);
    }
  }
}

void sub_1D5EF94BC()
{
  if (!qword_1EDF17FC8)
  {
    sub_1D5EF9538();
    sub_1D5EF958C();
    v0 = sub_1D725A4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17FC8);
    }
  }
}

unint64_t sub_1D5EF9538()
{
  result = qword_1EDF0F318;
  if (!qword_1EDF0F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F318);
  }

  return result;
}

unint64_t sub_1D5EF958C()
{
  result = qword_1EDF0F330;
  if (!qword_1EDF0F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F330);
  }

  return result;
}

void sub_1D5EF95E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for J6_V1.Layout;
    v8[1] = &type metadata for J6_V1.Layout.Attributes;
    v8[2] = sub_1D5EF9208();
    v8[3] = sub_1D5EF925C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D5EF9664()
{
  result = qword_1EDF18008;
  if (!qword_1EDF18008)
  {
    sub_1D5EF9D94(255, &qword_1EDF18000, sub_1D5EF96F4, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69D7198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18008);
  }

  return result;
}

unint64_t sub_1D5EF96F4()
{
  result = qword_1EDF0F338;
  if (!qword_1EDF0F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F338);
  }

  return result;
}

void sub_1D5EF9748(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5EF97E0()
{
  if (!qword_1EDF34768[0])
  {
    sub_1D5EF985C(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for CachedText();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF34768);
    }
  }
}

void sub_1D5EF985C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D5EF98DC()
{
  result = qword_1EDF05E18;
  if (!qword_1EDF05E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E18);
  }

  return result;
}

unint64_t sub_1D5EF9934()
{
  result = qword_1EDF05E20;
  if (!qword_1EDF05E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E20);
  }

  return result;
}

unint64_t sub_1D5EF998C()
{
  result = qword_1EDF05E38;
  if (!qword_1EDF05E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E38);
  }

  return result;
}

unint64_t sub_1D5EF99E4()
{
  result = qword_1EDF05E30;
  if (!qword_1EDF05E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E30);
  }

  return result;
}

uint64_t sub_1D5EF9A38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5EF9D94(0, &qword_1EDF037F0, sub_1D5EF9CEC, &type metadata for J6_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EF9CEC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5EF9194(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D5EF9DFC(&qword_1EDF04ED0, sub_1D5EF9D40);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D5EF9CEC()
{
  result = qword_1EDF05E50[0];
  if (!qword_1EDF05E50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF05E50);
  }

  return result;
}

unint64_t sub_1D5EF9D40()
{
  result = qword_1EDF0F320;
  if (!qword_1EDF0F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F320);
  }

  return result;
}

void sub_1D5EF9D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D5EF9DFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5EF985C(255, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5EF9E8C()
{
  result = qword_1EDF0F328;
  if (!qword_1EDF0F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F328);
  }

  return result;
}

unint64_t sub_1D5EF9EF4()
{
  result = qword_1EC880BB8;
  if (!qword_1EC880BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880BB8);
  }

  return result;
}

unint64_t sub_1D5EF9F4C()
{
  result = qword_1EDF05E40;
  if (!qword_1EDF05E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E40);
  }

  return result;
}

unint64_t sub_1D5EF9FA4()
{
  result = qword_1EDF05E48;
  if (!qword_1EDF05E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05E48);
  }

  return result;
}

uint64_t static FeedRecipe.State.default.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for FeedRecipe.State();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for SharedItem();
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *a1 = 0;
  a1[*(v2 + 24)] = 0;
  return result;
}

uint64_t FeedRecipe.State.sharedState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedRecipe.State() + 20);

  return sub_1D5EFA160(v3, a1);
}

uint64_t FeedRecipe.State.blockedState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedRecipe.State();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FeedRecipe.State.init(accessLevel:sharedState:blockedState:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a3;
  *a4 = *a1;
  v7 = type metadata accessor for FeedRecipe.State();
  result = sub_1D5EE6424(a2, &a4[*(v7 + 20)]);
  a4[*(v7 + 24)] = v6;
  return result;
}

uint64_t sub_1D5EFA160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedItem.SharedState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *FeedRecipe.State.selectors.getter()
{
  v1 = type metadata accessor for FeedItem.SharedState(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1D7279970;
  if (*v0)
  {
    if (*v0 == 1)
    {
      v7 = "deleted-state-none";
      v8 = 0xD00000000000001DLL;
    }

    else
    {
      v7 = "offensive-state-none";
      v8 = 0xD000000000000020;
    }
  }

  else
  {
    v8 = 0xD000000000000011;
    v7 = "access-level-no-bundle-access";
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = v7 | 0x8000000000000000;
  v9 = type metadata accessor for FeedRecipe.State();
  sub_1D5EFA160(&v0[*(v9 + 20)], v4);
  v10 = type metadata accessor for SharedItem();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    v11 = "NewsFeed/A18_V16.swift";
    v12 = 0xD000000000000010;
  }

  else
  {
    sub_1D5EFA3A4(v4);
    v11 = "offensive-state-offensive";
    v12 = 0xD000000000000012;
  }

  v6[6] = v12;
  v6[7] = v11 | 0x8000000000000000;
  v13 = "deleted-state-deleted";
  if (v0[*(v9 + 24)])
  {
    v14 = 0xD000000000000015;
  }

  else
  {
    v14 = 0xD000000000000012;
  }

  if (!v0[*(v9 + 24)])
  {
    v13 = "blocked-state-blocked";
  }

  v6[8] = v14;
  v6[9] = v13 | 0x8000000000000000;
  return v6;
}

uint64_t sub_1D5EFA3A4(uint64_t a1)
{
  v2 = type metadata accessor for FeedItem.SharedState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedRecipe.State.contextIdentifier.getter()
{
  FeedRecipe.State.selectors.getter();
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v0 = sub_1D7261F3C();

  return v0;
}

uint64_t static FeedRecipe.State.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for FeedRecipe.State();
  if (_s8NewsFeed0B4ItemO11SharedStateO2eeoiySbAE_AEtFZ_0(&a1[*(v4 + 20)], &a2[*(v4 + 20)]))
  {
    v5 = a1[*(v4 + 24)] ^ a2[*(v4 + 24)] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D5EFA51C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (_s8NewsFeed0B4ItemO11SharedStateO2eeoiySbAE_AEtFZ_0(&a1[*(a3 + 20)], &a2[*(a3 + 20)]))
  {
    v6 = a1[*(a3 + 24)] ^ a2[*(a3 + 24)] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t FormatThumbnail.accentColor.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatThumbnail.backgroundColor.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatThumbnail.primaryColor.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatThumbnail.textColor.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

BOOL sub_1D5EFA80C()
{
  sub_1D5B5B410();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for FormatThumbnail();
  sub_1D5EFD220(v0 + v20[9], v19, sub_1D5B5B410);
  v21 = type metadata accessor for FormatThumbnailImage();
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v19, 1, v21);
  sub_1D5EFD864(v19, sub_1D5B5B410);
  if (v23 != 1)
  {
    return 0;
  }

  sub_1D5EFD220(v0 + v20[10], v15, sub_1D5B5B410);
  v24 = v22(v15, 1, v21);
  sub_1D5EFD864(v15, sub_1D5B5B410);
  if (v24 != 1)
  {
    return 0;
  }

  sub_1D5EFD220(v0 + v20[11], v11, sub_1D5B5B410);
  v25 = v22(v11, 1, v21);
  sub_1D5EFD864(v11, sub_1D5B5B410);
  if (v25 != 1)
  {
    return 0;
  }

  sub_1D5EFD220(v0 + v20[12], v7, sub_1D5B5B410);
  v26 = v22(v7, 1, v21);
  sub_1D5EFD864(v7, sub_1D5B5B410);
  if (v26 != 1)
  {
    return 0;
  }

  v27 = v0 + v20[13];
  v28 = v32;
  sub_1D5EFD220(v27, v32, sub_1D5B5B410);
  v29 = v22(v28, 1, v21) == 1;
  sub_1D5EFD864(v28, sub_1D5B5B410);
  return v29;
}

unint64_t sub_1D5EFAB50(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000012;
    v6 = 0xD000000000000011;
    if (a1 == 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000013;
    if (a1 == 5)
    {
      v7 = 0x696C617551776F6CLL;
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
    v1 = 0x6172466C61636F66;
    v2 = 0x756F72676B636162;
    v3 = 0x437972616D697270;
    if (a1 != 3)
    {
      v3 = 0x6F6C6F4374786574;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6F43746E65636361;
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

uint64_t sub_1D5EFACD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5EFD494(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5EFACF8(uint64_t a1)
{
  v2 = sub_1D5EFD168();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EFAD34(uint64_t a1)
{
  v2 = sub_1D5EFD168();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatThumbnail.encode(to:)(void *a1)
{
  sub_1D5EFD1BC(0, &qword_1EDF027B8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5EFD168();
  sub_1D7264B5C();
  v10[31] = 0;
  sub_1D72643EC();
  if (!v1)
  {
    v10[30] = 1;
    sub_1D726437C();
    v10[29] = 2;
    sub_1D726437C();
    v10[28] = 3;
    sub_1D726437C();
    v10[27] = 4;
    sub_1D726437C();
    type metadata accessor for FormatThumbnail();
    v10[26] = 5;
    type metadata accessor for FormatThumbnailImage();
    sub_1D5EFD334(&qword_1EDF0EC98, type metadata accessor for FormatThumbnailImage);
    sub_1D72643BC();
    v10[25] = 6;
    sub_1D72643BC();
    v10[24] = 7;
    sub_1D72643BC();
    v10[15] = 8;
    sub_1D72643BC();
    v10[14] = 9;
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FormatThumbnail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  sub_1D5B5B410();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v63 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v64 = v58 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v58 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v58 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v58 - v19;
  sub_1D5EFD1BC(0, &qword_1EDF03AA0, MEMORY[0x1E69E6F48]);
  v67 = v21;
  v65 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v58 - v23;
  v25 = type metadata accessor for FormatThumbnail();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5EFD168();
  v66 = v24;
  v30 = v68;
  sub_1D7264B0C();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v31 = v20;
  v68 = v12;
  v33 = v65;
  v32 = v66;
  v79 = 0;
  v34 = v67;
  v35 = v28;
  *v28 = sub_1D72642AC();
  v28[8] = v36 & 1;
  v78 = 1;
  *(v28 + 2) = sub_1D726422C();
  *(v28 + 3) = v38;
  v77 = 2;
  *(v28 + 4) = sub_1D726422C();
  *(v28 + 5) = v39;
  v76 = 3;
  v59 = 0;
  v40 = sub_1D726422C();
  v60 = v25;
  *(v28 + 6) = v40;
  *(v28 + 7) = v41;
  v75 = 4;
  v42 = sub_1D726422C();
  v61 = 0;
  *(v28 + 8) = v42;
  *(v28 + 9) = v43;
  v58[1] = type metadata accessor for FormatThumbnailImage();
  v74 = 5;
  v58[0] = sub_1D5EFD334(&qword_1EDF0EC90, type metadata accessor for FormatThumbnailImage);
  v44 = v61;
  sub_1D726427C();
  v61 = v44;
  if (v44)
  {
    (*(v33 + 8))(v32, v34);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_12;
  }

  sub_1D5EFD8C4(v31, &v28[v60[9]], sub_1D5B5B410);
  v73 = 6;
  v48 = v61;
  sub_1D726427C();
  v61 = v48;
  if (v48)
  {
    (*(v33 + 8))(v32, v34);
    v46 = 0;
    v47 = 0;
    v45 = 1;
    goto LABEL_12;
  }

  sub_1D5EFD8C4(v16, &v28[v60[10]], sub_1D5B5B410);
  v72 = 7;
  v49 = v68;
  v50 = v61;
  sub_1D726427C();
  v61 = v50;
  if (v50)
  {
    (*(v33 + 8))(v32, v34);
    v47 = 0;
    v45 = 1;
    v46 = 1;
    goto LABEL_12;
  }

  sub_1D5EFD8C4(v49, &v28[v60[11]], sub_1D5B5B410);
  v71 = 8;
  v51 = v64;
  v52 = v61;
  sub_1D726427C();
  v61 = v52;
  if (v52)
  {
    (*(v33 + 8))(v32, v34);
    v45 = 1;
    v46 = 1;
    v47 = 1;
LABEL_12:
    v53 = v59;
    v54 = v60;
    __swift_destroy_boxed_opaque_existential_1(v69);

    if (!v53)
    {
    }

    if (v45)
    {
      result = sub_1D5EFD864(&v35[v54[9]], sub_1D5B5B410);
      if (v46)
      {
        goto LABEL_21;
      }
    }

    else if (v46)
    {
LABEL_21:
      result = sub_1D5EFD864(&v35[v54[10]], sub_1D5B5B410);
      if ((v47 & 1) == 0)
      {
        return result;
      }

      return sub_1D5EFD864(&v35[v54[11]], sub_1D5B5B410);
    }

    if (!v47)
    {
      return result;
    }

    return sub_1D5EFD864(&v35[v54[11]], sub_1D5B5B410);
  }

  sub_1D5EFD8C4(v51, &v28[v60[12]], sub_1D5B5B410);
  v70 = 9;
  v55 = v61;
  sub_1D726427C();
  (*(v33 + 8))(v66, v67);
  if (v55)
  {
    __swift_destroy_boxed_opaque_existential_1(v69);

    sub_1D5EFD864(&v28[v25[9]], sub_1D5B5B410);
    sub_1D5EFD864(&v28[v25[10]], sub_1D5B5B410);
    sub_1D5EFD864(&v28[v25[11]], sub_1D5B5B410);
    v56 = &v28[v25[12]];
    v57 = sub_1D5B5B410;
  }

  else
  {
    sub_1D5EFD8C4(v63, &v28[v25[13]], sub_1D5B5B410);
    sub_1D5EFD220(v28, v62, type metadata accessor for FormatThumbnail);
    __swift_destroy_boxed_opaque_existential_1(v69);
    v57 = type metadata accessor for FormatThumbnail;
    v56 = v28;
  }

  return sub_1D5EFD864(v56, v57);
}

uint64_t sub_1D5EFB8E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D72585BC();
  v106 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B410();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v103 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v105 = &v93 - v21;
  *&v24 = MEMORY[0x1EEE9AC00](v22, v23).n128_u64[0];
  v26 = &v93 - v25;
  if (a1)
  {
    v102 = [a1 focalFrameBuffer];
    v27 = [a1 accentColor];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 hex];

      v30 = sub_1D726207C();
      v100 = v31;
      v101 = v30;
    }

    else
    {
      v100 = 0;
      v101 = 0;
    }

    v35 = [a1 backgroundColor];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 hex];

      v38 = sub_1D726207C();
      v98 = v39;
      v99 = v38;
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v40 = [a1 primaryColor];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 hex];

      v43 = sub_1D726207C();
      v96 = v44;
      v97 = v43;
    }

    else
    {
      v96 = 0;
      v97 = 0;
    }

    v45 = [a1 textColor];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 hex];

      v48 = sub_1D726207C();
      v94 = v49;
      v95 = v48;
    }

    else
    {
      v94 = 0;
      v95 = 0;
    }

    v50 = [a1 lowQualityImage];
    v104 = v15;
    if (v50)
    {
      v51 = v50;
      v52 = [v51 url];
      sub_1D72584EC();

      v53 = [v51 sizeBuffer];
      (*(v106 + 32))(v26, v7, v4);
      v54 = type metadata accessor for FormatThumbnailImage();
      *&v26[*(v54 + 20)] = v53;
      (*(*(v54 - 8) + 56))(v26, 0, 1, v54);
    }

    else
    {
      v55 = type metadata accessor for FormatThumbnailImage();
      (*(*(v55 - 8) + 56))(v26, 1, 1, v55);
    }

    v56 = v103;
    v57 = [a1 defaultQualityImage];
    if (v57)
    {
      v58 = v57;
      v59 = [v58 &selRef_thumbnailLQ];
      sub_1D72584EC();

      v60 = [v58 sizeBuffer];
      v61 = v105;
      (*(v106 + 32))(v105, v7, v4);
      v62 = type metadata accessor for FormatThumbnailImage();
      *(v61 + *(v62 + 20)) = v60;
      (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    }

    else
    {
      v63 = type metadata accessor for FormatThumbnailImage();
      (*(*(v63 - 8) + 56))(v105, 1, 1, v63);
    }

    v64 = [a1 mediumQualityImage];
    if (v64)
    {
      v65 = v64;
      v66 = [v65 &selRef_thumbnailLQ];
      sub_1D72584EC();

      v67 = [v65 sizeBuffer];
      (*(v106 + 32))(v56, v7, v4);
      v68 = type metadata accessor for FormatThumbnailImage();
      *(v56 + *(v68 + 20)) = v67;
      (*(*(v68 - 8) + 56))(v56, 0, 1, v68);
    }

    else
    {
      v69 = type metadata accessor for FormatThumbnailImage();
      (*(*(v69 - 8) + 56))(v56, 1, 1, v69);
    }

    v70 = [a1 highQualityImage];
    if (v70)
    {
      v71 = v70;
      v72 = [v71 &selRef_thumbnailLQ];
      sub_1D72584EC();

      v73 = [v71 sizeBuffer];
      v74 = v104;
      (*(v106 + 32))(v104, v7, v4);
      v75 = type metadata accessor for FormatThumbnailImage();
      *(v74 + *(v75 + 20)) = v73;
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
    }

    else
    {
      v76 = type metadata accessor for FormatThumbnailImage();
      (*(*(v76 - 8) + 56))(v104, 1, 1, v76);
    }

    v77 = [a1 ultraQualityImage];
    if (v77)
    {
      v78 = v77;
      v79 = [v78 &selRef_thumbnailLQ];
      sub_1D72584EC();

      v80 = [v78 sizeBuffer];
      v81 = v93;
      (*(v106 + 32))(v93, v7, v4);
      v82 = type metadata accessor for FormatThumbnailImage();
      *(v81 + *(v82 + 20)) = v80;
      (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
    }

    else
    {

      v83 = type metadata accessor for FormatThumbnailImage();
      v81 = v93;
      (*(*(v83 - 8) + 56))(v93, 1, 1, v83);
    }

    v84 = v101;
    *a2 = v102;
    *(a2 + 8) = 0;
    v86 = v99;
    v85 = v100;
    *(a2 + 16) = v84;
    *(a2 + 24) = v85;
    v88 = v97;
    v87 = v98;
    *(a2 + 32) = v86;
    *(a2 + 40) = v87;
    v90 = v95;
    v89 = v96;
    *(a2 + 48) = v88;
    *(a2 + 56) = v89;
    v91 = v94;
    *(a2 + 64) = v90;
    *(a2 + 72) = v91;
    v92 = type metadata accessor for FormatThumbnail();
    sub_1D5EFD8C4(v26, a2 + v92[9], sub_1D5B5B410);
    sub_1D5EFD8C4(v105, a2 + v92[10], sub_1D5B5B410);
    sub_1D5EFD8C4(v56, a2 + v92[11], sub_1D5B5B410);
    sub_1D5EFD8C4(v104, a2 + v92[12], sub_1D5B5B410);
    sub_1D5EFD8C4(v81, a2 + v92[13], sub_1D5B5B410);
    return (*(*(v92 - 1) + 56))(a2, 0, 1, v92);
  }

  else
  {
    v32 = type metadata accessor for FormatThumbnail();
    v33 = *(*(v32 - 8) + 56);

    return v33(a2, 1, 1, v32);
  }
}

BOOL _s8NewsFeed15FormatThumbnailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatThumbnailImage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v168 = &v160 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v169 = &v160 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v172 = &v160 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v160 - v20;
  sub_1D5B5B410();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v170 = &v160 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v171 = &v160 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v173 = &v160 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v160 - v37;
  sub_1D5EFD800();
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v56 = &v160 - v55;
  v57 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v57 = 1;
    }

    if (v57)
    {
      return 0;
    }
  }

  v58 = *(a1 + 24);
  v59 = *(a2 + 24);
  if (v58)
  {
    if (!v59)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v58 != v59)
    {
      v164 = a2;
      v165 = a1;
      v166 = v5;
      v167 = v42;
      v60 = v25;
      v61 = v8;
      v62 = v4;
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v66 = v21;
      v67 = v54;
      v68 = sub_1D72646CC();
      v54 = v67;
      v21 = v66;
      v53 = v65;
      v52 = v64;
      v69 = v68;
      v51 = v63;
      v4 = v62;
      v8 = v61;
      v25 = v60;
      v5 = v166;
      v42 = v167;
      a2 = v164;
      a1 = v165;
      if ((v69 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v59)
  {
    return 0;
  }

  v70 = *(a1 + 40);
  v71 = *(a2 + 40);
  if (v70)
  {
    if (!v71)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v70 != v71)
    {
      v164 = a2;
      v165 = a1;
      v166 = v5;
      v167 = v42;
      v72 = v25;
      v73 = v8;
      v74 = v4;
      v75 = v51;
      v76 = v52;
      v77 = v53;
      v78 = v21;
      v79 = v54;
      v80 = sub_1D72646CC();
      v54 = v79;
      v21 = v78;
      v53 = v77;
      v52 = v76;
      v81 = v80;
      v51 = v75;
      v4 = v74;
      v8 = v73;
      v25 = v72;
      v5 = v166;
      v42 = v167;
      a2 = v164;
      a1 = v165;
      if ((v81 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v71)
  {
    return 0;
  }

  v82 = *(a1 + 56);
  v83 = *(a2 + 56);
  if (v82)
  {
    if (!v83)
    {
      return 0;
    }

    if (*(a1 + 48) != *(a2 + 48) || v82 != v83)
    {
      v164 = a2;
      v165 = a1;
      v166 = v5;
      v167 = v42;
      v84 = v25;
      v85 = v8;
      v86 = v4;
      v87 = v51;
      v88 = v52;
      v89 = v53;
      v90 = v21;
      v91 = v54;
      v92 = sub_1D72646CC();
      v54 = v91;
      v21 = v90;
      v53 = v89;
      v52 = v88;
      v93 = v92;
      v51 = v87;
      v4 = v86;
      v8 = v85;
      v25 = v84;
      v5 = v166;
      v42 = v167;
      a2 = v164;
      a1 = v165;
      if ((v93 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v83)
  {
    return 0;
  }

  v94 = *(a1 + 72);
  v95 = *(a2 + 72);
  if (!v94)
  {
    v166 = v54;
    v161 = v52;
    v162 = v53;
    v164 = v51;
    if (!v95)
    {
      goto LABEL_35;
    }

    return 0;
  }

  if (!v95)
  {
    return 0;
  }

  v166 = v54;
  v161 = v52;
  v162 = v53;
  v164 = v51;
  if ((*(a1 + 64) != *(a2 + 64) || v94 != v95) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  v96 = type metadata accessor for FormatThumbnail();
  v165 = v4;
  v160 = v96;
  v167 = *(v96 + 36);
  v97 = *(v164 + 48);
  v163 = sub_1D5B5B410;
  sub_1D5EFD220(&v167[a1], v56, sub_1D5B5B410);
  v98 = &v167[a2];
  v167 = v97;
  sub_1D5EFD220(v98, v56 + v97, v163);
  v101 = *(v5 + 48);
  v100 = v5 + 48;
  v99 = v101;
  if ((v101)(v56, 1, v165) == 1)
  {
    if ((v99)(&v167[v56], 1, v165) != 1)
    {
      goto LABEL_65;
    }

    v163 = v99;
    sub_1D5EFD864(v56, sub_1D5B5B410);
  }

  else
  {
    sub_1D5EFD220(v56, v38, sub_1D5B5B410);
    v163 = v99;
    if ((v99)(&v167[v56], 1, v165) == 1)
    {
      v127 = v38;
LABEL_64:
      sub_1D5EFD864(v127, type metadata accessor for FormatThumbnailImage);
      goto LABEL_65;
    }

    sub_1D5EFD8C4(&v167[v56], v21, type metadata accessor for FormatThumbnailImage);
    if ((sub_1D72584CC() & 1) == 0)
    {
      sub_1D5EFD864(v21, type metadata accessor for FormatThumbnailImage);
      v130 = v38;
LABEL_70:
      sub_1D5EFD864(v130, type metadata accessor for FormatThumbnailImage);
      v138 = sub_1D5B5B410;
      goto LABEL_66;
    }

    v128 = *(v165 + 20);
    v167 = *&v38[v128];
    v129 = *&v21[v128];
    sub_1D5EFD864(v21, type metadata accessor for FormatThumbnailImage);
    sub_1D5EFD864(v38, type metadata accessor for FormatThumbnailImage);
    sub_1D5EFD864(v56, sub_1D5B5B410);
    if (v167 != v129)
    {
      return 0;
    }
  }

  v102 = v160[10];
  v103 = *(v164 + 48);
  v56 = v166;
  sub_1D5EFD220(a1 + v102, v166, sub_1D5B5B410);
  sub_1D5EFD220(a2 + v102, v56 + v103, sub_1D5B5B410);
  v104 = v165;
  v105 = v163;
  if ((v163)(v56, 1, v165) == 1)
  {
    if ((v105)(v56 + v103, 1, v104) == 1)
    {
      v163 = v105;
      sub_1D5EFD864(v56, sub_1D5B5B410);
      goto LABEL_41;
    }

LABEL_65:
    v138 = sub_1D5EFD800;
LABEL_66:
    v139 = v138;
    v125 = v56;
LABEL_67:
    sub_1D5EFD864(v125, v139);
    return 0;
  }

  sub_1D5EFD220(v56, v173, sub_1D5B5B410);
  if ((v105)(v56 + v103, 1, v104) == 1)
  {
    v127 = v173;
    goto LABEL_64;
  }

  v131 = v56 + v103;
  v132 = v172;
  sub_1D5EFD8C4(v131, v172, type metadata accessor for FormatThumbnailImage);
  if ((sub_1D72584CC() & 1) == 0)
  {
    sub_1D5EFD864(v132, type metadata accessor for FormatThumbnailImage);
    v130 = v173;
    goto LABEL_70;
  }

  v163 = v105;
  v133 = *(v104 + 20);
  v134 = v173;
  v167 = *&v173[v133];
  v135 = v132;
  v136 = *(v132 + v133);
  sub_1D5EFD864(v135, type metadata accessor for FormatThumbnailImage);
  sub_1D5EFD864(v134, type metadata accessor for FormatThumbnailImage);
  sub_1D5EFD864(v56, sub_1D5B5B410);
  if (v167 != v136)
  {
    return 0;
  }

LABEL_41:
  v167 = v42;
  v173 = v25;
  v106 = v160[11];
  v107 = v100;
  v108 = *(v164 + 48);
  v56 = v162;
  sub_1D5EFD220(a1 + v106, v162, sub_1D5B5B410);
  sub_1D5EFD220(a2 + v106, v56 + v108, sub_1D5B5B410);
  v109 = v165;
  v110 = v163;
  if ((v163)(v56, 1, v165) == 1)
  {
    v111 = v110;
    if ((v110)(v56 + v108, 1, v109) == 1)
    {
      v172 = v8;
      sub_1D5EFD864(v56, sub_1D5B5B410);
      goto LABEL_44;
    }

    goto LABEL_65;
  }

  v137 = v171;
  sub_1D5EFD220(v56, v171, sub_1D5B5B410);
  v166 = v107;
  v111 = v110;
  if ((v110)(v56 + v108, 1, v109) == 1)
  {
    v127 = v137;
    goto LABEL_64;
  }

  v140 = v169;
  sub_1D5EFD8C4(v56 + v108, v169, type metadata accessor for FormatThumbnailImage);
  if ((sub_1D72584CC() & 1) == 0)
  {
    sub_1D5EFD864(v140, type metadata accessor for FormatThumbnailImage);
    v130 = v137;
    goto LABEL_70;
  }

  v172 = v8;
  v141 = *(v109 + 20);
  v142 = *(v137 + v141);
  v143 = *(v140 + v141);
  sub_1D5EFD864(v140, type metadata accessor for FormatThumbnailImage);
  sub_1D5EFD864(v137, type metadata accessor for FormatThumbnailImage);
  sub_1D5EFD864(v56, sub_1D5B5B410);
  if (v142 != v143)
  {
    return 0;
  }

LABEL_44:
  v112 = v161;
  v113 = v160[12];
  v114 = *(v164 + 48);
  sub_1D5EFD220(a1 + v113, v161, sub_1D5B5B410);
  sub_1D5EFD220(a2 + v113, v112 + v114, sub_1D5B5B410);
  v115 = v165;
  v116 = (v111)(v112, 1, v165);
  v117 = v170;
  if (v116 == 1)
  {
    v118 = v111;
    if ((v111)(v112 + v114, 1, v115) == 1)
    {
      sub_1D5EFD864(v112, sub_1D5B5B410);
      goto LABEL_47;
    }

    goto LABEL_76;
  }

  sub_1D5EFD220(v112, v170, sub_1D5B5B410);
  v118 = v111;
  if ((v111)(v112 + v114, 1, v115) == 1)
  {
    sub_1D5EFD864(v117, type metadata accessor for FormatThumbnailImage);
LABEL_76:
    v144 = sub_1D5EFD800;
LABEL_77:
    v139 = v144;
    v125 = v112;
    goto LABEL_67;
  }

  v145 = v168;
  sub_1D5EFD8C4(v112 + v114, v168, type metadata accessor for FormatThumbnailImage);
  if ((sub_1D72584CC() & 1) == 0)
  {
    sub_1D5EFD864(v145, type metadata accessor for FormatThumbnailImage);
    sub_1D5EFD864(v117, type metadata accessor for FormatThumbnailImage);
    v144 = sub_1D5B5B410;
    goto LABEL_77;
  }

  v146 = *(v165 + 20);
  v147 = *(v117 + v146);
  v148 = v145;
  v149 = *(v145 + v146);
  sub_1D5EFD864(v148, type metadata accessor for FormatThumbnailImage);
  sub_1D5EFD864(v117, type metadata accessor for FormatThumbnailImage);
  sub_1D5EFD864(v112, sub_1D5B5B410);
  if (v147 != v149)
  {
    return 0;
  }

LABEL_47:
  v119 = v160[13];
  v120 = *(v164 + 48);
  v121 = a1 + v119;
  v122 = v167;
  sub_1D5EFD220(v121, v167, sub_1D5B5B410);
  sub_1D5EFD220(a2 + v119, v122 + v120, sub_1D5B5B410);
  v123 = v165;
  if ((v118)(v122, 1, v165) == 1)
  {
    v124 = (v118)(v122 + v120, 1, v123) == 1;
    v125 = v122;
    if (v124)
    {
      sub_1D5EFD864(v122, sub_1D5B5B410);
      return 1;
    }

    v159 = sub_1D5EFD800;
    goto LABEL_89;
  }

  sub_1D5EFD220(v122, v173, sub_1D5B5B410);
  v150 = (v118)(v122 + v120, 1, v123);
  v151 = sub_1D5EFD800;
  if (v150 == 1)
  {
LABEL_88:
    v159 = v151;
    sub_1D5EFD864(v173, type metadata accessor for FormatThumbnailImage);
    v125 = v167;
LABEL_89:
    v139 = v159;
    goto LABEL_67;
  }

  v152 = &v167[v120];
  v153 = v172;
  sub_1D5EFD8C4(v152, v172, type metadata accessor for FormatThumbnailImage);
  v154 = v153;
  if ((sub_1D72584CC() & 1) == 0)
  {
    sub_1D5EFD864(v153, type metadata accessor for FormatThumbnailImage);
    v151 = sub_1D5B5B410;
    goto LABEL_88;
  }

  v155 = *(v165 + 20);
  v156 = v173;
  v157 = *&v173[v155];
  v158 = *(v154 + v155);
  sub_1D5EFD864(v154, type metadata accessor for FormatThumbnailImage);
  sub_1D5EFD864(v156, type metadata accessor for FormatThumbnailImage);
  sub_1D5EFD864(v167, sub_1D5B5B410);
  return v157 == v158;
}

unint64_t sub_1D5EFD168()
{
  result = qword_1EDF11800;
  if (!qword_1EDF11800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11800);
  }

  return result;
}

void sub_1D5EFD1BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5EFD168();
    v7 = a3(a1, &type metadata for FormatThumbnail.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5EFD220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EFD288(void *a1)
{
  a1[1] = sub_1D5EFD334(qword_1EDF41148, type metadata accessor for FormatThumbnail);
  a1[2] = sub_1D5EFD334(&qword_1EDF117E8, type metadata accessor for FormatThumbnail);
  result = sub_1D5EFD334(&qword_1EC880BC0, type metadata accessor for FormatThumbnail);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5EFD334(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5EFD390()
{
  result = qword_1EC880BC8;
  if (!qword_1EC880BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880BC8);
  }

  return result;
}

unint64_t sub_1D5EFD3E8()
{
  result = qword_1EDF117F0;
  if (!qword_1EDF117F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF117F0);
  }

  return result;
}

unint64_t sub_1D5EFD440()
{
  result = qword_1EDF117F8;
  if (!qword_1EDF117F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF117F8);
  }

  return result;
}

uint64_t sub_1D5EFD494(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172466C61636F66 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65636361 && a2 == 0xEB00000000726F6CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x437972616D697270 && a2 == 0xEC000000726F6C6FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696C617551776F6CLL && a2 == 0xEF6567616D497974 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C1B60 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C1B80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C1BA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C1BC0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_1D5EFD800()
{
  if (!qword_1EC880BD0)
  {
    sub_1D5B5B410();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC880BD0);
    }
  }
}

uint64_t sub_1D5EFD864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5EFD8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static FormatServiceCachePolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D5EFD980(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t type metadata accessor for FormatDebuggerWorkspaceStackFrame()
{
  result = qword_1EC880BD8;
  if (!qword_1EC880BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5EFDA58()
{
  result = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FormatPackageInventory();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

NewsFeed::FeedGroupEmitterPriority_optional __swiftcall FeedGroupEmitterPriority.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedGroupEmitterPriority.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_1D5EFDB80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616D726F6ELL;
  }

  else
  {
    v3 = 7827308;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616D726F6ELL;
  }

  else
  {
    v5 = 7827308;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_1D5EFDC1C@<X0>(char *a1@<X8>)
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

void sub_1D5EFDC7C(uint64_t *a1@<X8>)
{
  v2 = 7827308;
  if (*v1)
  {
    v2 = 0x6C616D726F6ELL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D5EFDD64()
{
  result = qword_1EDF363B8;
  if (!qword_1EDF363B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF363B8);
  }

  return result;
}

uint64_t sub_1D5EFDDB8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EFDE30()
{
  sub_1D72621EC();
}

uint64_t sub_1D5EFDE94()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5EFDF18()
{
  result = qword_1EDF13CD8;
  if (!qword_1EDF13CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13CD8);
  }

  return result;
}

uint64_t sub_1D5EFDF98@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D5EFE030()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D5EFE0BC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v46 = a1;
  v49 = a5;
  sub_1D5EFEF4C();
  v9 = v8;
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v47 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EFF550(0, &qword_1EC880C18, sub_1D5EFEF4C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v54 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v45 - v17;
  v19 = *(a4 + 40);
  v20 = a2;
  if (*(v19 + 16))
  {
    type metadata accessor for DebugFormatBindingTree();
    sub_1D5EFF19C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree);

    v21 = sub_1D7260F8C();
    v23 = v22;

    v53 = v23;
  }

  else
  {
    v21 = 0;
    v53 = 0;
    v19 = 0;
  }

  v51 = v19;
  v24 = a4;
  v25 = *(a4 + 32);
  if (*(v25 + 16))
  {
    type metadata accessor for DebugFormatBindingTree();
    sub_1D5EFF19C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree);

    v50 = sub_1D7260F8C();
    v27 = v26;
    v48 = v25;

    v28 = v27;
  }

  else
  {
    v50 = 0;
    v28 = 0;
    v48 = 0;
  }

  if (*(*(v24 + 48) + 16))
  {
    v55 = *(v24 + 48);
    v45[3] = swift_getKeyPath();
    v29 = swift_allocObject();
    v30 = v9;
    v29[2] = v46;
    v29[3] = v20;
    v29[4] = a3;
    v29[5] = v24;
    sub_1D5EFF550(0, &qword_1EDF04C68, type metadata accessor for FormatContentSlotItemObject.Resolved, MEMORY[0x1E69E62F8]);
    v45[2] = v31;
    sub_1D5EFF5D0(0, &qword_1EC880C28, &type metadata for DebugFormatBindingTreeItemView, MEMORY[0x1E69E6720]);
    v45[1] = v32;
    sub_1D5EFF038();
    v46 = v18;
    sub_1D5EFF1F0();
    v33 = v52;

    v34 = v46;
    v35 = v47;
    sub_1D72619DC();
    (*(v33 + 32))(v34, v35, v30);
    v18 = v34;
    (*(v33 + 56))(v34, 0, 1, v30);
  }

  else
  {
    (*(v52 + 56))(v18, 1, 1, v9);
  }

  v36 = v18;
  v37 = v54;
  sub_1D5EFF4D0(v18, v54, &qword_1EC880C18, sub_1D5EFEF4C);
  v38 = v21;
  v39 = v48;
  v40 = v49;
  v41 = v53;
  *v49 = v21;
  v40[1] = v41;
  v42 = v50;
  v40[2] = v51;
  v40[3] = v42;
  v40[4] = v28;
  v40[5] = v39;
  sub_1D5EFEE58();
  sub_1D5EFF4D0(v37, v40 + *(v43 + 64), &qword_1EC880C18, sub_1D5EFEF4C);
  sub_1D5EFF2E0(v38, v41);
  sub_1D5EFF2E0(v42, v28);
  sub_1D5EFF324(v42, v28);
  sub_1D5EFF324(v38, v41);
  sub_1D5EFF368(v36, &qword_1EC880C18, sub_1D5EFEF4C);
  sub_1D5EFF368(v37, &qword_1EC880C18, sub_1D5EFEF4C);
  sub_1D5EFF324(v42, v28);
  return sub_1D5EFF324(v38, v41);
}

uint64_t sub_1D5EFE608@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EFE84C(&v33);
  if (v34)
  {
    v10 = v37;
    v11 = v38;
    v24 = v36;
    v25 = v35;
    sub_1D5B63F14(&v33, v39);
    sub_1D5B68374(v39, v31);
    v28[0] = v25;
    v28[1] = v24;
    v29 = v10;
    v30 = v11;
    sub_1D5CED2F0(a1, v9);
    v12 = a2[2];
    v32[0] = a2[1];
    v32[1] = v12;
    v13 = a2[4];
    v15 = a2[1];
    v14 = a2[2];
    v32[2] = a2[3];
    v32[3] = v13;
    v27[0] = v15;
    v27[1] = v14;
    v16 = a2[4];
    v27[2] = a2[3];
    v27[3] = v16;
    type metadata accessor for DebugFormatBindingTreeItem();
    swift_allocObject();

    sub_1D5CB6F58(v32, &v26);
    sub_1D6DFD96C(v31, v28, v9, v27);
    type metadata accessor for DebugFormatBindingTree();
    sub_1D5EFF19C(&qword_1EC880C48, type metadata accessor for DebugFormatBindingTree);
    v17 = sub_1D7260F8C();
    v19 = v18;
    sub_1D5EFF19C(&qword_1EC880C70, type metadata accessor for DebugFormatBindingTreeItem);
    v20 = sub_1D7260F8C();
    v22 = v21;
    result = __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    result = sub_1D5EFF368(&v33, &qword_1EC880C60, sub_1D5EFF3D8);
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v22 = 0;
  }

  *a3 = v17;
  a3[1] = v19;
  a3[2] = v20;
  a3[3] = v22;
  return result;
}

uint64_t sub_1D5EFE84C@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E6158];
  sub_1D5EFF5D0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7270C10;
  *(v4 + 32) = 0x73676E69646E6962;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 48) = FormatContentSlotItemObject.Resolved.identifier.getter();
  *(v4 + 56) = v5;
  *&v17[0] = v4;
  sub_1D5EFF5D0(0, &qword_1EDF43BA0, v3, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  sub_1D7261F3C();

  v6 = *(v1 + 80);
  if (v6)
  {
    v7 = v6 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings;
    v8 = type metadata accessor for GroupLayoutBindingContext();
    v16[0] = *(v7 + *(v8 + 60));
    MEMORY[0x1EEE9AC00](v8, v9);
    sub_1D5EFF5D0(0, &unk_1EDF3C888, &type metadata for GroupLayoutBindingContext.OrderedItemBinding, MEMORY[0x1E69E62F8]);
    sub_1D5EFF46C();
    sub_1D5EFF620();

    sub_1D726237C();
  }

  else
  {

    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  sub_1D5EFF4D0(v17, &v14, &qword_1EDF34AB8, sub_1D5EFF46C);
  if (v15)
  {
    sub_1D5B63F14(&v14, v16);
    sub_1D5B68374(v16, a1);
    if (v6)
    {
      v10 = *(v6 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 96);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);

      v11 = sub_1D725AA4C();
      sub_1D5EC4CAC(v11, v12, v10, (a1 + 40));

      sub_1D5EFF368(v17, &qword_1EDF34AB8, sub_1D5EFF46C);
    }

    else
    {
      sub_1D5EFF368(v17, &qword_1EDF34AB8, sub_1D5EFF46C);
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
    }

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_1D5EFF368(v17, &qword_1EDF34AB8, sub_1D5EFF46C);
    result = sub_1D5EFF368(&v14, &qword_1EDF34AB8, sub_1D5EFF46C);
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_1D5EFEBC8()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D5EFF5D0(0, &qword_1EC880BE8, &type metadata for FormatContentSlot.Resolved, type metadata accessor for DebugFormatBindingTreeSection);
  sub_1D5EFED78();
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  sub_1D5EFF550(0, &qword_1EC880BF8, sub_1D5EFEE58, MEMORY[0x1E6981F40]);
  sub_1D5EFF0C0();
  sub_1D5EFF114();

  return sub_1D7260FFC();
}

unint64_t sub_1D5EFED78()
{
  result = qword_1EC880BF0;
  if (!qword_1EC880BF0)
  {
    sub_1D5EFF5D0(255, &qword_1EC880BE8, &type metadata for FormatContentSlot.Resolved, type metadata accessor for DebugFormatBindingTreeSection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880BF0);
  }

  return result;
}

uint64_t sub_1D5EFEE00@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  strcpy(a1, "square.dashed");
  *(a1 + 14) = -4864;
  *(a1 + 16) = 1953459283;
  *(a1 + 24) = 0xE400000000000000;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
}

void sub_1D5EFEE58()
{
  if (!qword_1EC880C00)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1D5EFF5D0(255, &qword_1EC880C08, &type metadata for DebugFormatBindingTreeSelectorView, MEMORY[0x1E69E6720]);
    sub_1D5EFF5D0(255, &qword_1EC880C10, &type metadata for DebugFormatBindingTreeOptionView, v0);
    sub_1D5EFF550(255, &qword_1EC880C18, sub_1D5EFEF4C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC880C00);
    }
  }
}

void sub_1D5EFEF4C()
{
  if (!qword_1EC880C20)
  {
    sub_1D5EFF550(255, &qword_1EDF04C68, type metadata accessor for FormatContentSlotItemObject.Resolved, MEMORY[0x1E69E62F8]);
    sub_1D5EFF5D0(255, &qword_1EC880C28, &type metadata for DebugFormatBindingTreeItemView, MEMORY[0x1E69E6720]);
    sub_1D5EFF038();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880C20);
    }
  }
}

unint64_t sub_1D5EFF038()
{
  result = qword_1EC880C30;
  if (!qword_1EC880C30)
  {
    sub_1D5EFF550(255, &qword_1EDF04C68, type metadata accessor for FormatContentSlotItemObject.Resolved, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C30);
  }

  return result;
}

unint64_t sub_1D5EFF0C0()
{
  result = qword_1EC880C38;
  if (!qword_1EC880C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C38);
  }

  return result;
}

unint64_t sub_1D5EFF114()
{
  result = qword_1EC880C40;
  if (!qword_1EC880C40)
  {
    sub_1D5EFF550(255, &qword_1EC880BF8, sub_1D5EFEE58, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C40);
  }

  return result;
}

uint64_t sub_1D5EFF19C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5EFF1F0()
{
  result = qword_1EC880C50;
  if (!qword_1EC880C50)
  {
    sub_1D5EFF5D0(255, &qword_1EC880C28, &type metadata for DebugFormatBindingTreeItemView, MEMORY[0x1E69E6720]);
    sub_1D5EFF28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C50);
  }

  return result;
}

unint64_t sub_1D5EFF28C()
{
  result = qword_1EC880C58;
  if (!qword_1EC880C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C58);
  }

  return result;
}

uint64_t sub_1D5EFF2E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D5EFF324(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D5EFF368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5EFF550(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D5EFF3D8()
{
  if (!qword_1EC880C68)
  {
    sub_1D5EFF46C();
    sub_1D5EFF5D0(255, &qword_1EDF38BC8, &type metadata for FeedItemAuxiliary, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC880C68);
    }
  }
}

unint64_t sub_1D5EFF46C()
{
  result = qword_1EDF41FC0;
  if (!qword_1EDF41FC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF41FC0);
  }

  return result;
}

uint64_t sub_1D5EFF4D0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5EFF550(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D5EFF550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5EFF5D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D5EFF620()
{
  result = qword_1EC880C78;
  if (!qword_1EC880C78)
  {
    sub_1D5EFF5D0(255, &unk_1EDF3C888, &type metadata for GroupLayoutBindingContext.OrderedItemBinding, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C78);
  }

  return result;
}

void sub_1D5EFF69C()
{
  if (!qword_1EC880C88)
  {
    sub_1D5EFF550(255, &qword_1EC880BF8, sub_1D5EFEE58, MEMORY[0x1E6981F40]);
    sub_1D5EFF0C0();
    sub_1D5EFF114();
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880C88);
    }
  }
}

uint64_t SVImageLayer.loadImage(from:with:queue:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[3];
  v11 = a2[4];
  v12 = __swift_project_boxed_opaque_existential_1(a2, v10);

  return sub_1D5EFFC2C(a1, v12, a3, a4, a5, v5, v10, v11);
}

uint64_t sub_1D5EFF7D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25[1] = a3;
  v12 = sub_1D7261ABC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = sub_1D7261B2C();
  v17 = *(v25[0] - 8);
  MEMORY[0x1EEE9AC00](v25[0], v18);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B68374(a5, v27);
  v21 = swift_allocObject();
  v21[2] = a4;
  sub_1D5B63F14(v27, (v21 + 3));
  v21[8] = a6;
  v21[9] = a7;
  v21[10] = a1;
  aBlock[4] = sub_1D5EFFDD0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_4;
  v22 = _Block_copy(aBlock);
  v23 = a1;

  sub_1D7261AEC();
  v25[2] = MEMORY[0x1E69E7CC0];
  sub_1D5B736C8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B736C8(&qword_1EDF1B560, sub_1D5B73908);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v20, v16, v22);
  _Block_release(v22);
  (*(v13 + 8))(v16, v12);
  (*(v17 + 8))(v20, v25[0]);
}

void sub_1D5EFFADC(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = [Strong identifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D726207C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v15 = sub_1D725EAEC();
    if (v14)
    {
      if (v12 == v15 && v14 == v16)
      {

LABEL_11:
        a3(a5);
        goto LABEL_12;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_12:
  }
}

uint64_t sub_1D5EFFC2C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v22[3] = a7;
  v22[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a2, a7);
  sub_1D725EAEC();
  v16 = sub_1D726203C();

  [a6 setIdentifier_];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D5B68374(v22, v21);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v17;
  sub_1D5B63F14(v21, (v18 + 4));
  v18[9] = a4;
  v18[10] = a5;
  v19 = a3;

  sub_1D725D0AC();

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t FeedPoolCachePolicy.cachePolicy.getter()
{
  result = *v0;
  if (*v0)
  {
    if (result == 1)
    {
      v2 = [objc_opt_self() cachedOnlyCachePolicy];
    }

    else
    {
      v2 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
    }

    return v2;
  }

  return result;
}

NewsFeed::FeedPoolCachePolicy_optional __swiftcall FeedPoolCachePolicy.init(rawValue:)(Swift::String rawValue)
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

uint64_t FeedPoolCachePolicy.rawValue.getter()
{
  v1 = 0x6E4F646568636163;
  if (*v0 != 1)
  {
    v1 = 0x6143726566657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D5EFFF20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F646568636163;
  v4 = 0xEA0000000000796CLL;
  if (v2 != 1)
  {
    v3 = 0x6143726566657270;
    v4 = 0xEC00000064656863;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6E4F646568636163;
  v8 = 0xEA0000000000796CLL;
  if (*a2 != 1)
  {
    v7 = 0x6143726566657270;
    v8 = 0xEC00000064656863;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

void sub_1D5F00048(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x6E4F646568636163;
  if (v2 != 1)
  {
    v5 = 0x6143726566657270;
    v4 = 0xEC00000064656863;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D5F000B4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F00164()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F00200()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FeedPoolServiceType.expandPool(cursor:)()
{
  type metadata accessor for FeedServiceError();
  swift_getWitnessTable();
  swift_allocError();
  *v0 = 7;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  return swift_willThrow();
}

unint64_t sub_1D5F00420()
{
  result = qword_1EC880C90;
  if (!qword_1EC880C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C90);
  }

  return result;
}

unint64_t sub_1D5F004C0()
{
  result = qword_1EDF147E8;
  if (!qword_1EDF147E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF147E8);
  }

  return result;
}

uint64_t sub_1D5F00524(void *a1)
{
  v3 = v1;
  sub_1D5F05478(0, &qword_1EC880D48, sub_1D5F05424, &type metadata for A18_V8.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F05424();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5F054E0(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5F0076C(uint64_t a1)
{
  v2 = sub_1D5F05424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F007A8(uint64_t a1)
{
  v2 = sub_1D5F05424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5F007E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5F04E38(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D5F00844()
{
  sub_1D5F04C5C();

  return sub_1D725A24C();
}

uint64_t sub_1D5F008C0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D5F05478(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D5F0097C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v124 = a2;
  v127 = a1;
  v110 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v140 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v128 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v122 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v120 = (&v109 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v125 = &v109 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for GroupLayoutContext();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v23);
  v123 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v109 - v27;
  v116 = &v109 - v27;
  v126 = type metadata accessor for GroupLayoutBindingContext();
  v117 = *(v126 - 1);
  MEMORY[0x1EEE9AC00](v126, v29);
  v31 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v5;
  v115 = *v5;
  v33 = *(v5 + 1);
  v34 = v5[16];
  v114 = type metadata accessor for GroupLayoutBindingContext;
  sub_1D5BE3ED8(v127, v31, type metadata accessor for GroupLayoutBindingContext);
  v35 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v124, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v112 = sub_1D725893C();
  v111 = v36;
  (*(v19 + 8))(v22, v18);
  v138 = &type metadata for A18_V8;
  v113 = sub_1D5ECE4D8();
  v139 = v113;
  LOBYTE(v136) = v32;
  *(&v136 + 1) = v33;
  v37 = v34;
  v137 = v34;
  type metadata accessor for GroupLayoutKey();
  v38 = swift_allocObject();
  sub_1D5BEE8A0(v33, v37);
  v129[0] = sub_1D7264C5C();
  v129[1] = v39;
  v134 = 95;
  v135 = 0xE100000000000000;
  v132 = 45;
  v133 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;

  *(v38 + 16) = v40;
  *(v38 + 24) = v42;
  v43 = (v38 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v44 = v111;
  *v43 = v112;
  v43[1] = v44;
  sub_1D5B68374(&v136, v38 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v45 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA96C(v31, v38 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v114);
  (*(v117 + 56))(v38 + v45, 0, 1, v126);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA96C(v116, v38 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v47 = *(v118 + 56);
  v118 = v38;
  v47(v38 + v46, 0, 1, v119);
  __swift_destroy_boxed_opaque_existential_1(&v136);
  v138 = &type metadata for A18_V8;
  v139 = v113;
  LOBYTE(v136) = v115;
  *(&v136 + 1) = v33;
  v137 = v37;
  sub_1D5BE3ED8(v124, v123, type metadata accessor for GroupLayoutContext);
  sub_1D5BD3984(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v124 = v48;
  inited = swift_initStackObject();
  v50 = MEMORY[0x1E69E7CC0];
  v119 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v51 = (inited + 16);
  swift_beginAccess();
  sub_1D5BEE8A0(v33, v37);
  v52 = sub_1D5C0F8FC(0, 1, 1, v50);
  v54 = *(v52 + 16);
  v53 = *(v52 + 24);
  v55 = (v54 + 1);
  if (v54 >= v53 >> 1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    *(v52 + 16) = v55;
    v56 = v52 + 16 * v54;
    *(v56 + 32) = sub_1D63106DC;
    *(v56 + 40) = 0;
    *v51 = v52;
    swift_endAccess();
    v57 = v126[14];
    v54 = v127;
    v58 = *&v127[v57];
    if (v58[2] && (v59 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v60 & 1) != 0) && (v58 = *&v58[7][8 * v59], v61 = , v35 = sub_1D5C14D80(v61), , v35))
    {
      v117 = v57;
      v62 = *(v35 + 16);
      if (v62)
      {
        v50 = 0;
        v55 = MEMORY[0x1E69E7CC0];
        v51 = v120;
        v52 = v125;
        while (1)
        {
          v53 = *(v35 + 16);
          if (v50 >= v53)
          {
            break;
          }

          v63 = (*(v140 + 80) + 32) & ~*(v140 + 80);
          v54 = *(v140 + 72);
          sub_1D5BE3ED8(v35 + v63 + v54 * v50, v52, type metadata accessor for FeedHeadline);
          if ((*(v52 + 32) & 4) != 0)
          {
            sub_1D5BDA96C(v52, v51, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v129[0] = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v55 + 2) + 1, 1);
              v51 = v120;
              v55 = v129[0];
            }

            v66 = *(v55 + 2);
            v65 = *(v55 + 3);
            if (v66 >= v65 >> 1)
            {
              sub_1D5C0F91C(v65 > 1, v66 + 1, 1);
              v51 = v120;
              v55 = v129[0];
            }

            *(v55 + 2) = v66 + 1;
            sub_1D5BDA96C(v51, &v55[v63 + v66 * v54], type metadata accessor for FeedHeadline);
            v52 = v125;
          }

          else
          {
            sub_1D5BE78CC(v52, type metadata accessor for FeedHeadline);
          }

          if (v62 == ++v50)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

      v55 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v54 = v127;
      if ((*v127 & 1) == 0)
      {

        v70 = sub_1D62F071C(v55);

        v55 = v70;
      }

      v50 = MEMORY[0x1E69E7CC0];
      v71 = *(v54 + v126[18]);
      v72 = *(v54 + v126[19]);
      if (__OFSUB__(v71, v72))
      {
        goto LABEL_71;
      }

      v73 = sub_1D5C0FAD4(v55, v71 - v72);
      v74 = sub_1D5C11E10(&unk_1F50F5F70, v73, v35);

      if (v74)
      {
        v125 = v74;
      }

      else
      {
        v75 = sub_1D5C11E10(&unk_1F50F5F70, v55, v35);

        if (!v75)
        {
          v129[0] = &unk_1F50F5F70;
          v4 = v121;
          sub_1D5E239F4(v129);
          if (v4)
          {
            goto LABEL_75;
          }

          if (!*(v129[0] + 2))
          {
            goto LABEL_73;
          }

          v105 = *(v129[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v106, "FeedHeadline");
          v106[13] = 0;
          *(v106 + 7) = -5120;
          *(v106 + 2) = 0;
          *(v106 + 3) = 0;
          *(v106 + 4) = 4;
          *(v106 + 5) = v105;
          *(v106 + 6) = 0;
          *(v106 + 7) = 0;
          v106[64] = 0;
          swift_willThrow();
          goto LABEL_64;
        }

        v125 = v75;
      }

      strcpy(v129, "FeedHeadline");
      BYTE5(v129[1]) = 0;
      HIWORD(v129[1]) = -5120;
      v130 = 0;
      v131 = 0;

      v77 = sub_1D5C107C4(v76);

      sub_1D5BDACA8(v129, v77);
      swift_setDeallocating();
    }

    else
    {
      if (qword_1F50F5F90)
      {
        v129[0] = &unk_1F50F5F70;
        v4 = v121;
        sub_1D5E239F4(v129);
        if (v4)
        {
          goto LABEL_75;
        }

        v67 = *(v129[0] + 2);
        if (v67)
        {
          v68 = *(v129[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_47:

          sub_1D5BE78CC(v123, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v136);
        }

        __break(1u);
LABEL_69:
        v55 = sub_1D5C0F8FC((v67 > 1), v57, 1, v55);
        goto LABEL_31;
      }

      v117 = v57;

      v125 = MEMORY[0x1E69E7CC0];
    }

    v35 = v121;
    v78 = swift_initStackObject();
    v124 = v78;
    *(v78 + 16) = v50;
    v58 = (v78 + 16);
    swift_beginAccess();
    v55 = sub_1D5C0F8FC(0, 1, 1, v50);
    v52 = *(v55 + 2);
    v67 = *(v55 + 3);
    v57 = v52 + 1;
    if (v52 >= v67 >> 1)
    {
      goto LABEL_69;
    }

LABEL_31:
    *(v55 + 2) = v57;
    v79 = &v55[16 * v52];
    *(v79 + 4) = sub_1D63106DC;
    *(v79 + 5) = 0;
    *v58 = v55;
    swift_endAccess();
    v80 = *(v54 + v117);
    if (!*(v80 + 16))
    {
      break;
    }

    v81 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v82 & 1) == 0)
    {
      break;
    }

    v51 = *(*(v80 + 56) + 8 * v81);

    v84 = sub_1D5C14D80(v83);

    if (!v84)
    {
      break;
    }

    v35 = *(v84 + 16);
    if (!v35)
    {
      v55 = MEMORY[0x1E69E7CC0];
LABEL_50:
      v94 = v127;
      if ((*v127 & 1) == 0)
      {

        v95 = sub_1D62F071C(v55);

        v55 = v95;
      }

      v96 = *&v94[v126[18]];
      v97 = *&v94[v126[19]];
      if (__OFSUB__(v96, v97))
      {
        goto LABEL_72;
      }

      v98 = sub_1D5C0FAD4(v55, v96 - v97);
      v93 = sub_1D5C11E10(&unk_1F50F5F98, v98, v84);

      if (v93)
      {

LABEL_56:
        strcpy(v129, "FeedHeadline");
        BYTE5(v129[1]) = 0;
        HIWORD(v129[1]) = -5120;
        v130 = 0;
        v131 = 0;

        v100 = sub_1D5C107C4(v99);

        sub_1D5BDACA8(v129, v100);
        swift_setDeallocating();

        goto LABEL_57;
      }

      v93 = sub_1D5C11E10(&unk_1F50F5F98, v55, v84);

      if (v93)
      {
        goto LABEL_56;
      }

      v129[0] = &unk_1F50F5F98;
      v4 = v121;
      sub_1D5E239F4(v129);
      if (v4)
      {
        goto LABEL_75;
      }

      if (!*(v129[0] + 2))
      {
        goto LABEL_74;
      }

      v107 = *(v129[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v108, "FeedHeadline");
      v108[13] = 0;
      *(v108 + 7) = -5120;
      *(v108 + 2) = 0;
      *(v108 + 3) = 0;
      *(v108 + 4) = 0;
      *(v108 + 5) = v107;
      *(v108 + 6) = 0;
      *(v108 + 7) = 0;
      v108[64] = 0;
      swift_willThrow();
LABEL_64:
      swift_setDeallocating();
      goto LABEL_47;
    }

    v85 = 0;
    v55 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v53 = *(v84 + 16);
      if (v85 >= v53)
      {
        break;
      }

      v50 = (*(v140 + 80) + 32) & ~*(v140 + 80);
      v86 = *(v140 + 72);
      v51 = type metadata accessor for FeedHeadline;
      v87 = v122;
      sub_1D5BE3ED8(v84 + v50 + v86 * v85, v122, type metadata accessor for FeedHeadline);
      sub_1D5BDA96C(v87, v128, type metadata accessor for FeedHeadline);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v129[0] = v55;
      if ((v88 & 1) == 0)
      {
        v51 = v129;
        sub_1D5C0F91C(0, *(v55 + 2) + 1, 1);
        v55 = v129[0];
      }

      v52 = *(v55 + 2);
      v89 = *(v55 + 3);
      v54 = v52 + 1;
      if (v52 >= v89 >> 1)
      {
        v51 = v129;
        sub_1D5C0F91C(v89 > 1, v52 + 1, 1);
        v55 = v129[0];
      }

      ++v85;
      *(v55 + 2) = v54;
      sub_1D5BDA96C(v128, &v55[v50 + v52 * v86], type metadata accessor for FeedHeadline);
      if (v35 == v85)
      {
        goto LABEL_50;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v52 = sub_1D5C0F8FC((v53 > 1), v55, 1, v52);
  }

  if (!qword_1F50F5FB8)
  {

    v93 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v129[0] = v125;
    sub_1D5C122E4(v93);
    v101 = v129[0];
    v102 = type metadata accessor for A18_V8.Bound();
    v103 = v110;
    v110[3] = v102;
    v103[4] = sub_1D5F054E0(&qword_1EC880CA8, type metadata accessor for A18_V8.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
    *boxed_opaque_existential_1 = v118;
    sub_1D5B63F14(&v136, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA96C(v123, boxed_opaque_existential_1 + *(v102 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v102 + 28)) = v101;
    return result;
  }

  v129[0] = &unk_1F50F5F98;
  v4 = v35;
  sub_1D5E239F4(v129);
  if (!v35)
  {

    if (*(v129[0] + 2))
    {
      v90 = *(v129[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v91, "FeedHeadline");
      v91[13] = 0;
      *(v91 + 7) = -5120;
      *(v91 + 2) = 0;
      *(v91 + 3) = 0;
      *(v91 + 4) = 0;
      *(v91 + 5) = v90;
      *(v91 + 6) = 0;
      *(v91 + 7) = 0;
      v91[64] = 0;
      swift_willThrow();
      goto LABEL_47;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

LABEL_75:

  __break(1u);
  return result;
}

uint64_t sub_1D5F01AC4@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  *&v38 = sub_1D725A36C();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A18_V8.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v45);
  sub_1D5B68374(v12 + 56, v44);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v45, v15 + 16);
  sub_1D5B63F14(v44, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v43[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v43, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  __swift_destroy_boxed_opaque_existential_1(v15 + 56);
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v44);
  sub_1D5B68374(v16 + 56, v43);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v44, v18 + 16);
  sub_1D5B63F14(v43, v18 + 56);
  *(v18 + 96) = v17;
  v42[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v42, v45);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v45, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v45[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v45[0];
  v39 = v2;
  v41[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D5F04BF8, v41);

  if (*(v22 + 16) < 4uLL)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v23 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v22, v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), 1, 9uLL);
    v24 = *MEMORY[0x1E69D7130];
    v25 = sub_1D7259D1C();
    (*(*(v25 - 8) + 104))(v6, v24, v25);
    v26 = (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v38);
    MEMORY[0x1EEE9AC00](v26, v27);
    sub_1D5F04D04(0, &qword_1EC880CC8, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    sub_1D725A4CC();

    sub_1D725A4DC();
    v28 = v46;
    sub_1D5BD3984(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD48FC();
    v29 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
    v37 = v45[1];
    v38 = v45[0];
    *&v45[0] = v22;
    *&v44[0] = v28;
    MEMORY[0x1EEE9AC00](v29, v30);

    v31 = sub_1D725C00C();

    v32 = v40;
    *v40 = 0;
    v33 = v38;
    *(v32 + 24) = v37;
    *(v32 + 8) = v33;
    *&v45[0] = v31;
    sub_1D5B49714(0, &qword_1EDF1B4C8);
    sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
    sub_1D5BDEFF8();
    v34 = sub_1D72623BC();

    v36 = MEMORY[0x1E69E7CC0];
    *(v32 + 5) = v34;
    *(v32 + 6) = v36;
  }

  return result;
}

uint64_t sub_1D5F020A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D5F02174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-v10];
  v18 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 18;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v16 = a2;
  v17 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D5F04D04(0, &qword_1EC880CE8, MEMORY[0x1E69D7150]);
  sub_1D5F04CC0(&qword_1EC880CF0, &qword_1EC880CE8, v13);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D5F02364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v24 = sub_1D5F04C08;
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v23 - v8);
  v29 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69D6F50], v10);
  *v9 = v11;
  v13 = *(v6 + 104);
  v13(v9, *MEMORY[0x1E69D73C0], v5);
  v14 = MEMORY[0x1E69D6F38];
  sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
  v23 = v15;
  sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v14);
  sub_1D7259A9C();
  v16 = *(v6 + 8);
  v16(v9, v5);
  v29 = a1;
  v13(v9, *MEMORY[0x1E69D7460], v5);
  sub_1D5F04D88();
  sub_1D5F05478(0, &qword_1EC880D10, v24, &type metadata for A18_V8.Layout, MEMORY[0x1E69D70D8]);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7273AE0;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x1E69D7098], v18);
  v27 = v25;
  v28 = v26;
  sub_1D72599EC();

  return (v16)(v9, v5);
}

uint64_t sub_1D5F026D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v34 = a1;
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v31 - v8);
  v40 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v33 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v31[2] = v6 + 104;
  v32 = v11;
  (v11)(v9);
  sub_1D5F04D88();
  sub_1D5F05478(0, &qword_1EC880D10, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D70D8]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  v17 = v16 + v15;
  sub_1D5ED83AC();
  v19 = (v17 + *(v18 + 48));
  v20 = *MEMORY[0x1E69D7238];
  v21 = sub_1D725A0DC();
  (*(*(v21 - 8) + 104))(v17, v20, v21);
  *v19 = 0x6469737468676972;
  v19[1] = 0xE900000000000065;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7020], v13);
  v39 = v36;
  v22 = MEMORY[0x1E69D6F38];
  sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
  v31[1] = sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v22);
  sub_1D7259A2C();

  v23 = *(v6 + 8);
  v31[0] = v5;
  v23(v9, v5);
  v24 = v34;
  v40 = v34;
  v25 = swift_allocObject();
  *(v25 + 16) = 6;
  *v9 = v25;
  v26 = v33;
  v27 = v32;
  v32(v9, v33, v5);
  v38 = v35;
  sub_1D7259A2C();
  v28 = v31[0];
  v23(v9, v31[0]);
  v40 = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = 6;
  *v9 = v29;
  v27(v9, v26, v28);
  v37 = v36;
  sub_1D7259A2C();
  return (v23)(v9, v28);
}

uint64_t sub_1D5F02B94(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = sub_1D725A36C();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v44 - v22;
  v55 = a1;
  KeyPath = swift_getKeyPath();
  v24 = *MEMORY[0x1E69D7460];
  v53 = v20;
  (*(v20 + 104))(v23, v24, v19);
  sub_1D5F04D88();
  sub_1D5F05478(0, &qword_1EC880D10, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D70D8]);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7273AE0;
  (*(v27 + 104))(v29 + v28, *MEMORY[0x1E69D7098], v26);
  if (!*(v54 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v45 = v19;
  sub_1D5BE3ED8(v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v17, type metadata accessor for HeadlineViewLayout.Context);
  v30 = v10[5];
  v31 = *MEMORY[0x1E69D7348];
  v32 = sub_1D725A34C();
  v33 = *(v32 - 8);
  (*(v33 + 104))(&v13[v30], v31, v32);
  (*(v33 + 56))(&v13[v30], 0, 1, v32);
  v34 = MEMORY[0x1E69DDC70];
  *v13 = 1;
  *&v13[v10[6]] = 0;
  v35 = *v34;
  *&v13[v10[7]] = v35;
  v36 = qword_1EDF386E8;
  v37 = v35;
  if (v36 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  *(&v44 - 4) = v17;
  *(&v44 - 3) = v13;
  v43 = v9;
  (*(v48 + 104))(v50, *MEMORY[0x1E69D7378], v49, v40);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v51 + 8))(v9, v52);
  sub_1D5BE78CC(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE78CC(v17, type metadata accessor for HeadlineViewLayout.Context);
  v41 = MEMORY[0x1E69D6F38];
  sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
  sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v41);
  v43 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v53 + 8))(v23, v45);
}

void sub_1D5F03244(uint64_t a1, uint64_t a2)
{
  v126 = a1;
  sub_1D5F050D8();
  v119 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BD3984(0, qword_1EDF2D588, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v98 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v96 - v16;
  v118 = sub_1D725A36C();
  v18 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v19);
  v117 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1D725A19C();
  v21 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v22);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v115, v25);
  v27 = (&v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v130 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v101 = (&v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32, v33);
  v129 = (&v96 - v34);
  v128 = type metadata accessor for HeadlineViewLayout.Context(0);
  MEMORY[0x1EEE9AC00](v128, v35);
  v97 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v41 = &v96 - v40;
  v42 = *(a2 + 16);
  if (v42)
  {
    v43 = *MEMORY[0x1E69DDCE0];
    v44 = *(MEMORY[0x1E69DDCE0] + 8);
    v45 = *(MEMORY[0x1E69DDCE0] + 16);
    v46 = *(MEMORY[0x1E69DDCE0] + 24);
    v112 = *MEMORY[0x1E69DDC70];
    v47 = a2 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v111 = *(v39 + 72);
    v110 = v47 + v111 * (v42 - 1);
    v109 = v41 + 40;
    v108 = *MEMORY[0x1E69D73D8];
    v125 = (v29 + 104);
    v107 = *MEMORY[0x1E69D7348];
    v106 = *MEMORY[0x1E69D7378];
    v105 = (v18 + 104);
    v104 = (v21 + 8);
    v124 = (v29 + 8);
    v103 = (v39 + 56);
    v100 = *MEMORY[0x1E69D6F50];
    v99 = *MEMORY[0x1E69D73C0];
    v120 = v6;
    v114 = v24;
    v113 = v17;
    v96 = v27;
    v131 = &v96 - v40;
    v102 = (v39 + 48);
    do
    {
      v127 = v42;
      v49 = v13;
      sub_1D5BE3ED8(v47, v41, type metadata accessor for HeadlineViewLayout.Context);
      v132 = v126;
      swift_getKeyPath();
      v50 = swift_allocObject();
      *(v50 + 16) = 0x4060E00000000000;
      v52 = v129;
      v51 = v130;
      *v129 = v50;
      v123 = *v125;
      v123(v52, v108, v51);
      v53 = v115;
      v54 = *(v115 + 20);
      v55 = sub_1D725A34C();
      v56 = *(v55 - 8);
      (*(v56 + 104))(v27 + v54, v107, v55);
      (*(v56 + 56))(v27 + v54, 0, 1, v55);
      *v27 = 0;
      *(v27 + *(v53 + 24)) = 0;
      v57 = v112;
      *(v27 + *(v53 + 28)) = v112;
      v58 = *&v109[*(v128 + 20)];
      v59 = v57;
      if ([v58 hasThumbnail])
      {
        if (qword_1EDF386E8 != -1)
        {
          swift_once();
        }

        sub_1D725972C();

        v62 = MEMORY[0x1EEE9AC00](v60, v61);
        *(&v96 - 8) = v43;
        *(&v96 - 7) = v44;
        *(&v96 - 6) = v45;
        *(&v96 - 5) = v46;
        *(&v96 - 4) = v27;
        *(&v96 - 3) = v24;
        v63 = v131;
        v95 = v131;
        (*v105)(v117, v106, v118, v62);
        sub_1D5BED904();
        swift_allocObject();
      }

      else
      {
        if (qword_1EDF386E8 != -1)
        {
          swift_once();
        }

        sub_1D725972C();

        v66 = MEMORY[0x1EEE9AC00](v64, v65);
        *(&v96 - 8) = v43;
        *(&v96 - 7) = v44;
        *(&v96 - 6) = v45;
        *(&v96 - 5) = v46;
        v63 = v131;
        *(&v96 - 4) = v24;
        *(&v96 - 3) = v63;
        v95 = v27;
        (*v105)(v117, v106, v118, v66);
        sub_1D5BED904();
        swift_allocObject();
      }

      sub_1D725A4CC();
      v13 = v49;
      (*v104)(v24, v116);
      sub_1D5BE78CC(v27, type metadata accessor for HeadlineViewLayout.Options);
      v67 = MEMORY[0x1E69D6F38];
      sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
      v69 = v68;
      v70 = sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v67);
      v95 = sub_1D5BE8850();
      v71 = v129;
      v121 = v70;
      v122 = v69;
      sub_1D7259A4C();

      v72 = *v124;
      (*v124)(v71, v130);
      v73 = v113;
      sub_1D5BE3ED8(v63, v113, type metadata accessor for HeadlineViewLayout.Context);
      v74 = *v103;
      v75 = v128;
      (*v103)(v73, 0, 1, v128);
      sub_1D5BE3ED8(v110, v13, type metadata accessor for HeadlineViewLayout.Context);
      v74(v13, 0, 1, v75);
      v48 = v120;
      v76 = *(v119 + 48);
      sub_1D5F05184(v73, v120);
      sub_1D5F05184(v13, v48 + v76);
      v77 = *v102;
      if ((*v102)(v48, 1, v75) == 1)
      {
        sub_1D5F05218(v13);
        sub_1D5F05218(v73);
        if (v77(v48 + v76, 1, v75) != 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v78 = v73;
        v79 = v13;
        v80 = v98;
        sub_1D5F05184(v48, v98);
        if (v77(v48 + v76, 1, v75) == 1)
        {
          sub_1D5F05218(v79);
          sub_1D5F05218(v78);
          v81 = v80;
          v13 = v79;
          sub_1D5BE78CC(v81, type metadata accessor for HeadlineViewLayout.Context);
          v27 = v96;
LABEL_18:
          sub_1D5BE78CC(v48, sub_1D5F050D8);
LABEL_19:
          v132 = v126;
          v82 = sub_1D725994C();
          v83 = swift_allocBox();
          (*(*(v82 - 8) + 104))(v84, v100, v82);
          v85 = v101;
          *v101 = v83;
          v86 = v130;
          v123(v85, v99, v130);
          sub_1D7259A9C();
          v72(v85, v86);
          goto LABEL_5;
        }

        v87 = v48 + v76;
        v88 = v97;
        sub_1D5BDA96C(v87, v97, type metadata accessor for HeadlineViewLayout.Context);
        v89 = *(v75 + 20);
        v90 = *(v80 + v89);
        v91 = *(v80 + v89 + 8);
        v92 = (v88 + v89);
        v93 = v80;
        if (v90 != *v92 || v91 != v92[1])
        {
          v94 = sub_1D72646CC();
          v13 = v79;
          sub_1D5F05218(v79);
          sub_1D5F05218(v78);
          sub_1D5BE78CC(v97, type metadata accessor for HeadlineViewLayout.Context);
          sub_1D5BE78CC(v93, type metadata accessor for HeadlineViewLayout.Context);
          sub_1D5F05218(v120);
          v27 = v96;
          if (v94)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        v13 = v79;
        sub_1D5F05218(v79);
        sub_1D5F05218(v78);
        sub_1D5BE78CC(v97, type metadata accessor for HeadlineViewLayout.Context);
        sub_1D5BE78CC(v93, type metadata accessor for HeadlineViewLayout.Context);
        v48 = v120;
        v27 = v96;
      }

      sub_1D5F05218(v48);
LABEL_5:
      sub_1D5BE78CC(v131, type metadata accessor for HeadlineViewLayout.Context);
      v24 = v114;
      v47 += v111;
      v42 = v127 - 1;
      v41 = v131;
    }

    while (v127 != 1);
  }
}

uint64_t sub_1D5F03F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F05478(0, &qword_1EC880CE0, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v65 - v12);
  v89 = a1;
  v93 = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  v15 = *MEMORY[0x1E69D73D8];
  v91 = v9;
  v92 = v10;
  v16 = *(v10 + 104);
  v87 = v15;
  v88 = v10 + 104;
  v86 = v16;
  result = (v16)(v13);
  v85 = *(a2 + 16);
  if (v85 < 5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v19 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  v83 = v19;
  v81 = v20;
  v21 = v19 + 4 * v20;
  v22 = v4[5];
  v23 = *MEMORY[0x1E69D7348];
  v24 = sub_1D725A34C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v82 = v23;
  v78 = v26;
  v79 = v25 + 104;
  v26(&v7[v22], v23, v24);
  v27 = *(v25 + 56);
  v84 = v24;
  v80 = v25 + 56;
  v77 = v27;
  v27(&v7[v22], 0, 1, v24);
  v28 = *MEMORY[0x1E69DDC70];
  *v7 = 0;
  *&v7[v4[6]] = 0;
  v76 = v4;
  *&v7[v4[7]] = v28;
  v29 = *MEMORY[0x1E69DDCE0];
  v30 = *(MEMORY[0x1E69DDCE0] + 8);
  v31 = *(MEMORY[0x1E69DDCE0] + 16);
  v32 = *(MEMORY[0x1E69DDCE0] + 24);
  v72 = v28;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v21, v7, v29, v30, v31, v32);
  sub_1D5BE78CC(v7, type metadata accessor for HeadlineViewLayout.Options);
  v33 = MEMORY[0x1E69D6F38];
  sub_1D5F04D04(0, &qword_1EC880CF8, MEMORY[0x1E69D6F38]);
  v90 = v34;
  v35 = sub_1D5F04CC0(&qword_1EC880D00, &qword_1EC880CF8, v33);
  v74 = sub_1D5BE8850();
  sub_1D7259A4C();

  v36 = v91;
  v38 = v92 + 8;
  v37 = *(v92 + 8);
  v37(v13, v91);
  v39 = v89;
  v93 = v89;
  v40 = sub_1D725994C();
  v41 = swift_allocBox();
  v42 = *(v40 - 8);
  v43 = *(v42 + 104);
  v70 = *MEMORY[0x1E69D6F50];
  v71 = v40;
  v69 = v43;
  v68 = v42 + 104;
  v43(v44);
  *v13 = v41;
  v67 = *MEMORY[0x1E69D73C0];
  v45 = v86;
  v86(v13);
  v75 = v35;
  sub_1D7259A9C();
  v92 = v38;
  v73 = v37;
  v37(v13, v36);
  v93 = v39;
  swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = 0x4060E00000000000;
  *v13 = v46;
  result = v45(v13, v87, v36);
  if (v85 == 5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v47 = 5 * v81;
  v48 = v76;
  v49 = v76[5];
  v50 = v84;
  v78(&v7[v49], v82, v84);
  v77(&v7[v49], 0, 1, v50);
  *v7 = 0;
  *&v7[v48[6]] = 0;
  v51 = v72;
  *&v7[v48[7]] = v72;
  v66 = v51;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v83 + v47, v7, v29, v30, v31, v32);
  v72 = v7;
  sub_1D5BE78CC(v7, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D7259A4C();

  v52 = v91;
  v53 = v73;
  v73(v13, v91);
  v54 = v89;
  v93 = v89;
  v55 = v71;
  v56 = swift_allocBox();
  v69(v57, v70, v55);
  *v13 = v56;
  v58 = v86;
  (v86)(v13, v67, v52);
  sub_1D7259A9C();
  v53(v13, v52);
  v93 = v54;
  swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = 0x4060E00000000000;
  *v13 = v59;
  result = v58(v13, v87, v52);
  if (v85 >= 7)
  {
    v60 = v84;
    v61 = v83 + 6 * v81;
    v62 = v76;
    v63 = v76[5];
    v64 = v72;
    v78(&v72[v63], v82, v84);
    v77(&v64[v63], 0, 1, v60);
    *v64 = 0;
    *&v64[v62[6]] = 0;
    *&v64[v62[7]] = v66;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v61, v64, v29, v30, v31, v32);
    sub_1D5BE78CC(v64, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D7259A4C();

    return (v73)(v13, v91);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D5F0484C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V8.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D5F04960(uint64_t a1)
{
  *(a1 + 8) = sub_1D5F04990();
  result = sub_1D5F049E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5F04990()
{
  result = qword_1EC880C98;
  if (!qword_1EC880C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880C98);
  }

  return result;
}

unint64_t sub_1D5F049E4()
{
  result = qword_1EC880CA0;
  if (!qword_1EC880CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880CA0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V8.Bound()
{
  result = qword_1EC880CB0;
  if (!qword_1EC880CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5F04AAC()
{
  type metadata accessor for GroupLayoutKey();
  if (v0 <= 0x3F)
  {
    sub_1D5B49474(319, &qword_1EDF3FA20);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GroupLayoutContext();
      if (v2 <= 0x3F)
      {
        sub_1D5BD3984(319, &qword_1EDF1B460, type metadata accessor for FeedHeadline, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D5F04BA0(uint64_t a1)
{
  result = sub_1D5F054E0(&qword_1EC880CC0, type metadata accessor for A18_V8.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F04C08()
{
  result = qword_1EC880CD0;
  if (!qword_1EC880CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880CD0);
  }

  return result;
}

unint64_t sub_1D5F04C5C()
{
  result = qword_1EC880CD8;
  if (!qword_1EC880CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880CD8);
  }

  return result;
}

uint64_t sub_1D5F04CC0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D5F04D04(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5F04D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V8.Layout;
    v8[1] = &type metadata for A18_V8.Layout.Attributes;
    v8[2] = sub_1D5F04C08();
    v8[3] = sub_1D5F04C5C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5F04D88()
{
  if (!qword_1EC880D08)
  {
    sub_1D5F05478(255, &qword_1EC880D10, sub_1D5F04C08, &type metadata for A18_V8.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880D08);
    }
  }
}

uint64_t sub_1D5F04E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D5F05478(0, &qword_1EC880D38, sub_1D5F05424, &type metadata for A18_V8.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F05424();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5F054E0(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

void sub_1D5F050D8()
{
  if (!qword_1EDF2D580)
  {
    sub_1D5BD3984(255, qword_1EDF2D588, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2D580);
    }
  }
}

uint64_t sub_1D5F05184(uint64_t a1, uint64_t a2)
{
  sub_1D5BD3984(0, qword_1EDF2D588, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F05218(uint64_t a1)
{
  sub_1D5BD3984(0, qword_1EDF2D588, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5F052C8()
{
  result = qword_1EC880D18;
  if (!qword_1EC880D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D18);
  }

  return result;
}

unint64_t sub_1D5F05320()
{
  result = qword_1EC880D20;
  if (!qword_1EC880D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D20);
  }

  return result;
}

unint64_t sub_1D5F05378()
{
  result = qword_1EC880D28;
  if (!qword_1EC880D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D28);
  }

  return result;
}

unint64_t sub_1D5F053D0()
{
  result = qword_1EC880D30;
  if (!qword_1EC880D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D30);
  }

  return result;
}

unint64_t sub_1D5F05424()
{
  result = qword_1EC880D40;
  if (!qword_1EC880D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D40);
  }

  return result;
}

void sub_1D5F05478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D5F054E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5F0553C()
{
  result = qword_1EC880D50;
  if (!qword_1EC880D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D50);
  }

  return result;
}

unint64_t sub_1D5F05594()
{
  result = qword_1EC880D58;
  if (!qword_1EC880D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D58);
  }

  return result;
}

unint64_t sub_1D5F055EC()
{
  result = qword_1EC880D60;
  if (!qword_1EC880D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880D60);
  }

  return result;
}

uint64_t sub_1D5F05650(uint64_t a1, uint64_t a2)
{
  v2[203] = a2;
  v2[202] = a1;
  v3 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v2[204] = v3;
  v2[205] = *(v3 - 8);
  v2[206] = swift_task_alloc();
  type metadata accessor for GroupLayoutBindingContext();
  v2[207] = swift_task_alloc();
  v4 = type metadata accessor for DebugFormatWorkspaceGroup();
  v2[208] = v4;
  v2[209] = *(v4 - 8);
  v2[210] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5F0579C, 0, 0);
}

uint64_t sub_1D5F0579C()
{
  v3 = v0 + 1584;
  v4 = *(v0 + 1616);
  *(v0 + 1584) = MEMORY[0x1E69E7CC0];
  type metadata accessor for DebugGroupLayoutKey();
  v5 = sub_1D62EF50C();
  sub_1D69856DC(v5);
  v6 = [*(v4 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_cloudContext) subscriptionController];
  if (!v6)
  {
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
    return MEMORY[0x1EEE6DA10](v6, v7, v8, v9, v10);
  }

  v11 = v6;
  v12 = [v6 orderedCachedSubscribedTags];

  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    sub_1D5B65AF4();
    v13 = sub_1D726267C();
  }

  v14 = *(v0 + 1624);
  sub_1D69856DC(v13);
  v15 = *(v14 + *(type metadata accessor for DebugFormatWorkspace() + 36));
  *(v0 + 1688) = v15;
  v16 = *(v15 + 16);
  *(v0 + 1696) = v16;
  if (v16)
  {
    v17 = *(v0 + 1680);
    v18 = *(v0 + 1672);
    *(v0 + 812) = *(*(v0 + 1664) + 24);
    v19 = *(v0 + 1584);
    v20 = *(v18 + 80);
    *(v0 + 964) = v20;
    *(v0 + 1712) = v19;
    *(v0 + 1704) = 0;
    if (!*(v15 + 16))
    {
      goto LABEL_206;
    }

    sub_1D5F0B788(v15 + ((v20 + 32) & ~v20), v17, type metadata accessor for DebugFormatWorkspaceGroup);

    sub_1D5F0B728(v17, type metadata accessor for DebugFormatWorkspaceGroup);
    sub_1D725B77C();

    v21 = *(v0 + 1592);
    *(v0 + 1720) = v21;
    v22 = swift_task_alloc();
    *(v0 + 1728) = v22;
    v23 = type metadata accessor for DebugFormatBindingResult();
    v9 = sub_1D5BA6EF4();
    *v22 = v0;
    v22[1] = sub_1D5F075A8;
    v10 = MEMORY[0x1E69E7288];
    v6 = (v0 + 1600);
    v7 = v21;
    v8 = v23;

    return MEMORY[0x1EEE6DA10](v6, v7, v8, v9, v10);
  }

  v24 = v0 + 232;
  v25 = (v0 + 1608);

  sub_1D725B31C();

  v27 = *(v0 + 608);
  v26 = *(v0 + 624);
  v28 = *(v0 + 592);
  *(v0 + 392) = v27;
  *(v0 + 408) = v26;
  v29 = *(v0 + 624);
  *(v0 + 424) = *(v0 + 640);
  v31 = *(v0 + 544);
  v30 = *(v0 + 560);
  v32 = *(v0 + 528);
  *(v0 + 328) = v31;
  *(v0 + 344) = v30;
  v33 = *(v0 + 560);
  v35 = *(v0 + 576);
  v34 = *(v0 + 592);
  *(v0 + 360) = v35;
  *(v0 + 376) = v34;
  v37 = *(v0 + 480);
  v36 = *(v0 + 496);
  v38 = *(v0 + 464);
  *(v0 + 264) = v37;
  *(v0 + 280) = v36;
  v39 = *(v0 + 496);
  v41 = *(v0 + 512);
  v40 = *(v0 + 528);
  *(v0 + 296) = v41;
  *(v0 + 312) = v40;
  v42 = *(v0 + 464);
  v43 = *(v0 + 448);
  *(v0 + 232) = v43;
  *(v0 + 248) = v42;
  *(v0 + 176) = v27;
  *(v0 + 192) = v29;
  *(v0 + 208) = *(v0 + 640);
  *(v0 + 112) = v31;
  *(v0 + 128) = v33;
  *(v0 + 144) = v35;
  *(v0 + 160) = v28;
  *(v0 + 48) = v37;
  *(v0 + 64) = v39;
  *(v0 + 80) = v41;
  *(v0 + 96) = v32;
  *(v0 + 440) = *(v0 + 656);
  *(v0 + 224) = *(v0 + 656);
  *(v0 + 16) = v43;
  *(v0 + 32) = v38;
  v239 = v0;
  if (sub_1D5DEA380(v0 + 16) != 1)
  {
    v44 = *(v0 + 224);
    v45 = *(v44 + 16);
    if (v45)
    {
      v242 = (v0 + 1608);
      v46 = *(v0 + 1648);
      v47 = *(v0 + 1640);
      v48 = *(*(v0 + 1632) + 20);
      v49 = v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v50 = *(v47 + 72);

      do
      {
        v51 = *(v0 + 1656);
        v52 = *(v0 + 1648);
        sub_1D5F0B788(v49, v52, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v53 = v3;
        v54 = *(v46 + v48);

        sub_1D5F0B728(v52, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D5F0B788(v54 + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v51, type metadata accessor for GroupLayoutBindingContext);
        v3 = v53;
        v0 = v239;

        v55 = sub_1D62EF50C();
        sub_1D5F0B728(v51, type metadata accessor for GroupLayoutBindingContext);
        sub_1D69856DC(v55);
        v49 += v50;
        --v45;
      }

      while (v45);
      sub_1D5F0B7F0(v24);

      v25 = v242;
    }

    else
    {
      sub_1D5F0B7F0(v0 + 232);
    }
  }

  ObjectType = v0 + 1424;
  *v25 = *v3;
  sub_1D5C44878();
  sub_1D5C44F84(&qword_1EDF1AEA0);

  sub_1D72623CC();
  swift_bridgeObjectRelease_n();
  sub_1D5B65AF4();
  v1 = sub_1D72626EC();

  v56 = MEMORY[0x1E69E6F90];
  sub_1D5B66EA4(0, &unk_1EC880D70, &type metadata for DebugFormatWorkspaceTagSection, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  sub_1D5B66EA4(0, &unk_1EC88F2B0, &type metadata for DebugFormatWorkspaceTagItem, v56);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v57 = qword_1EC87D4F8;

  if (v57 != -1)
  {
    goto LABEL_209;
  }

LABEL_16:
  v58 = xmmword_1EC9BA778;
  v59 = *&qword_1EC9BA788;
  *ObjectType = xmmword_1EC9BA778;
  *(ObjectType + 16) = v59;
  v60 = xmmword_1EC9BA798;
  v61 = *&qword_1EC9BA7A8;
  *(ObjectType + 32) = xmmword_1EC9BA798;
  *(ObjectType + 48) = v61;
  *(v17 + 32) = v58;
  *(v17 + 48) = v59;
  *(v17 + 64) = v60;
  *(v17 + 80) = v61;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  *(v3 + 48) = v17;
  v243 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v62 = sub_1D7263BFC();
  }

  else
  {
    v62 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D5F0B6CC(ObjectType, v0 + 1488);
  v231 = v1;
  v232 = v3;
  if (v62)
  {
    ObjectType = 0;
    v241 = v1 & 0xC000000000000001;
    v233 = MEMORY[0x1E69E7CC0];
    v63 = &selRef_accountStore;
    v64 = &off_1E84D3000;
    v65 = &off_1E84D3000;
    v240 = v62;
LABEL_20:
    v66 = ObjectType;
    while (1)
    {
      if (v241)
      {
        v17 = MEMORY[0x1DA6FB460](v66, v1);
        ObjectType = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v66 >= *(v243 + 16))
        {
          goto LABEL_197;
        }

        v17 = *(v1 + 8 * v66 + 32);
        swift_unknownObjectRetain();
        ObjectType = v66 + 1;
        if (__OFADD__(v66, 1))
        {
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          swift_once();
          goto LABEL_16;
        }
      }

      swift_getObjectType();
      if ([v17 v63[49]])
      {
        v67 = sub_1D726203C();
        v68 = [objc_opt_self() systemImageNamed_];

        if (!v68)
        {
          goto LABEL_212;
        }

LABEL_36:
        swift_unknownObjectRetain();
        goto LABEL_44;
      }

      if ([v17 v64[465]])
      {
        v69 = sub_1D726203C();
        v68 = [objc_opt_self() systemImageNamed_];

        if (!v68)
        {
          goto LABEL_213;
        }

        goto LABEL_36;
      }

      if ([v17 v65[466]])
      {
        if (qword_1EDF05B68 != -1)
        {
          swift_once();
        }

        v70 = qword_1EDF05B70;
LABEL_43:
        swift_unknownObjectRetain();
        v68 = v70;
LABEL_44:
        v71 = [v17 identifier];
        v72 = sub_1D726207C();
        v74 = v73;

        swift_unknownObjectRelease();
        v75 = [v17 displayName];
        v76 = sub_1D726207C();
        v78 = v77;

        v79 = sub_1D62E5CE0();
        v81 = v80;
        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = sub_1D699046C(0, *(v233 + 2) + 1, 1, v233);
        }

        v83 = *(v233 + 2);
        v82 = *(v233 + 3);
        v17 = v83 + 1;
        if (v83 >= v82 >> 1)
        {
          v233 = sub_1D699046C((v82 > 1), v83 + 1, 1, v233);
        }

        *(v233 + 2) = v17;
        v84 = &v233[64 * v83];
        *(v84 + 4) = v72;
        *(v84 + 5) = v74;
        *(v84 + 6) = v68;
        v84[56] = 0;
        *(v84 + 15) = *(&v244 + 3);
        *(v84 + 57) = v244;
        *(v84 + 8) = v76;
        *(v84 + 9) = v78;
        *(v84 + 10) = v79;
        *(v84 + 11) = v81;
        v0 = v239;
        v85 = v240;
        v1 = v231;
        v3 = v232;
        v65 = &off_1E84D3000;
        v63 = &selRef_accountStore;
        v64 = &off_1E84D3000;
        if (ObjectType == v240)
        {
          goto LABEL_49;
        }

        goto LABEL_20;
      }

      if ([v17 isRecipeCatalog])
      {
        if (qword_1EDF05C38 != -1)
        {
          swift_once();
        }

        v70 = qword_1EDF05C40;
        goto LABEL_43;
      }

      swift_unknownObjectRelease();
      ++v66;
      if (ObjectType == v240)
      {
        v85 = v240;
LABEL_49:
        *(v3 + 56) = 1937204558;
        *(v3 + 64) = 0xE400000000000000;
        *(v3 + 72) = v233;
        ObjectType = MEMORY[0x1E69E7CC0];
        v86 = v0 + 760;
        v87 = 0;
        while (1)
        {
LABEL_50:
          if (v241)
          {
            v17 = MEMORY[0x1DA6FB460](v87, v1);
            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_198;
            }
          }

          else
          {
            if (v87 >= *(v243 + 16))
            {
              goto LABEL_199;
            }

            v17 = *(v1 + 8 * v87 + 32);
            swift_unknownObjectRetain();
            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_198;
            }
          }

          swift_getObjectType();
          if ([v17 isSports])
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v87;
          if (v88 == v85)
          {
            goto LABEL_91;
          }
        }

        v89 = [swift_unknownObjectRetain() identifier];
        v234 = sub_1D726207C();
        v229 = v90;

        swift_unknownObjectRelease();
        v91 = [v17 displayName];
        v224 = sub_1D726207C();
        v219 = v92;

        v93 = sub_1D62E5CE0();
        v214 = v94;
        v95 = [swift_unknownObjectRetain() identifier];
        v96 = sub_1D726207C();
        v98 = v97;

        *(v0 + 744) = 0;
        *(v0 + 752) = 1;
        *v86 = 0u;
        *(v86 + 16) = 0u;
        *(v86 + 32) = 0u;
        *(v86 + 48) = 0;
        *(v0 + 664) = v96;
        *(v0 + 672) = v98;
        *(v0 + 680) = v17;
        *(v0 + 688) = 0;
        *(v0 + 712) = 0;
        *(v0 + 720) = 0xE000000000000000;
        *(v0 + 696) = 0;
        *(v0 + 704) = 0;
        *(v0 + 728) = 0;
        *(v0 + 736) = MEMORY[0x1E69E7CD0];
        v99 = [v17 feedNavImageAssetHandle];
        if (v99)
        {
          v100 = v99;
          swift_unknownObjectRelease();
          sub_1D5EE5B54(v0 + 664);
          v85 = v240;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_58:
            v1 = v231;
            v102 = *(ObjectType + 16);
            v101 = *(ObjectType + 24);
            v17 = v102 + 1;
            if (v102 >= v101 >> 1)
            {
              ObjectType = sub_1D699046C((v101 > 1), v102 + 1, 1, ObjectType);
            }

            *(ObjectType + 16) = v17;
            v103 = ObjectType + (v102 << 6);
            *(v103 + 32) = v234;
            *(v103 + 40) = v229;
            *(v103 + 48) = v100;
            *(v103 + 56) = 1;
            *(v103 + 60) = *(&v244 + 3);
            *(v103 + 57) = v244;
            *(v103 + 64) = v224;
            *(v103 + 72) = v219;
            *(v103 + 80) = v93;
            *(v103 + 88) = v214;
            v0 = v239;
            v3 = v232;
            if (v88 == v85)
            {
LABEL_91:
              *(v3 + 80) = 0x7374726F7053;
              *(v3 + 88) = 0xE600000000000000;
              *(v3 + 96) = ObjectType;
              ObjectType = MEMORY[0x1E69E7CC0];
              v123 = 0;
              while (2)
              {
                v124 = v123;
                while (1)
                {
                  if (v241)
                  {
                    v17 = MEMORY[0x1DA6FB460](v124, v1);
                    v123 = v124 + 1;
                    if (__OFADD__(v124, 1))
                    {
                      goto LABEL_200;
                    }
                  }

                  else
                  {
                    if (v124 >= *(v243 + 16))
                    {
                      goto LABEL_201;
                    }

                    v17 = *(v1 + 8 * v124 + 32);
                    swift_unknownObjectRetain();
                    v123 = v124 + 1;
                    if (__OFADD__(v124, 1))
                    {
                      goto LABEL_200;
                    }
                  }

                  swift_getObjectType();
                  if ([v17 isPuzzleType])
                  {
                    break;
                  }

                  swift_unknownObjectRelease();
                  ++v124;
                  if (v123 == v85)
                  {
                    goto LABEL_118;
                  }
                }

                v125 = [swift_unknownObjectRetain() identifier];
                v235 = sub_1D726207C();
                v225 = v126;

                swift_unknownObjectRelease();
                v127 = [v17 displayName];
                v128 = sub_1D726207C();
                v215 = v129;
                v220 = v128;

                v130 = sub_1D62E5CE0();
                v211 = v131;
                v132 = [swift_unknownObjectRetain() identifier];
                v133 = sub_1D726207C();
                v135 = v134;

                *(v0 + 896) = xmmword_1D7279980;
                *(v0 + 912) = 0u;
                *(v0 + 928) = 0u;
                *(v0 + 944) = 0u;
                *(v0 + 960) = 0;
                *(v0 + 816) = v133;
                *(v0 + 824) = v135;
                *(v0 + 832) = v17;
                *(v0 + 840) = 0;
                *(v0 + 864) = 0;
                *(v0 + 872) = 0xE000000000000000;
                *(v0 + 848) = 0;
                *(v0 + 856) = 0;
                *(v0 + 880) = 0;
                *(v0 + 888) = MEMORY[0x1E69E7CD0];
                v136 = [v17 feedNavImageAssetHandle];
                if (!v136)
                {
                  v141 = [v17 asSports];
                  v85 = v240;
                  if (!v141 || (v142 = [v141 sportsTheme], swift_unknownObjectRelease(), !v142) || (v137 = objc_msgSend(v142, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v137))
                  {
                    v143 = [v17 asSports];
                    if (!v143 || (v144 = [v143 sportsTheme], swift_unknownObjectRelease(), !v144))
                    {
                      swift_unknownObjectRelease();
                      sub_1D5EE5B54(v239 + 816);
                      v137 = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_104;
                    }

                    v137 = [v144 sportsLogoImageCompactAssetHandle];
                    swift_unknownObjectRelease();
                  }

                  swift_unknownObjectRelease();
                  sub_1D5EE5B54(v239 + 816);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    goto LABEL_115;
                  }

                  goto LABEL_104;
                }

                v137 = v136;
                swift_unknownObjectRelease();
                sub_1D5EE5B54(v0 + 816);
                v85 = v240;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  goto LABEL_104;
                }

LABEL_115:
                ObjectType = sub_1D699046C(0, *(ObjectType + 16) + 1, 1, ObjectType);
LABEL_104:
                v1 = v231;
                v139 = *(ObjectType + 16);
                v138 = *(ObjectType + 24);
                v17 = v139 + 1;
                if (v139 >= v138 >> 1)
                {
                  ObjectType = sub_1D699046C((v138 > 1), v139 + 1, 1, ObjectType);
                }

                *(ObjectType + 16) = v17;
                v140 = ObjectType + (v139 << 6);
                *(v140 + 32) = v235;
                *(v140 + 40) = v225;
                *(v140 + 48) = v137;
                *(v140 + 56) = 1;
                *(v140 + 60) = *(&v244 + 3);
                *(v140 + 57) = v244;
                *(v140 + 64) = v220;
                *(v140 + 72) = v215;
                *(v140 + 80) = v130;
                *(v140 + 88) = v211;
                v0 = v239;
                v3 = v232;
                if (v123 != v85)
                {
                  continue;
                }

                break;
              }

LABEL_118:
              *(v3 + 104) = 0x73656C7A7A7550;
              *(v3 + 112) = 0xE700000000000000;
              *(v3 + 120) = ObjectType;
              ObjectType = 0;
              v226 = v0 + 1064;
              v236 = MEMORY[0x1E69E7CC0];
              while (2)
              {
                v145 = ObjectType;
                while (1)
                {
                  if (v241)
                  {
                    v17 = MEMORY[0x1DA6FB460](v145, v1);
                    ObjectType = v145 + 1;
                    if (__OFADD__(v145, 1))
                    {
                      goto LABEL_202;
                    }
                  }

                  else
                  {
                    if (v145 >= *(v243 + 16))
                    {
                      goto LABEL_203;
                    }

                    v17 = *(v1 + 8 * v145 + 32);
                    swift_unknownObjectRetain();
                    ObjectType = v145 + 1;
                    if (__OFADD__(v145, 1))
                    {
                      goto LABEL_202;
                    }
                  }

                  swift_getObjectType();
                  if ([v17 isLocal])
                  {
                    break;
                  }

                  swift_unknownObjectRelease();
                  ++v145;
                  if (ObjectType == v85)
                  {
                    goto LABEL_145;
                  }
                }

                v146 = [swift_unknownObjectRetain() identifier];
                v147 = sub_1D726207C();
                v216 = v148;
                v221 = v147;

                swift_unknownObjectRelease();
                v149 = [v17 displayName];
                v150 = sub_1D726207C();
                v209 = v151;
                v212 = v150;

                v152 = sub_1D62E5CE0();
                v208 = v153;
                v154 = [swift_unknownObjectRetain() identifier];
                v155 = sub_1D726207C();
                v157 = v156;

                *(v0 + 1048) = 0;
                *(v0 + 1056) = 1;
                *v226 = 0u;
                *(v226 + 16) = 0u;
                *(v226 + 32) = 0u;
                *(v226 + 48) = 0;
                *(v0 + 968) = v155;
                *(v0 + 976) = v157;
                *(v0 + 984) = v17;
                *(v0 + 992) = 0;
                *(v0 + 1016) = 0;
                *(v0 + 1024) = 0xE000000000000000;
                *(v0 + 1000) = 0;
                *(v0 + 1008) = 0;
                *(v0 + 1032) = 0;
                *(v0 + 1040) = MEMORY[0x1E69E7CD0];
                v158 = [v17 feedNavImageAssetHandle];
                if (v158)
                {
                  v159 = v158;
                  swift_unknownObjectRelease();
                  sub_1D5EE5B54(v0 + 968);
                  v85 = v240;
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    goto LABEL_131;
                  }

LABEL_142:
                  v236 = sub_1D699046C(0, *(v236 + 2) + 1, 1, v236);
LABEL_131:
                  v1 = v231;
                  v161 = *(v236 + 2);
                  v160 = *(v236 + 3);
                  v17 = v161 + 1;
                  if (v161 >= v160 >> 1)
                  {
                    v236 = sub_1D699046C((v160 > 1), v161 + 1, 1, v236);
                  }

                  *(v236 + 2) = v17;
                  v162 = &v236[64 * v161];
                  *(v162 + 4) = v221;
                  *(v162 + 5) = v216;
                  *(v162 + 6) = v159;
                  v162[56] = 1;
                  *(v162 + 15) = *(&v244 + 3);
                  *(v162 + 57) = v244;
                  *(v162 + 8) = v212;
                  *(v162 + 9) = v209;
                  *(v162 + 10) = v152;
                  *(v162 + 11) = v208;
                  v0 = v239;
                  v3 = v232;
                  if (ObjectType == v85)
                  {
LABEL_145:
                    *(v3 + 128) = 0x654E206C61636F4CLL;
                    *(v3 + 136) = 0xEA00000000007377;
                    *(v3 + 144) = v236;
                    ObjectType = MEMORY[0x1E69E7CC0];
                    v167 = 0;
                    v0 += 1216;
                    v168 = MEMORY[0x1E69E7CC0];
                    do
                    {
                      v3 = v167;
                      while (1)
                      {
                        if (v241)
                        {
                          v169 = MEMORY[0x1DA6FB460](v3, v1);
                          v167 = v3 + 1;
                          if (__OFADD__(v3, 1))
                          {
                            goto LABEL_204;
                          }
                        }

                        else
                        {
                          if (v3 >= *(v243 + 16))
                          {
                            goto LABEL_205;
                          }

                          v169 = *(v1 + 8 * v3 + 32);
                          swift_unknownObjectRetain();
                          v167 = v3 + 1;
                          if (__OFADD__(v3, 1))
                          {
                            goto LABEL_204;
                          }
                        }

                        ObjectType = swift_getObjectType();
                        v17 = v169;
                        if (FCTagProviding.isChannel.getter(ObjectType) && ![v169 isLocal] && (objc_msgSend(v169, sel_isPuzzleType) & 1) == 0 && (objc_msgSend(v169, sel_isMySports) & 1) == 0 && (objc_msgSend(v169, sel_isPuzzleHub) & 1) == 0 && (objc_msgSend(v169, sel_isRecipeCatalog) & 1) == 0)
                        {
                          break;
                        }

                        swift_unknownObjectRelease();
                        ++v3;
                        if (v167 == v240)
                        {
                          goto LABEL_166;
                        }
                      }

                      v170 = [swift_unknownObjectRetain() identifier];
                      v237 = sub_1D726207C();
                      v227 = v171;

                      swift_unknownObjectRelease();
                      v172 = [v169 displayName];
                      v173 = sub_1D726207C();
                      v217 = v174;
                      v222 = v173;

                      v175 = sub_1D62E5CE0();
                      v210 = v176;
                      v213 = v175;
                      v177 = [swift_unknownObjectRetain() identifier];
                      ObjectType = sub_1D726207C();
                      v179 = v178;

                      *(v239 + 1200) = xmmword_1D7279980;
                      *v0 = 0u;
                      *(v0 + 16) = 0u;
                      *(v0 + 32) = 0u;
                      *(v0 + 48) = 0;
                      *(v239 + 1120) = ObjectType;
                      *(v239 + 1128) = v179;
                      *(v239 + 1136) = v169;
                      *(v239 + 1144) = 0;
                      *(v239 + 1168) = 0;
                      *(v239 + 1176) = 0xE000000000000000;
                      *(v239 + 1152) = 0;
                      *(v239 + 1160) = 0;
                      *(v239 + 1184) = 0;
                      *(v239 + 1192) = MEMORY[0x1E69E7CD0];
                      v17 = FeedTag.debugAssetHandle.getter();
                      swift_unknownObjectRelease();
                      sub_1D5EE5B54(v239 + 1120);
                      LOBYTE(v244) = 1;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v168 = sub_1D699046C(0, *(v168 + 2) + 1, 1, v168);
                      }

                      v182 = *(v168 + 2);
                      v181 = *(v168 + 3);
                      if (v182 >= v181 >> 1)
                      {
                        v168 = sub_1D699046C((v181 > 1), v182 + 1, 1, v168);
                      }

                      *(v168 + 2) = v182 + 1;
                      v183 = &v168[64 * v182];
                      *(v183 + 4) = v237;
                      *(v183 + 5) = v227;
                      *(v183 + 6) = v17;
                      v183[56] = 1;
                      *(v183 + 57) = v244;
                      *(v183 + 15) = *(&v244 + 3);
                      *(v183 + 8) = v222;
                      *(v183 + 9) = v217;
                      *(v183 + 10) = v213;
                      *(v183 + 11) = v210;
                      v1 = v231;
                    }

                    while (v167 != v240);
LABEL_166:
                    v3 = v232;
                    v232[19] = 0x736C656E6E616843;
                    v232[20] = 0xE800000000000000;
                    v232[21] = v168;
                    v184 = 0;
                    v0 = v239;
                    ObjectType = MEMORY[0x1E69E7CC0];
                    while (2)
                    {
                      v185 = v184;
                      while (1)
                      {
                        if (v241)
                        {
                          v17 = MEMORY[0x1DA6FB460](v185, v1);
                          v184 = v185 + 1;
                          if (__OFADD__(v185, 1))
                          {
                            goto LABEL_207;
                          }
                        }

                        else
                        {
                          if (v185 >= *(v243 + 16))
                          {
                            goto LABEL_208;
                          }

                          v17 = *(v1 + 8 * v185 + 32);
                          swift_unknownObjectRetain();
                          v184 = v185 + 1;
                          if (__OFADD__(v185, 1))
                          {
                            goto LABEL_207;
                          }
                        }

                        v186 = swift_getObjectType();
                        if (FCTagProviding.isTopic.getter(v186) && ![v17 isSports] && (objc_msgSend(v17, sel_isFoodHub) & 1) == 0)
                        {
                          break;
                        }

                        swift_unknownObjectRelease();
                        ++v185;
                        if (v184 == v240)
                        {
                          goto LABEL_76;
                        }
                      }

                      v187 = [swift_unknownObjectRetain() identifier];
                      v188 = sub_1D726207C();
                      v238 = v189;

                      swift_unknownObjectRelease();
                      v190 = [v17 displayName];
                      v191 = sub_1D726207C();
                      v228 = v192;
                      v230 = v191;

                      v193 = sub_1D62E5CE0();
                      v218 = v194;
                      v223 = v193;
                      v195 = [swift_unknownObjectRetain() identifier];
                      v196 = sub_1D726207C();
                      v198 = v197;

                      *(v0 + 1352) = 0;
                      *(v0 + 1360) = 1;
                      *(v239 + 1368) = 0u;
                      *(v239 + 1384) = 0u;
                      *(v239 + 1400) = 0u;
                      *(v239 + 1416) = 0;
                      *(v0 + 1272) = v196;
                      *(v0 + 1280) = v198;
                      *(v0 + 1288) = v17;
                      *(v0 + 1296) = 0;
                      *(v0 + 1320) = 0;
                      *(v0 + 1328) = 0xE000000000000000;
                      *(v0 + 1304) = 0;
                      *(v0 + 1312) = 0;
                      *(v0 + 1336) = 0;
                      *(v0 + 1344) = MEMORY[0x1E69E7CD0];
                      v199 = [v17 feedNavImageAssetHandle];
                      if (v199)
                      {
                        v200 = v199;
                        swift_unknownObjectRelease();
                        sub_1D5EE5B54(v0 + 1272);
                        v1 = v231;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_181;
                        }

LABEL_192:
                        ObjectType = sub_1D699046C(0, *(ObjectType + 16) + 1, 1, ObjectType);
LABEL_181:
                        v202 = *(ObjectType + 16);
                        v201 = *(ObjectType + 24);
                        v17 = v202 + 1;
                        if (v202 >= v201 >> 1)
                        {
                          ObjectType = sub_1D699046C((v201 > 1), v202 + 1, 1, ObjectType);
                        }

                        *(ObjectType + 16) = v17;
                        v203 = ObjectType + (v202 << 6);
                        *(v203 + 32) = v188;
                        *(v203 + 40) = v238;
                        *(v203 + 48) = v200;
                        *(v203 + 56) = 1;
                        *(v203 + 60) = *(&v244 + 3);
                        *(v203 + 57) = v244;
                        *(v203 + 64) = v230;
                        *(v203 + 72) = v228;
                        *(v203 + 80) = v223;
                        *(v203 + 88) = v218;
                        v0 = v239;
                        v3 = v232;
                        if (v184 == v240)
                        {
                          goto LABEL_76;
                        }

                        continue;
                      }

                      break;
                    }

                    v204 = [v17 asSports];
                    v1 = v231;
                    if (!v204 || (v205 = [v204 sportsTheme], swift_unknownObjectRelease(), !v205) || (v200 = objc_msgSend(v205, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v200))
                    {
                      v206 = [v17 asSports];
                      if (!v206 || (v207 = [v206 sportsTheme], swift_unknownObjectRelease(), !v207))
                      {
                        swift_unknownObjectRelease();
                        sub_1D5EE5B54(v239 + 1272);
                        v200 = 0;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          goto LABEL_192;
                        }

                        goto LABEL_181;
                      }

                      v200 = [v207 sportsLogoImageCompactAssetHandle];
                      swift_unknownObjectRelease();
                    }

                    swift_unknownObjectRelease();
                    sub_1D5EE5B54(v239 + 1272);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      goto LABEL_192;
                    }

                    goto LABEL_181;
                  }

                  continue;
                }

                break;
              }

              v163 = [v17 asSports];
              v85 = v240;
              if (!v163 || (v164 = [v163 sportsTheme], swift_unknownObjectRelease(), !v164) || (v159 = objc_msgSend(v164, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v159))
              {
                v165 = [v17 asSports];
                if (!v165 || (v166 = [v165 sportsTheme], swift_unknownObjectRelease(), !v166))
                {
                  swift_unknownObjectRelease();
                  sub_1D5EE5B54(v239 + 968);
                  v159 = 0;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    goto LABEL_142;
                  }

                  goto LABEL_131;
                }

                v159 = [v166 sportsLogoImageCompactAssetHandle];
                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              sub_1D5EE5B54(v239 + 968);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_142;
              }

              goto LABEL_131;
            }

            v87 = v88;
            goto LABEL_50;
          }
        }

        else
        {
          v104 = [v17 asSports];
          v85 = v240;
          if (!v104 || (v105 = [v104 sportsTheme], swift_unknownObjectRelease(), !v105) || (v100 = objc_msgSend(v105, sel_sportsLogoImageAssetHandle), swift_unknownObjectRelease(), !v100))
          {
            v106 = [v17 asSports];
            if (!v106 || (v107 = [v106 sportsTheme], swift_unknownObjectRelease(), !v107))
            {
              swift_unknownObjectRelease();
              sub_1D5EE5B54(v239 + 664);
              v100 = 0;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_58;
              }

              goto LABEL_69;
            }

            v100 = [v107 sportsLogoImageCompactAssetHandle];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          sub_1D5EE5B54(v239 + 664);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_58;
          }
        }

LABEL_69:
        ObjectType = sub_1D699046C(0, *(ObjectType + 16) + 1, 1, ObjectType);
        goto LABEL_58;
      }
    }
  }

  *(v3 + 56) = 1937204558;
  *(v3 + 64) = 0xE400000000000000;
  *(v3 + 72) = MEMORY[0x1E69E7CC0];
  *(v3 + 80) = 0x7374726F7053;
  *(v3 + 88) = 0xE600000000000000;
  ObjectType = MEMORY[0x1E69E7CC0];
  *(v3 + 96) = MEMORY[0x1E69E7CC0];
  *(v3 + 104) = 0x73656C7A7A7550;
  *(v3 + 112) = 0xE700000000000000;
  *(v3 + 120) = ObjectType;
  *(v3 + 128) = 0x654E206C61636F4CLL;
  *(v3 + 136) = 0xEA00000000007377;
  *(v3 + 144) = ObjectType;
  *(v3 + 152) = 0x736C656E6E616843;
  *(v3 + 160) = 0xE800000000000000;
  *(v3 + 168) = ObjectType;
LABEL_76:

  v108 = 0;
  *(v3 + 176) = 0x736369706F54;
  *(v3 + 184) = 0xE600000000000000;
  *(v3 + 192) = ObjectType;
  v109 = v3 + 48;
  v17 = MEMORY[0x1E69E7CC0];
  v110 = 7;
  ObjectType = 24;
LABEL_77:
  if (v108 > 7)
  {
    v110 = v108;
  }

  v111 = v109 + 24 * v108;
  v112 = v110 + 1;
  while (v108 != 7)
  {
    if (v112 == ++v108)
    {
      __break(1u);
      goto LABEL_196;
    }

    v113 = v111 + 24;
    v114 = *v111;
    v115 = *(*v111 + 16);
    v111 += 24;
    if (v115)
    {
      v117 = *(v113 - 40);
      v116 = *(v113 - 32);

      v244 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6997F54(0, *(v17 + 16) + 1, 1);
      }

      v119 = *(v17 + 16);
      v118 = *(v17 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_1D6997F54((v118 > 1), v119 + 1, 1);
      }

      *(v17 + 16) = v119 + 1;
      v120 = (v17 + 24 * v119);
      v120[4] = v117;
      v120[5] = v116;
      v120[6] = v114;
      v0 = v239;
      v1 = v231;
      v3 = v232;
      v110 = 7;
      goto LABEL_77;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v121 = *(v0 + 8);

  return v121(v17);
}