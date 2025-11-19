void sub_1D6D8BFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B5A498(255, qword_1EDF1A6A0);
    v7 = sub_1D5B5A498(255, &qword_1EDF1A690);
    v8 = sub_1D5E2A738(&qword_1EDF04370, qword_1EDF1A6A0);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D6D8C0AC()
{
  if (!qword_1EDF04060)
  {
    type metadata accessor for PuzzleStatistic();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04060);
    }
  }
}

void sub_1D6D8C114()
{
  if (!qword_1EDF03FD0)
  {
    type metadata accessor for SportsScoreDataVisualization();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03FD0);
    }
  }
}

void sub_1D6D8C17C()
{
  if (!qword_1EDF03FB8)
  {
    type metadata accessor for SportsStandingDataVisualization();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03FB8);
    }
  }
}

void sub_1D6D8C1E4()
{
  if (!qword_1EC895A10)
  {
    type metadata accessor for SportsBracketGroupDataVisualization();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895A10);
    }
  }
}

void sub_1D6D8C24C()
{
  if (!qword_1EC895A20)
  {
    type metadata accessor for SportsBoxScoreDataVisualization();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895A20);
    }
  }
}

void sub_1D6D8C2B4()
{
  if (!qword_1EC895A28)
  {
    type metadata accessor for SportsLineScoreDataVisualization();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895A28);
    }
  }
}

void sub_1D6D8C31C()
{
  if (!qword_1EC895A30)
  {
    type metadata accessor for SportsInjuryReportDataVisualization();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895A30);
    }
  }
}

void sub_1D6D8C384()
{
  if (!qword_1EC895A38)
  {
    type metadata accessor for SportsKeyPlayerDataVisualization();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895A38);
    }
  }
}

void sub_1D6D8C3EC()
{
  if (!qword_1EDF03ED0)
  {
    sub_1D5B5534C(255, &qword_1EDF3C700);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03ED0);
    }
  }
}

void sub_1D6D8C464()
{
  if (!qword_1EDF03EE8)
  {
    sub_1D5B5534C(255, &qword_1EDF3C750);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03EE8);
    }
  }
}

void sub_1D6D8C4DC()
{
  if (!qword_1EDF1A370)
  {
    sub_1D5B5534C(255, &qword_1EDF3C770);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A370);
    }
  }
}

void sub_1D6D8C554()
{
  if (!qword_1EDF03EC8)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6C0);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03EC8);
    }
  }
}

void sub_1D6D8C5CC()
{
  if (!qword_1EDF1A360)
  {
    sub_1D5B5534C(255, &qword_1EDF3C720);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A360);
    }
  }
}

void sub_1D6D8C644()
{
  if (!qword_1EDF1A478)
  {
    type metadata accessor for FormatService.ThemePackage(255);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A478);
    }
  }
}

void sub_1D6D8C6DC()
{
  if (!qword_1EC895A40)
  {
    type metadata accessor for FormatContentResource.Resolved();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895A40);
    }
  }
}

void sub_1D6D8C75C()
{
  if (!qword_1EDF03FF8)
  {
    type metadata accessor for FormatWebArchiveResource.Resolved();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03FF8);
    }
  }
}

uint64_t sub_1D6D8C7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D8C85C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6D8C8C4()
{
  if (!qword_1EC895A50)
  {
    sub_1D5E9D658();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895A50);
    }
  }
}

void sub_1D6D8C92C()
{
  if (!qword_1EDF04010)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04010);
    }
  }
}

void sub_1D6D8C98C()
{
  if (!qword_1EDF04040)
  {
    type metadata accessor for FormatPuzzleType(255);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04040);
    }
  }
}

void sub_1D6D8C9F4()
{
  if (!qword_1EDF04070)
  {
    type metadata accessor for FormatPuzzle();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04070);
    }
  }
}

void sub_1D6D8CA5C()
{
  if (!qword_1EDF1A3A8)
  {
    sub_1D5B59654(255, &qword_1EDF1B170, sub_1D5C2AB28, MEMORY[0x1E69E62F8]);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A3A8);
    }
  }
}

void sub_1D6D8CAF4()
{
  if (!qword_1EDF04000)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04000);
    }
  }
}

BOOL static FormatCodingFormatFlexBoxNodeLayoutStrategy.shouldEncode(wrappedValue:)(uint64_t a1)
{
  v2 = _s8NewsFeed012FormatCodingC25FlexBoxNodeLayoutStrategyV12defaultValueAA0cefgH0CvgZ_0();
  LOBYTE(a1) = _s8NewsFeed23FormatFlexBoxNodeLayoutC2eeoiySbAC_ACtFZ_0(a1, v2);

  return (a1 & 1) == 0;
}

uint64_t sub_1D6D8CBB0@<X0>(uint64_t *a1@<X8>)
{
  result = _s8NewsFeed012FormatCodingC25FlexBoxNodeLayoutStrategyV12defaultValueAA0cefgH0CvgZ_0();
  *a1 = result;
  return result;
}

BOOL sub_1D6D8CBD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = _s8NewsFeed012FormatCodingC25FlexBoxNodeLayoutStrategyV12defaultValueAA0cefgH0CvgZ_0();
  LOBYTE(v1) = _s8NewsFeed23FormatFlexBoxNodeLayoutC2eeoiySbAC_ACtFZ_0(v1, v2);

  return (v1 & 1) == 0;
}

BOOL static FormatCodingFlexBoxNodeNoWrapStrategy.shouldEncode(wrappedValue:)(uint64_t a1)
{
  v1 = sub_1D6366208(*a1, *(a1 + 8), 0, MEMORY[0x1E69E7CC0]);

  return (v1 & 1) == 0;
}

BOOL sub_1D6D8CCC4(uint64_t a1)
{
  v1 = sub_1D6366208(*a1, *(a1 + 8), 0, MEMORY[0x1E69E7CC0]);

  return (v1 & 1) == 0;
}

uint64_t sub_1D6D8CE00(unsigned __int8 *a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t, void))
{
  v4 = *(a1 + 1);
  if (a2(*a1, 0))
  {
    v5 = a3(v4, MEMORY[0x1E69E7CC0]);

    if (v5)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1D6D8CEB0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), uint64_t (*a5)(uint64_t, void))
{
  v6 = *(a1 + 1);
  if (a4(*a1, 0))
  {
    v7 = a5(v6, MEMORY[0x1E69E7CC0]);

    if (v7)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

BOOL static FormatCodingFlexBoxNodeDisplayInlineStrategy.shouldEncode(wrappedValue:)(uint64_t a1)
{
  v1 = sub_1D6366360(*a1, *(a1 + 8), 1, MEMORY[0x1E69E7CC0]);

  return (v1 & 1) == 0;
}

BOOL sub_1D6D8CFB8(uint64_t a1)
{
  v1 = sub_1D6366360(*a1, *(a1 + 8), 1, MEMORY[0x1E69E7CC0]);

  return (v1 & 1) == 0;
}

void static FormatCodingFlexBoxNodeItemFlexFixedStrategy.defaultValue.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 2;
  a1[1] = v1;
}

BOOL static FormatCodingFlexBoxNodeItemFlexFixedStrategy.shouldEncode(wrappedValue:)(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 2)
  {
    v2 = 2;
LABEL_7:
    sub_1D5DEA234(v2);
    sub_1D5CBF568(v1);
    sub_1D5CBF568(2uLL);
    sub_1D5CBF568(2uLL);

    return 1;
  }

  if (*a1 != 2)
  {
    sub_1D5DEA234(2uLL);
    v2 = v1;
    goto LABEL_7;
  }

  v3 = a1[1];
  sub_1D5CBF568(2uLL);
  sub_1D5CBF568(2uLL);

  v4 = MEMORY[0x1E69E7CC0];

  v5 = sub_1D6354AF4(v3, v4);

  sub_1D5CBF568(2uLL);

  return (v5 & 1) == 0;
}

void sub_1D6D8D100(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = 2;
  a1[1] = v1;
}

BOOL sub_1D6D8D114(uint64_t a1)
{
  v1 = sub_1D6366448(*a1, *(a1 + 8), 2uLL, MEMORY[0x1E69E7CC0]);
  sub_1D5CBF568(2uLL);

  return (v1 & 1) == 0;
}

uint64_t _s8NewsFeed012FormatCodingC25FlexBoxNodeLayoutStrategyV12defaultValueAA0cefgH0CvgZ_0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1D5F3FE24();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7273AE0;
  *(v1 + 32) = v0;
  *(v1 + 40) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  type metadata accessor for FormatFlexBoxNodeLayout();
  v4 = swift_allocObject();
  swift_beginAccess();
  *(v4 + 16) = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;
  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 56) = v5;
  swift_beginAccess();
  *(v4 + 64) = 0;
  *(v4 + 72) = v5;
  swift_beginAccess();
  *(v4 + 80) = 0;
  *(v4 + 88) = v5;
  swift_beginAccess();
  *(v4 + 96) = 0;
  *(v4 + 104) = v5;
  swift_beginAccess();
  *(v4 + 112) = v1;
  *(v4 + 120) = v5;
  swift_beginAccess();
  *(v4 + 128) = v3;
  *(v4 + 136) = v5;
  swift_beginAccess();
  *(v4 + 144) = xmmword_1D728CF30;
  *(v4 + 160) = 0;
  *(v4 + 168) = v5;
  return v4;
}

unint64_t sub_1D6D8D354(uint64_t a1)
{
  result = sub_1D6D8D37C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D37C()
{
  result = qword_1EC895A58;
  if (!qword_1EC895A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A58);
  }

  return result;
}

uint64_t sub_1D6D8D3D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatFlexBoxNodeLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6D8D414(uint64_t a1)
{
  result = sub_1D6D8D43C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D43C()
{
  result = qword_1EC895A60;
  if (!qword_1EC895A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A60);
  }

  return result;
}

unint64_t sub_1D6D8D490(uint64_t a1)
{
  result = sub_1D6D8D4B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D4B8()
{
  result = qword_1EC895A68;
  if (!qword_1EC895A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A68);
  }

  return result;
}

unint64_t sub_1D6D8D50C(uint64_t a1)
{
  result = sub_1D6D8D534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D534()
{
  result = qword_1EC895A70;
  if (!qword_1EC895A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A70);
  }

  return result;
}

unint64_t sub_1D6D8D588(uint64_t a1)
{
  result = sub_1D6D8D5B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D5B0()
{
  result = qword_1EC895A78;
  if (!qword_1EC895A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A78);
  }

  return result;
}

unint64_t sub_1D6D8D604(uint64_t a1)
{
  result = sub_1D6D8D62C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D62C()
{
  result = qword_1EC895A80;
  if (!qword_1EC895A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A80);
  }

  return result;
}

unint64_t sub_1D6D8D680(uint64_t a1)
{
  result = sub_1D6D8D6A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D6A8()
{
  result = qword_1EC895A88;
  if (!qword_1EC895A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A88);
  }

  return result;
}

unint64_t sub_1D6D8D6FC(uint64_t a1)
{
  result = sub_1D6D8D724();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D724()
{
  result = qword_1EC895A90;
  if (!qword_1EC895A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A90);
  }

  return result;
}

uint64_t FeedDatabaseExportContext.init(name:database:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

void *FormatSolidFill.init(foreground:background:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t _s8NewsFeed15FormatSolidFillV2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;
  if (static FormatColor.== infix(_:_:)(&v8, &v7))
  {
    v7 = v4;
    v8 = v3;
    v5 = static FormatColor.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D6D8D8F0(uint64_t a1)
{
  result = sub_1D6D8D918();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D8D918()
{
  result = qword_1EC895A98;
  if (!qword_1EC895A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895A98);
  }

  return result;
}

unint64_t sub_1D6D8D96C(void *a1)
{
  a1[1] = sub_1D5C32944();
  a1[2] = sub_1D5D35FB4();
  result = sub_1D6D8D9A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D8D9A4()
{
  result = qword_1EC895AA0;
  if (!qword_1EC895AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AA0);
  }

  return result;
}

uint64_t FormatMicaNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D6D8DA8C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v206 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v205 = a1;
  v9 = *(a1 + 48);
  v232 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  if (__OFADD__(v10, *(v9 + 16)))
  {
    goto LABEL_100;
  }

  v217 = *(v9 + 16);
  v202 = v6;
  v204 = v4;
  sub_1D6D90338();
  v203 = v5;

  v201 = v7;

  sub_1D7261DAC();
  v220 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v11 = *(v8 + 16);
  v12 = v8;
  v207 = v9;
  if (!v11)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = (v8 + 32);
  v15 = v11 - 1;
  while (1)
  {
    v241 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[4];
    v244 = v14[3];
    v245 = v18;
    v242 = v16;
    v243 = v17;
    v19 = v14[5];
    v20 = v14[6];
    v21 = v14[7];
    *&v248[10] = *(v14 + 122);
    v247 = v20;
    *v248 = v21;
    v246 = v19;
    v22 = v241;
    sub_1D62B7998(&v241, &v233);
    sub_1D62B7998(&v241, &v233);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v222 = v232;
    v24 = sub_1D6D8CB60(v22, *(&v22 + 1));
    v26 = v232[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
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
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v30 = v25;
    if (v232[3] < v29)
    {
      sub_1D6D721D4(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1D6D8CB60(v22, *(&v22 + 1));
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_101;
      }

LABEL_9:
      if (v30)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v46 = v24;
    sub_1D6D848C4();
    v24 = v46;
    if (v30)
    {
LABEL_10:
      v32 = v222;
      v33 = (*(v222 + 56) + 144 * v24);
      v233 = *v33;
      v34 = v33[4];
      v36 = v33[1];
      v35 = v33[2];
      v236 = v33[3];
      v237 = v34;
      v234 = v36;
      v235 = v35;
      v38 = v33[6];
      v37 = v33[7];
      v39 = v33[5];
      *&v240[10] = *(v33 + 122);
      v239 = v38;
      *v240 = v37;
      v238 = v39;
      *v33 = v241;
      v40 = v242;
      v41 = v243;
      v42 = v245;
      v33[3] = v244;
      v33[4] = v42;
      v33[1] = v40;
      v33[2] = v41;
      v43 = v246;
      v44 = v247;
      v45 = *v248;
      *(v33 + 122) = *&v248[10];
      v33[6] = v44;
      v33[7] = v45;
      v33[5] = v43;
      sub_1D62B79F4(&v233);
      goto LABEL_14;
    }

LABEL_12:
    v32 = v222;
    *(v222 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    *(v32[6] + 16 * v24) = v22;
    v47 = (v32[7] + 144 * v24);
    v48 = *&v248[10];
    v50 = v247;
    v49 = *v248;
    v47[5] = v246;
    v47[6] = v50;
    v47[7] = v49;
    *(v47 + 122) = v48;
    v52 = v244;
    v51 = v245;
    v53 = v243;
    v47[1] = v242;
    v47[2] = v53;
    v47[3] = v52;
    v47[4] = v51;
    *v47 = v241;
    v54 = v32[2];
    v28 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v28)
    {
      goto LABEL_96;
    }

    v32[2] = v55;

LABEL_14:
    v232 = v32;

    sub_1D62B79F4(&v241);
    v57 = *(v220 + 2);
    v56 = *(v220 + 3);
    if (v57 >= v56 >> 1)
    {
      v220 = sub_1D698F4BC((v56 > 1), v57 + 1, 1, v220);
    }

    *(v220 + 2) = v57 + 1;
    *&v220[16 * v57 + 32] = v22;
    if (v15 == v13)
    {
      break;
    }

    ++v13;
    v14 += 9;
    if (v13 >= *(v12 + 16))
    {
      goto LABEL_92;
    }
  }

  v9 = v207;
LABEL_20:
  v58 = sub_1D698F4BC(0, v217, 0, MEMORY[0x1E69E7CC0]);
  v59 = *(v9 + 16);
  if (!v59)
  {
    goto LABEL_62;
  }

  v60 = 0;
  v218 = v59 - 1;
  v61 = 32;
  while (2)
  {
    v241 = *(v9 + v61);
    v62 = *(v9 + v61 + 16);
    v63 = *(v9 + v61 + 32);
    v64 = *(v9 + v61 + 64);
    v244 = *(v9 + v61 + 48);
    v245 = v64;
    v242 = v62;
    v243 = v63;
    v65 = *(v9 + v61 + 80);
    v66 = *(v9 + v61 + 96);
    v67 = *(v9 + v61 + 112);
    *&v248[10] = *(v9 + v61 + 122);
    v247 = v66;
    *v248 = v67;
    v246 = v65;
    v68 = v241;
    v69 = v232;
    if (!v232[2])
    {
      sub_1D62B7998(&v241, &v233);
LABEL_39:
      sub_1D62B7998(&v241, &v233);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      *&v222 = v69;
      v102 = sub_1D6D8CB60(v68, *(&v68 + 1));
      v104 = v69[2];
      v105 = (v103 & 1) == 0;
      v28 = __OFADD__(v104, v105);
      v106 = v104 + v105;
      if (v28)
      {
        goto LABEL_95;
      }

      v107 = v103;
      if (v69[3] >= v106)
      {
        if ((v101 & 1) == 0)
        {
          v133 = v102;
          sub_1D6D848C4();
          v102 = v133;
          if (v107)
          {
            goto LABEL_45;
          }

          goto LABEL_50;
        }
      }

      else
      {
        sub_1D6D721D4(v106, v101);
        v102 = sub_1D6D8CB60(v68, *(&v68 + 1));
        if ((v107 & 1) != (v108 & 1))
        {
          goto LABEL_101;
        }
      }

      if (v107)
      {
LABEL_45:
        v109 = v222;
        v110 = (*(v222 + 56) + 144 * v102);
        v233 = *v110;
        v111 = v110[4];
        v113 = v110[1];
        v112 = v110[2];
        v236 = v110[3];
        v237 = v111;
        v234 = v113;
        v235 = v112;
        v115 = v110[6];
        v114 = v110[7];
        v116 = v110[5];
        *&v240[10] = *(v110 + 122);
        v239 = v115;
        *v240 = v114;
        v238 = v116;
        *v110 = v241;
        v117 = v242;
        v118 = v243;
        v119 = v245;
        v110[3] = v244;
        v110[4] = v119;
        v110[1] = v117;
        v110[2] = v118;
        v120 = v246;
        v121 = v247;
        v122 = *v248;
        *(v110 + 122) = *&v248[10];
        v110[6] = v121;
        v110[7] = v122;
        v110[5] = v120;
        sub_1D62B79F4(&v233);
LABEL_52:
        v232 = v109;
        v143 = *(v58 + 2);
        v144 = *(v58 + 3);

        if (v143 >= v144 >> 1)
        {
          v58 = sub_1D698F4BC((v144 > 1), v143 + 1, 1, v58);
        }

        sub_1D62B79F4(&v241);
        *(v58 + 2) = v143 + 1;
        *&v58[16 * v143 + 32] = v68;
        goto LABEL_59;
      }

LABEL_50:
      v109 = v222;
      *(v222 + 8 * (v102 >> 6) + 64) |= 1 << v102;
      *(v109[6] + 16 * v102) = v68;
      v134 = (v109[7] + 144 * v102);
      v135 = *&v248[10];
      v137 = v247;
      v136 = *v248;
      v134[5] = v246;
      v134[6] = v137;
      v134[7] = v136;
      *(v134 + 122) = v135;
      v139 = v244;
      v138 = v245;
      v140 = v243;
      v134[1] = v242;
      v134[2] = v140;
      v134[3] = v139;
      v134[4] = v138;
      *v134 = v241;
      v141 = v109[2];
      v28 = __OFADD__(v141, 1);
      v142 = v141 + 1;
      if (v28)
      {
        goto LABEL_97;
      }

      v109[2] = v142;

      goto LABEL_52;
    }

    sub_1D62B7998(&v241, &v233);
    v70 = sub_1D6D8CB60(v68, *(&v68 + 1));
    if ((v71 & 1) == 0)
    {
      goto LABEL_39;
    }

    v72 = (v69[7] + 144 * v70);
    v233 = *v72;
    v73 = v72[3];
    v74 = v72[4];
    v75 = v72[2];
    v234 = v72[1];
    v235 = v75;
    v236 = v73;
    v237 = v74;
    v76 = v72[5];
    v77 = v72[6];
    v78 = v72[7];
    *&v240[10] = *(v72 + 122);
    v239 = v77;
    *v240 = v78;
    v238 = v76;
    v79 = v234;
    if (!v234)
    {
    }

    v211 = v79;
    v80 = *(&v234 + 1);
    if (!*(&v234 + 1))
    {
    }

    v210 = v80;
    v81 = *(&v235 + 1);
    v82 = v235;
    v83 = v236;
    v214 = *(&v235 + 1);
    v212 = v235;
    v213 = v236;
    if (v236 >= 0xFEu)
    {
      v214 = *(&v243 + 1);
      v82 = v243;
      v213 = v244;
      sub_1D5ED34B0(v243, *(&v243 + 1), v244);
    }

    v208 = v58;
    v84 = &v236 + 8;
    if (v240[24] == 254)
    {
      v84 = &v244 + 8;
      sub_1D6D903F8(&v244 + 8, &v222, sub_1D615C3A4);
    }

    v85 = *(v84 + 2);
    v86 = *(v84 + 3);
    v229[4] = v85;
    v229[5] = v86;
    v87 = *(v84 + 4);
    v229[6] = v87;
    v88 = v84[80];
    v230 = v88;
    v89 = *v84;
    v90 = *(v84 + 1);
    v229[2] = *v84;
    v229[3] = v90;
    v91 = v240[25];
    if (v240[25] == 2)
    {
      v91 = v248[25];
    }

    v209 = v91;
    v92 = v233;
    *&v231[39] = v85;
    *&v231[55] = v86;
    *&v231[71] = v87;
    v231[87] = v88;
    *&v231[7] = v89;
    *&v231[23] = v90;
    sub_1D62B7998(&v233, &v222);

    sub_1D5ED34B0(v212, v81, v83);
    sub_1D6D903F8(&v236 + 8, &v222, sub_1D615C3A4);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v94 = sub_1D6D8CB60(v92, *(&v92 + 1));
    v96 = v69[2];
    v97 = (v95 & 1) == 0;
    v28 = __OFADD__(v96, v97);
    v98 = v96 + v97;
    if (v28)
    {
      goto LABEL_98;
    }

    v99 = v95;
    if (v69[3] >= v98)
    {
      if (v93)
      {
        goto LABEL_47;
      }

      v145 = v94;
      sub_1D6D848C4();
      v94 = v145;
      if ((v99 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_48:
      v123 = v69;
      v124 = v69[7] + 144 * v94;
      v222 = *v124;
      v125 = *(v124 + 64);
      v127 = *(v124 + 16);
      v126 = *(v124 + 32);
      v225 = *(v124 + 48);
      v226 = v125;
      v223 = v127;
      v224 = v126;
      v129 = *(v124 + 96);
      v128 = *(v124 + 112);
      v130 = *(v124 + 80);
      *(v229 + 10) = *(v124 + 122);
      v228 = v129;
      v229[0] = v128;
      v227 = v130;
      *v124 = v92;
      *(v124 + 16) = v211;
      *(v124 + 24) = v210;
      *(v124 + 32) = v82;
      *(v124 + 40) = v214;
      *(v124 + 48) = v213;
      v131 = *&v231[48];
      *(v124 + 81) = *&v231[32];
      *(v124 + 97) = v131;
      *(v124 + 113) = *&v231[64];
      *(v124 + 129) = *&v231[80];
      v132 = *&v231[16];
      *(v124 + 49) = *v231;
      *(v124 + 65) = v132;
      *(v124 + 137) = v209;
      sub_1D62B79F4(&v222);
    }

    else
    {
      sub_1D6D721D4(v98, v93);
      v94 = sub_1D6D8CB60(v92, *(&v92 + 1));
      if ((v99 & 1) != (v100 & 1))
      {
        goto LABEL_101;
      }

LABEL_47:
      if (v99)
      {
        goto LABEL_48;
      }

LABEL_56:
      v123 = v69;
      v69[(v94 >> 6) + 8] |= 1 << v94;
      *(v69[6] + 16 * v94) = v92;
      v146 = v69[7] + 144 * v94;
      v147 = *v231;
      *(v146 + 65) = *&v231[16];
      *(v146 + 49) = v147;
      v148 = *&v231[48];
      *(v146 + 113) = *&v231[64];
      v149 = *&v231[32];
      *(v146 + 97) = v148;
      *v146 = v92;
      *(v146 + 16) = v211;
      *(v146 + 24) = v210;
      *(v146 + 32) = v82;
      *(v146 + 40) = v214;
      *(v146 + 48) = v213;
      *(v146 + 129) = *&v231[80];
      *(v146 + 81) = v149;
      *(v146 + 137) = v209;
      v150 = v69[2];
      v28 = __OFADD__(v150, 1);
      v151 = v150 + 1;
      if (v28)
      {
        goto LABEL_99;
      }

      v69[2] = v151;
    }

    sub_1D62B79F4(&v233);
    sub_1D62B79F4(&v241);
    v232 = v123;
    v9 = v207;
    v58 = v208;
LABEL_59:
    if (v218 == v60)
    {
      goto LABEL_62;
    }

    ++v60;
    v61 += 144;
    if (v60 < *(v9 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_62:

  *&v241 = v58;

  sub_1D6985DAC(v152);
  v153 = *(v241 + 16);
  if (v153)
  {
    v154 = 0;
    v155 = v241 + 40;
    v215 = v241 + 40;
    v219 = MEMORY[0x1E69E7CC0];
LABEL_64:
    v156 = v58;
    v157 = v232;
    v158 = (v155 + 16 * v154);
    v159 = v154;
    while (v159 < v153)
    {
      v154 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
        goto LABEL_94;
      }

      if (v157[2])
      {
        v161 = *(v158 - 1);
        v160 = *v158;

        v162 = sub_1D6D8CB60(v161, v160);
        if (v163)
        {
          v164 = (v157[7] + 144 * v162);
          v241 = *v164;
          v165 = v164[3];
          v166 = v164[4];
          v167 = v164[2];
          v242 = v164[1];
          v243 = v167;
          v244 = v165;
          v245 = v166;
          v168 = v164[5];
          v169 = v164[6];
          v170 = v164[7];
          *&v248[10] = *(v164 + 122);
          v247 = v169;
          *v248 = v170;
          v246 = v168;
          sub_1D62B7998(&v241, &v233);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v219 = sub_1D698DC54(0, *(v219 + 2) + 1, 1, v219);
          }

          v58 = v156;
          v155 = v215;
          v172 = *(v219 + 2);
          v171 = *(v219 + 3);
          if (v172 >= v171 >> 1)
          {
            v219 = sub_1D698DC54((v171 > 1), v172 + 1, 1, v219);
          }

          *(v219 + 2) = v172 + 1;
          v173 = &v219[144 * v172];
          *(v173 + 2) = v241;
          v174 = v242;
          v175 = v243;
          v176 = v245;
          *(v173 + 5) = v244;
          *(v173 + 6) = v176;
          *(v173 + 3) = v174;
          *(v173 + 4) = v175;
          v177 = v246;
          v178 = v247;
          v179 = *v248;
          *(v173 + 154) = *&v248[10];
          *(v173 + 8) = v178;
          *(v173 + 9) = v179;
          *(v173 + 7) = v177;
          if (v154 != v153)
          {
            goto LABEL_64;
          }

          goto LABEL_79;
        }
      }

      ++v159;
      v158 += 2;
      if (v154 == v153)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_93;
  }

  v219 = MEMORY[0x1E69E7CC0];
LABEL_79:

  v180 = v206;
  v181 = v206[7];
  if (!v181)
  {

    v180 = v206;
  }

  v221 = v181;
  v182 = v180[8];
  if (!v182)
  {

    v180 = v206;
  }

  v216 = v182;
  v183 = v180[9];
  v184 = v180[10];
  v185 = *(v180 + 88);
  v186 = v183;
  v187 = v184;
  v188 = *(v180 + 88);
  if (v185 >= 0xFE)
  {
    v186 = *(v205 + 72);
    v187 = *(v205 + 80);
    v188 = *(v205 + 88);
    sub_1D5ED34B0(v186, v187, v188);
    v180 = v206;
  }

  LOBYTE(v246) = *(v180 + 176);
  v189 = *(v180 + 9);
  v243 = *(v180 + 8);
  v244 = v189;
  v245 = *(v180 + 10);
  v190 = *(v180 + 7);
  v241 = *(v180 + 6);
  v242 = v190;
  if (v246 == 254)
  {
    v191 = *(v205 + 144);
    v224 = *(v205 + 128);
    v225 = v191;
    v226 = *(v205 + 160);
    LOBYTE(v227) = *(v205 + 176);
    v192 = *(v205 + 112);
    v222 = *(v205 + 96);
    v223 = v192;
    sub_1D6D903F8(&v222, &v233, sub_1D615C3A4);
    v180 = v206;
    v235 = v224;
    v236 = v225;
    v237 = v226;
    LOBYTE(v238) = v227;
    v193 = v222;
    v194 = v223;
  }

  else
  {
    v195 = *(v180 + 9);
    v235 = *(v180 + 8);
    v236 = v195;
    v237 = *(v180 + 10);
    LOBYTE(v238) = *(v180 + 176);
    v193 = *(v180 + 6);
    v194 = *(v180 + 7);
  }

  v233 = v193;
  v234 = v194;
  v196 = *(v180 + 177);
  if (v196 == 2)
  {
    LOBYTE(v196) = *(v205 + 177);
  }

  v197 = swift_allocObject();
  swift_beginAccess();
  *(v197 + 16) = v204;
  *(v197 + 24) = v203;
  *(v197 + 32) = v202;
  *(v197 + 40) = v201;
  swift_beginAccess();
  *(v197 + 48) = v219;
  *(v197 + 56) = v221;
  *(v197 + 64) = v216;
  *(v197 + 72) = v186;
  *(v197 + 80) = v187;
  *(v197 + 88) = v188;
  v198 = v236;
  *(v197 + 128) = v235;
  *(v197 + 144) = v198;
  *(v197 + 160) = v237;
  *(v197 + 176) = v238;
  v199 = v234;
  *(v197 + 96) = v233;
  *(v197 + 112) = v199;
  *(v197 + 177) = v196;

  sub_1D5ED34B0(v183, v184, v185);
  sub_1D6D903F8(&v241, &v222, sub_1D615C3A4);
  return v197;
}

uint64_t sub_1D6D8E900(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698DC54(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v97 = sub_1D698DAE4(0, v5, 0, v6);
  v99 = *(v4 + 16);
  if (v99)
  {
    v95 = v7;
    v8 = 0;
    while (1)
    {
      v9 = (v4 + 32 + 144 * v8);
      v107 = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v110 = v9[3];
      v111 = v12;
      v108 = v10;
      v109 = v11;
      v13 = v9[5];
      v14 = v9[6];
      v15 = v9[7];
      *(v114 + 10) = *(v9 + 122);
      v113 = v14;
      v114[0] = v15;
      v112 = v13;
      v16 = v107;
      sub_1D62B7998(&v107, &v115);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v115 = v16;

      v17 = sub_1D6844380(&v115);

      v19 = *(v17 + 16);
      if (v19)
      {
        v20 = 0;
        v21 = 32;
        while (1)
        {
          if (v20 >= *(v17 + 16))
          {
            __break(1u);
            goto LABEL_47;
          }

          v23 = *(v17 + v21 + 16);
          v22 = *(v17 + v21 + 32);
          v24 = *(v17 + v21);
          v125 = *(v17 + v21 + 48);
          v124[1] = v23;
          v124[2] = v22;
          v124[0] = v24;
          v25 = v23;
          sub_1D5E3B610(v124, &v115);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v20;
          result = sub_1D5E3B66C(v124);
          v21 += 56;
          if (v19 == v20)
          {
            goto LABEL_10;
          }
        }

        result = sub_1D5E3B66C(v124);
        if (v25 <= 1)
        {
          v36 = *(v95 + 16);
          v35 = *(v95 + 24);
          if (v36 >= v35 >> 1)
          {
            result = sub_1D698DC54((v35 > 1), v36 + 1, 1, v95);
            v95 = result;
          }

          *(v95 + 16) = v36 + 1;
          v37 = (v95 + 144 * v36);
          v37[2] = v107;
          v38 = v108;
          v39 = v109;
          v40 = v111;
          v37[5] = v110;
          v37[6] = v40;
          v37[3] = v38;
          v37[4] = v39;
          v41 = v112;
          v42 = v113;
          v43 = v114[0];
          *(v37 + 154) = *(v114 + 10);
          v37[8] = v42;
          v37[9] = v43;
          v37[7] = v41;
        }

        else
        {
          v121 = v113;
          *v122 = v114[0];
          *&v122[10] = *(v114 + 10);
          v117 = v109;
          v118 = v110;
          v119 = v111;
          v120 = v112;
          v115 = v107;
          v116 = v108;
          sub_1D62B7998(&v107, &v101);
          v27 = v97[2];
          v26 = v97[3];
          if (v27 >= v26 >> 1)
          {
            v97 = sub_1D698DAE4((v26 > 1), v27 + 1, 1, v97);
          }

          result = sub_1D62B79F4(&v107);
          v97[2] = v27 + 1;
          v28 = &v97[19 * v27];
          v29 = v116;
          v30 = v117;
          v31 = v119;
          *(v28 + 5) = v118;
          *(v28 + 6) = v31;
          *(v28 + 3) = v29;
          *(v28 + 4) = v30;
          v32 = v120;
          v33 = v121;
          v34 = *&v122[16];
          *(v28 + 9) = *v122;
          *(v28 + 10) = v34;
          *(v28 + 7) = v32;
          *(v28 + 8) = v33;
          *(v28 + 2) = v115;
          v28[22] = v25;
        }
      }

      else
      {
LABEL_10:
        sub_1D62B79F4(&v107);
      }

      if (++v8 == v99)
      {
        break;
      }

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_48;
      }
    }

    v7 = v95;
  }

  else
  {
  }

  sub_1D6D9039C();
  v44 = sub_1D72626AC();

  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = v45 - 1;
    for (i = 32; ; i += 152)
    {
      v48 = *(v44 + i + 16);
      v115 = *(v44 + i);
      v116 = v48;
      v49 = *(v44 + i + 32);
      v50 = *(v44 + i + 48);
      v51 = *(v44 + i + 80);
      v119 = *(v44 + i + 64);
      v120 = v51;
      v117 = v49;
      v118 = v50;
      v52 = *(v44 + i + 96);
      v53 = *(v44 + i + 112);
      v54 = *(v44 + i + 128);
      v123 = *(v44 + i + 144);
      *v122 = v53;
      *&v122[16] = v54;
      v121 = v52;
      sub_1D6D903F8(&v115, &v107, sub_1D6D9039C);
      v56 = *(v7 + 2);
      v55 = *(v7 + 3);
      if (v56 >= v55 >> 1)
      {
        v7 = sub_1D698DC54((v55 > 1), v56 + 1, 1, v7);
      }

      *(v7 + 2) = v56 + 1;
      v57 = &v7[144 * v56];
      *(v57 + 2) = v115;
      v58 = v116;
      v59 = v117;
      v60 = v119;
      *(v57 + 5) = v118;
      *(v57 + 6) = v60;
      *(v57 + 3) = v58;
      *(v57 + 4) = v59;
      v61 = v120;
      v62 = v121;
      v63 = *v122;
      *(v57 + 154) = *&v122[10];
      *(v57 + 8) = v62;
      *(v57 + 9) = v63;
      *(v57 + 7) = v61;
      if (!v46)
      {
        break;
      }

      --v46;
    }
  }

  v64 = *(v7 + 2);

  v94 = v64;
  if (v64)
  {
    v65 = 0;
    v66 = v7 + 88;
    v96 = v7;
    while (v65 < *(v7 + 2))
    {
      v67 = *(v66 - 5);
      v68 = *(v66 - 4);
      v69 = *(v66 - 3);
      v70 = *(v66 - 2);
      v100 = *(v66 - 8);
      v72 = *(v66 + 3);
      v71 = *(v66 + 4);
      v73 = *(v66 + 2);
      LOBYTE(v120) = v66[80];
      v118 = v72;
      v119 = v71;
      v117 = v73;
      v74 = *(v66 + 1);
      v115 = *v66;
      v116 = v74;
      v98 = v66[81];
      v75 = swift_allocObject();
      swift_beginAccess();
      v76 = *(v2 + 16);
      v77 = *(v2 + 24);
      swift_beginAccess();
      *(v75 + 16) = v76;
      *(v75 + 24) = v77;
      v78 = *(v2 + 40);
      *(v75 + 32) = *(v2 + 32);
      *(v75 + 40) = v78;
      swift_beginAccess();
      v79 = *(v2 + 48);
      swift_beginAccess();
      *(v75 + 48) = v79;
      v80 = v67;
      if (!v67)
      {
      }

      *(v75 + 56) = v80;
      v81 = v68;
      if (!v68)
      {
      }

      *(v75 + 64) = v81;
      v82 = v69;
      v83 = v69;
      v84 = v70;
      v85 = v70;
      v86 = v100;
      if (v100 >= 0xFE)
      {
        v83 = *(v2 + 72);
        v85 = *(v2 + 80);
        v86 = *(v2 + 88);
        sub_1D5ED34B0(v83, v85, v86);
      }

      *(v75 + 72) = v83;
      *(v75 + 80) = v85;
      *(v75 + 88) = v86;
      if (v120 == 254)
      {
        v87 = *(v2 + 144);
        v103 = *(v2 + 128);
        v104 = v87;
        v105 = *(v2 + 160);
        v106 = *(v2 + 176);
        v88 = *(v2 + 112);
        v101 = *(v2 + 96);
        v102 = v88;
        sub_1D6D903F8(&v101, &v107, sub_1D615C3A4);
        v109 = v103;
        v110 = v104;
        v111 = v105;
        LOBYTE(v112) = v106;
        v89 = v101;
        v90 = v102;
      }

      else
      {
        v109 = v117;
        v110 = v118;
        v111 = v119;
        LOBYTE(v112) = v120;
        v89 = v115;
        v90 = v116;
      }

      v107 = v89;
      v108 = v90;
      v91 = v110;
      *(v75 + 128) = v109;
      *(v75 + 144) = v91;
      *(v75 + 160) = v111;
      *(v75 + 176) = v112;
      v92 = v108;
      *(v75 + 96) = v107;
      *(v75 + 112) = v92;
      v93 = v98;
      if (v98 == 2)
      {
        v93 = *(v2 + 177);
      }

      ++v65;
      *(v75 + 177) = v93;

      sub_1D5ED34B0(v82, v84, v100);
      sub_1D6D903F8(&v115, &v101, sub_1D615C3A4);

      v66 += 144;
      v2 = v75;
      v7 = v96;
      if (v94 == v65)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
    v75 = v2;
LABEL_45:

    return v75;
  }

  return result;
}

uint64_t sub_1D6D8F088()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[3];
  v28 = v0[2];
  v3 = v0[5];
  v26 = v0[4];
  swift_beginAccess();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];

  if (v6)
  {
    v25 = sub_1D600CADC(v6);
  }

  else
  {
    v25 = 0;
  }

  v27 = v2;
  v7 = v1[9];
  v8 = v1[10];
  v9 = *(v1 + 88);
  v10 = *(v1 + 9);
  v32 = *(v1 + 8);
  v33 = v10;
  v34 = *(v1 + 10);
  v35 = *(v1 + 176);
  v11 = v35;
  v12 = *(v1 + 7);
  v30 = *(v1 + 6);
  v31 = v12;
  if (v35 == 254)
  {
    sub_1D5ED34B0(v7, v8, v9);
    v13 = v30;
    v14 = DWORD2(v30);
    LODWORD(v15) = HIDWORD(v30);
    v16 = *(&v31 + 1);
    v17 = v31;
    v22 = v32;
    v23 = v33;
    v24 = v34;
  }

  else
  {
    v24 = v34;
    v15 = *(&v32 + 1);
    v16 = *(&v31 + 1);
    v17 = v31;
    v14 = DWORD2(v30);
    v13 = v30;
    v23 = v33;
    v29[11] = v32;
    sub_1D6D903F8(&v30, v29, sub_1D615C3A4);
    sub_1D6D903F8(&v30, v29, sub_1D615C3A4);
    sub_1D5ED34B0(v7, v8, v9);
    sub_1D6E0CAE0(v29);

    sub_1D615F660(&v30, sub_1D615C3A4);
    *&v18 = v29[0];
    *(&v18 + 1) = v15;
    v22 = v18;
  }

  v19 = *(v1 + 177);
  v20 = swift_allocObject();
  swift_beginAccess();
  *(v20 + 16) = v28;
  *(v20 + 24) = v27;
  *(v20 + 32) = v26;
  *(v20 + 40) = v3;
  swift_beginAccess();
  *(v20 + 48) = v4;
  *(v20 + 56) = v5;
  *(v20 + 64) = v25;
  *(v20 + 72) = v7;
  *(v20 + 80) = v8;
  *(v20 + 88) = v9;
  *(v20 + 96) = v13;
  *(v20 + 104) = v14;
  *(v20 + 108) = v15;
  *(v20 + 112) = v17;
  *(v20 + 120) = v16;
  *(v20 + 128) = v22;
  *(v20 + 144) = v23;
  *(v20 + 160) = v24;
  *(v20 + 176) = v11;
  *(v20 + 177) = v19;
  return v20;
}

uint64_t FormatMicaNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatMicaNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatMicaNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatMicaNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatMicaNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 160);
  v10 = *(v1 + 144);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 176);
  v6 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D6D903F8(v9, v8, sub_1D615C3A4);
}

uint64_t FormatMicaNodeStyle.__allocating_init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10)
{
  v16 = swift_allocObject();
  v17 = *a6;
  v18 = *a8;
  v19 = a8[1];
  LOBYTE(a8) = *(a8 + 16);
  swift_beginAccess();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  swift_beginAccess();
  *(v16 + 48) = a5;
  *(v16 + 56) = v17;
  *(v16 + 64) = a7;
  *(v16 + 72) = v18;
  *(v16 + 80) = v19;
  *(v16 + 88) = a8;
  v20 = *(a9 + 48);
  *(v16 + 128) = *(a9 + 32);
  *(v16 + 144) = v20;
  *(v16 + 160) = *(a9 + 64);
  *(v16 + 176) = *(a9 + 80);
  v21 = *(a9 + 16);
  *(v16 + 96) = *a9;
  *(v16 + 112) = v21;
  *(v16 + 177) = a10;
  return v16;
}

uint64_t FormatMicaNodeStyle.init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:ignoresSmartInvertColors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10)
{
  v15 = *a6;
  v17 = *a8;
  v16 = a8[1];
  v18 = *(a8 + 16);
  swift_beginAccess();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  swift_beginAccess();
  *(v10 + 48) = a5;
  *(v10 + 56) = v15;
  *(v10 + 64) = a7;
  *(v10 + 72) = v17;
  *(v10 + 80) = v16;
  *(v10 + 88) = v18;
  v19 = *(a9 + 48);
  *(v10 + 128) = *(a9 + 32);
  *(v10 + 144) = v19;
  *(v10 + 160) = *(a9 + 64);
  *(v10 + 176) = *(a9 + 80);
  v20 = *(a9 + 16);
  *(v10 + 96) = *a9;
  *(v10 + 112) = v20;
  *(v10 + 177) = a10;
  return v10;
}

uint64_t FormatMicaNodeStyle.deinit()
{

  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1D600ECE4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  return v0;
}

uint64_t FormatMicaNodeStyle.__deallocating_deinit()
{
  FormatMicaNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6D8F7E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66A3F8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatMicaNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatMicaNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatMicaNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10 = *(v1 + 104);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 136);
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D6D903F8(v9, v8, sub_1D615C3A4);
}

BOOL _s8NewsFeed19FormatMicaNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v33 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 13);
  v70 = *(a1 + 11);
  v71 = v10;
  v72 = *(a1 + 15);
  v73 = *(a1 + 136);
  v11 = *(a1 + 9);
  v68 = *(a1 + 7);
  v69 = v11;
  v12 = *(a1 + 137);
  v13 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = *(a2 + 48);
  v79 = *(a2 + 136);
  v20 = *(a2 + 15);
  v21 = *(a2 + 11);
  v77 = *(a2 + 13);
  v78 = v20;
  v22 = *(a2 + 7);
  v75 = *(a2 + 9);
  v76 = v21;
  v74 = v22;
  v32 = *(a2 + 137);
  if ((v4 != v13 || v5 != v14) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v16)
    {
      return 0;
    }

    v31 = v12;

    v23 = sub_1D633A310(v6, v16);

    if ((v23 & 1) == 0)
    {
      return 0;
    }

    if (v8)
    {
LABEL_8:
      if (!v15)
      {
        return 0;
      }

      v24 = sub_1D633C9E8(v8, v15);

      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    v31 = v12;

    if (v8)
    {
      goto LABEL_8;
    }
  }

  if (v15)
  {
    return 0;
  }

LABEL_14:
  if (v9 > 0xFD)
  {
    v25 = v33;
    sub_1D5ED34B0(v7, v33, v9);
    sub_1D5ED34B0(v17, v18, v19);
    if (v19 > 0xFD)
    {
      sub_1D5ED348C(v7, v33, v9);
      goto LABEL_21;
    }

LABEL_19:
    sub_1D5ED348C(v7, v25, v9);
    sub_1D5ED348C(v17, v18, v19);
    return 0;
  }

  v25 = v33;
  *&v50 = v7;
  *(&v50 + 1) = v33;
  LOBYTE(v51) = v9;
  if (v19 > 0xFD)
  {
    sub_1D5ED34B0(v7, v33, v9);
    sub_1D5ED34B0(v17, v18, v19);
    sub_1D5ED34B0(v7, v33, v9);
    sub_1D5ED34A0(v7, v33, v9);
    goto LABEL_19;
  }

  *v62 = v17;
  *&v62[8] = v18;
  v62[16] = v19;
  sub_1D5ED34B0(v7, v33, v9);
  sub_1D5ED34B0(v17, v18, v19);
  sub_1D5ED34B0(v7, v33, v9);
  v26 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v50, v62);
  sub_1D5ED34A0(*v62, *&v62[8], v62[16]);
  sub_1D5ED34A0(v50, *(&v50 + 1), v51);
  sub_1D5ED348C(v7, v33, v9);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v65 = v70;
  v66 = v71;
  v67 = v72;
  v63 = v68;
  v64 = v69;
  *&v62[23] = v75;
  *&v62[39] = v76;
  *&v62[55] = v77;
  *&v62[71] = v78;
  v27 = v73;
  *&v62[7] = v74;
  v28 = v79;
  if (v73 == 254)
  {
    if (v79 == 254)
    {
      v52 = v70;
      v53 = v71;
      v54 = v72;
      v50 = v68;
      v51 = v69;
      v55 = -2;
      sub_1D6D903F8(&v68, &v44, sub_1D615C3A4);
      sub_1D6D903F8(&v74, &v44, sub_1D615C3A4);
      sub_1D615F660(&v50, sub_1D615C3A4);
      goto LABEL_30;
    }

    sub_1D6D903F8(&v68, &v50, sub_1D615C3A4);
    sub_1D6D903F8(&v74, &v50, sub_1D615C3A4);
LABEL_27:
    v52 = v65;
    v53 = v66;
    v54 = v67;
    v50 = v63;
    v51 = v64;
    v58 = *&v62[32];
    v59 = *&v62[48];
    *v60 = *&v62[64];
    v56 = *v62;
    v55 = v27;
    *&v60[15] = *&v62[79];
    v57 = *&v62[16];
    v61 = v28;
    sub_1D615F660(&v50, sub_1D615F6C0);
    return 0;
  }

  v52 = v70;
  v53 = v71;
  v54 = v72;
  v50 = v68;
  v51 = v69;
  v55 = v73;
  v46 = v70;
  v47 = v71;
  v48 = v72;
  v49 = v73;
  v44 = v68;
  v45 = v69;
  if (v79 == 254)
  {
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v38 = v50;
    v39 = v51;
    sub_1D6D903F8(&v68, v36, sub_1D615C3A4);
    sub_1D6D903F8(&v74, v36, sub_1D615C3A4);
    sub_1D6D903F8(&v50, v36, sub_1D615C3A4);
    sub_1D601144C(&v38);
    goto LABEL_27;
  }

  v40 = v76;
  v41 = v77;
  v42 = v78;
  v38 = v74;
  v39 = v75;
  v43 = v79;
  sub_1D6D903F8(&v68, v36, sub_1D615C3A4);
  sub_1D6D903F8(&v74, v36, sub_1D615C3A4);
  sub_1D6D903F8(&v50, v36, sub_1D615C3A4);
  v30 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v44, &v38);
  v34[2] = v40;
  v34[3] = v41;
  v34[4] = v42;
  v35 = v43;
  v34[0] = v38;
  v34[1] = v39;
  sub_1D601144C(v34);
  v36[2] = v46;
  v36[3] = v47;
  v36[4] = v48;
  v37 = v49;
  v36[0] = v44;
  v36[1] = v45;
  sub_1D601144C(v36);
  v40 = v65;
  v41 = v66;
  v42 = v67;
  v38 = v63;
  v39 = v64;
  v43 = v27;
  sub_1D615F660(&v38, sub_1D615C3A4);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  if (v31 != 2)
  {
    return v32 != 2 && ((v32 ^ v31) & 1) == 0;
  }

  return v32 == 2;
}

uint64_t sub_1D6D8FF38(uint64_t a1)
{
  result = sub_1D6D90094(&qword_1EC895AA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D8FFA0(uint64_t a1)
{
  *(a1 + 16) = sub_1D6D90094(&qword_1EC886FB8);
  result = sub_1D6D90094(&qword_1EC886E38);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D6D90008(void *a1)
{
  a1[1] = sub_1D6D90094(&qword_1EC886FB8);
  a1[2] = sub_1D6D90094(&qword_1EC886E38);
  result = sub_1D6D90094(&qword_1EC895AB0);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6D90094(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatMicaNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6D900D4(uint64_t a1)
{
  result = sub_1D6D900FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D900FC()
{
  result = qword_1EC895AB8;
  if (!qword_1EC895AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AB8);
  }

  return result;
}

unint64_t sub_1D6D90150(uint64_t a1)
{
  *(a1 + 8) = sub_1D66FB0EC();
  result = sub_1D66A4C50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6D90180(void *a1)
{
  a1[1] = sub_1D66FB0EC();
  a1[2] = sub_1D66A4C50();
  result = sub_1D6D901B8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D901B8()
{
  result = qword_1EC895AC0;
  if (!qword_1EC895AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AC0);
  }

  return result;
}

__n128 __swift_memcpy138_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D6D9027C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 138))
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

uint64_t sub_1D6D902C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D6D90338()
{
  if (!qword_1EC895AC8)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895AC8);
    }
  }
}

void sub_1D6D9039C()
{
  if (!qword_1EC88EDC8)
  {
    sub_1D69A66E8();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EDC8);
    }
  }
}

uint64_t sub_1D6D903F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D6D90460(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v74 = a1[6];
  v75 = v3;
  v76 = a1[8];
  v77 = *(a1 + 18);
  v4 = a1[3];
  v70 = a1[2];
  v71 = v4;
  v5 = a1[5];
  v72 = a1[4];
  v73 = v5;
  v6 = a1[1];
  v68 = *a1;
  v69 = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7274590;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8();
  v49 = *(*(v9 - 8) + 72);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v12 = (v11 + v10);
  if (a2)
  {
    v13 = *(a2 + 40);
    v48 = *(a2 + 32);

    v14 = sub_1D6D8F088();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 64) = 0x3800000000000000;
    v16 = sub_1D601118C;
  }

  else
  {
    v16 = sub_1D70DD9D8;
    v15 = 0;
    v48 = 0;
    v13 = 0xE000000000000000;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = &v12[*(v17 + 24)];
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *(v11 + v10) = v48;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = v13;
  v20 = &v12[*(v17 + 28)];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  v21 = *(*(v17 - 8) + 56);
  v21(v12, 0, 1, v17);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v11, v64);
  swift_setDeallocating();
  sub_1D615F660(v12, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v8 + 56) = &type metadata for FormatInspectionGroup;
  *(v8 + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(v8 + 32) = v22;
  v23 = v64[1];
  *(v22 + 16) = v64[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v65;
  v24 = v49;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7279970;
  v26 = v25 + v10;
  sub_1D711F844(1701869908, 0xE400000000000000, 1633904973, 0xE400000000000000, (v25 + v10));
  v21((v25 + v10), 0, 1, v17);
  if (a2)
  {
    v27 = *(a2 + 56);

    v28 = v27;
    v24 = v49;
    sub_1D711B070(0x6168706C41, 0xE500000000000000, v28, (v26 + v49));
    v21((v26 + v49), 0, 1, v17);
    v29 = *(a2 + 177);
  }

  else
  {
    sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v26 + v49));
    v21((v26 + v49), 0, 1, v17);
    v29 = 2;
  }

  v30 = (v26 + 2 * v24);
  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v29, v30);
  v21(v30, 0, 1, v17);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v25, v66);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v8 + 96) = &type metadata for FormatInspectionGroup;
  *(v8 + 104) = &off_1F518B2C0;
  v31 = swift_allocObject();
  *(v8 + 72) = v31;
  v32 = v66[1];
  *(v31 + 16) = v66[0];
  *(v31 + 32) = v32;
  *(v31 + 48) = v67;
  v62[6] = v74;
  v62[7] = v75;
  v62[8] = v76;
  v63 = v77;
  v62[2] = v70;
  v62[3] = v71;
  v62[4] = v72;
  v62[5] = v73;
  v62[0] = v68;
  v62[1] = v69;
  if (a2)
  {
    v33 = *(a2 + 72);
    v34 = *(a2 + 80);
    v35 = *(a2 + 88);
    sub_1D5ED34B0(v33, v34, v35);
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = -2;
  }

  *&v56 = v33;
  *(&v56 + 1) = v34;
  LOBYTE(v57) = v35;
  v36 = sub_1D6D9893C(v62, &v56);
  sub_1D5ED348C(v56, *(&v56 + 1), v57);
  *(v8 + 136) = &type metadata for FormatInspection;
  *(v8 + 144) = &off_1F51E3FD0;
  *(v8 + 112) = v36;
  if (a2)
  {
    v37 = *(a2 + 144);
    v58 = *(a2 + 128);
    v59 = v37;
    v60 = *(a2 + 160);
    v61 = *(a2 + 176);
    v38 = *(a2 + 112);
    v56 = *(a2 + 96);
    v57 = v38;
    sub_1D6D903F8(&v56, &v50, sub_1D615C3A4);
    v39 = v56;
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v43 = v60;
    v44 = v61;
  }

  else
  {
    v39 = 0uLL;
    v44 = -2;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
  }

  v50 = v39;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  v45 = sub_1D686F740(&v68, &v50);
  v58 = v52;
  v59 = v53;
  v60 = v54;
  v61 = v55;
  v56 = v50;
  v57 = v51;
  sub_1D615F660(&v56, sub_1D615C3A4);
  *(v8 + 176) = &type metadata for FormatInspection;
  *(v8 + 184) = &off_1F51E3FD0;
  *(v8 + 152) = v45;
  v46 = sub_1D7073500(v8);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v46;
}

_BYTE *FormatUnderline.init(style:color:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t FormatUnderline.color.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

BOOL _s8NewsFeed15FormatUnderlineV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *a2;
  v7 = *(a2 + 1);
  if (v4 == 8)
  {
    if (v6 != 8)
    {
      return 0;
    }
  }

  else if (v6 == 8 || (sub_1D6DE1E94(v4, v6) & 1) == 0)
  {
    return 0;
  }

  if ((~v5 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v5);
    sub_1D5CFCFAC(v7);
    if ((~v7 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v5);
      return 1;
    }

    goto LABEL_11;
  }

  v11 = v5;
  if ((~v7 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v5);
    sub_1D5CFCFAC(v7);
    sub_1D5CFCFAC(v5);

LABEL_11:
    sub_1D5C84FF4(v5);
    sub_1D5C84FF4(v7);
    return 0;
  }

  v10 = v7;
  sub_1D5CFCFAC(v5);
  sub_1D5CFCFAC(v7);
  sub_1D5CFCFAC(v5);
  v9 = static FormatColor.== infix(_:_:)(&v11, &v10);

  sub_1D5C84FF4(v5);
  return (v9 & 1) != 0;
}

unint64_t sub_1D6D90CC0(uint64_t a1)
{
  result = sub_1D6D90CE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D90CE8()
{
  result = qword_1EC895AD0;
  if (!qword_1EC895AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AD0);
  }

  return result;
}

unint64_t sub_1D6D90D3C(void *a1)
{
  a1[1] = sub_1D5C353F8();
  a1[2] = sub_1D66C908C();
  result = sub_1D6D90D74();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D90D74()
{
  result = qword_1EC895AD8;
  if (!qword_1EC895AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AD8);
  }

  return result;
}

uint64_t sub_1D6D90DC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[16])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  if (v3 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 9;
  if (v3 < 8)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t static FormatCodingIdentifierStrategy.defaultValue.getter()
{
  v0 = sub_1D725895C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725894C();
  v5 = sub_1D725893C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

BOOL static FormatCodingIdentifierStrategy.shouldEncode(wrappedValue:)()
{
  sub_1D6D90FDC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725892C();
  v4 = sub_1D725895C();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) == 1;
  sub_1D6D91034(v3);
  return v5;
}

void sub_1D6D90FDC()
{
  if (!qword_1EDF3C398)
  {
    sub_1D725895C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C398);
    }
  }
}

uint64_t sub_1D6D91034(uint64_t a1)
{
  sub_1D6D90FDC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6D9109C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D725895C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725894C();
  v7 = sub_1D725893C();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  a1[1] = v9;
  return result;
}

BOOL sub_1D6D91178()
{
  sub_1D6D90FDC();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725892C();
  v4 = sub_1D725895C();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) == 1;
  sub_1D6D91034(v3);
  return v5;
}

uint64_t FormatButtonNodeDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 64);

  return v1;
}

uint64_t FormatButtonNodeDataLayoutAttributes.identifier.getter()
{
  v1 = *(*(v0 + 16) + 48);

  return v1;
}

unint64_t FormatButtonNodeDataLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t FormatButtonNodeDataLayoutAttributes.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void FormatButtonNodeDataLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

double FormatButtonNodeDataLayoutAttributes.frame.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t FormatButtonNodeDataLayoutAttributes.name.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t FormatButtonNodeDataLayoutAttributes.__allocating_init(layoutAttributes:stateMaskLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:name:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  result = swift_allocObject();
  v18 = *a3;
  v19 = *a5;
  v20 = *a7;
  v21 = *(a7 + 8);
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v18;
  *(result + 40) = a4;
  *(result + 48) = v19;
  *(result + 56) = a6;
  *(result + 64) = v20;
  *(result + 72) = v21;
  *(result + 80) = a8;
  *(result + 88) = a9;
  return result;
}

uint64_t FormatButtonNodeDataLayoutAttributes.init(layoutAttributes:stateMaskLayoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:name:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v10 = *a3;
  v11 = *a5;
  v12 = *a7;
  v13 = *(a7 + 8);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = v10;
  *(v9 + 40) = a4;
  *(v9 + 48) = v11;
  *(v9 + 56) = a6;
  *(v9 + 64) = v12;
  *(v9 + 72) = v13;
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  return v9;
}

uint64_t FormatButtonNodeDataLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return v0;
}

uint64_t FormatButtonNodeDataLayoutAttributes.__deallocating_deinit()
{

  sub_1D5EB15C4(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t FormatButtonNodeDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(*(v0 + 16) + 80);

  return v1;
}

uint64_t WebEmbedDataSourceServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t WebEmbedDataSourceServiceError.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000052;
  }

  else
  {
    return 0xD00000000000006ELL;
  }
}

unint64_t sub_1D6D916F4()
{
  result = qword_1EC895AE0;
  if (!qword_1EC895AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AE0);
  }

  return result;
}

unint64_t sub_1D6D91748()
{
  if (*v0)
  {
    return 0xD000000000000052;
  }

  else
  {
    return 0xD00000000000006ELL;
  }
}

uint64_t OpenChannelCommandContext.init(channel:destination:sourceArticle:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static ContextMenuItem.openChannel(channel:destination:feedDescriptor:sourceArticle:)(uint64_t a1, char *a2, void *a3, uint64_t a4)
{
  v8 = sub_1D725DC6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v13 = *a2;
  if (a3)
  {
    swift_unknownObjectRetain();
    if ([a3 feedType] != 11)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    swift_unknownObjectRetain();
  }

  sub_1D6D91AD4(v13);
  v20[0] = v15;
  if (qword_1EDF3B010 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDF05C18;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDF05C20;
  (*(v9 + 104))(v12, *MEMORY[0x1E69D7B48], v8);
  v20[1] = a1;
  v21 = v13;
  v22 = a4;
  swift_allocObject();
  v18 = v17;
  v19 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  return v19;
}

uint64_t OpenChannelDestination.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t static Commands.openChannel.getter()
{
  if (qword_1EDF3B010 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D6D91AD4(char a1)
{
  if (a1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_1D725811C();

    return v3;
  }

  else
  {
    type metadata accessor for Localized();
    v5 = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    swift_getObjectType();
    v8 = FCTagProviding.localizedTagType.getter();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D5B7E2C0();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    v11 = sub_1D72620BC();

    return v11;
  }
}

uint64_t sub_1D6D91CB0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE11openChannel3tag11destination13sourceArticleACSgSo14FCTagProviding_pSg_AD04OpenH11DestinationOSo010FCHeadlineN0_pSgtFZ_0(uint64_t a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  if (!a1)
  {
    return 0;
  }

  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v5 = qword_1EDF3B010;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_1D726203C();
    sub_1D6D91CB0();
    if (qword_1EDF05C18 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDF05C20;
    sub_1D725DFDC();
    sub_1D725D5DC();
    swift_allocObject();
    v7 = sub_1D725D5CC();
    swift_unknownObjectRelease();
    return v7;
  }

  return result;
}

unint64_t sub_1D6D92004()
{
  result = qword_1EC895AE8;
  if (!qword_1EC895AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AE8);
  }

  return result;
}

uint64_t sub_1D6D92068(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D6D920C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t FormatLineBreakStrategy.rawValue.getter()
{
  v1 = 0x74754F68737570;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

NewsFeed::FormatLineBreakStrategy_optional __swiftcall FormatLineBreakStrategy.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D6D921F8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x74754F68737570;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x647261646E617473;
  if (v3 == 1)
  {
    v5 = 0x74754F68737570;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x80000001D73BB8E0;
  }

  v8 = 0xE700000000000000;
  if (*a2 != 1)
  {
    v2 = 0x647261646E617473;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x80000001D73BB8E0;
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

unint64_t sub_1D6D922F8()
{
  result = qword_1EC895AF0;
  if (!qword_1EC895AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AF0);
  }

  return result;
}

uint64_t sub_1D6D9234C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6D923F4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6D92488()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D92538(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x74754F68737570;
  if (v2 != 1)
  {
    v4 = 0x647261646E617473;
    v3 = 0xE800000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001D73BB8E0;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1D6D9259C(uint64_t a1)
{
  *(a1 + 8) = sub_1D6D925CC();
  result = sub_1D6D92620();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6D925CC()
{
  result = qword_1EC895AF8;
  if (!qword_1EC895AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895AF8);
  }

  return result;
}

unint64_t sub_1D6D92620()
{
  result = qword_1EDF27278;
  if (!qword_1EDF27278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27278);
  }

  return result;
}

unint64_t sub_1D6D92674(uint64_t a1)
{
  result = sub_1D6D9269C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D9269C()
{
  result = qword_1EC895B00;
  if (!qword_1EC895B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895B00);
  }

  return result;
}

unint64_t sub_1D6D926F0(void *a1)
{
  a1[1] = sub_1D5CAA870();
  a1[2] = sub_1D665B554();
  result = sub_1D6D922F8();
  a1[3] = result;
  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatMenuGroupableDataO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

void *sub_1D6D927CC(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1D6D92808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6D92CB0();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  v15 = *v3;
  v16 = *v3 >> 61;
  if (v16 <= 1)
  {
    if (v16)
    {
      v31 = (v15 & 0x1FFFFFFFFFFFFFFFLL);
      v32 = v31[2];
      v53[0] = v31[1];
      v53[1] = v32;
      v33 = v31[4];
      v53[2] = v31[3];
      v53[3] = v33;
      v34 = v31[2];
      v49 = v31[1];
      v50 = v34;
      v35 = v31[4];
      v51 = v31[3];
      v52 = v35;
      sub_1D62B6004(v53, v48);
      sub_1D69EDBAC(a1, a2, a3);
      v30 = v36;
      sub_1D62B6060(v53);
      return v30;
    }

    v19 = *(v15 + 56);
    if (!v19)
    {
      return 0;
    }

    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
    v22 = *(v15 + 32);
    v23 = *(v15 + 40);
    v24 = *(v15 + 48);
    v47 = *(v19 + 40);
    sub_1D5F26358(v20, v21, v22);
    sub_1D62B5FC8(v23, v24);
    swift_retain_n();
    if ((v47(a1, a2, a3) & 1) == 0)
    {

      sub_1D5F26348(v20, v21, v22);
      sub_1D5FC4E9C(v23, v24);

      return 0;
    }

    LODWORD(v47) = v24;
    v46 = v22;
    v45 = v21;
    v44 = v20;
    if (v22)
    {
      v25 = sub_1D6CC5B10(a1, a2);
      v27 = v26;
      v28 = v47;
      v29 = v25;
    }

    else
    {
      v29 = v20;

      v28 = v47;
    }

    v43 = v23;
    if (v28)
    {
      sub_1D6CC57CC(a1, a2);
    }

    else
    {
      v38 = v23;
    }

    v39 = v38;
    v42 = sub_1D6A413F4();
    v40 = v39;

    sub_1D726203C();

    v41 = swift_allocObject();
    v41[2] = v19;
    v41[3] = a1;
    v41[4] = a2;
    v41[5] = a3;
    v41[6] = v29;
    v41[7] = v27;

    swift_unknownObjectRetain();

    v30 = sub_1D726375C();

    sub_1D5F26348(v44, v45, v46);
    sub_1D5FC4E9C(v43, v47);
LABEL_21:

    return v30;
  }

  if (v16 == 2)
  {

    sub_1D6CC5DBC(a1, a2, v53);
    *&v49 = *&v53[0];
    v30 = sub_1D6D92808(a1, a2, a3);

    goto LABEL_21;
  }

  if (v16 != 3)
  {
    return 0;
  }

  v17 = swift_projectBox();
  sub_1D6D92D08(v17, v14);
  sub_1D6D92D08(v14, v10);
  v18 = type metadata accessor for FormatSharedItemData();
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
  {
    sub_1D6D92D6C(v14, sub_1D6D92CB0);
    sub_1D6D92D6C(v10, sub_1D6D92CB0);
    return 0;
  }

  v30 = sub_1D5F26530();
  sub_1D6D92D6C(v14, sub_1D6D92CB0);
  sub_1D6D92D6C(v10, type metadata accessor for FormatSharedItemData);
  return v30;
}

void sub_1D6D92CB0()
{
  if (!qword_1EDF0EDB0)
  {
    type metadata accessor for FormatSharedItemData();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0EDB0);
    }
  }
}

uint64_t sub_1D6D92D08(uint64_t a1, uint64_t a2)
{
  sub_1D6D92CB0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D92D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D6D92DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725AA4C();
  LOBYTE(a1) = sub_1D5BE240C(v6, v7, a1);

  if (a1)
  {
    v8 = sub_1D725AA4C();
    v10 = v9;
    sub_1D6D92F8C();
    swift_allocError();
    *v11 = v8;
    v11[1] = v10;
  }

  else
  {
    result = (*(a3 + 88))(&v14, a2, a3);
    if ((v14 & 0xFE) == 2)
    {
      return result;
    }

    sub_1D6D92F8C();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
  }

  return swift_willThrow();
}

unint64_t sub_1D6D92F8C()
{
  result = qword_1EC895B08;
  if (!qword_1EC895B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895B08);
  }

  return result;
}

uint64_t sub_1D6D92FE0(void *a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed23FormatDisplayLinkObject_storage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_12:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v10 << 6);
      v15 = *(v3 + 48) + 24 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      sub_1D5B76B10(*(v3 + 56) + 32 * v14, v24);
      *&v25 = v16;
      *(&v25 + 1) = v17;
      LOBYTE(v26) = v18;
      sub_1D5B7C390(v24, (&v26 + 8));
      sub_1D6821B94();
      v12 = v10;
LABEL_13:
      v29 = v25;
      v30[0] = v26;
      v30[1] = v27;
      v31 = v28;
      if (!v28)
      {
      }

      v19 = LOBYTE(v30[0]);
      sub_1D5B7C390((v30 + 8), &v25);
      __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
      v20 = sub_1D72646AC();
      v21 = sub_1D726203C();
      v22 = &selRef_setValue_forKeyPath_;
      if (!v19)
      {
        v22 = &selRef_setValue_forKey_;
      }

      [a1 *v22];
      swift_unknownObjectRelease();

      sub_1D607F09C();
      result = __swift_destroy_boxed_opaque_existential_1(&v25);
      v9 = v12;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v7 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v7;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v6 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        goto LABEL_13;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D6D93204(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1D69AE7F4(a1, &v8);
  if (v9)
  {
    sub_1D5B7C390(&v8, v10);
    sub_1D5B76B10(v10, &v8);
    swift_beginAccess();

    sub_1D6D61D20(&v8, a2, a3, a4);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1D5EBD03C(&v8);
    swift_beginAccess();
    sub_1D607EC64(a2, a3, a4, v10);
    swift_endAccess();
    return sub_1D5EBD03C(v10);
  }
}

uint64_t sub_1D6D93310(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a3)
  {
    v8 = a4;
    v9 = a1;
    swift_unknownObjectRetain();
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v10 = a4;
    v11 = a1;
  }

  v12 = sub_1D726207C();
  v14 = v13;

  sub_1D6D93204(v16, v12, v14, a5);

  return sub_1D5EBD03C(v16);
}

uint64_t sub_1D6D933D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v9 = OBJC_IVAR____TtC8NewsFeed23FormatDisplayLinkObject_storage;
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (*(v10 + 16) && (v11 = sub_1D6D63460(a1, a2, a3), (v12 & 1) != 0))
  {
    sub_1D5B76B10(*(v10 + 56) + 32 * v11, a4);
  }

  else
  {
    *a4 = 0u;
    a4[1] = 0u;
  }

  return swift_endAccess();
}

id sub_1D6D9347C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1D726207C();
  v8 = v7;
  v9 = a1;
  sub_1D6D933D0(v6, v8, a4, &v18);

  v10 = v19;
  if (v19)
  {
    v11 = __swift_project_boxed_opaque_existential_1(&v18, v19);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11, v11);
    v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_1D72646AC();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t sub_1D6D935E4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

unint64_t sub_1D6D936E0()
{
  result = qword_1EDF0D510;
  if (!qword_1EDF0D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D510);
  }

  return result;
}

uint64_t UIImageRenderingMode.description.getter(uint64_t a1)
{
  v1 = 0x724F737961776C61;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 2)
  {
    v2 = 0x6554737961776C61;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1D6D937C8()
{
  v1 = *v0;
  v2 = 0x724F737961776C61;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 2)
  {
    v3 = 0x6554737961776C61;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t FormatMicaNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatMicaNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatMicaNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t FormatMicaNodeLayoutAttributes.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatMicaNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 136);
  *(a1 + 8) = v2;
}

uint64_t FormatMicaNodeLayoutAttributes.__allocating_init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16)
{
  result = swift_allocObject();
  v26 = *a8;
  v27 = *a14;
  v28 = *a16;
  v29 = *(a16 + 8);
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a9;
  *(result + 72) = a10;
  *(result + 80) = a11;
  *(result + 88) = a12;
  *(result + 96) = a7;
  *(result + 104) = v26;
  *(result + 112) = a13;
  *(result + 120) = v27;
  *(result + 128) = a15;
  *(result + 136) = v28;
  *(result + 144) = v29;
  *(result + 152) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t FormatMicaNodeLayoutAttributes.init(identifier:layoutIdentifier:nodeIdentifier:frame:style:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t *a14, char a15, uint64_t *a16)
{
  v17 = *a8;
  v18 = *a14;
  v19 = *a16;
  v20 = *(a16 + 8);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a9;
  *(v16 + 72) = a10;
  *(v16 + 80) = a11;
  *(v16 + 88) = a12;
  *(v16 + 96) = a7;
  *(v16 + 104) = v17;
  *(v16 + 112) = a13;
  *(v16 + 120) = v18;
  *(v16 + 128) = a15;
  *(v16 + 136) = v19;
  *(v16 + 144) = v20;
  *(v16 + 152) = MEMORY[0x1E69E7CD0];
  return v16;
}

uint64_t sub_1D6D93AB4(uint64_t a1)
{
  v2 = sub_1D6D94070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D93AF0(uint64_t a1)
{
  v2 = sub_1D6D94070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatMicaNodeLayoutAttributes.deinit()
{

  sub_1D5EB15C4(*(v0 + 120));

  return v0;
}

uint64_t FormatMicaNodeLayoutAttributes.__deallocating_deinit()
{
  FormatMicaNodeLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatMicaNodeLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6D9478C(0, &qword_1EC895B18, sub_1D6D94070, &type metadata for FormatMicaNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D94070();
  sub_1D7264B5C();
  LOBYTE(v14[0]) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v14[0]) = 1;
    sub_1D72643FC();
    LOBYTE(v14[0]) = 2;
    sub_1D72643FC();
    swift_beginAccess();
    v12 = *(v3 + 80);
    v14[0] = *(v3 + 64);
    v14[1] = v12;
    v15 = 3;
    type metadata accessor for CGRect(0);
    sub_1D6D94C88(&qword_1EC8801E8, 255, type metadata accessor for CGRect);
    sub_1D726443C();
    *&v14[0] = *(v3 + 96);
    v15 = 4;
    type metadata accessor for FormatMicaNodeStyle();
    sub_1D6D94C88(&qword_1EC886E38, 255, type metadata accessor for FormatMicaNodeStyle);
    sub_1D72643BC();
    *&v14[0] = *(v3 + 104);
    v15 = 5;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v14[0]) = 6;
    sub_1D726442C();
    *&v14[0] = *(v3 + 120);
    v15 = 7;
    sub_1D5EB1500(*&v14[0]);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(*&v14[0]);
    LOBYTE(v14[0]) = 8;
    sub_1D726440C();
    v13 = *(v3 + 144);
    *&v14[0] = *(v3 + 136);
    BYTE8(v14[0]) = v13;
    v15 = 9;
    sub_1D5F8F434();
    sub_1D72643BC();
    *&v14[0] = *(v3 + 152);
    v15 = 10;
    sub_1D6D9478C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    sub_1D6D947F4(&qword_1EC881AF0, sub_1D5F8F488);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6D94070()
{
  result = qword_1EC895B20;
  if (!qword_1EC895B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895B20);
  }

  return result;
}

uint64_t FormatMicaNodeLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatMicaNodeLayoutAttributes.init(from:)(a1);
  return v2;
}

uint64_t FormatMicaNodeLayoutAttributes.init(from:)(void *a1)
{
  sub_1D6D9478C(0, &qword_1EC895B28, sub_1D6D94070, &type metadata for FormatMicaNodeLayoutAttributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D94070();
  v18 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v16;
    LOBYTE(v19) = 0;
    *(v1 + 16) = sub_1D72642BC();
    *(v1 + 24) = v9;
    LOBYTE(v19) = 1;
    *(v1 + 32) = sub_1D72642BC();
    *(v1 + 40) = v11;
    LOBYTE(v19) = 2;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    type metadata accessor for CGRect(0);
    v21 = 3;
    sub_1D6D94C88(&qword_1EDF1A740, 255, type metadata accessor for CGRect);
    sub_1D726431C();
    v13 = v20;
    *(v1 + 64) = v19;
    *(v1 + 80) = v13;
    type metadata accessor for FormatMicaNodeStyle();
    v21 = 4;
    sub_1D6D94C88(&qword_1EC886FB8, 255, type metadata accessor for FormatMicaNodeStyle);
    sub_1D726427C();
    *(v1 + 96) = v19;
    v21 = 5;
    sub_1D5F8FC50();
    sub_1D726427C();
    *(v1 + 104) = v19;
    LOBYTE(v19) = 6;
    *(v1 + 112) = sub_1D72642FC();
    v21 = 7;
    sub_1D5DF6A0C();
    sub_1D726431C();
    *(v1 + 120) = v19;
    LOBYTE(v19) = 8;
    *(v1 + 128) = sub_1D72642CC() & 1;
    v21 = 9;
    sub_1D5C6F27C();
    sub_1D726427C();
    v14 = BYTE8(v19);
    *(v1 + 136) = v19;
    *(v1 + 144) = v14;
    sub_1D6D9478C(0, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    v21 = 10;
    sub_1D6D947F4(&qword_1EC881B10, sub_1D5F8FD48);
    sub_1D726431C();
    (*(v8 + 8))(v18, v17);
    *(v1 + 152) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void sub_1D6D9478C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6D947F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6D9478C(255, &qword_1EC881AE8, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6D949DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatMicaNodeLayoutAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D6D94A58(uint64_t a1, uint64_t a2)
{
  sub_1D6D94C88(&qword_1EC8940D0, a2, type metadata accessor for FormatMicaNodeLayoutAttributes);

  return sub_1D725A24C();
}

unint64_t sub_1D6D94B84()
{
  result = qword_1EC895B40;
  if (!qword_1EC895B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895B40);
  }

  return result;
}

unint64_t sub_1D6D94BDC()
{
  result = qword_1EC895B48;
  if (!qword_1EC895B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895B48);
  }

  return result;
}

unint64_t sub_1D6D94C34()
{
  result = qword_1EC895B50[0];
  if (!qword_1EC895B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC895B50);
  }

  return result;
}

uint64_t sub_1D6D94C88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6D94CD0(uint64_t a1)
{
  v2 = *v1 >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v7 = sub_1D6D94CD0(a1) ^ 1;
    }

    else
    {
      v7 = *(a1 + *(type metadata accessor for FormatArrangementCuration() + 40));
    }
  }

  else
  {
    if (v2)
    {
      v8 = *(a1 + *(type metadata accessor for FormatContent(0) + 76));

      v7 = FormatSelector.matches(_:)(v8);
    }

    else
    {
      v3 = *(*v1 + 16);
      v4 = (a1 + *(type metadata accessor for FormatArrangementCuration() + 36));
      v5 = *v4;
      v6 = v4[1];

      v7 = sub_1D5BE240C(v5, v6, v3);
    }
  }

  return v7 & 1;
}

uint64_t FormatArrangementComponentCurationRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v19[0] = a4;
  v19[1] = a2;
  sub_1D5C30268(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v4)
  {
    type metadata accessor for FormatArrangementComponentCurationRule.CodingType();
    v21 = 0uLL;
    swift_getWitnessTable();
    sub_1D726431C();
    if (v20 > 1u)
    {
      if (v20 == 2)
      {
        sub_1D5C30268(0, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
        v20 = xmmword_1D7279980;
        sub_1D6D95708(&qword_1EDF12728);
        sub_1D726431C();
        (*(v8 + 8))(v11, v7);
        v15 = v21;
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        v14 = v16 | 0x4000000000000000;
      }

      else
      {
        type metadata accessor for FormatArrangementComponentCurationRule();
        v21 = xmmword_1D7279980;
        swift_getWitnessTable();
        sub_1D726431C();
        (*(v8 + 8))(v11, v7);
        v17 = v20;
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        v14 = v18 | 0x8000000000000000;
      }
    }

    else if (v20)
    {
      (*(v8 + 8))(v11, v7);
      v14 = 0xC000000000000000;
    }

    else
    {
      sub_1D5B81B04();
      v21 = xmmword_1D7279980;
      sub_1D5CB5D1C(&qword_1EDF3C7D0);
      sub_1D726431C();
      (*(v8 + 8))(v11, v7);
      v13 = v20;
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
    }

    *v19[0] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatArrangementComponentCurationRule.encode(to:)(void *a1)
{
  sub_1D5C30268(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  v9 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = *(v8 + 16);
      LOBYTE(v20) = 0;
      v21 = 0uLL;
      type metadata accessor for FormatArrangementComponentCurationRule.CodingType();

      swift_getWitnessTable();
      v11 = v19;
      sub_1D726443C();
      if (!v11)
      {
        *&v20 = v10;
        v21 = xmmword_1D7279980;
        sub_1D5B81B04();
        sub_1D5CB5D1C(&qword_1EDF047E0);
        sub_1D726443C();
      }

      goto LABEL_10;
    }

    v16 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    LOBYTE(v20) = 2;
    v21 = 0uLL;
    type metadata accessor for FormatArrangementComponentCurationRule.CodingType();

    swift_getWitnessTable();
    v17 = v19;
    sub_1D726443C();
    if (v17)
    {
LABEL_10:
      (*(v22 + 8))(v7, v4);
    }

    *&v21 = v16;
    *(&v21 + 1) = v15;
    v20 = xmmword_1D7279980;
    sub_1D5C30268(0, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
    sub_1D6D95708(&qword_1EDF12730);
    sub_1D726443C();

    return (*(v22 + 8))(v7, v4);
  }

  if (v9 != 2)
  {
    LOBYTE(v20) = 1;
    v21 = 0uLL;
    type metadata accessor for FormatArrangementComponentCurationRule.CodingType();
    swift_getWitnessTable();
    sub_1D726443C();
    return (*(v22 + 8))(v7, v4);
  }

  v12 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  LOBYTE(v20) = 3;
  v21 = 0uLL;
  type metadata accessor for FormatArrangementComponentCurationRule.CodingType();

  swift_getWitnessTable();
  v13 = v19;
  sub_1D726443C();
  if (!v13)
  {
    *&v20 = v12;
    v21 = xmmword_1D7279980;
    swift_getWitnessTable();
    sub_1D726443C();
  }

  (*(v22 + 8))(v7, v4);
}

uint64_t sub_1D6D95708(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C30268(255, &qword_1EDF12720, sub_1D666D9FC, &type metadata for FormatSelector, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6D95784()
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

uint64_t sub_1D6D957D0(unsigned __int8 a1)
{
  v1 = 0x7365707974627573;
  v2 = 0x726F7463656C6573;
  if (a1 != 2)
  {
    v2 = 7630702;
  }

  if (a1)
  {
    v1 = 1869768040;
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

uint64_t sub_1D6D9583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6D958B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D6D9591C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6D9598C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6D959FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6D95784();
  *a1 = result;
  return result;
}

uint64_t sub_1D6D95A34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6D957D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static FormatArrangementComponentCurationRule.== infix(_:_:)(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a1 >> 62;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v5 >> 62 == 2)
      {
        v10 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v15 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v16 = v10;

        v13 = static FormatArrangementComponentCurationRule.== infix(_:_:)(&v16, &v15, a3, a4);

        return v13 & 1;
      }
    }

    else if (v5 == 0xC000000000000000)
    {

LABEL_18:
      v13 = 1;
      return v13 & 1;
    }

LABEL_19:
    v13 = 0;
    return v13 & 1;
  }

  if (!v6)
  {
    if (!(v5 >> 62))
    {
      v7 = *(v4 + 16);
      v8 = *(v5 + 16);

      LOBYTE(v7) = sub_1D5BFC390(v7, v8);

      return v7 & 1;
    }

    goto LABEL_19;
  }

  if (v5 >> 62 != 1)
  {
    goto LABEL_19;
  }

  if (*((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
  {
    goto LABEL_18;
  }

  return sub_1D72646CC();
}

uint64_t sub_1D6D95CFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed38FormatArrangementComponentCurationRuleOyxG(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t FeedItemFilterWrapperMatcher.init(matcher:translator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for FeedItemFilterWrapperMatcher();
  v9 = (a5 + *(result + 44));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t FeedItemFilterWrapperMatcher.createApplicator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  (*(v10 + 24))(&v16, v11, v10, v8);
  v15 = v16;
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v12 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  *(v13 + 24) = v11;
  *(v13 + 32) = v10;
  *(v13 + 40) = v15;
  (*(v6 + 32))(v13 + v12, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D6ECA890(sub_1D6D960F8, v13, a3);
}

uint64_t sub_1D6D95F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = v16 - v11;
  v16[0] = a2;
  v16[1] = a3;
  v13 = type metadata accessor for FeedItemFilterWrapperMatcher();
  (*(a4 + *(v13 + 44)))(a1);
  type metadata accessor for FeedItemFilterMatcherApplicator();
  v14 = FeedItemFilterMatcherApplicator.matches(_:)();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t sub_1D6D960F8(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedItemFilterWrapperMatcher() - 8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1D6D95F9C(a1, v4, v5, v6);
}

uint64_t FeedItemFilterWrapperMatcher.debugName(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v13 = &v16 - v12;
  (*(v3 + *(a2 + 44)))(a1, v11);
  v14 = (*(v6 + 32))(v13, v7, v6);
  (*(v9 + 8))(v13, AssociatedTypeWitness);
  return v14;
}

uint64_t sub_1D6D962F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D96330()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D5B5D9E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6D963B8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1D6D964F4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1D6D96784()
{
  v1 = OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState;
  v2 = [*&v0[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState] colorWithAlphaComponent_];
  v3 = v2;
  if (([v0 isHighlighted] & 1) == 0)
  {
    v3 = *&v0[v1];
  }

  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v3;
  v9[4] = sub_1D6D9709C;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D5B6B06C;
  v9[3] = &block_descriptor_23_1;
  v6 = _Block_copy(v9);
  v7 = v3;
  v8 = v0;

  [v4 animateWithDuration:v6 animations:0.2];
  _Block_release(v6);
}

char *sub_1D6D968D8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_onTap;
  sub_1D5BFDBB4();
  *&v4[v9] = [objc_allocWithZone(v10) init];
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_touchInsets];
  __asm { FMOV            V0.2D, #-30.0 }

  *v11 = _Q0;
  *(v11 + 1) = _Q0;
  v17 = OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState;
  *&v4[v17] = [objc_opt_self() blackColor];
  v18 = &v4[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_createMenuElementsBlock];
  v19 = type metadata accessor for CoverViewActionButton();
  *v18 = 0;
  *(v18 + 1) = 0;
  v25.receiver = v4;
  v25.super_class = v19;
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_onTap];
  v22 = v20;
  v23 = v21;
  sub_1D725F67C();

  return v22;
}

id CoverViewActionButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1D6D96AF4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_createMenuElementsBlock);
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_createMenuElementsBlock);
  *v3 = a1;
  v3[1] = a2;

  return sub_1D5B74328(v4);
}

uint64_t sub_1D6D96B44(uint64_t a1, unint64_t a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v4 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v4, a2);
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      MEMORY[0x1DA6F9CE0](v5);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      ++v4;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  sub_1D6D97040();
  return sub_1D72633FC();
}

id CoverViewActionButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoverViewActionButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s8NewsFeed21CoverViewActionButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_onTap;
  sub_1D5BFDBB4();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_touchInsets);
  __asm { FMOV            V0.2D, #-30.0 }

  *v3 = _Q0;
  v3[1] = _Q0;
  v9 = OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState;
  *(v0 + v9) = [objc_opt_self() blackColor];
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_createMenuElementsBlock);
  *v10 = 0;
  v10[1] = 0;
  sub_1D726402C();
  __break(1u);
}

id sub_1D6D96E68()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_createMenuElementsBlock);
  if (v1)
  {

    v2 = v1(v0);
    sub_1D5B74328(v1);
    if (v2)
    {
      if (v2 >> 62)
      {
        if (sub_1D7263BFC())
        {
          goto LABEL_5;
        }
      }

      else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v3 = swift_allocObject();
        *(v3 + 16) = v2;
        v4 = objc_opt_self();
        v8[4] = sub_1D6D97038;
        v8[5] = v3;
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 1107296256;
        v8[2] = sub_1D70D0E90;
        v8[3] = &block_descriptor_16_3;
        v5 = _Block_copy(v8);

        v6 = [v4 configurationWithIdentifier:0 previewProvider:0 actionProvider:v5];

        _Block_release(v5);
        return v6;
      }
    }
  }

  return 0;
}

unint64_t sub_1D6D97040()
{
  result = qword_1EC885090;
  if (!qword_1EC885090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC885090);
  }

  return result;
}

uint64_t *sub_1D6D970A0()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 168));
  return v0;
}

uint64_t sub_1D6D97140()
{
  sub_1D6D970A0();

  return swift_deallocClassInstance();
}

unint64_t sub_1D6D971E8()
{
  result = qword_1EC895BF8;
  if (!qword_1EC895BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895BF8);
  }

  return result;
}

uint64_t sub_1D6D9723C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for FeedItem.SharedState(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedHeadline.State(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6761C6C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = *(v18 + 32);
  v20 = sub_1D6D97818(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
  v21 = v41;
  result = v19(v13, v13, v20, v17, v18);
  if (!v21)
  {
    v23 = v37;
    v41 = 0;
    sub_1D5D20F80(&v16[*(v13 + 40)], v9);
    v24 = v38;
    sub_1D6D977B0(&v9[*(v6 + 24)], v38, type metadata accessor for FeedItem.SharedState);
    v25 = type metadata accessor for SharedItem();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    v28 = 1;
    v29 = v27(v24, 1, v25);
    v30 = v16;
    v31 = v36;
    if (v29 != 1)
    {
      sub_1D6D977B0(v38, v36, type metadata accessor for SharedItem);
      v28 = 0;
    }

    (*(v26 + 56))(v31, v28, 1, v25);
    if (v27(v31, 1, v25) == 1)
    {
      sub_1D5D2073C(v31, sub_1D6761C6C);
      type metadata accessor for FormatLayoutError();
      sub_1D6D97818(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v33 = v32;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D7263F9C();
      v34 = v40;
      *v33 = v39;
      v33[1] = v34;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return sub_1D5D2073C(v30, type metadata accessor for FeedHeadline);
    }

    else
    {
      sub_1D5D2073C(v30, type metadata accessor for FeedHeadline);
      return sub_1D6D977B0(v31, v23, type metadata accessor for SharedItem);
    }
  }

  return result;
}

unint64_t sub_1D6D97668(uint64_t a1)
{
  result = sub_1D6D97690();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D97690()
{
  result = qword_1EC895C00;
  if (!qword_1EC895C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C00);
  }

  return result;
}

unint64_t sub_1D6D976E4(void *a1)
{
  a1[1] = sub_1D666E6FC();
  a1[2] = sub_1D6679304();
  result = sub_1D6D9771C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D9771C()
{
  result = qword_1EC895C08;
  if (!qword_1EC895C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C08);
  }

  return result;
}

uint64_t sub_1D6D977B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D97818(unint64_t *a1, void (*a2)(uint64_t))
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

void *FormatCornerRadius.from(bounds:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *v5;
  v8 = *(v5 + 16);
  if (v8 < 0)
  {
    Height = CGRectGetHeight(*&a2);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    Width = CGRectGetWidth(v17);
    if (Width >= Height)
    {
      Width = Height;
    }

    v9 = Width * 0.5;
    result = &unk_1F50F7BC0;
    LOBYTE(v8) = LOBYTE(v7);
  }

  else
  {
    v9 = *v5;
  }

  *a1 = v9;
  *(a1 + 8) = result;
  *(a1 + 16) = v8 & 1;
  return result;
}

uint64_t FormatCornerRadius.Value.uiRectCorner.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v4 = (v1 + 32);
  do
  {
    v5 = *v4++;
    v6 = qword_1D7352058[v5];
    if ((v6 & ~result) == 0)
    {
      v6 = 0;
    }

    result |= v6;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t FormatCornerRadius.Value.init(radius:corners:continuous:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

uint64_t static FormatCornerRadius.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (sub_1D635B040(*(a1 + 8), *(a2 + 8)))
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t FormatCornerRadius.description.getter()
{
  if (*(v0 + 16) < 0)
  {
    return 0x6465646E756F72;
  }

  else
  {
    return FormatCornerRadius.Value.description.getter();
  }
}

uint64_t FormatCornerRadius.Value.description.getter()
{
  v1 = *(v0 + 16);
  sub_1D7263D4C();

  v2 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](0x72656E726F63202CLL, 0xEA00000000003D73);

  v4 = MEMORY[0x1DA6F9D20](v3, &type metadata for FormatCorner);
  v6 = v5;

  MEMORY[0x1DA6F9910](v4, v6);

  MEMORY[0x1DA6F9910](0x6E69746E6F63202CLL, 0xED00003D73756F75);
  if (v1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v7, v8);

  return 0x3D737569646172;
}

uint64_t sub_1D6D97BD4()
{
  if (*(v0 + 16) < 0)
  {
    return 0x6465646E756F72;
  }

  else
  {
    return FormatCornerRadius.Value.description.getter();
  }
}

uint64_t FormatCornerRadius.Value.corners.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1D6D97CEC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (sub_1D635B040(*(a1 + 8), *(a2 + 8)))
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t FormatCorner.description.getter()
{
  v1 = *v0;
  v2 = 7105633;
  v3 = 0x7468676952706F74;
  v4 = 0x654C6D6F74746F62;
  if (v1 != 3)
  {
    v4 = 0x69526D6F74746F62;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7466654C706F74;
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

uint64_t sub_1D6D97E3C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6D97F24()
{
  sub_1D72621EC();
}

uint64_t sub_1D6D97FF8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D980DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7105633;
  v5 = 0xE800000000000000;
  v6 = 0x7468676952706F74;
  v7 = 0xEA00000000007466;
  v8 = 0x654C6D6F74746F62;
  if (v2 != 3)
  {
    v8 = 0x69526D6F74746F62;
    v7 = 0xEB00000000746867;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7466654C706F74;
    v3 = 0xE700000000000000;
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

uint64_t sub_1D6D98180()
{
  v1 = *v0;
  v2 = 7105633;
  v3 = 0x7468676952706F74;
  v4 = 0x654C6D6F74746F62;
  if (v1 != 3)
  {
    v4 = 0x69526D6F74746F62;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7466654C706F74;
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

uint64_t _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 < 0)
  {
    if (v7 < 0)
    {
      sub_1D5ED34A0(*a1, v3, v4);
      sub_1D5ED34A0(v5, v6, v7);
      v9 = v5 ^ v2 ^ 1;
      return v9 & 1;
    }

    goto LABEL_11;
  }

  if (v7 < 0)
  {

LABEL_11:
    sub_1D5ED34C4(v5, v6, v7);
    sub_1D5ED34A0(v2, v3, v4);
    sub_1D5ED34A0(v5, v6, v7);
LABEL_12:
    v9 = 0;
    return v9 & 1;
  }

  if (*&v2 != *&v5)
  {
    sub_1D5ED34C4(*a1, v3, v4);
    goto LABEL_11;
  }

  sub_1D5ED34C4(*a2, *(a2 + 8), v7);
  sub_1D5ED34C4(v2, v3, v4);
  sub_1D5ED34C4(v2, v3, v4);
  sub_1D5ED34C4(v5, v6, v7);
  v8 = sub_1D635B040(v3, v6);
  sub_1D5ED34A0(v2, v3, v4);
  sub_1D5ED34A0(v5, v6, v7);
  sub_1D5ED34A0(v5, v6, v7);
  sub_1D5ED34A0(v2, v3, v4);
  if (v8 & 1) == 0 || ((v7 ^ v4))
  {
    goto LABEL_12;
  }

  v9 = 1;
  return v9 & 1;
}

unint64_t sub_1D6D983BC(uint64_t a1)
{
  result = sub_1D6D983E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D983E4()
{
  result = qword_1EC895C10;
  if (!qword_1EC895C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C10);
  }

  return result;
}

unint64_t sub_1D6D98478()
{
  result = qword_1EC895C18;
  if (!qword_1EC895C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C18);
  }

  return result;
}

unint64_t sub_1D6D984CC(uint64_t a1)
{
  result = sub_1D6D984F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D984F4()
{
  result = qword_1EC895C20;
  if (!qword_1EC895C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C20);
  }

  return result;
}

unint64_t sub_1D6D98588()
{
  result = qword_1EC895C28;
  if (!qword_1EC895C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C28);
  }

  return result;
}

unint64_t sub_1D6D985DC(uint64_t a1)
{
  result = sub_1D6D98604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D98604()
{
  result = qword_1EC895C30;
  if (!qword_1EC895C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C30);
  }

  return result;
}

unint64_t sub_1D6D98698()
{
  result = qword_1EC895C38;
  if (!qword_1EC895C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C38);
  }

  return result;
}

unint64_t sub_1D6D986F0()
{
  result = qword_1EC895C40;
  if (!qword_1EC895C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C40);
  }

  return result;
}

unint64_t sub_1D6D98744(uint64_t a1)
{
  *(a1 + 8) = sub_1D6D98774();
  result = sub_1D5CD79C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6D98774()
{
  result = qword_1EC895C48;
  if (!qword_1EC895C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C48);
  }

  return result;
}

unint64_t sub_1D6D987C8(uint64_t a1)
{
  result = sub_1D6D987F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D987F0()
{
  result = qword_1EC895C50;
  if (!qword_1EC895C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C50);
  }

  return result;
}

uint64_t sub_1D6D98884(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

void *sub_1D6D9893C(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 <= 0xFD)
  {
    v3 = *a2;
    if ((v2 & 0x80) != 0)
    {
      v5 = a1[2];
      v6 = a1[3];
      v7 = a1[4];
      v8 = a1[5];
      v28.origin.x = v5;
      v28.origin.y = v6;
      v28.size.width = v7;
      v28.size.height = v8;
      Height = CGRectGetHeight(v28);
      v29.origin.x = v5;
      v29.origin.y = v6;
      v29.size.width = v7;
      v29.size.height = v8;
      Width = CGRectGetWidth(v29);
      if (Width >= Height)
      {
        Width = Height;
      }

      LOBYTE(v2) = LOBYTE(v3);
      v3 = Width * 0.5;
      v4 = &unk_1F50FC1F8;
    }

    else
    {
      v4 = *(a2 + 8);
      sub_1D5ED34C4(*a2, v4, v2);
    }
  }

  else
  {
    v3 = 0.0;
    v4 = 0;
    LOBYTE(v2) = 0;
  }

  v11 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v11);
  sub_1D5EA74B8();
  v14 = *(*(v13 - 8) + 72);
  v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7279970;
  v17 = (v16 + v15);
  if (v4)
  {
    v18 = v3;
  }

  else
  {
    v18 = 0.0;
  }

  sub_1D711A80C(0x737569646152, 0xE600000000000000, *&v18, v4 == 0, v17);
  v19 = type metadata accessor for FormatInspectionItem(0);
  v20 = *(*(v19 - 8) + 56);
  v20(v17, 0, 1, v19);

  sub_1D71224D8(0x7372656E726F43, 0xE700000000000000, v4, (v17 + v14));
  v20((v17 + v14), 0, 1, v19);
  if (v4)
  {

    v21 = v2 & 1;
  }

  else
  {
    v21 = 2;
  }

  sub_1D711E9F0(0x6F756E69746E6F43, 0xEA00000000007375, v21, v17 + 2 * v14);
  v20((v17 + 2 * v14), 0, 1, v19);
  sub_1D6795150(0x522072656E726F43, 0xED00007375696461, 0, 0, v16, v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(inited + 32) = v22;
  *(v22 + 48) = v27;
  v23 = v26[1];
  *(v22 + 16) = v26[0];
  *(v22 + 32) = v23;
  v24 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5F10AA0(inited + 32);
  return v24;
}

uint64_t sub_1D6D98D10(uint64_t result)
{
  if (!*(v1 + 24))
  {
    v4 = *(v1 + 8);
    v3 = *(v1 + 16);
    v5 = *v1;
    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v3;
    v9 = 1;
    sub_1D5D27950(v5, v4, v3, 0);
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

BOOL _s8NewsFeed21FormatDateTimeBindingO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v23[0] = *a1;
  v23[1] = v4;
  v23[2] = v5;
  v24 = v6;
  v25 = v8;
  v26 = v7;
  v27 = v9;
  v28 = v10;
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      if (v6 == 6)
      {
        if (v10 != 6)
        {
          goto LABEL_24;
        }

LABEL_17:
        sub_1D5D28364(v23, sub_1D6D99630);
        return 1;
      }

      if (v10 != 7)
      {
        goto LABEL_24;
      }

LABEL_23:
      sub_1D5D28364(v23, sub_1D6D99630);
      return v8 == v3;
    }

    if (v6 == 4)
    {
      if (v10 != 4)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v10 != 5)
    {
      goto LABEL_24;
    }

    sub_1D5D28364(v23, sub_1D6D99630);
    v22 = v3;
    v21 = v8;
    return _s8NewsFeed18FormatGroupBindingV8DateTimeO2eeoiySbAE_AEtFZ_0(&v22, &v21);
  }

  else
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        v11 = v9;
        if (!v10)
        {
          if (v3 == v8 && v4 == v7 || (v17 = v7, v18 = sub_1D72646CC(), v7 = v17, (v18 & 1) != 0))
          {
            v19 = v7;
            sub_1D5D27950(v8, v7, v11, 0);
            sub_1D5D27950(v3, v4, v5, 0);
            sub_1D5D27950(v3, v4, v5, 0);
            sub_1D5D27950(v8, v19, v11, 0);
            v20 = sub_1D6341C50(v5, v11);
            sub_1D5D28364(v23, sub_1D6D99630);
            sub_1D5D28C84(v8, v19, v11, 0);
            sub_1D5D28C84(v3, v4, v5, 0);
            return (v20 & 1) != 0;
          }

          sub_1D5D27950(v3, v4, v5, 0);
          v15 = v8;
          v7 = v17;
          v9 = v11;
          LOBYTE(v10) = 0;
LABEL_25:
          sub_1D5D27950(v15, v7, v9, v10);
          sub_1D5D28364(v23, sub_1D6D99630);
          return 0;
        }

        v12 = v7;
        v13 = v10;

        LOBYTE(v10) = v13;
        v7 = v12;
        v9 = v11;
LABEL_24:
        v15 = v8;
        goto LABEL_25;
      }

      if (v10 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    if (v6 == 2)
    {
      if (v10 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (v10 != 3)
    {
      goto LABEL_24;
    }

    sub_1D5D28364(v23, sub_1D6D99630);
    return ((v8 ^ v3) & 1) == 0;
  }
}

void sub_1D6D9914C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  if (!*(v1 + 24))
  {
    v34 = v6;
    v19 = *(v1 + 8);
    v18 = *(v1 + 16);
    v20 = *v1;
    v35[0] = *v1;
    v35[1] = v19;
    v35[2] = v18;
    v36 = 1;

    v21 = sub_1D703E0C8(v35, &v36);
    if (!v3)
    {
      v33 = v21;
      FormatOptionCollection.subscript.getter(v20, v19, v13);
      if ((*(v34 + 48))(v13, 1, v5) == 1)
      {

        sub_1D5D28364(v13, sub_1D5E04C00);
        if ((*(a1 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v26 = v20;
          v26[1] = v19;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          return;
        }

        v22 = 1;
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v35[0] = v9[2];
        v23 = v33;

        FormatOptionValue.type.getter(&v36);
        if ((sub_1D6183C84(v36, v23) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          v28 = v27;
          v30 = *v9;
          v29 = v9[1];
          v35[0] = v9[2];

          FormatOptionValue.type.getter(&v36);
          v31 = v36;
          *v28 = v30;
          *(v28 + 8) = v29;
          *(v28 + 16) = v31;
          *(v28 + 24) = v23;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v24 = type metadata accessor for FormatOption;
          v25 = v9;
          goto LABEL_11;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v9, v17);
        v22 = 0;
      }

      (*(v34 + 56))(v17, v22, 1, v5);
      v24 = sub_1D5E04C00;
      v25 = v17;
LABEL_11:
      sub_1D5D28364(v25, v24);
    }
  }
}

unint64_t sub_1D6D99518(uint64_t a1)
{
  result = sub_1D6D99540();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D99540()
{
  result = qword_1EC895C58;
  if (!qword_1EC895C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C58);
  }

  return result;
}

unint64_t sub_1D6D99594(void *a1)
{
  a1[1] = sub_1D6661B9C();
  a1[2] = sub_1D66FAD0C();
  result = sub_1D6D995CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D995CC()
{
  result = qword_1EC895C60;
  if (!qword_1EC895C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C60);
  }

  return result;
}

void sub_1D6D99630()
{
  if (!qword_1EC895C68)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC895C68);
    }
  }
}

uint64_t sub_1D6D9968C(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v2 + 16) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v34 = a1 & 1;
  v35 = *(v2 + 16);

  v12 = 0;
  while (v10)
  {
LABEL_11:
    v16 = (*(v35 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
    v18 = *v16;
    v17 = v16[1];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 16);
    v36 = v20;
    *(v2 + 16) = 0x8000000000000000;
    v21 = sub_1D5B69D90(v18, v17);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_23;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      sub_1D6D747C0(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1D5B69D90(v18, v17);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v32 = v21;
    sub_1D6D85E80();
    v21 = v32;
    if (v27)
    {
LABEL_4:
      v13 = v21;

      v14 = v36;
      *(v36[7] + v13) = v34;
      goto LABEL_5;
    }

LABEL_17:
    v14 = v20;
    v20[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v20[6] + 16 * v21);
    *v29 = v18;
    v29[1] = v17;
    *(v20[7] + v21) = v34;
    v30 = v20[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_24;
    }

    v20[2] = v31;
LABEL_5:
    v10 &= v10 - 1;
    *(v2 + 16) = v14;
    swift_endAccess();
  }

  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(v6 + 8 * v15);
    ++v12;
    if (v10)
    {
      v12 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6D998FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = result;
  v8 = *(v3 + 8);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v12 = *(v3 + 40);
  v11 = *(v3 + 48);
  v13 = *(v3 + 56);
  v14 = *(v3 + 64);
  if ((~v8 & 0xF000000000000007) == 0 && (*(v3 + 24) & 7) == 7)
  {
    v26 = 0;
    v27 = 0;
    v34 = 255;
  }

  else
  {
    v25 = *(v3 + 56);
    v16 = v14;
    v17 = *(v3 + 16);
    v28 = *v3;
    v29 = v8;
    v30 = v17;
    v31 = v9;
    sub_1D62B7098(v28, v8, v17, v9);
    sub_1D63264FC(v6, a2, v32);
    result = sub_1D62B7130(v28, v29, v30, v31);
    if (v4)
    {
      return result;
    }

    v26 = v32[0];
    v27 = v32[1];
    v34 = v33;
    v14 = v16;
    v13 = v25;
  }

  if ((~(v10 & v11) & 0x3000000000000007) != 0)
  {
    v25 = v14;
    if ((v11 & 0x2000000000000000) != 0)
    {
      v28 = v10;
      sub_1D62B6FC0(v10, v12, v11);
      v21 = sub_1D5E42CB0(v6);
      if (v4)
      {
        sub_1D62B5FEC(v26, v27, v34);
        return sub_1D62B7020(v10, v12, v11);
      }

      v18 = v21;
      result = sub_1D62B7020(v10, v12, v11);
      v19 = 0;
    }

    else
    {

      sub_1D670818C(v10, v12, v11);
      v18 = sub_1D6AC9624(v6, v10, v12, v11, v6);
      result = sub_1D62B7020(v10, v12, v11);
      if (v4)
      {
        return sub_1D62B5FEC(v26, v27, v34);
      }

      v19 = 1;
    }

    if (v13 == 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v18 = 0;
    v19 = -1;
    if (v13 == 3)
    {
LABEL_10:
      v20 = 0;
      goto LABEL_20;
    }
  }

  v20 = qword_1D7352790[v13];
LABEL_20:
  MEMORY[0x1EEE9AC00](result, v8);
  v24[2] = v6;
  v24[3] = a2;
  result = sub_1D5FBC414(sub_1D6D99BA4, v24, v22);
  if (v4)
  {
    sub_1D62B5FD4(v18, v19);
    return sub_1D62B5FEC(v26, v27, v34);
  }

  else
  {
    v23 = v27;
    *a3 = v26;
    *(a3 + 8) = v23;
    *(a3 + 16) = v34;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
    *(a3 + 40) = v20;
    *(a3 + 48) = v13 == 3;
    *(a3 + 56) = result;
  }

  return result;
}

uint64_t sub_1D6D99C20(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v33 = *(a1 + 32);
  v34 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v30 = *(a2 + 32);
  v31 = *(a2 + 40);
  v32 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  if ((~v2 & 0xF000000000000007) == 0 && (*(a1 + 24) & 7) == 7)
  {
    v29 = *(a1 + 56);
    v27 = *(a2 + 64);
    v28 = *(a1 + 64);
    sub_1D62B738C(v3, v2, v5, v4);
    sub_1D62B738C(v10, v9, v11, v12);
    if ((~v9 & 0xF000000000000007) == 0 && (v12 & 7) == 7)
    {
      sub_1D62B7110(v3, v2, v5, v4);
      goto LABEL_11;
    }

LABEL_9:
    sub_1D62B7110(v3, v2, v5, v4);
    sub_1D62B7110(v10, v9, v11, v12);
    return 0;
  }

  v39 = *a1;
  v40 = v2;
  v41 = v5;
  v42 = v4;
  if ((~v9 & 0xF000000000000007) == 0 && (v12 & 7) == 7)
  {
    sub_1D62B738C(v3, v2, v5, v4);
    sub_1D62B738C(v10, v9, v11, v12);
    sub_1D62B738C(v3, v2, v5, v4);
    sub_1D62B7130(v3, v2, v5, v4);
    goto LABEL_9;
  }

  v29 = v7;
  v27 = v14;
  v28 = v8;
  v35 = v10;
  v36 = v9;
  v37 = v11;
  v38 = v12;
  sub_1D62B738C(v3, v2, v5, v4);
  sub_1D62B738C(v10, v9, v11, v12);
  sub_1D62B738C(v3, v2, v5, v4);
  v15 = static FormatMenuTitle.== infix(_:_:)(&v39, &v35);
  sub_1D62B7130(v35, v36, v37, v38);
  sub_1D62B7130(v39, v40, v41, v42);
  sub_1D62B7110(v3, v2, v5, v4);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if ((~(v33 & v6) & 0x3000000000000007) == 0)
  {
    v16 = v30;
    v17 = v32;
    v18 = v34;
    sub_1D670818C(v33, v34, v6);
    v19 = v31;
    sub_1D670818C(v30, v31, v32);
    if ((v30 & 0x3000000000000007 & v32) == 0x3000000000000007)
    {
      sub_1D62B7020(v33, v34, v6);
      goto LABEL_19;
    }

LABEL_16:
    sub_1D62B7020(v33, v18, v6);
    sub_1D62B7020(v16, v19, v17);
    return 0;
  }

  v18 = v34;
  v39 = v33;
  v40 = v34;
  v41 = v6;
  v16 = v30;
  v19 = v31;
  v17 = v32;
  if ((v30 & 0x3000000000000007 & v32) == 0x3000000000000007)
  {
    sub_1D670818C(v33, v34, v6);
    sub_1D670818C(v30, v31, v32);
    sub_1D670818C(v33, v34, v6);
    sub_1D62B703C(v33, v34, v6);
    goto LABEL_16;
  }

  v35 = v30;
  v36 = v31;
  v37 = v32;
  sub_1D670818C(v33, v34, v6);
  sub_1D670818C(v30, v31, v32);
  sub_1D670818C(v33, v34, v6);
  v21 = static FormatMenuImage.== infix(_:_:)(&v39, &v35);
  sub_1D62B703C(v35, v36, v37);
  sub_1D62B703C(v39, v40, v41);
  sub_1D62B7020(v33, v34, v6);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (v29 == 3)
  {
    if (v13 == 3)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v13 == 3)
  {
    return 0;
  }

  v22 = 0x746C7561666564;
  if (v29)
  {
    if (v29 == 1)
    {
      v23 = 0x7463757274736564;
      v24 = 0xEB00000000657669;
    }

    else
    {
      v24 = 0xE600000000000000;
      v23 = 0x656E696C6E69;
    }
  }

  else
  {
    v24 = 0xE700000000000000;
    v23 = 0x746C7561666564;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v22 = 0x7463757274736564;
      v25 = 0xEB00000000657669;
    }

    else
    {
      v25 = 0xE600000000000000;
      v22 = 0x656E696C6E69;
    }
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  if (v23 == v22 && v24 == v25)
  {
  }

  else
  {
    v26 = sub_1D72646CC();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_37:

  return sub_1D6352660(v28, v27);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed15FormatMenuTitleOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = (v1 >> 2) & 1;
  v3 = (2 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7)) | (v1 << 8);
  v4 = 1024 - (v2 | v3 & 0x3FE);
  if ((v3 & 0x3FE) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed15FormatMenuImageOSg(void *a1)
{
  v1 = a1[2];
  v2 = (v1 >> 52) & 0x300;
  LODWORD(v1) = (*a1 >> 57) & 0x18 | *a1 & 7 | (32 * (v1 & 7)) | v2;
  v3 = 1024 - ((2 * v1) & 0x3FE | (v2 >> 9));
  if (((2 * v1) & 0x3FE) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6D9A16C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6D9A1B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6D9A214(void *a1)
{
  a1[1] = sub_1D66F3C9C();
  a1[2] = sub_1D66F366C();
  result = sub_1D6D9A24C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D9A24C()
{
  result = qword_1EC895C70;
  if (!qword_1EC895C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C70);
  }

  return result;
}

unint64_t sub_1D6D9A2A0(uint64_t a1)
{
  result = sub_1D6D9A2C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D9A2C8()
{
  result = qword_1EC895C78;
  if (!qword_1EC895C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895C78);
  }

  return result;
}

uint64_t FeedEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a1;
  v3 = sub_1D72582BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D72582DC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  sub_1D5BE5D04();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v14 = *MEMORY[0x1E6968DF0];
  v15 = *(v4 + 104);
  v15(v7, v14, v3);
  sub_1D72582EC();
  v35 = sub_1D725738C();
  a2[2] = v35;
  sub_1D5BE5D60();
  sub_1D7261FDC();
  sub_1D7258A4C();
  v15(v7, v14, v3);
  v16 = v34;
  sub_1D72582EC();
  a2[3] = sub_1D725738C();
  *(a2 + *(type metadata accessor for FeedEntity() + 32)) = v16;
  v17 = [swift_unknownObjectRetain() identifier];
  if (!v17)
  {
    sub_1D726207C();
    v17 = sub_1D726203C();
  }

  v18 = [objc_opt_self() nss:v17 NewsURLForTagID:?];

  sub_1D72584EC();
  v19 = [v16 identifier];
  v20 = sub_1D726207C();
  v22 = v21;

  *a2 = v20;
  a2[1] = v22;
  v23 = [v16 subtitle];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D726207C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v36 = v25;
  v37 = v27;
  sub_1D725737C();
  v28 = [v16 name];
  v29 = sub_1D726207C();
  v31 = v30;

  v36 = v29;
  v37 = v31;
  sub_1D725737C();
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for FeedEntity()
{
  result = qword_1EDF12EF8;
  if (!qword_1EDF12EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeedEntity.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedEntity.tag.getter()
{
  type metadata accessor for FeedEntity();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D6D9A7B8@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DBC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EC895C80;
}

uint64_t static FeedEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DBC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EC895C80;
}

uint64_t sub_1D6D9A89C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87DBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72575BC();
  v3 = __swift_project_value_buffer(v2, qword_1EC895C88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static FeedEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC87DBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D72575BC();
  v3 = __swift_project_value_buffer(v2, qword_1EC895C88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D6D9A9EC(uint64_t a1)
{
  v2 = sub_1D6D9B690(&qword_1EDF12F50, type metadata accessor for FeedEntity);

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t FeedEntity.displayRepresentation.getter()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1D5C0D694(0, &qword_1EDF3C488, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v24 - v3;
  v5 = sub_1D72582DC();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1D726201C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  sub_1D5C0D694(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v24 - v19;
  sub_1D725736C();
  if (v28)
  {
    v25 = v12;
    sub_1D726200C();
    sub_1D7261FFC();
    v12 = v25;
    sub_1D7261FEC();

    sub_1D7261FFC();
    sub_1D72582CC();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v26 + 56))(v16, v21, 1, v27);
  sub_1D5C0D600(v16, v20);
  sub_1D726200C();
  sub_1D7261FFC();
  sub_1D725736C();
  sub_1D7261FEC();

  sub_1D7261FFC();
  sub_1D72582CC();
  sub_1D6D9B40C(v20, v12);
  v22 = sub_1D725744C();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  sub_1D725746C();
  return sub_1D6D9B4A0(v20);
}

uint64_t sub_1D6D9AE0C(uint64_t a1)
{
  v2 = sub_1D6D9B690(&unk_1EDF12F20, type metadata accessor for FeedEntity);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1D6D9AE88()
{
  sub_1D5C0D694(0, &qword_1EC8803F0, sub_1D5EC50C0, MEMORY[0x1E6959D18]);
  sub_1D725724C();
  sub_1D725723C();
  result = sub_1D72571EC();
  qword_1EC895C80 = result;
  return result;
}

uint64_t sub_1D6D9AF1C()
{
  v19 = MEMORY[0x1E6968E10];
  sub_1D5C0D694(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18 = &v17 - v2;
  v3 = sub_1D72582BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7258AAC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1D726202C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D72582DC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1D72575BC();
  __swift_allocate_value_buffer(v15, qword_1EC895C88);
  __swift_project_value_buffer(v15, qword_1EC895C88);
  sub_1D7261FDC();
  sub_1D7258A4C();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v3);
  sub_1D72582EC();
  (*(v13 + 56))(v18, 1, 1, v12);
  sub_1D5C0D694(0, &qword_1EDF02480, v19, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D727C500;
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  sub_1D72582AC();
  return sub_1D725759C();
}

uint64_t sub_1D6D9B40C(uint64_t a1, uint64_t a2)
{
  sub_1D5C0D694(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D9B4A0(uint64_t a1)
{
  sub_1D5C0D694(0, &qword_1EDF3C400, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static FeedEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for FeedEntity();
  v1 = sub_1D72585BC();
  v2 = sub_1D6D9B690(&qword_1EC895CA8, type metadata accessor for FeedEntity);
  v3 = sub_1D6D9B690(&unk_1EC895CB0, MEMORY[0x1E6968FB0]);

  return MEMORY[0x1EEDBF5F8](sub_1D6D9B614, 0, v0, v1, v2, v3);
}

uint64_t sub_1D6D9B614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for FeedEntity() + 28);
  v5 = sub_1D72585BC();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_1D6D9B690(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6D9B88C()
{
  if (!qword_1EC895CD0)
  {
    type metadata accessor for FeedEntity();
    sub_1D6D9B690(&qword_1EDF12F48, type metadata accessor for FeedEntity);
    v0 = sub_1D72575CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895CD0);
    }
  }
}

uint64_t sub_1D6D9B984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = sub_1D6D9B690(&unk_1EC895CB0, MEMORY[0x1E6968FB0]);

  return MEMORY[0x1EEDBF5F8](sub_1D6D9B614, 0, a1, v4, a2, v5);
}

void sub_1D6D9BA58()
{
  sub_1D5BE5D04();
  if (v0 <= 0x3F)
  {
    sub_1D5BE5D60();
    if (v1 <= 0x3F)
    {
      sub_1D72585BC();
      if (v2 <= 0x3F)
      {
        sub_1D5B65AF4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D6D9BB1C()
{
  if (!qword_1EC895CE0)
  {
    type metadata accessor for FeedEntity();
    sub_1D72585BC();
    sub_1D6D9B690(&qword_1EC895CA8, type metadata accessor for FeedEntity);
    sub_1D6D9B690(&unk_1EC895CB0, MEMORY[0x1E6968FB0]);
    v0 = sub_1D725C0EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895CE0);
    }
  }
}

void sub_1D6D9BC10(uint64_t a1@<X8>)
{
  v38 = *v1;
  v4 = *(v38 + 80);
  v43 = sub_1D726393C();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v5);
  v41 = v34 - v6;
  v7 = sub_1D7261B5C();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7261B9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v15 = sub_1D726308C();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8018], v11);
  v16 = sub_1D7261BBC();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v35 = a1;
    v36 = v2;
    v17 = swift_allocBox();
    v19 = v18;
    v37 = *(v4 - 8);
    (*(v37 + 56))(v18, 1, 1, v4);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v34[1] = v20 + 16;
    v21 = dispatch_semaphore_create(0);
    sub_1D725B77C();
    v22 = swift_allocObject();
    v22[2] = v4;
    v22[3] = *(v38 + 88);
    v22[4] = v17;
    v38 = v17;

    v23 = sub_1D725B92C();
    sub_1D725BA8C();

    v24 = sub_1D725B92C();
    sub_1D725BACC();

    *(swift_allocObject() + 16) = v21;
    v25 = v21;
    v26 = sub_1D725B92C();
    sub_1D725BB2C();

    sub_1D7261B3C();
    sub_1D726318C();
    (*(v39 + 8))(v10, v40);
    swift_beginAccess();
    v28 = v41;
    v27 = v42;
    v29 = v19;
    v30 = v37;
    (*(v42 + 16))(v41, v29, v43);
    if ((*(v30 + 48))(v28, 1, v4) == 1)
    {
      (*(v27 + 8))(v28, v43);
      swift_beginAccess();
      v31 = *(v20 + 16);
      sub_1D6836948();
      swift_allocError();
      *v32 = v31;
      *(v32 + 8) = 0;
      *(v32 + 16) = 3;
      swift_willThrow();
      v33 = v31;
    }

    else
    {

      (*(v30 + 32))(v35, v28, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6D9C19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D726393C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  v10 = swift_projectBox();
  v11 = *(a3 - 8);
  (*(v11 + 16))(v9, a1, a3);
  (*(v11 + 56))(v9, 0, 1, a3);
  swift_beginAccess();
  return (*(v6 + 40))(v10, v9, v5);
}

id sub_1D6D9C308(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t sub_1D6D9C35C()
{

  return v0;
}

uint64_t sub_1D6D9C42C()
{
  sub_1D6D9C35C();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6D9C4AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D725BDCC();
  *a1 = result;
  return result;
}

unint64_t sub_1D6D9C50C(uint64_t a1)
{
  result = sub_1D6D9C534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D9C534()
{
  result = qword_1EC895CE8;
  if (!qword_1EC895CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895CE8);
  }

  return result;
}

uint64_t FormatDecoration.init(identifier:name:description:content:columns:zIndex:options:selectors:pin:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v18 = *a7;
  v19 = *a14;
  v20 = *(a14 + 4);
  v21 = *(a14 + 10);
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v18;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = v19;
  *(a9 + 106) = v21;
  *(a9 + 104) = v20;
  return result;
}

uint64_t FormatDecoration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatDecoration.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatDecoration.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatDecoration.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FormatDecoration.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FormatDecoration.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FormatDecoration.columns.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t FormatDecoration.options.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t FormatDecoration.selectors.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t FormatDecoration.pin.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 106);
  v4 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 10) = v3;
  *(a1 + 8) = v4;
  return sub_1D62B7DCC(v2, v4 | (v3 << 16));
}

BOOL _s8NewsFeed16FormatDecorationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v35 = *(a1 + 56);
  v29 = *(a1 + 64);
  v32 = *(a1 + 72);
  v30 = *(a1 + 80);
  v26 = *(a1 + 88);
  v24 = *(a1 + 96);
  v22 = *(a1 + 104);
  v23 = *(a1 + 106);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v31 = *(a2 + 72);
  v27 = *(a2 + 64);
  v28 = *(a2 + 80);
  v25 = *(a2 + 88);
  v33 = *(a2 + 96);
  v34 = *(a2 + 56);
  v20 = *(a2 + 104);
  v21 = *(a2 + 106);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v8 || v3 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (!v9 || (v4 != v10 || v6 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v39 = v5;
  v36 = v11;

  v12 = static FormatDecorationContent.== infix(_:_:)(&v39, &v36);

  if ((v12 & 1) == 0 || (sub_1D5E21790(v35, v34) & 1) == 0)
  {
    return 0;
  }

  if (v32)
  {
    v13 = v33;
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    v14 = v31;
    if (v29 != v27)
    {
      v14 = 1;
    }

    v13 = v33;
    if (v14)
    {
      return 0;
    }
  }

  if ((sub_1D633BCCC(v30, v28) & 1) == 0 || (sub_1D5BFC390(v26, v25) & 1) == 0)
  {
    return 0;
  }

  v15 = v22 | (v23 << 16);
  v16 = v20 | (v21 << 16);
  if (BYTE2(v15) != 255)
  {
    v17 = v24;
    v39 = v24;
    v40 = v22;
    v41 = (v22 | (v23 << 16)) >> 16;
    if (BYTE2(v16) == 255)
    {
      sub_1D62B7DCC(v24, v15);
      sub_1D62B7DCC(v13, v16);
      sub_1D62B7DCC(v24, v15);
      sub_1D610CA74(v24, v15, SBYTE2(v15), sub_1D60CF6A8, sub_1D60CF6DC);
      goto LABEL_33;
    }

    v36 = v13;
    v37 = v20;
    v38 = (v20 | (v21 << 16)) >> 16;
    sub_1D62B7DCC(v24, v15);
    sub_1D62B7DCC(v13, v16);
    sub_1D62B7DCC(v24, v15);
    v19 = _s8NewsFeed31FormatSupplementaryNodePinTraitO2eeoiySbAC_ACtFZ_0(&v39, &v36);
    sub_1D610CA74(v36, v37, v38, sub_1D60CF6A8, sub_1D60CF6DC);
    sub_1D610CA74(v39, v40, v41, sub_1D60CF6A8, sub_1D60CF6DC);
    sub_1D62B6F70(v24, v15);
    return (v19 & 1) != 0;
  }

  v17 = v24;
  sub_1D62B7DCC(v24, v22 | (v23 << 16));
  sub_1D62B7DCC(v13, v16);
  if (BYTE2(v16) != 255)
  {
LABEL_33:
    sub_1D62B6F70(v17, v15);
    sub_1D62B6F70(v13, v16);
    return 0;
  }

  sub_1D62B6F70(v24, v15);
  return 1;
}

unint64_t sub_1D6D9CD28(uint64_t a1)
{
  result = sub_1D5B4C8E0();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatItemBindingsNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v43[4] = &protocol witness table for FormatNodeBinderContext;
  v43[3] = type metadata accessor for FormatNodeBinderContext();
  v43[0] = a2;

  sub_1D6D9DFEC(v43, v44);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  v40 = v44[4];
  v41 = v44[5];
  v42[0] = v45[0];
  *(v42 + 9) = *(v45 + 9);
  v36 = v44[0];
  v37 = v44[1];
  v38 = v44[2];
  v39 = v44[3];
  swift_beginAccess();
  v8 = v2[2];
  v9 = v2[3];

  v10 = sub_1D6E8DD40(v8, v9);
  v12 = v11;

  v29 = 0u;
  v28 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = v40;
  v24 = v41;
  v25[0] = v42[0];
  *(v25 + 9) = *(v42 + 9);
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = MEMORY[0x1E69E7CD0];
  v18[0] = 1;
  v22 = v39;
  v26 = v10;
  v27 = v12;
  sub_1D5F8A3DC(&v36, v17);
  sub_1D6D04DCC(a1, a2);
  v13 = sub_1D6D9E2BC(v18, a2);
  swift_beginAccess();
  v14 = v4[7];

  sub_1D6213004(a1, v13, v14);

  swift_beginAccess();
  v15 = v4[8];

  sub_1D62160B4(a1, v13, v15);

  swift_beginAccess();
  v16 = v4[9];

  sub_1D6215F90(a1, v13, v16);
  sub_1D6C20C14(v18);

  sub_1D66876CC(&v36);
}

uint64_t sub_1D6D9D0F4()
{
  v2 = v0;
  v4 = v0[4];
  v3 = v0[5];
  sub_1D5EB99F0();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = v6;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 76) = -24576;
  *(v5 + 72) = 0;
  v16 = v5;
  swift_beginAccess();

  sub_1D6C4D418(v7);

  if (!v1)
  {
    v8 = v2[7];

    sub_1D626DA28(&v16, v8);

    swift_beginAccess();
    v9 = v2[8];

    sub_1D626DEC0(&v16, v9);

    swift_beginAccess();
    v10 = v2[9];

    sub_1D626DB9C(&v16, v10);

    v12 = v16;
    swift_beginAccess();

    v14 = sub_1D60DFF0C(v13);

    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v12;

      sub_1D6C4D24C(v15);
    }
  }
}

uint64_t FormatItemBindingsNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatItemBindingsNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatItemBindingsNode.itemIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatItemBindingsNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatItemBindingsNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t FormatItemBindingsNode.styles.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t FormatItemBindingsNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

void *FormatItemBindingsNode.__allocating_init(identifier:itemIdentifier:selectors:options:styles:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  swift_beginAccess();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  swift_beginAccess();
  v16[6] = a5;
  swift_beginAccess();
  v16[7] = a6;
  swift_beginAccess();
  v16[8] = a7;
  swift_beginAccess();
  v16[9] = a8;
  return v16;
}

void *FormatItemBindingsNode.init(identifier:itemIdentifier:selectors:options:styles:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_beginAccess();
  v8[6] = a5;
  swift_beginAccess();
  v8[7] = a6;
  swift_beginAccess();
  v8[8] = a7;
  swift_beginAccess();
  v8[9] = a8;
  return v8;
}

uint64_t FormatItemBindingsNode.deinit()
{

  return v0;
}

uint64_t FormatItemBindingsNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D6D9D930@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D669A6D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_1D6D9D98C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v11 = type metadata accessor for FormatOption();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[7];
  *&v84 = a1[6];
  *(&v84 + 1) = v16;
  sub_1D5CBA110(v84, v16);
  v17 = sub_1D6B0D084(&v84, a3, a4);
  sub_1D5CBA0FC(v84, *(&v84 + 1));
  if (!v5)
  {
    v79 = v7;
    v77 = v12;
    v80 = v15;
    v81 = v11;
    v76 = 0;
    v18 = a1[11];
    v19 = *(v18 + 16);
    v20 = MEMORY[0x1E69E7CC0];
    v78 = v17;
    v75 = a1;
    if (v19)
    {
      v82 = MEMORY[0x1E69E7CC0];

      sub_1D69979A0(0, v19, 0);
      v20 = v82;
      v21 = v19 - 1;
      for (i = 32; ; i += 64)
      {
        v23 = *(v18 + i);
        v24 = *(v18 + i + 16);
        v25 = *(v18 + i + 48);
        v86 = *(v18 + i + 32);
        v87 = v25;
        v84 = v23;
        v85 = v24;
        v26 = swift_allocObject();
        v27 = *(v18 + i + 48);
        v29 = *(v18 + i);
        v28 = *(v18 + i + 16);
        *(v26 + 48) = *(v18 + i + 32);
        *(v26 + 64) = v27;
        *(v26 + 16) = v29;
        *(v26 + 32) = v28;
        sub_1D5C8C900(&v84, v83);
        v82 = v20;
        v31 = *(v20 + 16);
        v30 = *(v20 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D69979A0((v30 > 1), v31 + 1, 1);
          v20 = v82;
        }

        *(v20 + 16) = v31 + 1;
        *(v20 + 8 * v31 + 32) = v26 | 0x9000000000000004;
        if (!v21)
        {
          break;
        }

        --v21;
      }
    }

    v32 = v79;
    swift_beginAccess();
    v33 = *(v32 + 64);
    v34 = *(v33 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      v88 = MEMORY[0x1E69E7CC0];

      sub_1D69979A0(0, v34, 0);
      v35 = v88;
      v36 = v34 - 1;
      for (j = 32; ; j += 64)
      {
        v38 = *(v33 + j);
        v39 = *(v33 + j + 16);
        v40 = *(v33 + j + 48);
        v86 = *(v33 + j + 32);
        v87 = v40;
        v84 = v38;
        v85 = v39;
        v41 = swift_allocObject();
        v42 = *(v33 + j + 48);
        v44 = *(v33 + j);
        v43 = *(v33 + j + 16);
        *(v41 + 48) = *(v33 + j + 32);
        *(v41 + 64) = v42;
        *(v41 + 16) = v44;
        *(v41 + 32) = v43;
        sub_1D5C8C900(&v84, v83);
        v88 = v35;
        v46 = *(v35 + 16);
        v45 = *(v35 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_1D69979A0((v45 > 1), v46 + 1, 1);
          v35 = v88;
        }

        *(v35 + 16) = v46 + 1;
        *(v35 + 8 * v46 + 32) = v41 | 0x4000000000000004;
        if (!v36)
        {
          break;
        }

        --v36;
      }
    }

    *&v84 = v20;
    sub_1D6985C70(v35);
    sub_1D6B0BBC4(v84);

    v47 = v75;
    v48 = v75[12];
    swift_beginAccess();

    v50 = sub_1D5D6021C(v49, v48);
    v74[1] = sub_1D6B0ACE8(v50, 0);

    v51 = v47[13];
    v52 = *(v51 + 16);
    v53 = MEMORY[0x1E69E7CC0];
    if (v52)
    {
      v83[0] = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v52, 0);
      v53 = v83[0];
      v54 = v51 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v55 = *(v77 + 72);
      do
      {
        v56 = v80;
        sub_1D5D25594(v54, v80, type metadata accessor for FormatOption);
        v57 = swift_allocBox();
        sub_1D5D5E5AC(v56, v58, type metadata accessor for FormatOption);
        v83[0] = v53;
        v60 = *(v53 + 16);
        v59 = *(v53 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1D5D24610((v59 > 1), v60 + 1, 1);
          v53 = v83[0];
        }

        *(v53 + 16) = v60 + 1;
        *(v53 + 8 * v60 + 32) = v57 | 0x9000000000000004;
        v54 += v55;
        --v52;
      }

      while (v52);
    }

    v61 = v79;
    swift_beginAccess();
    v62 = *(v61 + 56);
    v63 = *(v62 + 16);
    v64 = MEMORY[0x1E69E7CC0];
    if (v63)
    {
      v88 = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v63, 0);
      v64 = v88;
      v65 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = v62;
      v66 = v62 + v65;
      v67 = *(v77 + 72);
      do
      {
        v68 = v80;
        sub_1D5D25594(v66, v80, type metadata accessor for FormatOption);
        v69 = swift_allocBox();
        sub_1D5D5E5AC(v68, v70, type metadata accessor for FormatOption);
        v88 = v64;
        v72 = *(v64 + 16);
        v71 = *(v64 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_1D5D24610((v71 > 1), v72 + 1, 1);
          v64 = v88;
        }

        *(v64 + 16) = v72 + 1;
        *(v64 + 8 * v72 + 32) = v69 | 0x4000000000000004;
        v66 += v67;
        --v63;
      }

      while (v63);
    }

    v88 = v53;
    sub_1D6985C44(v64);
    v6 = sub_1D6B0C068(v88);
  }

  return v6;
}

uint64_t sub_1D6D9DFEC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  sub_1D5CBB26C();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28[-v12];
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = (*(v14 + 8))(v15, v14) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
  swift_beginAccess();
  v17 = *(v16 + 8);

  if (*(v17 + 16) && (v18 = sub_1D5B69D90(*(v3 + 32), *(v3 + 40)), (v19 & 1) != 0))
  {
    sub_1D5D25594(*(v17 + 56) + *(v36 + 72) * v18, v9, sub_1D5CBB26C);
    sub_1D5D5E5AC(v9, v13, sub_1D5CBB26C);

    v20 = v13[5];
    v33 = v13[4];
    v34 = v20;
    v35[0] = v13[6];
    *(v35 + 9) = *(v13 + 105);
    v21 = v13[1];
    v29 = *v13;
    v30 = v21;
    v22 = v13[3];
    v31 = v13[2];
    v32 = v22;
    sub_1D5F8A3DC(&v29, v28);
    result = sub_1D5BE7C2C(v13, sub_1D5CBB26C);
    v24 = v34;
    a2[4] = v33;
    a2[5] = v24;
    a2[6] = v35[0];
    *(a2 + 105) = *(v35 + 9);
    v25 = v30;
    *a2 = v29;
    a2[1] = v25;
    v26 = v32;
    a2[2] = v31;
    a2[3] = v26;
  }

  else
  {

    type metadata accessor for FormatLayoutError();
    sub_1D6D9ED7C(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v27 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6D9E2BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for GroupLayoutContext();
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v91 = v8;
  v94 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for FormatOption();
  v9 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v10);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  v13 = *(a1 + 112);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v98 = v3;
  v99 = a2;
  if (v14)
  {
    *&v104 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v14, 0);
    v15 = v104;
    v16 = *(v9 + 80);
    v97 = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v101 = v9;
    v18 = *(v9 + 72);
    do
    {
      sub_1D5D25594(v17, v12, type metadata accessor for FormatOption);
      v19 = swift_allocBox();
      sub_1D5D5E5AC(v12, v20, type metadata accessor for FormatOption);
      *&v104 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D5D24610((v21 > 1), v22 + 1, 1);
        v15 = v104;
      }

      *(v15 + 16) = v22 + 1;
      *(v15 + 8 * v22 + 32) = v19 | 0x9000000000000004;
      v17 += v18;
      --v14;
    }

    while (v14);

    v3 = v98;
    a2 = v99;
    v9 = v101;
  }

  swift_beginAccess();
  v23 = *(v3 + 56);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    *&v104 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v24, 0);
    v25 = v104;
    v26 = *(v9 + 80);
    v97 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v101 = *(v9 + 72);
    do
    {
      sub_1D5D25594(v27, v12, type metadata accessor for FormatOption);
      v28 = swift_allocBox();
      sub_1D5D5E5AC(v12, v29, type metadata accessor for FormatOption);
      *&v104 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D5D24610((v30 > 1), v31 + 1, 1);
        v25 = v104;
      }

      *(v25 + 16) = v31 + 1;
      *(v25 + 8 * v31 + 32) = v28 | 0x4000000000000004;
      v27 += v101;
      --v24;
    }

    while (v24);

    a2 = v99;
  }

  v111 = v15;
  sub_1D6985C44(v25);
  v32 = v100;

  sub_1D6985C44(v33);
  v34 = v111;
  v35 = *(v32 + 104);
  swift_beginAccess();

  v37 = sub_1D5D6021C(v36, v35);

  v39 = sub_1D5D6021C(v38, v37);
  v110 = 0;
  v40 = *(v39 + 16);
  v41 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  v101 = *(a2 + 24);

  if (v40 && (sub_1D6D0A744(v41, v39) & 1) == 0)
  {
    v42 = 1;
    swift_beginAccess();
    v110 = 1;

    v95 = sub_1D5D6021C(v43, v41);
  }

  else
  {
    v95 = v41;

    v42 = 0;
  }

  v44 = *(v34 + 16);
  v102 = v39;
  if (v44)
  {
    v45 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    v46 = sub_1D6F619D8(v34);

    if (v46)
    {
      v96 = v46;
      swift_beginAccess();
      v110 = 1;
      v92 = 1;
    }

    else
    {
      v92 = v42;

      v96 = v45;
    }
  }

  else
  {
    v92 = v42;

    v96 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  }

  v47 = *(a2 + 40);
  v93 = *(a2 + 32);
  v98 = v47;

  v97 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], a2, &v110);
  v48 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v49 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
  v51 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
  v50 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
  v52 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
  v53 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
  v54 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  sub_1D62E312C(v48, v49, v51, v50, v52, v53, *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48));
  v100 = sub_1D6BEC878(v100 + 152, a2, &v110);
  v56 = v55;
  v57 = *(a2 + 96);
  v106 = *(a2 + 80);
  v107 = v57;
  v108 = *(a2 + 112);
  v109 = *(a2 + 128);
  v58 = *(a2 + 64);
  v104 = *(a2 + 48);
  v105 = v58;
  swift_beginAccess();
  if (v110 == 1)
  {
    v82 = v51;
    v83 = v56;
    v84 = v54;
    v85 = v53;
    v86 = v52;
    v87 = v50;
    v88 = v49;
    v89 = v48;
    if (v92)
    {
      sub_1D5D23AA4();
      v59 = v94;
      sub_1D5D25594(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v94, type metadata accessor for GroupLayoutContext);
      v60 = (*(v90 + 80) + 16) & ~*(v90 + 80);
      v61 = (v91 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      v63 = v62 + v60;
      v64 = v59;
      sub_1D5D5E5AC(v59, v63, type metadata accessor for GroupLayoutContext);
      v65 = v95;
      v66 = v96;
      *(v62 + v61) = v96;
      *(v62 + ((v61 + 15) & 0xFFFFFFFFFFFFFFF8)) = v65;
      a2 = v99;
      sub_1D5CF6A5C(&v104, v103);

      v92 = sub_1D725A80C();
    }

    else
    {
      v67 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
      sub_1D5CF6A5C(&v104, v103);
      v92 = v67;

      v64 = v94;
      v65 = v95;
      v66 = v96;
    }

    v68 = *(a2 + 16);
    sub_1D5D25594(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v64, type metadata accessor for GroupLayoutContext);
    v69 = *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
    sub_1D5B68374(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v103);
    type metadata accessor for FormatNodeBinderContext();
    a2 = swift_allocObject();
    v70 = v101;
    *(a2 + 16) = v68;
    *(a2 + 24) = v70;
    v71 = v107;
    *(a2 + 80) = v106;
    *(a2 + 96) = v71;
    *(a2 + 112) = v108;
    *(a2 + 128) = v109;
    v72 = v105;
    *(a2 + 48) = v104;
    *(a2 + 64) = v72;
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v66;
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v65;
    sub_1D5D25594(v64, a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v74 = v97;
    v73 = v98;
    *(a2 + 32) = v93;
    *(a2 + 40) = v73;
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v74;
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v69;
    sub_1D5B68374(v103, a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v75 = a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v76 = v88;
    *v75 = v89;
    *(v75 + 8) = v76;
    v77 = v86;
    v78 = v87;
    *(v75 + 16) = v82;
    *(v75 + 24) = v78;
    *(v75 + 32) = v77;
    *(v75 + 40) = v85;
    *(v75 + 48) = v84;
    v79 = (a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v80 = v83;
    *v79 = v100;
    v79[1] = v80;

    __swift_destroy_boxed_opaque_existential_1(v103);
    sub_1D5BE7C2C(v64, type metadata accessor for GroupLayoutContext);
    *(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v92;
  }

  else
  {
    sub_1D5CF6A5C(&v104, v103);

    sub_1D5D09C48(&v104);

    sub_1D62E31A0(v48, v49, v51, v50, v52, v53, v54);
  }

  return a2;
}

uint64_t sub_1D6D9EBAC(uint64_t a1, uint64_t a2)
{
  result = sub_1D6D9ED7C(&qword_1EC895CF0, a2, type metadata accessor for FormatItemBindingsNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D9EC04(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6D9ED7C(&qword_1EDF0DAC8, a2, type metadata accessor for FormatItemBindingsNode);
  a1[2] = sub_1D6D9ED7C(&qword_1EDF0DAD0, v3, type metadata accessor for FormatItemBindingsNode);
  result = sub_1D6D9ED7C(&qword_1EC895CF8, v4, type metadata accessor for FormatItemBindingsNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6D9ECB0(uint64_t a1, uint64_t a2)
{
  result = sub_1D6D9ED7C(&qword_1EC895D00, a2, type metadata accessor for FormatItemBindingsNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D9ED7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t static Commands.copyIssue.getter()
{
  if (qword_1EDF3AAD8 != -1)
  {
    swift_once();
  }
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE9copyIssue5issueACSo7FCIssueC_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AAD8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  v10 = [objc_opt_self() ts_link];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v13[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v11 = a1;
  return sub_1D725D3AC();
}

uint64_t AudioColorPalette.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioColorPalette() + 56);
  sub_1D6D9F168();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AudioColorPalette()
{
  result = qword_1EDF10FD0;
  if (!qword_1EDF10FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6D9F168()
{
  if (!qword_1EDF17300)
  {
    v0 = sub_1D725CD4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17300);
    }
  }
}

uint64_t AudioColorPalette.Theme.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

void sub_1D6D9F244()
{
  v23 = type metadata accessor for AudioColorPalette();
  __swift_allocate_value_buffer(v23, qword_1EDF10FE8);
  v0 = __swift_project_value_buffer(v23, qword_1EDF10FE8);
  v1 = objc_opt_self();
  v22 = [v1 secondarySystemBackgroundColor];
  v2 = [v1 whiteColor];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  v21 = [v1 ts:v2 dynamicColor:v3 withDarkStyleVariant:?];

  v4 = [v1 whiteColor];
  v5 = [v1 secondaryLabelColor];
  v6 = [v1 systemPinkColor];
  v7 = [v1 quaternaryLabelColor];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.9 alpha:1.0];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.1 alpha:1.0];
  v10 = [v1 ts:v8 dynamicColor:v9 withDarkStyleVariant:?];

  v20 = [v1 secondaryLabelColor];
  v19 = [v1 labelColor];
  v11 = [v1 separatorColor];
  *v0 = v22;
  v0[1] = v21;
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v10;
  v12 = v22;
  v13 = v21;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v10;
  sub_1D725CD2C();

  v0[7] = v20;
  v0[8] = v19;
  v0[9] = v11;
}

uint64_t AudioColorPalette.init(backgroundColor:secondaryBackgroundColor:primaryColor:secondaryColor:accentColor:iconColor:thumbnailPlaceholderColor:headphoneImageColor:ellipsisImageColor:separatorColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  type metadata accessor for AudioColorPalette();
  result = sub_1D725CD2C();
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t static AudioColorPalette.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF10FE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AudioColorPalette();
  v3 = __swift_project_value_buffer(v2, qword_1EDF10FE8);

  return sub_1D6D9F620(v3, a1);
}

uint64_t sub_1D6D9F620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioColorPalette();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6D9F688()
{
  result = qword_1EC895D08;
  if (!qword_1EC895D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895D08);
  }

  return result;
}

void sub_1D6D9F704()
{
  sub_1D5C0B9F0();
  if (v0 <= 0x3F)
  {
    sub_1D6D9F168();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D6D9F7B0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v6 = sub_1D6DA423C(v3);
  v8 = v7;
  v9 = sub_1D6DA4684(v3);
  v223 = v10;
  v227 = v9;
  sub_1D6DA496C(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_1D73032E0;
  sub_1D5D64D70(0, &qword_1EC893920, &type metadata for DebugInspectionDataItem, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7281190;
  *(v11 + 32) = 0x696669746E656449;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = type metadata accessor for DebugInspectionArticleData(0);
  v212 = v3;
  v13 = (v3 + v12[15]);
  v14 = *v13;
  v15 = v13[1];
  v16 = MEMORY[0x1E69E61C8];
  *(v11 + 72) = MEMORY[0x1E69E6158];
  *(v11 + 80) = v16;
  *(v11 + 48) = v14;
  *(v11 + 56) = v15;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0x656C746954;
  *(v11 + 104) = 0xE500000000000000;
  v17 = (v3 + v12[32]);
  v18 = v17[1];
  if (v18)
  {
    *(v11 + 112) = *v17;
    *(v11 + 120) = v18;
    v19 = MEMORY[0x1E69E61C8];
    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v11 + 112) = 0;
    *(v11 + 120) = 0;
    *(v11 + 128) = 0;
  }

  *(v11 + 136) = v20;
  *(v11 + 144) = v19;
  *(v11 + 152) = 0;
  *(v11 + 160) = 0x65726F6353;
  *(v11 + 168) = 0xE500000000000000;
  v213 = (v3 + *(type metadata accessor for DebugInspectionHeadline(0) + 20));
  memcpy(__dst, v213 + 7, sizeof(__dst));
  v210 = v5;
  if (sub_1D693E2E0(__dst) == 1)
  {
    v21 = 0;
    v22 = 0;
    *(v11 + 176) = 0;
    *(v11 + 184) = 0;
    *(v11 + 192) = 0;
  }

  else
  {
    *(v11 + 176) = __dst[32];
    v22 = MEMORY[0x1E69E6418];
    v21 = MEMORY[0x1E69E63B0];
  }

  *(v11 + 200) = v21;
  *(v11 + 208) = v22;
  *(v11 + 216) = 0;
  *(v11 + 224) = 0x20676E69726F6353;
  *(v11 + 232) = 0xEF6E6F6973726556;
  memcpy(v249, v213 + 7, sizeof(v249));
  if (sub_1D693E2E0(v249) == 1)
  {
    v23 = 0;
    v24 = 0;
    *(v11 + 240) = 0;
    *(v11 + 248) = 0;
    *(v11 + 256) = 0;
  }

  else
  {
    *(v11 + 240) = v249[46];
    v24 = MEMORY[0x1E69E7720];
    v23 = MEMORY[0x1E69E76D8];
  }

  *(v11 + 264) = v23;
  *(v11 + 272) = v24;
  *(v11 + 280) = 0;
  *(v11 + 288) = 0x656372756F53;
  *(v11 + 296) = 0xE600000000000000;
  v25 = MEMORY[0x1E69E6158];
  *(v11 + 328) = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E61C8];
  *(v11 + 336) = MEMORY[0x1E69E61C8];
  *(v11 + 304) = v6;
  *(v11 + 312) = v8;
  *(v11 + 344) = 0;
  strcpy((v11 + 352), "Publisher Name");
  *(v11 + 367) = -18;
  v27 = v3 + v12[27];
  v28 = *(v27 + 16);
  v29 = *(v27 + 24);
  *(v11 + 392) = v25;
  *(v11 + 400) = v26;
  *(v11 + 368) = v28;
  *(v11 + 376) = v29;
  *(v11 + 408) = 0;
  *(v11 + 416) = 0x72657473756C43;
  *(v11 + 424) = 0xE700000000000000;
  v30 = *(v3 + 40);
  v31 = *(v3 + 48);
  *(v11 + 456) = v25;
  *(v11 + 464) = v26;
  *(v11 + 432) = v30;
  *(v11 + 440) = v31;
  *(v11 + 472) = 0;
  *(v11 + 480) = 0x6565726772657645;
  *(v11 + 488) = 0xE90000000000006ELL;
  LOBYTE(v30) = *(v3 + v12[20]);
  v32 = MEMORY[0x1E69E6370];
  *(v11 + 520) = MEMORY[0x1E69E6370];
  v33 = MEMORY[0x1E69E6398];
  *(v11 + 528) = MEMORY[0x1E69E6398];
  *(v11 + 496) = v30;
  *(v11 + 536) = 0;
  *(v11 + 544) = 0x646165722D6F43;
  *(v11 + 552) = 0xE700000000000000;
  LOBYTE(v30) = *(v3 + v12[21]);
  *(v11 + 584) = v32;
  *(v11 + 592) = v33;
  *(v11 + 560) = v30;
  *(v11 + 600) = 0;
  strcpy((v11 + 608), "Issue Article");
  *(v11 + 622) = -4864;
  LOBYTE(v30) = *(v3 + v12[24]);
  *(v11 + 648) = v32;
  *(v11 + 656) = v33;
  *(v11 + 624) = v30;
  *(v11 + 664) = 0;
  strcpy((v11 + 672), "Scoring Type");
  *(v11 + 685) = 0;
  *(v11 + 686) = -5120;
  v34 = v213[58];
  v35 = v213[59];
  *(v11 + 712) = v25;
  *(v11 + 720) = v26;
  *(v11 + 688) = v34;
  *(v11 + 696) = v35;
  *(v11 + 728) = 0;
  *(v11 + 736) = 0x20676E69726F6353;
  *(v11 + 744) = 0xEF747865746E6F43;
  v36 = v213[60];
  v37 = v213[61];
  *(v11 + 776) = v25;
  *(v11 + 784) = v26;
  *(v11 + 752) = v36;
  *(v11 + 760) = v37;
  *(v11 + 792) = 0;
  *(v11 + 800) = 0x676E6970756F7247;
  *(v11 + 808) = 0xEF6E6F7361655220;
  v38 = v213[3];
  v39 = v213[4];
  *(v11 + 840) = v25;
  *(v11 + 848) = v26;
  *(v11 + 816) = v38;
  *(v11 + 824) = v39;
  *(v11 + 856) = 0;
  v40 = (v11 + 880);
  *(v11 + 864) = 0xD000000000000019;
  *(v11 + 872) = 0x80000001D73F24F0;
  v41 = v212 + v12[25];
  if (v41[8])
  {
    v42 = 0;
    v43 = 0;
    *v40 = 0;
    *(v11 + 888) = 0;
    *(v11 + 896) = 0;
  }

  else
  {
    *v40 = *v41;
    v43 = MEMORY[0x1E69E73B8];
    v42 = MEMORY[0x1E69E7360];
  }

  *(v11 + 904) = v42;
  *(v11 + 912) = v43;
  *(v11 + 920) = 0;
  *(v11 + 928) = 0x79654B20464E41;
  *(v11 + 936) = 0xE700000000000000;
  v44 = v212[1];
  if (v44)
  {
    *(v11 + 944) = *v212;
    *(v11 + 952) = v44;
    v45 = MEMORY[0x1E69E61C8];
    v46 = MEMORY[0x1E69E6158];
  }

  else
  {
    v46 = 0;
    v45 = 0;
    *(v11 + 944) = 0;
    *(v11 + 952) = 0;
    *(v11 + 960) = 0;
  }

  *(v11 + 968) = v46;
  *(v11 + 976) = v45;
  *(v11 + 984) = 0;
  *(v11 + 992) = 0x6144206863746546;
  *(v11 + 1000) = 0xEA00000000006574;
  *(v11 + 1032) = MEMORY[0x1E69E6158];
  *(v11 + 1040) = MEMORY[0x1E69E61C8];
  *(v11 + 1008) = v227;
  *(v11 + 1016) = v223;
  *(v11 + 1048) = 0;
  *(v211 + 56) = &type metadata for DebugInspectionDataSection;
  *(v211 + 64) = &off_1F5132800;
  *(v211 + 32) = 0x656E696C64616548;
  *(v211 + 40) = 0xE800000000000000;
  *(v211 + 48) = v11;
  memcpy(__src, v213 + 7, sizeof(__src));
  if (sub_1D693E2E0(__src) == 1)
  {
    *(v211 + 104) = 0;
    *(v211 + 88) = 0u;
    *(v211 + 72) = 0u;
  }

  else
  {
    memcpy(v254, __src, sizeof(v254));

    sub_1D5F3B8BC(v211 + 72);
  }

  memcpy(v247, v213 + 7, sizeof(v247));
  if (sub_1D693E2E0(v247) == 1)
  {
    *(v211 + 144) = 0;
    *(v211 + 112) = 0u;
    *(v211 + 128) = 0u;
  }

  else
  {
    memcpy(v253, v247, sizeof(v253));
    sub_1D5F3BC44(v211 + 112);
  }

  memcpy(v246, v213 + 7, sizeof(v246));
  if (sub_1D693E2E0(v246) == 1)
  {
    *(v211 + 184) = 0;
    *(v211 + 168) = 0u;
    *(v211 + 152) = 0u;
  }

  else
  {
    memcpy(v252, v246, sizeof(v252));
    sub_1D5F3BD48((v211 + 152));
  }

  memcpy(v245, v213 + 7, sizeof(v245));
  if (sub_1D693E2E0(v245) == 1)
  {
    *(v211 + 224) = 0;
    *(v211 + 192) = 0u;
    *(v211 + 208) = 0u;
  }

  else
  {
    memcpy(v251, v245, sizeof(v251));
    sub_1D5F3BF80((v211 + 192));
  }

  v47 = v212;
  v48 = *(v212 + v12[34]);
  v49 = *(v48 + 16);
  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    *&v239 = MEMORY[0x1E69E7CC0];
    sub_1D6999668(0, v49, 0);
    v50 = v239;
    v51 = (v48 + 56);
    do
    {
      v53 = *(v51 - 3);
      v52 = *(v51 - 2);
      v55 = *(v51 - 1);
      v54 = *v51;
      LOBYTE(v234) = 0;
      *&v239 = v50;
      v56 = *(v50 + 16);
      v57 = *(v50 + 24);

      if (v56 >= v57 >> 1)
      {
        sub_1D6999668((v57 > 1), v56 + 1, 1);
        v50 = v239;
      }

      *(v50 + 16) = v56 + 1;
      v58 = v50 + (v56 << 6);
      *(v58 + 32) = v55;
      *(v58 + 40) = v54;
      *(v58 + 48) = v53;
      *(v58 + 56) = v52;
      *(v58 + 72) = MEMORY[0x1E69E6158];
      *(v58 + 80) = MEMORY[0x1E69E61C8];
      *(v58 + 88) = v234;
      v51 += 4;
      --v49;
    }

    while (v49);
    v47 = v212;
  }

  v59 = v211;
  *(v211 + 264) = &off_1F5132800;
  *(v211 + 232) = 0x736369706F54;
  *(v211 + 240) = 0xE600000000000000;
  *(v211 + 248) = v50;
  *(v211 + 256) = &type metadata for DebugInspectionDataSection;
  v60 = v213[2];
  v61 = *(v60 + 16);
  v62 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E6158];
  if (v61)
  {
    v244 = MEMORY[0x1E69E7CC0];
    result = sub_1D6999668(0, v61, 0);
    if (*(v60 + 16))
    {
      v62 = v244;
      v220 = v60 + 32;
      sub_1D5BC66DC();
      v65 = 0;
      v66 = 1;
      v216 = v61;
      v214 = v60;
      while (2)
      {
        v67 = (v220 + 96 * v65);
        v65 = v66;
        v69 = v67[3];
        v68 = v67[4];
        v70 = *(v67 + 73);
        v241 = v67[2];
        v71 = v67[1];
        v239 = *v67;
        v240 = v71;
        *&v243[9] = v70;
        v242 = v69;
        *v243 = v68;
        v72 = *(&v239 + 1);
        v224 = v239;
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1D7279960;
        v236 = 0;
        v237 = 0xE000000000000000;
        v228 = v72;

        sub_1D693E2F8(&v239, &v234);
        MEMORY[0x1DA6F9910](0x203A525443, 0xE500000000000000);
        sub_1D7262ABC();
        v74 = 0;
        v75 = 0;
        v76 = v237;
        *(v73 + 32) = v236;
        *(v73 + 40) = v76;
        if ((BYTE8(v242) & 1) == 0)
        {
          v234 = 0;
          v235 = 0xE000000000000000;
          MEMORY[0x1DA6F9910](0x63696C4320776152, 0xEC000000203A736BLL);
          sub_1D7262ABC();
          v74 = v234;
          v75 = v235;
        }

        *(v73 + 48) = v74;
        *(v73 + 56) = v75;
        v234 = 0;
        v235 = 0xE000000000000000;
        MEMORY[0x1DA6F9910](0x203A736B63696C43, 0xE800000000000000);
        sub_1D7262ABC();
        v77 = v235;
        *(v73 + 64) = v234;
        *(v73 + 72) = v77;
        v234 = 0;
        v235 = 0xE000000000000000;
        MEMORY[0x1DA6F9910](0x6973736572706D49, 0xED0000203A736E6FLL);
        result = sub_1D7262ABC();
        v78 = v235;
        *(v73 + 80) = v234;
        *(v73 + 88) = v78;
        v79 = v240;
        if (v240)
        {
          v234 = 0x203A73676154;
          v235 = 0xE600000000000000;
          v236 = v240;
          sub_1D5D64D70(0, &qword_1EDF43BA0, v63, MEMORY[0x1E69E62F8]);
          sub_1D5BB0AB8();
          v80 = sub_1D7261F3C();
          MEMORY[0x1DA6F9910](v80);

          v79 = v234;
          v81 = v235;
        }

        else
        {
          v81 = 0;
        }

        v82 = 0;
        *(v73 + 96) = v79;
        *(v73 + 104) = v81;
        v83 = MEMORY[0x1E69E7CC0];
LABEL_43:
        v84 = 5;
        if (v82 > 5)
        {
          v84 = v82;
        }

        v85 = v84 + 1;
        v86 = 16 * v82 + 40;
        while (v82 != 5)
        {
          if (v85 == ++v82)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          v87 = v86 + 16;
          v88 = *(v73 + v86);
          v86 += 16;
          if (v88)
          {
            v89 = *(v73 + v87 - 24);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1D5B858EC(0, *(v83 + 16) + 1, 1, v83);
              v83 = result;
            }

            v91 = *(v83 + 16);
            v90 = *(v83 + 24);
            if (v91 >= v90 >> 1)
            {
              result = sub_1D5B858EC((v90 > 1), v91 + 1, 1, v83);
              v83 = result;
            }

            *(v83 + 16) = v91 + 1;
            v92 = v83 + 16 * v91;
            *(v92 + 32) = v89;
            *(v92 + 40) = v88;
            v63 = MEMORY[0x1E69E6158];
            goto LABEL_43;
          }
        }

        swift_setDeallocating();
        sub_1D5D64D70(0, &qword_1EDF43BE0, v63, MEMORY[0x1E69E6720]);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v234 = v83;
        sub_1D5D64D70(0, &qword_1EDF43BA0, v63, MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v93 = sub_1D7261F3C();
        v95 = v94;

        result = sub_1D693E354(&v239);
        v238 = 0;
        v244 = v62;
        v97 = *(v62 + 16);
        v96 = *(v62 + 24);
        if (v97 >= v96 >> 1)
        {
          result = sub_1D6999668((v96 > 1), v97 + 1, 1);
          v62 = v244;
        }

        *(v62 + 16) = v97 + 1;
        v98 = v62 + (v97 << 6);
        *(v98 + 32) = v224;
        *(v98 + 40) = v228;
        *(v98 + 48) = v93;
        *(v98 + 56) = v95;
        *(v98 + 72) = v63;
        *(v98 + 80) = MEMORY[0x1E69E61C8];
        *(v98 + 88) = v238;
        if (v65 == v216)
        {
          v59 = v211;
          v47 = v212;
          goto LABEL_60;
        }

        v66 = v65 + 1;
        if (v65 < *(v214 + 16))
        {
          continue;
        }

        break;
      }
    }

LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_60:
  v59[38] = &off_1F5132800;
  v59[34] = 0x7365727574616546;
  v59[35] = 0xE800000000000000;
  v59[36] = v62;
  v59[37] = &type metadata for DebugInspectionDataSection;
  v99 = v47[2];
  v100 = *(v99 + 16);
  v101 = MEMORY[0x1E69E7CC0];
  if (v100)
  {
    v244 = MEMORY[0x1E69E7CC0];
    result = sub_1D6999668(0, v100, 0);
    if (!*(v99 + 16))
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v101 = v244;
    v221 = v99 + 32;
    sub_1D5BC66DC();
    v102 = 0;
    v103 = 1;
    v215 = v99;
    v217 = v100;
    while (1)
    {
      v104 = (v221 + 96 * v102);
      v102 = v103;
      v106 = v104[3];
      v105 = v104[4];
      v107 = *(v104 + 73);
      v241 = v104[2];
      v108 = v104[1];
      v239 = *v104;
      v240 = v108;
      *&v243[9] = v107;
      v242 = v106;
      *v243 = v105;
      v109 = *(&v239 + 1);
      v225 = v239;
      v110 = swift_allocObject();
      *(v110 + 16) = xmmword_1D7279960;
      v236 = 0;
      v237 = 0xE000000000000000;
      v229 = v109;

      sub_1D693E2F8(&v239, &v234);
      MEMORY[0x1DA6F9910](0x203A525443, 0xE500000000000000);
      sub_1D7262ABC();
      v111 = 0;
      v112 = 0;
      v113 = v237;
      *(v110 + 32) = v236;
      *(v110 + 40) = v113;
      if ((BYTE8(v242) & 1) == 0)
      {
        v234 = 0;
        v235 = 0xE000000000000000;
        MEMORY[0x1DA6F9910](0x63696C4320776152, 0xEC000000203A736BLL);
        sub_1D7262ABC();
        v111 = v234;
        v112 = v235;
      }

      *(v110 + 48) = v111;
      *(v110 + 56) = v112;
      v234 = 0;
      v235 = 0xE000000000000000;
      MEMORY[0x1DA6F9910](0x203A736B63696C43, 0xE800000000000000);
      sub_1D7262ABC();
      v114 = v235;
      *(v110 + 64) = v234;
      *(v110 + 72) = v114;
      v234 = 0;
      v235 = 0xE000000000000000;
      MEMORY[0x1DA6F9910](0x6973736572706D49, 0xED0000203A736E6FLL);
      result = sub_1D7262ABC();
      v115 = v235;
      *(v110 + 80) = v234;
      *(v110 + 88) = v115;
      v116 = v240;
      if (v240)
      {
        v234 = 0x203A73676154;
        v235 = 0xE600000000000000;
        v236 = v240;
        sub_1D5D64D70(0, &qword_1EDF43BA0, v63, MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v117 = sub_1D7261F3C();
        MEMORY[0x1DA6F9910](v117);

        v116 = v234;
        v118 = v235;
      }

      else
      {
        v118 = 0;
      }

      v119 = 0;
      *(v110 + 96) = v116;
      *(v110 + 104) = v118;
      v120 = MEMORY[0x1E69E7CC0];
LABEL_69:
      v121 = 5;
      if (v119 > 5)
      {
        v121 = v119;
      }

      v122 = v121 + 1;
      v123 = 16 * v119 + 40;
      while (v119 != 5)
      {
        if (v122 == ++v119)
        {
          goto LABEL_140;
        }

        v124 = v123 + 16;
        v125 = *(v110 + v123);
        v123 += 16;
        if (v125)
        {
          v126 = *(v110 + v124 - 24);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D5B858EC(0, *(v120 + 16) + 1, 1, v120);
            v120 = result;
          }

          v128 = *(v120 + 16);
          v127 = *(v120 + 24);
          if (v128 >= v127 >> 1)
          {
            result = sub_1D5B858EC((v127 > 1), v128 + 1, 1, v120);
            v120 = result;
          }

          *(v120 + 16) = v128 + 1;
          v129 = v120 + 16 * v128;
          *(v129 + 32) = v126;
          *(v129 + 40) = v125;
          v63 = MEMORY[0x1E69E6158];
          goto LABEL_69;
        }
      }

      swift_setDeallocating();
      sub_1D5D64D70(0, &qword_1EDF43BE0, v63, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v234 = v120;
      sub_1D5D64D70(0, &qword_1EDF43BA0, v63, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();
      v130 = sub_1D7261F3C();
      v132 = v131;

      result = sub_1D693E354(&v239);
      v238 = 0;
      v244 = v101;
      v134 = *(v101 + 16);
      v133 = *(v101 + 24);
      if (v134 >= v133 >> 1)
      {
        result = sub_1D6999668((v133 > 1), v134 + 1, 1);
        v101 = v244;
      }

      *(v101 + 16) = v134 + 1;
      v135 = v101 + (v134 << 6);
      *(v135 + 32) = v225;
      *(v135 + 40) = v229;
      *(v135 + 48) = v130;
      *(v135 + 56) = v132;
      *(v135 + 72) = v63;
      *(v135 + 80) = MEMORY[0x1E69E61C8];
      *(v135 + 88) = v238;
      if (v102 == v217)
      {
        break;
      }

      v103 = v102 + 1;
      if (v102 >= *(v215 + 16))
      {
        goto LABEL_143;
      }
    }

    v59 = v211;
    v47 = v212;
  }

  v59[43] = &off_1F5132800;
  v59[39] = 0x20656C6369747241;
  v59[40] = 0xEF7374726F686F43;
  v59[41] = v101;
  v59[42] = &type metadata for DebugInspectionDataSection;
  v136 = v213[63];
  v137 = *(v136 + 16);
  v138 = MEMORY[0x1E69E7CC0];
  if (v137)
  {
    *&v239 = MEMORY[0x1E69E7CC0];
    sub_1D6999668(0, v137, 0);
    v138 = v239;
    v139 = (v136 + 72);
    do
    {
      if (*v139)
      {
        v230 = 0;
        v140 = 0;
        v141 = 0;
      }

      else
      {
        v230 = *(v139 - 1);
        v140 = MEMORY[0x1E69E63B0];
        v141 = MEMORY[0x1E69E6418];
      }

      v143 = *(v139 - 3);
      v142 = *(v139 - 2);
      LOBYTE(v234) = 0;
      *&v239 = v138;
      v144 = *(v138 + 16);
      v145 = *(v138 + 24);

      if (v144 >= v145 >> 1)
      {
        sub_1D6999668((v145 > 1), v144 + 1, 1);
        v138 = v239;
      }

      *(v138 + 16) = v144 + 1;
      v146 = v138 + (v144 << 6);
      *(v146 + 32) = v143;
      *(v146 + 40) = v142;
      *(v146 + 48) = v230;
      *(v146 + 56) = 0;
      *(v146 + 64) = 0;
      *(v146 + 72) = v140;
      *(v146 + 80) = v141;
      *(v146 + 88) = v234;
      v139 += 48;
      --v137;
    }

    while (v137);
    v147 = v211;
    v47 = v212;
  }

  else
  {
    v147 = v211;
  }

  *(v147 + 384) = &off_1F5132800;
  strcpy((v147 + 352), "User Cohorts");
  *(v147 + 365) = 0;
  *(v147 + 366) = -5120;
  *(v147 + 368) = v138;
  *(v147 + 376) = &type metadata for DebugInspectionDataSection;
  v148 = v47[7];
  v149 = *(v148 + 16);
  v150 = MEMORY[0x1E69E7CC0];
  v151 = MEMORY[0x1E69E6158];
  if (v149)
  {
    v244 = MEMORY[0x1E69E7CC0];
    result = sub_1D6999668(0, v149, 0);
    if (!*(v148 + 16))
    {
LABEL_144:
      __break(1u);
      return result;
    }

    v150 = v244;
    v218 = v148 + 32;
    sub_1D5BC66DC();
    v152 = 0;
    v153 = 1;
    while (1)
    {
      v226 = v153;
      v231 = v150;
      v154 = (v218 + 96 * v152);
      v156 = v154[3];
      v155 = v154[4];
      v157 = *(v154 + 73);
      v241 = v154[2];
      v158 = v154[1];
      v239 = *v154;
      v240 = v158;
      *&v243[9] = v157;
      v242 = v156;
      *v243 = v155;
      v159 = *(&v239 + 1);
      v219 = v239;
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_1D7279960;
      v236 = 0;
      v237 = 0xE000000000000000;
      v222 = v159;

      sub_1D693E2F8(&v239, &v234);
      MEMORY[0x1DA6F9910](0x203A525443, 0xE500000000000000);
      sub_1D7262ABC();
      v161 = 0;
      v162 = 0;
      v163 = v237;
      *(v160 + 32) = v236;
      *(v160 + 40) = v163;
      if ((BYTE8(v242) & 1) == 0)
      {
        v234 = 0;
        v235 = 0xE000000000000000;
        MEMORY[0x1DA6F9910](0x63696C4320776152, 0xEC000000203A736BLL);
        sub_1D7262ABC();
        v161 = v234;
        v162 = v235;
      }

      *(v160 + 48) = v161;
      *(v160 + 56) = v162;
      v234 = 0;
      v235 = 0xE000000000000000;
      MEMORY[0x1DA6F9910](0x203A736B63696C43, 0xE800000000000000);
      sub_1D7262ABC();
      v164 = v235;
      *(v160 + 64) = v234;
      *(v160 + 72) = v164;
      v234 = 0;
      v235 = 0xE000000000000000;
      MEMORY[0x1DA6F9910](0x6973736572706D49, 0xED0000203A736E6FLL);
      result = sub_1D7262ABC();
      v165 = v235;
      *(v160 + 80) = v234;
      *(v160 + 88) = v165;
      v166 = v240;
      if (v240)
      {
        v234 = 0x203A73676154;
        v235 = 0xE600000000000000;
        v236 = v240;
        sub_1D5D64D70(0, &qword_1EDF43BA0, v151, MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v167 = sub_1D7261F3C();
        MEMORY[0x1DA6F9910](v167);

        v166 = v234;
        v168 = v235;
      }

      else
      {
        v168 = 0;
      }

      v169 = 0;
      *(v160 + 96) = v166;
      *(v160 + 104) = v168;
      v170 = MEMORY[0x1E69E7CC0];
LABEL_105:
      v171 = 5;
      if (v169 > 5)
      {
        v171 = v169;
      }

      v172 = v171 + 1;
      v173 = 16 * v169 + 40;
      while (v169 != 5)
      {
        if (v172 == ++v169)
        {
          goto LABEL_141;
        }

        v174 = v173 + 16;
        v175 = *(v160 + v173);
        v173 += 16;
        if (v175)
        {
          v176 = v149;
          v177 = v148;
          v178 = *(v160 + v174 - 24);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D5B858EC(0, *(v170 + 16) + 1, 1, v170);
            v170 = result;
          }

          v180 = *(v170 + 16);
          v179 = *(v170 + 24);
          if (v180 >= v179 >> 1)
          {
            result = sub_1D5B858EC((v179 > 1), v180 + 1, 1, v170);
            v170 = result;
          }

          *(v170 + 16) = v180 + 1;
          v181 = v170 + 16 * v180;
          *(v181 + 32) = v178;
          *(v181 + 40) = v175;
          v151 = MEMORY[0x1E69E6158];
          v148 = v177;
          v149 = v176;
          goto LABEL_105;
        }
      }

      swift_setDeallocating();
      sub_1D5D64D70(0, &qword_1EDF43BE0, v151, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v234 = v170;
      sub_1D5D64D70(0, &qword_1EDF43BA0, v151, MEMORY[0x1E69E62F8]);
      sub_1D5BB0AB8();
      v182 = sub_1D7261F3C();
      v184 = v183;

      result = sub_1D693E354(&v239);
      v238 = 0;
      v150 = v231;
      v244 = v231;
      v186 = *(v231 + 16);
      v185 = *(v231 + 24);
      if (v186 >= v185 >> 1)
      {
        result = sub_1D6999668((v185 > 1), v186 + 1, 1);
        v150 = v244;
      }

      *(v150 + 16) = v186 + 1;
      v187 = v150 + (v186 << 6);
      *(v187 + 32) = v219;
      *(v187 + 40) = v222;
      *(v187 + 48) = v182;
      *(v187 + 56) = v184;
      *(v187 + 72) = v151;
      *(v187 + 80) = MEMORY[0x1E69E61C8];
      *(v187 + 88) = v238;
      v152 = v226;
      if (v226 == v149)
      {
        break;
      }

      v153 = v226 + 1;
      if (v226 >= *(v148 + 16))
      {
        goto LABEL_144;
      }
    }

    v147 = v211;
  }

  *(v147 + 424) = &off_1F5132800;
  *(v147 + 392) = 0xD000000000000012;
  *(v147 + 400) = 0x80000001D73F2510;
  *(v147 + 408) = v150;
  *(v147 + 416) = &type metadata for DebugInspectionDataSection;
  v188 = v213[5];
  v189 = *(v188 + 16);
  v190 = MEMORY[0x1E69E7CC0];
  if (v189)
  {
    *&v239 = MEMORY[0x1E69E7CC0];
    sub_1D6999668(0, v189, 0);
    v190 = v239;
    v191 = (v188 + 72);
    do
    {
      if (*v191)
      {
        v232 = 0;
        v192 = 0;
        v193 = 0;
      }

      else
      {
        v232 = *(v191 - 1);
        v192 = MEMORY[0x1E69E63B0];
        v193 = MEMORY[0x1E69E6418];
      }

      v195 = *(v191 - 3);
      v194 = *(v191 - 2);
      LOBYTE(v234) = 0;
      *&v239 = v190;
      v196 = *(v190 + 16);
      v197 = *(v190 + 24);

      if (v196 >= v197 >> 1)
      {
        sub_1D6999668((v197 > 1), v196 + 1, 1);
        v190 = v239;
      }

      *(v190 + 16) = v196 + 1;
      v198 = v190 + (v196 << 6);
      *(v198 + 32) = v195;
      *(v198 + 40) = v194;
      *(v198 + 48) = v232;
      *(v198 + 56) = 0;
      *(v198 + 64) = 0;
      *(v198 + 72) = v192;
      *(v198 + 80) = v193;
      *(v198 + 88) = v234;
      v191 += 48;
      --v189;
    }

    while (v189);
  }

  *(v211 + 464) = &off_1F5132800;
  *(v211 + 432) = 0xD000000000000014;
  *(v211 + 440) = 0x80000001D73F2530;
  *(v211 + 448) = v190;
  *(v211 + 456) = &type metadata for DebugInspectionDataSection;
  v199 = v213[1];
  v200 = *(v199 + 16);
  v201 = MEMORY[0x1E69E7CC0];
  if (v200)
  {
    *&v239 = MEMORY[0x1E69E7CC0];
    sub_1D6999668(0, v200, 0);
    v201 = v239;
    v202 = (v199 + 72);
    do
    {
      if (*v202)
      {
        v233 = 0;
        v203 = 0;
        v204 = 0;
      }

      else
      {
        v233 = *(v202 - 1);
        v203 = MEMORY[0x1E69E63B0];
        v204 = MEMORY[0x1E69E6418];
      }

      v206 = *(v202 - 3);
      v205 = *(v202 - 2);
      LOBYTE(v234) = 0;
      *&v239 = v201;
      v207 = *(v201 + 16);
      v208 = *(v201 + 24);

      if (v207 >= v208 >> 1)
      {
        sub_1D6999668((v208 > 1), v207 + 1, 1);
        v201 = v239;
      }

      *(v201 + 16) = v207 + 1;
      v209 = v201 + (v207 << 6);
      *(v209 + 32) = v206;
      *(v209 + 40) = v205;
      *(v209 + 48) = v233;
      *(v209 + 56) = 0;
      *(v209 + 64) = 0;
      *(v209 + 72) = v203;
      *(v209 + 80) = v204;
      *(v209 + 88) = v234;
      v202 += 48;
      --v200;
    }

    while (v200);
  }

  *(v211 + 504) = &off_1F5132800;
  *(v211 + 472) = 0xD000000000000016;
  *(v211 + 480) = 0x80000001D73F2550;
  *(v211 + 488) = v201;
  *(v211 + 496) = &type metadata for DebugInspectionDataSection;
  result = sub_1D60F3E18(v211);
  v210[3] = &type metadata for DebugInspectionDataSource;
  v210[4] = &off_1F51328C8;
  *v210 = result;
  return result;
}