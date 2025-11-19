uint64_t sub_1D69ED77C()
{
  v1 = *v0;
  v2 = 0x6C6562616CLL;
  v3 = 0x7972616974726574;
  if (v1 != 6)
  {
    v3 = 0x6F74617261706573;
  }

  v4 = 1819044198;
  if (v1 != 4)
  {
    v4 = 0x7261646E6F636573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7972616974726574;
  if (v1 != 2)
  {
    v5 = 0x616E726574617571;
  }

  if (*v0)
  {
    v2 = 0x7261646E6F636573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D69ED8AC()
{
  result = qword_1EC88FD60;
  if (!qword_1EC88FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD60);
  }

  return result;
}

unint64_t sub_1D69ED900(uint64_t a1)
{
  *(a1 + 8) = sub_1D69ED930();
  result = sub_1D69ED984();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D69ED930()
{
  result = qword_1EC88FD68;
  if (!qword_1EC88FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD68);
  }

  return result;
}

unint64_t sub_1D69ED984()
{
  result = qword_1EC88FD70;
  if (!qword_1EC88FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD70);
  }

  return result;
}

unint64_t sub_1D69ED9D8(uint64_t a1)
{
  result = sub_1D69EDA00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69EDA00()
{
  result = qword_1EC88FD78;
  if (!qword_1EC88FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD78);
  }

  return result;
}

unint64_t sub_1D69EDA54(void *a1)
{
  a1[1] = sub_1D667C468();
  a1[2] = sub_1D667C6B4();
  result = sub_1D69ED8AC();
  a1[3] = result;
  return result;
}

uint64_t FormatMenuGroupData.title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D62B7ECC(v2, v3, v4);
}

id FormatMenuGroupData.image.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  v3 = *(v1 + 32);
  *(a1 + 8) = v3;
  return sub_1D62B7EE4(v2, v3);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatMenuTitleDataOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatMenuImageDataOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D69EDB04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D69EDB4C(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

void sub_1D69EDBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 56);
  if (v4 != 255)
  {
    v9 = *v3;
    v8 = *(v3 + 8);
    v10 = *v3;
    if (v4)
    {
      v11 = *(v3 + 8);
      sub_1D5F26358(v10, v8, 1);
      sub_1D6CC5B10(a1, a2);
      sub_1D62B5FEC(v9, v11, v4);
    }

    else
    {
      sub_1D5F26358(v10, v8, 0);
    }
  }

  if (v6 != 255)
  {
    if (v6)
    {
      sub_1D62B5FC8(v5, 1);
      sub_1D6CC57CC(a1, a2);
      sub_1D62B5FD4(v5, v6);
    }

    else
    {
      sub_1D62B5FC8(v5, 0);
    }
  }

  v40 = MEMORY[0x1E69E7CC0];
  v12 = *(v7 + 16);
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = 0;
  v14 = v7 + 40;
  v31 = v12 - 1;
  v35 = *(v7 + 16);
  v36 = v7;
  v32 = v7 + 40;
  do
  {
    v15 = v14 + 48 * v13;
    v16 = v13;
    while (1)
    {
      if (v16 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v17 = *(v15 + 32);
      if (v17)
      {
        break;
      }

LABEL_14:
      ++v16;
      v15 += 48;
      if (v12 == v16)
      {
        goto LABEL_27;
      }
    }

    v19 = *(v15 - 8);
    v18 = *v15;
    v20 = *(v15 + 8);
    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    v23 = *(v17 + 40);
    sub_1D5F26358(v19, *v15, v20);
    sub_1D62B5FC8(v21, v22);
    swift_retain_n();
    if ((v23(a1, a2, a3) & 1) == 0)
    {

      sub_1D5F26348(v19, v18, v20);
      sub_1D5FC4E9C(v21, v22);

      v12 = v35;
      v7 = v36;
      goto LABEL_14;
    }

    if (v20)
    {
      v24 = a2;
      v34 = sub_1D6CC5B10(a1, a2);
      v33 = v25;
      if ((v22 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_23:
      sub_1D6CC57CC(a1, v24);
    }

    else
    {

      v34 = v19;
      v33 = v18;
      v24 = a2;
      if (v22)
      {
        goto LABEL_23;
      }

LABEL_21:
      v26 = v21;
    }

    v27 = v26;
    sub_1D5B5A498(0, &qword_1EDF04350);
    v30 = v27;

    sub_1D726203C();

    v28 = swift_allocObject();
    v28[2] = v17;
    v28[3] = a1;
    v28[4] = v24;
    v28[5] = a3;
    v28[6] = v34;
    v28[7] = v33;

    swift_unknownObjectRetain();

    sub_1D726375C();

    sub_1D5F26348(v19, v18, v20);
    sub_1D5FC4E9C(v21, v22);

    MEMORY[0x1DA6F9CE0](v29);
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    v13 = v16 + 1;
    sub_1D726278C();
    v14 = v32;
    v12 = v35;
    v7 = v36;
  }

  while (v31 != v16);
LABEL_27:
  sub_1D5B5A498(0, &qword_1EC885090);
  sub_1D726340C();
}

uint64_t sub_1D69EE024(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  sub_1D69EE644(0, &qword_1EC88FD98, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69EE5F0();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v4)
  {
    v15 = 1;
    sub_1D726440C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D69EE1A4()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D69EE1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73DE930 == a2)
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

uint64_t sub_1D69EE2D4(uint64_t a1)
{
  v2 = sub_1D69EE5F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69EE310(uint64_t a1)
{
  v2 = sub_1D69EE5F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D69EE34C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D69EE408(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1D69EE3B4()
{
  result = qword_1EC88FD80;
  if (!qword_1EC88FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD80);
  }

  return result;
}

uint64_t sub_1D69EE408(void *a1)
{
  sub_1D69EE644(0, &qword_1EC88FD88, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69EE5F0();
  sub_1D7264B0C();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_1D72642BC();
    v11[14] = 1;
    sub_1D72642CC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D69EE5F0()
{
  result = qword_1EC88FD90;
  if (!qword_1EC88FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD90);
  }

  return result;
}

void sub_1D69EE644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69EE5F0();
    v7 = a3(a1, &_s10SwitchDataV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69EE6BC()
{
  result = qword_1EC88FDA0;
  if (!qword_1EC88FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FDA0);
  }

  return result;
}

unint64_t sub_1D69EE714()
{
  result = qword_1EC88FDA8;
  if (!qword_1EC88FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FDA8);
  }

  return result;
}

unint64_t sub_1D69EE76C()
{
  result = qword_1EC88FDB0;
  if (!qword_1EC88FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FDB0);
  }

  return result;
}

uint64_t WebEmbedDatastoreUpdate.datastore.getter()
{
  type metadata accessor for WebEmbedDatastoreUpdate();
}

uint64_t WebEmbedDatastoreUpdate.hash(into:)()
{
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();
}

uint64_t WebEmbedDatastoreUpdate.hashValue.getter()
{
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69EE8B4()
{
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69EE910()
{
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();
}

uint64_t sub_1D69EE960()
{
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t _s8NewsFeed23WebEmbedDatastoreUpdateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = WebEmbedDataVisualization.identifier.getter();
  v6 = v5;
  if (v4 == WebEmbedDataVisualization.identifier.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_1D72646CC();

    v9 = 0;
    if ((v8 & 1) == 0)
    {
      return v9 & 1;
    }
  }

  v10 = *(type metadata accessor for WebEmbedDatastoreUpdate() + 20);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  v13 = [*(v11 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v14 = sub_1D726207C();
  v16 = v15;

  v17 = [*(v12 + OBJC_IVAR____TtC8NewsFeed17WebEmbedDatastore_datastore) JSONString];
  v18 = sub_1D726207C();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

unint64_t sub_1D69EEB20()
{
  result = qword_1EC88FDB8;
  if (!qword_1EC88FDB8)
  {
    type metadata accessor for WebEmbedDatastoreUpdate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FDB8);
  }

  return result;
}

uint64_t sub_1D69EEBA0()
{
  v0 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  type metadata accessor for FormatStateMachineStateStore();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  result = sub_1D725A7AC();
  *(v2 + 24) = result;
  qword_1EDFFC6E8 = v2;
  return result;
}

uint64_t sub_1D69EEC60(uint64_t a1, uint64_t a2)
{
  sub_1D725A76C();
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  sub_1D725A77C();
  return v8;
}

uint64_t FormatItemNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D69EEDCC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D69F363C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v217 = &v195 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  *&v225 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216, v8);
  v223 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v213 = &v195 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v210 = &v195 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v221 = &v195 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v209 = &v195 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v212 = (&v195 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v195 - v27);
  MEMORY[0x1EEE9AC00](v29, v30);
  v214 = &v195 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v211 = &v195 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v195 - v37);
  sub_1D5CC51A0(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = &v195 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v206 = &v195 - v45;
  swift_beginAccess();
  v46 = v2[2];
  v47 = v2[3];
  v48 = v2[4];
  v204 = v2[5];
  v205 = v47;
  v243 = *(v2 + 112);
  v49 = *(v2 + 6);
  v242[2] = *(v2 + 5);
  v242[3] = v49;
  v50 = *(v2 + 4);
  v242[0] = *(v2 + 3);
  v242[1] = v50;
  v208 = v2;
  v200 = v48;
  v201 = v46;
  if ((v243 & 0xFE) == 0x7E)
  {
    v51 = *(a1 + 6);
    v235[0] = *(a1 + 5);
    v235[1] = v51;
    v236 = *(a1 + 112);
    v52 = *(a1 + 4);
    v233 = *(a1 + 3);
    v234 = v52;
    sub_1D5E3A490(&v233, &v237, &qword_1EDF270D0);
    v2 = v208;
    v239 = v235[0];
    v240 = v235[1];
    v241 = v236;
    v54 = v233;
    v53 = v234;
  }

  else
  {
    v55 = *(v2 + 6);
    v239 = *(v2 + 5);
    v240 = v55;
    v241 = *(v2 + 112);
    v54 = *(v2 + 3);
    v53 = *(v2 + 4);
  }

  v237 = v54;
  v238 = v53;
  *(v232 + 9) = *(v2 + 161);
  v56 = *(v2 + 17);
  v231[0] = *(v2 + 15);
  v231[1] = v56;
  v232[0] = *(v2 + 19);
  v207 = a1;
  v202 = v4;
  if (BYTE8(v232[1]) == 255)
  {
    v59 = *(a1 + 17);
    v233 = *(a1 + 15);
    v234 = v59;
    v235[0] = *(a1 + 19);
    *(v235 + 9) = *(a1 + 161);
    sub_1D5E3A490(&v233, &v228, &qword_1EDF2CAB8);
    v2 = v208;
    v228 = v233;
    v229 = v234;
    v230[0] = v235[0];
    v58 = *(v235 + 9);
  }

  else
  {
    v57 = *(v2 + 17);
    v228 = *(v2 + 15);
    v229 = v57;
    v230[0] = *(v2 + 19);
    v58 = *(v2 + 161);
  }

  *(v230 + 9) = v58;
  sub_1D69F36DC(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v42, sub_1D5CC51A0);
  v60 = type metadata accessor for FormatItemNodeAction();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v42, 1, v60) == 1)
  {
    sub_1D69F36DC(v207 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v206, sub_1D5CC51A0);
    v63 = v62(v42, 1, v60);

    if (v63 != 1)
    {
      sub_1D5E3A490(v242, &v233, &qword_1EDF270D0);
      sub_1D5E3A490(v231, &v233, &qword_1EDF2CAB8);
      sub_1D69F3744(v42, sub_1D5CC51A0);
      goto LABEL_12;
    }
  }

  else
  {
    v64 = v42;
    v65 = v206;
    sub_1D69F3808(v64, v206, type metadata accessor for FormatItemNodeAction);
    (*(v61 + 56))(v65, 0, 1, v60);
  }

  sub_1D5E3A490(v242, &v233, &qword_1EDF270D0);
  sub_1D5E3A490(v231, &v233, &qword_1EDF2CAB8);
LABEL_12:
  v67 = v207;
  v66 = v208;
  v68 = *(v208 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
  if (v68 == 2)
  {
    v68 = *(v207 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
  }

  v199 = v68;
  v69 = *(v208 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
  if (v69 == 2)
  {
    v69 = *(v207 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
  }

  v198 = v69;
  v70 = *(v208 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  v71 = v70;
  v72 = *(v208 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
  if (v70 == 3)
  {
    v71 = *(v207 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
    v72 = *(v207 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
    sub_1D62B7E1C(v71);
    v66 = v208;
  }

  v196 = v72;
  v197 = v71;
  v73 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  v74 = v66;
  swift_beginAccess();
  v75 = *&v74[v73];
  v76 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  v77 = *(v67 + v76);
  v227 = MEMORY[0x1E69E7CC8];
  v78 = *(v75 + 16);
  if (!__OFADD__(v78, *(v77 + 16)))
  {
    v203 = *(v77 + 16);
    sub_1D62B7E1C(v70);
    sub_1D69F3670();

    v219 = v77;

    sub_1D7261DAC();
    *&v224 = sub_1D698F4BC(0, v78, 0, MEMORY[0x1E69E7CC0]);
    v79 = *(v75 + 16);
    v222 = v28;
    v220 = v75;
    v218 = v79;
    if (v79)
    {
      v80 = 0;
      v215 = v75 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
      do
      {
        if (v80 >= *(v75 + 16))
        {
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v81 = *(v225 + 72);
        sub_1D69F36DC(v215 + v81 * v80, v38, type metadata accessor for FormatItemNodeStyle.Selector);
        v82 = *v38;
        v83 = v38[1];
        sub_1D69F36DC(v38, v223, type metadata accessor for FormatItemNodeStyle.Selector);
        v84 = v227;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v226 = v84;
        v87 = sub_1D6D8CB60(v82, v83);
        v88 = *(v84 + 2);
        v89 = (v86 & 1) == 0;
        v90 = v88 + v89;
        if (__OFADD__(v88, v89))
        {
          goto LABEL_90;
        }

        v91 = v86;
        if (*(v84 + 3) >= v90)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v94 = v226;
            if ((v86 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          else
          {
            sub_1D6D84464();
            v94 = v226;
            if ((v91 & 1) == 0)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
          sub_1D6D71AF4(v90, isUniquelyReferenced_nonNull_native);
          v92 = sub_1D6D8CB60(v82, v83);
          if ((v91 & 1) != (v93 & 1))
          {
            goto LABEL_98;
          }

          v87 = v92;
          v94 = v226;
          if ((v91 & 1) == 0)
          {
LABEL_31:
            *&v94[8 * (v87 >> 6) + 64] |= 1 << v87;
            v95 = (*(v94 + 6) + 16 * v87);
            *v95 = v82;
            v95[1] = v83;
            sub_1D69F3808(v223, *(v94 + 7) + v87 * v81, type metadata accessor for FormatItemNodeStyle.Selector);
            v96 = *(v94 + 2);
            v97 = __OFADD__(v96, 1);
            v98 = v96 + 1;
            if (v97)
            {
              goto LABEL_93;
            }

            *(v94 + 2) = v98;

            goto LABEL_33;
          }
        }

        sub_1D69F37A4(v223, *(v94 + 7) + v87 * v81);
LABEL_33:
        v227 = v94;
        v100 = *v38;
        v99 = v38[1];

        sub_1D69F3744(v38, type metadata accessor for FormatItemNodeStyle.Selector);
        v102 = *(v224 + 16);
        v101 = *(v224 + 24);
        v28 = v222;
        if (v102 >= v101 >> 1)
        {
          *&v224 = sub_1D698F4BC((v101 > 1), v102 + 1, 1, v224);
        }

        ++v80;
        v103 = v224;
        *(v224 + 16) = v102 + 1;
        v104 = v103 + 16 * v102;
        *(v104 + 32) = v100;
        *(v104 + 40) = v99;
        v75 = v220;
      }

      while (v218 != v80);
    }

    v223 = sub_1D698F4BC(0, v203, 0, MEMORY[0x1E69E7CC0]);
    v105 = v219;
    v218 = *(v219 + 16);
    if (v218)
    {
      v106 = 0;
      v215 = v219 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
      while (v106 < *(v105 + 16))
      {
        v107 = *(v225 + 72);
        sub_1D69F36DC(v215 + v107 * v106, v28, type metadata accessor for FormatItemNodeStyle.Selector);
        v108 = v227;
        if (*(v227 + 2) && (v109 = sub_1D6D8CB60(*v28, v28[1]), (v110 & 1) != 0))
        {
          v111 = v209;
          sub_1D69F36DC(*(v108 + 7) + v109 * v107, v209, type metadata accessor for FormatItemNodeStyle.Selector);
          v112 = v111;
          v113 = v212;
          sub_1D69F3808(v112, v212, type metadata accessor for FormatItemNodeStyle.Selector);
          v115 = *v113;
          v114 = v113[1];
          v116 = v210;
          sub_1D69F2108(v28, v210);
          sub_1D69F3808(v116, v213, type metadata accessor for FormatItemNodeStyle.Selector);
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v108;
          v118 = sub_1D6D8CB60(v115, v114);
          v120 = *(v108 + 2);
          v121 = (v119 & 1) == 0;
          v97 = __OFADD__(v120, v121);
          v122 = v120 + v121;
          if (v97)
          {
            goto LABEL_95;
          }

          v123 = v119;
          if (*(v108 + 3) >= v122)
          {
            if ((v117 & 1) == 0)
            {
              v150 = v118;
              sub_1D6D84464();
              v118 = v150;
            }
          }

          else
          {
            sub_1D6D71AF4(v122, v117);
            v118 = sub_1D6D8CB60(v115, v114);
            if ((v123 & 1) != (v124 & 1))
            {
              goto LABEL_98;
            }
          }

          v28 = v222;
          v145 = v226;
          if (v123)
          {
            sub_1D69F37A4(v213, *(v226 + 7) + v118 * v107);
          }

          else
          {
            *&v226[8 * (v118 >> 6) + 64] |= 1 << v118;
            v146 = (*(v145 + 6) + 16 * v118);
            *v146 = v115;
            v146[1] = v114;
            sub_1D69F3808(v213, *(v145 + 7) + v118 * v107, type metadata accessor for FormatItemNodeStyle.Selector);
            v147 = *(v145 + 2);
            v97 = __OFADD__(v147, 1);
            v148 = v147 + 1;
            if (v97)
            {
              goto LABEL_96;
            }

            *(v145 + 2) = v148;
          }

          sub_1D69F3744(v212, type metadata accessor for FormatItemNodeStyle.Selector);
          sub_1D69F3744(v28, type metadata accessor for FormatItemNodeStyle.Selector);
          v227 = v145;
        }

        else
        {
          v126 = *v28;
          v125 = v28[1];
          sub_1D69F36DC(v28, v221, type metadata accessor for FormatItemNodeStyle.Selector);
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v108;
          v128 = sub_1D6D8CB60(v126, v125);
          v130 = *(v108 + 2);
          v131 = (v129 & 1) == 0;
          v97 = __OFADD__(v130, v131);
          v132 = v130 + v131;
          if (v97)
          {
            goto LABEL_92;
          }

          v133 = v129;
          if (*(v108 + 3) >= v132)
          {
            if ((v127 & 1) == 0)
            {
              v149 = v128;
              sub_1D6D84464();
              v128 = v149;
            }
          }

          else
          {
            sub_1D6D71AF4(v132, v127);
            v128 = sub_1D6D8CB60(v126, v125);
            if ((v133 & 1) != (v134 & 1))
            {
              goto LABEL_98;
            }
          }

          v28 = v222;
          v135 = v226;
          if (v133)
          {
            sub_1D69F37A4(v221, *(v226 + 7) + v128 * v107);
          }

          else
          {
            *&v226[8 * (v128 >> 6) + 64] |= 1 << v128;
            v136 = (*(v135 + 6) + 16 * v128);
            *v136 = v126;
            v136[1] = v125;
            sub_1D69F3808(v221, *(v135 + 7) + v128 * v107, type metadata accessor for FormatItemNodeStyle.Selector);
            v137 = *(v135 + 2);
            v97 = __OFADD__(v137, 1);
            v138 = v137 + 1;
            if (v97)
            {
              goto LABEL_94;
            }

            *(v135 + 2) = v138;
          }

          v227 = v135;
          v140 = *v28;
          v139 = v28[1];
          v141 = *(v223 + 2);
          v142 = *(v223 + 3);

          if (v141 >= v142 >> 1)
          {
            v223 = sub_1D698F4BC((v142 > 1), v141 + 1, 1, v223);
          }

          sub_1D69F3744(v28, type metadata accessor for FormatItemNodeStyle.Selector);
          v143 = v223;
          *(v223 + 2) = v141 + 1;
          v144 = &v143[16 * v141];
          *(v144 + 4) = v140;
          *(v144 + 5) = v139;
        }

        v105 = v219;
        if (v218 == ++v106)
        {
          goto LABEL_66;
        }
      }

LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

LABEL_66:

    v226 = v223;

    sub_1D6985DAC(v151);
    v152 = *(v226 + 2);
    if (!v152)
    {
      v156 = MEMORY[0x1E69E7CC0];
LABEL_82:

      v169 = (v208 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
      v170 = *(v208 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
      if ((v170 & 0xFF00) == 0x400)
      {
        v169 = (v207 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
        v170 = *(v207 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
      }

      v171 = *v169;
      v224 = v169[1];
      v225 = v171;
      v172 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
      swift_beginAccess();
      v173 = v208;
      LODWORD(v174) = *(v208 + v172);
      if (v174 == 2)
      {
        v175 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
        v174 = v207;
        swift_beginAccess();
        v173 = v208;
        LOBYTE(v174) = *(v174 + v175);
      }

      v176 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
      v177 = v173;
      swift_beginAccess();
      LODWORD(v177) = *(v177 + v176);
      if (v177 == 2)
      {
        v178 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
        v177 = v207;
        swift_beginAccess();
        LOBYTE(v177) = *(v177 + v178);
      }

      v179 = swift_allocObject();
      *(v179 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu) = 2;
      *(v179 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag) = 2;
      swift_beginAccess();
      v180 = v240;
      *(v179 + 80) = v239;
      *(v179 + 96) = v180;
      v181 = v238;
      *(v179 + 48) = v237;
      *(v179 + 64) = v181;
      v182 = v229;
      *(v179 + 120) = v228;
      v184 = v205;
      v183 = v206;
      *(v179 + 16) = v201;
      *(v179 + 24) = v184;
      v185 = v204;
      *(v179 + 32) = v200;
      *(v179 + 40) = v185;
      *(v179 + 112) = v241;
      *(v179 + 136) = v182;
      *(v179 + 152) = v230[0];
      *(v179 + 161) = *(v230 + 9);
      sub_1D69F3808(v183, v179 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, sub_1D5CC51A0);
      v186 = v198;
      *(v179 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds) = v199;
      *(v179 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors) = v186;
      v187 = (v179 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
      v188 = v196;
      *v187 = v197;
      v187[1] = v188;
      v189 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
      swift_beginAccess();
      *(v179 + v189) = v156;
      v190 = v179 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters;
      v191 = v224;
      *v190 = v225;
      *(v190 + 16) = v191;
      *(v190 + 32) = v170;
      v192 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
      swift_beginAccess();
      *(v179 + v192) = v174;
      v193 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
      swift_beginAccess();
      *(v179 + v193) = v177;
      return v179;
    }

    v153 = (v225 + 56);
    v154 = (v225 + 48);
    v155 = (v226 + 40);
    v156 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v158 = v227;
      if (*(v227 + 2))
      {
        v160 = *(v155 - 1);
        v159 = *v155;

        v161 = sub_1D6D8CB60(v160, v159);
        if (v162)
        {
          v163 = *(v158 + 7) + *(v225 + 72) * v161;
          v157 = v217;
          sub_1D69F36DC(v163, v217, type metadata accessor for FormatItemNodeStyle.Selector);
          v164 = 0;
        }

        else
        {
          v164 = 1;
          v157 = v217;
        }

        v165 = v216;
        (*v153)(v157, v164, 1, v216);

        if ((*v154)(v157, 1, v165) != 1)
        {
          v166 = v211;
          sub_1D69F3808(v157, v211, type metadata accessor for FormatItemNodeStyle.Selector);
          sub_1D69F3808(v166, v214, type metadata accessor for FormatItemNodeStyle.Selector);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = sub_1D698D524(0, v156[2] + 1, 1, v156);
          }

          v168 = v156[2];
          v167 = v156[3];
          if (v168 >= v167 >> 1)
          {
            v156 = sub_1D698D524(v167 > 1, v168 + 1, 1, v156);
          }

          v156[2] = v168 + 1;
          sub_1D69F3808(v214, v156 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v168, type metadata accessor for FormatItemNodeStyle.Selector);
          goto LABEL_70;
        }
      }

      else
      {
        v157 = v217;
        (*v153)(v217, 1, 1, v216);
      }

      sub_1D69F3744(v157, sub_1D69F363C);
LABEL_70:
      v155 += 2;
      if (!--v152)
      {
        goto LABEL_82;
      }
    }
  }

LABEL_97:
  __break(1u);
LABEL_98:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D69EFFD4(uint64_t a1)
{
  v3 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v74 = (&v59 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v60 = &v59 - v16;
  sub_1D69A5FD0(0);
  v64 = v17;
  v63 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v65 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v73 = &v59 - v22;
  v23 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  v61 = v1;
  v24 = *(v1 + v23);
  v25 = *(v24 + 16);

  v26 = MEMORY[0x1E69E7CC0];
  v27 = sub_1D698D524(0, v25, 0, MEMORY[0x1E69E7CC0]);
  v67 = sub_1D698D4F0(0, v25, 0, v26);
  v72 = *(v24 + 16);
  if (v72)
  {
    v28 = 0;
    v62 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v71 = v24 + v62;
    v29 = v74;
    v70 = v4;
    v69 = v13;
    v68 = v24;
    while (v28 < *(v24 + 16))
    {
      v30 = *(v4 + 72);
      sub_1D69F36DC(v71 + v30 * v28, v29, type metadata accessor for FormatItemNodeStyle.Selector);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v31 = v29[1];
      v76[0] = *v29;
      v76[1] = v31;

      v32 = sub_1D6844380(v76);

      v13 = *(v32 + 16);
      if (v13)
      {
        v33 = 0;
        v34 = 32;
        while (1)
        {
          if (v33 >= *(v32 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v36 = *(v32 + v34 + 16);
          v35 = *(v32 + v34 + 32);
          v37 = *(v32 + v34);
          v78 = *(v32 + v34 + 48);
          v77[1] = v36;
          v77[2] = v35;
          v77[0] = v37;
          v38 = v36;
          sub_1D5E3B610(v77, v76);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v33;
          sub_1D5E3B66C(v77);
          v34 += 56;
          if (v13 == v33)
          {
            goto LABEL_3;
          }
        }

        sub_1D5E3B66C(v77);
        if (v38 <= 1)
        {
          sub_1D69F36DC(v74, v66, type metadata accessor for FormatItemNodeStyle.Selector);
          v47 = v27[2];
          v46 = v27[3];
          v4 = v70;
          v13 = v69;
          if (v47 >= v46 >> 1)
          {
            v27 = sub_1D698D524(v46 > 1, v47 + 1, 1, v27);
          }

          v29 = v74;
          sub_1D69F3744(v74, type metadata accessor for FormatItemNodeStyle.Selector);
          v27[2] = v47 + 1;
          v43 = v27 + v62 + v47 * v30;
          v44 = type metadata accessor for FormatItemNodeStyle.Selector;
          v45 = &v80;
        }

        else
        {
          v39 = v65;
          sub_1D69F36DC(v74, v65, type metadata accessor for FormatItemNodeStyle.Selector);
          *(v39 + *(v64 + 36)) = v38;
          v41 = v67[2];
          v40 = v67[3];
          v4 = v70;
          v13 = v69;
          if (v41 >= v40 >> 1)
          {
            v67 = sub_1D698D4F0(v40 > 1, v41 + 1, 1, v67);
          }

          v29 = v74;
          sub_1D69F3744(v74, type metadata accessor for FormatItemNodeStyle.Selector);
          v42 = v67;
          v67[2] = v41 + 1;
          v43 = v42 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v41;
          v44 = sub_1D69A5FD0;
          v45 = &v79;
        }

        sub_1D69F3808(*(v45 - 32), v43, v44);
      }

      else
      {
LABEL_3:
        v29 = v74;
        sub_1D69F3744(v74, type metadata accessor for FormatItemNodeStyle.Selector);

        v4 = v70;
        v13 = v69;
      }

      ++v28;
      v24 = v68;
      if (v28 == v72)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:

    v48 = sub_1D72626AC();

    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = v48 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v51 = *(v63 + 72);
      do
      {
        v52 = v73;
        sub_1D69F36DC(v50, v73, sub_1D69A5FD0);
        sub_1D69F3808(v52, v13, type metadata accessor for FormatItemNodeStyle.Selector);
        v54 = v27[2];
        v53 = v27[3];
        if (v54 >= v53 >> 1)
        {
          v27 = sub_1D698D524(v53 > 1, v54 + 1, 1, v27);
        }

        v27[2] = v54 + 1;
        sub_1D69F3808(v13, v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v54, type metadata accessor for FormatItemNodeStyle.Selector);
        v50 += v51;
        --v49;
      }

      while (v49);
    }

    v55 = v61;
    v76[0] = v61;
    v56 = v27[2];

    v13 = v60;
    if (!v56)
    {
LABEL_31:

      return v55;
    }

    v57 = 0;
    v28 = 0;
    while (v57 < v27[2])
    {
      sub_1D69F36DC(v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v57, v13, type metadata accessor for FormatItemNodeStyle.Selector);
      sub_1D69F1604(v76, v13, &v75);
      ++v57;
      sub_1D69F3744(v13, type metadata accessor for FormatItemNodeStyle.Selector);

      v55 = v75;
      v76[0] = v75;
      if (v56 == v57)
      {
        goto LABEL_31;
      }
    }

LABEL_33:
    __break(1u);
  }

  __break(1u);

  sub_1D69F3744(v13, type metadata accessor for FormatItemNodeStyle.Selector);

  __break(1u);
  return result;
}

uint64_t sub_1D69F07C8()
{
  v1 = v0;
  v57 = *v0;
  sub_1D5CC51A0(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 4);
  *v71 = *(v0 + 3);
  v7 = *(v0 + 6);
  *&v71[32] = *(v0 + 5);
  v8 = v0[2];
  v54 = v0[3];
  v55 = v8;
  v9 = v0[5];
  v53 = v0[4];
  *&v71[16] = v6;
  v72 = v7;
  v73 = *(v0 + 112);
  v10 = v73;
  v11 = *v71;
  v50 = *&v71[24];
  v51 = *&v71[8];
  v12 = v71[40];
  v13 = v7;
  if ((v73 & 0xFE) == 0x7E)
  {
    v70[0] = *(v1 + 89);
    *(v70 + 3) = *(v1 + 23);
  }

  else
  {
    if ((~*v71 & 0xF000000000000007) != 0)
    {
      *&v67[0] = *v71;

      sub_1D5E3A490(v71, v58, &qword_1EDF270D0);
      sub_1D5CFCFAC(v11);
      sub_1D6E0CAE0(v58);

      v11 = *&v58[0];
    }

    else
    {

      sub_1D5E3A490(v71, v58, &qword_1EDF270D0);
    }

    sub_1D5ED34B0(v13, *(&v13 + 1), v10);
    sub_1D5E3AAD0(v71, &qword_1EDF270D0);
    v12 &= 1u;
    v69 = v12;
  }

  v46 = v11;
  v56 = v10;
  v14 = *(v1 + 176);
  v52 = v9;
  v48 = *(&v13 + 1);
  v49 = v13;
  v47 = v12;
  v15 = *(v1 + 17);
  v61 = *(v1 + 15);
  v62 = v15;
  v63[0] = *(v1 + 19);
  *&v63[1] = v1[21];
  if (v14 == 255)
  {
    v16 = 255;
  }

  else
  {
    BYTE8(v63[1]) = v14;
    v64[0] = v61;
    v64[1] = v15;
    v64[2] = v63[0];
    v65 = *&v63[1];
    v66 = v14;
    sub_1D62B5E68(v64, v58);
    sub_1D7172E10(v58);
    v67[0] = v61;
    v67[1] = v62;
    v68[0] = v63[0];
    *(v68 + 9) = *(v63 + 9);
    sub_1D62B5EC4(v67);
    v61 = v58[0];
    v62 = v58[1];
    v63[0] = v58[2];
    *&v63[1] = v59;
    v16 = v60;
  }

  v45 = v16;
  sub_1D69F36DC(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v5, sub_1D5CC51A0);
  v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
  v43 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
  v44 = v17;
  v18 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
  v20 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v42 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
  v22 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
  v23 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
  v40 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 16);
  v41 = v23;
  swift_beginAccess();
  v24 = *(v1 + v22);
  v25 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
  swift_beginAccess();
  LOBYTE(v25) = *(v1 + v25);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu) = 2;
  *(v26 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag) = 2;
  swift_beginAccess();
  v27 = v54;
  *(v26 + 16) = v55;
  *(v26 + 24) = v27;
  v28 = v52;
  *(v26 + 32) = v53;
  *(v26 + 40) = v28;
  *(v26 + 48) = v46;
  v29 = v51;
  *(v26 + 72) = v50;
  *(v26 + 56) = v29;
  *(v26 + 88) = v47;
  *(v26 + 89) = v70[0];
  *(v26 + 92) = *(v70 + 3);
  v30 = v48;
  *(v26 + 96) = v49;
  *(v26 + 104) = v30;
  *(v26 + 112) = v56;
  v31 = v62;
  *(v26 + 120) = v61;
  *(v26 + 136) = v31;
  *(v26 + 152) = v63[0];
  *(v26 + 168) = *&v63[1];
  *(v26 + 176) = v45;
  sub_1D69F3808(v5, v26 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, sub_1D5CC51A0);
  v32 = v43;
  *(v26 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds) = v44;
  *(v26 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors) = v32;
  v33 = (v26 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  *v33 = v18;
  v33[1] = v19;
  v34 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  *(v26 + v34) = v21;
  v35 = v26 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters;
  v36 = v40;
  *v35 = v41;
  *(v35 + 16) = v36;
  *(v35 + 32) = v42;
  v37 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
  swift_beginAccess();
  *(v26 + v37) = v24;
  v38 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
  swift_beginAccess();
  *(v26 + v38) = v25;
  sub_1D62B7E1C(v18);

  return v26;
}

uint64_t FormatItemNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatItemNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatItemNodeStyle.previewParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v9 = *(v1 + 80);
  v10 = v2;
  v11 = *(v1 + 112);
  v3 = v11;
  v4 = *(v1 + 64);
  v8[0] = *(v1 + 48);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D5E3A490(v8, v7, &qword_1EDF270D0);
}

uint64_t FormatItemNodeStyle.cellSelection.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v7[0] = *(v1 + 120);
  v7[1] = v2;
  v8[0] = *(v1 + 152);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 161);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1D5E3A490(v7, &v6, &qword_1EDF2CAB8);
}

unint64_t FormatItemNodeStyle.swipeActionStyle.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B7E1C(v2);
}

uint64_t sub_1D69F0F00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t FormatItemNodeStyle.selectors.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

__n128 FormatItemNodeStyle.focusParameters.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
  result = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t FormatItemNodeStyle.shouldCancelContextMenu.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FormatItemNodeStyle.shouldCancelContextMenu.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatItemNodeStyle.shouldCancelDrag.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t FormatItemNodeStyle.shouldCancelDrag.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t FormatItemNodeStyle.__allocating_init(identifier:class:previewParameters:cellSelection:cellAction:clipsToBounds:ignoresSmartInvertColors:swipeActionStyle:selectors:focusParameters:shouldCancelContextMenu:shouldCancelDrag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, char a8, char a9, uint64_t *a10, uint64_t a11, uint64_t a12, char a13, char a14)
{
  v20 = swift_allocObject();
  v21 = *a10;
  v22 = a10[1];
  v34 = *(a12 + 32);
  *(v20 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu) = 2;
  *(v20 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag) = 2;
  swift_beginAccess();
  v23 = *(a5 + 48);
  *(v20 + 80) = *(a5 + 32);
  *(v20 + 96) = v23;
  v24 = *(a5 + 16);
  *(v20 + 48) = *a5;
  *(v20 + 64) = v24;
  v25 = a6[1];
  *(v20 + 120) = *a6;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 112) = *(a5 + 64);
  *(v20 + 136) = v25;
  *(v20 + 152) = a6[2];
  *(v20 + 161) = *(a6 + 41);
  sub_1D69F3808(a7, v20 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, sub_1D5CC51A0);
  *(v20 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds) = a8;
  *(v20 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors) = a9;
  v26 = (v20 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  *v26 = v21;
  v26[1] = v22;
  v27 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  *(v20 + v27) = a11;
  v28 = v20 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters;
  v29 = *(a12 + 16);
  *v28 = *a12;
  *(v28 + 16) = v29;
  *(v28 + 32) = v34;
  v30 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
  swift_beginAccess();
  *(v20 + v30) = a13;
  v31 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
  swift_beginAccess();
  *(v20 + v31) = a14;
  return v20;
}

uint64_t FormatItemNodeStyle.init(identifier:class:previewParameters:cellSelection:cellAction:clipsToBounds:ignoresSmartInvertColors:swipeActionStyle:selectors:focusParameters:shouldCancelContextMenu:shouldCancelDrag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, char a8, char a9, uint64_t *a10, uint64_t a11, uint64_t a12, char a13, char a14)
{
  v32 = a10[1];
  v33 = *a10;
  v35 = *(a12 + 32);
  *(v14 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu) = 2;
  *(v14 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag) = 2;
  swift_beginAccess();
  v22 = *(a5 + 48);
  *(v14 + 80) = *(a5 + 32);
  *(v14 + 96) = v22;
  v23 = *(a5 + 16);
  *(v14 + 48) = *a5;
  *(v14 + 64) = v23;
  v24 = a6[1];
  *(v14 + 120) = *a6;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 112) = *(a5 + 64);
  *(v14 + 136) = v24;
  *(v14 + 152) = a6[2];
  *(v14 + 161) = *(a6 + 41);
  sub_1D69F3808(a7, v14 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, sub_1D5CC51A0);
  *(v14 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds) = a8;
  *(v14 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors) = a9;
  v25 = (v14 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  *v25 = v33;
  v25[1] = v32;
  v26 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  *(v14 + v26) = a11;
  v27 = v14 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters;
  v28 = *(a12 + 16);
  *v27 = *a12;
  *(v27 + 16) = v28;
  *(v27 + 32) = v35;
  v29 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
  swift_beginAccess();
  *(v14 + v29) = a13;
  v30 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
  swift_beginAccess();
  *(v14 + v30) = a14;
  return v14;
}

uint64_t sub_1D69F1604@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v66 = a3;
  sub_1D5CC51A0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v85 = &v57 - v11;
  v12 = *a1;
  v13 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  v14 = (a2 + v13[11]);
  if ((v14[2] & 0xFF00) == 0x400)
  {
    v14 = (v12 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
    v65 = *(v12 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
  }

  else
  {
    v65 = *(v14 + 16);
  }

  v15 = *v14;
  v63 = v14[1];
  v64 = v15;
  swift_beginAccess();
  v16 = *(v12 + 16);
  v17 = *(v12 + 24);
  v18 = *(v12 + 40);
  v61 = *(v12 + 32);
  v62 = v16;
  v67 = v18;
  v68 = v17;
  v84 = *(a2 + 80);
  v19 = *(a2 + 64);
  v83[2] = *(a2 + 48);
  v83[3] = v19;
  v20 = *(a2 + 32);
  v83[0] = *(a2 + 16);
  v83[1] = v20;
  if ((v84 & 0xFE) == 0x7E)
  {
    v21 = *(v12 + 64);
    v22 = *(v12 + 96);
    v76[0] = *(v12 + 80);
    v76[1] = v22;
    v77 = *(v12 + 112);
    v74 = *(v12 + 48);
    v75 = v21;
    sub_1D5E3A490(&v74, &v78, &qword_1EDF270D0);
    v80 = v76[0];
    v81 = v76[1];
    v82 = v77;
    v24 = v74;
    v23 = v75;
  }

  else
  {
    v25 = *(a2 + 64);
    v80 = *(a2 + 48);
    v81 = v25;
    v82 = *(a2 + 80);
    v24 = *(a2 + 16);
    v23 = *(a2 + 32);
  }

  v78 = v24;
  v79 = v23;
  *(v73 + 9) = *(a2 + 129);
  v26 = *(a2 + 104);
  v72[0] = *(a2 + 88);
  v72[1] = v26;
  v73[0] = *(a2 + 120);
  if (BYTE8(v73[1]) == 255)
  {
    v29 = *(v12 + 136);
    v74 = *(v12 + 120);
    v75 = v29;
    v76[0] = *(v12 + 152);
    *(v76 + 9) = *(v12 + 161);
    sub_1D5E3A490(&v74, &v69, &qword_1EDF2CAB8);
    v69 = v74;
    v70 = v75;
    v71[0] = v76[0];
    v28 = *(v76 + 9);
  }

  else
  {
    v27 = *(a2 + 104);
    v69 = *(a2 + 88);
    v70 = v27;
    v71[0] = *(a2 + 120);
    v28 = *(a2 + 129);
  }

  *(v71 + 9) = v28;
  sub_1D69F36DC(a2 + v13[7], v8, sub_1D5CC51A0);
  v30 = type metadata accessor for FormatItemNodeAction();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  if (v32(v8, 1, v30) == 1)
  {
    sub_1D69F36DC(v12 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v85, sub_1D5CC51A0);
    v33 = v32(v8, 1, v30);

    if (v33 != 1)
    {
      sub_1D5E3A490(v83, &v74, &qword_1EDF270D0);
      sub_1D5E3A490(v72, &v74, &qword_1EDF2CAB8);
      sub_1D69F3744(v8, sub_1D5CC51A0);
      goto LABEL_15;
    }
  }

  else
  {
    v34 = v85;
    sub_1D69F3808(v8, v85, type metadata accessor for FormatItemNodeAction);
    (*(v31 + 56))(v34, 0, 1, v30);
  }

  sub_1D5E3A490(v83, &v74, &qword_1EDF270D0);
  sub_1D5E3A490(v72, &v74, &qword_1EDF2CAB8);
LABEL_15:
  v35 = *(a2 + v13[8]);
  if (v35 == 2)
  {
    v35 = *(v12 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
  }

  v59 = v35;
  v36 = *(a2 + v13[9]);
  if (v36 == 2)
  {
    LOBYTE(v36) = *(v12 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
  }

  v37 = (a2 + v13[10]);
  v39 = *v37;
  v38 = v37[1];
  v40 = v39;
  v60 = v38;
  if (v39 == 3)
  {
    v40 = *(v12 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
    v38 = *(v12 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
    sub_1D62B7E1C(v40);
  }

  v57 = v40;
  v41 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  v58 = *(v12 + v41);
  LODWORD(v41) = *(a2 + v13[12]);
  if (v41 == 2)
  {
    v41 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
    swift_beginAccess();
    LOBYTE(v41) = *(v12 + v41);
  }

  v42 = *(a2 + v13[13]);
  if (v42 == 2)
  {
    v43 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
    swift_beginAccess();
    LOBYTE(v42) = *(v12 + v43);
  }

  type metadata accessor for FormatItemNodeStyle(0);
  v44 = swift_allocObject();
  *(v44 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu) = 2;
  *(v44 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag) = 2;
  swift_beginAccess();
  v45 = v81;
  *(v44 + 80) = v80;
  *(v44 + 96) = v45;
  v46 = v79;
  *(v44 + 48) = v78;
  *(v44 + 64) = v46;
  v47 = v70;
  *(v44 + 120) = v69;
  v48 = v68;
  *(v44 + 16) = v62;
  *(v44 + 24) = v48;
  v49 = v67;
  *(v44 + 32) = v61;
  *(v44 + 40) = v49;
  *(v44 + 112) = v82;
  *(v44 + 136) = v47;
  *(v44 + 152) = v71[0];
  *(v44 + 161) = *(v71 + 9);
  sub_1D69F3808(v85, v44 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, sub_1D5CC51A0);
  *(v44 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds) = v59;
  *(v44 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors) = v36;
  v50 = (v44 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  *v50 = v57;
  v50[1] = v38;
  v51 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  *(v44 + v51) = v58;
  v52 = v44 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters;
  v53 = v63;
  *v52 = v64;
  *(v52 + 16) = v53;
  *(v52 + 32) = v65;
  v54 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
  swift_beginAccess();
  *(v44 + v54) = v41;
  v55 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
  swift_beginAccess();
  *(v44 + v55) = v42;
  *v66 = v44;
  sub_1D62B7E1C(v39);
}

uint64_t FormatItemNodeStyle.deinit()
{

  sub_1D69F1D44(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_1D69F1DB0(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  sub_1D69F3744(v0 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, sub_1D5CC51A0);
  sub_1D62B5E14(*(v0 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle));

  return v0;
}

uint64_t sub_1D69F1D44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a9 & 0xFE) != 0x7E)
  {
    sub_1D5C84FF4(result);

    return sub_1D5ED348C(a7, a8, a9);
  }

  return result;
}

void sub_1D69F1DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != -1)
  {
    sub_1D62B53F0(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t FormatItemNodeStyle.__deallocating_deinit()
{

  sub_1D69F1D44(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_1D69F1DB0(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  sub_1D69F3744(v0 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, sub_1D5CC51A0);
  sub_1D62B5E14(*(v0 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle));

  return swift_deallocClassInstance();
}

uint64_t FormatItemNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatItemNodeStyle.Selector.previewParameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D5E3A490(v8, v7, &qword_1EDF270D0);
}

uint64_t FormatItemNodeStyle.Selector.cellSelection.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v7[0] = *(v1 + 88);
  v7[1] = v2;
  v8[0] = *(v1 + 120);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 129);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1D5E3A490(v7, &v6, &qword_1EDF2CAB8);
}

unint64_t FormatItemNodeStyle.Selector.swipeActionStyle.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FormatItemNodeStyle.Selector(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D62B7E1C(v4);
}

__n128 FormatItemNodeStyle.Selector.focusParameters.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FormatItemNodeStyle.Selector(0) + 44);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

unint64_t sub_1D69F2108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5CC51A0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v57 - v11;
  v13 = v2[1];
  v61 = *v2;
  v63 = v13;
  v80 = *(v2 + 80);
  v14 = *(v2 + 4);
  v79[2] = *(v2 + 3);
  v79[3] = v14;
  v15 = *(v2 + 2);
  v79[0] = *(v2 + 1);
  v79[1] = v15;
  if ((v80 & 0xFE) == 0x7E)
  {
    v16 = *(a1 + 64);
    v72[0] = *(a1 + 48);
    v72[1] = v16;
    v73 = *(a1 + 80);
    v17 = *(a1 + 32);
    v70 = *(a1 + 16);
    v71 = v17;
    sub_1D5E3A490(&v70, &v74, &qword_1EDF270D0);
    v76 = v72[0];
    v77 = v72[1];
    v78 = v73;
    v19 = v70;
    v18 = v71;
  }

  else
  {
    v20 = *(v2 + 4);
    v76 = *(v2 + 3);
    v77 = v20;
    v78 = *(v2 + 80);
    v19 = *(v2 + 1);
    v18 = *(v2 + 2);
  }

  v74 = v19;
  v75 = v18;
  v64 = a1;
  *(v69 + 9) = *(v2 + 129);
  v21 = *(v2 + 13);
  v68[0] = *(v2 + 11);
  v68[1] = v21;
  v69[0] = *(v2 + 15);
  if (BYTE8(v69[1]) == 255)
  {
    v24 = *(v64 + 104);
    v70 = *(v64 + 88);
    v71 = v24;
    v72[0] = *(v64 + 120);
    *(v72 + 9) = *(v64 + 129);
    sub_1D5E3A490(&v70, &v65, &qword_1EDF2CAB8);
    v65 = v70;
    v66 = v71;
    v67[0] = v72[0];
    v23 = *(v72 + 9);
  }

  else
  {
    v22 = *(v2 + 13);
    v65 = *(v2 + 11);
    v66 = v22;
    v67[0] = *(v2 + 15);
    v23 = *(v2 + 129);
  }

  *(v67 + 9) = v23;
  v25 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D69F36DC(v2 + v25[7], v8, sub_1D5CC51A0);
  v26 = type metadata accessor for FormatItemNodeAction();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v8, 1, v26) == 1)
  {
    v29 = v64;
    sub_1D69F36DC(v64 + v25[7], v12, sub_1D5CC51A0);
    v30 = v28(v8, 1, v26);

    sub_1D5E3A490(v79, &v70, &qword_1EDF270D0);
    sub_1D5E3A490(v68, &v70, &qword_1EDF2CAB8);
    if (v30 != 1)
    {
      sub_1D69F3744(v8, sub_1D5CC51A0);
    }
  }

  else
  {
    sub_1D69F3808(v8, v12, type metadata accessor for FormatItemNodeAction);
    (*(v27 + 56))(v12, 0, 1, v26);

    sub_1D5E3A490(v79, &v70, &qword_1EDF270D0);
    sub_1D5E3A490(v68, &v70, &qword_1EDF2CAB8);
    v29 = v64;
  }

  v31 = v25[8];
  v32 = *(v2 + v31);
  if (v32 == 2)
  {
    v32 = *(v29 + v31);
  }

  v60 = v32;
  v62 = v12;
  v33 = v25[9];
  v34 = *(v2 + v33);
  if (v34 == 2)
  {
    LOBYTE(v34) = *(v29 + v33);
  }

  v35 = v25[10];
  v36 = *(v2 + v35);
  v37 = *(v2 + v35 + 8);
  v38 = v36;
  v59 = v37;
  if (v36 == 3)
  {
    v39 = (v29 + v35);
    v38 = *v39;
    v37 = v39[1];
    sub_1D62B7E1C(*v39);
  }

  v40 = v25[11];
  v41 = (v2 + v40);
  v42 = *(v2 + v40 + 32);
  if ((v42 & 0xFF00) == 0x400)
  {
    v41 = (v29 + v40);
    v42 = *(v29 + v40 + 32);
  }

  v43 = v25[12];
  v44 = *(v2 + v43);
  if (v44 == 2)
  {
    LOBYTE(v44) = *(v64 + v43);
  }

  v45 = *v41;
  v57 = v41[1];
  v58 = v45;
  v46 = v25[13];
  v47 = *(v2 + v46);
  if (v47 == 2)
  {
    LOBYTE(v47) = *(v64 + v46);
  }

  v48 = v77;
  *(a2 + 48) = v76;
  *(a2 + 64) = v48;
  v49 = v75;
  *(a2 + 16) = v74;
  *(a2 + 32) = v49;
  v50 = v66;
  *(a2 + 88) = v65;
  *(a2 + 129) = *(v67 + 9);
  *(a2 + 120) = v67[0];
  v51 = v62;
  v52 = v63;
  *a2 = v61;
  *(a2 + 8) = v52;
  *(a2 + 80) = v78;
  *(a2 + 104) = v50;
  sub_1D69F3808(v51, a2 + v25[7], sub_1D5CC51A0);
  *(a2 + v25[8]) = v60;
  *(a2 + v25[9]) = v34;
  v53 = (a2 + v25[10]);
  *v53 = v38;
  v53[1] = v37;
  v54 = a2 + v25[11];
  v55 = v57;
  *v54 = v58;
  *(v54 + 16) = v55;
  *(v54 + 32) = v42;
  *(a2 + v25[12]) = v44;
  *(a2 + v25[13]) = v47;
  return sub_1D62B7E1C(v36);
}

uint64_t _s8NewsFeed19FormatItemNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatItemNodeAction();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CC51A0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69F42E0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v18 = sub_1D72646CC(), result = 0, (v18 & 1) != 0))
  {
    v85 = v12;
    v86 = v5;
    v20 = *(a1 + 32);
    v21 = *(a1 + 64);
    v118 = *(a1 + 48);
    v119 = v21;
    v22 = *(a1 + 32);
    v117[0] = *(a1 + 16);
    v117[1] = v22;
    v23 = *(a2 + 32);
    v24 = *(a2 + 64);
    v122 = *(a2 + 48);
    v123 = v24;
    v25 = *(a2 + 32);
    v121[0] = *(a2 + 16);
    v121[1] = v25;
    v114 = v117[0];
    v115 = v20;
    v26 = *(a1 + 64);
    v116[0] = v118;
    v116[1] = v26;
    *&v113[7] = v121[0];
    *&v113[23] = v23;
    v120 = *(a1 + 80);
    v124 = *(a2 + 80);
    v27 = v120;
    *&v113[39] = v122;
    *&v113[55] = *(a2 + 64);
    v28 = v124;
    if ((v120 & 0xFE) == 0x7E)
    {
      if ((v124 & 0xFE) == 0x7E)
      {
        v83 = v8;
        v29 = *(a1 + 32);
        v109 = *(a1 + 16);
        v110 = v29;
        v30 = *(a1 + 64);
        *v111 = *(a1 + 48);
        *&v111[16] = v30;
        v111[32] = v120;
        sub_1D5E3A490(v117, &v105, &qword_1EDF270D0);
        sub_1D5E3A490(v121, &v105, &qword_1EDF270D0);
        sub_1D5E3AAD0(&v109, &qword_1EDF270D0);
LABEL_12:
        v38 = *(a1 + 104);
        v95 = *(a1 + 88);
        v96 = v38;
        v97[0] = *(a1 + 120);
        *(v97 + 9) = *(a1 + 129);
        v39 = *(a2 + 104);
        v105 = *(a2 + 88);
        v106 = v39;
        v107[0] = *(a2 + 120);
        *(v107 + 9) = *(a2 + 129);
        v40 = *(a1 + 104);
        v101 = *(a1 + 88);
        v102 = v40;
        v103 = *(a1 + 120);
        v104 = *(a1 + 136);
        v41 = BYTE8(v97[1]);
        *&v113[7] = *(a2 + 88);
        *&v113[23] = *(a2 + 104);
        *&v113[39] = *(a2 + 120);
        *&v113[55] = *(a2 + 136);
        v42 = BYTE8(v107[1]);
        if (BYTE8(v97[1]) == 255)
        {
          if (BYTE8(v107[1]) != 255)
          {
            sub_1D5E3A490(&v95, &v109, &qword_1EDF2CAB8);
            sub_1D5E3A490(&v105, &v109, &qword_1EDF2CAB8);
            goto LABEL_22;
          }

          v45 = *(a1 + 104);
          v109 = *(a1 + 88);
          v110 = v45;
          *v111 = *(a1 + 120);
          *&v111[16] = *(a1 + 136);
          v111[24] = -1;
          sub_1D5E3A490(&v95, &v91, &qword_1EDF2CAB8);
          sub_1D5E3A490(&v105, &v91, &qword_1EDF2CAB8);
          sub_1D5E3AAD0(&v109, &qword_1EDF2CAB8);
LABEL_18:
          v48 = type metadata accessor for FormatItemNodeStyle.Selector(0);
          v49 = v48[7];
          v50 = *(v14 + 48);
          sub_1D69F36DC(a1 + v49, v17, sub_1D5CC51A0);
          sub_1D69F36DC(a2 + v49, &v17[v50], sub_1D5CC51A0);
          v51 = *(v86 + 48);
          if (v51(v17, 1, v4) == 1)
          {
            if (v51(&v17[v50], 1, v4) == 1)
            {
              sub_1D69F3744(v17, sub_1D5CC51A0);
              goto LABEL_30;
            }
          }

          else
          {
            v52 = v85;
            sub_1D69F36DC(v17, v85, sub_1D5CC51A0);
            if (v51(&v17[v50], 1, v4) != 1)
            {
              v53 = v52;
              v54 = v83;
              sub_1D69F3808(&v17[v50], v83, type metadata accessor for FormatItemNodeAction);
              v55 = static FormatItemNodeAction.== infix(_:_:)(v53, v54);
              sub_1D69F3744(v54, type metadata accessor for FormatItemNodeAction);
              sub_1D69F3744(v53, type metadata accessor for FormatItemNodeAction);
              sub_1D69F3744(v17, sub_1D5CC51A0);
              if ((v55 & 1) == 0)
              {
                return 0;
              }

LABEL_30:
              v56 = v48[8];
              v57 = *(a1 + v56);
              v58 = *(a2 + v56);
              if (v57 == 2)
              {
                if (v58 != 2)
                {
                  return 0;
                }
              }

              else if (v58 == 2 || ((v58 ^ v57) & 1) != 0)
              {
                return 0;
              }

              v59 = v48[9];
              v60 = *(a1 + v59);
              v61 = *(a2 + v59);
              if (v60 == 2)
              {
                if (v61 != 2)
                {
                  return 0;
                }
              }

              else if (v61 == 2 || ((v61 ^ v60) & 1) != 0)
              {
                return 0;
              }

              v62 = v48[10];
              v64 = *(a1 + v62);
              v63 = *(a1 + v62 + 8);
              v65 = (a2 + v62);
              v67 = *v65;
              v66 = v65[1];
              if (v64 == 3)
              {
                sub_1D62B7E1C(3uLL);
                if (v67 == 3)
                {
                  sub_1D62B7E1C(3uLL);
                  sub_1D62B5E14(3uLL);
                  goto LABEL_48;
                }

                sub_1D62B7E1C(v67);
              }

              else
              {
                *&v109 = v64;
                *(&v109 + 1) = v63;
                if (v67 != 3)
                {
                  *v113 = v67;
                  *&v113[8] = v66;
                  sub_1D62B7E1C(v64);
                  sub_1D62B7E1C(v67);
                  sub_1D62B7E1C(v64);
                  v68 = _s8NewsFeed30FormatItemNodeSwipeActionStyleO2eeoiySbAC_ACtFZ_0(&v109, v113);
                  sub_1D62B5E24(*v113);
                  sub_1D62B5E24(v109);
                  sub_1D62B5E14(v64);
                  if (!v68)
                  {
                    return 0;
                  }

LABEL_48:
                  v69 = v48[11];
                  v70 = (a1 + v69);
                  v71 = *(a1 + v69 + 32);
                  v72 = (a2 + v69);
                  v73 = *(a2 + v69 + 32);
                  if ((v71 & 0xFF00) == 0x400)
                  {
                    if ((v73 & 0xFF00) != 0x400)
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v74 = *v72;
                    v75 = v72[1];
                    v76 = v70[1];
                    v109 = *v70;
                    v110 = v76;
                    *v111 = v71;
                    if ((v73 & 0xFF00) == 0x400)
                    {
                      return 0;
                    }

                    *v113 = v74;
                    *&v113[16] = v75;
                    *&v113[32] = v73 & 0xFF01;
                    if ((_s8NewsFeed21FormatFocusParametersV2eeoiySbAC_ACtFZ_0(&v109, v113) & 1) == 0)
                    {
                      return 0;
                    }
                  }

                  v77 = v48[12];
                  v78 = *(a1 + v77);
                  v79 = *(a2 + v77);
                  if (v78 == 2)
                  {
                    if (v79 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v79 == 2 || ((v79 ^ v78) & 1) != 0)
                  {
                    return 0;
                  }

                  v80 = v48[13];
                  v81 = *(a1 + v80);
                  v82 = *(a2 + v80);
                  if (v81 == 2)
                  {
                    if (v82 != 2)
                    {
                      return 0;
                    }
                  }

                  else if (v82 == 2 || ((v82 ^ v81) & 1) != 0)
                  {
                    return 0;
                  }

                  return 1;
                }

                sub_1D62B7E1C(v64);
                sub_1D62B7E1C(3uLL);
                sub_1D62B7E1C(v64);
                sub_1D62B5E24(v64);
              }

              sub_1D62B5E14(v64);
              sub_1D62B5E14(v67);
              return 0;
            }

            sub_1D69F3744(v52, type metadata accessor for FormatItemNodeAction);
          }

          sub_1D69F3744(v17, sub_1D69F42E0);
          return 0;
        }

        v43 = *(a1 + 120);
        *&v111[16] = *(a1 + 136);
        v44 = *(a1 + 104);
        v109 = *(a1 + 88);
        v110 = v44;
        *v111 = v43;
        v111[24] = BYTE8(v97[1]);
        v91 = v109;
        v92 = v44;
        v93[0] = v43;
        *(v93 + 9) = *&v111[9];
        if (BYTE8(v107[1]) == 255)
        {
          v87 = v109;
          v88 = v110;
          v89[0] = *v111;
          *(v89 + 9) = *&v111[9];
          sub_1D5E3A490(&v95, &v114, &qword_1EDF2CAB8);
          sub_1D5E3A490(&v105, &v114, &qword_1EDF2CAB8);
          sub_1D5E3A490(&v109, &v114, &qword_1EDF2CAB8);
          sub_1D62B5EC4(&v87);
LABEL_22:
          v109 = v101;
          v110 = v102;
          *v111 = v103;
          *&v111[25] = *v113;
          *&v111[16] = v104;
          v111[24] = v41;
          *&v111[41] = *&v113[16];
          *&v111[57] = *&v113[32];
          *&v111[72] = *&v113[47];
          v111[88] = v42;
          v33 = &unk_1EC889B18;
          v34 = &qword_1EDF2CAB8;
          goto LABEL_23;
        }

        v46 = *(a2 + 104);
        v87 = *(a2 + 88);
        v88 = v46;
        v89[0] = *(a2 + 120);
        *&v89[1] = *(a2 + 136);
        BYTE8(v89[1]) = BYTE8(v107[1]);
        v84 = v4;
        sub_1D5E3A490(&v95, &v114, &qword_1EDF2CAB8);
        sub_1D5E3A490(&v105, &v114, &qword_1EDF2CAB8);
        sub_1D5E3A490(&v109, &v114, &qword_1EDF2CAB8);
        v47 = _s8NewsFeed19FormatCellSelectionO2eeoiySbAC_ACtFZ_0(&v91, &v87);
        v99[0] = v87;
        v99[1] = v88;
        v100[0] = v89[0];
        *(v100 + 9) = *(v89 + 9);
        sub_1D62B5EC4(v99);
        v114 = v91;
        v115 = v92;
        v116[0] = v93[0];
        *(v116 + 9) = *(v93 + 9);
        sub_1D62B5EC4(&v114);
        v87 = v101;
        v88 = v102;
        v89[0] = v103;
        *&v89[1] = v104;
        BYTE8(v89[1]) = v41;
        v4 = v84;
        sub_1D5E3AAD0(&v87, &qword_1EDF2CAB8);
        if (v47)
        {
          goto LABEL_18;
        }

        return 0;
      }

      sub_1D5E3A490(v117, &v109, &qword_1EDF270D0);
      sub_1D5E3A490(v121, &v109, &qword_1EDF270D0);
    }

    else
    {
      v31 = *(a1 + 32);
      v109 = *(a1 + 16);
      v110 = v31;
      v32 = *(a1 + 64);
      *v111 = *(a1 + 48);
      *&v111[16] = v32;
      v111[32] = v120;
      v108 = v120;
      v107[0] = *v111;
      v107[1] = v32;
      v105 = v109;
      v106 = v31;
      if ((v124 & 0xFE) != 0x7E)
      {
        v83 = v8;
        v84 = v4;
        v35 = *(a2 + 32);
        v95 = *(a2 + 16);
        v96 = v35;
        v36 = *(a2 + 64);
        v97[0] = *(a2 + 48);
        v97[1] = v36;
        v98 = v124;
        sub_1D5E3A490(v117, &v91, &qword_1EDF270D0);
        sub_1D5E3A490(v121, &v91, &qword_1EDF270D0);
        sub_1D5E3A490(&v109, &v91, &qword_1EDF270D0);
        v37 = _s8NewsFeed23FormatPreviewParametersV2eeoiySbAC_ACtFZ_0(&v105, &v95);
        v89[0] = v97[0];
        v89[1] = v97[1];
        v90 = v98;
        v87 = v95;
        v88 = v96;
        sub_1D669BE18(&v87);
        v93[0] = v107[0];
        v93[1] = v107[1];
        v94 = v108;
        v91 = v105;
        v92 = v106;
        sub_1D669BE18(&v91);
        v95 = v114;
        v96 = v115;
        v97[0] = v116[0];
        v97[1] = v116[1];
        v98 = v27;
        v4 = v84;
        sub_1D5E3AAD0(&v95, &qword_1EDF270D0);
        if (!v37)
        {
          return 0;
        }

        goto LABEL_12;
      }

      v97[0] = *v111;
      v97[1] = *&v111[16];
      v98 = v111[32];
      v95 = v109;
      v96 = v110;
      sub_1D5E3A490(v117, &v91, &qword_1EDF270D0);
      sub_1D5E3A490(v121, &v91, &qword_1EDF270D0);
      sub_1D5E3A490(&v109, &v91, &qword_1EDF270D0);
      sub_1D669BE18(&v95);
    }

    v109 = v114;
    v110 = v115;
    *v111 = v116[0];
    *&v111[16] = v116[1];
    *&v111[49] = *&v113[16];
    *&v111[65] = *&v113[32];
    *&v111[81] = *&v113[48];
    v111[32] = v27;
    *&v111[96] = *&v113[63];
    *&v111[33] = *v113;
    v112 = v28;
    v33 = &unk_1EC889B10;
    v34 = &qword_1EDF270D0;
LABEL_23:
    sub_1D67361F4(&v109, v33, v34);
    return 0;
  }

  return result;
}

uint64_t sub_1D69F3268(uint64_t a1)
{
  result = sub_1D69F3344(&qword_1EC88FDC0, type metadata accessor for FormatItemNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D69F32C0(uint64_t a1)
{
  *(a1 + 16) = sub_1D69F3344(qword_1EDF2C518, type metadata accessor for FormatItemNodeStyle);
  result = sub_1D69F3344(&qword_1EDF0FC10, type metadata accessor for FormatItemNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D69F3344(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D69F338C(void *a1)
{
  a1[1] = sub_1D69F3344(qword_1EDF2C518, type metadata accessor for FormatItemNodeStyle);
  a1[2] = sub_1D69F3344(&qword_1EDF0FC10, type metadata accessor for FormatItemNodeStyle);
  result = sub_1D69F3344(&qword_1EC88FDC8, type metadata accessor for FormatItemNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D69F3438(uint64_t a1)
{
  result = sub_1D69F3344(&qword_1EC88FDD0, type metadata accessor for FormatItemNodeStyle.Selector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D69F3490(uint64_t a1)
{
  *(a1 + 8) = sub_1D69F3344(&qword_1EDF2C5E0, type metadata accessor for FormatItemNodeStyle.Selector);
  result = sub_1D69F3344(&qword_1EDF2C5E8, type metadata accessor for FormatItemNodeStyle.Selector);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D69F3514(void *a1)
{
  a1[1] = sub_1D69F3344(&qword_1EDF2C5E0, type metadata accessor for FormatItemNodeStyle.Selector);
  a1[2] = sub_1D69F3344(&qword_1EDF2C5E8, type metadata accessor for FormatItemNodeStyle.Selector);
  result = sub_1D69F3344(&qword_1EC88FDD8, type metadata accessor for FormatItemNodeStyle.Selector);
  a1[3] = result;
  return result;
}

void sub_1D69F3670()
{
  if (!qword_1EDF1B9C8)
  {
    type metadata accessor for FormatItemNodeStyle.Selector(255);
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B9C8);
    }
  }
}

uint64_t sub_1D69F36DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D69F3744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D69F37A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69F3808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1D69F3870(uint64_t a1, uint64_t a2)
{
  sub_1D5CC51A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 112);
  v111 = *(a1 + 96);
  v112 = v7;
  v113 = *(a1 + 128);
  v114 = *(a1 + 144);
  v8 = *(a1 + 48);
  v107 = *(a1 + 32);
  v108 = v8;
  v9 = *(a1 + 80);
  v109 = *(a1 + 64);
  v110 = v9;
  v10 = *(a1 + 16);
  v105 = *a1;
  v106 = v10;
  v11 = MEMORY[0x1E69E6F90];
  sub_1D5CC52B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  v76 = xmmword_1D7284F00;
  *(v12 + 16) = xmmword_1D7284F00;
  sub_1D5CC52B4(0, &qword_1EC880490, sub_1D5EA74B8, v11);
  v14 = v13;
  sub_1D5EA74B8();
  v78 = v15;
  v16 = *(*(v15 - 8) + 80);
  v17 = (v16 + 32) & ~v16;
  v79 = *(*(v15 - 8) + 72);
  v74 = v16;
  v75 = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7273AE0;
  v19 = (v18 + v17);
  if (a2)
  {
    v20 = *(a2 + 32);
    v72 = *(a2 + 40);
    v73 = v20;

    v21 = sub_1D69F07C8();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 64) = 0x1800000000000000;
    v23 = sub_1D601118C;
  }

  else
  {
    v23 = sub_1D70DD9D8;
    v22 = 0;
    v72 = 0xE000000000000000;
    v73 = 0;
  }

  v24 = type metadata accessor for FormatInspectionItem(0);
  v25 = (v19 + *(v24 + 24));
  *v25 = v23;
  v25[1] = v22;
  v26 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v27 = v72;
  *(v18 + v17) = v73;
  v19[2] = 0;
  v19[3] = 0;
  v19[1] = v27;
  v28 = v19 + *(v24 + 28);
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = -1;
  v29 = *(*(v24 - 8) + 56);
  v29(v19, 0, 1, v24);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v18, v101);
  swift_setDeallocating();
  sub_1D69F3744(v19, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v12 + 56) = &type metadata for FormatInspectionGroup;
  *(v12 + 64) = &off_1F518B2C0;
  v30 = swift_allocObject();
  *(v12 + 32) = v30;
  v31 = v101[1];
  *(v30 + 16) = v101[0];
  *(v30 + 32) = v31;
  *(v30 + 48) = v102;
  v32 = v79;
  v33 = swift_allocObject();
  *(v33 + 16) = v76;
  *&v76 = v33;
  v34 = v33 + v17;
  v35 = v29;
  sub_1D711F844(1701869908, 0xE400000000000000, 1835365449, 0xE400000000000000, (v33 + v17));
  v29(v34, 0, 1, v24);
  if (a2)
  {
    sub_1D711E9F0(0x6F74207370696C43, 0xEF73646E756F4220, *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds), (v34 + v32));
    v29(v34 + v32, 0, 1, v24);
    v36 = v77;
    sub_1D69F36DC(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v77, sub_1D5CC51A0);
  }

  else
  {
    sub_1D711E9F0(0x6F74207370696C43, 0xEF73646E756F4220, 2u, (v34 + v32));
    v29(v34 + v32, 0, 1, v24);
    v37 = type metadata accessor for FormatItemNodeAction();
    v36 = v77;
    (*(*(v37 - 8) + 56))(v77, 1, 1, v37);
  }

  sub_1D7126374(0x746341206C6C6543, 0xEB000000006E6F69, v36, (v34 + 2 * v32));
  v29(v34 + 2 * v32, 0, 1, v24);
  if (a2)
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors), (v34 + 3 * v32));
    v29(v34 + 3 * v32, 0, 1, v24);
    v38 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
    swift_beginAccess();
    v39 = *(a2 + v38);
  }

  else
  {
    v40 = 3 * v79;
    v39 = 2;
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, 2u, (v34 + 3 * v79));
    v41 = v34 + v40;
    v32 = v79;
    v35(v41, 0, 1, v24);
  }

  v42 = (v34 + 4 * v32);
  sub_1D711E9F0(0xD00000000000001ALL, 0x80000001D73DE9F0, v39, v42);
  v35(v42, 0, 1, v24);
  if (a2)
  {
    v43 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
    swift_beginAccess();
    v44 = *(a2 + v43);
  }

  else
  {
    v44 = 2;
  }

  v45 = 5 * v79;
  sub_1D711E9F0(0xD000000000000012, 0x80000001D73DEA10, v44, (v34 + 5 * v79));
  v35(v34 + v45, 0, 1, v24);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v76, v103);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v12 + 96) = &type metadata for FormatInspectionGroup;
  *(v12 + 104) = &off_1F518B2C0;
  v46 = swift_allocObject();
  *(v12 + 72) = v46;
  v47 = v103[1];
  *(v46 + 16) = v103[0];
  *(v46 + 32) = v47;
  *(v46 + 48) = v104;
  v99[6] = v111;
  v99[7] = v112;
  v99[8] = v113;
  v99[2] = v107;
  v99[3] = v108;
  v99[4] = v109;
  v99[5] = v110;
  v99[0] = v105;
  v99[1] = v106;
  v100 = v114;
  if (a2)
  {
    v48 = *(a2 + 64);
    v49 = *(a2 + 96);
    v89 = *(a2 + 80);
    v90 = v49;
    LOBYTE(v91) = *(a2 + 112);
    v87 = *(a2 + 48);
    v88 = v48;
    sub_1D5E3A490(&v87, &v81, &qword_1EDF270D0);
    v50 = v87;
    v51 = v88;
    v52 = v89;
    v53 = v90;
    v54 = v91;
  }

  else
  {
    v54 = 126;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
  }

  v87 = v50;
  v88 = v51;
  v89 = v52;
  v90 = v53;
  LOBYTE(v91) = v54;
  v55 = sub_1D67A5AE0(v99, &v87);
  v97[2] = v89;
  v97[3] = v90;
  v98 = v91;
  v97[0] = v87;
  v97[1] = v88;
  sub_1D5E3AAD0(v97, &qword_1EDF270D0);
  *(v12 + 136) = &type metadata for FormatInspection;
  *(v12 + 144) = &off_1F51E3FD0;
  *(v12 + 112) = v55;
  v93 = v111;
  v94 = v112;
  v95 = v113;
  v96 = v114;
  v89 = v107;
  v90 = v108;
  v91 = v109;
  v92 = v110;
  v87 = v105;
  v88 = v106;
  if (a2)
  {
    v56 = *(a2 + 136);
    v81 = *(a2 + 120);
    v82 = v56;
    v83[0] = *(a2 + 152);
    *(v83 + 9) = *(a2 + 161);
    sub_1D5E3A490(&v81, v85, &qword_1EDF2CAB8);
    v58 = v81;
    v57 = v82;
    v59 = v83[0];
    v60 = *&v83[1];
    v61 = BYTE8(v83[1]);
  }

  else
  {
    v60 = 0;
    v61 = -1;
    v57 = 0uLL;
    v59 = 0uLL;
    v58 = 0uLL;
  }

  v81 = v58;
  v82 = v57;
  v83[0] = v59;
  *&v83[1] = v60;
  BYTE8(v83[1]) = v61;
  v62 = sub_1D7174580(&v87, &v81);
  v85[0] = v81;
  v85[1] = v82;
  v86[0] = v83[0];
  *(v86 + 9) = *(v83 + 9);
  sub_1D5E3AAD0(v85, &qword_1EDF2CAB8);
  *(v12 + 176) = &type metadata for FormatInspection;
  *(v12 + 184) = &off_1F51E3FD0;
  *(v12 + 152) = v62;
  v83[4] = v111;
  v83[5] = v112;
  v83[6] = v113;
  v84 = v114;
  v83[0] = v107;
  v83[1] = v108;
  v83[2] = v109;
  v83[3] = v110;
  v81 = v105;
  v82 = v106;
  if (a2)
  {
    v64 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
    v63 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
    sub_1D62B7E1C(v64);
  }

  else
  {
    v63 = 0;
    v64 = 3;
  }

  v80[0] = v64;
  v80[1] = v63;
  v65 = sub_1D6740F58(&v81, v80);
  sub_1D62B5E14(v80[0]);
  *(v12 + 216) = &type metadata for FormatInspection;
  *(v12 + 224) = &off_1F51E3FD0;
  *(v12 + 192) = v65;
  if (a2)
  {
    v66 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
    v67 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 16);
    v68 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
  }

  else
  {
    v66 = 0uLL;
    v68 = 1024;
    v67 = 0uLL;
  }

  v81 = v66;
  v82 = v67;
  LOWORD(v83[0]) = v68;
  v69 = sub_1D6A6466C(&v105, &v81);
  *(v12 + 256) = &type metadata for FormatInspection;
  *(v12 + 264) = &off_1F51E3FD0;
  *(v12 + 232) = v69;
  v70 = sub_1D7073500(v12);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v70;
}

void sub_1D69F42E0()
{
  if (!qword_1EC889B08)
  {
    sub_1D5CC51A0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC889B08);
    }
  }
}

id FormatRecipeBinding.Bool.BOOL(from:)(uint64_t a1)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      return (*(a1 + *(type metadata accessor for FeedRecipe() + 44)) != 0);
    }

    else
    {
      return [*(a1 + 56) isPaid];
    }
  }

  else if (*v1)
  {
    return [*(a1 + 56) hasThumbnail];
  }

  else
  {
    return (*(a1 + *(type metadata accessor for FeedRecipe() + 36)) == 0);
  }
}

uint64_t sub_1D69F43E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69F44B0()
{
  sub_1D72621EC();
}

uint64_t sub_1D69F456C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69F4638@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D69F4D4C();
  *a1 = result;
  return result;
}

void sub_1D69F4668(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x7365636341736168;
  v4 = 0x80000001D73BA330;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x646961507369;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x626D756854736168;
    v2 = 0xEC0000006C69616ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FormatRecipeBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D69F4840()
{
  result = qword_1EC88FDE0;
  if (!qword_1EC88FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FDE0);
  }

  return result;
}

unint64_t sub_1D69F4894(uint64_t a1)
{
  result = sub_1D69F48BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69F48BC()
{
  result = qword_1EC88FDE8;
  if (!qword_1EC88FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FDE8);
  }

  return result;
}

unint64_t sub_1D69F4910(void *a1)
{
  a1[1] = sub_1D667C708();
  a1[2] = sub_1D6700C34();
  result = sub_1D69F4840();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69F499C()
{
  result = qword_1EC88FDF0;
  if (!qword_1EC88FDF0)
  {
    sub_1D69F49F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FDF0);
  }

  return result;
}

void sub_1D69F49F4()
{
  if (!qword_1EC88FDF8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88FDF8);
    }
  }
}

unint64_t sub_1D69F4A48()
{
  result = qword_1EC88FE00;
  if (!qword_1EC88FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE00);
  }

  return result;
}

unint64_t sub_1D69F4A9C()
{
  result = qword_1EDF0F978;
  if (!qword_1EDF0F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F978);
  }

  return result;
}

uint64_t sub_1D69F4AF0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v11 = 0x80000001D73DEA30;
      sub_1D5E47A08(a2, v9);
      v10 = *(v9 + *(v6 + 44)) != 0;
      v12 = 0xD000000000000012;
    }

    else
    {
      sub_1D5E47A08(a2, v9);
      v10 = [v9[7] isPaid];
      v11 = 0xE700000000000000;
      v12 = 0x64696150207349;
    }
  }

  else if (*a1)
  {
    sub_1D5E47A08(a2, v9);
    v10 = [v9[7] hasThumbnail];
    v11 = 0xED00006C69616E62;
    v12 = 0x6D75685420736148;
  }

  else
  {
    sub_1D5E47A08(a2, v9);
    v10 = *(v9 + *(v6 + 36)) == 0;
    v11 = 0xEF73736563634120;
    v12 = 0x646F6F4620736148;
  }

  v13 = type metadata accessor for FormatInspectionItem(0);
  v14 = *(v13 + 24);
  *(a3 + v14) = v10;
  v15 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(a3 + v14, 0, 1, v15);
  *a3 = v12;
  a3[1] = v11;
  a3[2] = 0;
  a3[3] = 0;
  v16 = a3 + *(v13 + 28);
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = -1;
  sub_1D5E47A6C(v9);
  return (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
}

uint64_t sub_1D69F4D4C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D69F4DA8()
{

  sub_1D725972C();

  sub_1D69F554C();
  v0 = swift_allocObject();
  if (v2 - 1 > 1)
  {
    *(v0 + 16) = xmmword_1D7273AE0;
    *(v0 + 32) = 0x746567726154;
    *(v0 + 40) = 0xE600000000000000;
    *(v0 + 72) = &type metadata for DebugFormatUploadTarget;
    *(v0 + 80) = sub_1D69F559C();

    sub_1D725972C();

    *(v0 + 88) = 0;
  }

  else
  {
    *(v0 + 16) = xmmword_1D7270C10;
    *(v0 + 32) = 0x746567726154;
    *(v0 + 40) = 0xE600000000000000;
    *(v0 + 72) = &type metadata for DebugFormatUploadTarget;
    *(v0 + 80) = sub_1D69F559C();

    sub_1D725972C();

    *(v0 + 88) = 0;
    *(v0 + 96) = 0x6D6E6F7269766E45;
    *(v0 + 104) = 0xEB00000000746E65;
    *(v0 + 136) = &type metadata for DebugFormatBackendEnvironment;
    *(v0 + 144) = sub_1D69F55F0();

    sub_1D725972C();

    *(v0 + 152) = 0;
  }

  return 0x64616F6C7055;
}

char *sub_1D69F4F5C(unint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  if (v2 != 5)
  {
    v4 = 0x756F72676B636162;
    v3 = 0xEA0000000000646ELL;
  }

  v5 = 0xE700000000000000;
  v6 = 0x6C6C6177796170;
  if (v2 != 3)
  {
    v6 = 0x656D656874;
    v5 = 0xE500000000000000;
  }

  if (*a2 <= 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x726564616568;
  if (v2 != 1)
  {
    v7 = 0x7265746F6F66;
  }

  if (!*a2)
  {
    v7 = 0x74756F79616CLL;
  }

  if (*a2 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (*a2 <= 2u)
  {
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v3;
  }

  sub_1D5C73AB0(v8, v9);
  if (v11)
  {
    *(&v51 + 1) = v11;
    sub_1D5BF4D9C();
    v12 = sub_1D7263A0C();

    v13 = sub_1D5FD24A4(1uLL, v8, v9);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = MEMORY[0x1DA6F97E0](v13, v15, v17, v19);
    v22 = v21;

    MEMORY[0x1DA6F9910](v20, v22);

    v8 = v12;
  }

  *&v51 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_89:
    v23 = sub_1D7263BFC();
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x1E69E7CC0];
  v49 = v8;
  if (v23)
  {
    v25 = 0;
    v50 = a1 & 0xC000000000000001;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = v23;
    while (1)
    {
      if (v50)
      {
        v27 = MEMORY[0x1DA6FB460](v25, a1);
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_73:
          __break(1u);
LABEL_74:
          v41 = v51;
          v8 = v49;
          v24 = MEMORY[0x1E69E7CC0];
          goto LABEL_76;
        }
      }

      else
      {
        if (v25 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_89;
        }

        v27 = *(a1 + 8 * v25 + 32);

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_73;
        }
      }

      v29 = *(*(v27 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v29 <= 2)
      {
        v30 = 0xE600000000000000;
        if (*(*(v27 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v29 == 1)
          {
            v32 = 1684104552;
          }

          else
          {
            v32 = 1953460070;
          }

          v31 = v32 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          if (v2 <= 2)
          {
LABEL_40:
            if (v2)
            {
              if (v2 == 1)
              {
                v33 = 0x726564616568;
              }

              else
              {
                v33 = 0x7265746F6F66;
              }

              v34 = 0xE600000000000000;
            }

            else
            {
              v34 = 0xE600000000000000;
              v33 = 0x74756F79616CLL;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v31 = 0x74756F79616CLL;
          if (v2 <= 2)
          {
            goto LABEL_40;
          }
        }
      }

      else if (*(*(v27 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v29 == 5)
        {
          v30 = 0xE700000000000000;
          v31 = 0x7972617262696CLL;
          if (v2 <= 2)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v31 = 0x756F72676B636162;
          v30 = 0xEA0000000000646ELL;
          if (v2 <= 2)
          {
            goto LABEL_40;
          }
        }
      }

      else if (v29 == 3)
      {
        v30 = 0xE700000000000000;
        v31 = 0x6C6C6177796170;
        if (v2 <= 2)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v30 = 0xE500000000000000;
        v31 = 0x656D656874;
        if (v2 <= 2)
        {
          goto LABEL_40;
        }
      }

      v35 = 0x756F72676B636162;
      if (v2 == 5)
      {
        v35 = 0x7972617262696CLL;
      }

      v36 = 0xEA0000000000646ELL;
      if (v2 == 5)
      {
        v36 = 0xE700000000000000;
      }

      v37 = 0x6C6C6177796170;
      if (v2 != 3)
      {
        v37 = 0x656D656874;
      }

      v38 = 0xE500000000000000;
      if (v2 == 3)
      {
        v38 = 0xE700000000000000;
      }

      if (v2 <= 4)
      {
        v33 = v37;
      }

      else
      {
        v33 = v35;
      }

      if (v2 <= 4)
      {
        v34 = v38;
      }

      else
      {
        v34 = v36;
      }

LABEL_62:
      v39 = a1;
      if (v31 == v33 && v30 == v34)
      {

LABEL_66:
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        goto LABEL_24;
      }

      v40 = sub_1D72646CC();

      if (v40)
      {
        goto LABEL_66;
      }

LABEL_24:
      ++v25;
      a1 = v39;
      if (v28 == v26)
      {
        goto LABEL_74;
      }
    }
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_76:

  if ((v41 & 0x8000000000000000) == 0 && (v41 & 0x4000000000000000) == 0)
  {
    v42 = *(v41 + 16);
    if (v42)
    {
      goto LABEL_79;
    }

LABEL_91:

    return v8;
  }

  v42 = sub_1D7263BFC();
  if (!v42)
  {
    goto LABEL_91;
  }

LABEL_79:
  result = sub_1D6997F84(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1DA6FB460](v44, v41);
      }

      else
      {
        v45 = *(v41 + 8 * v44 + 32);
      }

      v47 = *(v24 + 16);
      v46 = *(v24 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D6997F84((v46 > 1), v47 + 1, 1);
      }

      ++v44;
      *(v24 + 16) = v47 + 1;
      v48 = v24 + (v47 << 6);
      *(v48 + 32) = v45;
      *(v48 + 72) = v53;
      *(v48 + 56) = v52;
      *(v48 + 40) = v51;
      *(v48 + 88) = 1;
    }

    while (v42 != v44);

    return v49;
  }

  __break(1u);
  return result;
}

void sub_1D69F554C()
{
  if (!qword_1EC88F1F0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88F1F0);
    }
  }
}

unint64_t sub_1D69F559C()
{
  result = qword_1EC88FE08;
  if (!qword_1EC88FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE08);
  }

  return result;
}

unint64_t sub_1D69F55F0()
{
  result = qword_1EC88FE10;
  if (!qword_1EC88FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE10);
  }

  return result;
}

uint64_t sub_1D69F5644()
{
  v1 = 0xEB00000000646569;
  v2 = 0x6669636570736E75;
  v3 = [v0 displayGamut];
  if (v3 == -1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = 0xE200000000000000;
      v5 = 13136;
    }

    else
    {
      v4 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1111970387;
  }

  sub_1D7263D4C();

  v6 = [v0 horizontalSizeClass];
  if (v6)
  {
    v7 = 0x6E776F6E6B6E75;
    if (v6 == 2)
    {
      v7 = 0x72616C75676572;
    }

    if (v6 == 1)
    {
      v8 = 0x746361706D6F63;
    }

    else
    {
      v8 = v7;
    }

    v9 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x6669636570736E75;
    v9 = 0xEB00000000646569;
  }

  MEMORY[0x1DA6F9910](v8, v9);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v10 = [v0 verticalSizeClass];
  if (v10)
  {
    v11 = 0x6E776F6E6B6E75;
    if (v10 == 2)
    {
      v11 = 0x72616C75676572;
    }

    if (v10 == 1)
    {
      v12 = 0x746361706D6F63;
    }

    else
    {
      v12 = v11;
    }

    v13 = 0xE700000000000000;
  }

  else
  {
    v12 = 0x6669636570736E75;
    v13 = 0xEB00000000646569;
  }

  MEMORY[0x1DA6F9910](v12, v13);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  [v0 displayScale];
  v14 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v14);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v5, v4);

  MEMORY[0x1DA6F9910](45, 0xE100000000000000);
  v15 = [v0 userInterfaceStyle];
  if (v15)
  {
    if (v15 == 2)
    {
      v1 = 0xE400000000000000;
      v2 = 1802658148;
    }

    else if (v15 == 1)
    {
      v1 = 0xE500000000000000;
      v2 = 0x746867696CLL;
    }

    else
    {
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
    }
  }

  MEMORY[0x1DA6F9910](v2, v1);

  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  return 91;
}

uint64_t UITraitCollection.canReuse.getter()
{
  sub_1D69F5984();

  return sub_1D72630EC();
}

unint64_t sub_1D69F5984()
{
  result = qword_1EDF33228[0];
  if (!qword_1EDF33228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF33228);
  }

  return result;
}

uint64_t UIMutableTraits.canReuse.getter()
{
  sub_1D69F5984();

  return sub_1D725FD3C();
}

uint64_t UIMutableTraits.canReuse.setter()
{
  sub_1D69F5984();

  return sub_1D725FD4C();
}

uint64_t (*UIMutableTraits.canReuse.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_1D69F5984();
  *(a1 + 24) = sub_1D725FD3C() & 1;
  return sub_1D69F5B0C;
}

uint64_t SportsEventState.selectors.getter(char a1)
{
  v1 = *(&off_1E84CEEC0 + a1);
  v2 = sub_1D5BFAC38(*(&off_1E84CEEA0 + a1));
  sub_1D5BFB68C(v1);
  return v2;
}

uint64_t sub_1D69F5BCC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69F5C90()
{
  sub_1D72621EC();
}

uint64_t sub_1D69F5D40()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69F5E00@<X0>(_BYTE *a1@<X8>)
{
  result = _s8NewsFeed16SportsEventStateO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_1D69F5E30(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x656D6167657270;
  v4 = 0xE800000000000000;
  v5 = 0x656D614774736F70;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x656D61476576696CLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D69F5F70(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656D6167657270;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x656D614774736F70;
  if (v3 != 2)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0x656D61476576696CLL;
  if (*a1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v7 = 0x656D6167657270;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE700000000000000;
  v11 = 0xE800000000000000;
  v12 = 0x656D614774736F70;
  if (*a2 != 2)
  {
    v12 = 0x6E776F6E6B6E75;
    v11 = 0xE700000000000000;
  }

  if (*a2)
  {
    v2 = 0x656D61476576696CLL;
    v10 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D72646CC();
  }

  return v15 & 1;
}

uint64_t SportsEventState.description.getter(unsigned __int8 a1)
{
  v1 = 0x656D6167657270;
  v2 = 0x656D614774736F70;
  if (a1 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    v1 = 0x656D61476576696CLL;
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

uint64_t sub_1D69F6130()
{
  v1 = 0x656D6167657270;
  v2 = 0x656D614774736F70;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x656D61476576696CLL;
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

uint64_t _s8NewsFeed16SportsEventStateO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D69F61FC()
{
  result = qword_1EDF11000;
  if (!qword_1EDF11000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11000);
  }

  return result;
}

unint64_t sub_1D69F6254()
{
  result = qword_1EC88FE18;
  if (!qword_1EC88FE18)
  {
    sub_1D69F62AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE18);
  }

  return result;
}

void sub_1D69F62AC()
{
  if (!qword_1EC88FE20)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88FE20);
    }
  }
}

unint64_t sub_1D69F630C()
{
  result = qword_1EC88FE28;
  if (!qword_1EC88FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE28);
  }

  return result;
}

NewsFeed::FormatURLAnnotator __swiftcall FormatURLAnnotator.init(contentIdentifier:itemIdentifier:)(Swift::String_optional contentIdentifier, Swift::String_optional itemIdentifier)
{
  *v2 = contentIdentifier;
  v2[1] = itemIdentifier;
  result.itemIdentifier = itemIdentifier;
  result.contentIdentifier = contentIdentifier;
  return result;
}

uint64_t sub_1D69F6394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D69F7CE4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[1];
  if (v15)
  {
    v16 = *v2;
    v18 = v2[2];
    v17 = v2[3];
    sub_1D69F7DFC(a1, v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v14, v8, v9);
      sub_1D69F65B4(v14, v16, v15, v18, v17, a2);
      (*(v10 + 8))(v14, v9);
      v19 = 0;
      return (*(v10 + 56))(a2, v19, 1, v9, v12);
    }

    sub_1D69F7D38(v8, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  v19 = 1;
  return (*(v10 + 56))(a2, v19, 1, v9, v12);
}

uint64_t sub_1D69F65B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a4;
  v78 = a5;
  v75 = a2;
  v76 = a3;
  sub_1D69F7CE4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v68 - v10;
  v81 = sub_1D7257B5C();
  v12 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v13);
  v80 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v79 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v68 - v20;
  sub_1D69F7CE4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v68 - v24;
  v26 = sub_1D7257C7C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v68 - v33;
  sub_1D7257BCC();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1D69F7D38(v25, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    v35 = sub_1D72585BC();
    return (*(*(v35 - 8) + 16))(a6, a1, v35);
  }

  else
  {
    v68 = v11;
    v69 = a1;
    v70 = a6;
    v73 = v27;
    v74 = v26;
    (*(v27 + 32))(v34, v25, v26);
    sub_1D7257C6C();
    v72 = v34;
    sub_1D7257C4C();
    sub_1D7257C1C();
    v37 = sub_1D7257B6C();
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    v39 = *(v38 + 2);

    v40 = 0;
    v71 = v30;
    while (v39 != v40)
    {
      if (v40 >= *(v38 + 2))
      {
        __break(1u);
        goto LABEL_25;
      }

      v42 = v81;
      (*(v12 + 16))(v21, &v38[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v40], v81);
      v43 = sub_1D7257B3C();
      v45 = v44;
      (*(v12 + 8))(v21, v42);
      if (v43 == 0x6469635F66666ELL && v45 == 0xE700000000000000)
      {

LABEL_21:

        v65 = v74;
        v66 = *(v73 + 8);
        v66(v71, v74);
        v66(v72, v65);

        v67 = sub_1D72585BC();
        return (*(*(v67 - 8) + 16))(v70, v69, v67);
      }

      ++v40;
      v41 = sub_1D72646CC();

      if (v41)
      {
        goto LABEL_21;
      }
    }

    sub_1D7257B2C();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }

LABEL_25:
    v38 = sub_1D698BCB0(0, *(v38 + 2) + 1, 1, v38);
LABEL_14:
    v47 = v73;
    v46 = v74;
    v49 = *(v38 + 2);
    v48 = *(v38 + 3);
    if (v49 >= v48 >> 1)
    {
      v38 = sub_1D698BCB0(v48 > 1, v49 + 1, 1, v38);
    }

    *(v38 + 2) = v49 + 1;
    v52 = *(v12 + 32);
    v51 = v12 + 32;
    v50 = v52;
    v53 = (*(v51 + 48) + 32) & ~*(v51 + 48);
    v54 = *(v51 + 40);
    v52(&v38[v53 + v54 * v49], v79, v81);
    sub_1D7257B2C();
    v56 = *(v38 + 2);
    v55 = *(v38 + 3);
    if (v56 >= v55 >> 1)
    {
      v38 = sub_1D698BCB0(v55 > 1, v56 + 1, 1, v38);
    }

    v57 = v72;
    *(v38 + 2) = v56 + 1;
    v50(&v38[v53 + v56 * v54], v80, v81);
    v58 = v71;
    v59 = sub_1D7257B7C();
    MEMORY[0x1DA6EF2A0](v59);
    sub_1D7257C5C();
    v60 = v68;
    sub_1D7257BDC();
    v61 = *(v47 + 8);
    v61(v58, v46);
    v61(v57, v46);
    v62 = sub_1D72585BC();
    v63 = *(v62 - 8);
    v64 = *(v63 + 48);
    if (v64(v60, 1, v62) == 1)
    {
      (*(v63 + 16))(v70, v69, v62);
      result = v64(v60, 1, v62);
      if (result != 1)
      {
        return sub_1D69F7D38(v60, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }
    }

    else
    {
      return (*(v63 + 32))(v70, v60, v62);
    }
  }

  return result;
}

uint64_t FormatURLAnnotator.copy(withFeedItem:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  sub_1D69F7DFC(a1, &v15, &qword_1EDF34AB8, sub_1D5EFF46C);
  if (v16)
  {
    sub_1D5B63F14(&v15, v17);
    sub_1D5B68374(v17, &v15);
    sub_1D6818590(&v15, v8);

    v11 = sub_1D69F6E38(v8);
    v12 = v13;
    sub_1D5C0AE40(v8, type metadata accessor for FeedItem);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_1D69F7D38(&v15, &qword_1EDF34AB8, sub_1D5EFF46C);
  }

  *a2 = v10;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = v12;
  return result;
}

uint64_t sub_1D69F6E38(uint64_t a1)
{
  v2 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = (&v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69F7D94(a1, v29, type metadata accessor for FeedItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v39 = *(v29 + 7);
        v59 = *(v29 + 6);
        *v60 = v39;
        *&v60[9] = *(v29 + 121);
        v40 = *(v29 + 1);
        v53 = *v29;
        v54 = v40;
        v41 = *(v29 + 3);
        v55 = *(v29 + 2);
        v42 = *(v29 + 4);
        v58 = *(v29 + 5);
        v43 = [v53 identifier];
        v31 = sub_1D726207C();

        sub_1D5ECF320(&v53);
        return v31;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v32 = *(v29 + 7);
        v59 = *(v29 + 6);
        *v60 = v32;
        *&v60[16] = *(v29 + 8);
        LOBYTE(v61) = v29[144];
        v33 = *(v29 + 3);
        v55 = *(v29 + 2);
        v34 = *(v29 + 4);
        v35 = *(v29 + 5);
        v56 = v33;
        v57 = v34;
        v58 = v35;
        v36 = *(v29 + 1);
        v53 = *v29;
        v37 = [v36 identifier];
        v31 = sub_1D726207C();

        sub_1D5EE5B54(&v53);
        return v31;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D5D65564(v29, v25, type metadata accessor for FeedHeadline);
        v38 = [v25[5] identifier];
        v31 = sub_1D726207C();

        sub_1D5C0AE40(v25, type metadata accessor for FeedHeadline);
        return v31;
      }

      if (EnumCaseMultiPayload == 4)
      {
        sub_1D5D65564(v29, v21, type metadata accessor for FeedWebEmbed);
        v31 = *(v21 + 5);

        sub_1D5C0AE40(v21, type metadata accessor for FeedWebEmbed);
        return v31;
      }
    }

LABEL_22:
    sub_1D5C0AE40(v29, type metadata accessor for FeedItem);
    return 0;
  }

  if (EnumCaseMultiPayload <= 13)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_1D5D65564(v29, v17, type metadata accessor for FeedCustomItem);
      sub_1D69F7D94(&v17[*(v14 + 20)], v13, type metadata accessor for FormatCustomItem.Resolved);
      sub_1D5C0AE40(v17, type metadata accessor for FeedCustomItem);
      v31 = *v13;

      sub_1D5C0AE40(v13, type metadata accessor for FormatCustomItem.Resolved);
      return v31;
    }

    if (EnumCaseMultiPayload == 12)
    {
      sub_1D5D65564(v29, v5, type metadata accessor for FeedRecipe);
      v31 = *v5;

      sub_1D5C0AE40(v5, type metadata accessor for FeedRecipe);
      return v31;
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 14)
  {
    v44 = *(v29 + 11);
    v62 = *(v29 + 10);
    v63 = v44;
    v64 = *(v29 + 12);
    v45 = *(v29 + 7);
    v59 = *(v29 + 6);
    *v60 = v45;
    v46 = *(v29 + 9);
    *&v60[16] = *(v29 + 8);
    v61 = v46;
    v47 = *(v29 + 3);
    v55 = *(v29 + 2);
    v48 = *(v29 + 4);
    v58 = *(v29 + 5);
    v56 = v47;
    v57 = v48;
    v49 = *v29;
    v54 = *(v29 + 1);
    v53 = v49;
    v31 = *(&v55 + 1);

    sub_1D5F2DF58(&v53);
    return v31;
  }

  if (EnumCaseMultiPayload == 15)
  {
    v50 = *(v29 + 3);
    v51 = *(v29 + 4);
    v31 = *(v29 + 5);

    sub_1D5BF6680(v50, v51);
    swift_unknownObjectRelease();

    return v31;
  }

  if (EnumCaseMultiPayload != 16)
  {
    goto LABEL_22;
  }

  sub_1D5D65564(v29, v9, type metadata accessor for FeedPuzzleStatistic);
  v31 = *(v9 + 5);

  sub_1D5C0AE40(v9, type metadata accessor for FeedPuzzleStatistic);
  return v31;
}

uint64_t sub_1D69F7494()
{
  if (*v0)
  {
    return 0x6E6564496D657469;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D69F74E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D73DEA90 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6564496D657469 && a2 == 0xEE00726569666974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D69F75D0(uint64_t a1)
{
  v2 = sub_1D69F77C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69F760C(uint64_t a1)
{
  v2 = sub_1D69F77C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatURLAnnotator.encode(to:)(void *a1)
{
  sub_1D69F7A2C(0, &qword_1EC88FE30, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69F77C8();
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[3];
  sub_1D726437C();
  if (!v10)
  {
    v13 = 1;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D69F77C8()
{
  result = qword_1EC88FE38;
  if (!qword_1EC88FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE38);
  }

  return result;
}

uint64_t FormatURLAnnotator.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D69F7A2C(0, &qword_1EC88FE40, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69F77C8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D726422C();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D726422C();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D69F7A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69F77C8();
    v7 = a3(a1, &type metadata for FormatURLAnnotator.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static FormatURLAnnotator.transferAnnotations(fromURL:toURL:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1D725838C();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = sub_1D725838C();
    sub_1D69F65B4(a1, v6, v7, v8, v9, a2);
  }

  else
  {
    v11 = sub_1D72585BC();
    v12 = *(*(v11 - 8) + 16);

    return v12(a2, a1, v11);
  }
}

unint64_t sub_1D69F7BE0()
{
  result = qword_1EC88FE48;
  if (!qword_1EC88FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE48);
  }

  return result;
}

unint64_t sub_1D69F7C38()
{
  result = qword_1EC88FE50;
  if (!qword_1EC88FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE50);
  }

  return result;
}

unint64_t sub_1D69F7C90()
{
  result = qword_1EC88FE58;
  if (!qword_1EC88FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE58);
  }

  return result;
}

void sub_1D69F7CE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D69F7D38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D69F7CE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D69F7D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D69F7DFC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D69F7CE4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D69F7E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  sub_1D69F80E4();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v3 + 16);
  if (*(v12 + 16) && (v13 = sub_1D5B69D90(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v15 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v16 = *(v4 + 24);
  if (*(v16 + 16) && (v17 = sub_1D5B69D90(a1, a2), (v18 & 1) != 0))
  {
    v19 = v17;
    v20 = *(v16 + 56);
    v21 = type metadata accessor for FormatSourceMapContext();
    v22 = *(v21 - 8);
    sub_1D60683F4(v20 + *(v22 + 72) * v19, v11);
    (*(v22 + 56))(v11, 0, 1, v21);
  }

  else
  {
    v23 = type metadata accessor for FormatSourceMapContext();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  }

  swift_endAccess();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v15;
  v24 = type metadata accessor for FormatSourceMapEntry();
  sub_1D69F813C(v11, a3 + *(v24 + 24));
  (*(*(v24 - 8) + 56))(a3, 0, 1, v24);
}

void sub_1D69F80E4()
{
  if (!qword_1EDF27F90)
  {
    type metadata accessor for FormatSourceMapContext();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF27F90);
    }
  }
}

uint64_t sub_1D69F813C(uint64_t a1, uint64_t a2)
{
  sub_1D69F80E4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69F81A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D726279C();
  if (result)
  {
    v12 = 0;
    v16 = (v8 + 16);
    v15[0] = v9;
    v15[1] = a4 + 8;
    while (1)
    {
      v13 = sub_1D726277C();
      sub_1D726271C();
      if (v13)
      {
        result = (*(v8 + 16))(v10, a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, a3);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        if (v15[0] != 8)
        {
          __break(1u);
          return result;
        }

        v18 = result;
        (*v16)(v10, &v18, a3);
        result = swift_unknownObjectRelease();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_11:
          __break(1u);
          return result;
        }
      }

      (*(a4 + 8))(v17, a3, a4);
      result = (*(v8 + 8))(v10, a3);
      if (!v4)
      {
        result = sub_1D726279C();
        ++v12;
        if (v14 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D69F83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v59 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v54 = v51 - v12;
  v67 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_1D726393C();
  MEMORY[0x1EEE9AC00](v65, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v64 = v51 - v20;
  v21 = a2 + 64;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a2 + 64);
  v25 = (v22 + 63) >> 6;
  v51[1] = v8 + 16;
  v66 = (v8 + 32);
  v62 = (v18 + 32);
  v63 = TupleTypeMetadata2 - 8;
  v61 = a4;
  v55 = v8;
  v56 = a2;
  v57 = (v8 + 8);
  v58 = a4 + 8;
  v26 = v19;

  v28 = 0;
  v52 = v26;
  v53 = TupleTypeMetadata2;
  while (v24)
  {
    v68 = v5;
    v29 = v28;
LABEL_14:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v55;
    v35 = (*(v56 + 48) + 16 * v33);
    v36 = *v35;
    v37 = v35[1];
    v38 = v54;
    v39 = v67;
    (*(v55 + 16))(v54, *(v56 + 56) + *(v55 + 72) * v33, v67);
    v41 = v52;
    v40 = v53;
    v42 = *(v53 + 48);
    *v52 = v36;
    v41[1] = v37;
    v43 = v38;
    TupleTypeMetadata2 = v40;
    v44 = v39;
    v26 = v41;
    (*(v34 + 32))(v41 + v42, v43, v44);
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v26, 0, 1, TupleTypeMetadata2);

LABEL_15:
    v46 = v64;
    (*v62)(v64, v26, v65);
    if ((*(v45 + 48))(v46, 1, TupleTypeMetadata2) != 1)
    {

      v47 = &v46[*(TupleTypeMetadata2 + 48)];
      v48 = v59;
      v49 = v67;
      (*v66)(v59, v47, v67);
      v50 = v68;
      (*(v61 + 8))(v60, v49);
      v5 = v50;
      result = (*v57)(v48, v49);
      if (!v50)
      {
        continue;
      }
    }
  }

  if (v25 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      v68 = v5;
      v45 = *(TupleTypeMetadata2 - 8);
      (*(v45 + 56))(v26, 1, 1, TupleTypeMetadata2);
      v24 = 0;
      v28 = v31;
      goto LABEL_15;
    }

    v24 = *(v21 + 8 * v29);
    ++v28;
    if (v24)
    {
      v68 = v5;
      v28 = v29;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t FormatCompilerSlotDefinitionItemSetAuxiliaryItemSet.properties.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t sub_1D69F88F4(uint64_t a1)
{
  result = sub_1D69F891C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69F891C()
{
  result = qword_1EC88FE60;
  if (!qword_1EC88FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE60);
  }

  return result;
}

unint64_t sub_1D69F8970(void *a1)
{
  a1[1] = sub_1D6681860();
  a1[2] = sub_1D6681A58();
  result = sub_1D69F89A8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69F89A8()
{
  result = qword_1EC88FE68;
  if (!qword_1EC88FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE68);
  }

  return result;
}

void sub_1D69F8A48(unint64_t a1, void *a2)
{
  sub_1D68D69D4(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v2 + 16);

  sub_1D725B31C();

  if (v32[0] != 1)
  {
    v15 = 0x80000001D73DEB50;
    v32[0] = 0;
    v33 = 0xD000000000000011;
    v34 = 0x80000001D73DEB30;
    v16 = 0xD000000000000019;
LABEL_7:
    v35 = v16;
    v36 = v15;
    v37 = 0u;
    v38 = 0u;
    v17 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
    swift_beginAccess();
    if (*(v14 + v17))
    {

      sub_1D6AD3108(v32);
      sub_1D5F181F4(v32);

      return;
    }

    goto LABEL_25;
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF43B20 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (v32[0])
  {
    v15 = 0x80000001D73DEC00;
    v32[0] = 0;
    v33 = 0xD000000000000011;
    v34 = 0x80000001D73DEB30;
    v16 = 0xD000000000000043;
    goto LABEL_7;
  }

  sub_1D725B31C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v18 = sub_1D68D69D4;
    v19 = v8;
LABEL_20:
    sub_1D69F9640(v19, v18);
    sub_1D69F8FB8(a1, a2);
    return;
  }

  sub_1D69F95DC(v8, v13);

  sub_1D725972C();

  if (v32[0] != 1)
  {
    goto LABEL_19;
  }

  v20 = &v13[v9[8]];
  v21 = v20[1];
  if (!v21 || ((v22 = &v13[v9[6]], *v22 != *v20) || v21 != v22[1]) && (sub_1D72646CC() & 1) == 0)
  {
    v27 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v27;
    v25[3] = a1;
    v25[4] = a2;
    v32[0] = 0;
    v33 = 0xD000000000000013;
    v34 = 0x80000001D73DEB70;
    v35 = 0xD00000000000002BLL;
    v36 = 0x80000001D73DEB90;
    v37 = 0uLL;
    v26 = sub_1D69F9718;
    goto LABEL_22;
  }

  v23 = &v13[v9[7]];
  if ((v23[1] & 1) != 0 || *v23 < 1)
  {
LABEL_19:
    v18 = type metadata accessor for DebugFormatFileDirectoryMetadata;
    v19 = v13;
    goto LABEL_20;
  }

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a1;
  v25[4] = a2;
  v32[0] = 0;
  v33 = 0xD000000000000013;
  v34 = 0x80000001D73DEB70;
  v35 = 0xD000000000000033;
  v36 = 0x80000001D73DEBC0;
  v37 = 0uLL;
  v26 = sub_1D69F96F0;
LABEL_22:
  *&v38 = v26;
  *(&v38 + 1) = v25;
  v28 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v14 + v28))
  {
    swift_endAccess();
    sub_1D5C07390(a1);
    v29 = a2;

    sub_1D6AD3108(v32);

    sub_1D5F181F4(v32);
    sub_1D69F9640(v13, type metadata accessor for DebugFormatFileDirectoryMetadata);
    return;
  }

  sub_1D5C07390(a1);
  v30 = a2;
  sub_1D69F9640(v13, type metadata accessor for DebugFormatFileDirectoryMetadata);
  swift_endAccess();
LABEL_25:
  sub_1D5F181F4(v32);
}

void sub_1D69F8FB8(unint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = objc_allocWithZone(type metadata accessor for DebugFormatUploadDiffViewController());
  v7 = swift_retain_n();
  v8 = sub_1D5F5D528(v7);

  v9 = type metadata accessor for DebugFormatNavigationController();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 1;
  v25.receiver = v10;
  v25.super_class = v9;
  v11 = objc_msgSendSuper2(&v25, sel_initWithRootViewController_, v8);
  v12 = objc_allocWithZone(type metadata accessor for DebugFormatUploadViewController());
  v13 = v8;
  sub_1D5C07390(a1);
  v14 = sub_1D67B7618(v5, a1, v13);
  v15 = objc_allocWithZone(v9);
  *&v15[OBJC_IVAR____TtC8NewsFeed31DebugFormatNavigationController_section] = 3;
  v24.receiver = v15;
  v24.super_class = v9;
  v16 = objc_msgSendSuper2(&v24, sel_initWithRootViewController_, v14);
  objc_allocWithZone(type metadata accessor for DebugFormatUploadMainViewController());
  v17 = v16;
  v18 = v11;
  v19 = sub_1D5F59DC8(v5, v17, v18);
  [v19 setPreferredDisplayMode_];
  [v19 setModalPresentationStyle_];
  [v19 setMinimumPrimaryColumnWidth_];
  [v19 setPreferredPrimaryColumnWidth_];
  [v19 setMaximumPrimaryColumnWidth_];
  v20 = [a2 splitViewController];
  if (!v20)
  {
    v20 = a2;
  }

  v21 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1D69F9710;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_60;
  v22 = _Block_copy(aBlock);

  [v20 presentViewController:v19 animated:1 completion:v22];
  _Block_release(v22);
}

uint64_t sub_1D69F9278(uint64_t a1, unint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D69F8FB8(a2, a3);
  }

  return result;
}

uint64_t sub_1D69F92EC()
{
  sub_1D68D69D4(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v4 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;

    sub_1D725B31C();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_1D69F9640(v3, sub_1D68D69D4);
    }

    sub_1D69F95DC(v3, v8);
    if (v8[*(v4 + 36)])
    {
      sub_1D69F9640(v8, type metadata accessor for DebugFormatFileDirectoryMetadata);
    }

    else
    {
      v14[0] = 0;
      v15 = 0x676E696E726157;
      v16 = 0xE700000000000000;
      v17 = 0xD000000000000077;
      v18 = 0x80000001D73DEC50;
      v19 = 0u;
      v20 = 0u;
      v11 = *(v10 + 16);
      v12 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
      swift_beginAccess();
      if (*(v11 + v12))
      {
        swift_endAccess();

        sub_1D6AD3108(v14);
        sub_1D5F181F4(v14);

        return sub_1D69F9640(v8, type metadata accessor for DebugFormatFileDirectoryMetadata);
      }

      sub_1D69F9640(v8, type metadata accessor for DebugFormatFileDirectoryMetadata);
      swift_endAccess();
      sub_1D5F181F4(v14);
    }
  }

  return result;
}

uint64_t sub_1D69F95DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69F9640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_3Tm_2()
{

  if (*(v0 + 24) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D69F9730()
{
  result = qword_1EC88FE70;
  if (!qword_1EC88FE70)
  {
    sub_1D69F9788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE70);
  }

  return result;
}

void sub_1D69F9788()
{
  if (!qword_1EC88FE78)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88FE78);
    }
  }
}

uint64_t sub_1D69F97D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69F9860()
{
  sub_1D72621EC();
}

uint64_t sub_1D69F98D4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69F9958@<X0>(char *a1@<X8>)
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

void sub_1D69F99B8(uint64_t *a1@<X8>)
{
  v2 = 0x736567616B636170;
  if (*v1)
  {
    v2 = 0x636170736B726F77;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D69F99FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636170736B726F77;
  }

  else
  {
    v3 = 0x736567616B636170;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000007365;
  }

  if (*a2)
  {
    v5 = 0x636170736B726F77;
  }

  else
  {
    v5 = 0x736567616B636170;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007365;
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

unint64_t sub_1D69F9ABC()
{
  result = qword_1EC88FE80;
  if (!qword_1EC88FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE80);
  }

  return result;
}

void sub_1D69F9B10(void *a1, _OWORD *a2, uint64_t a3)
{
  sub_1D5BB95B0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D726349C();
  if (*(a3 + 16))
  {
    v10 = sub_1D6D62820(1u);
    if (v11)
    {
      v12 = *(a3 + 56) + 16 * v10;
      if (*(v12 + 8) == 2)
      {
        v13 = *v12;
        [a1 bounds];
        sub_1D726344C();
        v14 = a2[5];
        v33[4] = a2[4];
        v33[5] = v14;
        v15 = a2[7];
        v33[6] = a2[6];
        v33[7] = v15;
        v16 = a2[1];
        v33[0] = *a2;
        v33[1] = v16;
        v17 = a2[3];
        v33[2] = a2[2];
        v33[3] = v17;
        sub_1D6A50794(v9);
        v18 = sub_1D725E94C();
        (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
        sub_1D725DD8C();
        v19 = [v13 layer];
        v20 = [a1 layer];
        [v20 cornerRadius];
        v22 = v21;

        [v19 setCornerRadius_];
        v23 = [v13 layer];

        v24 = [a1 layer];
        v25 = [v24 maskedCorners];

        [v23 setMaskedCorners_];
        v26 = [v13 layer];

        v27 = [a1 layer];
        v28 = [v27 cornerCurve];

        [v26 setCornerCurve_];
        v29 = [v13 layer];

        v30 = [a1 layer];
        [v30 cornerRadius];
        v32 = v31;

        [v29 setMasksToBounds_];
      }
    }
  }
}

void sub_1D69F9E14(void *a1, _OWORD *a2, uint64_t a3)
{
  sub_1D5BB95B0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() clearColor];
  sub_1D726349C();

  if (*(a3 + 16))
  {
    v11 = sub_1D6D62820(1u);
    if (v12)
    {
      v13 = *(a3 + 56) + 16 * v11;
      if (*(v13 + 8) == 2)
      {
        v14 = *v13;
        [a1 frame];
        sub_1D726344C();
        [v14 bounds];
        sub_1D726344C();
        v15 = a2[5];
        v22[4] = a2[4];
        v22[5] = v15;
        v16 = a2[7];
        v22[6] = a2[6];
        v22[7] = v16;
        v17 = a2[1];
        v22[0] = *a2;
        v22[1] = v17;
        v18 = a2[3];
        v22[2] = a2[2];
        v22[3] = v18;
        sub_1D6A50794(v9);
        v19 = sub_1D725E94C();
        (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
        sub_1D725DD8C();
        sub_1D725FBCC();
        if (swift_dynamicCastClass())
        {
          v20 = a1;
          v21 = sub_1D725FB7C();
          [v14 bounds];
          sub_1D726344C();
        }
      }
    }
  }
}

uint64_t static FormatVideoPlayerContent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0)
    {
      v9 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
      v10 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v12 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
      v17 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = v10;
      v19 = v9;
      v14 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = v11;
      v16 = v12;

      v8 = _s8NewsFeed28FormatVideoPlayerNodeBindingO2eeoiySbAC_ACtFZ_0(&v17, &v14);

      return v8 & 1;
    }

    goto LABEL_6;
  }

  if (v3 < 0)
  {
LABEL_6:
    v8 = 0;
    return v8 & 1;
  }

  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  if (sub_1D6340518(v4, v6))
  {
    *&v17 = v5;
    *&v14 = v7;
    v8 = static FormatVideoPlayerContent.== infix(_:_:)(&v17, &v14);
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D69FA148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  if (*v3 < 0)
  {
    v11 = v7 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);
    v14 = *(v11 + 40);
    v15 = *(v11 + 16);
    sub_1D62B6240(v15, v12, v13, v14);
    sub_1D6C090D8(a1, a3);
    return sub_1D62B628C(v15, v12, v13, v14);
  }

  else
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);

    sub_1D6F7CE28(a2, a1, v8, v9, &v15);
    sub_1D69FA148(a1, a2);
  }
}

unint64_t sub_1D69FA2A8(uint64_t a1)
{
  result = sub_1D5B55F44();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8NewsFeed20FormatTypeDefinitionO4CaseV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1D72646CC();
}

unint64_t sub_1D69FA3F8()
{
  result = qword_1EC88FE88;
  if (!qword_1EC88FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE88);
  }

  return result;
}

uint64_t sub_1D69FA44C()
{
  v0 = 2019912806;
  if (sub_1D725A63C())
  {
    v1 = 0xE400000000000000;
    v2 = 2019912806;
  }

  else
  {
    v2 = sub_1D7262A9C();
    v1 = v3;
  }

  MEMORY[0x1DA6F9910](v2, v1);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  if (sub_1D725A63C())
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v0 = sub_1D7262A9C();
    v4 = v5;
  }

  MEMORY[0x1DA6F9910](v0, v4);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1D69FA534@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1D725891C();
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v107 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5959C(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v102 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v101 = &v89 - v20;
  v114 = MEMORY[0x1E69E7CC0];
  v21 = *(v3 + 16);
  v106 = v17;
  if (v21)
  {
    v22 = v21[2];
    if (*(v22 + 16))
    {
      *&v105 = a2;
      v23 = v21[3];
      v24 = v21[4];

      v25 = sub_1D698C0DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1D698C0DC((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[24 * v27];
      *(v28 + 4) = v22;
      *(v28 + 5) = v23;
      *(v28 + 6) = v24;
      v114 = v25;
    }
  }

  v29 = *(v4 + 24);
  if (v29)
  {
    v30 = v29;
    v31 = [v30 alternativeFeedDescriptor];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1D69FAD7C(v31);
      sub_1D6985438(v33);
    }

    v34 = sub_1D69FAD7C(v30);
    sub_1D6985438(v34);
  }

  if (*(v4 + 32))
  {
    v35 = swift_unknownObjectRetain();
    sub_1D69FB0C8(v35, &v110);
    v36 = v110;
    if (v110)
    {
      v105 = v111;
      v37 = v114;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1D698C0DC(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1D698C0DC((v38 > 1), v39 + 1, 1, v37);
      }

      swift_unknownObjectRelease();
      *(v37 + 2) = v39 + 1;
      v40 = &v37[24 * v39];
      *(v40 + 4) = v36;
      *(v40 + 40) = v105;
      v114 = v37;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v41 = v114;
  v42 = *(v114 + 2);
  if (v42)
  {
    v43 = type metadata accessor for FormatContent(0);
    v110 = *&a1[v43[16]];
    v44 = *&a1[v43[19]];
    v112 = *&a1[v43[18]];
    v113 = v44;

    v45 = (v41 + 48);
    do
    {
      v46 = *(v45 - 2);
      v47 = *(v45 - 1);
      v48 = *v45;
      v45 += 3;

      sub_1D5D579CC(v46);
      sub_1D5B886D0(v48);
      sub_1D6985530(v47);
      --v42;
    }

    while (v42);

    v49 = sub_1D72608BC();
    v50 = *(v49 - 8);
    v51 = v101;
    v89 = *(v50 + 56);
    v89(v101, 1, 1, v49);
    v99 = v113;
    v100 = v112;
    v52 = *(a1 + 1);
    v97 = *a1;
    v98 = v110;
    *&v105 = v52;
    (*(v108 + 16))(v107, &a1[v43[5]], v109);
    v53 = v43[7];
    v54 = &a1[v43[6]];
    v56 = *v54;
    v55 = *(v54 + 1);
    v95 = v56;
    v91 = v55;
    v57 = *&a1[v53 + 8];
    v96 = *&a1[v53];
    v90 = v57;
    v58 = v43[9];
    v59 = &a1[v43[8]];
    v61 = *v59;
    v60 = *(v59 + 1);
    v92 = v61;
    v103 = v60;
    v62 = *&a1[v58 + 8];
    v94 = *&a1[v58];
    v63 = &a1[v43[10]];
    v65 = *v63;
    v64 = *(v63 + 1);
    v93 = v65;
    v104 = v64;
    v66 = v102;
    sub_1D5CEB57C(v51, v102);
    v67 = *(v50 + 48);
    if (v67(v66, 1, v49) == 1)
    {
      sub_1D606BE74(&a1[v43[11]], v106);
      v68 = v67(v66, 1, v49);

      v69 = v91;

      v70 = v90;

      v71 = v66;
      v72 = v62;
      if (v68 != 1)
      {
        sub_1D5CF2948(v71, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
      }
    }

    else
    {
      v74 = v106;
      (*(v50 + 32))(v106, v66, v49);
      v89(v74, 0, 1, v49);

      v69 = v91;

      v70 = v90;

      v72 = v62;
    }

    v75 = *&a1[v43[12]];
    v76 = *&a1[v43[13]];
    v77 = *&a1[v43[14]];
    v78 = *&a1[v43[15]];
    v79 = *&a1[v43[17]];
    v80 = v105;
    *a3 = v97;
    *(a3 + 1) = v80;
    (*(v108 + 32))(&a3[v43[5]], v107, v109);
    v81 = &a3[v43[6]];
    *v81 = v95;
    *(v81 + 1) = v69;
    v82 = &a3[v43[7]];
    *v82 = v96;
    *(v82 + 1) = v70;
    v83 = &a3[v43[8]];
    v84 = v103;
    *v83 = v92;
    *(v83 + 1) = v84;
    v85 = &a3[v43[9]];
    *v85 = v94;
    *(v85 + 1) = v72;
    v86 = &a3[v43[10]];
    v87 = v104;
    *v86 = v93;
    *(v86 + 1) = v87;
    sub_1D5CEB57C(v106, &a3[v43[11]]);
    *&a3[v43[12]] = v75;
    *&a3[v43[13]] = v76;
    *&a3[v43[14]] = v77;
    *&a3[v43[15]] = v78;
    *&a3[v43[16]] = v98;
    *&a3[v43[17]] = v79;
    v88 = v99;
    *&a3[v43[18]] = v100;
    *&a3[v43[19]] = v88;
  }

  else
  {

    return sub_1D6069A70(a1, a3);
  }
}

void *FormatServiceMergeContext.__allocating_init(theme:feedDescriptor:groupTag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *FormatServiceMergeContext.init(theme:feedDescriptor:groupTag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

char *sub_1D69FAD7C(void *a1)
{
  v2 = [a1 backingChannel];
  if (!v2)
  {
    sub_1D69FB0C8([a1 backingTag], &v29);
    swift_unknownObjectRelease();
    v10 = v29;
    if (!v29)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v28 = v30;
    v6 = sub_1D698C0DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_1D698C0DC((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    v13 = &v6[24 * v12];
    *(v13 + 4) = v10;
LABEL_21:
    *(v13 + 40) = v28;
    return v6;
  }

  v3 = v2;
  v4 = swift_unknownObjectRetain();
  sub_1D69FB0C8(v4, &v29);
  swift_unknownObjectRelease();
  v5 = v29;
  if (v29)
  {
    v27 = v30;
    v6 = sub_1D698C0DC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1D698C0DC((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[24 * v8];
    *(v9 + 4) = v5;
    *(v9 + 40) = v27;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v14 = [v3 identifier];
  v15 = sub_1D726207C();
  v17 = v16;

  v18 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  v19 = sub_1D726207C();
  v21 = v20;

  if (v15 != v19 || v17 != v21)
  {
    v22 = sub_1D72646CC();

    if ((v22 & 1) != 0 || (sub_1D69FB0C8([a1 backingTag], &v29), swift_unknownObjectRelease(), (v23 = v29) == 0))
    {
      swift_unknownObjectRelease();
      return v6;
    }

    v28 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D698C0DC(0, *(v6 + 2) + 1, 1, v6);
    }

    v25 = *(v6 + 2);
    v24 = *(v6 + 3);
    if (v25 >= v24 >> 1)
    {
      v6 = sub_1D698C0DC((v24 > 1), v25 + 1, 1, v6);
    }

    swift_unknownObjectRelease();
    *(v6 + 2) = v25 + 1;
    v13 = &v6[24 * v25];
    *(v13 + 4) = v23;
    goto LABEL_21;
  }

  swift_unknownObjectRelease();

  return v6;
}

id sub_1D69FB0C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D72620DC();
  v5 = *(v4 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v4, v6).n128_u64[0];
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 supergroupConfigJson];
  if (!result || (v11 = result, sub_1D726207C(), v11, sub_1D72620CC(), v12 = sub_1D726208C(), v14 = v13, , result = (*(v5 + 8))(v9, v4), v14 >> 60 == 15))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    sub_1D5C384A0();
    v23[2] = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    v17 = [a1 identifier];
    v18 = sub_1D726207C();
    v20 = v19;

    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1D5B7E2C0();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    sub_1D7262EDC();
    sub_1D725C30C();

    sub_1D725A6CC();
    swift_allocObject();
    sub_1D725A6BC();
    sub_1D69FBE70();
    sub_1D725A69C();
    sub_1D5B952E4(v12, v14);

    v21 = v24;
    v22 = v25;
    result = v26;
    if (!*(v24 + 16) && !*(v25 + 16) && !v26[2])
    {

      v21 = 0;
      v22 = 0;
      result = 0;
    }

    *a2 = v21;
    a2[1] = v22;
    a2[2] = result;
  }

  return result;
}

uint64_t FormatServiceMergeContext.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t FormatServiceMergeContext.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D69FB518@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  sub_1D5B5959C(0, &qword_1EDF17F40, sub_1D5C8CD38);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - v5;
  sub_1D5B5959C(0, &qword_1EDF17F20, sub_1D5E18934);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v32 - v9;
  sub_1D69FBF28(0, &qword_1EC88FEA0, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v32 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69FBED4();
  v17 = v36;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v13;
  v34 = v6;
  sub_1D5B4A5A0(0);
  v39 = 0;
  sub_1D5B4A234(qword_1EDF3E280, sub_1D5B4A5A0);
  sub_1D726427C();
  if (v40)
  {
    v19 = v40;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5E18934();
  v21 = v20;
  v38 = 1;
  sub_1D5B4A234(&qword_1EDF3BD70, sub_1D5E18934);
  sub_1D726427C();
  v33 = v16;
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v10, 1, v21);
  v24 = a1;
  v32 = v19;
  if (v23 == 1)
  {
    sub_1D5CF2948(v10, &qword_1EDF17F20, sub_1D5E18934);
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v25 = sub_1D725A74C();
    (*(v22 + 8))(v10, v21);
  }

  sub_1D5C8CD38();
  v27 = v26;
  v37 = 2;
  sub_1D5B4A234(&qword_1EDF3BE00, sub_1D5C8CD38);
  v28 = v34;
  sub_1D726427C();
  v29 = v35;
  v30 = *(v27 - 8);
  if ((*(v30 + 48))(v28, 1, v27) == 1)
  {
    sub_1D5CF2948(v28, &qword_1EDF17F40, sub_1D5C8CD38);
    v31 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v31 = sub_1D725A74C();
    (*(v30 + 8))(v28, v27);
  }

  (*(v36 + 8))(v33, v12);
  *v29 = v32;
  v29[1] = v25;
  v29[2] = v31;

  __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D69FBAE8(void *a1)
{
  sub_1D69FBF28(0, &unk_1EC88FEB8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  v11 = *v1;
  v10 = v1[1];
  v15 = v1[2];
  v16 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69FBED4();

  sub_1D7264B5C();
  v18 = v11;
  v17 = 0;
  sub_1D5B4A5A0(0);
  sub_1D5B4A234(&qword_1EDF0A490, sub_1D5B4A5A0);
  sub_1D726443C();
  if (v2)
  {
  }

  else
  {
    v12 = v15;

    v18 = v16;
    v17 = 1;
    sub_1D5E4C584();
    sub_1D5E4C5D4();
    sub_1D726443C();
    v18 = v12;
    v17 = 2;
    sub_1D5B81B04();
    sub_1D5E4C64C();
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D69FBD40()
{
  v1 = 0x69747265706F7270;
  if (*v0 != 1)
  {
    v1 = 0x726F7463656C6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656D656874;
  }
}

uint64_t sub_1D69FBDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69FC0A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69FBDC8(uint64_t a1)
{
  v2 = sub_1D69FBED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69FBE04(uint64_t a1)
{
  v2 = sub_1D69FBED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D69FBE70()
{
  result = qword_1EC88FE90;
  if (!qword_1EC88FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FE90);
  }

  return result;
}

unint64_t sub_1D69FBED4()
{
  result = qword_1EC88FEA8;
  if (!qword_1EC88FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FEA8);
  }

  return result;
}

void sub_1D69FBF28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69FBED4();
    v7 = a3(a1, &type metadata for FormatMergeConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69FBFA0()
{
  result = qword_1EC88FEC8;
  if (!qword_1EC88FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FEC8);
  }

  return result;
}

unint64_t sub_1D69FBFF8()
{
  result = qword_1EC88FED0;
  if (!qword_1EC88FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FED0);
  }

  return result;
}

unint64_t sub_1D69FC050()
{
  result = qword_1EC88FED8;
  if (!qword_1EC88FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FED8);
  }

  return result;
}

uint64_t sub_1D69FC0A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D656874 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

void sub_1D69FC1C8()
{
  sub_1D5B5B2A0();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1D725891C();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

char *sub_1D69FC2F4()
{
  v1 = *v0;

  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(&v0[qword_1EDF347F0]);
  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[*(*v0 + 120)], v2);
  v4 = *(*v0 + 128);
  v5 = sub_1D725891C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v3(&v0[*(*v0 + 136)], v2);
  return v0;
}

uint64_t sub_1D69FC40C()
{
  sub_1D69FC2F4();

  return swift_deallocClassInstance();
}

void sub_1D69FC47C(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedDebugView_label];
  if (v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedDebugView_display])
  {
    v4 = sub_1D726203C();

    [v3 setText_];

    v5 = objc_opt_self();
    v6 = [v5 labelColor];
    [v3 setTextColor_];

    v7 = [v1 layer];
    v8 = [v5 *off_1E84CEEF0[a1]];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 CGColor];
    }

    else
    {
      v10 = 0;
    }

    [v7 setBorderColor_];

    v20 = [v1 layer];
    [v20 setBorderWidth_];

    v21 = [v5 systemBackgroundColor];
    v22 = [v21 colorWithAlphaComponent_];

    [v1 setBackgroundColor_];

    [v1 setAlpha_];
  }

  else
  {
    v11 = sub_1D726203C();

    [v3 setText_];

    v12 = [objc_opt_self() *off_1E84CEEF0[a1]];
    [v1 setBackgroundColor_];

    [v1 setAlpha_];
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    v27 = sub_1D69FCD50;
    v28 = v14;
    v23 = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1D5B6B06C;
    v26 = &block_descriptor_61;
    v15 = _Block_copy(&v23);
    v16 = v1;

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v27 = sub_1D69FCD50;
    v28 = v17;
    v23 = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1D5DF8CE4;
    v26 = &block_descriptor_10_1;
    v18 = _Block_copy(&v23);
    v19 = v16;

    [v13 animateWithDuration:65538 delay:v15 options:v18 animations:1.5 completion:0.2];
    _Block_release(v18);
    _Block_release(v15);
  }
}

char *sub_1D69FC9A0(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDebugView_label;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedDebugView_display] = a1 & 1;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 setAlpha_];
  v6 = OBJC_IVAR____TtC8NewsFeed17WebEmbedDebugView_label;
  [*&v5[OBJC_IVAR____TtC8NewsFeed17WebEmbedDebugView_label] setTextAlignment_];
  v7 = *&v5[v6];
  v8 = objc_opt_self();
  v9 = *MEMORY[0x1E69DB980];
  v10 = v7;
  v11 = [v8 systemFontOfSize:13.0 weight:v9];
  [v10 setFont_];

  v12 = *&v5[v6];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 blackColor];
  [v14 setTextColor_];

  [*&v5[v6] setNumberOfLines_];
  [v5 addSubview_];

  return v5;
}

unint64_t sub_1D69FCCFC()
{
  result = qword_1EC88FEF0;
  if (!qword_1EC88FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FEF0);
  }

  return result;
}

uint64_t StubFeedPersonalizationService.prepareForUse()()
{
  sub_1D5B73960();
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t StubFeedPersonalizationService.diversify<A>(recipes:)()
{
  nullsub_1();
}

char *_s8NewsFeed04StubB22PersonalizationServiceC5score9headlines7contextSayAA0B14ScoredHeadlineVGSaySo19FCHeadlineProviding_pG_AA0bJ14ScoringContextOtF_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997CD0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      v7 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      if (!v7)
      {
        v7 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v7;
        sub_1D6997CD0((v8 > 1), v9 + 1, 1);
        v7 = v11;
      }

      ++v5;
      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

char *_s8NewsFeed04StubB22PersonalizationServiceC5score6issues7contextSayAA0B11ScoredIssueVGSaySo7FCIssueCG_AA0bJ14ScoringContextOtF_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997CF0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v13;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      if (!v8)
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v8;
        sub_1D6997CF0((v9 > 1), v10 + 1, 1);
        v8 = v12;
      }

      ++v5;
      *(v13 + 16) = v10 + 1;
      v11 = v13 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed04StubB22PersonalizationServiceC5score4tagsSayAA0B9ScoredTagVGSaySSG_tF_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D6997D10(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1D6997D10((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = (v11 + 24 * v7);
      v9[4] = v6;
      v9[5] = v5;
      v9[6] = 0;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

double _s8NewsFeed04StubB22PersonalizationServiceC10groupScore5itemsSdSayAA0B10ScoredItemVG_tF_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D6998464(0, v1, 0);
    v3 = v11;
    v4 = (a1 + 40);
    do
    {
      [*v4 agedPersonalizationScore];
      v10 = v3;
      v7 = *(*&v3 + 16);
      v6 = *(*&v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v8 = v5;
        sub_1D6998464((v6 > 1), v7 + 1, 1);
        v5 = v8;
      }

      *(*&v3 + 16) = v7 + 1;
      *(*&v3 + 8 * v7 + 32) = v5;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  sub_1D5F39688();
  sub_1D72626FC();

  return v10;
}

char *_s8NewsFeed04StubB22PersonalizationServiceC5score5items7contextSayAA0B10ScoredItemVGSaySo019FCFeedPersonalizingJ0_pG_AA0B14ScoringContextOtF_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997D30(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      v7 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      if (!v7)
      {
        v7 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v7;
        sub_1D6997D30((v8 > 1), v9 + 1, 1);
        v7 = v11;
      }

      ++v5;
      *(v12 + 16) = v9 + 1;
      v10 = (v12 + 24 * v9);
      v10[4] = v6;
      v10[5] = v7;
      v10[6] = 0;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

double _s8NewsFeed04StubB22PersonalizationServiceC10groupScore9headlinesSdSayAA0B14ScoredHeadlineVG_tF_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D6998464(0, v1, 0);
    v3 = v11;
    v4 = (a1 + 40);
    do
    {
      [*v4 agedPersonalizationScore];
      v10 = v3;
      v7 = *(*&v3 + 16);
      v6 = *(*&v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v8 = v5;
        sub_1D6998464((v6 > 1), v7 + 1, 1);
        v5 = v8;
      }

      *(*&v3 + 16) = v7 + 1;
      *(*&v3 + 8 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  sub_1D5F39688();
  sub_1D72626FC();

  return v10;
}

double _s8NewsFeed04StubB22PersonalizationServiceC10groupScore7recipesSdSayAA0B12ScoredRecipeVyxGG_tSo16FCRecipeScorableRzlF_0(uint64_t a1, uint64_t a2)
{
  v7 = *&a1;
  v6[2] = a2;
  type metadata accessor for FeedScoredRecipe();
  v2 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  sub_1D5B874E4(sub_1D69FD6A8, v6, v2, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);
  sub_1D5F39688();
  sub_1D72626FC();

  return v7;
}

id sub_1D69FD6A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + 8) agedPersonalizationScore];
  *a2 = v4;
  return result;
}

uint64_t FormatImageRequestData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D69FD714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = a5;
  *(a2 + 40) = a6;
  v8 = *(a1 + 16);
  *(a2 + 48) = *a1;
  *(a2 + 64) = v8;
  *(a2 + 80) = *(a1 + 32);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x6E756F42657A6973, 0xEC0000003A3A7364);
  type metadata accessor for CGRect(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](0x6F42687461703A3ALL, 0xEE003A3A73646E75);
  if ((*(a1 + 32) & 1) == 0)
  {
    sub_1D7263F9C();
  }

  MEMORY[0x1DA6F9910](0, 0xE000000000000000);

  *a2 = v10;
  return result;
}

uint64_t SharingArticleActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D69FD91C()
{
  result = qword_1EC88FEF8;
  if (!qword_1EC88FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FEF8);
  }

  return result;
}

uint64_t UIUserInterfaceLayoutDirection.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x6F74207468676952;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x206F74207466654CLL;
  }
}

uint64_t sub_1D69FD9E0()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v1 = 0x6F74207468676952;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x206F74207466654CLL;
  }
}

uint64_t sub_1D69FDA54(uint64_t a1, int a2)
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

uint64_t sub_1D69FDA9C(uint64_t result, int a2, int a3)
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

void sub_1D69FDB6C(unint64_t a1)
{
  v1 = a1 == 2;
  if (a1 < 2)
  {
    v2 = objc_opt_self();
    v3 = sub_1D726203C();
    v4 = [v2 ts:v3 internalSystemImageNamed:?];

    if (v4)
    {
      return;
    }

    __break(1u);
  }

  if (v1)
  {
    v5 = objc_opt_self();
    v6 = sub_1D726203C();
    v7 = [v5 ts:v6 internalSystemImageNamed:?];

    if (v7)
    {
      return;
    }

    __break(1u);
  }

  v8 = objc_opt_self();
  v9 = sub_1D726203C();
  v10 = [v8 ts:v9 internalSystemImageNamed:?];

  if (!v10)
  {
    __break(1u);
  }
}

void sub_1D69FDCA8(uint64_t a1)
{
  if (a1 != 1)
  {
    if (a1)
    {
      goto LABEL_7;
    }

    v1 = sub_1D726203C();
    v2 = [objc_opt_self() systemImageNamed_];

    if (v2)
    {
      return;
    }

    __break(1u);
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    return;
  }

  __break(1u);
LABEL_7:
  v5 = sub_1D726203C();
  v6 = [objc_opt_self() systemImageNamed_];

  if (!v6)
  {
    __break(1u);
  }
}

void *sub_1D69FDDC4()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___navigationItemManager;
  if (*&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___navigationItemManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___navigationItemManager];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_statusView];
    type metadata accessor for DebugFormatNavigationItemManager();
    v4 = swift_allocObject();
    v5 = v3;
    v6 = v0;
    v2 = sub_1D6A1389C(v6, v5, v4, &off_1F518DA30);

    *&v0[v1] = v2;
  }

  return v2;
}

void sub_1D69FDE78()
{
  v1 = sub_1D725A19C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D6A9E528();
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView];
  sub_1D67F6CC8(0, 1, 0, 0, 2u, v6 & 0x1FF, v45);
  v10 = v45[66];
  [v8 bounds];
  v11 = sub_1D6E24328(v6, v8);
  v13 = v12;
  v43 = v1;
  v44 = v5;
  if (v6 >= 0x1Bu)
  {
    if (v6 - 27 >= 6)
    {
      v15 = MEMORY[0x1E69E7CD0];
      goto LABEL_5;
    }

    v14 = &unk_1F5118C68;
  }

  else
  {
    v14 = &unk_1F5118C90;
  }

  v15 = sub_1D5E29338(v14);
LABEL_5:
  v16 = sub_1D61867BC(v10, v15);

  v17 = [v8 traitCollection];
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = sub_1D72630DC();

  [v8 layoutMargins];
  sub_1D6F79CFC(v6);
  sub_1D7262E0C();
  sub_1D7262DFC();
  v41 = v21;
  v42 = v20;
  v40 = v22;
  v39 = v23;
  [v9 safeAreaInsets];
  v26 = v25;
  v28 = v27;
  if ((v6 - 33) >= 2u)
  {
    sub_1D7262DFC();
    sub_1D7262E0C();
    v38 = v29;
    v26 = v30;
    v28 = v31;
  }

  else
  {
    v38 = v24;
  }

  if (v16 & v10)
  {
    v32 = v11;
  }

  else
  {
    v32 = v13;
  }

  if (v16 & v10)
  {
    v11 = v13;
  }

  v37[2] = sub_1D6E24200(v9, v11, v32, v26, v28);
  v37[1] = v33;
  sub_1D725A64C();
  sub_1D726332C();
  v37[0] = v34;
  v35 = [objc_opt_self() mainScreen];
  [v35 nativeBounds];

  v36 = [v19 preferredContentSizeCategory];
  (*(v2 + 104))(v44, *MEMORY[0x1E69D7278], v43);
  sub_1D7259E5C();
}

char *sub_1D69FE348()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___overlayView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___overlayView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___overlayView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_rulerView);
    v5 = objc_allocWithZone(type metadata accessor for DebugFormatOverlayView());
    v6 = v4;
    v7 = v0;
    v8 = sub_1D6B5F740(v6);
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1D69FE3D0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___zoomBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___zoomBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___zoomBarButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v18[3] = ObjectType;
    v18[0] = v0;
    v5 = v0;
    v6 = sub_1D726203C();
    if (ObjectType)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v18, ObjectType);
      v8 = *(ObjectType - 8);
      v9 = MEMORY[0x1EEE9AC00](v7, v7);
      v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_1D72646AC();
      (*(v8 + 8))(v11, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v12 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = [v13 initWithTitle:v6 style:0 target:v12 action:{sel_doResetZoom, v18[0]}];

    swift_unknownObjectRelease();
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_1D69FE590()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___canvasInteractionBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___canvasInteractionBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___canvasInteractionBarButtonItem);
  }

  else
  {

    v4 = v0;
    v5 = sub_1D725974C();

    sub_1D688A968(v5, 0x6172642E646E6168, 0xEE006C6C69662E77, 0x6172642E646E6168, 0xE900000000000077);
    v6 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1D69FE658()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___editorPathView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___editorPathView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___editorPathView);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for DebugFormatEditorPathView());

    v5 = v0;
    v6 = sub_1D67A317C(v4);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D69FE6E4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v9 = sub_1D726203C();
    v10 = [objc_opt_self() systemImageNamed_];

    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v10 style:0 target:v4 action:*a4];
    v12 = *(v4 + v5);
    *(v4 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v13 = v6;
  return v7;
}

id sub_1D69FE7CC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepInBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepInBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepInBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_doBreakpointStepIn];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D69FE8C0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOverBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOverBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOverBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_doBreakpointStepOver];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D69FE9B4()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOutBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOutBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOutBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_doBreakpointStepOut];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D69FEAA8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___snapshotBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___snapshotBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___snapshotBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_doSnapshotWithSender_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D69FEB9C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___workspacesBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___workspacesBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___workspacesBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v0 action:sel_showWorkspaces];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1D69FEC90()
{
  v1 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___devicesBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___devicesBarButtonItem);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v4 style:0 target:v0 action:sel_showDevicesWithSender_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_1D69FEDB0()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_loadView);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = [objc_allocWithZone(type metadata accessor for DebugFormatEditorView()) initWithFrame_];
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 autoresizingMask];

      [v11 setAutoresizingMask_];
      [v0 setView_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D69FEF2C()
{
  v1 = v0;
  v206.receiver = v0;
  v206.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v206, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 tertiarySystemBackgroundColor];
  [v3 setBackgroundColor_];

  v6 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_snapshotCanvasView];
  v7 = [v4 tertiarySystemBackgroundColor];
  [v6 setBackgroundColor_];

  [v6 setHidden_];
  v8 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView];
  [v8 addSubview_];
  v9 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_scrollView];
  [v9 addSubview_];
  v10 = [v1 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v10 addSubview_];

  v12 = [v1 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  [v12 addSubview_];

  v14 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController];
  v15 = [v14 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  [v15 setPreservesSuperviewLayoutMargins_];

  [v1 addChildViewController_];
  v17 = [v14 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  [v8 addSubview_];

  [v14 didMoveToParentViewController_];
  v19 = [v14 view];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v1 view];
  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v20 setFrame_];
  sub_1D6A011BC();
  [v9 setShowsHorizontalScrollIndicator_];
  [v9 setMinimumZoomScale_];
  [v9 setMaximumZoomScale_];
  [v9 setDelegate_];
  v31 = sub_1D69FE348();
  [v9 addSubview_];

  [v9 addSubview_];
  [v9 setZoomScale:0 animated:1.0];
  [v9 _setHiddenPocketEdges_];
  v199 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor];
  aBlock = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___overlayView];
  v32 = aBlock;

  sub_1D725B32C();

  v33 = sub_1D69FE3D0();
  sub_1D5B86020(&unk_1F51191D0);
  swift_arrayDestroy();
  v34 = sub_1D7262AFC();

  [v33 setPossibleTitles_];

  v35 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___zoomBarButtonItem;
  v36 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___zoomBarButtonItem];
  sub_1D6A14978(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v38 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v188 = objc_opt_self();
  v189 = v38;
  v39 = v36;
  v40 = [v188 systemFontOfSize_];
  v187 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v40;
  v41 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v187;
  *(inited + 72) = v41;
  v186 = v41;
  v42 = [v4 secondaryLabelColor];
  v197 = v4;
  v43 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 104) = v43;
  *(inited + 80) = v42;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1D6A15C70(&qword_1EDF1A8E0, 255, type metadata accessor for Key);
  v44 = sub_1D7261D2C();

  [v39 setTitleTextAttributes:v44 forState:0];

  v195 = v35;
  v45 = *&v1[v35];
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1D7270C10;
  *(v46 + 32) = v189;
  v47 = v45;
  *(v46 + 40) = [v188 systemFontOfSize_];
  *(v46 + 64) = v187;
  *(v46 + 72) = v186;
  v48 = [v4 secondaryLabelColor];
  *(v46 + 104) = v43;
  *(v46 + 80) = v48;
  sub_1D5C09CEC(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  v49 = sub_1D7261D2C();

  [v47 setTitleTextAttributes:v49 forState:1];

  v50 = [v1 navigationItem];
  sub_1D5B5A498(0, &qword_1EC88B4C0);
  v51 = sub_1D6A01414();
  sub_1D6A153FC(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1D728AF30;
  *(v52 + 32) = sub_1D69FEAA8();

  v53 = sub_1D725B33C();

  sub_1D688AC3C(v53, 0xD000000000000017, 0x80000001D73DF680, 0xD000000000000012, 0x80000001D73DC020);
  *(v52 + 40) = v54;
  *(v52 + 48) = sub_1D6A01414();
  v55 = sub_1D726317C();

  [v50 setPinnedTrailingGroup_];

  v56 = [v1 navigationItem];
  v57 = sub_1D69FE658();
  [v56 ts:v57 setBottomPaletteWithContentView:?];

  v58 = [v1 navigationItem];
  v59 = [v4 secondarySystemBackgroundColor];
  sub_1D71CD7DC(v58, v59);

  v60 = *&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_statusView];
  v61 = *(v60 + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_onErrorTap);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = v61;

  v63 = *(v60 + OBJC_IVAR____TtC8NewsFeed27DebugFormatEditorStatusView_onServerTap);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v63;

  sub_1D725B33C();

  sub_1D725B35C();

  v65 = sub_1D69FE6E4(&OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerRunBarButtonItem, 0x6C69662E79616C70, 0xE90000000000006CLL, &selRef_doStartStopDebugger);
  v66 = [v4 systemBlueColor];
  [v65 setTintColor_];

  v67 = sub_1D69FE6E4(&OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerNextBarButtonItem, 0x2E64726177726F66, 0xEC0000006C6C6966, &selRef_doBreakpointNext);
  v68 = [v4 systemBlueColor];
  [v67 setTintColor_];

  v69 = sub_1D69FE8C0();
  v70 = [v4 systemBlueColor];
  [v69 setTintColor_];

  v71 = sub_1D69FE7CC();
  v72 = [v4 systemBlueColor];
  [v71 setTintColor_];

  v73 = sub_1D69FE9B4();
  v74 = [v4 systemBlueColor];
  [v73 setTintColor_];

  sub_1D725B33C();

  sub_1D725B35C();

  type metadata accessor for DebugFormatBarButtonItem();

  sub_1D725972C();

  sub_1D69FDB6C(aBlock);
  v76 = v75;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = objc_allocWithZone(ObjCClassFromMetadata);
  v79 = v1;
  v193 = [v78 initWithImage:v76 style:0 target:v79 action:sel_doLightDarkMode];

  sub_1D725972C();

  sub_1D69FDCA8(aBlock);
  v81 = v80;
  v191 = [objc_allocWithZone(ObjCClassFromMetadata) initWithImage:v80 style:0 target:v79 action:sel_doInterfaceLayoutDirection];

  v82 = sub_1D726203C();
  v83 = objc_opt_self();
  v84 = [v83 systemImageNamed_];

  v85 = [objc_allocWithZone(ObjCClassFromMetadata) initWithImage:v84 style:0 target:v79 action:sel_doToggleConsoleDisplay];

  sub_1D725974C();

  sub_1D725971C();

  v86 = sub_1D69FE590();
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v204 = sub_1D6A152D4;
  v205 = v87;
  aBlock = MEMORY[0x1E69E9820];
  v201 = 1107296256;
  v202 = sub_1D6A0242C;
  v203 = &block_descriptor_50;
  v88 = _Block_copy(&aBlock);

  [v86 _setSecondaryActionsProvider_];
  _Block_release(v88);

  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1D7284BA0;
  v90 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerRunBarButtonItem;
  v91 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerRunBarButtonItem];
  *(v89 + 32) = v91;
  v92 = ObjCClassFromMetadata;
  v93 = objc_allocWithZone(ObjCClassFromMetadata);
  v94 = v91;
  *(v89 + 40) = [v93 initWithBarButtonSystemItem:6 target:0 action:0];
  sub_1D69FEC90();
  *(v89 + 48) = v95;
  *(v89 + 56) = v193;
  *(v89 + 64) = v191;
  v194 = v193;
  v192 = v191;
  v96 = sub_1D726203C();
  v97 = [v83 ts:v96 internalSystemImageNamed:?];

  if (!v97)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v98 = [objc_allocWithZone(ObjCClassFromMetadata) initWithImage:v97 style:0 target:v79 action:sel_doAccessibilityWithSender_];

  *(v89 + 72) = v98;
  v99 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___canvasInteractionBarButtonItem];
  *(v89 + 80) = v99;
  v100 = objc_allocWithZone(ObjCClassFromMetadata);
  v101 = v99;
  v102 = [v100 initWithBarButtonSystemItem:5 target:0 action:0];
  v103 = *&v1[v195];
  *(v89 + 88) = v102;
  *(v89 + 96) = v103;
  v104 = objc_allocWithZone(ObjCClassFromMetadata);
  v105 = v103;
  *(v89 + 104) = [v104 initWithBarButtonSystemItem:5 target:0 action:0];
  *(v89 + 112) = sub_1D69FEB9C();
  *(v89 + 120) = v85;
  *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editorToolbarItems] = v89;
  v190 = v85;

  sub_1D5B5A498(0, &qword_1EDF04590);

  v106 = sub_1D726265C();

  [v79 setToolbarItems_];

  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1D7312350;
  v108 = *&v79[v90];
  *(v107 + 32) = v108;
  v109 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerNextBarButtonItem];
  *(v107 + 40) = v109;
  v110 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOverBarButtonItem];
  *(v107 + 48) = v110;
  v111 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepInBarButtonItem];
  *(v107 + 56) = v111;
  v112 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerStepOutBarButtonItem];
  *(v107 + 64) = v112;
  v113 = objc_allocWithZone(v92);
  v114 = v112;
  v115 = v111;
  v116 = v110;
  v117 = v109;
  v118 = v108;
  v119 = [v113 initWithBarButtonSystemItem:5 target:0 action:0];
  v120 = *&v1[v195];
  *(v107 + 72) = v119;
  *(v107 + 80) = v120;
  v121 = objc_allocWithZone(v92);
  v122 = v120;
  *(v107 + 88) = [v121 initWithBarButtonSystemItem:5 target:0 action:0];
  v123 = OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___workspacesBarButtonItem;
  v124 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___workspacesBarButtonItem];
  *(v107 + 96) = v124;
  *(v107 + 104) = v190;
  *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_debuggerToolbarItems] = v107;
  v125 = v124;

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725974C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D725975C();

  sub_1D725974C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D725975C();

  v126 = *(v199 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_resizingProvider);
  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v128 = *(v126 + 32);
  *(v126 + 32) = sub_1D6A152EC;
  *(v126 + 40) = v127;

  sub_1D5B74328(v128);

  sub_1D725974C();

  sub_1D725975C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  v129 = *&v79[v123];
  v130 = swift_allocObject();
  swift_weakInit();
  v131 = swift_allocObject();
  swift_weakInit();
  v132 = swift_allocObject();
  *(v132 + 16) = v130;
  *(v132 + 24) = v131;
  v204 = sub_1D6A152F4;
  v205 = v132;
  aBlock = MEMORY[0x1E69E9820];
  v201 = 1107296256;
  v202 = sub_1D6A0242C;
  v203 = &block_descriptor_67;
  v133 = _Block_copy(&aBlock);
  v134 = v129;

  [v134 _setSecondaryActionsProvider_];
  _Block_release(v133);

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B35C();

  v135 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___editorPathView];
  v136 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v137 = &v135[OBJC_IVAR____TtC8NewsFeed25DebugFormatEditorPathView_onShowSourceMap];
  swift_beginAccess();
  v138 = *v137;
  *v137 = sub_1D6A152FC;
  v137[1] = v136;

  v139 = v135;
  sub_1D5B74328(v138);

  sub_1D725B33C();

  sub_1D725B35C();

  v140 = *MEMORY[0x1E69DDC48];
  v141 = *MEMORY[0x1E69DD8B8];
  v142 = *MEMORY[0x1E69DD920];
  v143 = *MEMORY[0x1E69DD8A8];
  v144 = *MEMORY[0x1E69DD8D8];
  v145 = *MEMORY[0x1E69DD898];
  v146 = objc_opt_self();
  v147 = v140;
  v148 = v141;
  v149 = v142;
  v196 = v143;
  v198 = v144;
  v150 = v145;
  v151 = v147;
  v152 = [v146 defaultCenter];
  [v152 addObserver:v79 selector:sel_doReload name:v151 object:0];

  v153 = v148;
  v154 = [v146 defaultCenter];
  [v154 addObserver:v79 selector:sel_doReload name:v153 object:0];

  v155 = v149;
  v156 = [v146 defaultCenter];
  [v156 addObserver:v79 selector:sel_doReload name:v155 object:0];

  v157 = v196;
  v158 = [v146 defaultCenter];
  [v158 addObserver:v79 selector:sel_doReload name:v157 object:0];

  v159 = v198;
  v160 = [v146 defaultCenter];
  [v160 addObserver:v79 selector:sel_doReload name:v159 object:0];

  v161 = v150;
  v162 = [v146 defaultCenter];
  [v162 addObserver:v79 selector:sel_doReload name:v161 object:0];

  v163 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_sourceViewController];
  [v79 addChildViewController_];
  v164 = [v79 view];
  if (!v164)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v165 = v164;
  v166 = [v163 view];
  if (!v166)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v167 = v166;
  [v165 addSubview_];

  [v163 didMoveToParentViewController_];
  v168 = [v163 view];
  if (!v168)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v169 = v168;
  v170 = [v79 view];
  if (!v170)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v171 = v170;
  [v170 bounds];
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v179 = v178;

  [v169 setFrame_];

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  [v79 setAdditionalSafeAreaInsets_];
  v180 = *&v79[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_toolbarBackgroundView];
  v181 = [v197 secondarySystemBackgroundColor];
  [v180 setBackgroundColor_];

  v182 = [v79 view];
  if (!v182)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v183 = v182;
  type metadata accessor for Name(0);
  swift_arrayDestroy();
  [v183 addSubview_];

  v184 = [v79 view];
  if (v184)
  {
    v185 = v184;
    type metadata accessor for DebugFormatEditorView();
    swift_dynamicCastClassUnconditional();

    sub_1D725B33C();

    sub_1D725B35C();

    return;
  }

LABEL_29:
  __break(1u);
}

id sub_1D6A011BC()
{
  v1 = v0;

  sub_1D725B31C();

  v23[10] = v19;
  v23[11] = v20;
  v23[12] = v21;
  v23[6] = v15;
  v23[7] = v16;
  v23[8] = v17;
  v23[9] = v18;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v23[0] = v9;
  v23[1] = v10;
  v25[10] = v19;
  v25[11] = v20;
  v26 = v21;
  v25[6] = v15;
  v25[7] = v16;
  v25[8] = v17;
  v25[9] = v18;
  v25[2] = v11;
  v25[3] = v12;
  v25[4] = v13;
  v25[5] = v14;
  v24 = v22;
  v27 = v22;
  v25[0] = v9;
  v25[1] = v10;
  result = sub_1D5DEA380(v25);
  if (result != 1)
  {
    v3 = &v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_lastLayoutBounds];
    *v3 = 0u;
    *(v3 + 1) = 0u;
    v3[32] = 1;
    if (BYTE4(v26))
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    sub_1D67F6CC8(0, 1, 0, 0, 2u, v4 | BYTE3(v26), &v9);
    v5 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_canvasViewController];
    sub_1D705E298(&v9);
    result = [v5 view];
    if (result)
    {
      v6 = result;
      [result layoutIfNeeded];

      [*&v1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_backgroundView] setOverrideUserInterfaceStyle_];
      result = [v1 view];
      if (result)
      {
        v7 = result;
        [result setNeedsLayout];

        result = [v1 view];
        if (result)
        {
          v8 = result;
          [result layoutIfNeeded];

          return sub_1D6A149DC(v23, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        }

LABEL_12:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

id sub_1D6A01414()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(sub_1D725E86C());
  v3 = sub_1D725E85C();
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  [v5 setTintColor_];

  return v5;
}

void sub_1D6A0152C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for DebugFormatCompilerViewController());

  v4 = sub_1D72107C0(v3);

  v8 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  [v8 setModalPresentationStyle_];
  v5 = [v8 popoverPresentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setSourceView_];
  }

  v7 = [v8 popoverPresentationController];

  if (v7)
  {
    [v7 setPermittedArrowDirections_];
  }

  [v1 presentViewController:v8 animated:1 completion:0];
}

void sub_1D6A01684(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1D6A016E0()
{
  v0 = MEMORY[0x1E69E6158];
  v1 = MEMORY[0x1E69D6EE0];
  sub_1D5F5DB14(0, &unk_1EC890070, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E30]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v30 - v6;
  sub_1D6A14978(0, &unk_1EC8941A0, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6F90]);
  v8 = *(sub_1D72597DC() - 8);
  v30[1] = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D69A7944();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7279970;
  sub_1D5F5DB14(0, &unk_1EC890080, v0, v1, MEMORY[0x1E69D6E50]);
  v11 = v10;
  if (qword_1EC87D5C8 != -1)
  {
    swift_once();
  }

  v12 = *MEMORY[0x1E69D6E28];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);

  v14 = sub_1D725978C();
  *(v9 + 56) = v11;
  v15 = sub_1D6A14CD8();
  *(v9 + 64) = v15;
  *(v9 + 32) = v14;
  if (qword_1EC87D5D0 != -1)
  {
    swift_once();
  }

  v13(v7, v12, v3);

  v16 = sub_1D725978C();
  *(v9 + 96) = v11;
  *(v9 + 104) = v15;
  *(v9 + 72) = v16;
  if (qword_1EC87D5D8 != -1)
  {
    swift_once();
  }

  v13(v7, v12, v3);

  v17 = sub_1D725978C();
  *(v9 + 136) = v11;
  *(v9 + 144) = v15;
  *(v9 + 112) = v17;
  sub_1D72597CC();
  v18 = sub_1D725DFCC();
  swift_allocObject();
  v19 = sub_1D725DFBC();
  v33 = v18;
  v34 = MEMORY[0x1E69D7D00];
  v32 = v19;
  v20 = objc_allocWithZone(sub_1D725E42C());
  v21 = sub_1D725E41C();

  v22 = [v21 navigationItem];
  sub_1D5B5A498(0, &qword_1EDF04590);
  v23 = sub_1D726265C();
  [v22 setRightBarButtonItems_];

  v24 = [v21 navigationItem];
  v25 = sub_1D726203C();
  [v24 setTitle_];

  v26 = [objc_allocWithZone(sub_1D725EDBC()) initWithRootViewController_];
  v27 = v26;
  [v27 setModalPresentationStyle_];
  v28 = [v27 popoverPresentationController];

  v29 = v31;
  if (v28)
  {
    [v28 setSourceView_];
  }

  [v29 presentViewController:v27 animated:1 completion:0];
}

uint64_t sub_1D6A01C74(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (v2)
    {
      v4 = sub_1D6E8BF88();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    sub_1D6B5B98C(v4, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D6A01D18(uint64_t a1, _BYTE *a2)
{
  if (!*a2)
  {
    return sub_1D6A01FF4();
  }

  if (*a2 == 1)
  {
    return sub_1D6A01D58();
  }

  return result;
}

uint64_t sub_1D6A01D58()
{
  v1 = v0;
  v2 = sub_1D69FEAA8();
  [v2 setEnabled_];

  sub_1D5B5A498(0, &qword_1EDF04590);

  v3 = sub_1D726265C();

  [v1 setToolbarItems_];

  sub_1D725973C();

  sub_1D725B32C();

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D6A15458;
  *(v6 + 24) = v5;
  v10[4] = sub_1D677E6A4;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D69C9704;
  v10[3] = &block_descriptor_102;
  v7 = _Block_copy(v10);
  v8 = v1;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {

    sub_1D725972C();

    if (!LOBYTE(v10[0]))
    {
      LOBYTE(v10[0]) = 1;

      sub_1D725973C();
    }
  }

  return result;
}

uint64_t sub_1D6A01FF4()
{
  v1 = sub_1D69FEAA8();
  [v1 setEnabled_];

  sub_1D5B5A498(0, &qword_1EDF04590);

  v2 = sub_1D726265C();

  [v0 setToolbarItems_];

  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor];

  sub_1D725B31C();

  v4 = v47;
  if (v47)
  {
    v5 = v46;
    v7 = v48;
    v6 = v49;
    v8 = v50;
    v9 = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_formatManager);

    sub_1D725A76C();
    swift_beginAccess();
    v10 = *(v9 + 40);
    if (*(v10 + 16) && (v11 = sub_1D5B69D90(v46, v47), (v12 & 1) != 0))
    {
      v13 = (*(v10 + 56) + (v11 << 7));
      v15 = v13[2];
      v14 = v13[3];
      v16 = v13[1];
      v22 = *v13;
      v23 = v16;
      v24 = v15;
      v25 = v14;
      v17 = v13[4];
      v18 = v13[5];
      v19 = v13[7];
      v28 = v13[6];
      v29 = v19;
      v26 = v17;
      v27 = v18;
      memmove(&__dst, v13, 0x80uLL);
      nullsub_1();
      sub_1D691C7D8(&v22, v21);
      v42 = v34;
      v43 = v35;
      v44 = v36;
      v45 = v37;
      v38 = __dst;
      v39 = v31;
      v40 = v32;
      v41 = v33;
    }

    else
    {
      sub_1D607F0A4(&v38);
    }

    swift_endAccess();
    sub_1D725A77C();

    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    __dst = v38;
    v31 = v39;
    v32 = v40;
    v33 = v41;
    if (sub_1D5DEA380(&__dst) != 1)
    {
      v22 = __dst;
      *&v23 = v31;
      BYTE8(v23) = BYTE8(v31);
      v24 = v32;
      *&v25 = v5;
      *(&v25 + 1) = v4;
      *&v26 = v7;
      *(&v26 + 1) = v6;
      *&v27 = v35;
      *(&v27 + 1) = v5;
      *&v28 = v4;
      *(&v28 + 1) = v7;
      *&v29 = v6;
      *(&v29 + 1) = v8;
      nullsub_1();
      v21[4] = v26;
      v21[5] = v27;
      v21[6] = v28;
      v21[7] = v29;
      v21[0] = v22;
      v21[1] = v23;
      v21[2] = v24;
      v21[3] = v25;

      sub_1D679CD2C(v5, v4, v7, v6, v8);

      sub_1D725B32C();

      LOBYTE(v21[0]) = 1;

      sub_1D725B32C();
      sub_1D6A149DC(&v38, &qword_1EC88DD40, &type metadata for DebugFormatFileSource);
      sub_1D679CD70(v5, v4, v7, v6, v8);
    }

    sub_1D679CD70(v5, v4, v7, v6, v8);
  }

  sub_1D725B31C();

  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  __dst = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;

  sub_1D725B32C();
}

void sub_1D6A023A0(void *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = objc_opt_self();
  v5 = &selRef_secondaryLabelColor;
  if (v3)
  {
    v5 = &selRef_systemBlueColor;
  }

  v6 = [v4 *v5];
  [a1 setTintColor_];
}

id sub_1D6A0242C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1D5B7C390(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_1D5B5A498(0, &qword_1EC883280);
    v3 = sub_1D726267C();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1D6A149DC(v10, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8);

  return v6;
}

void sub_1D6A0255C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D69FE348();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for DebugFormatOverlayView();
  objc_msgSendSuper2(&v4, sel_setUserInteractionEnabled_, v2);
  sub_1D6B5F610();
}

void sub_1D6A025B8(char *a1, _BYTE *a2)
{
  *(*&a1[OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_rulerView] + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_rulersHidden) = (*a2 & 1) == 0;
  sub_1D6321348();
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6A02650(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_rulerView);
  v3 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorsHidden;
  *(v2 + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorsHidden) = (*a2 & 1) == 0;
  v4 = OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separatorViews;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](j, v5);
      }

      else
      {
        if (j >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v5 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v8 setHidden_];

      if (v10 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_1D6A0278C(void *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v3 ^ 1u;
    v6 = v4;
    [v4 setToolbarHidden:v5 animated:1];
  }

  v7 = [a1 view];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6A02848()
{
  sub_1D725BDCC();
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v0 = sub_1D726308C();
  type metadata accessor for DebugFormatEditorViewController();
  sub_1D725BAAC();
}

id sub_1D6A02910(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D69FDB6C(v3);
    v7 = v6;
    [v5 setImage_];
  }

  [*(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_backgroundView) setOverrideUserInterfaceStyle_];
  return sub_1D6A011BC();
}

id sub_1D6A029B4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D69FDCA8(v2);
    v6 = v5;
    [v4 setImage_];
  }

  return sub_1D6A011BC();
}

void sub_1D6A02A3C()
{
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(3, 0, 0, 0xD00000000000002FLL, 0x80000001D73DF6F0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong, v1);
    v3 = v2;
    sub_1D725BDCC();
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v4 = sub_1D726308C();
    type metadata accessor for DebugFormatEditorViewController();
    sub_1D725BAAC();
  }
}

void sub_1D6A02BC4(uint64_t a1, uint64_t a2)
{
  sub_1D6A14978(0, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  sub_1D6A1537C(a2, &v13 - v5, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext);
  v7 = type metadata accessor for FormatDebuggerContext();
  LODWORD(a2) = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v8 = sub_1D69FE6E4(&OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerRunBarButtonItem, 0x6C69662E79616C70, 0xE90000000000006CLL, &selRef_doStartStopDebugger);
  if (a2 == 1)
  {
    v9 = sub_1D726203C();
    v10 = [objc_opt_self() systemImageNamed_];

    [v8 setImage_];
  }

  else
  {
    v11 = sub_1D726203C();
    v12 = [objc_opt_self() systemImageNamed_];

    [v8 setImage_];
    sub_1D6A1530C(v6, &qword_1EC88B610, type metadata accessor for FormatDebuggerContext);
  }
}

void sub_1D6A02DF0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1D69FE6E4(&OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerRunBarButtonItem, 0x6C69662E79616C70, 0xE90000000000006CLL, &selRef_doStartStopDebugger);
  if (*(v2 + 16))
  {

    sub_1D725B31C();

    v20[10] = v16;
    v20[11] = v17;
    v20[12] = v18;
    v20[6] = v12;
    v20[7] = v13;
    v20[8] = v14;
    v20[9] = v15;
    v20[2] = v8;
    v20[3] = v9;
    v20[4] = v10;
    v20[5] = v11;
    v20[0] = v6;
    v20[1] = v7;
    v22[10] = v16;
    v22[11] = v17;
    v22[12] = v18;
    v22[6] = v12;
    v22[7] = v13;
    v22[8] = v14;
    v22[9] = v15;
    v22[2] = v8;
    v22[3] = v9;
    v22[4] = v10;
    v22[5] = v11;
    v21 = v19;
    v23 = v19;
    v22[0] = v6;
    v22[1] = v7;
    v4 = sub_1D5DEA380(v22);
    v5 = v4 != 1;
    if (v4 != 1)
    {
      sub_1D6A149DC(v20, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  [v3 setEnabled_];
}

void sub_1D6A02F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 176);
  v14[10] = *(a2 + 160);
  v14[11] = v2;
  v14[12] = *(a2 + 192);
  v15 = *(a2 + 208);
  v3 = *(a2 + 112);
  v14[6] = *(a2 + 96);
  v14[7] = v3;
  v4 = *(a2 + 144);
  v14[8] = *(a2 + 128);
  v14[9] = v4;
  v5 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v5;
  v6 = *(a2 + 80);
  v14[4] = *(a2 + 64);
  v14[5] = v6;
  v7 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v7;
  sub_1D6A011BC();
  v8 = sub_1D69FE6E4(&OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController____lazy_storage___debuggerRunBarButtonItem, 0x6C69662E79616C70, 0xE90000000000006CLL, &selRef_doStartStopDebugger);

  sub_1D725B31C();

  v9 = *(v13 + 16);

  if (v9)
  {
    v10 = sub_1D5DEA380(v14) == 0;
  }

  else
  {
    v10 = 0;
  }

  [v8 setEnabled_];

  sub_1D69FEC90();
  v12 = v11;
  [v11 setEnabled_];
}

uint64_t sub_1D6A030FC(uint64_t a1, uint64_t a2)
{
  sub_1D6A14978(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v11 - v5);
  sub_1D6A1537C(a2, &v11 - v5, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  v7 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1D6A1530C(v6, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *v6;
    v9 = v6[1];

    sub_1D6A14B9C(v6, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  }

  return sub_1D63219A4(v8, v9);
}

void sub_1D6A03274(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1D69FEB9C();
  [v3 setEnabled_];
}

uint64_t sub_1D6A032D4(uint64_t a1)
{

  sub_1D725B31C();

  if (LOBYTE(v11[0]) == 1)
  {
    v3 = *(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_snapshotCanvasView);
    v4 = *(a1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_contentView);
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1D6A15304;
    *(v7 + 24) = v6;
    v11[4] = sub_1D677E6A4;
    v11[5] = v7;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D69C9704;
    v11[3] = &block_descriptor_79;
    v8 = _Block_copy(v11);
    v9 = v4;
    v10 = v3;

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1D6A03498(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7[0] = v1;
    v7[1] = v2;
    v7[2] = v3;
    v7[3] = v4;
    sub_1D6A03510(v7);
  }
}

uint64_t sub_1D6A03510(uint64_t *a1)
{
  sub_1D6A14978(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for DebugFormatCacheFile();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v50 = &v40 - v19;
  v20 = *a1;
  v51 = a1[1];
  v22 = a1[2];
  v21 = a1[3];
  v23 = *(v1 + OBJC_IVAR____TtC8NewsFeed31DebugFormatEditorViewController_editor);

  sub_1D725B31C();

  v111[10] = v107;
  v111[11] = v108;
  v111[12] = v109;
  v112 = v110;
  v111[6] = v103;
  v111[7] = v104;
  v111[8] = v105;
  v111[9] = v106;
  v111[2] = v99;
  v111[3] = v100;
  v111[4] = v101;
  v111[5] = v102;
  v111[0] = v97;
  v111[1] = v98;
  if (sub_1D5DEA380(v111) == 1)
  {
    v93 = v107;
    v94 = v108;
    v95 = v109;
    v96 = v110;
    v89 = v103;
    v90 = v104;
    v91 = v105;
    v92 = v106;
    v85 = v99;
    v86 = v100;
    v87 = v101;
    v88 = v102;
    v83 = v97;
    v84 = v98;
    sub_1D6A149DC(&v83, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    (*(v14 + 56))(v12, 1, 1, v13);
    return sub_1D6A1530C(v12, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
  }

  v46 = v23;
  v81[10] = v107;
  v81[11] = v108;
  v81[12] = v109;
  v81[6] = v103;
  v81[7] = v104;
  v81[8] = v105;
  v81[9] = v106;
  v81[2] = v99;
  v81[3] = v100;
  v81[4] = v101;
  v81[5] = v102;
  v81[0] = v97;
  v81[1] = v98;
  v67 = v107;
  v68 = v108;
  v69 = v109;
  v63 = v103;
  v64 = v104;
  v65 = v105;
  v66 = v106;
  v59 = v99;
  v60 = v100;
  v61 = v101;
  v62 = v102;
  v57 = v97;
  v58 = v98;
  v79[10] = v107;
  v79[11] = v108;
  v79[12] = v109;
  v79[6] = v103;
  v79[7] = v104;
  v79[8] = v105;
  v79[9] = v106;
  v79[2] = v99;
  v79[3] = v100;
  v79[4] = v101;
  v79[5] = v102;
  v82 = v110;
  v70 = v110;
  v80 = v110;
  v79[0] = v97;
  v79[1] = v98;
  sub_1D5F2B0D8(v81, &v71);
  sub_1D6A149DC(v79, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  v45 = v20;
  *&v71 = v20;
  *(&v71 + 1) = v51;
  *&v72 = v22;
  *(&v72 + 1) = v21;
  sub_1D6C56BC8(&v71, v12);
  v93 = v67;
  v94 = v68;
  v95 = v69;
  v96 = v70;
  v89 = v63;
  v90 = v64;
  v91 = v65;
  v92 = v66;
  v85 = v59;
  v86 = v60;
  v87 = v61;
  v88 = v62;
  v83 = v57;
  v84 = v58;
  sub_1D5F2B134(&v83);
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {
    return sub_1D6A1530C(v12, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
  }

  v41 = v21;
  v42 = v22;
  v26 = v50;
  sub_1D6A14ACC(v12, v50, type metadata accessor for DebugFormatCacheFile);
  v27 = v49;
  sub_1D6A14B34(v26, v49, type metadata accessor for DebugFormatCacheFile);
  (*(v14 + 56))(v27, 0, 1, v13);

  sub_1D725B31C();

  v28 = v52;
  v29 = v53;
  v30 = v55;
  v43 = v54;
  v44 = v56;
  v31 = v47;
  sub_1D6A1537C(v27, v47, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
  if (v24(v31, 1, v13) == 1)
  {
    sub_1D6A1530C(v27, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D679CD70(v28, v29, v43, v30, v44);

    sub_1D6A1530C(v31, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D607F0A4(&v71);
  }

  else
  {
    v40 = v28;
    v32 = v48;
    sub_1D6A14ACC(v31, v48, type metadata accessor for DebugFormatCacheFile);
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *(v32 + 16);
    v36 = *(v32 + 24);
    v37 = *(v32 + 40);
    v47 = *(v32 + 32);
    if (*(v32 + 48))
    {
      swift_beginAccess();

      v39 = sub_1D6C4CF94(v38);
    }

    else
    {

      v39 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6A1530C(v27, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6A14B9C(v48, type metadata accessor for DebugFormatCacheFile);
    *&v57 = v33;
    *(&v57 + 1) = v34;
    *&v58 = v35;
    BYTE8(v58) = v36;
    *&v59 = v47;
    *(&v59 + 1) = v37;
    *&v60 = v45;
    *(&v60 + 1) = v51;
    *&v61 = v42;
    *(&v61 + 1) = v41;
    *&v62 = v39;
    *(&v62 + 1) = v40;
    *&v63 = v29;
    *(&v63 + 1) = v43;
    *&v64 = v30;
    *(&v64 + 1) = v44;
    nullsub_1();
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v78 = v64;
    v71 = v57;
    v72 = v58;
    v73 = v59;
    v74 = v60;
  }

  v61 = v75;
  v62 = v76;
  v63 = v77;
  v64 = v78;
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v60 = v74;

  sub_1D725B32C();

  LOBYTE(v57) = 1;

  sub_1D725B32C();

  return sub_1D6A14B9C(v50, type metadata accessor for DebugFormatCacheFile);
}