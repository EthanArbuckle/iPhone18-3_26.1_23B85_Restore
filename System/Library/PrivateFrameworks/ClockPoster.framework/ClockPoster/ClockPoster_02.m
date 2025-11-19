uint64_t sub_1E48E3C64()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v1 = v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v2 = *(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath);
  v3 = *(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return v2;
}

uint64_t sub_1E48E3D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v4 = v3 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v5 = *(v3 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath);
  *(a2 + 8) = *(v4 + 8);
  *(a2 + 24) = v5;
}

uint64_t sub_1E48E3DFC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);

  return sub_1E48E3E54(v2, v3, v4, v6);
}

uint64_t sub_1E48E3E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v10 = *(v4 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 8);
  if (!v10)
  {
    if (!a2)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if ((*v9 & 1) != (a1 & 1))
  {
    goto LABEL_9;
  }

  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  if ((sub_1E498D6B8(v10, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v12 & 1) == 0)
  {
    if ((a4 & 1) == 0 && v11 == a3)
    {
      goto LABEL_13;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v14);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  v16 = *(v9 + 8);
LABEL_14:
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

uint64_t sub_1E48E4034@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v9 = *a1;
  swift_beginAccess();
  return sub_1E48C12D0(v11 + v9, a4, a2, a3);
}

uint64_t sub_1E48E4114(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v8, v7, &qword_1ECF809D0, &qword_1E499D6C0);
  v9 = sub_1E48EBCC0(v7, a1);
  sub_1E48C1338(v7, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v9)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v7, &qword_1ECF809D0, &qword_1E499D6C0);
    swift_beginAccess();
    sub_1E48EC0CC(v7, v1 + v8, &qword_1ECF809D0, &qword_1E499D6C0);
    swift_endAccess();
  }

  return sub_1E48C1338(a1, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E48E431C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1E48EC048(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1E48E439C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for WorldViewModel.Pin(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v32 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v31 - v19);
  swift_getKeyPath();
  v39 = v1;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v21 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v34 = a1;
  v36 = a1;
  v37 = v2;

  sub_1E48DBE68(sub_1E48EB814, v35, v22);

  swift_getKeyPath();
  v38 = v2;
  sub_1E4996FCC();

  v23 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  sub_1E48C12D0(v2 + v23, v11, &qword_1ECF7F848, &qword_1E499D520);
  v24 = *(v13 + 48);
  if (v24(v11, 1, v12) != 1)
  {
    sub_1E48EC64C(v11, v20, type metadata accessor for WorldViewModel.Pin);
    v25 = v33;
    sub_1E48C12D0(v34, v33, &qword_1ECF7F848, &qword_1E499D520);
    if (v24(v25, 1, v12) == 1)
    {
      sub_1E48C1338(v25, &qword_1ECF7F848, &qword_1E499D520);
    }

    else
    {
      v26 = v32;
      sub_1E48EC64C(v25, v32, type metadata accessor for WorldViewModel.Pin);
      v28 = *v26;
      v27 = v26[1];
      sub_1E48EC6B4(v26, type metadata accessor for WorldViewModel.Pin);
      if (v28 == *v20)
      {
        v29 = v27 == v20[1];
LABEL_8:
        *(v20 + 17) = v29;
        sub_1E48EC6B4(v20, type metadata accessor for WorldViewModel.Pin);
        goto LABEL_9;
      }
    }

    v29 = 0;
    goto LABEL_8;
  }

  sub_1E48C1338(v11, &qword_1ECF7F848, &qword_1E499D520);
LABEL_9:
  sub_1E48E4E8C();
  return sub_1E48E52C0();
}

uint64_t sub_1E48E477C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v35 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for WorldViewModel.Pin(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = (&v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = a1;
  sub_1E48C12D0(a1, v17, &qword_1ECF7F880, &qword_1E499D630);
  v24 = *(v13 + 56);
  v25 = v40;
  sub_1E48EC64C(&v17[v24], v23, type metadata accessor for WorldViewModel.Pin);
  v26 = *(v19 + 48);
  if (v26(v25, 1, v18) == 1)
  {
    if (*(v23 + 17) != 1)
    {
      return sub_1E48EC6B4(v23, type metadata accessor for WorldViewModel.Pin);
    }

    LOBYTE(v27) = 0;
LABEL_8:
    *(v23 + 17) = v27;
    v31 = v37;
    v32 = *v36;
    v33 = v36[1];
    sub_1E48EC724(v23, v37, type metadata accessor for WorldViewModel.Pin);
    (*(v19 + 56))(v31, 0, 1, v18);
    swift_getKeyPath();
    v34 = v38;
    v39 = v38;
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FCC();

    v39 = v34;
    swift_getKeyPath();
    sub_1E4996FEC();

    swift_beginAccess();
    sub_1E49702F8(v31, v32, v33);
    swift_endAccess();
    v39 = v34;
    swift_getKeyPath();
    sub_1E4996FDC();

    return sub_1E48EC6B4(v23, type metadata accessor for WorldViewModel.Pin);
  }

  sub_1E48C12D0(v25, v11, &qword_1ECF7F848, &qword_1E499D520);
  result = (v26)(v11, 1, v18);
  if (result != 1)
  {
    v29 = *v11;
    v30 = v11[1];
    sub_1E48EC6B4(v11, type metadata accessor for WorldViewModel.Pin);
    v27 = v29 == *v23;
    if (v30 != v23[1])
    {
      v27 = 0;
    }

    if (*(v23 + 17) == v27)
    {
      return sub_1E48EC6B4(v23, type metadata accessor for WorldViewModel.Pin);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48E4B88()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask);
}

uint64_t sub_1E48E4C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask);
}

uint64_t sub_1E48E4CE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask;
  if (!*(v1 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
  v5 = sub_1E49981CC();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1E48E4E8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for WorldViewModel.Pin(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v26 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v35[0] = v1;
  v32 = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  v33 = v17;
  sub_1E4996FCC();

  v18 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = *(v19 + 16);
  if (v20)
  {
    v27 = v7;
    v28 = v6;
    v29 = v16;
    v30 = v13;
    v21 = sub_1E4906D5C(v20, 0);
    v31 = v8;
    v8 = sub_1E48EA50C(v35, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v20, v19);
    v13 = v35[1];
    v16 = v35[3];

    sub_1E48EB764();
    if (v8 != v20)
    {
      __break(1u);
LABEL_13:
      v21 = sub_1E4906284(0, v21[2] + 1, 1, v21);
      goto LABEL_8;
    }

    v13 = v30;
    v8 = v31;
    v6 = v28;
    v16 = v29;
    v7 = v27;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  v35[0] = v1;
  sub_1E4996FCC();

  v22 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v22, v6, &qword_1ECF7F848, &qword_1E499D520);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E48C1338(v6, &qword_1ECF7F848, &qword_1E499D520);
    goto LABEL_11;
  }

  sub_1E48EC64C(v6, v16, type metadata accessor for WorldViewModel.Pin);
  sub_1E48EC724(v16, v13, type metadata accessor for WorldViewModel.Pin);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1E4906284(v23 > 1, v24 + 1, 1, v21);
  }

  sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
  v21[2] = v24 + 1;
  sub_1E48EC64C(v13, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, type metadata accessor for WorldViewModel.Pin);
LABEL_11:
  v34 = v21;

  sub_1E48E8854(&v34);

  return sub_1E48DD168(v34);
}

uint64_t sub_1E48E52C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v133 = &v131 - v5;
  v153 = sub_1E4996F4C();
  v139 = *(v153 - 8);
  v6 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v153, v7);
  v150 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1E4996D8C();
  v135 = *(v149 - 8);
  v9 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v149, v10);
  v148 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for WorldViewModel.Pin(0);
  v160 = *(v154 - 8);
  v12 = v160[8];
  v14 = MEMORY[0x1EEE9AC00](v154, v13);
  v132 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v136 = &v131 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v147 = &v131 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
  v141 = *(v21 - 8);
  v22 = v141[8];
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v157 = (&v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v158 = (&v131 - v28);
  MEMORY[0x1EEE9AC00](v27, v29);
  v156 = &v131 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F888, &qword_1E499D638);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v140 = (&v131 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v36 = *(*(v35 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v138 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38, v40);
  v137 = &v131 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v131 = &v131 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v143 = &v131 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v142 = (&v131 - v51);
  v53 = MEMORY[0x1EEE9AC00](v50, v52);
  v144 = &v131 - v54;
  MEMORY[0x1EEE9AC00](v53, v55);
  v151 = &v131 - v56;
  swift_getKeyPath();
  v57 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v163 = v1;
  v58 = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  v146 = v57;
  v145 = v58;
  sub_1E4996FCC();

  v59 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v152 = v1;
  v134 = v59;
  v60 = *(v1 + v59);
  v61 = v60 + 64;
  v62 = 1 << v60[32];
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v60 + 8);
  v65 = (v62 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v67 = 0;
  v155 = v60;
  if (!v64)
  {
LABEL_5:
    v69 = v158;
    while (1)
    {
      v68 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v68 >= v65)
      {

        v78 = v141;
        v79 = v140;
        (v141[7])(v140, 1, 1, v21);
        goto LABEL_13;
      }

      v64 = *&v61[8 * v68];
      ++v67;
      if (v64)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  while (1)
  {
    v68 = v67;
    v69 = v158;
LABEL_9:
    v70 = __clz(__rbit64(v64)) | (v68 << 6);
    v71 = *(v60 + 6);
    v72 = *(v60 + 7) + v160[9] * v70;
    v73 = v21;
    v74 = *(v21 + 48);
    v159 = *(v71 + 16 * v70);
    v75 = v156;
    sub_1E48EC724(v72, &v156[v74], type metadata accessor for WorldViewModel.Pin);
    *v75 = v159;
    sub_1E48C15C8(v75, v69, &qword_1ECF7F880, &qword_1E499D630);
    v76 = v157;
    sub_1E48C12D0(v69, v157, &qword_1ECF7F880, &qword_1E499D630);
    v77 = v76 + *(v73 + 48);
    LODWORD(v76) = *(v77 + 17);
    sub_1E48EC6B4(v77, type metadata accessor for WorldViewModel.Pin);
    if (v76 == 1)
    {
      break;
    }

    v64 &= v64 - 1;
    result = sub_1E48C1338(v69, &qword_1ECF7F880, &qword_1E499D630);
    v67 = v68;
    v21 = v73;
    v60 = v155;
    if (!v64)
    {
      goto LABEL_5;
    }
  }

  v79 = v140;
  sub_1E48C15C8(v69, v140, &qword_1ECF7F880, &qword_1E499D630);
  v78 = v141;
  v21 = v73;
  (v141[7])(v79, 0, 1, v73);
LABEL_13:

  v80 = (v78[6])(v79, 1, v21);
  v81 = v154;
  v82 = v144;
  v83 = v142;
  if (v80 == 1)
  {
    sub_1E48C1338(v79, &qword_1ECF7F888, &qword_1E499D638);
    v84 = 1;
    v85 = v151;
  }

  else
  {
    v86 = v79 + *(v21 + 48);
    v85 = v151;
    sub_1E48EC64C(v86, v151, type metadata accessor for WorldViewModel.Pin);
    v84 = 0;
  }

  v87 = v160;
  v88 = (v160 + 7);
  v89 = v160[7];
  v89(v85, v84, 1, v81);
  sub_1E48C12D0(v85, v83, &qword_1ECF7F848, &qword_1E499D520);
  v91 = v87 + 6;
  v90 = v87[6];
  if ((v90)(v83, 1, v81) == 1)
  {
    swift_getKeyPath();
    v92 = v152;
    v162 = v152;
    sub_1E4996FCC();

    v93 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
    swift_beginAccess();
    sub_1E48C12D0(v92 + v93, v82, &qword_1ECF7F848, &qword_1E499D520);
    if ((v90)(v83, 1, v81) != 1)
    {
      sub_1E48C1338(v83, &qword_1ECF7F848, &qword_1E499D520);
    }
  }

  else
  {
    sub_1E48EC64C(v83, v82, type metadata accessor for WorldViewModel.Pin);
    v89(v82, 0, 1, v81);
  }

  v94 = v143;
  sub_1E48C12D0(v82, v143, &qword_1ECF7F848, &qword_1E499D520);
  v95 = (v90)(v94, 1, v81);
  sub_1E48C1338(v94, &qword_1ECF7F848, &qword_1E499D520);
  if (v95 != 1)
  {
    goto LABEL_33;
  }

  v140 = v90;
  v141 = v91;
  v142 = v89;
  v143 = v88;
  swift_getKeyPath();
  v96 = v152;
  v161 = v152;
  sub_1E4996FCC();

  v97 = *(v96 + v134);
  v98 = v97 + 64;
  v99 = 1 << v97[32];
  v100 = -1;
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  v101 = v100 & *(v97 + 8);
  v102 = (v99 + 63) >> 6;
  v158 = (v135 + 8);
  v157 = (v139 + 8);
  result = swift_bridgeObjectRetain_n();
  v103 = 0;
  v104 = v136;
  v155 = v97 + 64;
  v156 = v97;
  v105 = v158;
  v106 = v149;
  if (!v101)
  {
LABEL_25:
    while (1)
    {
      v107 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v107 >= v102)
      {
        v82 = v144;
        sub_1E48C1338(v144, &qword_1ECF7F848, &qword_1E499D520);

        v115 = v131;
        v116 = v131;
        v117 = 1;
        goto LABEL_32;
      }

      v101 = *&v98[8 * v107];
      ++v103;
      if (v101)
      {
        goto LABEL_28;
      }
    }

LABEL_40:
    __break(1u);
    return result;
  }

  while (1)
  {
    v107 = v103;
LABEL_28:
    v108 = *(v97 + 7) + v160[9] * (__clz(__rbit64(v101)) | (v107 << 6));
    v109 = v147;
    sub_1E48EC724(v108, v147, type metadata accessor for WorldViewModel.Pin);
    sub_1E48EC64C(v109, v104, type metadata accessor for WorldViewModel.Pin);
    v110 = *(v81 + 28);
    v111 = v148;
    sub_1E4996D7C();
    *&v159 = sub_1E4996EFC();
    v112 = *v105;
    (*v105)(v111, v106);
    v113 = v150;
    sub_1E4996F3C();
    sub_1E4996D7C();
    v114 = sub_1E4996EFC();
    v112(v111, v106);
    (*v157)(v113, v153);
    if (v159 == v114)
    {
      break;
    }

    v101 &= v101 - 1;
    result = sub_1E48EC6B4(v104, type metadata accessor for WorldViewModel.Pin);
    v103 = v107;
    v81 = v154;
    v98 = v155;
    v97 = v156;
    if (!v101)
    {
      goto LABEL_25;
    }
  }

  v82 = v144;
  sub_1E48C1338(v144, &qword_1ECF7F848, &qword_1E499D520);

  v130 = v104;
  v115 = v131;
  sub_1E48EC64C(v130, v131, type metadata accessor for WorldViewModel.Pin);
  v116 = v115;
  v117 = 0;
  v81 = v154;
LABEL_32:
  v89 = v142;
  v142(v116, v117, 1, v81);

  sub_1E48C15C8(v115, v82, &qword_1ECF7F848, &qword_1E499D520);
  v90 = v140;
LABEL_33:
  v118 = v137;
  sub_1E48C12D0(v82, v137, &qword_1ECF7F848, &qword_1E499D520);
  if ((v90)(v118, 1, v81) == 1)
  {
    sub_1E48C1338(v118, &qword_1ECF7F848, &qword_1E499D520);
    v119 = v138;
    v89(v138, 1, 1, v81);
    sub_1E48DD2B0(v119);
  }

  else
  {
    v120 = v81;
    v121 = v132;
    sub_1E48EC64C(v118, v132, type metadata accessor for WorldViewModel.Pin);
    v122 = v138;
    sub_1E48EC724(v121, v138, type metadata accessor for WorldViewModel.Pin);
    v89(v122, 0, 1, v120);
    v123 = v152;
    sub_1E48DD2B0(v122);
    swift_getKeyPath();
    v161 = v123;
    sub_1E4996FCC();

    v124 = *(v123 + 128);
    v125 = *(v120 + 28);
    v126 = v139;
    v127 = v133;
    v128 = v153;
    (*(v139 + 16))(v133, v121 + v125, v153);
    (*(v126 + 56))(v127, 0, 1, v128);

    sub_1E48B9930(v127);

    sub_1E48EC6B4(v121, type metadata accessor for WorldViewModel.Pin);
  }

  v129 = v151;
  sub_1E48C1338(v82, &qword_1ECF7F848, &qword_1E499D520);
  return sub_1E48C1338(v129, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48E61C4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 2);
  [v6 coordinate];
  v8 = v7;
  v10 = v9;
  v11 = *(type metadata accessor for City() + 24);
  v12 = type metadata accessor for WorldViewModel.Pin(0);
  v13 = v12[7];
  v14 = sub_1E4996F4C();
  (*(*(v14 - 8) + 16))(a2 + v13, &a1[v11], v14);
  swift_getKeyPath();
  *&v32[0] = v3;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v15 = *(v3 + 296);
  v16 = *(v3 + 312);
  v17 = *(v3 + 264);
  v32[6] = *(v3 + 280);
  v32[7] = v15;
  v32[8] = v16;
  v33 = *(v3 + 328);
  v18 = *(v3 + 232);
  v32[2] = *(v3 + 216);
  v32[3] = v18;
  v32[4] = *(v3 + 248);
  v32[5] = v17;
  v19 = *(v3 + 200);
  v32[0] = *(v3 + 184);
  v32[1] = v19;
  sub_1E48CCDD4(v32, v31);
  [v6 coordinate];
  swift_getKeyPath();
  v31[0] = v3;
  sub_1E4996FCC();

  v20 = *(v3 + 160);
  if (qword_1ECF7EB80 != -1)
  {
    swift_once();
  }

  UIPointRoundToScale();
  v22 = v21;
  v24 = v23;
  sub_1E48EB6DC(v32);
  v26 = *a1;
  v25 = *(a1 + 1);
  *(a2 + 17) = 0;
  v27 = a2 + v12[9];
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = (a2 + v12[10]);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  v29 = (a2 + v12[8]);
  *v29 = v22;
  v29[1] = v24;
  *v28 = v26;
  v28[1] = v25;
}

uint64_t sub_1E48E64AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v20 - v6;
  swift_getKeyPath();
  v21 = v1;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v8 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask;
  if (*(v1 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask) && (v9 = *(v1 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980), sub_1E49981DC(), , *(v1 + v8)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    *(&v20 - 2) = v1;
    *(&v20 - 1) = 0;
    v21 = v1;
    sub_1E4996FBC();
  }

  else
  {
    *(v1 + v8) = 0;
  }

  v12 = sub_1E499816C();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1E499814C();
  v14 = a1;

  v15 = sub_1E499813C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = v13;

  v18 = sub_1E49690B8(0, 0, v7, &unk_1E499D5F8, v16);
  return sub_1E48E4CE8(v18);
}

uint64_t sub_1E48E6778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_1E499814C();
  v5[11] = sub_1E499813C();
  v7 = sub_1E499811C();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E48E6810, v7, v6);
}

uint64_t sub_1E48E6810()
{
  if (qword_1ECF7EB68 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E48E68DC;
  v2 = *(v0 + 72);

  return sub_1E4980FA4(v2);
}

uint64_t sub_1E48E68DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v9 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;

  v6 = *(v3 + 104);
  v7 = *(v3 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E48E6A04, v7, v6);
}

uint64_t sub_1E48E6A04()
{
  v1 = v0[11];

  sub_1E49981FC();
  v2 = v0[10];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = sub_1E48E2FB0(v0 + 2);
    v5 = v4;
    v6 = type metadata accessor for WorldViewModel.Pin(0);
    v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
    v8 = v0[16];
    if (!v7)
    {
      v9 = (v5 + *(v6 + 40));
      v10 = v9[1];
      *v9 = v0[15];
      v9[1] = v8;
    }

    (v3)(v0 + 2, 0);
  }

  else
  {
    v11 = v0[16];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E48E6B68()
{
  sub_1E48C9E10(v0 + 16);
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  v3 = *(v0 + 296);
  v4 = *(v0 + 312);
  v5 = *(v0 + 264);
  v15[6] = *(v0 + 280);
  v15[7] = v3;
  v15[8] = v4;
  v16 = *(v0 + 328);
  v6 = *(v0 + 232);
  v15[2] = *(v0 + 216);
  v15[3] = v6;
  v15[4] = *(v0 + 248);
  v15[5] = v5;
  v7 = *(v0 + 200);
  v15[0] = *(v0 + 184);
  v15[1] = v7;
  sub_1E48EB6DC(v15);
  v8 = *(v0 + 336);

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin, &qword_1ECF7F848, &qword_1E499D520);
  v9 = *(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate);

  v10 = *(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 8);

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime, &qword_1ECF809D0, &qword_1E499D6C0);
  v11 = *(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask);

  v12 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v13 = sub_1E499700C();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t sub_1E48E6CD0()
{
  sub_1E48E6B68();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1E48E6D50()
{
  sub_1E48E6F44(319, &qword_1ECF7F7E8, type metadata accessor for WorldViewModel.Pin);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1E48E6F44(319, &qword_1ECF80920, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1E499700C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1E48E6F0C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48E6F44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E49984BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E48E6FC0()
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v0 <= 0x3F)
  {
    sub_1E4996F4C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        sub_1E48E70BC(319, &qword_1ECF7F800);
        if (v3 <= 0x3F)
        {
          sub_1E48E70BC(319, &qword_1ECF7F808);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E48E70BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E49984BC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11ClockPoster0A8FaceLookO(uint64_t a1)
{
  if ((*(a1 + 96) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E48E7150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E48E7198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E48E7208(uint64_t a1)
{
  result = sub_1E48E7230();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E48E7230()
{
  result = qword_1ECF7F810;
  if (!qword_1ECF7F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F810);
  }

  return result;
}

unint64_t sub_1E48E7288(void *a1)
{
  a1[1] = sub_1E48E72C8();
  a1[2] = sub_1E48E731C();
  a1[3] = sub_1E48E7370();
  result = sub_1E48E73C4();
  a1[4] = result;
  return result;
}

unint64_t sub_1E48E72C8()
{
  result = qword_1ECF7F818;
  if (!qword_1ECF7F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F818);
  }

  return result;
}

unint64_t sub_1E48E731C()
{
  result = qword_1ECF7F820;
  if (!qword_1ECF7F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F820);
  }

  return result;
}

unint64_t sub_1E48E7370()
{
  result = qword_1ECF7F828;
  if (!qword_1ECF7F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F828);
  }

  return result;
}

unint64_t sub_1E48E73C4()
{
  result = qword_1ECF7F830;
  if (!qword_1ECF7F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F830);
  }

  return result;
}

uint64_t sub_1E48E7460(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_1E48E74B0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E48E2600(v2);
  return sub_1E48C2910;
}

uint64_t sub_1E48E7520(CGFloat a1, CFTimeInterval a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for WorldViewModel.Pin(0);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v45 = v2;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  v42 = *(*(v2 + 336) + 16);
  if (!v42)
  {
    v29 = 1;
    goto LABEL_24;
  }

  v37 = v10;
  v38 = 0;
  v17 = 0;
  v18 = 0.0;
  v39 = 0x100000001;
  do
  {
    swift_getKeyPath();
    v44 = v3;
    v20 = (v3 + v16);
    sub_1E4996FCC();

    v21 = *(v3 + 336);
    if (v17 >= *(v21 + 16))
    {
      __break(1u);
LABEL_26:
      result = sub_1E48EA4BC(v20);
      v20 = result;
      goto LABEL_20;
    }

    v41 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v40 = *(v43 + 72);
    sub_1E48EC724(v21 + v41 + v40 * v17, v15, type metadata accessor for WorldViewModel.Pin);
    v22 = v11;
    v23 = &v15[*(v11 + 32)];
    v24 = *v23 + -22.0;
    swift_getKeyPath();
    v44 = v3;
    sub_1E4996FCC();

    v25 = v24 + *(v3 + 144);
    v26 = v23[1] + -22.0;
    swift_getKeyPath();
    v44 = v3;
    sub_1E4996FCC();

    v47.origin.y = v26 + *(v3 + 152);
    v47.size.width = 44.0;
    v47.origin.x = v25;
    v47.size.height = 44.0;
    v46.x = a1;
    v46.y = a2;
    if (!CGRectContainsPoint(v47, v46))
    {
      sub_1E48EC6B4(v15, type metadata accessor for WorldViewModel.Pin);
      v19 = v18;
      v11 = v22;
      goto LABEL_4;
    }

    v27 = &v15[*(v22 + 36)];
    v19 = *v27;
    v28 = v27[8];
    sub_1E48EC6B4(v15, type metadata accessor for WorldViewModel.Pin);
    v11 = v22;
    if (v28)
    {
      v39 = 0x100000000;
    }

    else
    {
      if ((v39 & 0x100000000) != 0)
      {
        if ((v39 & 1) == 0)
        {
          v39 = 0x100000000;
          v19 = v18;
          goto LABEL_4;
        }
      }

      else if (v18 < v19)
      {
        HIDWORD(v39) = 0;
        v19 = v18;
        goto LABEL_4;
      }

      v39 = 0;
    }

    v38 = v17;
LABEL_4:
    ++v17;
    v18 = v19;
  }

  while (v42 != v17);
  if (v39)
  {
    v29 = 1;
    v10 = v37;
    goto LABEL_24;
  }

  a2 = CACurrentMediaTime();
  swift_getKeyPath();
  v44 = v3;
  sub_1E4996FCC();

  v44 = v3;
  swift_getKeyPath();
  sub_1E4996FEC();

  swift_beginAccess();
  v20 = *(v3 + 336);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 336) = v20;
  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  v31 = v38;
  v32 = v41;
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v38 >= v20[2])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = v38 * v40;
  v34 = (v20 + v41 + *(v11 + 36) + v38 * v40);
  *v34 = a2;
  *(v34 + 8) = 0;
  *(v3 + 336) = v20;
  swift_endAccess();
  v44 = v3;
  swift_getKeyPath();
  sub_1E4996FDC();

  swift_getKeyPath();
  v44 = v3;
  sub_1E4996FCC();

  v35 = *(v3 + 336);
  if (v31 >= *(v35 + 16))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v36 = v35 + v32 + v33;
  v10 = v37;
  sub_1E48EC724(v36, v37, type metadata accessor for WorldViewModel.Pin);
  v29 = 0;
LABEL_24:
  (*(v43 + 56))(v10, v29, 1, v11);
  sub_1E48E439C(v10);
  return sub_1E48C1338(v10, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48E7AD4()
{
  v1 = v0;
  v2 = type metadata accessor for WorldViewModel.Pin(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  MEMORY[0x1E691B7A0](0x203D20736E6950, 0xE700000000000000, v6);
  MEMORY[0x1E691B7A0](91, 0xE100000000000000);
  swift_getKeyPath();
  v14 = v0;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  v9 = *(v0 + 336);
  v10 = *(v9 + 16);

  if (v10)
  {
    v11 = 0;
    while (v11 < *(v9 + 16))
    {
      sub_1E48EC724(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v8, type metadata accessor for WorldViewModel.Pin);
      sub_1E48E7D14(v8, v15, v1);
      ++v11;
      sub_1E48EC6B4(v8, type metadata accessor for WorldViewModel.Pin);
      if (v10 == v11)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    result = sub_1E48EC6B4(v8, type metadata accessor for WorldViewModel.Pin);
    __break(1u);
  }

  else
  {
LABEL_5:

    MEMORY[0x1E691B7A0](93, 0xE100000000000000);
    return v15[0];
  }

  return result;
}

uint64_t sub_1E48E7D14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for WorldViewModel.Pin(0);
  v88 = v6;
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v74 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F850, &qword_1E499D578);
  v10 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83, v11);
  v78 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v70[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v73 = &v70[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21, v22);
  v80 = &v70[-v23];
  MEMORY[0x1EEE9AC00](v24, v25);
  v84 = &v70[-v26];
  MEMORY[0x1EEE9AC00](v27, v28);
  v72 = &v70[-v29];
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v70[-v33];
  v35 = (a1 + *(v6 + 40));
  v36 = v35[1];
  if (v36)
  {
    v37 = *v35;
    if (*(a1 + 16))
    {
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1E49985BC();

      v86 = 0xD000000000000010;
      v87 = 0x80000001E49A7070;
      MEMORY[0x1E691B7A0](v37, v36);
      v38 = 41;
      v39 = 0xE100000000000000;
LABEL_6:
      MEMORY[0x1E691B7A0](v38, v39);
      MEMORY[0x1E691B7A0](v86, v87);

      if (*(a1 + 17))
      {
        MEMORY[0x1E691B7A0](0x7463656C6573202CLL, 0xEA00000000006465);
      }

      MEMORY[0x1E691B7A0](0xD000000000000011, 0x80000001E49A7030);
      v42 = v88;
      goto LABEL_13;
    }

    v86 = 0x746943646C726F57;
    v87 = 0xEA00000000002879;
    MEMORY[0x1E691B7A0](v37, v36, v32);
    v43 = 41;
    v44 = 0xE100000000000000;
  }

  else
  {
    if (*(a1 + 16))
    {
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_1E49985BC();
      MEMORY[0x1E691B7A0](0xD000000000000011, 0x80000001E49A7050);
      v40 = *a1;
      sub_1E499822C();
      MEMORY[0x1E691B7A0](44, 0xE100000000000000);
      v41 = *(a1 + 8);
      sub_1E499822C();
      v38 = 10558;
      v39 = 0xE200000000000000;
      goto LABEL_6;
    }

    v86 = 0;
    v87 = 0xE000000000000000;
    sub_1E49985BC();
    MEMORY[0x1E691B7A0](0xD000000000000018, 0x80000001E49A6FF0);
    v45 = *a1;
    sub_1E499822C();
    MEMORY[0x1E691B7A0](44, 0xE100000000000000);
    v46 = *(a1 + 8);
    sub_1E499822C();
    v43 = 10558;
    v44 = 0xE200000000000000;
  }

  MEMORY[0x1E691B7A0](v43, v44);
  MEMORY[0x1E691B7A0](v86, v87);

  v42 = v88;
  if (*(a1 + 17))
  {
    MEMORY[0x1E691B7A0](0x7463656C6573202CLL, 0xEA00000000006465);
  }

LABEL_13:
  v79 = a2;
  v77 = a1;
  sub_1E48EC724(a1, v34, type metadata accessor for WorldViewModel.Pin);
  v47 = v81;
  v82 = *(v81 + 56);
  v82(v34, 0, 1, v42);
  swift_getKeyPath();
  v48 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v86 = a3;
  v75 = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  v76 = v48;
  sub_1E4996FCC();

  v49 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v50 = *(v83 + 48);
  sub_1E48C12D0(v34, v16, &qword_1ECF7F848, &qword_1E499D520);
  v51 = v88;
  sub_1E48C12D0(a3 + v49, &v16[v50], &qword_1ECF7F848, &qword_1E499D520);
  v52 = *(v47 + 48);
  if (v52(v16, 1, v51) != 1)
  {
    v54 = v72;
    sub_1E48C12D0(v16, v72, &qword_1ECF7F848, &qword_1E499D520);
    if (v52(&v16[v50], 1, v51) != 1)
    {
      v55 = &v16[v50];
      v56 = v54;
      v57 = v74;
      sub_1E48EC64C(v55, v74, type metadata accessor for WorldViewModel.Pin);
      v71 = sub_1E48EAD30(v56, v57);
      sub_1E48EC6B4(v57, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v34, &qword_1ECF7F848, &qword_1E499D520);
      v51 = v88;
      sub_1E48EC6B4(v56, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v16, &qword_1ECF7F848, &qword_1E499D520);
      v53 = v84;
      if (!v71)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    sub_1E48C1338(v34, &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48EC6B4(v54, type metadata accessor for WorldViewModel.Pin);
LABEL_18:
    sub_1E48C1338(v16, &qword_1ECF7F850, &qword_1E499D578);
    v53 = v84;
    goto LABEL_21;
  }

  sub_1E48C1338(v34, &qword_1ECF7F848, &qword_1E499D520);
  if (v52(&v16[v50], 1, v51) != 1)
  {
    goto LABEL_18;
  }

  sub_1E48C1338(v16, &qword_1ECF7F848, &qword_1E499D520);
  v53 = v84;
LABEL_20:
  MEMORY[0x1E691B7A0](0xD000000000000012, 0x80000001E49A7010);
LABEL_21:
  sub_1E48EC724(v77, v53, type metadata accessor for WorldViewModel.Pin);
  v58 = 1;
  v82(v53, 0, 1, v51);
  swift_getKeyPath();
  v85 = a3;
  sub_1E4996FCC();

  swift_beginAccess();
  v59 = *(a3 + 336);
  v60 = *(v59 + 16);
  v61 = v78;
  v62 = v80;
  if (v60)
  {
    sub_1E48EC724(v59 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * (v60 - 1), v80, type metadata accessor for WorldViewModel.Pin);
    v58 = 0;
  }

  v82(v62, v58, 1, v51);
  v63 = v84;
  v64 = *(v83 + 48);
  sub_1E48C12D0(v84, v61, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C12D0(v62, v61 + v64, &qword_1ECF7F848, &qword_1E499D520);
  if (v52(v61, 1, v51) != 1)
  {
    v65 = v73;
    sub_1E48C12D0(v61, v73, &qword_1ECF7F848, &qword_1E499D520);
    if (v52((v61 + v64), 1, v51) != 1)
    {
      v67 = v61 + v64;
      v68 = v74;
      sub_1E48EC64C(v67, v74, type metadata accessor for WorldViewModel.Pin);
      v69 = sub_1E48EAD30(v65, v68);
      sub_1E48EC6B4(v68, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v80, &qword_1ECF7F848, &qword_1E499D520);
      sub_1E48C1338(v63, &qword_1ECF7F848, &qword_1E499D520);
      sub_1E48EC6B4(v65, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v61, &qword_1ECF7F848, &qword_1E499D520);
      if (v69)
      {
        return MEMORY[0x1E691B7A0](592138, 0xE300000000000000);
      }

      goto LABEL_29;
    }

    sub_1E48C1338(v80, &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48C1338(v63, &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48EC6B4(v65, type metadata accessor for WorldViewModel.Pin);
LABEL_28:
    sub_1E48C1338(v61, &qword_1ECF7F850, &qword_1E499D578);
LABEL_29:
    MEMORY[0x1E691B7A0](44, 0xE100000000000000);
    return MEMORY[0x1E691B7A0](592138, 0xE300000000000000);
  }

  sub_1E48C1338(v62, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C1338(v63, &qword_1ECF7F848, &qword_1E499D520);
  if (v52((v61 + v64), 1, v51) != 1)
  {
    goto LABEL_28;
  }

  sub_1E48C1338(v61, &qword_1ECF7F848, &qword_1E499D520);
  return MEMORY[0x1E691B7A0](592138, 0xE300000000000000);
}

uint64_t sub_1E48E87F8(uint64_t a1)
{
  result = sub_1E48E7460(&qword_1ECF7F250, type metadata accessor for WorldViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E48E8854(void **a1)
{
  v2 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E4952DD4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E48E88FC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E48E88FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E49987EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for WorldViewModel.Pin(0);
        v6 = sub_1E49980EC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E48E8D2C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E48E8A28(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E48E8A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = type metadata accessor for WorldViewModel.Pin(0);
  v8 = *(*(v45 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v45, v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = (&v36 - v15);
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v21 = (&v36 - v20);
  v38 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v43 = v16 + 1;
    v44 = v22;
    v24 = v22 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v37 = v23;
    v27 = v22 + v23 * a3;
    while (2)
    {
      v41 = v24;
      v42 = a3;
      v39 = v27;
      v40 = v26;
      while (1)
      {
        sub_1E48EC724(v27, v21, type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC724(v24, v16, type metadata accessor for WorldViewModel.Pin);
        v28 = *(v45 + 36);
        v29 = (v21 + v28);
        if ((*(v21 + v28 + 8) & 1) == 0)
        {
          break;
        }

        if (*(v43 + v28))
        {
          v30 = *v21 < *v16;
          if (*v21 == *v16)
          {
            v31 = v21[1];
            v32 = *v43;
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
        result = sub_1E48EC6B4(v21, type metadata accessor for WorldViewModel.Pin);
        if (!v44)
        {
LABEL_24:
          __break(1u);
          return result;
        }

LABEL_21:
        sub_1E48EC64C(v27, v12, type metadata accessor for WorldViewModel.Pin);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1E48EC64C(v12, v24, type metadata accessor for WorldViewModel.Pin);
        v24 += v25;
        v27 += v25;
        if (__CFADD__(v26++, 1))
        {
          goto LABEL_5;
        }
      }

      v33 = (v16 + v28);
      if (v33[1])
      {
        sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
        result = sub_1E48EC6B4(v21, type metadata accessor for WorldViewModel.Pin);
LABEL_5:
        a3 = v42 + 1;
        v24 = v41 + v37;
        v26 = v40 - 1;
        v27 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v31 = *v29;
    v32 = *v33;
LABEL_13:
    v30 = v31 < v32;
LABEL_14:
    v34 = v30;
    sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
    result = sub_1E48EC6B4(v21, type metadata accessor for WorldViewModel.Pin);
    if ((v34 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (!v44)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1E48E8D2C(unint64_t *a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v6 = v4;
  v149 = a1;
  v167 = type metadata accessor for WorldViewModel.Pin(0);
  v9 = *(v167 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x1EEE9AC00](v167, v11);
  v154 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v165 = &v143 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = (&v143 - v19);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = (&v143 - v23);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  result = MEMORY[0x1EEE9AC00](v30, v31);
  v146 = (&v143 - v36);
  v37 = *(a3 + 8);
  v160 = v9;
  if (v37 < 1)
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_133:
    v5 = *v149;
    if (!*v149)
    {
      goto LABEL_171;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v64 = v160;
    if (result)
    {
LABEL_135:
      v168 = v39;
      v138 = *(v39 + 16);
      if (v138 >= 2)
      {
        while (*a3)
        {
          v139 = v39;
          v39 = *(v39 + 16 * v138);
          v140 = v139;
          v141 = *&v139[16 * v138 + 24];
          sub_1E48E98D8(*a3 + v64[9] * v39, *a3 + v64[9] * *&v139[16 * v138 + 16], *a3 + v64[9] * v141, v5);
          if (v6)
          {
          }

          if (v141 < v39)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = sub_1E48E9FB4(v140);
          }

          if (v138 - 2 >= *(v140 + 2))
          {
            goto LABEL_159;
          }

          v142 = &v140[16 * v138];
          *v142 = v39;
          v142[1] = v141;
          v168 = v140;
          result = sub_1E48E9F28(v138 - 1);
          v39 = v168;
          v138 = *(v168 + 16);
          if (v138 <= 1)
          {
          }
        }

        goto LABEL_169;
      }
    }

LABEL_165:
    result = sub_1E48E9FB4(v39);
    v39 = result;
    goto LABEL_135;
  }

  v158 = v34;
  v144 = a4;
  v38 = 0;
  v145 = v35;
  v143 = (v35 + 8);
  v155 = v33 + 1;
  v163 = v33;
  v164 = v20 + 1;
  v39 = MEMORY[0x1E69E7CC0];
  v150 = a3;
  v166 = v20;
  v156 = v24;
  while (2)
  {
    v40 = a3;
    v41 = v38;
    a3 = v38 + 1;
    v151 = v38;
    if (v38 + 1 >= v37)
    {
      goto LABEL_51;
    }

    v157 = v37;
    v42 = *v40;
    v43 = v160[9];
    v44 = v146;
    sub_1E48EC724(*v40 + v43 * a3, v146, type metadata accessor for WorldViewModel.Pin);
    v161 = v43;
    v45 = v42 + v43 * v41;
    v46 = v145;
    sub_1E48EC724(v45, v145, type metadata accessor for WorldViewModel.Pin);
    v47 = *(v167 + 36);
    v48 = (v44 + v47);
    v49 = *(v44 + v47 + 8);
    v147 = v39;
    v148 = v6;
    if (v49)
    {
      if ((*(v143 + v47) & 1) == 0)
      {
        v54 = 1;
LABEL_17:
        LODWORD(v159) = v54;
        goto LABEL_18;
      }

      v50 = *v44 < *v46;
      if (*v44 != *v46)
      {
LABEL_14:
        v54 = v50;
        goto LABEL_17;
      }

      v51 = v44[1];
      v52 = *v143;
LABEL_13:
      v50 = v51 < v52;
      goto LABEL_14;
    }

    v53 = (v46 + v47);
    if ((v53[1] & 1) == 0)
    {
      v51 = *v48;
      v52 = *v53;
      goto LABEL_13;
    }

    LODWORD(v159) = 0;
LABEL_18:
    sub_1E48EC6B4(v46, type metadata accessor for WorldViewModel.Pin);
    result = sub_1E48EC6B4(v44, type metadata accessor for WorldViewModel.Pin);
    v55 = v151 + 2;
    v56 = v161 * (v151 + 2);
    v5 = v42 + v56;
    v57 = v161 * a3;
    v58 = v42 + v161 * a3;
    v6 = v167;
    v39 = v158;
    do
    {
      v60 = v55;
      v62 = a3;
      v63 = v57;
      v64 = v56;
      v162 = v55;
      if (v55 >= v157)
      {
        break;
      }

      sub_1E48EC724(v5, v39, type metadata accessor for WorldViewModel.Pin);
      v65 = v39;
      v66 = v163;
      sub_1E48EC724(v58, v163, type metadata accessor for WorldViewModel.Pin);
      v67 = *(v6 + 36);
      v68 = (v65 + v67);
      if (*(v65 + v67 + 8))
      {
        if (*(v155 + v67))
        {
          v39 = v158;
          v69 = *v158 < *v163;
          v24 = v156;
          if (*v158 == *v163)
          {
            v69 = v158[1] < *v155;
          }

          v59 = v69;
          goto LABEL_21;
        }

        v59 = 1;
      }

      else
      {
        v70 = (v66 + v67);
        v59 = (v70[1] & 1) == 0 && *v68 < *v70;
      }

      v39 = v158;
      v24 = v156;
LABEL_21:
      sub_1E48EC6B4(v163, type metadata accessor for WorldViewModel.Pin);
      result = sub_1E48EC6B4(v39, type metadata accessor for WorldViewModel.Pin);
      v60 = v162;
      v55 = v162 + 1;
      v5 += v161;
      v58 += v161;
      ++a3;
      v57 = v63 + v161;
      v56 = v64 + v161;
      v61 = v159 == v59;
      v6 = v167;
    }

    while (v61);
    if (!v159)
    {
      goto LABEL_48;
    }

    v41 = v151;
    if (v60 < v151)
    {
      goto LABEL_162;
    }

    if (v151 >= v60)
    {
      a3 = v60;
      v39 = v147;
      v6 = v148;
      v40 = v150;
    }

    else
    {
      v71 = v151;
      v72 = v151 * v161;
      do
      {
        if (v71 != v62)
        {
          v5 = *v150;
          if (!*v150)
          {
            goto LABEL_168;
          }

          sub_1E48EC64C(v5 + v72, v154, type metadata accessor for WorldViewModel.Pin);
          if (v72 < v63 || v5 + v72 >= v64 + v5)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v72 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1E48EC64C(v154, v5 + v63, type metadata accessor for WorldViewModel.Pin);
          v60 = v162;
        }

        ++v71;
        v63 -= v161;
        v64 = (v64 - v161);
        v72 += v161;
      }

      while (v71 < v62--);
LABEL_48:
      a3 = v60;
      v39 = v147;
      v6 = v148;
      v40 = v150;
      v41 = v151;
    }

    v20 = v166;
LABEL_51:
    v64 = v40;
    v74 = v40[1];
    if (a3 >= v74)
    {
      goto LABEL_82;
    }

    if (__OFSUB__(a3, v41))
    {
      goto LABEL_161;
    }

    if (a3 - v41 >= v144)
    {
LABEL_82:
      if (a3 < v41)
      {
        goto LABEL_160;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E48EA0AC(0, *(v39 + 16) + 1, 1, v39);
        v39 = result;
      }

      v93 = *(v39 + 16);
      v92 = *(v39 + 24);
      v94 = v93 + 1;
      if (v93 >= v92 >> 1)
      {
        result = sub_1E48EA0AC((v92 > 1), v93 + 1, 1, v39);
        v39 = result;
      }

      *(v39 + 16) = v94;
      v95 = v39 + 16 * v93;
      *(v95 + 32) = v151;
      *(v95 + 40) = a3;
      v5 = *v149;
      if (!*v149)
      {
        goto LABEL_170;
      }

      v162 = a3;
      if (!v93)
      {
LABEL_3:
        a3 = v64;
        v37 = v64[1];
        v38 = v162;
        if (v162 >= v37)
        {
          goto LABEL_133;
        }

        continue;
      }

      while (1)
      {
        a3 = v94 - 1;
        if (v94 >= 4)
        {
          break;
        }

        if (v94 == 3)
        {
          v96 = *(v39 + 32);
          v97 = *(v39 + 40);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_102:
          if (v99)
          {
            goto LABEL_149;
          }

          v112 = (v39 + 16 * v94);
          v114 = *v112;
          v113 = v112[1];
          v115 = __OFSUB__(v113, v114);
          v116 = v113 - v114;
          v117 = v115;
          if (v115)
          {
            goto LABEL_152;
          }

          v118 = (v39 + 32 + 16 * a3);
          v120 = *v118;
          v119 = v118[1];
          v106 = __OFSUB__(v119, v120);
          v121 = v119 - v120;
          if (v106)
          {
            goto LABEL_155;
          }

          if (__OFADD__(v116, v121))
          {
            goto LABEL_156;
          }

          if (v116 + v121 >= v98)
          {
            if (v98 < v121)
            {
              a3 = v94 - 2;
            }

            goto LABEL_123;
          }

          goto LABEL_116;
        }

        v122 = (v39 + 16 * v94);
        v124 = *v122;
        v123 = v122[1];
        v106 = __OFSUB__(v123, v124);
        v116 = v123 - v124;
        v117 = v106;
LABEL_116:
        if (v117)
        {
          goto LABEL_151;
        }

        v125 = v39 + 16 * a3;
        v127 = *(v125 + 32);
        v126 = *(v125 + 40);
        v106 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v106)
        {
          goto LABEL_154;
        }

        if (v128 < v116)
        {
          goto LABEL_3;
        }

LABEL_123:
        v133 = a3 - 1;
        if (a3 - 1 >= v94)
        {
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
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v64)
        {
          goto LABEL_167;
        }

        v134 = v39;
        v135 = v39 + 32;
        v39 = *(v39 + 32 + 16 * v133);
        v136 = *(v135 + 16 * a3 + 8);
        sub_1E48E98D8(*v64 + v160[9] * v39, *v64 + v160[9] * *(v135 + 16 * a3), *v64 + v160[9] * v136, v5);
        if (v6)
        {
        }

        if (v136 < v39)
        {
          goto LABEL_145;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v134 = sub_1E48E9FB4(v134);
        }

        if (v133 >= *(v134 + 2))
        {
          goto LABEL_146;
        }

        v137 = &v134[16 * v133];
        *(v137 + 4) = v39;
        *(v137 + 5) = v136;
        v168 = v134;
        result = sub_1E48E9F28(a3);
        v39 = v168;
        v94 = *(v168 + 16);
        v20 = v166;
        if (v94 <= 1)
        {
          goto LABEL_3;
        }
      }

      v100 = v39 + 32 + 16 * v94;
      v101 = *(v100 - 64);
      v102 = *(v100 - 56);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_147;
      }

      v105 = *(v100 - 48);
      v104 = *(v100 - 40);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_148;
      }

      v107 = (v39 + 16 * v94);
      v109 = *v107;
      v108 = v107[1];
      v106 = __OFSUB__(v108, v109);
      v110 = v108 - v109;
      if (v106)
      {
        goto LABEL_150;
      }

      v106 = __OFADD__(v98, v110);
      v111 = v98 + v110;
      if (v106)
      {
        goto LABEL_153;
      }

      if (v111 >= v103)
      {
        v129 = (v39 + 32 + 16 * a3);
        v131 = *v129;
        v130 = v129[1];
        v106 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v106)
        {
          goto LABEL_157;
        }

        if (v98 < v132)
        {
          a3 = v94 - 2;
        }

        goto LABEL_123;
      }

      goto LABEL_102;
    }

    break;
  }

  v75 = v41 + v144;
  if (__OFADD__(v41, v144))
  {
    goto LABEL_163;
  }

  if (v75 >= v74)
  {
    v75 = v74;
  }

  if (v75 < v41)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (a3 == v75)
  {
    goto LABEL_82;
  }

  v147 = v39;
  v148 = v6;
  v76 = *v64;
  v77 = v160[9];
  v78 = *v64 + v77 * (a3 - 1);
  v79 = -v77;
  v80 = v41 - a3;
  v152 = v77;
  v153 = v75;
  v5 = v76 + a3 * v77;
  v81 = v167;
  while (2)
  {
    v161 = v78;
    v162 = a3;
    v157 = v5;
    v159 = v80;
    v82 = v78;
LABEL_63:
    sub_1E48EC724(v5, v24, type metadata accessor for WorldViewModel.Pin);
    sub_1E48EC724(v82, v20, type metadata accessor for WorldViewModel.Pin);
    v83 = *(v81 + 36);
    v84 = (v24 + v83);
    if ((*(v24 + v83 + 8) & 1) == 0)
    {
      v88 = (v20 + v83);
      if (v88[1])
      {
        sub_1E48EC6B4(v20, type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC6B4(v24, type metadata accessor for WorldViewModel.Pin);
LABEL_61:
        a3 = v162 + 1;
        v78 = v161 + v152;
        v80 = v159 - 1;
        v5 = v157 + v152;
        if (v162 + 1 == v153)
        {
          a3 = v153;
          v39 = v147;
          v6 = v148;
          v64 = v150;
          v41 = v151;
          goto LABEL_82;
        }

        continue;
      }

      v86 = *v84;
      v87 = *v88;
LABEL_69:
      v85 = v86 < v87;
LABEL_70:
      v89 = v85;
      sub_1E48EC6B4(v20, type metadata accessor for WorldViewModel.Pin);
      result = sub_1E48EC6B4(v24, type metadata accessor for WorldViewModel.Pin);
      if ((v89 & 1) == 0)
      {
        v81 = v167;
        goto LABEL_61;
      }

      if (!v76)
      {
        goto LABEL_166;
      }

      goto LABEL_77;
    }

    break;
  }

  if (*(v164 + v83))
  {
    v85 = *v24 < *v20;
    if (*v24 == *v20)
    {
      v86 = v24[1];
      v87 = *v164;
      goto LABEL_69;
    }

    goto LABEL_70;
  }

  sub_1E48EC6B4(v20, type metadata accessor for WorldViewModel.Pin);
  result = sub_1E48EC6B4(v24, type metadata accessor for WorldViewModel.Pin);
  if (v76)
  {
LABEL_77:
    v90 = v165;
    sub_1E48EC64C(v5, v165, type metadata accessor for WorldViewModel.Pin);
    v81 = v167;
    swift_arrayInitWithTakeFrontToBack();
    sub_1E48EC64C(v90, v82, type metadata accessor for WorldViewModel.Pin);
    v82 += v79;
    v5 += v79;
    v91 = __CFADD__(v80++, 1);
    v20 = v166;
    if (v91)
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
  return result;
}

uint64_t sub_1E48E98D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for WorldViewModel.Pin(0);
  v8 = *(*(v64 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v64, v9);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v63 = &v56 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = (&v56 - v18);
  result = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = (&v56 - v22);
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_84;
  }

  v26 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_85;
  }

  v27 = (a2 - a1) / v25;
  v67 = a1;
  v66 = a4;
  if (v27 < v26 / v25)
  {
    v28 = v27 * v25;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v28;
    v65 = a4 + v28;
    if (v28 < 1 || a2 >= a3)
    {
      goto LABEL_82;
    }

    v62 = v19 + 1;
    while (1)
    {
      sub_1E48EC724(a2, v23, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC724(a4, v19, type metadata accessor for WorldViewModel.Pin);
      v31 = *(v64 + 36);
      v32 = (v23 + v31);
      if ((*(v23 + v31 + 8) & 1) == 0)
      {
        break;
      }

      if ((*(v62 + v31) & 1) == 0)
      {
        sub_1E48EC6B4(v19, type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC6B4(v23, type metadata accessor for WorldViewModel.Pin);
        goto LABEL_34;
      }

      v33 = *v23 < *v19;
      if (*v23 == *v19)
      {
        v34 = v23[1];
        v35 = *v62;
LABEL_29:
        v33 = v34 < v35;
      }

      v37 = v33;
      sub_1E48EC6B4(v19, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v23, type metadata accessor for WorldViewModel.Pin);
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_34:
      if (a1 < a2 || a1 >= a2 + v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 += v25;
LABEL_46:
      a1 += v25;
      v67 = a1;
      if (a4 >= v63 || a2 >= a3)
      {
        goto LABEL_82;
      }
    }

    v36 = (v19 + v31);
    if (v36[1])
    {
      sub_1E48EC6B4(v19, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v23, type metadata accessor for WorldViewModel.Pin);
LABEL_38:
      if (a1 < a4 || a1 >= a4 + v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v66 = a4 + v25;
      a4 += v25;
      goto LABEL_46;
    }

    v34 = *v32;
    v35 = *v36;
    goto LABEL_29;
  }

  v29 = v26 / v25 * v25;
  if (a4 < a2 || a2 + v29 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v38 = a4 + v29;
  if (v29 < 1)
  {
    goto LABEL_79;
  }

  v57 = v12 + 1;
  v39 = -v25;
  v40 = a4 + v29;
  v61 = a4;
  v62 = v12;
  v41 = v63;
  do
  {
    v42 = v12;
    v56 = v38;
    v43 = a2 + v39;
    v59 = a2;
    v60 = a2 + v39;
    while (1)
    {
      if (a2 <= a1)
      {
        v67 = a2;
        v38 = v56;
        goto LABEL_81;
      }

      v44 = a3;
      v58 = v38;
      v45 = v39;
      v46 = v40 + v39;
      sub_1E48EC724(v40 + v39, v41, type metadata accessor for WorldViewModel.Pin);
      v47 = v43;
      v48 = v42;
      sub_1E48EC724(v47, v42, type metadata accessor for WorldViewModel.Pin);
      v49 = *(v64 + 36);
      v50 = (v41 + v49);
      if ((*(v41 + v49 + 8) & 1) == 0)
      {
        v55 = (v42 + v49);
        v51 = v61;
        v54 = (v55[1] & 1) == 0 && *v50 < *v55;
        goto LABEL_67;
      }

      v51 = v61;
      if ((*(v57 + v49) & 1) == 0)
      {
        v54 = 1;
LABEL_67:
        v53 = v45;
        goto LABEL_68;
      }

      v52 = *v41 < *v48;
      v53 = v45;
      if (*v41 == *v48)
      {
        v52 = v41[1] < *v57;
      }

      v54 = v52;
LABEL_68:
      a3 += v53;
      sub_1E48EC6B4(v62, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v63, type metadata accessor for WorldViewModel.Pin);
      if (v54)
      {
        break;
      }

      v38 = v46;
      if (v44 < v40 || a3 >= v40)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v46;
        v42 = v62;
        v41 = v63;
      }

      else
      {
        v42 = v62;
        v41 = v63;
        if (v44 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v46;
        }
      }

      v40 = v38;
      v43 = v60;
      v39 = v45;
      a2 = v59;
      if (v46 <= v61)
      {
        goto LABEL_79;
      }
    }

    if (v44 < v59 || a3 >= v59)
    {
      swift_arrayInitWithTakeFrontToBack();
      v12 = v62;
      v41 = v63;
    }

    else
    {
      v12 = v62;
      v41 = v63;
      if (v44 != v59)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v38 = v58;
    v39 = v45;
    a2 = v60;
  }

  while (v40 > v51);
LABEL_79:
  v67 = a2;
LABEL_81:
  v65 = v38;
LABEL_82:
  sub_1E48E9FC8(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_1E48E9F28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E48E9FB4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1E48E9FC8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for WorldViewModel.Pin(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1E48EA0AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F890, &unk_1E49A0290);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1E48EA1B0(double a1, double a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(a1, a2);
  v7 = sub_1E499896C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E4957F3C();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v18 = *v17;
  v19 = v17[1];
  sub_1E48EA2E0(v9);
  result = v18;
  *v2 = v20;
  return result;
}

unint64_t sub_1E48EA2E0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1E499851C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1E499892C();
        if (v13 == 0.0)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = v13;
        }

        MEMORY[0x1E691C170](*&v15);
        if (v14 == 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = v14;
        }

        MEMORY[0x1E691C170](*&v16);
        v17 = sub_1E499896C() & v7;
        if (v2 >= v10)
        {
          if (v17 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v17 >= v10)
        {
          goto LABEL_17;
        }

        if (v2 >= v17)
        {
LABEL_17:
          v18 = *(v3 + 48);
          v19 = (v18 + 16 * v2);
          v20 = (v18 + 16 * v6);
          if (v2 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E48EA50C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WorldViewModel.Pin(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11, v13);
  v34 = &v31 - v15;
  v16 = a4 + 64;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = a1;
    v33 = a3;
    result = 0;
    v20 = 0;
    v31 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v35;
      a1 = *(v36 + 72);
      sub_1E48EC724(*(a4 + 56) + a1 * (v25 | (v20 << 6)), v35, type metadata accessor for WorldViewModel.Pin);
      v27 = v26;
      v28 = v34;
      sub_1E48EC64C(v27, v34, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC64C(v28, a2, type metadata accessor for WorldViewModel.Pin);
      if (v22 == v33)
      {
        a1 = v32;
        a3 = v33;
        goto LABEL_23;
      }

      a2 += a1;
      result = v22;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v16 + 8 * v24);
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v30 = v20 + 1;
    }

    else
    {
      v30 = v21;
    }

    v20 = v30 - 1;
    a3 = result;
    a1 = v32;
LABEL_23:
    v17 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1E48EA770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldViewModel.Pin(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = (&v71 - v13);
  MEMORY[0x1EEE9AC00](v12, v15);
  v77 = &v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F888, &qword_1E499D638);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v20, v23);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v75 = v4;
  v76 = &v71 - v25;
  v26 = 0;
  v72 = v22;
  v73 = a1;
  v29 = *(a1 + 64);
  v28 = a1 + 64;
  v27 = v29;
  v30 = 1 << *(v28 - 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v33 = (v30 + 63) >> 6;
  v74 = v5;
  while (v32)
  {
    v78 = (v32 - 1) & v32;
    v35 = __clz(__rbit64(v32)) | (v26 << 6);
LABEL_19:
    v40 = (*(v73 + 48) + 16 * v35);
    v41 = *v40;
    v42 = v40[1];
    v43 = *(v73 + 56) + *(v5 + 72) * v35;
    v44 = v77;
    sub_1E48EC724(v43, v77, type metadata accessor for WorldViewModel.Pin);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
    v46 = *(v45 + 48);
    v47 = v72;
    *v72 = v41;
    *(v47 + 1) = v42;
    v22 = v47;
    sub_1E48EC64C(v44, &v47[v46], type metadata accessor for WorldViewModel.Pin);
    (*(*(v45 - 8) + 56))(v22, 0, 1, v45);
LABEL_20:
    v48 = v76;
    sub_1E48C15C8(v22, v76, &qword_1ECF7F888, &qword_1E499D638);
    v49 = v48;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
    v34 = 1;
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      return v34;
    }

    v51 = *v49;
    v52 = v49[1];
    sub_1E48EC64C(v49 + *(v50 + 48), v14, type metadata accessor for WorldViewModel.Pin);
    v53 = sub_1E4948350(v51, v52);
    if ((v54 & 1) == 0)
    {
      goto LABEL_43;
    }

    v5 = v74;
    sub_1E48EC724(*(a2 + 56) + *(v74 + 72) * v53, v10, type metadata accessor for WorldViewModel.Pin);
    v55 = v75;
    if (*v10 != *v14)
    {
      goto LABEL_42;
    }

    if (v10[1] != v14[1])
    {
      goto LABEL_42;
    }

    if (*(v10 + 16) != *(v14 + 16))
    {
      goto LABEL_42;
    }

    if (*(v10 + 17) != *(v14 + 17))
    {
      goto LABEL_42;
    }

    if ((MEMORY[0x1E691A740](v10 + v75[7], v14 + v75[7]) & 1) == 0)
    {
      goto LABEL_42;
    }

    v56 = v55[8];
    v57 = v10 + v56;
    v58 = *(v10 + v56);
    v59 = (v14 + v56);
    if (v58 != *v59 || *(v57 + 1) != v59[1])
    {
      goto LABEL_42;
    }

    v60 = v55[9];
    v61 = (v10 + v60);
    v62 = *(v10 + v60 + 8);
    v63 = (v14 + v60);
    v64 = *(v14 + v60 + 8);
    if (v62)
    {
      if (!v64)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (*v61 != *v63)
      {
        LOBYTE(v64) = 1;
      }

      if (v64)
      {
LABEL_42:
        sub_1E48EC6B4(v10, type metadata accessor for WorldViewModel.Pin);
LABEL_43:
        sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
        return 0;
      }
    }

    v65 = v55[10];
    v66 = v10 + v65;
    v67 = *(v10 + v65 + 8);
    v68 = v14 + v65;
    v69 = *(v68 + 1);
    if (v67)
    {
      if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_1E499884C() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v69)
    {
      goto LABEL_42;
    }

    sub_1E48EC6B4(v10, type metadata accessor for WorldViewModel.Pin);
    result = sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
    v32 = v78;
  }

  if (v33 <= v26 + 1)
  {
    v36 = v26 + 1;
  }

  else
  {
    v36 = v33;
  }

  v37 = v36 - 1;
  while (1)
  {
    v38 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v38 >= v33)
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
      (*(*(v70 - 8) + 56))(v22, 1, 1, v70);
      v78 = 0;
      v26 = v37;
      goto LABEL_20;
    }

    v39 = *(v28 + 8 * v38);
    ++v26;
    if (v39)
    {
      v78 = (v39 - 1) & v39;
      v35 = __clz(__rbit64(v39)) | (v38 << 6);
      v26 = v38;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1E48EAD30(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v2 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v6 = type metadata accessor for WorldViewModel.Pin(0);
  if ((MEMORY[0x1E691A740](a1 + v6[7], a2 + v6[7]) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[8];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 != *v10 || v9 != v10[1])
  {
    return 0;
  }

  v12 = v6[9];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6[10];
  v18 = *(a1 + v17 + 8);
  v19 = *(a2 + v17 + 8);
  if (v18)
  {
    return v19 && (*(a1 + v17) == *(a2 + v17) && v18 == v19 || (sub_1E499884C() & 1) != 0);
  }

  return !v19;
}

BOOL sub_1E48EAE74(double *a1, double *a2)
{
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) + 36);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(v7 + 8);
  if (v6 != 1)
  {
    if (v7[1])
    {
      return 0;
    }

    v10 = *v5;
    v11 = *v7;
    return v10 < v11;
  }

  if ((v7[1] & 1) == 0)
  {
    return 1;
  }

  v9 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v10 = a1[1];
    v11 = a2[1];
    return v10 < v11;
  }

  return v9;
}

__n128 sub_1E48EAF00@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v38 - v9;
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || sub_1E499873C())
  {
    *&v41 = a1;
    v43.n128_u64[0] = v16;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE2BB458;
    v18 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v17 + v18, v10, &qword_1ECF7F008, &qword_1E499B170);
    v19 = *(v12 + 48);
    v20 = v19(v10, 1, v11);
    *&v42 = v12;
    if (v20 == 1)
    {
      v21 = v43.n128_u64[0];
      sub_1E4904BF4(v43.n128_i64[0]);
      v22 = v21;
      if (v19(v10, 1, v11) != 1)
      {
        sub_1E48C1338(v10, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      v22 = v43.n128_u64[0];
      (*(v12 + 32))(v43.n128_u64[0], v10, v11);
    }

    v23 = sub_1E499706C();
    v24 = sub_1E499830C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v40 = v11;
      v27 = v26;
      *&v45[0] = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1E48CA094(0x70614D646C726F57, 0xE800000000000000, v45);
      *(v25 + 12) = 2082;
      if (a2)
      {
        v28 = v41;
      }

      else
      {
        v28 = 0x3E4C4C554E3CLL;
      }

      if (a2)
      {
        v29 = a2;
      }

      else
      {
        v29 = 0xE600000000000000;
      }

      v30 = sub_1E48CA094(v28, v29, v45);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1E48B0000, v23, v24, "[%{public}s] Cannot map world type from %{public}s.", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v27, -1, -1);
      MEMORY[0x1E691CED0](v25, -1, -1);

      (*(v42 + 8))(v43.n128_u64[0], v40);
    }

    else
    {

      (*(v42 + 8))(v22, v11);
    }
  }

  if (qword_1ECF7EB78 != -1)
  {
    swift_once();
  }

  v45[2] = xmmword_1ECF81A08;
  v45[3] = *&qword_1ECF81A18;
  v45[6] = xmmword_1ECF81A48;
  *v46 = *&byte_1ECF81A58;
  *&v46[16] = xmmword_1ECF81A68;
  *&v46[32] = qword_1ECF81A78;
  v45[4] = xmmword_1ECF81A28;
  v45[5] = xmmword_1ECF81A38;
  v45[0] = xmmword_1ECF819E8;
  v45[1] = *&qword_1ECF819F8;
  v42 = *&v46[8];
  v43 = *&v46[24];
  v40 = xmmword_1ECF81A38;
  v41 = xmmword_1ECF81A48;
  v31 = byte_1ECF81A58;
  v32 = xmmword_1ECF81A28;
  v38 = xmmword_1ECF81A08;
  v39 = *&qword_1ECF81A18;
  v33 = *&qword_1ECF819F8;
  v34 = xmmword_1ECF819E8;
  sub_1E48CCDD4(v45, &v44);
  *a3 = v34;
  *(a3 + 16) = v33;
  v35 = v39;
  *(a3 + 32) = v38;
  *(a3 + 48) = v35;
  *(a3 + 64) = v32;
  v36 = v41;
  *(a3 + 80) = v40;
  *(a3 + 96) = v36;
  *(a3 + 112) = v31;
  result = v43;
  *(a3 + 120) = v42;
  *(a3 + 136) = result;
  return result;
}

uint64_t sub_1E48EB38C(uint64_t result)
{
  if (*(v1 + 176) == (result & 1))
  {
    *(v1 + 176) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }

  return result;
}

unint64_t sub_1E48EB508()
{
  result = qword_1ECF7F860;
  if (!qword_1ECF7F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F860);
  }

  return result;
}

unint64_t sub_1E48EB55C()
{
  result = qword_1ECF7F868;
  if (!qword_1ECF7F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F868);
  }

  return result;
}

unint64_t sub_1E48EB5B0()
{
  result = qword_1ECF7F878;
  if (!qword_1ECF7F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F878);
  }

  return result;
}

uint64_t sub_1E48EB604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48BFD3C;

  return sub_1E48E6778(a1, v4, v5, v7, v6);
}

uint64_t keypath_set_90Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1E48EB76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldViewModel.Pin(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48EB7D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask);
  *(v1 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask) = *(v0 + 24);
}

uint64_t sub_1E48EB830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorldViewModel.Pin(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F850, &qword_1E499D578);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v20 = &v26 - v19;
  v21 = *(v18 + 56);
  sub_1E48C12D0(a1, &v26 - v19, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C12D0(a2, &v20[v21], &qword_1ECF7F848, &qword_1E499D520);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_1E48C12D0(v20, v14, &qword_1ECF7F848, &qword_1E499D520);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      sub_1E48EC64C(&v20[v21], v9, type metadata accessor for WorldViewModel.Pin);
      v24 = sub_1E48EAD30(v14, v9);
      sub_1E48EC6B4(v9, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v20, &qword_1ECF7F848, &qword_1E499D520);
      v23 = !v24;
      return v23 & 1;
    }

    sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
    goto LABEL_6;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v20, &qword_1ECF7F850, &qword_1E499D578);
    v23 = 1;
    return v23 & 1;
  }

  sub_1E48C1338(v20, &qword_1ECF7F848, &qword_1E499D520);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1E48EBB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v6 = type metadata accessor for City();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  while (v14)
  {
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_1E48EC724(*(a1 + 48) + *(v7 + 72) * (v19 | (v18 << 6)), v11, type metadata accessor for City);
    sub_1E48DF2E4(v11, a2, v21);
    result = sub_1E48EC6B4(v11, type metadata accessor for City);
    if (v3)
    {
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
    }

    v14 = *(a1 + 56 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48EBCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v27 - v18;
  v21 = *(v20 + 56);
  sub_1E48C12D0(a1, &v27 - v18, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(a2, &v19[v21], &qword_1ECF809D0, &qword_1E499D6C0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_1E48C12D0(v19, v14, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v19[v21], v4);
      sub_1E48E7460(&qword_1ECF7F440, MEMORY[0x1E6969530]);
      v24 = sub_1E4997E9C();
      v25 = *(v5 + 8);
      v25(v9, v4);
      v25(v14, v4);
      sub_1E48C1338(v19, &qword_1ECF809D0, &qword_1E499D6C0);
      v23 = v24 ^ 1;
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v19, &qword_1ECF7F898, &qword_1E499D6F0);
    v23 = 1;
    return v23 & 1;
  }

  sub_1E48C1338(v19, &qword_1ECF809D0, &qword_1E499D6C0);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1E48EC048(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E48EC0CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E48EC184()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 264);
  v4 = *(v2 + 280);
  v17[4] = *(v2 + 248);
  v17[5] = v3;
  v5 = *(v2 + 232);
  v17[2] = *(v2 + 216);
  v17[3] = v5;
  v18 = *(v2 + 328);
  v6 = *(v2 + 312);
  v17[7] = *(v2 + 296);
  v17[8] = v6;
  v17[6] = v4;
  v7 = *(v2 + 200);
  v17[0] = *(v2 + 184);
  v17[1] = v7;
  v8 = *v1;
  *(v2 + 200) = *(v1 + 16);
  *(v2 + 184) = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = *(v1 + 64);
  *(v2 + 264) = *(v1 + 80);
  *(v2 + 248) = v11;
  *(v2 + 232) = v10;
  *(v2 + 216) = v9;
  v12 = *(v1 + 96);
  v13 = *(v1 + 112);
  v14 = *(v1 + 128);
  *(v2 + 328) = *(v1 + 144);
  *(v2 + 296) = v13;
  *(v2 + 312) = v14;
  *(v2 + 280) = v12;
  sub_1E48CCDD4(v1, v16);
  return sub_1E48EB6DC(v17);
}

uint64_t sub_1E48EC240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 177) = v2;
  return result;
}

__n128 sub_1E48EC294()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 144) = result;
  *(v1 + 160) = v3;
  return result;
}

uint64_t sub_1E48EC2B8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 128);
  *(v1 + 128) = *(v0 + 24);
}

uint64_t sub_1E48EC2F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 24);
}

uint64_t sub_1E48EC330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E48DDDB8(a1, v4, v5, v6);
}

uint64_t sub_1E48EC3E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48DE5D8(a1, v4, v5, v6);
}

uint64_t objectdestroy_148Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E48EC4D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E48DF70C(a1, v4, v5, v6);
}

uint64_t sub_1E48EC58C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48ECAA8;

  return sub_1E48E0444(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1E48EC64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48EC6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E48EC714(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1E48EC724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48EC78C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1E48EC7A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v3 = *(v2 + 8);
  v4 = *(v0 + 32);
  *v2 = *(v0 + 24);
  *(v2 + 8) = v4;
  *(v2 + 24) = v1;
}

uint64_t getEnumTagSinglePayload for WorldViewModelContext.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WorldViewModelContext.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1E48EC974()
{
  result = qword_1ECF7F8D8;
  if (!qword_1ECF7F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F8D8);
  }

  return result;
}

unint64_t sub_1E48EC9CC()
{
  result = qword_1ECF7F8E0;
  if (!qword_1ECF7F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F8E0);
  }

  return result;
}

unint64_t sub_1E48ECA24()
{
  result = qword_1ECF7F8E8;
  if (!qword_1ECF7F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F8E8);
  }

  return result;
}

void sub_1E48ECB88()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ComplicationsLabel();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_complicationViews];
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E49986EC())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E691BDE0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 superview];
      if (v7)
      {
        v8 = v7;

        v5 = v8;
      }

      else
      {
        [v0 addSubview_];
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  [v0 bounds];
  sub_1E48ECD8C(1, v9, v10);
}

void sub_1E48ECD8C(char a1, double a2, CGFloat a3)
{
  v4 = v3;
  v44 = OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_complicationViews;
  v7 = *(v3 + OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_complicationViews);
  if (v7 >> 62)
  {
LABEL_50:
    v8 = sub_1E49986EC();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v45 = MEMORY[0x1E69E7CC0];

    sub_1E4906F38(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v10 = 0;
    v9 = v45;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E691BDE0](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      [v11 sizeThatFits_];
      v14 = v13;
      v16 = v15;

      v18 = *(v45 + 16);
      v17 = *(v45 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E4906F38((v17 > 1), v18 + 1, 1);
      }

      ++v10;
      *(v45 + 16) = v18 + 1;
      v19 = v45 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v8 != v10);
  }

  v20 = *(v9 + 16);
  if (v20)
  {
    a3 = *(v9 + 40);
    v21 = v20 - 1;
    if (v21)
    {
      v22 = (v9 + 56);
      v23 = *(v9 + 40);
      do
      {
        v24 = *v22;
        v22 += 2;
        v25 = v24;
        if (v23 < v24)
        {
          a3 = v25;
          v23 = v25;
        }

        --v21;
      }

      while (v21);
    }
  }

  else
  {
    a3 = 0.0;
  }

  v7 = *(v4 + v44);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v41 = *(v4 + v44);
    }

    v26 = sub_1E49986EC();
  }

  else
  {
    v26 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = OBJC_IVAR____TtC11ClockPoster18ComplicationsLabel_contentsSpacing;

  a2 = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  if (v26)
  {
    v29 = 0;
    v30 = v9 + 32;
    while (2)
    {
      v31 = (v30 + 16 * v29);
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x1E691BDE0](v29, v7);
        }

        else
        {
          if (v29 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v32 = *(v7 + 8 * v29 + 32);
        }

        v33 = v32;
        v34 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v29 >= *(v9 + 16))
        {
          goto LABEL_48;
        }

        v28 = *v31;
        if (a1)
        {
          [v32 setFrame_];
        }

        v35 = *(v4 + v44);
        if (v35 >> 62)
        {
          if (v35 < 0)
          {
            v38 = *(v4 + v44);
          }

          v39 = sub_1E49986EC();
          v37 = v39 - 1;
          if (__OFSUB__(v39, 1))
          {
            goto LABEL_49;
          }
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v37 = v36 - 1;
          if (__OFSUB__(v36, 1))
          {
            goto LABEL_49;
          }
        }

        if (v29 != v37)
        {
          break;
        }

        ++v29;
        v31 += 2;
        if (v34 == v26)
        {
          goto LABEL_45;
        }
      }

      v46.origin.y = 0.0;
      v46.origin.x = v27;
      v46.size.width = v28;
      v46.size.height = a3;
      MaxX = CGRectGetMaxX(v46);

      v30 = v9 + 32;
      v27 = MaxX + *(v4 + v42);
      ++v29;
      if (v34 != v26)
      {
        continue;
      }

      break;
    }
  }

LABEL_45:

  v47.origin.x = v27;
  v47.origin.y = 0.0;
  v47.size.width = v28;
  v47.size.height = a3;
  CGRectGetMaxX(v47);
  v48.origin.x = v27;
  v48.origin.y = 0.0;
  v48.size.width = v28;
  v48.size.height = a3;
  CGRectGetMaxY(v48);
}

id sub_1E48ED13C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComplicationsLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ComplicationsLabelContent()
{
  result = qword_1ECF7F918;
  if (!qword_1ECF7F918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48ED28C()
{
  sub_1E48ED348(319, &qword_1ECF7F928);
  if (v0 <= 0x3F)
  {
    sub_1E48ED348(319, &qword_1ECF7F938);
    if (v1 <= 0x3F)
    {
      sub_1E48ED3C4();
      if (v2 <= 0x3F)
      {
        sub_1E48ED460();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1E48ED348(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1E48D9CFC(255, &qword_1ECF7F930, 0x1E69DC888);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1E48ED3C4()
{
  if (!qword_1ECF7F940)
  {
    sub_1E4996D8C();
    sub_1E4996F4C();
    sub_1E48D9CFC(255, &qword_1ECF7F930, 0x1E69DC888);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECF7F940);
    }
  }
}

void sub_1E48ED460()
{
  if (!qword_1ECF7F948)
  {
    sub_1E48D9CFC(255, &qword_1ECF7F930, 0x1E69DC888);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECF7F948);
    }
  }
}

uint64_t sub_1E48ED4DC(uint64_t a1, uint64_t a2)
{
  v85 = sub_1E4996F4C();
  v87 = *(v85 - 8);
  v4 = v87[8];
  MEMORY[0x1EEE9AC00](v85, v5);
  v82 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v86 = &v80 - v9;
  v10 = sub_1E4996D8C();
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ComplicationsLabelContent();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v80 - v26);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v80 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F950, &qword_1E499D988);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8, v34);
  v36 = &v80 - v35;
  v38 = (&v80 + *(v37 + 56) - v35);
  sub_1E48EDB7C(a1, &v80 - v35);
  sub_1E48EDB7C(a2, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1E48EDB7C(v36, v27);
      v66 = *v27;
      v65 = v27[1];
      v42 = v27[2];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = v38[2];
        if (v66 != *v38 || v65 != v38[1])
        {
LABEL_19:
          v68 = v38[1];
          v69 = sub_1E499884C();

          if ((v69 & 1) == 0)
          {

LABEL_36:
            sub_1E48EDC48(v36);
            goto LABEL_37;
          }

          goto LABEL_32;
        }

        v77 = v38[1];
LABEL_31:

LABEL_32:
        sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
        v63 = sub_1E499848C();

        goto LABEL_33;
      }
    }

    else
    {
      sub_1E48EDB7C(v36, v31);
      v41 = *v31;
      v40 = v31[1];
      v42 = v31[2];
      if (!swift_getEnumCaseMultiPayload())
      {
        v43 = v38[2];
        if (v41 != *v38 || v40 != v38[1])
        {
          goto LABEL_19;
        }

        v78 = v38[1];
        goto LABEL_31;
      }
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1E48EDB7C(v36, v23);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F958, qword_1E499D990);
    v46 = *(v45 + 48);
    v47 = *(v45 + 64);
    v48 = *&v23[v47];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v80 = *(v38 + v47);
      v81 = v48;
      v50 = v83;
      v49 = v84;
      (*(v83 + 4))(v14, v38, v84);
      v51 = v87[4];
      v52 = v85;
      v51(v86, &v23[v46], v85);
      v53 = v38 + v46;
      v54 = v82;
      v51(v82, v53, v52);
      v55 = sub_1E4996D2C();
      v56 = *(v50 + 1);
      v57 = v49;
      v56(v23, v49);
      if (v55)
      {
        v58 = v80;
        v59 = v52;
        v60 = MEMORY[0x1E691A740](v86, v54);
        v61 = v54;
        v62 = v81;
        if (v60)
        {
          sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
          v63 = sub_1E499848C();

          v83 = v56;
          v64 = v87[1];
          v64(v61, v59);
          v64(v86, v59);
          v83(v14, v57);
LABEL_33:
          sub_1E48EDC48(v36);
          return v63 & 1;
        }

        v74 = v87[1];
        v74(v61, v59);
        v75 = v86;
        v76 = v59;
      }

      else
      {

        v74 = v87[1];
        v74(v54, v52);
        v75 = v86;
        v76 = v52;
      }

      v74(v75, v76);
      v56(v14, v57);
      goto LABEL_36;
    }

    (v87[1])(&v23[v46], v85);
    (*(v83 + 1))(v23, v84);
LABEL_27:
    sub_1E48EDBE0(v36);
LABEL_37:
    v63 = 0;
    return v63 & 1;
  }

  sub_1E48EDB7C(v36, v19);
  v42 = *v19;
  v70 = v19[8];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_25:

    goto LABEL_27;
  }

  v71 = *v38;
  v72 = *(v38 + 8);
  sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
  v73 = sub_1E499848C();

  if ((v73 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_1E48EDC48(v36);
  v63 = v70 ^ v72 ^ 1;
  return v63 & 1;
}

uint64_t sub_1E48EDB7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComplicationsLabelContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48EDBE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F950, &qword_1E499D988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48EDC48(uint64_t a1)
{
  v2 = type metadata accessor for ComplicationsLabelContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_1E48EDD08(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *(v1 + 16);
  *(v3 + 64) = v5;
  swift_beginAccess();
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v1 + 24);

  os_unfair_lock_unlock(v5 + 4);
  swift_endAccess();
  *(v4 + 48) = v6;
  return sub_1E48EDDD0;
}

void sub_1E48EDDD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  swift_beginAccess();
  if (a2)
  {

    os_unfair_lock_lock(v5 + 4);
    swift_endAccess();
    v7 = *(v6 + 24);
    *(v6 + 24) = v4;

    swift_beginAccess();
    os_unfair_lock_unlock(v5 + 4);
    swift_endAccess();
    v8 = v3[6];
  }

  else
  {
    os_unfair_lock_lock(v5 + 4);
    swift_endAccess();
    v9 = *(v6 + 24);
    *(v6 + 24) = v4;

    swift_beginAccess();
    os_unfair_lock_unlock(v5 + 4);
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1E48EDED0()
{
  type metadata accessor for ClockFaceContextStore();
  swift_allocObject();
  result = sub_1E48EDF0C();
  qword_1ECF81908 = result;
  return result;
}

uint64_t sub_1E48EDF0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1E499708C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F970, &qword_1E499D9F0);
  v8 = swift_allocObject();
  type metadata accessor for CPUnfairLock();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v1 + 16) = v8;
  v11 = [objc_opt_self() standardUserDefaults];

  v12 = sub_1E4997EAC();

  v13 = [v11 dataForKey_];

  if (v13)
  {
    v14 = sub_1E4996B8C();
    v16 = v15;

    v17 = sub_1E4996AFC();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1E4996AEC();
    sub_1E48EF524();
    v26 = v14;
    sub_1E4996ADC();
    v20 = *(v27 + 16);
    if (v20)
    {
      v21 = v27 + 32;
      do
      {
        sub_1E48EFCBC(v21, &v27);
        v32[0] = v27;
        v22 = v30;
        v23 = v31;
        v24 = __swift_project_boxed_opaque_existential_1(v29, v30);
        sub_1E48EF5E0(v24, v32, &v28, v1, v22, v23);
        sub_1E48EFCF4(&v27);
        v21 += 152;
        --v20;
      }

      while (v20);
    }

    sub_1E48CD2C8(v26, v16);
  }

  return v1;
}

uint64_t sub_1E48EE450()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v2 + 4);
  swift_endAccess();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v3 + 4);
  swift_endAccess();

  v6 = 0;
  v7 = v4 + 64;
  v8 = 1 << *(v4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v4 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x1E69E7CC0];
  v32 = v11;
  while (v10)
  {
    v13 = v6;
LABEL_11:
    v33 = v13;
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v35 = *(*(v4 + 48) + v14);
    v15 = *(*(v4 + 56) + 8 * v14);
    v34 = (v10 - 1) & v10;
    v16 = 1 << *(v15 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v15 + 64);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    if (!v18)
    {
LABEL_16:
      if (v19 <= v20 + 1)
      {
        v22 = v20 + 1;
      }

      else
      {
        v22 = v19;
      }

      v23 = v22 - 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {
          v18 = 0;
          v37 = 0u;
          v38 = 0u;
          v20 = v23;
          memset(v36, 0, sizeof(v36));
          goto LABEL_25;
        }

        v18 = *(v15 + 64 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    while (1)
    {
      v21 = v20;
LABEL_24:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v21 << 6);
      sub_1E48C8304(*(v15 + 48) + 104 * v25, v41);
      sub_1E48CD210(*(v15 + 56) + 40 * v25, v40);
      v36[4] = v41[4];
      v36[5] = v41[5];
      LOBYTE(v36[6]) = v42;
      v36[0] = v41[0];
      v36[1] = v41[1];
      v36[2] = v41[2];
      v36[3] = v41[3];
      sub_1E48B7448(v40, &v36[6] + 8);
LABEL_25:
      v49[0] = v36[6];
      v49[1] = v37;
      v49[2] = v38;
      v45 = v36[2];
      v46 = v36[3];
      v47 = v36[4];
      v48 = v36[5];
      v43 = v36[0];
      v44 = v36[1];
      if (!v38)
      {
        break;
      }

      *(&v36[3] + 8) = v46;
      *(&v36[4] + 8) = v47;
      *(&v36[5] + 8) = v48;
      BYTE8(v36[6]) = v49[0];
      *(v36 + 8) = v43;
      *(&v36[1] + 8) = v44;
      *(&v36[2] + 8) = v45;
      sub_1E48B7448((v49 + 8), &v37);
      LOBYTE(v36[0]) = v35;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E490615C(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
      }

      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1E490615C((v26 > 1), v27 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v27 + 1;
      v28 = v12 + 152 * v27;
      *(v28 + 32) = v36[0];
      *(v28 + 48) = v36[1];
      *(v28 + 96) = v36[4];
      *(v28 + 112) = v36[5];
      *(v28 + 64) = v36[2];
      *(v28 + 80) = v36[3];
      v29 = v36[6];
      v30 = v37;
      v31 = v38;
      *(v28 + 176) = v39;
      *(v28 + 144) = v30;
      *(v28 + 160) = v31;
      *(v28 + 128) = v29;
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v6 = v33;
    v10 = v34;
    v11 = v32;
    v7 = v4 + 64;
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v12;
    }

    v10 = *(v7 + 8 * v13);
    ++v6;
    if (v10)
    {
      goto LABEL_11;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void (*sub_1E48EE7F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + 16);

  v4[5] = sub_1E48EDD08(v4);
  return sub_1E48EE87C;
}

void sub_1E48EE87C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_1E48EE8D0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E48EE92C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F9C0, &qword_1E499DB98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1E48F0198();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  v16 = a2;
  v24 = 2;
  sub_1E48F01EC();
  sub_1E499878C();
  v13 = v17;
  v25[0] = v17;
  v24 = 1;
  sub_1E48EB55C();
  sub_1E499878C();
  v26[3] = v20;
  v26[4] = v21;
  v26[5] = v22;
  v26[0] = v17;
  v26[1] = v18;
  v27 = v23;
  v26[2] = v19;
  if (v13 == 3)
  {
    v15 = sub_1E48CD1BC();
    v24 = 0;
    *(&v18 + 1) = &type metadata for SolarContext;
    *&v19 = v15;
    __swift_allocate_boxed_opaque_existential_0(&v17);
    sub_1E48F0294();
    sub_1E499878C();
    (*(v6 + 8))(v10, v5);
    sub_1E48B7448(&v17, &v28);
    sub_1E48EFCBC(v25, v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    return sub_1E48EFCF4(v25);
  }

  else
  {
    sub_1E48F0240();
    swift_allocError();
    swift_willThrow();
    (*(v6 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    return sub_1E48C8360(v26);
  }
}

uint64_t sub_1E48EEC30(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F9E8, &qword_1E499DBA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48F0198();
  sub_1E49989CC();
  v15[15] = *v3;
  v15[14] = 2;
  sub_1E48F0338();
  sub_1E49987DC();
  if (!v2)
  {
    v15[13] = 1;
    sub_1E48EB5B0();
    sub_1E49987DC();
    v12 = *(v3 + 144);
    __swift_project_boxed_opaque_existential_1((v3 + 112), *(v3 + 136));
    v15[12] = 0;
    v13 = *(v12 + 24);
    sub_1E49987DC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E48EEE08(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F980, &qword_1E499DB80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48EFE24();
  sub_1E49989CC();
  v12[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F990, &qword_1E499DB88);
  sub_1E48F00CC(&qword_1ECF7F998, sub_1E48EFE78);
  sub_1E49987DC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E48EEF94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1802465132;
  if (v2 != 1)
  {
    v3 = 1684957547;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x747865746E6F63;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1802465132;
  if (*a2 != 1)
  {
    v6 = 1684957547;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x747865746E6F63;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E499884C();
  }

  return v9 & 1;
}

uint64_t sub_1E48EF078()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E48EF10C()
{
  *v0;
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E48EF18C()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E48EF21C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E48EFECC();
  *a2 = result;
  return result;
}

void sub_1E48EF24C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1802465132;
  if (v2 != 1)
  {
    v4 = 1684957547;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x747865746E6F63;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1E48EF29C()
{
  v1 = 1802465132;
  if (*v0 != 1)
  {
    v1 = 1684957547;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747865746E6F63;
  }
}

uint64_t sub_1E48EF2E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E48EFECC();
  *a1 = result;
  return result;
}

uint64_t sub_1E48EF31C(uint64_t a1)
{
  v2 = sub_1E48F0198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E48EF358(uint64_t a1)
{
  v2 = sub_1E48F0198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E48EF3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7364726F636572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E499884C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E48EF464(uint64_t a1)
{
  v2 = sub_1E48EFE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E48EF4A0(uint64_t a1)
{
  v2 = sub_1E48EFE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E48EF4DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E48EFF18(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1E48EF524()
{
  result = qword_1ECF7F978;
  if (!qword_1ECF7F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F978);
  }

  return result;
}

uint64_t sub_1E48EF578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48EF5E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v15 = sub_1E499708C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v51[3] = a5;
  v51[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v19 = *a2;
  v20 = *(a4 + 16);
  v21 = *(v20 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v21 + 4);
  swift_endAccess();
  swift_beginAccess();
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v23 + 4);
  swift_endAccess();

  if (!*(v22 + 16))
  {

    goto LABEL_5;
  }

  sub_1E4948258(v19);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_5:
    v26 = *(a4 + 16);
    v27 = *(v26 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v27 + 4);
    swift_endAccess();
    swift_beginAccess();
    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v29 + 4);
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = v28;
    sub_1E4986350(MEMORY[0x1E69E7CC8], v19, isUniquelyReferenced_nonNull_native);
    v31 = *(v26 + 16);
    swift_beginAccess();
    os_unfair_lock_lock(v31 + 4);
    swift_endAccess();
    v32 = *(v26 + 24);
    *(v26 + 24) = v28;

    v33 = *(v26 + 16);
    swift_beginAccess();
    os_unfair_lock_unlock(v33 + 4);
    swift_endAccess();
  }

  v34 = sub_1E48EE7F8(v50);
  v35 = sub_1E48C9C9C(v49, v19);
  if (*v36)
  {
    sub_1E48C8304(a3, v48);
    sub_1E48CD210(v51, v47);
    sub_1E496F86C(v47, v48);
  }

  (v35)(v49, 0);
  (v34)(v50, 0);
  v37 = sub_1E4996B3C();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_1E4996B2C();
  sub_1E4996B0C();
  v48[0] = sub_1E48EE450();
  sub_1E48CD274();
  v40 = sub_1E4996B1C();
  v42 = v41;

  v43 = [objc_opt_self() standardUserDefaults];
  v44 = sub_1E4996B7C();

  v45 = sub_1E4997EAC();

  [v43 setObject:v44 forKey:v45];

  sub_1E48CD2C8(v40, v42);
  return __swift_destroy_boxed_opaque_existential_0Tm(v51);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E48EFD68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E48EFDB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E48EFE24()
{
  result = qword_1ECF7F988;
  if (!qword_1ECF7F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F988);
  }

  return result;
}

unint64_t sub_1E48EFE78()
{
  result = qword_1ECF7F9A0;
  if (!qword_1ECF7F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9A0);
  }

  return result;
}

uint64_t sub_1E48EFECC()
{
  v0 = sub_1E499873C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_1E48EFF18(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F9A8, &qword_1E499DB90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48EFE24();
  sub_1E49989BC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F990, &qword_1E499DB88);
    sub_1E48F00CC(&qword_1ECF7F9B0, sub_1E48F0144);
    sub_1E499878C();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v10;
}

uint64_t sub_1E48F00CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F990, &qword_1E499DB88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E48F0144()
{
  result = qword_1ECF7F9B8;
  if (!qword_1ECF7F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9B8);
  }

  return result;
}

unint64_t sub_1E48F0198()
{
  result = qword_1ECF7F9C8;
  if (!qword_1ECF7F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9C8);
  }

  return result;
}

unint64_t sub_1E48F01EC()
{
  result = qword_1ECF7F9D0;
  if (!qword_1ECF7F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9D0);
  }

  return result;
}

unint64_t sub_1E48F0240()
{
  result = qword_1ECF7F9D8;
  if (!qword_1ECF7F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9D8);
  }

  return result;
}

unint64_t sub_1E48F0294()
{
  result = qword_1ECF7F9E0;
  if (!qword_1ECF7F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9E0);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1E691CED0);
  }

  return result;
}

unint64_t sub_1E48F0338()
{
  result = qword_1ECF7F9F0;
  if (!qword_1ECF7F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9F0);
  }

  return result;
}

unint64_t sub_1E48F03C0()
{
  result = qword_1ECF7F9F8;
  if (!qword_1ECF7F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F9F8);
  }

  return result;
}

unint64_t sub_1E48F0418()
{
  result = qword_1ECF7FA00;
  if (!qword_1ECF7FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA00);
  }

  return result;
}

unint64_t sub_1E48F0470()
{
  result = qword_1ECF7FA08;
  if (!qword_1ECF7FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA08);
  }

  return result;
}

unint64_t sub_1E48F04C8()
{
  result = qword_1ECF7FA10;
  if (!qword_1ECF7FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA10);
  }

  return result;
}

unint64_t sub_1E48F0520()
{
  result = qword_1ECF7FA18;
  if (!qword_1ECF7FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA18);
  }

  return result;
}

unint64_t sub_1E48F0578()
{
  result = qword_1ECF7FA20;
  if (!qword_1ECF7FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA20);
  }

  return result;
}

unint64_t sub_1E48F05D0()
{
  result = qword_1ECF7FA28;
  if (!qword_1ECF7FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA28);
  }

  return result;
}

uint64_t sub_1E48F0638@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA80, &qword_1E499E090);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v54 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA88, &qword_1E499E098);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v53 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v49 - v24;
  v26 = *(v1 + 112);
  v27 = *(*v26 + 104);
  v28 = *(v26 + v27);
  swift_beginAccess();
  os_unfair_lock_lock(v28 + 4);
  swift_endAccess();
  v29 = *(*v26 + 120);
  v30 = *(v26 + v29);
  if ((v30 & 1) == 0)
  {
    *(v26 + v29) = 1;
  }

  v31 = v27;
  v32 = *(v26 + v27);
  swift_beginAccess();
  os_unfair_lock_unlock(v32 + 4);
  swift_endAccess();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v34 = *(*(v33 - 8) + 56);
  v34(v25, 1, 1, v33);
  if ((v30 & 1) == 0)
  {
    sub_1E48F0C2C();
    sub_1E48F0F44();
    v35 = type metadata accessor for Alarm();
    (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
    v34(v21, 0, 1, v33);
    sub_1E48F38C0(v21, v25);
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v37 = *(v36 - 8);
  v38 = v37;
  v51 = *(v37 + 56);
  v52 = v37 + 56;
  v51(v16, 1, 1, v36);
  v39 = v31;
  v40 = *(v26 + v31);
  swift_beginAccess();
  os_unfair_lock_lock(v40 + 4);
  v41 = swift_endAccess();
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  *(&v49 - 2) = v26;
  *(&v49 - 1) = v44;
  v49 = v44;
  (*(v55 + 104))(v54, *MEMORY[0x1E69E8650], v56, v43);
  v45 = v53;
  sub_1E49981BC();
  sub_1E48C1338(v16, &qword_1ECF7FA88, &qword_1E499E098);
  v51(v45, 0, 1, v36);
  sub_1E48F3850(v45, v16);
  v46 = *(v26 + v39);
  swift_beginAccess();
  os_unfair_lock_unlock(v46 + 4);
  swift_endAccess();
  v47 = v57;
  sub_1E48C12D0(v16, v57, &qword_1ECF7FA88, &qword_1E499E098);
  result = (*(v38 + 48))(v47, 1, v36);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v16, &qword_1ECF7FA88, &qword_1E499E098);
    (*(v38 + 32))(v50, v47, v36);
    return sub_1E48C1338(v49, &qword_1ECF81510, &unk_1E499E0A0);
  }

  return result;
}

uint64_t sub_1E48F0B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E4996D2C())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1E48F0BF0()
{
  type metadata accessor for AlarmDataProvider();
  v0 = swift_allocObject();
  result = sub_1E48F2BEC();
  qword_1ECF81910 = v0;
  return result;
}

uint64_t sub_1E48F0C2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = v25 - v3;
  v5 = *MEMORY[0x1E69B1FB0];
  sub_1E4997EEC();
  v6 = *MEMORY[0x1E69B1FC0];
  v25[1] = sub_1E4997EEC();
  v7 = *MEMORY[0x1E69B1FC8];
  v8 = sub_1E4997EEC();
  v25[2] = v9;
  v25[3] = v8;
  v10 = sub_1E4997EAC();
  v11 = sub_1E499816C();
  v12 = *(*(v11 - 8) + 56);
  v12(v4, 1, 1, v11);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v10;
  v14[5] = v13;
  v15 = v10;
  sub_1E498DD1C(0, 0, v4, &unk_1E499E0D8, v14);

  v16 = sub_1E4997EAC();
  v12(v4, 1, 1, v11);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v19 = v16;
  sub_1E498DD1C(0, 0, v4, &unk_1E499E0E0, v18);

  v20 = sub_1E4997EAC();
  v12(v4, 1, 1, v11);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  v22[5] = v21;
  v23 = v20;
  sub_1E498DD1C(0, 0, v4, &unk_1E499E0E8, v22);
}

void sub_1E48F0F44()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    v1 = [*(v0 + 120) nextAlarm];
    if (v1)
    {
      v2 = v1;
      *(v0 + 128) = 1;
      v3 = swift_allocObject();
      swift_weakInit();
      v6[4] = sub_1E48F3930;
      v6[5] = v3;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1E48F1B14;
      v6[3] = &block_descriptor_2;
      v4 = _Block_copy(v6);

      v5 = [v2 addCompletionBlock_];
      _Block_release(v4);
    }
  }
}

uint64_t sub_1E48F1060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA90, &unk_1E499E0F0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v7 = sub_1E499840C();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E48F1158, 0, 0);
}

uint64_t sub_1E48F1158()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = [objc_opt_self() defaultCenter];
  sub_1E499841C();

  sub_1E49983FC();
  swift_beginAccess();
  v5 = sub_1E48F3BB8(&qword_1ECF7FA98, 255, MEMORY[0x1E6969EF8]);
  v6 = *(MEMORY[0x1E69E85A8] + 4);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1E48F129C;
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];

  return MEMORY[0x1EEE6D8C8](v9, v10, v5);
}

uint64_t sub_1E48F129C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1E48F1518;
  }

  else
  {
    v3 = sub_1E48F13B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E48F13CC()
{
  v1 = v0[14];
  v2 = sub_1E49968EC();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
LABEL_8:
    v6 = v0[17];
    v7 = v0[14];

    v8 = v0[1];

    return v8();
  }

  v3 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
    v5 = v0[14];
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_1E48C1338(v5, &qword_1ECF7FA90, &unk_1E499E0F0);
    goto LABEL_8;
  }

  return MEMORY[0x1EEE6DFA0](sub_1E48F15A4, Strong, 0);
}

uint64_t sub_1E48F1518()
{
  *(v0 + 88) = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1E48F15A4()
{
  v1 = v0[20];
  if ((*(v1 + 128) & 1) != 0 || (v2 = [*(v1 + 120) nextAlarm]) == 0)
  {
    v9 = sub_1E48F3C10;
  }

  else
  {
    v3 = v2;
    v4 = v0[20];
    *(v1 + 128) = 1;
    v5 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_1E48F3C14;
    v0[7] = v5;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1E48F1B14;
    v0[5] = &block_descriptor_55;
    v6 = _Block_copy(v0 + 2);
    v7 = v0[7];

    v8 = [v3 addCompletionBlock_];
    _Block_release(v6);

    v9 = sub_1E48F171C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E48F171C()
{
  v1 = v0[20];
  v2 = v0[14];

  sub_1E48C1338(v2, &qword_1ECF7FA90, &unk_1E499E0F0);
  v3 = sub_1E48F3BB8(&qword_1ECF7FA98, 255, MEMORY[0x1E6969EF8]);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1E48F129C;
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  return MEMORY[0x1EEE6D8C8](v7, v8, v3);
}

uint64_t sub_1E48F181C(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_1E499816C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = a1;
    v12[6] = a2;
    v13 = a1;
    v14 = a2;
    sub_1E498DD1C(0, 0, v8, &unk_1E499E0B8, v12);
  }

  return result;
}

uint64_t sub_1E48F1968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E48F198C, a4, 0);
}

uint64_t sub_1E48F198C()
{
  v1 = *(v0 + 16);
  sub_1E48F19F0(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E48F19F0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v15 - v8;
  *(v2 + 128) = 0;
  sub_1E48F1BA0(a1, a2, &v15 - v8);
  v10 = *(v2 + 112);
  v11 = *(*v10 + 104);
  v12 = *(v10 + v11);
  swift_beginAccess();
  os_unfair_lock_lock(v12 + 4);
  swift_endAccess();
  sub_1E49759A8(v9);
  v13 = *(v10 + v11);
  swift_beginAccess();
  os_unfair_lock_unlock(v13 + 4);
  swift_endAccess();
  return sub_1E48C1338(v9, &qword_1ECF7F728, &unk_1E499CAB0);
}

void sub_1E48F1B14(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1E48F1BA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a1;
  v142 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v119 - v7;
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  v140 = v9;
  v141 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v139 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4996ECC();
  v138 = *(v14 - 8);
  v15 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4996EDC();
  v136 = *(v19 - 8);
  v20 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v119 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v119 - v35;
  v37 = sub_1E4996D8C();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37, *(v37 - 8));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v119 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  if (a2)
  {
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v55 = qword_1EE2BB458;
    v56 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v55 + v56, v8, &qword_1ECF7F008, &qword_1E499B170);
    v58 = v140;
    v57 = v141;
    v59 = *(v141 + 6);
    v60 = v59(v8, 1, v140);
    v61 = v139;
    if (v60 == 1)
    {
      sub_1E4904BF4(v139);
      if (v59(v8, 1, v58) != 1)
      {
        sub_1E48C1338(v8, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v57 + 32))(v139, v8, v58);
    }

    v85 = a2;
    v86 = sub_1E499706C();
    v87 = sub_1E499830C();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v143 = v89;
      *v88 = 136446210;
      swift_getErrorValue();
      v90 = sub_1E49988BC();
      v92 = sub_1E48CA094(v90, v91, &v143);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_1E48B0000, v86, v87, "Error getting alarm data., %{public}s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v89);
      MEMORY[0x1E691CED0](v89, -1, -1);
      MEMORY[0x1E691CED0](v88, -1, -1);
    }

    (*(v57 + 8))(v61, v58);
LABEL_18:
    v93 = type metadata accessor for Alarm();
    return (*(*(v93 - 8) + 56))(v142, 1, 1, v93);
  }

  v132 = v28;
  v133 = v32;
  v139 = v23;
  v140 = v19;
  v135 = v14;
  v141 = v36;
  v62 = v138;
  if (!v137)
  {
    goto LABEL_20;
  }

  v129 = v50;
  v128 = v54;
  v130 = v53;
  v127 = v52;
  v134 = &v119 - v51;
  v131 = v49;
  swift_unknownObjectRetain();
  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (!v63 || (v122 = v63, (v64 = [v63 nextTrigger]) == 0))
  {
    swift_unknownObjectRelease();
LABEL_20:
    v95 = type metadata accessor for Alarm();
    v96 = *(*(v95 - 8) + 56);
    v97 = v95;
    v98 = v142;

    return v96(v98, 1, 1, v97);
  }

  v65 = v64;
  v66 = [v64 triggerDate];

  sub_1E4996D3C();
  v67 = v129;
  v68 = *(v129 + 32);
  v69 = v46;
  v70 = v131;
  v124 = v129 + 32;
  v123 = v68;
  v68(v134, v69, v131);
  v71 = v139;
  sub_1E4996EAC();
  v72 = v62;
  v73 = *(v62 + 104);
  v74 = v18;
  v121 = *MEMORY[0x1E6969A48];
  v75 = v135;
  v120 = v73;
  v73(v18);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v76 = v130;
  sub_1E493BA48(v130);
  v77 = v141;
  sub_1E4996E9C();
  v78 = *(v67 + 8);
  v126 = v67 + 8;
  v125 = v78;
  v78(v76, v70);
  v79 = *(v72 + 8);
  v138 = v72 + 8;
  v119 = v79;
  v79(v74, v75);
  v80 = v136 + 8;
  v81 = *(v136 + 8);
  v81(v71, v140);
  v82 = v133;
  sub_1E48C12D0(v77, v133, &qword_1ECF809D0, &qword_1E499D6C0);
  v83 = *(v67 + 48);
  if (v83(v82, 1, v70) == 1)
  {
    v136 = v80;
    sub_1E48C1338(v82, &qword_1ECF809D0, &qword_1E499D6C0);
    v84 = v123;
    goto LABEL_26;
  }

  v99 = v128;
  v100 = v123;
  v123(v128, v82, v70);
  v101 = v134;
  if ((sub_1E4996D0C() & 1) == 0)
  {
    v136 = v80;
    v125(v99, v70);
    v84 = v100;
LABEL_26:
    v107 = v139;
    sub_1E4996EAC();
    v108 = v74;
    v109 = v74;
    v110 = v135;
    v120(v108, v121, v135);
    v111 = v132;
    v112 = v134;
    sub_1E4996E9C();
    v119(v109, v110);
    v81(v107, v140);
    v113 = v131;
    if (v83(v111, 1, v131) == 1)
    {
      swift_unknownObjectRelease();
      sub_1E48C1338(v141, &qword_1ECF809D0, &qword_1E499D6C0);
      v125(v112, v113);
      sub_1E48C1338(v111, &qword_1ECF809D0, &qword_1E499D6C0);
    }

    else
    {
      v114 = v127;
      v84(v127, v111, v113);
      v115 = v141;
      if (qword_1ECF7EB58 != -1)
      {
        swift_once();
      }

      v116 = swift_allocObject();
      swift_weakInit();
      v117 = swift_allocObject();
      *(v117 + 16) = &unk_1E499E0C8;
      *(v117 + 24) = v116;

      swift_retain_n();
      sub_1E49698BC(v114, sub_1E48F3AA8, v117);

      swift_unknownObjectRelease();

      v118 = v125;
      v125(v114, v113);
      sub_1E48C1338(v115, &qword_1ECF809D0, &qword_1E499D6C0);
      v118(v134, v113);
    }

    goto LABEL_18;
  }

  v102 = v130;
  (*(v129 + 16))(v130, v101, v70);
  v103 = [v122 isSleepAlarm];
  swift_unknownObjectRelease();
  v104 = v125;
  v125(v99, v70);
  sub_1E48C1338(v141, &qword_1ECF809D0, &qword_1E499D6C0);
  v104(v101, v70);
  v105 = v142;
  v100(v142, v102, v70);
  v106 = type metadata accessor for Alarm();
  *(v105 + *(v106 + 20)) = v103;
  return (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
}

uint64_t sub_1E48F2880()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E48F2938, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E48F2938()
{
  v1 = v0[12];
  if (*(v1 + 128))
  {
    v2 = v0[12];
  }

  else
  {
    v3 = [*(v1 + 120) nextAlarm];
    v4 = v0[12];
    if (v3)
    {
      v5 = v3;
      *(v1 + 128) = 1;
      v6 = swift_allocObject();
      swift_weakInit();
      v0[6] = sub_1E48F3C14;
      v0[7] = v6;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1E48F1B14;
      v0[5] = &block_descriptor_32;
      v7 = _Block_copy(v0 + 2);
      v8 = v0[7];

      v9 = [v5 addCompletionBlock_];
      _Block_release(v7);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E48F2AA0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for Alarm()
{
  result = qword_1ECF7FA30;
  if (!qword_1ECF7FA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E48F2B78()
{
  result = sub_1E4996D8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E48F2BEC()
{
  swift_defaultActor_initialize();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FAA0, &qword_1E499E100);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = *(*v4 + 96);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = *(*v4 + 104);
  type metadata accessor for CPUnfairLock();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v4 + v7) = v8;
  *(v4 + *(*v4 + 112)) = MEMORY[0x1E69E7CC8];
  *(v4 + *(*v4 + 120)) = 0;
  *(v0 + 112) = v4;
  *(v0 + 120) = [objc_allocWithZone(MEMORY[0x1E69B1FE0]) init];
  *(v0 + 128) = 0;
  return v0;
}

uint64_t sub_1E48F2D50(uint64_t a1, uint64_t a2)
{
  result = sub_1E48F3BB8(&qword_1ECF7FA40, a2, type metadata accessor for AlarmDataProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E48F2DA8@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = sub_1E49978AC();
  v92 = *(v1 - 8);
  v93 = v1;
  v2 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v90 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA48, &unk_1E499DF90);
  v91 = *(v89 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v89, v6);
  v88 = &v69 - v7;
  v84 = sub_1E49969DC();
  v82 = *(v84 - 8);
  v8 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84, v9);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA50, &qword_1E49A1FA0);
  v81 = *(v79 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79, v12);
  v78 = &v69 - v13;
  v14 = sub_1E4996ABC();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v83 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v77 = &v69 - v20;
  v75 = sub_1E4996CBC();
  v76 = *(v75 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75, v22);
  v74 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E4996C5C();
  v72 = *(v73 - 8);
  v24 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73, v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E4996C2C();
  v28 = *(v71 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v71, v30);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E4996C3C();
  v33 = *(v70 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v70, v35);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E4996CAC();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v44 = &v69 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v42, v45);
  v48 = &v69 - v47;
  v50 = MEMORY[0x1EEE9AC00](v46, v49);
  v52 = &v69 - v51;
  MEMORY[0x1E691A0B0](v50);
  sub_1E4996C1C();
  sub_1E4996C0C();
  (*(v28 + 8))(v32, v71);
  sub_1E4996BDC();
  (*(v33 + 8))(v37, v70);
  v53 = *(v39 + 8);
  v53(v44, v38);
  sub_1E4996C4C();
  sub_1E4996C8C();
  (*(v72 + 8))(v27, v73);
  v53(v48, v38);
  v54 = v74;
  sub_1E4996BBC();
  v53(v52, v38);
  sub_1E48F3BB8(&qword_1ECF7FA58, 255, MEMORY[0x1E6969350]);
  v55 = v75;
  sub_1E4996D6C();
  (*(v76 + 8))(v54, v55);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_1E48F36FC();
  v56 = v78;
  sub_1E4996A8C();

  v57 = v82;
  v58 = v80;
  v59 = v84;
  (*(v82 + 104))(v80, *MEMORY[0x1E6968560], v84);
  v60 = v77;
  v61 = v79;
  sub_1E4996A9C();
  (*(v57 + 8))(v58, v59);
  (*(v81 + 8))(v56, v61);
  v94 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1E48F37AC();
  v62 = v88;
  sub_1E4996A8C();

  v63 = v90;
  sub_1E499789C();
  v64 = v83;
  v65 = v89;
  sub_1E4996A9C();
  (*(v92 + 8))(v63, v93);
  (*(v91 + 8))(v62, v65);
  sub_1E4996A2C();
  v66 = v87;
  v67 = *(v86 + 8);
  v67(v64, v87);
  return (v67)(v60, v66);
}

uint64_t sub_1E48F3668(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA78, &qword_1E499E088);
  return sub_1E4997E6C();
}

void sub_1E48F36B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E48F36FC();
  sub_1E4996B4C();
  __break(1u);
}

unint64_t sub_1E48F36FC()
{
  result = qword_1ECF7FA60;
  if (!qword_1ECF7FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA60);
  }

  return result;
}

uint64_t sub_1E48F3750(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_1E4997E9C() & 1;
}

unint64_t sub_1E48F37AC()
{
  result = qword_1ECF7FA68;
  if (!qword_1ECF7FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FA68);
  }

  return result;
}

uint64_t keypath_hashTm(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1E4997E6C();
}

uint64_t sub_1E48F3850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA88, &qword_1E499E098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48F38C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E48F3950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E48ECAA8;

  return sub_1E48F1968(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E48F3A18()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E48BFD3C;

  return sub_1E48F2860(v0);
}

uint64_t sub_1E48F3AB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E48ECAA8;

  return sub_1E48F1060(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_35Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E48F3BB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E48F3C44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1E48F3C8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E48F3D04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E499780C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = sub_1E499758C();
  v45 = *(v46 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46, v11);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E499757C();
  sub_1E4961B10(*(v2 + 32), *(v2 + 40));
  sub_1E499752C();
  if (sub_1E499751C())
  {
    v14 = *(v2 + 8);
    v43 = *v2;
    v42 = v14;
    v41 = *(v2 + 16);
    v44 = *(v2 + 24);
    sub_1E499784C();
    sub_1E49974CC();
    v15 = sub_1E49977DC();
    (*(v5 + 8))(v9, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FAA8, &qword_1E499E240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E499B670;
    v17 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    type metadata accessor for CTFont(0);
    *(inited + 64) = v18;
    *(inited + 40) = v15;
    v19 = v17;
    v20 = v15;
    sub_1E494984C(inited);
    swift_setDeallocating();
    sub_1E48F41A8(inited + 32);
    v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v22 = sub_1E4997EAC();

    type metadata accessor for Key(0);
    sub_1E48CE130();
    v23 = sub_1E4997E2C();

    v24 = [v21 initWithString:v22 attributes:v23];

    [v24 boundingRectWithSize:8 options:0 context:{1.79769313e308, 1.79769313e308}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    (*(v45 + 8))(v13, v46);
    v51.origin.x = v26;
    v51.origin.y = v28;
    v51.size.width = v30;
    v51.size.height = v32;
    v33 = -CGRectGetMinX(v51);
    v52.origin.x = v26;
    v52.origin.y = v28;
    v52.size.width = v30;
    v52.size.height = v32;
    MinY = CGRectGetMinY(v52);
    v47 = v41;
    v35 = v43;
    v36 = v42;
    LOBYTE(v17) = v41;
    sub_1E48C14F4(v43, v42, v41);
    v37 = v44;

    v53.origin.x = v26;
    v53.origin.y = v28;
    v53.size.width = v30;
    v53.size.height = v32;
    CGRectGetWidth(v53);
    v54.origin.x = v26;
    v54.origin.y = v28;
    v54.size.width = v30;
    v54.size.height = v32;
    CGRectGetHeight(v54);
    sub_1E499763C();
    sub_1E499759C();
    result = sub_1E499722C();
    *a1 = v35;
    *(a1 + 8) = v36;
    *(a1 + 16) = v17;
    *(a1 + 24) = v37;
    *(a1 + 32) = 257;
    *(a1 + 40) = v33;
    *(a1 + 48) = MinY;
    v39 = v49;
    *(a1 + 56) = v48;
    *(a1 + 72) = v39;
    *(a1 + 88) = v50;
  }

  else
  {
    result = sub_1E49986DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E48F41A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FAB0, &qword_1E499E248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E48F4210()
{
  result = qword_1ECF7FAB8;
  if (!qword_1ECF7FAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FAC0, &qword_1E499E250);
    sub_1E48F429C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FAB8);
  }

  return result;
}

unint64_t sub_1E48F429C()
{
  result = qword_1ECF7FAC8;
  if (!qword_1ECF7FAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FAD0, &qword_1E499E258);
    sub_1E48F4328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FAC8);
  }

  return result;
}

unint64_t sub_1E48F4328()
{
  result = qword_1ECF7FAD8;
  if (!qword_1ECF7FAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FAE0, &unk_1E499E260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FAD8);
  }

  return result;
}

uint64_t sub_1E48F43AC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FBA8, &qword_1E499E468);
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v47 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FBB0, &unk_1E499E470);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v44 - v16;
  v18 = sub_1E4996D8C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream);
  v25 = *(v24 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v25 + 4);
  swift_endAccess();
  v26 = *(v24 + 64);
  if ((v26 & 1) == 0)
  {
    *(v24 + 64) = 1;
  }

  v27 = *(v24 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v27 + 4);
  swift_endAccess();
  v51 = xmmword_1E499E270;
  v52 = 0;
  v53 = 0;
  if ((v26 & 1) == 0)
  {
    sub_1E48F55E0();
    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493BA48(v23);
    v28 = sub_1E498BDD4();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    (*(v19 + 8))(v23, v18);
    *&v51 = v28;
    *(&v51 + 1) = v30;
    v52 = v32;
    v53 = v34;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8C8, &qword_1E499D7E0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v37(v17, 1, 1, v35);
  v38 = *(v24 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v38 + 4);
  v39 = swift_endAccess();
  v46 = &v44;
  MEMORY[0x1EEE9AC00](v39, v40);
  *(&v44 - 2) = v24;
  *(&v44 - 1) = &v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FBB8, &qword_1E499E480);
  (*(v48 + 104))(v47, *MEMORY[0x1E69E8650], v49);
  sub_1E49981BC();
  sub_1E48C1338(v17, &qword_1ECF7FBB0, &unk_1E499E470);
  v37(v13, 0, 1, v35);
  sub_1E48C15C8(v13, v17, &qword_1ECF7FBB0, &unk_1E499E470);
  v41 = *(v24 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v41 + 4);
  swift_endAccess();
  v42 = v50;
  sub_1E48C12D0(v17, v50, &qword_1ECF7FBB0, &unk_1E499E470);
  result = (*(v36 + 48))(v42, 1, v35);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v17, &qword_1ECF7FBB0, &unk_1E499E470);
    (*(v36 + 32))(v45, v42, v35);
    return sub_1E48EC78C(v51, *(&v51 + 1));
  }

  return result;
}

uint64_t sub_1E48F48D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E499B670;
  v3 = type metadata accessor for SolarPosition(0);
  v4 = *(v1 + *(v3 + 20));
  v5 = MEMORY[0x1E69E6448];
  v6 = MEMORY[0x1E69E64A8];
  *(v2 + 56) = MEMORY[0x1E69E6448];
  *(v2 + 64) = v6;
  *(v2 + 32) = v4;
  v7 = sub_1E4997EFC();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E499B670;
  v11 = *(v1 + *(v3 + 24));
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v11 * 100.0;
  v12 = sub_1E4997EFC();
  v14 = v13;
  result = sub_1E4901B98();
  if (result > 1u)
  {
    if (result == 2)
    {
      v16 = 0.25;
    }

    else
    {
      v16 = 0.5;
    }

    if (result == 2)
    {
      v17 = 180.0;
    }

    else
    {
      v17 = 270.0;
    }
  }

  else
  {
    v16 = 0.0;
    if (result)
    {
      goto LABEL_11;
    }

    v16 = 0.75;
    v17 = 360.0;
  }

  if (v16 > (v17 / 360.0))
  {
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  result = sub_1E4901B98();
  v18 = 0.25;
  if (result > 1u)
  {
    v20 = 180.0;
    v19 = 0.5;
    if (result == 2)
    {
      v19 = 0.25;
    }

    else
    {
      v20 = 270.0;
    }

LABEL_17:
    v18 = v20 / 360.0;
    if (v19 <= (v20 / 360.0))
    {
      goto LABEL_18;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
    v19 = 0.75;
    v20 = 360.0;
    goto LABEL_17;
  }

LABEL_18:
  result = sub_1E4901B98();
  if (result > 1u)
  {
    v21 = 0.25;
    v22 = 180.0;
    if (result != 2)
    {
      v21 = 0.5;
      v22 = 270.0;
    }
  }

  else
  {
    v21 = 0.0;
    if (result)
    {
LABEL_24:
      v23 = (v11 - v16) / (v18 - v21);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1E499B670;
      *(v24 + 56) = v5;
      *(v24 + 64) = v6;
      *(v24 + 32) = v23 * 100.0;
      v25 = sub_1E4997EFC();
      v27 = v26;
      BYTE8(v28) = 0;
      sub_1E49985BC();
      MEMORY[0x1E691B7A0](980839493, 0xE400000000000000);
      MEMORY[0x1E691B7A0](v7, v9);

      MEMORY[0x1E691B7A0](0x656C6379430AB0C2, 0xA90000000000003ALL);
      MEMORY[0x1E691B7A0](v12, v14);

      MEMORY[0x1E691B7A0](0x3A65736168500A25, 0xE90000000000003CLL);
      *&v28 = sub_1E4901B98();
      sub_1E49986CC();
      MEMORY[0x1E691B7A0](44, 0xE100000000000000);
      MEMORY[0x1E691B7A0](v25, v27);

      MEMORY[0x1E691B7A0](15909, 0xE200000000000000);
      return *(&v28 + 1);
    }

    v21 = 0.75;
    v22 = 360.0;
  }

  if (v21 <= (v22 / 360.0))
  {
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E48F4D00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1E49985BC();

  v22 = 0xD000000000000010;
  v23 = 0x80000001E49A7470;
  v11 = sub_1E48F48D8();
  MEMORY[0x1E691B7A0](v11);

  MEMORY[0x1E691B7A0](10, 0xE100000000000000);
  v12 = *(type metadata accessor for CurrentLocationSolarPosition(0) + 20);
  sub_1E48C12D0(v0 + v12, v10, &qword_1ECF7F8A0, &unk_1E499D7B0);
  v13 = type metadata accessor for CurrentLocation(0);
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v10, 1, v13);
  sub_1E48C1338(v10, &qword_1ECF7F8A0, &unk_1E499D7B0);
  if (v15 == 1)
  {
    v16 = 0xEE003E6C696E3C3ALL;
    v17 = 0x6E6F697461636F4CLL;
LABEL_5:
    MEMORY[0x1E691B7A0](v17, v16);

    return v22;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1E48C12D0(v1 + v12, v6, &qword_1ECF7F8A0, &unk_1E499D7B0);
  result = v14(v6, 1, v13);
  if (result != 1)
  {
    v19 = sub_1E497BFB4();
    MEMORY[0x1E691B7A0](v19);

    sub_1E48F7E28(v6, type metadata accessor for CurrentLocation);
    v17 = v20;
    v16 = v21;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48F4F64()
{
  v0 = type metadata accessor for SolarDataProvider(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1E48F7544();
  qword_1ECF81918 = v3;
  return result;
}

uint64_t sub_1E48F4FA4@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB60, &qword_1E499E3E8);
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v60 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB68, &unk_1E499E3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v59 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v58 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v54 - v29;
  v31 = *(v1 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream);
  v32 = *(*v31 + 104);
  v33 = *(v31 + v32);
  swift_beginAccess();
  os_unfair_lock_lock(v33 + 4);
  swift_endAccess();
  v34 = *(*v31 + 120);
  v35 = *(v31 + v34);
  if ((v35 & 1) == 0)
  {
    *(v31 + v34) = 1;
  }

  v63 = v10;
  v36 = v32;
  v37 = *(v31 + v32);
  swift_beginAccess();
  os_unfair_lock_unlock(v37 + 4);
  swift_endAccess();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v39 = *(*(v38 - 8) + 56);
  v64 = v38;
  v39(v30, 1, 1);
  if ((v35 & 1) == 0)
  {
    v40 = sub_1E499816C();
    (*(*(v40 - 8) + 56))(v21, 1, 1, v40);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v41;
    sub_1E498DD1C(0, 0, v21, &unk_1E499E420, v42);

    sub_1E48F55E0();
    sub_1E48F571C(v26);
    (v39)(v26, 0, 1, v64);
    sub_1E48F7C38(v26, v30);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB78, &qword_1E499E410);
  v44 = *(v43 - 8);
  v57 = *(v44 + 56);
  v45 = v58;
  v57(v58, 1, 1, v43);
  v46 = *(v31 + v36);
  swift_beginAccess();
  os_unfair_lock_lock(v46 + 4);
  v47 = swift_endAccess();
  v49 = MEMORY[0x1EEE9AC00](v47, v48);
  *(&v54 - 2) = v31;
  *(&v54 - 1) = v30;
  v55 = v30;
  (*(v61 + 104))(v60, *MEMORY[0x1E69E8650], v62, v49);
  v50 = v59;
  sub_1E49981BC();
  sub_1E48C1338(v45, &qword_1ECF7FB68, &unk_1E499E3F0);
  v57(v50, 0, 1, v43);
  sub_1E48C15C8(v50, v45, &qword_1ECF7FB68, &unk_1E499E3F0);
  v51 = *(v31 + v36);
  swift_beginAccess();
  os_unfair_lock_unlock(v51 + 4);
  swift_endAccess();
  v52 = v63;
  sub_1E48C12D0(v45, v63, &qword_1ECF7FB68, &unk_1E499E3F0);
  result = (*(v44 + 48))(v52, 1, v43);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v45, &qword_1ECF7FB68, &unk_1E499E3F0);
    (*(v44 + 32))(v56, v52, v43);
    return sub_1E48C1338(v55, &qword_1ECF7FB70, &unk_1E499E400);
  }

  return result;
}

void sub_1E48F55E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarMovementsUpdateTask;
  if (!*(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarMovementsUpdateTask))
  {
    v7 = sub_1E499816C();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    v10 = sub_1E49690B8(0, 0, v5, &unk_1E499E438, v9);
    v11 = *(v0 + v6);
    *(v0 + v6) = v10;
  }
}

uint64_t sub_1E48F571C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v48 = &v48 - v5;
  v6 = sub_1E4996D8C();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SolarPosition(0);
  v11 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v48 - v18;
  v20 = type metadata accessor for CurrentLocation(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = (&v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocation;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v26, v19, &qword_1ECF7F8A0, &unk_1E499D7B0);
  v49 = v21;
  v50 = v20;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1E48C1338(v19, &qword_1ECF7F8A0, &unk_1E499D7B0);
    v27 = type metadata accessor for CurrentLocationSolarPosition(0);
    return (*(*(v27 - 8) + 56))(v54, 1, 1, v27);
  }

  else
  {
    sub_1E48F7D0C(v19, v25, type metadata accessor for CurrentLocation);
    v29 = *v25;
    [*v25 coordinate];
    v31 = v30;
    v33 = v32;
    if (qword_1ECF7EB40 != -1)
    {
      swift_once();
    }

    sub_1E493BA48(v10);
    v34 = v48;
    sub_1E4996F3C();
    v35 = sub_1E4996F4C();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    sub_1E4902540(v14, v31, v33);
    sub_1E48C1338(v34, &qword_1ECF7EC50, &qword_1E49A4BF0);
    v36 = v53;
    v37 = *(v52 + 8);
    v37(v10, v53);
    [v29 coordinate];
    v39 = v38;
    v41 = v40;
    sub_1E493BA48(v10);
    sub_1E490203C(v10, v39, v41);
    LODWORD(v39) = v42;
    v37(v10, v36);
    sub_1E4901DDC(*&v39);
    v43 = v51;
    *&v14[*(v51 + 20)] = LODWORD(v39);
    *&v14[*(v43 + 24)] = v44;
    v45 = type metadata accessor for CurrentLocationSolarPosition(0);
    v46 = *(v45 + 20);
    v47 = v54;
    sub_1E48F7CA8(v25, v54 + v46);
    (*(v49 + 56))(v47 + v46, 0, 1, v50);
    sub_1E48F7D0C(v14, v47, type metadata accessor for SolarPosition);
    sub_1E48F7E28(v25, type metadata accessor for CurrentLocation);
    return (*(*(v45 - 8) + 56))(v47, 0, 1, v45);
  }
}

uint64_t sub_1E48F5C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v6 = sub_1E4996D8C();
  v4[28] = v6;
  v7 = *(v6 - 8);
  v4[29] = v7;
  v8 = *(v7 + 64) + 15;
  v4[30] = swift_task_alloc();
  v9 = type metadata accessor for CurrentLocationResult(0);
  v4[31] = v9;
  v10 = *(v9 - 8);
  v4[32] = v10;
  v11 = *(v10 + 64) + 15;
  v4[33] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A0, &unk_1E499D7C0);
  v4[35] = v13;
  v14 = *(v13 - 8);
  v4[36] = v14;
  v15 = *(v14 + 64) + 15;
  v4[37] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B0, &unk_1E49A62C0);
  v4[38] = v16;
  v17 = *(v16 - 8);
  v4[39] = v17;
  v18 = *(v17 + 64) + 15;
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E48F5E78, 0, 0);
}

uint64_t sub_1E48F5E78()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 328) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E48F5F10, v1, 0);
}

uint64_t sub_1E48F5F10()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1E49483C4(0), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = v5;
  }

  else
  {
    swift_endAccess();
    v7 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    v8 = sub_1E497C6B8(0xD000000000000035, 0x80000001E49A7090, 1);
    swift_beginAccess();
    v6 = v8;
    v9 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 0, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v12;
    swift_endAccess();
  }

  sub_1E497D394(*(v0 + 296));

  return MEMORY[0x1EEE6DFA0](sub_1E48F6068, 0, 0);
}

uint64_t sub_1E48F6068()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[26];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = sub_1E48F615C;
  v8 = v0[40];
  v9 = v0[38];
  v10 = v0[34];

  return MEMORY[0x1EEE6D9C8](v10, 0, 0, v9);
}

uint64_t sub_1E48F615C()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E48F6258, 0, 0);
}

uint64_t sub_1E48F6258()
{
  v1 = v0[34];
  if ((*(v0[32] + 48))(v1, 1, v0[31]) != 1)
  {
    v2 = v0[26];
    sub_1E48F7D0C(v1, v0[33], type metadata accessor for CurrentLocationResult);
    Strong = swift_weakLoadStrong();
    v0[43] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1E48F63D4, Strong, 0);
    }

    sub_1E48F7E28(v0[33], type metadata accessor for CurrentLocationResult);
    v4 = v0[34];
  }

  v5 = v0[37];
  v6 = v0[33];
  v7 = v0[30];
  v8 = v0[27];
  (*(v0[39] + 8))(v0[40], v0[38]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E48F63D4()
{
  v1 = v0[43];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocation;
  swift_beginAccess();
  sub_1E48F7E88(v2, v1 + v3);
  swift_endAccess();
  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v5 = v0[43];
  v6 = v0[29];
  v7 = v0[30];
  v8 = v0[28];
  v23 = v0[27];
  sub_1E493BA48(v7);
  v9 = sub_1E498BDD4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v6 + 8))(v7, v8);
  v16 = *(v4 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v16 + 4);
  swift_endAccess();
  sub_1E4976548(v9, v11, v13, v15);

  v17 = *(v4 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v17 + 4);
  swift_endAccess();
  v18 = *(v5 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream);
  sub_1E48F571C(v23);
  v19 = *(*v18 + 104);
  v20 = *(v18 + v19);
  swift_beginAccess();
  os_unfair_lock_lock(v20 + 4);
  swift_endAccess();
  sub_1E4977138(v23);
  v21 = *(v18 + v19);
  swift_beginAccess();
  os_unfair_lock_unlock(v21 + 4);
  swift_endAccess();
  sub_1E48C1338(v23, &unk_1ECF816F0, &qword_1E49A5090);

  return MEMORY[0x1EEE6DFA0](sub_1E48F662C, 0, 0);
}

uint64_t sub_1E48F662C()
{
  v1 = v0[43];
  v2 = v0[33];

  sub_1E48F7E28(v2, type metadata accessor for CurrentLocationResult);
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_1E48F615C;
  v5 = v0[40];
  v6 = v0[38];
  v7 = v0[34];

  return MEMORY[0x1EEE6D9C8](v7, 0, 0, v6);
}

uint64_t sub_1E48F66FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_1E4996D8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v12);
  v14 = sub_1E498BDD4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v8 + 8))(v12, v7);
  v21 = *(v13 + 48);
  swift_beginAccess();
  os_unfair_lock_lock(v21 + 4);
  swift_endAccess();
  sub_1E4976548(v14, v16, v18, v20);

  v22 = *(v13 + 48);
  swift_beginAccess();
  os_unfair_lock_unlock(v22 + 4);
  swift_endAccess();
  v23 = *(v1 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream);
  sub_1E48F571C(v6);
  v24 = *(*v23 + 104);
  v25 = *(v23 + v24);
  swift_beginAccess();
  os_unfair_lock_lock(v25 + 4);
  swift_endAccess();
  sub_1E4977138(v6);
  v26 = *(v23 + v24);
  swift_beginAccess();
  os_unfair_lock_unlock(v26 + 4);
  swift_endAccess();
  return sub_1E48C1338(v6, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E48F6994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB80, &unk_1E49A2260);
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB88, &unk_1E499E440);
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_1E4996D8C();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E48F6B68, 0, 0);
}

uint64_t sub_1E48F6B68()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v19 = v0[5];
  v8 = qword_1ECF80790;
  sub_1E493BA48(v1);
  sub_1E4996D1C();
  v10 = v9;
  v11 = *(v3 + 8);
  v0[17] = v11;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1, v2);
  v12 = *(v8 + OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers);

  sub_1E4938964(1, v12, v8, 1, v5);
  sub_1E499819C();
  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  v0[19] = v10;
  v13 = *(MEMORY[0x1E69E8678] + 4);
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_1E48F6D38;
  v15 = v0[12];
  v16 = v0[10];
  v17 = v0[6];

  return MEMORY[0x1EEE6D9C8](v17, 0, 0, v16);
}

uint64_t sub_1E48F6D38()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E48F6E34, 0, 0);
}

uint64_t sub_1E48F6E34()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = *(v0 + 40);
    (*(v2 + 32))(*(v0 + 120), v3, v1);
    Strong = swift_weakLoadStrong();
    *(v0 + 168) = Strong;
    if (Strong)
    {
      v6 = Strong;
      v7 = *(v0 + 152);
      v8 = *(v0 + 120);
      sub_1E4996D1C();
      *(v0 + 176) = v9;
      if (vabdd_f64(v9, v7) <= 5.0)
      {
        v16 = *(v0 + 144);
        (*(v0 + 136))(*(v0 + 120), *(v0 + 104));

        v17 = *(MEMORY[0x1E69E8678] + 4);
        v18 = swift_task_alloc();
        *(v0 + 160) = v18;
        *v18 = v0;
        v18[1] = sub_1E48F6D38;
        v19 = *(v0 + 96);
        v20 = *(v0 + 80);
        v21 = *(v0 + 48);

        return MEMORY[0x1EEE6D9C8](v21, 0, 0, v20);
      }

      else
      {

        return MEMORY[0x1EEE6DFA0](sub_1E48F7060, v6, 0);
      }
    }

    v10 = *(v0 + 144);
    (*(v0 + 136))(*(v0 + 120), *(v0 + 104));
    v11 = *(v0 + 48);
  }

  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v14 = *(v0 + 72);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1E48F7060()
{
  v1 = *(v0 + 168);
  sub_1E48F66FC();

  return MEMORY[0x1EEE6DFA0](sub_1E48F70C8, 0, 0);
}

uint64_t sub_1E48F70C8()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[13];

  v3(v4, v5);
  v0[19] = v0[22];
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1E48F6D38;
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[6];

  return MEMORY[0x1EEE6D9C8](v10, 0, 0, v9);
}

uint64_t sub_1E48F71A0()
{
  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocation, &qword_1ECF7F8A0, &unk_1E499D7B0);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream);

  v2 = *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream);

  v3 = *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarMovementsUpdateTask);

  v4 = *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarCycleStreams);

  v5 = *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarCycleCancellationBlockByLocation);

  v6 = *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_overrideTimeUpdateTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E48F7240()
{
  sub_1E48F71A0();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1E48F7294()
{
  sub_1E48F735C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E48F735C()
{
  if (!qword_1ECF7FB30)
  {
    type metadata accessor for CurrentLocation(255);
    v0 = sub_1E49984BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF7FB30);
    }
  }
}

void sub_1E48F741C()
{
  type metadata accessor for SolarPosition(319);
  if (v0 <= 0x3F)
  {
    sub_1E48F735C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E48F74C8()
{
  result = type metadata accessor for SolarCycle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E48F7544()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocation;
  v2 = type metadata accessor for CurrentLocation(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_currentLocationSolarPositionStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB90, &qword_1E499E450);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = *(*v7 + 96);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  v10 = *(*v7 + 104);
  type metadata accessor for CPUnfairLock();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v7 + v10) = v11;
  v12 = MEMORY[0x1E69E7CC8];
  *(v7 + *(*v7 + 112)) = MEMORY[0x1E69E7CC8];
  *(v7 + *(*v7 + 120)) = 0;
  *(v0 + v3) = v7;
  v13 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarTerminatorStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB98, &qword_1E499E458);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E499E270;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 48) = v15;
  *(v14 + 56) = v12;
  *(v14 + 64) = 0;
  *(v0 + v13) = v14;
  *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarMovementsUpdateTask) = 0;
  v16 = OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarCycleStreams;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FBA0, &qword_1E499E460);
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v0 + v16) = v17;
  *(v18 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_solarCycleCancellationBlockByLocation) = v12;
  *(v17 + 16) = v18;
  *(v17 + 24) = v12;
  *(v0 + OBJC_IVAR____TtC11ClockPoster17SolarDataProvider_overrideTimeUpdateTask) = 0;
  return v0;
}

BOOL sub_1E48F778C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = (&v31 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81410, &qword_1E499E3E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - v18;
  if (!sub_1E4902F18(a1, a2))
  {
    return 0;
  }

  v20 = type metadata accessor for SolarPosition(0);
  if (*(a1 + *(v20 + 20)) != *(a2 + *(v20 + 20)) || *(a1 + *(v20 + 24)) != *(a2 + *(v20 + 24)))
  {
    return 0;
  }

  v21 = *(type metadata accessor for CurrentLocationSolarPosition(0) + 20);
  v22 = a1 + v21;
  v23 = *(v15 + 48);
  sub_1E48C12D0(v22, v19, &qword_1ECF7F8A0, &unk_1E499D7B0);
  sub_1E48C12D0(a2 + v21, &v19[v23], &qword_1ECF7F8A0, &unk_1E499D7B0);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_1E48C1338(v19, &qword_1ECF7F8A0, &unk_1E499D7B0);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1E48C12D0(v19, v14, &qword_1ECF7F8A0, &unk_1E499D7B0);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    sub_1E48F7E28(v14, type metadata accessor for CurrentLocation);
LABEL_9:
    v26 = &unk_1ECF81410;
    v27 = &qword_1E499E3E0;
LABEL_10:
    sub_1E48C1338(v19, v26, v27);
    return 0;
  }

  sub_1E48F7D0C(&v19[v23], v9, type metadata accessor for CurrentLocation);
  sub_1E48F7B30();
  v28 = *v14;
  v29 = *v9;
  if ((sub_1E499848C() & 1) == 0)
  {
    sub_1E48F7E28(v9, type metadata accessor for CurrentLocation);
    sub_1E48F7E28(v14, type metadata accessor for CurrentLocation);
    v26 = &qword_1ECF7F8A0;
    v27 = &unk_1E499D7B0;
    goto LABEL_10;
  }

  v30 = sub_1E49898C4(v14 + *(v4 + 20), v9 + *(v4 + 20));
  sub_1E48F7E28(v9, type metadata accessor for CurrentLocation);
  sub_1E48F7E28(v14, type metadata accessor for CurrentLocation);
  sub_1E48C1338(v19, &qword_1ECF7F8A0, &unk_1E499D7B0);
  return (v30 & 1) != 0;
}

unint64_t sub_1E48F7B30()
{
  result = qword_1ECF80A10;
  if (!qword_1ECF80A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF80A10);
  }

  return result;
}

uint64_t sub_1E48F7B84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48F5C1C(a1, v4, v5, v6);
}

uint64_t sub_1E48F7C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48F7CA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48F7D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E48F7D74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48F6994(a1, v4, v5, v6);
}

uint64_t sub_1E48F7E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E48F7E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

CGColorRef sub_1E48F7F00(char a1)
{
  if (a1 == 2)
  {

    return CGColorCreateGenericGray(1.0, 1.0);
  }

  else
  {
    v11[10] = v1;
    v11[11] = v2;
    if (qword_1ECF7EB18 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECF81948;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0x4069800000000000;
    v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v11[4] = sub_1E48CE188;
    v11[5] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1E4923F24;
    v11[3] = &block_descriptor_3;
    v7 = _Block_copy(v11);
    v8 = v4;
    v9 = [v6 initWithDynamicProvider_];
    _Block_release(v7);

    v10 = [v9 CGColor];

    return v10;
  }
}

void sub_1E48F8070(int64x2_t *a1@<X8>)
{
  v3 = &v1[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler];
  if (v1[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler + 40])
  {
    v4 = [v1 traitCollection];
    [v4 displayScale];
    v13 = v5;

    v6 = [objc_opt_self() mainScreen];
    [v6 bounds];
    v8 = v7;
    v10 = v9;

    *v3 = v13;
    *(v3 + 8) = xmmword_1E499E4A0;
    *(v3 + 3) = v8;
    *(v3 + 4) = v10;
    v3[40] = 0;
    v11 = vdupq_lane_s64(0x408AA00000000000, 0);
    v11.i64[0] = v13;
    v12 = 0x4078900000000000;
  }

  else
  {
    v8 = *(v3 + 3);
    v10 = *(v3 + 4);
    v12 = *(v3 + 2);
    v11 = *v3;
  }

  *a1 = v11;
  a1[1].i64[0] = v12;
  a1[1].i64[1] = v8;
  a1[2].i64[0] = v10;
}

id sub_1E48F8180(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_tickLayers] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels] = v9;
  v10 = &v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_rightComplicationFrame];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[40] = 1;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for AnalogClockDialView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_1E48F82C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_tickLayers;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v28 = *&v0[v2];
    }

    if (sub_1E49986EC())
    {
      return;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v5 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer];
  v31 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer;
  *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer] = v4;

  v6 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v7 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer];
  v32 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer;
  *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer] = v6;

  v8 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v9 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer];
  v30 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer;
  *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer] = v8;

  v10 = 0;
  do
  {
    v11 = -858993459 * v10 > 0x33333333;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = v10 != 30 && v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    sub_1E48F8070(&v33);
    UIRoundToScale();
    [v13 setCornerRadius_];
    if (v12)
    {
      v14 = *&v0[v32];
      if (!v14)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v14 = *&v0[v31];
      if (!v14)
      {
        goto LABEL_29;
      }
    }

    [v14 addSublayer_];
    swift_beginAccess();
    v15 = v13;
    MEMORY[0x1E691B8A0]();
    if (*((*&v0[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v29 = *((*&v0[v2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E49980DC();
    }

    ++v10;
    sub_1E49980FC();
    swift_endAccess();
  }

  while (v10 != 60);
  v16 = *&v0[v30];
  if (!v16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v16 setMask_];
  v17 = *&v0[v30];
  if (!v17)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E499E4B0;
  sub_1E48FA6A0();
  v19 = v17;
  *(v18 + 32) = sub_1E499846C();
  *(v18 + 40) = sub_1E499846C();
  *(v18 + 48) = sub_1E499846C();
  v20 = sub_1E499809C();

  [v19 setLocations_];

  v21 = *&v1[v30];
  if (!v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v21 setType_];
  v22 = *&v1[v30];
  if (!v22)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v22 setStartPoint_];
  v23 = *&v1[v30];
  if (!v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v23 setEndPoint_];
  v24 = [v1 layer];
  if (!*&v1[v30])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v25 = v24;
  [v24 addSublayer_];

  v26 = [v1 layer];
  if (*&v1[v31])
  {
    v27 = v26;
    [v26 addSublayer_];

    return;
  }

LABEL_36:
  __break(1u);
}

void sub_1E48F86D8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 < 0)
  {
    v4 = *&v0[v2];
  }

  if (!sub_1E49986EC())
  {
LABEL_7:
    for (i = 3; i != 15; i += 3)
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1E499B670;
      *(v7 + 56) = MEMORY[0x1E69E6530];
      *(v7 + 64) = MEMORY[0x1E69E65A8];
      *(v7 + 32) = i;
      sub_1E4997EBC();

      v8 = sub_1E4997EAC();

      [v6 setText_];

      sub_1E48F8070(&v16);
      v9 = *&v16.i64[1];
      v10 = v18;
      if (v19 < v18)
      {
        v10 = v19;
      }

      if (v17 < *&v16.i64[1])
      {
        v9 = v17;
      }

      v11 = v10 / v9 * 51.0;
      v12 = sub_1E4997EAC();
      v13 = CTFontCreateWithNameAndOptions(v12, v11, 0, 0x400uLL);

      [v6 setFont_];
      [v6 sizeToFit];
      [v1 addSubview_];
      swift_beginAccess();
      v14 = v6;
      MEMORY[0x1E691B8A0]();
      if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1E49980DC();
      }

      sub_1E49980FC();
      swift_endAccess();
    }
  }
}

void sub_1E48F896C()
{
  v54.receiver = v0;
  v54.super_class = type metadata accessor for AnalogClockDialView();
  objc_msgSendSuper2(&v54, sel_layoutSubviews);
  sub_1E48F82C0();
  sub_1E48F86D8();
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer];
  if (!v1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v2 = v1;
  [v0 bounds];
  [v2 setFrame_];

  v3 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer];
  if (!v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v3;
  [v0 bounds];
  [v4 setFrame_];

  v5 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer;
  v6 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer];
  if (!v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6;
  [v0 bounds];
  [v7 setFrame_];

  v8 = *&v0[v5];
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC08, &unk_1E499E510);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1E499E4C0;
    v10 = qword_1ECF7EB20;
    v47 = v8;
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECF81950;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0x4059800000000000;
    v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v52 = sub_1E48CE240;
    v53 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1E4923F24;
    v51 = &block_descriptor_29;
    v14 = _Block_copy(&aBlock);
    v46 = v11;
    v15 = [v13 initWithDynamicProvider_];
    _Block_release(v14);

    v16 = [v15 CGColor];

    type metadata accessor for CGColor(0);
    v18 = v17;
    *(v9 + 56) = v17;
    *(v9 + 32) = v16;
    if (qword_1ECF7EB28 != -1)
    {
      swift_once();
    }

    v19 = qword_1ECF81958;
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = 0x4059800000000000;
    v21 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v52 = sub_1E48CE240;
    v53 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1E4923F24;
    v51 = &block_descriptor_36;
    v22 = _Block_copy(&aBlock);
    v23 = v19;
    v24 = [v21 initWithDynamicProvider_];
    _Block_release(v22);

    v25 = [v24 CGColor];

    *(v9 + 88) = v18;
    *(v9 + 64) = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = v46;
    *(v26 + 24) = 0x4059800000000000;
    v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v52 = sub_1E48CE240;
    v53 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_1E4923F24;
    v51 = &block_descriptor_43;
    v28 = _Block_copy(&aBlock);
    v29 = v46;
    v30 = [v27 initWithDynamicProvider_];
    _Block_release(v28);

    v31 = [v30 CGColor];

    *(v9 + 120) = v18;
    *(v9 + 96) = v31;
    v32 = sub_1E499809C();

    [v47 setColors_];

    v33 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels;
    swift_beginAccess();
    v34 = *&v0[v33];
    if (v34 >> 62)
    {
      v35 = sub_1E49986EC();
      if (v35)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_11:
        v36 = objc_opt_self();
        if (v35 >= 1)
        {
          v37 = v36;

          v38 = 0;
          do
          {
            if ((v34 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x1E691BDE0](v38, v34);
            }

            else
            {
              v39 = *(v34 + 8 * v38 + 32);
            }

            v40 = v39;
            ++v38;
            v41 = [v37 whiteColor];
            v42 = swift_allocObject();
            *(v42 + 16) = v41;
            *(v42 + 24) = 0x4069800000000000;
            v43 = objc_allocWithZone(MEMORY[0x1E69DC888]);
            v52 = sub_1E48CE240;
            v53 = v42;
            aBlock = MEMORY[0x1E69E9820];
            v49 = 1107296256;
            v50 = sub_1E4923F24;
            v51 = &block_descriptor_50;
            v44 = _Block_copy(&aBlock);
            v45 = [v43 initWithDynamicProvider_];
            _Block_release(v44);

            [v40 setTextColor_];
          }

          while (v35 != v38);

          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

LABEL_18:
    sub_1E48F9034();
    sub_1E48F9F90();
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1E48F9034()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v123 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v110 - v7;
  v9 = sub_1E499708C();
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v122 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v110 - v16);
  sub_1E48F8070(&v155);
  UIFloorToScale();
  v19 = v18;
  v20 = &v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler];
  v21 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler];
  if (*&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler + 32] < *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler + 24])
  {
    v22 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler + 32];
  }

  if (*&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler + 16] < *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler + 8])
  {
    v23 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler + 16];
  }

  UIFloorToScale();
  v25 = v24;
  v26 = *v20;
  if (*(v20 + 4) >= *(v20 + 3))
  {
    v27 = *(v20 + 4);
  }

  if (*(v20 + 2) >= *(v20 + 1))
  {
    v28 = *(v20 + 2);
  }

  UIFloorToScale();
  v30 = v29;
  v31 = *v20;
  if (*(v20 + 4) < *(v20 + 3))
  {
    v32 = *(v20 + 4);
  }

  if (*(v20 + 2) < *(v20 + 1))
  {
    v33 = *(v20 + 2);
  }

  UIFloorToScale();
  v35 = v34;
  [v0 bounds];
  v157 = CGRectInset(v156, 0.0, v19);
  y = v157.origin.y;
  x = v157.origin.x;
  height = v157.size.height;
  width = v157.size.width;
  [v0 bounds];
  v159 = CGRectInset(v158, v25, 0.0);
  v112 = v159.origin.y;
  v113 = v159.origin.x;
  v110 = v159.size.height;
  v111 = v159.size.width;
  [v0 bounds];
  v161 = CGRectInset(v160, 0.0, v30);
  v136 = v161.origin.y;
  v137 = v161.origin.x;
  v134 = v161.size.height;
  v135 = v161.size.width;
  [v0 bounds];
  v163 = CGRectInset(v162, v35, 0.0);
  v127 = v163.origin.y;
  v128 = v163.origin.x;
  v125 = v163.size.height;
  v126 = v163.size.width;
  v36 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_tickLayers;
  swift_beginAccess();
  v150 = v0;
  v37 = *&v0[v36];
  if (v37 >> 62)
  {
    goto LABEL_84;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v133 = v17;
  v124 = v8;
  if (v37 >> 62)
  {
    v39 = sub_1E49986EC();
  }

  else
  {
    v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = &off_1E8761000;

  v146 = v39;
  if (v39)
  {
    v8 = 0;
    v36 = 0;
    v143 = 6.28318531 / v38;
    v145 = v37 & 0xFFFFFFFFFFFFFF8;
    v40 = (v10 + 48);
    v121 = (v10 + 32);
    v129 = (v10 + 8);
    v10 = v37 & 0xC000000000000001;
    v42 = *(MEMORY[0x1E695EFD0] + 16);
    v141 = *MEMORY[0x1E695EFD0];
    *(&v41 + 1) = *(&v141 + 1);
    v142 = v42;
    *&v42 = *(MEMORY[0x1E695EFD0] + 32);
    v139 = *(MEMORY[0x1E695EFD0] + 40);
    v140 = *&v42;
    v120 = -4.71238898;
    v119 = -3.14159265;
    *&v41 = 134349056;
    v118 = v41;
    v138 = v9;
    v131 = v37 & 0xC000000000000001;
    v132 = v20;
    v144 = v37;
    v130 = v40;
    do
    {
      if (v10)
      {
        v60 = MEMORY[0x1E691BDE0](v8, v37);
      }

      else
      {
        if (v8 >= *(v145 + 16))
        {
          goto LABEL_83;
        }

        v60 = *(v37 + 8 * v8 + 32);
      }

      v61 = v60;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        v38 = sub_1E49986EC();
        v37 = *&v150[v36];
        goto LABEL_15;
      }

      v149 = v8 + 1;
      v62 = 2 * (v36 + 5 * (v8 / 5) != 0);
      if (!v8)
      {
        v62 = 1;
      }

      if (v8 == 30)
      {
        v63 = 1;
      }

      else
      {
        v63 = v62;
      }

      v64 = v143 * v8 + -1.57079633;
      v65 = v150;
      [v150 v17[245]];
      v70 = sub_1E48F9B7C(v64, v66, v67, v68, v69);
      v72 = v71;
      [v65 v17[245]];
      v77 = sub_1E48F9D7C(v64, v73, v74, v75, v76);
      v78 = v77;
      v151 = v63;
      if (v63 == 2 || (v151 & 1) != 0)
      {
        if (v77 > 3)
        {
          if (v77 == 4)
          {
LABEL_46:
            v79 = v64;
            v81 = v136;
            v80 = v137;
            v83 = v134;
            v82 = v135;
            goto LABEL_63;
          }

          if (v77 == 8)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v77 == 1)
          {
            goto LABEL_46;
          }

          if (v77 == 2)
          {
LABEL_45:
            v79 = v64;
            v81 = v127;
            v80 = v128;
            v83 = v125;
            v82 = v126;
LABEL_63:
            v93 = sub_1E48F9B7C(v79, v80, v81, v82, v83);
            v95 = v96;
            goto LABEL_64;
          }
        }
      }

      else if (v77 > 3)
      {
        if (v77 == 4)
        {
LABEL_62:
          v79 = v64;
          v81 = y;
          v80 = x;
          v83 = height;
          v82 = width;
          goto LABEL_63;
        }

        if (v77 == 8)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v77 == 1)
        {
          goto LABEL_62;
        }

        if (v77 == 2)
        {
LABEL_57:
          v79 = v64;
          v81 = v112;
          v80 = v113;
          v83 = v110;
          v82 = v111;
          goto LABEL_63;
        }
      }

      *&v148 = v36;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v84 = qword_1EE2BB458;
      v85 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
      swift_beginAccess();
      v86 = v124;
      sub_1E48CC978(v84 + v85, v124);
      v87 = *v130;
      v88 = v138;
      if ((*v130)(v86, 1, v138) == 1)
      {
        sub_1E4904BF4(v133);
        v89 = v87(v86, 1, v88);
        v36 = v148;
        if (v89 != 1)
        {
          sub_1E48EF578(v124);
        }
      }

      else
      {
        (*v121)(v133, v86, v88);
        v36 = v148;
      }

      v90 = sub_1E499706C();
      v91 = sub_1E499831C();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = v118;
        *(v92 + 4) = v78;
        _os_log_impl(&dword_1E48B0000, v90, v91, "Invalid frame edge %{public}lu", v92, 0xCu);
        MEMORY[0x1E691CED0](v92, -1, -1);
      }

      (*v129)(v133, v138);
      v93 = sub_1E48F9B7C(v64, v137, v136, v135, v134);
      v95 = v94;
      v10 = v131;
      v20 = v132;
      v17 = &off_1E8761000;
LABEL_64:
      [v61 cornerRadius];
      v98 = v97;
      if (v78 > 3)
      {
        v43 = v64;
        if (v78 != 8)
        {
          if (v78 != 4)
          {
LABEL_71:
            *&v148 = v36;
            v99 = v122;
            if (qword_1EE2BB450 != -1)
            {
              swift_once();
            }

            v100 = qword_1EE2BB458;
            v101 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
            swift_beginAccess();
            v102 = v123;
            sub_1E48CC978(v100 + v101, v123);
            v103 = *v130;
            v104 = v138;
            if ((*v130)(v102, 1, v138) == 1)
            {
              sub_1E4904BF4(v99);
              v105 = v103(v102, 1, v104);
              v36 = v148;
              if (v105 != 1)
              {
                sub_1E48EF578(v102);
              }
            }

            else
            {
              (*v121)(v99, v102, v104);
              v36 = v148;
            }

            v106 = sub_1E499706C();
            v107 = sub_1E499831C();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              *v108 = v118;
              *(v108 + 4) = v78;
              _os_log_impl(&dword_1E48B0000, v106, v107, "Invalid frame edge %{public}lu", v108, 0xCu);
              MEMORY[0x1E691CED0](v108, -1, -1);
            }

            (*v129)(v99, v138);
            v43 = 0.0;
            v10 = v131;
            v20 = v132;
            v17 = &off_1E8761000;
            goto LABEL_20;
          }

          v43 = v64 + -1.57079633;
        }
      }

      else if (v78 == 1)
      {
        v43 = v64 + v120;
      }

      else
      {
        if (v78 != 2)
        {
          goto LABEL_71;
        }

        v43 = v64 + v119;
      }

LABEL_20:
      v44 = v98 / cos(v43) - v98;
      v45 = sqrt(v93 * v93 + v95 * v95) + v44;
      v9 = &off_1E8761000;
      *&v154.a = v141;
      *&v154.c = v142;
      v46 = sqrt(v70 * v70 + v72 * v72) - v45 - v44;
      v154.tx = v140;
      v154.ty = v139;
      [v61 setAffineTransform_];
      v47 = *(v20 + 1);
      if (*(v20 + 2) < v47)
      {
        v47 = *(v20 + 2);
      }

      if (*(v20 + 4) >= *(v20 + 3))
      {
        v48 = *(v20 + 3);
      }

      else
      {
        v48 = *(v20 + 4);
      }

      v49 = v151;
      v50 = 3.5;
      if (v151 == 2)
      {
        v50 = 2.0;
      }

      [v61 setFrame_];
      v51 = v150;
      [v150 v17[245]];
      MidX = CGRectGetMidX(v164);
      v53 = __sincos_stret(v64);
      [v51 v17[245]];
      [v61 setPosition_];
      CGAffineTransformMakeTranslation(&v154, v45, 0.0);
      tx = v154.tx;
      ty = v154.ty;
      v147 = *&v154.c;
      v148 = *&v154.a;
      CGAffineTransformMakeRotation(&v154, v64);
      v56 = *&v154.a;
      v57 = *&v154.c;
      v58 = *&v154.tx;
      *&v154.a = v148;
      *&v154.c = v147;
      v154.tx = tx;
      v154.ty = ty;
      *&v153.a = v56;
      *&v153.c = v57;
      *&v153.tx = v58;
      CGAffineTransformConcat(&v152, &v154, &v153);
      v154 = v152;
      [v61 setAffineTransform_];
      v59 = sub_1E48F7F00(v49);
      [v61 setBackgroundColor_];

      --v36;
      ++v8;
      v37 = v144;
    }

    while (v149 != v146);
  }
}

double sub_1E48F9B7C(long double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
    ;
  }

  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  v10 = CGRectGetHeight(v18) * 0.5;
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  Width = CGRectGetWidth(v19);
  v12 = atan2(v10, Width * 0.5);
  if (i < v12)
  {
    goto LABEL_4;
  }

  if (i < 3.14159265 - v12)
  {
    v22.origin.x = a2;
    v22.origin.y = a3;
    v22.size.width = a4;
    v22.size.height = a5;
    v15 = CGRectGetHeight(v22) * 0.5;
    v16 = 1.57079633;
LABEL_8:
    v13 = v15 * tan(i + v16);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    CGRectGetHeight(v23);
    return v13;
  }

  if (i < v12 + 3.14159265)
  {
    v24.origin.x = a2;
    v24.origin.y = a3;
    v24.size.width = a4;
    v24.size.height = a5;
    v13 = CGRectGetWidth(v24) * 0.5;
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    CGRectGetWidth(v25);
    v14 = i + 3.14159265;
    goto LABEL_5;
  }

  if (i < 6.28318531 - v12)
  {
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    v15 = CGRectGetHeight(v26) * 0.5;
    v16 = 4.71238898;
    goto LABEL_8;
  }

LABEL_4:
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v13 = CGRectGetWidth(v20) * 0.5;
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetWidth(v21);
  v14 = i;
LABEL_5:
  tan(v14);
  return v13;
}