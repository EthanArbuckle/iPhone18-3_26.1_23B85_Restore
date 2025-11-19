uint64_t sub_1D5DCDC38()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCDC80()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCDCBC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DCDD1C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DCDD54()
{
  v1 = type metadata accessor for WebEmbedImageRequest();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = sub_1D72585BC();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);

  v5 = v0 + v2 + v1[8];
  v6 = type metadata accessor for WebEmbedDataVisualization();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v7 = type metadata accessor for GenericDataVisualization();
      v4(v5 + *(v7 + 20), v3);
    }

    else
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DCDF58()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCDF98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DCE044(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DCE18C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DCE1DC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5DCE248()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCE280(uint64_t a1, uint64_t a2)
{
  sub_1D6F371F0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5DCE2E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DCE3A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DCE3E0()
{
  v1 = *(type metadata accessor for FormatAdMetricsData() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_1D726045C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1D5DCE4B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCE4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DCE5BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725891C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DCE678@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DCE684(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5DCE6C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DCE6D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5DCE724(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1D5DCE774(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1D5DCE7C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 64) = v3;
  return result;
}

unint64_t sub_1D5DCE808@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = v3;
  a2[1] = v2;
  return sub_1D620757C(v3, v2);
}

unint64_t sub_1D5DCE818(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_1D620757C(*a1, v4);
  result = sub_1D6207594(v5, v6);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1D5DCE86C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DCE8BC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1D5DCE914()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCE95C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DCE994()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCE9D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCEA0C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCEB84()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCEBDC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCEC1C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DCEC5C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DCEC94()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DCECCC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DCED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5CEDE8C(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_1D5CEDE8C(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

void sub_1D5DCEE70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5CEDE8C(0, qword_1EDF2A950, type metadata accessor for FormatTransformKnobs);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_1D5CEDE8C(0, qword_1EDF35230, type metadata accessor for FeedPersonalizationClusteringRules);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 44);

    v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D5DCF10C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

__n128 sub_1D5DCF154(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D5DCF168()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DCF204(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D5DCF25C()
{

  sub_1D6F793CC(v0);
}

__n128 sub_1D5DCF2AC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DCF2B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCF2F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DCF340()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DCF378()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCF3B0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DCF3F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCF43C@<X0>(uint64_t *a1@<X8>)
{
  result = FeedItem.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5DCF4D4()
{
  v1 = type metadata accessor for GroupLayoutContext();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DCF700@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DCF750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D5DCF7A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5DCF7F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DCF840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1D5DCF888(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_1D5DCF8CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCF904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DCF9C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D72585BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DCFA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5C3C04C(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DCFB60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5C3C04C(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DCFC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DCFCF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D72585BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DCFDA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5C3C04C(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5DCFE88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D5C3C04C(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DCFF60()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCFFA4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DCFFEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD0024()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD005C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DD0108(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DD01BC()
{
  v1 = type metadata accessor for FeedClusteringRequest(0);
  v68 = *(*(v1 - 1) + 80);
  v66 = *(*(v1 - 1) + 64);

  v69 = v0;
  v67 = (v68 + 24) & ~v68;
  v2 = v0 + v67;

  swift_unknownObjectRelease();

  v3 = v0 + v67 + v1[10];
  v4 = type metadata accessor for FeedClusteringOptions(0);
  v5 = *(*(v4 - 1) + 48);
  v70 = v5;
  if (!v5(v3, 1, v4))
  {
    v6 = v4[5];
    v7 = sub_1D72593CC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }

    v10 = v4[7];
    if (!v9(v3 + v10, 1, v7))
    {
      (*(v8 + 8))(v3 + v10, v7);
    }

    v11 = v3 + v4[8];
    v12 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      (*(v8 + 8))(v11 + *(v12 + 24), v7);
    }

    v13 = v4[10];
    if (!v9(v3 + v13, 1, v7))
    {
      (*(v8 + 8))(v3 + v13, v7);
    }

    v14 = v4[12];
    v5 = v70;
    if (!v9(v3 + v14, 1, v7))
    {
      (*(v8 + 8))(v3 + v14, v7);
    }

    v15 = v4[14];
    if (!v9(v3 + v15, 1, v7))
    {
      (*(v8 + 8))(v3 + v15, v7);
    }

    v16 = v4[17];
    if (!v9(v3 + v16, 1, v7))
    {
      (*(v8 + 8))(v3 + v16, v7);
    }

    if (*(v3 + v4[18] + 32) != 1)
    {
    }

    v17 = v4[20];
    v18 = sub_1D725935C();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v3 + v17, 1, v18))
    {
      (*(v19 + 8))(v3 + v17, v18);
    }
  }

  v20 = v2 + v1[11];
  if (!v5(v20, 1, v4))
  {
    v21 = v4[5];
    v22 = sub_1D72593CC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (!v24(v20 + v21, 1, v22))
    {
      (*(v23 + 8))(v20 + v21, v22);
    }

    v25 = v4[7];
    if (!v24(v20 + v25, 1, v22))
    {
      (*(v23 + 8))(v20 + v25, v22);
    }

    v26 = v20 + v4[8];
    v27 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
    {

      (*(v23 + 8))(v26 + *(v27 + 24), v22);
    }

    v28 = v4[10];
    if (!v24(v20 + v28, 1, v22))
    {
      (*(v23 + 8))(v20 + v28, v22);
    }

    v29 = v4[12];
    v5 = v70;
    if (!v24(v20 + v29, 1, v22))
    {
      (*(v23 + 8))(v20 + v29, v22);
    }

    v30 = v4[14];
    if (!v24(v20 + v30, 1, v22))
    {
      (*(v23 + 8))(v20 + v30, v22);
    }

    v31 = v4[17];
    if (!v24(v20 + v31, 1, v22))
    {
      (*(v23 + 8))(v20 + v31, v22);
    }

    if (*(v20 + v4[18] + 32) != 1)
    {
    }

    v32 = v4[20];
    v33 = sub_1D725935C();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v20 + v32, 1, v33))
    {
      (*(v34 + 8))(v20 + v32, v33);
    }
  }

  v35 = v2 + v1[13];
  if (!v5(v35, 1, v4))
  {
    v36 = v4[5];
    v37 = sub_1D72593CC();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (!v39(v35 + v36, 1, v37))
    {
      (*(v38 + 8))(v35 + v36, v37);
    }

    v40 = v4[7];
    if (!v39(v35 + v40, 1, v37))
    {
      (*(v38 + 8))(v35 + v40, v37);
    }

    v41 = v35 + v4[8];
    v42 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      (*(v38 + 8))(v41 + *(v42 + 24), v37);
    }

    v43 = v4[10];
    if (!v39(v35 + v43, 1, v37))
    {
      (*(v38 + 8))(v35 + v43, v37);
    }

    v44 = v4[12];
    v5 = v70;
    if (!v39(v35 + v44, 1, v37))
    {
      (*(v38 + 8))(v35 + v44, v37);
    }

    v45 = v4[14];
    if (!v39(v35 + v45, 1, v37))
    {
      (*(v38 + 8))(v35 + v45, v37);
    }

    v46 = v4[17];
    if (!v39(v35 + v46, 1, v37))
    {
      (*(v38 + 8))(v35 + v46, v37);
    }

    if (*(v35 + v4[18] + 32) != 1)
    {
    }

    v47 = v4[20];
    v48 = sub_1D725935C();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v35 + v47, 1, v48))
    {
      (*(v49 + 8))(v35 + v47, v48);
    }
  }

  v50 = v2 + v1[14];
  if (!v5(v50, 1, v4))
  {
    v51 = v4[5];
    v52 = sub_1D72593CC();
    v53 = *(v52 - 8);
    v54 = *(v53 + 48);
    if (!v54(v50 + v51, 1, v52))
    {
      (*(v53 + 8))(v50 + v51, v52);
    }

    v55 = v4[7];
    if (!v54(v50 + v55, 1, v52))
    {
      (*(v53 + 8))(v50 + v55, v52);
    }

    v56 = v50 + v4[8];
    v57 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
    {

      (*(v53 + 8))(v56 + *(v57 + 24), v52);
    }

    v58 = v4[10];
    if (!v54(v50 + v58, 1, v52))
    {
      (*(v53 + 8))(v50 + v58, v52);
    }

    v59 = v4[12];
    if (!v54(v50 + v59, 1, v52))
    {
      (*(v53 + 8))(v50 + v59, v52);
    }

    v60 = v4[14];
    if (!v54(v50 + v60, 1, v52))
    {
      (*(v53 + 8))(v50 + v60, v52);
    }

    v61 = v4[17];
    if (!v54(v50 + v61, 1, v52))
    {
      (*(v53 + 8))(v50 + v61, v52);
    }

    if (*(v50 + v4[18] + 32) != 1)
    {
    }

    v62 = v4[20];
    v63 = sub_1D725935C();
    v64 = *(v63 - 8);
    if (!(*(v64 + 48))(v50 + v62, 1, v63))
    {
      (*(v64 + 8))(v50 + v62, v63);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[23]);

  return swift_deallocObject();
}

uint64_t sub_1D5DD0F78()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD0FB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD0FE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD1028()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD1078()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD10B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD1100()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD1194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725891C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5DD1200(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5DD1294()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DD12CC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D5DD1314()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD134C()
{
  v1 = *(type metadata accessor for FeedGroupItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      swift_unknownObjectRelease();

      break;
    case 1u:

      if (*(v3 + 80) != 1)
      {
      }

      if (*(v3 + 128) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      break;
    case 2u:
      goto LABEL_94;
    case 3u:

      v21 = type metadata accessor for FeedWeather(0);
      v22 = *(v21 + 28);
      v23 = sub_1D7261CAC();
      (*(*(v23 - 8) + 8))(v3 + v22, v23);
      v24 = v3 + *(v21 + 36);
      sub_1D6F8EC2C(0, &qword_1EDF43B60, &qword_1EDF3C740, 0x1E696B080, MEMORY[0x1E6968070]);
      v26 = v25;
      v27 = *(*(v25 - 8) + 8);
      v27(v24, v25);
      v28 = type metadata accessor for FeedWeather.Temperature(0);
      v27(v24 + v28[5], v26);
      v27(v24 + v28[6], v26);
      v27(v24 + v28[7], v26);
      goto LABEL_96;
    case 4u:

      if (*(v3 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v3 + 240) < 0x12uLL)
      {
        break;
      }

      goto LABEL_96;
    case 5u:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v29 = type metadata accessor for FeedHeadline(0);
      v30 = v29[10];
      v31 = v3 + v30 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v32 = type metadata accessor for SharedItem();
      if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
      {
        v33 = sub_1D725891C();
        (*(*(v33 - 8) + 8))(v31, v33);

        v34 = *(v32 + 28);
        v35 = sub_1D72585BC();
        (*(*(v35 - 8) + 8))(v31 + v34, v35);
      }

      v36 = v29[11];
      v37 = sub_1D726045C();
      v38 = *(v37 - 8);
      if (!(*(v38 + 48))(v3 + v36, 1, v37))
      {
        (*(v38 + 8))(v3 + v36, v37);
      }

      if (*(v3 + v29[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v3 + v29[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      break;
    case 6u:
      if (*(v3 + 32) >= 0x12uLL)
      {
      }

      v48 = type metadata accessor for FeedWebEmbed();
      v49 = v48[8];
      v50 = sub_1D72585BC();
      v51 = *(v50 - 8);
      v80 = *(v51 + 8);
      v80(v3 + v49, v50);
      v52 = v48[9];
      if (!(*(v51 + 48))(v3 + v52, 1, v50))
      {
        v80(v3 + v52, v50);
      }

      v53 = v3 + v48[12];
      v54 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v54 - 1) + 48))(v53, 1, v54))
      {
        v79 = v50;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v55 = v54[10];
        v56 = v53 + v55 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v57 = type metadata accessor for SharedItem();
        if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
        {
          v58 = sub_1D725891C();
          (*(*(v58 - 8) + 8))(v56, v58);

          v80(v56 + *(v57 + 28), v79);
        }

        v59 = v54[11];
        v60 = sub_1D726045C();
        v61 = *(v60 - 8);
        if (!(*(v61 + 48))(v53 + v59, 1, v60))
        {
          (*(v61 + 8))(v53 + v59, v60);
        }

        if (*(v53 + v54[12] + 8) >= 0x12uLL)
        {
        }

        v50 = v79;
        if (*(v53 + v54[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v62 = v3 + v48[13];
      v63 = type metadata accessor for WebEmbedDataVisualization();
      if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v64 = type metadata accessor for GenericDataVisualization();
          v80(v62 + *(v64 + 20), v50);
        }

        else
        {
        }
      }

      goto LABEL_96;
    case 7u:

      break;
    case 8u:
      goto LABEL_80;
    case 9u:
      if (*(v3 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v3 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1(v3 + 88);
      }

      if (*(v3 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1(v3 + 128);
      }

      if (!*(v3 + 192))
      {
        break;
      }

      v20 = v3 + 168;
      goto LABEL_60;
    case 0xAu:
      if (*(v3 + 32) >= 0x12uLL)
      {
      }

LABEL_80:

      swift_unknownObjectRelease();
      break;
    case 0xBu:
      if (*(v3 + 32) >= 0x12uLL)
      {
      }

      v4 = v3 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
      swift_unknownObjectRelease();
      v3 = v4 + *(type metadata accessor for PuzzleStatistic() + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v73 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v73 - 8) + 48))(v3, 1, v73))
          {
            v74 = sub_1D725891C();
            (*(*(v74 - 8) + 8))(v3, v74);
            v75 = type metadata accessor for PuzzleLeaderboardEntry();

            v76 = v3 + *(v75 + 24);

            v77 = *(v76 + 40);
            if (v77 >> 60 != 15)
            {
              sub_1D5B952F8(*(v76 + 32), v77);
            }

LABEL_94:

LABEL_96:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v65 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v66 = *(v65 + 28);
          v67 = type metadata accessor for PuzzleStreak();
          v68 = *(*(v67 - 8) + 48);
          if (!v68(v3 + v66, 1, v67))
          {
            v69 = sub_1D7257ADC();
            (*(*(v69 - 8) + 8))(v3 + v66, v69);
          }

          v18 = *(v65 + 32);
          if (!v68(v3 + v18, 1, v67))
          {
            v19 = sub_1D7257ADC();
LABEL_25:
            (*(*(v19 - 8) + 8))(v3 + v18, v19);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          type metadata accessor for PuzzleStatisticValue(0);
          v6 = swift_getEnumCaseMultiPayload();
          if (v6 == 6 || v6 == 5)
          {
            v7 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v7 - 8) + 48))(v3, 1, v7))
            {
              v8 = sub_1D7257ADC();
              (*(*(v8 - 8) + 8))(v3, v8);
            }
          }

          v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
          v10 = *(v9 + 20);
          v11 = swift_getEnumCaseMultiPayload();
          if (v11 == 6 || v11 == 5)
          {
            v12 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v12 - 8) + 48))(v3 + v10, 1, v12))
            {
              v13 = sub_1D7257ADC();
              (*(*(v13 - 8) + 8))(v3 + v10, v13);
            }
          }

          v14 = *(v9 + 24);
          v15 = swift_getEnumCaseMultiPayload();
          if (v15 == 6 || v15 == 5)
          {
            v16 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v16 - 8) + 48))(v3 + v14, 1, v16))
            {
              v17 = sub_1D7257ADC();
              (*(*(v17 - 8) + 8))(v3 + v14, v17);
            }
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v70 = swift_getEnumCaseMultiPayload();
        if (v70 == 6 || v70 == 5)
        {
          v71 = type metadata accessor for PuzzleStreak();
          if (!(*(*(v71 - 8) + 48))(v3, 1, v71))
          {
            v72 = sub_1D7257ADC();
            (*(*(v72 - 8) + 8))(v3, v72);
          }
        }
      }

      break;
    case 0xCu:

      v18 = *(type metadata accessor for FeedSponsorshipBannerAd() + 20);
      v19 = sub_1D72608BC();
      goto LABEL_25;
    case 0xDu:

      if (*(v3 + 40) >= 0x12uLL)
      {
      }

      if (*(v3 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v39 = type metadata accessor for FeedRecipe();
      v40 = v39[9];
      v41 = v3 + v40 + *(type metadata accessor for FeedRecipe.State() + 20);
      v42 = type metadata accessor for SharedItem();
      if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
      {
        v43 = sub_1D725891C();
        (*(*(v43 - 8) + 8))(v41, v43);

        v44 = *(v42 + 28);
        v45 = sub_1D72585BC();
        (*(*(v45 - 8) + 8))(v41 + v44, v45);
      }

      v46 = v3 + v39[10];
      if (*(v46 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v46);
      }

      v47 = v3 + v39[12];
      if (*(v47 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v47);
      }

      v20 = v3 + v39[13];
      if (*(v20 + 24))
      {
LABEL_60:
        __swift_destroy_boxed_opaque_existential_1(v20);
      }

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD22E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD2358()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD2680()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DD26B8()
{
  v1 = sub_1D7259F5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for DebugFormatWorkspace();
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v8 = v0 + v7;
  type metadata accessor for DebugFormatWorkspaceKind();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v15 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v15 - 8) + 48))(v0 + v7, 1, v15))
    {
      goto LABEL_41;
    }

    v16 = v8 + *(v15 + 28);
    v12 = sub_1D725BD1C();
    v17 = (*(v12 - 8) + 8);
    v56 = *v17;
    (*v17)(v16, v12);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v14 = v8 + *(v15 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v18 = type metadata accessor for FormatContent(0);
        v19 = *(v18 + 20);
        v20 = sub_1D725891C();
        (*(*(v20 - 8) + 8))(v14 + v19, v20);

        v21 = *(v18 + 44);
        v22 = sub_1D72608BC();
        v23 = *(v22 - 8);
        v57 = v21;
        v24 = v14 + v21;
        v25 = v22;
        if (!(*(v23 + 48))(v24, 1, v22))
        {
          (*(v23 + 8))(v14 + v57, v25);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v14 + 106) != 255)
        {
          v34 = *(v14 + 104) | (*(v14 + 106) << 16);
          sub_1D60CF684(*(v14 + 96), v34, SBYTE2(v34));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v14 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v14 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v14 + 168) >= 3uLL)
        {
        }

        v48 = type metadata accessor for FormatPackage();
        v35 = v14 + v48[23];

        v51 = type metadata accessor for FormatCompilerOptions(0);
        v52 = v35 + *(v51 + 24);
        if (*(v52 + 8) != 1)
        {
        }

        v47 = v35;
        v36 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v55 = sub_1D725B76C();
        v49 = *(v55 - 8);
        v50 = *(v49 + 48);
        if (!v50(v52 + v36, 1))
        {
          (*(v49 + 8))(v52 + v36, v55);
        }

        v53 = *(v51 + 28);
        if (!(v50)(v47 + v53, 1, v55))
        {
          (*(v49 + 8))(v47 + v53, v55);
        }

        v56(v14 + v48[24], v12);
        v37 = v48[25];
        if (!(v50)(v14 + v37, 1, v55))
        {
          (*(v49 + 8))(v14 + v37, v55);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72), *(v14 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v26 = v14 + *(type metadata accessor for FormatBindingContent() + 28);

        v27 = type metadata accessor for FormatContent(0);
        v28 = *(v27 + 20);
        v29 = sub_1D725891C();
        (*(*(v29 - 8) + 8))(v26 + v28, v29);

        v30 = *(v27 + 44);
        v31 = sub_1D72608BC();
        v54 = *(v31 - 8);
        v58 = v30;
        v32 = v26 + v30;
        v33 = v31;
        if (!(*(v54 + 48))(v32, 1, v31))
        {
          (*(v54 + 8))(v26 + v58, v33);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v10 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v10 - 8) + 48))(v0 + v7, 1, v10))
    {

      v11 = v8 + *(v10 + 28);
      v12 = sub_1D725BD1C();
      v13 = (*(v12 - 8) + 8);
      v56 = *v13;
      (*v13)(v11, v12);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v14 = v8 + *(v10 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v14 + *(v38 + 44)), *(v14 + *(v38 + 44) + 8));
    }
  }

LABEL_41:

  v39 = (v8 + *(v5 + 24));

  v40 = type metadata accessor for FeedContext();
  v41 = v39 + v40[5];
  v42 = type metadata accessor for BundleSession();
  if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
  {
    v59 = v0 + v7;
    v43 = *(v42 + 20);
    v44 = sub_1D725891C();
    v8 = v59;
    (*(*(v44 - 8) + 8))(&v41[v43], v44);
  }

  if (*(v39 + v40[12] + 8) - 1 >= 3)
  {
  }

  v45 = (v8 + *(v5 + 28));
  if (v45[1])
  {

    if (v45[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v45[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD34E4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DD351C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD3568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed20FormatViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D5DD361C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD36E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D726045C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DD3754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D726045C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DD388C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD38C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD3918()
{
  sub_1D6FAA7BC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DD3994()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DD39CC()
{
  sub_1D6FAA840();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 120) & ~*(v3 + 80);

  sub_1D6FAA7BC(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D5DD3AEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DD3B30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DD3B80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DD3BD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5DD3C20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_1D5DD3C7C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 160) = v3;
  return result;
}

uint64_t sub_1D5DD3CC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD3D08()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DD3D4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DD3DF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DD3EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6FB6708(0, &qword_1EC890D68, sub_1D5EF3A64, type metadata accessor for DebugFormatManagerResult);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D5DD3F98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D6FB6708(0, &qword_1EC890D68, sub_1D5EF3A64, type metadata accessor for DebugFormatManagerResult);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_1D5DD4080()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD40B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD40F0()
{
  sub_1D5F26348(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D5FC4E9C(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D5DD4164()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD41AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DD4258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DD4CD4()
{

  if (*(v0 + 88) >= 3uLL)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 224);

  __swift_destroy_boxed_opaque_existential_1(v0 + 272);

  return swift_deallocObject();
}

uint64_t sub_1D5DD4DC8()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DD4E20()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DD4E6C()
{

  if (*(v0 + 24) != 1)
  {

    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_1D5D2F2C4(*(v0 + 80), *(v0 + 88), v1 & 1);
    }

    v2 = *(v0 + 136);
    if (v2 != 255)
    {
      sub_1D618909C(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v2 & 1);
    }

    v3 = *(v0 + 160);
    if (v3 != 255)
    {
      sub_1D5D2F2C4(*(v0 + 144), *(v0 + 152), v3 & 1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD4F2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD4F70()
{

  sub_1D66761BC(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  sub_1D66761BC(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));

  return swift_deallocObject();
}

uint64_t sub_1D5DD5000()
{
  sub_1D6086768(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DD5038()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD5078()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD50CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD5178()
{
  if (*(v0 + 16))
  {

    sub_1D5EB15C4(*(v0 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD523C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD5298()
{
  sub_1D5E443C8(*(v0 + 24));

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD52F4()
{
  sub_1D6FFC5A4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD5360()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD53C4()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD5418()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD5480()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD54E0()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD5730()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD5848()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DD5880()
{

  swift_unknownObjectRelease();

  if (*(v0 + 120) != 1)
  {

    if (*(v0 + 152))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 128);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 184);

  return swift_deallocObject();
}

uint64_t sub_1D5DD5940()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DD5978()
{
  sub_1D5BB15A8(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for FeedItem(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        if (*(v2 + 48) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 1u:

        if (*(v2 + 80) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 2u:

        v46 = type metadata accessor for FeedBannerAd();
        v47 = *(v46 + 20);
        v48 = sub_1D7260DDC();
        goto LABEL_99;
      case 3u:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v49 = type metadata accessor for FeedHeadline(0);
        v50 = v49[10];
        v51 = v2 + v50 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v52 = type metadata accessor for SharedItem();
        if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
        {
          v53 = sub_1D725891C();
          (*(*(v53 - 8) + 8))(v51, v53);

          v54 = *(v52 + 28);
          v55 = sub_1D72585BC();
          (*(*(v55 - 8) + 8))(v51 + v54, v55);
        }

        v56 = v49[11];
        v57 = sub_1D726045C();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v2 + v56, 1, v57))
        {
          (*(v58 + 8))(v2 + v56, v57);
        }

        if (*(v2 + v49[12] + 8) >= 0x12uLL)
        {
        }

        if (*(v2 + v49[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }

        break;
      case 4u:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        v20 = type metadata accessor for FeedWebEmbed();
        v21 = v20[8];
        v22 = sub_1D72585BC();
        v23 = *(v22 - 8);
        v82 = *(v23 + 8);
        v82(v2 + v21, v22);
        v24 = v20[9];
        if (!(*(v23 + 48))(v2 + v24, 1, v22))
        {
          v82(v2 + v24, v22);
        }

        v25 = v2 + v20[12];
        v26 = type metadata accessor for FeedHeadline(0);
        if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
        {
          v81 = v22;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v27 = v26[10];
          v28 = v25 + v27 + *(type metadata accessor for FeedHeadline.State(0) + 24);
          v29 = type metadata accessor for SharedItem();
          if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
          {
            v30 = sub_1D725891C();
            (*(*(v30 - 8) + 8))(v28, v30);

            v82(v28 + *(v29 + 28), v81);
          }

          v31 = v26[11];
          v32 = sub_1D726045C();
          v80 = *(v32 - 8);
          if (!(*(v80 + 48))(v25 + v31, 1, v32))
          {
            (*(v80 + 8))(v25 + v31, v32);
          }

          if (*(v25 + v26[12] + 8) >= 0x12uLL)
          {
          }

          v22 = v81;
          if (*(v25 + v26[13]) >= 3uLL)
          {
            swift_unknownObjectRelease();
          }
        }

        v33 = v2 + v20[13];
        v34 = type metadata accessor for WebEmbedDataVisualization();
        if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v35 = type metadata accessor for GenericDataVisualization();
            v82(v33 + *(v35 + 20), v22);
          }

          else
          {
          }
        }

        goto LABEL_128;
      case 5u:
        goto LABEL_85;
      case 6u:
        v59 = *(v2 + 281);
        if (v59 == 2)
        {
          goto LABEL_89;
        }

        if (v59 == 1)
        {

          if (*(v2 + 80) != 1)
          {
          }

          if (*(v2 + 128) >= 0x12uLL)
          {
          }

          v71 = *(v2 + 144);
          if (!v71)
          {
            break;
          }

          if (*(v2 + 224) != 1)
          {
          }

          if (*(v2 + 272) < 0x12uLL)
          {
            break;
          }
        }

        else
        {
          if (*(v2 + 281))
          {
            break;
          }

LABEL_85:

          if (*(v2 + 80) != 1)
          {
          }

          if (*(v2 + 128) < 0x12uLL)
          {
            break;
          }
        }

        goto LABEL_128;
      case 7u:
LABEL_89:

        swift_unknownObjectRelease();

        if (*(v2 + 88) != 1)
        {

          if (*(v2 + 120))
          {
            __swift_destroy_boxed_opaque_existential_1(v2 + 96);
          }
        }

        break;
      case 8u:

        v60 = v2 + *(type metadata accessor for FeedCustomItem() + 20);

        v61 = *(type metadata accessor for FormatCustomItem.Resolved() + 24);
        v62 = type metadata accessor for FormatCustomItem.Action();
        if (!(*(*(v62 - 8) + 48))(v60 + v61, 1, v62))
        {
          v63 = sub_1D72585BC();
          (*(*(v63 - 8) + 8))(v60 + v61, v63);
        }

        goto LABEL_128;
      case 9u:

        if (*(v2 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 32);
        }

        if (*(v2 + 96))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 72);
        }

        if (*(v2 + 136))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 112);
        }

        break;
      case 0xAu:

        v46 = type metadata accessor for FeedEngagementBanner();
        v47 = *(v46 + 20);
        v48 = sub_1D725C08C();
LABEL_99:
        (*(*(v48 - 8) + 8))(v2 + v47, v48);
        if (*(v2 + *(v46 + 32) + 8) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 0xBu:

        break;
      case 0xCu:

        if (*(v2 + 40) >= 0x12uLL)
        {
        }

        if (*(v2 + 48) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }

        v36 = type metadata accessor for FeedRecipe();
        v37 = v36[9];
        v38 = v2 + v37 + *(type metadata accessor for FeedRecipe.State() + 20);
        v39 = type metadata accessor for SharedItem();
        if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
        {
          v40 = sub_1D725891C();
          (*(*(v40 - 8) + 8))(v38, v40);

          v41 = *(v39 + 28);
          v42 = sub_1D72585BC();
          (*(*(v42 - 8) + 8))(v38 + v41, v42);
        }

        v43 = v2 + v36[10];
        if (*(v43 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(v43);
        }

        v44 = v2 + v36[12];
        if (*(v44 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(v44);
        }

        v45 = v2 + v36[13];
        if (*(v45 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(v45);
        }

        break;
      case 0xDu:
        goto LABEL_72;
      case 0xEu:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        swift_unknownObjectRelease();

        if (*(v2 + 112))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 88);
        }

        if (*(v2 + 152))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 128);
        }

        if (*(v2 + 192))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 168);
        }

        break;
      case 0xFu:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

LABEL_72:

        swift_unknownObjectRelease();
        break;
      case 0x10u:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        v5 = v2 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
        swift_unknownObjectRelease();
        v6 = v5 + *(type metadata accessor for PuzzleStatistic() + 20);
        type metadata accessor for PuzzleStatisticCategory(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v75 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
            if (!(*(*(v75 - 8) + 48))(v6, 1, v75))
            {
              v76 = sub_1D725891C();
              (*(*(v76 - 8) + 8))(v6, v76);
              v77 = type metadata accessor for PuzzleLeaderboardEntry();

              v78 = v6 + *(v77 + 24);

              v79 = *(v78 + 40);
              if (v79 >> 60 != 15)
              {
                sub_1D5B952F8(*(v78 + 32), v79);
              }

LABEL_128:
            }
          }

          else if (EnumCaseMultiPayload == 3)
          {
            v64 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
            v65 = *(v64 + 28);
            v66 = type metadata accessor for PuzzleStreak();
            v67 = *(*(v66 - 8) + 48);
            if (!v67(v6 + v65, 1, v66))
            {
              v68 = sub_1D7257ADC();
              (*(*(v68 - 8) + 8))(v6 + v65, v68);
            }

            v69 = *(v64 + 32);
            if (!v67(v6 + v69, 1, v66))
            {
              v70 = sub_1D7257ADC();
              (*(*(v70 - 8) + 8))(v6 + v69, v70);
            }
          }
        }

        else if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            type metadata accessor for PuzzleStatisticValue(0);
            v8 = swift_getEnumCaseMultiPayload();
            if (v8 == 6 || v8 == 5)
            {
              v9 = type metadata accessor for PuzzleStreak();
              if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
              {
                v10 = sub_1D7257ADC();
                (*(*(v10 - 8) + 8))(v6, v10);
              }
            }

            v11 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
            v12 = *(v11 + 20);
            v13 = swift_getEnumCaseMultiPayload();
            if (v13 == 6 || v13 == 5)
            {
              v14 = type metadata accessor for PuzzleStreak();
              if (!(*(*(v14 - 8) + 48))(v6 + v12, 1, v14))
              {
                v15 = sub_1D7257ADC();
                (*(*(v15 - 8) + 8))(v6 + v12, v15);
              }
            }

            v16 = *(v11 + 24);
            v17 = swift_getEnumCaseMultiPayload();
            if (v17 == 6 || v17 == 5)
            {
              v18 = type metadata accessor for PuzzleStreak();
              if (!(*(*(v18 - 8) + 48))(v6 + v16, 1, v18))
              {
                v19 = sub_1D7257ADC();
                (*(*(v19 - 8) + 8))(v6 + v16, v19);
              }
            }
          }
        }

        else
        {
          type metadata accessor for PuzzleStatisticValue(0);
          v72 = swift_getEnumCaseMultiPayload();
          if (v72 == 6 || v72 == 5)
          {
            v73 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v73 - 8) + 48))(v6, 1, v73))
            {
              v74 = sub_1D7257ADC();
              (*(*(v74 - 8) + 8))(v6, v74);
            }
          }
        }

        break;
      case 0x11u:

        if (*(v2 + 136) >= 3uLL)
        {
        }

        swift_unknownObjectRelease();

        if (*(v2 + 240) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      default:
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD6AD0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 224);

  return swift_deallocObject();
}

uint64_t sub_1D5DD6B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_1D5B4D72C(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D5DD6CB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D72585BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_1D5B4D72C(0);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D5DD6DD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DD6E28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5DD6E78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1D5DD6EC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

unint64_t sub_1D5DD6F04@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5DD6F54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1D5DD6F9C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

uint64_t sub_1D5DD6FE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_1D5DD7030()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD7068()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD70A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD70E8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1D5DD7134(id *a1)
{
  v1 = *a1;
  sub_1D701B160();
}

uint64_t sub_1D5DD7184()
{
  v1 = sub_1D7258DBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DD72CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD731C()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD7394()
{

  swift_unknownObjectRelease();

  if (*(v0 + 104) != 1)
  {

    if (*(v0 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD7404()
{

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 6));
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 11));
  }

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD7474()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD74C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD7508()
{
  v1 = type metadata accessor for FeedClusteringRequest(0);
  v68 = *(*(v1 - 1) + 80);
  v66 = *(*(v1 - 1) + 64);

  v69 = v0;
  v67 = (v68 + 24) & ~v68;
  v2 = v0 + v67;

  swift_unknownObjectRelease();

  v3 = v0 + v67 + v1[10];
  v4 = type metadata accessor for FeedClusteringOptions(0);
  v5 = *(*(v4 - 1) + 48);
  v70 = v5;
  if (!v5(v3, 1, v4))
  {
    v6 = v4[5];
    v7 = sub_1D72593CC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }

    v10 = v4[7];
    if (!v9(v3 + v10, 1, v7))
    {
      (*(v8 + 8))(v3 + v10, v7);
    }

    v11 = v3 + v4[8];
    v12 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      (*(v8 + 8))(v11 + *(v12 + 24), v7);
    }

    v13 = v4[10];
    if (!v9(v3 + v13, 1, v7))
    {
      (*(v8 + 8))(v3 + v13, v7);
    }

    v14 = v4[12];
    v5 = v70;
    if (!v9(v3 + v14, 1, v7))
    {
      (*(v8 + 8))(v3 + v14, v7);
    }

    v15 = v4[14];
    if (!v9(v3 + v15, 1, v7))
    {
      (*(v8 + 8))(v3 + v15, v7);
    }

    v16 = v4[17];
    if (!v9(v3 + v16, 1, v7))
    {
      (*(v8 + 8))(v3 + v16, v7);
    }

    if (*(v3 + v4[18] + 32) != 1)
    {
    }

    v17 = v4[20];
    v18 = sub_1D725935C();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v3 + v17, 1, v18))
    {
      (*(v19 + 8))(v3 + v17, v18);
    }
  }

  v20 = v2 + v1[11];
  if (!v5(v20, 1, v4))
  {
    v21 = v4[5];
    v22 = sub_1D72593CC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (!v24(v20 + v21, 1, v22))
    {
      (*(v23 + 8))(v20 + v21, v22);
    }

    v25 = v4[7];
    if (!v24(v20 + v25, 1, v22))
    {
      (*(v23 + 8))(v20 + v25, v22);
    }

    v26 = v20 + v4[8];
    v27 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
    {

      (*(v23 + 8))(v26 + *(v27 + 24), v22);
    }

    v28 = v4[10];
    if (!v24(v20 + v28, 1, v22))
    {
      (*(v23 + 8))(v20 + v28, v22);
    }

    v29 = v4[12];
    v5 = v70;
    if (!v24(v20 + v29, 1, v22))
    {
      (*(v23 + 8))(v20 + v29, v22);
    }

    v30 = v4[14];
    if (!v24(v20 + v30, 1, v22))
    {
      (*(v23 + 8))(v20 + v30, v22);
    }

    v31 = v4[17];
    if (!v24(v20 + v31, 1, v22))
    {
      (*(v23 + 8))(v20 + v31, v22);
    }

    if (*(v20 + v4[18] + 32) != 1)
    {
    }

    v32 = v4[20];
    v33 = sub_1D725935C();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v20 + v32, 1, v33))
    {
      (*(v34 + 8))(v20 + v32, v33);
    }
  }

  v35 = v2 + v1[13];
  if (!v5(v35, 1, v4))
  {
    v36 = v4[5];
    v37 = sub_1D72593CC();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (!v39(v35 + v36, 1, v37))
    {
      (*(v38 + 8))(v35 + v36, v37);
    }

    v40 = v4[7];
    if (!v39(v35 + v40, 1, v37))
    {
      (*(v38 + 8))(v35 + v40, v37);
    }

    v41 = v35 + v4[8];
    v42 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      (*(v38 + 8))(v41 + *(v42 + 24), v37);
    }

    v43 = v4[10];
    if (!v39(v35 + v43, 1, v37))
    {
      (*(v38 + 8))(v35 + v43, v37);
    }

    v44 = v4[12];
    v5 = v70;
    if (!v39(v35 + v44, 1, v37))
    {
      (*(v38 + 8))(v35 + v44, v37);
    }

    v45 = v4[14];
    if (!v39(v35 + v45, 1, v37))
    {
      (*(v38 + 8))(v35 + v45, v37);
    }

    v46 = v4[17];
    if (!v39(v35 + v46, 1, v37))
    {
      (*(v38 + 8))(v35 + v46, v37);
    }

    if (*(v35 + v4[18] + 32) != 1)
    {
    }

    v47 = v4[20];
    v48 = sub_1D725935C();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v35 + v47, 1, v48))
    {
      (*(v49 + 8))(v35 + v47, v48);
    }
  }

  v50 = v2 + v1[14];
  if (!v5(v50, 1, v4))
  {
    v51 = v4[5];
    v52 = sub_1D72593CC();
    v53 = *(v52 - 8);
    v54 = *(v53 + 48);
    if (!v54(v50 + v51, 1, v52))
    {
      (*(v53 + 8))(v50 + v51, v52);
    }

    v55 = v4[7];
    if (!v54(v50 + v55, 1, v52))
    {
      (*(v53 + 8))(v50 + v55, v52);
    }

    v56 = v50 + v4[8];
    v57 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
    {

      (*(v53 + 8))(v56 + *(v57 + 24), v52);
    }

    v58 = v4[10];
    if (!v54(v50 + v58, 1, v52))
    {
      (*(v53 + 8))(v50 + v58, v52);
    }

    v59 = v4[12];
    if (!v54(v50 + v59, 1, v52))
    {
      (*(v53 + 8))(v50 + v59, v52);
    }

    v60 = v4[14];
    if (!v54(v50 + v60, 1, v52))
    {
      (*(v53 + 8))(v50 + v60, v52);
    }

    v61 = v4[17];
    if (!v54(v50 + v61, 1, v52))
    {
      (*(v53 + 8))(v50 + v61, v52);
    }

    if (*(v50 + v4[18] + 32) != 1)
    {
    }

    v62 = v4[20];
    v63 = sub_1D725935C();
    v64 = *(v63 - 8);
    if (!(*(v64 + 48))(v50 + v62, 1, v63))
    {
      (*(v64 + 8))(v50 + v62, v63);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[23]);

  return swift_deallocObject();
}

uint64_t sub_1D5DD82C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD82FC()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1D5DD836C()
{
  v1 = sub_1D725944C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for FeedClusteringRequest(0);
  v85 = *(*(v6 - 1) + 80);
  v83 = *(*(v6 - 1) + 64);
  v7 = sub_1D725C34C();
  v86 = *(v7 - 8);
  v87 = v7;
  v82 = *(v86 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + v5);
  v84 = (v5 + v85 + 40) & ~v85;
  v8 = v0 + v84;

  swift_unknownObjectRelease();

  v9 = v0 + v84 + v6[10];
  v10 = type metadata accessor for FeedClusteringOptions(0);
  v11 = *(*(v10 - 1) + 48);
  if (!v11(v9, 1, v10))
  {
    v78 = v6;
    v12 = v10[5];
    v13 = sub_1D72593CC();
    v14 = *(v13 - 8);
    v15 = *(v14 + 48);
    if (!v15(v9 + v12, 1, v13))
    {
      (*(v14 + 8))(v9 + v12, v13);
    }

    v16 = v10[7];
    if (!v15(v9 + v16, 1, v13))
    {
      (*(v14 + 8))(v9 + v16, v13);
    }

    v17 = v9 + v10[8];
    v18 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {

      (*(v14 + 8))(v17 + *(v18 + 24), v13);
    }

    v19 = v10[10];
    v20 = v14;
    if (!v15(v9 + v19, 1, v13))
    {
      (*(v14 + 8))(v9 + v19, v13);
    }

    v21 = v10[12];
    v6 = v78;
    if (!v15(v9 + v21, 1, v13))
    {
      (*(v20 + 8))(v9 + v21, v13);
    }

    v22 = v10[14];
    if (!v15(v9 + v22, 1, v13))
    {
      (*(v20 + 8))(v9 + v22, v13);
    }

    v23 = v10[17];
    if (!v15(v9 + v23, 1, v13))
    {
      (*(v20 + 8))(v9 + v23, v13);
    }

    if (*(v9 + v10[18] + 32) != 1)
    {
    }

    v24 = v10[20];
    v25 = sub_1D725935C();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v9 + v24, 1, v25))
    {
      (*(v26 + 8))(v9 + v24, v25);
    }
  }

  v27 = v8 + v6[11];
  if (!v11(v27, 1, v10))
  {
    v79 = v0;
    v28 = v10[5];
    v29 = sub_1D72593CC();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (!v31(v27 + v28, 1, v29))
    {
      (*(v30 + 8))(v27 + v28, v29);
    }

    v32 = v10[7];
    if (!v31(v27 + v32, 1, v29))
    {
      (*(v30 + 8))(v27 + v32, v29);
    }

    v33 = v27 + v10[8];
    v34 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
    {

      (*(v30 + 8))(v33 + *(v34 + 24), v29);
    }

    v35 = v10[10];
    v36 = v30;
    if (!v31(v27 + v35, 1, v29))
    {
      (*(v30 + 8))(v27 + v35, v29);
    }

    v37 = v10[12];
    v0 = v79;
    if (!v31(v27 + v37, 1, v29))
    {
      (*(v36 + 8))(v27 + v37, v29);
    }

    v38 = v10[14];
    if (!v31(v27 + v38, 1, v29))
    {
      (*(v36 + 8))(v27 + v38, v29);
    }

    v39 = v10[17];
    if (!v31(v27 + v39, 1, v29))
    {
      (*(v36 + 8))(v27 + v39, v29);
    }

    if (*(v27 + v10[18] + 32) != 1)
    {
    }

    v40 = v10[20];
    v41 = sub_1D725935C();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v27 + v40, 1, v41))
    {
      (*(v42 + 8))(v27 + v40, v41);
    }
  }

  v43 = v8 + v6[13];
  if (!v11(v43, 1, v10))
  {
    v80 = v6;
    v44 = v10[5];
    v45 = sub_1D72593CC();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (!v47(v43 + v44, 1, v45))
    {
      (*(v46 + 8))(v43 + v44, v45);
    }

    v48 = v10[7];
    if (!v47(v43 + v48, 1, v45))
    {
      (*(v46 + 8))(v43 + v48, v45);
    }

    v49 = v43 + v10[8];
    v50 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v50 - 8) + 48))(v49, 1, v50))
    {

      (*(v46 + 8))(v49 + *(v50 + 24), v45);
    }

    v51 = v10[10];
    v52 = v46;
    if (!v47(v43 + v51, 1, v45))
    {
      (*(v46 + 8))(v43 + v51, v45);
    }

    v53 = v10[12];
    v6 = v80;
    if (!v47(v43 + v53, 1, v45))
    {
      (*(v52 + 8))(v43 + v53, v45);
    }

    v54 = v10[14];
    if (!v47(v43 + v54, 1, v45))
    {
      (*(v52 + 8))(v43 + v54, v45);
    }

    v55 = v10[17];
    if (!v47(v43 + v55, 1, v45))
    {
      (*(v52 + 8))(v43 + v55, v45);
    }

    if (*(v43 + v10[18] + 32) != 1)
    {
    }

    v56 = v10[20];
    v57 = sub_1D725935C();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v43 + v56, 1, v57))
    {
      (*(v58 + 8))(v43 + v56, v57);
    }
  }

  v59 = v8 + v6[14];
  if (!v11(v59, 1, v10))
  {
    v81 = v0;
    v60 = v10[5];
    v61 = sub_1D72593CC();
    v62 = *(v61 - 8);
    v63 = *(v62 + 48);
    if (!v63(v59 + v60, 1, v61))
    {
      (*(v62 + 8))(v59 + v60, v61);
    }

    v64 = v10[7];
    if (!v63(v59 + v64, 1, v61))
    {
      (*(v62 + 8))(v59 + v64, v61);
    }

    v65 = v59 + v10[8];
    v66 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
    {

      (*(v62 + 8))(v65 + *(v66 + 24), v61);
    }

    v67 = v10[10];
    v68 = v62;
    if (!v63(v59 + v67, 1, v61))
    {
      (*(v62 + 8))(v59 + v67, v61);
    }

    v69 = v10[12];
    v0 = v81;
    if (!v63(v59 + v69, 1, v61))
    {
      (*(v68 + 8))(v59 + v69, v61);
    }

    v70 = v10[14];
    if (!v63(v59 + v70, 1, v61))
    {
      (*(v68 + 8))(v59 + v70, v61);
    }

    v71 = v10[17];
    if (!v63(v59 + v71, 1, v61))
    {
      (*(v68 + 8))(v59 + v71, v61);
    }

    if (*(v59 + v10[18] + 32) != 1)
    {
    }

    v72 = v10[20];
    v73 = sub_1D725935C();
    v74 = *(v73 - 8);
    if (!(*(v74 + 48))(v59 + v72, 1, v73))
    {
      (*(v74 + 8))(v59 + v72, v73);
    }
  }

  v75 = (v83 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1(v8 + v6[23]);

  (*(v86 + 8))(v0 + ((v82 + v76 + 8) & ~v82), v87);

  return swift_deallocObject();
}

uint64_t sub_1D5DD929C()
{
  v12 = sub_1D725944C();
  v1 = *(v12 - 8);
  v10 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v11 = sub_1D725C34C();
  v3 = *(v11 - 8);
  v4 = (v10 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1D72594FC();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 16) & ~*(v7 + 80);

  (*(v1 + 8))(v0 + v10, v12);
  (*(v3 + 8))(v0 + v4, v11);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1D5DD95E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD962C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventStatusResponseEmbed();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DD9698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventStatusResponseEmbed();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DD9708@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DD9758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DD97A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 216);
  *a2 = *(v3 + 212);
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1D5DD97F8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 212) = v2;
  *(v4 + 216) = v3;
  return result;
}

uint64_t sub_1D5DD984C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 224);
  return result;
}

uint64_t sub_1D5DD9894(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 224) = v2;
  return result;
}

unint64_t sub_1D5DD98D8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 232);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5DD9928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 240);
  return result;
}

uint64_t sub_1D5DD9970(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 240) = v2;
  return result;
}

uint64_t sub_1D5DD99B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 264);
}

uint64_t sub_1D5DD9A04()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD9A3C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DD9A74()
{
  v1 = *(type metadata accessor for PuzzleResourceSource() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      sub_1D5B4D334();
      v7 = v6;
      v8 = *(v6 + 48);
      v9 = sub_1D72585BC();
      v10 = *(v9 - 8);
      v11 = *(v10 + 8);
      v11(v4 + v8, v9);
      v12 = *(v7 + 64);
      if (!(*(v10 + 48))(v4 + v12, 1, v9))
      {
        v11(v4 + v12, v9);
      }

      break;
    case 1:
      swift_unknownObjectRelease();
      break;
    case 0:

      break;
  }

  if (HIBYTE(*(v0 + v3 + 16)) != 255)
  {
    sub_1D5FE3E40(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), HIBYTE(*(v0 + v3 + 16)));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DD9C4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DD9C9C()
{
  v1 = type metadata accessor for FeedClusteringRequest(0);
  v68 = *(*(v1 - 1) + 80);
  v66 = *(*(v1 - 1) + 64);

  v69 = v0;
  v67 = (v68 + 24) & ~v68;
  v2 = v0 + v67;

  swift_unknownObjectRelease();

  v3 = v0 + v67 + v1[10];
  v4 = type metadata accessor for FeedClusteringOptions(0);
  v5 = *(*(v4 - 1) + 48);
  v70 = v5;
  if (!v5(v3, 1, v4))
  {
    v6 = v4[5];
    v7 = sub_1D72593CC();
    v8 = *(v7 - 8);
    v9 = *(v8 + 48);
    if (!v9(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }

    v10 = v4[7];
    if (!v9(v3 + v10, 1, v7))
    {
      (*(v8 + 8))(v3 + v10, v7);
    }

    v11 = v3 + v4[8];
    v12 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      (*(v8 + 8))(v11 + *(v12 + 24), v7);
    }

    v13 = v4[10];
    if (!v9(v3 + v13, 1, v7))
    {
      (*(v8 + 8))(v3 + v13, v7);
    }

    v14 = v4[12];
    v5 = v70;
    if (!v9(v3 + v14, 1, v7))
    {
      (*(v8 + 8))(v3 + v14, v7);
    }

    v15 = v4[14];
    if (!v9(v3 + v15, 1, v7))
    {
      (*(v8 + 8))(v3 + v15, v7);
    }

    v16 = v4[17];
    if (!v9(v3 + v16, 1, v7))
    {
      (*(v8 + 8))(v3 + v16, v7);
    }

    if (*(v3 + v4[18] + 32) != 1)
    {
    }

    v17 = v4[20];
    v18 = sub_1D725935C();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v3 + v17, 1, v18))
    {
      (*(v19 + 8))(v3 + v17, v18);
    }
  }

  v20 = v2 + v1[11];
  if (!v5(v20, 1, v4))
  {
    v21 = v4[5];
    v22 = sub_1D72593CC();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (!v24(v20 + v21, 1, v22))
    {
      (*(v23 + 8))(v20 + v21, v22);
    }

    v25 = v4[7];
    if (!v24(v20 + v25, 1, v22))
    {
      (*(v23 + 8))(v20 + v25, v22);
    }

    v26 = v20 + v4[8];
    v27 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
    {

      (*(v23 + 8))(v26 + *(v27 + 24), v22);
    }

    v28 = v4[10];
    if (!v24(v20 + v28, 1, v22))
    {
      (*(v23 + 8))(v20 + v28, v22);
    }

    v29 = v4[12];
    v5 = v70;
    if (!v24(v20 + v29, 1, v22))
    {
      (*(v23 + 8))(v20 + v29, v22);
    }

    v30 = v4[14];
    if (!v24(v20 + v30, 1, v22))
    {
      (*(v23 + 8))(v20 + v30, v22);
    }

    v31 = v4[17];
    if (!v24(v20 + v31, 1, v22))
    {
      (*(v23 + 8))(v20 + v31, v22);
    }

    if (*(v20 + v4[18] + 32) != 1)
    {
    }

    v32 = v4[20];
    v33 = sub_1D725935C();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v20 + v32, 1, v33))
    {
      (*(v34 + 8))(v20 + v32, v33);
    }
  }

  v35 = v2 + v1[13];
  if (!v5(v35, 1, v4))
  {
    v36 = v4[5];
    v37 = sub_1D72593CC();
    v38 = *(v37 - 8);
    v39 = *(v38 + 48);
    if (!v39(v35 + v36, 1, v37))
    {
      (*(v38 + 8))(v35 + v36, v37);
    }

    v40 = v4[7];
    if (!v39(v35 + v40, 1, v37))
    {
      (*(v38 + 8))(v35 + v40, v37);
    }

    v41 = v35 + v4[8];
    v42 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
    {

      (*(v38 + 8))(v41 + *(v42 + 24), v37);
    }

    v43 = v4[10];
    if (!v39(v35 + v43, 1, v37))
    {
      (*(v38 + 8))(v35 + v43, v37);
    }

    v44 = v4[12];
    v5 = v70;
    if (!v39(v35 + v44, 1, v37))
    {
      (*(v38 + 8))(v35 + v44, v37);
    }

    v45 = v4[14];
    if (!v39(v35 + v45, 1, v37))
    {
      (*(v38 + 8))(v35 + v45, v37);
    }

    v46 = v4[17];
    if (!v39(v35 + v46, 1, v37))
    {
      (*(v38 + 8))(v35 + v46, v37);
    }

    if (*(v35 + v4[18] + 32) != 1)
    {
    }

    v47 = v4[20];
    v48 = sub_1D725935C();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v35 + v47, 1, v48))
    {
      (*(v49 + 8))(v35 + v47, v48);
    }
  }

  v50 = v2 + v1[14];
  if (!v5(v50, 1, v4))
  {
    v51 = v4[5];
    v52 = sub_1D72593CC();
    v53 = *(v52 - 8);
    v54 = *(v53 + 48);
    if (!v54(v50 + v51, 1, v52))
    {
      (*(v53 + 8))(v50 + v51, v52);
    }

    v55 = v4[7];
    if (!v54(v50 + v55, 1, v52))
    {
      (*(v53 + 8))(v50 + v55, v52);
    }

    v56 = v50 + v4[8];
    v57 = type metadata accessor for FeedGroupBundleArticleQuotas();
    if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
    {

      (*(v53 + 8))(v56 + *(v57 + 24), v52);
    }

    v58 = v4[10];
    if (!v54(v50 + v58, 1, v52))
    {
      (*(v53 + 8))(v50 + v58, v52);
    }

    v59 = v4[12];
    if (!v54(v50 + v59, 1, v52))
    {
      (*(v53 + 8))(v50 + v59, v52);
    }

    v60 = v4[14];
    if (!v54(v50 + v60, 1, v52))
    {
      (*(v53 + 8))(v50 + v60, v52);
    }

    v61 = v4[17];
    if (!v54(v50 + v61, 1, v52))
    {
      (*(v53 + 8))(v50 + v61, v52);
    }

    if (*(v50 + v4[18] + 32) != 1)
    {
    }

    v62 = v4[20];
    v63 = sub_1D725935C();
    v64 = *(v63 - 8);
    if (!(*(v64 + 48))(v50 + v62, 1, v63))
    {
      (*(v64 + 8))(v50 + v62, v63);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[23]);

  return swift_deallocObject();
}

uint64_t sub_1D5DDAA58()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDAA90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DDAB3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DDABE0()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 312);

  return swift_deallocObject();
}

uint64_t sub_1D5DDAD04()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDAD68()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDADA0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DDADF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDAE30()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDAECC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDAF0C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDAF8C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DDAFC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDB004()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DDB040()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDB07C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDB0B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDB104()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDB13C()
{

  return swift_deallocObject();
}

__n128 sub_1D5DDB200(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DDB254(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5DDB2D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DDB308()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDB348()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DDB384()
{
  v1 = *(type metadata accessor for FormatPurchaseData(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = type metadata accessor for FormatPurchaseLandingPageData();
    if ((*(*(v6 - 8) + 48))(v0 + v2, 1, v6))
    {
      goto LABEL_9;
    }

    v5 = *(v6 + 20);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    v5 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
  }

  v7 = type metadata accessor for FormatPostPurchaseData();
  if (!(*(*(v7 - 8) + 48))(v3 + v5, 1, v7))
  {
    v8 = sub_1D72585BC();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v5, 2, v8))
    {
      (*(v9 + 8))(v3 + v5, v8);
    }
  }

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_1D5DDB59C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDB5D8()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDB634()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v4 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  sub_1D705D310(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40), *(v0 + v5 + 48), *(v0 + v5 + 56), *(v0 + v5 + 64), *(v0 + v5 + 66));

  sub_1D6A69698(*(v0 + v5 + 80), *(v0 + v5 + 88));

  if (*(v0 + v6 + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDB7B8()
{

  if (*(v0 + 32))
  {
  }

  v1 = *(v0 + 64);
  if (v1 <= 0xFD)
  {
    sub_1D6A69698(*(v0 + 56), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDB844()
{
  sub_1D7075604();
  sub_1D7075784();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_1D5DDB8B0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DDB8BC@<X0>(_BYTE *a1@<X8>)
{
  result = FormatCompilerPrimitiveProperty.required.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D5DDB920@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for FormatCompilerPrimitiveProperty();
  result = FormatCompilerPrimitiveProperty.deprecated.getter(v2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D5DDB960(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for FormatCompilerPrimitiveProperty();
  return FormatCompilerPrimitiveProperty.deprecated.setter(v1, v2);
}

uint64_t sub_1D5DDB9C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5DDB9CC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1D5DDBA4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_1D5DDBA9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DDBAEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1D5DDBB3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1D5DDBB84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

unint64_t sub_1D5DDBBC8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5DDBC18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 112);
  return result;
}

uint64_t sub_1D5DDBC60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 112) = v2;
  return result;
}

uint64_t sub_1D5DDBCA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
}

uint64_t sub_1D5DDBCF4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDBD2C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DDBD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatPluginData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DDBE20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatPluginData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DDBED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D5DDBFA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725891C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D5DDC05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DDC0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5DDC144@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      *a2 = 0x7365676E616863;
      a2[1] = 0xE700000000000000;
    }

    else
    {
      v6 = 0x7461636572706564;
      if (!*result)
      {
        v6 = 0x726564726F6572;
      }

      v7 = 0xEA00000000006465;
      if (!*result)
      {
        v7 = 0xE700000000000000;
      }

      *a2 = v6;
      a2[1] = v7;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = v2 == 0;
    if (*(result + 8))
    {
      v5 = 0x676E696E726177;
    }

    else
    {
      v5 = 0x64656C696166;
    }

    if (!v4)
    {
      v3 = 0xE700000000000000;
    }

    *a2 = v5;
    a2[1] = v3;
  }

  return result;
}

uint64_t sub_1D5DDC1F0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDC254(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D708C054(0, &qword_1EC899E00, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5DDC320(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D708C054(0, &qword_1EC899E00, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DDC3E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDC46C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDC4A4()
{
  v1 = type metadata accessor for FormatContent.Resolved();
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v1[5];
  v5 = sub_1D725891C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v6 = v3 + v1[16];
  v7 = type metadata accessor for FormatWebEmbed.Resolved();
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = v6 + v7[5];

    v9 = type metadata accessor for FormatWebEmbed();
    v10 = *(v9 + 20);
    v11 = sub_1D72585BC();
    v12 = *(v11 - 8);
    v25 = *(v12 + 8);
    v25(v8 + v10, v11);
    v13 = *(v9 + 24);
    if (!(*(v12 + 48))(v8 + v13, 1, v11))
    {
      v25(v8 + v13, v11);
    }

    v14 = v6 + v7[8];
    v15 = type metadata accessor for WebEmbedDataVisualization();
    if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v16 = type metadata accessor for GenericDataVisualization();
        v25(v14 + *(v16 + 20), v11);
      }

      else
      {
      }
    }

    v17 = v7[9];
    sub_1D70A2554(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
    v19 = v18;
    v20 = *(v18 - 8);
    if (!(*(v20 + 48))(v6 + v17, 1, v18))
    {
      (*(v20 + 8))(v6 + v17, v19);
    }
  }

  v21 = v1[21];
  v22 = sub_1D72608BC();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v3 + v21, 1, v22))
  {
    (*(v23 + 8))(v3 + v21, v22);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDC9E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCA1C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DDCA8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCAC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D69DAB28(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DDCBE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D69DAB28(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DDCCA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCCE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCD20()
{
  v1 = *(type metadata accessor for DateComparison() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = sub_1D725891C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1D5DDCDEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCE2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCE64()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCEA4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DDCF60()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDCFA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatWebEmbed() + 44));
}

uint64_t sub_1D5DDCFEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatWebEmbed() + 48));
}

uint64_t sub_1D5DDD038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D72585BC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D5B54F14(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D5DDD178(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D72585BC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D5B54F14(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5DDD2B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDD33C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDD37C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDD3C4()
{

  return swift_deallocObject();
}

__n128 sub_1D5DDD440(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DDD44C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDD4B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDD4EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DDD540(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DDD5EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DDD690()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDD6C8()
{

  swift_unknownObjectRelease();

  if (*(v0 + 112) != 1)
  {

    if (*(v0 + 144))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 120);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_1D5DDD778()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 312);

  return swift_deallocObject();
}

uint64_t sub_1D5DDD8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725C2AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D725C1EC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5DDD9D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D725C2AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D725C1EC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D5DDDAD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDDB08()
{
  if (*(v0 + 16) >= 2uLL)
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDDB4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDDB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DDDC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatBlueprintItemSelectionContext.Action(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DDDD04(uint64_t a1, uint64_t a2)
{
  sub_1D6F9A330();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5DDDD70(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_1D6F9A330();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5DDDDF4()
{
  if (*(v0 + 24) >= 0x10uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDDE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DDDEE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725BD1C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DDDF84()
{
  v1 = (type metadata accessor for SharedItem() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_1D725891C();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = v1[9];
  v5 = sub_1D72585BC();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1D5DDE0A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5DDE108()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDE148(uint64_t a1)
{
  sub_1D70EE804(0, &qword_1EC89A918, sub_1D70EE1DC, sub_1D5F7B9E4);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5DDE1DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D726110C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5DDE248(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 126)
  {
    v4 = *a1 >> 57;
    v5 = v4 & 0x38 | *a1 & 7;
    if (v5)
    {
      return 128 - ((v4 >> 6) | (2 * v5));
    }

    else
    {
      return 0;
    }
  }

  sub_1D5BBDC0C(0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_9:
    v14 = *(v11 + 48);

    return v14(&a1[v12], a2, v10);
  }

  v13 = sub_1D725F3DC();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1D725F15C();
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[7]];

  return v16(v17, a2, v15);
}

unint64_t *sub_1D5DDE3C4(unint64_t *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 126)
  {
    v6 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
    return result;
  }

  sub_1D5BBDC0C(0);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a4[5];
LABEL_7:
    v14 = *(v11 + 56);

    return v14(v5 + v12, a2, a2, v10);
  }

  v13 = sub_1D725F3DC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a4[6];
    goto LABEL_7;
  }

  v15 = sub_1D725F15C();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1D5DDE53C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDE580(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedHeadline(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1D5DDE6A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedHeadline(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5DDE840()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDE8A0()
{

  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_1D7106450(*(v0 + 56), *(v0 + 64), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDE928()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DDE960()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = *(v0 + v4);
  if ((v5 - 1) >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDEA2C()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for DebugFormatFileDirectory(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6 + v5[7];
  v8 = sub_1D725BD1C();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  v9(v7 + *(v10 + 20), v8);

  return swift_deallocObject();
}

uint64_t sub_1D5DDEC04()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (type metadata accessor for DebugFormatCacheFile() - 8);
  v6 = (v3 + v4 + *(*v5 + 80)) & ~*(*v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6 + v5[9];
  v8 = sub_1D725BD1C();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  type metadata accessor for DebugFormatCacheFileMetadata();

  v10 = v0 + v6 + v5[10];
  type metadata accessor for FormatFile();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      v11 = type metadata accessor for FormatContent(0);
      v12 = *(v11 + 20);
      v13 = sub_1D725891C();
      (*(*(v13 - 8) + 8))(v10 + v12, v13);

      v14 = *(v11 + 44);
      v15 = sub_1D72608BC();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v10 + v14, 1, v15))
      {
        (*(v16 + 8))(v10 + v14, v15);
      }

      goto LABEL_34;
    case 1u:

      if (*(v10 + 106) != 255)
      {
        v24 = *(v10 + 104) | (*(v10 + 106) << 16);
        sub_1D60CF684(*(v10 + 96), v24, SBYTE2(v24));
      }

      break;
    case 2u:

      if (*(v10 + 72) >= 3uLL)
      {
      }

      goto LABEL_34;
    case 3u:

      if (*(v10 + 56) >= 0x10uLL)
      {
      }

      goto LABEL_34;
    case 4u:

      goto LABEL_34;
    case 5u:

      if (*(v10 + 168) >= 3uLL)
      {
      }

      v35 = type metadata accessor for FormatPackage();
      v25 = v10 + v35[23];

      v33 = type metadata accessor for FormatCompilerOptions(0);
      v34 = v25;
      v26 = v25 + *(v33 + 24);
      if (*(v26 + 8) != 1)
      {
      }

      v27 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
      v28 = sub_1D725B76C();
      v36 = *(v28 - 8);
      v37 = *(v36 + 48);
      if (!v37(v26 + v27, 1, v28))
      {
        (*(v36 + 8))(v26 + v27, v28);
      }

      v29 = *(v33 + 28);
      if (!v37(v34 + v29, 1, v28))
      {
        (*(v36 + 8))(v34 + v29, v28);
      }

      v9(v10 + v35[24], v8);
      v30 = v35[25];
      if (!v37(v10 + v30, 1, v28))
      {
        (*(v36 + 8))(v10 + v30, v28);
      }

      goto LABEL_34;
    case 6u:

      goto LABEL_34;
    case 7u:

      break;
    case 8u:

      goto LABEL_34;
    case 9u:

      goto LABEL_34;
    case 0xAu:

      sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
      break;
    case 0xBu:

      v17 = v10 + *(type metadata accessor for FormatBindingContent() + 28);

      v18 = type metadata accessor for FormatContent(0);
      v19 = *(v18 + 20);
      v20 = sub_1D725891C();
      (*(*(v20 - 8) + 8))(v17 + v19, v20);

      v21 = *(v18 + 44);
      v22 = sub_1D72608BC();
      v23 = *(v22 - 8);
      if (!(*(v23 + 48))(v17 + v21, 1, v22))
      {
        (*(v23 + 8))(v17 + v21, v22);
      }

      break;
    case 0xCu:

LABEL_34:

      break;
    default:
      break;
  }

  sub_1D60CF7A4();
  sub_1D5B952F8(*(v10 + *(v31 + 44)), *(v10 + *(v31 + 44) + 8));

  return swift_deallocObject();
}

uint64_t sub_1D5DDF63C()
{
  v1 = sub_1D72585BC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5DDF6D8()
{
  v1 = *(type metadata accessor for DebugFormatCacheFileMetadata() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1D725BD1C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1D5DDF7D0(char a1)
{
  if (a1)
  {
    return 0x736E6F6973726576;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D5DDF804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FormatPluginData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D711A028(0, &qword_1EDF170E8, MEMORY[0x1E69D7B08], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D5DDF958(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for FormatPluginData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D711A028(0, &qword_1EDF170E8, MEMORY[0x1E69D7B08], MEMORY[0x1E69E6720]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5DDFB38()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDFB9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDFBE4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DDFC1C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDFC60()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DDFC98()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DDFCD0()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDFD80()
{
  v1 = type metadata accessor for GroupLayoutContext();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DDFFAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DDFFFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5DE004C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE0084()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE00C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE0128@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC89B4D8;
  return result;
}

uint64_t sub_1D5DE0174(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC89B4D8 = v1;
  return result;
}

uint64_t sub_1D5DE01F0()
{
  sub_1D5BC6C20(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DE0234()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE0290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedEngagementBanner();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D5DE03B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedEngagementBanner();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5DE04D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DE0584(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1D5DE0638(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DE0644()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE067C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE06BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DE070C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DE075C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1D5DE07A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 80) = v2;
  return result;
}

unint64_t sub_1D5DE07E8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5DE0838@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1D5DE0880(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

uint64_t sub_1D5DE08C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_1D5DE0914()
{
  sub_1D6BB646C(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unownedRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D5DE0A54()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE0A8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE0AC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE0B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FormatMetadata();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = sub_1D72585BC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 40);

  return v15(v16, a2, v14);
}

uint64_t sub_1D5DE0C44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D725BD1C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for FormatMetadata();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
    goto LABEL_5;
  }

  v16 = sub_1D72585BC();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 40);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1D5DE0D90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FormatVersioningModeSelection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DE0E3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatVersioningModeSelection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DE0F28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DE0FD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DE108C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE10C8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DE1100()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D5DE1148()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE1180()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE11C0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE1200()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE1270()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE12A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE12E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE1330()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE13A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE13F0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE1428(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D7259F5C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_1D7259CFC();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1D5DE1534(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D7259F5C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_1D7259CFC();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D5DE1778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DebugFormatEditorLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5DE1824(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DebugFormatEditorLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DE18C8()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE1904()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE1944()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE198C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DE19CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE1A04()
{
  v1 = type metadata accessor for WebEmbedImageRequest();
  v2 = (*(*(v1 - 1) + 80) + 64) & ~*(*(v1 - 1) + 80);

  v3 = sub_1D72585BC();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);

  v5 = v0 + v2 + v1[8];
  v6 = type metadata accessor for WebEmbedDataVisualization();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v7 = type metadata accessor for GenericDataVisualization();
      v4(v5 + *(v7 + 20), v3);
    }

    else
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE1C14()
{
  v1 = type metadata accessor for WebEmbedImageRequest();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);

  v3 = sub_1D72585BC();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);

  v5 = v0 + v2 + v1[8];
  v6 = type metadata accessor for WebEmbedDataVisualization();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v7 = type metadata accessor for GenericDataVisualization();
      v4(v5 + *(v7 + 20), v3);
    }

    else
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE1E2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE1E78()
{
  sub_1D6CD33BC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D5DE2074()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE20F4()
{
  v1 = sub_1D7259F5C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D7259CFC();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D5DE2260()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE2298()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE22E8()
{
  sub_1D6086768(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DE2320()
{

  if (*(v0 + 24) != 1)
  {

    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_1D5D2F2C4(*(v0 + 80), *(v0 + 88), v1 & 1);
    }

    v2 = *(v0 + 136);
    if (v2 != 255)
    {
      sub_1D618909C(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), v2 & 1);
    }

    v3 = *(v0 + 160);
    if (v3 != 255)
    {
      sub_1D5D2F2C4(*(v0 + 144), *(v0 + 152), v3 & 1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE23E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE2420()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE2474()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE24B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DE2500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DE2550()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE2598()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

__n128 sub_1D5DE2638(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5DE2774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_1D5B62FAC(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D5DE28B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D72585BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_1D5B62FAC(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D5DE29F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE2A3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DE2A8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1D5DE2AD4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1D5DE2B18()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE2BB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE2BF0()
{

  return swift_deallocObject();
}

id sub_1D5DE2C38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed20EngagementBannerView_engagementView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D5DE2CA4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE2CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatContentSlotItemObject();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D5DE2DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatContentSlotItemObject();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1D5DE2E6C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DE2EA4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE2EEC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DE2F24()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE2F60()
{
  v1 = *(type metadata accessor for FeedItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for DebugGroupLayoutKey();
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);

  v6 = v0 + v2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v6 + 48) >= 0x12uLL)
      {
        goto LABEL_124;
      }

      break;
    case 1u:

      if (*(v6 + 80) >= 0x12uLL)
      {
        goto LABEL_124;
      }

      break;
    case 2u:

      v48 = type metadata accessor for FeedBannerAd();
      v49 = *(v48 + 20);
      v50 = sub_1D7260DDC();
      goto LABEL_95;
    case 3u:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v51 = type metadata accessor for FeedHeadline(0);
      v52 = v51[10];
      v53 = v6 + v52 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v54 = type metadata accessor for SharedItem();
      if (!(*(*(v54 - 8) + 48))(v53, 1, v54))
      {
        v55 = sub_1D725891C();
        (*(*(v55 - 8) + 8))(v53, v55);

        v56 = *(v54 + 28);
        v57 = sub_1D72585BC();
        (*(*(v57 - 8) + 8))(v53 + v56, v57);
      }

      v58 = v51[11];
      v59 = sub_1D726045C();
      v60 = *(v59 - 8);
      if (!(*(v60 + 48))(v6 + v58, 1, v59))
      {
        (*(v60 + 8))(v6 + v58, v59);
      }

      if (*(v6 + v51[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v6 + v51[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      break;
    case 4u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v22 = type metadata accessor for FeedWebEmbed();
      v23 = v22[8];
      v24 = sub_1D72585BC();
      v25 = *(v24 - 8);
      v103 = *(v25 + 8);
      v103(v6 + v23, v24);
      v26 = v22[9];
      if (!(*(v25 + 48))(v6 + v26, 1, v24))
      {
        v103(v6 + v26, v24);
      }

      v102 = v24;

      v27 = v6 + v22[12];
      v28 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v28 - 1) + 48))(v27, 1, v28))
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v29 = v28[10];
        v98 = v27 + v29 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v100 = type metadata accessor for SharedItem();
        if (!(*(*(v100 - 8) + 48))(v98, 1))
        {
          v30 = sub_1D725891C();
          (*(*(v30 - 8) + 8))(v98, v30);

          v103(v98 + *(v100 + 28), v102);
        }

        v31 = v28[11];
        v32 = sub_1D726045C();
        v99 = *(v32 - 8);
        v101 = v31;
        v33 = v27 + v31;
        v34 = v32;
        if (!(*(v99 + 48))(v33, 1, v32))
        {
          (*(v99 + 8))(v27 + v101, v34);
        }

        if (*(v27 + v28[12] + 8) >= 0x12uLL)
        {
        }

        if (*(v27 + v28[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v35 = v6 + v22[13];
      v36 = type metadata accessor for WebEmbedDataVisualization();
      if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v37 = type metadata accessor for GenericDataVisualization();
          v103(v35 + *(v37 + 20), v102);
        }

        else
        {
        }
      }

      goto LABEL_124;
    case 5u:
      goto LABEL_81;
    case 6u:
      v61 = *(v6 + 281);
      if (v61 == 2)
      {
        goto LABEL_85;
      }

      if (v61 == 1)
      {

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
        }

        v75 = *(v6 + 144);
        if (v75)
        {

          if (*(v6 + 224) != 1)
          {
          }

          if (*(v6 + 272) >= 0x12uLL)
          {
            goto LABEL_124;
          }
        }
      }

      else
      {
        if (*(v6 + 281))
        {
          break;
        }

LABEL_81:

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
          goto LABEL_124;
        }
      }

      break;
    case 7u:
LABEL_85:

      swift_unknownObjectRelease();

      if (*(v6 + 88) != 1)
      {

        if (*(v6 + 120))
        {
          __swift_destroy_boxed_opaque_existential_1(v6 + 96);
        }
      }

      break;
    case 8u:

      v62 = v6 + *(type metadata accessor for FeedCustomItem() + 20);

      v63 = *(type metadata accessor for FormatCustomItem.Resolved() + 24);
      v64 = type metadata accessor for FormatCustomItem.Action();
      if (!(*(*(v64 - 8) + 48))(v62 + v63, 1, v64))
      {
        v65 = sub_1D72585BC();
        (*(*(v65 - 8) + 8))(v62 + v63, v65);
      }

      goto LABEL_124;
    case 9u:

      if (*(v6 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 32);
      }

      if (*(v6 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 72);
      }

      if (*(v6 + 136))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 112);
      }

      break;
    case 0xAu:

      v48 = type metadata accessor for FeedEngagementBanner();
      v49 = *(v48 + 20);
      v50 = sub_1D725C08C();
LABEL_95:
      (*(*(v50 - 8) + 8))(v6 + v49, v50);
      if (*(v6 + *(v48 + 32) + 8) >= 0x12uLL)
      {
        goto LABEL_124;
      }

      break;
    case 0xBu:

      break;
    case 0xCu:

      if (*(v6 + 40) >= 0x12uLL)
      {
      }

      if (*(v6 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v38 = type metadata accessor for FeedRecipe();
      v39 = v38[9];
      v40 = v6 + v39 + *(type metadata accessor for FeedRecipe.State() + 20);
      v41 = type metadata accessor for SharedItem();
      if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
      {
        v42 = sub_1D725891C();
        (*(*(v42 - 8) + 8))(v40, v42);

        v43 = *(v41 + 28);
        v44 = sub_1D72585BC();
        (*(*(v44 - 8) + 8))(v40 + v43, v44);
      }

      v45 = v6 + v38[10];
      if (*(v45 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v46 = v6 + v38[12];
      if (*(v46 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v46);
      }

      v47 = v6 + v38[13];
      if (*(v47 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v47);
      }

      break;
    case 0xDu:
      goto LABEL_68;
    case 0xEu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 88);
      }

      if (*(v6 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 128);
      }

      if (*(v6 + 192))
      {
        __swift_destroy_boxed_opaque_existential_1(v6 + 168);
      }

      break;
    case 0xFu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

LABEL_68:

      swift_unknownObjectRelease();
      break;
    case 0x10u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v7 = v6 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
      swift_unknownObjectRelease();
      v8 = v7 + *(type metadata accessor for PuzzleStatistic() + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v79 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v79 - 8) + 48))(v8, 1, v79))
          {
            v80 = sub_1D725891C();
            (*(*(v80 - 8) + 8))(v8, v80);
            v81 = type metadata accessor for PuzzleLeaderboardEntry();

            v82 = v8 + *(v81 + 24);

            v83 = *(v82 + 40);
            if (v83 >> 60 != 15)
            {
              sub_1D5B952F8(*(v82 + 32), v83);
            }

LABEL_124:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v66 = v8;
          v105 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v67 = *(v105 + 28);
          v68 = type metadata accessor for PuzzleStreak();
          v69 = *(*(v68 - 8) + 48);
          v104 = v67;
          v70 = v66 + v67;
          v71 = v66;
          if (!v69(v70, 1, v68))
          {
            v72 = sub_1D7257ADC();
            (*(*(v72 - 8) + 8))(v66 + v104, v72);
          }

          v73 = *(v105 + 32);
          if (!v69(v71 + v73, 1, v68))
          {
            v74 = sub_1D7257ADC();
            (*(*(v74 - 8) + 8))(v71 + v73, v74);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          type metadata accessor for PuzzleStatisticValue(0);
          v10 = swift_getEnumCaseMultiPayload();
          if (v10 == 6 || v10 == 5)
          {
            v11 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v11 - 8) + 48))(v8, 1, v11))
            {
              v12 = sub_1D7257ADC();
              (*(*(v12 - 8) + 8))(v8, v12);
            }
          }

          v13 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
          v14 = *(v13 + 20);
          v15 = swift_getEnumCaseMultiPayload();
          if (v15 == 6 || v15 == 5)
          {
            v16 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v16 - 8) + 48))(v8 + v14, 1, v16))
            {
              v17 = sub_1D7257ADC();
              (*(*(v17 - 8) + 8))(v8 + v14, v17);
            }
          }

          v18 = *(v13 + 24);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 == 6 || v19 == 5)
          {
            v20 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v20 - 8) + 48))(v8 + v18, 1, v20))
            {
              v21 = sub_1D7257ADC();
              (*(*(v21 - 8) + 8))(v8 + v18, v21);
            }
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v76 = swift_getEnumCaseMultiPayload();
        if (v76 == 6 || v76 == 5)
        {
          v77 = type metadata accessor for PuzzleStreak();
          if (!(*(*(v77 - 8) + 48))(v8, 1, v77))
          {
            v78 = sub_1D7257ADC();
            (*(*(v78 - 8) + 8))(v8, v78);
          }
        }
      }

      break;
    case 0x11u:

      if (*(v6 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 240) < 0x12uLL)
      {
        break;
      }

      goto LABEL_124;
    default:
      break;
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + v5 + 16);
  v84 = v0 + v5 + *(v4 + 24);
  __swift_destroy_boxed_opaque_existential_1(v84 + 8);

  v85 = *(type metadata accessor for GroupLayoutBindingContext() + 52);
  v86 = sub_1D725A0AC();
  (*(*(v86 - 8) + 8))(v84 + v85, v86);

  v87 = v0 + v5 + *(v4 + 28);
  v88 = sub_1D7259F5C();
  (*(*(v88 - 8) + 8))(v87, v88);
  v89 = type metadata accessor for GroupLayoutContext();
  v90 = *(v89 + 20);
  v91 = sub_1D7259CFC();
  (*(*(v91 - 8) + 8))(v87 + v90, v91);
  v92 = v87 + *(v89 + 24);
  if (*(v92 + 24) >= 2uLL)
  {
  }

  v93 = type metadata accessor for FeedLayoutSolverOptions(0);
  v94 = *(v93 + 36);
  v95 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v95 - 8) + 48))(v92 + v94, 1, v95))
  {
    v96 = sub_1D725E23C();
    (*(*(v96 - 8) + 8))(v92 + v94, v96);
  }

  if (*(v92 + *(v93 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE430C()
{
  v1 = (type metadata accessor for DebugGroupLayoutKey() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*(type metadata accessor for FeedItem(0) - 8) + 80);
  v5 = v3 + v4;

  __swift_destroy_boxed_opaque_existential_1(v0 + v2 + 16);
  v6 = v0 + v2 + v1[8];
  __swift_destroy_boxed_opaque_existential_1(v6 + 8);

  v7 = *(type metadata accessor for GroupLayoutBindingContext() + 52);
  v8 = sub_1D725A0AC();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v0 + v2 + v1[9];
  v10 = sub_1D7259F5C();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for GroupLayoutContext();
  v12 = *(v11 + 20);
  v13 = sub_1D7259CFC();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  v14 = v9 + *(v11 + 24);
  if (*(v14 + 24) >= 2uLL)
  {
  }

  v15 = v2 + v5;
  v16 = type metadata accessor for FeedLayoutSolverOptions(0);
  v17 = *(v16 + 36);
  v18 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v18 - 8) + 48))(v14 + v17, 1, v18))
  {
    v19 = sub_1D725E23C();
    (*(*(v19 - 8) + 8))(v14 + v17, v19);
  }

  if (*(v14 + *(v16 + 40) + 8) != 1)
  {
  }

  v20 = v0 + (v15 & ~v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v20 + 48) >= 0x12uLL)
      {
        goto LABEL_130;
      }

      break;
    case 1u:

      if (*(v20 + 80) >= 0x12uLL)
      {
        goto LABEL_130;
      }

      break;
    case 2u:

      v64 = type metadata accessor for FeedBannerAd();
      v65 = *(v64 + 20);
      v66 = sub_1D7260DDC();
      goto LABEL_101;
    case 3u:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v67 = type metadata accessor for FeedHeadline(0);
      v68 = v67[10];
      v69 = v20 + v68 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v70 = type metadata accessor for SharedItem();
      if (!(*(*(v70 - 8) + 48))(v69, 1, v70))
      {
        v71 = sub_1D725891C();
        (*(*(v71 - 8) + 8))(v69, v71);

        v72 = *(v70 + 28);
        v73 = sub_1D72585BC();
        (*(*(v73 - 8) + 8))(v69 + v72, v73);
      }

      v74 = v67[11];
      v75 = sub_1D726045C();
      v76 = *(v75 - 8);
      if (!(*(v76 + 48))(v20 + v74, 1, v75))
      {
        (*(v76 + 8))(v20 + v74, v75);
      }

      if (*(v20 + v67[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v20 + v67[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      break;
    case 4u:
      if (*(v20 + 32) >= 0x12uLL)
      {
      }

      v36 = type metadata accessor for FeedWebEmbed();
      v37 = v36[8];
      v38 = sub_1D72585BC();
      v39 = *(v38 - 8);
      v40 = *(v39 + 8);
      v40(v20 + v37, v38);
      v41 = v36[9];
      if (!(*(v39 + 48))(v20 + v41, 1, v38))
      {
        v40(v20 + v41, v38);
      }

      v100 = v40;

      v42 = v20 + v36[12];
      v43 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v43 - 1) + 48))(v42, 1, v43))
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v44 = v43[10];
        v45 = v42 + v44 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v46 = type metadata accessor for SharedItem();
        if (!(*(*(v46 - 8) + 48))(v45, 1, v46))
        {
          v47 = sub_1D725891C();
          (*(*(v47 - 8) + 8))(v45, v47);

          v100(v45 + *(v46 + 28), v38);
        }

        v99 = v38;
        v48 = v43[11];
        v49 = sub_1D726045C();
        v50 = *(v49 - 8);
        if (!(*(v50 + 48))(v42 + v48, 1, v49))
        {
          (*(v50 + 8))(v42 + v48, v49);
        }

        if (*(v42 + v43[12] + 8) >= 0x12uLL)
        {
        }

        v38 = v99;
        if (*(v42 + v43[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v51 = v20 + v36[13];
      v52 = type metadata accessor for WebEmbedDataVisualization();
      if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v53 = type metadata accessor for GenericDataVisualization();
          v100(v51 + *(v53 + 20), v38);
        }

        else
        {
        }
      }

      goto LABEL_130;
    case 5u:
      goto LABEL_87;
    case 6u:
      v77 = *(v20 + 281);
      if (v77 == 2)
      {
        goto LABEL_91;
      }

      if (v77 == 1)
      {

        if (*(v20 + 80) != 1)
        {
        }

        if (*(v20 + 128) >= 0x12uLL)
        {
        }

        v89 = *(v20 + 144);
        if (v89)
        {

          if (*(v20 + 224) != 1)
          {
          }

          if (*(v20 + 272) >= 0x12uLL)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        if (*(v20 + 281))
        {
          break;
        }

LABEL_87:

        if (*(v20 + 80) != 1)
        {
        }

        if (*(v20 + 128) >= 0x12uLL)
        {
          goto LABEL_130;
        }
      }

      break;
    case 7u:
LABEL_91:

      swift_unknownObjectRelease();

      if (*(v20 + 88) != 1)
      {

        if (*(v20 + 120))
        {
          __swift_destroy_boxed_opaque_existential_1(v20 + 96);
        }
      }

      break;
    case 8u:

      v78 = v20 + *(type metadata accessor for FeedCustomItem() + 20);

      v79 = *(type metadata accessor for FormatCustomItem.Resolved() + 24);
      v80 = type metadata accessor for FormatCustomItem.Action();
      if (!(*(*(v80 - 8) + 48))(v78 + v79, 1, v80))
      {
        v81 = sub_1D72585BC();
        (*(*(v81 - 8) + 8))(v78 + v79, v81);
      }

      goto LABEL_130;
    case 9u:

      if (*(v20 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 32);
      }

      if (*(v20 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 72);
      }

      if (*(v20 + 136))
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 112);
      }

      break;
    case 0xAu:

      v64 = type metadata accessor for FeedEngagementBanner();
      v65 = *(v64 + 20);
      v66 = sub_1D725C08C();
LABEL_101:
      (*(*(v66 - 8) + 8))(v20 + v65, v66);
      if (*(v20 + *(v64 + 32) + 8) < 0x12uLL)
      {
        break;
      }

      goto LABEL_130;
    case 0xBu:

      break;
    case 0xCu:

      if (*(v20 + 40) >= 0x12uLL)
      {
      }

      if (*(v20 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v54 = type metadata accessor for FeedRecipe();
      v55 = v54[9];
      v56 = v20 + v55 + *(type metadata accessor for FeedRecipe.State() + 20);
      v57 = type metadata accessor for SharedItem();
      if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
      {
        v58 = sub_1D725891C();
        (*(*(v58 - 8) + 8))(v56, v58);

        v59 = *(v57 + 28);
        v60 = sub_1D72585BC();
        (*(*(v60 - 8) + 8))(v56 + v59, v60);
      }

      v61 = v20 + v54[10];
      if (*(v61 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v61);
      }

      v62 = v20 + v54[12];
      if (*(v62 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v62);
      }

      v63 = v20 + v54[13];
      if (*(v63 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(v63);
      }

      break;
    case 0xDu:
      goto LABEL_74;
    case 0xEu:
      if (*(v20 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v20 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 88);
      }

      if (*(v20 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 128);
      }

      if (*(v20 + 192))
      {
        __swift_destroy_boxed_opaque_existential_1(v20 + 168);
      }

      break;
    case 0xFu:
      if (*(v20 + 32) >= 0x12uLL)
      {
      }

LABEL_74:

      swift_unknownObjectRelease();
      break;
    case 0x10u:
      if (*(v20 + 32) >= 0x12uLL)
      {
      }

      v21 = v20 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
      swift_unknownObjectRelease();
      v22 = v21 + *(type metadata accessor for PuzzleStatistic() + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v93 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v93 - 8) + 48))(v22, 1, v93))
          {
            v94 = sub_1D725891C();
            (*(*(v94 - 8) + 8))(v22, v94);
            v95 = type metadata accessor for PuzzleLeaderboardEntry();

            v96 = v22 + *(v95 + 24);

            v97 = *(v96 + 40);
            if (v97 >> 60 != 15)
            {
              sub_1D5B952F8(*(v96 + 32), v97);
            }

LABEL_130:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v82 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v83 = *(v82 + 28);
          v84 = type metadata accessor for PuzzleStreak();
          v85 = *(*(v84 - 8) + 48);
          if (!v85(v22 + v83, 1, v84))
          {
            v86 = sub_1D7257ADC();
            (*(*(v86 - 8) + 8))(v22 + v83, v86);
          }

          v87 = *(v82 + 32);
          if (!v85(v22 + v87, 1, v84))
          {
            v88 = sub_1D7257ADC();
            (*(*(v88 - 8) + 8))(v22 + v87, v88);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          type metadata accessor for PuzzleStatisticValue(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 == 6 || v24 == 5)
          {
            v25 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v25 - 8) + 48))(v22, 1, v25))
            {
              v26 = sub_1D7257ADC();
              (*(*(v26 - 8) + 8))(v22, v26);
            }
          }

          v27 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
          v28 = *(v27 + 20);
          v29 = swift_getEnumCaseMultiPayload();
          if (v29 == 6 || v29 == 5)
          {
            v30 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v30 - 8) + 48))(v22 + v28, 1, v30))
            {
              v31 = sub_1D7257ADC();
              (*(*(v31 - 8) + 8))(v22 + v28, v31);
            }
          }

          v32 = *(v27 + 24);
          v33 = swift_getEnumCaseMultiPayload();
          if (v33 == 6 || v33 == 5)
          {
            v34 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v34 - 8) + 48))(v22 + v32, 1, v34))
            {
              v35 = sub_1D7257ADC();
              (*(*(v35 - 8) + 8))(v22 + v32, v35);
            }
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v90 = swift_getEnumCaseMultiPayload();
        if (v90 == 6 || v90 == 5)
        {
          v91 = type metadata accessor for PuzzleStreak();
          if (!(*(*(v91 - 8) + 48))(v22, 1, v91))
          {
            v92 = sub_1D7257ADC();
            (*(*(v92 - 8) + 8))(v22, v92);
          }
        }
      }

      break;
    case 0x11u:

      if (*(v20 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v20 + 240) < 0x12uLL)
      {
        break;
      }

      goto LABEL_130;
    default:
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE5744()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D5DE57DC()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 64) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D5DE5874(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DE5920(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DE59EC()
{
  sub_1D71BE820();
  sub_1D71BE9A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D5DE5A50(void *a1, void *a2)
{

  *a2 = *a1;
}

uint64_t sub_1D5DE5A94()
{
  v1 = type metadata accessor for GroupLayoutContext();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE5CC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE5DAC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE5DE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE5E24()
{

  sub_1D6057D74(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D5DE5E90()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE5EC8()
{
  if ((*(v0 + 24) & 0xFELL) != 0xC)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE5F14()
{
  sub_1D5F33D8C(v0[2]);
  if ((v0[3] & 0xFE) != 0xC)
  {
    sub_1D5F33D8C(v0[4]);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE5F64()
{
  sub_1D5D28C84(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5DE5FB4()
{
  sub_1D5E1DF18(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 65));
  sub_1D5CA8488(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120) | (*(v0 + 122) << 16));

  return swift_deallocObject();
}

uint64_t sub_1D5DE6018()
{
  sub_1D62B4C5C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D5DE605C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE60F4(uint64_t a1, uint64_t a2)
{
  sub_1D606BD34();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5DE6160(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_1D606BD34();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5DE61E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DE6230@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DE6280()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE62C8()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5DE630C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE6344()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE63C0(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5DE6410(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D5DE6458()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE6494()
{
  v1 = sub_1D725EECC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for FeedItemSupplementaryAttributes() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = (v0 + v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {

    v10 = v8 + *(type metadata accessor for InternalErrorViewLayout.Context() + 48);
    type metadata accessor for InternalErrorViewModel();
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1D5BC6C20(*(v10 + 2));

      sub_1D5BAAE44(0, v11);
      v13 = &v10[*(v12 + 80)];
      __swift_destroy_boxed_opaque_existential_1((v13 + 8));

      v14 = *(type metadata accessor for GroupLayoutBindingContext() + 52);
      v15 = sub_1D725A0AC();
      (*(*(v15 - 8) + 8))(&v13[v14], v15);

      goto LABEL_8;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_1D5DE67D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE6818()
{

  if (*(v0 + 32) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE6888()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE68C0()
{
  v1 = *(type metadata accessor for FeedCursorTrackerSnapshot() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5DE6AA4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE6ADC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE6B14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DE6B4C()
{

  if (*(v0 + 112) != 1)
  {
  }

  if (*(v0 + 160) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 176);
  if (v1)
  {

    if (*(v0 + 256) != 1)
    {
    }

    if (*(v0 + 304) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 320);

  return swift_deallocObject();
}

uint64_t sub_1D5DE6C60()
{
  sub_1D5BB16D4(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for FeedItem(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        if (*(v2 + 48) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 1u:

        if (*(v2 + 80) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 2u:

        v46 = type metadata accessor for FeedBannerAd();
        v47 = *(v46 + 20);
        v48 = sub_1D7260DDC();
        goto LABEL_99;
      case 3u:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v49 = type metadata accessor for FeedHeadline(0);
        v50 = v49[10];
        v51 = v2 + v50 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v52 = type metadata accessor for SharedItem();
        if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
        {
          v53 = sub_1D725891C();
          (*(*(v53 - 8) + 8))(v51, v53);

          v54 = *(v52 + 28);
          v55 = sub_1D72585BC();
          (*(*(v55 - 8) + 8))(v51 + v54, v55);
        }

        v56 = v49[11];
        v57 = sub_1D726045C();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v2 + v56, 1, v57))
        {
          (*(v58 + 8))(v2 + v56, v57);
        }

        if (*(v2 + v49[12] + 8) >= 0x12uLL)
        {
        }

        if (*(v2 + v49[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }

        break;
      case 4u:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        v20 = type metadata accessor for FeedWebEmbed();
        v21 = v20[8];
        v22 = sub_1D72585BC();
        v23 = *(v22 - 8);
        v82 = *(v23 + 8);
        v82(v2 + v21, v22);
        v24 = v20[9];
        if (!(*(v23 + 48))(v2 + v24, 1, v22))
        {
          v82(v2 + v24, v22);
        }

        v25 = v2 + v20[12];
        v26 = type metadata accessor for FeedHeadline(0);
        if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
        {
          v81 = v22;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v27 = v26[10];
          v28 = v25 + v27 + *(type metadata accessor for FeedHeadline.State(0) + 24);
          v29 = type metadata accessor for SharedItem();
          if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
          {
            v30 = sub_1D725891C();
            (*(*(v30 - 8) + 8))(v28, v30);

            v82(v28 + *(v29 + 28), v81);
          }

          v31 = v26[11];
          v32 = sub_1D726045C();
          v80 = *(v32 - 8);
          if (!(*(v80 + 48))(v25 + v31, 1, v32))
          {
            (*(v80 + 8))(v25 + v31, v32);
          }

          if (*(v25 + v26[12] + 8) >= 0x12uLL)
          {
          }

          v22 = v81;
          if (*(v25 + v26[13]) >= 3uLL)
          {
            swift_unknownObjectRelease();
          }
        }

        v33 = v2 + v20[13];
        v34 = type metadata accessor for WebEmbedDataVisualization();
        if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v35 = type metadata accessor for GenericDataVisualization();
            v82(v33 + *(v35 + 20), v22);
          }

          else
          {
          }
        }

        goto LABEL_128;
      case 5u:
        goto LABEL_85;
      case 6u:
        v59 = *(v2 + 281);
        if (v59 == 2)
        {
          goto LABEL_89;
        }

        if (v59 == 1)
        {

          if (*(v2 + 80) != 1)
          {
          }

          if (*(v2 + 128) >= 0x12uLL)
          {
          }

          v71 = *(v2 + 144);
          if (!v71)
          {
            break;
          }

          if (*(v2 + 224) != 1)
          {
          }

          if (*(v2 + 272) < 0x12uLL)
          {
            break;
          }
        }

        else
        {
          if (*(v2 + 281))
          {
            break;
          }

LABEL_85:

          if (*(v2 + 80) != 1)
          {
          }

          if (*(v2 + 128) < 0x12uLL)
          {
            break;
          }
        }

        goto LABEL_128;
      case 7u:
LABEL_89:

        swift_unknownObjectRelease();

        if (*(v2 + 88) != 1)
        {

          if (*(v2 + 120))
          {
            __swift_destroy_boxed_opaque_existential_1(v2 + 96);
          }
        }

        break;
      case 8u:

        v60 = v2 + *(type metadata accessor for FeedCustomItem() + 20);

        v61 = *(type metadata accessor for FormatCustomItem.Resolved() + 24);
        v62 = type metadata accessor for FormatCustomItem.Action();
        if (!(*(*(v62 - 8) + 48))(v60 + v61, 1, v62))
        {
          v63 = sub_1D72585BC();
          (*(*(v63 - 8) + 8))(v60 + v61, v63);
        }

        goto LABEL_128;
      case 9u:

        if (*(v2 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 32);
        }

        if (*(v2 + 96))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 72);
        }

        if (*(v2 + 136))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 112);
        }

        break;
      case 0xAu:

        v46 = type metadata accessor for FeedEngagementBanner();
        v47 = *(v46 + 20);
        v48 = sub_1D725C08C();
LABEL_99:
        (*(*(v48 - 8) + 8))(v2 + v47, v48);
        if (*(v2 + *(v46 + 32) + 8) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 0xBu:

        break;
      case 0xCu:

        if (*(v2 + 40) >= 0x12uLL)
        {
        }

        if (*(v2 + 48) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }

        v36 = type metadata accessor for FeedRecipe();
        v37 = v36[9];
        v38 = v2 + v37 + *(type metadata accessor for FeedRecipe.State() + 20);
        v39 = type metadata accessor for SharedItem();
        if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
        {
          v40 = sub_1D725891C();
          (*(*(v40 - 8) + 8))(v38, v40);

          v41 = *(v39 + 28);
          v42 = sub_1D72585BC();
          (*(*(v42 - 8) + 8))(v38 + v41, v42);
        }

        v43 = v2 + v36[10];
        if (*(v43 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(v43);
        }

        v44 = v2 + v36[12];
        if (*(v44 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(v44);
        }

        v45 = v2 + v36[13];
        if (*(v45 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1(v45);
        }

        break;
      case 0xDu:
        goto LABEL_72;
      case 0xEu:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        swift_unknownObjectRelease();

        if (*(v2 + 112))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 88);
        }

        if (*(v2 + 152))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 128);
        }

        if (*(v2 + 192))
        {
          __swift_destroy_boxed_opaque_existential_1(v2 + 168);
        }

        break;
      case 0xFu:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

LABEL_72:

        swift_unknownObjectRelease();
        break;
      case 0x10u:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        v5 = v2 + *(type metadata accessor for FeedPuzzleStatistic() + 32);
        swift_unknownObjectRelease();
        v6 = v5 + *(type metadata accessor for PuzzleStatistic() + 20);
        type metadata accessor for PuzzleStatisticCategory(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v75 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
            if (!(*(*(v75 - 8) + 48))(v6, 1, v75))
            {
              v76 = sub_1D725891C();
              (*(*(v76 - 8) + 8))(v6, v76);
              v77 = type metadata accessor for PuzzleLeaderboardEntry();

              v78 = v6 + *(v77 + 24);

              v79 = *(v78 + 40);
              if (v79 >> 60 != 15)
              {
                sub_1D5B952F8(*(v78 + 32), v79);
              }

LABEL_128:
            }
          }

          else if (EnumCaseMultiPayload == 3)
          {
            v64 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
            v65 = *(v64 + 28);
            v66 = type metadata accessor for PuzzleStreak();
            v67 = *(*(v66 - 8) + 48);
            if (!v67(v6 + v65, 1, v66))
            {
              v68 = sub_1D7257ADC();
              (*(*(v68 - 8) + 8))(v6 + v65, v68);
            }

            v69 = *(v64 + 32);
            if (!v67(v6 + v69, 1, v66))
            {
              v70 = sub_1D7257ADC();
              (*(*(v70 - 8) + 8))(v6 + v69, v70);
            }
          }
        }

        else if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            type metadata accessor for PuzzleStatisticValue(0);
            v8 = swift_getEnumCaseMultiPayload();
            if (v8 == 6 || v8 == 5)
            {
              v9 = type metadata accessor for PuzzleStreak();
              if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
              {
                v10 = sub_1D7257ADC();
                (*(*(v10 - 8) + 8))(v6, v10);
              }
            }

            v11 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
            v12 = *(v11 + 20);
            v13 = swift_getEnumCaseMultiPayload();
            if (v13 == 6 || v13 == 5)
            {
              v14 = type metadata accessor for PuzzleStreak();
              if (!(*(*(v14 - 8) + 48))(v6 + v12, 1, v14))
              {
                v15 = sub_1D7257ADC();
                (*(*(v15 - 8) + 8))(v6 + v12, v15);
              }
            }

            v16 = *(v11 + 24);
            v17 = swift_getEnumCaseMultiPayload();
            if (v17 == 6 || v17 == 5)
            {
              v18 = type metadata accessor for PuzzleStreak();
              if (!(*(*(v18 - 8) + 48))(v6 + v16, 1, v18))
              {
                v19 = sub_1D7257ADC();
                (*(*(v19 - 8) + 8))(v6 + v16, v19);
              }
            }
          }
        }

        else
        {
          type metadata accessor for PuzzleStatisticValue(0);
          v72 = swift_getEnumCaseMultiPayload();
          if (v72 == 6 || v72 == 5)
          {
            v73 = type metadata accessor for PuzzleStreak();
            if (!(*(*(v73 - 8) + 48))(v6, 1, v73))
            {
              v74 = sub_1D7257ADC();
              (*(*(v74 - 8) + 8))(v6, v74);
            }
          }
        }

        break;
      case 0x11u:

        if (*(v2 + 136) >= 3uLL)
        {
        }

        swift_unknownObjectRelease();

        if (*(v2 + 240) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      default:
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE7DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatRegex();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5DE7E74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatRegex();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5DE7F34()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE7F94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1D5DE8000(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DE80AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DE8158()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE8274()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE82AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE82FC()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE8334()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE8384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7260E3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FeedContext();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 84);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 88) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D5DE8494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D7260E3C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FeedContext();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 88) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 84);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D5DE85A8()
{
  v1 = type metadata accessor for GroupLayoutContext();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE87D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5DE8824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DE8874@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5DE88C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE88FC()
{
  v1 = *(v0 + 80);
  if (v1 <= 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    goto LABEL_12;
  }

  if (*(v0 + 80) <= 4u)
  {
    if (v1 == 3)
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else if (v1 != 4)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v1 == 5 || v1 == 6)
  {
    goto LABEL_11;
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1D5DE8A04()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5DE8A3C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DE8A9C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5DE8B0C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE8B54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5DE8B8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5DE8BCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5DE8C78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5DE8D38(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5DE8D88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D5DE8DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7257ADC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5DE8E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7257ADC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

BOOL sub_1D5DE8EA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1D7222464(v5, v7);
}

uint64_t sub_1D5DE8F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D6C1CDB8(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5DE8FB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D6C1CDB8(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5DE9058()
{
  v1 = type metadata accessor for GroupLayoutContext();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5DE9284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

unint64_t sub_1D5DE92D4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t sub_1D5DE9324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5DE9374@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1D5DE93BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

unint64_t sub_1D5DE9400@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

uint64_t sub_1D5DE9450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1D5DE9498(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

uint64_t sub_1D5DE94DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}