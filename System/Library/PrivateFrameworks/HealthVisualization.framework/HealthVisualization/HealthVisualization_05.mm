void sub_1D14AA518()
{
  if (!qword_1EC630580)
  {
    sub_1D1453368(255, &qword_1EC630588);
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630580);
    }
  }
}

unint64_t sub_1D14AA580()
{
  result = qword_1EC630590;
  if (!qword_1EC630590)
  {
    sub_1D14AA518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630590);
  }

  return result;
}

uint64_t sub_1D14AA5D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D14AA63C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14AA6CC()
{
  result = sub_1D1453368(319, &qword_1EC6305A8);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimeBasedDistributionChartDesign();
    if (v2 <= 0x3F)
    {
      result = sub_1D1453368(319, &qword_1EC6305B0);
      if (v3 <= 0x3F)
      {
        result = sub_1D15A3268();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1D14AA7B0()
{
  if (!qword_1EC6301E0)
  {
    v0 = sub_1D15A4978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6301E0);
    }
  }
}

void sub_1D14AA810(uint64_t a1, char a2, uint64_t *a3)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 65);

  if (!v12)
  {
    goto LABEL_23;
  }

  LOBYTE(v46) = v11;
  v48 = a3;
  v49 = v12;
  v45 = a1;
  v13 = *a3;
  v14 = sub_1D148011C(v7);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1D1481054(v19, v5 & 1);
    v14 = sub_1D148011C(v7);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v14 = sub_1D15A4BF8();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v20)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v24 = v14;
  sub_1D148203C();
  v14 = v24;
  if (v20)
  {
LABEL_9:
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v22;
    sub_1D1453368(0, &qword_1EE05ABB8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v25 = v48;
  v26 = *v48;
  *(*v48 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v26[6] + 8 * v14) = v7;
  v27 = v26[7] + 40 * v14;
  *v27 = v6;
  *(v27 + 8) = v8;
  *(v27 + 16) = v9;
  *(v27 + 24) = v10;
  *(v27 + 25) = v46;
  *(v27 + 32) = v49;
  v28 = v26[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1D15A47D8();
    MEMORY[0x1D388A330](0xD00000000000001BLL, 0x80000001D15BE1A0);
    sub_1D15A48B8();
    MEMORY[0x1D388A330](39, 0xE100000000000000);
    sub_1D15A4908();
    __break(1u);
    return;
  }

  v26[2] = v29;
  v30 = v45;
  if (v47 != 1)
  {
    v5 = v45 + 120;
    v6 = 1;
    while (v6 < *(v30 + 16))
    {
      v7 = *(v5 - 40);
      v31 = *(v5 - 32);
      v9 = *(v5 - 24);
      v8 = *(v5 - 16);
      v10 = *(v5 - 8);
      v32 = *(v5 - 7);

      if (!v33)
      {
        goto LABEL_23;
      }

      v46 = v31;
      v49 = v33;
      v34 = *v25;
      v35 = sub_1D148011C(v7);
      v37 = *(v34 + 16);
      v38 = (v36 & 1) == 0;
      v18 = __OFADD__(v37, v38);
      v39 = v37 + v38;
      if (v18)
      {
        goto LABEL_25;
      }

      v20 = v36;
      if (*(v34 + 24) < v39)
      {
        sub_1D1481054(v39, 1);
        v35 = sub_1D148011C(v7);
        if ((v20 & 1) != (v40 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v20)
      {
        goto LABEL_9;
      }

      v25 = v48;
      v41 = *v48;
      *(*v48 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v41[6] + 8 * v35) = v7;
      v42 = v41[7] + 40 * v35;
      *v42 = v46;
      *(v42 + 8) = v9;
      *(v42 + 16) = v8;
      *(v42 + 24) = v10;
      *(v42 + 25) = v32;
      *(v42 + 32) = v49;
      v43 = v41[2];
      v18 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v18)
      {
        goto LABEL_26;
      }

      ++v6;
      v41[2] = v44;
      v5 += 48;
      v30 = v45;
      if (v47 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

unint64_t sub_1D14AAC00()
{
  result = qword_1EC6305B8;
  if (!qword_1EC6305B8)
  {
    type metadata accessor for TimeBasedDistributionChartModel();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC6305B8);
  }

  return result;
}

unint64_t sub_1D14AAC48()
{
  result = qword_1EC6305C0;
  if (!qword_1EC6305C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6305C0);
  }

  return result;
}

unint64_t sub_1D14AAC9C()
{
  result = qword_1EC6305C8;
  if (!qword_1EC6305C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6305C8);
  }

  return result;
}

uint64_t sub_1D14AACF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D14AAD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ActivityRingSwiftUICircleView.init(activitySummary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = a1;
  return result;
}

id ActivityRingSwiftUICircleView.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityRingCircleView());

  return [v0 initWithFrame_];
}

void ActivityRingSwiftUICircleView.updateUIView(_:context:)(void *a1)
{
  v3 = *(v1 + 24);
  v4 = sub_1D14F78D8();
  [v4 setActivitySummary:v3 animated:1];

  LODWORD(v4) = [v3 isPaused];
  v5 = objc_opt_self();
  v6 = &selRef_clearColor;
  if (!v4)
  {
    v6 = &selRef_blackColor;
  }

  v7 = [v5 *v6];
  [a1 setBackgroundColor_];

  sub_1D14AAF58();
  v8 = sub_1D15A3EF8();

  [a1 setAccessibilityIdentifier_];
}

void sub_1D14AAF58()
{
  v1 = sub_1D15A3878();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_1D14AB54C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D15AEBB0;
  if (v7 == 1)
  {
  }

  else
  {

    sub_1D15A4328();
    v10 = sub_1D15A39E8();
    sub_1D15A3198();

    sub_1D15A3868();
    swift_getAtKeyPath();
    sub_1D14919A0(v5, v6, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v16[0];
    v6 = v16[1];
  }

  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = 0x72616843676E6952;
  *(v9 + 56) = 0xE900000000000074;
  if ([v8 isPaused])
  {
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1D148C05C((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 16) = v12 + 1;
    v13 = v9 + 16 * v12;
    *(v13 + 32) = 0x646573756150;
    *(v13 + 40) = 0xE600000000000000;
  }

  v14 = sub_1D15A40A8();
  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    sub_1D15A3F38();
  }

  else
  {
    __break(1u);
  }
}

id sub_1D14AB1F4()
{
  v0 = objc_allocWithZone(type metadata accessor for ActivityRingCircleView());

  return [v0 initWithFrame_];
}

uint64_t sub_1D14AB294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D14AB4F8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D14AB2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D14AB4F8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D14AB35C()
{
  sub_1D14AB4F8();
  sub_1D15A3968();
  __break(1u);
}

uint64_t sub_1D14AB384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A37C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1D14AB3F4()
{
  result = qword_1EE0581C8[0];
  if (!qword_1EE0581C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0581C8);
  }

  return result;
}

uint64_t sub_1D14AB460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D14AB4A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D14AB4F8()
{
  result = qword_1EE0581C0;
  if (!qword_1EE0581C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0581C0);
  }

  return result;
}

void sub_1D14AB54C()
{
  if (!qword_1EE059698)
  {
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059698);
    }
  }
}

uint64_t static CoreChartTrendDiagram_Previews.trendLineData()(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A22A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A26A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
  sub_1D15A2578();
  sub_1D15A2578();
  sub_1D15A2268();
  sub_1D15A2578();
  (*(v9 + 16))(v11, v15, v8);
  sub_1D15A2268();
  (*(v5 + 16))(a1, v7, v4);
  v16 = type metadata accessor for CoreChartTrendLineViewModel(0);
  *(a1 + v16[5]) = 0x4024000000000000;
  v17 = (a1 + v16[6]);
  *v17 = 0x7661207961642033;
  v17[1] = 0xE900000000000067;
  v18 = (a1 + v16[7]);
  *v18 = 0x74696E75203031;
  v18[1] = 0xE700000000000000;
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v15, v8);
  *(a2 + v16[5]) = 0x4044600000000000;
  v20 = (a2 + v16[6]);
  *v20 = 0x7661207961642034;
  v20[1] = 0xE900000000000067;
  v21 = (a2 + v16[7]);
  *v21 = 0x35372E3034;
  v21[1] = 0xE500000000000000;
  return result;
}

int *static CoreChartTrendDiagram_Previews.consistentTrendLineData()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D15A26A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
  sub_1D15A2578();
  (*(v3 + 16))(v5, v9, v2);
  sub_1D15A2268();
  (*(v3 + 8))(v9, v2);
  result = type metadata accessor for CoreChartTrendLineViewModel(0);
  *(a1 + result[5]) = 0x4024000000000000;
  v11 = (a1 + result[6]);
  *v11 = 0x7661207961642037;
  v11[1] = 0xE900000000000067;
  v12 = (a1 + result[7]);
  *v12 = 12337;
  v12[1] = 0xE200000000000000;
  return result;
}

id sub_1D14ABAB4@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a2;
  sub_1D14ADA7C(0, &qword_1EE059D28, type metadata accessor for CoreChartTrendLineViewModel, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - v6;
  sub_1D14AD140();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  static CoreChartTrendDiagram_Previews.trendLineData()(&v25 - v16, &v25 + *(v18 + 48) - v16);
  result = [objc_allocWithZone(MEMORY[0x1E696C370]) initWithIdentifier_];
  v27 = result;
  if (result)
  {
    sub_1D14AD900(v17, v14, sub_1D14AD140);
    v26 = *(v9 + 48);
    sub_1D14AD900(v17, v11, sub_1D14AD140);
    sub_1D14AD9B4(&v11[*(v9 + 48)], v7, type metadata accessor for CoreChartTrendLineViewModel);
    v20 = type metadata accessor for CoreChartTrendLineViewModel(0);
    v21 = *(*(v20 - 8) + 56);
    v25 = v11;
    v21(v7, 0, 1, v20);
    v22 = _s19HealthVisualization30CoreChartTrendDiagram_PreviewsV9valueDataSayAA0cdeI7ElementVGyFZ_0();
    sub_1D14ADA1C(v17, sub_1D14AD140);
    v23 = type metadata accessor for CoreChartTrendViewModel(0);
    v24 = v23[8];
    v21((a3 + v24), 1, 1, v20);
    *a3 = v28;
    *(a3 + 8) = v27;
    *(a3 + 16) = 4;
    sub_1D14AD9B4(v14, a3 + v23[7], type metadata accessor for CoreChartTrendLineViewModel);
    sub_1D14AD1A8(v7, a3 + v24);
    *(a3 + v23[9]) = v22;
    sub_1D14ADA1C(v25, type metadata accessor for CoreChartTrendLineViewModel);
    return sub_1D14ADA1C(&v14[v26], type metadata accessor for CoreChartTrendLineViewModel);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static CoreChartTrendDiagram_Previews.previews.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1D15A38D8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1D14AD23C();
  sub_1D14ABED8((a1 + *(v2 + 44)));
  v3 = sub_1D15A3A18();
  sub_1D15A3638();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1D14AD408();
  v13 = a1 + *(v12 + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  sub_1D14AD584();
  v15 = (a1 + *(v14 + 36));
  v16 = *(sub_1D15A3758() + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1D15A38C8();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #8.0 }

  *v15 = _Q0;
  sub_1D14AD5EC();
  *&v15[*(v24 + 36)] = 256;
}

uint64_t sub_1D14ABED8@<X0>(char *a1@<X8>)
{
  v114 = a1;
  v130 = sub_1D15A3298();
  v132 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v113 = &v100 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1D15A2E08();
  v2 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v4 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CoreChartTrendViewModel(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v100 - v10;
  v12 = type metadata accessor for CoreChartTrendDiagram(0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v100 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v100 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v100 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v100 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v100 - v25;
  sub_1D14AD354();
  v112 = v27;
  v111 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v109 = &v100 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v108 = &v100 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v100 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v100 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v131 = &v100 - v39;
  sub_1D15A4148();
  v106 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v128 = v37;
  static CoreChartTrendDiagram_Previews.barSeriesData()(v11);
  *v23 = 0x4000000000000000;
  v40 = v12[5];
  *(v23 + v40) = swift_getKeyPath();
  sub_1D14ADA7C(0, &qword_1EE056C70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  v127 = v41;
  swift_storeEnumTagMultiPayload();
  v42 = v23 + v12[6];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  v43 = (v23 + v12[7]);
  v44 = sub_1D15A2E68();
  v125 = sub_1D14AD680(&qword_1EC630648, MEMORY[0x1E69A3650]);
  v126 = v44;
  *v43 = sub_1D15A3788();
  v43[1] = v45;
  v46 = v12[9];
  *(v23 + v46) = 0;
  v47 = v12[8];
  sub_1D14AD900(v11, v23 + v47, type metadata accessor for CoreChartTrendViewModel);
  if (!*(v23 + v47))
  {
    *(v23 + v46) = 1;
  }

  v48 = sub_1D14AD968();
  v49 = *MEMORY[0x1E69DDD28];
  v50 = *MEMORY[0x1E69DB958];
  v122 = *MEMORY[0x1E69DDC50];
  v123 = v49;
  v121 = v50;
  v124 = v48;
  v51 = sub_1D15A4538();
  [v51 lineHeight];
  v53 = v52;

  sub_1D14ADA1C(v11, type metadata accessor for CoreChartTrendViewModel);
  *(v23 + v12[10]) = v53;
  v54 = v26;
  sub_1D14AD9B4(v23, v26, type metadata accessor for CoreChartTrendDiagram);
  v55 = *(v2 + 104);
  v120 = *MEMORY[0x1E69A34F8];
  v56 = v101;
  v118 = v55;
  v119 = v2 + 104;
  v55(v4);
  [objc_allocWithZone(MEMORY[0x1E69DD1B8]) init];
  v57 = v113;
  sub_1D15A3288();
  v117 = sub_1D14AD680(&qword_1EC6305F8, type metadata accessor for CoreChartTrendDiagram);
  sub_1D15A3B38();
  v58 = v130;
  v116 = *(v132 + 8);
  v132 += 8;
  v116(v57);
  v59 = v56;
  v115 = *(v2 + 8);
  v100 = v2 + 8;
  v115(v4, v56);
  sub_1D14ADA1C(v54, type metadata accessor for CoreChartTrendDiagram);
  v60 = v102;
  static CoreChartTrendDiagram_Previews.lineSeriesData()(v102);
  *v18 = 0x4000000000000000;
  v61 = v12[5];
  *(v18 + v61) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v62 = v18 + v12[6];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = (v18 + v12[7]);
  *v63 = sub_1D15A3788();
  v63[1] = v64;
  v65 = v12[9];
  *(v18 + v65) = 0;
  v66 = v12[8];
  sub_1D14AD900(v60, v18 + v66, type metadata accessor for CoreChartTrendViewModel);
  if (!*(v18 + v66))
  {
    *(v18 + v65) = 1;
  }

  v67 = sub_1D15A4538();
  [v67 lineHeight];
  v69 = v68;

  sub_1D14ADA1C(v60, type metadata accessor for CoreChartTrendViewModel);
  *(v18 + v12[10]) = v69;
  v70 = v103;
  sub_1D14AD9B4(v18, v103, type metadata accessor for CoreChartTrendDiagram);
  v118(v4, v120, v59);
  [objc_allocWithZone(MEMORY[0x1E69DD1B8]) init];
  sub_1D15A3288();
  sub_1D15A3B38();
  (v116)(v57, v58);
  v115(v4, v59);
  sub_1D14ADA1C(v70, type metadata accessor for CoreChartTrendDiagram);
  v71 = v105;
  static CoreChartTrendDiagram_Previews.distributionSeriesData()(v105);
  v72 = v104;
  *v104 = 0x4000000000000000;
  v73 = v12[5];
  *(v72 + v73) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v74 = v72 + v12[6];
  *v74 = swift_getKeyPath();
  *(v74 + 8) = 0;
  v75 = (v72 + v12[7]);
  *v75 = sub_1D15A3788();
  v75[1] = v76;
  v77 = v12[9];
  *(v72 + v77) = 0;
  v78 = v12[8];
  sub_1D14AD900(v71, v72 + v78, type metadata accessor for CoreChartTrendViewModel);
  if (!*(v72 + v78))
  {
    *(v72 + v77) = 1;
  }

  v79 = sub_1D15A4538();
  [v79 lineHeight];
  v81 = v80;

  sub_1D14ADA1C(v71, type metadata accessor for CoreChartTrendViewModel);
  *(v72 + v12[10]) = v81;
  v82 = v107;
  sub_1D14AD9B4(v72, v107, type metadata accessor for CoreChartTrendDiagram);
  v118(v4, v120, v59);
  [objc_allocWithZone(MEMORY[0x1E69DD1B8]) init];
  sub_1D15A3288();
  v83 = v129;
  sub_1D15A3B38();
  (v116)(v57, v130);
  v115(v4, v59);
  sub_1D14ADA1C(v82, type metadata accessor for CoreChartTrendDiagram);
  v84 = v111;
  v85 = *(v111 + 16);
  v86 = v108;
  v87 = v112;
  v85(v108, v131, v112);
  v134 = 1;
  v88 = v109;
  v89 = v128;
  v85(v109, v128, v87);
  v133 = 1;
  v90 = v110;
  v85(v110, v83, v87);
  v91 = v114;
  v85(v114, v86, v87);
  sub_1D14AD2D4();
  v93 = v92;
  v94 = &v91[*(v92 + 48)];
  v95 = v134;
  *v94 = 0;
  v94[8] = v95;
  v85(&v91[*(v92 + 64)], v88, v87);
  v96 = &v91[*(v93 + 80)];
  v97 = v133;
  *v96 = 0;
  v96[8] = v97;
  v85(&v91[*(v93 + 96)], v90, v87);
  v98 = *(v84 + 8);
  v98(v129, v87);
  v98(v89, v87);
  v98(v131, v87);
  v98(v90, v87);
  v98(v88, v87);
  v98(v86, v87);
}

void sub_1D14ACBCC(uint64_t a1@<X8>)
{
  *a1 = sub_1D15A38D8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1D14AD23C();
  sub_1D14ABED8((a1 + *(v2 + 44)));
  v3 = sub_1D15A3A18();
  sub_1D15A3638();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1D14AD408();
  v13 = a1 + *(v12 + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  sub_1D14AD584();
  v15 = (a1 + *(v14 + 36));
  v16 = *(sub_1D15A3758() + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1D15A38C8();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #8.0 }

  *v15 = _Q0;
  sub_1D14AD5EC();
  *&v15[*(v24 + 36)] = 256;
}

uint64_t sub_1D14ACCF0(uint64_t a1)
{
  v2 = sub_1D14AD8AC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1D14ACD3C(uint64_t a1)
{
  v2 = sub_1D14AD8AC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t _s19HealthVisualization30CoreChartTrendDiagram_PreviewsV9valueDataSayAA0cdeI7ElementVGyFZ_0()
{
  v29 = sub_1D15A26A8();
  v0 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
  sub_1D14ADA7C(0, &qword_1EC630650, type metadata accessor for CoreChartTrendDataElement, MEMORY[0x1E69E6F90]);
  v3 = (type metadata accessor for CoreChartTrendDataElement(0) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v28 = 8 * v4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D15AED70;
  v7 = v6 + v5;
  sub_1D15A2578();
  v8 = v7 + v3[8];
  *(v7 + v3[7]) = 0x4014000000000000;
  *v8 = 0x4018000000000000;
  *(v8 + 8) = 0;
  sub_1D15A2578();
  v9 = v3[8];
  *(v7 + v4 + v3[7]) = 0x402E000000000000;
  v10 = v7 + v4 + v9;
  *v10 = 0x403D000000000000;
  *(v10 + 8) = 0;
  v11 = v7 + 2 * v4;
  sub_1D15A2578();
  v12 = v3[8];
  *(v11 + v3[7]) = 0x4024000000000000;
  v13 = v11 + v12;
  *v13 = 0x402C000000000000;
  *(v13 + 8) = 0;
  v14 = v7 + 3 * v4;
  sub_1D15A2578();
  v15 = v14 + v3[8];
  *(v14 + v3[7]) = 0x4024000000000000;
  *v15 = 0x4024000000000000;
  *(v15 + 8) = 0;
  v16 = v7 + 4 * v4;
  sub_1D15A2578();
  v17 = v3[8];
  *(v16 + v3[7]) = 0x404B800000000000;
  v18 = v16 + v17;
  *v18 = 0x404D000000000000;
  *(v18 + 8) = 0;
  v19 = v7 + 5 * v4;
  sub_1D15A2578();
  v20 = v19 + v3[8];
  *(v19 + v3[7]) = 0x4040800000000000;
  *v20 = 0x404D000000000000;
  *(v20 + 8) = 0;
  v21 = v7 + 6 * v4;
  sub_1D15A2578();
  v22 = v21 + v3[8];
  *(v21 + v3[7]) = 0x4046800000000000;
  *v22 = 0x404B800000000000;
  *(v22 + 8) = 0;
  v23 = v29;
  v24 = v7 + v28 - v4;
  (*(v0 + 16))(v24, v2, v29);
  v25 = v3[8];
  *(v24 + v3[7]) = 0x403E000000000000;
  v26 = v24 + v25;
  *v26 = 0x4041800000000000;
  *(v26 + 8) = 0;
  (*(v0 + 8))(v2, v23);
  return v6;
}

void sub_1D14AD140()
{
  if (!qword_1EC6305D0)
  {
    type metadata accessor for CoreChartTrendLineViewModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6305D0);
    }
  }
}

uint64_t sub_1D14AD1A8(uint64_t a1, uint64_t a2)
{
  sub_1D14ADA7C(0, &qword_1EE059D28, type metadata accessor for CoreChartTrendLineViewModel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D14AD23C()
{
  if (!qword_1EC6305D8)
  {
    sub_1D14ADA7C(255, &qword_1EC6305E0, sub_1D14AD2D4, MEMORY[0x1E6981F40]);
    v0 = sub_1D15A36D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6305D8);
    }
  }
}

void sub_1D14AD2D4()
{
  if (!qword_1EC6305E8)
  {
    sub_1D14AD354();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC6305E8);
    }
  }
}

void sub_1D14AD354()
{
  if (!qword_1EC6305F0)
  {
    type metadata accessor for CoreChartTrendDiagram(255);
    sub_1D14AD680(&qword_1EC6305F8, type metadata accessor for CoreChartTrendDiagram);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6305F0);
    }
  }
}

void sub_1D14AD408()
{
  if (!qword_1EC630600)
  {
    sub_1D14AD468();
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630600);
    }
  }
}

void sub_1D14AD468()
{
  if (!qword_1EC630608)
  {
    sub_1D14ADA7C(255, &qword_1EC6305E0, sub_1D14AD2D4, MEMORY[0x1E6981F40]);
    sub_1D14AD4FC();
    v0 = sub_1D15A3CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630608);
    }
  }
}

unint64_t sub_1D14AD4FC()
{
  result = qword_1EC630610;
  if (!qword_1EC630610)
  {
    sub_1D14ADA7C(255, &qword_1EC6305E0, sub_1D14AD2D4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630610);
  }

  return result;
}

void sub_1D14AD584()
{
  if (!qword_1EC630618)
  {
    sub_1D14AD408();
    sub_1D14AD5EC();
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630618);
    }
  }
}

void sub_1D14AD5EC()
{
  if (!qword_1EE056C58)
  {
    sub_1D15A3758();
    sub_1D14AD680(&qword_1EE056B38, MEMORY[0x1E697EAF0]);
    v0 = sub_1D15A36A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056C58);
    }
  }
}

uint64_t sub_1D14AD680(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D14AD6CC()
{
  result = qword_1EC630620;
  if (!qword_1EC630620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630620);
  }

  return result;
}

unint64_t sub_1D14AD74C()
{
  result = qword_1EC630628;
  if (!qword_1EC630628)
  {
    sub_1D14AD584();
    sub_1D14AD7FC();
    sub_1D14AD680(&qword_1EE056C60, sub_1D14AD5EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630628);
  }

  return result;
}

unint64_t sub_1D14AD7FC()
{
  result = qword_1EC630630;
  if (!qword_1EC630630)
  {
    sub_1D14AD408();
    sub_1D14AD680(&qword_1EC630638, sub_1D14AD468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630630);
  }

  return result;
}

unint64_t sub_1D14AD8AC()
{
  result = qword_1EC630640;
  if (!qword_1EC630640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630640);
  }

  return result;
}

uint64_t sub_1D14AD900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D14AD968()
{
  result = qword_1EE05ACF0;
  if (!qword_1EE05ACF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05ACF0);
  }

  return result;
}

uint64_t sub_1D14AD9B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14ADA1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D14ADA7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

CGFloat DiagramImageView.DiagramTransformer.toScreenY(_:)(CGFloat a1)
{
  v5.y = a1;
  v2 = *(v1 + 24);
  *&v4.a = *(v1 + 8);
  *&v4.c = v2;
  *&v4.tx = *(v1 + 40);
  v5.x = 0.0;
  return CGPointApplyAffineTransform(v5, &v4).y;
}

__C::CGRect __swiftcall DiagramImageView.DiagramTransformer.toScreen(_:)(__C::CGRect a1)
{
  v2 = *(v1 + 24);
  *&v3.a = *(v1 + 8);
  *&v3.c = v2;
  *&v3.tx = *(v1 + 40);
  return CGRectApplyAffineTransform(a1, &v3);
}

CGPoint __swiftcall DiagramImageView.DiagramTransformer.toScreen(_:)(CGPoint a1)
{
  v2 = *(v1 + 24);
  *&v7.a = *(v1 + 8);
  *&v7.c = v2;
  *&v7.tx = *(v1 + 40);
  v5 = CGPointApplyAffineTransform(a1, &v7);
  y = v5.y;
  x = v5.x;
  result.y = y;
  result.x = x;
  return result;
}

void (*sub_1D14ADBEC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D14ADC8C;
}

void sub_1D14ADC8C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_1D14ADD14@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedTransformer;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  return sub_1D145D5B8(v4);
}

void sub_1D14ADD84(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedTransformer;
  swift_beginAccess();
  v10 = *v9;
  *v9 = v2;
  *(v9 + 8) = v3;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  sub_1D145D5B8(v2);
  sub_1D1459664(v10);
}

id sub_1D14ADE60@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedTransformer;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  return sub_1D145D5B8(v4);
}

__n128 sub_1D14ADECC(uint64_t a1)
{
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedTransformer;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v8;
  *(v4 + 48) = v3;
  sub_1D1459664(v5);
  return result;
}

__n128 sub_1D14ADFB0@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 sub_1D14AE008(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

id DiagramImageView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DiagramImageView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DiagramImageView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_imageRenderer] = 0;
  *&v1[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedTransformer];
  *v3 = 1;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  v4 = &v1[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DiagramImageView();
  v5 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    [v7 frame];
    sub_1D144E7C4(v8, v9);
  }

  return v6;
}

char *DiagramImageView.__allocating_init(frame:delegate:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v8 = [objc_allocWithZone(v6) initWithFrame_];
  v9 = &v8[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate];
  swift_beginAccess();
  *(v9 + 1) = a6;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v8;
}

void DiagramImageView.DiagramTransformer.init(modelSpace:screenSpace:screenInsets:context:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, double a11, double a12)
{
  *a2 = a1;
  v21 = a1;
  v52.origin.x = a3;
  v52.origin.y = a4;
  v52.size.width = a5;
  v52.size.height = a6;
  if (CGRectIsEmpty(v52))
  {

    v22 = xmmword_1D15A60F0;
    v23 = xmmword_1D15A64D0;
    v24 = 0uLL;
  }

  else
  {
    v25 = UIEdgeInsetsInsetRect_0(a7, a8, a9, a10, a11, a12);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    CGAffineTransformMakeTranslation(&t1, -a3, -a4);
    tx = t1.tx;
    ty = t1.ty;
    v43 = *&t1.a;
    v42 = *&t1.c;
    v53.origin.x = v25;
    v53.origin.y = v27;
    v53.size.width = v29;
    rect = v29;
    v53.size.height = v31;
    Height = CGRectGetHeight(v53);
    CGAffineTransformMakeTranslation(&t1, 0.0, Height);
    CGAffineTransformTranslate(&t2, &t1, v25, v27);
    v40 = t2.ty;
    v41 = t2.tx;
    v38 = *&t2.c;
    v39 = *&t2.a;
    v54.origin.x = v25;
    v54.origin.y = v27;
    v54.size.width = v29;
    v54.size.height = v31;
    Width = CGRectGetWidth(v54);
    v55.origin.x = a3;
    v55.origin.y = a4;
    v55.size.width = a5;
    v55.size.height = a6;
    v34 = Width / CGRectGetWidth(v55);
    v56.origin.x = v25;
    v56.origin.y = v27;
    v56.size.width = rect;
    v56.size.height = v31;
    v35 = -CGRectGetHeight(v56);
    v57.origin.x = a3;
    v57.origin.y = a4;
    v57.size.width = a5;
    v57.size.height = a6;
    v36 = CGRectGetHeight(v57);
    *&t1.c = v38;
    *&t1.a = v39;
    t1.tx = v41;
    t1.ty = v40;
    CGAffineTransformScale(&t2, &t1, v34, v35 / v36);
    *&t1.c = v42;
    *&t1.a = v43;
    t1.tx = tx;
    t1.ty = ty;
    CGAffineTransformConcat(&v49, &t1, &t2);
    v46 = *&v49.c;
    v48 = *&v49.a;
    v44 = *&v49.tx;

    v24 = v44;
    v22 = v46;
    v23 = v48;
  }

  *(a2 + 8) = v23;
  *(a2 + 24) = v22;
  *(a2 + 40) = v24;
}

uint64_t static DiagramImageView.generateTestImage(modelSpace:screenSpace:screenInsets:imageRenderer:drawingBlock:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19)
{
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  *(v28 + 32) = a6;
  *(v28 + 40) = a7;
  *(v28 + 48) = a8;
  *(v28 + 56) = a9;
  *(v28 + 64) = a10;
  *(v28 + 72) = a11;
  *(v28 + 80) = a17;
  *(v28 + 96) = a18;
  *(v28 + 104) = a19;
  *(v28 + 112) = a2;
  *(v28 + 120) = a3;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D14AF3A8;
  *(v29 + 24) = v28;
  aBlock[4] = sub_1D14AF874;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1459188;
  aBlock[3] = &block_descriptor_16;
  v30 = _Block_copy(aBlock);

  v31 = [a1 imageWithActions_];
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if ((v30 & 1) == 0)
  {
    return v31;
  }

  __break(1u);
  return result;
}

void sub_1D14AE80C(void *a1, void (*a2)(id, _BYTE *, double, double), CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = [a1 CGContext];
  v59.origin.x = a3;
  v59.origin.y = a4;
  v59.size.width = a5;
  v59.size.height = a6;
  if (CGRectIsEmpty(v59))
  {
    v29 = xmmword_1D15A60F0;
    v30 = xmmword_1D15A64D0;
    v31 = 0uLL;
  }

  else
  {
    v32 = UIEdgeInsetsInsetRect_0(a7, a8, a9, a10, a11, a12);
    v34 = v33;
    v54 = a9;
    v55 = a10;
    v36 = v35;
    v38 = v37;
    CGAffineTransformMakeTranslation(t1, -a3, -a4);
    v53 = *&t1[32];
    v52 = *&t1[40];
    v51 = *t1;
    v50 = *&t1[16];
    v60.origin.x = v32;
    v60.origin.y = v34;
    v60.size.width = v36;
    rect = v36;
    v60.size.height = v38;
    Height = CGRectGetHeight(v60);
    CGAffineTransformMakeTranslation(t1, 0.0, Height);
    CGAffineTransformTranslate(&t2, t1, v32, v34);
    ty = t2.ty;
    tx = t2.tx;
    v46 = *&t2.c;
    v47 = *&t2.a;
    v61.origin.x = v32;
    v61.origin.y = v34;
    v61.size.width = v36;
    v61.size.height = v38;
    Width = CGRectGetWidth(v61);
    v62.origin.x = a3;
    v62.origin.y = a4;
    v62.size.width = a5;
    v62.size.height = a6;
    sx = Width / CGRectGetWidth(v62);
    v63.origin.x = v32;
    v63.origin.y = v34;
    v63.size.width = rect;
    v63.size.height = v38;
    a9 = v54;
    v41 = -CGRectGetHeight(v63);
    v64.origin.x = a3;
    v64.origin.y = a4;
    v64.size.width = a5;
    v64.size.height = a6;
    v42 = CGRectGetHeight(v64);
    *&t1[16] = v46;
    *t1 = v47;
    *&t1[32] = tx;
    *&t1[40] = ty;
    v43 = v41 / v42;
    a10 = v55;
    CGAffineTransformScale(&t2, t1, sx, v43);
    *&t1[16] = v50;
    *t1 = v51;
    *&t1[32] = v53;
    *&t1[40] = v52;
    CGAffineTransformConcat(&v57, t1, &t2);
    v30 = *&v57.a;
    v29 = *&v57.c;
    v31 = *&v57.tx;
  }

  *t1 = v28;
  *&t1[8] = v30;
  *&t1[24] = v29;
  *&t1[40] = v31;
  a2(v28, t1, a9, a10);
}

id DiagramImageView.DiagramTransformer.context.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

__n128 DiagramImageView.DiagramTransformer.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  return result;
}

CGAffineTransform *static DiagramImageView.DiagramTransformer.buildTransform(modelSpace:screenSpace:)@<X0>(__int128 *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, CGFloat a8@<D6>, CGFloat a9@<D7>)
{
  result = CGRectIsEmpty(*&a2);
  if (result)
  {
    v19 = xmmword_1D15A60F0;
    v20 = xmmword_1D15A64D0;
    v21 = 0uLL;
  }

  else
  {
    CGAffineTransformMakeTranslation(&t1, -a2, -a3);
    ty = t1.ty;
    tx = t1.tx;
    v32 = *&t1.c;
    v33 = *&t1.a;
    v39.origin.x = a6;
    v39.origin.y = a7;
    v39.size.width = a8;
    v39.size.height = a9;
    Height = CGRectGetHeight(v39);
    CGAffineTransformMakeTranslation(&t1, 0.0, Height);
    CGAffineTransformTranslate(&t2, &t1, a6, a7);
    v30 = t2.ty;
    v31 = t2.tx;
    v28 = *&t2.c;
    v29 = *&t2.a;
    v40.origin.x = a6;
    v40.origin.y = a7;
    v40.size.width = a8;
    v40.size.height = a9;
    rect = a9;
    Width = CGRectGetWidth(v40);
    v41.origin.x = a2;
    v41.origin.y = a3;
    v41.size.width = a4;
    v41.size.height = a5;
    v24 = Width / CGRectGetWidth(v41);
    v42.origin.x = a6;
    v42.origin.y = a7;
    v42.size.width = a8;
    v42.size.height = rect;
    v25 = -CGRectGetHeight(v42);
    v43.origin.x = a2;
    v43.origin.y = a3;
    v43.size.width = a4;
    v43.size.height = a5;
    v26 = CGRectGetHeight(v43);
    *&t1.a = v29;
    *&t1.c = v28;
    t1.tx = v31;
    t1.ty = v30;
    CGAffineTransformScale(&t2, &t1, v24, v25 / v26);
    *&t1.a = v33;
    *&t1.c = v32;
    t1.tx = tx;
    t1.ty = ty;
    result = CGAffineTransformConcat(&v36, &t1, &t2);
    v20 = *&v36.a;
    v19 = *&v36.c;
    v21 = *&v36.tx;
  }

  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  return result;
}

__n128 DiagramImageView.DiagramTransformer.init(transform:context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a2;
  v3 = *(a1 + 16);
  *(a3 + 8) = *a1;
  *(a3 + 24) = v3;
  result = *(a1 + 32);
  *(a3 + 40) = result;
  return result;
}

id DiagramImageView.DiagramTransformer.transformer(applying:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *v2;
  v4 = *(v2 + 24);
  *&t1.a = *(v2 + 8);
  *&t1.c = v4;
  *&t1.tx = *(v2 + 40);
  v5 = a1[1];
  *&t2.a = *a1;
  *&t2.c = v5;
  *&t2.tx = a1[2];
  CGAffineTransformConcat(&v11, &t1, &t2);
  v6 = *&v11.a;
  v7 = *&v11.c;
  v8 = *&v11.tx;
  *a2 = v10;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;

  return v10;
}

double DiagramImageView.DiagramTransformer.toScreenX(_:)(double a1)
{
  v2 = *(v1 + 24);
  *&v5.a = *(v1 + 8);
  *&v5.c = v2;
  *&v5.tx = *(v1 + 40);
  v3 = 0;
  *&result = *&CGPointApplyAffineTransform(*&a1, &v5);
  return result;
}

void DiagramImageView.DiagramTransformer.drawContent(modelSpace:screenSpace:screenInsets:drawingBlock:)(void (*a1)(CGContext *, _BYTE *, double, double), CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11)
{
  v19 = *v18;
  if (*v18)
  {
    v28 = v19;
    CGContextSaveGState(v28);
    CGContextTranslateCTM(v28, a6, a7);
    v65.origin.x = a6;
    v65.origin.y = a7;
    v65.size.width = a8;
    v65.size.height = a9;
    v66 = CGRectOffset(v65, -a6, -a7);
    x = v66.origin.x;
    y = v66.origin.y;
    width = v66.size.width;
    height = v66.size.height;
    CGContextClipToRect(v28, v66);
    v33 = v28;
    v67.origin.x = a2;
    v67.origin.y = a3;
    v67.size.width = a4;
    v67.size.height = a5;
    if (CGRectIsEmpty(v67))
    {
      v34 = xmmword_1D15A60F0;
      v35 = xmmword_1D15A64D0;
      v36 = 0uLL;
    }

    else
    {
      v59 = height;
      v37 = UIEdgeInsetsInsetRect_0(x, y, width, height, a10, a11);
      v39 = v38;
      v41 = v40;
      v43 = v42;
      CGAffineTransformMakeTranslation(t1, -a2, -a3);
      v58 = *&t1[32];
      v57 = *&t1[40];
      v56 = *t1;
      v55 = *&t1[16];
      v68.origin.x = v37;
      v68.origin.y = v39;
      v68.size.width = v41;
      v68.size.height = v43;
      v44 = CGRectGetHeight(v68);
      CGAffineTransformMakeTranslation(t1, 0.0, v44);
      CGAffineTransformTranslate(&t2, t1, v37, v39);
      ty = t2.ty;
      tx = t2.tx;
      v51 = *&t2.c;
      v52 = *&t2.a;
      v69.origin.x = v37;
      v69.origin.y = v39;
      v69.size.width = v41;
      v69.size.height = v43;
      v60 = width;
      v45 = CGRectGetWidth(v69);
      v70.origin.x = a2;
      v70.origin.y = a3;
      v70.size.width = a4;
      v70.size.height = a5;
      v46 = v45 / CGRectGetWidth(v70);
      v71.origin.x = v37;
      height = v59;
      v71.origin.y = v39;
      v71.size.width = v41;
      v71.size.height = v43;
      v47 = -CGRectGetHeight(v71);
      v72.origin.x = a2;
      v72.origin.y = a3;
      v72.size.width = a4;
      v72.size.height = a5;
      v48 = CGRectGetHeight(v72);
      *&t1[16] = v51;
      *t1 = v52;
      *&t1[32] = tx;
      *&t1[40] = ty;
      v49 = v47 / v48;
      v50 = v46;
      width = v60;
      CGAffineTransformScale(&t2, t1, v50, v49);
      *&t1[16] = v55;
      *t1 = v56;
      *&t1[32] = v58;
      *&t1[40] = v57;
      CGAffineTransformConcat(&v63, t1, &t2);
      v35 = *&v63.a;
      v34 = *&v63.c;
      v36 = *&v63.tx;
    }

    *t1 = v19;
    *&t1[8] = v35;
    *&t1[24] = v34;
    *&t1[40] = v36;
    a1(v33, t1, width, height);
    CGContextRestoreGState(v33);
  }
}

id DiagramImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id DiagramImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id DiagramImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagramImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of DiagramImageViewDelegate.diagramImageViewDidRender(_:transformer:modelSpace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  v6 = *(a3 + 32);
  v7 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v7;
  v10 = v6;
  return v5(a1, a2, v9);
}

uint64_t dispatch thunk of DiagramImageView.lastUsedModelSpace.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xC0);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

uint64_t dispatch thunk of DiagramImageView.drawContent(modelSpace:screenInsets:drawingBlock:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  return v3(v6);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D14AF6AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D14AF6F4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D14AF774(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_1D14AF7D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D14AF878()
{
  v0 = sub_1D15A25F8();
  __swift_allocate_value_buffer(v0, qword_1EE068238);
  v1 = __swift_project_value_buffer(v0, qword_1EE068238);
  return sub_1D14AF8C4(v1);
}

uint64_t sub_1D14AF8C4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_1D14B0048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D15A2898();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v32 - v7;
  v8 = sub_1D15A2598();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D15A25F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v32 - v24;
  MEMORY[0x1D38887E0](v23);
  sub_1D15A25C8();
  v26 = *(v13 + 8);
  v26(v15, v12);
  sub_1D15A25D8();
  v26(v18, v12);
  sub_1D15A25B8();
  v26(v21, v12);
  (*(v9 + 104))(v11, *MEMORY[0x1E6969368], v8);
  sub_1D15A25A8();
  v27 = v37;
  (*(v9 + 8))(v11, v8);
  v28 = v35;
  v26(v25, v12);
  v29 = v36;
  sub_1D15A2868();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    return sub_1D14B00A0(v27);
  }

  v31 = v32;
  (*(v29 + 32))(v32, v27, v28);
  (*(v29 + 16))(v33, v31, v28);
  sub_1D15A25E8();
  return (*(v29 + 8))(v31, v28);
}

void sub_1D14AFCD0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  v1 = sub_1D15A3EF8();
  [v0 setDateTemplate_];

  qword_1EE0566E8 = v0;
}

id static NSDateIntervalFormatter.abbreviatedMonthDay.getter()
{
  if (qword_1EE0566E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0566E8;

  return v1;
}

Swift::String __swiftcall DateInterval.stringWithISO8601Format()()
{
  v0 = sub_1D15A26A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0594B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D15A25F8();
  __swift_project_value_buffer(v4, qword_1EE068238);
  sub_1D15A2288();
  sub_1D14AFF8C();
  sub_1D15A2688();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v11 = v9;
  v12 = v10;
  MEMORY[0x1D388A330](45, 0xE100000000000000);
  sub_1D15A2258();
  sub_1D15A2688();
  v5(v3, v0);
  MEMORY[0x1D388A330](v9, v10);

  v6 = v11;
  v7 = v12;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1D14AFF8C()
{
  result = qword_1EE0594B0;
  if (!qword_1EE0594B0)
  {
    sub_1D15A25F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0594B0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1D14B0048()
{
  if (!qword_1EE05B7E8)
  {
    sub_1D15A2898();
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05B7E8);
    }
  }
}

uint64_t sub_1D14B00A0(uint64_t a1)
{
  sub_1D14B0048();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DiagramAxisLabel.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DiagramAxisLabel.init(text:location:type:priority:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, float a6@<S1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a3;
  *(a4 + 32) = a6;
  return result;
}

uint64_t DiagramAxisMetrics.init(labels:adjustedModelCoordinateRange:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

BOOL _s19HealthVisualization16DiagramAxisLabelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v7)
  {
    if (v4 == v8 && v5 == v9)
    {
      return v6 == v10;
    }

    return 0;
  }

  v12 = sub_1D15A4BA8();
  result = 0;
  if ((v12 & 1) == 0)
  {
    return result;
  }

LABEL_10:
  if (v4 == v8 && v5 == v9)
  {
    return v6 == v10;
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D14B0248(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 36))
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

uint64_t sub_1D14B02A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t AFibBurdenTimeOfDayChart.init(distribution:chartModel:preferredWidth:preferredHeight:isPDF:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for AFibBurdenTimeOfDayChart();
  sub_1D14B495C(a1, a8 + v16[6], type metadata accessor for TimeBasedDistribution);
  result = sub_1D14B495C(a2, a8 + v16[7], type metadata accessor for TimeBasedDistributionChartModel);
  *a8 = a3;
  *(a8 + 8) = a4 & 1;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6 & 1;
  *(a8 + v16[8]) = a7;
  return result;
}

uint64_t type metadata accessor for AFibBurdenTimeOfDayChart()
{
  result = qword_1EC630688;
  if (!qword_1EC630688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AFibBurdenTimeOfDayChart.chart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AFibBurdenTimeOfDayChart();
  v4 = v3[7];
  v5 = *(v1 + v3[8]);
  v6 = v1 + v3[6];

  return sub_1D14B04E8(v6, (v1 + v4), v5, a1);
}

id sub_1D14B049C()
{
  result = HKDateFormatterFromTemplate();
  if (result)
  {
    qword_1EC63D5F0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D14B04E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v121 = a4;
  v7 = sub_1D15A3708();
  v123 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeBasedDistributionChartModel();
  v10 = v9 - 8;
  v118 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v119 = v11;
  v120 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14B4710(0, &qword_1EC6306A8, MEMORY[0x1E695B2F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v95 - v13;
  sub_1D149B16C();
  v98 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149A86C();
  v18 = v17;
  v96 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149A768();
  v99 = v21;
  v97 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149A700();
  v102 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149A65C();
  v105 = v27;
  v103 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v101 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149A580();
  v108 = v29;
  v106 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v104 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149A428();
  v111 = v31;
  v109 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v107 = &v95 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149A260();
  v113 = v33;
  v112 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v110 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149A028();
  v116 = v35;
  v115 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v114 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D14A8984(a1, a2);
  v125 = v100;
  v126 = a2;
  v37 = a3;
  v127 = a3;
  sub_1D149A8D0();
  sub_1D149AFDC();
  sub_1D15A3508();
  v38 = *(v10 + 32);
  v39 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 32);
  v124 = a2;
  v40 = a2 + v39 + v38;
  v41 = sub_1D15A36F8();
  sub_1D14B3828(&qword_1EE056BF0, MEMORY[0x1E697E730]);
  result = sub_1D15A3EE8();
  if (result)
  {
    v95 = v7;
    v43 = v37 & 1;
    (*(*(v41 - 8) + 16))(v16, v40, v41);
    v44 = sub_1D14B3828(&qword_1EC630428, sub_1D149A86C);
    v45 = sub_1D14B3828(&qword_1EE056488, sub_1D149B16C);
    v46 = v98;
    sub_1D15A3BF8();
    sub_1D14B3DF4(v16);
    (*(v96 + 8))(v20, v18);
    v131 = sub_1D15A3F38();
    v132 = v47;

    MEMORY[0x1D388A330](0xD00000000000001FLL, 0x80000001D15BEED0);

    v131 = v18;
    v132 = v46;
    v133 = v44;
    v134 = v45;
    swift_getOpaqueTypeConformance2();
    v48 = v99;
    sub_1D15A3BD8();

    v49 = (*(v97 + 8))(v23, v48);
    v99 = &v95;
    MEMORY[0x1EEE9AC00](v49);
    *(&v95 - 2) = v124;
    *(&v95 - 8) = v43;
    sub_1D14B3C80(0, &qword_1EC630430, MEMORY[0x1E695B1A8]);
    v51 = v50;
    v52 = sub_1D149BD24();
    v53 = sub_1D149BE84();
    v54 = v101;
    v55 = v102;
    sub_1D15A3B48();
    sub_1D145F8D8(v26);
    v131 = v55;
    v132 = v51;
    v133 = v52;
    v134 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = v104;
    v58 = v105;
    sub_1D15A3B68();
    (*(v103 + 8))(v54, v58);
    v130 = xmmword_1D15AF050;
    v59 = sub_1D15A3628();
    v60 = *(v59 - 8);
    v102 = *(v60 + 56);
    v103 = v60 + 56;
    v61 = v117;
    v102(v117, 1, 1, v59);
    v62 = MEMORY[0x1E69E5F90];
    sub_1D14B48A0(0, &qword_1EC6304E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    v64 = v63;
    v131 = v58;
    v132 = OpaqueTypeConformance2;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = sub_1D149C024();
    v67 = v107;
    v68 = v108;
    sub_1D15A3B78();
    sub_1D14B3E5C(v61);
    (*(v106 + 8))(v57, v68);
    v69 = sub_1D14BE5FC(v100);

    TimeBasedDistributionChartModel.determineYAxisRange(chartPoints:)(v69);
    v71 = v70;
    v73 = v72;

    v128 = v71;
    v129 = v73;
    v102(v61, 1, 1, v59);
    sub_1D14B48A0(0, &qword_1EE05B5C8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], v62);
    v75 = v74;
    v131 = v68;
    v132 = v64;
    v133 = v65;
    v134 = v66;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_1D149C114();
    v78 = v110;
    v79 = v111;
    sub_1D15A3B88();
    sub_1D14B3E5C(v61);
    (*(v109 + 8))(v67, v79);
    v80 = v120;
    sub_1D14B48F4(v124, v120, type metadata accessor for TimeBasedDistributionChartModel);
    v81 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v82 = swift_allocObject();
    sub_1D14B495C(v80, v82 + v81, type metadata accessor for TimeBasedDistributionChartModel);
    sub_1D149AC24(0, &qword_1EC6304F8, MEMORY[0x1E695B190]);
    v131 = v79;
    v132 = v75;
    v133 = v76;
    v134 = v77;
    swift_getOpaqueTypeConformance2();
    sub_1D149C1B0();
    v83 = v114;
    v84 = v113;
    sub_1D15A3BA8();

    (*(v112 + 8))(v78, v84);
    KeyPath = swift_getKeyPath();
    IsRightToLeft = HKUILocaleIsRightToLeft();
    v88 = v122;
    v87 = v123;
    v89 = MEMORY[0x1E697E7D8];
    if (!IsRightToLeft)
    {
      v89 = MEMORY[0x1E697E7D0];
    }

    v90 = v95;
    (*(v123 + 104))(v122, *v89, v95);
    sub_1D1499F90();
    v92 = v121;
    v93 = (v121 + *(v91 + 36));
    sub_1D14B4710(0, &qword_1EE056AA8, MEMORY[0x1E697E7E0], MEMORY[0x1E6980A08]);
    (*(v87 + 32))(v93 + *(v94 + 28), v88, v90);
    *v93 = KeyPath;
    return (*(v115 + 32))(v92, v83, v116);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D14B13BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v25[2] = a4;
  v7 = type metadata accessor for TimeBasedDistributionChartModel();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v30 = a1;
  sub_1D14B48F4(a2, v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimeBasedDistributionChartModel);
  v10 = (*(v8 + 80) + 17) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  sub_1D14B495C(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for TimeBasedDistributionChartModel);
  sub_1D14B4710(0, &qword_1EC630370, type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay, MEMORY[0x1E69E62F8]);
  v25[1] = v12;
  sub_1D149A998();
  sub_1D149AF54();
  sub_1D149AB04();
  v14 = v13;
  sub_1D149AC24(255, &qword_1EC6303E8, sub_1D149ABFC);
  v16 = v15;
  v17 = MEMORY[0x1E695B228];
  sub_1D149B7A0(255, &qword_1EC6303E0, MEMORY[0x1E695B238]);
  v19 = v18;
  v20 = sub_1D15A3538();

  v26 = v20;
  v27 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v19;
  v27 = MEMORY[0x1E69815C0];
  v28 = OpaqueTypeConformance2;
  v29 = MEMORY[0x1E6981568];
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_1D149AD38();
  v26 = v14;
  v27 = v16;
  v28 = v22;
  v29 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1D14B3828(&qword_1EC6306C0, type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay);
  return sub_1D15A3D28();
}

uint64_t sub_1D14B16CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a3;
  sub_1D14B3D60(0, &qword_1EC630470, &qword_1EC630478, sub_1D149B6F4, sub_1D149BAF0);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - v5;
  v6 = sub_1D15A3438();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D15A33A8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for TimeBasedDistributionChartModel();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1D14B3D60(0, &qword_1EC630438, &qword_1EC630440, sub_1D149B360, sub_1D149B5A4);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  if ((a2 & 1) == 0)
  {
    v19 = v36;
    sub_1D15A3388();
    sub_1D14B3F2C(0, &qword_1EE05ABD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    v21 = _swift_stdlib_malloc_size(v20);
    v22 = 0;
    v23 = v21 - 32;
    if (v21 < 32)
    {
      v23 = v21 - 25;
    }

    v20[2] = 25;
    v20[3] = 2 * (v23 >> 3);
    v24 = 4;
    result = v35;
    while (1)
    {
      if (v22 == 24)
      {
        v26 = 0;
      }

      else
      {
        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          return result;
        }
      }

      v20[v24] = v22;
      if (v24 == 28)
      {
        goto LABEL_13;
      }

      ++v24;
      v27 = v22 == 24;
      v22 = v26;
      if (v27)
      {
        __break(1u);
LABEL_13:
        sub_1D14B48F4(result, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimeBasedDistributionChartModel);
        v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
        v29 = swift_allocObject();
        sub_1D14B495C(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for TimeBasedDistributionChartModel);
        sub_1D15A3428();
        sub_1D14B4710(0, &qword_1EC630478, sub_1D149B6F4, MEMORY[0x1E69E6720]);
        sub_1D149BAF0();
        v30 = v32;
        sub_1D15A35F8();
        (*(v33 + 32))(v19, v30, v34);
        goto LABEL_14;
      }
    }
  }

  sub_1D14B48F4(v35, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TimeBasedDistributionChartModel);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_1D14B495C(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TimeBasedDistributionChartModel);
  sub_1D15A3398();
  sub_1D15A3428();
  sub_1D14B4710(0, &qword_1EC630440, sub_1D149B360, MEMORY[0x1E69E6720]);
  sub_1D149B5A4();
  sub_1D15A35F8();
  (*(v14 + 32))(v36, v16, v13);
LABEL_14:
  sub_1D14B3C80(0, &qword_1EC6306B0, MEMORY[0x1E695B1A0]);
  return swift_storeEnumTagMultiPayload();
}

double sub_1D14B1CB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TimeBasedDistributionChartModel();
  type metadata accessor for TimeBasedDistributionChartDesign();
  sub_1D15A3D48();
  sub_1D15A36C8();
  v4 = sub_1D15A3448();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_1D149AC24(0, &qword_1EC6304F8, MEMORY[0x1E695B190]);
  v6 = (a2 + *(v5 + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_1D14B1DB4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v63 = a2;
  v62 = a4;
  v5 = type metadata accessor for TimeBasedDistributionChartModel();
  v57 = *(v5 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay(0);
  v8 = *(v7 - 8);
  v50 = v7 - 8;
  v55 = v8;
  v54 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A3478();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D15A38C8();
  v44 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14B48A0(0, &qword_1EC630190, MEMORY[0x1E69E63B0], MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  *&v15 = COERCE_DOUBLE(sub_1D15A3538());
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1E695B048];
  sub_1D149B7A0(0, &qword_1EC6303E0, MEMORY[0x1E695B238]);
  v45 = v18;
  v46 = *(*&v18 - 8);
  MEMORY[0x1EEE9AC00](*&v18);
  v20 = &v40 - v19;
  sub_1D149AB04();
  v49 = v21;
  v52 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v41 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A38B8();
  v40 = a1;
  v64 = *(a1 + 16) + 2.0;
  sub_1D15A3408();

  sub_1D15A38B8();
  v64 = *(a1 + 8);
  sub_1D15A3408();

  sub_1D15A3528();
  v23 = v44;
  v24 = v42;
  v25 = v48;
  (*(v44 + 104))(v42, *MEMORY[0x1E697F468], v48);
  v26 = MEMORY[0x1E695B228];
  sub_1D15A3318();
  (*(v23 + 8))(v24, v25);
  (*(v47 + 8))(v17, v15);
  v27 = v40;
  v68 = *(v40 + *(v50 + 40));
  v64 = *&v15;
  v65 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v41;
  v30 = v45;
  sub_1D15A3328();
  (*(v46 + 8))(v20, COERCE_DOUBLE(*&v30));
  v31 = v51;
  sub_1D15A3468();
  v32 = v53;
  sub_1D14B48F4(v27, v53, type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay);
  v33 = v56;
  sub_1D14B48F4(v59, v56, type metadata accessor for TimeBasedDistributionChartModel);
  v34 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v35 = v34 + v54;
  v36 = (*(v57 + 80) + v34 + v54 + 1) & ~*(v57 + 80);
  v37 = swift_allocObject();
  sub_1D14B495C(v32, v37 + v34, type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay);
  *(v37 + v35) = v63;
  sub_1D14B495C(v33, v37 + v36, type metadata accessor for TimeBasedDistributionChartModel);
  sub_1D15A3D48();
  sub_1D149AC24(0, &qword_1EC6303E8, sub_1D149ABFC);
  v64 = v30;
  v65 = MEMORY[0x1E69815C0];
  v66 = OpaqueTypeConformance2;
  v67 = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1D149AD38();
  v38 = v49;
  sub_1D15A32E8();

  (*(v60 + 8))(v31, v61);
  return (*(v52 + 8))(v29, v38);
}

double sub_1D14B2680@<D0>(char *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_1D15A23F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay(0);
  (*(v7 + 16))(v9, &a1[*(v10 + 28)], v6);
  v11 = sub_1D15A3B18();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  sub_1D15A3D48();
  sub_1D15A36C8();
  v26 = v15 & 1;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  v19 = qword_1D15AF1C8[*a1];
  v20 = a2 + *(type metadata accessor for TimeBasedDistributionChartModel() + 24);
  v21 = *(type metadata accessor for TimeBasedDistributionChartDesign() + v19);
  *(a3 + 88) = *&v25[47];
  *(a3 + 96) = 0;
  v22 = *&v25[16];
  *(a3 + 73) = *&v25[32];
  v23 = *v25;
  *(a3 + 57) = v22;
  result = *(v20 + v21);
  *a3 = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v15 & 1;
  *(a3 + 24) = v17;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 41) = v23;
  *(a3 + 104) = result;
  return result;
}

uint64_t sub_1D14B2884@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A34D8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D15A34F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D14B48A0(0, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
  v7 = v6;
  v30 = *(*&v6 - 8);
  MEMORY[0x1EEE9AC00](*&v6);
  v9 = &v27 - v8;
  sub_1D149B45C();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149B360();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D15A3618();
  if (v34)
  {
    v18 = 1;
    return (*(v15 + 56))(a2, v18, 1, v14);
  }

  if ((~*&v33 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v33;
  if (v33 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v33 < 9.22337204e18)
  {
    v33 = COERCE_DOUBLE(sub_1D14B41FC(v33));
    v34 = v20;
    v28 = a2;
    if (v19 == 0.0)
    {
      sub_1D15A3D98();
    }

    else if (v19 == 24.0)
    {
      sub_1D15A3DA8();
    }

    else
    {
      sub_1D15A3DB8();
    }

    sub_1D15A34E8();
    sub_1D15A34C8();
    sub_1D147ED3C();
    sub_1D15A33E8();
    v21 = a1 + *(type metadata accessor for TimeBasedDistributionChartModel() + 24);
    v33 = *(v21 + *(type metadata accessor for TimeBasedDistributionChartDesign() + 56));
    v22 = sub_1D149B520();
    v23 = MEMORY[0x1E69815C0];
    v24 = MEMORY[0x1E6981568];
    sub_1D15A3548();
    (*(v30 + 8))(v9, COERCE_DOUBLE(*&v7));
    v33 = v7;
    v34 = v23;
    v35 = v22;
    v36 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v29;
    v26 = v32;
    sub_1D15A3558();
    (*(v31 + 8))(v12, v26);
    a2 = v28;
    (*(v15 + 32))(v28, v25, v14);
    v18 = 0;
    return (*(v15 + 56))(a2, v18, 1, v14);
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1D14B2D3C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v78 = a1;
  sub_1D14B4774();
  v81 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149B6F4();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D15A34D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A34F8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14B48A0(0, &qword_1EC630458, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E695B150]);
  v71 = v11;
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  sub_1D149BA40();
  v72 = v14;
  v73 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149B944();
  v75 = v17;
  v74 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v67 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149B818();
  v76 = v19;
  v77 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v63 - v22;
  v23 = sub_1D15A3588();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149B7A0(0, &qword_1EC630488, MEMORY[0x1E695B280]);
  v70 = v27;
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v63 - v32;
  sub_1D15A3618();
  if (BYTE8(v94))
  {
    v34 = 1;
LABEL_15:
    (*(v84 + 56))(a2, v34, 1, v85);
    return;
  }

  v64 = a2;
  v35 = v94;
  v36 = *&v94;
  sub_1D15A3688();
  v94 = v91;
  v95 = v92;
  v96 = v93;
  sub_1D15A3578();
  v65 = v33;
  sub_1D15A3568();
  (*(v24 + 8))(v26, v23);
  if (remainder(v36, 12.0) != 0.0)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    goto LABEL_9;
  }

  if ((~v35 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v36 < 9.22337204e18)
  {
    v37 = sub_1D14B41FC(v36);
LABEL_9:
    v86 = v37;
    v87 = v38;
    if (v36 == 0.0)
    {
      sub_1D15A3D98();
    }

    else if (v36 == 24.0)
    {
      sub_1D15A3DA8();
    }

    else
    {
      sub_1D15A3DB8();
    }

    sub_1D15A34E8();
    sub_1D15A34C8();
    sub_1D147ED3C();
    sub_1D15A33E8();
    v39 = sub_1D149B520();
    v40 = v71;
    sub_1D15A3568();
    (*(v68 + 8))(v13, v40);
    v41 = v78 + *(type metadata accessor for TimeBasedDistributionChartModel() + 24);
    v90 = *(v41 + *(type metadata accessor for TimeBasedDistributionChartDesign() + 56));
    v86 = v40;
    v87 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = MEMORY[0x1E69815C0];
    v44 = MEMORY[0x1E6981568];
    v45 = v67;
    v46 = v72;
    sub_1D15A3548();
    (*(v73 + 8))(v16, v46);
    v86 = v46;
    v87 = v43;
    v88 = OpaqueTypeConformance2;
    v89 = v44;
    swift_getOpaqueTypeConformance2();
    v47 = v82;
    v48 = v75;
    sub_1D15A3558();
    (*(v74 + 8))(v45, v48);
    v49 = *(v28 + 16);
    v50 = v30;
    v51 = v30;
    v63 = v30;
    v52 = v70;
    v49(v51, v65, v70);
    v53 = v77;
    v54 = *(v77 + 16);
    v55 = v76;
    v54(v83, v47, v76);
    v56 = v79;
    v49(v79, v50, v52);
    v57 = v81;
    v58 = *(v81 + 48);
    v59 = v83;
    v54(&v56[v58], v83, v55);
    v60 = v80;
    (*(v28 + 32))(v80, v56, v52);
    (*(v53 + 32))(v60 + *(v57 + 48), &v56[v58], v55);
    v61 = *(v53 + 8);
    v61(v82, v55);
    v62 = *(v28 + 8);
    v62(v65, v52);
    v61(v59, v55);
    v62(v63, v52);
    a2 = v64;
    sub_1D145F940(v60, v64);
    v34 = 0;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1D14B3828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D14B3870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D14B3828(&qword_1EC6306A0, type metadata accessor for AFibBurdenTimeOfDayChart);

  return MEMORY[0x1EEE0E8E0](a1, a2, a3, v6);
}

uint64_t sub_1D14B3924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1D14B3828(&qword_1EC6306A0, type metadata accessor for AFibBurdenTimeOfDayChart);

  return a4(a1, a2, v6);
}

uint64_t sub_1D14B39B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_1D14B3828(&qword_1EC630678, type metadata accessor for AFibBurdenTimeOfDayChart);
  *v3 = v1;
  v3[1] = sub_1D14B3A90;

  return MEMORY[0x1EEE0E380](a1, v4);
}

uint64_t sub_1D14B3A90(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1D14B3BB8()
{
  sub_1D14B3F2C(319, &qword_1EC630698, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TimeBasedDistribution();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TimeBasedDistributionChartModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D14B3C80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D14B3D60(255, &qword_1EC630438, &qword_1EC630440, sub_1D149B360, sub_1D149B5A4);
    v7 = v6;
    sub_1D14B3D60(255, &qword_1EC630470, &qword_1EC630478, sub_1D149B6F4, sub_1D149BAF0);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D14B3D60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1D14B4710(255, a3, a4, MEMORY[0x1E69E6720]);
    a5();
    v7 = sub_1D15A3608();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D14B3DF4(uint64_t a1)
{
  sub_1D149B16C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D14B3E5C(uint64_t a1)
{
  sub_1D14B4710(0, &qword_1EC6306A8, MEMORY[0x1E695B2F8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D14B3F2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for TimeBasedDistributionChartModel() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 8);
  v5 = v0 + v3 + v1[8];

  v6 = *(type metadata accessor for TimeBasedDistributionChartDesign() + 32);
  v7 = sub_1D15A36F8();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + v1[9]);
  v8 = v1[10];
  v9 = sub_1D15A3268();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D14B4168(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TimeBasedDistributionChartModel() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D14B41FC(uint64_t a1)
{
  v33 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1D14B4710(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v28 - v3;
  sub_1D14B4710(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8], v1);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1D15A23A8();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D15A2848();
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14B4710(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], v1);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v29 = sub_1D15A26A8();
  v16 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2818();
  v19 = v28;
  (*(v10 + 56))(v6, 1, 1, v28);
  v20 = sub_1D15A2898();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  sub_1D15A2378();
  sub_1D15A27D8();
  (*(v31 + 8))(v9, v32);
  v21 = v19;
  v22 = v29;
  (*(v10 + 8))(v12, v21);
  result = (*(v16 + 48))(v15, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v18, v15, v22);
    if (qword_1EC62FF28 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC63D5F0;
    v25 = sub_1D15A2618();
    v26 = [v24 stringFromDate_];

    v27 = sub_1D15A3F38();
    (*(v16 + 8))(v18, v22);
    return v27;
  }

  return result;
}

void sub_1D14B4710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D14B4774()
{
  if (!qword_1EC6306B8)
  {
    sub_1D149B7A0(255, &qword_1EC630488, MEMORY[0x1E695B280]);
    sub_1D149B818();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6306B8);
    }
  }
}

uint64_t sub_1D14B481C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TimeBasedDistributionChartModel() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 17) & ~*(v5 + 80));

  return sub_1D14B1DB4(a1, v6, v7, a2);
}

void sub_1D14B48A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D14B48F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14B495C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D14B49C4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeBasedDistributionChartPoint.TimeOfDay(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(type metadata accessor for TimeBasedDistributionChartModel() - 8);
  v7 = v1 + ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80));

  return sub_1D14B2680((v1 + v4), v7, a1);
}

Swift::String __swiftcall Data.logDescription(messageLength:messageLengthLimit:)(Swift::Int messageLength, Swift::Int messageLengthLimit)
{
  v4 = messageLengthLimit - messageLength;
  if (__OFSUB__(messageLengthLimit, messageLength))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v4 >= 1)
  {
    v5 = (v4 * 3) >> 64;
    v6 = 3 * v4;
    if (v5 == v6 >> 63)
    {
      v7 = (v6 >> 2) - 2;
      v8 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        if (v8 == 2)
        {
          messageLength = *(v2 + 16);
          v10 = *(v2 + 24);
        }

        else
        {
          v10 = 0;
          messageLength = 0;
        }
      }

      else
      {
        v9 = v8 == 0;
        if (v8)
        {
          v10 = v2 >> 32;
        }

        else
        {
          v10 = BYTE6(v3);
        }

        if (v9)
        {
          messageLength = 0;
        }

        else
        {
          messageLength = v2;
        }
      }

      if (v7 >= v10)
      {
        messageLengthLimit = v10;
      }

      else
      {
        messageLengthLimit = v7;
      }

      if (messageLengthLimit >= messageLength)
      {
        v13 = sub_1D15A2528();
        v15 = v14;
        v11 = sub_1D15A2508();
        v12 = v16;
        sub_1D1498BF4(v13, v15);
        goto LABEL_20;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_20:
  messageLength = v11;
  messageLengthLimit = v12;
LABEL_24:
  result._object = messageLengthLimit;
  result._countAndFlagsBits = messageLength;
  return result;
}

uint64_t DateRange.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6669636570736E75;
  v2 = 0x57676E696C6C6F72;
  v3 = 0x4D676E696C6C6F72;
  if (a1 != 4)
  {
    v3 = 0x48676E696C6C6F72;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x656D69546C6C61;
  if (a1 != 1)
  {
    v4 = 0x7961646F74;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D14B4C8C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14B4DB0()
{
  sub_1D15A3F88();
}

uint64_t sub_1D14B4EC0()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14B4FE0@<X0>(_BYTE *a1@<X8>)
{
  result = _s19HealthVisualization9DateRangeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_1D14B5010(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xEB000000006B6565;
  v6 = 0x57676E696C6C6F72;
  v7 = 0xEC00000068746E6FLL;
  v8 = 0x4D676E696C6C6F72;
  if (v2 != 4)
  {
    v8 = 0x48676E696C6C6F72;
    v7 = 0xEF72616559666C61;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x656D69546C6C61;
  if (v2 != 1)
  {
    v10 = 0x7961646F74;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D14B51B0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x57676E696C6C6F72;
  v7 = 0xEB000000006B6565;
  v8 = 0x4D676E696C6C6F72;
  v9 = 0xEC00000068746E6FLL;
  if (v4 != 4)
  {
    v8 = 0x48676E696C6C6F72;
    v9 = 0xEF72616559666C61;
  }

  if (v4 != 3)
  {
    v6 = v8;
    v7 = v9;
  }

  v10 = 0xE700000000000000;
  v11 = 0x656D69546C6C61;
  if (v4 != 1)
  {
    v11 = 0x7961646F74;
    v10 = 0xE500000000000000;
  }

  if (!*a1)
  {
    v11 = 0x6669636570736E75;
    v10 = 0xEB00000000646569;
  }

  if (*a1 <= 2u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  if (*a2 > 2u)
  {
    if (v5 == 3)
    {
      v2 = 0xEB000000006B6565;
      if (v12 != 0x57676E696C6C6F72)
      {
        goto LABEL_31;
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xEC00000068746E6FLL;
      if (v12 != 0x4D676E696C6C6F72)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEF72616559666C61;
      if (v12 != 0x48676E696C6C6F72)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (*a2)
    {
      if (v5 == 1)
      {
        v2 = 0xE700000000000000;
        if (v12 != 0x656D69546C6C61)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE500000000000000;
      v3 = 0x7961646F74;
    }

    if (v12 != v3)
    {
LABEL_31:
      v14 = sub_1D15A4BA8();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v13 != v2)
  {
    goto LABEL_31;
  }

  v14 = 1;
LABEL_32:

  return v14 & 1;
}

id DateRange.predicate(endingAt:)(char *a1, unsigned __int8 a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14995A0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1D15A22A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateRange.dateInterval(endingAt:)(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D14B604C(v10, &qword_1EE05B520, MEMORY[0x1E6968130]);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = objc_opt_self();
    sub_1D15A2288();
    v17 = sub_1D15A2618();
    v18 = *(v5 + 8);
    v18(v7, v4);
    sub_1D15A2258();
    v19 = sub_1D15A2618();
    v18(v7, v4);
    v20 = [v16 predicateForSamplesWithStartDate:v17 endDate:v19 options:0];

    (*(v12 + 8))(v14, v11);
    return v20;
  }
}

uint64_t DateRange.dateInterval(endingAt:)@<X0>(char *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v78 = a1;
  v79 = a3;
  v4 = sub_1D15A2838();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14995A0(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v70 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  v15 = sub_1D15A26A8();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v70 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  sub_1D14995A0(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v70 - v28;
  v30 = sub_1D15A2848();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_1D15A2818();
      v52 = v74;
      v51 = v75;
      (*(v74 + 104))(v6, *MEMORY[0x1E6969A20], v75);
      v53 = v78;
      sub_1D15A27F8();
      (*(v52 + 8))(v6, v51);
      (*(v31 + 8))(v33, v30);
      v55 = v76;
      v54 = v77;
      if ((*(v76 + 48))(v14, 1, v77) == 1)
      {
        v44 = MEMORY[0x1E6969530];
        v45 = v14;
        goto LABEL_16;
      }

      (*(v55 + 32))(v26, v14, v54);
      v63 = *(v55 + 16);
      v63(v72, v26, v54);
      v63(v73, v53, v54);
      v64 = v79;
      sub_1D15A2268();
      (*(v55 + 8))(v26, v54);
    }

    else if (a2 == 4)
    {
      sub_1D15A2818();
      v40 = v74;
      v39 = v75;
      (*(v74 + 104))(v6, *MEMORY[0x1E6969A78], v75);
      v41 = v78;
      sub_1D15A27F8();
      (*(v40 + 8))(v6, v39);
      (*(v31 + 8))(v33, v30);
      v43 = v76;
      v42 = v77;
      if ((*(v76 + 48))(v11, 1, v77) == 1)
      {
        v44 = MEMORY[0x1E6969530];
        v45 = v11;
LABEL_16:
        sub_1D14B604C(v45, &qword_1EE05B7F8, v44);
        v62 = sub_1D15A22A8();
        return (*(*(v62 - 8) + 56))(v79, 1, 1, v62);
      }

      (*(v43 + 32))(v19, v11, v42);
      v65 = *(v43 + 16);
      v65(v72, v19, v42);
      v65(v73, v41, v42);
      v64 = v79;
      sub_1D15A2268();
      (*(v43 + 8))(v19, v42);
    }

    else
    {
      sub_1D15A2818();
      v57 = v74;
      v56 = v75;
      (*(v74 + 104))(v6, *MEMORY[0x1E6969A10], v75);
      v58 = v71;
      v59 = v78;
      sub_1D15A27F8();
      (*(v57 + 8))(v6, v56);
      (*(v31 + 8))(v33, v30);
      v61 = v76;
      v60 = v77;
      if ((*(v76 + 48))(v58, 1, v77) == 1)
      {
        v44 = MEMORY[0x1E6969530];
        v45 = v58;
        goto LABEL_16;
      }

      v66 = v70;
      (*(v61 + 32))(v70, v58, v60);
      v67 = *(v61 + 16);
      v67(v72, v66, v60);
      v67(v73, v59, v60);
      v64 = v79;
      sub_1D15A2268();
      (*(v61 + 8))(v66, v60);
    }

    v68 = sub_1D15A22A8();
    return (*(*(v68 - 8) + 56))(v64, 0, 1, v68);
  }

  if (a2 >= 2u)
  {
    v46 = objc_opt_self();
    v47 = sub_1D15A2618();
    sub_1D15A2818();
    v48 = sub_1D15A27B8();
    (*(v31 + 8))(v33, v30);
    v49 = [v46 hk:v47 dateIntervalForDayFromDate:v48 calendar:?];

    if (v49)
    {
      sub_1D15A2248();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    v69 = sub_1D15A22A8();
    (*(*(v69 - 8) + 56))(v29, v50, 1, v69);
    return sub_1D1495C10(v29, v79);
  }

  else
  {
    v34 = sub_1D15A22A8();
    v35 = *(*(v34 - 8) + 56);
    v36 = v34;
    v37 = v79;

    return v35(v37, 1, 1, v36);
  }
}

uint64_t DateRange.relatedTimeScope.getter(unsigned __int8 a1)
{
  v1 = 6;
  v2 = 5;
  v3 = 4;
  if (a1 != 4)
  {
    v3 = 3;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 < 2u)
  {
    v1 = 0;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _s19HealthVisualization9DateRangeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D15A49B8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D14B604C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D14995A0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D14B60AC()
{
  result = qword_1EE056CF0;
  if (!qword_1EE056CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056CF0);
  }

  return result;
}

unint64_t sub_1D14B6104()
{
  result = qword_1EC6306C8;
  if (!qword_1EC6306C8)
  {
    sub_1D14B615C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6306C8);
  }

  return result;
}

void sub_1D14B615C()
{
  if (!qword_1EE056838)
  {
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056838);
    }
  }
}

unint64_t sub_1D14B61BC()
{
  result = qword_1EE05ADE8[0];
  if (!qword_1EE05ADE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE05ADE8);
  }

  return result;
}

uint64_t static SummaryModelProcessingResult<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SummaryModelProcessingResult();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v28 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v28 - v15;
  v31 = v10;
  v32 = v17;
  v18 = *(v17 + 48);
  v19 = *(v10 + 16);
  v19(&v28 - v15, a1, v9, v14);
  (v19)(&v16[v18], a2, v9);
  v20 = *(v7 + 48);
  v21 = v20(v16, 2, a3);
  if (!v21)
  {
    v28 = v7;
    (v19)(v33, v16, v9);
    if (!v20(&v16[v18], 2, a3))
    {
      v24 = v28;
      v25 = v29;
      (*(v28 + 32))(v29, &v16[v18], a3);
      v26 = v33;
      v22 = sub_1D15A3EE8();
      v27 = *(v24 + 8);
      v27(v25, a3);
      v27(v26, a3);
      v13 = v31;
      goto LABEL_10;
    }

    (*(v28 + 8))(v33, a3);
    goto LABEL_9;
  }

  if (v21 == 1)
  {
    if (v20(&v16[v18], 2, a3) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v20(&v16[v18], 2, a3) != 2)
  {
LABEL_9:
    v22 = 0;
    v9 = v32;
    goto LABEL_10;
  }

  v22 = 1;
  v13 = v31;
LABEL_10:
  (*(v13 + 8))(v16, v9);
  return v22 & 1;
}

uint64_t sub_1D14B65A4()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D14B6600(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_1D14B67D4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

void *QuantityDistributionConfigurationOverrides.predicate.getter()
{
  v1 = *(v0 + *(type metadata accessor for QuantityDistributionConfigurationOverrides() + 20));
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for QuantityDistributionConfigurationOverrides()
{
  result = qword_1EE05AE50;
  if (!qword_1EE05AE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void QuantityDistributionConfigurationOverrides.predicate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for QuantityDistributionConfigurationOverrides() + 20);

  *(v1 + v3) = a1;
}

uint64_t sub_1D14B6C5C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D14B7040(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D14B6D1C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D14B7040(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t QuantityDistributionConfigurationOverrides.init(dateInterval:predicate:histogramWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D15A22A8();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for QuantityDistributionConfigurationOverrides();
  v10 = *(v9 + 20);
  v11 = *(v9 + 24);
  v12 = sub_1D15A23A8();
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  sub_1D14B6D1C(a1, a4, &qword_1EE05B520, MEMORY[0x1E6968130]);
  *(a4 + v10) = a2;
  return sub_1D14B6D1C(a3, a4 + v11, &qword_1EE05B408, MEMORY[0x1E6968278]);
}

void sub_1D14B6F50()
{
  sub_1D14B7040(319, &qword_1EE05B520, MEMORY[0x1E6968130]);
  if (v0 <= 0x3F)
  {
    sub_1D14B7040(319, &qword_1EE056780, sub_1D14B7094);
    if (v1 <= 0x3F)
    {
      sub_1D14B7040(319, &qword_1EE05B408, MEMORY[0x1E6968278]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D14B7040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D14B7094()
{
  result = qword_1EE056788;
  if (!qword_1EE056788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE056788);
  }

  return result;
}

id sub_1D14B7108()
{
  v1 = OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___ringsRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___ringsRenderer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___ringsRenderer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6989B20]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D14B717C()
{
  v1 = OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___unitPreferenceController;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___unitPreferenceController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___unitPreferenceController);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_healthStore) viewControllerFactory];
    v5 = [v4 createHKUnitPreferenceController];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D14B7220()
{
  v1 = OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___displayTypeController;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___displayTypeController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___displayTypeController);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [*(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_healthStore) displayTypeController];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id HighlightActivityCalendarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_1D14B7370(uint64_t a1)
{
  v3 = v1;

  return a1;
}

void HighlightActivityCalendarView.init(model:healthStore:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_1D15A3268();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v3[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_currentWeekdayStringLength] = 0;
  v15 = *MEMORY[0x1E69DDC90];
  *&v3[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_currentLabelMaximumContentSizeCategory] = *MEMORY[0x1E69DDC90];
  *&v3[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___ringsRenderer] = 0;
  *&v3[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___unitPreferenceController] = 0;
  *&v3[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___displayTypeController] = 0;
  *&v3[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_longWeekdayStrings] = v13;
  *&v3[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_shortWeekdayStrings] = v14;
  *&v3[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_healthStore] = a2;
  v16 = type metadata accessor for HighlightActivityCalendarView();
  v48.receiver = v3;
  v48.super_class = v16;
  v17 = v15;

  v18 = a2;
  v19 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D14B78B4();
  [v19 setHorizontalDistribution_];
  [v19 setVerticalAlignment_];
  [v19 setColumnSpacing_];
  v20 = *(v12 + 16);
  if (v20)
  {
    v21 = *(v12 + 32);

    if (v20 != 1)
    {
      v44 = v6;
      sub_1D15A3218();
      v22 = sub_1D15A3248();
      v23 = sub_1D15A4318();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v42 = v24;
        v43 = swift_slowAlloc();
        v47 = v43;
        *v24 = 136446210;
        v49 = ObjectType;
        swift_getMetatypeMetadata();
        v25 = sub_1D15A3F68();
        LODWORD(ObjectType) = v23;
        v27 = v18;
        v28 = sub_1D1479780(v25, v26, &v47);

        v29 = v42;
        *(v42 + 1) = v28;
        v18 = v27;
        _os_log_impl(&dword_1D1446000, v22, ObjectType, "%{public}s: the view model provided more than one week, which is nonsensical for this view.", v29, 0xCu);
        v30 = v43;
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1D388BF00](v30, -1, -1);
        MEMORY[0x1D388BF00](v29, -1, -1);
      }

      (*(v46 + 8))(v11, v44);
    }

    v49 = v21;
    sub_1D14B7A90(&v49);
    v31 = sub_1D14B7220();
    v32 = [v31 wheelchairUseCharacteristicCache];

    if (v32)
    {

      [v32 registerObserver_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1D15A3218();
    v33 = sub_1D15A3248();
    v34 = sub_1D15A4318();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v18;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136446210;
      v49 = ObjectType;
      swift_getMetatypeMetadata();
      v38 = sub_1D15A3F68();
      v40 = sub_1D1479780(v38, v39, &v47);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1D1446000, v33, v34, "%{public}s: the view model did not provide any weeks, which is unexpected", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D388BF00](v37, -1, -1);
      MEMORY[0x1D388BF00](v36, -1, -1);
    }

    else
    {
    }

    (*(v46 + 8))(v8, v6);
  }
}

uint64_t sub_1D14B78B4()
{
  swift_getObjectType();
  sub_1D14BB1D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D15AEBB0;
  v1 = sub_1D15A32B8();
  v2 = MEMORY[0x1E69DC2B0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1D15A32A8();
  v4 = MEMORY[0x1E69DC0F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_1D15A4548();
  swift_unknownObjectRelease();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D15ACDD0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  sub_1D15A4548();
  swift_unknownObjectRelease();
}

void sub_1D14B7A90(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HighlightCalendarDayViewModel(0);
  v133 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v124 - v8;
  v134 = *a1;
  v132 = *(v134 + 16);
  if (v132)
  {
    v10 = 0;
    v131 = v134 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
    v11 = 0x1E696A000;
    v128 = xmmword_1D15AF450;
    v125 = v2;
    v129 = &v124 - v8;
    v130 = v6;
    while (v10 < *(v134 + 16))
    {
      sub_1D14BACF0(v131 + *(v133 + 72) * v10, v9);
      v21 = sub_1D14BAA20();
      v23 = *(v9 + 3);
      v22 = *(v9 + 4);
      v24 = *(v9 + 5);
      v25 = v9[48];
      sub_1D14BACF0(v9, v6);
      v138 = v21;
      v139 = v10;
      if (v25)
      {
        v26 = objc_allocWithZone(type metadata accessor for HighlightCalendarDayView());
        v137 = sub_1D154EC48(v6, 0);
        v27 = sub_1D14BAD54();
        v28 = [v27 font];
        if (!v28)
        {
          goto LABEL_60;
        }

        v29 = v28;
        sub_1D14B88D0(0, v28);
        v31 = v30;

        v32 = HKLocalizedNoDataString();
        if (!v32)
        {
          goto LABEL_56;
        }

        v33 = v32;
        sub_1D15A3F38();

        v34 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v35 = sub_1D15A3EF8();
        v36 = [v34 initWithString_];

        if (v31)
        {
          v37 = objc_opt_self();
          v31 = v31;
          v38 = [v37 textAttachmentWithImage_];
          v39 = [objc_opt_self() attributedStringWithAttachment_];

          [v36 insertAttributedString:v39 atIndex:0];
          if ([v2 hk_isLeftToRight])
          {
          }

          else
          {
            v54 = objc_allocWithZone(*(v11 + 2736));
            v55 = sub_1D15A3EF8();
            v56 = [v54 initWithString_];

            [v36 insertAttributedString:v56 atIndex:0];
          }
        }

        else
        {
        }

        [v27 setAttributedText_];

        v57 = v27;
        v58 = sub_1D14BAD54();
        v59 = [v58 font];
        if (!v59)
        {
          goto LABEL_57;
        }

        v60 = v59;
        sub_1D14B88D0(1, v59);
        v62 = v61;

        v63 = HKLocalizedNoDataString();
        if (!v63)
        {
          goto LABEL_58;
        }

        v64 = v63;
        sub_1D15A3F38();

        v65 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v66 = sub_1D15A3EF8();
        v67 = [v65 initWithString_];

        if (v62)
        {
          v68 = objc_opt_self();
          v62 = v62;
          v69 = [v68 textAttachmentWithImage_];
          v70 = [objc_opt_self() attributedStringWithAttachment_];

          [v67 insertAttributedString:v70 atIndex:0];
          if ([v2 hk_isLeftToRight])
          {
          }

          else
          {
            v71 = objc_allocWithZone(*(v11 + 2736));
            v72 = sub_1D15A3EF8();
            v73 = [v71 initWithString_];

            [v67 insertAttributedString:v73 atIndex:0];
          }
        }

        else
        {
        }

        [v58 setAttributedText_];

        v74 = v58;
        v75 = sub_1D14BAD54();
        v76 = [v75 font];
        if (!v76)
        {
          goto LABEL_59;
        }

        v77 = v76;
        sub_1D14B88D0(2, v76);
        v79 = v78;

        v80 = HKLocalizedNoDataString();
        if (!v80)
        {
          goto LABEL_55;
        }

        v81 = v80;
        v136 = v57;
        sub_1D15A3F38();

        v82 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v83 = sub_1D15A3EF8();
        v84 = [v82 initWithString_];

        if (v79)
        {
          v85 = objc_opt_self();
          v79 = v79;
          v86 = [v85 textAttachmentWithImage_];
          v87 = [objc_opt_self() attributedStringWithAttachment_];

          [v84 &selRef:v87 localizedDisplayNameForUnit:0 + 3];
          if ([v2 hk_isLeftToRight])
          {
          }

          else
          {
            v88 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v89 = sub_1D15A3EF8();
            v90 = [v88 initWithString_];

            v2 = v125;
            [v84 &selRef:v90 localizedDisplayNameForUnit:0 + 3];
          }
        }

        else
        {
        }

        [v75 setAttributedText_];
      }

      else
      {
        v40 = sub_1D14B7108();
        v41 = objc_allocWithZone(type metadata accessor for HighlightCalendarDayView());
        v42 = sub_1D154EC48(v6, v40);

        v137 = v42;
        v126 = v24;
        v127 = v22;
        sub_1D14BB144(v23, v22, v24, 0);
        v43 = sub_1D14BAD54();
        v44 = [v43 font];
        if (!v44)
        {
          goto LABEL_63;
        }

        v45 = v44;
        sub_1D14B88D0(0, v44);
        v47 = v46;

        v135 = v23;
        sub_1D14B8AD4(0, v23);
        v48 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v49 = sub_1D15A3EF8();
        v50 = [v48 initWithString_];

        if (v47)
        {
          v51 = objc_opt_self();
          v47 = v47;
          v52 = [v51 textAttachmentWithImage_];
          v53 = [objc_opt_self() attributedStringWithAttachment_];

          [v50 insertAttributedString:v53 atIndex:0];
          if ([v2 hk_isLeftToRight])
          {
          }

          else
          {
            v91 = objc_allocWithZone(*(v11 + 2736));
            v92 = sub_1D15A3EF8();
            v93 = [v91 initWithString_];

            [v50 insertAttributedString:v93 atIndex:0];
          }
        }

        else
        {
        }

        [v43 setAttributedText_];

        v94 = v43;
        v95 = sub_1D14BAD54();
        v96 = [v95 font];
        if (!v96)
        {
          goto LABEL_62;
        }

        v97 = v96;
        sub_1D14B88D0(1, v96);
        v99 = v98;

        sub_1D14B8AD4(1, v135);
        v100 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v101 = sub_1D15A3EF8();
        v102 = [v100 initWithString_];

        if (v99)
        {
          v103 = objc_opt_self();
          v104 = v99;
          v105 = [v103 textAttachmentWithImage_];
          v106 = [objc_opt_self() attributedStringWithAttachment_];

          [v102 insertAttributedString:v106 atIndex:0];
          if ([v2 hk_isLeftToRight])
          {
          }

          else
          {
            v107 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v108 = sub_1D15A3EF8();
            v109 = [v107 initWithString_];

            v2 = v125;
            [v102 insertAttributedString:v109 atIndex:0];
          }
        }

        else
        {

          v104 = 0;
        }

        [v95 setAttributedText_];

        v74 = v95;
        v75 = sub_1D14BAD54();
        v110 = [v75 font];
        if (!v110)
        {
          goto LABEL_61;
        }

        v111 = v110;
        sub_1D14B88D0(2, v110);
        v113 = v112;

        sub_1D14B8AD4(2, v135);
        v114 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v115 = v2;
        v116 = sub_1D15A3EF8();
        v117 = [v114 initWithString_];

        v136 = v94;
        if (v113)
        {
          v118 = objc_opt_self();
          v113 = v113;
          v119 = [v118 textAttachmentWithImage_];
          v120 = [objc_opt_self() attributedStringWithAttachment_];

          [v117 insertAttributedString:v120 atIndex:0];
          if ([v115 hk_isLeftToRight])
          {
            v2 = v115;
          }

          else
          {
            v121 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v122 = sub_1D15A3EF8();
            v123 = [v121 initWithString_];

            [v117 insertAttributedString:v123 atIndex:0];

            v2 = v125;
          }
        }

        else
        {

          v2 = v115;
        }

        [v75 setAttributedText_];

        sub_1D14BB18C(v135, v127, v126, 0);
      }

      v10 = v139 + 1;
      type metadata accessor for UILayoutPriority(0);
      v140 = 1065353216;
      v141 = 1148846080;
      sub_1D14BB040();
      v12 = v75;
      sub_1D15A3278();
      LODWORD(v13) = v142;
      v14 = v137;
      [v137 setContentCompressionResistancePriority:0 forAxis:v13];
      sub_1D14BB098(0, &qword_1EE059678, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = v128;
      v16 = v138;
      *(v15 + 32) = v14;
      *(v15 + 40) = v16;
      v17 = v136;
      *(v15 + 48) = v136;
      *(v15 + 56) = v74;
      *(v15 + 64) = v12;
      sub_1D1453BA0(0, &qword_1EE059718);
      v18 = v16;
      v19 = sub_1D15A40A8();

      v20 = [v2 addRowWithArrangedSubviews_];
      swift_unknownObjectRelease();

      v9 = v129;
      sub_1D14BB0E8(v129);
      v6 = v130;
      v11 = 0x1E696A000uLL;
      if (v132 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }
}

void sub_1D14B88D0(char a1, uint64_t a2)
{
  v3 = [objc_opt_self() configurationWithFont_];
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = &selRef_hk_activityExerciseGoalLineColor;
    }

    else
    {
      v5 = sub_1D14B7220();
      v6 = [v5 wheelchairUseCharacteristicCache];

      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 isWheelchairUser];

      v4 = &selRef_hk_activityStandGoalLineColor;
    }
  }

  else
  {
    v4 = &selRef_hk_activityMoveGoalLineColor;
  }

  v7 = [objc_opt_self() *v4];
  v8 = v3;
  v9 = sub_1D15A3EF8();

  v10 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v10)
  {
    v11 = [v10 imageWithRenderingMode_];

    [v11 imageWithTintColor_];
  }

  else
  {
  }
}

id sub_1D14B8AD4(char a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  v3 = a2;
  if ([v3 isPaused])
  {

LABEL_4:
    result = HKLocalizedNoDataString();
    if (result)
    {
      v5 = result;
      v6 = sub_1D15A3F38();
LABEL_21:

      return v6;
    }

    __break(1u);
    goto LABEL_27;
  }

  result = HKNumberFormatterFromTemplate();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = result;
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_16;
    }

    v8 = [v3 appleExerciseTime];
    v9 = [objc_opt_self() minuteUnit];
    [v8 doubleValueForUnit_];

    v10 = sub_1D15A29A8();
    v5 = [v7 stringFromNumber_];

    if (v5)
    {
      goto LABEL_19;
    }

    result = HKLocalizedNoDataString();
    if (result)
    {
LABEL_18:
      v5 = result;
      goto LABEL_19;
    }

    __break(1u);
  }

  if ([v3 activityMoveMode] == 2)
  {
    v11 = [v3 appleMoveTime];
    v12 = [objc_opt_self() minuteUnit];
    [v11 doubleValueForUnit_];

    v13 = sub_1D15A29A8();
    v5 = [v7 stringFromNumber_];

    if (v5)
    {
      goto LABEL_19;
    }

    result = HKLocalizedNoDataString();
    if (!result)
    {
      __break(1u);
LABEL_16:
      v14 = [v3 appleStandHours];
      v15 = [objc_opt_self() countUnit];
      [v14 doubleValueForUnit_];

      v16 = sub_1D15A29A8();
      v5 = [v7 stringFromNumber_];

      if (!v5)
      {
        result = HKLocalizedNoDataString();
        if (!result)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        goto LABEL_18;
      }

LABEL_19:
      v6 = sub_1D15A3F38();
LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v17 = sub_1D14B7220();
  v18 = [objc_allocWithZone(MEMORY[0x1E696C370]) initWithIdentifier_];
  v19 = [v17 displayTypeForObjectType_];

  v20 = sub_1D14B717C();
  v21 = [v20 unitForDisplayType_];

  v22 = [v3 activeEnergyBurned];
  _HKWorkoutFlooredValueForQuantity();

  v23 = sub_1D15A4C58();
  v5 = [v7 stringFromNumber_];

  if (v5)
  {
LABEL_25:
    v6 = sub_1D15A3F38();

    goto LABEL_20;
  }

  result = HKLocalizedNoDataString();
  if (result)
  {
    v5 = result;
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1D14B8ED8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 arrangedSubviewInColumnAtIndex:0 rowAtIndex:{0, v4}];
  v8 = [v0 arrangedSubviewInColumnAtIndex:1 rowAtIndex:0];
  v9 = [v0 arrangedSubviewInColumnAtIndex:2 rowAtIndex:0];
  v10 = [v0 hk_isLeftToRight];
  v11 = v10 == 0;
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v7;
  }

  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v7;
  }

  [v12 frame];
  MinX = CGRectGetMinX(v57);
  [v13 frame];
  v15 = MinX - CGRectGetMaxX(v58);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v8;
  }

  v18 = v15 + -20.0;
  v19 = [v16 font];

  if (!v19)
  {
    v52 = v8;
    v53 = v6;
    v50 = v3;
    v51 = v2;
    if (qword_1EE058BE8 != -1)
    {
      swift_once();
    }

    v20 = off_1EE058BF0;
    v21 = *(off_1EE058BF0 + 2);
    sub_1D1453BA0(0, &qword_1EE0596F8);
    v22 = sub_1D15A45B8();
    v23 = *(v21 + 16);
    MEMORY[0x1EEE9AC00](v22);
    *(&v48 - 2) = v24;
    os_unfair_lock_lock((v23 + 24));
    sub_1D14BB3C8((v23 + 16), &v56);
    os_unfair_lock_unlock((v23 + 24));

    v19 = v56;
    if (!v56)
    {
      v19 = [objc_opt_self() hk:*MEMORY[0x1E69DDD80] preferredFontForTextStyle:2 symbolicTraits:?];
      v25 = v20[2];
      v26 = sub_1D15A45B8();
      v27 = *(v25 + 16);
      MEMORY[0x1EEE9AC00](v26);
      *(&v48 - 2) = v19;
      *(&v48 - 1) = v28;
      os_unfair_lock_lock((v27 + 24));
      sub_1D14BB3E0((v27 + 16));
      os_unfair_lock_unlock((v27 + 24));
    }

    v2 = v51;
    v8 = v52;
    v3 = v50;
    v6 = v53;
  }

  if (sub_1D14B9498(*&v1[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_longWeekdayStrings], v19) <= v18)
  {
    v46 = 1;
  }

  else if (sub_1D14B9498(*&v1[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_shortWeekdayStrings], v19) <= v18)
  {
    v46 = 2;
  }

  else
  {
    v52 = v7;
    sub_1D15A3218();
    v29 = v6;
    v30 = v1;
    v31 = sub_1D15A3248();
    v32 = sub_1D15A4318();
    v50 = v30;

    LODWORD(v51) = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v53 = v29;
      v48 = v31;
      v34 = v33;
      v49 = swift_slowAlloc();
      v55[0] = v49;
      *v34 = 136446722;
      v56 = ObjectType;
      swift_getMetatypeMetadata();
      v35 = sub_1D15A3F68();
      v36 = v3;
      v38 = sub_1D1479780(v35, v37, v55);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = [v50 traitCollection];
      v40 = [v39 preferredContentSizeCategory];

      v56 = v40;
      type metadata accessor for UIContentSizeCategory(0);
      v41 = sub_1D15A3F68();
      v43 = sub_1D1479780(v41, v42, v55);

      *(v34 + 14) = v43;
      *(v34 + 22) = 2048;
      *(v34 + 24) = v18;
      v44 = v48;
      _os_log_impl(&dword_1D1446000, v48, v51, "%{public}s: unable to fit weekday labels for the contentSizeCategory (%s and column width (%f)", v34, 0x20u);
      v45 = v49;
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v45, -1, -1);
      MEMORY[0x1D388BF00](v34, -1, -1);

      v36[1](v53, v2);
    }

    else
    {

      (*(v3 + 1))(v29, v2);
    }

    v46 = 3;
    v7 = v52;
  }

  v47 = OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_currentWeekdayStringLength;
  if (v1[OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_currentWeekdayStringLength] == v46)
  {
  }

  else
  {
    sub_1D14B966C(v46);

    v1[v47] = v46;
  }
}

double sub_1D14B9498(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v17 = MEMORY[0x1E69E7CC0];
      sub_1D1452B90(0, v3, 0);
      sub_1D15A4148();
      v5 = v17;
      v6 = a1 + 40;
      do
      {

        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v7 = sub_1D15A3EF8();
        [v7 hk:a2 boundingWidthWithHeight:1.79769313e308 font:?];
        v9 = v8;

        v11 = *(v17 + 16);
        v10 = *(v17 + 24);
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          sub_1D1452B90((v10 > 1), v11 + 1, 1);
        }

        *(v17 + 16) = v12;
        *(v17 + 8 * v11 + 32) = v9;
        v6 += 16;
        --v3;
      }

      while (v3);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      v12 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v12)
      {
        v13 = 0.0;
LABEL_19:

        return v13;
      }
    }

    v13 = *(v5 + 32);
    v14 = v12 - 1;
    if (v12 != 1)
    {
      v15 = 40;
      do
      {
        if (v13 < *(v5 + v15))
        {
          v13 = *(v5 + v15);
        }

        v15 += 8;
        --v14;
      }

      while (v14);
    }

    goto LABEL_19;
  }

  return 0.0;
}

uint64_t sub_1D14B966C(unsigned __int8 a1)
{
  v20 = 1;
  v3 = [v1 columnAtIndex_];
  if (a1 >= 2u)
  {
    if (a1 != 2)
    {
      v5 = 0;
      v6 = 0;
      goto LABEL_10;
    }

    v4 = &OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_shortWeekdayStrings;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_longWeekdayStrings;
  }

  v6 = *&v1[*v4];
  if (v6)
  {
    v5 = *(v6 + 16);
  }

  else
  {
    v5 = 0;
  }

  v20 = 0;
LABEL_10:
  v7 = [v3 arrangedSubviews];
  sub_1D1453BA0(0, &qword_1EE059718);
  v8 = sub_1D15A40C8();

  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D15A4708())
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v14 = MEMORY[0x1D388AB50](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        if (v6)
        {
          if (!v5)
          {
            goto LABEL_31;
          }

          if (v11 % v5 >= *(v6 + 16))
          {
            goto LABEL_32;
          }

          v13 = sub_1D15A3EF8();
          v12 = v9 & 0xC000000000000001;
        }

        else
        {
          v13 = 0;
        }

        [v18 setText_];

        [v18 setHidden_];
      }

      ++v11;
      if (v16 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_26:

  swift_unknownObjectRelease();
}

void _s19HealthVisualization29HighlightActivityCalendarViewC32wheelchairUseCharacteristicCache_0G14UsageDidChangeySo013_HKWheelchairhiJ0CSg_SbtF_0()
{
  v1 = [objc_msgSend(v0 columnAtIndex_];
  sub_1D1453BA0(0, &qword_1EE059718);
  v2 = sub_1D15A40C8();

  if (v2 >> 62)
  {
LABEL_31:
    v3 = sub_1D15A4708();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v42 = v2 & 0xC000000000000001;
      v39 = v2 & 0xFFFFFFFFFFFFFF8;
      v38 = *MEMORY[0x1E69DDD80];
      v40 = v2;
      v41 = v3;
      while (1)
      {
        if (v42)
        {
          v6 = MEMORY[0x1D388AB50](v4, v2);
        }

        else
        {
          if (v4 >= *(v39 + 16))
          {
            goto LABEL_30;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9)
        {
          v44 = v9;
          v45 = v7;
          v10 = [v9 attributedText];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 string];

            sub_1D15A3F38();
          }

          if (qword_1EE058BE8 != -1)
          {
            swift_once();
          }

          v13 = off_1EE058BF0;
          v14 = *(off_1EE058BF0 + 2);
          sub_1D1453BA0(0, &qword_1EE0596F8);
          v15 = sub_1D15A45B8();
          v16 = *(v14 + 16);
          MEMORY[0x1EEE9AC00](v15);
          os_unfair_lock_lock((v16 + 24));
          sub_1D14BA9E8((v16 + 16), &v46);
          os_unfair_lock_unlock((v16 + 24));

          v17 = v46;
          if (!v46)
          {
            v18 = [objc_opt_self() hk:v38 preferredFontForTextStyle:2 symbolicTraits:?];
            v17 = [v18 hk_monospacedFont];

            v19 = v13[2];
            v20 = sub_1D15A45B8();
            v21 = *(v19 + 16);
            MEMORY[0x1EEE9AC00](v20);
            os_unfair_lock_lock((v21 + 24));
            sub_1D14BAA04((v21 + 16));
            os_unfair_lock_unlock((v21 + 24));
          }

          v22 = [objc_opt_self() configurationWithFont_];
          v23 = sub_1D14B7220();
          v24 = [v23 wheelchairUseCharacteristicCache];

          if (!v24)
          {
            __break(1u);
            return;
          }

          [v24 isWheelchairUser];

          v25 = [objc_opt_self() hk_activityStandGoalLineColor];
          v26 = v22;
          v27 = sub_1D15A3EF8();

          v28 = [objc_opt_self() _systemImageNamed_withConfiguration_];

          if (v28)
          {
            v29 = [v28 imageWithRenderingMode_];

            v28 = [v29 imageWithTintColor_];
          }

          else
          {
          }

          v2 = v40;
          v30 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v31 = sub_1D15A3EF8();
          v7 = [v30 initWithString_];

          if (v28)
          {
            v32 = objc_opt_self();
            v5 = v28;
            v33 = [v32 textAttachmentWithImage_];
            v34 = [objc_opt_self() attributedStringWithAttachment_];

            [v7 insertAttributedString:v34 atIndex:0];
            if ([v43 hk_isLeftToRight])
            {
            }

            else
            {
              v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
              v36 = sub_1D15A3EF8();
              v37 = [v35 initWithString_];

              [v7 insertAttributedString:v37 atIndex:0];
            }
          }

          else
          {

            v5 = 0;
          }

          [v44 setAttributedText_];

          v3 = v41;
        }

        ++v4;
        if (v8 == v3)
        {
          swift_unknownObjectRelease();

          return;
        }
      }
    }
  }

  swift_unknownObjectRelease();
}

void sub_1D14B9FD0()
{
  [v0 bounds];
  Width = CGRectGetWidth(v24);
  if (Width <= 270.0)
  {
    v2 = MEMORY[0x1E69DDC60];
    goto LABEL_11;
  }

  if (Width <= 370.0)
  {
    v2 = MEMORY[0x1E69DDC50];
    goto LABEL_11;
  }

  if (Width <= 385.0)
  {
    v2 = MEMORY[0x1E69DDC40];
    goto LABEL_11;
  }

  if (Width <= 415.0)
  {
    v2 = MEMORY[0x1E69DDC38];
    goto LABEL_11;
  }

  if (qword_1EE0581B8 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v2 = &qword_1EE0681D0;
LABEL_11:
    v20 = *v2;
    v3 = [v0 traitCollection];
    v4 = [v3 preferredContentSizeCategory];

    LOBYTE(v3) = sub_1D15A44C8();
    if ((v3 & 1) == 0)
    {

      v12 = v20;
      goto LABEL_32;
    }

    v5 = OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_currentLabelMaximumContentSizeCategory;
    v6 = sub_1D15A3F38();
    v8 = v7;
    if (v6 == sub_1D15A3F38() && v8 == v9)
    {
      v22 = v20;

      v12 = v22;
      goto LABEL_32;
    }

    v11 = sub_1D15A4BA8();
    v21 = v20;

    if (v11)
    {
      v12 = v21;
      goto LABEL_32;
    }

    v13 = [v0 subviews];
    sub_1D1453BA0(0, &qword_1EE059718);
    v14 = sub_1D15A40C8();

    if (v14 >> 62)
    {
      v15 = sub_1D15A4708();
      if (!v15)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_31;
      }
    }

    if (v15 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1D388AB50](i, v14);
    }

    else
    {
      v17 = *(v14 + 8 * i + 32);
    }

    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      [v19 setMaximumContentSizeCategory_];
    }
  }

LABEL_31:

  v12 = *&v0[v5];
  *&v0[v5] = v21;
LABEL_32:
}

id HighlightActivityCalendarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HighlightActivityCalendarView.__allocating_init(arrangedSubviewRows:)(uint64_t a1)
{
  if (a1)
  {
    sub_1D14BA86C();
    v2 = sub_1D15A40A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviewRows_];

  return v3;
}

id HighlightActivityCalendarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightActivityCalendarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D14BA6F8(void *a1)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [a1 setNeedsLayout];
}

void _s19HealthVisualization29HighlightActivityCalendarViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_currentWeekdayStringLength) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView_currentLabelMaximumContentSizeCategory) = *MEMORY[0x1E69DDC90];
  *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___ringsRenderer) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___unitPreferenceController) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthVisualization29HighlightActivityCalendarView____lazy_storage___displayTypeController) = 0;
  sub_1D15A4908();
  __break(1u);
}

void sub_1D14BA86C()
{
  if (!qword_1EC630710)
  {
    sub_1D1453BA0(255, &qword_1EE059718);
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630710);
    }
  }
}

unint64_t sub_1D14BA914()
{
  result = qword_1EC630778;
  if (!qword_1EC630778)
  {
    sub_1D14BB098(255, &qword_1EC630780, &type metadata for HighlightActivityCalendarView.WeekdayStringLength, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630778);
  }

  return result;
}

unint64_t sub_1D14BA994()
{
  result = qword_1EC630788;
  if (!qword_1EC630788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630788);
  }

  return result;
}

id sub_1D14BAA20()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = qword_1EE0581B8;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  [v2 setMaximumContentSizeCategory_];

  type metadata accessor for UILayoutPriority(0);
  v15 = 1092616192;
  v16 = 1132068864;
  sub_1D14BB040();
  sub_1D15A3278();
  LODWORD(v3) = v14;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v4 = off_1EE058BF0;
  v5 = *(off_1EE058BF0 + 2);
  sub_1D1453BA0(0, &qword_1EE0596F8);
  v6 = sub_1D15A45B8();
  v7 = *(v5 + 16);
  MEMORY[0x1EEE9AC00](v6);
  os_unfair_lock_lock((v7 + 24));
  sub_1D14BB3C8((v7 + 16), &v14);
  os_unfair_lock_unlock((v7 + 24));

  v8 = v14;
  if (!v14)
  {
    v8 = [objc_opt_self() hk:*MEMORY[0x1E69DDD80] preferredFontForTextStyle:2 symbolicTraits:?];
    v9 = v4[2];
    v10 = sub_1D15A45B8();
    v11 = *(v9 + 16);
    MEMORY[0x1EEE9AC00](v10);
    os_unfair_lock_lock((v11 + 24));
    sub_1D14BB3E0((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));
  }

  [v2 setFont_];

  v12 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  return v2;
}

uint64_t sub_1D14BACF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightCalendarDayViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D14BAD54()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = qword_1EE0581B8;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  [v2 setMaximumContentSizeCategory_];

  type metadata accessor for UILayoutPriority(0);
  v16 = 1065353216;
  v17 = 1148846080;
  sub_1D14BB040();
  sub_1D15A3278();
  LODWORD(v3) = v15;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v4 = off_1EE058BF0;
  v5 = *(off_1EE058BF0 + 2);
  sub_1D1453BA0(0, &qword_1EE0596F8);
  v6 = sub_1D15A45B8();
  v7 = *(v5 + 16);
  MEMORY[0x1EEE9AC00](v6);
  os_unfair_lock_lock((v7 + 24));
  sub_1D14BB3C8((v7 + 16), &v15);
  os_unfair_lock_unlock((v7 + 24));

  v8 = v15;
  if (!v15)
  {
    v9 = [objc_opt_self() hk:*MEMORY[0x1E69DDD80] preferredFontForTextStyle:2 symbolicTraits:?];
    v8 = [v9 hk_monospacedFont];

    v10 = v4[2];
    v11 = sub_1D15A45B8();
    v12 = *(v10 + 16);
    MEMORY[0x1EEE9AC00](v11);
    os_unfair_lock_lock((v12 + 24));
    sub_1D14BB3E0((v12 + 16));
    os_unfair_lock_unlock((v12 + 24));
  }

  [v2 setFont_];

  v13 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  return v2;
}

unint64_t sub_1D14BB040()
{
  result = qword_1EE059738;
  if (!qword_1EE059738)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059738);
  }

  return result;
}

void sub_1D14BB098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D14BB0E8(uint64_t a1)
{
  v2 = type metadata accessor for HighlightCalendarDayViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D14BB144(id result, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
      }
    }

    else
    {
      return result;
    }
  }

  else if (a4 == 2 || a4 == 3 || a4 == 4)
  {
  }

  return result;
}

void sub_1D14BB18C(void *a1, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
LABEL_5:
      }
    }

    else
    {
    }
  }

  else if (a4 == 2 || a4 == 3 || a4 == 4)
  {
    goto LABEL_5;
  }
}

void sub_1D14BB1D4()
{
  if (!qword_1EE056280)
  {
    sub_1D14BB22C();
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056280);
    }
  }
}

unint64_t sub_1D14BB22C()
{
  result = qword_1EE056C88;
  if (!qword_1EE056C88)
  {
    sub_1D14BB274();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EE056C88);
  }

  return result;
}

unint64_t sub_1D14BB274()
{
  result = qword_1EE056C90;
  if (!qword_1EE056C90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE056C90);
  }

  return result;
}

uint64_t sub_1D14BB2D8()
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v0 = *(*(off_1EE058BF0 + 2) + 16);
  os_unfair_lock_lock((v0 + 24));
  [*(v0 + 16) removeAllObjects];
  os_unfair_lock_unlock((v0 + 24));
}

uint64_t sub_1D14BB410(uint64_t a1)
{
  v2 = sub_1D14BB5F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14BB44C(uint64_t a1)
{
  v2 = sub_1D14BB5F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmptyQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D14BB594();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14BB5F0();
  sub_1D15A4CE8();
  return (*(v4 + 8))(v6, v3);
}

void sub_1D14BB594()
{
  if (!qword_1EE056378)
  {
    sub_1D14BB5F0();
    v0 = sub_1D15A4B48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056378);
    }
  }
}

unint64_t sub_1D14BB5F0()
{
  result = qword_1EE058988[0];
  if (!qword_1EE058988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058988);
  }

  return result;
}

uint64_t sub_1D14BB694(void *a1)
{
  sub_1D14BB594();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14BB5F0();
  sub_1D15A4CE8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D14BB7C4()
{
  result = qword_1EE058978;
  if (!qword_1EE058978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058978);
  }

  return result;
}

unint64_t sub_1D14BB81C()
{
  result = qword_1EE058980;
  if (!qword_1EE058980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058980);
  }

  return result;
}

uint64_t ResultProducingError.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

unint64_t sub_1D14BB920()
{
  result = qword_1EC630790;
  if (!qword_1EC630790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630790);
  }

  return result;
}

char *static HKNumericAxis.ticksAndLabels(modelCoordinateRange:maximumLabelCount:dimension:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A29A8();
  v5 = sub_1D15A29A8();
  v6 = [objc_opt_self() valueRangeWithMinValue:v4 maxValue:v5];

  v7 = [swift_getObjCClassFromMetadata() ticksAndLabelsForRangeInModelCoordinates:v6 maximumLabelCount:a1 endingOptions:0 dimension:a2];
  if (v7)
  {
    v8 = v7;
    sub_1D1453BA0(0, &qword_1EC630798);
    v9 = sub_1D15A40C8();

    if (v9 >> 62)
    {
LABEL_26:
      v10 = sub_1D15A4708();
      if (v10)
      {
LABEL_4:
        v11 = 0;
        v12 = MEMORY[0x1E69E7CC0];
        do
        {
          v32 = v12;
          v13 = v11;
          while (1)
          {
            if ((v9 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1D388AB50](v13, v9);
            }

            else
            {
              if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v14 = *(v9 + 8 * v13 + 32);
            }

            v15 = v14;
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            v16 = [v14 location];
            sub_1D15A4658();
            swift_unknownObjectRelease();
            sub_1D1453BA0(0, &qword_1EE05ACD8);
            if (swift_dynamicCast())
            {
              break;
            }

            ++v13;
            if (v11 == v10)
            {
              v12 = v32;
              goto LABEL_28;
            }
          }

          v17 = [v15 text];
          if (v17)
          {
            v18 = v17;
            v19 = sub_1D15A3F38();
            v30 = v20;
            v31 = v19;
          }

          else
          {
            v30 = 0;
            v31 = 0;
          }

          [v33 doubleValue];
          v22 = v21;
          v23 = [v15 labelType];

          v24 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1D1455E84(0, *(v32 + 2) + 1, 1, v32);
          }

          v26 = *(v24 + 2);
          v25 = *(v24 + 3);
          v27 = v24;
          if (v26 >= v25 >> 1)
          {
            v27 = sub_1D1455E84((v25 > 1), v26 + 1, 1, v24);
          }

          *(v27 + 2) = v26 + 1;
          v28 = &v27[40 * v26];
          v12 = v27;
          *(v28 + 4) = v31;
          *(v28 + 5) = v30;
          *(v28 + 6) = v22;
          *(v28 + 7) = v23;
          *(v28 + 16) = 1144750080;
        }

        while (v11 != v10);
        goto LABEL_28;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_4;
      }
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_28:

    return v12;
  }

  return 0;
}

void *DiagramAxisMetricsCalculator.__allocating_init(axisLabelDimension:maximumLabelCount:calculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_1D14BC050(a1, a2, a3, a4);
}

void *DiagramAxisMetricsCalculator.init(axisLabelDimension:maximumLabelCount:calculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_1D14BC09C(a1, a2, a3, a4, v4);
}

uint64_t sub_1D14BBE14@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = sub_1D15A3268();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v3 + 32))(*(v3 + 24), *(v3 + 16), a2, a3);
  if (result)
  {
    v12 = *(result + 16);
    if (v12)
    {
      v13 = *(result + 48);
      v14 = *(result + 40 * v12 + 8);
      if (v13 > v14)
      {
        __break(1u);
      }

      else
      {
        *a1 = result;
        *(a1 + 8) = v13;
        *(a1 + 16) = v14;
      }

      return result;
    }
  }

  sub_1D15A3218();
  v15 = sub_1D15A3248();
  v16 = sub_1D15A4318();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D1446000, v15, v16, "Unable to determine labels from given range", v17, 2u);
    MEMORY[0x1D388BF00](v17, -1, -1);
  }

  result = (*(v8 + 8))(v10, v7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t DiagramAxisMetricsCalculator.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DiagramAxisMetricsCalculator.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1D14BC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DiagramAxisMetricsCalculator();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *sub_1D14BC09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  a5[5] = a4;
  return a5;
}

uint64_t BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.viewModel.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.viewModel.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_1D14BC250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14BC300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.init(viewModel:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  v4 = a3 + *(type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);

  return sub_1D14BC404(a2, v4);
}

uint64_t sub_1D14BC404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1D1455B24(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  sub_1D15A2F28();
  v10 = sub_1D15A2EA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = a1;
  v12 = sub_1D15A2F18();
  v13 = sub_1D15A26A8();
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = a2 + *(type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0) + 20);
  v16 = *(type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0) + 20);
  v14(&v15[v16], 1, 1, v13);
  *v15 = 0;
  result = sub_1D14BCA70(v6, &v15[v16]);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v12;
  return result;
}

uint64_t static BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModel.noData(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D1455B24(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D15A2F28();
  v7 = sub_1D15A2EA8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = a1;
  result = sub_1D15A2F18();
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModel.headerViewModel.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModel.currentValueViewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModel.visualizationViewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModel.init(headerViewModel:currentValueViewModel:visualizationViewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1D14BC8A8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 20);

  return a2(v5, a3);
}

uint64_t sub_1D14BC934(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3 + *(a2(0) + 20);

  return a3(a1, v5);
}

uint64_t BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata.init(hasData:currentValueDate:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0) + 20);
  v7 = sub_1D15A26A8();
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *a3 = a1;

  return sub_1D14BCA70(a2, &a3[v6]);
}

uint64_t sub_1D14BCA70(uint64_t a1, uint64_t a2)
{
  sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BloodPressureCodableCurrentValueSnidgetViewModelExtractor.init(healthStore:unitPreferenceController:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void BloodPressureCodableCurrentValueSnidgetViewModelExtractor.extractViewModelComponents(currentValueModel:visualizationModel:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v106 = a2;
  sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v88 - v6;
  sub_1D1455B24(0, &qword_1EE05AAB8, MEMORY[0x1E69A3778]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v102 = &v88 - v8;
  v9 = sub_1D15A23F8();
  v97 = *(v9 - 8);
  v98 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B24(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v88 - v14;
  sub_1D1455B24(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v96 = &v88 - v16;
  v17 = sub_1D15A2848();
  v104 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D15A26A8();
  v20 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v2;
  v23 = *(v2 + 8);
  v25 = [objc_opt_self() displayTypeWithIdentifier_];
  if (!v25)
  {
    sub_1D14867C8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v26 = v25;
  sub_1D1486288(a1);
  if (v3)
  {
    goto LABEL_22;
  }

  v28 = v27;
  if (!v27)
  {
    goto LABEL_21;
  }

  if (![v27 hasSystolicValue] || !objc_msgSend(v28, sel_hasDiastolicValue) || !objc_msgSend(v28, sel_hasTimestampData))
  {

LABEL_21:
    static BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v26, v106);
    goto LABEL_22;
  }

  type metadata accessor for SnidgetStringBuilder();
  inited = swift_initStackObject();
  v95 = objc_opt_self();
  v29 = v24;
  v94 = v23;
  v90 = [v95 sharedInstanceForHealthStore_];
  v95 = v28;
  v30 = [v28 systolicValue];
  if (!v30)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v31 = v30;
  v89 = v29;
  v32 = sub_1D15A43E8();

  v33 = [v94 unitForChartingDisplayType_];
  if (!v33)
  {
    v33 = [v32 _unit];
  }

  v93 = v33;

  v34 = [v95 diastolicValue];
  if (!v34)
  {
    goto LABEL_27;
  }

  v35 = v34;
  v36 = sub_1D15A43E8();

  v37 = [v94 unitForChartingDisplayType_];
  if (!v37)
  {
    v37 = [v36 _unit];
  }

  v92 = v37;

  v38 = [v95 diastolicValue];
  if (!v38)
  {
    goto LABEL_28;
  }

  v39 = v38;
  v40 = sub_1D15A43E8();

  v88 = sub_1D14A1764(v26, v40, v93);
  LOBYTE(v39) = v41;

  if (v39)
  {
LABEL_17:
    static BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v26, v106);

    v47 = v92;
LABEL_18:

LABEL_22:
    return;
  }

  v42 = v20;
  v43 = [v95 systolicValue];
  if (!v43)
  {
    goto LABEL_29;
  }

  v44 = v43;
  v45 = sub_1D15A43E8();

  inited = sub_1D14A1764(v26, v45, v92);
  LOBYTE(v44) = v46;

  if (v44)
  {
    goto LABEL_17;
  }

  v48 = *&v88;
  v49 = *&inited;
  v50 = objc_opt_self();
  v88 = [v50 quantityWithUnit:v93 doubleValue:v49];
  v51 = [v50 quantityWithUnit:v92 doubleValue:v48];
  [v95 timestampData];
  v52 = HKDecodeDateForValue();
  sub_1D15A2668();

  v53 = objc_allocWithZone(MEMORY[0x1E69A4120]);
  v54 = sub_1D15A2618();
  v55 = v53;
  v56 = v88;
  inited = [v55 initWithSystolicValue:v88 diastolicValue:v51 date:v54];

  (v42)[1](v22, v105);
  v57 = v94;
  v94 = v42;
  v58 = v57;
  v59 = sub_1D15A3048();
  v60 = sub_1D15A3068();
  sub_1D15A2818();
  v61 = objc_allocWithZone(MEMORY[0x1E69A4358]);
  v62 = sub_1D15A27B8();
  v63 = [v61 initWithCalendar_];

  (v104)[1](v19, v17);
  v64 = [inited attributedStringWithDisplayType:v26 unitController:v58 valueFont:v59 unitFont:v60 dateCache:v63];
  v104 = v58;

  if (!v64)
  {
    static BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v26, v106);

    v47 = inited;
    goto LABEL_18;
  }

  sub_1D15A2F28();
  sub_1D14863E4();
  v66 = *(v65 + 48);
  v88 = v26;
  [v95 timestampData];
  v67 = HKDecodeDateForValue();
  v68 = v96;
  sub_1D15A2668();

  v68[v66] = 0;
  v69 = *MEMORY[0x1E69A3668];
  v70 = sub_1D15A2EA8();
  v71 = *(v70 - 8);
  (*(v71 + 104))(v68, v69, v70);
  (*(v71 + 56))(v68, 0, 1, v70);
  v72 = sub_1D15A2F18();
  v73 = v94;
  v96 = v72;
  v74 = v98;
  v75 = v97[7];
  v75(v99, 1, 1, v98);
  v97 = v64;
  sub_1D15A2428();
  v75(v100, 1, 1, v74);
  v76 = v102;
  sub_1D15A3008();
  v77 = sub_1D15A3018();
  (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
  sub_1D15A30E8();
  swift_allocObject();
  v78 = sub_1D15A30D8();
  v79 = v95;
  [v95 timestampData];
  v80 = HKDecodeDateForValue();
  v81 = v103;
  sub_1D15A2668();

  v82 = v73[7];
  v83 = v105;
  v82(v81, 0, 1, v105);
  v84 = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.ViewModelComponents(0);
  v85 = v106;
  v86 = v106 + *(v84 + 20);
  v87 = *(type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0) + 20);
  v82(&v86[v87], 1, 1, v83);
  *v86 = 1;
  sub_1D14BCA70(v81, &v86[v87]);
  *v85 = v96;
  v85[1] = v78;
  v85[2] = 0;
}

BOOL _s19HealthVisualization57BloodPressureCodableCurrentValueSnidgetViewModelExtractorV8MetadataV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  sub_1D14BDAD0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = *(type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(0) + 20);
  v16 = *(v12 + 48);
  sub_1D1455A40(&a1[v15], v14);
  sub_1D1455A40(&a2[v15], &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_1D14BDBAC(v14);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1D1455A40(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D14BDB50(v14);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_1D14BDC24();
  v19 = sub_1D15A3EE8();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1D14BDBAC(v14);
  return (v19 & 1) != 0;
}

uint64_t sub_1D14BD974()
{
  result = type metadata accessor for BloodPressureCodableCurrentValueSnidgetViewModelExtractor.Metadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D14BDA28()
{
  sub_1D1455B24(319, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D14BDAD0()
{
  if (!qword_1EE0594A8)
  {
    sub_1D1455B24(255, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0594A8);
    }
  }
}

uint64_t sub_1D14BDB50(uint64_t a1)
{
  sub_1D14BDAD0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D14BDBAC(uint64_t a1)
{
  sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D14BDC24()
{
  result = qword_1EC630538;
  if (!qword_1EC630538)
  {
    sub_1D15A26A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630538);
  }

  return result;
}

__C::HKStatisticsOptions __swiftcall HKStatisticsOptions.init(options:)(Swift::OpaquePointer options)
{
  v1 = *(options._rawValue + 2);
  if (v1)
  {
    v2.rawValue = 0;
    v3 = options._rawValue + 32;
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      if (v5 > 4)
      {
        if (v4 <= 6)
        {
          if (v4 == 5)
          {
            if ((v2.rawValue & 0x40) != 0)
            {
              goto LABEL_4;
            }

            v6 = 64;
            goto LABEL_3;
          }

          v6 = _HKStatisticOptionsAverageSampleDuration();
        }

        else if (v4 == 7)
        {
          v6 = _HKStatisticsOptionPresence();
        }

        else if (v4 == 8)
        {
          v6 = _HKStatisticsOptionBaselineRelativeQuantities();
        }

        else
        {
          v7 = _HKStatisticsOptionAttenuateSamples();
          if ((v7 & 0xFFFFFFFFFFFFFFFDLL) == 0)
          {
            goto LABEL_28;
          }

          v6 = v7 | 2;
        }

        if ((v6 & ~v2.rawValue) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v4 <= 1)
        {
          if (v4)
          {
            if ((v2.rawValue & 4) != 0)
            {
              goto LABEL_4;
            }

            v6 = 4;
            goto LABEL_3;
          }

LABEL_28:
          if ((v2.rawValue & 2) != 0)
          {
            goto LABEL_4;
          }

          v6 = 2;
          goto LABEL_3;
        }

        if (v4 == 2)
        {
          if ((v2.rawValue & 8) != 0)
          {
            goto LABEL_4;
          }

          v6 = 8;
        }

        else if (v4 == 3)
        {
          if ((v2.rawValue & 0x10) != 0)
          {
            goto LABEL_4;
          }

          v6 = 16;
        }

        else
        {
          if ((v2.rawValue & 0x20) != 0)
          {
            goto LABEL_4;
          }

          v6 = 32;
        }
      }

LABEL_3:
      v2.rawValue |= v6;
LABEL_4:
      if (!--v1)
      {
        goto LABEL_34;
      }
    }
  }

  v2.rawValue = 0;
LABEL_34:

  return v2;
}

id TimeBasedDistributionChartModelFactory.makeChartConfiguration(sampleType:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v4 = sub_1D15A3268();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = [v22 identifier];
  v10 = sub_1D15A3F38();
  v12 = v11;

  if (sub_1D15A3F38() == v10 && v13 == v12)
  {
  }

  else
  {
    v15 = sub_1D15A4BA8();

    if ((v15 & 1) == 0)
    {
      sub_1D15A3218();
      goto LABEL_11;
    }
  }

  if (qword_1EC62FF48 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_1EC630910);
  (*(v5 + 16))(v7, v16, v4);
LABEL_11:
  v17 = type metadata accessor for HealthKitDataTypeChartConfiguration();
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 24) = v8;
  (*(v5 + 32))(v18 + OBJC_IVAR____TtC19HealthVisualization35HealthKitDataTypeChartConfiguration_logger, v7, v4);
  a2[3] = v17;
  a2[4] = &protocol witness table for HealthKitDataTypeChartConfiguration;
  *a2 = v18;
  v19 = v22;

  return v19;
}

uint64_t TimeBasedDistributionChartModelFactory.makeHighlightChartModel(distribution:sampleType:textSupport:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v39 = a3;
  v7 = type metadata accessor for TimeBasedDistribution();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A3268();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v37 - v15;
  v17 = *v4;
  v18 = [a2 identifier];
  v19 = sub_1D15A3F38();
  v21 = v20;

  if (sub_1D15A3F38() == v19 && v22 == v21)
  {
  }

  else
  {
    v24 = sub_1D15A4BA8();

    if ((v24 & 1) == 0)
    {
      sub_1D15A3218();
      (*(v10 + 16))(v12, v16, v9);
      goto LABEL_11;
    }
  }

  if (qword_1EC62FF48 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v9, qword_1EC630910);
  v26 = *(v10 + 16);
  v26(v16, v25, v9);
  v26(v12, v16, v9);
LABEL_11:
  v27 = type metadata accessor for HealthKitDataTypeChartConfiguration();
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = v17;
  v29 = *(v10 + 32);
  v29(v28 + OBJC_IVAR____TtC19HealthVisualization35HealthKitDataTypeChartConfiguration_logger, v12, v9);
  v40[3] = v27;
  v40[4] = &protocol witness table for HealthKitDataTypeChartConfiguration;
  v40[0] = v28;
  v30 = type metadata accessor for TimeBasedDistributionChartModel();
  v31 = v17;
  v32 = v30[6];
  v33 = v31;
  v34 = a2;

  sub_1D15210F4(v40, (a4 + v32));
  __swift_destroy_boxed_opaque_existential_1(v40);
  v35 = v37;
  sub_1D14BE588(v38, v37);
  LOBYTE(v35) = sub_1D1589EC8(v35);
  *(a4 + 32) = v27;
  *(a4 + 40) = &protocol witness table for HealthKitDataTypeChartConfiguration;
  *(a4 + 8) = v28;
  sub_1D14AA5D8(v39, a4 + v30[7]);
  *a4 = v35 & 1;
  return (v29)(a4 + v30[8], v16, v9);
}

uint64_t TimeBasedDistributionChartModelFactory.makePDFChartModel(distribution:sampleType:chartConfiguration:textSupport:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v29 = a4;
  v9 = type metadata accessor for TimeBasedDistribution();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D15A3268();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a2 identifier];
  v18 = sub_1D15A3F38();
  v20 = v19;

  if (sub_1D15A3F38() == v18 && v21 == v20)
  {
  }

  else
  {
    v23 = sub_1D15A4BA8();

    if ((v23 & 1) == 0)
    {
      sub_1D15A3218();
      goto LABEL_11;
    }
  }

  if (qword_1EC62FF48 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v12, qword_1EC630910);
  (*(v13 + 16))(v16, v24, v12);
LABEL_11:
  v25 = type metadata accessor for TimeBasedDistributionChartModel();
  sub_1D15217C0(a3, &a5[v25[6]]);
  sub_1D14BE588(a1, v11);
  v26 = sub_1D1589EC8(v11);
  sub_1D14AA5D8(a3, (a5 + 8));
  sub_1D14AA5D8(v29, &a5[v25[7]]);
  *a5 = v26 & 1;
  return (*(v13 + 32))(&a5[v25[8]], v16, v12);
}

uint64_t sub_1D14BE588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedDistribution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14BE644(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D14A7974(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D14A7974((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D1458AC4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D14BE78C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v21 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D14A7934(0, v12, 0);
    v13 = v25;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_1D14C192C(v14, v11, a3);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D14A7934((v16 > 1), v17 + 1, 1);
        v13 = v25;
      }

      v23 = v8;
      v24 = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      sub_1D14C192C(v11, boxed_opaque_existential_1, a3);
      *(v13 + 16) = v17 + 1;
      sub_1D1450E94(&v22, v13 + 40 * v17 + 32);
      sub_1D14C1994(v11, v21);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

char *sub_1D14BE958(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1D15A4708();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D14A7974(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x1D388AB50](i, a1);
        sub_1D1453BA0(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D14A7974((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_1D1458AC4(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_1D1453BA0(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D14A7974((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_1D1458AC4(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t TimeBasedDistributionMaxBucketTextSupport.MaxBucketInformation.maxBucketDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TimeBasedDistributionMaxBucketTextSupport.MaxBucketInformation.maxBucketDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

HealthVisualization::TimeBasedDistributionMaxBucketTextSupport::MaxBucketInformation __swiftcall TimeBasedDistributionMaxBucketTextSupport.MaxBucketInformation.init(numberOfMaximums:maxBucketDescription:)(Swift::Int numberOfMaximums, Swift::String_optional maxBucketDescription)
{
  *v2 = numberOfMaximums;
  *(v2 + 8) = maxBucketDescription;
  result.maxBucketDescription = maxBucketDescription;
  result.numberOfMaximums = numberOfMaximums;
  return result;
}

uint64_t TimeBasedDistributionMaxBucketTextSupport.__allocating_init(componentRangeOrderProvider:logger:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1D1450E94(a1, v4 + 16);
  v5 = OBJC_IVAR____TtC19HealthVisualization41TimeBasedDistributionMaxBucketTextSupport_logger;
  v6 = sub_1D15A3268();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t TimeBasedDistributionMaxBucketTextSupport.init(componentRangeOrderProvider:logger:)(__int128 *a1, uint64_t a2)
{
  sub_1D1450E94(a1, v2 + 16);
  v4 = OBJC_IVAR____TtC19HealthVisualization41TimeBasedDistributionMaxBucketTextSupport_logger;
  v5 = sub_1D15A3268();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

void TimeBasedDistributionMaxBucketTextSupport.extractMaxBucketInformation(distribution:flavor:)(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = v3;
  v8 = *(a1 + *(type metadata accessor for TimeBasedDistribution() + 20));
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40));
  v65 = a2;
  v11 = (*(v10 + 8))(a2 & 1, v9, v10);
  *&v70 = v8;

  v12 = 0;
  sub_1D14C1670(&v70, v11);

  v13 = 0;
  v14 = v70;
  v15 = *(v70 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v18 = 40 * v13;
  while (v15 != v13)
  {
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
LABEL_29:
      sub_1D14A7854((v18 > 1), v5, 1);
      v42 = v75;
LABEL_20:
      *(v42 + 16) = v5;
      v48 = v42 + 16 * v13;
      *(v48 + 32) = v14;
      *(v48 + 40) = v4;
      if (v12 != 1)
      {
        v49 = *(v17 + 88);
        v50 = *(v17 + 96);
        v51 = *(v17 + 97);
        v52 = *(v17 + 104);
        v70 = *(v17 + 72);
        v71 = v49;
        v72 = v50;
        v73 = v51;
        v74 = v52;

        v53 = sub_1D14BF3A0(&v70, v65 & 1);
        v55 = v54;

        v75 = v42;
        v57 = *(v42 + 16);
        v56 = *(v42 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1D14A7854((v56 > 1), v57 + 1, 1);
          v42 = v75;
        }

        *(v42 + 16) = v57 + 1;
        v58 = v42 + 16 * v57;
        *(v58 + 32) = v53;
        *(v58 + 40) = v55;
      }

      v59 = [objc_allocWithZone(MEMORY[0x1E696AD08]) init];
      sub_1D14BE644(v42);

      v60 = sub_1D15A40A8();

      v61 = [v59 stringFromItems_];

      if (v61)
      {
        v62 = sub_1D15A3F38();
        v64 = v63;
      }

      else
      {
        v62 = 0;
        v64 = 0;
      }

      *a3 = v12;
      a3[1] = v62;
      a3[2] = v64;
      return;
    }

    ++v13;
    v19 = v18 + 40;
    v20 = *(v14 + v18 + 57);
    v18 += 40;
    if (v20)
    {
      v68 = v6;
      v21 = *(v14 + v19 - 8);
      v22 = *(v14 + v19);
      v23 = *(v14 + v19 + 8);
      v24 = *(v14 + v19 + 16);
      v4 = *(v14 + v19 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v17;
      v67 = v21;
      v66 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D14A78F4(0, *(v17 + 16) + 1, 1);
        v17 = v70;
      }

      v12 = *(v17 + 16);
      v26 = *(v17 + 24);
      v5 = v12 + 1;
      if (v12 >= v26 >> 1)
      {
        sub_1D14A78F4((v26 > 1), v12 + 1, 1);
        v17 = v70;
      }

      *(v17 + 16) = v5;
      v27 = v17 + 40 * v12;
      *(v27 + 32) = v67;
      *(v27 + 40) = v22;
      *(v27 + 48) = v23;
      *(v27 + 56) = v66;
      *(v27 + 57) = 1;
      *(v27 + 64) = v4;
      v6 = v68;
      goto LABEL_2;
    }
  }

  v12 = *(v17 + 16);
  if (v12)
  {
    if (v12 < 3)
    {
      v75 = v16;
      sub_1D14A7854(0, v12, 0);
      v42 = v75;
      v43 = *(v17 + 48);
      v44 = *(v17 + 56);
      v45 = *(v17 + 57);
      v46 = *(v17 + 64);
      v70 = *(v17 + 32);
      v71 = v43;
      v72 = v44;
      v73 = v45;
      v74 = v46;

      v14 = sub_1D14BF3A0(&v70, v65 & 1);
      v4 = v47;

      v75 = v42;
      v13 = *(v42 + 16);
      v18 = *(v42 + 24);
      v5 = v13 + 1;
      if (v13 >= v18 >> 1)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    v28 = sub_1D15A3248();
    v29 = sub_1D15A4338();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v70 = v31;
      *v30 = 136446210;
      v75 = v6;

      v32 = sub_1D15A3F68();
      v34 = sub_1D1479780(v32, v33, &v70);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1D1446000, v28, v29, "[%{public}s] Too many buckets", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1D388BF00](v31, -1, -1);
      MEMORY[0x1D388BF00](v30, -1, -1);
    }

    a3[1] = 0;
    a3[2] = 0;
    *a3 = v12;
  }

  else
  {

    v35 = sub_1D15A3248();
    v36 = sub_1D15A4338();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v70 = v38;
      *v37 = 136446210;
      v75 = v6;

      v39 = sub_1D15A3F68();
      v41 = sub_1D1479780(v39, v40, &v70);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1D1446000, v35, v36, "[%{public}s] Too few buckets", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1D388BF00](v38, -1, -1);
      MEMORY[0x1D388BF00](v37, -1, -1);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_1D14BF3A0(uint64_t *a1, char a2)
{
  v3 = v2;
  v121[1] = *v3;
  v6 = sub_1D15A3268();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v121 - v13;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v121 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v121 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v121 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v121 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v39 = v121 - v38;
  v40 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v40 <= 2)
    {
      if (!v40)
      {
        v104 = v29;
        v105 = v35;
        type metadata accessor for Localization();
        v122 = 0u;
        v123 = 0u;
        swift_initStaticObject();
        v44 = sub_1D144E91C(0xD000000000000032, 0x80000001D15BF3F0, &v122, 0xD000000000000015, 0x80000001D15BF290);
        v107 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v107 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (!v107)
        {

          sub_1D15A3238();
          v108 = sub_1D15A3248();
          v109 = sub_1D15A42F8();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v124 = v111;
            *v110 = 136446210;
            v51 = 0xD000000000000032;
            *(v110 + 4) = sub_1D1479780(0xD000000000000032, 0x80000001D15BF3F0, &v124);
            _os_log_impl(&dword_1D1446000, v108, v109, "Localization: no localization found for '%{public}s'", v110, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v111);
            MEMORY[0x1D388BF00](v111, -1, -1);
            MEMORY[0x1D388BF00](v110, -1, -1);

            (*(v105 + 8))(v14, v104);
          }

          else
          {

            (*(v105 + 8))(v14, v104);
            v51 = 0xD000000000000032;
          }

          goto LABEL_86;
        }

        goto LABEL_81;
      }

      if (v40 != 1)
      {
        if (v40 == 2)
        {
          v27 = v32;
          v52 = v29;
          v53 = v35;
          v62 = 0x80000001D15BF370;
          type metadata accessor for Localization();
          v122 = 0u;
          v123 = 0u;
          swift_initStaticObject();
          v44 = sub_1D144E91C(0xD000000000000033, 0x80000001D15BF370, &v122, 0xD000000000000015, 0x80000001D15BF290);
          v64 = HIBYTE(v63) & 0xF;
          if ((v63 & 0x2000000000000000) == 0)
          {
            v64 = v44 & 0xFFFFFFFFFFFFLL;
          }

          if (v64)
          {
            goto LABEL_81;
          }

          sub_1D15A3238();
          v57 = sub_1D15A3248();
          v65 = sub_1D15A42F8();
          if (!os_log_type_enabled(v57, v65))
          {

            (*(v53 + 8))(v27, v52);
            v51 = 0xD000000000000033;
            goto LABEL_86;
          }

          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v124 = v67;
          *v66 = 136446210;
          v51 = 0xD000000000000033;
          goto LABEL_84;
        }

LABEL_66:
        swift_bridgeObjectRetain_n();

        v86 = sub_1D15A3248();
        v87 = sub_1D15A4328();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          *&v122 = v89;
          *v88 = 136446466;
          v124 = v3;

          v112 = sub_1D15A3F68();
          v114 = sub_1D1479780(v112, v113, &v122);

          *(v88 + 4) = v114;
          *(v88 + 12) = 2048;

          *(v88 + 14) = v40;

          v93 = "[%{public}s] Given day of week component outside of expected bounds: %ld";
          goto LABEL_68;
        }

LABEL_69:

        swift_bridgeObjectRelease_n();
        return 0;
      }

      v27 = v33;
      v52 = v29;
      v53 = v35;
      v117 = "TIME_BASED_DISTRIBUTION_DAY_OF_WEEK_BUCKET_MONDAYS";
    }

    else
    {
      if (v40 <= 4)
      {
        if (v40 != 3)
        {
          v27 = v30;
          v52 = v29;
          v53 = v35;
          v54 = "TIME_BASED_DISTRIBUTION_DAY_OF_WEEK_BUCKET_THURSDAYS";
          goto LABEL_34;
        }

        v27 = v31;
        v52 = v29;
        v53 = v35;
        v62 = 0x80000001D15BF330;
        type metadata accessor for Localization();
        v122 = 0u;
        v123 = 0u;
        swift_initStaticObject();
        v44 = sub_1D144E91C(0xD000000000000035, 0x80000001D15BF330, &v122, 0xD000000000000015, 0x80000001D15BF290);
        v116 = HIBYTE(v115) & 0xF;
        if ((v115 & 0x2000000000000000) == 0)
        {
          v116 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (v116)
        {
          goto LABEL_81;
        }

        sub_1D15A3238();
        v57 = sub_1D15A3248();
        v65 = sub_1D15A42F8();
        if (!os_log_type_enabled(v57, v65))
        {

          (*(v53 + 8))(v27, v52);
          v51 = 0xD000000000000035;
          goto LABEL_86;
        }

        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v124 = v67;
        *v66 = 136446210;
        v51 = 0xD000000000000035;
LABEL_84:
        *(v66 + 4) = sub_1D1479780(v51, v62, &v124);
        _os_log_impl(&dword_1D1446000, v57, v65, "Localization: no localization found for '%{public}s'", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1D388BF00](v67, -1, -1);
        v61 = v66;
LABEL_85:
        MEMORY[0x1D388BF00](v61, -1, -1);

        (*(v53 + 8))(v27, v52);
        goto LABEL_86;
      }

      if (v40 != 5)
      {
        if (v40 == 6)
        {
          v27 = v36;
          v52 = v29;
          v53 = v35;
          v54 = "TIME_BASED_DISTRIBUTION_DAY_OF_WEEK_BUCKET_SATURDAYS";
LABEL_34:
          v62 = (v54 - 32) | 0x8000000000000000;
          type metadata accessor for Localization();
          v122 = 0u;
          v123 = 0u;
          swift_initStaticObject();
          v44 = sub_1D144E91C(0xD000000000000034, v62, &v122, 0xD000000000000015, 0x80000001D15BF290);
          v69 = HIBYTE(v68) & 0xF;
          if ((v68 & 0x2000000000000000) == 0)
          {
            v69 = v44 & 0xFFFFFFFFFFFFLL;
          }

          if (!v69)
          {

            sub_1D15A3238();
            v57 = sub_1D15A3248();
            v65 = sub_1D15A42F8();
            if (!os_log_type_enabled(v57, v65))
            {

              (*(v53 + 8))(v27, v52);
              v51 = 0xD000000000000034;
              goto LABEL_86;
            }

            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v124 = v67;
            *v66 = 136446210;
            v51 = 0xD000000000000034;
            goto LABEL_84;
          }

          goto LABEL_81;
        }

        goto LABEL_66;
      }

      v27 = v37;
      v52 = v29;
      v53 = v35;
      v117 = "TIME_BASED_DISTRIBUTION_DAY_OF_WEEK_BUCKET_FRIDAYS";
    }

    v62 = (v117 - 32) | 0x8000000000000000;
    type metadata accessor for Localization();
    v122 = 0u;
    v123 = 0u;
    swift_initStaticObject();
    v44 = sub_1D144E91C(0xD000000000000032, v62, &v122, 0xD000000000000015, 0x80000001D15BF290);
    v119 = HIBYTE(v118) & 0xF;
    if ((v118 & 0x2000000000000000) == 0)
    {
      v119 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (!v119)
    {

      sub_1D15A3238();
      v57 = sub_1D15A3248();
      v65 = sub_1D15A42F8();
      if (!os_log_type_enabled(v57, v65))
      {

        (*(v53 + 8))(v27, v52);
        v51 = 0xD000000000000032;
        goto LABEL_86;
      }

      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v124 = v67;
      *v66 = 136446210;
      v51 = 0xD000000000000032;
      goto LABEL_84;
    }

    goto LABEL_81;
  }

  v41 = __ROR8__(v40, 2);
  if (v41 > 2)
  {
    switch(v41)
    {
      case 3:
        v78 = v29;
        v79 = v35;
        type metadata accessor for Localization();
        v122 = 0u;
        v123 = 0u;
        swift_initStaticObject();
        v44 = sub_1D144E91C(0xD00000000000003ALL, 0x80000001D15BF4B0, &v122, 0xD000000000000015, 0x80000001D15BF290);
        v81 = HIBYTE(v80) & 0xF;
        if ((v80 & 0x2000000000000000) == 0)
        {
          v81 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (!v81)
        {

          sub_1D15A3238();
          v82 = sub_1D15A3248();
          v83 = sub_1D15A42F8();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v124 = v85;
            *v84 = 136446210;
            v51 = 0xD00000000000003ALL;
            *(v84 + 4) = sub_1D1479780(0xD00000000000003ALL, 0x80000001D15BF4B0, &v124);
            _os_log_impl(&dword_1D1446000, v82, v83, "Localization: no localization found for '%{public}s'", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v85);
            MEMORY[0x1D388BF00](v85, -1, -1);
            MEMORY[0x1D388BF00](v84, -1, -1);

            (*(v79 + 8))(v21, v78);
          }

          else
          {

            (*(v79 + 8))(v21, v78);
            v51 = 0xD00000000000003ALL;
          }

          goto LABEL_86;
        }

        break;
      case 4:
        v96 = v29;
        v97 = v35;
        type metadata accessor for Localization();
        v122 = 0u;
        v123 = 0u;
        swift_initStaticObject();
        v44 = sub_1D144E91C(0xD00000000000003ELL, 0x80000001D15BF470, &v122, 0xD000000000000015, 0x80000001D15BF290);
        v99 = HIBYTE(v98) & 0xF;
        if ((v98 & 0x2000000000000000) == 0)
        {
          v99 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (!v99)
        {

          sub_1D15A3238();
          v100 = sub_1D15A3248();
          v101 = sub_1D15A42F8();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v124 = v103;
            *v102 = 136446210;
            v51 = 0xD00000000000003ELL;
            *(v102 + 4) = sub_1D1479780(0xD00000000000003ELL, 0x80000001D15BF470, &v124);
            _os_log_impl(&dword_1D1446000, v100, v101, "Localization: no localization found for '%{public}s'", v102, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v103);
            MEMORY[0x1D388BF00](v103, -1, -1);
            MEMORY[0x1D388BF00](v102, -1, -1);

            (*(v97 + 8))(v18, v96);
          }

          else
          {

            (*(v97 + 8))(v18, v96);
            v51 = 0xD00000000000003ELL;
          }

          goto LABEL_86;
        }

        break;
      case 5:
        v27 = v34;
        v52 = v29;
        v53 = v35;
        type metadata accessor for Localization();
        v122 = 0u;
        v123 = 0u;
        swift_initStaticObject();
        v44 = sub_1D144E91C(0xD00000000000003FLL, 0x80000001D15BF430, &v122, 0xD000000000000015, 0x80000001D15BF290);
        v56 = HIBYTE(v55) & 0xF;
        if ((v55 & 0x2000000000000000) == 0)
        {
          v56 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (!v56)
        {

          sub_1D15A3238();
          v57 = sub_1D15A3248();
          v58 = sub_1D15A42F8();
          if (!os_log_type_enabled(v57, v58))
          {

            (*(v53 + 8))(v27, v52);
            v51 = 0xD00000000000003FLL;
            goto LABEL_86;
          }

          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v124 = v60;
          *v59 = 136446210;
          v51 = 0xD00000000000003FLL;
          *(v59 + 4) = sub_1D1479780(0xD00000000000003FLL, 0x80000001D15BF430, &v124);
          _os_log_impl(&dword_1D1446000, v57, v58, "Localization: no localization found for '%{public}s'", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v60);
          MEMORY[0x1D388BF00](v60, -1, -1);
          v61 = v59;
          goto LABEL_85;
        }

        break;
      default:
        goto LABEL_49;
    }

    goto LABEL_81;
  }

  switch(v41)
  {
    case 0:
      v70 = v29;
      v71 = v35;
      type metadata accessor for Localization();
      v122 = 0u;
      v123 = 0u;
      swift_initStaticObject();
      v44 = sub_1D144E91C(0xD00000000000003ELL, 0x80000001D15BF570, &v122, 0xD000000000000015, 0x80000001D15BF290);
      v73 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v73 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (!v73)
      {

        sub_1D15A3238();
        v74 = sub_1D15A3248();
        v75 = sub_1D15A42F8();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v124 = v77;
          *v76 = 136446210;
          v51 = 0xD00000000000003ELL;
          *(v76 + 4) = sub_1D1479780(0xD00000000000003ELL, 0x80000001D15BF570, &v124);
          _os_log_impl(&dword_1D1446000, v74, v75, "Localization: no localization found for '%{public}s'", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v77);
          MEMORY[0x1D388BF00](v77, -1, -1);
          MEMORY[0x1D388BF00](v76, -1, -1);

          (*(v71 + 8))(v39, v70);
        }

        else
        {

          (*(v71 + 8))(v39, v70);
          v51 = 0xD00000000000003ELL;
        }

        goto LABEL_86;
      }

      goto LABEL_81;
    case 1:
      v52 = v29;
      v53 = v35;
      v62 = 0x80000001D15BF530;
      type metadata accessor for Localization();
      v122 = 0u;
      v123 = 0u;
      swift_initStaticObject();
      v44 = sub_1D144E91C(0xD00000000000003ELL, 0x80000001D15BF530, &v122, 0xD000000000000015, 0x80000001D15BF290);
      v95 = HIBYTE(v94) & 0xF;
      if ((v94 & 0x2000000000000000) == 0)
      {
        v95 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (!v95)
      {

        sub_1D15A3238();
        v57 = sub_1D15A3248();
        v65 = sub_1D15A42F8();
        if (!os_log_type_enabled(v57, v65))
        {

          (*(v53 + 8))(v27, v52);
          v51 = 0xD00000000000003ELL;
          goto LABEL_86;
        }

        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v124 = v67;
        *v66 = 136446210;
        v51 = 0xD00000000000003ELL;
        goto LABEL_84;
      }

LABEL_81:
      v51 = v44;
LABEL_86:
      sub_1D14C1994(&v122, sub_1D144ECF8);
      return v51;
    case 2:
      v42 = v29;
      v43 = v35;
      type metadata accessor for Localization();
      v122 = 0u;
      v123 = 0u;
      swift_initStaticObject();
      v44 = sub_1D144E91C(0xD00000000000003BLL, 0x80000001D15BF4F0, &v122, 0xD000000000000015, 0x80000001D15BF290);
      v46 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v46 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (!v46)
      {

        sub_1D15A3238();
        v47 = sub_1D15A3248();
        v48 = sub_1D15A42F8();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v124 = v50;
          *v49 = 136446210;
          v51 = 0xD00000000000003BLL;
          *(v49 + 4) = sub_1D1479780(0xD00000000000003BLL, 0x80000001D15BF4F0, &v124);
          _os_log_impl(&dword_1D1446000, v47, v48, "Localization: no localization found for '%{public}s'", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v50);
          MEMORY[0x1D388BF00](v50, -1, -1);
          MEMORY[0x1D388BF00](v49, -1, -1);

          (*(v43 + 8))(v24, v42);
        }

        else
        {

          (*(v43 + 8))(v24, v42);
          v51 = 0xD00000000000003BLL;
        }

        goto LABEL_86;
      }

      goto LABEL_81;
  }

LABEL_49:
  swift_bridgeObjectRetain_n();

  v86 = sub_1D15A3248();
  v87 = sub_1D15A4328();

  if (!os_log_type_enabled(v86, v87))
  {
    goto LABEL_69;
  }

  v88 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  *&v122 = v89;
  *v88 = 136446466;
  v124 = v3;

  v90 = sub_1D15A3F68();
  v92 = sub_1D1479780(v90, v91, &v122);

  *(v88 + 4) = v92;
  *(v88 + 12) = 2048;

  *(v88 + 14) = v40;

  v93 = "[%{public}s] Given time of day component outside of expected bounds: %ld";
LABEL_68:
  _os_log_impl(&dword_1D1446000, v86, v87, v93, v88, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v89);
  MEMORY[0x1D388BF00](v89, -1, -1);
  MEMORY[0x1D388BF00](v88, -1, -1);

  return 0;
}

uint64_t TimeBasedDistributionMaxBucketTextSupport.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC19HealthVisualization41TimeBasedDistributionMaxBucketTextSupport_logger;
  v2 = sub_1D15A3268();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TimeBasedDistributionMaxBucketTextSupport.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC19HealthVisualization41TimeBasedDistributionMaxBucketTextSupport_logger;
  v2 = sub_1D15A3268();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D14C0914(char *__src, char *__dst, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = __dst - __src;
  v11 = (__dst - __src) / 40;
  v12 = a3 - __dst;
  v13 = (a3 - __dst) / 40;
  if (v11 >= v13)
  {
    if (a4 != __dst || &__dst[40 * v13] <= a4)
    {
      memmove(a4, __dst, 40 * v13);
    }

    v14 = &v6[40 * v13];
    if (v12 >= 40 && v8 > v9)
    {
      v23 = a5 + 32;
LABEL_34:
      v24 = v8 - 40;
      v25 = v7;
      v26 = v14;
      do
      {
        v28 = *(v26 - 40);
        v26 -= 40;
        v27 = v28;
        v29 = *(a5 + 16);
        if (v29)
        {
          v30 = 0;
          while (*(v23 + 8 * v30) != v27)
          {
            if (v29 == ++v30)
            {
              goto LABEL_40;
            }
          }

          v33 = 0;
          while (*(v23 + 8 * v33) != *v24)
          {
            if (v29 == ++v33)
            {
              if (v5)
              {
                goto LABEL_67;
              }

              v7 = (v25 - 40);
              goto LABEL_53;
            }
          }

          if (v5)
          {
            goto LABEL_67;
          }

          v7 = (v25 - 40);
          if (v30 >= v33)
          {
            goto LABEL_42;
          }

LABEL_53:
          if (v25 != v8)
          {
            v34 = *v24;
            v35 = *(v8 - 24);
            *(v7 + 32) = *(v8 - 1);
            *v7 = v34;
            *(v7 + 16) = v35;
          }

          if (v14 <= v6 || (v8 -= 40, v24 <= v9))
          {
            v8 = v24;
            goto LABEL_67;
          }

          goto LABEL_34;
        }

LABEL_40:
        if (v5)
        {
          goto LABEL_67;
        }

        v7 = (v25 - 40);
LABEL_42:
        if (v25 != v14)
        {
          v31 = *v26;
          v32 = *(v26 + 16);
          *(v7 + 32) = *(v26 + 32);
          *v7 = v31;
          *(v7 + 16) = v32;
        }

        v14 = v26;
        v25 = v7;
      }

      while (v26 > v6);
      v14 = v26;
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v11] <= a4)
    {
      memmove(a4, __src, 40 * v11);
    }

    v14 = &v6[40 * v11];
    if (v10 < 40)
    {
      v8 = v9;
    }

    else
    {
      if (v8 < v7)
      {
        v15 = a5 + 32;
        while (1)
        {
          v16 = *(a5 + 16);
          if (v16)
          {
            break;
          }

LABEL_12:
          if (v5)
          {
LABEL_59:
            v36 = ((v14 - v6) * 0x6666666666666667) >> 64;
            v37 = (v36 >> 4) + (v36 >> 63);
            if (v9 < v6 || v9 >= &v6[40 * v37] || v9 != v6)
            {
              v38 = 40 * v37;
              v39 = v9;
              goto LABEL_71;
            }

            goto LABEL_72;
          }

LABEL_13:
          v18 = v6;
          v19 = v9 == v6;
          v6 += 40;
          if (!v19)
          {
            goto LABEL_14;
          }

LABEL_15:
          v9 += 40;
          if (v6 >= v14 || v8 >= v7)
          {
            goto LABEL_58;
          }
        }

        v17 = 0;
        while (*(v15 + 8 * v17) != *v8)
        {
          if (v16 == ++v17)
          {
            goto LABEL_12;
          }
        }

        v22 = 0;
        while (*(v15 + 8 * v22) != *v6)
        {
          if (v16 == ++v22)
          {
            if (v5)
            {
              goto LABEL_59;
            }

            goto LABEL_25;
          }
        }

        if (v5)
        {
          goto LABEL_59;
        }

        if (v17 >= v22)
        {
          goto LABEL_13;
        }

LABEL_25:
        v18 = v8;
        v19 = v9 == v8;
        v8 += 40;
        if (v19)
        {
          goto LABEL_15;
        }

LABEL_14:
        v20 = *v18;
        v21 = *(v18 + 1);
        *(v9 + 4) = *(v18 + 4);
        *v9 = v20;
        *(v9 + 1) = v21;
        goto LABEL_15;
      }

LABEL_58:
      v8 = v9;
    }
  }

LABEL_67:
  v40 = ((v14 - v6) * 0x6666666666666667) >> 64;
  v41 = (v40 >> 4) + (v40 >> 63);
  if (v8 < v6 || v8 >= &v6[40 * v41] || v8 != v6)
  {
    v38 = 40 * v41;
    v39 = v8;
LABEL_71:
    memmove(v39, v6, v38);
  }

LABEL_72:

  return 1;
}

uint64_t sub_1D14C0C9C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v10 = MEMORY[0x1E69E7CC0];
LABEL_120:
    v111 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_152;
      }

      goto LABEL_122;
    }

LABEL_158:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  v8 = a5 + 32;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  while (1)
  {
    v11 = v9++;
    if (v9 < v6)
    {
      v12 = *a3;
      v13 = *(*a3 + 40 * v9);
      v14 = *(a5 + 16);
      if (v14)
      {
        v15 = 0;
        while (*(v8 + 8 * v15) != v13)
        {
          if (v14 == ++v15)
          {
            goto LABEL_9;
          }
        }

        v20 = 0;
        while (*(v8 + 8 * v20) != *(v12 + 40 * v11))
        {
          if (v14 == ++v20)
          {
            v16 = 1;
            goto LABEL_10;
          }
        }

        v16 = v15 < v20;
      }

      else
      {
LABEL_9:
        v16 = 0;
      }

LABEL_10:
      if (v113)
      {
LABEL_118:
        swift_bridgeObjectRelease_n();
      }

      v9 = v11 + 2;
      if (v11 + 2 < v6)
      {
        do
        {
          v17 = *(v12 + 40 * v9);
          if (v14)
          {
            v18 = 0;
            while (*(v8 + 8 * v18) != v17)
            {
              if (v14 == ++v18)
              {
                goto LABEL_14;
              }
            }

            v19 = 0;
            while (*(v8 + 8 * v19) != v13)
            {
              if (v14 == ++v19)
              {
                if (v16)
                {
                  goto LABEL_15;
                }

                goto LABEL_42;
              }
            }

            if ((v16 ^ (v18 >= v19)))
            {
              goto LABEL_15;
            }

            goto LABEL_12;
          }

LABEL_14:
          if (v16)
          {
            goto LABEL_33;
          }

LABEL_15:
          ++v9;
          v13 = v17;
        }

        while (v9 != v6);
        v9 = v6;
        if (!v16)
        {
          goto LABEL_42;
        }
      }

      else
      {
LABEL_12:
        if (!v16)
        {
          goto LABEL_42;
        }
      }

LABEL_33:
      if (v9 < v11)
      {
        goto LABEL_149;
      }

      if (v11 < v9)
      {
        v21 = 40 * v9 - 40;
        v22 = 40 * v11;
        v23 = v9;
        v24 = v11;
        do
        {
          if (v24 != --v23)
          {
            v34 = *a3;
            if (!*a3)
            {
LABEL_155:
              swift_bridgeObjectRelease_n();
              __break(1u);
              goto LABEL_156;
            }

            v25 = (v34 + v22);
            v26 = *(v34 + v22 + 16);
            v27 = (v34 + v21);
            v28 = *(v25 + 24);
            v29 = *(v25 + 25);
            v30 = *(v25 + 4);
            v31 = *v25;
            v32 = *(v27 + 4);
            v33 = v27[1];
            *v25 = *v27;
            v25[1] = v33;
            *(v25 + 4) = v32;
            *v27 = v31;
            *(v27 + 2) = v26;
            *(v27 + 24) = v28;
            *(v27 + 25) = v29;
            *(v27 + 4) = v30;
          }

          ++v24;
          v21 -= 40;
          v22 += 40;
        }

        while (v24 < v23);
        v6 = a3[1];
      }
    }

LABEL_42:
    if (v9 >= v6)
    {
      goto LABEL_67;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_148;
    }

    if (v9 - v11 >= a4)
    {
      goto LABEL_67;
    }

    v35 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      goto LABEL_150;
    }

    if (v35 >= v6)
    {
      v35 = v6;
    }

    if (v35 < v11)
    {
      break;
    }

    if (v9 != v35)
    {
      v36 = *a3;
      v37 = *(a5 + 16);
      do
      {
        v38 = *(v36 + 40 * v9);
        v39 = v9;
        do
        {
          if (!v37)
          {
            break;
          }

          v40 = 0;
          v41 = v39 - 1;
          v42 = v36 + 40 * v39;
          v43 = v42 - 40;
          while (*(a5 + 8 * v40 + 32) != v38)
          {
            if (v37 == ++v40)
            {
              goto LABEL_51;
            }
          }

          v44 = 0;
          while (*(a5 + 8 * v44 + 32) != *(v42 - 40))
          {
            if (v37 == ++v44)
            {
              goto LABEL_63;
            }
          }

          if (v40 >= v44)
          {
            break;
          }

LABEL_63:
          if (!v36)
          {
LABEL_154:
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_155;
          }

          v45 = *(v42 + 24);
          v46 = *(v42 + 25);
          v47 = *(v42 + 32);
          v48 = *(v42 + 8);
          v49 = *(v42 - 24);
          *v42 = *v43;
          *(v42 + 16) = v49;
          *(v42 + 32) = *(v42 - 8);
          *v43 = v38;
          *(v42 - 32) = v48;
          *(v42 - 16) = v45;
          *(v42 - 15) = v46;
          v39 = v41;
          *(v43 + 32) = v47;
        }

        while (v41 != v11);
LABEL_51:
        ++v9;
      }

      while (v9 != v35);
      v9 = v35;
    }

LABEL_67:
    if (v9 < v11)
    {
      goto LABEL_147;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1D148B89C(0, *(v10 + 2) + 1, 1, v10);
    }

    v51 = *(v10 + 2);
    v50 = *(v10 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v10 = sub_1D148B89C((v50 > 1), v51 + 1, 1, v10);
    }

    *(v10 + 2) = v52;
    v53 = &v10[16 * v51];
    *(v53 + 4) = v11;
    *(v53 + 5) = v9;
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v10 + 4);
          v56 = *(v10 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_87:
          if (v58)
          {
            goto LABEL_136;
          }

          v71 = &v10[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_139;
          }

          v77 = &v10[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_142;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_143;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        v81 = &v10[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_101:
        if (v76)
        {
          goto LABEL_138;
        }

        v84 = &v10[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_141;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_108:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
        {
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        v93 = *a3;
        if (!*a3)
        {
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_154;
        }

        v94 = *&v10[16 * v92 + 32];
        v95 = *&v10[16 * v54 + 40];
        v96 = (v93 + 40 * v94);
        v97 = (v93 + 40 * *&v10[16 * v54 + 32]);
        v98 = v93 + 40 * v95;

        sub_1D14C0914(v96, v97, v98, v111, a5);
        if (v113)
        {
          goto LABEL_118;
        }

        if (v95 < v94)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D151DF58(v10);
        }

        if (v92 >= *(v10 + 2))
        {
          goto LABEL_133;
        }

        v99 = &v10[16 * v92];
        *(v99 + 4) = v94;
        *(v99 + 5) = v95;
        sub_1D151DECC(v54);
        v52 = *(v10 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v10[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_134;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_135;
      }

      v66 = &v10[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_137;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_140;
      }

      if (v70 >= v62)
      {
        v88 = &v10[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_144;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_87;
    }

LABEL_3:
    v6 = a3[1];
    v8 = a5 + 32;
    a4 = v109;
    if (v9 >= v6)
    {
      goto LABEL_120;
    }
  }

LABEL_151:
  __break(1u);
LABEL_152:
  v10 = sub_1D151DF58(v10);
LABEL_122:
  v101 = *(v10 + 2);
  if (v101 >= 2)
  {
    while (1)
    {
      v102 = *a3;
      if (!*a3)
      {
        break;
      }

      v103 = *&v10[16 * v101];
      v104 = *&v10[16 * v101 + 24];
      v105 = (v102 + 40 * v103);
      v106 = (v102 + 40 * *&v10[16 * v101 + 16]);
      v107 = v102 + 40 * v104;

      sub_1D14C0914(v105, v106, v107, v111, a5);
      if (v113)
      {
        goto LABEL_130;
      }

      if (v104 < v103)
      {
        goto LABEL_145;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D151DF58(v10);
      }

      if (v101 - 2 >= *(v10 + 2))
      {
        goto LABEL_146;
      }

      v108 = &v10[16 * v101];
      *v108 = v103;
      *(v108 + 1) = v104;
      sub_1D151DECC(v101 - 1);
      v101 = *(v10 + 2);
      if (v101 <= 1)
      {
        goto LABEL_130;
      }
    }

LABEL_156:

    __break(1u);
LABEL_157:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_158;
  }

LABEL_130:

  return swift_bridgeObjectRelease_n();
}