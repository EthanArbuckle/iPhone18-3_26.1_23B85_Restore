unint64_t sub_2191C3A74()
{
  result = qword_280EA3D60;
  if (!qword_280EA3D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA3D60);
  }

  return result;
}

uint64_t sub_2191C3B58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2191C3BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_2191C3B58(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_2191C3B58(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2191C3C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AudioFeedServiceConfig();
    v7 = sub_2191C3B58(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t PuzzleMonthArchive.puzzles.getter()
{
  type metadata accessor for PuzzleMonthArchive(0);
}

uint64_t sub_2191C3E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t PuzzleArchiveFetchResult.nextArchivesToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for PuzzleArchiveFetchResult(0) + 24));

  return v1;
}

uint64_t PuzzleArchiveServiceConfig.init(fetchKind:puzzleType:sort:difficulties:incompleteArchive:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  v10 = type metadata accessor for PuzzleArchiveServiceConfig(0);
  return sub_2191CCC58(a7, a8 + *(v10 + 32), &unk_27CC21480, type metadata accessor for PuzzleMonthArchive);
}

void sub_2191C4018()
{
  sub_2186DD998(319, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_218A35A80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2191C40CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2191C411C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_2191C41A8()
{
  sub_2186DD998(319, &qword_27CC17138, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2186DD998(319, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2186DF1C0(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2191C42F8()
{
  sub_2186D6710(319, &qword_280E8E130);
  if (v0 <= 0x3F)
  {
    sub_2186DF1C0(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2186DD998(319, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t dispatch thunk of PuzzleArchiveServiceType.fetchNextArchives(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187609C8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2191C453C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2191C4594()
{
  sub_2191C453C();

  return swift_deallocClassInstance();
}

uint64_t sub_2191C45C8(uint64_t a1, uint64_t a2)
{
  v3[281] = v2;
  v3[275] = a2;
  v3[269] = a1;
  v3[287] = type metadata accessor for PuzzleArchiveFetchResult(0);
  v3[293] = swift_task_alloc();
  v3[299] = type metadata accessor for PuzzleArchiveServiceConfig(0);
  v3[305] = swift_task_alloc();
  v3[311] = swift_task_alloc();
  v4 = sub_219BF3B84();
  v3[317] = v4;
  v3[323] = *(v4 - 8);
  v3[329] = swift_task_alloc();
  v5 = MEMORY[0x277D83D88];
  sub_2186DD998(0, &unk_280EE9DB0, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  v3[335] = swift_task_alloc();
  v6 = sub_219BDB354();
  v3[341] = v6;
  v3[347] = *(v6 - 8);
  v3[353] = swift_task_alloc();
  sub_2186DD998(0, &unk_280EE9D00, MEMORY[0x277CC9260], v5);
  v3[359] = swift_task_alloc();
  v3[365] = swift_task_alloc();
  v7 = sub_219BDB954();
  v3[371] = v7;
  v3[377] = *(v7 - 8);
  v3[383] = swift_task_alloc();
  v3[389] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2191C4878, 0, 0);
}

uint64_t sub_2191C4878()
{

  swift_asyncLet_begin();

  sub_2186D6710(0, &qword_280E8E080);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1336, sub_2191C4964, v0 + 1968);
}

uint64_t sub_2191C4964()
{
  *(v1 + 3160) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656, v1 + 2104, sub_2191C6784, v1 + 3408);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_2191C49A8, 0, 0);
  }
}

uint64_t sub_2191C49A8()
{
  v1 = *(v0 + 3016);
  v2 = *(v0 + 2968);
  v3 = *(v0 + 2920);
  v4 = *(v0 + 2200);
  v5 = *(v0 + 1688);
  *(v0 + 2056) = *(v0 + 1672);
  *(v0 + 2072) = v5;
  *(v0 + 2088) = *(v0 + 1704);
  sub_2191C3E8C(v0 + 2056, v0 + 2008, &qword_27CC17150, &type metadata for SearchEndpointConfig, MEMORY[0x277D83D88], sub_2186DF1C0);
  sub_2191C7DC0(v4, v3);
  v6 = *(v1 + 48);
  if (v6(v3, 1, v2) == 1)
  {
    v7 = *(v0 + 2920);
    sub_2191CD450(v0 + 2056, &qword_27CC17150, &type metadata for SearchEndpointConfig);
    sub_2191CCBE8(v7, &unk_280EE9D00, MEMORY[0x277CC9260]);
    sub_2191CCA24();
    *(v0 + 3576) = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = sub_2191C6624;
    v10 = v0 + 656;
    v11 = v0 + 2104;
    v12 = v0 + 2112;
LABEL_7:

    return MEMORY[0x282200920](v10, v11, v9, v12);
  }

  v13 = *(v0 + 2776);
  v14 = *(v0 + 2728);
  v15 = *(v0 + 2680);
  v38 = *(*(v0 + 3016) + 32);
  v38(*(v0 + 3112), *(v0 + 2920), *(v0 + 2968));
  sub_219BDB264();
  if ((*(v13 + 48))(v15, 1, v14) == 1)
  {
    v16 = *(v0 + 3112);
    v17 = *(v0 + 3016);
    v18 = *(v0 + 2968);
    v19 = *(v0 + 2680);
    sub_2191CD450(v0 + 2056, &qword_27CC17150, &type metadata for SearchEndpointConfig);
    sub_2191CCBE8(v19, &unk_280EE9DB0, MEMORY[0x277CC8958]);
    sub_2191CCA24();
    *(v0 + 3568) = swift_allocError();
    *v20 = 1;
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    v9 = sub_2191C64C4;
    v10 = v0 + 656;
    v11 = v0 + 2104;
    v12 = v0 + 2208;
    goto LABEL_7;
  }

  v21 = *(v0 + 2968);
  v22 = *(v0 + 2872);
  v23 = *(v0 + 2200);
  (*(*(v0 + 2776) + 32))(*(v0 + 2824), *(v0 + 2680), *(v0 + 2728));
  sub_2191C8050(v23, v0 + 2056);
  sub_2191CD450(v0 + 2056, &qword_27CC17150, &type metadata for SearchEndpointConfig);
  sub_219BDB244();
  sub_219BDB274();
  if (v6(v22, 1, v21) == 1)
  {
    v24 = *(v0 + 3112);
    v25 = *(v0 + 3016);
    v26 = *(v0 + 2968);
    v27 = *(v0 + 2824);
    v28 = *(v0 + 2776);
    v29 = *(v0 + 2728);
    sub_2191CCBE8(*(v0 + 2872), &unk_280EE9D00, MEMORY[0x277CC9260]);
    sub_2191CCA24();
    *(v0 + 3560) = swift_allocError();
    *v30 = 2;
    swift_willThrow();
    (*(v28 + 8))(v27, v29);
    (*(v25 + 8))(v24, v26);
    v9 = sub_2191C6364;
    v10 = v0 + 656;
    v11 = v0 + 2104;
    v12 = v0 + 2304;
    goto LABEL_7;
  }

  v31 = *(v0 + 3064);
  v32 = *(v0 + 2248);
  v38(v31, *(v0 + 2872), *(v0 + 2968));
  v33 = swift_task_alloc();
  *(v0 + 3208) = v33;
  *(v33 + 16) = v32;
  *(v33 + 24) = v31;
  v34 = swift_task_alloc();
  *(v0 + 3256) = v34;
  *v34 = v0;
  v34[1] = sub_2191C4E98;
  v35 = *(v0 + 2632);
  v36 = *(v0 + 2536);

  return MEMORY[0x2822008A0](v35, 0, 0, 0xD000000000000017, 0x8000000219D10750, sub_2191CCA78, v33, v36);
}

uint64_t sub_2191C4E98()
{
  *(*v1 + 3304) = v0;

  if (v0)
  {
    v2 = sub_2191C68E4;
  }

  else
  {
    v2 = sub_2191C4FCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2191C4FCC()
{
  v1 = v0[413];
  sub_2191CCA80((v0 + 239));
  v0[419] = v1;
  if (v1)
  {
    v2 = v0[389];
    v3 = v0[383];
    v4 = v0[377];
    v5 = v0[371];
    v6 = v0[353];
    v7 = v0[347];
    v8 = v0[341];
    (*(v0[323] + 8))(v0[329], v0[317]);
    (*(v7 + 8))(v6, v8);
    v9 = *(v4 + 8);
    v9(v2, v5);
    v9(v3, v5);

    return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C5288, v0 + 162);
  }

  else
  {
    v10 = *(v0[275] + 16);
    v0[425] = v10;
    v11 = swift_task_alloc();
    v0[431] = v11;
    *v11 = v0;
    v11[1] = sub_2191C516C;

    return sub_2191C97AC((v0 + 227), (v0 + 239), v10);
  }
}

uint64_t sub_2191C516C()
{
  v2 = *v1;
  *(*v1 + 3456) = v0;

  if (v0)
  {
    sub_2191CCB94(v2 + 1912);
    v3 = sub_2191C6B10;
  }

  else
  {
    v3 = sub_2191C53E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2191C52E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C53E8()
{
  v1 = v0[242];
  v0[433] = v1;
  v2 = v0[243];
  v0[434] = v2;
  if (v2 && (v3 = v0[275], !v3[1]))
  {
    v4 = v0[425];
    v5 = v0[311];
    v6 = v0[299];

    sub_2191CCB94((v0 + 227));
    sub_2191CCB94((v0 + 239));
    v8 = v3[3];
    v7 = v3[4];
    v10 = v3[5];
    v9 = v3[6];
    v11 = *(v6 + 32);
    v12 = type metadata accessor for PuzzleMonthArchive(0);
    (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
    *v5 = v1;
    *(v5 + 1) = v2;
    *(v5 + 2) = v4;
    *(v5 + 3) = v8;
    *(v5 + 4) = v7;
    *(v5 + 5) = v10;
    *(v5 + 6) = v9;
    swift_unknownObjectRetain();

    v13 = swift_task_alloc();
    v0[435] = v13;
    *v13 = v0;
    v13[1] = sub_2191C55AC;
    v14 = v0[311];
    v15 = v0[269];

    return sub_2191C45C8(v15, v14);
  }

  else
  {

    return MEMORY[0x282200930](v0 + 82, v0 + 263, sub_2191C5944, v0 + 336);
  }
}

uint64_t sub_2191C55AC()
{
  *(*v1 + 3488) = v0;

  if (v0)
  {
    v2 = sub_2191C6D68;
  }

  else
  {
    v2 = sub_2191C56C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2191C56C0()
{
  v1 = v0[389];
  v12 = v0[383];
  v2 = v0[377];
  v3 = v0[371];
  v4 = v0[353];
  v5 = v0[347];
  v6 = v0[341];
  v7 = v0[329];
  v8 = v0[323];
  v9 = v0[317];
  sub_2191CCD40(v0[311], type metadata accessor for PuzzleArchiveServiceConfig);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v2 + 8);
  v10(v1, v3);
  v10(v12, v3);

  return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C57E8, v0 + 222);
}

uint64_t sub_2191C5840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C5944()
{
  *(v1 + 3496) = v0;
  if (v0)
  {
    sub_2191CCB94(v1 + 1816);
    sub_2191CCB94(v1 + 1912);
    v2 = sub_2191C6FF0;
  }

  else
  {
    v2 = sub_2191C59CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2191C59CC()
{
  v1 = v0 + 239;
  v2 = v0[263];
  sub_219BDC8D4();
  swift_unknownObjectRetain();
  sub_219BDC8B4();
  sub_219BDC694();
  v3 = [v2 puzzlesConfig];
  [v3 puzzlesArchiveAPIEnabled];

  LOBYTE(v3) = sub_219BDC8C4();

  swift_unknownObjectRelease();
  if (v3)
  {
    sub_2191CCB94((v0 + 227));
    v4 = v0 + 245;
    v5 = v0 + 244;
    v6 = v0 + 434;
    v7 = v0 + 433;
  }

  else
  {
    sub_2191CCB94((v0 + 239));
    v4 = v0 + 233;
    v5 = v0 + 232;
    v7 = v0 + 230;
    v6 = v0 + 231;
    v1 = v0 + 227;
  }

  v8 = *v4;
  v9 = *v5;
  v10 = *v6;
  v11 = *v7;
  v0[439] = v8;
  v0[438] = v10;
  v12 = v0[299];
  v13 = v0[275];
  v14 = v1[2];
  v16 = *v1;
  v15 = v1[1];
  v0[440] = v15;
  v0[215] = v16;
  v0[216] = v15;
  v0[217] = v14;
  v0[218] = v11;
  v0[219] = v10;
  v0[220] = v9;
  v0[221] = v8;
  v17 = *(v12 + 32);
  v18 = swift_task_alloc();
  v0[441] = v18;
  *v18 = v0;
  v18[1] = sub_2191C5B98;
  v19 = v0[425];
  v20 = v0[293];

  return sub_2191C9D40(v20, (v0 + 215), v19, v13 + v17);
}

uint64_t sub_2191C5B98()
{
  *(*v1 + 3536) = v0;

  if (v0)
  {
    v2 = sub_2191C7248;
  }

  else
  {
    v2 = sub_2191C5D04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2191C5D04()
{
  v1 = v0[293];
  if (*(*v1 + 16))
  {
    v2 = v0[389];
    v3 = v0[383];
    v4 = v0[377];
    v5 = v0[371];
    v6 = v0[353];
    v7 = v0[347];
    v8 = v0[341];
    v9 = v0[269];
    (*(v0[323] + 8))(v0[329], v0[317]);
    (*(v7 + 8))(v6, v8);
    v10 = *(v4 + 8);
    v10(v2, v5);
    sub_2191CCDFC(v1, v9, type metadata accessor for PuzzleArchiveFetchResult);
    v10(v3, v5);
    v11 = sub_2191C6038;
    v12 = v0 + 82;
    v13 = v0 + 263;
    v14 = v0 + 366;
LABEL_3:

    return MEMORY[0x282200920](v12, v13, v11, v14);
  }

  v15 = v0[287];
  v16 = (v1 + *(v15 + 24));
  v17 = v16[1];
  if (!v17)
  {
    v29 = v0[389];
    v30 = v0[383];
    v31 = v0[377];
    v32 = v0[371];
    v33 = v0[353];
    v34 = v0[347];
    v35 = v0[341];
    v36 = v0[269];
    (*(v0[323] + 8))(v0[329], v0[317]);
    (*(v34 + 8))(v33, v35);
    v37 = *(v31 + 8);
    v37(v29, v32);
    sub_2191CCDFC(v1, v36, type metadata accessor for PuzzleArchiveFetchResult);
    v37(v30, v32);
    v11 = sub_2191C6328;
    v12 = v0 + 82;
    v13 = v0 + 263;
    v14 = v0 + 378;
    goto LABEL_3;
  }

  v18 = v0[425];
  v19 = v0[305];
  v20 = v0[275];
  v21 = *v16;
  v23 = v20[3];
  v22 = v20[4];
  v25 = v20[5];
  v24 = v20[6];
  sub_2191C3E8C(v1 + *(v15 + 20), v19 + *(v0[299] + 32), &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88], sub_2186DD998);
  *v19 = v21;
  v19[1] = v17;
  v19[2] = v18;
  v19[3] = v23;
  v19[4] = v22;
  v19[5] = v25;
  v19[6] = v24;
  swift_unknownObjectRetain();

  v26 = swift_task_alloc();
  v0[443] = v26;
  *v26 = v0;
  v26[1] = sub_2191C6090;
  v27 = v0[305];
  v28 = v0[269];

  return sub_2191C45C8(v28, v27);
}

uint64_t sub_2191C6090()
{
  *(*v1 + 3552) = v0;

  if (v0)
  {
    v2 = sub_2191C74A0;
  }

  else
  {
    v2 = sub_2191C61A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2191C61A4()
{
  v12 = v0[389];
  v13 = v0[383];
  v1 = v0[377];
  v2 = v0[371];
  v3 = v0[353];
  v4 = v0[347];
  v5 = v0[341];
  v6 = v0[329];
  v7 = v0[323];
  v8 = v0[317];
  v9 = v0[293];
  sub_2191CCD40(v0[305], type metadata accessor for PuzzleArchiveServiceConfig);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v10 = *(v1 + 8);
  v10(v12, v2);
  sub_2191CCD40(v9, type metadata accessor for PuzzleArchiveFetchResult);
  v10(v13, v2);

  return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C62EC, v0 + 402);
}

uint64_t sub_2191C63BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C651C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C667C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C67DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C68E4()
{
  v1 = v0[389];
  v2 = v0[383];
  v3 = v0[377];
  v4 = v0[371];
  (*(v0[347] + 8))(v0[353], v0[341]);
  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);

  return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C69B0, v0 + 300);
}

uint64_t sub_2191C6A08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C6B10()
{
  v1 = v0[389];
  v2 = v0[383];
  v3 = v0[377];
  v4 = v0[371];
  v5 = v0[353];
  v6 = v0[347];
  v7 = v0[341];
  (*(v0[323] + 8))(v0[329], v0[317]);
  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 8);
  v8(v1, v4);
  v8(v2, v4);

  return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C6C08, v0 + 324);
}

uint64_t sub_2191C6C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C6D68()
{
  v1 = v0[389];
  v12 = v0[383];
  v2 = v0[377];
  v3 = v0[371];
  v4 = v0[353];
  v5 = v0[347];
  v6 = v0[341];
  v7 = v0[329];
  v8 = v0[323];
  v9 = v0[317];
  sub_2191CCD40(v0[311], type metadata accessor for PuzzleArchiveServiceConfig);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = *(v2 + 8);
  v10(v1, v3);
  v10(v12, v3);

  return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C6E90, v0 + 414);
}

uint64_t sub_2191C6EE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C6FF0()
{
  v1 = v0[389];
  v2 = v0[383];
  v3 = v0[377];
  v4 = v0[371];
  v5 = v0[353];
  v6 = v0[347];
  v7 = v0[341];
  (*(v0[323] + 8))(v0[329], v0[317]);
  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 8);
  v8(v1, v4);
  v8(v2, v4);

  return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C70E8, v0 + 342);
}

uint64_t sub_2191C7140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C7248()
{
  v1 = v0[389];
  v2 = v0[383];
  v3 = v0[377];
  v4 = v0[371];
  v5 = v0[353];
  v6 = v0[347];
  v7 = v0[341];
  (*(v0[323] + 8))(v0[329], v0[317]);
  (*(v6 + 8))(v5, v7);
  v8 = *(v3 + 8);
  v8(v1, v4);
  v8(v2, v4);

  return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C7340, v0 + 354);
}

uint64_t sub_2191C7398()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C74A0()
{
  v12 = v0[389];
  v13 = v0[383];
  v1 = v0[377];
  v2 = v0[371];
  v3 = v0[353];
  v4 = v0[347];
  v5 = v0[341];
  v6 = v0[329];
  v7 = v0[323];
  v8 = v0[317];
  v9 = v0[293];
  sub_2191CCD40(v0[305], type metadata accessor for PuzzleArchiveServiceConfig);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v10 = *(v1 + 8);
  v10(v12, v2);
  sub_2191CCD40(v9, type metadata accessor for PuzzleArchiveFetchResult);
  v10(v13, v2);

  return MEMORY[0x282200920](v0 + 82, v0 + 263, sub_2191C75E8, v0 + 390);
}

uint64_t sub_2191C7640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C7748(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2191C7768, 0, 0);
}

uint64_t sub_2191C7768()
{
  v1 = v0[3];
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_219041278;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_2191C7898(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_219BED184();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2191C7958, 0, 0);
}

uint64_t sub_2191C7958()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = *(v0[20] + 104);
  sub_2186C6148(0, &qword_280E8E3B0);
  (*(v2 + 104))(v1, *MEMORY[0x277D851D0], v3);
  v5 = sub_219BF66E4();
  v0[24] = v5;
  (*(v2 + 8))(v1, v3);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2191C7AF0;
  v6 = swift_continuation_init();
  sub_2191CD4C0();
  v0[17] = v7;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2191C7CF0;
  v0[13] = &block_descriptor_104;
  v0[14] = v6;
  [v4 fetchAppConfigurationIfNeededWithCompletionQueue:v5 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2191C7AF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2191C7C74;
  }

  else
  {
    v2 = sub_2191C7C00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2191C7C00()
{
  v1 = *(v0 + 192);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2191C7C74()
{
  v1 = *(v0 + 192);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2191C7CF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_218A450F0();
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2191C7DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BDB954();
  v16 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *(a1 + 8);
  v12 = [objc_opt_self() puzzlesArchiveBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v11)
  {
    if (v12)
    {
      sub_219BDB8B4();

      sub_219BDB874();

      (*(v16 + 8))(v8, v5);
      return (*(v16 + 56))(a2, 0, 1, v5);
    }
  }

  else if (v12)
  {
    sub_219BDB8B4();

    sub_219BDB874();

    (*(v16 + 8))(v10, v5);
    return (*(v16 + 56))(a2, 0, 1, v5);
  }

  v13 = *(v16 + 56);

  return v13(a2, 1, 1, v5);
}

size_t sub_2191C8050(const char *a1, uint64_t a2)
{
  v145 = a1;
  v147 = sub_219BDB0F4();
  v125 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_219BDBE14();
  v4 = *(v143 - 8);
  v5 = MEMORY[0x28223BE20](v143);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v132 = &v124 - v8;
  v141 = sub_219BDBE34();
  v9 = *(v141 - 8);
  v10 = MEMORY[0x28223BE20](v141);
  v133 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v129 = &v124 - v12;
  sub_2186DD998(0, &qword_280EE9C20, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v134 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = &v124 - v16;
  v150 = sub_219BDB224();
  v17 = *(v150 - 8);
  v18 = MEMORY[0x28223BE20](v150);
  v20 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v138 = &v124 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v124 = &v124 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v130 = &v124 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v148 = &v124 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v128 = &v124 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v140 = &v124 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v137 = (&v124 - v34);
  v35 = MEMORY[0x28223BE20](v33);
  v136 = &v124 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v149 = &v124 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v124 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v124 - v42;
  v44 = *(a2 + 8) == 1;
  v126 = v20;
  v144 = a2;
  v142 = v4;
  v135 = v7;
  v139 = v9;
  if (v44 || (v45 = *(a2 + 32)) == 0)
  {
    sub_219BDB1F4();
    v48 = sub_2191F84A0(0, 1, 1, MEMORY[0x277D84F90]);
    v52 = *(v48 + 16);
    v51 = *(v48 + 24);
    if (v52 >= v51 >> 1)
    {
      v48 = sub_2191F84A0(v51 > 1, v52 + 1, 1, v48);
    }

    *(v48 + 16) = v52 + 1;
    (*(v17 + 32))(v48 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v52, v41, v150);
  }

  else
  {
    v46 = *(v45 + 16);
    if (v46)
    {
      v47 = v45 + 40;
      v48 = MEMORY[0x277D84F90];
      do
      {

        sub_219BDB1F4();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_2191F84A0(0, *(v48 + 16) + 1, 1, v48);
        }

        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        if (v50 >= v49 >> 1)
        {
          v48 = sub_2191F84A0(v49 > 1, v50 + 1, 1, v48);
        }

        *(v48 + 16) = v50 + 1;
        (*(v17 + 32))(v48 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v50, v43, v150);
        v47 += 16;
        --v46;
      }

      while (v46);
    }

    else
    {
      v48 = MEMORY[0x277D84F90];
    }
  }

  if (*(v145 + 1))
  {
    v53 = v138;
    sub_219BDB1F4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_2191F84A0(0, *(v48 + 16) + 1, 1, v48);
    }

    v54 = v144;
    v56 = *(v48 + 16);
    v55 = *(v48 + 24);
    if (v56 >= v55 >> 1)
    {
      v48 = sub_2191F84A0(v55 > 1, v56 + 1, 1, v48);
    }

    *(v48 + 16) = v56 + 1;
    v57 = *(v17 + 32);
    v58 = *(v17 + 80);
    v148 = *(v17 + 72);
    v149 = v57;
    (v57)(v48 + ((v58 + 32) & ~v58) + v148 * v56, v53, v150);
    goto LABEL_73;
  }

  v59 = [*(v145 + 2) identifier];
  sub_219BF5414();

  sub_219BDB1F4();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_2191F84A0(0, *(v48 + 16) + 1, 1, v48);
  }

  v60 = v139;
  v61 = v148;
  v62 = v128;
  v63 = v127;
  v65 = *(v48 + 16);
  v64 = *(v48 + 24);
  if (v65 >= v64 >> 1)
  {
    v48 = sub_2191F84A0(v64 > 1, v65 + 1, 1, v48);
  }

  *(v48 + 16) = v65 + 1;
  v66 = *(v17 + 32);
  v138 = *(v17 + 80);
  v67 = (v138 + 32) & ~v138;
  v68 = (v48 + v67 + *(v17 + 72) * v65);
  v69 = v149;
  v148 = *(v17 + 72);
  v149 = v66;
  (v66)(v68, v69, v150);
  v70 = v145;
  v71 = *(v145 + 4);
  v72 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v72 = *(v145 + 3) & 0xFFFFFFFFFFFFLL;
  }

  if (v72)
  {
    sub_219BDB1F4();
    v74 = *(v48 + 16);
    v73 = *(v48 + 24);
    if (v74 >= v73 >> 1)
    {
      v48 = sub_2191F84A0(v73 > 1, v74 + 1, 1, v48);
    }

    *(v48 + 16) = v74 + 1;
    (v149)(v48 + v67 + v74 * v148, v136, v150);
    v70 = v145;
  }

  if (*(v70 + 6))
  {
    sub_219BDB1F4();
    v76 = *(v48 + 16);
    v75 = *(v48 + 24);
    if (v76 >= v75 >> 1)
    {
      v48 = sub_2191F84A0(v75 > 1, v76 + 1, 1, v48);
    }

    *(v48 + 16) = v76 + 1;
    (v149)(v48 + v67 + v76 * v148, v137, v150);
  }

  sub_219BDB1F4();
  v78 = *(v48 + 16);
  v77 = *(v48 + 24);
  if (v78 >= v77 >> 1)
  {
    v48 = sub_2191F84A0(v77 > 1, v78 + 1, 1, v48);
  }

  *(v48 + 16) = v78 + 1;
  (v149)(v48 + v67 + v78 * v148, v140, v150);
  v156 = 0;
  v157 = 0xE000000000000000;
  v79 = [*(v63 + 112) bundleSubscription];
  if (objc_getAssociatedObject(v79, v79 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v152 = 0u;
    v153 = 0u;
  }

  v154 = v152;
  v155 = v153;
  v80 = MEMORY[0x277D84F70];
  v145 = v67;
  if (!*(&v153 + 1))
  {
    v84 = v62;
    v85 = v61;
    sub_2191CD450(&v154, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
LABEL_46:
    v86 = 0;
    v83 = 0;
    goto LABEL_47;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v84 = v62;
    v85 = v61;
    goto LABEL_46;
  }

  v81 = v151;
  v82 = [v151 integerValue];
  if (v82 == -1)
  {

    v89 = 0xE400000000000000;
    v90 = 1702195828;
    goto LABEL_58;
  }

  v83 = v82;
  v84 = v62;
  v85 = v61;
  v86 = v81;
LABEL_47:
  if (objc_getAssociatedObject(v79, ~v83))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v152 = 0u;
    v153 = 0u;
  }

  v154 = v152;
  v155 = v153;
  if (!*(&v153 + 1))
  {
    sub_2191CD450(&v154, &qword_280E8B4F0, v80 + 8);
LABEL_55:

    v61 = v85;
    v62 = v84;
    if (v83)
    {
      goto LABEL_53;
    }

LABEL_56:
    v89 = 0xE500000000000000;
    v90 = 0x65736C6166;
    goto LABEL_57;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  v87 = v151;
  v88 = [v87 integerValue];

  v61 = v85;
  v62 = v84;
  if (((v88 ^ v83) & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_53:
  v89 = 0xE400000000000000;
  v90 = 1702195828;
LABEL_57:
  v60 = v139;
LABEL_58:
  MEMORY[0x21CECC330](v90, v89);

  sub_219BDB1F4();

  v92 = *(v48 + 16);
  v91 = *(v48 + 24);
  if (v92 >= v91 >> 1)
  {
    v48 = sub_2191F84A0(v91 > 1, v92 + 1, 1, v48);
  }

  v93 = v145;
  *(v48 + 16) = v92 + 1;
  (v149)(&v93[v48 + v92 * v148], v62, v150);
  sub_219BDB1F4();
  v95 = *(v48 + 16);
  v94 = *(v48 + 24);
  if (v95 >= v94 >> 1)
  {
    v48 = sub_2191F84A0(v94 > 1, v95 + 1, 1, v48);
  }

  *(v48 + 16) = v95 + 1;
  v140 = (v17 + 32);
  (v149)(&v93[v48 + v95 * v148], v61, v150);
  v96 = v129;
  sub_219BDBDF4();
  v97 = v132;
  sub_219BDBE24();
  v139 = v60[1];
  (v139)(v96, v141);
  v98 = v131;
  sub_219BDBE04();
  v99 = v98;
  v100 = v142 + 8;
  v137 = *(v142 + 8);
  v137(v97, v143);
  v101 = sub_219BDBDA4();
  v102 = *(v101 - 8);
  v103 = *(v102 + 48);
  if (v103(v99, 1, v101) == 1)
  {
    sub_2191CCBE8(v99, &qword_280EE9C20, MEMORY[0x277CC9640]);
  }

  else
  {
    v142 = v100;
    sub_219BDBD94();
    (*(v102 + 8))(v99, v101);
    sub_219BDB1F4();

    v105 = *(v48 + 16);
    v104 = *(v48 + 24);
    if (v105 >= v104 >> 1)
    {
      v48 = sub_2191F84A0(v104 > 1, v105 + 1, 1, v48);
    }

    *(v48 + 16) = v105 + 1;
    (v149)(&v145[v48 + v105 * v148], v130, v150);
  }

  v106 = v133;
  sub_219BDBDF4();
  v107 = v135;
  sub_219BDBE24();
  (v139)(v106, v141);
  v108 = v134;
  sub_219BDBE04();
  v137(v107, v143);
  if (v103(v108, 1, v101) == 1)
  {
    sub_2191CCBE8(v108, &qword_280EE9C20, MEMORY[0x277CC9640]);
    v54 = v144;
  }

  else
  {
    sub_219BDBD94();
    (*(v102 + 8))(v108, v101);
    v109 = v124;
    sub_219BDB1F4();

    v111 = *(v48 + 16);
    v110 = *(v48 + 24);
    v54 = v144;
    if (v111 >= v110 >> 1)
    {
      v48 = sub_2191F84A0(v110 > 1, v111 + 1, 1, v48);
    }

    v112 = v145;
    *(v48 + 16) = v111 + 1;
    (v149)(&v112[v48 + v111 * v148], v109, v150);
  }

  LODWORD(v58) = v138;
LABEL_73:
  if (*(v54 + 8) != 1)
  {
    v113 = *(v54 + 40);
    if (v113)
    {
      v114 = *(v113 + 16);
      if (v114)
      {
        v145 = "paidSubscriptions";
        v115 = (v125 + 8);
        v144 = v17 + 32;
        v116 = (v113 + 40);
        v117 = v126;
        do
        {
          v119 = *(v116 - 1);
          v118 = *v116;

          v120 = v146;
          sub_219BDB0C4();
          sub_219BDB0E4();
          sub_219BDB0E4();
          *&v154 = v119;
          *(&v154 + 1) = v118;
          sub_2187F3BD4();
          sub_219BF7044();
          (*v115)(v120, v147);

          sub_219BDB1F4();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_2191F84A0(0, *(v48 + 16) + 1, 1, v48);
          }

          v122 = *(v48 + 16);
          v121 = *(v48 + 24);
          if (v122 >= v121 >> 1)
          {
            v48 = sub_2191F84A0(v121 > 1, v122 + 1, 1, v48);
          }

          *(v48 + 16) = v122 + 1;
          (v149)(v48 + ((v58 + 32) & ~v58) + v148 * v122, v117, v150);
          v116 += 2;
          --v114;
        }

        while (v114);
      }
    }
  }

  return v48;
}

uint64_t sub_2191C92E0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v23 = a1;
  v24 = a3;
  sub_2191CCEB8();
  v28 = v4;
  v26 = *(v4 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_2191CCF28();
  v22 = sub_219BF5414();
  sub_2186C6148(0, &qword_280E8E3B0);
  (*(v7 + 104))(v9, *MEMORY[0x277D851B8], v6);
  v10 = sub_219BF66E4();
  (*(v7 + 8))(v9, v6);
  v22 = sub_219BF69B4();

  v11 = v25;
  v12 = v26;
  v24 = *(v26 + 16);
  v13 = a1;
  v14 = v28;
  v24(v25, v13, v28);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v26 = *(v12 + 32);
  (v26)(v16 + v15, v11, v14);
  v17 = sub_219BE2E54();
  v21 = sub_219BE2F74();

  v24(v11, v23, v14);
  v18 = swift_allocObject();
  (v26)(v18 + v15, v11, v14);
  v19 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2191C968C(uint64_t a1)
{
  v2 = sub_219BF3B84();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2191CCEB8();
  return sub_219BF5B64();
}

uint64_t sub_2191C9768(void *a1)
{
  v1 = a1;
  sub_2191CCEB8();
  return sub_219BF5B54();
}

uint64_t sub_2191C97AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *(type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult() - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2191C986C, 0, 0);
}

uint64_t sub_2191C986C()
{
  v1 = v0[9];
  sub_218718690(v0[10] + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = [v1 latestPuzzleIDs];
  if (v4)
  {
    v5 = v4;
    v6 = sub_219BF5924();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v0[13] = v6;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2191C9980;

  return MEMORY[0x282192268](v6, v2, v3);
}

uint64_t sub_2191C9980(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_2191C9CCC;
  }

  else
  {

    v4 = sub_2191C9A9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2191C9A9C()
{
  v1 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v4 = *(v0 + 88);
    v21 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = *(v0 + 120) + 32;
    v7 = MEMORY[0x277D84F90];
    while (v21)
    {
      v8 = MEMORY[0x21CECE0F0](v3, *(v0 + 120));
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      sub_2191CC238(v8, *(v0 + 96));
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2191FA2CC(0, v7[2] + 1, 1, v7);
      }

      v11 = v7[2];
      v10 = v7[3];
      v1 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v7 = sub_2191FA2CC(v10 > 1, v11 + 1, 1, v7);
      }

      v12 = *(v0 + 96);
      v7[2] = v1;
      sub_2191CCDFC(v12, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
      ++v3;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    if (v3 >= *(v5 + 16))
    {
      goto LABEL_16;
    }

    v8 = *(v6 + 8 * v3);
    swift_unknownObjectRetain();
    v9 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_19:
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);

  v16 = *v13;
  v15 = v13[1];
  v17 = v13[2];
  v18 = v7[2];

  *v14 = v16;
  v14[1] = v15;
  v14[2] = v17;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = v18;
  v14[6] = v7;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2191C9CCC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2191C9D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = type metadata accessor for PuzzleMonthArchive(0);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v8 = MEMORY[0x277D83D88];
  sub_2186DD998(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_2186DD998(0, &qword_280EE9C40, MEMORY[0x277CC9578], v8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v9 = sub_219BDBD34();
  v5[34] = v9;
  v5[35] = *(v9 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v10 = sub_219BDBF94();
  v5[38] = v10;
  v5[39] = *(v10 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v11 = sub_219BDB534();
  v5[42] = v11;
  v5[43] = *(v11 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v12 = sub_219BF1BC4();
  v5[46] = v12;
  v5[47] = *(v12 - 8);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2191CA140, 0, 0);
}

uint64_t sub_2191CA140()
{
  v243 = v0;
  v1 = *(*(v0 + 80) + 48);
  if (!v1 || !*(v1 + 16))
  {
    v22 = *(v0 + 200);
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
    sub_2191C3E8C(*(v0 + 96), v22, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88], sub_2186DD998);
    v25 = (*(v24 + 48))(v22, 1, v23);
    v26 = *(v0 + 200);
    if (v25 == 1)
    {
      sub_2191CCBE8(v26, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive);
      v27 = MEMORY[0x277D84F90];
    }

    else
    {
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      sub_2191CCDFC(v26, v28, type metadata accessor for PuzzleMonthArchive);
      sub_2186DD998(0, &unk_27CC17160, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D84560]);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_219C09BA0;
      sub_2191CCDFC(v28, v27 + v30, type metadata accessor for PuzzleMonthArchive);
    }

    v31 = *(v0 + 112);
    v32 = *(v0 + 120);
    v34 = *(v0 + 72);
    v33 = *(v0 + 80);
    v35 = type metadata accessor for PuzzleArchiveFetchResult(0);
    (*(v32 + 56))(v34 + v35[5], 1, 1, v31);
    v36 = *(v33 + 40);
    *v34 = v27;
    v37 = (v34 + v35[6]);
    *v37 = 0;
    v37[1] = 0;
    *(v34 + v35[7]) = v36;
    goto LABEL_130;
  }

  v3 = *(v0 + 384);
  v2 = *(v0 + 392);
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 216);
  v7 = *(v0 + 120);
  v234 = *(v0 + 112);
  v8 = *(v0 + 96);
  v236 = v1 + ((*(*(v0 + 176) + 80) + 32) & ~*(*(v0 + 176) + 80));
  (*(v5 + 16))(v3, v236 + *(*(v0 + 168) + 28), v4);
  (*(v5 + 32))(v2, v3, v4);
  v208 = v1;

  sub_219BDBF34();
  sub_2186DD998(0, &qword_27CC247B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v9 = sub_219BDBF74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09EC0;
  v219 = v12;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v218 = *MEMORY[0x277CC9998];
  v15(v14);
  v220 = v11;
  v216 = *MEMORY[0x277CC9988];
  v217 = v15;
  v15(v14 + v11);
  sub_2194B2E6C(v13);
  swift_setDeallocating();
  v221 = v9;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2191C3E8C(v8, v6, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88], sub_2186DD998);
  v16 = *(v7 + 48);
  v17 = v16(v6, 1, v234);
  v18 = *(v0 + 272);
  v19 = *(v0 + 280);
  v20 = *(v0 + 264);
  v21 = *(v0 + 216);
  v231 = v16;
  if (v17 == 1)
  {
    sub_2191CCBE8(v21, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive);
    (*(v19 + 56))(v20, 1, 1, v18);
  }

  else
  {
    sub_2191C3E8C(v21, v20, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DD998);
    sub_2191CCD40(v21, type metadata accessor for PuzzleMonthArchive);
    if ((*(v19 + 48))(v20, 1, v18) != 1)
    {
      (*(*(v0 + 280) + 32))(*(v0 + 296), *(v0 + 264), *(v0 + 272));
      goto LABEL_17;
    }
  }

  v38 = *(v0 + 272);
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  sub_219BF1BA4();
  v41 = *(v39 + 48);
  if (v41(v40, 1, v38) == 1)
  {
    v42 = *(v0 + 272);
    v43 = *(v0 + 256);
    sub_219BDBBB4();
    if (v41(v43, 1, v42) != 1)
    {
      sub_2191CCBE8(*(v0 + 256), &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(*(v0 + 280) + 32))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  }

  v44 = *(v0 + 264);
  if (v41(v44, 1, *(v0 + 272)) != 1)
  {
    sub_2191CCBE8(v44, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

LABEL_17:
  v45 = *(v0 + 328);
  v46 = *(v0 + 304);
  v47 = *(v0 + 312);
  v48 = *(v0 + 296);
  v50 = *(v0 + 272);
  v49 = *(v0 + 280);
  v51 = *(v0 + 208);
  v229 = *(v0 + 112);
  v52 = *(v0 + 96);
  sub_219BDBEA4();

  v222 = *(v49 + 8);
  v222(v48, v50);
  v54 = *(v47 + 8);
  v53 = v47 + 8;
  v214 = v54;
  v54(v45, v46);
  sub_2191C3E8C(v52, v51, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88], sub_2186DD998);
  v55 = v231(v51, 1, v229);
  v56 = *(v0 + 208);
  if (v55 == 1)
  {
    sub_2191CCBE8(*(v0 + 208), &unk_27CC21480, type metadata accessor for PuzzleMonthArchive);
    v57 = MEMORY[0x277D84F90];
  }

  else
  {
    v57 = *(v56 + *(*(v0 + 112) + 20));

    sub_2191CCD40(v56, type metadata accessor for PuzzleMonthArchive);
  }

  v58 = v236;
  v225 = v0;
  v240 = v57;
  if (v57 >> 62)
  {
LABEL_118:
    v0 = sub_219BF7214();
  }

  else
  {
    v0 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = MEMORY[0x277D84F90];
  if (v0)
  {
    v242[0] = MEMORY[0x277D84F90];

    sub_21870B65C(0, v0 & ~(v0 >> 63), 0);
    if (v0 < 0)
    {
      __break(1u);
LABEL_120:
      swift_once();
LABEL_94:
      v163 = *(v0 + 80);
      v164 = sub_219BE5434();
      __swift_project_value_buffer(v164, qword_280F625E0);
      sub_2191CCDA0(v163, v0 + 16);
      v165 = sub_219BE5414();
      v166 = sub_219BF61F4();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 134218240;
        if (v57 >> 62)
        {
          v168 = sub_219BF7214();
        }

        else
        {
          v168 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v169 = *(v0 + 80);
        *(v167 + 4) = v168;
        *(v167 + 12) = 2048;
        *(v167 + 14) = v53;
        sub_2191CCB94(v169);
        _os_log_impl(&dword_2186C1000, v165, v166, "PuzzleArchiveService currently has %ld while expecting a maximum of %ld! This is generally caused by a recursive server response.  Check the cursor token being returned by the fetch API and confirm that it is changing.", v167, 0x16u);
        MEMORY[0x21CECF960](v167, -1, -1);
      }

      else
      {
        sub_2191CCB94(*(v0 + 80));
      }

      v177 = *(v0 + 392);
      v178 = *(v0 + 376);
      v215 = *(v0 + 368);
      v179 = *(v0 + 360);
      v180 = *(v0 + 336);
      v181 = *(v0 + 288);
      v182 = *(v0 + 272);
      v183 = *(v0 + 192);

      sub_2191CCA24();
      swift_allocError();
      *v184 = 4;
      swift_willThrow();
      swift_unknownObjectRelease();
      v222(v181, v182);
      (*v223)(v179, v180);
      (*(v178 + 8))(v177, v215);
      sub_2191CCD40(v183, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);

      v185 = *(v0 + 8);
      goto LABEL_131;
    }

    v60 = 0;
    v59 = v242[0];
    v61 = v57 & 0xC000000000000001;
    v62 = v57;
    do
    {
      if (v61)
      {
        v63 = MEMORY[0x21CECE0F0](v60, v57);
      }

      else
      {
        v63 = *(v57 + 8 * v60 + 32);
        swift_unknownObjectRetain();
      }

      v64 = [v63 identifier];
      v65 = sub_219BF5414();
      v67 = v66;

      swift_unknownObjectRelease();
      v242[0] = v59;
      v69 = *(v59 + 16);
      v68 = *(v59 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_21870B65C((v68 > 1), v69 + 1, 1);
        v59 = v242[0];
      }

      ++v60;
      *(v59 + 16) = v69 + 1;
      v70 = v59 + 16 * v69;
      *(v70 + 32) = v65;
      *(v70 + 40) = v67;
      v57 = v62;
    }

    while (v0 != v60);

    v58 = v236;
  }

  v71 = sub_218845F78(v59);

  v241 = v71;
  v72 = *(v208 + 16);
  v0 = v225;
  if (v72)
  {
    v73 = v225[43];
    v212 = (v225[35] + 56);
    v207 = v225[23];
    v211 = v225[15];
    v210 = v225[14];
    v233 = v225[13];
    v213 = v225[10];
    v223 = (v73 + 8);
    v209 = (v73 + 16);
    v230 = *(v225[22] + 72);
    v232 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_2191CCCD8(v58, *(v0 + 192), type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
      __swift_project_boxed_opaque_existential_1((v233 + 16), *(v233 + 40));
      v80 = sub_219BF22A4();
      if (v80)
      {
        v81 = v80;
        v82 = [v80 publishDate];
        if (v82)
        {
          v83 = v82;
          sub_219BDBCA4();

          v53 = *(v213 + 40);
          v226 = v57;
          if (v53 < 1)
          {
            goto LABEL_93;
          }

          if (v57 >> 62)
          {
            if (v53 < sub_219BF7214())
            {
LABEL_93:

              if (qword_280EE5F80 != -1)
              {
                goto LABEL_120;
              }

              goto LABEL_94;
            }
          }

          else if (v53 < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_93;
          }

          v224 = v72;
          v236 = v58;
          v84 = *(v0 + 320);
          v85 = *(v0 + 304);
          sub_219BDBF34();
          v86 = swift_allocObject();
          *(v86 + 16) = xmmword_219C09EC0;
          (v217)(v86 + v219, v218, v221);
          (v217)(v86 + v219 + v220, v216, v221);
          v53 = sub_2194B2E6C(v86);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          sub_219BDBEA4();

          v214(v84, v85);
          v87 = sub_219BDB4B4();
          v58 = v88;
          v89 = sub_219BDB4B4();
          if ((v58 & 1) == 0)
          {
            v0 = v225;
            v57 = v226;
            if (v87 == v89)
            {
              goto LABEL_54;
            }

            goto LABEL_58;
          }

          v0 = v225;
          v57 = v226;
LABEL_54:
          v58 = *(v0 + 352);
          v109 = sub_219BDB494();
          v53 = v110;
          v111 = sub_219BDB494();
          if ((v53 & 1) == 0 && v109 != v111)
          {
LABEL_58:
            if (v57 >> 62)
            {
              v112 = sub_219BF7214();
              if (!v112)
              {
                goto LABEL_72;
              }

LABEL_60:
              v113 = v112 - 1;
              if (__OFSUB__(v112, 1))
              {
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
                goto LABEL_118;
              }

              if ((v57 & 0xC000000000000001) != 0)
              {

                v114 = MEMORY[0x21CECE0F0](v113, v57);
              }

              else
              {
                if ((v113 & 0x8000000000000000) != 0)
                {
                  goto LABEL_116;
                }

                if (v113 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_117;
                }

                v114 = *(v57 + 8 * v113 + 32);
                swift_unknownObjectRetain();
              }

              v115 = [v114 publishDate];
              swift_unknownObjectRelease();
              if (v115)
              {
                sub_219BDBCA4();

                v116 = 0;
              }

              else
              {
                v116 = 1;
              }

              v117 = *(v0 + 240);
              v118 = *(v0 + 248);
              (*v212)(v117, v116, 1, *(v0 + 272));
              sub_2191CCC58(v117, v118, &qword_280EE9C40, MEMORY[0x277CC9578]);
            }

            else
            {
              v112 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v112)
              {
                goto LABEL_60;
              }

LABEL_72:
              (*v212)(*(v0 + 248), 1, 1, *(v0 + 272));
            }

            v119 = *(v0 + 152);
            v120 = *(v0 + 160);
            sub_2191CCC58(*(v0 + 248), v120, &qword_280EE9C40, MEMORY[0x277CC9578]);
            *(v120 + *(v210 + 20)) = v57;
            sub_2191CCCD8(v120, v119, type metadata accessor for PuzzleMonthArchive);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v232 = sub_2191FA300(0, v232[2] + 1, 1, v232);
            }

            v122 = v232[2];
            v121 = v232[3];
            if (v122 >= v121 >> 1)
            {
              v232 = sub_2191FA300(v121 > 1, v122 + 1, 1, v232);
            }

            v124 = *(v0 + 352);
            v123 = *(v0 + 360);
            v125 = *(v0 + 336);
            v126 = *(v0 + 152);
            sub_2191CCD40(*(v0 + 160), type metadata accessor for PuzzleMonthArchive);
            (*v223)(v123, v125);
            v232[2] = v122 + 1;
            sub_2191CCDFC(v126, v232 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v122, type metadata accessor for PuzzleMonthArchive);

            v57 = MEMORY[0x277D84F90];
            v240 = MEMORY[0x277D84F90];

            v241 = MEMORY[0x277D84FA0];
            (*v209)(v123, v124, v125);
          }

          v127 = [v81 identifier];
          v128 = sub_219BF5414();
          v130 = v129;

          v131 = sub_2188537B8(v128, v130, v241);

          if (v131)
          {
            if (qword_280EE5F80 != -1)
            {
              swift_once();
            }

            v132 = sub_219BE5434();
            __swift_project_value_buffer(v132, qword_280F625E0);
            swift_unknownObjectRetain();
            v133 = sub_219BE5414();
            v134 = sub_219BF61F4();
            swift_unknownObjectRelease();
            v135 = os_log_type_enabled(v133, v134);
            v136 = *(v0 + 352);
            v137 = *(v0 + 336);
            v138 = *(v0 + 288);
            v139 = *(v0 + 272);
            if (v135)
            {
              v228 = *(v0 + 288);
              v140 = swift_slowAlloc();
              v227 = v139;
              v141 = swift_slowAlloc();
              v242[0] = v141;
              *v140 = 136315138;
              v142 = [v81 identifier];
              v143 = v57;
              v144 = sub_219BF5414();
              v206 = v136;
              v146 = v145;

              v147 = v144;
              v57 = v143;
              v0 = v225;
              v148 = sub_2186D1058(v147, v146, v242);

              *(v140 + 4) = v148;
              _os_log_impl(&dword_2186C1000, v133, v134, "Unexpectedly found duplicate puzzle ID %s while creating archive fetch result!", v140, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v141);
              MEMORY[0x21CECF960](v141, -1, -1);
              MEMORY[0x21CECF960](v140, -1, -1);

              swift_unknownObjectRelease();
              (*v223)(v206, v137);
              v150 = v227;
              v149 = v228;
            }

            else
            {

              swift_unknownObjectRelease();
              (*v223)(v136, v137);
              v149 = v138;
              v150 = v139;
            }

            v222(v149, v150);
            v58 = v236;
            sub_2191CCD40(*(v0 + 192), type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
          }

          else
          {
            v151 = swift_unknownObjectRetain();
            MEMORY[0x21CECC690](v151);
            if (*((v240 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v240 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_219BF5A14();
            }

            v152 = *(v0 + 352);
            v153 = *(v0 + 336);
            v154 = *(v0 + 288);
            v155 = *(v0 + 272);
            v156 = *(v0 + 192);
            sub_219BF5A54();
            v157 = [v81 identifier];
            v158 = sub_219BF5414();
            v160 = v159;

            v161 = v160;
            v57 = v240;
            v0 = v225;
            sub_219497B60(v242, v158, v161);
            swift_unknownObjectRelease();

            (*v223)(v152, v153);
            v222(v154, v155);
            sub_2191CCD40(v156, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
            v58 = v236;
          }

          v72 = v224;
          goto LABEL_37;
        }

        if (qword_280EE5F80 != -1)
        {
          swift_once();
        }

        v97 = sub_219BE5434();
        __swift_project_value_buffer(v97, qword_280F625E0);
        swift_unknownObjectRetain();
        v98 = sub_219BE5414();
        v99 = sub_219BF6214();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v238 = v58;
          v101 = swift_slowAlloc();
          v242[0] = v101;
          *v100 = 136315138;
          v102 = [v81 identifier];
          v103 = sub_219BF5414();
          v104 = v72;
          v106 = v105;

          v107 = sub_2186D1058(v103, v106, v242);
          v72 = v104;

          *(v100 + 4) = v107;
          _os_log_impl(&dword_2186C1000, v98, v99, "PuzzleArchiveService encountered puzzle %s with no publish date. It will be excluded from the archive.", v100, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v101);
          v108 = v101;
          v58 = v238;
          MEMORY[0x21CECF960](v108, -1, -1);
          MEMORY[0x21CECF960](v100, -1, -1);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v237 = v58;
        if (qword_280EE5F80 != -1)
        {
          swift_once();
        }

        v90 = *(v0 + 184);
        v91 = *(v0 + 192);
        v92 = sub_219BE5434();
        __swift_project_value_buffer(v92, qword_280F625E0);
        sub_2191CCCD8(v91, v90, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
        v93 = sub_219BE5414();
        v94 = sub_219BF6214();
        v95 = os_log_type_enabled(v93, v94);
        v96 = *(v0 + 184);
        if (v95)
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v242[0] = v75;
          *v74 = 136315138;
          v76 = v72;
          v77 = *(v207 + 16);
          v78 = *(v207 + 24);

          sub_2191CCD40(v96, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
          v79 = sub_2186D1058(v77, v78, v242);
          v72 = v76;

          *(v74 + 4) = v79;
          _os_log_impl(&dword_2186C1000, v93, v94, "PuzzleArchiveService failed to create puzzle %s! It will be excluded from the archive.", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          MEMORY[0x21CECF960](v75, -1, -1);
          MEMORY[0x21CECF960](v74, -1, -1);
        }

        else
        {

          sub_2191CCD40(v96, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
        }

        v58 = v237;
      }

      sub_2191CCD40(*(v0 + 192), type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult);
LABEL_37:
      v58 += v230;
      if (!--v72)
      {
        goto LABEL_91;
      }
    }
  }

  v232 = MEMORY[0x277D84F90];
LABEL_91:
  v162 = *(v0 + 80);

  v235 = *(v162 + 32);
  v239 = *(v162 + 24);
  if (!v235)
  {
    if (v57 >> 62)
    {
      v170 = sub_219BF7214();
    }

    else
    {
      v170 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v171 = MEMORY[0x277D84F90];

    if (!v170)
    {
      goto LABEL_129;
    }

    if (v57 >> 62)
    {
      result = sub_219BF7214();
      if (result)
      {
LABEL_103:
        v173 = result - 1;
        if (__OFSUB__(result, 1))
        {
          __break(1u);
        }

        else if ((v57 & 0xC000000000000001) == 0)
        {
          if ((v173 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v173 < *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v174 = *(v57 + 8 * v173 + 32);
            swift_unknownObjectRetain();
LABEL_108:
            v175 = [v174 publishDate];
            swift_unknownObjectRelease();
            if (v175)
            {
              sub_219BDBCA4();

              v176 = 0;
            }

            else
            {
              v176 = 1;
            }

            v187 = *(v0 + 224);
            v186 = *(v0 + 232);
            (*(*(v0 + 280) + 56))(v187, v176, 1, *(v0 + 272));
            sub_2191CCC58(v187, v186, &qword_280EE9C40, MEMORY[0x277CC9578]);
            goto LABEL_124;
          }

          __break(1u);
          return result;
        }

        v174 = MEMORY[0x21CECE0F0](v173, v57);

        goto LABEL_108;
      }
    }

    else
    {
      result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_103;
      }
    }

    (*(*(v0 + 280) + 56))(*(v0 + 232), 1, 1, *(v0 + 272));
LABEL_124:
    v189 = *(v0 + 136);
    v188 = *(v0 + 144);
    v190 = *(v0 + 112);
    sub_2191CCC58(*(v0 + 232), v188, &qword_280EE9C40, MEMORY[0x277CC9578]);
    *(v188 + *(v190 + 20)) = v57;
    sub_2191CCCD8(v188, v189, type metadata accessor for PuzzleMonthArchive);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = sub_2191FA300(0, v232[2] + 1, 1, v232);
    }

    v192 = v232[2];
    v191 = v232[3];
    if (v192 >= v191 >> 1)
    {
      v232 = sub_2191FA300(v191 > 1, v192 + 1, 1, v232);
    }

    v193 = *(v0 + 136);
    v194 = *(v0 + 120);
    sub_2191CCD40(*(v0 + 144), type metadata accessor for PuzzleMonthArchive);
    v232[2] = v192 + 1;
    sub_2191CCDFC(v193, v232 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v192, type metadata accessor for PuzzleMonthArchive);

    v240 = v171;
    goto LABEL_129;
  }

LABEL_129:
  v195 = *(v0 + 392);
  v196 = *(v0 + 368);
  v197 = *(v0 + 376);
  v198 = *(v0 + 360);
  v199 = *(v0 + 336);
  v200 = *(v0 + 344);
  v201 = *(v0 + 72);
  v202 = *(v0 + 80);
  v203 = type metadata accessor for PuzzleArchiveFetchResult(0);
  sub_2191CBEC0(&v240, v201 + v203[5]);
  (*(v200 + 8))(v198, v199);
  (*(v197 + 8))(v195, v196);

  v204 = *(v202 + 40);
  *v201 = v232;
  v205 = (v201 + v203[6]);
  *v205 = v239;
  v205[1] = v235;
  *(v201 + v203[7]) = v204;
LABEL_130:

  v185 = *(v0 + 8);
LABEL_131:

  return v185();
}

uint64_t sub_2191CBE14(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_2191C45C8(a1, a2);
}

uint64_t sub_2191CBEC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186DD998(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  if (!(*a1 >> 62))
  {
    v10 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_15:
    v18 = type metadata accessor for PuzzleMonthArchive(v10);
    v19 = *(*(v18 - 8) + 56);

    return v19(a2, 1, 1, v18);
  }

  v10 = sub_219BF7214();
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_3:
  v11 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_19:
    v20 = sub_219BDBD34();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_20:
    v21 = *a1;
    sub_2191CCC58(v9, a2, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v22 = type metadata accessor for PuzzleMonthArchive(0);
    *(a2 + *(v22 + 20)) = v21;
    (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
  }

  result = sub_219BF7214();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_5:
  v13 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v14 = MEMORY[0x21CECE0F0](v13, v11);

    goto LABEL_10;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v11 + 8 * v13 + 32);
    swift_unknownObjectRetain();
LABEL_10:
    v15 = [v14 publishDate];
    swift_unknownObjectRelease();
    if (v15)
    {
      sub_219BDBCA4();

      v16 = sub_219BDBD34();
      (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    }

    else
    {
      v17 = sub_219BDBD34();
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }

    sub_2191CCC58(v7, v9, &qword_280EE9C40, MEMORY[0x277CC9578]);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_2191CC238@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  sub_2186DD998(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v61 - v7;
  v9 = sub_219BF1BC4();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  v12 = sub_219BF5414();
  v74 = v13;
  v75 = v12;

  v14 = [a1 allowedStorefrontIDs];
  if (!v14 || (v15 = v14, v16 = sub_219BF5924(), v15, v17 = sub_218B0C5E4(v16), , !v17))
  {

    v17 = MEMORY[0x277D84F90];
  }

  v73 = v17;
  v18 = [a1 authors];
  if (v18)
  {
    v19 = v18;
    v72 = sub_219BF5924();
  }

  else
  {
    v72 = 0;
  }

  v20 = [a1 blockedStorefrontIDs];
  if (!v20 || (v21 = v20, v22 = sub_219BF5924(), v21, v23 = sub_218B0C5E4(v22), , !v23))
  {

    v23 = MEMORY[0x277D84F90];
  }

  v71 = v23;
  v24 = [a1 dataResourceID];
  if (v24)
  {
    v25 = v24;
    v26 = sub_219BF5414();
    v69 = v27;
    v70 = v26;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v28 = [a1 puzzleDescription];
  if (v28)
  {
    v29 = v28;
    v30 = sub_219BF5414();
    v67 = v31;
    v68 = v30;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v66 = [a1 difficulty];
  v65 = [a1 isDraft];
  v64 = [a1 isPaid];
  v32 = [a1 language];
  if (v32)
  {
    v33 = v32;
    v34 = sub_219BF5414();
    v62 = v35;
    v63 = v34;
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  v80 = [a1 minimumNewsVersion];
  v36 = sub_219BF7894();
  v61[3] = v37;
  v61[4] = v36;
  v38 = [a1 lastModifiedDate];
  if (v38)
  {
    v39 = v38;
    sub_219BDBCA4();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_219BDBD34();
  v42 = *(*(v41 - 8) + 56);
  v43 = 1;
  v42(v8, v40, 1, v41);
  v44 = [a1 publishDate];
  if (v44)
  {
    v45 = v44;
    sub_219BDBCA4();

    v43 = 0;
  }

  v42(v6, v43, 1, v41);
  v46 = [objc_msgSend(a1 puzzleType)];
  swift_unknownObjectRelease();
  v61[2] = sub_219BF5414();
  v61[1] = v47;

  v48 = [a1 relatedPuzzleIDs];
  if (v48)
  {
    v49 = v48;
    v61[0] = sub_219BF5924();
  }

  else
  {
    v61[0] = 0;
  }

  v50 = [a1 subtitle];
  if (v50)
  {
    v51 = v50;
    sub_219BF5414();
  }

  sub_2194B156C(MEMORY[0x277D84F90]);
  v52 = [a1 thumbnailLargeImageAssetHandle];
  if (v52)
  {
    v53 = v52;
    sub_219BF60C4();
  }

  v54 = [a1 title];
  if (v54)
  {
    v55 = v54;
    sub_219BF5414();
  }

  v56 = v77;
  sub_219BF1BB4();
  v57 = v76;
  *v76 = 0x656C7A7A7550;
  *(v57 + 1) = 0xE600000000000000;
  v58 = v74;
  *(v57 + 2) = v75;
  *(v57 + 3) = v58;
  strcpy(v57 + 32, "PUZZLE_SEARCH");
  *(v57 + 23) = -4864;
  v59 = type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult();
  return (*(v78 + 32))(&v57[*(v59 + 28)], v56, v79);
}

uint64_t sub_2191CC8EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2191C7748(a1, v1);
}

uint64_t sub_2191CC988(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2191C7898(a1, v1);
}

unint64_t sub_2191CCA24()
{
  result = qword_27CC17158;
  if (!qword_27CC17158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17158);
  }

  return result;
}

uint64_t sub_2191CCA80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BF3B64();
  if (v4 >> 60 == 15)
  {
    sub_2191CCA24();
    swift_allocError();
    *v5 = 3;
    return swift_willThrow();
  }

  else
  {
    v7 = v3;
    v8 = v4;
    sub_219BE1994();
    swift_allocObject();
    sub_219BE1984();
    sub_2191CCE64();
    sub_219BE1974();
    sub_218822A58(v7, v8);

    if (!v1)
    {
      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 24) = v12;
      *(a1 + 40) = v13;
    }
  }

  return result;
}

uint64_t sub_2191CCBE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DD998(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2191CCC58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186DD998(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2191CCCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191CCD40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191CCDFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2191CCE64()
{
  result = qword_27CC17170;
  if (!qword_27CC17170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17170);
  }

  return result;
}

void sub_2191CCEB8()
{
  if (!qword_27CC17178)
  {
    sub_219BF3B84();
    sub_218A450F0();
    v0 = sub_219BF5B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17178);
    }
  }
}

unint64_t sub_2191CCF28()
{
  v0 = sub_219BDBD64();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD998(0, &qword_280E8B6D0, sub_2191CD3C4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  *(inited + 32) = 0x414E2D5050412D58;
  *(inited + 40) = 0xEA0000000000454DLL;
  sub_2186DF1C0(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v31 = xmmword_219C09BA0;
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  *(inited + 48) = v4;
  strcpy((inited + 56), "X-DEVICE-NAME");
  *(inited + 70) = -4864;
  v10 = swift_allocObject();
  *(v10 + 16) = v31;
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 model];

  v14 = sub_219BF5414();
  v16 = v15;

  *(v10 + 32) = v14;
  *(v10 + 40) = v16;
  *(inited + 72) = v10;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000219D10770;
  v17 = swift_allocObject();
  *(v17 + 16) = v31;
  v18 = [v11 currentDevice];
  v19 = [v18 systemVersion];

  v20 = sub_219BF5414();
  v22 = v21;

  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  *(inited + 96) = v17;
  strcpy((inited + 104), "X-REQUEST-ID");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v23 = swift_allocObject();
  *(v23 + 16) = v31;
  sub_219BDBD54();
  v24 = sub_219BDBD44();
  v26 = v25;
  (*(v29 + 8))(v2, v30);
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  *(inited + 120) = v23;
  v27 = sub_2194B11A4(inited);
  swift_setDeallocating();
  sub_2191CD3C4();
  swift_arrayDestroy();
  return v27;
}

uint64_t sub_2191CD354(void *a1)
{
  sub_2191CCEB8();

  return sub_2191C9768(a1);
}

void sub_2191CD3C4()
{
  if (!qword_280E8F730)
  {
    sub_2186DF1C0(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F730);
    }
  }
}

uint64_t sub_2191CD450(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2186DF1C0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2191CD4C0()
{
  if (!qword_27CC17180)
  {
    sub_2186D6710(255, &qword_280E8E080);
    sub_218A450F0();
    v0 = sub_219BF5C44();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC17180);
    }
  }
}

unint64_t sub_2191CD554()
{
  result = qword_27CC17188;
  if (!qword_27CC17188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17188);
  }

  return result;
}

NewsUI2::NewsActivityType2_optional __swiftcall NewsActivityType2.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7954();

  v5 = 0;
  v6 = 19;
  switch(v3)
  {
    case 0:
      goto LABEL_33;
    case 1:
      v5 = 1;
      goto LABEL_33;
    case 2:
      v5 = 2;
      goto LABEL_33;
    case 3:
      v5 = 3;
      goto LABEL_33;
    case 4:
      v5 = 4;
      goto LABEL_33;
    case 5:
      v5 = 5;
      goto LABEL_33;
    case 6:
      v5 = 6;
      goto LABEL_33;
    case 7:
      v5 = 7;
      goto LABEL_33;
    case 8:
      v5 = 8;
      goto LABEL_33;
    case 9:
      v5 = 9;
      goto LABEL_33;
    case 10:
      v5 = 10;
      goto LABEL_33;
    case 11:
      v5 = 11;
      goto LABEL_33;
    case 12:
      v5 = 12;
      goto LABEL_33;
    case 13:
      v5 = 13;
      goto LABEL_33;
    case 14:
      v5 = 14;
      goto LABEL_33;
    case 15:
      v5 = 15;
      goto LABEL_33;
    case 16:
      v5 = 16;
      goto LABEL_33;
    case 17:
      v5 = 17;
      goto LABEL_33;
    case 18:
      v5 = 18;
LABEL_33:
      v6 = v5;
      break;
    case 19:
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    default:
      v6 = 37;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2191CD758()
{
  v0 = NewsActivityType2.rawValue.getter();
  v2 = v1;
  if (v0 == NewsActivityType2.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

uint64_t sub_2191CD7F4()
{
  sub_219BF7AA4();
  NewsActivityType2.rawValue.getter();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2191CD85C()
{
  NewsActivityType2.rawValue.getter();
  sub_219BF5524();
}

uint64_t sub_2191CD8C0()
{
  sub_219BF7AA4();
  NewsActivityType2.rawValue.getter();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_2191CD998()
{
  result = qword_27CC17190;
  if (!qword_27CC17190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17190);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewsActivityType2(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewsActivityType2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2191CDB2C()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_2189F3FBC(0);
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218806FD0(v2);
  }

  type metadata accessor for AudioFeedServiceConfig();
  sub_2191CDC3C(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_2191CDC3C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2191CDC84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v26 = a4;
  v27 = a3;
  sub_2191CF228(0, &qword_280EE3590, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_219BEB714();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEB724();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191CE16C();
  sub_219BE75E4();
  memcpy(v33, v30, 0x1F2uLL);
  sub_218F97C64(v33);
  v16 = sub_21892DEF8(v33);
  v17 = *v16;
  memcpy(v32, v16 + 1, 0x1EAuLL);
  memcpy(v31, v32, 0x1EAuLL);
  sub_2191CE1C8();
  v18 = sub_219BF6434();
  v19 = __swift_project_boxed_opaque_existential_1((v5 + 32), *(v5 + 56));
  v20 = sub_219BE8284();
  memset(v30, 0, 40);
  sub_2191CE25C(v17, v20, v31, v30, *v19);

  sub_218B107AC(v32);

  sub_218D9828C(v30);
  sub_2191CF228(0, &unk_280E8BD60, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_219BEB824();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  (*(v13 + 104))(v15, *MEMORY[0x277D74A88], v12);
  v21 = sub_219BEB754();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = v18;
  sub_219BEB704();
  sub_219BEB7E4();
  (*(v28 + 8))(v11, v29);
  (*(v13 + 8))(v15, v12);
  sub_219BF69D4();

  v23 = v22;
  v24 = [v27 backgroundColor];
  [v23 setBackgroundColor_];

  return v23;
}

id sub_2191CE13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_2191CDC84(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_2191CE16C()
{
  if (!qword_27CC0B020)
  {
    sub_218952A28();
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B020);
    }
  }
}

void sub_2191CE1C8()
{
  if (!qword_280EE4D30)
  {
    type metadata accessor for TagView();
    sub_2191D9030(&qword_280E92C00, type metadata accessor for TagView);
    v0 = sub_219BE82A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4D30);
    }
  }
}

void sub_2191CE25C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v163 = a1;
  v164 = a5;
  v158 = a4;
  v8 = sub_219BE5C64();
  v160 = *(v8 - 8);
  v161 = v8;
  MEMORY[0x28223BE20](v8);
  v159 = &v148[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_219BE60B4();
  v156 = *(v10 - 8);
  v157 = v10;
  MEMORY[0x28223BE20](v10);
  v155 = &v148[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v12 setAccessibilityLabel_];
  v13 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v13 setText_];
  v14 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v14 setText_];
  [a2 setAccessibilityLabel_];
  v15 = type metadata accessor for TagView();
  v167.receiver = a2;
  v167.super_class = v15;
  objc_msgSendSuper2(&v167, sel_setAccessibilityValue_, 0);
  v16 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = *(a3 + 56);
  v19 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v19 = *(a3 + 32);
  *(v19 + 1) = v16;
  *(v19 + 2) = v17;
  *(v19 + 3) = v18;
  [v14 setFrame_];
  v20 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v21 = *(a3 + 80);
  *v20 = *(a3 + 64);
  *(v20 + 1) = v21;
  v22 = *(a3 + 200);
  v23 = *(a3 + 208);
  [v12 setFrame_];
  v24 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v24 setFrame_];
  v25 = *(a3 + 128);
  v26 = *(a3 + 136);
  v27 = *(a3 + 144);
  v28 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v28 = *(a3 + 120);
  *(v28 + 1) = v25;
  *(v28 + 2) = v26;
  *(v28 + 3) = v27;
  [v13 setFrame_];
  v29 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v30 = *(a3 + 168);
  *v29 = *(a3 + 152);
  *(v29 + 1) = v30;
  v31 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v32 = *(a3 + 248);
  v33 = *(a3 + 256);
  v34 = *(a3 + 264);
  v35 = *(a3 + 272);
  [v31 setFrame_];
  v36 = *(a3 + 280);
  v37 = *(a3 + 288);
  v38 = *(a3 + 296);
  v39 = *(a3 + 304);
  v151 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v151 setFrame_];
  v40 = *(a3 + 312);
  v41 = *(a3 + 320);
  v42 = *(a3 + 328);
  v43 = *(a3 + 336);
  v153 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v153 setFrame_];
  [v14 setNumberOfLines_];
  [v13 setNumberOfLines_];
  LODWORD(v44) = *(a3 + 112);
  [v14 ts:v44 setHyphenationFactor:?];
  LODWORD(v45) = *(a3 + 116);
  v162 = v13;
  [v13 ts:v45 setHyphenationFactor:?];
  v46 = [v31 layer];
  v168.origin.x = v32;
  v168.origin.y = v33;
  v168.size.width = v34;
  v168.size.height = v35;
  [v46 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v47 = *(a3 + 489);
  v48 = sub_219534AD0(v47);
  [v14 setFont_];

  v49 = objc_opt_self();
  v50 = [v49 labelColor];
  [v14 setTextColor_];

  v154 = v14;
  [v14 setLineBreakMode_];
  v150 = v12;
  [v12 setContentMode_];
  if ((v47 & 1) == 0)
  {
    v51 = *__swift_project_boxed_opaque_existential_1(v164 + 7, v164[10]);
    v52 = [v49 systemBackgroundColor];
    [v24 setBackgroundColor_];

    v53 = [v24 layer];
    [*(v51 + 32) cornerRadius];
    [v53 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1(v164 + 7, v164[10]);
  v54 = *(v163 + 24);
  sub_21943391C();
  if (v55)
  {

LABEL_5:
    v56 = 0;
    goto LABEL_6;
  }

  v78 = *(v54 + 27);
  if (v78 < 0 || (v78 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_2186C6148(0, &qword_280E8DA80);
  v56 = sub_219BF6CD4();
LABEL_6:
  sub_219534B5C(v47, v162, v56);

  v57 = [v49 systemPinkColor];
  v58 = *&v31[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v31[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v57;
  v59 = v57;

  if (v59)
  {
    v60 = [v31 traitCollection];
    v61 = [v59 resolvedColorWithTraitCollection_];

    [v31 &:v61 OBJC:? LABEL:? PROTOCOL:? :? :?FCEndpointConnectionType];
  }

  __swift_project_boxed_opaque_existential_1(v164 + 7, v164[10]);
  v62 = sub_219534AD0(v47);
  v63 = v151;
  [v151 setFont_];

  v64 = [v49 secondaryLabelColor];
  [v63 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v65 = objc_allocWithZone(sub_219BE7F64());
  v66 = sub_219BE7F44();
  v67 = *(a3 + 472);
  sub_219BE7F54();
  v68 = v153;
  v153 = v66;
  [v68 addSubview_];
  LODWORD(v151) = *(v54 + 25);
  LODWORD(v69) = *(v54 + 26);
  v70 = *(v54 + 27);
  v71 = *(v67 + 16);
  v72 = sub_219093144(0, v71);
  v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  v74 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v152 = v54;
  if (v72)
  {
    v149 = v69;
    v75 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v76 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
    if (v76)
    {
      v77 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
    }

    else
    {
      v79 = sub_218EC4E8C(0);
      v80 = *&a2[v75];
      *&a2[v75] = v79;
      v77 = v79;
    }

    v82 = v159;
    v81 = v160;
    v83 = MEMORY[0x277D6D338];
    if (v70 < 0)
    {
      v83 = MEMORY[0x277D6D340];
    }

    v84 = v161;
    (*(v160 + 104))(v159, *v83, v161);
    type metadata accessor for AccessoryButton();
    sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
    v85 = v76;
    sub_219BEB694();
    (*(v81 + 8))(v82, v84);

    v54 = v152;
    v74 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
    LOBYTE(v69) = v149;
  }

  if (sub_219093144(1u, v71))
  {
    v86 = sub_218C5824C();
    [v86 setHidden_];
  }

  v87 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  if (sub_219093144(2u, v71))
  {
    v88 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v89 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
    if (v89)
    {
      v90 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
    }

    else
    {
      v91 = sub_218EC4E8C(1);
      v92 = v69;
      v69 = *&a2[v88];
      *&a2[v88] = v91;
      v90 = v91;

      LOBYTE(v69) = v92;
    }

    v94 = v159;
    v93 = v160;
    v95 = MEMORY[0x277D6D338];
    if ((v69 & 1) == 0)
    {
      v95 = MEMORY[0x277D6D340];
    }

    v96 = v161;
    (*(v160 + 104))(v159, *v95, v161);
    type metadata accessor for AccessoryButton();
    sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
    v97 = v89;
    sub_219BEB694();
    (*(v93 + 8))(v94, v96);

    v54 = v152;
    v74 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v73 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
    v87 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  }

  if (sub_219093144(3u, v71))
  {
    v98 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
    v99 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
    if (v99)
    {
      v100 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
    }

    else
    {
      v101 = sub_219608868();
      v102 = *&a2[v98];
      *&a2[v98] = v101;
      v100 = v101;
    }

    v103 = v99;
    if (v151)
    {
      if (v151 == 1)
      {
        [v100 setHidden_];
        v104 = MEMORY[0x277D6D338];
      }

      else
      {
        [v100 setHidden_];
        v104 = MEMORY[0x277D6D340];
      }

      v106 = v159;
      v105 = v160;
      v107 = v161;
      (*(v160 + 104))(v159, *v104, v161);
      type metadata accessor for NotificationSwitch();
      sub_2191D9030(&qword_27CC11C08, type metadata accessor for NotificationSwitch);
      sub_219BE68E4();

      (*(v105 + 8))(v106, v107);
      v87 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
    }

    else
    {
      [v100 setHidden_];
    }
  }

  v108 = v73[484];
  v109 = *&a2[v108];
  if (v109)
  {
    [v109 setIsAccessibilityElement_];
  }

  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v110 = *&a2[v108];
    if (v110)
    {
      v111 = *&a2[v108];
    }

    else
    {
      v112 = sub_218EC4E8C(0);
      v113 = *&a2[v108];
      *&a2[v108] = v112;
      v111 = v112;

      v110 = 0;
    }

    v114 = v110;
    [v111 setIsAccessibilityElement_];
  }

  v115 = *&a2[v87[486]];
  if (v115)
  {
    [v115 setIsAccessibilityElement_];
  }

  v116 = [*(v54 + 16) displayName];
  if (!v116)
  {
    sub_219BF5414();
    v116 = sub_219BF53D4();
  }

  [v154 v74[500]];

  sub_21943359C();
  if (v117)
  {
    v118 = sub_219BF53D4();
  }

  else
  {
    v118 = 0;
  }

  [v162 v74[500]];

  v162 = a2;
  sub_2191D8298(v163, a2, a3);
  v160 = v164[12];
  v119 = *(v54 + 16);
  v120 = [swift_unknownObjectRetain() displayName];
  if (!v120)
  {
    sub_219BF5414();
    v120 = sub_219BF53D4();
  }

  v159 = sub_219BF5414();
  v161 = v121;
  __swift_project_boxed_opaque_existential_1(v164 + 2, v164[5]);
  v122 = MEMORY[0x277D6D488];
  sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
  v123 = v156;
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_219C09EC0;
  sub_219BE60A4();
  sub_219BE6094();
  v166 = v124;
  sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
  sub_2191CF228(0, &qword_280E8F508, v122, MEMORY[0x277D83940]);
  sub_218D98E88();
  v125 = v155;
  v126 = v157;
  sub_219BF7164();
  v127 = v161;
  v128 = sub_219BE87F4();
  (*(v123 + 8))(v125, v126);

  v129 = [v119 tagType];
  v130 = v162;
  if ((v129 - 1) < 2)
  {
    v131 = [v119 groupTitleColor];
    v132 = *(v160 + 56);
    swift_unknownObjectRetain();
    if (v131)
    {
      v133 = [v131 ne_color];

      type metadata accessor for TopicColorFeedNavImageStyler();
      v134 = swift_allocObject();
      *(v134 + 16) = v133;
      *(v134 + 24) = v132;
      v132 = v134;
    }

    swift_unknownObjectRetain();
    v135 = v150;
    v136 = [v150 traitCollection];
    [v136 displayScale];
    v138 = v137;

    v139 = type metadata accessor for FeedNavImageAssetHandle();
    v140 = objc_allocWithZone(v139);
    v141 = &v140[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v141 = 0;
    *(v141 + 1) = 0;
    *&v140[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    *&v140[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v119;
    v142 = swift_unknownObjectRetain();
    v143 = sub_219352488(v142);
    v144 = &v140[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    *v144 = v143;
    v144[1] = v145;
    v146 = &v140[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v146 = v22;
    v146[1] = v23;
    *&v140[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v132;
    *&v140[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v138;
    *&v140[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
    v165.receiver = v140;
    v165.super_class = v139;
    v147 = objc_msgSendSuper2(&v165, sel_init);
    sub_218A462FC(v147, v135, v159, v127, v128 & 1, v22, v23, 1.0);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_2191D8B94(v163, v130, v158);
}

void sub_2191CF228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2191CF28C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v147 = a4;
  v141 = sub_219BE5C64();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE60B4();
  v145 = *(v10 - 8);
  v146 = v10;
  MEMORY[0x28223BE20](v10);
  v144 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for FollowingMySportsModel();
  MEMORY[0x28223BE20](v150);
  v153 = (&v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191E0948(a1, v153, type metadata accessor for FollowingMySportsModel);
  v13 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v13 setAccessibilityLabel_];
  v14 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v14 setText_];
  v15 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v15 setText_];
  [a2 setAccessibilityLabel_];
  v16 = type metadata accessor for TagView();
  v155.receiver = a2;
  v155.super_class = v16;
  objc_msgSendSuper2(&v155, sel_setAccessibilityValue_, 0);
  v17 = *(a3 + 40);
  v18 = *(a3 + 48);
  v19 = *(a3 + 56);
  v20 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v20 = *(a3 + 32);
  *(v20 + 1) = v17;
  *(v20 + 2) = v18;
  *(v20 + 3) = v19;
  [v15 setFrame_];
  v21 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v22 = *(a3 + 80);
  *v21 = *(a3 + 64);
  *(v21 + 1) = v22;
  [v13 setFrame_];
  v23 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v23 setFrame_];
  v24 = *(a3 + 128);
  v25 = *(a3 + 136);
  v26 = *(a3 + 144);
  v27 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v27 = *(a3 + 120);
  *(v27 + 1) = v24;
  *(v27 + 2) = v25;
  *(v27 + 3) = v26;
  [v14 setFrame_];
  v28 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v29 = *(a3 + 168);
  *v28 = *(a3 + 152);
  *(v28 + 1) = v29;
  v30 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v31 = *(a3 + 248);
  v32 = *(a3 + 256);
  v33 = *(a3 + 264);
  v34 = *(a3 + 272);
  [v30 setFrame_];
  v35 = *(a3 + 280);
  v36 = *(a3 + 288);
  v37 = *(a3 + 296);
  v38 = *(a3 + 304);
  v148 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v148 setFrame_];
  v39 = *(a3 + 312);
  v40 = *(a3 + 320);
  v41 = *(a3 + 328);
  v42 = *(a3 + 336);
  v149 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v149 setFrame_];
  [v15 setNumberOfLines_];
  [v14 setNumberOfLines_];
  LODWORD(v43) = *(a3 + 112);
  [v15 ts:v43 setHyphenationFactor:?];
  LODWORD(v44) = *(a3 + 116);
  v152 = v14;
  [v14 ts:v44 setHyphenationFactor:?];
  v45 = [v30 layer];
  v156.origin.x = v31;
  v156.origin.y = v32;
  v156.size.width = v33;
  v156.size.height = v34;
  [v45 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v46 = *(a3 + 489);
  v47 = sub_219534AD0(v46);
  [v15 setFont_];

  v48 = objc_opt_self();
  v49 = [v48 labelColor];
  [v15 setTextColor_];

  v151 = v15;
  [v15 setLineBreakMode_];
  v143 = v13;
  [v13 setContentMode_];
  if ((v46 & 1) == 0)
  {
    v50 = *__swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
    v51 = [v48 systemBackgroundColor];
    [v23 setBackgroundColor_];

    v52 = [v23 layer];
    [*(v50 + 32) cornerRadius];
    [v52 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v53 = v153;
  sub_219534B5C(v46, v152, v153[4]);
  v54 = [v48 systemPinkColor];
  v55 = *&v30[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v30[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v54;
  v56 = v54;

  if (v56)
  {
    v57 = [v30 traitCollection];
    v58 = [v56 resolvedColorWithTraitCollection_];

    v53 = v153;
    [v30 setBackgroundColor_];
  }

  v59 = *(a5 + 80);
  v142 = a5;
  __swift_project_boxed_opaque_existential_1((a5 + 56), v59);
  v60 = sub_219534AD0(v46);
  v61 = v148;
  [v148 setFont_];

  v62 = [v48 secondaryLabelColor];
  [v61 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v63 = objc_allocWithZone(sub_219BE7F64());
  v64 = sub_219BE7F44();
  v65 = *(a3 + 472);
  sub_219BE7F54();
  v66 = v149;
  v149 = v64;
  [v66 addSubview_];
  v67 = (v53 + *(v150 + 36));
  v68 = *(v67 + 2);
  LODWORD(a5) = *v67 | (v68 << 16);
  v69 = (v68 >> 5) & 3;
  v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  if (v69 > 1)
  {
    if (v69 == 2)
    {
      if (sub_219093144(2u, *(v65 + 16)))
      {
        v76 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
        v77 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        if (v77)
        {
          v78 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        }

        else
        {
          v91 = sub_218EC4E8C(1);
          v92 = *&a2[v76];
          *&a2[v76] = v91;
          v78 = v91;
        }

        v93 = (v139 + 8);
        if (a5)
        {
          v94 = MEMORY[0x277D6D338];
        }

        else
        {
          v94 = MEMORY[0x277D6D340];
        }

        v96 = v140;
        v95 = v141;
        (*(v139 + 104))(v140, *v94, v141);
        type metadata accessor for AccessoryButton();
        sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
        v97 = v77;
        sub_219BEB694();
        (*v93)(v96, v95);

        v53 = v153;
        v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      }
    }

    else
    {
      v79 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v79)
      {
        [v79 setHidden_];
      }
    }
  }

  else
  {
    if (v69)
    {
      goto LABEL_35;
    }

    v71 = *(v65 + 16);
    v72 = sub_219093144(0, v71);
    LODWORD(v150) = a5;
    if (v72)
    {
      v73 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v74 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      if (v74)
      {
        v75 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      }

      else
      {
        v80 = sub_218EC4E8C(0);
        v81 = *&a2[v73];
        *&a2[v73] = v80;
        v75 = v80;
      }

      v82 = v139;
      v83 = MEMORY[0x277D6D338];
      if (a5 < 0)
      {
        v83 = MEMORY[0x277D6D340];
      }

      v84 = v140;
      a5 = v141;
      (*(v139 + 104))(v140, *v83, v141);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v85 = v74;
      sub_219BEB694();
      v86 = a5;
      LOWORD(a5) = v150;
      (*(v82 + 8))(v84, v86);

      v53 = v153;
      v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
    }

    if (sub_219093144(1u, v71))
    {
      v87 = sub_218C5824C();
      [v87 setHidden_];
    }

    if (sub_219093144(2u, v71))
    {
      v88 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v89 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      if (v89)
      {
        v90 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      }

      else
      {
        v98 = sub_218EC4E8C(1);
        v99 = *&a2[v88];
        *&a2[v88] = v98;
        v90 = v98;
      }

      v100 = v139;
      v101 = MEMORY[0x277D6D338];
      if (((((a5 & 0xFF00) >> 8) != 2) & BYTE1(a5)) == 0)
      {
        v101 = MEMORY[0x277D6D340];
      }

      v102 = v140;
      a5 = v141;
      (*(v139 + 104))(v140, *v101, v141);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v103 = v89;
      sub_219BEB694();
      (*(v100 + 8))(v102, a5);

      v53 = v153;
      v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      LOBYTE(a5) = v150;
    }

    if (sub_219093144(3u, v71))
    {
LABEL_35:
      v104 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
      v105 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v105)
      {
        v106 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      }

      else
      {
        v107 = sub_219608868();
        v108 = *&a2[v104];
        *&a2[v104] = v107;
        v106 = v107;
      }

      v109 = v105;
      if (a5)
      {
        [v106 setHidden_];
        if (a5 == 1)
        {
          v110 = MEMORY[0x277D6D338];
        }

        else
        {
          v110 = MEMORY[0x277D6D340];
        }

        v111 = v139;
        v113 = v140;
        v112 = v141;
        (*(v139 + 104))(v140, *v110, v141);
        type metadata accessor for NotificationSwitch();
        sub_2191D9030(&qword_27CC11C08, type metadata accessor for NotificationSwitch);
        sub_219BE68E4();

        (*(v111 + 8))(v113, v112);
      }

      else
      {
        [v106 setHidden_];
      }
    }
  }

  v114 = v70[484];
  v115 = *&a2[v114];
  if (v115)
  {
    [v115 setIsAccessibilityElement_];
  }

  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v116 = *&a2[v114];
    if (v116)
    {
      v117 = *&a2[v114];
    }

    else
    {
      v118 = sub_218EC4E8C(0);
      v119 = *&a2[v114];
      *&a2[v114] = v118;
      v117 = v118;

      v116 = 0;
    }

    v120 = v116;
    [v117 setIsAccessibilityElement_];
  }

  v121 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v121)
  {
    [v121 setIsAccessibilityElement_];
  }

  v122 = v53[1];
  v153 = *v53;
  v150 = v122;
  v123 = sub_219BF53D4();
  [v151 setText_];

  if (v53[3])
  {
    v124 = sub_219BF53D4();
  }

  else
  {
    v124 = 0;
  }

  [v152 setText_];

  sub_2191DF748(v53, a2, a3);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v125 = sub_219BF6BB4();
  v126 = [objc_opt_self() configurationWithFont_];

  v127 = sub_219BF53D4();
  v128 = [objc_opt_self() systemImageNamed:v127 withConfiguration:v126];

  v152 = a2;
  if (v128)
  {
    v129 = v53;
    v130 = [v128 imageWithRenderingMode_];

    __swift_project_boxed_opaque_existential_1((v142 + 16), *(v142 + 40));
    v131 = MEMORY[0x277D6D488];
    sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
    v132 = v145;
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_219C09EC0;
    sub_219BE60A4();
    sub_219BE6094();
    v154 = v133;
    sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
    sub_2191CF228(0, &qword_280E8F508, v131, MEMORY[0x277D83940]);
    sub_218D98E88();
    v134 = v144;
    v135 = v146;
    sub_219BF7164();
    sub_219BE87F4();
    (*(v132 + 8))(v134, v135);
    v136 = v143;
    [v143 setImage_];
    v137 = sub_219BF53D4();
    [v136 setAccessibilityLabel_];

    sub_2191E03C0(v129, v152, v147);
    sub_2191E1978(v129, type metadata accessor for FollowingMySportsModel);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D025C(uint64_t a1, uint64_t a2, void *a3, int a4, char *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v102 = a7;
  v101 = a4;
  v94 = a3;
  v95 = a1;
  v96 = a2;
  v11 = sub_219BE60B4();
  v98 = *(v11 - 8);
  v99 = v11;
  MEMORY[0x28223BE20](v11);
  v97 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v13 setAccessibilityLabel_];
  v14 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v14 setText_];
  v15 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v15 setText_];
  [a5 setAccessibilityLabel_];
  v16 = type metadata accessor for TagView();
  v105.receiver = a5;
  v105.super_class = v16;
  objc_msgSendSuper2(&v105, sel_setAccessibilityValue_, 0);
  v17 = *(a6 + 40);
  v18 = *(a6 + 48);
  v19 = *(a6 + 56);
  v20 = &a5[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v20 = *(a6 + 32);
  *(v20 + 1) = v17;
  *(v20 + 2) = v18;
  *(v20 + 3) = v19;
  [v15 setFrame_];
  v21 = &a5[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v22 = *(a6 + 80);
  *v21 = *(a6 + 64);
  *(v21 + 1) = v22;
  [v13 setFrame_];
  v23 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v23 setFrame_];
  v24 = *(a6 + 128);
  v25 = *(a6 + 136);
  v26 = *(a6 + 144);
  v27 = &a5[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v27 = *(a6 + 120);
  *(v27 + 1) = v24;
  *(v27 + 2) = v25;
  *(v27 + 3) = v26;
  [v14 setFrame_];
  v28 = &a5[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v29 = *(a6 + 168);
  *v28 = *(a6 + 152);
  *(v28 + 1) = v29;
  v30 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v31 = *(a6 + 248);
  v32 = *(a6 + 256);
  v33 = *(a6 + 264);
  v34 = *(a6 + 272);
  [v30 setFrame_];
  v35 = *(a6 + 280);
  v36 = *(a6 + 288);
  v37 = *(a6 + 296);
  v38 = *(a6 + 304);
  v92 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v92 setFrame_];
  v39 = *(a6 + 312);
  v40 = *(a6 + 320);
  v41 = *(a6 + 328);
  v42 = *(a6 + 336);
  v93 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v93 setFrame_];
  [v15 setNumberOfLines_];
  [v14 setNumberOfLines_];
  LODWORD(v43) = *(a6 + 112);
  [v15 ts:v43 setHyphenationFactor:?];
  LODWORD(v44) = *(a6 + 116);
  v103 = v14;
  [v14 ts:v44 setHyphenationFactor:?];
  v45 = [v30 layer];
  v106.origin.x = v31;
  v106.origin.y = v32;
  v106.size.width = v33;
  v106.size.height = v34;
  [v45 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1(a8 + 7, a8[10]);
  v46 = *(a6 + 489);
  v47 = sub_219534AD0(v46);
  [v15 setFont_];

  v48 = objc_opt_self();
  v49 = [v48 labelColor];
  [v15 setTextColor_];

  [v15 setLineBreakMode_];
  v100 = v13;
  [v13 setContentMode_];
  if ((v46 & 1) == 0)
  {
    v50 = *__swift_project_boxed_opaque_existential_1(a8 + 7, a8[10]);
    v51 = [v48 systemBackgroundColor];
    [v23 setBackgroundColor_];

    v52 = [v23 layer];
    [*(v50 + 32) cornerRadius];
    [v52 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1(a8 + 7, a8[10]);
  sub_219534B5C(v46, v103, v94);
  v53 = [v48 systemPinkColor];
  v54 = *&v30[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v30[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v53;
  v55 = v53;

  if (v55)
  {
    v56 = [v30 traitCollection];
    v57 = [v55 resolvedColorWithTraitCollection_];

    [v30 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1(a8 + 7, a8[10]);
  v58 = sub_219534AD0(v46);
  v59 = v92;
  [v92 setFont_];

  v60 = [v48 secondaryLabelColor];
  [v59 setTextColor_];

  sub_218C5949C(a6, a5);
  CGRectGetHeight(*a6);
  v61 = objc_allocWithZone(sub_219BE7F64());
  v62 = sub_219BE7F44();
  sub_219BE7F54();
  v94 = v62;
  [v93 addSubview_];
  v63 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v63)
  {
    [v63 setHidden_];
  }

  v64 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v65 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v65)
  {
    [v65 setIsAccessibilityElement_];
  }

  if (*&a5[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v66 = *&a5[v64];
    if (v66)
    {
      v67 = *&a5[v64];
    }

    else
    {
      v68 = sub_218EC4E8C(0);
      v69 = *&a5[v64];
      *&a5[v64] = v68;
      v67 = v68;

      v66 = 0;
    }

    v70 = v66;
    [v67 setIsAccessibilityElement_];
  }

  v71 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v71)
  {
    [v71 setIsAccessibilityElement_];
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v73 = objc_opt_self();
  v74 = [v73 bundleForClass_];
  sub_219BDB5E4();

  v75 = sub_219BF53D4();

  [v15 setText_];

  v76 = v96;
  if (v96)
  {
    v77 = v95;
    v78 = sub_219BF53D4();
  }

  else
  {
    v78 = 0;
    v77 = v95;
  }

  [v103 setText_];

  sub_2191E2A08(v77, v76, a5, a6);
  sub_219BED0C4();
  sub_219BF5114();
  v79 = sub_219BF5094();
  sub_2186C6148(0, &qword_280E8DB00);
  v80 = sub_219BF6BB4();
  v81 = [objc_opt_self() configurationWithFont_];

  v82 = [v79 imageWithConfiguration_];
  v103 = [v82 imageWithRenderingMode_];

  v83 = [v73 bundleForClass_];
  v96 = sub_219BDB5E4();

  __swift_project_boxed_opaque_existential_1(a8 + 2, a8[5]);
  v84 = MEMORY[0x277D6D488];
  sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
  v85 = v98;
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_219C09EC0;
  sub_219BE60A4();
  sub_219BE6094();
  v104 = v86;
  sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
  sub_2191CF228(0, &qword_280E8F508, v84, MEMORY[0x277D83940]);
  sub_218D98E88();
  v87 = v97;
  v88 = v99;
  sub_219BF7164();
  sub_219BE87F4();
  (*(v85 + 8))(v87, v88);
  v89 = v100;
  v90 = v103;
  [v100 setImage_];
  v91 = sub_219BF53D4();

  [v89 setAccessibilityLabel_];

  sub_2191E32A4(v101 & 1, a5, v102);
}

void sub_2191D0D64(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v150 = a4;
  v153 = a1;
  v142 = sub_219BE5C64();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BE60B4();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v10 setAccessibilityLabel_];
  v11 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v11 setText_];
  v12 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v12 setText_];
  [a2 setAccessibilityLabel_];
  v13 = type metadata accessor for TagView();
  v155.receiver = a2;
  v155.super_class = v13;
  objc_msgSendSuper2(&v155, sel_setAccessibilityValue_, 0);
  v14 = *(a3 + 40);
  v15 = *(a3 + 48);
  v16 = *(a3 + 56);
  v17 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v17 = *(a3 + 32);
  *(v17 + 1) = v14;
  *(v17 + 2) = v15;
  *(v17 + 3) = v16;
  [v12 setFrame_];
  v18 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v19 = *(a3 + 80);
  *v18 = *(a3 + 64);
  *(v18 + 1) = v19;
  [v10 setFrame_];
  v20 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v20 setFrame_];
  v21 = *(a3 + 128);
  v22 = *(a3 + 136);
  v23 = *(a3 + 144);
  v24 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v24 = *(a3 + 120);
  *(v24 + 1) = v21;
  *(v24 + 2) = v22;
  *(v24 + 3) = v23;
  [v11 setFrame_];
  v25 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v26 = *(a3 + 168);
  *v25 = *(a3 + 152);
  *(v25 + 1) = v26;
  v27 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v28 = *(a3 + 248);
  v29 = *(a3 + 256);
  v30 = *(a3 + 264);
  v31 = *(a3 + 272);
  [v27 setFrame_];
  v32 = *(a3 + 280);
  v33 = *(a3 + 288);
  v34 = *(a3 + 296);
  v35 = *(a3 + 304);
  v143 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v143 setFrame_];
  v36 = *(a3 + 312);
  v37 = *(a3 + 320);
  v38 = *(a3 + 328);
  v39 = *(a3 + 336);
  v144 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v144 setFrame_];
  [v12 setNumberOfLines_];
  [v11 setNumberOfLines_];
  LODWORD(v40) = *(a3 + 112);
  [v12 ts:v40 setHyphenationFactor:?];
  LODWORD(v41) = *(a3 + 116);
  v152 = v11;
  [v11 ts:v41 setHyphenationFactor:?];
  v42 = [v27 layer];
  v156.origin.x = v28;
  v156.origin.y = v29;
  v156.size.width = v30;
  v156.size.height = v31;
  [v42 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v43 = *(a3 + 489);
  v44 = sub_219534AD0(v43);
  [v12 setFont_];

  v45 = objc_opt_self();
  v46 = [v45 labelColor];
  [v12 setTextColor_];

  v145 = v12;
  [v12 setLineBreakMode_];
  v148 = v10;
  [v10 setContentMode_];
  if ((v43 & 1) == 0)
  {
    v47 = *__swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
    v48 = [v45 systemBackgroundColor];
    [v20 setBackgroundColor_];

    v49 = [v20 layer];
    [*(v47 + 32) cornerRadius];
    [v49 setCornerRadius_];
  }

  v50 = *(a5 + 80);
  v151 = a5;
  __swift_project_boxed_opaque_existential_1((a5 + 56), v50);
  v51 = v153;
  sub_219534B5C(v43, v152, *(v153 + 32));
  v52 = [v45 systemPinkColor];
  v53 = *&v27[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v27[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v52;
  v54 = v52;

  if (v54)
  {
    v55 = [v27 traitCollection];
    v56 = [v54 resolvedColorWithTraitCollection_];

    v51 = v153;
    [v27 setBackgroundColor_];
  }

  v57 = v151;
  __swift_project_boxed_opaque_existential_1((v151 + 56), *(v151 + 80));
  v58 = sub_219534AD0(v43);
  v59 = v143;
  [v143 setFont_];

  v60 = [v45 secondaryLabelColor];
  [v59 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v61 = objc_allocWithZone(sub_219BE7F64());
  v62 = sub_219BE7F44();
  v63 = *(a3 + 472);
  sub_219BE7F54();
  v64 = v144;
  v144 = v62;
  [v64 addSubview_];
  v65 = *(v51 + 59);
  v66 = *(v51 + 61);
  v67 = (v66 >> 5) & 3;
  v68 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  v69 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  if (v67 > 1)
  {
    if (v67 == 2)
    {
      if (!sub_219093144(2u, *(v63 + 16)))
      {
        goto LABEL_45;
      }

      v74 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v75 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      if (v75)
      {
        v76 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      }

      else
      {
        v89 = sub_218EC4E8C(1);
        v90 = *&a2[v74];
        *&a2[v74] = v89;
        v76 = v89;
      }

      v91 = (v140 + 8);
      if (v65)
      {
        v92 = MEMORY[0x277D6D338];
      }

      else
      {
        v92 = MEMORY[0x277D6D340];
      }

      v94 = v141;
      v93 = v142;
      (*(v140 + 104))(v141, *v92, v142);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v95 = v75;
      sub_219BEB694();
      (*v91)(v94, v93);

      v51 = v153;
      v68 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
LABEL_44:
      v69 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      goto LABEL_45;
    }

    v77 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
    if (v77)
    {
      [v77 setHidden_];
    }
  }

  else
  {
    if (v67)
    {
      goto LABEL_35;
    }

    LODWORD(v51) = *(v51 + 60);
    v70 = *(v63 + 16);
    v71 = sub_219093144(0, v70);
    LODWORD(v143) = v65;
    if (v71)
    {
      v72 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v73 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      v139 = v51;
      if (v73)
      {
        v138 = v73;
      }

      else
      {
        v78 = sub_218EC4E8C(0);
        v79 = *&a2[v72];
        *&a2[v72] = v78;
        v138 = v78;
      }

      v80 = v140;
      v51 = v141;
      v81 = MEMORY[0x277D6D338];
      if (v66 < 0)
      {
        v81 = MEMORY[0x277D6D340];
      }

      v82 = v142;
      (*(v140 + 104))(v141, *v81, v142);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v83 = v73;
      v84 = v138;
      sub_219BEB694();
      (*(v80 + 8))(v51, v82);

      v57 = v151;
      v69 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v65 = v143;
      LOBYTE(v51) = v139;
    }

    if (sub_219093144(1u, v70))
    {
      v85 = sub_218C5824C();
      [v85 setHidden_];
    }

    if (sub_219093144(2u, v70))
    {
      v86 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v87 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      if (v87)
      {
        v88 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      }

      else
      {
        v96 = sub_218EC4E8C(1);
        v97 = *&a2[v86];
        *&a2[v86] = v96;
        v88 = v96;
      }

      v98 = v140;
      v99 = MEMORY[0x277D6D338];
      if ((v51 & 1) == 0)
      {
        v99 = MEMORY[0x277D6D340];
      }

      v101 = v141;
      v100 = v142;
      (*(v140 + 104))(v141, *v99, v142);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v102 = v87;
      sub_219BEB694();
      (*(v98 + 8))(v101, v100);

      v57 = v151;
      v68 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v69 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v65 = v143;
    }

    v103 = sub_219093144(3u, v70);
    v51 = v153;
    if (v103)
    {
LABEL_35:
      v104 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
      v105 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v105)
      {
        v106 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      }

      else
      {
        v107 = sub_219608868();
        v108 = *&a2[v104];
        *&a2[v104] = v107;
        v106 = v107;
      }

      v109 = v105;
      if (!v65)
      {
        [v106 setHidden_];

        goto LABEL_45;
      }

      [v106 setHidden_];
      if (v65 == 1)
      {
        v110 = MEMORY[0x277D6D338];
      }

      else
      {
        v110 = MEMORY[0x277D6D340];
      }

      v112 = v140;
      v111 = v141;
      v113 = v142;
      (*(v140 + 104))(v141, *v110, v142);
      type metadata accessor for NotificationSwitch();
      sub_2191D9030(&qword_27CC11C08, type metadata accessor for NotificationSwitch);
      sub_219BE68E4();

      (*(v112 + 8))(v111, v113);
      goto LABEL_44;
    }
  }

LABEL_45:
  v114 = v69[484];
  v115 = *&a2[v114];
  if (v115)
  {
    [v115 setIsAccessibilityElement_];
  }

  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v116 = *&a2[v114];
    if (v116)
    {
      v117 = *&a2[v114];
    }

    else
    {
      v118 = sub_218EC4E8C(0);
      v119 = *&a2[v114];
      *&a2[v114] = v118;
      v117 = v118;

      v116 = 0;
    }

    v120 = v116;
    [v117 setIsAccessibilityElement_];
  }

  v121 = *&a2[v68[486]];
  if (v121)
  {
    [v121 setIsAccessibilityElement_];
  }

  v122 = *(v51 + 8);
  v153 = *v51;
  v151 = v122;
  v123 = sub_219BF53D4();
  [v145 setText_];

  if (*(v51 + 24))
  {
    v124 = sub_219BF53D4();
  }

  else
  {
    v124 = 0;
  }

  [v152 setText_];

  sub_2191E19D8(v51, a2, a3);
  sub_219BED0C4();
  sub_219BF5114();
  v125 = sub_219BF5104();
  sub_2186C6148(0, &qword_280E8DB00);
  v126 = sub_219BF6BB4();
  v127 = [objc_opt_self() configurationWithFont_];

  v128 = [v125 imageWithConfiguration_];
  v129 = [v128 imageWithRenderingMode_];

  __swift_project_boxed_opaque_existential_1((v57 + 16), *(v57 + 40));
  v130 = MEMORY[0x277D6D488];
  sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
  v152 = a2;
  v131 = v147;
  v132 = v51;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_219C09EC0;
  sub_219BE60A4();
  sub_219BE6094();
  v154 = v133;
  sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
  sub_2191CF228(0, &qword_280E8F508, v130, MEMORY[0x277D83940]);
  sub_218D98E88();
  v134 = v146;
  v135 = v149;
  sub_219BF7164();
  sub_219BE87F4();
  (*(v131 + 8))(v134, v135);
  v136 = v148;
  [v148 setImage_];
  v137 = sub_219BF53D4();
  [v136 setAccessibilityLabel_];

  sub_2191E2560(v132, v152, v150);
}

void sub_2191D1C74(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a4;
  v9 = sub_219BE60B4();
  v102 = *(v9 - 8);
  v103 = v9;
  MEMORY[0x28223BE20](v9);
  v101 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FollowingPuzzleHubModel();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E0948(a1, v13, type metadata accessor for FollowingPuzzleHubModel);
  v14 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v14 setAccessibilityLabel_];
  v15 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v15 setText_];
  v16 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v16 setText_];
  [a2 setAccessibilityLabel_];
  v17 = type metadata accessor for TagView();
  v111.receiver = a2;
  v111.super_class = v17;
  objc_msgSendSuper2(&v111, sel_setAccessibilityValue_, 0);
  v18 = *(a3 + 40);
  v19 = *(a3 + 48);
  v20 = *(a3 + 56);
  v21 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v21 = *(a3 + 32);
  *(v21 + 1) = v18;
  *(v21 + 2) = v19;
  *(v21 + 3) = v20;
  [v16 setFrame_];
  v22 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v23 = *(a3 + 80);
  *v22 = *(a3 + 64);
  *(v22 + 1) = v23;
  [v14 setFrame_];
  v24 = *(a3 + 216);
  v25 = *(a3 + 224);
  v26 = *(a3 + 232);
  v27 = *(a3 + 240);
  v99 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v99 setFrame_];
  v28 = *(a3 + 128);
  v29 = *(a3 + 136);
  v30 = *(a3 + 144);
  v31 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v31 = *(a3 + 120);
  *(v31 + 1) = v28;
  *(v31 + 2) = v29;
  *(v31 + 3) = v30;
  [v15 setFrame_];
  v32 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v33 = *(a3 + 168);
  *v32 = *(a3 + 152);
  *(v32 + 1) = v33;
  v34 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v35 = *(a3 + 248);
  v36 = *(a3 + 256);
  v37 = *(a3 + 264);
  v38 = *(a3 + 272);
  [v34 setFrame_];
  v39 = *(a3 + 280);
  v40 = *(a3 + 288);
  v41 = *(a3 + 296);
  v42 = *(a3 + 304);
  v106 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v106 setFrame_];
  v43 = *(a3 + 312);
  v44 = *(a3 + 320);
  v45 = *(a3 + 328);
  v46 = *(a3 + 336);
  v107 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v107 setFrame_];
  [v16 setNumberOfLines_];
  [v15 setNumberOfLines_];
  LODWORD(v47) = *(a3 + 112);
  [v16 ts:v47 setHyphenationFactor:?];
  LODWORD(v48) = *(a3 + 116);
  v109 = v15;
  [v15 ts:v48 setHyphenationFactor:?];
  v49 = [v34 layer];
  v112.origin.x = v35;
  v112.origin.y = v36;
  v112.size.width = v37;
  v112.size.height = v38;
  [v49 setCornerRadius_];

  v50 = a5;
  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v51 = *(a3 + 489);
  v52 = sub_219534AD0(v51);
  [v16 setFont_];

  v53 = objc_opt_self();
  v54 = [v53 labelColor];
  [v16 setTextColor_];

  v105 = v16;
  [v16 setLineBreakMode_];
  v100 = v14;
  [v14 setContentMode_];
  if ((v51 & 1) == 0)
  {
    v55 = v13;
    v56 = *__swift_project_boxed_opaque_existential_1((v50 + 56), *(v50 + 80));
    v57 = [v53 systemBackgroundColor];
    v58 = v99;
    [v99 setBackgroundColor_];

    v59 = [v58 layer];
    v60 = *(v56 + 32);
    v13 = v55;
    [v60 cornerRadius];
    [v59 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1((v50 + 56), *(v50 + 80));
  v108 = v13;
  sub_219534B5C(v51, v109, *(v13 + 4));
  v61 = [v53 systemPinkColor];
  v62 = *&v34[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v34[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v61;
  v63 = v61;

  v64 = v50;
  if (v63)
  {
    v65 = [v34 traitCollection];
    v66 = [v63 resolvedColorWithTraitCollection_];

    [v34 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1((v50 + 56), *(v50 + 80));
  v67 = sub_219534AD0(v51);
  v68 = v106;
  [v106 setFont_];

  v69 = [v53 secondaryLabelColor];
  [v68 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v70 = objc_allocWithZone(sub_219BE7F64());
  v71 = sub_219BE7F44();
  sub_219BE7F54();
  v72 = v107;
  v107 = v71;
  [v72 addSubview_];
  v73 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v73)
  {
    [v73 setHidden_];
  }

  v74 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v75 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v75)
  {
    [v75 setIsAccessibilityElement_];
  }

  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v76 = *&a2[v74];
    if (v76)
    {
      v77 = *&a2[v74];
    }

    else
    {
      v78 = sub_218EC4E8C(0);
      v79 = *&a2[v74];
      *&a2[v74] = v78;
      v77 = v78;

      v76 = 0;
    }

    v80 = v76;
    [v77 setIsAccessibilityElement_];
  }

  v81 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v81)
  {
    [v81 setIsAccessibilityElement_];
  }

  v82 = v108;
  v83 = *(v108 + 1);
  v106 = *v108;
  v99 = v83;
  v84 = sub_219BF53D4();
  [v105 setText_];

  if (*(v82 + 24))
  {
    v85 = sub_219BF53D4();
  }

  else
  {
    v85 = 0;
  }

  [v109 setText_];

  sub_2191E09B0(v82, a2, a3);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v86 = sub_219BF6BB4();
  v87 = [objc_opt_self() configurationWithFont_];

  v88 = sub_219BF53D4();
  v89 = [objc_opt_self() systemImageNamed:v88 withConfiguration:v87];

  if (v89)
  {
    v90 = [v89 imageWithRenderingMode_];

    __swift_project_boxed_opaque_existential_1((v64 + 16), *(v64 + 40));
    v91 = MEMORY[0x277D6D488];
    sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
    v92 = v102;
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_219C09EC0;
    sub_219BE60A4();
    sub_219BE6094();
    v110 = v93;
    sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
    sub_2191CF228(0, &qword_280E8F508, v91, MEMORY[0x277D83940]);
    sub_218D98E88();
    v94 = v101;
    v95 = v103;
    sub_219BF7164();
    sub_219BE87F4();
    (*(v92 + 8))(v94, v95);
    v96 = v100;
    [v100 setImage_];
    v97 = sub_219BF53D4();
    [v96 setAccessibilityLabel_];

    v98 = v108;
    sub_2191E1424(v108, a2, v104);

    sub_2191E1978(v98, type metadata accessor for FollowingPuzzleHubModel);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D26F8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v147 = a4;
  v141 = sub_219BE5C64();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE60B4();
  v145 = *(v10 - 8);
  v146 = v10;
  MEMORY[0x28223BE20](v10);
  v144 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for FollowingAudioModel();
  MEMORY[0x28223BE20](v150);
  v153 = (&v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191E0948(a1, v153, type metadata accessor for FollowingAudioModel);
  v13 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v13 setAccessibilityLabel_];
  v14 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v14 setText_];
  v15 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v15 setText_];
  [a2 setAccessibilityLabel_];
  v16 = type metadata accessor for TagView();
  v155.receiver = a2;
  v155.super_class = v16;
  objc_msgSendSuper2(&v155, sel_setAccessibilityValue_, 0);
  v17 = *(a3 + 40);
  v18 = *(a3 + 48);
  v19 = *(a3 + 56);
  v20 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v20 = *(a3 + 32);
  *(v20 + 1) = v17;
  *(v20 + 2) = v18;
  *(v20 + 3) = v19;
  [v15 setFrame_];
  v21 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v22 = *(a3 + 80);
  *v21 = *(a3 + 64);
  *(v21 + 1) = v22;
  [v13 setFrame_];
  v23 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v23 setFrame_];
  v24 = *(a3 + 128);
  v25 = *(a3 + 136);
  v26 = *(a3 + 144);
  v27 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v27 = *(a3 + 120);
  *(v27 + 1) = v24;
  *(v27 + 2) = v25;
  *(v27 + 3) = v26;
  [v14 setFrame_];
  v28 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v29 = *(a3 + 168);
  *v28 = *(a3 + 152);
  *(v28 + 1) = v29;
  v30 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v31 = *(a3 + 248);
  v32 = *(a3 + 256);
  v33 = *(a3 + 264);
  v34 = *(a3 + 272);
  [v30 setFrame_];
  v35 = *(a3 + 280);
  v36 = *(a3 + 288);
  v37 = *(a3 + 296);
  v38 = *(a3 + 304);
  v148 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v148 setFrame_];
  v39 = *(a3 + 312);
  v40 = *(a3 + 320);
  v41 = *(a3 + 328);
  v42 = *(a3 + 336);
  v149 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v149 setFrame_];
  [v15 setNumberOfLines_];
  [v14 setNumberOfLines_];
  LODWORD(v43) = *(a3 + 112);
  [v15 ts:v43 setHyphenationFactor:?];
  LODWORD(v44) = *(a3 + 116);
  v152 = v14;
  [v14 ts:v44 setHyphenationFactor:?];
  v45 = [v30 layer];
  v156.origin.x = v31;
  v156.origin.y = v32;
  v156.size.width = v33;
  v156.size.height = v34;
  [v45 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v46 = *(a3 + 489);
  v47 = sub_219534AD0(v46);
  [v15 setFont_];

  v48 = objc_opt_self();
  v49 = [v48 labelColor];
  [v15 setTextColor_];

  v151 = v15;
  [v15 setLineBreakMode_];
  v143 = v13;
  [v13 setContentMode_];
  if ((v46 & 1) == 0)
  {
    v50 = *__swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
    v51 = [v48 systemBackgroundColor];
    [v23 setBackgroundColor_];

    v52 = [v23 layer];
    [*(v50 + 32) cornerRadius];
    [v52 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v53 = v153;
  sub_219534B5C(v46, v152, v153[4]);
  v54 = [v48 systemPinkColor];
  v55 = *&v30[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v30[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v54;
  v56 = v54;

  if (v56)
  {
    v57 = [v30 traitCollection];
    v58 = [v56 resolvedColorWithTraitCollection_];

    v53 = v153;
    [v30 setBackgroundColor_];
  }

  v59 = *(a5 + 80);
  v142 = a5;
  __swift_project_boxed_opaque_existential_1((a5 + 56), v59);
  v60 = sub_219534AD0(v46);
  v61 = v148;
  [v148 setFont_];

  v62 = [v48 secondaryLabelColor];
  [v61 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v63 = objc_allocWithZone(sub_219BE7F64());
  v64 = sub_219BE7F44();
  v65 = *(a3 + 472);
  sub_219BE7F54();
  v66 = v149;
  v149 = v64;
  [v66 addSubview_];
  v67 = (v53 + *(v150 + 36));
  v68 = *(v67 + 2);
  LODWORD(a5) = *v67 | (v68 << 16);
  v69 = (v68 >> 5) & 3;
  v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  if (v69 > 1)
  {
    if (v69 == 2)
    {
      if (sub_219093144(2u, *(v65 + 16)))
      {
        v76 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
        v77 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        if (v77)
        {
          v78 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        }

        else
        {
          v91 = sub_218EC4E8C(1);
          v92 = *&a2[v76];
          *&a2[v76] = v91;
          v78 = v91;
        }

        v93 = (v139 + 8);
        if (a5)
        {
          v94 = MEMORY[0x277D6D338];
        }

        else
        {
          v94 = MEMORY[0x277D6D340];
        }

        v96 = v140;
        v95 = v141;
        (*(v139 + 104))(v140, *v94, v141);
        type metadata accessor for AccessoryButton();
        sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
        v97 = v77;
        sub_219BEB694();
        (*v93)(v96, v95);

        v53 = v153;
        v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      }
    }

    else
    {
      v79 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v79)
      {
        [v79 setHidden_];
      }
    }
  }

  else
  {
    if (v69)
    {
      goto LABEL_35;
    }

    v71 = *(v65 + 16);
    v72 = sub_219093144(0, v71);
    LODWORD(v150) = a5;
    if (v72)
    {
      v73 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v74 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      if (v74)
      {
        v75 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      }

      else
      {
        v80 = sub_218EC4E8C(0);
        v81 = *&a2[v73];
        *&a2[v73] = v80;
        v75 = v80;
      }

      v82 = v139;
      v83 = MEMORY[0x277D6D338];
      if (a5 < 0)
      {
        v83 = MEMORY[0x277D6D340];
      }

      v84 = v140;
      a5 = v141;
      (*(v139 + 104))(v140, *v83, v141);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v85 = v74;
      sub_219BEB694();
      v86 = a5;
      LOWORD(a5) = v150;
      (*(v82 + 8))(v84, v86);

      v53 = v153;
      v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
    }

    if (sub_219093144(1u, v71))
    {
      v87 = sub_218C5824C();
      [v87 setHidden_];
    }

    if (sub_219093144(2u, v71))
    {
      v88 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v89 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      if (v89)
      {
        v90 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      }

      else
      {
        v98 = sub_218EC4E8C(1);
        v99 = *&a2[v88];
        *&a2[v88] = v98;
        v90 = v98;
      }

      v100 = v139;
      v101 = MEMORY[0x277D6D338];
      if (((((a5 & 0xFF00) >> 8) != 2) & BYTE1(a5)) == 0)
      {
        v101 = MEMORY[0x277D6D340];
      }

      v102 = v140;
      a5 = v141;
      (*(v139 + 104))(v140, *v101, v141);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v103 = v89;
      sub_219BEB694();
      (*(v100 + 8))(v102, a5);

      v53 = v153;
      v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      LOBYTE(a5) = v150;
    }

    if (sub_219093144(3u, v71))
    {
LABEL_35:
      v104 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
      v105 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v105)
      {
        v106 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      }

      else
      {
        v107 = sub_219608868();
        v108 = *&a2[v104];
        *&a2[v104] = v107;
        v106 = v107;
      }

      v109 = v105;
      if (a5)
      {
        [v106 setHidden_];
        if (a5 == 1)
        {
          v110 = MEMORY[0x277D6D338];
        }

        else
        {
          v110 = MEMORY[0x277D6D340];
        }

        v111 = v139;
        v113 = v140;
        v112 = v141;
        (*(v139 + 104))(v140, *v110, v141);
        type metadata accessor for NotificationSwitch();
        sub_2191D9030(&qword_27CC11C08, type metadata accessor for NotificationSwitch);
        sub_219BE68E4();

        (*(v111 + 8))(v113, v112);
      }

      else
      {
        [v106 setHidden_];
      }
    }
  }

  v114 = v70[484];
  v115 = *&a2[v114];
  if (v115)
  {
    [v115 setIsAccessibilityElement_];
  }

  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v116 = *&a2[v114];
    if (v116)
    {
      v117 = *&a2[v114];
    }

    else
    {
      v118 = sub_218EC4E8C(0);
      v119 = *&a2[v114];
      *&a2[v114] = v118;
      v117 = v118;

      v116 = 0;
    }

    v120 = v116;
    [v117 setIsAccessibilityElement_];
  }

  v121 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v121)
  {
    [v121 setIsAccessibilityElement_];
  }

  v122 = v53[1];
  v153 = *v53;
  v150 = v122;
  v123 = sub_219BF53D4();
  [v151 setText_];

  if (v53[3])
  {
    v124 = sub_219BF53D4();
  }

  else
  {
    v124 = 0;
  }

  [v152 setText_];

  sub_2191DE700(v53, a2, a3);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v125 = sub_219BF6BB4();
  v126 = [objc_opt_self() configurationWithFont_];

  v127 = sub_219BF53D4();
  v128 = [objc_opt_self() systemImageNamed:v127 withConfiguration:v126];

  v152 = a2;
  if (v128)
  {
    v129 = v53;
    v130 = [v128 imageWithRenderingMode_];

    __swift_project_boxed_opaque_existential_1((v142 + 16), *(v142 + 40));
    v131 = MEMORY[0x277D6D488];
    sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
    v132 = v145;
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_219C09EC0;
    sub_219BE60A4();
    sub_219BE6094();
    v154 = v133;
    sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
    sub_2191CF228(0, &qword_280E8F508, v131, MEMORY[0x277D83940]);
    sub_218D98E88();
    v134 = v144;
    v135 = v146;
    sub_219BF7164();
    sub_219BE87F4();
    (*(v132 + 8))(v134, v135);
    v136 = v143;
    [v143 setImage_];
    v137 = sub_219BF53D4();
    [v136 setAccessibilityLabel_];

    sub_2191DF1C0(v129, v152, v147);
    sub_2191E1978(v129, type metadata accessor for FollowingAudioModel);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D36C8(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v96 = a4;
  v100 = a1;
  v8 = sub_219BE60B4();
  v93 = *(v8 - 8);
  v94 = v8;
  MEMORY[0x28223BE20](v8);
  v92 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v10 setAccessibilityLabel_];
  v11 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v11 setText_];
  v12 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v12 setText_];
  [a2 setAccessibilityLabel_];
  v13 = type metadata accessor for TagView();
  v102.receiver = a2;
  v102.super_class = v13;
  objc_msgSendSuper2(&v102, sel_setAccessibilityValue_, 0);
  v14 = *(a3 + 40);
  v15 = *(a3 + 48);
  v16 = *(a3 + 56);
  v17 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v17 = *(a3 + 32);
  *(v17 + 1) = v14;
  *(v17 + 2) = v15;
  *(v17 + 3) = v16;
  [v12 setFrame_];
  v18 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v19 = *(a3 + 80);
  *v18 = *(a3 + 64);
  *(v18 + 1) = v19;
  [v10 setFrame_];
  v20 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v20 setFrame_];
  v21 = *(a3 + 128);
  v22 = *(a3 + 136);
  v23 = *(a3 + 144);
  v24 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v24 = *(a3 + 120);
  *(v24 + 1) = v21;
  *(v24 + 2) = v22;
  *(v24 + 3) = v23;
  [v11 setFrame_];
  v25 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v26 = *(a3 + 168);
  *v25 = *(a3 + 152);
  *(v25 + 1) = v26;
  v27 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v28 = *(a3 + 248);
  v29 = *(a3 + 256);
  v30 = *(a3 + 264);
  v31 = *(a3 + 272);
  [v27 setFrame_];
  v32 = *(a3 + 280);
  v33 = *(a3 + 288);
  v34 = *(a3 + 296);
  v35 = *(a3 + 304);
  v97 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v97 setFrame_];
  v36 = *(a3 + 312);
  v37 = *(a3 + 320);
  v38 = *(a3 + 328);
  v39 = *(a3 + 336);
  v98 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v98 setFrame_];
  [v12 setNumberOfLines_];
  [v11 setNumberOfLines_];
  LODWORD(v40) = *(a3 + 112);
  [v12 ts:v40 setHyphenationFactor:?];
  LODWORD(v41) = *(a3 + 116);
  v99 = v11;
  [v11 ts:v41 setHyphenationFactor:?];
  v42 = [v27 layer];
  v103.origin.x = v28;
  v103.origin.y = v29;
  v103.size.width = v30;
  v103.size.height = v31;
  [v42 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v43 = *(a3 + 489);
  v44 = sub_219534AD0(v43);
  [v12 setFont_];

  v45 = objc_opt_self();
  v46 = [v45 labelColor];
  [v12 setTextColor_];

  [v12 setLineBreakMode_];
  v95 = v10;
  [v10 setContentMode_];
  if ((v43 & 1) == 0)
  {
    v47 = *__swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
    v48 = [v45 systemBackgroundColor];
    [v20 setBackgroundColor_];

    v49 = [v20 layer];
    [*(v47 + 32) cornerRadius];
    [v49 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  sub_219534B5C(v43, v99, v100[3]);
  v50 = [v45 systemPinkColor];
  v51 = *&v27[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v27[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v50;
  v52 = v50;

  if (v52)
  {
    v53 = [v27 traitCollection];
    v54 = [v52 resolvedColorWithTraitCollection_];

    [v27 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v55 = sub_219534AD0(v43);
  v56 = v97;
  [v97 setFont_];

  v57 = [v45 secondaryLabelColor];
  [v56 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v58 = objc_allocWithZone(sub_219BE7F64());
  v59 = sub_219BE7F44();
  sub_219BE7F54();
  v60 = v98;
  v98 = v59;
  [v60 addSubview_];
  v61 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v61)
  {
    [v61 setHidden_];
  }

  v62 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v63 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v63)
  {
    [v63 setIsAccessibilityElement_];
  }

  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v64 = *&a2[v62];
    if (v64)
    {
      v65 = *&a2[v62];
    }

    else
    {
      v66 = sub_218EC4E8C(0);
      v67 = *&a2[v62];
      *&a2[v62] = v66;
      v65 = v66;

      v64 = 0;
    }

    v68 = v64;
    [v65 setIsAccessibilityElement_];
  }

  v69 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v69)
  {
    [v69 setIsAccessibilityElement_];
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = objc_opt_self();
  v72 = [v71 bundleForClass_];
  sub_219BDB5E4();

  v73 = sub_219BF53D4();

  [v12 setText_];

  v74 = v100;
  v75 = v100[1];
  v76 = v100[2];
  if (v76)
  {
    v77 = sub_219BF53D4();
  }

  else
  {
    v77 = 0;
  }

  [v99 setText_];

  sub_2191DD6F4(*v74, v75, v76, a2, a3);
  sub_219BED0C4();
  v78 = objc_opt_self();
  v79 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v80 = sub_219BF6BB4();
  v81 = [objc_opt_self() configurationWithFont_];

  v82 = [v78 ts:v79 internalSystemImageNamed:v81 withConfiguration:?];
  if (v82)
  {
    v99 = [v82 imageWithRenderingMode_];

    v83 = [v71 bundleForClass_];
    v97 = sub_219BDB5E4();

    __swift_project_boxed_opaque_existential_1(a5 + 2, a5[5]);
    v84 = MEMORY[0x277D6D488];
    sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
    v85 = v93;
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_219C09EC0;
    sub_219BE60A4();
    sub_219BE6094();
    v101 = v86;
    sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
    sub_2191CF228(0, &qword_280E8F508, v84, MEMORY[0x277D83940]);
    sub_218D98E88();
    v87 = v92;
    v88 = v94;
    sub_219BF7164();
    sub_219BE87F4();
    (*(v85 + 8))(v87, v88);
    v89 = v95;
    v90 = v99;
    [v95 setImage_];
    v91 = sub_219BF53D4();

    [v89 setAccessibilityLabel_];

    sub_2191DE214(v100, a2, v96);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D41D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v158 = a4;
  v160 = a1;
  v157 = sub_219BE60B4();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v154 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v9 setAccessibilityLabel_];
  v10 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v10 setText_];
  v11 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v11 setText_];
  [a2 setAccessibilityLabel_];
  v12 = type metadata accessor for TagView();
  v165.receiver = a2;
  v165.super_class = v12;
  objc_msgSendSuper2(&v165, sel_setAccessibilityValue_, 0);
  v13 = *(a3 + 40);
  v14 = *(a3 + 48);
  v15 = *(a3 + 56);
  v16 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v16 = *(a3 + 32);
  *(v16 + 1) = v13;
  *(v16 + 2) = v14;
  *(v16 + 3) = v15;
  [v11 setFrame_];
  v17 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v18 = *(a3 + 80);
  *v17 = *(a3 + 64);
  *(v17 + 1) = v18;
  v20 = *(a3 + 200);
  v19 = *(a3 + 208);
  [v9 setFrame_];
  v21 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v21 setFrame_];
  v22 = *(a3 + 128);
  v23 = *(a3 + 136);
  v24 = *(a3 + 144);
  v25 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v25 = *(a3 + 120);
  *(v25 + 1) = v22;
  *(v25 + 2) = v23;
  *(v25 + 3) = v24;
  [v10 setFrame_];
  v26 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v27 = *(a3 + 168);
  *v26 = *(a3 + 152);
  *(v26 + 1) = v27;
  v28 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v29 = *(a3 + 248);
  v30 = *(a3 + 256);
  v31 = *(a3 + 264);
  v32 = *(a3 + 272);
  [v28 setFrame_];
  v33 = *(a3 + 280);
  v34 = *(a3 + 288);
  v35 = *(a3 + 296);
  v36 = *(a3 + 304);
  v152 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v152 setFrame_];
  v37 = *(a3 + 312);
  v38 = *(a3 + 320);
  v39 = *(a3 + 328);
  v40 = *(a3 + 336);
  v155 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v155 setFrame_];
  [v11 setNumberOfLines_];
  [v10 setNumberOfLines_];
  LODWORD(v41) = *(a3 + 112);
  [v11 ts:v41 setHyphenationFactor:?];
  LODWORD(v42) = *(a3 + 116);
  v159 = v10;
  [v10 ts:v42 setHyphenationFactor:?];
  v43 = [v28 layer];
  v166.origin.x = v29;
  v166.origin.y = v30;
  v166.size.width = v31;
  v166.size.height = v32;
  [v43 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v44 = *(a3 + 489);
  v45 = sub_219534AD0(v44);
  [v11 setFont_];

  v46 = objc_opt_self();
  v47 = [v46 labelColor];
  [v11 setTextColor_];

  v153 = v11;
  [v11 setLineBreakMode_];
  v149 = v9;
  [v9 setContentMode_];
  if ((v44 & 1) == 0)
  {
    v48 = *__swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
    v49 = [v46 systemBackgroundColor];
    [v21 setBackgroundColor_];

    v50 = [v21 layer];
    [*(v48 + 32) cornerRadius];
    [v50 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v51 = *(v160 + 16);
  v52 = *(v51 + 64);
  v53 = v52;
  sub_219534B5C(v44, v159, v52);

  v54 = [v46 systemPinkColor];
  v55 = *&v28[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v28[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v54;
  v56 = v54;

  if (v56)
  {
    v57 = [v28 traitCollection];
    v58 = [v56 resolvedColorWithTraitCollection_];

    [v28 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v59 = sub_219534AD0(v44);
  v60 = v152;
  [v152 setFont_];

  v61 = [v46 secondaryLabelColor];
  [v60 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v62 = objc_allocWithZone(sub_219BE7F64());
  v63 = sub_219BE7F44();
  sub_219BE7F54();
  v64 = v155;
  v155 = v63;
  [v64 addSubview_];
  v65 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v65)
  {
    [v65 setHidden_];
  }

  v66 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v67 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v67)
  {
    [v67 setIsAccessibilityElement_];
  }

  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v68 = *&a2[v66];
    if (v68)
    {
      v69 = *&a2[v66];
    }

    else
    {
      v70 = sub_218EC4E8C(0);
      v71 = *&a2[v66];
      *&a2[v66] = v70;
      v69 = v70;

      v68 = 0;
    }

    v72 = v68;
    [v69 setIsAccessibilityElement_];
  }

  v73 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v73)
  {
    [v73 setIsAccessibilityElement_];
  }

  v74 = sub_219BF53D4();

  [v153 setText_];

  if (*(v51 + 56))
  {

    v75 = sub_219BF53D4();
  }

  else
  {
    v75 = 0;
  }

  [v159 setText_];

  sub_2191DCA4C(v160, a2, a3);
  v150 = a5[12];
  v76 = *(v51 + 104);
  v151 = a2;
  if (v76 == 255)
  {
    v79 = 0;
    v153 = 0x8000000219D04950;
    v159 = 0xD000000000000017;
  }

  else
  {
    v77 = *(v51 + 96);
    if (v76)
    {
      v78 = *(v51 + 80);
      sub_218FA396C(v78, *(v51 + 88), v77, 1);
      v153 = 0;
      v79 = 3;
      v159 = v78;
    }

    else
    {
      v159 = *(v51 + 96);
      v80 = v77;
      v153 = 0;
      v79 = 1;
    }
  }

  v81 = *(v51 + 40);
  v147 = *(v51 + 32);
  __swift_project_boxed_opaque_existential_1(a5 + 2, a5[5]);
  v82 = MEMORY[0x277D6D488];
  sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
  v83 = v156;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_219C09EC0;
  v152 = v81;

  sub_219BE60A4();
  sub_219BE6094();
  v164 = v84;
  sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
  sub_2191CF228(0, &qword_280E8F508, v82, MEMORY[0x277D83940]);
  sub_218D98E88();
  v85 = v154;
  v86 = v157;
  sub_219BF7164();
  v148 = sub_219BE87F4();
  (*(v83 + 8))(v85, v86);
  if (!v79)
  {
    v104 = v153;

    v105 = v159;
    v106 = sub_219BF53D4();
    v107 = [objc_opt_self() imageNamed_];

    v108 = v107;
    if (!v107)
    {
      v109 = [objc_opt_self() welcomeToNewsIcon];
      if (!v109)
      {

        sub_218A264C8(v105, v104, 0);
        [v149 setImage_];
        sub_218A264C8(v105, v104, 0);
        goto LABEL_31;
      }

      v108 = v109;
    }

    v110 = v107;

    v111 = *(v150 + 56);
    v112 = v108;
    v113 = v149;
    v114 = [v149 traitCollection];
    [v114 displayScale];
    v116 = v115;

    v117 = type metadata accessor for FeedNavImageAssetHandle();
    v118 = objc_allocWithZone(v117);
    v119 = &v118[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v119 = 0;
    *(v119 + 1) = 0;
    v120 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
    *&v118[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    swift_beginAccess();
    *&v118[v120] = v112;
    v121 = &v118[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    *v121 = v105;
    *(v121 + 1) = v104;
    v122 = &v118[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v122 = v20;
    v122[1] = v19;
    *&v118[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v111;
    *&v118[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
    *&v118[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v116;
    *&v118[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
    v161.receiver = v118;
    v161.super_class = v117;
    swift_unknownObjectRetain();
    v123 = objc_msgSendSuper2(&v161, sel_init);
    sub_218A462FC(v123, v113, v147, v152, v148 & 1, v20, v19, 1.0);
    sub_218A264C8(v105, v104, 0);

LABEL_31:
    v124 = v158;
    v125 = v155;
    v87 = v151;
    goto LABEL_38;
  }

  v87 = v151;
  if (v79 == 1)
  {
    v88 = *(v150 + 56);
    v89 = v149;
    v90 = [v149 traitCollection];
    [v90 displayScale];
    v92 = v91;

    v93 = type metadata accessor for FeedNavImageAssetHandle();
    v94 = objc_allocWithZone(v93);
    v95 = &v94[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v95 = 0;
    *(v95 + 1) = 0;
    v96 = OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    swift_beginAccess();
    v97 = v159;
    *&v94[v96] = v159;
    v98 = &v94[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    v99 = v147;
    v100 = v152;
    *v98 = v147;
    *(v98 + 1) = v100;
    v101 = &v94[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v101 = v20;
    v101[1] = v19;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v88;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = 0;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v92;
    *&v94[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;

    v102 = v153;
    sub_218A472B0(v97, v153, 1u);
    v163.receiver = v94;
    v163.super_class = v93;
    swift_unknownObjectRetain();
    v103 = objc_msgSendSuper2(&v163, sel_init);
    sub_218A462FC(v103, v89, v99, v100, v148 & 1, v20, v19, 1.0);
    sub_218A264C8(v97, v102, 1u);

LABEL_37:

    v124 = v158;
    v125 = v155;
    goto LABEL_38;
  }

  v126 = v159;
  v127 = [v159 tagType];
  v128 = v153;
  if ((v127 - 1) >= 2)
  {
    sub_218A264C8(v126, v153, 3u);
    goto LABEL_37;
  }

  v129 = [v126 groupTitleColor];
  v130 = *(v150 + 56);
  swift_unknownObjectRetain();
  if (v129)
  {
    v131 = [v129 ne_color];

    type metadata accessor for TopicColorFeedNavImageStyler();
    v132 = swift_allocObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v130;
    v130 = v132;
  }

  v133 = v158;
  swift_unknownObjectRetain();
  v134 = v149;
  v135 = [v149 traitCollection];
  [v135 displayScale];
  v137 = v136;

  v138 = type metadata accessor for FeedNavImageAssetHandle();
  v139 = objc_allocWithZone(v138);
  v140 = &v139[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
  *v140 = 0;
  *(v140 + 1) = 0;
  *&v139[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
  *&v139[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v126;
  v141 = swift_unknownObjectRetain();
  v142 = sub_219352488(v141);
  v143 = &v139[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
  *v143 = v142;
  v143[1] = v144;
  v145 = &v139[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
  *v145 = v20;
  v145[1] = v19;
  *&v139[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v130;
  *&v139[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v137;
  *&v139[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
  v162.receiver = v139;
  v162.super_class = v138;
  v146 = objc_msgSendSuper2(&v162, sel_init);
  sub_218A462FC(v146, v134, v147, v152, v148 & 1, v20, v19, 1.0);
  sub_218A264C8(v126, v128, 3u);
  swift_unknownObjectRelease();

  v124 = v133;
  v125 = v155;
LABEL_38:
  sub_2191DD2C8(v160, v87, v124);
}

void sub_2191D51E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v154 = a4;
  v160 = a1;
  v149 = sub_219BE5C64();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v148 = &v145[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_219BE60B4();
  v151 = *(v9 - 8);
  v152 = v9;
  MEMORY[0x28223BE20](v9);
  v150 = &v145[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v11 setAccessibilityLabel_];
  v12 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v12 setText_];
  v13 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v13 setText_];
  [a2 setAccessibilityLabel_];
  v14 = type metadata accessor for TagView();
  v162.receiver = a2;
  v162.super_class = v14;
  objc_msgSendSuper2(&v162, sel_setAccessibilityValue_, 0);
  v15 = *(a3 + 40);
  v16 = *(a3 + 48);
  v17 = *(a3 + 56);
  v18 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v18 = *(a3 + 32);
  *(v18 + 1) = v15;
  *(v18 + 2) = v16;
  *(v18 + 3) = v17;
  [v13 setFrame_];
  v19 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v20 = *(a3 + 80);
  *v19 = *(a3 + 64);
  *(v19 + 1) = v20;
  [v11 setFrame_];
  v21 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v21 setFrame_];
  v22 = *(a3 + 128);
  v23 = *(a3 + 136);
  v24 = *(a3 + 144);
  v25 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v25 = *(a3 + 120);
  *(v25 + 1) = v22;
  *(v25 + 2) = v23;
  *(v25 + 3) = v24;
  [v12 setFrame_];
  v26 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v27 = *(a3 + 168);
  *v26 = *(a3 + 152);
  *(v26 + 1) = v27;
  v28 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v29 = *(a3 + 248);
  v30 = *(a3 + 256);
  v31 = *(a3 + 264);
  v32 = *(a3 + 272);
  [v28 setFrame_];
  v33 = *(a3 + 280);
  v34 = *(a3 + 288);
  v35 = *(a3 + 296);
  v36 = *(a3 + 304);
  v155 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v155 setFrame_];
  v37 = *(a3 + 312);
  v38 = *(a3 + 320);
  v39 = *(a3 + 328);
  v40 = *(a3 + 336);
  v156 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v156 setFrame_];
  [v13 setNumberOfLines_];
  [v12 setNumberOfLines_];
  LODWORD(v41) = *(a3 + 112);
  [v13 ts:v41 setHyphenationFactor:?];
  LODWORD(v42) = *(a3 + 116);
  v159 = v12;
  [v12 ts:v42 setHyphenationFactor:?];
  v43 = [v28 layer];
  v163.origin.x = v29;
  v163.origin.y = v30;
  v163.size.width = v31;
  v163.size.height = v32;
  [v43 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v44 = *(a3 + 489);
  v45 = sub_219534AD0(v44);
  [v13 setFont_];

  v46 = objc_opt_self();
  v47 = [v46 labelColor];
  [v13 setTextColor_];

  v157 = v13;
  [v13 setLineBreakMode_];
  v153 = v11;
  [v11 setContentMode_];
  if ((v44 & 1) == 0)
  {
    v48 = *__swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
    v49 = [v46 systemBackgroundColor];
    [v21 setBackgroundColor_];

    v50 = [v21 layer];
    [*(v48 + 32) cornerRadius];
    [v50 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1((a5 + 56), *(a5 + 80));
  v51 = v160;
  sub_219534B5C(v44, v159, *(v160 + 24));
  v52 = [v46 systemPinkColor];
  v53 = *&v28[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v28[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v52;
  v54 = v52;

  if (v54)
  {
    v55 = [v28 traitCollection];
    v56 = v51;
    v57 = [v54 resolvedColorWithTraitCollection_];

    [v28 setBackgroundColor_];
    v51 = v56;
  }

  v58 = *(a5 + 80);
  v158 = a5;
  __swift_project_boxed_opaque_existential_1((a5 + 56), v58);
  v59 = sub_219534AD0(v44);
  v60 = v155;
  [v155 setFont_];

  v61 = [v46 secondaryLabelColor];
  [v60 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v62 = objc_allocWithZone(sub_219BE7F64());
  v63 = sub_219BE7F44();
  v64 = *(a3 + 472);
  sub_219BE7F54();
  v65 = v156;
  v156 = v63;
  [v65 addSubview_];
  v66 = *(v51 + 32);
  v67 = *(v51 + 34);
  v68 = (v67 >> 5) & 3;
  v69 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
  if (v68 > 1)
  {
    if (v68 == 2)
    {
      if (sub_219093144(2u, *(v64 + 16)))
      {
        v77 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
        v78 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        if (v78)
        {
          v79 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
        }

        else
        {
          v92 = sub_218EC4E8C(1);
          v93 = a2;
          v94 = *&a2[v77];
          *&v93[v77] = v92;
          v79 = v92;

          a2 = v93;
        }

        v95 = (v147 + 8);
        if (v66)
        {
          v96 = MEMORY[0x277D6D338];
        }

        else
        {
          v96 = MEMORY[0x277D6D340];
        }

        v98 = v148;
        v97 = v149;
        (*(v147 + 104))(v148, *v96, v149);
        type metadata accessor for AccessoryButton();
        sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
        v99 = v78;
        sub_219BEB694();
        (*v95)(v98, v97);

        v69 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
        v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      }
    }

    else
    {
      v80 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v80)
      {
        [v80 setHidden_];
      }
    }
  }

  else
  {
    if (v68)
    {
      goto LABEL_35;
    }

    v71 = *(v51 + 33);
    v72 = *(v64 + 16);
    v73 = sub_219093144(0, v72);
    LODWORD(v155) = v66;
    if (v73)
    {
      v146 = v71;
      v74 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v75 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      if (v75)
      {
        v76 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
      }

      else
      {
        v81 = sub_218EC4E8C(0);
        v82 = *&a2[v74];
        *&a2[v74] = v81;
        v76 = v81;
      }

      v83 = v147;
      v84 = v148;
      v85 = MEMORY[0x277D6D338];
      if (v67 < 0)
      {
        v85 = MEMORY[0x277D6D340];
      }

      v86 = v149;
      (*(v147 + 104))(v148, *v85, v149);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v87 = v75;
      sub_219BEB694();
      (*(v83 + 8))(v84, v86);

      v51 = v160;
      v69 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v66 = v155;
      LOBYTE(v71) = v146;
    }

    if (sub_219093144(1u, v72))
    {
      v88 = sub_218C5824C();
      [v88 setHidden_];
    }

    if (sub_219093144(2u, v72))
    {
      v89 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v90 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      if (v90)
      {
        v91 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
      }

      else
      {
        v100 = sub_218EC4E8C(1);
        v101 = a2;
        v102 = *&a2[v89];
        *&v101[v89] = v100;
        v91 = v100;

        a2 = v101;
      }

      v103 = v147;
      v104 = v148;
      v105 = MEMORY[0x277D6D338];
      if ((v71 & 1) == 0)
      {
        v105 = MEMORY[0x277D6D340];
      }

      v106 = v149;
      (*(v147 + 104))(v148, *v105, v149);
      type metadata accessor for AccessoryButton();
      sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
      v107 = v90;
      sub_219BEB694();
      (*(v103 + 8))(v104, v106);

      v51 = v160;
      v69 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v70 = &OBJC_IVAR____TtC7NewsUI226OfflineIssueAutoDownloader_triggerDeduper;
      v66 = v155;
    }

    if (sub_219093144(3u, v72))
    {
LABEL_35:
      v108 = OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch;
      v109 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      if (v109)
      {
        v110 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
      }

      else
      {
        v111 = sub_219608868();
        v112 = a2;
        v113 = *&a2[v108];
        *&v112[v108] = v111;
        v110 = v111;

        a2 = v112;
      }

      v114 = v109;
      if (v66)
      {
        [v110 setHidden_];
        if (v66 == 1)
        {
          v115 = MEMORY[0x277D6D338];
        }

        else
        {
          v115 = MEMORY[0x277D6D340];
        }

        v117 = v147;
        v116 = v148;
        v118 = v149;
        (*(v147 + 104))(v148, *v115, v149);
        type metadata accessor for NotificationSwitch();
        sub_2191D9030(&qword_27CC11C08, type metadata accessor for NotificationSwitch);
        sub_219BE68E4();

        (*(v117 + 8))(v116, v118);
      }

      else
      {
        [v110 setHidden_];
      }
    }
  }

  v119 = v70[484];
  v120 = *&a2[v119];
  if (v120)
  {
    [v120 setIsAccessibilityElement_];
  }

  v121 = v158;
  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v122 = *&a2[v119];
    if (v122)
    {
      v123 = *&a2[v119];
    }

    else
    {
      v124 = sub_218EC4E8C(0);
      v125 = *&a2[v119];
      *&a2[v119] = v124;
      v123 = v124;

      v122 = 0;
    }

    v126 = v122;
    [v123 setIsAccessibilityElement_];
  }

  v127 = *&a2[v69[486]];
  if (v127)
  {
    [v127 setIsAccessibilityElement_];
  }

  sub_219BF2394();
  v128 = sub_219BF2364();
  MEMORY[0x21CEC9110]();

  v129 = sub_219BF53D4();

  [v157 setText_];

  if (*(v51 + 16))
  {
    v130 = sub_219BF53D4();
  }

  else
  {
    v130 = 0;
  }

  [v159 setText_];

  sub_2191DB9C0(v51, a2, a3);
  sub_219BED0C4();
  v131 = objc_opt_self();
  v132 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v133 = sub_219BF6BB4();
  v134 = [objc_opt_self() configurationWithFont_];

  v135 = [v131 ts:v132 internalSystemImageNamed:v134 withConfiguration:?];
  v159 = a2;
  if (v135)
  {
    v136 = [v135 imageWithRenderingMode_];

    v137 = sub_219BF2364();
    v157 = MEMORY[0x21CEC9110]();

    __swift_project_boxed_opaque_existential_1((v121 + 16), *(v121 + 40));
    v138 = MEMORY[0x277D6D488];
    sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
    v139 = v151;
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_219C09EC0;
    sub_219BE60A4();
    sub_219BE6094();
    v161 = v140;
    sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
    sub_2191CF228(0, &qword_280E8F508, v138, MEMORY[0x277D83940]);
    sub_218D98E88();
    v141 = v150;
    v142 = v152;
    sub_219BF7164();
    sub_219BE87F4();
    (*(v139 + 8))(v141, v142);
    v143 = v153;
    [v153 setImage_];
    v144 = sub_219BF53D4();

    [v143 setAccessibilityLabel_];

    sub_2191DC578(v160, v159, v154);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D6170(uint64_t a1, uint64_t a2, void *a3, int a4, char *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v97 = a7;
  v96 = a4;
  v100 = a3;
  v101 = a1;
  v102 = a2;
  v11 = sub_219BE60B4();
  v93 = *(v11 - 8);
  v94 = v11;
  MEMORY[0x28223BE20](v11);
  v92 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v13 setAccessibilityLabel_];
  v14 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v14 setText_];
  v15 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v15 setText_];
  [a5 setAccessibilityLabel_];
  v16 = type metadata accessor for TagView();
  v105.receiver = a5;
  v105.super_class = v16;
  objc_msgSendSuper2(&v105, sel_setAccessibilityValue_, 0);
  v17 = *(a6 + 40);
  v18 = *(a6 + 48);
  v19 = *(a6 + 56);
  v20 = &a5[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v20 = *(a6 + 32);
  *(v20 + 1) = v17;
  *(v20 + 2) = v18;
  *(v20 + 3) = v19;
  [v15 setFrame_];
  v21 = &a5[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v22 = *(a6 + 80);
  *v21 = *(a6 + 64);
  *(v21 + 1) = v22;
  [v13 setFrame_];
  v23 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v23 setFrame_];
  v24 = *(a6 + 128);
  v25 = *(a6 + 136);
  v26 = *(a6 + 144);
  v27 = &a5[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v27 = *(a6 + 120);
  *(v27 + 1) = v24;
  *(v27 + 2) = v25;
  *(v27 + 3) = v26;
  [v14 setFrame_];
  v28 = &a5[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v29 = *(a6 + 168);
  *v28 = *(a6 + 152);
  *(v28 + 1) = v29;
  v30 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v31 = *(a6 + 248);
  v32 = *(a6 + 256);
  v33 = *(a6 + 264);
  v34 = *(a6 + 272);
  [v30 setFrame_];
  v35 = *(a6 + 280);
  v36 = *(a6 + 288);
  v37 = *(a6 + 296);
  v38 = *(a6 + 304);
  v98 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v98 setFrame_];
  v39 = *(a6 + 312);
  v40 = *(a6 + 320);
  v41 = *(a6 + 328);
  v42 = *(a6 + 336);
  v99 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v99 setFrame_];
  [v15 setNumberOfLines_];
  [v14 setNumberOfLines_];
  LODWORD(v43) = *(a6 + 112);
  [v15 ts:v43 setHyphenationFactor:?];
  LODWORD(v44) = *(a6 + 116);
  v103 = v14;
  [v14 ts:v44 setHyphenationFactor:?];
  v45 = [v30 layer];
  v106.origin.x = v31;
  v106.origin.y = v32;
  v106.size.width = v33;
  v106.size.height = v34;
  [v45 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1(a8 + 7, a8[10]);
  v46 = *(a6 + 489);
  v47 = sub_219534AD0(v46);
  [v15 setFont_];

  v48 = objc_opt_self();
  v49 = [v48 labelColor];
  [v15 setTextColor_];

  [v15 setLineBreakMode_];
  v95 = v13;
  [v13 setContentMode_];
  if ((v46 & 1) == 0)
  {
    v50 = *__swift_project_boxed_opaque_existential_1(a8 + 7, a8[10]);
    v51 = [v48 systemBackgroundColor];
    [v23 setBackgroundColor_];

    v52 = [v23 layer];
    [*(v50 + 32) cornerRadius];
    [v52 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1(a8 + 7, a8[10]);
  sub_219534B5C(v46, v103, v100);
  v53 = [v48 systemPinkColor];
  v54 = *&v30[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v30[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v53;
  v55 = v53;

  if (v55)
  {
    v56 = [v30 traitCollection];
    v57 = [v55 resolvedColorWithTraitCollection_];

    [v30 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1(a8 + 7, a8[10]);
  v58 = sub_219534AD0(v46);
  v59 = v98;
  [v98 setFont_];

  v60 = [v48 secondaryLabelColor];
  [v59 setTextColor_];

  sub_218C5949C(a6, a5);
  CGRectGetHeight(*a6);
  v61 = objc_allocWithZone(sub_219BE7F64());
  v62 = sub_219BE7F44();
  sub_219BE7F54();
  v100 = v62;
  [v99 addSubview_];
  v63 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v63)
  {
    [v63 setHidden_];
  }

  v64 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v65 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v65)
  {
    [v65 setIsAccessibilityElement_];
  }

  if (*&a5[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v66 = *&a5[v64];
    if (v66)
    {
      v67 = *&a5[v64];
    }

    else
    {
      v68 = sub_218EC4E8C(0);
      v69 = *&a5[v64];
      *&a5[v64] = v68;
      v67 = v68;

      v66 = 0;
    }

    v70 = v66;
    [v67 setIsAccessibilityElement_];
  }

  v71 = *&a5[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v71)
  {
    [v71 setIsAccessibilityElement_];
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v73 = objc_opt_self();
  v74 = [v73 bundleForClass_];
  sub_219BDB5E4();

  v75 = sub_219BF53D4();

  [v15 setText_];

  v76 = v102;
  if (v102)
  {
    v77 = v101;
    v78 = sub_219BF53D4();
  }

  else
  {
    v78 = 0;
    v77 = v101;
  }

  [v103 setText_];

  sub_2191DAC40(v77, v76, a5, a6);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v79 = sub_219BF6BB4();
  v80 = [objc_opt_self() configurationWithFont_];

  v81 = sub_219BF53D4();
  v82 = [objc_opt_self() systemImageNamed:v81 withConfiguration:v80];

  if (v82)
  {
    v103 = [v82 imageWithRenderingMode_];

    v83 = [v73 bundleForClass_];
    v102 = sub_219BDB5E4();

    __swift_project_boxed_opaque_existential_1(a8 + 2, a8[5]);
    v84 = MEMORY[0x277D6D488];
    sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
    v85 = v93;
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_219C09EC0;
    sub_219BE60A4();
    sub_219BE6094();
    v104 = v86;
    sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
    sub_2191CF228(0, &qword_280E8F508, v84, MEMORY[0x277D83940]);
    sub_218D98E88();
    v87 = v92;
    v88 = v94;
    sub_219BF7164();
    sub_219BE87F4();
    (*(v85 + 8))(v87, v88);
    v89 = v95;
    v90 = v103;
    [v95 setImage_];
    v91 = sub_219BF53D4();

    [v89 setAccessibilityLabel_];

    sub_2191DB4DC(v96 & 1, a5, v97);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D6C7C(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v95 = a4;
  v99 = a1;
  v8 = sub_219BE60B4();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  v91 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v10 setAccessibilityLabel_];
  v11 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v11 setText_];
  v12 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v12 setText_];
  [a2 setAccessibilityLabel_];
  v13 = type metadata accessor for TagView();
  v101.receiver = a2;
  v101.super_class = v13;
  objc_msgSendSuper2(&v101, sel_setAccessibilityValue_, 0);
  v14 = *(a3 + 40);
  v15 = *(a3 + 48);
  v16 = *(a3 + 56);
  v17 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v17 = *(a3 + 32);
  *(v17 + 1) = v14;
  *(v17 + 2) = v15;
  *(v17 + 3) = v16;
  [v12 setFrame_];
  v18 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v19 = *(a3 + 80);
  *v18 = *(a3 + 64);
  *(v18 + 1) = v19;
  [v10 setFrame_];
  v20 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v20 setFrame_];
  v21 = *(a3 + 128);
  v22 = *(a3 + 136);
  v23 = *(a3 + 144);
  v24 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v24 = *(a3 + 120);
  *(v24 + 1) = v21;
  *(v24 + 2) = v22;
  *(v24 + 3) = v23;
  [v11 setFrame_];
  v25 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v26 = *(a3 + 168);
  *v25 = *(a3 + 152);
  *(v25 + 1) = v26;
  v27 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v28 = *(a3 + 248);
  v29 = *(a3 + 256);
  v30 = *(a3 + 264);
  v31 = *(a3 + 272);
  [v27 setFrame_];
  v32 = *(a3 + 280);
  v33 = *(a3 + 288);
  v34 = *(a3 + 296);
  v35 = *(a3 + 304);
  v96 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v96 setFrame_];
  v36 = *(a3 + 312);
  v37 = *(a3 + 320);
  v38 = *(a3 + 328);
  v39 = *(a3 + 336);
  v97 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v97 setFrame_];
  [v12 setNumberOfLines_];
  [v11 setNumberOfLines_];
  LODWORD(v40) = *(a3 + 112);
  [v12 ts:v40 setHyphenationFactor:?];
  LODWORD(v41) = *(a3 + 116);
  v98 = v11;
  [v11 ts:v41 setHyphenationFactor:?];
  v42 = [v27 layer];
  v102.origin.x = v28;
  v102.origin.y = v29;
  v102.size.width = v30;
  v102.size.height = v31;
  [v42 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v43 = *(a3 + 489);
  v44 = sub_219534AD0(v43);
  [v12 setFont_];

  v45 = objc_opt_self();
  v46 = [v45 labelColor];
  [v12 setTextColor_];

  [v12 setLineBreakMode_];
  v94 = v10;
  [v10 setContentMode_];
  if ((v43 & 1) == 0)
  {
    v47 = *__swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
    v48 = [v45 systemBackgroundColor];
    [v20 setBackgroundColor_];

    v49 = [v20 layer];
    [*(v47 + 32) cornerRadius];
    [v49 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  sub_219534B5C(v43, v98, v99[3]);
  v50 = [v45 systemPinkColor];
  v51 = *&v27[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v27[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v50;
  v52 = v50;

  if (v52)
  {
    v53 = [v27 traitCollection];
    v54 = [v52 resolvedColorWithTraitCollection_];

    [v27 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1(a5 + 7, a5[10]);
  v55 = sub_219534AD0(v43);
  v56 = v96;
  [v96 setFont_];

  v57 = [v45 secondaryLabelColor];
  [v56 setTextColor_];

  sub_218C5949C(a3, a2);
  CGRectGetHeight(*a3);
  v58 = objc_allocWithZone(sub_219BE7F64());
  v59 = sub_219BE7F44();
  sub_219BE7F54();
  v60 = v97;
  v97 = v59;
  [v60 addSubview_];
  v61 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v61)
  {
    [v61 setHidden_];
  }

  v62 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v63 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v63)
  {
    [v63 setIsAccessibilityElement_];
  }

  if (*&a2[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v64 = *&a2[v62];
    if (v64)
    {
      v65 = *&a2[v62];
    }

    else
    {
      v66 = sub_218EC4E8C(0);
      v67 = *&a2[v62];
      *&a2[v62] = v66;
      v65 = v66;

      v64 = 0;
    }

    v68 = v64;
    [v65 setIsAccessibilityElement_];
  }

  v69 = *&a2[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v69)
  {
    [v69 setIsAccessibilityElement_];
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = objc_opt_self();
  v72 = [v71 bundleForClass_];
  sub_219BDB5E4();

  v73 = sub_219BF53D4();

  [v12 setText_];

  v74 = v99;
  v75 = v99[1];
  v76 = v99[2];
  if (v76)
  {
    v77 = sub_219BF53D4();
  }

  else
  {
    v77 = 0;
  }

  [v98 setText_];

  sub_2191D9DFC(*v74, v75, v76, a2, a3);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v78 = sub_219BF6BB4();
  v79 = [objc_opt_self() configurationWithFont_];

  v80 = sub_219BF53D4();
  v81 = [objc_opt_self() systemImageNamed:v80 withConfiguration:v79];

  if (v81)
  {
    v98 = [v81 imageWithRenderingMode_];

    v82 = [v71 bundleForClass_];
    v96 = sub_219BDB5E4();

    __swift_project_boxed_opaque_existential_1(a5 + 2, a5[5]);
    v83 = MEMORY[0x277D6D488];
    sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
    v84 = v92;
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_219C09EC0;
    sub_219BE60A4();
    sub_219BE6094();
    v100 = v85;
    sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
    sub_2191CF228(0, &qword_280E8F508, v83, MEMORY[0x277D83940]);
    sub_218D98E88();
    v86 = v91;
    v87 = v93;
    sub_219BF7164();
    sub_219BE87F4();
    (*(v84 + 8))(v86, v87);
    v88 = v94;
    v89 = v98;
    [v94 setImage_];
    v90 = sub_219BF53D4();

    [v88 setAccessibilityLabel_];

    sub_2191DA75C(v99, a2, v95);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D77A4(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v96 = a6;
  v99 = a3;
  v100 = a1;
  v101 = a2;
  v10 = sub_219BE60B4();
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x28223BE20](v10);
  v92 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView_imageView];
  sub_219BF5F64();
  [v12 setAccessibilityLabel_];
  v13 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel];
  [v13 setText_];
  v14 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView_titleLabel];
  [v14 setText_];
  [a4 setAccessibilityLabel_];
  v15 = type metadata accessor for TagView();
  v104.receiver = a4;
  v104.super_class = v15;
  objc_msgSendSuper2(&v104, sel_setAccessibilityValue_, 0);
  v16 = *(a5 + 40);
  v17 = *(a5 + 48);
  v18 = *(a5 + 56);
  v19 = &a4[OBJC_IVAR____TtC7NewsUI27TagView_titleFrame];
  *v19 = *(a5 + 32);
  *(v19 + 1) = v16;
  *(v19 + 2) = v17;
  *(v19 + 3) = v18;
  [v14 setFrame_];
  v20 = &a4[OBJC_IVAR____TtC7NewsUI27TagView_editingTitleFrame];
  v21 = *(a5 + 80);
  *v20 = *(a5 + 64);
  *(v20 + 1) = v21;
  [v12 setFrame_];
  v22 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView_imageBorder];
  [v22 setFrame_];
  v23 = *(a5 + 128);
  v24 = *(a5 + 136);
  v25 = *(a5 + 144);
  v26 = &a4[OBJC_IVAR____TtC7NewsUI27TagView_subtitleFrame];
  *v26 = *(a5 + 120);
  *(v26 + 1) = v23;
  *(v26 + 2) = v24;
  *(v26 + 3) = v25;
  [v13 setFrame_];
  v27 = &a4[OBJC_IVAR____TtC7NewsUI27TagView_editingSubtitleFrame];
  v28 = *(a5 + 168);
  *v27 = *(a5 + 152);
  *(v27 + 1) = v28;
  v29 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView_badgeView];
  v30 = *(a5 + 248);
  v31 = *(a5 + 256);
  v32 = *(a5 + 264);
  v33 = *(a5 + 272);
  [v29 setFrame_];
  v34 = *(a5 + 280);
  v35 = *(a5 + 288);
  v36 = *(a5 + 296);
  v37 = *(a5 + 304);
  v97 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView_countLabel];
  [v97 setFrame_];
  v38 = *(a5 + 312);
  v39 = *(a5 + 320);
  v40 = *(a5 + 328);
  v41 = *(a5 + 336);
  v98 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView_accessoryView];
  [v98 setFrame_];
  [v14 setNumberOfLines_];
  [v13 setNumberOfLines_];
  LODWORD(v42) = *(a5 + 112);
  [v14 ts:v42 setHyphenationFactor:?];
  LODWORD(v43) = *(a5 + 116);
  v102 = v13;
  [v13 ts:v43 setHyphenationFactor:?];
  v44 = [v29 layer];
  v105.origin.x = v30;
  v105.origin.y = v31;
  v105.size.width = v32;
  v105.size.height = v33;
  [v44 setCornerRadius_];

  __swift_project_boxed_opaque_existential_1(a7 + 7, a7[10]);
  v45 = *(a5 + 489);
  v46 = sub_219534AD0(v45);
  [v14 setFont_];

  v47 = objc_opt_self();
  v48 = [v47 labelColor];
  [v14 setTextColor_];

  [v14 setLineBreakMode_];
  v95 = v12;
  [v12 setContentMode_];
  if ((v45 & 1) == 0)
  {
    v49 = *__swift_project_boxed_opaque_existential_1(a7 + 7, a7[10]);
    v50 = [v47 systemBackgroundColor];
    [v22 setBackgroundColor_];

    v51 = [v22 layer];
    [*(v49 + 32) cornerRadius];
    [v51 setCornerRadius_];
  }

  __swift_project_boxed_opaque_existential_1(a7 + 7, a7[10]);
  sub_219534B5C(v45, v102, v99);
  v52 = [v47 systemPinkColor];
  v53 = *&v29[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color];
  *&v29[OBJC_IVAR____TtC7NewsUI216TagViewBadgeView_color] = v52;
  v54 = v52;

  if (v54)
  {
    v55 = [v29 traitCollection];
    v56 = [v54 resolvedColorWithTraitCollection_];

    [v29 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1(a7 + 7, a7[10]);
  v57 = sub_219534AD0(v45);
  v58 = v97;
  [v97 setFont_];

  v59 = [v47 secondaryLabelColor];
  [v58 setTextColor_];

  sub_218C5949C(a5, a4);
  CGRectGetHeight(*a5);
  v60 = objc_allocWithZone(sub_219BE7F64());
  v61 = sub_219BE7F44();
  sub_219BE7F54();
  v99 = v61;
  [v98 addSubview_];
  v62 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView__notificationSwitch];
  if (v62)
  {
    [v62 setHidden_];
  }

  v63 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
  v64 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView__likeButton];
  if (v64)
  {
    [v64 setIsAccessibilityElement_];
  }

  if (*&a4[OBJC_IVAR____TtC7NewsUI27TagView__dislikeButton])
  {
    v65 = *&a4[v63];
    if (v65)
    {
      v66 = *&a4[v63];
    }

    else
    {
      v67 = sub_218EC4E8C(0);
      v68 = *&a4[v63];
      *&a4[v63] = v67;
      v66 = v67;

      v65 = 0;
    }

    v69 = v65;
    [v66 setIsAccessibilityElement_];
  }

  v70 = *&a4[OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton];
  if (v70)
  {
    [v70 setIsAccessibilityElement_];
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v72 = objc_opt_self();
  v73 = [v72 bundleForClass_];
  sub_219BDB5E4();

  v74 = sub_219BF53D4();

  [v14 setText_];

  v75 = v101;
  if (v101)
  {
    v76 = v100;
    v77 = sub_219BF53D4();
  }

  else
  {
    v77 = 0;
    v76 = v100;
  }

  [v102 setText_];

  sub_2191D9078(v76, v75, a4, a5);
  sub_219BED0C4();
  v78 = objc_opt_self();
  v79 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v80 = sub_219BF6BB4();
  v81 = [objc_opt_self() configurationWithFont_];

  v82 = [v78 ts:v79 internalSystemImageNamed:v81 withConfiguration:?];
  if (v82)
  {
    v102 = [v82 imageWithRenderingMode_];

    v83 = [v72 bundleForClass_];
    v101 = sub_219BDB5E4();

    __swift_project_boxed_opaque_existential_1(a7 + 2, a7[5]);
    v84 = MEMORY[0x277D6D488];
    sub_2191CF228(0, &unk_280E8BF60, MEMORY[0x277D6D488], MEMORY[0x277D84560]);
    v85 = v93;
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_219C09EC0;
    sub_219BE60A4();
    sub_219BE6094();
    v103 = v86;
    sub_2191D9030(&qword_280EE5B00, MEMORY[0x277D6D488]);
    sub_2191CF228(0, &qword_280E8F508, v84, MEMORY[0x277D83940]);
    sub_218D98E88();
    v87 = v92;
    v88 = v94;
    sub_219BF7164();
    sub_219BE87F4();
    (*(v85 + 8))(v87, v88);
    v89 = v95;
    v90 = v102;
    [v95 setImage_];
    v91 = sub_219BF53D4();

    [v89 setAccessibilityLabel_];

    sub_2191D9908(a4, v96);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D8298(uint64_t a1, char *a2, uint64_t a3)
{
  v73 = sub_219BE5C64();
  v6 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a1 + 24);
  v77 = *(v68 + 16);
  sub_218D98F7C();
  sub_2191D9030(&qword_280E907E0, sub_218D98F7C);
  swift_unknownObjectRetain();
  sub_219BF6C74();
  swift_unknownObjectRelease();
  v69 = *(*(a3 + 472) + 16);
  v9 = *(v69 + 16);
  v74 = a2;
  if (v9)
  {
    v75 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v76 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v10 = (v69 + 32);
    v72 = *MEMORY[0x277D6D340];
    v70 = (v6 + 8);
    v71 = (v6 + 104);
    do
    {
      v16 = *v10++;
      v15 = v16;
      if (v16 == 2)
      {
        v11 = *&a2[v76];
        if (!v11)
        {
          type metadata accessor for AccessoryButton();
          v24 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v25 = qword_280EDB508;
          v26 = v24[qword_280EDB508];
          v24[qword_280EDB508] = 1;
          v20 = v24;
          sub_219BE61D4();
          if (v26 != v24[v25] || !*&v20[qword_280F620E8] || !*&v20[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v27 = v73;
          (*v71)(v8, v72, v73);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v70)(v8, v27);
          v28 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v74;
          v23 = v76;
          goto LABEL_20;
        }
      }

      else
      {
        if (v15)
        {
          goto LABEL_6;
        }

        v11 = *&a2[v75];
        if (!v11)
        {
          type metadata accessor for AccessoryButton();
          v17 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v18 = qword_280EDB508;
          v19 = v17[qword_280EDB508];
          v17[qword_280EDB508] = 0;
          v20 = v17;
          sub_219BE61D4();
          if (v19 != v17[v18] || !*&v20[qword_280F620E8] || !*&v20[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v21 = v73;
          (*v71)(v8, v72, v73);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v70)(v8, v21);
          v22 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v74;
          v23 = v75;
LABEL_20:
          v29 = *&a2[v23];
          *&a2[v23] = v20;
          v12 = v20;

          v11 = 0;
          goto LABEL_5;
        }
      }

      v12 = v11;
LABEL_5:
      v13 = *(a3 + 488);
      v14 = v11;
      sub_218EC2D64(v13);

LABEL_6:
      --v9;
    }

    while (v9);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v30 = 0;
    v31 = 0;
    v32 = v68;
  }

  else
  {
    v32 = v68;
    v30 = sub_21943359C();
    v31 = v33;
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_219C09EC0;
  v35 = [*(v32 + 16) displayName];
  v36 = sub_219BF5414();
  v38 = v37;

  *(v34 + 32) = v36;
  *(v34 + 40) = v38;
  *(v34 + 48) = v30;
  *(v34 + 56) = v31;
  sub_219BE5F34();
  v40 = v39;

  if (v40)
  {
    v41 = sub_219BF53D4();
  }

  else
  {
    v41 = 0;
  }

  v42 = v74;
  [v74 setAccessibilityLabel_];

  v43 = [*(v32 + 16) displayName];
  v44 = sub_219BF5414();
  v46 = v45;

  v47 = &v42[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v47 = v44;
  v47[1] = v46;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = objc_opt_self();
  v50 = [v49 bundleForClass_];
  sub_219BDB5E4();

  v51 = v69;
  if (sub_219093144(0, v69) && sub_219093144(1u, v51))
  {
    v52 = *(v32 + 27);
    if (v52 < 0)
    {
      if (v52)
      {
        v59 = [v49 bundleForClass_];
        v57 = sub_219BDB5E4();
        v58 = v60;
      }

      else
      {
        v57 = 0;
        v58 = 0;
      }

      v54 = 0;
      v56 = 0;
    }

    else
    {
      v53 = [v49 bundleForClass_];
      v54 = sub_219BDB5E4();
      v56 = v55;

      v57 = 0;
      v58 = 0;
    }

    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_219C0B8C0;
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = v54;
    *(v61 + 56) = v56;
    *(v61 + 64) = v57;
    *(v61 + 72) = v58;
    sub_219BE5F34();
    v63 = v62;

    if (v63)
    {
      v64 = sub_219BF53D4();
    }

    else
    {
      v64 = 0;
    }

    v65 = v74;
    v66 = type metadata accessor for TagView();
    v78.receiver = v65;
    v78.super_class = v66;
    objc_msgSendSuper2(&v78, sel_setAccessibilityValue_, v64);
  }
}

void sub_2191D8B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v26);
  v5 = v27;
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_218D9828C(v26);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v7 = objc_opt_self();
  v8 = *(a1 + 24);
  sub_219534DC0(v6, [v7 isTagAllowedInContentStoreFront_], v5 & 1);
  v9 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v10 = [v7 isTagAllowedInContentStoreFront_];
  v11 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v12 = qword_280F617F8;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_12:
    v16 = 0.7;
    if (v10)
    {
      v16 = 1.0;
    }

    [v9 setAlpha_];
    if (v5)
    {
      v17 = [objc_opt_self() whiteColor];
      [v9 setTintColor_];
    }

    else
    {
      [v9 setTintColor_];
    }

    goto LABEL_19;
  }

  v12 = [objc_opt_self() labelColor];
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_6:
  v13 = [v9 image];
  if (v13)
  {
    v14 = v13;
    if ([v13 renderingMode] == 2)
    {
      v15 = [objc_opt_self() placeholderTextColor];
      [v9 setTintColor_];

      [v9 setAlpha_];
      goto LABEL_19;
    }
  }

  [v9 setAlpha_];
LABEL_19:

  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v18 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
  sub_21943391C();
  if (v19)
  {
  }

  else
  {
    v25 = *(v8 + 27);
    if (v25 & 0x80000000) == 0 && (v25)
    {
      sub_2186C6148(0, &qword_280E8DA80);
    }
  }

  v20 = [v7 isTagAllowedInContentStoreFront_];
  v21 = objc_opt_self();
  if (v20)
  {
    v22 = [v21 secondaryLabelColor];
    if (v5)
    {
      v23 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v24 = [v22 resolvedColorWithTraitCollection_];

      v22 = [v24 colorWithAlphaComponent_];
    }
  }

  else
  {
    v22 = [v21 placeholderTextColor];
  }

  [v18 setTextColor_];
}

uint64_t sub_2191D9030(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2191D9078(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v59 = a1;
  v65 = sub_219BE5C64();
  v7 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  v10 = objc_opt_self();
  v11 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v12 = sub_219BF6BB4();
  v13 = [objc_opt_self() configurationWithFont_];

  v14 = [v10 ts:v11 internalSystemImageNamed:v13 withConfiguration:?];
  if (v14)
  {

    [a3 setAccessibilityIdentifier_];
    v60 = *(*(a4 + 472) + 16);
    v15 = *(v60 + 16);
    v66 = a3;
    if (v15)
    {
      v67 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v68 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v16 = (v60 + 32);
      v63 = *MEMORY[0x277D6D340];
      v61 = (v7 + 8);
      v62 = (v7 + 104);
      v64 = a2;
      do
      {
        v22 = *v16++;
        v21 = v22;
        if (v22 == 2)
        {
          v17 = *&a3[v68];
          if (!v17)
          {
            type metadata accessor for AccessoryButton();
            v30 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v31 = qword_280EDB508;
            v32 = v30[qword_280EDB508];
            v30[qword_280EDB508] = 1;
            v26 = v30;
            sub_219BE61D4();
            if (v32 != v30[v31] || !*&v26[qword_280F620E8] || !*&v26[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v33 = v65;
            (*v62)(v9, v63, v65);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v61)(v9, v33);
            v34 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a3 = v66;
            v29 = v68;
            goto LABEL_21;
          }
        }

        else
        {
          if (v21)
          {
            goto LABEL_7;
          }

          v17 = *&a3[v67];
          if (!v17)
          {
            type metadata accessor for AccessoryButton();
            v23 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v24 = qword_280EDB508;
            v25 = v23[qword_280EDB508];
            v23[qword_280EDB508] = 0;
            v26 = v23;
            sub_219BE61D4();
            if (v25 != v23[v24] || !*&v26[qword_280F620E8] || !*&v26[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v27 = v65;
            (*v62)(v9, v63, v65);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v61)(v9, v27);
            v28 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a3 = v66;
            v29 = v67;
LABEL_21:
            v35 = *&a3[v29];
            *&a3[v29] = v26;
            v18 = v26;

            v17 = 0;
            a2 = v64;
            goto LABEL_6;
          }
        }

        v18 = v17;
LABEL_6:
        v19 = *(a4 + 488);
        v20 = v17;
        sub_218EC2D64(v19);

LABEL_7:
        --v15;
      }

      while (v15);
    }

    if (CGRectIsEmpty(*(a4 + 120)))
    {
      v36 = 0;
      a2 = 0;
    }

    else
    {

      v36 = v59;
    }

    sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_219C09EC0;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = objc_opt_self();
    v40 = [v39 bundleForClass_];
    v41 = sub_219BDB5E4();
    v43 = v42;

    *(v37 + 32) = v41;
    *(v37 + 40) = v43;
    *(v37 + 48) = v36;
    *(v37 + 56) = a2;
    sub_219BE5F34();
    v45 = v44;

    if (v45)
    {
      v46 = sub_219BF53D4();
    }

    else
    {
      v46 = 0;
    }

    v47 = v66;
    [v66 setAccessibilityLabel_];

    v48 = [v39 bundleForClass_];
    v49 = sub_219BDB5E4();
    v51 = v50;

    v52 = &v47[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
    swift_beginAccess();
    *v52 = v49;
    v52[1] = v51;

    v53 = [v39 bundleForClass_];
    sub_219BDB5E4();

    v54 = v60;
    if (sub_219093144(0, v60) && sub_219093144(1u, v54))
    {
      sub_219BE5F34();
      if (v55)
      {
        v56 = sub_219BF53D4();
      }

      else
      {
        v56 = 0;
      }

      v57 = type metadata accessor for TagView();
      v69.receiver = v47;
      v69.super_class = v57;
      objc_msgSendSuper2(&v69, sel_setAccessibilityValue_, v56);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D9908(uint64_t a1, uint64_t a2)
{
  sub_218D98194(a2, v23);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(v23, v24);
    swift_beginAccess();
    swift_beginAccess();
    v3 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v23);
    v4 = *(a1 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
    if (v3)
    {
      v5 = 1;
      v6 = &selRef_whiteColor;
      goto LABEL_6;
    }
  }

  else
  {
    sub_218D9828C(v23);
    v4 = *(a1 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  }

  v5 = 0;
  v6 = &selRef_labelColor;
LABEL_6:
  v7 = [objc_opt_self() *v6];
  [v4 setTextColor_];

  v8 = *(a1 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v9 = [v4 isEnabled];
  if (sub_219BED0C4())
  {
    v10 = [objc_opt_self() labelColor];
    if (!v9)
    {
LABEL_8:
      v11 = [v8 image];
      if (v11)
      {
        v12 = v11;
        if ([v11 renderingMode] == 2)
        {
          v13 = [objc_opt_self() placeholderTextColor];
          [v8 setTintColor_];

          [v8 setAlpha_];
LABEL_16:

          goto LABEL_20;
        }
      }

      [v8 setAlpha_];
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617F8;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  [v8 setAlpha_];
  if (v5)
  {
    v12 = [objc_opt_self() whiteColor];
    [v8 setTintColor_];
    goto LABEL_16;
  }

  [v8 setTintColor_];
LABEL_20:

  sub_219BED0C4();
  v14 = objc_opt_self();
  v15 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v16 = sub_219BF6BB4();
  v17 = [objc_opt_self() configurationWithFont_];

  v18 = [v14 ts:v15 internalSystemImageNamed:v17 withConfiguration:?];
  if (v18)
  {

    [*(a1 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [*(a1 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
    [*(a1 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v19 = *(a1 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v20 = [objc_opt_self() secondaryLabelColor];
    if (v5)
    {
      v21 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v22 = [v20 resolvedColorWithTraitCollection_];

      v20 = [v22 colorWithAlphaComponent_];
    }

    [v19 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2191D9DFC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v66 = a2;
  v67 = a1;
  v73 = sub_219BE5C64();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v11 = sub_219BF6BB4();
  v12 = [objc_opt_self() configurationWithFont_];

  v13 = sub_219BF53D4();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  if (v14)
  {

    [a4 setAccessibilityIdentifier_];
    v68 = *(*(a5 + 472) + 16);
    v15 = *(v68 + 16);
    v74 = a4;
    if (v15)
    {
      v75 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v76 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v16 = (v68 + 32);
      v71 = *MEMORY[0x277D6D340];
      v69 = (v8 + 8);
      v70 = (v8 + 104);
      v72 = a3;
      do
      {
        v22 = *v16++;
        v21 = v22;
        if (v22 == 2)
        {
          v17 = *&a4[v76];
          if (!v17)
          {
            type metadata accessor for AccessoryButton();
            v30 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v31 = qword_280EDB508;
            v32 = v30[qword_280EDB508];
            v30[qword_280EDB508] = 1;
            v26 = v30;
            sub_219BE61D4();
            if (v32 != v30[v31] || !*&v26[qword_280F620E8] || !*&v26[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v33 = v73;
            (*v70)(v10, v71, v73);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v69)(v10, v33);
            v34 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a4 = v74;
            v29 = v76;
            goto LABEL_21;
          }
        }

        else
        {
          if (v21)
          {
            goto LABEL_7;
          }

          v17 = *&a4[v75];
          if (!v17)
          {
            type metadata accessor for AccessoryButton();
            v23 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v24 = qword_280EDB508;
            v25 = v23[qword_280EDB508];
            v23[qword_280EDB508] = 0;
            v26 = v23;
            sub_219BE61D4();
            if (v25 != v23[v24] || !*&v26[qword_280F620E8] || !*&v26[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v27 = v73;
            (*v70)(v10, v71, v73);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v69)(v10, v27);
            v28 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a4 = v74;
            v29 = v75;
LABEL_21:
            v35 = *&a4[v29];
            *&a4[v29] = v26;
            v18 = v26;

            v17 = 0;
            a3 = v72;
            goto LABEL_6;
          }
        }

        v18 = v17;
LABEL_6:
        v19 = *(a5 + 488);
        v20 = v17;
        sub_218EC2D64(v19);

LABEL_7:
        --v15;
      }

      while (v15);
    }

    if (CGRectIsEmpty(*(a5 + 120)))
    {
      v36 = 0;
      v37 = 0;
    }

    else
    {

      v37 = a3;
      v36 = v66;
    }

    sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
    v76 = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09EC0;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();
    v42 = [v41 bundleForClass_];
    v43 = sub_219BDB5E4();
    v45 = v44;

    *(v39 + 32) = v43;
    *(v39 + 40) = v45;
    *(v39 + 48) = v36;
    *(v39 + 56) = v37;
    sub_219BE5F34();
    v47 = v46;

    if (v47)
    {
      v48 = sub_219BF53D4();
    }

    else
    {
      v48 = 0;
    }

    v49 = v74;
    [v74 setAccessibilityLabel_];

    v50 = [v41 bundleForClass_];
    v51 = sub_219BDB5E4();
    v53 = v52;

    v54 = &v49[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
    swift_beginAccess();
    *v54 = v51;
    v54[1] = v53;

    v55 = [v41 bundleForClass_];
    v56 = sub_219BDB5E4();
    v58 = v57;

    v59 = v68;
    if (sub_219093144(0, v68) && sub_219093144(1u, v59))
    {
      if (!v67)
      {

        v56 = 0;
        v58 = 0;
      }

      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_219C0B8C0;
      *(v60 + 32) = v56;
      *(v60 + 40) = v58;
      *(v60 + 48) = 0u;
      *(v60 + 64) = 0u;
      sub_219BE5F34();
      v62 = v61;

      if (v62)
      {
        v63 = sub_219BF53D4();
      }

      else
      {
        v63 = 0;
      }

      v65 = type metadata accessor for TagView();
      v77.receiver = v49;
      v77.super_class = v65;
      objc_msgSendSuper2(&v77, sel_setAccessibilityValue_, v63);
    }

    else
    {
      if (!v67)
      {

        return;
      }

      v63 = sub_219BF53D4();

      v64 = type metadata accessor for TagView();
      v78.receiver = v49;
      v78.super_class = v64;
      objc_msgSendSuper2(&v78, sel_setAccessibilityValue_, v63);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DA75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v25);
  v5 = v26;
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1(v25, v26);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_218D9828C(v25);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v7 = *(a1 + 32);
  sub_219534DC0(v6, *(a1 + 32), v5 & 1);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v9 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617F8;
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0.7;
    if (v7)
    {
      v14 = 1.0;
    }

    [v8 setAlpha_];
    if (v5)
    {
      v15 = [objc_opt_self() whiteColor];
      [v8 setTintColor_];
    }

    else
    {
      [v8 setTintColor_];
    }

    goto LABEL_19;
  }

  v10 = [objc_opt_self() labelColor];
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = [v8 image];
  if (v11)
  {
    v12 = v11;
    if ([v11 renderingMode] == 2)
    {
      v13 = [objc_opt_self() placeholderTextColor];
      [v8 setTintColor_];

      [v8 setAlpha_];
      goto LABEL_19;
    }
  }

  [v8 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v16 = sub_219BF6BB4();
  v17 = [objc_opt_self() configurationWithFont_];

  v18 = sub_219BF53D4();
  v19 = [objc_opt_self() systemImageNamed:v18 withConfiguration:v17];

  if (v19)
  {

    sub_2191DE034(a1, a2, &type metadata for FollowingSavedModel, &off_282A95760);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v20 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v21 = objc_opt_self();
    if (v7)
    {
      v22 = [v21 secondaryLabelColor];
      if (v5)
      {
        v23 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v24 = [v22 resolvedColorWithTraitCollection_];

        v22 = [v24 colorWithAlphaComponent_];
      }
    }

    else
    {
      v22 = [v21 placeholderTextColor];
    }

    [v20 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DAC40(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v58 = a1;
  v64 = sub_219BE5C64();
  v7 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v10 = sub_219BF6BB4();
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = sub_219BF53D4();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  if (v13)
  {

    [a3 setAccessibilityIdentifier_];
    v59 = *(*(a4 + 472) + 16);
    v14 = *(v59 + 16);
    v65 = a3;
    if (v14)
    {
      v66 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v67 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v15 = (v59 + 32);
      v62 = *MEMORY[0x277D6D340];
      v60 = (v7 + 8);
      v61 = (v7 + 104);
      v63 = a2;
      do
      {
        v21 = *v15++;
        v20 = v21;
        if (v21 == 2)
        {
          v16 = *&a3[v67];
          if (!v16)
          {
            type metadata accessor for AccessoryButton();
            v29 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v30 = qword_280EDB508;
            v31 = v29[qword_280EDB508];
            v29[qword_280EDB508] = 1;
            v25 = v29;
            sub_219BE61D4();
            if (v31 != v29[v30] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v32 = v64;
            (*v61)(v9, v62, v64);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v60)(v9, v32);
            v33 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a3 = v65;
            v28 = v67;
            goto LABEL_21;
          }
        }

        else
        {
          if (v20)
          {
            goto LABEL_7;
          }

          v16 = *&a3[v66];
          if (!v16)
          {
            type metadata accessor for AccessoryButton();
            v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v23 = qword_280EDB508;
            v24 = v22[qword_280EDB508];
            v22[qword_280EDB508] = 0;
            v25 = v22;
            sub_219BE61D4();
            if (v24 != v22[v23] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v26 = v64;
            (*v61)(v9, v62, v64);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v60)(v9, v26);
            v27 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a3 = v65;
            v28 = v66;
LABEL_21:
            v34 = *&a3[v28];
            *&a3[v28] = v25;
            v17 = v25;

            v16 = 0;
            a2 = v63;
            goto LABEL_6;
          }
        }

        v17 = v16;
LABEL_6:
        v18 = *(a4 + 488);
        v19 = v16;
        sub_218EC2D64(v18);

LABEL_7:
        --v14;
      }

      while (v14);
    }

    if (CGRectIsEmpty(*(a4 + 120)))
    {
      v35 = 0;
      a2 = 0;
    }

    else
    {

      v35 = v58;
    }

    sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_219C09EC0;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = objc_opt_self();
    v39 = [v38 bundleForClass_];
    v40 = sub_219BDB5E4();
    v42 = v41;

    *(v36 + 32) = v40;
    *(v36 + 40) = v42;
    *(v36 + 48) = v35;
    *(v36 + 56) = a2;
    sub_219BE5F34();
    v44 = v43;

    if (v44)
    {
      v45 = sub_219BF53D4();
    }

    else
    {
      v45 = 0;
    }

    v46 = v65;
    [v65 setAccessibilityLabel_];

    v47 = [v38 bundleForClass_];
    v48 = sub_219BDB5E4();
    v50 = v49;

    v51 = &v46[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
    swift_beginAccess();
    *v51 = v48;
    v51[1] = v50;

    v52 = [v38 bundleForClass_];
    sub_219BDB5E4();

    v53 = v59;
    if (sub_219093144(0, v59) && sub_219093144(1u, v53))
    {
      sub_219BE5F34();
      if (v54)
      {
        v55 = sub_219BF53D4();
      }

      else
      {
        v55 = 0;
      }

      v56 = type metadata accessor for TagView();
      v68.receiver = v46;
      v68.super_class = v56;
      objc_msgSendSuper2(&v68, sel_setAccessibilityValue_, v55);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DB4DC(char a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v24);
  v5 = v25;
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_218D9828C(v24);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  sub_219534DC0(v6, a1 & 1, v5 & 1);
  v7 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v8 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v9 = qword_280F617F8;
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 0.7;
    if (a1)
    {
      v13 = 1.0;
    }

    [v7 setAlpha_];
    if (v5)
    {
      v14 = [objc_opt_self() whiteColor];
      [v7 setTintColor_];
    }

    else
    {
      [v7 setTintColor_];
    }

    goto LABEL_19;
  }

  v9 = [objc_opt_self() labelColor];
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = [v7 image];
  if (v10)
  {
    v11 = v10;
    if ([v10 renderingMode] == 2)
    {
      v12 = [objc_opt_self() placeholderTextColor];
      [v7 setTintColor_];

      [v7 setAlpha_];
      goto LABEL_19;
    }
  }

  [v7 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v15 = sub_219BF6BB4();
  v16 = [objc_opt_self() configurationWithFont_];

  v17 = sub_219BF53D4();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  if (v18)
  {

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v19 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v20 = objc_opt_self();
    if (a1)
    {
      v21 = [v20 secondaryLabelColor];
      if (v5)
      {
        v22 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v23 = [v21 resolvedColorWithTraitCollection_];

        v21 = [v23 colorWithAlphaComponent_];
      }
    }

    else
    {
      v21 = [v20 placeholderTextColor];
    }

    [v19 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DB9C0(uint64_t a1, char *a2, uint64_t a3)
{
  v75 = a1;
  v80 = sub_219BE5C64();
  v5 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  v8 = objc_opt_self();
  v9 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v10 = sub_219BF6BB4();
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = [v8 ts:v9 internalSystemImageNamed:v11 withConfiguration:?];
  if (!v12)
  {
    __break(1u);
    return;
  }

  [a2 setAccessibilityIdentifier_];
  v76 = *(*(a3 + 472) + 16);
  v13 = *(v76 + 16);
  v81 = a2;
  if (v13)
  {
    v82 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v83 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v14 = (v76 + 32);
    v79 = *MEMORY[0x277D6D340];
    v77 = (v5 + 8);
    v78 = (v5 + 104);
    do
    {
      v20 = *v14++;
      v19 = v20;
      if (v20 == 2)
      {
        v15 = *&a2[v83];
        if (!v15)
        {
          type metadata accessor for AccessoryButton();
          v28 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v29 = qword_280EDB508;
          v30 = v28[qword_280EDB508];
          v28[qword_280EDB508] = 1;
          v24 = v28;
          sub_219BE61D4();
          if (v30 != v28[v29] || !*&v24[qword_280F620E8] || !*&v24[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v31 = v80;
          (*v78)(v7, v79, v80);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v77)(v7, v31);
          v32 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v81;
          v27 = v83;
          goto LABEL_21;
        }
      }

      else
      {
        if (v19)
        {
          goto LABEL_7;
        }

        v15 = *&a2[v82];
        if (!v15)
        {
          type metadata accessor for AccessoryButton();
          v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v22 = qword_280EDB508;
          v23 = v21[qword_280EDB508];
          v21[qword_280EDB508] = 0;
          v24 = v21;
          sub_219BE61D4();
          if (v23 != v21[v22] || !*&v24[qword_280F620E8] || !*&v24[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v25 = v80;
          (*v78)(v7, v79, v80);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v77)(v7, v25);
          v26 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v81;
          v27 = v82;
LABEL_21:
          v33 = *&a2[v27];
          *&a2[v27] = v24;
          v16 = v24;

          v15 = 0;
          goto LABEL_6;
        }
      }

      v16 = v15;
LABEL_6:
      v17 = *(a3 + 488);
      v18 = v15;
      sub_218EC2D64(v17);

LABEL_7:
      --v13;
    }

    while (v13);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v34 = 0;
    v35 = 0;
    v36 = v75;
  }

  else
  {
    v36 = v75;
    v34 = *(v75 + 8);
    v35 = *(v75 + 16);
  }

  v37 = v76;
  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v83 = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09EC0;
  sub_219BF2394();
  v40 = sub_219BF2364();
  v41 = MEMORY[0x21CEC9110]();
  v43 = v42;

  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  *(v39 + 48) = v34;
  *(v39 + 56) = v35;
  sub_219BE5F34();
  v45 = v44;

  if (v45)
  {
    v46 = sub_219BF53D4();
  }

  else
  {
    v46 = 0;
  }

  v47 = v81;
  [v81 setAccessibilityLabel_];

  v48 = sub_219BF2364();
  v49 = MEMORY[0x21CEC9110]();
  v51 = v50;

  v52 = &v47[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v52 = v49;
  v52[1] = v51;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = objc_opt_self();
  v55 = [v54 bundleForClass_];
  v56 = sub_219BDB5E4();
  v58 = v57;

  if (!sub_219093144(0, v37) || !sub_219093144(1u, v37))
  {
    if (*v36)
    {
      v63 = sub_219BF53D4();

      v64 = type metadata accessor for TagView();
      v85.receiver = v81;
      v85.super_class = v64;
      objc_msgSendSuper2(&v85, sel_setAccessibilityValue_, v63);
    }

    else
    {
    }

    return;
  }

  v59 = *(v36 + 34);
  if ((v59 & 0x60) != 0)
  {
    if (!*v36)
    {

      v82 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v56 = 0;
      v58 = 0;
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  if ((v59 & 0x80000000) == 0)
  {
    if (!*v36)
    {

      v56 = 0;
      v58 = 0;
    }

    v65 = [v54 bundleForClass_];
    v61 = sub_219BDB5E4();
    v62 = v66;

    v82 = 0;
    v60 = 0;
    goto LABEL_42;
  }

  if (!*v36)
  {

    v58 = 0;
    v56 = 0;
    v82 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    if ((v59 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

  if (v59)
  {
LABEL_51:
    v73 = [v54 bundleForClass_];
    v82 = sub_219BDB5E4();
    v60 = v74;

    goto LABEL_33;
  }

LABEL_32:
  v82 = 0;
  v60 = 0;
LABEL_33:
  v61 = 0;
  v62 = 0;
LABEL_42:
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_219C0B8C0;
  *(v67 + 32) = v56;
  *(v67 + 40) = v58;
  *(v67 + 48) = v61;
  *(v67 + 56) = v62;
  *(v67 + 64) = v82;
  *(v67 + 72) = v60;
  sub_219BE5F34();
  v69 = v68;

  if (v69)
  {
    v70 = sub_219BF53D4();
  }

  else
  {
    v70 = 0;
  }

  v71 = v81;
  v72 = type metadata accessor for TagView();
  v84.receiver = v71;
  v84.super_class = v72;
  objc_msgSendSuper2(&v84, sel_setAccessibilityValue_, v70);
}

uint64_t sub_2191DC400(uint64_t a1, uint64_t a2)
{
  v16[3] = &type metadata for FollowingSharedWithYouModel;
  v16[4] = &off_282A8F9F0;
  v4 = swift_allocObject();
  v16[0] = v4;
  v5 = *a1;
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  *(v4 + 48) = *(a1 + 32);
  v7 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for FollowingSharedWithYouModel);
  if (v5)
  {
    v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v9 = *v7;
    v10 = *v7 == 0;
    v11 = *v7 != 0;
    sub_2189CEED0(a1, v15);
    sub_2190D8F20(v9, 0, v11 | (v10 << 8));
    v12 = sub_219BF53D4();

    [v8 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v8 setHidden_];
  }

  else
  {
    v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView);
    sub_2189CEED0(a1, v15);
    [v13 setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_2191DC578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v26);
  v5 = v27;
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_218D9828C(v26);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v7 = *(a1 + 35);
  sub_219534DC0(v6, *(a1 + 35), v5 & 1);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v9 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617F8;
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0.7;
    if (v7)
    {
      v14 = 1.0;
    }

    [v8 setAlpha_];
    if (v5)
    {
      v15 = [objc_opt_self() whiteColor];
      [v8 setTintColor_];
    }

    else
    {
      [v8 setTintColor_];
    }

    goto LABEL_19;
  }

  v10 = [objc_opt_self() labelColor];
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = [v8 image];
  if (v11)
  {
    v12 = v11;
    if ([v11 renderingMode] == 2)
    {
      v13 = [objc_opt_self() placeholderTextColor];
      [v8 setTintColor_];

      [v8 setAlpha_];
      goto LABEL_19;
    }
  }

  [v8 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  v16 = objc_opt_self();
  v17 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v18 = sub_219BF6BB4();
  v19 = [objc_opt_self() configurationWithFont_];

  v20 = [v16 ts:v17 internalSystemImageNamed:v19 withConfiguration:?];
  if (v20)
  {

    sub_2191DC400(a1, a2);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v21 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v22 = objc_opt_self();
    if (v7)
    {
      v23 = [v22 secondaryLabelColor];
      if (v5)
      {
        v24 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v25 = [v23 resolvedColorWithTraitCollection_];

        v23 = [v25 colorWithAlphaComponent_];
      }
    }

    else
    {
      v23 = [v22 placeholderTextColor];
    }

    [v21 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}