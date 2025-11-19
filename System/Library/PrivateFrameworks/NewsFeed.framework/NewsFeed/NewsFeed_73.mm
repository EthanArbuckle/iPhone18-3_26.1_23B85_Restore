unint64_t sub_1D61EA574()
{
  result = qword_1EDF14990;
  if (!qword_1EDF14990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14990);
  }

  return result;
}

unint64_t sub_1D61EA5C8()
{
  result = qword_1EDF149A8;
  if (!qword_1EDF149A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149A8);
  }

  return result;
}

unint64_t sub_1D61EA61C()
{
  result = qword_1EDF149C0;
  if (!qword_1EDF149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149C0);
  }

  return result;
}

unint64_t sub_1D61EA670()
{
  result = qword_1EDF149D8;
  if (!qword_1EDF149D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149D8);
  }

  return result;
}

unint64_t sub_1D61EA6C4()
{
  result = qword_1EDF14A08;
  if (!qword_1EDF14A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A08);
  }

  return result;
}

uint64_t sub_1D61EA718(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D61EA760()
{
  result = qword_1EDF14930;
  if (!qword_1EDF14930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14930);
  }

  return result;
}

unint64_t sub_1D61EA7B4()
{
  result = qword_1EDF14948;
  if (!qword_1EDF14948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14948);
  }

  return result;
}

unint64_t sub_1D61EA808()
{
  result = qword_1EDF14960;
  if (!qword_1EDF14960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14960);
  }

  return result;
}

unint64_t sub_1D61EA85C()
{
  result = qword_1EDF148C0;
  if (!qword_1EDF148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148C0);
  }

  return result;
}

unint64_t sub_1D61EA8B0()
{
  result = qword_1EDF148D8;
  if (!qword_1EDF148D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148D8);
  }

  return result;
}

unint64_t sub_1D61EA904()
{
  result = qword_1EDF148F0;
  if (!qword_1EDF148F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148F0);
  }

  return result;
}

unint64_t sub_1D61EA958()
{
  result = qword_1EDF14908;
  if (!qword_1EDF14908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14908);
  }

  return result;
}

uint64_t sub_1D61EA9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s8NewsFeed0B14ServiceOptionsV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v4 = 0x656E696C66666FLL;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (*a2)
  {
    v5 = 0x656E696C66666FLL;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v4 == v5)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = type metadata accessor for FeedServiceOptions(0);
  if ((_s8NewsFeed0B14ServiceOptionsV16RootCursorSourceO2eeoiySbAE_AEtFZ_0(&a1[v7[5]], &a2[v7[5]]) & 1) == 0)
  {
    return 0;
  }

  v8 = v7[6];
  v9 = &a1[v8];
  v10 = a1[v8 + 8];
  v11 = &a2[v8];
  v12 = a2[v8 + 8];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  return a1[v7[7]] == a2[v7[7]];
}

unint64_t sub_1D61EAB20()
{
  result = qword_1EDF14A20;
  if (!qword_1EDF14A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A20);
  }

  return result;
}

unint64_t sub_1D61EAB74()
{
  result = qword_1EDF14918;
  if (!qword_1EDF14918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14918);
  }

  return result;
}

unint64_t sub_1D61EABC8()
{
  result = qword_1EDF148A8;
  if (!qword_1EDF148A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148A8);
  }

  return result;
}

void sub_1D61EAC1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D61EAC84()
{
  result = qword_1EDF14910;
  if (!qword_1EDF14910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14910);
  }

  return result;
}

unint64_t sub_1D61EACD8()
{
  result = qword_1EDF148A0;
  if (!qword_1EDF148A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148A0);
  }

  return result;
}

uint64_t sub_1D61EAD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D61EAD90()
{
  result = qword_1EC885170;
  if (!qword_1EC885170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885170);
  }

  return result;
}

unint64_t sub_1D61EAF00()
{
  result = qword_1EC885178;
  if (!qword_1EC885178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885178);
  }

  return result;
}

unint64_t sub_1D61EAF58()
{
  result = qword_1EC885180;
  if (!qword_1EC885180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885180);
  }

  return result;
}

unint64_t sub_1D61EAFB0()
{
  result = qword_1EC885188;
  if (!qword_1EC885188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885188);
  }

  return result;
}

unint64_t sub_1D61EB008()
{
  result = qword_1EC885190;
  if (!qword_1EC885190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885190);
  }

  return result;
}

unint64_t sub_1D61EB060()
{
  result = qword_1EC885198;
  if (!qword_1EC885198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885198);
  }

  return result;
}

unint64_t sub_1D61EB0B8()
{
  result = qword_1EC8851A0;
  if (!qword_1EC8851A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851A0);
  }

  return result;
}

unint64_t sub_1D61EB110()
{
  result = qword_1EC8851A8;
  if (!qword_1EC8851A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851A8);
  }

  return result;
}

unint64_t sub_1D61EB168()
{
  result = qword_1EDF14A10;
  if (!qword_1EDF14A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A10);
  }

  return result;
}

unint64_t sub_1D61EB1C0()
{
  result = qword_1EDF14A18;
  if (!qword_1EDF14A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A18);
  }

  return result;
}

unint64_t sub_1D61EB218()
{
  result = qword_1EDF148F8;
  if (!qword_1EDF148F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148F8);
  }

  return result;
}

unint64_t sub_1D61EB270()
{
  result = qword_1EDF14900;
  if (!qword_1EDF14900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14900);
  }

  return result;
}

unint64_t sub_1D61EB2C8()
{
  result = qword_1EDF148E0;
  if (!qword_1EDF148E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148E0);
  }

  return result;
}

unint64_t sub_1D61EB320()
{
  result = qword_1EDF148E8;
  if (!qword_1EDF148E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148E8);
  }

  return result;
}

unint64_t sub_1D61EB378()
{
  result = qword_1EDF148C8;
  if (!qword_1EDF148C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148C8);
  }

  return result;
}

unint64_t sub_1D61EB3D0()
{
  result = qword_1EDF148D0;
  if (!qword_1EDF148D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148D0);
  }

  return result;
}

unint64_t sub_1D61EB428()
{
  result = qword_1EDF148B0;
  if (!qword_1EDF148B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148B0);
  }

  return result;
}

unint64_t sub_1D61EB480()
{
  result = qword_1EDF148B8;
  if (!qword_1EDF148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF148B8);
  }

  return result;
}

unint64_t sub_1D61EB4D8()
{
  result = qword_1EDF14950;
  if (!qword_1EDF14950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14950);
  }

  return result;
}

unint64_t sub_1D61EB530()
{
  result = qword_1EDF14958;
  if (!qword_1EDF14958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14958);
  }

  return result;
}

unint64_t sub_1D61EB588()
{
  result = qword_1EDF14938;
  if (!qword_1EDF14938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14938);
  }

  return result;
}

unint64_t sub_1D61EB5E0()
{
  result = qword_1EDF14940;
  if (!qword_1EDF14940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14940);
  }

  return result;
}

unint64_t sub_1D61EB638()
{
  result = qword_1EDF14920;
  if (!qword_1EDF14920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14920);
  }

  return result;
}

unint64_t sub_1D61EB690()
{
  result = qword_1EDF14928;
  if (!qword_1EDF14928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14928);
  }

  return result;
}

unint64_t sub_1D61EB6E8()
{
  result = qword_1EDF149F8;
  if (!qword_1EDF149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149F8);
  }

  return result;
}

unint64_t sub_1D61EB740()
{
  result = qword_1EDF14A00;
  if (!qword_1EDF14A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A00);
  }

  return result;
}

unint64_t sub_1D61EB798()
{
  result = qword_1EDF149C8;
  if (!qword_1EDF149C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149C8);
  }

  return result;
}

unint64_t sub_1D61EB7F0()
{
  result = qword_1EDF149D0;
  if (!qword_1EDF149D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149D0);
  }

  return result;
}

unint64_t sub_1D61EB848()
{
  result = qword_1EDF149B0;
  if (!qword_1EDF149B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149B0);
  }

  return result;
}

unint64_t sub_1D61EB8A0()
{
  result = qword_1EDF149B8;
  if (!qword_1EDF149B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149B8);
  }

  return result;
}

unint64_t sub_1D61EB8F8()
{
  result = qword_1EDF14998;
  if (!qword_1EDF14998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14998);
  }

  return result;
}

unint64_t sub_1D61EB950()
{
  result = qword_1EDF149A0;
  if (!qword_1EDF149A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149A0);
  }

  return result;
}

unint64_t sub_1D61EB9A8()
{
  result = qword_1EDF14980;
  if (!qword_1EDF14980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14980);
  }

  return result;
}

unint64_t sub_1D61EBA00()
{
  result = qword_1EDF14988;
  if (!qword_1EDF14988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14988);
  }

  return result;
}

unint64_t sub_1D61EBA58()
{
  result = qword_1EDF149E0;
  if (!qword_1EDF149E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149E0);
  }

  return result;
}

unint64_t sub_1D61EBAB0()
{
  result = qword_1EDF149E8;
  if (!qword_1EDF149E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF149E8);
  }

  return result;
}

uint64_t sub_1D61EBB04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616261746164 && a2 == 0xEC000000796C6E4FLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726566657270 && a2 == 0xEE00657361626174 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73CE7D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D73CE7F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F6B726F7774656ELL && a2 == 0xEB00000000796C6ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D61EBCD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C66666FLL && a2 == 0xE700000000000000)
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

uint64_t sub_1D61EBDE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4D64656566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73CE810 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73CE830 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1D61EBF58()
{
  if (!qword_1EDF14968)
  {
    type metadata accessor for FeedServiceOptions.RootCursorSource(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF14968);
    }
  }
}

uint64_t CommandShareContext.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t CommandShareContentComplete.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10[0] = v2;
  *(v10 + 15) = *(v1 + 63);
  v3 = *(v10 + 15);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 63) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1D61EC098(v8, v7);
}

void *CommandShareContentComplete.sourceView.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

__n128 CommandShareContentComplete.init(content:activityType:sourceView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  *(a4 + 63) = *(a1 + 63);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 72) = a2;
  *(a4 + 80) = a3;
  return result;
}

uint64_t static SwipeAction.share(headline:feedItemIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v23 = sub_1D725CC8C();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D725CC9C();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v25 = a1;
  v26 = sub_1D5B4AA6C;
  v27 = 0;
  v28 = 0;
  v29 = a2;
  v30 = a3;
  v32 = 0;
  v31 = 0;
  v15 = objc_opt_self();

  swift_unknownObjectRetain();
  v16 = [v15 systemBlueColor];
  if (qword_1EDF05BC0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDF05BC8;
  v18 = [v15 whiteColor];
  _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v17, v18);

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  (*(v11 + 104))(v14, *MEMORY[0x1E69D7628], v22);
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7620], v23);
  return sub_1D725CCAC();
}

uint64_t static SharingActivity.share(headline:selectedText:shareContext:feedItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  swift_unknownObjectRetain();

  v12 = sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDF1BB80;
  sub_1D725DFDC();
  swift_allocObject();
  return sub_1D725D5CC();
}

uint64_t static ContextMenuItem.share(headline:selectedText:shareContext:feedItemIdentifier:)(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v20 = sub_1D725DC6C();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  swift_unknownObjectRetain();

  sub_1D61EC958(a1);
  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDF1BB80;
  (*(v11 + 104))(v14, *MEMORY[0x1E69D7B48], v20);
  v22 = a1;
  v23 = sub_1D5FCBFA8;
  v24 = v15;
  v25 = v19;
  v26 = v21;
  v27 = a6;
  v29 = 0;
  v28 = 0;
  swift_allocObject();
  v17 = v16;
  return sub_1D725D3AC();
}

uint64_t sub_1D61EC958(void *a1)
{
  sub_1D61EEED8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *&v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3).n128_u64[0];
  v6 = &v15 - v5;
  v7 = [a1 routeURL];
  if (v7)
  {
    v8 = v7;
    sub_1D72584EC();

    v9 = sub_1D72585BC();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v12 = sub_1D72585BC();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_1D5E3E404(v6);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v13 = sub_1D725811C();

  return v13;
}

uint64_t static ContextMenuItem.share(tag:prefersTagName:shareContext:)(void *a1, char a2, unsigned __int8 *a3)
{
  swift_getObjectType();

  return sub_1D61ED6EC(a1, a2, a3);
}

uint64_t CommandShareContent.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 66);
  v3 = v2 >> 5;
  if (v3 > 2)
  {
    if ((v2 >> 5) <= 4u)
    {
      if (v3 == 3)
      {
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0x6365526572616853, 0xED00005B20657069);
      }

      else
      {
        sub_1D7263D4C();
        MEMORY[0x1DA6F9910](0x7373496572616853, 0xEC0000005B206575);
      }

      v4 = [v1 description];
      goto LABEL_16;
    }

    if (v3 != 5)
    {
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0x6565466572616853, 0xEB000000005B2064);
      v4 = [v1 description];
LABEL_16:
      v6 = v4;
      v7 = sub_1D726207C();
      v9 = v8;

      MEMORY[0x1DA6F9910](v7, v9);

      MEMORY[0x1DA6F9910](540686880, 0xE400000000000000);
      goto LABEL_17;
    }

    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x6761546572616853, 0xEA00000000005B20);
    v5 = &qword_1EDF3C770;
    goto LABEL_13;
  }

  if (v2 >> 5)
  {
    if (v3 != 1)
    {
      sub_1D7263D4C();
      MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73CE8E0);
      v5 = &qword_1EDF3C700;
LABEL_13:
      sub_1D5B5534C(0, v5);
      sub_1D7263F9C();
      MEMORY[0x1DA6F9910](540686880, 0xE400000000000000);
      goto LABEL_17;
    }

    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x7A75506572616853, 0xED00005B20656C7ALL);
    sub_1D5B5534C(0, &qword_1EDF3C750);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](540686880, 0xE400000000000000);
  }

  else
  {
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0x7472416572616853, 0xEE005B20656C6369);
    sub_1D5B5534C(0, &qword_1EDF3C720);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](540686880, 0xE400000000000000);
  }

LABEL_17:
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](93, 0xE100000000000000);
  return 0;
}

void CommandShareContent.shareContext.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 66);
  if ((v3 >> 5) <= 2u)
  {
    if (v3 >> 5)
    {
      if (v3 >> 5 == 1)
      {
        LOBYTE(v2) = *(v1 + 66) & 0x1F;
      }

      *a1 = v2;
    }

    else
    {
      *a1 = *(v1 + 24);
    }
  }

  else
  {
    *a1 = v2;
  }
}

uint64_t CommandShareContent.feedItemIdentifier.getter()
{
  if (((*(v0 + 66) << 16) & 0xE00000) != 0)
  {
    return 0;
  }

  v1 = *(v0 + 32);

  return v1;
}

uint64_t CommandShareContent.headline.getter()
{
  if (((*(v0 + 66) << 16) & 0xE00000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id CommandShareContent.recipe.getter()
{
  if (((*(v0 + 66) << 16) & 0xE00000) != 0x600000)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

id CommandShareContent.sourceChannel.getter()
{
  v1 = *v0;
  v2 = *(v0 + 66) >> 5;
  if (v2 <= 2)
  {
    if (!(*(v0 + 66) >> 5))
    {
      goto LABEL_3;
    }

    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v4 = [objc_msgSend(v1 puzzleType)];
  }

  else
  {
    if ((*(v0 + 66) >> 5) <= 4u)
    {
LABEL_3:
      v3 = [v1 sourceChannel];
      return v3;
    }

    if (v2 == 5)
    {
LABEL_8:
      v3 = [v1 asChannel];
      return v3;
    }

    v4 = [FCFeedDescriptor.feedTag.getter() asChannel];
  }

  v6 = v4;
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1D61ED2B0()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1D61EEED8(0, &unk_1EDF3B648, MEMORY[0x1E69D7AA8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v21 - v8;
  sub_1D61EEED8(0, &qword_1EDF3B7E0, MEMORY[0x1E69D75F0], v5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v21 - v12;
  v14 = sub_1D725F8BC();
  __swift_allocate_value_buffer(v14, qword_1EDF3AAC0);
  v21[1] = __swift_project_value_buffer(v14, qword_1EDF3AAC0);
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v27 = -8;
  v26 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();

  v17 = [v16 bundleForClass_];
  sub_1D725811C();

  v18 = sub_1D725CB6C();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = sub_1D725DA2C();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
  return sub_1D725F8AC();
}

uint64_t static MenuItem.Sharing.share.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF3AAB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725F8BC();
  v3 = __swift_project_value_buffer(v2, qword_1EDF3AAC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D61ED6EC(void *a1, char a2, unsigned __int8 *a3)
{
  v6 = sub_1D725DC6C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a3;
  v12 = [a1 feedNavImageAssetHandle];
  if (v12)
  {
    v13 = v12;
    v14 = dispatch_group_create();
    v15 = [v13 downloadIfNeededWithGroup_];

    swift_unknownObjectRelease();
  }

  if (FCTagProviding.useSimpleShareTitle.getter())
  {
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = objc_opt_self();

    swift_unknownObjectRetain();
    v18 = [v17 bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDF1BB80;
    (*(v7 + 104))(v11, *MEMORY[0x1E69D7B48], v6);
    v37 = a1;
    v38 = v36;
    v40 = -96;
    v39 = 0;
    swift_allocObject();
    v20 = v19;
  }

  else
  {
    v35 = v6;
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    v21 = qword_1EDF3ACB0;
    type metadata accessor for Localized();
    v22 = swift_getObjCClassFromMetadata();
    v23 = objc_opt_self();
    swift_unknownObjectRetain();
    v34 = v21;

    v24 = [v23 bundleForClass_];
    sub_1D725811C();

    sub_1D61EEED8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7273AE0;
    if (a2)
    {
      v26 = [a1 name];
      v27 = sub_1D726207C();
      v29 = v28;
    }

    else
    {
      v27 = FCTagProviding.localizedTagType.getter();
      v29 = v30;
    }

    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1D5B7E2C0();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    sub_1D72620BC();

    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v31 = qword_1EDF1BB80;
    (*(v7 + 104))(v11, *MEMORY[0x1E69D7B48], v35);
    v37 = a1;
    v38 = v36;
    v40 = -96;
    v39 = 0;
    swift_allocObject();
    v32 = v31;
  }

  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share6puzzle0H4Data0hC0ACSgSo17FCPuzzleProviding_p_AD011PuzzleShareJ0VSgAD07CommandnC0OtFZ_0(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v6 = sub_1D725DC6C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[1];
  v34 = *a2;
  v35 = v11;
  *v36 = a2[2];
  *&v36[10] = *(a2 + 42);
  v25 = *a3;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  v22 = v35;
  v23 = v34;
  v12 = *&v36[8];
  v21 = *v36;
  v20 = *&v36[16];
  v24 = *&v36[24];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();

  swift_unknownObjectRetain();
  sub_1D61EEE50(&v34, &v26);
  v15 = [v14 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v16 = ((v25 & 7) << 16) | 0x200000;
  v17 = qword_1EDF1BB80;
  (*(v7 + 104))(v10, *MEMORY[0x1E69D7B48], v6);
  v26 = a1;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v12;
  v31 = v20;
  v33 = BYTE2(v16);
  v32 = v24;
  sub_1D725D3DC();
  swift_allocObject();
  v18 = v17;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share10puzzleType0hC0ACSgSo08FCPuzzleJ9Providing_p_AD012CommandShareC0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  swift_unknownObjectRetain();
  v12 = [v11 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDF1BB80;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  v16[1] = a1;
  v16[2] = v9;
  v18 = 64;
  v17 = 0;
  sub_1D725D3DC();
  swift_allocObject();
  v14 = v13;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share5issue0hC0ACSgSo7FCIssueC_AD012CommandShareC0OtFZ_0(void *a1, unsigned __int8 *a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = a1;
  v13 = [v11 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDF1BB80;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  v17[1] = v12;
  v17[2] = v9;
  v19 = 0x80;
  v18 = 0;
  sub_1D725D3DC();
  swift_allocObject();
  v15 = v14;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share6recipe0hC0ACSgSo8FCRecipeC_AD012CommandShareC0OtFZ_0(void *a1, unsigned __int8 *a2)
{
  v22 = sub_1D725DC6C();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a2;
  if (qword_1EDF3ACA8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();

  v10 = a1;
  v11 = [v9 bundleForClass_];
  sub_1D725811C();

  sub_1D61EEED8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = [v10 title];
  v14 = sub_1D726207C();
  v16 = v15;

  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D5B7E2C0();
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  sub_1D72620BC();

  if (qword_1EDF1BB78 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDF1BB80;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7B48], v22);
  v23 = v10;
  v24 = v21;
  v26 = 96;
  v25 = 0;
  sub_1D725D3DC();
  swift_allocObject();
  v18 = v17;
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE5share14feedDescriptor0hC0ACSgSo06FCFeedJ0C_AD012CommandShareC0OtFZ_0(void *a1, unsigned __int8 *a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = [FCFeedDescriptor.feedTag.getter() feedNavImageAssetHandle];
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = dispatch_group_create();
    v12 = [v10 downloadIfNeededWithGroup_];

    swift_unknownObjectRelease();
  }

  FCFeedDescriptor.feedTag.getter();
  swift_getObjectType();
  v13 = FCTagProviding.useSimpleShareTitle.getter();
  swift_unknownObjectRelease();
  if (v13)
  {
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();

    v16 = a1;
    v17 = [v15 bundleForClass_];
    sub_1D725811C();

    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDF1BB80;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
    v32 = a1;
    v33 = v9;
    v35 = -64;
    v34 = 0;
    sub_1D725D3DC();
    swift_allocObject();
    v19 = v18;
  }

  else
  {
    v31 = v9;
    if (qword_1EDF3ACA8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Localized();
    v20 = swift_getObjCClassFromMetadata();
    v21 = objc_opt_self();
    v22 = a1;

    v23 = [v21 bundleForClass_];
    sub_1D725811C();

    sub_1D61EEED8(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    v25 = FCFeedDescriptor.localizedFeedType.getter();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1D5B7E2C0();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_1D72620BC();

    if (qword_1EDF1BB78 != -1)
    {
      swift_once();
    }

    v28 = qword_1EDF1BB80;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
    v32 = a1;
    v33 = v31;
    v35 = -64;
    v34 = 0;
    sub_1D725D3DC();
    swift_allocObject();
    v29 = v28;
  }

  return sub_1D725D3AC();
}

unint64_t sub_1D61EEBB0()
{
  result = qword_1EC8851B0;
  if (!qword_1EC8851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed15PuzzleShareDataVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
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

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D61EEC58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1A && *(a1 + 67))
  {
    return (*a1 + 26);
  }

  v3 = (*(a1 + 66) & 0x18 | (*(a1 + 66) >> 5)) ^ 0x1F;
  if (v3 >= 0x19)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D61EECAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x19)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 26;
    if (a3 >= 0x1A)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1A)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 0;
      *(result + 66) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_1D61EED24(uint64_t a1)
{
  v2 = *(a1 + 64);
  result = a1 + 64;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_1D61EED40(uint64_t a1, int a2)
{
  v3 = *(a1 + 64);
  result = a1 + 64;
  *(result + 2) = ((v3 | (*(result + 2) << 16)) & 0x7FFFF | (a2 << 21)) >> 16;
  *result = v3;
  return result;
}

uint64_t sub_1D61EED84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D61EEDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D61EEE50(uint64_t a1, uint64_t a2)
{
  sub_1D5B745B4(0, &qword_1EDF11680, &type metadata for PuzzleShareData, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D61EEED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for DebugFormatCacheFileMetadata()
{
  result = qword_1EC8851B8;
  if (!qword_1EC8851B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61EEFB4()
{
  result = sub_1D725BD1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D61EF028(void *a1)
{
  v3 = v1;
  sub_1D61EF904(0, &qword_1EC8851E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EF79C();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D725BD1C();
  sub_1D61EF968(&qword_1EDF178C0);
  sub_1D726443C();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for DebugFormatCacheFileMetadata() + 20));
    v12[15] = 1;
    sub_1D61EF9AC();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D61EF1F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1D725BD1C();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61EF904(0, &qword_1EC8851C8, MEMORY[0x1E69E6F48]);
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for DebugFormatCacheFileMetadata();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61EF79C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v12;
  v22 = v15;
  v16 = v24;
  v30 = 0;
  sub_1D61EF968(&qword_1EDF43A48);
  v17 = v27;
  v18 = v25;
  sub_1D726431C();
  v19 = v22;
  (*(v16 + 32))(v22, v6, v17);
  v29 = 1;
  sub_1D61EF7F0();
  sub_1D726431C();
  (*(v26 + 8))(v11, v18);
  *(v19 + *(v21 + 20)) = v28;
  sub_1D61EF844(v19, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D61EF8A8(v19);
}

uint64_t sub_1D61EF54C()
{
  if (*v0)
  {
    return 0x704F676E69646F63;
  }

  else
  {
    return 0x6556726576726573;
  }
}

uint64_t sub_1D61EF5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6556726576726573 && a2 == 0xED00006E6F697372;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x704F676E69646F63 && a2 == 0xED0000736E6F6974)
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

uint64_t sub_1D61EF68C(uint64_t a1)
{
  v2 = sub_1D61EF79C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61EF6C8(uint64_t a1)
{
  v2 = sub_1D61EF79C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61EF734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D725BCBC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1D670933C(v7, v8);
}

unint64_t sub_1D61EF79C()
{
  result = qword_1EC8851D0;
  if (!qword_1EC8851D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851D0);
  }

  return result;
}

unint64_t sub_1D61EF7F0()
{
  result = qword_1EC8851D8;
  if (!qword_1EC8851D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851D8);
  }

  return result;
}

uint64_t sub_1D61EF844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatCacheFileMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61EF8A8(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatCacheFileMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D61EF904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D61EF79C();
    v7 = a3(a1, &type metadata for DebugFormatCacheFileMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D61EF968(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D725BD1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D61EF9AC()
{
  result = qword_1EC8851E8;
  if (!qword_1EC8851E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851E8);
  }

  return result;
}

unint64_t sub_1D61EFA14()
{
  result = qword_1EC8851F0;
  if (!qword_1EC8851F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851F0);
  }

  return result;
}

unint64_t sub_1D61EFA6C()
{
  result = qword_1EC8851F8;
  if (!qword_1EC8851F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8851F8);
  }

  return result;
}

unint64_t sub_1D61EFAC4()
{
  result = qword_1EC885200;
  if (!qword_1EC885200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885200);
  }

  return result;
}

uint64_t EngagementBannerViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D61F0C7C(0, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

unint64_t sub_1D61EFC18()
{
  result = qword_1EDF06F30;
  if (!qword_1EDF06F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F30);
  }

  return result;
}

__n128 EngagementBannerViewLayout.Attributes.engagementBannerViewLayoutAttributes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D61EFC8C()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D61EFCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001D73CEB60 == a2)
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

uint64_t sub_1D61EFDA8(uint64_t a1)
{
  v2 = sub_1D61F003C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61EFDE4(uint64_t a1)
{
  v2 = sub_1D61F003C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EngagementBannerViewLayout.Attributes.encode(to:)(void *a1)
{
  sub_1D61F0C7C(0, &qword_1EC885208, sub_1D61F003C, &type metadata for EngagementBannerViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  v10 = v1[3];
  v18 = v1[2];
  v19 = v10;
  v11 = v1[5];
  v20 = v1[4];
  v21 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61F003C();
  sub_1D7264B5C();
  v12 = v1[1];
  v14 = *v1;
  v15 = v12;
  v22 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA924(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    v22 = 1;
    sub_1D61F0090();
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D61F003C()
{
  result = qword_1EDF0BA20[0];
  if (!qword_1EDF0BA20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0BA20);
  }

  return result;
}

unint64_t sub_1D61F0090()
{
  result = qword_1EDF06F20;
  if (!qword_1EDF06F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F20);
  }

  return result;
}

uint64_t EngagementBannerViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v18 = a2;
  sub_1D61F0C7C(0, &qword_1EDF039B8, sub_1D61F003C, &type metadata for EngagementBannerViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61F003C();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v18;
    type metadata accessor for CGRect(0);
    v23 = 0;
    sub_1D5BEA924(&qword_1EDF1A740, type metadata accessor for CGRect);
    sub_1D726431C();
    v16 = v20;
    v17 = v19;
    v23 = 1;
    sub_1D61F033C();
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v16;
    *v11 = v17;
    v11[1] = v13;
    v14 = v20;
    v11[2] = v19;
    v11[3] = v14;
    v15 = v22;
    v11[4] = v21;
    v11[5] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D61F033C()
{
  result = qword_1EDF06F18;
  if (!qword_1EDF06F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F18);
  }

  return result;
}

uint64_t sub_1D61F03A0(uint64_t a1)
{
  v2 = sub_1D61F09C4();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D61F042C()
{
  sub_1D61F0970();

  return sub_1D725A24C();
}

uint64_t sub_1D61F04B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedEngagementBanner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D61F051C()
{
  result = qword_1EDF0BA00;
  if (!qword_1EDF0BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BA00);
  }

  return result;
}

unint64_t sub_1D61F0574()
{
  result = qword_1EC885210;
  if (!qword_1EC885210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885210);
  }

  return result;
}

unint64_t sub_1D61F05CC()
{
  result = qword_1EDF0B9E8;
  if (!qword_1EDF0B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9E8);
  }

  return result;
}

unint64_t sub_1D61F0624()
{
  result = qword_1EDF0B9F0;
  if (!qword_1EDF0B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9F0);
  }

  return result;
}

unint64_t sub_1D61F067C()
{
  result = qword_1EDF0BA08;
  if (!qword_1EDF0BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BA08);
  }

  return result;
}

uint64_t sub_1D61F06D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  sub_1D61F0C7C(0, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t sub_1D61F07EC()
{
  result = type metadata accessor for FeedEngagementBanner();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D61F086C()
{
  result = qword_1EC885218;
  if (!qword_1EC885218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885218);
  }

  return result;
}

unint64_t sub_1D61F08C4()
{
  result = qword_1EDF0BA10;
  if (!qword_1EDF0BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BA10);
  }

  return result;
}

unint64_t sub_1D61F091C()
{
  result = qword_1EDF0BA18;
  if (!qword_1EDF0BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BA18);
  }

  return result;
}

unint64_t sub_1D61F0970()
{
  result = qword_1EDF0B9F8;
  if (!qword_1EDF0B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9F8);
  }

  return result;
}

unint64_t sub_1D61F09C4()
{
  result = qword_1EC885220;
  if (!qword_1EC885220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885220);
  }

  return result;
}

uint64_t sub_1D61F0A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D61F0C7C(0, &qword_1EDF17F80, sub_1D61F0CE4, &type metadata for EngagementBannerViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v19[-v10];
  sub_1D5C18C70();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v16 = sub_1D7259B8C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v20 = a2;
  v21 = a3;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7460], v7);
  v17 = MEMORY[0x1E69D7150];
  sub_1D61F136C(0, &qword_1EDF18060, MEMORY[0x1E69D7150]);
  sub_1D61F1184(&qword_1EDF18068, &qword_1EDF18060, v17);
  sub_1D7259A1C();
  (*(v8 + 8))(v11, v7);
  return sub_1D5C18FC0(v15);
}

void sub_1D61F0C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D61F0CE4()
{
  result = qword_1EDF0B9D8;
  if (!qword_1EDF0B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9D8);
  }

  return result;
}

uint64_t sub_1D61F0D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedEngagementBanner();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61F11C8();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v29 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61F0C7C(0, &qword_1EDF17F80, sub_1D61F0CE4, &type metadata for EngagementBannerViewLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v28 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  sub_1D5C18C70();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v23 = sub_1D7259B8C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v27[1] = swift_getKeyPath();
  (*(v15 + 104))(v18, *MEMORY[0x1E69D74A8], v14);
  v32 = *(a2 + 40);
  sub_1D61F04B4(a3, v9);
  sub_1D61F0C7C(0, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
  sub_1D61F0CE4();
  sub_1D61F12DC();
  sub_1D5BEA924(qword_1EDF06160, type metadata accessor for EngagementBannerViewLayoutAttributesFactory);

  v24 = v29;
  sub_1D7259D2C();
  v25 = MEMORY[0x1E69D6F38];
  sub_1D61F136C(0, &qword_1EDF18138, MEMORY[0x1E69D6F38]);
  sub_1D61F1184(&qword_1EDF18140, &qword_1EDF18138, v25);
  sub_1D7259A3C();

  (*(v30 + 8))(v24, v31);
  (*(v15 + 8))(v18, v28);
  return sub_1D5C18FC0(v22);
}

uint64_t sub_1D61F1184(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D61F136C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D61F11C8()
{
  if (!qword_1EDF18090)
  {
    sub_1D61F0C7C(255, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
    type metadata accessor for EngagementBannerViewLayoutAttributesFactory();
    sub_1D61F0CE4();
    sub_1D61F12DC();
    sub_1D5BEA924(qword_1EDF06160, type metadata accessor for EngagementBannerViewLayoutAttributesFactory);
    v0 = sub_1D7259D3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF18090);
    }
  }
}

unint64_t sub_1D61F12DC()
{
  result = qword_1EDF180F0;
  if (!qword_1EDF180F0)
  {
    sub_1D61F0C7C(255, &qword_1EDF180E8, sub_1D61EFC18, &type metadata for EngagementBannerViewLayoutAttributes, MEMORY[0x1E69D6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF180F0);
  }

  return result;
}

void sub_1D61F136C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EngagementBannerViewLayout;
    v8[1] = &type metadata for EngagementBannerViewLayout.Attributes;
    v8[2] = sub_1D61F0CE4();
    v8[3] = sub_1D61F0970();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t static FormatQueryValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

unint64_t sub_1D61F142C(uint64_t a1)
{
  result = sub_1D61F1454();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61F1454()
{
  result = qword_1EC885228;
  if (!qword_1EC885228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885228);
  }

  return result;
}

unint64_t sub_1D61F14A8(void *a1)
{
  a1[1] = sub_1D5C6BD90();
  a1[2] = sub_1D61F14E0();
  result = sub_1D61F1534();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61F14E0()
{
  result = qword_1EDF111C8;
  if (!qword_1EDF111C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111C8);
  }

  return result;
}

unint64_t sub_1D61F1534()
{
  result = qword_1EC885230;
  if (!qword_1EC885230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885230);
  }

  return result;
}

uint64_t sub_1D61F1698()
{
  sub_1D5B952E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t StubAssetHandle.dataProvider.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier);
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier + 8);
  type metadata accessor for StubAssetHandle.StubAssetDataProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D72AFA90;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = 1;

  return v3;
}

uint64_t StubAssetHandle.uniqueKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier);

  return v1;
}

id StubAssetHandle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StubAssetHandle.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725895C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[OBJC_IVAR____TtC8NewsFeed15StubAssetHandle_identifier];
  sub_1D725894C();
  v9 = sub_1D725893C();
  v11 = v10;
  (*(v4 + 8))(v7, v3);
  *v8 = v9;
  v8[1] = v11;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id StubAssetHandle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatGroupColumnSystemO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D61F1B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1D61F1BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D61F1C2C()
{
  result = qword_1EC885240;
  if (!qword_1EC885240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885240);
  }

  return result;
}

char *sub_1D61F1C80()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v4 = [objc_allocWithZone(type metadata accessor for DebugFormatCanvasView(0)) initWithFrame_];
  [*&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_bindLabel] setHidden_];
  [*&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_priorityView] setHidden_];
  [*&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_chinView] setHidden_];
  [*&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_label] setHidden_];
  v5 = *&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_errorLabel];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x1E69DB970];
  v8 = v5;
  v9 = [v6 systemFontOfSize:13.0 weight:v7];
  [v8 setFont_];

  sub_1D725B31C();

  v55[10] = v51;
  v55[11] = v52;
  v55[12] = v53;
  v55[6] = v47;
  v55[7] = v48;
  v55[8] = v49;
  v55[9] = v50;
  v55[2] = v43;
  v55[3] = v44;
  v55[4] = v45;
  v55[5] = v46;
  v55[0] = v41;
  v55[1] = v42;
  v67 = v51;
  *v68 = v52;
  *&v68[16] = v53;
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v59 = v43;
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v56 = v54;
  v69 = v54;
  v57 = v41;
  v58 = v42;
  if (sub_1D5DEA380(&v57) != 1)
  {
    v10 = OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_feedView;
    v11 = *&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_feedView];
    v36 = v66;
    v37 = v67;
    v38[0] = *v68;
    *(v38 + 15) = *&v68[15];
    v32 = v62;
    v33 = v63;
    v34 = v64;
    v35 = v65;
    v28 = v58;
    v29 = v59;
    v30 = v60;
    v31 = v61;
    v12 = v11;
    sub_1D5ECF1C0(&v58, v39);

    v14 = sub_1D62D78BC(v13);

    v39[8] = v36;
    v39[9] = v37;
    *v40 = v38[0];
    *&v40[15] = *(v38 + 15);
    v39[4] = v32;
    v39[5] = v33;
    v39[6] = v34;
    v39[7] = v35;
    v39[0] = v28;
    v39[1] = v29;
    v39[2] = v30;
    v39[3] = v31;
    sub_1D5ECF21C(v39);
    [v12 setBackgroundColor_];

    v15 = *&v4[v10];
    v16 = v68[19];
    if (v68[20])
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = v15;

    sub_1D67F6CC8(0, 1, 0, 0, 2u, v17 | v16, &v28);

    sub_1D705E280(&v28);

    sub_1D61F4FD8(v55, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
  }

  *&v41 = v3;
  *(&v41 + 1) = v2;
  v19 = v1[8];
  v48 = v1[7];
  v49 = v19;
  v50 = v1[9];
  v20 = v1[4];
  v44 = v1[3];
  v45 = v20;
  v21 = v1[6];
  v46 = v1[5];
  v47 = v21;
  v22 = v1[2];
  v42 = v1[1];
  v43 = v22;
  sub_1D61F20B4(v4);
  *&v41 = v3;
  *(&v41 + 1) = v2;
  v23 = v1[8];
  v48 = v1[7];
  v49 = v23;
  v50 = v1[9];
  v24 = v1[4];
  v44 = v1[3];
  v45 = v24;
  v25 = v1[6];
  v46 = v1[5];
  v47 = v25;
  v26 = v1[2];
  v42 = v1[1];
  v43 = v26;
  sub_1D61F238C(v4);
  return v4;
}

void sub_1D61F20B4(void *a1)
{
  sub_1D5B6C03C(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v21 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  sub_1D725B31C();

  v9 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    v12 = &v6[*(v9 + 28)];
    v14 = *v12;
    v13 = *(v12 + 1);

    sub_1D61F4FD8(v6, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720], sub_1D5B6C03C);
    if (v7 == v14 && v8 == v13)
    {
    }

    else
    {
      v16 = sub_1D72646CC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v10 = 1.0;
    v11 = &selRef_systemBlueColor;
    goto LABEL_12;
  }

  sub_1D61F4FD8(v6, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6720], sub_1D5B6C03C);
LABEL_3:
  v10 = 0.0;
  v11 = &selRef_clearColor;
LABEL_12:
  v17 = [a1 layer];
  v18 = [objc_opt_self() *v11];
  v19 = [v18 CGColor];

  [v17 setBorderColor_];
  v20 = [a1 layer];
  [v20 setBorderWidth_];
}

uint64_t sub_1D61F238C(char *a1)
{
  v141 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1D5B6C03C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v139 = &v119 - v5;
  v6 = sub_1D725895C();
  v131 = *(v6 - 8);
  v132 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v128 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61F4F44();
  v135 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v138 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6C03C(0, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, v2);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v130 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v125 = (&v119 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v140 = &v119 - v20;
  v21 = type metadata accessor for DebugFormatCanvasViewRenderKey(0);
  v136 = *(v21 - 8);
  v137 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v124 = (&v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v144 = (&v119 - v26);
  sub_1D5B6C03C(0, &qword_1EC88DD10, type metadata accessor for DebugFormatEditorWorkspaceGroup, v2);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v119 - v29;
  v31 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v142 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v133 = v33;
  v134 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v143 = &v119 - v36;
  sub_1D5B6C03C(0, &qword_1EC88DD20, type metadata accessor for DebugFormatEditorLayoutContext, v2);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v119 - v39;
  v41 = type metadata accessor for DebugFormatEditorLayoutContext();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v129 = &v119 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v119 - v47;
  v49 = v1[5];
  v179 = v1[4];
  v180 = v49;
  v50 = v1[3];
  v177 = v1[2];
  v178 = v50;
  v51 = v1[8];
  v184 = v1[9];
  v52 = v1[6];
  v182 = v1[7];
  v183 = v51;
  v181 = v52;
  v53 = v1[1];
  v175 = *v1;
  v176 = v53;
  v199[0] = v175;

  sub_1D725B31C();

  v127 = v42;
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v54 = &qword_1EC88DD20;
    v55 = type metadata accessor for DebugFormatEditorLayoutContext;
    v56 = MEMORY[0x1E69E6720];
    v57 = v40;
    return sub_1D61F4FD8(v57, v54, v55, v56, sub_1D5B6C03C);
  }

  sub_1D61F554C(v40, v48, type metadata accessor for DebugFormatEditorLayoutContext);

  sub_1D725B31C();

  v159[10] = v155;
  v159[11] = v156;
  v159[12] = v157;
  v159[6] = v151;
  v159[7] = v152;
  v159[8] = v153;
  v159[9] = v154;
  v159[2] = v147;
  v159[3] = v148;
  v159[4] = v149;
  v159[5] = v150;
  v159[0] = v145;
  v159[1] = v146;
  v171 = v155;
  v172 = v156;
  v173 = v157;
  v167 = v151;
  v168 = v152;
  v169 = v153;
  v170 = v154;
  v163 = v147;
  v164 = v148;
  v165 = v149;
  v166 = v150;
  v160 = v158;
  v174 = v158;
  v161 = v145;
  v162 = v146;
  if (sub_1D5DEA380(&v161) != 1)
  {
    v123 = v48;
    v195 = v171;
    v196 = v172;
    v197 = v173;
    v198 = v174;
    v191 = v167;
    v192 = v168;
    v193 = v169;
    v194 = v170;
    v187 = v163;
    v188 = v164;
    v189 = v165;
    v190 = v166;
    v185 = v161;
    v186 = v162;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600CC();

    sub_1D61F5038(v199, sub_1D61F5098);
    if ((*(v142 + 48))(v30, 1, v31) == 1)
    {
      sub_1D61F5038(v123, type metadata accessor for DebugFormatEditorLayoutContext);
      sub_1D61F4FD8(v159, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
      v54 = &qword_1EC88DD10;
      v55 = type metadata accessor for DebugFormatEditorWorkspaceGroup;
      v56 = MEMORY[0x1E69E6720];
      v57 = v30;
      return sub_1D61F4FD8(v57, v54, v55, v56, sub_1D5B6C03C);
    }

    v119 = v41;
    sub_1D61F554C(v30, v143, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600CC();
    sub_1D61F5038(v199, sub_1D61F5098);

    v60 = v145;
    v61 = v137;
    v62 = v144;
    sub_1D61F512C(v123, v144 + *(v137 + 20), type metadata accessor for DebugFormatEditorLayoutContext);
    v63 = v173;
    v64 = BYTE1(v173);
    v65 = BYTE2(v173);
    *v62 = v60;
    v66 = v62 + *(v61 + 24);
    *v66 = v63;
    v66[1] = v64;
    v66[2] = v65;
    v67 = OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_renderKey;
    v68 = v141;
    swift_beginAccess();
    v69 = v140;
    sub_1D61F512C(v62, v140, type metadata accessor for DebugFormatCanvasViewRenderKey);
    v70 = v136;
    v120 = *(v136 + 56);
    v121 = v136 + 56;
    v120(v69, 0, 1, v61);
    v71 = *(v135 + 48);
    v72 = MEMORY[0x1E69E6720];
    v122 = v67;
    v73 = &v68[v67];
    v74 = v138;
    sub_1D61F5194(v73, v138, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
    v135 = v71;
    sub_1D61F5194(v69, v74 + v71, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, v72, sub_1D5B6C03C);
    v75 = *(v70 + 48);
    if (v75(v74, 1, v61) == 1)
    {
      sub_1D61F4FD8(v69, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
      if (v75(v74 + v135, 1, v61) == 1)
      {
        sub_1D61F4FD8(v159, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
        sub_1D61F5038(v144, type metadata accessor for DebugFormatCanvasViewRenderKey);
        sub_1D61F5038(v143, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D61F5038(v123, type metadata accessor for DebugFormatEditorLayoutContext);
        v54 = &qword_1EC885258;
        v55 = type metadata accessor for DebugFormatCanvasViewRenderKey;
        v56 = MEMORY[0x1E69E6720];
        v57 = v74;
        return sub_1D61F4FD8(v57, v54, v55, v56, sub_1D5B6C03C);
      }
    }

    else
    {
      v76 = v125;
      sub_1D61F5194(v74, v125, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
      v77 = v135;
      if (v75(v74 + v135, 1, v61) != 1)
      {
        v78 = v124;
        sub_1D61F554C(v74 + v77, v124, type metadata accessor for DebugFormatCanvasViewRenderKey);
        v79 = v123;
        if (*v76 == *v78 && v76[1] == v78[1] || (sub_1D72646CC()) && (sub_1D7259C6C())
        {
          v80 = sub_1D7259F0C();
          sub_1D61F4FD8(v140, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
          if (v80)
          {
            v81 = *(v61 + 24);
            v82 = v76 + v81;
            v83 = *(v76 + v81);
            v84 = v78 + v81;
            if (v83 == *v84 && ((v82[1] ^ v84[1]) & 1) == 0 && ((v82[2] ^ v84[2]) & 1) == 0)
            {
              sub_1D61F5038(v78, type metadata accessor for DebugFormatCanvasViewRenderKey);
              sub_1D61F5038(v76, type metadata accessor for DebugFormatCanvasViewRenderKey);
              sub_1D61F4FD8(v74, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
              sub_1D61F4FD8(v159, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
              sub_1D61F5038(v144, type metadata accessor for DebugFormatCanvasViewRenderKey);
              sub_1D61F5038(v143, type metadata accessor for DebugFormatEditorWorkspaceGroup);
              v59 = v79;
              return sub_1D61F5038(v59, type metadata accessor for DebugFormatEditorLayoutContext);
            }
          }
        }

        else
        {
          sub_1D61F4FD8(v140, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
        }

        sub_1D61F5038(v78, type metadata accessor for DebugFormatCanvasViewRenderKey);
        sub_1D61F5038(v76, type metadata accessor for DebugFormatCanvasViewRenderKey);
        sub_1D61F4FD8(v74, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
LABEL_25:
        v85 = v128;
        sub_1D725894C();
        v86 = sub_1D725893C();
        v140 = v86;
        v88 = v87;
        (*(v131 + 8))(v85, v132);
        v89 = v141;
        v90 = &v141[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier];
        *v90 = v86;
        v90[1] = v88;
        v138 = v88;

        sub_1D717DD6C(0, 2);
        v91 = v130;
        sub_1D61F512C(v144, v130, type metadata accessor for DebugFormatCanvasViewRenderKey);
        v120(v91, 0, 1, v61);
        v92 = v122;
        swift_beginAccess();
        sub_1D61F5208(v91, v89 + v92);
        swift_endAccess();
        v93 = sub_1D726294C();
        (*(*(v93 - 8) + 56))(v139, 1, 1, v93);
        v94 = v129;
        sub_1D61F512C(v123, v129, type metadata accessor for DebugFormatEditorLayoutContext);
        v95 = v134;
        sub_1D61F512C(v143, v134, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        sub_1D726290C();
        sub_1D61F529C(&v175, &v145);
        v137 = MEMORY[0x1E69E6720];
        sub_1D61F5194(v159, &v145, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
        v141 = v89;
        v96 = sub_1D72628FC();
        v97 = (*(v127 + 80) + 192) & ~*(v127 + 80);
        v98 = (v126 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
        v99 = (*(v142 + 80) + v98 + 216) & ~*(v142 + 80);
        v100 = (v133 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
        v101 = swift_allocObject();
        v102 = MEMORY[0x1E69E85E0];
        *(v101 + 16) = v96;
        *(v101 + 24) = v102;
        v103 = v182;
        *(v101 + 128) = v181;
        *(v101 + 144) = v103;
        v104 = v184;
        *(v101 + 160) = v183;
        *(v101 + 176) = v104;
        v105 = v178;
        *(v101 + 64) = v177;
        *(v101 + 80) = v105;
        v106 = v180;
        *(v101 + 96) = v179;
        *(v101 + 112) = v106;
        v107 = v176;
        *(v101 + 32) = v175;
        *(v101 + 48) = v107;
        sub_1D61F554C(v94, v101 + v97, type metadata accessor for DebugFormatEditorLayoutContext);
        v108 = v101 + v98;
        v109 = v196;
        *(v108 + 160) = v195;
        *(v108 + 176) = v109;
        *(v108 + 192) = v197;
        *(v108 + 208) = v198;
        v110 = v192;
        *(v108 + 96) = v191;
        *(v108 + 112) = v110;
        v111 = v194;
        *(v108 + 128) = v193;
        *(v108 + 144) = v111;
        v112 = v188;
        *(v108 + 32) = v187;
        *(v108 + 48) = v112;
        v113 = v190;
        *(v108 + 64) = v189;
        *(v108 + 80) = v113;
        v114 = v186;
        *v108 = v185;
        *(v108 + 16) = v114;
        sub_1D61F554C(v95, v101 + v99, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v115 = v140;
        *(v101 + v100) = v141;
        v116 = (v101 + ((v100 + 15) & 0xFFFFFFFFFFFFFFF8));
        v118 = v138;
        v117 = v139;
        *v116 = v115;
        v116[1] = v118;
        sub_1D6BD1334(0, 0, v117, &unk_1D72AFD70, v101);

        sub_1D61F4FD8(v159, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, v137, sub_1D5B49DA8);
        sub_1D61F5038(v144, type metadata accessor for DebugFormatCanvasViewRenderKey);
        sub_1D61F5038(v143, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v59 = v123;
        return sub_1D61F5038(v59, type metadata accessor for DebugFormatEditorLayoutContext);
      }

      sub_1D61F4FD8(v140, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720], sub_1D5B6C03C);
      sub_1D61F5038(v76, type metadata accessor for DebugFormatCanvasViewRenderKey);
    }

    sub_1D61F5038(v74, sub_1D61F4F44);
    goto LABEL_25;
  }

  v59 = v48;
  return sub_1D61F5038(v59, type metadata accessor for DebugFormatEditorLayoutContext);
}

uint64_t sub_1D61F3720(char *a1)
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];

  sub_1D725B31C();

  v47[10] = v43;
  v47[11] = v44;
  v47[12] = v45;
  v47[6] = v39;
  v47[7] = v40;
  v47[8] = v41;
  v47[9] = v42;
  v47[2] = v35;
  v47[3] = v36;
  v47[4] = v37;
  v47[5] = v38;
  v47[0] = v33;
  v47[1] = v34;
  v59 = v43;
  *v60 = v44;
  *&v60[16] = v45;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v51 = v35;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v48 = v46;
  v61 = v46;
  v49 = v33;
  v50 = v34;
  if (sub_1D5DEA380(&v49) != 1)
  {
    v6 = *&a1[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_feedView];
    v28 = v58;
    v29 = v59;
    v30[0] = *v60;
    *(v30 + 15) = *&v60[15];
    v24 = v54;
    v25 = v55;
    v26 = v56;
    v27 = v57;
    v20 = v50;
    v21 = v51;
    v22 = v52;
    v23 = v53;
    sub_1D5ECF1C0(&v50, v31);

    v8 = sub_1D62D78BC(v7);

    v31[8] = v28;
    v31[9] = v29;
    *v32 = v30[0];
    *&v32[15] = *(v30 + 15);
    v31[4] = v24;
    v31[5] = v25;
    v31[6] = v26;
    v31[7] = v27;
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1D5ECF21C(v31);
    [v6 setBackgroundColor_];

    v9 = v60[19];
    if (v60[20])
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    sub_1D67F6CC8(0, 1, 0, 0, 2u, v10 | v9, &v20);

    sub_1D705E280(&v20);
    sub_1D61F4FD8(v47, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, MEMORY[0x1E69E6720], sub_1D5B49DA8);
  }

  *&v33 = v5;
  *(&v33 + 1) = v4;
  v11 = v2[8];
  v40 = v2[7];
  v41 = v11;
  v42 = v2[9];
  v12 = v2[4];
  v36 = v2[3];
  v37 = v12;
  v13 = v2[6];
  v38 = v2[5];
  v39 = v13;
  v14 = v2[2];
  v34 = v2[1];
  v35 = v14;
  sub_1D61F20B4(a1);
  *&v33 = v5;
  *(&v33 + 1) = v4;
  v15 = v2[8];
  v40 = v2[7];
  v41 = v15;
  v42 = v2[9];
  v16 = v2[4];
  v36 = v2[3];
  v37 = v16;
  v17 = v2[6];
  v38 = v2[5];
  v39 = v17;
  v18 = v2[2];
  v34 = v2[1];
  v35 = v18;
  return sub_1D61F238C(a1);
}

uint64_t sub_1D61F3A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[145] = v14;
  v8[144] = v13;
  v8[143] = a8;
  v8[142] = a7;
  v8[141] = a6;
  v8[140] = a5;
  v8[139] = a4;
  sub_1D726290C();
  v8[146] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[147] = v10;
  v8[148] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D61F3AD8, v10, v9);
}

uint64_t sub_1D61F3AD8()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1112);
  v3 = v2[1];
  *(v0 + 232) = *v2;
  *(v0 + 248) = v3;
  v4 = v2[5];
  v6 = v2[2];
  v5 = v2[3];
  *(v0 + 296) = v2[4];
  *(v0 + 312) = v4;
  *(v0 + 264) = v6;
  *(v0 + 280) = v5;
  v7 = v2[9];
  v9 = v2[6];
  v8 = v2[7];
  *(v0 + 360) = v2[8];
  *(v0 + 376) = v7;
  *(v0 + 328) = v9;
  *(v0 + 344) = v8;
  *(v0 + 392) = v2[1];
  v10 = v2[5];
  v12 = v2[2];
  v11 = v2[3];
  *(v0 + 440) = v2[4];
  *(v0 + 456) = v10;
  *(v0 + 408) = v12;
  *(v0 + 424) = v11;
  v13 = v2[9];
  v15 = v2[6];
  v14 = v2[7];
  *(v0 + 504) = v2[8];
  *(v0 + 520) = v13;
  *(v0 + 472) = v15;
  *(v0 + 488) = v14;
  v16 = v2[6];
  v17 = v2[7];
  v18 = v2[9];
  *(v0 + 648) = v2[8];
  *(v0 + 664) = v18;
  *(v0 + 616) = v16;
  *(v0 + 632) = v17;
  v19 = v2[2];
  v20 = v2[3];
  v21 = v2[5];
  *(v0 + 584) = v2[4];
  *(v0 + 600) = v21;
  *(v0 + 552) = v19;
  *(v0 + 568) = v20;
  *(v0 + 536) = v2[1];
  v22 = *(v1 + 160);
  v23 = *(v1 + 176);
  v24 = *(v1 + 192);
  *(v0 + 224) = *(v1 + 208);
  *(v0 + 192) = v23;
  *(v0 + 208) = v24;
  *(v0 + 176) = v22;
  v25 = *(v1 + 96);
  v26 = *(v1 + 112);
  v27 = *(v1 + 144);
  *(v0 + 144) = *(v1 + 128);
  *(v0 + 160) = v27;
  *(v0 + 112) = v25;
  *(v0 + 128) = v26;
  v28 = *(v1 + 32);
  v29 = *(v1 + 48);
  v30 = *(v1 + 80);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 96) = v30;
  *(v0 + 48) = v28;
  *(v0 + 64) = v29;
  v31 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v31;
  sub_1D5D65D5C(v0 + 392, v0 + 680);
  v32 = swift_task_alloc();
  *(v0 + 1192) = v32;
  *v32 = v0;
  v32[1] = sub_1D61F3C4C;
  v33 = *(v0 + 1136);
  v34 = *(v0 + 1120);

  return sub_1D61F4088((v0 + 536), v34, v0 + 16, v33);
}

uint64_t sub_1D61F3C4C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2 + 536);
  *(v3 + 1200) = a1;
  *(v3 + 1208) = v1;

  if (v1)
  {
    *(v3 + 824) = *v4;
    v5 = *(v3 + 552);
    v6 = *(v3 + 568);
    v7 = *(v3 + 600);
    *(v3 + 872) = *(v3 + 584);
    *(v3 + 888) = v7;
    *(v3 + 840) = v5;
    *(v3 + 856) = v6;
    v8 = *(v3 + 616);
    v9 = *(v3 + 632);
    v10 = *(v3 + 664);
    *(v3 + 936) = *(v3 + 648);
    *(v3 + 952) = v10;
    *(v3 + 904) = v8;
    *(v3 + 920) = v9;
    sub_1D5D68304(v3 + 824);
    v11 = *(v3 + 1184);
    v12 = *(v3 + 1176);
    v13 = sub_1D61F3EBC;
  }

  else
  {
    *(v3 + 968) = *v4;
    v14 = *(v3 + 552);
    v15 = *(v3 + 568);
    v16 = *(v3 + 600);
    *(v3 + 1016) = *(v3 + 584);
    *(v3 + 1032) = v16;
    *(v3 + 984) = v14;
    *(v3 + 1000) = v15;
    v17 = *(v3 + 616);
    v18 = *(v3 + 632);
    v19 = *(v3 + 664);
    *(v3 + 1080) = *(v3 + 648);
    *(v3 + 1096) = v19;
    *(v3 + 1048) = v17;
    *(v3 + 1064) = v18;
    sub_1D5D68304(v3 + 968);
    v11 = *(v3 + 1184);
    v12 = *(v3 + 1176);
    v13 = sub_1D61F3DD8;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

uint64_t sub_1D61F3DD8()
{
  v1 = v0[150];

  if (v1)
  {
    v2 = (v0[143] + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier);
    v3 = v2[1];
    if (v3)
    {
      v4 = *v2 == v0[144] && v3 == v0[145];
      v5 = v0[150];
      if (v4)
      {
        goto LABEL_9;
      }

      if (sub_1D72646CC())
      {
        v5 = v0[150];
LABEL_9:

        sub_1D717DD6C(v5, 0);
      }
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D61F3EBC()
{
  v1 = v0[143];

  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier + 8);
  if (v2 && (*(v1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier) == v0[144] ? (v3 = v2 == v0[145]) : (v3 = 0), v3 || (sub_1D72646CC() & 1) != 0))
  {
    v4 = v0[151];
    v5 = v0[143] + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_state;
    if (*(v5 + 8))
    {
      v6 = v4;
    }

    else
    {
      v8 = *v5;
      v9 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
      v10 = *(*v5 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView);
      v11 = v4;
      sub_1D61F55B4(v8, 0);
      v12 = [v10 superview];
      if (v12)
      {
        v13 = *(v0[143] + OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_canvasView);
        v14 = v12;

        if (v14 == v13)
        {
          [*&v8[v9] removeFromSuperview];
        }
      }

      sub_1D61F55D0(v8, 0);
    }

    v7 = v0[151];
    v15 = v0[143];
    v16 = *v5;
    *v5 = v4;
    v17 = *(v5 + 8);
    *(v5 + 8) = 1;
    v18 = v7;
    v19 = v7;
    sub_1D61F55D0(v16, v17);

    [v15 setNeedsLayout];
  }

  else
  {
    v7 = v0[151];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D61F4088(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1800) = a4;
  *(v5 + 1792) = a2;
  *(v5 + 1808) = type metadata accessor for DebugFormatCanvasBindResult();
  *(v5 + 1816) = swift_task_alloc();
  *(v5 + 1824) = type metadata accessor for DebugFormatCanvasBindRequest();
  *(v5 + 1832) = swift_task_alloc();
  type metadata accessor for FormatWorkspaceGroup();
  v8 = swift_task_alloc();
  v9 = a1[4];
  *(v5 + 1568) = a1[5];
  v10 = a1[7];
  *(v5 + 1584) = a1[6];
  *(v5 + 1600) = v10;
  *(v5 + 1616) = a1[8];
  v11 = *a1;
  *(v5 + 1504) = a1[1];
  v12 = a1[3];
  *(v5 + 1520) = a1[2];
  *(v5 + 1536) = v12;
  *(v5 + 1840) = v8;
  *(v5 + 1552) = v9;
  *(v5 + 1488) = v11;
  v13 = *(a3 + 160);
  *(v5 + 512) = *(a3 + 144);
  *(v5 + 528) = v13;
  *(v5 + 544) = *(a3 + 176);
  *(v5 + 559) = *(a3 + 191);
  v14 = *(a3 + 96);
  *(v5 + 448) = *(a3 + 80);
  *(v5 + 464) = v14;
  v15 = *(a3 + 128);
  *(v5 + 480) = *(a3 + 112);
  *(v5 + 496) = v15;
  v16 = *(a3 + 32);
  *(v5 + 384) = *(a3 + 16);
  *(v5 + 400) = v16;
  v17 = *(a3 + 64);
  *(v5 + 416) = *(a3 + 48);
  *(v5 + 432) = v17;
  *(v5 + 198) = *(a3 + 195);
  *(v5 + 199) = *(a3 + 196);
  *(v5 + 1848) = *(a3 + 200);
  *(v5 + 1856) = *(v4 + 8);
  sub_1D726290C();
  sub_1D5ECF1C0(v5 + 384, v5 + 568);

  *(v5 + 1864) = sub_1D72628FC();
  v19 = sub_1D726285C();
  *(v5 + 1872) = v19;
  *(v5 + 1880) = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D61F426C, v19, v18);
}

uint64_t sub_1D61F426C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 544);
  v3 = *(v0 + 496);
  *(v0 + 1432) = *(v0 + 512);
  *(v0 + 1448) = v1;
  *(v0 + 1464) = v2;
  v4 = *(v0 + 464);
  v5 = *(v0 + 480);
  v6 = *(v0 + 432);
  *(v0 + 1368) = *(v0 + 448);
  *(v0 + 1384) = v4;
  *(v0 + 1400) = v5;
  *(v0 + 1416) = v3;
  v7 = *(v0 + 400);
  v8 = *(v0 + 416);
  *(v0 + 1304) = *(v0 + 384);
  *(v0 + 1320) = v7;
  v9 = *(v0 + 1856);
  v64 = *(v0 + 1848);
  v62 = *(v0 + 198);
  v63 = *(v0 + 199);
  v10 = *(v0 + 1840);
  v57 = *(v0 + 1824);
  v58 = *(v0 + 1832);
  v11 = *(v0 + 1800);
  v60 = *(v0 + 1792);
  v61 = *(v0 + 384);
  v59 = *(v0 + 392);
  *(v0 + 1480) = *(v0 + 560);
  *(v0 + 1336) = v8;
  *(v0 + 1352) = v6;
  v12 = *(v0 + 562);
  *(v0 + 379) = v12;
  sub_1D61F512C(v11, v10, type metadata accessor for FormatWorkspaceGroup);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D72600CC();

  v13 = *(*(v0 + 1776) + 16);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);

  *(v10 + 16) = v14;
  *(v10 + 24) = v15;
  v56 = *(type metadata accessor for DebugFormatEditorLayoutContext() + 20);
  v16 = *(v0 + 1448);
  *(v0 + 328) = *(v0 + 1432);
  *(v0 + 344) = v16;
  *(v0 + 360) = *(v0 + 1464);
  v17 = *(v0 + 1384);
  *(v0 + 264) = *(v0 + 1368);
  *(v0 + 280) = v17;
  v18 = *(v0 + 1416);
  *(v0 + 296) = *(v0 + 1400);
  *(v0 + 312) = v18;
  v19 = *(v0 + 1320);
  *(v0 + 200) = *(v0 + 1304);
  *(v0 + 216) = v19;
  v20 = *(v0 + 1352);
  *(v0 + 232) = *(v0 + 1336);
  *(v0 + 376) = *(v0 + 1480);
  *(v0 + 248) = v20;
  *(v0 + 377) = 1;
  *(v0 + 378) = v12;
  sub_1D5B6C03C(0, &qword_1EC88EE90, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6F90]);
  v21 = (type metadata accessor for DebugFormatEditorWorkspaceGroup() - 8);
  v22 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7273AE0;
  v24 = v23 + v22;
  v25 = *(v11 + v21[7]);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D5ECF1C0(v0 + 200, v0 + 752);

  sub_1D72600CC();

  v26 = *(v0 + 1784);
  sub_1D61F512C(v10, v24, type metadata accessor for FormatWorkspaceGroup);
  *(v24 + v21[7]) = v25;
  *(v24 + v21[8]) = v26;
  v27 = (v24 + v21[9]);
  v28 = *(v0 + 1568);
  v29 = *(v0 + 1600);
  v27[6] = *(v0 + 1584);
  v27[7] = v29;
  v27[8] = *(v0 + 1616);
  v30 = *(v0 + 1504);
  v31 = *(v0 + 1536);
  v27[2] = *(v0 + 1520);
  v27[3] = v31;
  v27[4] = *(v0 + 1552);
  v27[5] = v28;
  *v27 = *(v0 + 1488);
  v27[1] = v30;
  v32 = *(v0 + 344);
  *(v0 + 144) = *(v0 + 328);
  *(v0 + 160) = v32;
  *(v0 + 176) = *(v0 + 360);
  *(v0 + 191) = *(v0 + 375);
  v33 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v33;
  v34 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  *(v0 + 128) = v34;
  v35 = *(v0 + 216);
  *(v0 + 16) = *(v0 + 200);
  *(v0 + 32) = v35;
  v36 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v36;
  *v58 = 1;
  v37 = v57[5];
  v38 = sub_1D7259F5C();
  (*(*(v38 - 8) + 16))(&v58[v37], v60 + v56, v38);
  v39 = v57[6];
  v40 = sub_1D7259CFC();
  (*(*(v40 - 8) + 16))(&v58[v39], v60, v40);
  v41 = &v58[v57[7]];
  *v41 = v61;
  *(v41 + 1) = v59;
  v42 = *(v0 + 16);
  v43 = *(v0 + 32);
  v44 = *(v0 + 64);
  *(v41 + 3) = *(v0 + 48);
  *(v41 + 4) = v44;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  v45 = *(v0 + 80);
  v46 = *(v0 + 96);
  v47 = *(v0 + 128);
  *(v41 + 7) = *(v0 + 112);
  *(v41 + 8) = v47;
  *(v41 + 5) = v45;
  *(v41 + 6) = v46;
  v48 = *(v0 + 144);
  v49 = *(v0 + 191);
  v50 = *(v0 + 176);
  *(v41 + 10) = *(v0 + 160);
  *(v41 + 11) = v50;
  *(v41 + 191) = v49;
  *(v41 + 9) = v48;
  v41[195] = v62;
  v41[196] = v63;
  LOWORD(v49) = *(v0 + 195);
  v41[199] = *(v0 + 197);
  *(v41 + 197) = v49;
  *(v41 + 25) = v64;
  *(v41 + 26) = v23;
  v51 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree_canvasGenerator;
  *(v0 + 1888) = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree_canvasGenerator;
  *(v0 + 1896) = *(v9 + v51);
  *(v0 + 1904) = type metadata accessor for DebugFormatCanvasTracer();
  v52 = swift_allocObject();
  *(v0 + 1912) = v52;
  sub_1D61F55EC();
  *(v0 + 1920) = v53;
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  *(v54 + 16) = MEMORY[0x1E69E7CC0];
  *(v52 + 16) = v54;
  sub_1D5D65D5C(v0 + 1488, v0 + 1632);

  return MEMORY[0x1EEE6DFA0](sub_1D61F47BC, 0, 0);
}

uint64_t sub_1D61F47BC()
{
  v1 = v0[239];
  v2 = v0[237];
  v3 = v0[229];
  v4 = swift_task_alloc();
  v0[241] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[242] = v5;
  *v5 = v0;
  v5[1] = sub_1D61F48C4;
  v6 = v0[227];
  v7 = v0[226];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000017, 0x80000001D73CECD0, sub_1D61F5678, v4, v7);
}

uint64_t sub_1D61F48C4()
{
  v2 = *v1;
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v3 = sub_1D61F49F8;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v5 = *(v2 + 1880);
    v4 = *(v2 + 1872);
    v3 = sub_1D61F4BA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D61F49F8()
{

  v1 = *(v0 + 1880);
  v2 = *(v0 + 1872);

  return MEMORY[0x1EEE6DFA0](sub_1D61F4A6C, v2, v1);
}

uint64_t sub_1D61F4A6C()
{
  v1 = *(v0 + 379);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1832);

  v4 = *(v0 + 1448);
  *(v0 + 1064) = *(v0 + 1432);
  *(v0 + 1080) = v4;
  *(v0 + 1096) = *(v0 + 1464);
  *(v0 + 1112) = *(v0 + 1480);
  v5 = *(v0 + 1384);
  *(v0 + 1000) = *(v0 + 1368);
  *(v0 + 1016) = v5;
  v6 = *(v0 + 1416);
  *(v0 + 1032) = *(v0 + 1400);
  *(v0 + 1048) = v6;
  v7 = *(v0 + 1320);
  *(v0 + 936) = *(v0 + 1304);
  *(v0 + 952) = v7;
  v8 = *(v0 + 1352);
  *(v0 + 968) = *(v0 + 1336);
  *(v0 + 984) = v8;
  *(v0 + 1113) = 1;
  *(v0 + 1114) = v1;
  sub_1D5ECF21C(v0 + 936);
  sub_1D61F5038(v3, type metadata accessor for DebugFormatCanvasBindRequest);
  sub_1D61F5038(v2, type metadata accessor for FormatWorkspaceGroup);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D61F4BA8()
{
  v1 = *(v0 + 379);
  v2 = *(v0 + 1840);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1816);

  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = v6;

  v7 = sub_1D5F2882C(v4, v5);

  sub_1D61F5038(v4, type metadata accessor for DebugFormatCanvasBindResult);
  v8 = *(v0 + 1448);
  *(v0 + 1248) = *(v0 + 1432);
  *(v0 + 1264) = v8;
  *(v0 + 1280) = *(v0 + 1464);
  v9 = *(v0 + 1384);
  *(v0 + 1184) = *(v0 + 1368);
  *(v0 + 1200) = v9;
  v10 = *(v0 + 1416);
  *(v0 + 1216) = *(v0 + 1400);
  *(v0 + 1232) = v10;
  v11 = *(v0 + 1320);
  *(v0 + 1120) = *(v0 + 1304);
  *(v0 + 1136) = v11;
  v12 = *(v0 + 1352);
  *(v0 + 1152) = *(v0 + 1336);
  *(v0 + 1296) = *(v0 + 1480);
  *(v0 + 1168) = v12;
  *(v0 + 1297) = 1;
  *(v0 + 1298) = v1;
  sub_1D5ECF21C(v0 + 1120);
  sub_1D61F5038(v3, type metadata accessor for DebugFormatCanvasBindRequest);
  sub_1D61F5038(v2, type metadata accessor for FormatWorkspaceGroup);

  v13 = *(v0 + 8);

  return v13(v7);
}

uint64_t sub_1D61F4E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D61F4EF0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D61F4E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D61F4EF0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D61F4EC8()
{
  sub_1D61F4EF0();
  sub_1D726131C();
  __break(1u);
}

unint64_t sub_1D61F4EF0()
{
  result = qword_1EC885248;
  if (!qword_1EC885248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885248);
  }

  return result;
}

void sub_1D61F4F44()
{
  if (!qword_1EC885250)
  {
    sub_1D5B6C03C(255, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC885250);
    }
  }
}

uint64_t sub_1D61F4FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D61F5038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D61F5098()
{
  if (!qword_1EC885260)
  {
    type metadata accessor for DebugFormatPackageTree();
    sub_1D61F52D4(&qword_1EC885268, type metadata accessor for DebugFormatPackageTree);
    v0 = sub_1D7260FBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885260);
    }
  }
}

uint64_t sub_1D61F512C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61F5194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D61F5208(uint64_t a1, uint64_t a2)
{
  sub_1D5B6C03C(0, &qword_1EC885258, type metadata accessor for DebugFormatCanvasViewRenderKey, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61F52D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D61F531C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for FormatMetadata();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D61F5390(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugFormatEditorLayoutContext() - 8);
  v4 = (*(v3 + 80) + 192) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for DebugFormatEditorWorkspaceGroup() - 8);
  v7 = (v5 + *(v6 + 80) + 216) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D5B64684;

  return sub_1D61F3A1C(a1, v9, v10, v1 + 32, v1 + v4, v1 + v5, v1 + v7, v8);
}

uint64_t sub_1D61F554C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D61F55B4(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void sub_1D61F55D0(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

void sub_1D61F55EC()
{
  if (!qword_1EC885270)
  {
    sub_1D5B49DA8(255, &qword_1EC894550, &type metadata for DebugFormatHistoryMeasurement, MEMORY[0x1E69E62F8]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D7263E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885270);
    }
  }
}

uint64_t sub_1D61F5688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v25[-v21];
  v33 = a1;
  (*(v18 + 104))(&v25[-v21], *MEMORY[0x1E69D7460], v17, v20);
  v26 = a2;
  v27 = a3;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a4;
  v23 = MEMORY[0x1E69D7150];
  sub_1D5BEAB60(0, &qword_1EDF3C068, MEMORY[0x1E69D7150]);
  sub_1D5BEAD1C(&qword_1EDF3C070, &qword_1EDF3C068, v23);
  sub_1D72599EC();
  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_1D61F5874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v50 = a4;
  v52 = a3;
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v46 - v18);
  sub_1D61F78FC();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v53 = a1;
  KeyPath = swift_getKeyPath();
  v24 = sub_1D725A35C();
  v47 = swift_allocBox();
  v26 = v25;
  v27 = *(type metadata accessor for HeadlineViewLayout.Options(0) + 20);
  v49 = a2;
  sub_1D61F7954(a2 + v27, v23);
  v28 = sub_1D725A34C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v23, 1, v28) == 1)
  {
    (*(v29 + 104))(v26, *MEMORY[0x1E69D7338], v28);
    if (v30(v23, 1, v28) != 1)
    {
      sub_1D61F79B8(v23);
    }
  }

  else
  {
    (*(v29 + 32))(v26, v23, v28);
  }

  (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69D7360], v24);
  *v19 = v47;
  v31 = *(v16 + 104);
  v31(v19, *MEMORY[0x1E69D7478], v15);
  v32 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v34 = v33;
  v35 = sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v32);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  v36 = *(v16 + 8);
  v36(v19, v15);
  v37 = [*(v52 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) hasVideo];
  v38 = *MEMORY[0x1E69D7460];
  if (v37)
  {
    v53 = v51;
    v31(v19, v38, v15);
    v44 = v34;
    v45 = v35;
    v42 = sub_1D61F7A50;
    v43 = 0;
    sub_1D7259B2C();
    v36(v19, v15);
  }

  v53 = v51;
  v39 = (v31)(v19, v38, v15);
  MEMORY[0x1EEE9AC00](v39, v40);
  *(&v46 - 8) = a5;
  *(&v46 - 7) = a6;
  *(&v46 - 6) = a7;
  *(&v46 - 5) = a8;
  v44 = v35;
  sub_1D7259A2C();
  return (v36)(v19, v15);
}

uint64_t sub_1D61F5DA4(uint64_t a1)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v16 - v6;
  v16[1] = a1;
  swift_getKeyPath();
  sub_1D5BEB9A0();
  sub_1D725A51C();
  sub_1D5BEADA4();
  sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = *MEMORY[0x1E69D7058];
  sub_1D5BEABF0(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
  (*(*(v14 - 8) + 104))(v12 + v11, v13, v14);
  (*(v10 + 104))(v12 + v11, *MEMORY[0x1E69D7080], v9);
  sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D61F60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v25[-v21];
  v33 = a1;
  (*(v18 + 104))(&v25[-v21], *MEMORY[0x1E69D7460], v17, v20);
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v23 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v23);
  sub_1D7259A2C();
  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_1D61F62C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v17 = v16;
  v18 = *(v16 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v30[-v21];
  v34 = a1;
  (*(v18 + 104))(&v30[-v21], *MEMORY[0x1E69D7460], v17, v20);
  sub_1D5BEADA4();
  sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7273AE0;
  v27 = (v26 + v25);
  *v27 = a5;
  v27[1] = a6;
  v27[2] = a7;
  v27[3] = a8;
  (*(v24 + 104))();
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v28 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v28);
  sub_1D7259A2C();

  return (*(v18 + 8))(v22, v17);
}

uint64_t sub_1D61F6580(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v95 = a4;
  v6 = sub_1D7261B9C();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5BEABF0(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v104 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v92 - v16;
  v105 = a1;
  v110 = a1;
  swift_getKeyPath();
  sub_1D725A18C();
  v19 = v18;
  if (qword_1EDF34BB8 != -1)
  {
    swift_once();
  }

  sub_1D7264C3C();
  v20 = round(v19 * 56.0 * 0.25);
  if (v109)
  {
    v21 = v20;
  }

  else
  {
    v21 = 14.0;
  }

  v101 = type metadata accessor for HeadlineViewLayout.Context(0);
  v102 = a3;
  v22 = [*(a3 + v101[5] + 40) sourceChannel];
  if (v22)
  {
    v23 = [v22 theme];
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() defaultMetrics];
  sub_1D5BEAE2C(v23, v24, v17, v21);

  swift_unknownObjectRelease();
  v25 = MEMORY[0x1E69D6F38];
  sub_1D5BEAB60(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v27 = v26;
  v28 = sub_1D5BEAD1C(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v25);
  v98 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  v29 = *(v10 + 8);
  v30 = v17;
  v31 = v104;
  v29(v30, v104);
  v110 = v105;
  v32 = v105;
  v33 = swift_allocObject();
  *(v33 + 16) = 0x4020000000000000;
  *v13 = v33;
  v34 = *(v10 + 104);
  v97 = *MEMORY[0x1E69D7488];
  v34(v13);
  sub_1D7259A9C();
  v35 = (v29)(v13, v31);
  KeyPath = &v92;
  v110 = v32;
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v38 = v102;
  v90 = v102;
  v39 = *MEMORY[0x1E69D7460];
  v99 = v10 + 104;
  v100 = v34;
  (v34)(v13, v39, v31, v37);
  v108 = v28;
  v91 = v28;
  v103 = v27;
  v89[1] = v89;
  v90 = v27;
  v89[0] = sub_1D5BED8E8;
  sub_1D7259B2C();
  v106 = v29;
  v107 = v10 + 8;
  v29(v13, v31);
  v110 = v105;
  swift_getKeyPath();
  v40 = *(v38 + v101[7]);
  if (*(v40 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v41 = sub_1D726308C(), v43 = v92, v42 = v93, *v92 = v41, v44 = v94, (*(v42 + 104))(v43, *MEMORY[0x1E69E8018], v94), v45 = sub_1D7261BBC(), result = (*(v42 + 8))(v43, v44), (v45))
  {
    v47 = swift_allocObject();
    v48 = *(v40 + *(*v40 + 136));
    *(v47 + 16) = v48;
    *v13 = v47;
    v49 = *MEMORY[0x1E69D7440];
    v50 = v104;
    v100(v13, v49, v104);
    v51 = v48;
    sub_1D7259A7C();

    v106(v13, v50);
    if ((*v95 & 1) == 0)
    {
      goto LABEL_16;
    }

    v52 = *(v102 + v101[8]);
    if (!v52)
    {
      goto LABEL_16;
    }

    if (*(v52 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), v53 = sub_1D726308C(), v55 = v92, v54 = v93, *v92 = v53, v56 = v94, (*(v54 + 104))(v55, *MEMORY[0x1E69E8018], v94), v57 = sub_1D7261BBC(), result = (*(v54 + 8))(v55, v56), (v57))
    {
      v58 = *(v52 + *(*v52 + 136));
      v59 = v105;
      v110 = v105;
      v60 = swift_allocObject();
      *(v60 + 16) = 0x4010000000000000;
      *v13 = v60;
      v61 = v104;
      v62 = v100;
      v100(v13, v97, v104);
      v63 = v58;
      sub_1D7259A9C();
      v106(v13, v61);
      v110 = v59;
      KeyPath = swift_getKeyPath();
      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      *v13 = v64;
      v62(v13, v49, v61);
      sub_1D5BEADA4();
      sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
      v66 = v65;
      v67 = *(v65 - 8);
      v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1D7273AE0;
      *(v69 + v68) = 2;
      (*(v67 + 104))(v69 + v68, *MEMORY[0x1E69D6FE8], v66);
      v70 = v63;
      sub_1D7259A7C();

      v106(v13, v61);
LABEL_16:
      v71 = v105;
      v110 = v105;
      v72 = swift_allocObject();
      *(v72 + 16) = 0x4030000000000000;
      *v13 = v72;
      v73 = v97;
      v74 = v104;
      v75 = v100;
      v100(v13, v97, v104);
      sub_1D7259A9C();
      v106(v13, v74);
      v110 = v71;
      v76 = swift_allocObject();
      v77 = (v102 + v101[6]);
      v78 = v77[3];
      v79 = v77[4];
      __swift_project_boxed_opaque_existential_1(v77, v78);
      *(v76 + 16) = (*(v79 + 16))(v78, v79);
      *v13 = v76;
      v75(v13, v73, v74);
      sub_1D5BEADA4();
      sub_1D5BEABF0(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
      v81 = v80;
      v82 = *(v80 - 8);
      v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1D7273AE0;
      v85 = *MEMORY[0x1E69D7050];
      sub_1D5BEABF0(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
      (*(*(v86 - 8) + 104))(v84 + v83, v85, v86);
      v87 = (*(v82 + 104))(v84 + v83, *MEMORY[0x1E69D7080], v81);
      MEMORY[0x1EEE9AC00](v87, v88);
      v90 = v108;
      sub_1D72599EC();

      return (v106)(v13, v74);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(uint64_t a1, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_1D725A36C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D725A19C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(a1 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) hasThumbnail] || (*a2 & 2) != 0)
  {
    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    v27 = MEMORY[0x1EEE9AC00](v25, v26);
    *(&v30 - 8) = a3;
    *(&v30 - 7) = a4;
    *(&v30 - 6) = a5;
    *(&v30 - 5) = a6;
    *(&v30 - 4) = v21;
    *(&v30 - 3) = a1;
    *(&v30 - 2) = a2;
    (*(v13 + 104))(v16, *MEMORY[0x1E69D7378], v12, v27);
    sub_1D5BEAB60(0, &qword_1EDF3BF50, MEMORY[0x1E69D73B8]);
    swift_allocObject();
  }

  else
  {
    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    v24 = MEMORY[0x1EEE9AC00](v22, v23);
    *(&v30 - 8) = a3;
    *(&v30 - 7) = a4;
    *(&v30 - 6) = a5;
    *(&v30 - 5) = a6;
    *(&v30 - 4) = a2;
    *(&v30 - 3) = v21;
    *(&v30 - 2) = a1;
    (*(v13 + 104))(v16, *MEMORY[0x1E69D7378], v12, v24);
    sub_1D5BEAB60(0, &qword_1EDF3BF50, MEMORY[0x1E69D73B8]);
    swift_allocObject();
  }

  v28 = sub_1D725A4CC();
  (*(v18 + 8))(v21, v17);
  return v28;
}

uint64_t sub_1D61F750C(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725A19C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(a1 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) hasThumbnail] || (*a2 & 2) != 0)
  {
    v16 = *MEMORY[0x1E69DDCE0];
    v22 = *(MEMORY[0x1E69DDCE0] + 16);
    v23 = v16;
    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    MEMORY[0x1EEE9AC00](v17, v18);
    v19 = v22;
    *(&v22 - 4) = v23;
    *(&v22 - 3) = v19;
    *(&v22 - 4) = v13;
    *(&v22 - 3) = a1;
    *(&v22 - 2) = a2;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7378], v4);
    sub_1D5BEAB60(0, &qword_1EDF3BF50, MEMORY[0x1E69D73B8]);
    swift_allocObject();
  }

  else
  {
    if (qword_1EDF386E8 != -1)
    {
      swift_once();
    }

    sub_1D725972C();

    MEMORY[0x1EEE9AC00](v14, v15);
    *(&v22 - 8) = a2;
    *(&v22 - 7) = a1;
    *(&v22 - 3) = xmmword_1D72866A0;
    *(&v22 - 4) = 0;
    *(&v22 - 3) = 0;
    *(&v22 - 2) = v13;
    (*(v5 + 104))(v8, *MEMORY[0x1E69D7378], v4);
    sub_1D5BEAB60(0, &qword_1EDF3BF50, MEMORY[0x1E69D73B8]);
    swift_allocObject();
  }

  v20 = sub_1D725A4CC();
  (*(v10 + 8))(v13, v9);
  return v20;
}

void sub_1D61F78FC()
{
  if (!qword_1EDF3BF68)
  {
    sub_1D725A34C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BF68);
    }
  }
}

uint64_t sub_1D61F7954(uint64_t a1, uint64_t a2)
{
  sub_1D61F78FC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61F79B8(uint64_t a1)
{
  sub_1D61F78FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D61F7A88()
{
  v1 = *v0 >> 61;
  v2 = 1;
  if (((1 << v1) & 0xD7) != 0)
  {
    v2 = 0;
  }

  else if (v1 == 3)
  {
    v2 = sub_1D61F7A88();
  }

  return v2 & 1;
}

uint64_t static FormatDimensionSizingValue.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 != 6)
      {
        if (v2 == 0xE000000000000000)
        {
          if (v3 != 0xE000000000000000)
          {
            goto LABEL_34;
          }

          sub_1D5D09FB0(0xE000000000000000);
          v15 = 0xE000000000000000;
        }

        else if (v2 == 0xE000000000000008)
        {
          if (v3 != 0xE000000000000008)
          {
            goto LABEL_34;
          }

          sub_1D5D09FB0(0xE000000000000008);
          v15 = 0xE000000000000008;
        }

        else
        {
          if (v3 != 0xE000000000000010)
          {
            goto LABEL_34;
          }

          sub_1D5D09FB0(0xE000000000000010);
          v15 = 0xE000000000000010;
        }

        sub_1D5D09FB0(v15);
        v13 = 1;
        return v13 & 1;
      }

      if (v3 >> 61 != 6)
      {
        goto LABEL_34;
      }

      goto LABEL_19;
    }

    if (v4 != 4)
    {
      if (v3 >> 61 != 5)
      {
        goto LABEL_34;
      }

      goto LABEL_19;
    }

    if (v3 >> 61 != 4)
    {
      goto LABEL_34;
    }

    v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = v7;
    v17 = v8;
    v18 = v9;
    sub_1D5D0A048(v3);
    sub_1D5D0A048(v2);
    v10 = _s8NewsFeed22FormatFontMetricSizingV2eeoiySbAC_ACtFZ_0(&v19, &v17);
LABEL_23:
    v13 = v10;
    goto LABEL_24;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      if (!(v3 >> 61))
      {
        v5 = *(v2 + 16);
        v6 = *(v3 + 16);
LABEL_20:
        sub_1D5D0A048(*a2);
        sub_1D5D0A048(v2);

        v13 = sub_1D633A310(v5, v6);

LABEL_24:
        sub_1D5D09FB0(v2);
        sub_1D5D09FB0(v3);
        return v13 & 1;
      }

LABEL_34:
      sub_1D5D0A048(*a2);
      sub_1D5D0A048(v2);
      sub_1D5D09FB0(v2);
      sub_1D5D09FB0(v3);
      v13 = 0;
      return v13 & 1;
    }

    if (v3 >> 61 != 1)
    {
      goto LABEL_34;
    }

LABEL_19:
    v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    goto LABEL_20;
  }

  if (v4 != 2)
  {
    if (v3 >> 61 != 3)
    {
      goto LABEL_34;
    }

    v14 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v17 = v14;
    sub_1D5D0A048(v3);
    sub_1D5D0A048(v2);
    v10 = static FormatDimensionSizingValue.== infix(_:_:)(&v19, &v17);
    goto LABEL_23;
  }

  if (v3 >> 61 != 2)
  {
    goto LABEL_34;
  }

  v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_1D5D0A048(*a2);
  sub_1D5D0A048(v2);
  sub_1D5D09FB0(v2);
  sub_1D5D09FB0(v3);
  v13 = v11 == v12;
  return v13 & 1;
}

uint64_t sub_1D61F7D90@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = v5;
  v9 = *v4;
  v10 = v9 >> 61;
  if ((v9 >> 61) > 3)
  {
    if (v10 > 5)
    {
      if (v10 != 6)
      {
        v46 = sub_1D725A09C();
        v47 = *(*(v46 - 8) + 104);
        if (v9 == 0xE000000000000000)
        {
          v48 = MEMORY[0x1E69D71E8];
        }

        else if (v9 == 0xE000000000000008)
        {
          v48 = MEMORY[0x1E69D7208];
        }

        else
        {
          v48 = MEMORY[0x1E69D71E0];
        }

        v54 = *v48;
        v55 = a4;
        return v47(v55, v54, v46);
      }

      v24 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = swift_allocObject();
      v26 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v27 = v26();
      v28 = sub_1D5E02AFC(v27, v24);
      if (v5)
      {

        return swift_deallocUninitializedObject();
      }

      v53 = v28;

      *(v25 + 16) = v53;
      *a4 = v25;
      v23 = MEMORY[0x1E69D71D0];
LABEL_41:
      v57 = *v23;
      v46 = sub_1D725A09C();
      v47 = *(*(v46 - 8) + 104);
      v55 = a4;
      v54 = v57;
      return v47(v55, v54, v46);
    }

    if (v10 != 4)
    {
      v34 = a2;
      v35 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = swift_allocObject();
      if (a3)
      {
        v37 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();

        v38 = v37();
        v39 = sub_1D5E02AFC(v38, v35);
        if (v5)
        {

          return swift_deallocUninitializedObject();
        }

        v56 = v39;

        v34 = v56;
      }

      *(v12 + 16) = v34;
      goto LABEL_38;
    }

    v16 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (*((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 12)
    {
      v17 = swift_allocObject();
      v18 = objc_opt_self();

      *(v17 + 16) = [v18 defaultMetrics];
      v19 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v20 = v19();
      v21 = sub_1D5E02AFC(v20, v16);

      if (!v6)
      {
        goto LABEL_40;
      }
    }

    else
    {

      v49 = sub_1D6F8A788();
      v17 = swift_allocObject();
      *(v17 + 16) = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      v50 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v51 = v50();
      v52 = sub_1D5E02AFC(v51, v16);
      if (!v5)
      {
        v21 = v52;

LABEL_40:
        *(v17 + 24) = v21;
        *a4 = v17;
        v23 = MEMORY[0x1E69D71C8];
        goto LABEL_41;
      }
    }

    return swift_deallocUninitializedObject();
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      v11 = *(v9 + 16);
      v12 = swift_allocObject();
      v13 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v14 = v13();
      v15 = sub_1D5E02AFC(v14, v11);

      if (!v5)
      {
        *(v12 + 16) = v15;
LABEL_38:
        *a4 = v12;
        v23 = MEMORY[0x1E69D71F0];
        goto LABEL_41;
      }

      return swift_deallocUninitializedObject();
    }

    v29 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v30 = swift_allocObject();
    v31 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();

    v32 = v31();
    v33 = sub_1D5E02AFC(v32, v29);

    if (v5)
    {
      return swift_deallocUninitializedObject();
    }

    *(v30 + 16) = v33;
    *a4 = v30;
    v23 = MEMORY[0x1E69D71D8];
    goto LABEL_41;
  }

  if (v10 == 2)
  {
    sub_1D725993C();
    v22 = swift_allocBox();
    sub_1D725992C();
    *a4 = v22;
    v23 = MEMORY[0x1E69D7200];
    goto LABEL_41;
  }

  v40 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v43 = sub_1D725A09C();
  v44 = swift_allocBox();
  sub_1D5D0A048(v40);
  sub_1D61F7D90(a1, *&a2, a3 & 1);
  sub_1D5D09FB0(v40);
  if (v5)
  {
    return swift_deallocBox();
  }

  *a4 = v44;
  return (*(*(v43 - 8) + 104))(a4, *MEMORY[0x1E69D71F8], v43);
}

unint64_t sub_1D61F8418(uint64_t a1)
{
  result = sub_1D61F8440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61F8440()
{
  result = qword_1EC885278;
  if (!qword_1EC885278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885278);
  }

  return result;
}

unint64_t sub_1D61F8494(void *a1)
{
  a1[1] = sub_1D5C71CA0();
  a1[2] = sub_1D61F84CC();
  result = sub_1D61F8520();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61F84CC()
{
  result = qword_1EDF0B700;
  if (!qword_1EDF0B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B700);
  }

  return result;
}

unint64_t sub_1D61F8520()
{
  result = qword_1EC885280;
  if (!qword_1EC885280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885280);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed26FormatDimensionSizingValueO(void *a1)
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

void *sub_1D61F8590(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}

uint64_t sub_1D61F85CC()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF3AFC8 = result;
  return result;
}

uint64_t static Commands.ShowTextResize.article.getter()
{
  if (qword_1EDF3AFC0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D61F8764()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AFC0 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  if (qword_1EC87DB08 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC895188;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
  sub_1D725D3DC();
  swift_allocObject();
  v9 = v8;
  return sub_1D725D39C();
}

void GradientDescriptor.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1D725DD0C();
  v35 = *(v3 - 8);
  v36 = v3;
  *&v5 = MEMORY[0x1EEE9AC00](v3, v4).n128_u64[0];
  v7 = (v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 colors];
  sub_1D5B5A498(0, &qword_1EDF1A6F0);
  v9 = sub_1D726267C();

  if (v9 >> 62)
  {
    v10 = sub_1D7263BFC();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6FB460](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 ne_color];

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v10 != v12);

    v16 = v38;
    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v17 = [a1 locations];
  sub_1D5B5A498(0, &qword_1EDF1A660);
  v18 = sub_1D726267C();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

LABEL_25:

    [a1 startPoint];
    v29 = v28;
    v31 = v30;
    [a1 endPoint];
    *v7 = v29;
    v7[1] = v31;
    v7[2] = v32;
    v7[3] = v33;
    (*(v35 + 104))(v7, *MEMORY[0x1E69D7B68], v36);
    sub_1D725DCCC();

    return;
  }

  v19 = sub_1D7263BFC();
  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_14:
  v38 = v11;
  sub_1D6998464(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v34[1] = v16;
    v20 = 0;
    v21 = v38;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1DA6FB460](v20, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      [v22 doubleValue];
      v25 = v24;

      v38 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D6998464((v26 > 1), v27 + 1, 1);
        v21 = v38;
      }

      ++v20;
      *(v21 + 16) = v27 + 1;
      *(v21 + 8 * v27 + 32) = v25;
    }

    while (v19 != v20);
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void sub_1D61F8D70(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1D5C4E168();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8E028();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *a1 >> 60;
  if (v17 > 6)
  {
    if ((v17 - 9) >= 5)
    {
      v22 = v16 & 0xFFFFFFFFFFFFFFFLL;
      if (v17 == 7)
      {
        v36 = *(v22 + 16);

        v24 = FormatColor.color.getter(v23);
        v35 = sub_1D726203C();
        [a4 setValue:v24 forKey:v35];

        v25 = v35;
      }

      else
      {
        v36 = *(v22 + 24);
        swift_retain_n();

        sub_1D61F8D70(&v36, a2, a3, a4);
      }
    }
  }

  else
  {
    if (v17 > 2)
    {
      if (v17 > 4)
      {
        if (v17 != 5)
        {
          v34 = swift_projectBox();
          sub_1D5D25254(v34, v11, sub_1D5C4E168);
          sub_1D61F9668(v11, a2, a3, MEMORY[0x1E6968FB0], sub_1D5C4E168);
          sub_1D5D28924(v11, sub_1D5C4E168);
          return;
        }

        v26 = (v16 & 0xFFFFFFFFFFFFFFFLL);
        v27 = v26[2];
        v28 = v26[3];
        v29 = v26[4];

        sub_1D61F9508(v27, v28, v29);
      }

      else
      {
        v18 = v16 & 0xFFFFFFFFFFFFFFFLL;
        if (v17 == 3)
        {
          v19 = *(v18 + 16);

          sub_1D61F9290(v20, v19);
        }

        else
        {
          v32 = *(v18 + 16);
          v33 = *(v18 + 24);

          sub_1D61F93CC(v32, v33);
        }
      }

      goto LABEL_20;
    }

    if (!v17)
    {
      v30 = *(v16 + 16);
      v31 = *(v16 + 24);

      sub_1D61F9150(v30, v31);
LABEL_20:

      return;
    }

    if (v17 != 1)
    {
      v21 = swift_projectBox();
      sub_1D5D25254(v21, v15, sub_1D5C8E028);
      sub_1D61F9668(v15, a2, a3, MEMORY[0x1E6969530], sub_1D5C8E028);
      sub_1D5D28924(v15, sub_1D5C8E028);
    }
  }
}

void sub_1D61F9150(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v3 = swift_allocError();
    *v4 = 0xD000000000000021;
    v4[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v5 = sub_1D726490C();
    v6 = sub_1D726203C();
    [v2 setValue:v5 forKey:v6];
    swift_unknownObjectRelease();
  }
}

void sub_1D61F9290(uint64_t a1, double a2)
{
  if (*(a1 + 16))
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v3 = swift_allocError();
    *v4 = 0xD000000000000021;
    v4[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v5 = sub_1D726490C();
    v6 = sub_1D726203C();
    [v2 setValue:v5 forKey:{v6, *&a2}];
    swift_unknownObjectRelease();
  }
}

void sub_1D61F93CC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v3 = swift_allocError();
    *v4 = 0xD000000000000021;
    v4[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v5 = sub_1D726490C();
    v6 = sub_1D726203C();
    [v2 setValue:v5 forKey:{v6, a1}];
    swift_unknownObjectRelease();
  }
}

void sub_1D61F9508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v4 = swift_allocError();
    *v5 = 0xD000000000000021;
    v5[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v6 = sub_1D726490C();
    v7 = sub_1D726203C();
    [v3 setValue:v6 forKey:v7];

    swift_unknownObjectRelease();
  }
}

void sub_1D61F9668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, __n128))
{
  v8 = a4(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v27 - v15;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = v27 - v20;
  if (*(*(a1 + *(a5(0, v19) + 36)) + 16))
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5B4CD14(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v22 = swift_allocError();
    *v23 = 0xD000000000000021;
    v23[1] = 0x80000001D73CED60;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v27[0] = v5;
    v24 = *(v9 + 16);
    v24(v16, a1, v8);
    (*(v9 + 32))(v21, v16, v8);
    v24(v12, v21, v8);
    v25 = sub_1D726490C();
    v26 = sub_1D726203C();
    [v27[0] setValue:v25 forKey:v26];
    swift_unknownObjectRelease();

    (*(v9 + 8))(v21, v8);
  }
}

id sub_1D61F9958(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_1D726344C();
  [a3 setUserInteractionEnabled_];
  v10 = *(a2 + 128);
  if (!v10)
  {
    return [a3 setAccessibilityIgnoresInvertColors_];
  }

  result = [a3 setAccessibilityIgnoresInvertColors_];
  v12 = *(v10 + 56);
  if (v12)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v15 = *(v6 + 72);

      do
      {
        sub_1D5D25254(v14, v9, type metadata accessor for FormatOption);
        v16 = v9[1];
        v18 = v9[2];
        v17 = *v9;

        sub_1D5D28924(v9, type metadata accessor for FormatOption);
        sub_1D61F8D70(&v18, v17, v16, a3);

        v14 += v15;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t _s8NewsFeed32FormatRadialGradientCircleRadiusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
    }
  }

  else if ((*(a2 + 32) & 1) == 0 && *a1 == *a2)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D61F9C2C(uint64_t a1)
{
  result = sub_1D61F9C54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61F9C54()
{
  result = qword_1EC885288;
  if (!qword_1EC885288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885288);
  }

  return result;
}

unint64_t sub_1D61F9CA8(void *a1)
{
  a1[1] = sub_1D61F9CE0();
  a1[2] = sub_1D61F9D34();
  result = sub_1D61F9D88();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61F9CE0()
{
  result = qword_1EDF1EED0;
  if (!qword_1EDF1EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EED0);
  }

  return result;
}

unint64_t sub_1D61F9D34()
{
  result = qword_1EDF081A0;
  if (!qword_1EDF081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF081A0);
  }

  return result;
}

unint64_t sub_1D61F9D88()
{
  result = qword_1EC885290;
  if (!qword_1EC885290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885290);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FormatRadialGradientCircleRadius(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

void *sub_1D61F9E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 == 255)
  {
    v15 = MEMORY[0x1E69E6F90];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v14 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v15);
    sub_1D5EA74B8();
    v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v18 + v17));
    v19 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v19 - 8) + 56))(v18 + v17, 0, 1, v19);
    sub_1D6795150(0x5220656C63726943, 0xED00007375696461, 0, 0, v18, v33);
    swift_setDeallocating();
    sub_1D5EF5F0C(v18 + v17, sub_1D5EA74B8);
  }

  else
  {
    v3 = *(a2 + 8);
    v32 = *a2;
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    if (v2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      v31 = v3;
      sub_1D5EA74B8();
      v8 = *(*(v7 - 8) + 72);
      v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D7279970;
      v11 = v10 + v9;
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6F69746365726944, 0xE90000000000006ELL, (v10 + v9));
      v12 = type metadata accessor for FormatInspectionItem(0);
      v13 = *(*(v12 - 8) + 56);
      v13(v11, 0, 1, v12);
      sub_1D712555C(0x6F50207472617453, 0xEB00000000746E69, v32, v31, 0, v11 + v8);
      v13(v11 + v8, 0, 1, v12);
      sub_1D712555C(0x6E696F5020646E45, 0xE900000000000074, v5, v4, 0, v11 + 2 * v8);
      v13(v11 + 2 * v8, 0, 1, v12);
      sub_1D6795150(0x5220656C63726943, 0xED00007375696461, 0, 0, v10, v33);
      swift_setDeallocating();
      v14 = inited + 32;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v14 = inited + 32;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v21 = *(*(v20 - 8) + 72);
      v22 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1D7270C10;
      v24 = v23 + v22;
      sub_1D711F844(1701869908, 0xE400000000000000, 0x737569646152, 0xE600000000000000, (v23 + v22));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v24, 0, 1, v25);
      sub_1D711A80C(0x737569646152, 0xE600000000000000, v32, 0, (v24 + v21));
      v26(v24 + v21, 0, 1, v25);
      sub_1D6795150(0x5220656C63726943, 0xED00007375696461, 0, 0, v23, v33);
      swift_setDeallocating();
    }

    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v27 = swift_allocObject();
  *(inited + 32) = v27;
  *(v27 + 48) = v34;
  v28 = v33[1];
  *(v27 + 16) = v33[0];
  *(v27 + 32) = v28;
  v29 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v14, sub_1D5E4F358);
  return v29;
}

uint64_t type metadata accessor for DebugNewsroomLayoutData()
{
  result = qword_1EC885298;
  if (!qword_1EC885298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D61FA580()
{
  sub_1D5B49CBC(319, &qword_1EDF43BE0);
  if (v0 <= 0x3F)
  {
    sub_1D5B49CBC(319, &qword_1EC8852A8);
    if (v1 <= 0x3F)
    {
      sub_1D5B49CBC(319, &qword_1EDF1ADE0);
      if (v2 <= 0x3F)
      {
        sub_1D5B5BF24(319, &qword_1EC884400, sub_1D614A45C);
        if (v3 <= 0x3F)
        {
          sub_1D5B5BF24(319, &qword_1EC884408, sub_1D614A4B8);
          if (v4 <= 0x3F)
          {
            sub_1D5B5BF24(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
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

char *sub_1D61FA708()
{
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v26 - v3;
  v5 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 104);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v30 = v9;
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = (v7 + 48);
  v28 = v7;
  v29 = (v7 + 32);
  swift_bridgeObjectRetain_n();
  v16 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v13 &= v13 - 1;

    sub_1D725BD4C();
    if ((*v15)(v4, 1, v5) == 1)
    {
      sub_1D5F40BCC(v4);
    }

    else
    {
      v18 = *v29;
      (*v29)(v30, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1D69903D0(0, *(v31 + 2) + 1, 1, v31);
      }

      v20 = *(v31 + 2);
      v19 = *(v31 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v27 = v20 + 1;
        v24 = sub_1D69903D0(v19 > 1, v20 + 1, 1, v31);
        v21 = v27;
        v31 = v24;
      }

      v22 = v30;
      v23 = v31;
      *(v31 + 2) = v21;
      v18(&v23[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v20], v22, v5);
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v32 = v31;

      sub_1D61FBD38(&v32);

      return v32;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1D61FAA3C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000011;
    v5 = 0x655674736574616CLL;
    if (a1 == 8)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0x4A6567616B636170;
    if (a1 != 5)
    {
      v6 = 0x6465766968637261;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1701605234;
    if (a1 != 2)
    {
      v2 = 0x4A6567616B636170;
    }

    if (a1)
    {
      v1 = 1701667182;
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

uint64_t sub_1D61FAB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D61FD3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D61FABB8(uint64_t a1)
{
  v2 = sub_1D61FBB18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61FABF4(uint64_t a1)
{
  v2 = sub_1D61FBB18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D61FAC30(void *a1)
{
  v3 = v1;
  sub_1D61FBC80(0, &qword_1EC8852D8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61FBB18();
  sub_1D7264B5C();
  LOBYTE(v12) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1D726437C();
    LOBYTE(v12) = *(v3 + 32);
    v13 = 2;
    sub_1D61FBCE4();
    sub_1D72643BC();
    LOBYTE(v12) = 3;
    sub_1D726437C();
    LOBYTE(v12) = 4;
    sub_1D726437C();
    LOBYTE(v12) = 5;
    sub_1D726437C();
    LOBYTE(v12) = 6;
    sub_1D726438C();
    v12 = *(v3 + 96);
    v13 = 7;
    sub_1D614A45C();
    sub_1D614B6C0(&qword_1EC884448);
    sub_1D72643BC();
    v12 = *(v3 + 104);
    v13 = 8;
    sub_1D614A4B8();
    sub_1D614B720();
    sub_1D72643BC();
    type metadata accessor for DebugNewsroomLayoutData();
    LOBYTE(v12) = 9;
    sub_1D725BD1C();
    sub_1D61FD28C(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D61FAF94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v39 - v6;
  sub_1D61FBC80(0, &qword_1EC8852C0, MEMORY[0x1E69E6F48]);
  v44 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v39 - v11;
  v13 = type metadata accessor for DebugNewsroomLayoutData();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v17 + 60);
  v19 = sub_1D725BD1C();
  v20 = *(*(v19 - 8) + 56);
  v46 = v18;
  v47 = v16;
  v20(v16 + v18, 1, 1, v19);
  v21 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D61FBB18();
  sub_1D7264B0C();
  if (v2)
  {
    v48 = v2;
    v25 = v47;
    __swift_destroy_boxed_opaque_existential_1(v45);
    swift_bridgeObjectRelease_n();
LABEL_4:

    return sub_1D5F40BCC(v25 + v46);
  }

  v42 = v7;
  v22 = v9;
  LOBYTE(v49) = 0;
  v23 = v44;
  v24 = sub_1D72642BC();
  v25 = v47;
  *v47 = v24;
  v25[1] = v27;
  LOBYTE(v49) = 1;
  v28 = sub_1D726422C();
  v48 = 0;
  v25[2] = v28;
  v25[3] = v29;
  v41 = v29;
  v50 = 2;
  sub_1D61FBB6C();
  v30 = v48;
  sub_1D726427C();
  if (v30)
  {
    v48 = v30;
    (*(v22 + 8))(v12, v23);
    __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_8:

    goto LABEL_4;
  }

  *(v25 + 32) = v49;
  LOBYTE(v49) = 3;
  v25[5] = sub_1D726422C();
  v25[6] = v31;
  LOBYTE(v49) = 4;
  v40 = v12;
  v25[7] = sub_1D726422C();
  v25[8] = v32;
  LOBYTE(v49) = 5;
  v25[9] = sub_1D726422C();
  v25[10] = v33;
  v39[1] = v33;
  LOBYTE(v49) = 6;
  v34 = sub_1D726423C();
  v48 = 0;
  *(v25 + 88) = v34;
  sub_1D614A45C();
  v50 = 7;
  sub_1D614B6C0(&qword_1EC884430);
  v35 = v48;
  sub_1D726427C();
  v48 = v35;
  if (v35 || (v25[12] = v49, sub_1D614A4B8(), v50 = 8, sub_1D614B46C(), v36 = v48, sub_1D726427C(), (v48 = v36) != 0))
  {
    (*(v22 + 8))(v40, v23);
    __swift_destroy_boxed_opaque_existential_1(v45);
    goto LABEL_8;
  }

  v25[13] = v49;
  LOBYTE(v49) = 9;
  sub_1D61FD28C(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  v37 = v48;
  sub_1D726427C();
  v48 = v37;
  if (v37)
  {
    (*(v22 + 8))(v40, v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v25 = v47;
    goto LABEL_8;
  }

  (*(v22 + 8))(v40, v44);
  v38 = v47;
  sub_1D614B51C(v42, v47 + v46);
  sub_1D61FBBC0(v38, v43);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_1D61FBC24(v38);
}

uint64_t sub_1D61FB658()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61FB730()
{
  sub_1D72621EC();
}

uint64_t sub_1D61FB7F4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D61FB8C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D61FD1EC();
  *a1 = result;
  return result;
}

void sub_1D61FB8F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x524544414548;
  v5 = 0xE600000000000000;
  v6 = 0x5245544F4F46;
  v7 = 0xE700000000000000;
  v8 = 0x4C4C4157594150;
  if (v2 != 3)
  {
    v8 = 0x554F52474B434142;
    v7 = 0xEA0000000000444ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1497648962;
    v3 = 0xE400000000000000;
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

unint64_t sub_1D61FBA40()
{
  result = qword_1EC8852B0;
  if (!qword_1EC8852B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852B0);
  }

  return result;
}

uint64_t sub_1D61FBA94(uint64_t a1)
{
  *(a1 + 8) = sub_1D61FD28C(&qword_1EC8852B8, type metadata accessor for DebugNewsroomLayoutData);
  result = sub_1D61FD28C(&qword_1EC882C68, type metadata accessor for DebugNewsroomLayoutData);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D61FBB18()
{
  result = qword_1EC8852C8;
  if (!qword_1EC8852C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852C8);
  }

  return result;
}

unint64_t sub_1D61FBB6C()
{
  result = qword_1EC8852D0;
  if (!qword_1EC8852D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852D0);
  }

  return result;
}

uint64_t sub_1D61FBBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugNewsroomLayoutData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61FBC24(uint64_t a1)
{
  v2 = type metadata accessor for DebugNewsroomLayoutData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D61FBC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D61FBB18();
    v7 = a3(a1, &type metadata for DebugNewsroomLayoutData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D61FBCE4()
{
  result = qword_1EC8852E0;
  if (!qword_1EC8852E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852E0);
  }

  return result;
}

void sub_1D61FBD38(void **a1)
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
  sub_1D61FBDE0(v5);
  *a1 = v3;
}

void sub_1D61FBDE0(uint64_t *a1)
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
      sub_1D61FC1D0(v8, v9, a1, v4);
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
    sub_1D61FBF0C(0, v2, 1, a1);
  }
}

void sub_1D61FBF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      v29 = sub_1D7261F5C();
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

void sub_1D61FC1D0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
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
        sub_1D61FCBF8(*a3 + v9[9] * v120, *a3 + v9[9] * *&v24[16 * v119 + 16], *a3 + v9[9] * v121, v25);
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
      v134 = sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
      LODWORD(v137) = sub_1D7261F5C();
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
        v44 = sub_1D7261F5C() & 1;
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
        sub_1D61FCBF8(*a3 + v9[9] * v100, *a3 + v9[9] * *&v24[16 * v61 + 32], *a3 + v9[9] * v101, v25);
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
    sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    v113 = sub_1D7261F5C();
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

void sub_1D61FCBF8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_1D725BD1C();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v9);
  v51 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v50 = &v41 - v13;
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

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
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
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
          LOBYTE(v36) = sub_1D7261F5C();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
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

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_1D61FD28C(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
        LOBYTE(v23) = sub_1D7261F5C();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
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
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1D62FF5C8(&v56, &v55, &v54);
}

uint64_t sub_1D61FD1EC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D61FD238()
{
  result = qword_1EC8852E8;
  if (!qword_1EC8852E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852E8);
  }

  return result;
}

uint64_t sub_1D61FD28C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D61FD2E8()
{
  result = qword_1EC8852F0;
  if (!qword_1EC8852F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852F0);
  }

  return result;
}

unint64_t sub_1D61FD340()
{
  result = qword_1EC8852F8;
  if (!qword_1EC8852F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8852F8);
  }

  return result;
}

unint64_t sub_1D61FD398()
{
  result = qword_1EC885300;
  if (!qword_1EC885300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885300);
  }

  return result;
}

uint64_t sub_1D61FD3EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xEE006C72556E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xEB000000006E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4A6567616B636170 && a2 == 0xED000064496E6F73 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73CB7C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73CB7E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x655674736574616CLL && a2 == 0xED00006E6F697372)
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

uint64_t FormatSlotItemFilter.identifier.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x746174536E656573;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x1DA6F9910](v2, v3);

  return 0x726F7463656C6573;
}

uint64_t sub_1D61FD7EC()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x746174536E656573;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x1DA6F9910](v2, v3);

  return 0x726F7463656C6573;
}

uint64_t sub_1D61FD87C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FormatContentSlotItemResolution();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = a2[1];
  v26 = *a2;
  v15 = *(v10 + 72);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = a1 + v23;
  v17 = MEMORY[0x1E69E7CC0];
  v24 = v7;
  v25 = v4;
  do
  {
    sub_1D61FE26C(v16, v12, type metadata accessor for FormatContentSlotItemResolution);
    v27 = v26;
    v28 = v14;
    if (FormatSelector.matches(_:)(*&v12[*(v4 + 24)]))
    {
      sub_1D61FE208(v12, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6997C80(0, *(v17 + 16) + 1, 1);
        v17 = v29;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D6997C80(v19 > 1, v20 + 1, 1);
        v17 = v29;
      }

      *(v17 + 16) = v20 + 1;
      v7 = v24;
      sub_1D61FE208(v24, v17 + v23 + v20 * v15);
      v4 = v25;
    }

    else
    {
      sub_1D61FE2D4(v12, type metadata accessor for FormatContentSlotItemResolution);
    }

    v16 += v15;
    --v13;
  }

  while (v13);
  return v17;
}

uint64_t sub_1D61FDA98(uint64_t a1, void *a2)
{
  v66 = a2;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v58 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = &v58 - v11;
  v12 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatContentSlotItemResolution() - 8;
  MEMORY[0x1EEE9AC00](v16, v17);
  v67 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v58 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v68 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v25 = a1 + v68;
    v26 = MEMORY[0x1E69E7CC0];
    v69 = *(v21 + 72);
    v65 = v12;
    v27 = v67;
    while (1)
    {
      sub_1D61FE26C(v25, v23, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D61FE26C(v23, v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 9)
      {
        if (((1 << EnumCaseMultiPayload) & 0x37C) != 0)
        {
          sub_1D61FE2D4(v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
LABEL_8:
          sub_1D61FE208(v23, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6997C80(0, *(v26 + 16) + 1, 1);
            v27 = v67;
            v26 = v73;
          }

          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1D6997C80(v30 > 1, v31 + 1, 1);
            v27 = v67;
            v26 = v73;
          }

          *(v26 + 16) = v31 + 1;
          v32 = v26 + v68 + v31 * v69;
          v33 = v69;
          sub_1D61FE208(v27, v32);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v64 = *v15;
          v34 = v64;
          v35 = v66[5];
          v62 = v66[6];
          v63 = __swift_project_boxed_opaque_existential_1(v66 + 2, v35);
          v36 = [v34 identifier];
          v37 = sub_1D726207C();
          v39 = v38;

          v70 = v37;
          v71 = v39;
          v72 = 1;
          v40 = v60;
          (*(v62 + 8))(&v70, v35);
LABEL_17:

          sub_1D5DEA520(v70, v71, v72);
          v47 = v40;
          goto LABEL_19;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v64 = *v15;
          v41 = v64;
          v42 = v66[5];
          v62 = v66[6];
          v63 = __swift_project_boxed_opaque_existential_1(v66 + 2, v42);
          v43 = [v41 identifier];
          v44 = sub_1D726207C();
          v46 = v45;

          v70 = v44;
          v71 = v46;
          v72 = 2;
          v40 = v61;
          (*(v62 + 8))(&v70, v42);
          goto LABEL_17;
        }
      }

      v64 = *v15;
      v48 = v64;
      v49 = v66[5];
      v62 = v66[6];
      v63 = __swift_project_boxed_opaque_existential_1(v66 + 2, v49);
      v50 = [v48 articleID];
      v51 = sub_1D726207C();
      v53 = v52;

      v70 = v51;
      v71 = v53;
      v72 = 0;
      v47 = v59;
      (*(v62 + 8))(&v70, v49);
      swift_unknownObjectRelease();
      sub_1D5DEA520(v70, v71, v72);
LABEL_19:
      v54 = sub_1D725891C();
      v55 = (*(*(v54 - 8) + 48))(v47, 1, v54);
      sub_1D61FE2D4(v47, sub_1D5B5B2A0);
      v56 = v55 == 1;
      v27 = v67;
      v33 = v69;
      if (!v56)
      {
        goto LABEL_8;
      }

      sub_1D61FE2D4(v23, type metadata accessor for FormatContentSlotItemResolution);
LABEL_4:
      v25 += v33;
      if (!--v24)
      {
        return v26;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t _s8NewsFeed20FormatSlotItemFilterO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      if (*(v2 + 16) != *(v3 + 16) || *(v2 + 24) != *(v3 + 24))
      {
        return sub_1D72646CC();
      }

      return 1;
    }

    return 0;
  }

  return !v3;
}

unint64_t sub_1D61FE048(uint64_t a1)
{
  result = sub_1D61FE070();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61FE070()
{
  result = qword_1EC885308;
  if (!qword_1EC885308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885308);
  }

  return result;
}

unint64_t sub_1D61FE0C4(void *a1)
{
  a1[1] = sub_1D61FE0FC();
  a1[2] = sub_1D61FE150();
  result = sub_1D61FE1A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61FE0FC()
{
  result = qword_1EC885310;
  if (!qword_1EC885310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885310);
  }

  return result;
}

unint64_t sub_1D61FE150()
{
  result = qword_1EC885318;
  if (!qword_1EC885318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885318);
  }

  return result;
}

unint64_t sub_1D61FE1A4()
{
  result = qword_1EC885320;
  if (!qword_1EC885320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885320);
  }

  return result;
}

uint64_t sub_1D61FE208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSlotItemResolution();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61FE26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61FE2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SportsEmbedConfigResourceTag.config.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;

  return sub_1D60531A0(v4, v5);
}

uint64_t SportsEmbedConfigResourceTag.childrenConfig.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D61FE3C8(v2, v3, v4, v5);
}

uint64_t sub_1D61FE3C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1D60531A0(a3, a4);
  }

  return result;
}

uint64_t sub_1D61FE43C()
{
  v1 = 0x6769666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6572646C696863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736449676174;
  }
}

uint64_t sub_1D61FE49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D61FEEE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D61FE4C4(uint64_t a1)
{
  v2 = sub_1D61FE870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61FE500(uint64_t a1)
{
  v2 = sub_1D61FE870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEmbedConfigResourceTag.encode(to:)(void *a1)
{
  sub_1D61FECC0(0, &qword_1EC885328, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - v8;
  v10 = *v1;
  v11 = v1[2];
  v12 = v1[3];
  v30 = v1[1];
  v31 = v11;
  v13 = v1[5];
  v34 = v1[4];
  v35 = v12;
  v14 = v1[7];
  v32 = v1[6];
  v33 = v13;
  v15 = v1[9];
  v28 = v1[8];
  v29 = v14;
  v16 = v1[11];
  v26 = v1[10];
  v27 = v15;
  v24 = v1[12];
  v25 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61FE870();

  sub_1D7264B5C();
  v36 = v10;
  v42 = 0;
  sub_1D5B81B04();
  sub_1D5CB5D1C(&qword_1EDF047E0);
  sub_1D726443C();
  if (v2)
  {

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v23 = v6;

    v36 = v30;
    v37 = v31;
    v18 = v34;
    v19 = v35;
    v38 = v35;
    v39 = v34;
    v40 = v33;
    v41 = v32;
    v42 = 1;

    sub_1D60531A0(v19, v18);
    sub_1D61FE8C4();
    sub_1D726443C();
    v20 = v38;
    v21 = v39;

    sub_1D5D559EC(v20, v21);
    v36 = v29;
    v37 = v28;
    v38 = v27;
    v39 = v26;
    v40 = v25;
    v41 = v24;
    v42 = 2;
    sub_1D61FE3C8(v29, v28, v27, v26);
    sub_1D72643BC();
    sub_1D60531E4(v36, v37, v38, v39);
    return (*(v23 + 8))(v9, v5);
  }
}

unint64_t sub_1D61FE870()
{
  result = qword_1EDF0A7F0;
  if (!qword_1EDF0A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A7F0);
  }

  return result;
}

unint64_t sub_1D61FE8C4()
{
  result = qword_1EC885330;
  if (!qword_1EC885330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885330);
  }

  return result;
}

uint64_t SportsEmbedConfigResourceTag.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D61FECC0(0, &qword_1EDF03990, MEMORY[0x1E69E6F48]);
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61FE870();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v33 = a2;
  sub_1D5B81B04();
  LOBYTE(v35) = 0;
  sub_1D5CB5D1C(&qword_1EDF3C7D0);
  v11 = v34;
  sub_1D726431C();
  v32 = v42;
  LOBYTE(v35) = 1;
  sub_1D61FED24();
  sub_1D726431C();
  v30 = v45;
  v31 = v43;
  v28 = v42;
  v29 = v46;
  v26 = v44;
  v27 = v47;
  v59 = 2;
  sub_1D726427C();
  (*(v10 + 8))(v9, v11);
  v24 = *(&v56 + 1);
  v25 = v56;
  v12 = v58;
  v22 = *(&v57 + 1);
  v23 = v57;
  v13 = v32;
  v34 = v55;
  *&v35 = v32;
  v15 = v27;
  v14 = v28;
  *(&v35 + 1) = v28;
  *&v36 = v31;
  v16 = v26;
  *(&v36 + 1) = v26;
  *&v37 = v30;
  *(&v37 + 1) = v29;
  *&v38 = v27;
  *(&v38 + 1) = v55;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  v17 = v33;
  *(v33 + 96) = v58;
  v18 = v36;
  *v17 = v35;
  v17[1] = v18;
  v19 = v40;
  v17[4] = v39;
  v17[5] = v19;
  v20 = v38;
  v17[2] = v37;
  v17[3] = v20;
  sub_1D6053088(&v35, &v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42 = v13;
  v43 = v14;
  v44 = v31;
  v45 = v16;
  v46 = v30;
  v47 = v29;
  v48 = v15;
  v49 = v34;
  v50 = v25;
  v51 = v24;
  v52 = v23;
  v53 = v22;
  v54 = v12;
  return sub_1D60530E4(&v42);
}

void sub_1D61FECC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D61FE870();
    v7 = a3(a1, &type metadata for SportsEmbedConfigResourceTag.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D61FED24()
{
  result = qword_1EDF162E8;
  if (!qword_1EDF162E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF162E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed025SportsEmbedConfigResourceE0VSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D61FEDE4()
{
  result = qword_1EC885338;
  if (!qword_1EC885338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885338);
  }

  return result;
}

unint64_t sub_1D61FEE3C()
{
  result = qword_1EDF0A7E0;
  if (!qword_1EDF0A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A7E0);
  }

  return result;
}

unint64_t sub_1D61FEE94()
{
  result = qword_1EDF0A7E8;
  if (!qword_1EDF0A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A7E8);
  }

  return result;
}

uint64_t sub_1D61FEEE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736449676174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xEE006769666E6F43)
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

void sub_1D61FF018(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[1];
  v58 = *v4;

  v11 = sub_1D6E5B35C(a1, a2, a3, a4);
  if (v5)
  {
  }

  else
  {
    v12 = v11;

    if (a3)
    {
      v53 = v10;

      v13 = [v12 string];
      v14 = sub_1D726207C();
      v16 = v15;

      v17 = sub_1D62DD564(a3, a1);

      sub_1D62DF2F4(v17, a3, a1, 18, v60);
      type metadata accessor for FormatAttributedString();
      swift_allocObject();
      sub_1D61FFF18(v60, &v58);
      sub_1D6BB8DF0(v14, v16, v60);
      sub_1D6BB92D8(a1);
      v46 = v45;

      sub_1D61FFF74(v60);
      v56 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

      v10 = v53;
    }

    else
    {
      v56 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    }

    v52 = *(v10 + 16);
    if (v52)
    {
      v48 = a4;
      v18 = 0;
      v49 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
      v50 = a3;
      v19 = (v10 + 64);
      v54 = v10;
      v55 = a1;
      v47 = a2;
      while (v18 < *(v10 + 16))
      {
        v20 = *(v19 - 2);
        v21 = *v19;
        v22 = *(v19 - 4);
        v23 = *(v19 - 3);
        v58 = 31611;
        v59 = 0xE200000000000000;

        v62 = v21;

        v57 = v20;

        MEMORY[0x1DA6F9910](v22, v23);
        MEMORY[0x1DA6F9910](32125, 0xE200000000000000);
        v25 = v58;
        v24 = v59;
        if (a3)
        {

          v27 = sub_1D62DD564(v26, a1);

          sub_1D62DF2F4(v27, a3, a1, 18, v61);
          type metadata accessor for FormatAttributedString();
          swift_allocObject();
          sub_1D61FFF18(v61, &v58);
          sub_1D6BB8DF0(v25, v24, v61);
          sub_1D6BB92D8(a1);
          v29 = v28;

          sub_1D61FFF74(v61);
          v30 = [v29 string];
          sub_1D726207C();
        }

        v31 = [v56 mutableString];
        v32 = sub_1D726203C();

        v33 = [v31 rangeOfString_];
        v35 = v34;

        if (v33 != sub_1D725773C())
        {
          v51 = v35;

          v37 = sub_1D6B0ACE8(v36, 0);

          v38 = (*(v55 + v49) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
          swift_beginAccess();
          v39 = *v38;
          v40 = v38[1];

          v42 = sub_1D6FBAAA4(v41, v37, v39, v40);

          v58 = v57;
          v43 = v42;
          if (!v42)
          {
            v43 = v50;
          }

          v44 = sub_1D6E5B35C(v37, v47, v43, v48);

          [v56 replaceCharactersInRange:v33 withAttributedString:{v51, v44}];

          a3 = v50;
        }

        ++v18;

        v19 += 5;
        v10 = v54;
        a1 = v55;
        if (v52 == v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_16:
      if (a3)
      {

        _s8NewsFeed19FormatTextNodeStyleC18reapplyLineSpacing010attributedD07contextSo18NSAttributedStringCAH_AA0cE7ContextCtF_0(v56);
      }
    }
  }
}

uint64_t FormatTextNodeFormat.Token.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatTextNodeFormat.Token.selectors.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1D61FF818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  sub_1D61FFFC8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;

  v26 = a1;
  v27 = a2;
  v28 = a3;
  v9 = sub_1D6E5B0C8(a1, a2, a3);
  v11 = v10;
  LOBYTE(a1) = v12;

  *(inited + 32) = v9;
  *(inited + 40) = v11;
  *(inited + 48) = a1 & 1;
  v13 = *(v7 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D6997920(0, v13, 0);
    v14 = v29;
    v15 = v7 + 64;
    do
    {

      swift_retain_n();

      v16 = sub_1D6E5B0C8(v26, v27, v28);
      v18 = v17;
      v20 = v19;

      v22 = *(v29 + 16);
      v21 = *(v29 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D6997920((v21 > 1), v22 + 1, 1);
      }

      *(v29 + 16) = v22 + 1;
      v23 = v29 + 24 * v22;
      *(v23 + 32) = v16;
      *(v23 + 40) = v18;
      *(v23 + 48) = v20 & 1;
      v15 += 40;
      --v13;
    }

    while (v13);
  }

  sub_1D6985C08(v14);
  v24 = sub_1D60ED798(inited);

  return v24;
}

uint64_t _s8NewsFeed014FormatTextNodeC0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[1];
  v6 = *a2;
  v7 = v3;

  LOBYTE(v3) = static FormatTextContent.== infix(_:_:)(&v7, &v6);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_1D6360ADC(v2, v4);
}

uint64_t _s8NewsFeed014FormatTextNodeC0V5TokenV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v12 = v6;
  v13 = v2;

  v9 = static FormatTextContent.== infix(_:_:)(&v13, &v12);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v10 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v4, v5);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_10:

  return sub_1D5BFC390(v3, v7);
}

unint64_t sub_1D61FFBDC(uint64_t a1)
{
  result = sub_1D61FFC04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61FFC04()
{
  result = qword_1EC885340;
  if (!qword_1EC885340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885340);
  }

  return result;
}

unint64_t sub_1D61FFC98()
{
  result = qword_1EDF165C0;
  if (!qword_1EDF165C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF165C0);
  }

  return result;
}

unint64_t sub_1D61FFCEC()
{
  result = qword_1EC885348;
  if (!qword_1EC885348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885348);
  }

  return result;
}

unint64_t sub_1D61FFD40(uint64_t a1)
{
  result = sub_1D61FFD68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61FFD68()
{
  result = qword_1EC885350;
  if (!qword_1EC885350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885350);
  }

  return result;
}

uint64_t sub_1D61FFDFC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61FFE50()
{
  result = qword_1EDF165B8;
  if (!qword_1EDF165B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF165B8);
  }

  return result;
}

unint64_t sub_1D61FFEA4()
{
  result = qword_1EC885358;
  if (!qword_1EC885358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885358);
  }

  return result;
}

void sub_1D61FFFC8()
{
  if (!qword_1EDF19878)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19878);
    }
  }
}

void sub_1D620002C()
{
  if (!qword_1EDF17C20)
  {
    type metadata accessor for SportsEventStatusResponseData();
    sub_1D620083C(&unk_1EDF0A110, type metadata accessor for SportsEventStatusResponseData);
    sub_1D620083C(&qword_1EDF0A120, type metadata accessor for SportsEventStatusResponseData);
    v0 = sub_1D725AEBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C20);
    }
  }
}

uint64_t type metadata accessor for SportsEventStatusResponse()
{
  result = qword_1EDF0BC20;
  if (!qword_1EDF0BC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6200158()
{
  sub_1D620002C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D62001C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D620002C();
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62007D8(0, &qword_1EDF039C8, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SportsEventStatusResponse();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6200720();
  sub_1D7264B0C();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1D620083C(&qword_1EDF17C28, sub_1D620002C);
    sub_1D726431C();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1D6200774(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6200480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6200508(uint64_t a1)
{
  v2 = sub_1D6200720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6200544(uint64_t a1)
{
  v2 = sub_1D6200720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6200598(void *a1)
{
  sub_1D62007D8(0, &qword_1EC885360, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6200720();
  sub_1D7264B5C();
  sub_1D620002C();
  sub_1D620083C(&qword_1EC885368, sub_1D620002C);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6200720()
{
  result = qword_1EDF0BC78;
  if (!qword_1EDF0BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC78);
  }

  return result;
}

uint64_t sub_1D6200774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventStatusResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D62007D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6200720();
    v7 = a3(a1, &type metadata for SportsEventStatusResponse.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D620083C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6200898()
{
  result = qword_1EC885370;
  if (!qword_1EC885370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885370);
  }

  return result;
}

unint64_t sub_1D62008F0()
{
  result = qword_1EDF0BC68;
  if (!qword_1EDF0BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC68);
  }

  return result;
}

unint64_t sub_1D6200948()
{
  result = qword_1EDF0BC70;
  if (!qword_1EDF0BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC70);
  }

  return result;
}

uint64_t FeedGroupConfigError.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6200A14()
{
  result = qword_1EC885378;
  if (!qword_1EC885378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885378);
  }

  return result;
}

uint64_t static LayeredMediaViewVisibilityTracking.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_1D6200AD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for LayeredMediaViewVisibilityTracking(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for LayeredMediaViewVisibilityTracking(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6200C8C(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1D6200CA8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t sub_1D6200CE4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6572616873;
    v7 = 0x6B6E694C79706F63;
    if (a1 != 3)
    {
      v7 = 0x64616F6C6E776F64;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1 <= 1u)
    {
      return 0x654E6E496E65706FLL;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6B636F6C62;
    v2 = 0x617461436B636162;
    if (a1 != 9)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x65766F6D6572;
    v4 = 0x6E6168436E65706FLL;
    if (a1 != 6)
    {
      v4 = 0x776F6C6C6F66;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6200E44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D6200CE4(*a1);
  v5 = v4;
  if (v3 == sub_1D6200CE4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6200ECC()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6200CE4(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6200F30()
{
  sub_1D6200CE4(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6200F84()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6200CE4(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6200FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6202014();
  *a1 = result;
  return result;
}

uint64_t sub_1D6201014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6200CE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatIssueBinding.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D620118C()
{
  result = qword_1EC885380;
  if (!qword_1EC885380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885380);
  }

  return result;
}

unint64_t sub_1D62011E0(uint64_t a1)
{
  result = sub_1D6201208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6201208()
{
  result = qword_1EC885388;
  if (!qword_1EC885388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885388);
  }

  return result;
}

unint64_t sub_1D620125C(void *a1)
{
  a1[1] = sub_1D6201294();
  a1[2] = sub_1D62012E8();
  result = sub_1D620118C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6201294()
{
  result = qword_1EC885390;
  if (!qword_1EC885390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885390);
  }

  return result;
}

unint64_t sub_1D62012E8()
{
  result = qword_1EC885398;
  if (!qword_1EC885398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885398);
  }

  return result;
}

unint64_t sub_1D6201390()
{
  result = qword_1EC8853A0;
  if (!qword_1EC8853A0)
  {
    sub_1D5B58150(255, &qword_1EC8853A8, &_s7CommandO10CodingTypeON, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853A0);
  }

  return result;
}

unint64_t sub_1D6201410()
{
  result = qword_1EC8853B0;
  if (!qword_1EC8853B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853B0);
  }

  return result;
}

unint64_t sub_1D6201464()
{
  result = qword_1EC8853B8;
  if (!qword_1EC8853B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8853B8);
  }

  return result;
}

uint64_t sub_1D62014B8@<X0>(unsigned __int8 a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[4];
  v78[5] = a2[5];
  v78[6] = v6;
  v79[0] = v7;
  *(v79 + 9) = *(a2 + 121);
  v9 = a2[2];
  v78[3] = a2[3];
  v78[4] = v8;
  v10 = *a2;
  v78[1] = a2[1];
  v78[2] = v9;
  v78[0] = v10;
  v11 = *(a3 + 112);
  v80[6] = *(a3 + 96);
  v80[7] = v11;
  v80[8] = *(a3 + 128);
  v81 = *(a3 + 144);
  v12 = *(a3 + 48);
  v80[2] = *(a3 + 32);
  v80[3] = v12;
  v13 = *(a3 + 80);
  v80[4] = *(a3 + 64);
  v80[5] = v13;
  v14 = *(a3 + 16);
  v80[0] = *a3;
  v80[1] = v14;
  sub_1D6202060(v80);
  v15 = sub_1D6200CE4(a1);
  v17 = v16;
  v18 = sub_1D5C73AB0(v15, v16);
  if (v19)
  {
    v74 = v18;
    v75 = v19;
    sub_1D5BF4D9C();
    v20 = sub_1D7263A0C();
    v22 = v21;

    v23 = sub_1D5FD24A4(1uLL, v15, v17);
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = MEMORY[0x1DA6F97E0](v23, v25, v27, v29);
    v32 = v31;

    MEMORY[0x1DA6F9910](v30, v32);

    v15 = v20;
    v17 = v22;
  }

  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v46 = qword_1EDF3ACA8;
        v47 = *&v78[0];
        if (v46 != -1)
        {
          v73 = v47;
          swift_once();
          v47 = v73;
        }

        v74 = v47;
        v75 = 0;
        v77 = 0x80;
        v76 = 0;
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v41 = sub_1D62037BC(v48, &v74);
      }

      else if (a1 == 3)
      {
        v38 = qword_1EDF3AAD8;
        v39 = *&v78[0];
        if (v38 != -1)
        {
          swift_once();
        }

        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v41 = sub_1D6204178(v40, v39);
      }

      else
      {
        v58 = qword_1EDF16C38;
        v59 = *&v78[0];
        if (v58 != -1)
        {
          swift_once();
        }

        sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1D72816C0;
        *(v60 + 32) = v59;
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v41 = sub_1D6203FC0(v61, v60);
      }

      goto LABEL_39;
    }

    if (a1)
    {
      v62 = qword_1EDF3AFB0;
      v45 = *&v78[0];
      if (v62 == -1)
      {
LABEL_38:
        type metadata accessor for FormatCommandAction();
        swift_allocObject();

        v41 = sub_1D6203B70(v63, v45, 0, 0);
        goto LABEL_39;
      }
    }

    else
    {
      v44 = qword_1EDF3AFE8;
      v45 = *&v78[0];
      if (v44 == -1)
      {
        goto LABEL_38;
      }
    }

    swift_once();
    goto LABEL_38;
  }

  if (a1 <= 7u)
  {
    if (a1 == 5)
    {
      v49 = *&v78[0];
      sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1D72816C0;
      *(v50 + 32) = v49;
      type metadata accessor for Commands.RemoveIssues.Prompt();
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = &unk_1F50F72B0;
      v51[4] = 0;
      v51[5] = 0;
      v52 = qword_1EDF16C58;
      v53 = v49;
      if (v52 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      v41 = sub_1D6203E08(v54, v51);
      goto LABEL_39;
    }

    if (a1 == 6)
    {
      if (qword_1EDF3B010 != -1)
      {
        swift_once();
      }

      v33 = qword_1EDF3B020;

      v34 = [*&v78[0] sourceChannel];
      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      v35 = v33;
      v36 = v34;
      v37 = 0;
LABEL_21:
      v41 = sub_1D620338C(v35, v36, v37, 0);
LABEL_39:
      v64 = v41;
LABEL_40:
      sub_1D5ECF320(v78);
      goto LABEL_41;
    }

    if (qword_1EDF3AB00 != -1)
    {
      swift_once();
    }

    v70 = qword_1EDF3AB10;

    v71 = [*&v78[0] sourceChannel];
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v57 = sub_1D68A926C(v70, v71, 256);
LABEL_45:
    v64 = v57;

    goto LABEL_40;
  }

  if (a1 == 8)
  {
    if (qword_1EDF3AB68 != -1)
    {
      swift_once();
    }

    v55 = qword_1EDF3AB70;

    v56 = [*&v78[0] sourceChannel];
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v57 = sub_1D68A8EEC(v55, v56);
    goto LABEL_45;
  }

  if (a1 == 9)
  {
    if (qword_1EDF3B010 != -1)
    {
      swift_once();
    }

    v42 = qword_1EDF3B020;

    v43 = [*&v78[0] sourceChannel];
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v35 = v42;
    v36 = v43;
    v37 = 1;
    goto LABEL_21;
  }

  sub_1D5ECF320(v78);
  if (qword_1EDF16A20 != -1)
  {
    swift_once();
  }

  type metadata accessor for FormatCommandAction();
  swift_allocObject();

  v64 = sub_1D6202F80(v72, 1);
LABEL_41:
  v65 = type metadata accessor for FormatInspectionItem(0);
  v66 = *(v65 + 24);
  *(a4 + v66) = v64;
  v67 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  result = (*(*(v67 - 8) + 56))(a4 + v66, 0, 1, v67);
  *a4 = v15;
  a4[1] = v17;
  a4[2] = 0;
  a4[3] = 0;
  v69 = a4 + *(v65 + 28);
  *v69 = 0;
  *(v69 + 1) = 0;
  v69[16] = -1;
  return result;
}