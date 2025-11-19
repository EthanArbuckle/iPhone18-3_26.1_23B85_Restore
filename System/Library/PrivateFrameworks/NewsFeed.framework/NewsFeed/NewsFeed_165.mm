id sub_1D6A5BDE0()
{
  v1 = v0;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D5B42000, v3, v4, "Resetting auto-enable notifications state.", v5, 2u);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v6 = *(v1 + 80);

  return [v6 resetPuzzleNotificationsState];
}

uint64_t sub_1D6A5BED8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t FormatWebEmbedBinding.Text.text(from:)(uint64_t a1)
{
  v3 = type metadata accessor for WebEmbedDataVisualization();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34[-v10];
  sub_1D5B62DD8(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v34[-v18];
  v20 = *v1;
  v21 = (v4 + 48);
  v22 = a1 + *(type metadata accessor for FeedWebEmbed() + 52);
  if (v20 <= 0xFB)
  {
    sub_1D686B7BC(v22, v19);
    if ((*v21)(v19, 1, v3) == 1)
    {
      sub_1D6A4CB18(v19);
      return 0;
    }

    sub_1D6A5C378(v19, v11, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D6A5C3E0(v11, type metadata accessor for WebEmbedDataVisualization);
      v23 = v19;
      goto LABEL_10;
    }

    v31 = *v11;
    sub_1D6A5C3E0(v19, type metadata accessor for WebEmbedDataVisualization);
    if (!(v31 >> 61))
    {
      v32 = *(v31 + 16);

      v34[31] = v20;
      v33 = sub_1D6756E08(v32);

      return v33;
    }

LABEL_17:

    return 0;
  }

  sub_1D686B7BC(v22, v15);
  if ((*v21)(v15, 1, v3) != 1)
  {
    sub_1D6A5C378(v15, v7, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D6A5C3E0(v7, type metadata accessor for WebEmbedDataVisualization);
      v23 = v15;
LABEL_10:
      sub_1D6A5C3E0(v23, type metadata accessor for WebEmbedDataVisualization);
      return 0;
    }

    v24 = *v7;
    sub_1D6A5C3E0(v15, type metadata accessor for WebEmbedDataVisualization);
    if (!(v24 >> 61))
    {
      v25 = *(v24 + 16);

      v26 = *(v25 + 64);
      if (v26)
      {
        v27 = [v26 sportsPrimaryName];
        if (v27)
        {
          v28 = v27;
          v29 = sub_1D726207C();

          return v29;
        }
      }
    }

    goto LABEL_17;
  }

  sub_1D6A4CB18(v15);
  return 0;
}

uint64_t sub_1D6A5C378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A5C3E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6A5C440(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0x74614D65726F6373;
  }

  if (v2)
  {
    v4 = 0xEC00000070756863;
  }

  else
  {
    v4 = 0x80000001D73BB3E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0x74614D65726F6373;
  }

  if (*a2)
  {
    v6 = 0x80000001D73BB3E0;
  }

  else
  {
    v6 = 0xEC00000070756863;
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

uint64_t sub_1D6A5C4F4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A5C584()
{
  sub_1D72621EC();
}

uint64_t sub_1D6A5C600()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A5C68C@<X0>(char *a1@<X8>)
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

void sub_1D6A5C6EC(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D73BB3E0;
  v3 = 0x74614D65726F6373;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xEC00000070756863;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1D6A5C82C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v53 = a2;
  v54 = a3;
  v5 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v52 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  v24 = *a1;
  sub_1D5B62DD8(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v25 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  if (v24)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7273AE0;
    sub_1D6A5C378(v53, v8, type metadata accessor for FeedWebEmbed);
    v59 = -4;
    v29 = FormatWebEmbedBinding.Text.text(from:)(v8);
    if (v3)
    {

      v31 = 0;
      v32 = 0;
    }

    else
    {
      v31 = v29;
      v32 = v30;
    }

    sub_1D711F844(0xD000000000000019, 0x80000001D73E1B70, v31, v32, (v28 + v27));
  }

  else
  {
    v50 = v15;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D7274590;
    v51 = v33;
    v34 = (v33 + v27);
    v35 = v53;
    sub_1D6A5C378(v53, v23, type metadata accessor for FeedWebEmbed);
    v58 = -126;
    v36 = FormatWebEmbedBinding.Text.text(from:)(v23);
    if (v3)
    {

      v38 = 0;
      v39 = 0;
    }

    else
    {
      v38 = v36;
      v39 = v37;
    }

    sub_1D711F844(0xD000000000000018, 0x80000001D73E1B90, v38, v39, v34);
    sub_1D6A5C3E0(v23, type metadata accessor for FeedWebEmbed);
    v40 = v34;
    sub_1D6A5C378(v35, v19, type metadata accessor for FeedWebEmbed);
    v57 = -127;
    v41 = FormatWebEmbedBinding.Text.text(from:)(v19);
    sub_1D711F844(0xD00000000000001BLL, 0x80000001D73E1BB0, v41, v42, (v34 + v26));
    sub_1D6A5C3E0(v19, type metadata accessor for FeedWebEmbed);
    v43 = v50;
    sub_1D6A5C378(v35, v50, type metadata accessor for FeedWebEmbed);
    v56 = 0x80;
    v44 = FormatWebEmbedBinding.Text.text(from:)(v43);
    sub_1D711F844(0xD000000000000020, 0x80000001D73E1BD0, v44, v45, (v40 + 2 * v26));
    sub_1D6A5C3E0(v43, type metadata accessor for FeedWebEmbed);
    v8 = v52;
    sub_1D6A5C378(v35, v52, type metadata accessor for FeedWebEmbed);
    v55 = -125;
    v46 = FormatWebEmbedBinding.Text.text(from:)(v8);
    sub_1D711F844(0xD000000000000017, 0x80000001D73E1C00, v46, v47, (v40 + 3 * v26));
    v28 = v51;
  }

  result = sub_1D6A5C3E0(v8, type metadata accessor for FeedWebEmbed);
  *v54 = v28;
  return result;
}

uint64_t _s8NewsFeed21FormatWebEmbedBindingV4TextO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 0xFB)
  {
    if (v3 <= 0xFB)
    {
      if ((v2 & 0x80) != 0)
      {
        if ((v3 & 0x80) != 0 && ((v3 ^ v2) & 0x7F) == 0)
        {
          return 1;
        }
      }

      else if (v2 == v3)
      {
        return 1;
      }
    }
  }

  else if (v3 > 0xFB)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D6A5CD10(uint64_t a1)
{
  result = sub_1D6A5CD38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A5CD38()
{
  result = qword_1EC890938;
  if (!qword_1EC890938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890938);
  }

  return result;
}

unint64_t sub_1D6A5CD8C(void *a1)
{
  a1[1] = sub_1D665FED0();
  a1[2] = sub_1D6704F4C();
  result = sub_1D6A5CDC4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A5CDC4()
{
  result = qword_1EC890940;
  if (!qword_1EC890940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890940);
  }

  return result;
}

uint64_t _s4TextOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3E)
  {
    goto LABEL_20;
  }

  v2 = a2 + 194;
  if (a2 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 194;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 194;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 194;
    }
  }

LABEL_20:
  v7 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v7 >= 0x3E)
  {
    v7 = -1;
  }

  if (v7 + 1 >= 2)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t _s4TextOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 194;
  if (a3 + 194 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0x3E)
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = (2 * (a2 ^ 0x3F)) & 0xFC | ((a2 ^ 0x3F) << 7);
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D6A5CF88(unsigned __int8 *a1)
{
  v1 = *a1;
  if (((v1 >> 1) & 0x3E) != 0)
  {
    return 64 - ((v1 >> 1) & 0x3E | (v1 >> 7));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6A5CFAC(_BYTE *result, unsigned int a2)
{
  if (a2 > 0x3E)
  {
    LOBYTE(v2) = a2 - 63;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
  }

  *result = v2;
  return result;
}

unint64_t sub_1D6A5CFFC()
{
  result = qword_1EC890948;
  if (!qword_1EC890948)
  {
    sub_1D6A5D054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890948);
  }

  return result;
}

void sub_1D6A5D054()
{
  if (!qword_1EC890950)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890950);
    }
  }
}

unint64_t sub_1D6A5D0A8()
{
  result = qword_1EC890958;
  if (!qword_1EC890958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890958);
  }

  return result;
}

unint64_t sub_1D6A5D0FC()
{
  result = qword_1EDF0DE30;
  if (!qword_1EDF0DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DE30);
  }

  return result;
}

uint64_t FeedTopicCluster.itemIDs.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v3 = v19;
    v4 = (v1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      swift_unknownObjectRetain();
      v8 = v6;
      v9 = v7;
      swift_unknownObjectRetain();
      v10 = v8;
      v11 = [v5 itemID];
      v12 = sub_1D726207C();
      v14 = v13;

      swift_unknownObjectRelease_n();
      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D5BFC364((v15 > 1), v16 + 1, 1);
      }

      v4 += 3;
      *(v19 + 16) = v16 + 1;
      v17 = v19 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      --v2;
    }

    while (v2);
  }

  return v3;
}

BOOL FeedTopicCluster.titleHasPrefix.getter()
{
  v1 = [*v0 titleDisplayPrefix];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t FeedTopicCluster.init(tag:scoredItems:minClusterSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FeedTopicCluster.replacing(items:titleModification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *v3;
  v8 = *(v3 + 16);
  if (v6 == 255)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = sub_1D726203C();
    if (v6)
    {
      v10 = [v7 setTitleDisplaySuffixOverride_];
    }

    else
    {
      v10 = [v7 setTitleDisplayPrefixOverride_];
    }

    v7 = v10;
  }

  *a3 = v7;
  a3[1] = a1;
  a3[2] = v8;
}

uint64_t sub_1D6A5D414(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xEA00000000007265;
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

uint64_t sub_1D6A5D4B8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A5D538()
{
  sub_1D72621EC();
}

uint64_t sub_1D6A5D5A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A5D620@<X0>(char *a1@<X8>)
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

void sub_1D6A5D680(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatCustomItemBinding.Text.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6A5D7F4()
{
  result = qword_1EC890960;
  if (!qword_1EC890960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890960);
  }

  return result;
}

unint64_t sub_1D6A5D848(uint64_t a1)
{
  result = sub_1D6A5D870();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A5D870()
{
  result = qword_1EC890968;
  if (!qword_1EC890968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890968);
  }

  return result;
}

unint64_t sub_1D6A5D8C4(void *a1)
{
  a1[1] = sub_1D665FD80();
  a1[2] = sub_1D67056B8();
  result = sub_1D6A5D7F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A5D950()
{
  result = qword_1EC890970;
  if (!qword_1EC890970)
  {
    sub_1D6A5D9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890970);
  }

  return result;
}

void sub_1D6A5D9A8()
{
  if (!qword_1EC890978)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890978);
    }
  }
}

unint64_t sub_1D6A5D9FC()
{
  result = qword_1EC890980;
  if (!qword_1EC890980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890980);
  }

  return result;
}

unint64_t sub_1D6A5DA50()
{
  result = qword_1EC890988;
  if (!qword_1EC890988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890988);
  }

  return result;
}

uint64_t sub_1D6A5DAA4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v26 - v12);
  if (*a1)
  {
    sub_1D60F0578(a2, v9);
    v14 = &v9[*(v6 + 20)];
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      v17 = MEMORY[0x1E69E6158];
    }

    else
    {
      v16 = 0;
      v18 = 0;
      v28 = 0;
    }

    v26 = v16;
    v27 = v18;
    v29 = v17;
    sub_1D711B30C(1701667150, 0xE400000000000000, &v26, a3);
    v23 = v9;
  }

  else
  {
    sub_1D60F0578(a2, &v26 - v12);
    v20 = *v13;
    v19 = v13[1];
    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = *v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      v21 = MEMORY[0x1E69E6158];
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v28 = 0;
    }

    v26 = v20;
    v27 = v22;
    v29 = v21;
    sub_1D711B30C(0x696669746E656449, 0xEA00000000007265, &v26, a3);
    v23 = v13;
  }

  sub_1D60F065C(v23);
  v24 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v24 - 8) + 56))(a3, 0, 1, v24);
}

uint64_t sub_1D6A5DC8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6A5DCD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6A5DD4C()
{
  if (!qword_1EC899B20)
  {
    sub_1D725A5BC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899B20);
    }
  }
}

uint64_t type metadata accessor for DebugGroupDirectionalLayoutAttributes()
{
  result = qword_1EC890990;
  if (!qword_1EC890990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6A5DE04()
{
  sub_1D6A5DD4C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

id sub_1D6A5DE80(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);
  if (v4)
  {
    v21 = v1;
    v23 = MEMORY[0x1E69E7CC0];

    sub_1D6999094(0, v4, 0);
    v22 = 0;
    v5 = 32;
    while (1)
    {
      v6 = *(v3 + v5);
      v7 = v6;
      if (v6 < 0 && (v7 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer)) == 0)
      {
        v9 = 0;
        v8 = 0;
        v10 = a1;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = *(v7 + 16);
        v8 = *(v7 + 24);

        v10 = a1;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      v10 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer);
      if (!v10)
      {
        if (!v8)
        {
          goto LABEL_19;
        }

LABEL_16:
        sub_1D6A610F4(v6);

        goto LABEL_20;
      }

LABEL_10:
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);

      if (!v8)
      {
        if (!v11)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      if (!v11)
      {
        goto LABEL_16;
      }

      if (v9 == v12 && v8 == v11)
      {
        sub_1D6A610F4(v6);

LABEL_18:
        sub_1D6A61104(v6);
LABEL_19:
        sub_1D6A610F4(a1);
        v22 = 1;
        v6 = a1;
        goto LABEL_20;
      }

      v13 = sub_1D72646CC();
      sub_1D6A610F4(v6);

      if (v13)
      {
        goto LABEL_18;
      }

LABEL_20:
      v15 = *(v23 + 16);
      v14 = *(v23 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D6999094((v14 > 1), v15 + 1, 1);
      }

      *(v23 + 16) = v15 + 1;
      *(v23 + 8 * v15 + 32) = v6;
      v5 += 8;
      if (!--v4)
      {

        v1 = v21;
        *(v21 + 48) = v23;

        if (v22)
        {
          return result;
        }

        goto LABEL_26;
      }
    }
  }

  *(v1 + 48) = MEMORY[0x1E69E7CC0];

LABEL_26:
  swift_beginAccess();
  v17 = *(v1 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 48) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1D6993238(0, *(v17 + 2) + 1, 1, v17);
    *(v1 + 48) = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1D6993238((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  *&v17[8 * v20 + 32] = a1;
  *(v1 + 48) = v17;
  swift_endAccess();
  return sub_1D6A610F4(a1);
}

id sub_1D6A5E170()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[13];
  }

  else
  {
    v3 = v0;
    v4 = v0[3];
    v25 = v0[2];
    v26 = v4;

    MEMORY[0x1DA6F9910](0x776F646168732DLL, 0xE700000000000000);
    v5 = v25;
    v6 = v26;
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = v0[12];
    sub_1D6A5E360();
    v10 = v9;
    v11 = sub_1D6A5E790();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E7CC0];
    *(v12 + 48) = MEMORY[0x1E69E7CC0];
    *(v12 + 56) = v13;
    *(v12 + 96) = 0;
    v23 = *(v3 + 9);
    swift_unknownObjectWeakInit();
    *(v12 + 16) = v5;
    *(v12 + 24) = v6;
    *(v12 + 96) = v8;
    *(v12 + 104) = 0;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRetain();

    *(v12 + 32) = 5;
    *(v12 + 40) = v10;
    *(v12 + 64) = v11;
    *(v12 + 72) = v23;
    v14 = type metadata accessor for FormatAccessibilityShadowElement();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC8NewsFeed32FormatAccessibilityShadowElement_accessibilityRenderer] = v12;
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v18 = objc_allocWithZone(MEMORY[0x1E69DD250]);

      v17 = [v18 init];
    }

    v24.receiver = v15;
    v24.super_class = v14;
    v19 = objc_msgSendSuper2(&v24, sel_initWithAccessibilityContainer_, v17, v23);

    v20 = v3[13];
    v3[13] = v19;
    v2 = v19;

    v1 = 0;
  }

  v21 = v1;
  return v2;
}

void sub_1D6A5E360()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v0 + 48);
  v30 = *(v2 + 16);
  if (!v30)
  {

LABEL_39:
    v33[0] = v1;
    sub_1D6A61114(0, &unk_1EDF1AFB8, type metadata accessor for FormatDataAccessibilityValue, MEMORY[0x1E69E62F8]);
    sub_1D6A61178();

    sub_1D72623CC();
    swift_bridgeObjectRelease_n();
    return;
  }

  v29 = v2 + 32;

  v3 = 0;
  v28 = v2;
  while (v3 < *(v2 + 16))
  {
    v4 = *(v29 + 8 * v3);
    if (v4 < 0 && !*((v4 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer))
    {
      goto LABEL_4;
    }

    v5 = sub_1D6A610F4(v4);
    v6 = sub_1D6A5E360(v5);
    v7 = v6;
    v8 = v6 >> 62;
    if (v6 >> 62)
    {
      v9 = sub_1D7263BFC();
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v1 >> 62;
    if (v1 >> 62)
    {
      v26 = sub_1D7263BFC();
      v12 = v26 + v9;
      if (__OFADD__(v26, v9))
      {
LABEL_36:
        __break(1u);
LABEL_37:

        goto LABEL_39;
      }
    }

    else
    {
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_36;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v10)
      {
        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_17:
      sub_1D7263BFC();
      goto LABEL_18;
    }

    if (v10)
    {
      goto LABEL_17;
    }

LABEL_18:
    v1 = sub_1D7263DDC();
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v32 = v9;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v8)
    {
      v16 = sub_1D7263BFC();
      if (!v16)
      {
LABEL_3:

        sub_1D6A61104(v4);

        v2 = v28;
        if (v32 > 0)
        {
          goto LABEL_41;
        }

        goto LABEL_4;
      }
    }

    else
    {
      v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_3;
      }
    }

    if (((v15 >> 1) - v14) < v32)
    {
      goto LABEL_42;
    }

    v31 = v4;
    v17 = v13 + 8 * v14 + 32;
    if (v8)
    {
      if (v16 < 1)
      {
        goto LABEL_44;
      }

      v27 = v1;
      sub_1D6A61114(0, &unk_1EDF1AFB8, type metadata accessor for FormatDataAccessibilityValue, MEMORY[0x1E69E62F8]);
      sub_1D6A61200();
      for (i = 0; i != v16; ++i)
      {
        v20 = sub_1D6D876E0(v33, i, v7);
        v22 = *v21;

        (v20)(v33, 0);
        *(v17 + 8 * i) = v22;
      }

      sub_1D6A61104(v31);
      v1 = v27;
      v2 = v28;
      v18 = v32;
      if (v32 <= 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      type metadata accessor for FormatDataAccessibilityValue();
      v18 = v32;
      swift_arrayInitWithCopy();

      sub_1D6A61104(v31);

      v2 = v28;
      if (v32 <= 0)
      {
        goto LABEL_4;
      }
    }

    v23 = *(v13 + 16);
    v24 = __OFADD__(v23, v18);
    v25 = v23 + v18;
    if (v24)
    {
      goto LABEL_43;
    }

    *(v13 + 16) = v25;
LABEL_4:
    if (++v3 == v30)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1D6A5E790()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = *(v0 + 48);
  v3 = *(v2 + 16);
  if (!v3)
  {

    return v1;
  }

  for (i = 32; ; i += 8)
  {
    v6 = *(v2 + i);
    if (v6 < 0 && !*((v6 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer))
    {
      goto LABEL_5;
    }

    v7 = sub_1D6A610F4(v6);
    result = sub_1D6A5E790(v7);
    v8 = *(result + 16);
    v9 = *(v1 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    v11 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v12 = *(v1 + 24) >> 1, v12 >= v10))
    {
      if (!*(v11 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v13 = v9 + v8;
      }

      else
      {
        v13 = v9;
      }

      result = sub_1D6993224(result, v13, 1, v1);
      v1 = result;
      v12 = *(result + 24) >> 1;
      if (!*(v11 + 16))
      {
LABEL_3:

        if (v8)
        {
          goto LABEL_25;
        }

        goto LABEL_4;
      }
    }

    if (v12 - *(v1 + 16) < v8)
    {
      goto LABEL_26;
    }

    swift_arrayInitWithCopy();

    if (v8)
    {
      v14 = *(v1 + 16);
      v15 = __OFADD__(v14, v8);
      v16 = v14 + v8;
      if (v15)
      {
        goto LABEL_27;
      }

      *(v1 + 16) = v16;
    }

LABEL_4:

    sub_1D6A61104(v6);
LABEL_5:
    if (!--v3)
    {

      return v1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D6A5E96C()
{
  v1 = *(v0 + 32);
  if (v1 > 2)
  {
    if (v1 - 3 < 2)
    {
      return 4;
    }

    else if (v1 - 5 >= 2)
    {
      swift_beginAccess();
      return 0;
    }

    else
    {
      swift_beginAccess();
      if (*(*(v0 + 56) + 16))
      {
        return 0;
      }

      else
      {
        swift_beginAccess();
        v4 = *(v0 + 48);
        v5 = *(v4 + 16);
        if (v5)
        {

          v6 = 0;
          while (v6 < *(v4 + 16))
          {
            v7 = *(v4 + 8 * v6 + 32);
            if ((v7 & 0x8000000000000000) == 0 || *((v7 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer))
            {

              v8 = sub_1D6A610F4(v7);
              v9 = sub_1D6A5E96C(v8);
              v11 = v10;
              sub_1D6A61104(v7);

              if ((v11 & 0x100) == 0 && ((v11 & 1) == 0 || !v9))
              {

                return 0;
              }
            }

            if (v5 == ++v6)
            {

              return 1;
            }
          }

          __break(1u);
        }

        else
        {
          return 1;
        }
      }
    }
  }

  else
  {
    v2 = 2;
    if (v1 != 1)
    {
      v2 = 3;
    }

    if (*(v0 + 32))
    {
      return v2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

char *sub_1D6A5EB3C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D6A5E96C();
  if ((v4 & 0x100) != 0)
  {
    swift_beginAccess();

    sub_1D6987A04(v30);
    swift_beginAccess();
    v31 = *(v0 + 48);
    v32 = *(v31 + 16);
    v14 = v81;
    if (!v32)
    {
      goto LABEL_78;
    }

    v33 = 32;
    while (1)
    {
      v34 = *(v31 + v33);
      if (v34 < 0 && !*((v34 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer))
      {
        v44 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
        v36 = v2;
      }

      else
      {

        v35 = sub_1D6A610F4(v34);
        v36 = sub_1D6A5EB3C(v35);

        if (!v36)
        {
          v36 = v2;
        }
      }

      v21 = *(v36 + 16);
      v37 = *(v14 + 2);
      v38 = v37 + v21;
      if (__OFADD__(v37, v21))
      {
        goto LABEL_98;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v40 = *(v14 + 3) >> 1, v40 >= v38))
      {
        if (!*(v36 + 16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v37 <= v38)
        {
          v41 = v37 + v21;
        }

        else
        {
          v41 = v37;
        }

        v14 = sub_1D69917E4(isUniquelyReferenced_nonNull_native, v41, 1, v14);
        v40 = *(v14 + 3) >> 1;
        if (!*(v36 + 16))
        {
LABEL_33:

          if (v21)
          {
            goto LABEL_99;
          }

          goto LABEL_34;
        }
      }

      if (v40 - *(v14 + 2) < v21)
      {
        goto LABEL_100;
      }

      swift_arrayInitWithCopy();

      if (v21)
      {
        v42 = *(v14 + 2);
        v27 = __OFADD__(v42, v21);
        v43 = v42 + v21;
        if (v27)
        {
          goto LABEL_103;
        }

        *(v14 + 2) = v43;
      }

LABEL_34:
      sub_1D6A61104(v34);
      v33 += 8;
      if (!--v32)
      {
        goto LABEL_77;
      }
    }
  }

  if (v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      return v5;
    }

    sub_1D6A5E360();
    if (v6 >> 62)
    {
      goto LABEL_114;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      goto LABEL_6;
    }

LABEL_9:
    swift_beginAccess();

    sub_1D6987A04(v12);
    swift_beginAccess();
    v13 = *(*(v1 + 48) + 16);
    v14 = v81;
    if (v13)
    {

      v16 = 32;
      while (1)
      {
        v17 = v15;
        v18 = *(v15 + v16);
        if (v18 < 0 && !*((v18 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer))
        {
          v29 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
          v20 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v19 = sub_1D6A610F4(v18);
          v20 = sub_1D6A5EB3C(v19);

          if (!v20)
          {
            v20 = MEMORY[0x1E69E7CC0];
          }
        }

        v21 = *(v20 + 16);
        v22 = *(v14 + 2);
        v1 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_106;
        }

        v23 = swift_isUniquelyReferenced_nonNull_native();
        if (v23 && (v24 = *(v14 + 3) >> 1, v24 >= v1))
        {
          if (!*(v20 + 16))
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (v22 <= v1)
          {
            v25 = v22 + v21;
          }

          else
          {
            v25 = v22;
          }

          v14 = sub_1D69917E4(v23, v25, 1, v14);
          v24 = *(v14 + 3) >> 1;
          if (!*(v20 + 16))
          {
LABEL_11:

            if (v21)
            {
              goto LABEL_107;
            }

            goto LABEL_12;
          }
        }

        if (v24 - *(v14 + 2) < v21)
        {
          goto LABEL_108;
        }

        swift_arrayInitWithCopy();

        if (v21)
        {
          v26 = *(v14 + 2);
          v27 = __OFADD__(v26, v21);
          v28 = v26 + v21;
          if (v27)
          {
            __break(1u);
LABEL_114:
            v75 = sub_1D7263BFC();

            if (!v75)
            {
              goto LABEL_9;
            }

LABEL_6:
            v8 = sub_1D6A5E170();
            v79 = type metadata accessor for FormatAccessibilityShadowElement();
            *&v78 = v8;
            v9 = sub_1D69917E4(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v11 = *(v9 + 2);
            v10 = *(v9 + 3);
            if (v11 >= v10 >> 1)
            {
              v9 = sub_1D69917E4((v10 > 1), v11 + 1, 1, v9);
            }

            *(v9 + 2) = v11 + 1;
            sub_1D5B7C390(&v78, &v9[32 * v11 + 32]);
            v81 = v9;
            goto LABEL_9;
          }

          *(v14 + 2) = v28;
        }

LABEL_12:
        sub_1D6A61104(v18);
        v16 += 8;
        --v13;
        v15 = v17;
        if (!v13)
        {
          goto LABEL_77;
        }
      }
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v46 = MEMORY[0x1E69E7CC0];
    if (Strong)
    {
      v47 = Strong;
      v48 = *(v1 + 96);
      ObjectType = swift_getObjectType();
      v50 = (*(v48 + 8))(ObjectType, v48);
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6987A04(v50);
    swift_beginAccess();

    sub_1D6987A04(v51);
    swift_beginAccess();
    v52 = *(v1 + 48);
    v53 = *(v52 + 16);
    v14 = v81;
    if (v53)
    {

      v54 = 32;
      do
      {
        v55 = *(v52 + v54);
        if (v55 < 0 && !*((v55 & 0x7FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC8NewsFeed15FormatStateView_stateAccessibilityRenderer))
        {
          v65 = (v55 & 0x7FFFFFFFFFFFFFFFLL);
          v57 = v46;
        }

        else
        {

          v56 = sub_1D6A610F4(v55);
          v57 = sub_1D6A5EB3C(v56);

          if (!v57)
          {
            v57 = v46;
          }
        }

        v21 = *(v57 + 16);
        v58 = *(v14 + 2);
        v59 = v58 + v21;
        if (__OFADD__(v58, v21))
        {
          goto LABEL_101;
        }

        v60 = swift_isUniquelyReferenced_nonNull_native();
        if (!v60 || (v61 = *(v14 + 3) >> 1, v61 < v59))
        {
          if (v58 <= v59)
          {
            v62 = v58 + v21;
          }

          else
          {
            v62 = v58;
          }

          v14 = sub_1D69917E4(v60, v62, 1, v14);
          v61 = *(v14 + 3) >> 1;
        }

        v46 = MEMORY[0x1E69E7CC0];
        if (*(v57 + 16))
        {
          if (v61 - *(v14 + 2) < v21)
          {
            goto LABEL_104;
          }

          swift_arrayInitWithCopy();

          if (v21)
          {
            v63 = *(v14 + 2);
            v27 = __OFADD__(v63, v21);
            v64 = v63 + v21;
            if (v27)
            {
              goto LABEL_105;
            }

            *(v14 + 2) = v64;
          }
        }

        else
        {

          if (v21)
          {
            goto LABEL_102;
          }
        }

        sub_1D6A61104(v55);
        v54 += 8;
        --v53;
      }

      while (v53);
LABEL_77:

      v81 = v14;
    }
  }

LABEL_78:
  v80 = v2;
  v66 = *(v14 + 2);
  if (v66)
  {
    v67 = (v14 + 32);
    v2 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5B76B10(v67, &v78);
      sub_1D5B7C390(&v78, &v76);
      sub_1D5B5A498(0, &qword_1EDF1A650);
      if ((swift_dynamicCast() & 1) != 0 && v77)
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v2 = v80;
      }

      v67 += 32;
      --v66;
    }

    while (v66);
  }

  *&v78 = v2;
  sub_1D6A61428(0, &unk_1EDF1AE10, &qword_1EDF1A650);
  sub_1D5B5A498(0, &qword_1EDF1A650);
  sub_1D6A61480();
  sub_1D6A614F0();
  v21 = sub_1D72623CC();

  if (v21 >> 62)
  {
    goto LABEL_109;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v69 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x1DA6FB460](v69, v21);
      }

      else
      {
        if (v69 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v70 = *(v21 + 8 * v69 + 32);
      }

      v71 = v70;
      v72 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v73 = swift_unknownObjectWeakLoadStrong();
      [v71 ts:v73 setAccessiblyContainer:?];

      ++v69;
      if (v72 == i)
      {
        goto LABEL_110;
      }
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    ;
  }

LABEL_110:

  v5 = sub_1D5F647D0(v21);

  if (!*(v5 + 2))
  {

    return 0;
  }

  return v5;
}

id sub_1D6A5F410@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_1D6A5F440()
{
  v1 = sub_1D6A5E96C();
  result = 0;
  v3 = v1 == 0;
  if ((v0 & 0x100) == 0 && (v0 & v3 & 1) == 0)
  {
    sub_1D6A5E360();
    v5 = v4;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_28:
      v7 = sub_1D7263BFC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v23 = v9;
          v10 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA6FB460](v10, v5);
              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v10 >= *(v6 + 16))
              {
                goto LABEL_27;
              }

              v11 = *(v5 + 8 * v10 + 32);

              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            if (*(*(v11 + 16) + 32) == 18)
            {
              break;
            }

LABEL_8:
            ++v10;
            if (v8 == v7)
            {
              v9 = v23;
              goto LABEL_30;
            }
          }

          v24 = *(v11 + 24);
          sub_1D612612C(v24);
          v12 = sub_1D6A5F71C(&v24);
          v14 = v13;
          sub_1D5BD9F54(v24);

          if (!v14)
          {
            goto LABEL_8;
          }

          v15 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v15 = sub_1D5B858EC(0, *(v23 + 16) + 1, 1, v23);
          }

          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          v19 = v15;
          if (v18 >= v17 >> 1)
          {
            v19 = sub_1D5B858EC((v17 > 1), v18 + 1, 1, v15);
          }

          *(v19 + 2) = v18 + 1;
          v9 = v19;
          v20 = &v19[16 * v18];
          *(v20 + 4) = v12;
          *(v20 + 5) = v14;
          if (v8 == v7)
          {
LABEL_30:

            v24 = v9;
            sub_1D5BBE0A8();
            sub_1D6A613E4(&qword_1EDF3C838);
            v21 = sub_1D72623CC();

            if (*(v21 + 16))
            {
              v24 = v21;
              sub_1D6A613E4(&qword_1EDF3C840);
              v22 = sub_1D7261F3C();

              return v22;
            }

            else
            {

              return 0;
            }
          }
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1D6A5F71C(uint64_t *a1)
{
  v2 = v1;
  sub_1D6A61114(0, &qword_1EDF3C480, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v31[-1] - v6;
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v31[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = *a1;
  if ((~*a1 & 0xF000000000000007) == 0)
  {
    return v14;
  }

  if (v15 < 0)
  {
    v21 = *(v2 + 72);
    v22 = *(v2 + 80);

    sub_1D6CC5C50(v21, v22, v31);
    v14 = sub_1D6A5F71C(v31);

    sub_1D5BD9F54(v31[0]);
    return v14;
  }

  v16 = v11;
  v17 = *(v15 + 16);
  type metadata accessor for FormatComputedContext();
  v18 = swift_allocObject();
  v19 = *(v2 + 72);
  *(v18 + 16) = v19;
  v20 = *(v17 + 24);
  v30 = v19;
  if (v20 == 255)
  {

    swift_unknownObjectRetain();
  }

  else
  {
    if (v20)
    {

      swift_unknownObjectRetain();
LABEL_9:
      v14 = sub_1D60D69EC(v18);

      goto LABEL_11;
    }

    v23 = *(v17 + 16);
    v24 = *(*v17 + 104);
    swift_beginAccess();
    (*(v9 + 16))(v13, v17 + v24, v16);

    swift_unknownObjectRetain();
    sub_1D725887C();
    v26 = v25;
    (*(v9 + 8))(v13, v16);
    if (v23 < -v26)
    {
      goto LABEL_9;
    }
  }

  v14 = *(v17 + *(*v17 + 112));

LABEL_11:
  sub_1D72579DC();
  v27 = sub_1D7257A4C();
  (*(*(v27 - 8) + 56))(v7, 0, 1, v27);
  v28 = sub_1D725AB8C();

  sub_1D60D0CFC(v7);
  if (v28)
  {

    return 0;
  }

  return v14;
}

uint64_t sub_1D6A5FA90()
{
  v1 = sub_1D6A5E96C();
  result = 0;
  v3 = v1 == 0;
  if ((v0 & 0x100) == 0 && (v0 & v3 & 1) == 0)
  {
    sub_1D6A5E360();
    v5 = v4;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_28:
      v7 = sub_1D7263BFC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v23 = v9;
          v10 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA6FB460](v10, v5);
              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v10 >= *(v6 + 16))
              {
                goto LABEL_27;
              }

              v11 = *(v5 + 8 * v10 + 32);

              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            if (*(*(v11 + 16) + 32) == 19)
            {
              break;
            }

LABEL_8:
            ++v10;
            if (v8 == v7)
            {
              v9 = v23;
              goto LABEL_30;
            }
          }

          v24 = *(v11 + 24);
          sub_1D612612C(v24);
          v12 = sub_1D6A5F71C(&v24);
          v14 = v13;
          sub_1D5BD9F54(v24);

          if (!v14)
          {
            goto LABEL_8;
          }

          v15 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v15 = sub_1D5B858EC(0, *(v23 + 16) + 1, 1, v23);
          }

          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          v19 = v15;
          if (v18 >= v17 >> 1)
          {
            v19 = sub_1D5B858EC((v17 > 1), v18 + 1, 1, v15);
          }

          *(v19 + 2) = v18 + 1;
          v9 = v19;
          v20 = &v19[16 * v18];
          *(v20 + 4) = v12;
          *(v20 + 5) = v14;
          if (v8 == v7)
          {
LABEL_30:

            v24 = v9;
            sub_1D5BBE0A8();
            sub_1D6A613E4(&qword_1EDF3C838);
            v21 = sub_1D72623CC();

            if (*(v21 + 16))
            {
              v24 = v21;
              sub_1D6A613E4(&qword_1EDF3C840);
              v22 = sub_1D7261F3C();

              return v22;
            }

            else
            {

              return 0;
            }
          }
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1D6A5FD6C()
{
  v1 = sub_1D6A5E96C();
  result = 0;
  v3 = v1 == 0;
  if ((v0 & 0x100) == 0 && (v0 & v3 & 1) == 0)
  {
    sub_1D6A5E360();
    v5 = v4;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_28:
      v7 = sub_1D7263BFC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v23 = v9;
          v10 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA6FB460](v10, v5);
              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v10 >= *(v6 + 16))
              {
                goto LABEL_27;
              }

              v11 = *(v5 + 8 * v10 + 32);

              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            if (*(*(v11 + 16) + 32) == 20)
            {
              break;
            }

LABEL_8:
            ++v10;
            if (v8 == v7)
            {
              v9 = v23;
              goto LABEL_30;
            }
          }

          v24 = *(v11 + 24);
          sub_1D612612C(v24);
          v12 = sub_1D6A5F71C(&v24);
          v14 = v13;
          sub_1D5BD9F54(v24);

          if (!v14)
          {
            goto LABEL_8;
          }

          v15 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v15 = sub_1D5B858EC(0, *(v23 + 16) + 1, 1, v23);
          }

          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          v19 = v15;
          if (v18 >= v17 >> 1)
          {
            v19 = sub_1D5B858EC((v17 > 1), v18 + 1, 1, v15);
          }

          *(v19 + 2) = v18 + 1;
          v9 = v19;
          v20 = &v19[16 * v18];
          *(v20 + 4) = v12;
          *(v20 + 5) = v14;
          if (v8 == v7)
          {
LABEL_30:

            v24 = v9;
            sub_1D5BBE0A8();
            sub_1D6A613E4(&qword_1EDF3C838);
            v21 = sub_1D72623CC();

            if (*(v21 + 16))
            {
              v24 = v21;
              sub_1D6A613E4(&qword_1EDF3C840);
              v22 = sub_1D7261F3C();

              return v22;
            }

            else
            {

              return 0;
            }
          }
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1D6A60048()
{
  v1 = sub_1D6A5E96C();
  result = 0;
  v3 = v1 == 0;
  if ((v0 & 0x100) == 0 && (v0 & v3 & 1) == 0)
  {
    sub_1D6A5E360();
    v5 = v4;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_28:
      v7 = sub_1D7263BFC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v23 = v9;
          v10 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA6FB460](v10, v5);
              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v10 >= *(v6 + 16))
              {
                goto LABEL_27;
              }

              v11 = *(v5 + 8 * v10 + 32);

              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            if (*(*(v11 + 16) + 32) == 21)
            {
              break;
            }

LABEL_8:
            ++v10;
            if (v8 == v7)
            {
              v9 = v23;
              goto LABEL_30;
            }
          }

          v24 = *(v11 + 24);
          sub_1D612612C(v24);
          v12 = sub_1D6A5F71C(&v24);
          v14 = v13;
          sub_1D5BD9F54(v24);

          if (!v14)
          {
            goto LABEL_8;
          }

          v15 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v15 = sub_1D5B858EC(0, *(v23 + 16) + 1, 1, v23);
          }

          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          v19 = v15;
          if (v18 >= v17 >> 1)
          {
            v19 = sub_1D5B858EC((v17 > 1), v18 + 1, 1, v15);
          }

          *(v19 + 2) = v18 + 1;
          v9 = v19;
          v20 = &v19[16 * v18];
          *(v20 + 4) = v12;
          *(v20 + 5) = v14;
          if (v8 == v7)
          {
LABEL_30:

            v24 = v9;
            sub_1D5BBE0A8();
            sub_1D6A613E4(&qword_1EDF3C838);
            v21 = sub_1D72623CC();

            if (*(v21 + 16))
            {
              v24 = v21;
              sub_1D6A613E4(&qword_1EDF3C840);
              v22 = sub_1D7261F3C();

              return v22;
            }

            else
            {

              return 0;
            }
          }
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1D6A60324()
{
  v1 = sub_1D6A5E96C();
  result = 0;
  v3 = v1 == 0;
  if ((v0 & 0x100) == 0 && (v0 & v3 & 1) == 0)
  {
    sub_1D6A5E360();
    v5 = v4;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_28:
      v7 = sub_1D7263BFC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v23 = v9;
          v10 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA6FB460](v10, v5);
              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v10 >= *(v6 + 16))
              {
                goto LABEL_27;
              }

              v11 = *(v5 + 8 * v10 + 32);

              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            if (*(*(v11 + 16) + 32) == 22)
            {
              break;
            }

LABEL_8:
            ++v10;
            if (v8 == v7)
            {
              v9 = v23;
              goto LABEL_30;
            }
          }

          v24 = *(v11 + 24);
          sub_1D612612C(v24);
          v12 = sub_1D6A5F71C(&v24);
          v14 = v13;
          sub_1D5BD9F54(v24);

          if (!v14)
          {
            goto LABEL_8;
          }

          v15 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v15 = sub_1D5B858EC(0, *(v23 + 16) + 1, 1, v23);
          }

          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          v19 = v15;
          if (v18 >= v17 >> 1)
          {
            v19 = sub_1D5B858EC((v17 > 1), v18 + 1, 1, v15);
          }

          *(v19 + 2) = v18 + 1;
          v9 = v19;
          v20 = &v19[16 * v18];
          *(v20 + 4) = v12;
          *(v20 + 5) = v14;
          if (v8 == v7)
          {
LABEL_30:

            v24 = v9;
            sub_1D5BBE0A8();
            sub_1D6A613E4(&qword_1EDF3C838);
            v21 = sub_1D72623CC();

            if (*(v21 + 16))
            {
              v24 = v21;
              sub_1D6A613E4(&qword_1EDF3C840);
              v22 = sub_1D7261F3C();

              return v22;
            }

            else
            {

              return 0;
            }
          }
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1D6A60600()
{
  v1 = sub_1D6A5E96C();
  result = 0;
  v3 = v1 == 0;
  if ((v0 & 0x100) == 0 && (v0 & v3 & 1) == 0)
  {
    sub_1D6A5E360();
    v5 = v4;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_28:
      v7 = sub_1D7263BFC();
      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_5:
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v22 = v9;
          v10 = v8;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA6FB460](v10, v5);
              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v10 >= *(v6 + 16))
              {
                goto LABEL_27;
              }

              v11 = *(v5 + 8 * v10 + 32);

              v8 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            if (*(*(v11 + 16) + 32) == 23)
            {
              break;
            }

LABEL_8:
            ++v10;
            if (v8 == v7)
            {
              v9 = v22;
              goto LABEL_30;
            }
          }

          v23 = *(v11 + 24);
          sub_1D612612C(v23);
          v12 = sub_1D6A5F71C(&v23);
          v14 = v13;
          sub_1D5BD9F54(v23);

          if (!v14)
          {
            goto LABEL_8;
          }

          v15 = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v15 = sub_1D5B858EC(0, *(v22 + 2) + 1, 1, v22);
          }

          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          v19 = v15;
          if (v18 >= v17 >> 1)
          {
            v19 = sub_1D5B858EC((v17 > 1), v18 + 1, 1, v15);
          }

          *(v19 + 2) = v18 + 1;
          v9 = v19;
          v20 = &v19[16 * v18];
          *(v20 + 4) = v12;
          *(v20 + 5) = v14;
          if (v8 == v7)
          {
LABEL_30:

            if (*(v9 + 2))
            {
              v21 = *(v9 + 4);

              return v21;
            }

            else
            {

              return 0;
            }
          }
        }
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1D6A6082C()
{
  v0 = 0;
  v2 = sub_1D6A5E96C() == 0;
  if ((v1 & 0x100) == 0 && (v1 & v2 & 1) == 0)
  {
    sub_1D6A5E360();
    v4 = v3;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_39:
      v6 = sub_1D7263BFC();
      v0 = 0;
      if (v6)
      {
LABEL_5:
        v7 = 0;
        v30 = *MEMORY[0x1E69DDA28];
        v29 = *MEMORY[0x1E69DD9C8];
        v28 = *MEMORY[0x1E69DD9C0];
        v27 = *MEMORY[0x1E69DD9B0];
        v26 = *MEMORY[0x1E69DD9A8];
        v25 = *MEMORY[0x1E69DDA10];
        v24 = *MEMORY[0x1E69DDA38];
        v23 = *MEMORY[0x1E69DD9F0];
        v22 = *MEMORY[0x1E69DDA20];
        v21 = *MEMORY[0x1E69DDA18];
        v20 = *MEMORY[0x1E69DD9D8];
        v19 = *MEMORY[0x1E69DD9F8];
        v18 = *MEMORY[0x1E69DDA08];
        v17 = *MEMORY[0x1E69DD9D0];
        v16 = *MEMORY[0x1E69DDA00];
        v15 = *MEMORY[0x1E69DD9E0];
        v14 = *MEMORY[0x1E69DD9B8];
        v8 = *MEMORY[0x1E69DD9E8];
        do
        {
          v9 = v7;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x1DA6FB460](v9, v4);
              v7 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (v9 >= *(v5 + 16))
              {
                goto LABEL_38;
              }

              v7 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
LABEL_37:
                __break(1u);
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }
            }

            v11 = *(*(v10 + 16) + 32);

            if ((v11 - 18) >= 6)
            {
              break;
            }

            ++v9;
            if (v7 == v6)
            {
              goto LABEL_35;
            }
          }

          v12 = v8;
          switch(v11)
          {
            case 1:
              v12 = v14;
              break;
            case 2:
              v12 = v15;
              break;
            case 3:
              v12 = v16;
              break;
            case 4:
              v12 = v17;
              break;
            case 5:
              v12 = v18;
              break;
            case 6:
              v12 = v19;
              break;
            case 7:
              v12 = v20;
              break;
            case 8:
              v12 = v21;
              break;
            case 9:
              v12 = v22;
              break;
            case 10:
              v12 = v23;
              break;
            case 11:
              v12 = v24;
              break;
            case 12:
              v12 = v25;
              break;
            case 13:
              v12 = v26;
              break;
            case 14:
              v12 = v27;
              break;
            case 15:
              v12 = v28;
              break;
            case 16:
              v12 = v29;
              break;
            case 17:
              v12 = v30;
              break;
            default:
              break;
          }

          v0 |= v12;
        }

        while (v7 != v6);
      }
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0 = 0;
      if (v6)
      {
        goto LABEL_5;
      }
    }

LABEL_35:
  }

  return v0;
}

void sub_1D6A60B20(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_1D726207C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1D6A60B88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  v3 = *(v2 + 24);
  *a2 = *(v2 + 16);
  a2[1] = v3;
}

uint64_t sub_1D6A60BB0()
{

  swift_unknownObjectRelease();
  sub_1D5B87E10(v0 + 88);

  return v0;
}

uint64_t sub_1D6A60C08()
{
  sub_1D6A60BB0();

  return swift_deallocClassInstance();
}

id sub_1D6A60CF4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1D726203C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

unint64_t sub_1D6A61084()
{
  result = qword_1EC8909B0;
  if (!qword_1EC8909B0)
  {
    sub_1D6A61428(255, &qword_1EC8909A8, &unk_1EDF04400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8909B0);
  }

  return result;
}

id sub_1D6A610F4(uint64_t a1)
{
  if (a1 < 0)
  {
    return (a1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

void sub_1D6A61104(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

void sub_1D6A61114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D6A61178()
{
  result = qword_1EDF1AFB0;
  if (!qword_1EDF1AFB0)
  {
    sub_1D6A61114(255, &unk_1EDF1AFB8, type metadata accessor for FormatDataAccessibilityValue, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AFB0);
  }

  return result;
}

unint64_t sub_1D6A61200()
{
  result = qword_1EC8909B8;
  if (!qword_1EC8909B8)
  {
    sub_1D6A61114(255, &unk_1EDF1AFB8, type metadata accessor for FormatDataAccessibilityValue, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8909B8);
  }

  return result;
}

uint64_t sub_1D6A61288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v15 = *a8;
  v16 = MEMORY[0x1E69E7CC0];
  *(v8 + 48) = MEMORY[0x1E69E7CC0];
  *(v8 + 56) = v16;
  *(v8 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 96) = a4;
  *(v8 + 104) = 0;
  swift_unknownObjectWeakAssign();
  if (v15 == 7)
  {
    LOBYTE(v15) = *(a5 + *(*a5 + 144));
  }

  *(v8 + 32) = v15;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 64) = v16;
  *(v8 + 40) = a5[13];

  return v8;
}

uint64_t sub_1D6A613E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BBE0A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6A61428(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B5A498(255, a3);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6A61480()
{
  result = qword_1EDF1AE08;
  if (!qword_1EDF1AE08)
  {
    sub_1D6A61428(255, &unk_1EDF1AE10, &qword_1EDF1A650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AE08);
  }

  return result;
}

unint64_t sub_1D6A614F0()
{
  result = qword_1EDF1A658;
  if (!qword_1EDF1A658)
  {
    sub_1D5B5A498(255, &qword_1EDF1A650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1A658);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed29FormatDerivedDataContextScopeO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D6A61578(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6A615CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1D6A61620(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t sub_1D6A6165C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D5C30130(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v20;
    sub_1D6A629E8();
    v16 = 0;
    v17 = 0;
    sub_1D726431C();
    if (v19 <= 3u)
    {
      if (v19 > 1u)
      {
        if (v19 == 2)
        {
          sub_1D5C30130(0, &qword_1EC8909D0, sub_1D6079AA0, &type metadata for FormatItemKind, type metadata accessor for FormatValue);
          v19 = xmmword_1D7279980;
          sub_1D6A62AE4(&qword_1EC8909D8);
          sub_1D726431C();
          (*(v6 + 8))(v9, v5);
          v13 = v16;
          v11 = v17;
          v12 = 64;
        }

        else
        {
          (*(v6 + 8))(v9, v5);
          v11 = 0;
          v12 = 0x80;
          v13 = 1;
        }
      }

      else if (v19)
      {
        v19 = xmmword_1D7279980;
        sub_1D6A62A3C();
        sub_1D726431C();
        (*(v6 + 8))(v9, v5);
        v13 = v16;
        v11 = v17;
        v12 = v18;
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v13 = 0;
        v11 = 0;
        v12 = 0x80;
      }
    }

    else if (v19 <= 5u)
    {
      if (v19 == 4)
      {
        (*(v6 + 8))(v9, v5);
        v11 = 0;
        v12 = 0x80;
        v13 = 2;
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v11 = 0;
        v12 = 0x80;
        v13 = 3;
      }
    }

    else if (v19 == 6)
    {
      (*(v6 + 8))(v9, v5);
      v11 = 0;
      v12 = 0x80;
      v13 = 4;
    }

    else if (v19 == 7)
    {
      (*(v6 + 8))(v9, v5);
      v11 = 0;
      v12 = 0x80;
      v13 = 5;
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v11 = 0;
      v12 = 0x80;
      v13 = 6;
    }

    *v10 = v13;
    *(v10 + 8) = v11;
    *(v10 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6A61A90(void *a1)
{
  sub_1D5C30130(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v19 = v3;
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (!(v9 >> 6))
  {
    LOBYTE(v24) = 1;
    sub_1D6A62A90();
    v21 = 0;
    v22 = 0;
    v13 = v19;
    v14 = v20;
    sub_1D726443C();
    if (!v14)
    {
      v21 = v7;
      v22 = v8;
      v23 = v9 & 1;
      v24 = xmmword_1D7279980;
      sub_1D6A62B60();
      sub_1D726443C();
    }

    v15 = *(v25 + 8);
    v16 = v6;
    return v15(v16, v13);
  }

  if (v9 >> 6 != 1)
  {
    v13 = v19;
    if (v8 | v7 || v9 != 128)
    {
      if (v7 == 1 && !v8 && v9 == 128)
      {
        v17 = 3;
      }

      else if (v7 == 2 && !v8 && v9 == 128)
      {
        v17 = 4;
      }

      else if (v7 == 3 && !v8 && v9 == 128)
      {
        v17 = 5;
      }

      else if (v7 == 4 && !v8 && v9 == 128)
      {
        v17 = 6;
      }

      else if (v7 == 5 && !v8 && v9 == 128)
      {
        v17 = 7;
      }

      else
      {
        v17 = 8;
      }

      LOBYTE(v24) = v17;
    }

    else
    {
      LOBYTE(v24) = 0;
    }

    sub_1D6A62A90();
    v21 = 0;
    v22 = 0;
    sub_1D726443C();
    v15 = *(v25 + 8);
    v16 = v6;
    return v15(v16, v13);
  }

  LOBYTE(v24) = 2;
  v21 = 0;
  v22 = 0;
  sub_1D5CBA110(v7, v8);
  sub_1D6A62A90();
  v11 = v19;
  v10 = v20;
  sub_1D726443C();
  if (v10)
  {
    (*(v25 + 8))(v6, v11);
    return sub_1D6007850(v7, v8, v9);
  }

  else
  {
    v21 = v7;
    v22 = v8;
    v24 = xmmword_1D7279980;
    sub_1D5C30130(0, &qword_1EC8909D0, sub_1D6079AA0, &type metadata for FormatItemKind, type metadata accessor for FormatValue);
    sub_1D6A62AE4(&qword_1EC8909F0);
    sub_1D726443C();
    sub_1D5CBA0FC(v21, v22);
    return (*(v25 + 8))(v6, v11);
  }
}

uint64_t sub_1D6A61E90(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x70756F7267;
    v6 = 1835365481;
    if (a1 != 2)
    {
      v6 = 0x656D656C70707573;
    }

    if (a1)
    {
      v5 = 1953459315;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7261696C69787561;
    v2 = 0x6E6F6974706FLL;
    if (a1 != 7)
    {
      v2 = 0x646E69426D657469;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656C797473;
    if (a1 != 4)
    {
      v3 = 0x697461726F636564;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6A61FAC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      MEMORY[0x1DA6FC0B0](2);
      return FormatItemKind.hash(into:)();
    }

    else
    {
      if (v1 | v2 || v3 != 128)
      {
        v6 = v2 == 1 && v1 == 0;
        if (v6 && v3 == 128)
        {
          v5 = 3;
        }

        else if (v2 == 2 && !v1 && v3 == 128)
        {
          v5 = 4;
        }

        else if (v2 == 3 && !v1 && v3 == 128)
        {
          v5 = 5;
        }

        else if (v2 == 4 && !v1 && v3 == 128)
        {
          v5 = 6;
        }

        else if (v2 == 5 && !v1 && v3 == 128)
        {
          v5 = 7;
        }

        else
        {
          v5 = 8;
        }
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x1DA6FC0B0](v5);
    }
  }

  else
  {
    MEMORY[0x1DA6FC0B0](1);
    sub_1D72621EC();
    return sub_1D7264A2C();
  }
}

uint64_t sub_1D6A62100()
{
  sub_1D7264A0C();
  sub_1D694DBAC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A62150()
{
  sub_1D7264A0C();
  sub_1D694DBAC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A62194@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6A62C70();
  *a1 = result;
  return result;
}

uint64_t sub_1D6A621C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6A61E90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6A622D0()
{
  sub_1D7264A0C();
  sub_1D6A61FAC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6A62328()
{
  sub_1D7264A0C();
  sub_1D6A61FAC();
  return sub_1D7264A5C();
}

unint64_t sub_1D6A62380()
{
  result = qword_1EC8909C0;
  if (!qword_1EC8909C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8909C0);
  }

  return result;
}

uint64_t sub_1D6A623D4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (!(v3 >> 6))
  {
    v9 = 0x28746F6C73;
    MEMORY[0x1DA6F9910](v2, v1);
    goto LABEL_5;
  }

  if (v3 >> 6 == 1)
  {
    v9 = 0;
    MEMORY[0x1DA6F9910](0x286D657469, 0xE500000000000000);
    sub_1D609C9E4(v2, v1);
LABEL_5:
    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v9;
  }

  if (!(v1 | v2) && v3 == 128)
  {
    return 0x70756F7267;
  }

  v5 = v2 == 1 && v1 == 0;
  if (v5 && v3 == 128)
  {
    return 0x656D656C70707573;
  }

  if (v2 == 2 && !v1 && v3 == 128)
  {
    return 0x656C797473;
  }

  if (v2 == 3 && !v1 && v3 == 128)
  {
    return 0x697461726F636564;
  }

  if (v2 == 4 && !v1 && v3 == 128)
  {
    return 0x7261696C69787561;
  }

  v6 = v3 == 128;
  v8 = v2 == 5 && v1 == 0;
  if (v8 && v6)
  {
    return 0x6E6F6974706FLL;
  }

  else
  {
    return 0x646E69426D657469;
  }
}

uint64_t sub_1D6A625BC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!(v4 >> 6))
  {
    if (v7 < 0x40)
    {
      v9 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_1D6007830(v9, v2, v7);
        sub_1D6007830(v3, v2, v4);
        sub_1D6007850(v3, v2, v4);
        sub_1D6007850(v3, v2, v7);
        if ((v4 ^ v7))
        {
LABEL_74:
          v8 = 0;
          return v8 & 1;
        }
      }

      else
      {
        v11 = sub_1D72646CC();
        sub_1D6007830(v6, v5, v7);
        sub_1D6007830(v3, v2, v4);
        sub_1D6007850(v3, v2, v4);
        sub_1D6007850(v6, v5, v7);
        if (v11 & 1) == 0 || ((v4 ^ v7))
        {
          goto LABEL_74;
        }
      }

      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_73;
  }

  if (v4 >> 6 != 1)
  {
    if (v2 | v3 || v4 != 128)
    {
      v14 = v3 == 1 && v2 == 0;
      if (v14 && v4 == 128)
      {
        if ((v7 & 0xC0) == 0x80 && v6 == 1 && !v5 && v7 == 128)
        {
          v8 = 1;
          sub_1D6007850(1, 0, 0x80u);
          sub_1D6007850(1, 0, 0x80u);
          return v8 & 1;
        }

        goto LABEL_73;
      }

      if (v3 == 2 && !v2 && v4 == 128)
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 2 || v5 || v7 != 128)
        {
          goto LABEL_73;
        }

        sub_1D6007850(2, 0, 0x80u);
        v13 = 2;
      }

      else if (v3 == 3 && !v2 && v4 == 128)
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 3 || v5 || v7 != 128)
        {
          goto LABEL_73;
        }

        sub_1D6007850(3, 0, 0x80u);
        v13 = 3;
      }

      else if (v3 == 4 && !v2 && v4 == 128)
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 4 || v5 || v7 != 128)
        {
          goto LABEL_73;
        }

        sub_1D6007850(4, 0, 0x80u);
        v13 = 4;
      }

      else if (v3 == 5 && !v2 && v4 == 128)
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 5 || v5 || v7 != 128)
        {
          goto LABEL_73;
        }

        sub_1D6007850(5, 0, 0x80u);
        v13 = 5;
      }

      else
      {
        if ((v7 & 0xC0) != 0x80 || v6 != 6 || v5 || v7 != 128)
        {
          goto LABEL_73;
        }

        sub_1D6007850(6, 0, 0x80u);
        v13 = 6;
      }
    }

    else
    {
      v12 = (v7 & 0xC0) == 0x80 && (v5 | v6) == 0;
      if (!v12 || v7 != 128)
      {
        goto LABEL_73;
      }

      sub_1D6007850(0, 0, 0x80u);
      v13 = 0;
    }

    sub_1D6007850(v13, 0, 0x80u);
    v8 = 1;
    return v8 & 1;
  }

  if ((v7 & 0xC0) != 0x40)
  {
LABEL_73:
    sub_1D6007830(*a2, *(a2 + 8), v7);
    sub_1D6007830(v3, v2, v4);
    sub_1D6007850(v3, v2, v4);
    sub_1D6007850(v6, v5, v7);
    goto LABEL_74;
  }

  v17[0] = *a1;
  v17[1] = v2;
  v16[0] = v6;
  v16[1] = v5;
  sub_1D6007830(v6, v5, v7);
  sub_1D6007830(v3, v2, v4);
  sub_1D6007830(v6, v5, v7);
  sub_1D6007830(v3, v2, v4);
  v8 = _s8NewsFeed14FormatItemKindO2eeoiySbAC_ACtFZ_0(v17, v16);
  sub_1D6007850(v3, v2, v4);
  sub_1D6007850(v6, v5, v7);
  sub_1D6007850(v6, v5, v7);
  sub_1D6007850(v3, v2, v4);
  return v8 & 1;
}

unint64_t sub_1D6A629E8()
{
  result = qword_1EC8909C8;
  if (!qword_1EC8909C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8909C8);
  }

  return result;
}

unint64_t sub_1D6A62A3C()
{
  result = qword_1EC8909E0;
  if (!qword_1EC8909E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8909E0);
  }

  return result;
}

unint64_t sub_1D6A62A90()
{
  result = qword_1EC8909E8;
  if (!qword_1EC8909E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8909E8);
  }

  return result;
}

uint64_t sub_1D6A62AE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C30130(255, &qword_1EC8909D0, sub_1D6079AA0, &type metadata for FormatItemKind, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6A62B60()
{
  result = qword_1EC8909F8;
  if (!qword_1EC8909F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8909F8);
  }

  return result;
}

unint64_t sub_1D6A62BC8()
{
  result = qword_1EC890A00;
  if (!qword_1EC890A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890A00);
  }

  return result;
}

unint64_t sub_1D6A62C1C()
{
  result = qword_1EC890A08;
  if (!qword_1EC890A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890A08);
  }

  return result;
}

uint64_t sub_1D6A62C70()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void *sub_1D6A62CCC(uint64_t a1, uint64_t a2)
{
  sub_1D5B56150(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v20 = a2;
  v4 = sub_1D7199984(sub_1D6A62F5C, v19, &unk_1F50F75E8);
  v5 = sub_1D5F62998(v4);

  sub_1D6795150(0x7453656C7A7A7550, 0xEF63697473697461, 0, 0, v5, v21);

  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v6 = swift_allocObject();
  *(inited + 32) = v6;
  *(v6 + 48) = v22;
  v7 = v21[1];
  *(v6 + 16) = v21[0];
  *(v6 + 32) = v7;
  v18 = a2;
  v8 = sub_1D5ECF488(sub_1D6A62F78, v17, &unk_1F50F7618);
  sub_1D6795150(0x74616F6C46, 0xE500000000000000, 0, 0, v8, v23);

  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(inited + 104) = &off_1F518B2C0;
  v9 = swift_allocObject();
  *(inited + 72) = v9;
  *(v9 + 48) = v24;
  v10 = v23[1];
  *(v9 + 16) = v23[0];
  *(v9 + 32) = v10;
  v16[2] = a2;
  v11 = sub_1D5ECF488(sub_1D6A62F98, v16, &unk_1F50F7640);
  sub_1D6795150(0x6E61656C6F6F42, 0xE700000000000000, 0, 0, v11, v25);

  *(inited + 136) = &type metadata for FormatInspectionGroup;
  *(inited + 144) = &off_1F518B2C0;
  v12 = swift_allocObject();
  *(inited + 112) = v12;
  *(v12 + 48) = v26;
  v13 = v25[1];
  *(v12 + 16) = v25[0];
  *(v12 + 32) = v13;
  v14 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v14;
}

uint64_t FormatSlotDefinitionItemSetAuxiliary.init(properties:items:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FormatSlotDefinitionItemSetAuxiliary.properties.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static FormatSlotDefinitionItemSetAuxiliary.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D633C994(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D633C940(v2, v3);
}

unint64_t sub_1D6A63078(uint64_t a1)
{
  result = sub_1D6A630A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A630A0()
{
  result = qword_1EC890A10;
  if (!qword_1EC890A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890A10);
  }

  return result;
}

unint64_t sub_1D6A630F4(void *a1)
{
  a1[1] = sub_1D5CDE1D8();
  a1[2] = sub_1D6A6312C();
  result = sub_1D6A63180();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A6312C()
{
  result = qword_1EDF06F00;
  if (!qword_1EDF06F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F00);
  }

  return result;
}

unint64_t sub_1D6A63180()
{
  result = qword_1EC890A18;
  if (!qword_1EC890A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890A18);
  }

  return result;
}

uint64_t sub_1D6A63204(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D633C994(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D633C940(v2, v3);
}

void *sub_1D6A63270(__int128 *a1, uint64_t *a2)
{
  sub_1D60747E4();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v66 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FormatSlotDefinitionItemSet();
  v7 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v8);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[7];
  v86 = a1[6];
  v87 = v15;
  v88 = a1[8];
  v89 = *(a1 + 18);
  v16 = a1[3];
  v82 = a1[2];
  v83 = v16;
  v17 = a1[5];
  v84 = a1[4];
  v85 = v17;
  v18 = a1[1];
  v80 = *a1;
  v81 = v18;
  v19 = *a2;
  if (*a2)
  {
    v68 = v7;
    v20 = a2[1];
    v21 = MEMORY[0x1E69E6F90];
    sub_1D6A6394C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v67 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D6A6394C(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v63 = *(v11 + 72);
    v24 = swift_allocObject();
    *(v24 + 16) = v67;
    v79 = *(v19 + 16);
    *&v69 = sub_1D72644BC();
    *(&v69 + 1) = v25;
    MEMORY[0x1DA6F9910](0x747265706F725020, 0xEB00000000736569);
    v26 = v69;

    v28 = sub_1D6976EE8(v27);

    v29 = sub_1D5F64170(v28);

    v30 = sub_1D5F62BFC(v29);

    v31 = sub_1D7073500(v30);

    sub_1D711AD20(0x69747265706F7250, 0xEA00000000007365, v31, v26, *(&v26 + 1), (v24 + v23));
    v32 = type metadata accessor for FormatInspectionItem(0);
    v33 = *(v32 - 8);
    v34 = *(v33 + 56);
    v61 = v32;
    v62 = v23;
    v59 = v33 + 56;
    v60 = v34;
    (v34)(v24 + v23, 0, 1);
    v35 = *(v20 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v55 = v24;
      v56 = inited;
      v79 = MEMORY[0x1E69E7CC0];
      sub_1D69972A4(0, v35, 0);
      v36 = v79;
      v37 = v20 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v38 = *(v68 + 72);
      v57 = (v68 + 56);
      v58 = v38;
      do
      {
        v39 = v64;
        sub_1D69DAC58(v37, v64);
        v40 = sub_1D6B24B28();
        v68 = v41;
        sub_1D6A6394C(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
        v42 = swift_initStackObject();
        *(v42 + 16) = v67;
        v75 = v86;
        v76 = v87;
        v77 = v88;
        v78 = v89;
        v71 = v82;
        v72 = v83;
        v73 = v84;
        v74 = v85;
        v69 = v80;
        v70 = v81;
        v43 = v66;
        sub_1D69DAC58(v39, v66);
        (*v57)(v43, 0, 1, v65);
        v44 = v14;
        v45 = sub_1D6B24B24(&v69, v43);
        sub_1D6A639B0(v43, sub_1D60747E4);
        *(v42 + 56) = &type metadata for FormatInspection;
        *(v42 + 64) = &off_1F51E3FD0;
        *(v42 + 32) = v45;
        v46 = sub_1D5F62BFC(v42);
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_1(v42 + 32);
        v47 = sub_1D7073500(v46);
        v14 = v44;

        sub_1D711AD20(0x7465536D657449, 0xE700000000000000, v47, v40, v68, v44);
        sub_1D6A639B0(v39, type metadata accessor for FormatSlotDefinitionItemSet);
        v60(v44, 0, 1, v61);
        v79 = v36;
        v49 = *(v36 + 16);
        v48 = *(v36 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1D69972A4(v48 > 1, v49 + 1, 1);
          v36 = v79;
        }

        *(v36 + 16) = v49 + 1;
        sub_1D5E4F52C(v44, v36 + v62 + v49 * v63);
        v37 += v58;
        --v35;
      }

      while (v35);
      v24 = v55;
      inited = v56;
    }

    *&v69 = v24;
    sub_1D6986D54(v36);
    sub_1D6795150(0x7261696C69787541, 0xE900000000000079, 0, 0, v69, &v69);

    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v50 = swift_allocObject();
    *(inited + 32) = v50;
    *(v50 + 48) = v71;
    v51 = v70;
    *(v50 + 16) = v69;
    *(v50 + 32) = v51;
    v52 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D6A639B0(inited + 32, sub_1D5E4F358);
    return v52;
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v54);
  }
}

void sub_1D6A6394C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6A639B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatServiceResolverServices.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return v0;
}

uint64_t FormatServiceResolverServices.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t static FormatContentOverlayValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v60 = a2;
  v57 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v52 = &v51 - v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v54 = &v51 - v10;
  v55 = v9;
  v58 = v11;
  v12 = type metadata accessor for FormatContentOverlayValue();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v51 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = *(TupleTypeMetadata2 - 8);
  v28 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v27);
  v30 = &v51 - v29;
  v32 = *(v31 + 48);
  v56 = v13;
  v33 = *(v13 + 16);
  v33(&v51 - v29, v59, v12, v28);
  (v33)(&v30[v32], v60, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v33)(v20, v30, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = v57;
        v35 = v58;
        v37 = v52;
        (*(v57 + 32))(v52, &v30[v32], v58);
        v38 = sub_1D7261FBC();
        v39 = *(v36 + 8);
        v39(v37, v35);
        v39(v20, v35);
LABEL_13:
        v26 = v56;
        goto LABEL_14;
      }

      v16 = v20;
    }

    else
    {
      (v33)(v16, v30, v12);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v42 = v57;
        v41 = v58;
        v43 = v53;
        (*(v57 + 32))(v53, &v30[v32], v58);
        v38 = sub_1D7261FBC();
        v44 = *(v42 + 8);
        v44(v43, v41);
        v44(v16, v41);
        goto LABEL_13;
      }
    }
  }

  else
  {
    v40 = v54;
    (v33)(v24, v30, v12);
    if (!swift_getEnumCaseMultiPayload())
    {
      v45 = v57;
      v46 = v40;
      v47 = v40;
      v48 = v58;
      (*(v57 + 32))(v47, &v30[v32], v58);
      v38 = sub_1D7261FBC();
      v49 = *(v45 + 8);
      v49(v46, v48);
      v49(v24, v48);
      goto LABEL_13;
    }

    v16 = v24;
  }

  (*(v57 + 8))(v16, v58);
  v38 = 0;
  v12 = TupleTypeMetadata2;
LABEL_14:
  (*(v26 + 8))(v30, v12);
  return v38 & 1;
}

uint64_t sub_1D6A63FF0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6A6402C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6A640F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6A64158(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1D6A64264(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

__n128 FormatFocusParameters.edgeInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t _s8NewsFeed21FormatFocusParametersV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 33);
  v3 = *(a2 + 33);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }

LABEL_6:
    if (v2 == 3)
    {
      if (v3 != 3)
      {
        return 0;
      }
    }

    else if (v3 == 3 || v2 != v3)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(a2 + 32) & 1) == 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_1D72EB3A0)) & 0xF) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_1D6A64500(uint64_t a1)
{
  result = sub_1D6A64528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A64528()
{
  result = qword_1EC890A20;
  if (!qword_1EC890A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890A20);
  }

  return result;
}

unint64_t sub_1D6A6457C(void *a1)
{
  a1[1] = sub_1D5CC6BAC();
  a1[2] = sub_1D669BC44();
  result = sub_1D6A645B4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A645B4()
{
  result = qword_1EC890A28;
  if (!qword_1EC890A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890A28);
  }

  return result;
}

uint64_t sub_1D6A64608(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 34))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 33);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 33);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

void *sub_1D6A6466C(uint64_t a1, __int128 *a2)
{
  v21 = *a2;
  v22 = a2[1];
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v3);
  sub_1D5EA74B8();
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7270C10;
  v9 = (v8 + v7);
  if (v2 & 0xFF00) == 0x400 || (v2)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v23 = v21;
    v24 = v22;
    v10 = FormatEdgeInsets.description.getter();
    v11 = v12;
  }

  sub_1D711F844(0x736E492065676445, 0xEB00000000737465, v10, v11, v9);
  v13 = type metadata accessor for FormatInspectionItem(0);
  v14 = *(*(v13 - 8) + 56);
  v14(v9, 0, 1, v13);
  v15 = 0;
  if ((v2 & 0xFF00) == 0x400)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    if (v2 >> 8 != 3)
    {
      v15 = *&aAutomatioutsid[8 * SBYTE1(v2)];
      v16 = *&aC_4[8 * SBYTE1(v2)];
    }
  }

  sub_1D711F844(0x6E6F697469736F50, 0xE800000000000000, v15, v16, (v9 + v6));
  v14((v9 + v6), 0, 1, v13);
  sub_1D6795150(0xD000000000000010, 0x80000001D73E1EA0, 0, 0, v8, &v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v17 = swift_allocObject();
  *(inited + 32) = v17;
  *(v17 + 48) = v25;
  v18 = v24;
  *(v17 + 16) = v23;
  *(v17 + 32) = v18;
  v19 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5F10AA0(inited + 32);
  return v19;
}

uint64_t type metadata accessor for FormatButtonNodeData()
{
  result = qword_1EDF2B5C8;
  if (!qword_1EDF2B5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6A64A34()
{
  type metadata accessor for FormatButtonNodeDataAction();
  if (v0 <= 0x3F)
  {
    sub_1D6A649A0(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6A64AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for FormatAction();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - v11;
  sub_1D6A649A0(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatButtonNodeDataAction();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  sub_1D6A64F0C(a2, v16, sub_1D6A649A0);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    sub_1D6A64EA4(v16, v21, type metadata accessor for FormatButtonNodeDataAction);
    sub_1D6A64F0C(a1, v12, type metadata accessor for FormatAction);
    v24 = 1 << swift_getEnumCaseMultiPayload();
    if ((v24 & 0x134) == 0)
    {
      if ((v24 & 0x83) == 0)
      {
LABEL_10:
        v22 = type metadata accessor for FormatButtonNodeDataAction;
        v23 = v21;
        goto LABEL_11;
      }

      sub_1D6A69574(v12, type metadata accessor for FormatAction);
      sub_1D6A64F0C(v21, v8, type metadata accessor for FormatAction);
      v25 = 1 << swift_getEnumCaseMultiPayload();
      if ((v25 & 0x134) == 0)
      {
        if ((v25 & 0x83) != 0)
        {
          sub_1D6A69574(v8, type metadata accessor for FormatAction);
          type metadata accessor for FormatLayoutError();
          sub_1D5D285FC();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D6A69574(v30, sub_1D6A649A0);
          sub_1D6A69574(a1, type metadata accessor for FormatButtonNodeDataAction);
          return sub_1D6A69574(v21, type metadata accessor for FormatButtonNodeDataAction);
        }

        goto LABEL_10;
      }

      v12 = v8;
    }

    sub_1D6A69574(v12, type metadata accessor for FormatAction);
    goto LABEL_10;
  }

  v22 = sub_1D6A649A0;
  v23 = v16;
LABEL_11:
  sub_1D6A69574(v23, v22);
  v27 = v29;
  sub_1D6A64EA4(a1, v29, type metadata accessor for FormatButtonNodeDataAction);
  v28 = type metadata accessor for FormatButtonNodeData();
  return sub_1D6A64EA4(v30, v27 + *(v28 + 20), sub_1D6A649A0);
}

uint64_t sub_1D6A64EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A64F0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D6A64F74(uint64_t a1, uint64_t a2)
{
  *&v371 = a2;
  sub_1D6A69480(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  *&v368 = &v350 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatPurchaseData(0);
  v366 = *(v6 - 8);
  v367 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  *&v369 = &v350 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A6944C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v350 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatAction();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v357 = &v350 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v356 = &v350 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v365 = (&v350 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v355 = &v350 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  *&v364 = &v350 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v354 = &v350 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v362 = (&v350 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v352 = &v350 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v363 = &v350 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v353 = &v350 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v361 = &v350 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v351 = &v350 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v360 = &v350 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v350 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v359 = (&v350 - v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v350 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v358 = &v350 - v66;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v350 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v350 - v73;
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v350 - v77;
  v79 = *(a1 + 112);
  v417 = *(a1 + 96);
  v418 = v79;
  v419 = *(a1 + 128);
  v420 = *(a1 + 144);
  v80 = *(a1 + 48);
  v413 = *(a1 + 32);
  v414 = v80;
  v81 = *(a1 + 80);
  v415 = *(a1 + 64);
  v416 = v81;
  v82 = *(a1 + 16);
  v411 = *a1;
  v412 = v82;
  sub_1D6A64F0C(v371, v12, sub_1D6A6944C);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D6A69574(v12, sub_1D6A6944C);
    return 0;
  }

  sub_1D6A64EA4(v12, v78, type metadata accessor for FormatAction);
  sub_1D6A64F0C(v78, v74, type metadata accessor for FormatAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v85 = v78;
  v370 = v78;
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          LODWORD(v371) = *v74;
          v86 = MEMORY[0x1E69E6F90];
          sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
          v87 = swift_allocObject();
          v368 = xmmword_1D7270C10;
          *(v87 + 16) = xmmword_1D7270C10;
          sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v86);
          sub_1D5EA74B8();
          *&v369 = v88;
          v89 = *(*(v88 - 8) + 72);
          v90 = (*(*(v88 - 8) + 80) + 32) & ~*(*(v88 - 8) + 80);
          v91 = swift_allocObject();
          *(v91 + 16) = v368;
          v92 = v91 + v90;
          v93 = v78;
          v94 = v351;
          sub_1D6A64F0C(v93, v351, type metadata accessor for FormatAction);
          v95 = 0;
          v96 = 1 << swift_getEnumCaseMultiPayload();
          if ((v96 & 0x134) == 0)
          {
            if ((v96 & 0x83) == 0)
            {
              goto LABEL_11;
            }

            v95 = 1;
          }

          sub_1D6A69574(v94, type metadata accessor for FormatAction);
LABEL_11:
          v97 = type metadata accessor for FormatInspectionItem(0);
          v98 = *(v97 + 24);
          *(v92 + v98) = v95;
          v99 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          v100 = *(v99 - 8);
          v101 = *(v100 + 56);
          v367 = (v100 + 56);
          *&v368 = v101;
          v101(v92 + v98, 0, 1, v99);
          *v92 = xmmword_1D7318420;
          *(v92 + 16) = 0;
          *(v92 + 24) = 0;
          v102 = v92 + *(v97 + 28);
          *v102 = 0;
          *(v102 + 8) = 0;
          *(v102 + 16) = -1;
          v366 = *(*(v97 - 8) + 56);
          (v366)(v92, 0, 1, v97);
          v103 = v361;
          sub_1D6A64F0C(v370, v361, type metadata accessor for FormatAction);
          v104 = swift_getEnumCaseMultiPayload();
          if (v104 <= 4)
          {
            if (v104 > 1)
            {
              if (v104 == 3)
              {
                goto LABEL_135;
              }

              goto LABEL_134;
            }

LABEL_120:
            sub_1D6A69574(v103, type metadata accessor for FormatAction);
            v268 = 0;
LABEL_136:
            v301 = (v92 + v89);
            v302 = *(v97 + 24);
            *(v301 + v302) = v268;
            swift_storeEnumTagMultiPayload();
            (v368)(v301 + v302, 0, 1, v99);
            *v301 = 0xD000000000000010;
            v301[1] = 0x80000001D73E1EE0;
            v301[2] = 0;
            v301[3] = 0;
            v303 = v301 + *(v97 + 28);
            *v303 = 0;
            *(v303 + 1) = 0;
            v303[16] = -1;
            (v366)(v301, 0, 1, v97);
            sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v91, &v392);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            *(v87 + 56) = &type metadata for FormatInspectionGroup;
            *(v87 + 64) = &off_1F518B2C0;
            v304 = swift_allocObject();
            *(v87 + 32) = v304;
            v305 = v393;
            *(v304 + 16) = v392;
            *(v304 + 32) = v305;
            *(v304 + 48) = v394;
            v405 = v417;
            v406 = v418;
            v407 = v419;
            v408 = v420;
            v401 = v413;
            v402 = v414;
            v403 = v415;
            v404 = v416;
            v399 = v411;
            v400 = v412;
            LOBYTE(v387) = v371;
            v306 = sub_1D61DF048(&v399, &v387);
            *(v87 + 96) = &type metadata for FormatInspection;
            *(v87 + 104) = &off_1F51E3FD0;
            *(v87 + 72) = v306;
            v307 = sub_1D5F62BFC(v87);
            swift_setDeallocating();
            sub_1D5E4F38C();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v308 = sub_1D7073500(v307);

            sub_1D6A69574(v370, type metadata accessor for FormatAction);
            return v308;
          }

          if (v104 <= 6)
          {
            if (v104 != 5)
            {
LABEL_135:
              v268 = 1;
              goto LABEL_136;
            }
          }

          else
          {
            if (v104 == 7)
            {
              goto LABEL_120;
            }

            v268 = 0;
            if (v104 != 8)
            {
              goto LABEL_136;
            }
          }

LABEL_134:
          sub_1D6A69574(v103, type metadata accessor for FormatAction);
          goto LABEL_135;
        }

        v192 = *(v74 + 5);
        v396[0] = *(v74 + 4);
        v396[1] = v192;
        v193 = *(v74 + 7);
        v397 = *(v74 + 6);
        v398 = v193;
        v194 = *(v74 + 1);
        v392 = *v74;
        v393 = v194;
        v195 = *(v74 + 3);
        v394 = *(v74 + 2);
        v395 = v195;
        v196 = MEMORY[0x1E69E6F90];
        sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
        v197 = swift_allocObject();
        v369 = xmmword_1D7270C10;
        *(v197 + 16) = xmmword_1D7270C10;
        sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v196);
        sub_1D5EA74B8();
        *&v371 = v198;
        v199 = *(*(v198 - 8) + 72);
        v200 = (*(*(v198 - 8) + 80) + 32) & ~*(*(v198 - 8) + 80);
        v201 = swift_allocObject();
        *(v201 + 16) = v369;
        v202 = v201 + v200;
        v203 = v353;
        sub_1D6A64F0C(v85, v353, type metadata accessor for FormatAction);
        v204 = 0;
        v205 = 1 << swift_getEnumCaseMultiPayload();
        if ((v205 & 0x134) == 0)
        {
          if ((v205 & 0x83) == 0)
          {
            goto LABEL_59;
          }

          v204 = 1;
        }

        sub_1D6A69574(v203, type metadata accessor for FormatAction);
LABEL_59:
        v206 = type metadata accessor for FormatInspectionItem(0);
        v207 = *(v206 + 24);
        *(v202 + v207) = v204;
        v208 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        v209 = *(v208 - 8);
        v210 = *(v209 + 56);
        v367 = (v209 + 56);
        *&v368 = v210;
        v210(v202 + v207, 0, 1, v208);
        *v202 = xmmword_1D7318420;
        *(v202 + 16) = 0;
        *(v202 + 24) = 0;
        v211 = v202 + *(v206 + 28);
        *v211 = 0;
        *(v211 + 8) = 0;
        *(v211 + 16) = -1;
        v366 = *(*(v206 - 8) + 56);
        (v366)(v202, 0, 1, v206);
        v212 = v363;
        sub_1D6A64F0C(v370, v363, type metadata accessor for FormatAction);
        v213 = swift_getEnumCaseMultiPayload();
        if (v213 <= 4)
        {
          if (v213 > 1)
          {
            if (v213 == 3)
            {
              goto LABEL_139;
            }

            goto LABEL_138;
          }

LABEL_121:
          sub_1D6A69574(v212, type metadata accessor for FormatAction);
          v269 = 0;
LABEL_140:
          *&v369 = 0x80000001D73E1F00;
          v309 = (v202 + v199);
          v310 = *(v206 + 24);
          *(v309 + v310) = v269;
          swift_storeEnumTagMultiPayload();
          (v368)(v309 + v310, 0, 1, v208);
          *v309 = 0xD000000000000010;
          v309[1] = 0x80000001D73E1EE0;
          v309[2] = 0;
          v309[3] = 0;
          v311 = v309 + *(v206 + 28);
          *v311 = 0;
          *(v311 + 1) = 0;
          v311[16] = -1;
          (v366)(v309, 0, 1, v206);
          sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v201, v409);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(v197 + 56) = &type metadata for FormatInspectionGroup;
          *(v197 + 64) = &off_1F518B2C0;
          v312 = swift_allocObject();
          *(v197 + 32) = v312;
          v313 = v409[1];
          *(v312 + 16) = v409[0];
          *(v312 + 32) = v313;
          *(v312 + 48) = v410;
          v405 = v417;
          v406 = v418;
          v407 = v419;
          v408 = v420;
          v401 = v413;
          v402 = v414;
          v403 = v415;
          v404 = v416;
          v399 = v411;
          v400 = v412;
          v384[0] = v396[0];
          v384[1] = v396[1];
          v385 = v397;
          v386 = v398;
          v380 = v392;
          v381 = v393;
          v382 = v394;
          v383 = v395;
          nullsub_1();
          v376 = v384[0];
          v377 = v384[1];
          v378 = v385;
          v379 = v386;
          v372 = v380;
          v373 = v381;
          v374 = v382;
          v375 = v383;
          sub_1D6A69518(&v392, &v387);
          v314 = sub_1D701B8E8(&v399, &v372);
          v391[0] = v376;
          v391[1] = v377;
          v391[2] = v378;
          v391[3] = v379;
          v387 = v372;
          v388 = v373;
          v389 = v374;
          v390 = v375;
          sub_1D5E3AAD0(&v387, qword_1EC890A40);
          *(v197 + 96) = &type metadata for FormatInspection;
          *(v197 + 104) = &off_1F51E3FD0;
          *(v197 + 72) = v314;
          v315 = sub_1D5F62BFC(v197);
          swift_setDeallocating();
          sub_1D5E4F38C();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v316 = sub_1D7073500(v315);

          sub_1D6072298(&v392);
          sub_1D6A69574(v370, type metadata accessor for FormatAction);
          return v316;
        }

        if (v213 <= 6)
        {
          if (v213 != 5)
          {
LABEL_139:
            v269 = 1;
            goto LABEL_140;
          }
        }

        else
        {
          if (v213 == 7)
          {
            goto LABEL_121;
          }

          v269 = 0;
          if (v213 != 8)
          {
            goto LABEL_140;
          }
        }

LABEL_138:
        sub_1D6A69574(v212, type metadata accessor for FormatAction);
        goto LABEL_139;
      }

      v366 = *v74;
      v164 = MEMORY[0x1E69E6F90];
      sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v165 = swift_allocObject();
      v371 = xmmword_1D7270C10;
      v359 = v165;
      *(v165 + 16) = xmmword_1D7270C10;
      sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v164);
      v167 = v166;
      sub_1D5EA74B8();
      v361 = v168;
      v169 = *(*(v168 - 8) + 80);
      v363 = *(*(v168 - 8) + 72);
      v365 = v167;
      v170 = swift_allocObject();
      *(v170 + 16) = v371;
      *&v364 = (v169 + 32) & ~v169;
      v171 = v170 + v364;
      sub_1D6A64F0C(v85, v56, type metadata accessor for FormatAction);
      v172 = 0;
      v173 = 1 << swift_getEnumCaseMultiPayload();
      if ((v173 & 0x134) == 0)
      {
        if ((v173 & 0x83) == 0)
        {
          goto LABEL_46;
        }

        v172 = 1;
      }

      sub_1D6A69574(v56, type metadata accessor for FormatAction);
LABEL_46:
      v174 = type metadata accessor for FormatInspectionItem(0);
      v175 = *(v174 + 24);
      *(v171 + v175) = v172;
      v176 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      v177 = *(v176 - 8);
      v178 = *(v177 + 56);
      v179 = v177 + 56;
      v178(v171 + v175, 0, 1, v176);
      *v171 = xmmword_1D7318420;
      *(v171 + 16) = 0;
      *(v171 + 24) = 0;
      v180 = v171 + *(v174 + 28);
      *v180 = 0;
      *(v180 + 8) = 0;
      *(v180 + 16) = -1;
      v181 = *(v174 - 8);
      v182 = *(v181 + 56);
      v367 = (v181 + 56);
      *&v368 = v182;
      v182(v171, 0, 1, v174);
      v183 = v360;
      sub_1D6A64F0C(v370, v360, type metadata accessor for FormatAction);
      v184 = swift_getEnumCaseMultiPayload();
      v362 = v169;
      *&v371 = v178;
      *&v369 = v179;
      if (v184 <= 4)
      {
        if (v184 > 1)
        {
          if (v184 == 3)
          {
            goto LABEL_131;
          }

          goto LABEL_130;
        }

LABEL_119:
        sub_1D6A69574(v183, type metadata accessor for FormatAction);
        v267 = 0;
LABEL_132:
        v282 = v363;
        v283 = &v363[v171];
        v284 = *(v174 + 24);
        v363[v171 + v284] = v267;
        swift_storeEnumTagMultiPayload();
        (v371)(&v283[v284], 0, 1, v176);
        *v283 = 0xD000000000000010;
        *(v283 + 1) = 0x80000001D73E1EE0;
        *(v283 + 2) = 0;
        *(v283 + 3) = 0;
        v285 = &v283[*(v174 + 28)];
        *v285 = 0;
        *(v285 + 1) = 0;
        v285[16] = -1;
        (v368)(&v282[v171], 0, 1, v174);
        sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v170, &v392);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v286 = v176;
        v287 = v359;
        v359[7] = &type metadata for FormatInspectionGroup;
        v287[8] = &off_1F518B2C0;
        v288 = swift_allocObject();
        v287[4] = v288;
        v289 = v393;
        *(v288 + 16) = v392;
        *(v288 + 32) = v289;
        *(v288 + 48) = v394;
        v290 = v364;
        v291 = swift_allocObject();
        *(v291 + 16) = xmmword_1D7273AE0;
        v292 = (v291 + v290);
        v293 = *(v366 + 16);
        v294 = *(v366 + 24);
        v295 = *(v174 + 24);
        *(v292 + v295) = v366;
        swift_storeEnumTagMultiPayload();
        (v371)(v292 + v295, 0, 1, v286);
        *v292 = v293;
        v292[1] = v294;
        v292[2] = 0;
        v292[3] = 0;
        v296 = v292 + *(v174 + 28);
        *v296 = 0;
        *(v296 + 1) = 0;
        v296[16] = -1;
        (v368)(v292, 0, 1, v174);

        sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v291, &v399);
        swift_setDeallocating();
        sub_1D6A69574(v292, sub_1D5EA74B8);
        swift_deallocClassInstance();
        v287[12] = &type metadata for FormatInspectionGroup;
        v287[13] = &off_1F518B2C0;
        v297 = swift_allocObject();
        v287[9] = v297;
        v298 = v400;
        *(v297 + 16) = v399;
        *(v297 + 32) = v298;
        *(v297 + 48) = v401;
        v299 = sub_1D5F62BFC(v287);
        swift_setDeallocating();
        sub_1D5E4F38C();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v300 = sub_1D7073500(v299);

        sub_1D6A69574(v370, type metadata accessor for FormatAction);
        return v300;
      }

      if (v184 <= 6)
      {
        if (v184 != 5)
        {
LABEL_131:
          v267 = 1;
          goto LABEL_132;
        }
      }

      else
      {
        if (v184 == 7)
        {
          goto LABEL_119;
        }

        v267 = 0;
        if (v184 != 8)
        {
          goto LABEL_132;
        }
      }

LABEL_130:
      sub_1D6A69574(v183, type metadata accessor for FormatAction);
      goto LABEL_131;
    }

    if (!EnumCaseMultiPayload)
    {
      v129 = *(v74 + 1);
      v367 = *v74;
      *&v369 = v129;
      LODWORD(v368) = v74[16];
      v130 = MEMORY[0x1E69E6F90];
      sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_1D7273AE0;
      sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v130);
      sub_1D5EA74B8();
      v366 = v132;
      v133 = (*(*(v132 - 8) + 80) + 32) & ~*(*(v132 - 8) + 80);
      *&v371 = *(*(v132 - 8) + 72);
      v134 = swift_allocObject();
      *(v134 + 16) = xmmword_1D7270C10;
      v135 = v134 + v133;
      sub_1D6A64F0C(v85, v70, type metadata accessor for FormatAction);
      v136 = 0;
      v137 = 1 << swift_getEnumCaseMultiPayload();
      if ((v137 & 0x134) == 0)
      {
        if ((v137 & 0x83) == 0)
        {
          goto LABEL_28;
        }

        v136 = 1;
      }

      sub_1D6A69574(v70, type metadata accessor for FormatAction);
LABEL_28:
      v138 = type metadata accessor for FormatInspectionItem(0);
      v139 = *(v138 + 24);
      *(v135 + v139) = v136;
      v140 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      v141 = *(v140 - 8);
      v365 = *(v141 + 56);
      *&v364 = v141 + 56;
      (v365)(v135 + v139, 0, 1, v140);
      *v135 = xmmword_1D7318420;
      *(v135 + 16) = 0;
      *(v135 + 24) = 0;
      v142 = v135 + *(v138 + 28);
      *v142 = 0;
      *(v142 + 8) = 0;
      *(v142 + 16) = -1;
      v363 = *(*(v138 - 8) + 56);
      (v363)(v135, 0, 1, v138);
      v143 = v358;
      sub_1D6A64F0C(v85, v358, type metadata accessor for FormatAction);
      v144 = swift_getEnumCaseMultiPayload();
      if (v144 > 4)
      {
        if (v144 <= 6)
        {
          if (v144 != 5)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        if (v144 != 7)
        {
          v145 = 0;
          v271 = v371;
          if (v144 == 8)
          {
            sub_1D6A69574(v143, type metadata accessor for FormatAction);
            v145 = 1;
          }

          goto LABEL_125;
        }
      }

      else if (v144 > 1)
      {
        if (v144 == 3)
        {
LABEL_32:
          v145 = 1;
LABEL_124:
          v271 = v371;
LABEL_125:
          v275 = (v135 + v271);
          v276 = *(v138 + 24);
          *(v275 + v276) = v145;
          swift_storeEnumTagMultiPayload();
          (v365)(v275 + v276, 0, 1, v140);
          *v275 = 0xD000000000000010;
          v275[1] = 0x80000001D73E1EE0;
          v275[2] = 0;
          v275[3] = 0;
          v277 = v275 + *(v138 + 28);
          *v277 = 0;
          *(v277 + 1) = 0;
          v277[16] = -1;
          (v363)(v275, 0, 1, v138);
          sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v134, &v399);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(v131 + 56) = &type metadata for FormatInspectionGroup;
          *(v131 + 64) = &off_1F518B2C0;
          v278 = swift_allocObject();
          *(v131 + 32) = v278;
          v279 = v400;
          *(v278 + 16) = v399;
          *(v278 + 32) = v279;
          *(v278 + 48) = v401;
          v280 = sub_1D5F62BFC(v131);
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_1(v131 + 32);
          swift_deallocClassInstance();
          v281 = sub_1D7073500(v280);

          sub_1D6A69684(v369, v368);
          sub_1D6A69574(v370, type metadata accessor for FormatAction);
          return v281;
        }

LABEL_31:
        sub_1D6A69574(v143, type metadata accessor for FormatAction);
        goto LABEL_32;
      }

      sub_1D6A69574(v143, type metadata accessor for FormatAction);
      v145 = 0;
      goto LABEL_124;
    }

    v231 = *(v74 + 3);
    v394 = *(v74 + 2);
    v395 = v231;
    v396[0] = *(v74 + 4);
    *(v396 + 9) = *(v74 + 73);
    v232 = *(v74 + 1);
    v392 = *v74;
    v393 = v232;
    v233 = MEMORY[0x1E69E6F90];
    sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
    v234 = swift_allocObject();
    v369 = xmmword_1D7270C10;
    *(v234 + 16) = xmmword_1D7270C10;
    sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v233);
    sub_1D5EA74B8();
    *&v371 = v235;
    v236 = *(*(v235 - 8) + 72);
    v237 = (*(*(v235 - 8) + 80) + 32) & ~*(*(v235 - 8) + 80);
    v238 = swift_allocObject();
    *(v238 + 16) = v369;
    v239 = v238 + v237;
    sub_1D6A64F0C(v85, v63, type metadata accessor for FormatAction);
    v240 = 0;
    v241 = 1 << swift_getEnumCaseMultiPayload();
    if ((v241 & 0x134) == 0)
    {
      if ((v241 & 0x83) == 0)
      {
        goto LABEL_75;
      }

      v240 = 1;
    }

    sub_1D6A69574(v63, type metadata accessor for FormatAction);
LABEL_75:
    v242 = type metadata accessor for FormatInspectionItem(0);
    v243 = *(v242 + 24);
    *(v239 + v243) = v240;
    v244 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v245 = *(v244 - 8);
    *&v369 = *(v245 + 56);
    *&v368 = v245 + 56;
    (v369)(v239 + v243, 0, 1, v244);
    *v239 = xmmword_1D7318420;
    *(v239 + 16) = 0;
    *(v239 + 24) = 0;
    v246 = v239 + *(v242 + 28);
    *v246 = 0;
    *(v246 + 8) = 0;
    *(v246 + 16) = -1;
    v367 = *(*(v242 - 8) + 56);
    v367(v239, 0, 1, v242);
    v247 = v359;
    sub_1D6A64F0C(v370, v359, type metadata accessor for FormatAction);
    v248 = swift_getEnumCaseMultiPayload();
    if (v248 <= 4)
    {
      if (v248 > 1)
      {
        if (v248 == 3)
        {
          goto LABEL_153;
        }

        goto LABEL_152;
      }

LABEL_127:
      sub_1D6A69574(v247, type metadata accessor for FormatAction);
      v273 = 0;
LABEL_154:
      v334 = (v239 + v236);
      v335 = *(v242 + 24);
      *(v334 + v335) = v273;
      swift_storeEnumTagMultiPayload();
      (v369)(v334 + v335, 0, 1, v244);
      *v334 = 0xD000000000000010;
      v334[1] = 0x80000001D73E1EE0;
      v334[2] = 0;
      v334[3] = 0;
      v336 = v334 + *(v242 + 28);
      *v336 = 0;
      *(v336 + 1) = 0;
      v336[16] = -1;
      v367(v334, 0, 1, v242);
      sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v238, &v372);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v234 + 56) = &type metadata for FormatInspectionGroup;
      *(v234 + 64) = &off_1F518B2C0;
      v337 = swift_allocObject();
      *(v234 + 32) = v337;
      v338 = v373;
      *(v337 + 16) = v372;
      *(v337 + 32) = v338;
      *(v337 + 48) = v374;
      v405 = v417;
      v406 = v418;
      v407 = v419;
      v408 = v420;
      v401 = v413;
      v402 = v414;
      v403 = v415;
      v404 = v416;
      v399 = v411;
      v400 = v412;
      v382 = v394;
      v383 = v395;
      v384[0] = v396[0];
      *(v384 + 9) = *(v396 + 9);
      v380 = v392;
      v381 = v393;
      sub_1D6A695D4(&v392, &v387);
      v339 = sub_1D6AB3968(&v399, &v380);
      v389 = v382;
      v390 = v383;
      v391[0] = v384[0];
      *(v391 + 9) = *(v384 + 9);
      v387 = v380;
      v388 = v381;
      sub_1D5E3AAD0(&v387, &qword_1EC891240);
      *(v234 + 96) = &type metadata for FormatInspection;
      *(v234 + 104) = &off_1F51E3FD0;
      *(v234 + 72) = v339;
      v340 = sub_1D5F62BFC(v234);
      swift_setDeallocating();
      sub_1D5E4F38C();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v341 = sub_1D7073500(v340);

      sub_1D6A69630(&v392);
      sub_1D6A69574(v370, type metadata accessor for FormatAction);
      return v341;
    }

    if (v248 <= 6)
    {
      if (v248 != 5)
      {
LABEL_153:
        v273 = 1;
        goto LABEL_154;
      }
    }

    else
    {
      if (v248 == 7)
      {
        goto LABEL_127;
      }

      v273 = 0;
      if (v248 != 8)
      {
        goto LABEL_154;
      }
    }

LABEL_152:
    sub_1D6A69574(v247, type metadata accessor for FormatAction);
    goto LABEL_153;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      sub_1D6A69574(v74, type metadata accessor for FormatAction);
      v185 = MEMORY[0x1E69E6F90];
      sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      *&v371 = swift_allocObject();
      *(v371 + 16) = xmmword_1D7273AE0;
      sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v185);
      sub_1D5EA74B8();
      *&v369 = v186;
      v107 = *(*(v186 - 8) + 72);
      v187 = (*(*(v186 - 8) + 80) + 32) & ~*(*(v186 - 8) + 80);
      v188 = swift_allocObject();
      *(v188 + 16) = xmmword_1D7270C10;
      *&v368 = v188;
      v110 = v188 + v187;
      v189 = v78;
      v190 = v356;
      sub_1D6A64F0C(v189, v356, type metadata accessor for FormatAction);
      v113 = 0;
      v191 = 1 << swift_getEnumCaseMultiPayload();
      if ((v191 & 0x134) == 0)
      {
        if ((v191 & 0x83) == 0)
        {
          goto LABEL_22;
        }

        v113 = 1;
      }

      sub_1D6A69574(v190, type metadata accessor for FormatAction);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 8)
    {
      sub_1D6A69574(v74, type metadata accessor for FormatAction);
      v105 = MEMORY[0x1E69E6F90];
      sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      *&v371 = swift_allocObject();
      *(v371 + 16) = xmmword_1D7273AE0;
      sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v105);
      sub_1D5EA74B8();
      *&v369 = v106;
      v107 = *(*(v106 - 8) + 72);
      v108 = (*(*(v106 - 8) + 80) + 32) & ~*(*(v106 - 8) + 80);
      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_1D7270C10;
      *&v368 = v109;
      v110 = v109 + v108;
      v111 = v78;
      v112 = v357;
      sub_1D6A64F0C(v111, v357, type metadata accessor for FormatAction);
      v113 = 0;
      v114 = 1 << swift_getEnumCaseMultiPayload();
      if ((v114 & 0x134) == 0)
      {
        if ((v114 & 0x83) == 0)
        {
LABEL_22:
          v115 = type metadata accessor for FormatInspectionItem(0);
          v116 = *(v115 + 24);
          *(v110 + v116) = v113;
          v117 = type metadata accessor for FormatInspectionItem.Value(0);
          swift_storeEnumTagMultiPayload();
          v367 = *(*(v117 - 8) + 56);
          v367(v110 + v116, 0, 1, v117);
          *v110 = xmmword_1D7318420;
          *(v110 + 16) = 0;
          *(v110 + 24) = 0;
          v118 = v110 + *(v115 + 28);
          *v118 = 0;
          *(v118 + 8) = 0;
          *(v118 + 16) = -1;
          v119 = *(*(v115 - 8) + 56);
          v119(v110, 0, 1, v115);
          v120 = (v110 + v107);
          v121 = sub_1D6B608F0();
          v122 = *(v115 + 24);
          *(v120 + v122) = v121 & 1;
          swift_storeEnumTagMultiPayload();
          v367(v110 + v107 + v122, 0, 1, v117);
          *v120 = 0xD000000000000010;
          v120[1] = 0x80000001D73E1EE0;
          v120[2] = 0;
          v120[3] = 0;
          v123 = v110 + v107 + *(v115 + 28);
          *v123 = 0;
          *(v123 + 8) = 0;
          *(v123 + 16) = -1;
          v119(v110 + v107, 0, 1, v115);
          sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v368, &v399);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v124 = v371;
          *(v371 + 56) = &type metadata for FormatInspectionGroup;
          *(v124 + 64) = &off_1F518B2C0;
          v125 = swift_allocObject();
          *(v124 + 32) = v125;
          v126 = v400;
          *(v125 + 16) = v399;
          *(v125 + 32) = v126;
          *(v125 + 48) = v401;
          v127 = sub_1D5F62BFC(v124);
          swift_setDeallocating();
          __swift_destroy_boxed_opaque_existential_1(v124 + 32);
          swift_deallocClassInstance();
          v128 = sub_1D7073500(v127);

          sub_1D6A69574(v370, type metadata accessor for FormatAction);
          return v128;
        }

        v113 = 1;
      }

      sub_1D6A69574(v112, type metadata accessor for FormatAction);
      goto LABEL_22;
    }

    v214 = MEMORY[0x1E69E6F90];
    sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
    v215 = swift_allocObject();
    *(v215 + 16) = xmmword_1D7273AE0;
    sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v214);
    sub_1D5EA74B8();
    *&v371 = v216;
    v217 = *(*(v216 - 8) + 72);
    v218 = (*(*(v216 - 8) + 80) + 32) & ~*(*(v216 - 8) + 80);
    v219 = swift_allocObject();
    *(v219 + 16) = xmmword_1D7270C10;
    v220 = v219 + v218;
    v221 = v352;
    sub_1D6A64F0C(v85, v352, type metadata accessor for FormatAction);
    v222 = 0;
    v223 = 1 << swift_getEnumCaseMultiPayload();
    if ((v223 & 0x134) == 0)
    {
      if ((v223 & 0x83) == 0)
      {
        goto LABEL_67;
      }

      v222 = 1;
    }

    sub_1D6A69574(v221, type metadata accessor for FormatAction);
LABEL_67:
    v224 = type metadata accessor for FormatInspectionItem(0);
    v225 = *(v224 + 24);
    *(v220 + v225) = v222;
    v226 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v227 = *(v226 - 8);
    *&v369 = *(v227 + 56);
    *&v368 = v227 + 56;
    (v369)(v220 + v225, 0, 1, v226);
    *v220 = xmmword_1D7318420;
    *(v220 + 16) = 0;
    *(v220 + 24) = 0;
    v228 = v220 + *(v224 + 28);
    *v228 = 0;
    *(v228 + 8) = 0;
    *(v228 + 16) = -1;
    v367 = *(*(v224 - 8) + 56);
    v367(v220, 0, 1, v224);
    v229 = v362;
    sub_1D6A64F0C(v370, v362, type metadata accessor for FormatAction);
    v230 = swift_getEnumCaseMultiPayload();
    if (v230 <= 4)
    {
      if (v230 > 1)
      {
        if (v230 == 3)
        {
          goto LABEL_143;
        }

        goto LABEL_142;
      }

LABEL_122:
      sub_1D6A69574(v229, type metadata accessor for FormatAction);
      v270 = 0;
LABEL_144:
      v317 = (v220 + v217);
      v318 = *(v224 + 24);
      *(v317 + v318) = v270;
      swift_storeEnumTagMultiPayload();
      (v369)(v317 + v318, 0, 1, v226);
      *v317 = 0xD000000000000010;
      v317[1] = 0x80000001D73E1EE0;
      v317[2] = 0;
      v317[3] = 0;
      v319 = v317 + *(v224 + 28);
      *v319 = 0;
      *(v319 + 1) = 0;
      v319[16] = -1;
      v367(v317, 0, 1, v224);
      sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v219, &v399);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v215 + 56) = &type metadata for FormatInspectionGroup;
      *(v215 + 64) = &off_1F518B2C0;
      v320 = swift_allocObject();
      *(v215 + 32) = v320;
      v321 = v400;
      *(v320 + 16) = v399;
      *(v320 + 32) = v321;
      *(v320 + 48) = v401;
      v322 = sub_1D5F62BFC(v215);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(v215 + 32);
      swift_deallocClassInstance();
      v323 = sub_1D7073500(v322);

      sub_1D6A69574(v370, type metadata accessor for FormatAction);
      return v323;
    }

    if (v230 <= 6)
    {
      if (v230 != 5)
      {
LABEL_143:
        v270 = 1;
        goto LABEL_144;
      }
    }

    else
    {
      if (v230 == 7)
      {
        goto LABEL_122;
      }

      v270 = 0;
      if (v230 != 8)
      {
        goto LABEL_144;
      }
    }

LABEL_142:
    sub_1D6A69574(v229, type metadata accessor for FormatAction);
    goto LABEL_143;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1D6A64EA4(v74, v369, type metadata accessor for FormatPurchaseData);
    v146 = MEMORY[0x1E69E6F90];
    sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
    v147 = swift_allocObject();
    v364 = xmmword_1D7270C10;
    *(v147 + 16) = xmmword_1D7270C10;
    sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v146);
    sub_1D5EA74B8();
    *&v371 = v148;
    v149 = *(*(v148 - 8) + 72);
    v150 = (*(*(v148 - 8) + 80) + 32) & ~*(*(v148 - 8) + 80);
    v151 = swift_allocObject();
    *(v151 + 16) = v364;
    v152 = v151 + v150;
    v153 = v355;
    sub_1D6A64F0C(v85, v355, type metadata accessor for FormatAction);
    v154 = 0;
    v155 = 1 << swift_getEnumCaseMultiPayload();
    if ((v155 & 0x134) == 0)
    {
      if ((v155 & 0x83) == 0)
      {
        goto LABEL_38;
      }

      v154 = 1;
    }

    sub_1D6A69574(v153, type metadata accessor for FormatAction);
LABEL_38:
    v156 = type metadata accessor for FormatInspectionItem(0);
    v157 = *(v156 + 24);
    *(v152 + v157) = v154;
    v158 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v159 = *(v158 - 8);
    v160 = *(v159 + 56);
    v363 = (v159 + 56);
    *&v364 = v160;
    v160(v152 + v157, 0, 1, v158);
    *v152 = xmmword_1D7318420;
    *(v152 + 16) = 0;
    *(v152 + 24) = 0;
    v161 = v152 + *(v156 + 28);
    *v161 = 0;
    *(v161 + 8) = 0;
    *(v161 + 16) = -1;
    v362 = *(*(v156 - 8) + 56);
    (v362)(v152, 0, 1, v156);
    v162 = v365;
    sub_1D6A64F0C(v370, v365, type metadata accessor for FormatAction);
    v163 = swift_getEnumCaseMultiPayload();
    if (v163 <= 4)
    {
      if (v163 > 1)
      {
        if (v163 == 3)
        {
          goto LABEL_149;
        }

        goto LABEL_148;
      }

LABEL_126:
      sub_1D6A69574(v162, type metadata accessor for FormatAction);
      v272 = 0;
LABEL_150:
      v324 = (v152 + v149);
      v325 = *(v156 + 24);
      *(v324 + v325) = v272;
      swift_storeEnumTagMultiPayload();
      (v364)(v324 + v325, 0, 1, v158);
      *v324 = 0xD000000000000010;
      v324[1] = 0x80000001D73E1EE0;
      v324[2] = 0;
      v324[3] = 0;
      v326 = v324 + *(v156 + 28);
      *v326 = 0;
      *(v326 + 1) = 0;
      v326[16] = -1;
      (v362)(v324, 0, 1, v156);
      sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v151, &v392);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v147 + 56) = &type metadata for FormatInspectionGroup;
      *(v147 + 64) = &off_1F518B2C0;
      v327 = swift_allocObject();
      *(v147 + 32) = v327;
      v328 = v393;
      *(v327 + 16) = v392;
      *(v327 + 32) = v328;
      *(v327 + 48) = v394;
      v405 = v417;
      v406 = v418;
      v407 = v419;
      v408 = v420;
      v401 = v413;
      v402 = v414;
      v403 = v415;
      v404 = v416;
      v399 = v411;
      v400 = v412;
      v329 = v369;
      v330 = v368;
      sub_1D6A64F0C(v369, v368, type metadata accessor for FormatPurchaseData);
      (*(v366 + 56))(v330, 0, 1, v367);
      v331 = sub_1D6BC8CB8(&v399, v330);
      sub_1D6A69574(v330, sub_1D6A69480);
      *(v147 + 96) = &type metadata for FormatInspection;
      *(v147 + 104) = &off_1F51E3FD0;
      *(v147 + 72) = v331;
      v332 = sub_1D5F62BFC(v147);
      swift_setDeallocating();
      sub_1D5E4F38C();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v333 = sub_1D7073500(v332);

      sub_1D6A69574(v329, type metadata accessor for FormatPurchaseData);
      sub_1D6A69574(v370, type metadata accessor for FormatAction);
      return v333;
    }

    if (v163 <= 6)
    {
      if (v163 != 5)
      {
LABEL_149:
        v272 = 1;
        goto LABEL_150;
      }
    }

    else
    {
      if (v163 == 7)
      {
        goto LABEL_126;
      }

      v272 = 0;
      if (v163 != 8)
      {
        goto LABEL_150;
      }
    }

LABEL_148:
    sub_1D6A69574(v162, type metadata accessor for FormatAction);
    goto LABEL_149;
  }

  LODWORD(v371) = *v74;
  v249 = MEMORY[0x1E69E6F90];
  sub_1D6A694B4(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
  v250 = swift_allocObject();
  v368 = xmmword_1D7270C10;
  *(v250 + 16) = xmmword_1D7270C10;
  sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v249);
  sub_1D5EA74B8();
  *&v369 = v251;
  v252 = *(*(v251 - 8) + 72);
  v253 = (*(*(v251 - 8) + 80) + 32) & ~*(*(v251 - 8) + 80);
  v254 = swift_allocObject();
  *(v254 + 16) = v368;
  v255 = v254 + v253;
  v256 = v354;
  sub_1D6A64F0C(v85, v354, type metadata accessor for FormatAction);
  v257 = 0;
  v258 = 1 << swift_getEnumCaseMultiPayload();
  if ((v258 & 0x134) == 0)
  {
    if ((v258 & 0x83) == 0)
    {
      goto LABEL_83;
    }

    v257 = 1;
  }

  sub_1D6A69574(v256, type metadata accessor for FormatAction);
LABEL_83:
  v259 = type metadata accessor for FormatInspectionItem(0);
  v260 = *(v259 + 24);
  *(v255 + v260) = v257;
  v261 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v262 = *(v261 - 8);
  v263 = *(v262 + 56);
  v367 = (v262 + 56);
  *&v368 = v263;
  v263(v255 + v260, 0, 1, v261);
  *v255 = xmmword_1D7318420;
  *(v255 + 16) = 0;
  *(v255 + 24) = 0;
  v264 = v255 + *(v259 + 28);
  *v264 = 0;
  *(v264 + 8) = 0;
  *(v264 + 16) = -1;
  v366 = *(*(v259 - 8) + 56);
  (v366)(v255, 0, 1, v259);
  v265 = v364;
  sub_1D6A64F0C(v370, v364, type metadata accessor for FormatAction);
  v266 = swift_getEnumCaseMultiPayload();
  if (v266 > 4)
  {
    if (v266 <= 6)
    {
      if (v266 != 5)
      {
LABEL_157:
        v274 = 1;
        goto LABEL_158;
      }
    }

    else
    {
      if (v266 == 7)
      {
        goto LABEL_128;
      }

      v274 = 0;
      if (v266 != 8)
      {
        goto LABEL_158;
      }
    }

LABEL_156:
    sub_1D6A69574(v265, type metadata accessor for FormatAction);
    goto LABEL_157;
  }

  if (v266 > 1)
  {
    if (v266 == 3)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

LABEL_128:
  sub_1D6A69574(v265, type metadata accessor for FormatAction);
  v274 = 0;
LABEL_158:
  v342 = (v255 + v252);
  v343 = *(v259 + 24);
  *(v342 + v343) = v274;
  swift_storeEnumTagMultiPayload();
  (v368)(v342 + v343, 0, 1, v261);
  *v342 = 0xD000000000000010;
  v342[1] = 0x80000001D73E1EE0;
  v342[2] = 0;
  v342[3] = 0;
  v344 = v342 + *(v259 + 28);
  *v344 = 0;
  *(v344 + 1) = 0;
  v344[16] = -1;
  (v366)(v342, 0, 1, v259);
  sub_1D6795150(0x6E6F69746341, 0xE600000000000000, 0, 0, v254, &v392);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v250 + 56) = &type metadata for FormatInspectionGroup;
  *(v250 + 64) = &off_1F518B2C0;
  v345 = swift_allocObject();
  *(v250 + 32) = v345;
  v346 = v393;
  *(v345 + 16) = v392;
  *(v345 + 32) = v346;
  *(v345 + 48) = v394;
  v405 = v417;
  v406 = v418;
  v407 = v419;
  v408 = v420;
  v401 = v413;
  v402 = v414;
  v403 = v415;
  v404 = v416;
  v399 = v411;
  v400 = v412;
  LOBYTE(v387) = v371;
  v347 = sub_1D71A6C84(&v399, &v387);
  *(v250 + 96) = &type metadata for FormatInspection;
  *(v250 + 104) = &off_1F51E3FD0;
  *(v250 + 72) = v347;
  v348 = sub_1D5F62BFC(v250);
  swift_setDeallocating();
  sub_1D5E4F38C();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v349 = sub_1D7073500(v348);

  sub_1D6A69574(v370, type metadata accessor for FormatAction);
  return v349;
}

void *sub_1D6A687D0(__int128 *a1, uint64_t a2)
{
  sub_1D6A649A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v112 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v111 = &v109 - v9;
  v126 = type metadata accessor for FormatButtonNodeDataAction();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v10);
  v110 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v109 - v14;
  sub_1D6A69418(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v123 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v122 = &v109 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v109 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v109 - v28;
  sub_1D6A6944C(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v125 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v109 - v35;
  v37 = a1[7];
  v152 = a1[6];
  v153 = v37;
  v154 = a1[8];
  v155 = *(a1 + 18);
  v38 = a1[3];
  v148 = a1[2];
  v149 = v38;
  v39 = a1[5];
  v150 = a1[4];
  v151 = v39;
  v40 = a1[1];
  v146 = *a1;
  v147 = v40;
  v41 = MEMORY[0x1E69E6F90];
  sub_1D6A694B4(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v127 = xmmword_1D7270C10;
  *(inited + 16) = xmmword_1D7270C10;
  sub_1D6A694B4(0, &qword_1EC880490, sub_1D5EA74B8, v41);
  v44 = v43;
  sub_1D5EA74B8();
  v129 = v45;
  v46 = *(*(v45 - 8) + 80);
  v47 = (v46 + 32) & ~v46;
  v128 = *(*(v45 - 8) + 72);
  v116 = v47 + 2 * v128;
  v117 = v46;
  v120 = v44;
  v48 = swift_allocObject();
  *(v48 + 16) = v127;
  v119 = v47;
  v49 = (v48 + v47);
  v140 = v152;
  v141 = v153;
  v142 = v154;
  v143 = v155;
  v136 = v148;
  v137 = v149;
  v138 = v150;
  v139 = v151;
  v134 = v146;
  v135 = v147;
  v133 = a2;
  sub_1D6A64F0C(a2, v29, sub_1D6A69418);
  v50 = type metadata accessor for FormatButtonNodeData();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v130 = v51 + 48;
  v131 = v52;
  v53 = v52(v29, 1, v50);
  v118 = inited;
  if (v53 == 1)
  {
    sub_1D6A69574(v29, sub_1D6A69418);
    v54 = 1;
  }

  else
  {
    sub_1D6A64F0C(v29, v15, type metadata accessor for FormatButtonNodeDataAction);
    sub_1D6A69574(v29, type metadata accessor for FormatButtonNodeData);
    sub_1D6A64F0C(v15, v36, type metadata accessor for FormatAction);
    sub_1D6A69574(v15, type metadata accessor for FormatButtonNodeDataAction);
    v54 = 0;
  }

  v55 = type metadata accessor for FormatAction();
  v56 = *(v55 - 8);
  v114 = *(v56 + 56);
  v115 = v55;
  v113 = v56 + 56;
  v114(v36, v54, 1);
  v57 = sub_1D6A64F74(&v134, v36);
  v59 = v58;
  v61 = v60;
  sub_1D6A69574(v36, sub_1D6A6944C);
  sub_1D711AD20(0x6E6F69746341, 0xE600000000000000, v57, v59, v61, v49);
  v62 = type metadata accessor for FormatInspectionItem(0);
  v63 = *(*(v62 - 8) + 56);
  v132 = v62;
  v63(v49, 0, 1);
  sub_1D6A64F0C(v133, v25, sub_1D6A69418);
  if (v131(v25, 1, v50) == 1)
  {
    sub_1D6A69574(v25, sub_1D6A69418);
    v64 = 0;
    v65 = 0;
    v66 = v118;
  }

  else
  {
    v67 = v110;
    sub_1D6A64F0C(v25, v110, type metadata accessor for FormatButtonNodeDataAction);
    sub_1D6A69574(v25, type metadata accessor for FormatButtonNodeData);
    v68 = *(v67 + *(v126 + 20));
    v69 = v68;
    sub_1D6A69574(v67, type metadata accessor for FormatButtonNodeDataAction);
    v66 = v118;
    if (v68)
    {
      v70 = [v69 string];

      v71 = sub_1D726207C();
      v73 = v72;

      v65 = v73;
      v64 = v71;
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }
  }

  v74 = v128;
  sub_1D711F844(1701667150, 0xE400000000000000, v64, v65, &v49[v128]);
  (v63)(&v49[v74], 0, 1, v132);
  sub_1D6795150(0x6974634120706154, 0xEA00000000006E6FLL, 0, 0, v48, v144);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v66[7] = &type metadata for FormatInspectionGroup;
  v66[8] = &off_1F518B2C0;
  v75 = swift_allocObject();
  v66[4] = v75;
  *(v75 + 48) = v145;
  v76 = v144[1];
  *(v75 + 16) = v144[0];
  *(v75 + 32) = v76;
  v77 = swift_allocObject();
  *(v77 + 16) = v127;
  v78 = (v77 + v119);
  v79 = v122;
  sub_1D6A64F0C(v133, v122, sub_1D6A69418);
  v80 = v131(v79, 1, v50);
  v121 = v50;
  if (v80 == 1)
  {
    v81 = v63;
    v82 = sub_1D6A69418;
    v83 = v79;
LABEL_13:
    sub_1D6A69574(v83, v82);
    v85 = 1;
    goto LABEL_15;
  }

  v84 = v111;
  sub_1D6A64F0C(v79 + *(v50 + 20), v111, sub_1D6A649A0);
  sub_1D6A69574(v79, type metadata accessor for FormatButtonNodeData);
  v81 = v63;
  if ((*(v124 + 48))(v84, 1, v126) == 1)
  {
    v82 = sub_1D6A649A0;
    v83 = v84;
    goto LABEL_13;
  }

  sub_1D6A64F0C(v84, v125, type metadata accessor for FormatAction);
  sub_1D6A69574(v84, type metadata accessor for FormatButtonNodeDataAction);
  v85 = 0;
LABEL_15:
  v86 = v125;
  (v114)(v125, v85, 1, v115);
  v87 = sub_1D6A64F74(&v146, v86);
  v89 = v88;
  v91 = v90;
  sub_1D6A69574(v86, sub_1D6A6944C);
  sub_1D711AD20(0x6E6F69746341, 0xE600000000000000, v87, v89, v91, v78);
  v81(v78, 0, 1, v132);
  v92 = v123;
  sub_1D6A64F0C(v133, v123, sub_1D6A69418);
  v93 = v121;
  if (v131(v92, 1, v121) == 1)
  {
    sub_1D6A69574(v92, sub_1D6A69418);
LABEL_21:
    v103 = 0;
    v102 = 0;
    goto LABEL_22;
  }

  v94 = v112;
  sub_1D6A64F0C(v92 + *(v93 + 20), v112, sub_1D6A649A0);
  sub_1D6A69574(v92, type metadata accessor for FormatButtonNodeData);
  v95 = v126;
  if ((*(v124 + 48))(v94, 1, v126) == 1)
  {
    sub_1D6A69574(v94, sub_1D6A649A0);
    goto LABEL_21;
  }

  v96 = *(v94 + *(v95 + 20));
  v97 = v96;
  sub_1D6A69574(v94, type metadata accessor for FormatButtonNodeDataAction);
  if (!v96)
  {
    goto LABEL_21;
  }

  v98 = [v97 string];

  v99 = sub_1D726207C();
  v101 = v100;

  v102 = v101;
  v103 = v99;
LABEL_22:
  v104 = v128;
  sub_1D711F844(1701667150, 0xE400000000000000, v103, v102, &v78[v128]);
  v81(&v78[v104], 0, 1, v132);
  sub_1D6795150(0xD000000000000011, 0x80000001D73E1EC0, 0, 0, v77, &v134);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v66[12] = &type metadata for FormatInspectionGroup;
  v66[13] = &off_1F518B2C0;
  v105 = swift_allocObject();
  v66[9] = v105;
  *(v105 + 48) = v136;
  v106 = v135;
  *(v105 + 16) = v134;
  *(v105 + 32) = v106;
  v107 = sub_1D7073500(v66);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  return v107;
}

void sub_1D6A694B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6A69574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6A69684(void *a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_1D6A69698(a1, a2);
  }
}

void sub_1D6A69698(void *a1, unsigned __int8 a2)
{
  v2 = a2 >> 4;
  if (v2 <= 4)
  {
    if ((a2 >> 4) <= 1u)
    {
      if (!(a2 >> 4))
      {
        goto LABEL_18;
      }
    }

    else if (v2 != 2)
    {
      if (v2 != 3)
      {
        if (v2 != 4)
        {
          return;
        }

        goto LABEL_15;
      }

LABEL_18:
      swift_unknownObjectRelease();
      return;
    }

    return;
  }

  if ((a2 >> 4) <= 7u)
  {
    if (v2 != 5 && v2 != 6 && v2 != 7)
    {
      return;
    }

LABEL_15:

    return;
  }

  if (v2 == 8 || v2 == 9 || v2 == 10)
  {
    goto LABEL_15;
  }
}

uint64_t FeedJournalGroupResult.kind.getter@<X0>(char *a1@<X8>)
{
  sub_1D5C034F0(v1 + 128, v6);
  v3 = v7;
  if (v7 <= 2u)
  {
    if (!v7)
    {
      *a1 = 0;
      return __swift_destroy_boxed_opaque_existential_1(v6);
    }

    if (v7 != 1)
    {
      v3 = 2;
    }

LABEL_8:
    *a1 = v3;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  if (v7 > 4u)
  {
    if (v7 == 5)
    {
      result = sub_1D5BC3420(v6);
      v5 = 5;
    }

    else
    {
      result = sub_1D5BC3420(v6);
      v5 = 6;
    }
  }

  else
  {
    if (v7 == 3)
    {

      v3 = 3;
      goto LABEL_8;
    }

    result = sub_1D5BC3420(v6);
    v5 = 4;
  }

  *a1 = v5;
  return result;
}

uint64_t FeedJournalGroupResultOutput.reason.getter()
{
  sub_1D5C034F0(v0, v3);
  if (v4 <= 2u)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    return 0;
  }

  else if (v4 == 3)
  {
    v1 = v3[6];
    __swift_destroy_boxed_opaque_existential_1(v3);
    return v1;
  }

  else
  {
    return v3[0];
  }
}

uint64_t FeedJournalGroupResultOutput.score.getter()
{
  sub_1D5C034F0(v0, v3);
  if (v5 <= 2u)
  {
    v1 = v4;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v3);
    return v1;
  }

  if (v5 - 4 >= 3)
  {
    v1 = v4;

    goto LABEL_6;
  }

  sub_1D5BC3420(v3);
  return 0;
}

void sub_1D6A69914(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = FeedDatabaseGroup.identifier.getter();
  v10 = v9;
  v11 = sub_1D5D0D80C();
  v13 = v12;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000025, 0x80000001D73E1F20);
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();

  *(a3 + 128) = 0;
  *(a3 + 136) = 0xE000000000000000;
  *(a3 + 192) = 6;
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  *(a3 + 72) = MEMORY[0x1E69E7CC0];
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0;
  *(a3 + 224) = a4;
  *(a3 + 232) = sub_1D6A69FB8;
  *(a3 + 240) = a1;
}

uint64_t FeedJournalGroupResultOutput.group.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5C034F0(v1, v4);
  if (v5 >= 3u)
  {
    if (v5 - 4 < 3)
    {
      result = sub_1D5BC3420(v4);
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }
  }

  sub_1D5B63F14(v4, v6);
  return sub_1D5B63F14(v6, a1);
}

uint64_t FeedJournalGroupResult.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedJournalGroupResult.configIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FeedJournalGroupResult.settings.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 121);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 41) = v7;
}

unint64_t FeedJournalGroupResult.embeddedJournalEntry.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[26];
  v4 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1D614E398(v2, v3);
}

uint64_t sub_1D6A69BCC(uint64_t a1, void *a2)
{
  result = FeedJournalGroupResultOutput.name.getter();
  if (!v4)
  {
    v6 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    return (*(*(v5 + 8) + 40))(v6);
  }

  return result;
}

uint64_t FeedJournalGroupResultOutput.name.getter()
{
  sub_1D5C034F0(v0, &v5);
  if (v8 >= 3u)
  {
    if (v8 - 4 < 3)
    {
      sub_1D5BC3420(&v5);
      v5 = 0u;
      v6 = 0u;
      v7 = 0;
      goto LABEL_7;
    }
  }

  sub_1D5B63F14(&v5, v9);
  sub_1D5B63F14(v9, &v5);
  if (*(&v6 + 1))
  {
    v1 = *(&v6 + 1);
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(&v5, *(&v6 + 1));
    v3 = (*(*(*(v2 + 8) + 8) + 16))(v1);
    __swift_destroy_boxed_opaque_existential_1(&v5);
    return v3;
  }

LABEL_7:
  sub_1D68370E0(&v5);
  return 0;
}

uint64_t sub_1D6A69D18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(*(*(v2 + 8) + 8) + 16))(v1);
}

uint64_t sub_1D6A69D64()
{
  sub_1D725C4CC();
  sub_1D725C73C();

  if (v2)
  {
    sub_1D5BF4D9C();
    v1 = sub_1D7263A0C();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FeedJournalGroupResult.repooling.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_1D5C034F0(v1 + 128, v6);
  if (v7 <= 2u)
  {
    sub_1D5B63F14(v6, v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 88))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    if (v7 == 3)
    {

      result = __swift_destroy_boxed_opaque_existential_1(v6);
    }

    else
    {
      result = sub_1D5BC3420(v6);
    }

    *a1 = 3;
  }

  return result;
}

uint64_t sub_1D6A69EF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 65))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 64);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6A69F30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6A69F80(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_1D6A69FC0(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) > 3)
  {
    if (v1 > 5)
    {
      if (v1 != 6)
      {
        return 0x676E6964616F6CLL;
      }

      v3 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v2 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    if (!v1)
    {
      v2 = a1;
    }

    if (v1 <= 1)
    {
      v3 = v2;
    }

    else
    {
      v3 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    }
  }

  v4 = *(v3 + 16);

  return v4;
}

uint64_t sub_1D6A6A058()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed29DebugJournalSectionDescriptorOyxG(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

uint64_t FormatLayoutViewFactory.__allocating_init(formatLayoutViewRenderer:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FormatLayoutViewFactory.init(formatLayoutViewRenderer:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

id FormatLayoutViewFactory.create(layoutResult:traitCollection:)(_OWORD *a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for FeedItemSupplementaryAttributes();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v55[0] = *a1;
  v55[1] = v8;
  *v56 = a1[2];
  *&v56[9] = *(a1 + 41);
  v9 = v55[0];
  v10 = v8;
  v38 = type metadata accessor for FormatLayoutView();
  v11 = [objc_allocWithZone(v38) initWithFrame_];
  v12 = *(*&v56[16] + 16);
  if (v12)
  {
    v13 = (*&v56[16] + 32);
    do
    {
      v14 = *v13++;
      *&v47 = v14;

      sub_1D6A6A4CC(&v47, v55, v11);

      --v12;
    }

    while (v12);
  }

  v15 = *(*&v56[8] + 16);
  if (v15)
  {
    v16 = *&v56[8] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v4 + 72);
    v36 = v11;
    v37 = v3;
    v35 = v17;
    do
    {
      sub_1D6A6AD00(v16, v7, type metadata accessor for FeedItemSupplementaryAttributes);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v18 = *(v7 + 1);
        v47 = *v7;
        v48 = v18;
        v19 = *(v7 + 3);
        v49 = *(v7 + 2);
        v50 = v19;
        v20 = *(v7 + 7);
        v53 = *(v7 + 6);
        v54 = v20;
        v21 = *(v7 + 5);
        v51 = *(v7 + 4);
        v52 = v21;
        v22 = *(v7 + 16);
        v23 = v11;
        v24 = OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
        v25 = *(v22 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
        swift_beginAccess();
        v26 = [objc_allocWithZone(v38) initWithFrame_];
        [v23 addSubview_];
        v27 = *(v40 + 24);
        v42 = *(v40 + 16);
        ObjectType = swift_getObjectType();
        v46[0] = v47;
        v46[1] = v48;
        v46[2] = v49;
        v46[3] = v50;
        v46[7] = v54;
        v46[5] = v52;
        v46[6] = v53;
        v46[4] = v51;
        v28 = *(v22 + v24);
        v29 = *(v22 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData + 8);
        v30 = *(v22 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData + 16);
        v43 = *(v22 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData);
        v44 = v29;
        v45 = v30;
        v31 = *(v27 + 80);
        sub_1D5EBC314(v43, v29);
        v31(v46, v28, v26, v39, &v43, nullsub_1, 0, &type metadata for FormatSupplementary, &type metadata for FormatLayoutContext, &protocol witness table for FormatLayoutContext, ObjectType, v27);
        sub_1D5EBC358(v43, v44);
        v32 = *(v22 + 32);
        if (v32)
        {
          LOBYTE(v32) = *(v32 + 48);
        }

        v17 = v35;
        [v26 setClipsToBounds_];

        sub_1D6729D5C(&v47);
        v11 = v36;
      }

      else
      {
        sub_1D6A6AD68(v7, type metadata accessor for FeedItemSupplementaryAttributes);
      }

      v16 += v17;
      --v15;
    }

    while (v15);
  }

  return v11;
}

uint64_t sub_1D6A6A4CC(void *a1, double *a2, void *a3)
{
  v61 = a3;
  v58 = type metadata accessor for FormatMicaSectionDecorationItem();
  MEMORY[0x1EEE9AC00](v58, v5);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D725ED6C();
  v59 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725F3FC();
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725EE2C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D725EB9C();
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1 >> 61;
  if (v24 > 2)
  {
    if (v24 == 3)
    {
      v42 = swift_projectBox();
      v43 = v59;
      v44 = *(v59 + 16);
      v45 = v56;
      v44(v9, v42, v56);
      v46 = [objc_allocWithZone(sub_1D725ED8C()) initWithFrame_];
      v47 = [objc_allocWithZone(sub_1D725C9AC()) init];
      v63 = v45;
      v64 = MEMORY[0x1E69D8388];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
      v44(boxed_opaque_existential_1, v9, v45);
      sub_1D725C98C();
      sub_1D725ED7C();
      [v61 addSubview_];

      return (*(v43 + 8))(v9, v45);
    }

    else if (v24 == 4)
    {
      v31 = swift_projectBox();
      v32 = v60;
      sub_1D6A6AD00(v31, v60, type metadata accessor for FormatMicaSectionDecorationItem);
      v33 = [objc_allocWithZone(type metadata accessor for FormatMicaSectionDecorationView()) initWithFrame_];
      v34 = [objc_allocWithZone(sub_1D725C9AC()) init];
      v63 = v58;
      v64 = sub_1D5BBDC40();
      v35 = __swift_allocate_boxed_opaque_existential_1(v62);
      sub_1D6A6AD00(v32, v35, type metadata accessor for FormatMicaSectionDecorationItem);
      sub_1D725C98C();
      sub_1D688C558(v34);
      [v61 addSubview_];

      return sub_1D6A6AD68(v32, type metadata accessor for FormatMicaSectionDecorationItem);
    }

    else
    {
      v62[0] = *(*((*a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 128);

      sub_1D6A6A4CC(v62, a2, v61);
    }
  }

  else if (v24)
  {
    if (v24 == 1)
    {
      v25 = swift_projectBox();
      v26 = *(v15 + 16);
      v26(v18, v25, v14);
      v27 = [objc_allocWithZone(sub_1D725EE4C()) initWithFrame_];
      v28 = [objc_allocWithZone(sub_1D725C9AC()) init];
      v63 = v14;
      v64 = MEMORY[0x1E69D83E0];
      v29 = __swift_allocate_boxed_opaque_existential_1(v62);
      v26(v29, v18, v14);
      sub_1D725C98C();
      sub_1D725EE3C();
      [v61 addSubview_];

      return (*(v15 + 8))(v18, v14);
    }

    else
    {
      v49 = swift_projectBox();
      v50 = v57;
      v51 = *(v57 + 16);
      v51(v13, v49, v10);
      v52 = [objc_allocWithZone(sub_1D725F41C()) initWithFrame_];
      v53 = [objc_allocWithZone(sub_1D725C9AC()) init];
      v63 = v10;
      v64 = MEMORY[0x1E69D8688];
      v54 = __swift_allocate_boxed_opaque_existential_1(v62);
      v51(v54, v13, v10);
      sub_1D725C98C();
      sub_1D725F40C();
      [v61 addSubview_];

      return (*(v50 + 8))(v13, v10);
    }
  }

  else
  {
    v36 = v21;
    v37 = swift_projectBox();
    v38 = *(v36 + 16);
    v38(v23, v37, v19);
    v39 = [objc_allocWithZone(sub_1D725EBBC()) initWithFrame_];
    v40 = [objc_allocWithZone(sub_1D725C9AC()) init];
    v63 = v19;
    v64 = MEMORY[0x1E69D81D8];
    v41 = __swift_allocate_boxed_opaque_existential_1(v62);
    v38(v41, v23, v19);
    sub_1D725C98C();
    sub_1D725EBAC();
    [v61 addSubview_];

    return (*(v36 + 8))(v23, v19);
  }
}

uint64_t FormatLayoutViewFactory.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6A6AD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A6AD68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeadlineViewLayout.Options.init(traits:thumbnailAspectRatio:maxTitleLines:contentSizeCategory:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for HeadlineViewLayout.Options(0);
  result = sub_1D6A6BC8C(a2, a5 + v9[5]);
  *(a5 + v9[6]) = a3;
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t sub_1D6A6AF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6A6C12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6A6AF34(uint64_t a1)
{
  v2 = sub_1D5BD4124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A6AF70(uint64_t a1)
{
  v2 = sub_1D5BD4124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HeadlineViewLayout.Attributes.encode(to:)(void *a1)
{
  sub_1D5BEDBA8(0, &qword_1EC890AC8, sub_1D5BD4124, &type metadata for HeadlineViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v22 - v7;
  v9 = v1[2];
  v36 = v1[3];
  v37 = v9;
  v10 = v1[4];
  v34 = v1[5];
  v35 = v10;
  v11 = v1[6];
  v32 = v1[7];
  v33 = v11;
  v12 = v1[8];
  v30 = v1[9];
  v31 = v12;
  v13 = v1[10];
  v28 = v1[11];
  v29 = v13;
  v14 = v1[12];
  v26 = v1[13];
  v27 = v14;
  v15 = v1[14];
  v24 = v1[15];
  v25 = v15;
  v16 = *(v1 + 32);
  v17 = *(v1 + 33);
  v18 = v1[17];
  v22 = v1[18];
  v23 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BD4124();
  sub_1D7264B5C();
  v19 = *v1;
  v41 = v1[1];
  v40 = v19;
  v39 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA9FC(&qword_1EC8801E8, type metadata accessor for CGRect);
  v20 = v38;
  sub_1D726443C();
  if (v20)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v38 = v16;
  v41 = v36;
  v40 = v37;
  v39 = 1;
  sub_1D726443C();
  v41 = v34;
  v40 = v35;
  v39 = 2;
  sub_1D726443C();
  v41 = v32;
  v40 = v33;
  v39 = 3;
  sub_1D726443C();
  v41 = v30;
  v40 = v31;
  v39 = 4;
  sub_1D726443C();
  v41 = v28;
  v40 = v29;
  v39 = 5;
  sub_1D726443C();
  v41 = v26;
  v40 = v27;
  v39 = 6;
  sub_1D726443C();
  v41 = v24;
  v40 = v25;
  v39 = 7;
  sub_1D726443C();
  *&v40 = v38;
  v39 = 8;
  type metadata accessor for UIRectCorner(0);
  sub_1D5BEA9FC(&qword_1EC8801F0, type metadata accessor for UIRectCorner);
  sub_1D726443C();
  *&v40 = v17;
  v39 = 9;
  sub_1D5B578C4();
  sub_1D726443C();
  v41 = v22;
  v40 = v23;
  v39 = 10;
  sub_1D726443C();
  return (*(v5 + 8))(0, v4);
}

uint64_t sub_1D6A6B4FC(uint64_t a1)
{
  v2 = sub_1D6A6C4AC();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D6A6B550()
{
  sub_1D5C0B958();

  return sub_1D725A24C();
}

uint64_t HeadlineViewLayout.Context.styler.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 24);

  return sub_1D5B68374(v3, a1);
}

uint64_t sub_1D6A6B644@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = [*(a2 + 40) title];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D726207C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = (*(v6 + 40))(v9, v11, v5, v6);

  *a3 = v12;
  return result;
}

uint64_t sub_1D6A6B700@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = [*(a2 + 40) sourceName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D726207C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = (*(v6 + 64))(v9, v11, v5, v6);

  *a3 = v12;
  return result;
}

uint64_t sub_1D6A6B7BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = [*(a2 + 40) publishDate];
  if (v12)
  {
    v13 = v12;
    sub_1D72588BC();

    v14 = sub_1D725891C();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  }

  else
  {
    v15 = sub_1D725891C();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  v16 = (*(v11 + 56))(v9, v10, v11);
  result = sub_1D5C0AEA0(v9, sub_1D5B5B2A0);
  *a3 = v16;
  return result;
}

uint64_t static HeadlineViewLayout.Context.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for HeadlineViewLayout.Context(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_1D72646CC();
}

uint64_t sub_1D6A6B9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D6A6BA24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 20);

  return a2(v5, a3);
}

id HeadlineViewLayout.Options.contentSizeCategory.getter()
{
  v1 = *(v0 + *(type metadata accessor for HeadlineViewLayout.Options(0) + 28));

  return v1;
}

uint64_t sub_1D6A6BB48(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FeedHeadline(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D6A6BBDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FeedHeadline(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D5C0B080(v4, a1);
}

uint64_t sub_1D6A6BC5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D70DCE88(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D6A6BC8C(uint64_t a1, uint64_t a2)
{
  sub_1D5B7B5E0(0, &qword_1EDF3BF68, MEMORY[0x1E69D7358], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6A6BD24()
{
  result = qword_1EC890AD0;
  if (!qword_1EC890AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890AD0);
  }

  return result;
}

unint64_t sub_1D6A6BD7C()
{
  result = qword_1EC890AD8;
  if (!qword_1EC890AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890AD8);
  }

  return result;
}

unint64_t sub_1D6A6BDD4()
{
  result = qword_1EC890AE0;
  if (!qword_1EC890AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890AE0);
  }

  return result;
}

unint64_t sub_1D6A6BE2C()
{
  result = qword_1EC890AE8;
  if (!qword_1EC890AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890AE8);
  }

  return result;
}

unint64_t sub_1D6A6BE84()
{
  result = qword_1EC890AF0;
  if (!qword_1EC890AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890AF0);
  }

  return result;
}

void sub_1D6A6BED8()
{
  type metadata accessor for GroupLayoutKey();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedHeadline(319);
    if (v1 <= 0x3F)
    {
      sub_1D6A6C028();
      if (v2 <= 0x3F)
      {
        sub_1D5C0B6D8(319);
        if (v3 <= 0x3F)
        {
          sub_1D5B7B5E0(319, &qword_1EDF34758, sub_1D5C0B6D8, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D5B7B5E0(319, qword_1EDF34768, sub_1D5B58D88, type metadata accessor for CachedText);
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

unint64_t sub_1D6A6C028()
{
  result = qword_1EDF27C08;
  if (!qword_1EDF27C08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF27C08);
  }

  return result;
}

unint64_t sub_1D6A6C0D8()
{
  result = qword_1EC890AF8;
  if (!qword_1EC890AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890AF8);
  }

  return result;
}

uint64_t sub_1D6A6C12C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x62614C656C746974 && a2 == 0xEF656D6172466C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73E1FA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73E1FC0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73E1FE0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73E2000 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73E2020 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656956616964656DLL && a2 == 0xEE00656D61724677 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73E2040 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D73E2060 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D73E2080 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1D6A6C4AC()
{
  result = qword_1EC890B00;
  if (!qword_1EC890B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B00);
  }

  return result;
}

uint64_t sub_1D6A6C500@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = (*(v7 + 48))(v5, v4, v6, v7);
  *a2 = result;
  return result;
}

id sub_1D6A6C570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D70DCE58(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t FormatItemNodeLayoutAttributes.resizingGroupIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t FormatItemNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void *FormatItemNodeLayoutAttributes.__allocating_init(layoutAttributes:style:resizing:resizingGroupIdentifier:zIndex:visibility:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  result = swift_allocObject();
  v15 = *a3;
  v16 = *a7;
  result[2] = a1;
  result[3] = a2;
  result[4] = v15;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = v16;
  return result;
}

void *FormatItemNodeLayoutAttributes.init(layoutAttributes:style:resizing:resizingGroupIdentifier:zIndex:visibility:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a3;
  v9 = *a7;
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v8;
  v7[5] = a4;
  v7[6] = a5;
  v7[7] = a6;
  v7[8] = v9;
  return v7;
}

uint64_t FormatItemNodeLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + 16) + 48);

  return v1;
}

uint64_t FormatItemNodeLayoutAttributes.itemIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 64);

  return v1;
}

uint64_t FormatItemNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 80);

  return v1;
}

uint64_t FormatItemNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 96);

  return v1;
}

unint64_t sub_1D6A6C7A4()
{
  v1 = *v0;
  v2 = 0x656C797473;
  v3 = 0xD000000000000017;
  v4 = 0x7865646E497ALL;
  if (v1 != 4)
  {
    v4 = 0x696C696269736976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x676E697A69736572;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1D6A6C868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6A6D6F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6A6C890(uint64_t a1)
{
  v2 = sub_1D6A6CCB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A6C8CC(uint64_t a1)
{
  v2 = sub_1D6A6CCB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 64));
  return v0;
}

uint64_t FormatItemNodeLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t FormatItemNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6A6D19C(0, &qword_1EC890B08, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A6CCB8();
  sub_1D7264B5C();
  v13 = v3[2];
  HIBYTE(v12) = 0;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6A6D53C(&qword_1EDF28600, 255, type metadata accessor for FormatLayoutAttributes);
  sub_1D726443C();
  if (!v2)
  {
    v13 = v3[3];
    HIBYTE(v12) = 1;
    type metadata accessor for FormatItemNodeStyle(0);
    sub_1D6A6D53C(&qword_1EDF0FC10, 255, type metadata accessor for FormatItemNodeStyle);
    sub_1D72643BC();
    v13 = v3[4];
    HIBYTE(v12) = 2;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v13) = 3;
    sub_1D726437C();
    LOBYTE(v13) = 4;
    sub_1D726442C();
    v13 = v3[8];
    HIBYTE(v12) = 5;
    sub_1D5EB1500(v13);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v13);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6A6CCB8()
{
  result = qword_1EC890B10;
  if (!qword_1EC890B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B10);
  }

  return result;
}

uint64_t FormatItemNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatItemNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatItemNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6A6D19C(0, &qword_1EC890B18, MEMORY[0x1E69E6F48]);
  v17 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A6CCB8();
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v14 = a1;
  }

  else
  {
    v9 = v5;
    type metadata accessor for FormatLayoutAttributes();
    v18 = 0;
    sub_1D6A6D53C(&qword_1EDF285F8, 255, type metadata accessor for FormatLayoutAttributes);
    v10 = v17;
    sub_1D726431C();
    v1[2] = v19;
    type metadata accessor for FormatItemNodeStyle(0);
    v18 = 1;
    sub_1D6A6D53C(qword_1EDF2C518, 255, type metadata accessor for FormatItemNodeStyle);
    sub_1D726427C();
    v1[3] = v19;
    v18 = 2;
    sub_1D5F8FC50();
    sub_1D726427C();
    v1[4] = v19;
    LOBYTE(v19) = 3;
    v11 = sub_1D726422C();
    v16 = a1;
    v1[5] = v11;
    v1[6] = v12;
    LOBYTE(v19) = 4;
    v1[7] = sub_1D72642FC();
    v18 = 5;
    sub_1D5DF6A0C();
    sub_1D726431C();
    (*(v9 + 8))(v8, v10);
    v1[8] = v19;
    v14 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v1;
}

void sub_1D6A6D19C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6A6CCB8();
    v7 = a3(a1, &type metadata for FormatItemNodeLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *sub_1D6A6D200@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatItemNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_1D6A6D27C@<X0>(void *a1@<X8>)
{
  result = FormatItemNodeLayoutAttributes.flipRightToLeft(bounds:)();
  *a1 = result;
  return result;
}

void *FormatItemNodeLayoutAttributes.flipRightToLeft(bounds:)()
{
  v1 = v0;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D6A6D53C(&qword_1EDF28608, 255, type metadata accessor for FormatLayoutAttributes);
  sub_1D725A24C();
  v2 = v0[3];
  v3 = v1[4];
  v5 = v1[5];
  v4 = v1[6];
  v7 = v1[7];
  v6 = v1[8];
  v8 = swift_allocObject();
  v8[2] = v10;
  v8[3] = v2;
  v8[4] = v3;
  v8[5] = v5;
  v8[6] = v4;
  v8[7] = v7;
  v8[8] = v6;

  sub_1D5EB1500(v6);
  return v8;
}

uint64_t sub_1D6A6D53C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D6A6D5EC()
{
  result = qword_1EC890B40;
  if (!qword_1EC890B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B40);
  }

  return result;
}

unint64_t sub_1D6A6D644()
{
  result = qword_1EC890B48;
  if (!qword_1EC890B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B48);
  }

  return result;
}

unint64_t sub_1D6A6D69C()
{
  result = qword_1EC890B50;
  if (!qword_1EC890B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B50);
  }

  return result;
}

uint64_t sub_1D6A6D6F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C46E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73E20D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
  {

    return 5;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

BOOL sub_1D6A6D8FC(uint64_t a1)
{
  type metadata accessor for FormatArrangementComponentCurationRule();

  v2 = 0;
  do
  {
    v3 = v2;
    v4 = sub_1D726279C();
    if (v3 == v4)
    {
      break;
    }

    v5 = sub_1D726277C();
    sub_1D726271C();
    if (v5)
    {

      if (__OFADD__(v3, 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1D7263DBC();

      swift_unknownObjectRelease();
      if (__OFADD__(v3, 1))
      {
LABEL_9:
        __break(1u);
        break;
      }
    }

    v6 = sub_1D6D94CD0(a1);

    v2 = v3 + 1;
  }

  while ((v6 & 1) != 0);

  return v3 == v4;
}

uint64_t FormatArrangementComponentCuration.rules.getter()
{
  sub_1D5D2F2BC();
}

uint64_t sub_1D6A6DA54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FormatArrangementComponentCuration();
  *a1 = sub_1D5D2F2BC();
}

uint64_t FormatArrangementComponentCuration.rules.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static FormatArrangementComponentCuration.== infix(_:_:)()
{
  type metadata accessor for FormatArrangementComponentCurationRule();

  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for FormatCodingEmptyArrayStrategy();
  swift_getWitnessTable();
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v0 = static FormatCodingDefault<>.== infix(_:_:)();

  return v0 & 1;
}

uint64_t sub_1D6A6DC78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D72646CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D6A6DD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6A6DC78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D6A6DD34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C00104();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D6A6DD64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6A6DDB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangementComponentCuration.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v14[0] = *(a2 + 24);
  v14[1] = v4;
  type metadata accessor for FormatArrangementComponentCuration.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v14 - v7;
  v9 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B5C();
  v16 = v9;
  type metadata accessor for FormatArrangementComponentCurationRule();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = type metadata accessor for FormatCodingEmptyArrayStrategy();
  WitnessTable = swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v16, v12, v5, v10, WitnessTable);

  return (*(v15 + 8))(v8, v5);
}

uint64_t FormatArrangementComponentCuration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  type metadata accessor for FormatArrangementComponentCuration.CodingKeys();
  swift_getWitnessTable();
  v16 = sub_1D726435C();
  v14 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v4);
  v6 = &v13 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B0C();
  if (!v2)
  {
    v8 = v14;
    v7 = v15;
    type metadata accessor for FormatArrangementComponentCurationRule();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v9 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    WitnessTable = swift_getWitnessTable();
    v11 = v16;
    KeyedDecodingContainer.decode<A>(_:forKey:)(v9, WitnessTable, &v17);
    (*(v8 + 8))(v6, v11);
    *v7 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6A6E2A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed21FormatCompilerOptionsV8NewsroomV12EnvironmentsVSg(uint64_t a1)
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

uint64_t sub_1D6A6E384(void *a1)
{
  sub_1D6A6EA58(0, &qword_1EC890B68, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v19 = v1[3];
  v20 = v9;
  v10 = v1[4];
  v17 = v1[5];
  v18 = v10;
  v11 = v1[6];
  v15 = v1[7];
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A6E99C();
  sub_1D7264B5C();
  LOBYTE(v22) = 0;
  v12 = v21;
  sub_1D72643FC();
  if (!v12)
  {
    v22 = v20;
    v23 = v19;
    v24 = v18;
    v25 = v17;
    v26 = v16;
    v27 = v15;
    v28 = 1;
    sub_1D5E4B8D0(v20, v19);
    sub_1D5FC6610();
    sub_1D72643BC();
    sub_1D5E4B984(v22, v23);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6A6E558@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6A6EA58(0, &qword_1EC890B58, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A6E99C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25[0]) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v14 = v11;
  v33 = 1;
  sub_1D5C8F1E8();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v15 = v30;
  v16 = v31;
  v22 = *(&v32 + 1);
  v23 = v32;
  *&v24[0] = v14;
  *(&v24[0] + 1) = v13;
  v24[1] = v30;
  v24[2] = v31;
  v24[3] = v32;
  v17 = v24[0];
  v18 = v30;
  v19 = v32;
  a2[2] = v31;
  a2[3] = v19;
  *a2 = v17;
  a2[1] = v18;
  sub_1D6A6E9F0(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25[0] = v14;
  v25[1] = v13;
  v26 = v15;
  v27 = v16;
  v28 = v23;
  v29 = v22;
  return sub_1D6A6EA28(v25);
}

uint64_t sub_1D6A6E7DC()
{
  if (*v0)
  {
    return 0x6D6F6F727377656ELL;
  }

  else
  {
    return 0x6567616B636170;
  }
}

uint64_t sub_1D6A6E818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616B636170 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F6F727377656ELL && a2 == 0xE800000000000000)
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

uint64_t sub_1D6A6E8F4(uint64_t a1)
{
  v2 = sub_1D6A6E99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A6E930(uint64_t a1)
{
  v2 = sub_1D6A6E99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6A6E99C()
{
  result = qword_1EC890B60;
  if (!qword_1EC890B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B60);
  }

  return result;
}

void sub_1D6A6EA58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6A6E99C();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceSnapshotManifestTheme.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6A6EAD0()
{
  result = qword_1EC890B70;
  if (!qword_1EC890B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B70);
  }

  return result;
}

unint64_t sub_1D6A6EB28()
{
  result = qword_1EC890B78;
  if (!qword_1EC890B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B78);
  }

  return result;
}

unint64_t sub_1D6A6EB80()
{
  result = qword_1EC890B80;
  if (!qword_1EC890B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890B80);
  }

  return result;
}

unint64_t sub_1D6A6EBD4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = (a2 + 40 * result);
  v5 = v4[5];
  v6 = v4[6];
  v7 = v4[7];
  v8 = v4[8];
  *a3 = v4[4];
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
}

unint64_t sub_1D6A6EC48@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for FormatInspectionItem(0) - 8);
      return sub_1D6A7D9C0(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3, type metadata accessor for FormatInspectionItem);
    }
  }

  __break(1u);
  return result;
}

char *sub_1D6A6ED08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D69972F4(0, v5, 0);
    v6 = 32;
    v7 = v29;
    do
    {

      v9 = sub_1D70732C4(v8);

      v11 = *(v29 + 16);
      v10 = *(v29 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D69972F4((v10 > 1), v11 + 1, 1);
      }

      *(v29 + 16) = v11 + 1;
      *(v29 + 8 * v11 + 32) = v9;
      v6 += 8;
      --v5;
    }

    while (v5);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v25 = v4;
  v13 = *(v7 + 16);
  if (!v13)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_27:

    v24 = *(v25 + 360);

    return v24(a1, v15, a3, a4, 0);
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (v14 < *(v7 + 16))
  {
    v16 = *(v7 + 32 + 8 * v14);
    v17 = *(v16 + 16);
    v18 = *(v15 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_31;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= *(v15 + 3) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v20 = v18 + v17;
      }

      else
      {
        v20 = v18;
      }

      result = sub_1D698BB14(result, v20, 1, v15);
      v15 = result;
      if (*(v16 + 16))
      {
LABEL_22:
        if ((*(v15 + 3) >> 1) - *(v15 + 2) < v17)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v21 = *(v15 + 2);
          v22 = __OFADD__(v21, v17);
          v23 = v21 + v17;
          if (v22)
          {
            goto LABEL_34;
          }

          *(v15 + 2) = v23;
        }

        goto LABEL_11;
      }
    }

    if (v17)
    {
      goto LABEL_32;
    }

LABEL_11:
    if (v13 == ++v14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1D6A6EF68(uint64_t a1)
{
  sub_1D6A7D8EC(0, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v60 - v4;
  v84 = type metadata accessor for FormatInspectionItem.Value(0);
  v6 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v7);
  v82 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatInspectionItem(0);
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v77 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v85 = &v60 - v14;

  result = sub_1D614F964();
  v16 = result;
  if (!*(result + 16))
  {

    return a1;
  }

  v17 = *(a1 + 16);
  if (!v17)
  {
LABEL_56:
    v60 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  v18 = 0;
  v64 = a1 + 32;
  v72 = result + 32;
  v83 = (v6 + 48);
  v60 = MEMORY[0x1E69E7CC0];
  v19 = v85;
  v81 = v9;
  v68 = result;
  v63 = v17;
  v80 = v5;
LABEL_4:
  v20 = v18;
LABEL_5:
  if (v20 < v17)
  {
    if (__OFADD__(v20, 1))
    {
      goto LABEL_62;
    }

    v67 = v20 + 1;
    v21 = (v64 + 40 * v20);
    v22 = v21[1];
    v62 = *v21;
    v23 = v21[3];
    v61 = v21[2];
    v24 = v21[4];
    v25 = *(v24 + 16);
    v65 = v22;

    v66 = v23;

    v71 = v24;

    v70 = v25;
    if (!v25)
    {
      v79 = MEMORY[0x1E69E7CC0];
      goto LABEL_45;
    }

    v26 = 0;
    v79 = MEMORY[0x1E69E7CC0];
    v27 = v71;
    while (1)
    {
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        break;
      }

      v76 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v28 = *(v69 + 72);
      v78 = v26;
      v75 = v28;
      sub_1D6A7D9C0(v27 + v76 + v28 * v26, v19, type metadata accessor for FormatInspectionItem);
      v73 = *(v16 + 16);
      if (!v73)
      {
        goto LABEL_36;
      }

      v29 = *(*v72 + 16);
      if (!v29)
      {
        goto LABEL_36;
      }

      v30 = 1;
      do
      {
        v74 = v30;

        v32 = 0;
        v33 = (v31 + 40);
        v34 = v29 - 1;
        v35 = 1;
        v86 = v31;
        while (1)
        {
          if ((v35 & 1) == 0)
          {
            if (v34 == v32)
            {
              break;
            }

            goto LABEL_15;
          }

          v37 = *(v33 - 1);
          v36 = *v33;
          if (*(v19 + 8))
          {
            v89 = sub_1D726210C();
            v90 = v38;
            v87 = v37;
            v88 = v36;
            sub_1D5BF4D9C();

            v19 = v85;
            v39 = sub_1D7263ABC();

            if (v39)
            {
              goto LABEL_24;
            }

            if (!*(v19 + 24))
            {
              goto LABEL_27;
            }
          }

          else
          {

            if (!*(v19 + 24))
            {
              goto LABEL_27;
            }
          }

          v89 = sub_1D726210C();
          v90 = v40;
          v87 = v37;
          v88 = v36;
          sub_1D5BF4D9C();
          v41 = sub_1D7263ABC();

          if (v41)
          {
LABEL_24:

LABEL_25:
            if (v34 == v32)
            {

              v16 = v68;
              goto LABEL_36;
            }

            v35 = 1;
            v31 = v86;
            goto LABEL_16;
          }

LABEL_27:
          sub_1D6A7DC54(v19 + *(v9 + 24), v5, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
          if ((*v83)(v5, 1, v84) == 1)
          {

            sub_1D6A7DB74(v5, &qword_1EC88D758, type metadata accessor for FormatInspectionItem.Value, MEMORY[0x1E69E6720], sub_1D6A7D8EC);
          }

          else
          {
            v42 = v82;
            sub_1D6A7DAA4(v5, v82, type metadata accessor for FormatInspectionItem.Value);
            v89 = 0;
            v90 = 0xE000000000000000;
            sub_1D7263F9C();
            v43 = sub_1D726210C();
            v45 = v44;

            v89 = v43;
            v90 = v45;
            v19 = v85;
            v87 = v37;
            v88 = v36;
            sub_1D5BF4D9C();
            v46 = sub_1D7263ABC();
            v47 = v42;
            v9 = v81;
            sub_1D6A7DB0C(v47, type metadata accessor for FormatInspectionItem.Value);

            v5 = v80;

            if (v46)
            {
              goto LABEL_25;
            }
          }

          v31 = v86;
          if (v34 == v32)
          {
            break;
          }

LABEL_15:
          v35 = 0;
LABEL_16:
          ++v32;
          v33 += 2;
          if (v32 >= *(v31 + 16))
          {
            __break(1u);
            goto LABEL_56;
          }
        }

        if (v74 == v73)
        {
          result = sub_1D6A7DB0C(v19, type metadata accessor for FormatInspectionItem);
          v16 = v68;
          goto LABEL_41;
        }

        v16 = v68;
        if (v74 >= *(v68 + 16))
        {
          goto LABEL_60;
        }

        v30 = v74 + 1;
        v29 = *(*(v72 + 8 * v74) + 16);
      }

      while (v29);
LABEL_36:
      sub_1D6A7DAA4(v19, v77, type metadata accessor for FormatInspectionItem);
      v48 = v79;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v48;
      v91 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6997AF0(0, *(v48 + 16) + 1, 1);
        v50 = v91;
      }

      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1D6997AF0(v51 > 1, v52 + 1, 1);
        v50 = v91;
      }

      *(v50 + 16) = v52 + 1;
      v79 = v50;
      result = sub_1D6A7DAA4(v77, v50 + v76 + v52 * v75, type metadata accessor for FormatInspectionItem);
LABEL_41:
      v26 = v78 + 1;
      v27 = v71;
      if (v78 + 1 == v70)
      {
LABEL_45:
        if (*(v79 + 16))
        {
          v53 = sub_1D5F62998(v79);

          sub_1D6795150(v62, v65, v61, v66, v53, v92);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D698BB14(0, *(v60 + 2) + 1, 1, v60);
            v60 = result;
          }

          v18 = v67;
          v55 = *(v60 + 2);
          v54 = *(v60 + 3);
          if (v55 >= v54 >> 1)
          {
            result = sub_1D698BB14((v54 > 1), v55 + 1, 1, v60);
            v18 = v67;
            v60 = result;
          }

          v56 = v60;
          *(v60 + 2) = v55 + 1;
          v57 = &v56[40 * v55];
          v58 = v92[0];
          v59 = v92[1];
          *(v57 + 8) = v93;
          *(v57 + 2) = v58;
          *(v57 + 3) = v59;
          v17 = v63;
          if (v18 == v63)
          {
LABEL_57:

            return v60;
          }

          goto LABEL_4;
        }

        v20 = v67;
        v17 = v63;
        if (v67 == v63)
        {
          goto LABEL_57;
        }

        goto LABEL_5;
      }
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}