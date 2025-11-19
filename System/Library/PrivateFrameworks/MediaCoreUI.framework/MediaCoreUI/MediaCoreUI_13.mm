uint64_t sub_1C5A89794(double a1)
{
  v3 = sub_1C5BC7AC4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - v8;
  v10 = *(v1 + 80);
  swift_getKeyPath();
  v32 = v10;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if ((*(v10 + 32) & 1) != 0 || (*(v1 + 24) & 1) != 0 || *(v1 + 96) == a1)
  {
    return result;
  }

  v12 = *(v10 + 24);
  v13 = *(v1 + 16);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead___observationRegistrar;
  v32 = v1;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  if (!*(v1 + 57))
  {

LABEL_9:
    v16 = *(v1 + 96);
    v31[2] = v14;
    if (v16 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v16 > -9.22337204e18)
      {
        v17 = v16;
        swift_getKeyPath();
        v32 = v1;
        sub_1C5BC7B74();

        if (*(v1 + 64) != v17)
        {
          v18 = *(v1 + 96);
          if (v12 < v18)
          {
            v18 = v12;
          }

          v19 = floor(v18);
          if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v19 > -9.22337204e18)
            {
              if (v19 < 9.22337204e18)
              {
                v20 = v19;
                swift_getKeyPath();
                v32 = v1;
                sub_1C5BC7B74();

                if (*(v1 + 64) != v20)
                {
                  KeyPath = swift_getKeyPath();
                  v31[1] = v31;
                  MEMORY[0x1EEE9AC00](KeyPath);
                  v31[-2] = v1;
                  v31[-1] = v20;
                  v32 = v1;
                  sub_1C5BC7B64();
                }

                goto LABEL_20;
              }

LABEL_40:
              __break(1u);
              return result;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_20:
        sub_1C5BC7AB4();
        v21 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_playheadPositionTimeLastSet;
        swift_beginAccess();
        (*(v4 + 16))(v7, v1 + v21, v3);
        sub_1C5BC7A74();
        v23 = v22;
        v24 = *(v4 + 8);
        v24(v7, v3);
        result = (v24)(v9, v3);
        if (v13 < v23)
        {
          v25 = *(v1 + 96);
          if (*(v1 + 72) == v25)
          {
            *(v1 + 72) = v25;
          }

          else
          {
            v28 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v28);
            v31[-2] = v1;
            *&v31[-1] = v25;
            v31[3] = v1;
            sub_1C5BC7B64();
          }

          sub_1C5BC7AA4();
          swift_beginAccess();
          (*(v4 + 40))(v1 + v21, v9, v3);
          return swift_endAccess();
        }

        return result;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v15 = sub_1C5BCBDE4();

  if (v15)
  {
    goto LABEL_9;
  }

  v26 = *(v1 + 96);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_34;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (*(v1 + 64) != v26)
  {
    v27 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v27);
    v31[-2] = v1;
    v31[-1] = v26;
    v32 = v1;
    sub_1C5BC7B64();

    v26 = *(v1 + 96);
  }

  if (*(v1 + 72) == v26)
  {
    *(v1 + 72) = v26;
  }

  else
  {
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    v31[-2] = v1;
    *&v31[-1] = v26;
    v32 = v1;
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A89E90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = sub_1C5BC7AC4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate;
  swift_beginAccess();
  sub_1C59400B0(v1 + v15, v8, &unk_1EC193058);
  v16 = *(v10 + 48);
  v33 = v9;
  if (v16(v8, 1, v9) == 1)
  {
    return sub_1C5924EF4(v8, &unk_1EC193058);
  }

  v18 = *(v10 + 32);
  v19 = v8;
  v20 = v33;
  v18(v14, v19, v33);
  sub_1C59400B0(a1, v6, &unk_1EC193058);
  if (v16(v6, 1, v20) == 1)
  {
    (*(v10 + 8))(v14, v20);
    return sub_1C5924EF4(v6, &unk_1EC193058);
  }

  else
  {
    v21 = v10;
    v22 = v14;
    v23 = v32;
    v18(v32, v6, v20);
    v24 = *(v1 + 80);
    swift_getKeyPath();
    v34 = v24;
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
    sub_1C5BC7B74();

    if ((*(v24 + 32) & 1) == 0)
    {
      v25 = *(v24 + 24);
      sub_1C5BC7A74();
      v27 = v26;
      swift_getKeyPath();
      v34 = v1;
      sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
      sub_1C5BC7B74();

      v28 = *(v1 + 96);
      v29 = v28 + v27 * *(v1 + 88);
      if (v29 <= 0.0)
      {
        v29 = 0.0;
      }

      if (v25 < v29)
      {
        v29 = v25;
      }

      *(v1 + 96) = v29;
      sub_1C5A89794(v28);
    }

    v30 = *(v21 + 8);
    v31 = v33;
    v30(v23, v33);
    return (v30)(v22, v31);
  }
}

uint64_t sub_1C5A8A280()
{
  v1 = sub_1C5BC7AC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  type metadata accessor for ScrubberSections(0);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0;
  *(v5 + 48) = 1;
  *(v5 + 56) = v6;
  sub_1C5BC7BA4();
  *(v0 + 80) = v5;
  *(v0 + 88) = 0x3FF0000000000000;
  (*(v2 + 56))(v0 + OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate, 1, 1, v1);
  sub_1C5BC7BA4();
  *(v0 + 96) = 0;
  sub_1C5BC7A64();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_playheadPositionTimeLastSet, v4, v1);
  sub_1C5A8A408();
  return v0;
}

uint64_t sub_1C5A8A408()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  if (*(v0 + 56))
  {
    v1 = 0.00833333333;
  }

  else
  {
    v1 = 1.0 / *(v0 + 48);
  }

  v2 = *(v0 + 80);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if ((*(v2 + 32) & 1) == 0)
  {
    v4 = *(v2 + 24);
    swift_getKeyPath();
    sub_1C5BC7B74();

    if ((*(v2 + 48) & 1) == 0)
    {
      v5 = *(v2 + 40);
      swift_getKeyPath();
      sub_1C5BC7B74();

      if ((*(v0 + 40) & 1) == 0)
      {
        v6 = v4 / (v5 * *(v0 + 32));
        swift_getKeyPath();
        sub_1C5BC7B74();

        if (v6 * (1.0 / *(v0 + 88)) * 0.5 > v1)
        {
          v1 = v6 * (1.0 / *(v0 + 88)) * 0.5;
        }
      }
    }
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_1C5A8A648()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_playheadPositionTimeLastSet;
  v2 = sub_1C5BC7AC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C5924EF4(v0 + OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead_latestDate, &unk_1EC193058);
  v3 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberPlayhead___observationRegistrar;
  v4 = sub_1C5BC7BB4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id sub_1C5A8A74C()
{
  v1 = sub_1C5BC90F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultConfiguration];
  v6 = [objc_opt_self() hiddenConfiguration];
  [v5 setLabelsConfiguration_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961A0);
  sub_1C5BC96B4();
  v7 = v14;
  v8 = [objc_allocWithZone(MEMORY[0x1E69585E0]) initWithSource_];

  [v8 setConfiguration_];
  sub_1C5BC96B4();
  v9 = v14;
  [v8 setDelegate_];

  sub_1C5BC96B4();
  v10 = v14;
  type metadata accessor for MediaTimelineControl(0);
  sub_1C594C704(v4);
  v11 = *v0;
  swift_getKeyPath();
  v13 = v11;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  sub_1C5A8B968(v4, (*(v11 + 56) & 1) == 0, v8);

  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1C5A8A9CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = sub_1C5BC90F4();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1C5BC8F34();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(type metadata accessor for MediaTimelineControl(0) + 24);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v39 = *v11;
  }

  else
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    v3 = v2;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v12, 0);
    (*(v8 + 8))(v10, v36);
    LOBYTE(v12) = v39;
  }

  [v37 setFineScrubbingStyle_];
  v14 = *v3;
  v15 = *(*(*(*v3 + 16) + 72) + 80);
  swift_getKeyPath();
  v39 = v15;
  v36 = sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if (*(v15 + 32))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961A0);
    sub_1C5BC96B4();
    v16 = v39;
    LODWORD(v17) = 1.0;
    [v39 setMaxValue_];

    sub_1C5BC96B4();
    v18 = v39;
    [v39 setCurrentValue_];

    sub_1C5BC96B4();
    v19 = v39;
    sub_1C592535C(0, &qword_1EC1961A8);
    v20 = sub_1C5BCB044();
    [v19 setTimeRangeMarks_];
  }

  else
  {
    v21 = *(v15 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961A0);
    sub_1C5BC96B4();
    v22 = a2;
    v23 = v39;
    sub_1C594C704(v7);
    swift_getKeyPath();
    v38 = v14;
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B74();

    sub_1C5A8B968(v7, (*(v14 + 56) & 1) == 0, v37);

    (*(v34 + 8))(v7, v35);
    sub_1C5BC96B4();
    v24 = v39;
    *&v25 = v21;
    [v39 setMaxValue_];

    sub_1C5BC96B4();
    v26 = v39;
    v27 = *(*(v14 + 16) + 72);
    swift_getKeyPath();
    v38 = v27;
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B74();

    v28 = *(v27 + 72);
    *&v28 = v28;
    [v26 setCurrentValue_];

    sub_1C5BC96B4();
    v29 = v39;
    v30 = *(*(*(v14 + 16) + 72) + 80);
    swift_getKeyPath();
    v38 = v30;
    sub_1C5BC7B74();

    v32 = *(v30 + 56);
    MEMORY[0x1EEE9AC00](v31);
    *(&v33 - 2) = v22;

    sub_1C5A7D31C(sub_1C5AA34C8, (&v33 - 4), v32);

    sub_1C592535C(0, &qword_1EC1961A8);
    v20 = sub_1C5BCB044();

    [v29 setTimeRangeMarks_];
  }
}

void sub_1C5A8AFF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = v3;
  v5 = v3 + 1.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961A0);
  sub_1C5BC96B4();
  v6 = objc_allocWithZone(MEMORY[0x1E6958620]);
  v7 = sub_1C5BCAE44();
  *&v8 = v4;
  *&v9 = v5;
  v10 = [v6 initWithStartValue:v7 endValue:v11 identifier:v8 markUIProvider:v9];

  *a2 = v10;
}

uint64_t sub_1C5A8B264(void *a1)
{
  v3 = sub_1C5BC7D64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_1EC1A6BC0);
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = 0;
    *(v11 + 12) = 2048;
    [v8 maxValue];
    *(v11 + 14) = v12;
    _os_log_impl(&dword_1C5922000, v9, v10, "MediaTimelineControl.Coordinator: will begin changing (min=%f, max=%f)", v11, 0x16u);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  *(v8 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState) = 1;
  v17 = 1;

  sub_1C5A820C8(&v17);

  [v8 currentValue];
  v16 = 0;
  sub_1C5A7E450(&v16, v13);

  return sub_1C5A8C0A8(a1, 1);
}

uint64_t sub_1C5A8B594(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C5922000, v9, v10, "MediaTimelineControl.Coordinator: did end tracking", v11, 2u);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *(v2 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState) = 2;
  v14 = 2;

  sub_1C5A820C8(&v14);

  return sub_1C5A8C0A8(a1, 0);
}

uint64_t sub_1C5A8B968(uint64_t a1, int a2, void *a3)
{
  v52 = a3;
  v50 = a2;
  v47 = type metadata accessor for ScrubberSpecs.TrackEffects(0);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C5BC90F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961D8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v49 = &v39[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39[-v18];
  v20 = OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_contrast;
  swift_beginAccess();
  v21 = *(v7 + 16);
  v46 = a1;
  v42 = v21;
  v43 = v7 + 16;
  v21(v19, a1, v6);
  v41 = *(v7 + 56);
  v41(v19, 0, 1, v6);
  v22 = *(v10 + 56);
  v44 = v20;
  sub_1C59400B0(v3 + v20, v12, &qword_1EC1961D0);
  sub_1C59400B0(v19, &v12[v22], &qword_1EC1961D0);
  v23 = *(v7 + 48);
  v24 = qword_1EC194FB8 + 72;
  if (v23(v12, 1, v6) != 1)
  {
    sub_1C59400B0(v12, v49, &qword_1EC1961D0);
    if (v23(&v12[v22], 1, v6) != 1)
    {
      v27 = v51;
      (*(v7 + 32))(v51, &v12[v22], v6);
      sub_1C5A9B150(&qword_1EDA46328, MEMORY[0x1E697F610]);
      v28 = v49;
      v40 = sub_1C5BCADB4();
      v29 = *(v7 + 8);
      v29(v27, v6);
      sub_1C5924EF4(v19, &qword_1EC1961D0);
      v29(v28, v6);
      v24 = &qword_1EC194FB8[9];
      result = sub_1C5924EF4(v12, &qword_1EC1961D0);
      v26 = v50;
      if ((v40 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_1C5924EF4(v19, &qword_1EC1961D0);
    (*(v7 + 8))(v49, v6);
LABEL_6:
    sub_1C5924EF4(v12, &qword_1EC1961D8);
    v26 = v50;
    goto LABEL_9;
  }

  sub_1C5924EF4(v19, &qword_1EC1961D0);
  if (v23(&v12[v22], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  result = sub_1C5924EF4(v12, &qword_1EC1961D0);
  v26 = v50;
LABEL_8:
  if (*(v3 + v24[360]) == (v26 & 1))
  {
    return result;
  }

LABEL_9:
  v30 = v45;
  v42(v45, v46, v6);
  v41(v30, 0, 1, v6);
  v31 = v44;
  swift_beginAccess();
  sub_1C5AA36AC(v30, v3 + v31);
  swift_endAccess();
  *(v3 + v24[360]) = v26 & 1;
  v32 = v51;
  (*(v7 + 104))(v51, *MEMORY[0x1E697F608], v6);
  LOBYTE(v31) = sub_1C5BC8274();
  (*(v7 + 8))(v32, v6);
  if (v31)
  {
    v33 = v48;
    if (qword_1EC190748 != -1)
    {
      swift_once();
    }

    v34 = qword_1EC1A6B60;
  }

  else
  {
    v33 = v48;
    if (qword_1EC190740 != -1)
    {
      swift_once();
    }

    v34 = qword_1EC1A6B48;
  }

  v35 = __swift_project_value_buffer(v47, v34);
  sub_1C5AA3634(v35, v33, type metadata accessor for ScrubberSpecs.TrackEffects);
  v36 = [v52 configuration];
  if (*(v3 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState) && *(v3 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState) == 1)
  {

    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v37 = sub_1C5BCBDE4();

  if (v26)
  {
LABEL_21:
    v38 = (v33 + 16);
    goto LABEL_24;
  }

  v38 = v33;
  if (v37)
  {
LABEL_23:
    v38 = (v33 + 8);
  }

LABEL_24:
  [v36 setCurrentValueVisualEffect_];
  [v36 setMaxValueVisualEffect_];
  [v52 setConfiguration_];

  return sub_1C5AA5994(v33, type metadata accessor for ScrubberSpecs.TrackEffects);
}

uint64_t sub_1C5A8C0A8(void *a1, int a2)
{
  v31 = a2;
  v32 = a1;
  v30 = type metadata accessor for ScrubberSpecs.TrackEffects(0);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_1C5BC90F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_contrast;
  swift_beginAccess();
  sub_1C59400B0(v2 + v15, v7, &qword_1EC1961D0);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    v17 = *(v9 + 104);
    v17(v14, *MEMORY[0x1E697F600], v8);
    if (v16(v7, 1, v8) != 1)
    {
      sub_1C5924EF4(v7, &qword_1EC1961D0);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v17 = *(v9 + 104);
  }

  v17(v12, *MEMORY[0x1E697F608], v8);
  v18 = sub_1C5BC8274();
  v19 = *(v9 + 8);
  v19(v12, v8);
  if (v18)
  {
    if (qword_1EC190748 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC1A6B60;
  }

  else
  {
    if (qword_1EC190740 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC1A6B48;
  }

  v21 = __swift_project_value_buffer(v30, v20);
  sub_1C5AA3634(v21, v4, type metadata accessor for ScrubberSpecs.TrackEffects);
  v22 = v32;
  v23 = [v32 configuration];
  v24 = v23;
  v25 = 8;
  if ((v31 & 1) == 0)
  {
    v25 = 0;
  }

  [v23 setCurrentValueVisualEffect_];
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v24;
  v27 = v22;
  v28 = v24;
  sub_1C5AA24B4(sub_1C5AA369C, v26);

  sub_1C5AA5994(v4, type metadata accessor for ScrubberSpecs.TrackEffects);
  return (v19)(v14, v8);
}

uint64_t sub_1C5A8C564()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196278);
  sub_1C5BCA694();
  return v1;
}

id sub_1C5A8C5BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for MediaTimelineControl.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_maxValue] = 1065353216;
  *&v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_currentValue] = 0;
  *&v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_timeRangeMarks] = MEMORY[0x1E69E7CC0];
  v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_scrubState] = 0;
  v6 = OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_contrast;
  v7 = sub_1C5BC90F4();
  (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
  v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_isDisabled] = 0;
  *&v5[OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_viewModel] = v3;
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1C5A8C6CC(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x4024000000000000;
  }

  return result;
}

uint64_t sub_1C5A8C6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A9B150(&qword_1EC195F78, type metadata accessor for MediaTimelineControl);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5A8C778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A9B150(&qword_1EC195F78, type metadata accessor for MediaTimelineControl);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5A8C80C()
{
  sub_1C5A9B150(&qword_1EC195F78, type metadata accessor for MediaTimelineControl);
  sub_1C5BC9264();
  __break(1u);
}

uint64_t sub_1C5A8C864()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C5A8C9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C59400B0(v2 + *(a1 + 40), &v15 - v10, &qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C5BC90F4();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C5A8CBAC(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 44);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

MediaCoreUI::ScrubberLoadingConfiguration __swiftcall ScrubberLoadingConfiguration.init(disableInteraction:showPlaceholderLabels:showSpinner:availableDuration:)(Swift::Bool disableInteraction, Swift::Bool showPlaceholderLabels, Swift::Bool showSpinner, Swift::Double_optional availableDuration)
{
  *v5 = disableInteraction;
  *(v5 + 1) = showPlaceholderLabels;
  *(v5 + 2) = showSpinner;
  *(v5 + 8) = *&availableDuration.is_nil;
  *(v5 + 16) = v4 & 1;
  result.availableDuration.value = availableDuration.value;
  result.availableDuration.is_nil = showPlaceholderLabels;
  result.disableInteraction = disableInteraction;
  return result;
}

uint64_t Scrubber.init(duration:loadingConfiguration:playbackRate:sections:accessoryView:onScrub:)@<X0>(double a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, void (*a5)(__n128)@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v25 = *(a3 + 1);
  v24 = a3[16];
  type metadata accessor for ScrubberViewModel(0);
  swift_allocObject();
  sub_1C5A80ECC();
  sub_1C5BCA684();
  *a6 = v28;
  *(a6 + 8) = v29;
  type metadata accessor for ScrubberProxy(0);
  sub_1C5A9B150(&qword_1EC1958F8, type metadata accessor for ScrubberProxy);
  *(a6 + 16) = sub_1C5BC8314();
  *(a6 + 24) = v14 & 1;
  v15 = type metadata accessor for Scrubber();
  v16 = v15[10];
  *(a6 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v17 = a6 + v15[11];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = a6 + v15[12];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19.n128_f64[0] = a1;
  if (a2 & 1 | (a1 <= 0.0))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = a1;
  }

  v21 = a6 + v15[13];
  *v21 = v20;
  *(v21 + 8) = a2 & 1 | (a1 <= 0.0);
  v22 = a6 + v15[14];
  *v22 = v11;
  *(v22 + 1) = v12;
  *(v22 + 2) = v13;
  *(v22 + 8) = v25;
  *(v22 + 16) = v24;
  *(a6 + v15[15]) = a7;
  *(a6 + v15[16]) = a4;
  a5(v19);
  sub_1C5A8C564();
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B64();
}

uint64_t Scrubber.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_1C5BC89D4();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v119 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v116 = v6;
  v117 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1C5BC9654();
  v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195918);
  v7 = *(a1 + 24);
  v125 = *(a1 + 16);
  v126 = a1;
  v124 = v7;
  type metadata accessor for Scrubber.CompanionViews();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E697E270];
  v171 = WitnessTable;
  v172 = MEMORY[0x1E697E270];
  v10 = swift_getWitnessTable();
  v11 = sub_1C5924F54(&qword_1EC195928, &qword_1EC195920);
  v169 = v10;
  v170 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_1C5A25B6C();
  v167 = v12;
  v168 = v13;
  v165 = swift_getWitnessTable();
  v166 = v9;
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195938);
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  v14 = sub_1C5BC8AB4();
  v115 = sub_1C5BC7AC4();
  v15 = sub_1C5A9E260();
  v16 = swift_getWitnessTable();
  v163 = v15;
  v164 = v16;
  v161 = swift_getWitnessTable();
  v162 = MEMORY[0x1E697E070];
  v17 = swift_getWitnessTable();
  v18 = sub_1C5A9E5B4();
  v159 = v17;
  v160 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EC1959A8, &qword_1EC195938);
  v157 = v19;
  v158 = v20;
  v21 = v127;
  v155 = swift_getWitnessTable();
  v156 = MEMORY[0x1E697EBB8];
  v22 = swift_getWitnessTable();
  v23 = sub_1C5A9B150(&qword_1EDA4E020, MEMORY[0x1E6969530]);
  *&v149 = v14;
  *(&v149 + 1) = v115;
  *&v150 = v22;
  *(&v150 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5A9B150(&unk_1EDA461C8, MEMORY[0x1E697C998]);
  sub_1C5BC8544();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959B0);
  swift_getTupleTypeMetadata2();
  v24 = sub_1C5BCAB74();
  v97[1] = swift_getWitnessTable();
  v98 = v24;
  v25 = sub_1C5BCA7D4();
  v100 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v99 = v97 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959B8);
  v27 = sub_1C5BC8AB4();
  v101 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v123 = v97 - v28;
  v102 = v29;
  v30 = sub_1C5BC8AB4();
  v104 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v103 = v97 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1959C0);
  v105 = v30;
  v32 = sub_1C5BC8AB4();
  v107 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v106 = v97 - v33;
  v108 = v34;
  v35 = sub_1C5BC8AB4();
  v112 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v109 = v97 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955C8);
  v113 = v35;
  v37 = sub_1C5BC8AB4();
  v114 = *(v37 - 8);
  v115 = v37;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v110 = v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v111 = v97 - v40;
  v41 = *(*(sub_1C5A8C564() + 16) + 72);
  swift_getKeyPath();
  *&v149 = v41;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  v42 = *(v41 + 88);

  if (v42 != 0.0)
  {
    v44 = *(*(sub_1C5A8C564() + 16) + 72);
    swift_getKeyPath();
    *&v149 = v44;
    sub_1C5BC7B74();

    v45 = *(v44 + 57);

    if (v45)
    {
      sub_1C5BCBDE4();
    }
  }

  MEMORY[0x1EEE9AC00](v43);
  v46 = v125;
  v97[-4] = v125;
  v47 = v46;
  v48 = v124;
  v97[-3] = v124;
  v49 = v48;
  LOBYTE(v97[-2]) = v50 & 1;
  v97[-1] = v21;
  sub_1C5BC9134();
  v51 = v99;
  v52 = sub_1C5BCA7C4();
  MEMORY[0x1EEE9AC00](v52);
  v97[-4] = v47;
  v97[-3] = v49;
  v97[-2] = v21;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1959E0);
  v98 = swift_getWitnessTable();
  sub_1C5A9E644();
  sub_1C5BCA2C4();
  (*(v100 + 8))(v51, v25);
  v53 = v126;
  v100 = sub_1C5A8C564();
  v54 = (v21 + v53[13]);
  v55 = *v54;
  v56 = *(v54 + 8);
  v57 = (v21 + v53[14]);
  LODWORD(v99) = *v57;
  LOBYTE(v51) = v57[1];
  v58 = v21;
  v59 = v57[2];
  v60 = *(v58 + v53[15]);
  v61 = *(v57 + 1);
  LOBYTE(v47) = v57[16];
  v62 = *(v58 + v53[16]);

  v63 = sub_1C5A8C864();
  v146 = v56;
  v145 = v47;
  KeyPath = swift_getKeyPath();
  v144 = 0;
  *&v138 = v100;
  *(&v138 + 1) = v55;
  LOBYTE(v139) = v146;
  *(&v139 + 1) = *v148;
  DWORD1(v139) = *&v148[3];
  BYTE8(v139) = v99;
  BYTE9(v139) = v51;
  BYTE10(v139) = v59;
  *(&v139 + 11) = *&v147[7];
  HIBYTE(v139) = v147[11];
  *&v140 = v61;
  BYTE8(v140) = v145;
  HIDWORD(v140) = *&v147[3];
  *(&v140 + 9) = *v147;
  *&v141 = v60;
  *(&v141 + 1) = v62;
  *&v142 = v63;
  *(&v142 + 1) = KeyPath;
  v143 = 0;
  v65 = sub_1C5924F54(&qword_1EC195A00, &qword_1EC1959B8);
  v136 = v98;
  v137 = v65;
  v66 = MEMORY[0x1E697E858];
  v67 = v102;
  v68 = swift_getWitnessTable();
  v69 = v103;
  v70 = v123;
  MEMORY[0x1C694E550](&v138, v67, &type metadata for ScrubberStateChangeModifier, v68);
  v151 = v140;
  v152 = v141;
  v153 = v142;
  v154 = v143;
  v149 = v138;
  v150 = v139;
  sub_1C5A9E6F4(&v149);
  (*(v101 + 8))(v70, v67);
  v72 = v117;
  v71 = v118;
  (*(v118 + 16))(v117, v127, v53);
  v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v74 = swift_allocObject();
  v75 = v124;
  *(v74 + 16) = v125;
  *(v74 + 24) = v75;
  (*(v71 + 32))(v74 + v73, v72, v53);
  v76 = sub_1C5A9E7B0();
  v134 = v68;
  v135 = v76;
  v77 = v105;
  v78 = swift_getWitnessTable();
  sub_1C59AEC40();
  v79 = v106;
  sub_1C5BC9FE4();

  (*(v104 + 8))(v69, v77);
  *&v138 = sub_1C5A8C564();
  v80 = sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0);
  v132 = v78;
  v133 = v80;
  v100 = v66;
  v81 = v108;
  v82 = swift_getWitnessTable();
  v83 = v109;
  MEMORY[0x1C694E550](&v138, v81, &type metadata for ScrubberWindowPropertiesModifier, v82);

  (*(v107 + 8))(v79, v81);
  swift_getKeyPath();
  v85 = v119;
  v84 = v120;
  v86 = v121;
  (*(v120 + 104))(v119, *MEMORY[0x1E697E7D0], v121);
  v87 = sub_1C5A9E804();
  v130 = v82;
  v131 = v87;
  v88 = v113;
  v89 = swift_getWitnessTable();
  v90 = v110;
  sub_1C5BC9DF4();

  (*(v84 + 8))(v85, v86);
  (*(v112 + 8))(v83, v88);
  v91 = sub_1C5924F54(&qword_1EDA46098, &qword_1EC1955C8);
  v128 = v89;
  v129 = v91;
  v92 = v115;
  v93 = swift_getWitnessTable();
  v94 = v111;
  sub_1C593EDC0(v90, v92, v93);
  v95 = *(v114 + 8);
  v95(v90, v92);
  sub_1C593EDC0(v94, v92, v93);
  return (v95)(v94, v92);
}

uint64_t sub_1C5A8E0BC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a2;
  v57 = a1;
  v59 = a5;
  v51 = a3;
  v52 = a4;
  v56 = type metadata accessor for Scrubber();
  v54 = *(v56 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v41 - v5;
  v60 = sub_1C5BC9654();
  MEMORY[0x1EEE9AC00](v60);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195918);
  type metadata accessor for Scrubber.CompanionViews();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x1E697E270];
  v85 = WitnessTable;
  v86 = MEMORY[0x1E697E270];
  v9 = swift_getWitnessTable();
  v10 = sub_1C5924F54(&qword_1EC195928, &qword_1EC195920);
  v83 = v9;
  v84 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1C5A25B6C();
  v81 = v11;
  v82 = v12;
  v79 = swift_getWitnessTable();
  v80 = v8;
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195938);
  sub_1C5BC8AB4();
  sub_1C5BC8BC4();
  v13 = sub_1C5BC8AB4();
  v14 = sub_1C5BC7AC4();
  v48 = v14;
  v15 = sub_1C5A9E260();
  v16 = swift_getWitnessTable();
  v77 = v15;
  v78 = v16;
  v75 = swift_getWitnessTable();
  v76 = MEMORY[0x1E697E070];
  v17 = swift_getWitnessTable();
  v18 = sub_1C5A9E5B4();
  v73 = v17;
  v74 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EC1959A8, &qword_1EC195938);
  v71 = v19;
  v72 = v20;
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x1E697EBB8];
  v49 = v13;
  v21 = swift_getWitnessTable();
  v47 = v21;
  v46 = sub_1C5A9B150(&qword_1EDA4E020, MEMORY[0x1E6969530]);
  v65 = v13;
  v66 = v14;
  v67 = v21;
  v68 = v46;
  v45 = MEMORY[0x1E6981448];
  swift_getOpaqueTypeMetadata2();
  v42 = sub_1C5BC8AB4();
  v44 = sub_1C5A9B150(&unk_1EDA461C8, MEMORY[0x1E697C998]);
  v22 = sub_1C5BC8544();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v43 = &v41 - v27;
  v28 = v50;
  sub_1C5BC9644();
  v29 = v54;
  v30 = v53;
  v31 = v56;
  (*(v54 + 16))(v53, v58, v56);
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v52;
  *(v33 + 16) = v51;
  *(v33 + 24) = v34;
  (*(v29 + 32))(v33 + v32, v30, v31);
  v65 = v49;
  v66 = v48;
  v67 = v47;
  v68 = v46;
  v64[3] = swift_getOpaqueTypeConformance2();
  v64[4] = MEMORY[0x1E697E5D8];
  v35 = v42;
  v36 = swift_getWitnessTable();
  sub_1C5A7D1C4(v28, sub_1C5AA3C54, v33, v60, v35, v44, v36);
  v64[2] = v36;
  v37 = swift_getWitnessTable();
  v38 = v43;
  sub_1C593EDC0(v26, v22, v37);
  v39 = *(v23 + 8);
  v39(v26, v22);
  (*(v23 + 16))(v26, v38, v22);
  v65 = 0x2D2D3A2D2DLL;
  v66 = 0xE500000000000000;
  LOBYTE(v67) = 0;
  v64[0] = v26;
  v64[1] = &v65;
  v63[0] = v22;
  v63[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1959B0);
  v61 = v37;
  v62 = sub_1C5AA3D1C();
  sub_1C594226C(v64, 2uLL, v63);
  v39(v38, v22);

  return (v39)(v26, v22);
}

uint64_t sub_1C5A8E930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v181 = a4;
  v129 = a2;
  v171 = a1;
  v176 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270);
  v174 = *(v6 - 8);
  v175 = v6;
  v170 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v173 = &v124 - v7;
  v177 = a3;
  v182 = type metadata accessor for Scrubber();
  v168 = *(v182 - 8);
  v166 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v167 = &v124 - v8;
  v180 = sub_1C5BC7AC4();
  v172 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v169 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1C5BC90F4();
  v163 = *(v165 - 8);
  v10 = MEMORY[0x1EEE9AC00](v165);
  v160 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v159 = &v124 - v12;
  v164 = sub_1C5BCAB54();
  v162 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v161 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195950) - 8;
  MEMORY[0x1EEE9AC00](v128);
  v178 = (&v124 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195918);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v124 - v16;
  type metadata accessor for Scrubber.CompanionViews();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v17 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v19 = MEMORY[0x1E697E270];
  v205 = WitnessTable;
  v206 = MEMORY[0x1E697E270];
  v20 = swift_getWitnessTable();
  v158 = MEMORY[0x1E697F548];
  v21 = sub_1C5924F54(&qword_1EC195928, &qword_1EC195920);
  v203 = v20;
  v204 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_1C5A25B6C();
  v201 = v22;
  v202 = v23;
  v199 = swift_getWitnessTable();
  v200 = v19;
  v24 = swift_getWitnessTable();
  v139 = v17;
  v131 = v24;
  sub_1C5BC8BE4();
  v152 = v15;
  v25 = sub_1C5BC8AB4();
  v134 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v124 - v26;
  v27 = sub_1C5BC8AB4();
  v137 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v124 - v28;
  v29 = sub_1C5BC8AB4();
  v141 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v124 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195938);
  v31 = sub_1C5BC8AB4();
  v155 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v154 = &v124 - v32;
  sub_1C5BC8BC4();
  v33 = sub_1C5BC8AB4();
  v157 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v179 = &v124 - v34;
  v35 = sub_1C5A9E260();
  v36 = swift_getWitnessTable();
  v125 = v35;
  v197 = v35;
  v198 = v36;
  v136 = v25;
  v126 = swift_getWitnessTable();
  v195 = v126;
  v196 = MEMORY[0x1E697E070];
  v138 = v27;
  v37 = swift_getWitnessTable();
  v38 = sub_1C5A9E5B4();
  v127 = v37;
  v193 = v37;
  v194 = v38;
  v143 = v29;
  v39 = v177;
  v40 = swift_getWitnessTable();
  v41 = sub_1C5924F54(&qword_1EC1959A8, &qword_1EC195938);
  v130 = v40;
  v191 = v40;
  v192 = v41;
  v156 = v31;
  v132 = swift_getWitnessTable();
  v189 = v132;
  v190 = MEMORY[0x1E697EBB8];
  v42 = swift_getWitnessTable();
  v43 = sub_1C5A9B150(&qword_1EDA4E020, MEMORY[0x1E6969530]);
  v158 = v33;
  *&v207 = v33;
  *(&v207 + 1) = v180;
  v149 = v42;
  *&v208 = v42;
  *(&v208 + 1) = v43;
  v145 = v43;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v147 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v142 = &v124 - v45;
  v148 = v46;
  v47 = sub_1C5BC8AB4();
  v150 = *(v47 - 8);
  v48 = MEMORY[0x1EEE9AC00](v47);
  v144 = &v124 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v146 = &v124 - v50;
  v51 = v129;
  v52 = sub_1C5A8C564();
  v53 = v178;
  *v178 = v52;
  v54 = type metadata accessor for MediaTimelineControl(0);
  v55 = *(v54 + 20);
  *(v53 + v55) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v56 = v53 + *(v54 + 24);
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = sub_1C5A8C564();
  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195970) + 36)) = v57;
  v58 = sub_1C5A8C564();
  swift_getKeyPath();
  *&v207 = v58;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  LOBYTE(v57) = *(v58 + 56);

  *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195960) + 36)) = v57;
  v59 = sub_1C5BCAA54();
  v61 = v60;
  sub_1C5A8FD60(&v207);
  v62 = v53 + *(v128 + 44);
  *v62 = v59;
  *(v62 + 1) = v61;
  v63 = v208;
  *(v62 + 1) = v207;
  *(v62 + 2) = v63;
  v64 = v210;
  *(v62 + 3) = v209;
  *(v62 + 4) = v64;
  v65 = v51;
  v66 = *(*(sub_1C5A8C564() + 16) + 72);
  swift_getKeyPath();
  v185 = v66;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  LODWORD(v59) = *(v66 + 57);

  v153 = v47;
  v67 = v39;
  if (v59 == 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = sub_1C5BCBDE4();
  }

  v69 = *(sub_1C5A8C564() + 16);
  swift_getKeyPath();
  v185 = v69;
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v70 = *(v69 + 48);
  v128 = *(v69 + 32);
  v124 = v70;

  v71 = v151;
  sub_1C59E7D34(v178, v151, &qword_1EC195950);
  v72 = v71 + *(v152 + 36);
  *v72 = v68 & 1;
  *(v72 + 24) = v124;
  *(v72 + 8) = v128;
  v73 = sub_1C5BCAA44();
  MEMORY[0x1EEE9AC00](v73);
  v74 = v181;
  *(&v124 - 4) = v67;
  *(&v124 - 3) = v74;
  *(&v124 - 2) = v65;
  v75 = v133;
  sub_1C5BCA2C4();
  sub_1C5924EF4(v71, &qword_1EC195918);
  v76 = *(sub_1C5A8C564() + 16);
  swift_getKeyPath();
  v185 = v76;
  sub_1C5BC7B74();

  sub_1C5BCABD4();
  v78 = v135;
  v77 = v136;
  sub_1C5BC9E54();
  (*(v134 + 8))(v75, v77);
  v79 = sub_1C5A8C564();
  KeyPath = swift_getKeyPath();
  v185 = v79;
  v186 = KeyPath;
  LOBYTE(v187) = 0;
  v81 = v140;
  v82 = v138;
  MEMORY[0x1C694E550](&v185, v138, &type metadata for SectionDelimiterModifier, v127);

  (*(v137 + 8))(v78, v82);
  if (qword_1EC190780 != -1)
  {
    swift_once();
  }

  v83 = *(sub_1C5A8C564() + 16);
  swift_getKeyPath();
  v185 = v83;
  sub_1C5BC7B74();

  v84 = *(v83 + 64);

  v185 = v84;
  v85 = v154;
  v86 = v143;
  sub_1C5BCA384();
  (*(v141 + 8))(v81, v86);
  v87 = v159;
  sub_1C5A8C9A8(v182, v159);
  v88 = v163;
  v89 = v160;
  v90 = v165;
  (*(v163 + 104))(v160, *MEMORY[0x1E697F608], v165);
  sub_1C5A9B150(&qword_1EDA46328, MEMORY[0x1E697F610]);
  v91 = sub_1C5BCADB4();
  v92 = *(v88 + 8);
  v92(v89, v90);
  v92(v87, v90);
  v94 = v161;
  v93 = v162;
  v95 = MEMORY[0x1E6981DF0];
  if ((v91 & 1) == 0)
  {
    v95 = MEMORY[0x1E6981DB8];
  }

  v96 = v164;
  (*(v162 + 104))(v161, *v95, v164);
  v97 = v156;
  sub_1C5BCA394();
  (*(v93 + 8))(v94, v96);
  (*(v155 + 8))(v85, v97);
  v98 = v169;
  v99 = v175;
  v100 = v171;
  sub_1C5BC8514();
  v101 = v167;
  v102 = v168;
  (*(v168 + 16))(v167, v65, v182);
  v104 = v173;
  v103 = v174;
  (*(v174 + 16))(v173, v100, v99);
  v105 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v106 = (v166 + *(v103 + 80) + v105) & ~*(v103 + 80);
  v107 = swift_allocObject();
  v109 = v181;
  v108 = v182;
  *(v107 + 16) = v177;
  *(v107 + 24) = v109;
  (*(v102 + 32))(v107 + v105, v101, v108);
  (*(v103 + 32))(v107 + v106, v104, v99);
  v110 = v142;
  v111 = v158;
  v112 = v179;
  v113 = v180;
  v114 = v149;
  v115 = v145;
  sub_1C5BCA344();

  (*(v172 + 8))(v98, v113);
  (*(v157 + 8))(v112, v111);
  sub_1C5BC98F4();
  v185 = v111;
  v186 = v113;
  v187 = v114;
  v188 = v115;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v117 = v144;
  v118 = v148;
  sub_1C5BCA2F4();
  (*(v147 + 8))(v110, v118);
  v183 = OpaqueTypeConformance2;
  v184 = MEMORY[0x1E697E5D8];
  v119 = v153;
  v120 = swift_getWitnessTable();
  v121 = v146;
  sub_1C593EDC0(v117, v119, v120);
  v122 = *(v150 + 8);
  v122(v117, v119);
  sub_1C593EDC0(v121, v119, v120);
  return (v122)(v121, v119);
}

uint64_t sub_1C5A8FD60@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Scrubber();
  v2 = sub_1C5A8C564();
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  v12 = *(v2 + 72);

  v3 = *(*(*(sub_1C5A8C564() + 16) + 72) + 80);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  v11 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);

  v4 = sub_1C5A8C564();
  swift_getKeyPath();
  sub_1C5BC7B74();

  v10 = *(v4 + 64);
  v5 = *(v4 + 72);

  v6 = *(*(*(sub_1C5A8C564() + 16) + 72) + 80);
  swift_getKeyPath();
  sub_1C5BC7B74();

  v7 = *(v6 + 40);
  LOBYTE(v2) = *(v6 + 48);

  v8 = *(*(*(sub_1C5A8C564() + 16) + 72) + 96);

  *a1 = (v12 & 1) == 0;
  *(a1 + 1) = v6;
  *(a1 + 4) = v6 >> 24;
  *(a1 + 8) = v11;
  *(a1 + 16) = v3;
  *(a1 + 17) = *v15;
  *(a1 + 20) = *&v15[3];
  *(a1 + 24) = v10;
  *(a1 + 32) = v5;
  *(a1 + 36) = *&v14[3];
  *(a1 + 33) = *v14;
  *(a1 + 40) = v7;
  *(a1 + 48) = v2;
  *(a1 + 52) = *&v13[3];
  *(a1 + 49) = *v13;
  *(a1 + 56) = v8;
  return result;
}

uint64_t sub_1C5A9004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Scrubber.CompanionViews();
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = sub_1C5BC8AB4();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v48 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195920);
  v51 = v11;
  v13 = sub_1C5BC8AB4();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v48 - v14;
  v59 = v15;
  v16 = sub_1C5BC8AB4();
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v48 - v17;
  v61 = v18;
  v19 = sub_1C5BC8AB4();
  v62 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v56 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v48 - v22;
  v23 = type metadata accessor for Scrubber();
  v24 = sub_1C5A8C564();
  (*(v5 + 16))(v7, a1 + *(v23 + 68), a2);
  v49 = v10;
  sub_1C5A9085C(v24, v7, a2, v10);
  v25 = *(*(sub_1C5A8C564() + 16) + 72);
  swift_getKeyPath();
  v72 = v25;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  LODWORD(v24) = *(v25 + 57);

  if (v24 == 1)
  {

    v26 = v52;
    v27 = v51;
  }

  else
  {
    v26 = v52;
    v27 = v51;
    sub_1C5BCBDE4();
  }

  v28 = v50;
  WitnessTable = swift_getWitnessTable();
  v30 = v49;
  sub_1C5BCA264();
  (*(v28 + 8))(v30, v8);
  if (qword_1EC190780 != -1)
  {
    swift_once();
  }

  v31 = *(*(sub_1C5A8C564() + 16) + 72);
  swift_getKeyPath();
  v72 = v31;
  sub_1C5BC7B74();

  v32 = *(v31 + 57);

  LOBYTE(v72) = v32;
  v33 = MEMORY[0x1E697E270];
  v70 = WitnessTable;
  v71 = MEMORY[0x1E697E270];
  v34 = swift_getWitnessTable();
  sub_1C5A9FFD0();
  v35 = v53;
  sub_1C5BCA384();
  (*(v54 + 8))(v26, v27);
  v36 = sub_1C5924F54(&qword_1EC195928, &qword_1EC195920);
  v68 = v34;
  v69 = v36;
  v37 = v59;
  v38 = swift_getWitnessTable();
  v39 = v55;
  sub_1C5A25A24(v37, v38, 0.0, 1.0);
  (*(v57 + 8))(v35, v37);
  v40 = sub_1C5A25B6C();
  v66 = v38;
  v67 = v40;
  v41 = v61;
  v42 = swift_getWitnessTable();
  v43 = v56;
  sub_1C5BCA264();
  (*(v60 + 8))(v39, v41);
  v64 = v42;
  v65 = v33;
  v44 = swift_getWitnessTable();
  v45 = v58;
  sub_1C593EDC0(v43, v19, v44);
  v46 = *(v62 + 8);
  v46(v43, v19);
  sub_1C593EDC0(v45, v19, v44);
  return (v46)(v45, v19);
}

uint64_t sub_1C5A9085C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for Scrubber.CompanionViews();
  (*(*(a3 - 8) + 32))(&a4[*(v7 + 36)], a2, a3);
  v8 = &a4[*(v7 + 40)];
  result = swift_getKeyPath();
  *v8 = result;
  v8[8] = 0;
  return result;
}

uint64_t sub_1C5A908F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for Scrubber();
  sub_1C5A8C564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270);
  sub_1C5BC8514();
  v3 = sub_1C5BC7AC4();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_1C5A81C94(v2);
}

uint64_t sub_1C5A90A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v8 = type metadata accessor for Scrubber();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  result = sub_1C5A8CBAC(v10);
  v14 = 0;
  v15 = 0;
  if (result)
  {
    (*(v9 + 16))(v12, a1, v8);
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    result = (*(v9 + 32))(v15 + v16, v12, v8);
    v14 = sub_1C5AA3C3C;
  }

  *a4 = v14;
  a4[1] = v15;
  return result;
}

uint64_t sub_1C5A90B64@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C5BC9384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BCA484();
  type metadata accessor for Scrubber();
  v7 = *(sub_1C5A8C564() + 16);

  sub_1C5BC94A4();
  sub_1C5BC86D4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  MinX = CGRectGetMinX(v24);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196258) + 36));
  *v17 = v7;
  v17[1] = MinX;
  v23[1] = 0;
  sub_1C5BCA684();
  v18 = v23[3];
  v17[2] = *&v23[2];
  *(v17 + 3) = v18;
  v19 = type metadata accessor for ScrubberTooltipModifier(0);
  v20 = *(v19 + 28);
  *(v17 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v21 = *(v19 + 32);
  *(v17 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v6;
  return result;
}

uint64_t sub_1C5A90DA8(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Scrubber();
  sub_1C5A8C564();
  sub_1C5A9C31C(v1, 0);
  sub_1C5A8A408();
}

uint64_t sub_1C5A90E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  sub_1C5BCA714();
  type metadata accessor for Scrubber.SensitivityLabel();
  sub_1C5BC92D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F00);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  sub_1C5924F54(&qword_1EC195F08, &qword_1EC195EF0);
  v6 = sub_1C5BC87C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v5;
  v21 = v4;
  v22 = v5;
  v23 = v2;
  sub_1C5A9110C(sub_1C5AA1F88, v20, v10);

  v14 = sub_1C5924F54(&qword_1EC195F10, &qword_1EC195EF0);
  WitnessTable = swift_getWitnessTable();
  v24 = v14;
  v25 = WitnessTable;
  v16 = swift_getWitnessTable();
  sub_1C593EDC0(v10, v6, v16);
  v17 = *(v7 + 8);
  v17(v10, v6);
  sub_1C593EDC0(v12, v6, v16);
  return (v17)(v12, v6);
}

uint64_t sub_1C5A9110C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF8);
  sub_1C5BCA714();
  type metadata accessor for Scrubber.SensitivityLabel();
  sub_1C5BC92D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F00);
  swift_getTupleTypeMetadata3();
  v6 = sub_1C5BCAB74();
  v7 = sub_1C5AA21C4();
  WitnessTable = swift_getWitnessTable();
  return sub_1C59485B4(a1, a2, &type metadata for ScrubberCompanionViewLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_1C5A9122C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v97 = a3;
  v5 = type metadata accessor for Scrubber.SensitivityLabel();
  v85 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v84 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v80 - v8;
  v104 = a2;
  v9 = sub_1C5BCA714();
  v82 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v81 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v80 - v12;
  v101 = v13;
  v102 = v5;
  v14 = sub_1C5BC92D4();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v94 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v80 - v17;
  v18 = sub_1C5BC8F34();
  v87 = *(v18 - 8);
  v88 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195EF8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v93 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v80 - v26;
  v103 = a1;
  v27 = *a1;
  swift_getKeyPath();
  *&v114[0] = v27;
  v98 = sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  if (*(v27 + 57))
  {
    v90 = 0x2D2D3A2D2DLL;
    v91 = 0xE500000000000000;
  }

  else
  {
    v90 = sub_1C5A81AF8();
    v91 = v28;
  }

  v29 = *(*(v27 + 16) + 72);
  swift_getKeyPath();
  *&v114[0] = v29;
  v92 = sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  if (*(v29 + 57) && *(v29 + 57) == 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_1C5BCBDE4();
  }

  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  v89 = v30 & 1;
  *(&v116[3] + 7) = *(&v116[10] + 8);
  *(&v116[4] + 7) = *(&v116[11] + 8);
  *(&v116[5] + 7) = *(&v116[12] + 8);
  *(&v116[6] + 7) = *(&v116[13] + 8);
  *(v116 + 7) = *(&v116[7] + 8);
  *(&v116[1] + 7) = *(&v116[8] + 8);
  *(&v116[2] + 7) = *(&v116[9] + 8);
  swift_getKeyPath();
  *&v114[0] = v27;
  sub_1C5BC7B74();

  v31 = 0.0;
  if ((*(v27 + 58) & 1) == 0)
  {
    v32 = v103 + *(type metadata accessor for Scrubber.CompanionViews() + 40);
    v33 = *v32;
    if (v32[8] != 1)
    {

      sub_1C5BCB4E4();
      v34 = v20;
      v35 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v20 = v34;
      v36 = v86;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v33, 0);
      (*(v87 + 8))(v36, v88);
      LOBYTE(v33) = v114[0];
    }

    if (v33)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = 0.0;
    }
  }

  v37 = sub_1C5BCAA64();
  v39 = v38;
  v98 = v20;
  v40 = &v25[*(v20 + 36)];
  sub_1C5A920B0(v103, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F18) + 36));
  *v41 = v37;
  v41[1] = v39;
  v42 = v116[2];
  *(v25 + 65) = v116[3];
  *(v25 + 49) = v42;
  v43 = v116[0];
  *(v25 + 33) = v116[1];
  *(v25 + 17) = v43;
  *(v25 + 16) = *(&v116[6] + 15);
  *(v25 + 113) = v116[6];
  v44 = v116[4];
  *(v25 + 97) = v116[5];
  v45 = v91;
  *v25 = v90;
  *(v25 + 1) = v45;
  v25[16] = v89;
  *(v25 + 81) = v44;
  *(v25 + 17) = v31;
  sub_1C59E7D34(v25, v99, &qword_1EC195EF8);
  swift_getKeyPath();
  *&v114[0] = v27;
  sub_1C5BC7B74();

  v46 = *(v27 + 40);
  if (qword_1EC190760 != -1)
  {
    swift_once();
  }

  if (v46 == qword_1EC1A6BA0)
  {
    v47 = sub_1C5BC8FA4();
    MEMORY[0x1EEE9AC00](v47);
    v48 = v81;
    sub_1C5BCA704();
    v49 = v101;
    WitnessTable = swift_getWitnessTable();
    v51 = v80;
    sub_1C593EDC0(v48, v49, WitnessTable);
    v52 = *(v82 + 8);
    v52(v48, v49);
    sub_1C593EDC0(v51, v49, WitnessTable);
    swift_getWitnessTable();
    sub_1C5950E54(v48, v49);
    v52(v48, v49);
    v53 = v51;
    v54 = v49;
  }

  else
  {
    swift_getKeyPath();
    *&v114[0] = v27;
    sub_1C5BC7B74();

    v55 = v84;
    sub_1C5A923AC(*(v27 + 40), v84);
    v56 = v102;
    v57 = swift_getWitnessTable();
    v58 = v83;
    sub_1C593EDC0(v55, v56, v57);
    v52 = *(v85 + 8);
    v52(v55, v56);
    sub_1C593EDC0(v58, v56, v57);
    v59 = v101;
    swift_getWitnessTable();
    sub_1C5941738(v55, v59, v56);
    v52(v55, v56);
    v53 = v58;
    v54 = v56;
  }

  v52(v53, v54);
  v60 = sub_1C5A7DAAC();
  v90 = v61;
  v91 = v60;
  v62 = *(*(v27 + 16) + 72);
  swift_getKeyPath();
  *&v114[0] = v62;
  sub_1C5BC7B74();

  if (*(v62 + 57) && *(v62 + 57) == 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_1C5BCBDE4();
  }

  sub_1C5BCAA74();
  sub_1C5BC8BD4();
  *&v115[55] = *(&v116[17] + 8);
  *&v115[71] = *(&v116[18] + 8);
  *&v115[87] = *(&v116[19] + 8);
  *&v115[103] = *(&v116[20] + 8);
  *&v115[7] = *(&v116[14] + 8);
  *&v115[23] = *(&v116[15] + 8);
  *&v115[39] = *(&v116[16] + 8);
  v64 = v103 + *(type metadata accessor for Scrubber.CompanionViews() + 40);
  v65 = *v64;
  if ((v64[8] & 1) == 0)
  {

    sub_1C5BCB4E4();
    v66 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v67 = v86;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v65, 0);
    (*(v87 + 8))(v67, v88);
    LOBYTE(v65) = v114[0];
  }

  v68 = v63 & 1;
  if (v65)
  {
    v69 = 1.0;
  }

  else
  {
    v69 = 0.0;
  }

  v70 = v99;
  v71 = v93;
  sub_1C59400B0(v99, v93, &qword_1EC195EF8);
  v113[0] = v71;
  v73 = v94;
  v72 = v95;
  v74 = v100;
  v75 = v96;
  (*(v95 + 16))(v94, v100, v96);
  *(&v112[4] + 1) = *&v115[64];
  *(&v112[5] + 1) = *&v115[80];
  *(&v112[6] + 1) = *&v115[96];
  *(v112 + 1) = *v115;
  *(&v112[1] + 1) = *&v115[16];
  *(&v112[2] + 1) = *&v115[32];
  *&v111 = v91;
  *(&v111 + 1) = v90;
  LOBYTE(v112[0]) = v68;
  *&v112[7] = *&v115[111];
  *(&v112[3] + 1) = *&v115[48];
  *(&v112[7] + 1) = v69;
  v113[1] = v73;
  v113[2] = &v111;
  v110[0] = v98;
  v110[1] = v75;
  v110[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F00);
  v107 = sub_1C5AA1F94();
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v105 = v76;
  v106 = v77;
  v108 = swift_getWitnessTable();
  v109 = sub_1C5AA204C();
  sub_1C594226C(v113, 3uLL, v110);
  v78 = *(v72 + 8);
  v78(v74, v75);
  sub_1C5924EF4(v70, &qword_1EC195EF8);
  v114[5] = v112[4];
  v114[6] = v112[5];
  v114[7] = v112[6];
  v114[8] = v112[7];
  v114[2] = v112[1];
  v114[3] = v112[2];
  v114[4] = v112[3];
  v114[0] = v111;
  v114[1] = v112[0];
  sub_1C5924EF4(v114, &qword_1EC195F00);
  v78(v73, v75);
  return sub_1C5924EF4(v71, &qword_1EC195EF8);
}

uint64_t sub_1C5A920B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = *a1;
  swift_getKeyPath();
  v15[1] = v8;
  sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
  sub_1C5BC7B74();

  if (*(v8 + 58) == 1)
  {
    sub_1C5BC84B4();
    v9 = &v7[*(v4 + 36)];
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F60) + 28);
    v11 = *MEMORY[0x1E697DC20];
    v12 = sub_1C5BC82A4();
    (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
    *v9 = swift_getKeyPath();
    sub_1C59E7D34(v7, a2, &qword_1EC195F58);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

uint64_t sub_1C5A922B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Scrubber.CompanionViews();
  sub_1C593EDC0(a1 + *(v9 + 36), a2, a3);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1C5A923AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  v3 = *(type metadata accessor for Scrubber.SensitivityLabel() + 40);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F50);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5A9246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC190758 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v4 = qword_1EC1A6B90;
  v5 = *algn_1EC1A6B98;
  sub_1C5A92574(v2, *(a1 + 24), a2);
  KeyPath = swift_getKeyPath();
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196490) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196498) + 36)) = v5;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964A0) + 36)) = 256;
}

uint64_t sub_1C5A92574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v56 = a2;
  v63 = a3;
  v4 = sub_1C5BC89B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964A8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = (&v53 - v10);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964B0);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v53 - v11;
  v12 = sub_1C5BC8F34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 8);
  v17 = a1;
  if (*(a1 + 16) != 1)
  {

    sub_1C5BCB4E4();
    v24 = sub_1C5BC9844();
    v55 = v4;
    v54 = a1;
    v25 = v24;
    sub_1C5BC7C54();

    v17 = v54;
    v4 = v55;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v16, 0);
    (*(v13 + 8))(v15, v12);
    if (LOBYTE(v71[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    *&v71[0] = sub_1C5A7DE00(*v17);
    *(&v71[0] + 1) = v26;
    sub_1C594A23C();
    v27 = sub_1C5BC9CA4();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    KeyPath = swift_getKeyPath();
    v35 = swift_getKeyPath();
    v70 = v31 & 1;
    v69 = 0;
    *&v64 = v27;
    *(&v64 + 1) = v29;
    LOBYTE(v65) = v31 & 1;
    *(&v65 + 1) = v33;
    *&v66 = KeyPath;
    *(&v66 + 1) = 2;
    LOBYTE(v67) = 0;
    *(&v67 + 1) = v35;
    v68 = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C8);
    v37 = sub_1C5AA4CE4();
    v38 = v58;
    sub_1C5BCA054();
    v71[2] = v66;
    v71[3] = v67;
    v72 = v68;
    v71[0] = v64;
    v71[1] = v65;
    sub_1C5924EF4(v71, &qword_1EC1964C8);
    v39 = v59;
    v40 = v62;
    (*(v59 + 16))(v60, v38, v62);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C0);
    *&v64 = v36;
    *(&v64 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_1C595E1AC();
    sub_1C5BC92C4();
    return (*(v39 + 8))(v38, v40);
  }

  if (v16)
  {
    goto LABEL_6;
  }

LABEL_3:
  type metadata accessor for Scrubber.SensitivityLabel();
  sub_1C59F0004(v9);
  v18 = v57;
  (*(v5 + 104))(v57, *MEMORY[0x1E697E708], v4);
  sub_1C5A9B150(&qword_1EC1964B8, MEMORY[0x1E697E730]);
  v19 = sub_1C5BCAD84();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v9, v4);
  v21 = *v17;
  if (v19)
  {
    v22 = sub_1C5A92C44(v21);
  }

  else
  {
    v22 = sub_1C5A7DE00(v21);
  }

  *&v71[0] = v22;
  *(&v71[0] + 1) = v23;
  sub_1C594A23C();
  v42 = sub_1C5BC9CA4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = swift_getKeyPath();
  v50 = v60;
  *v60 = v42;
  v50[1] = v44;
  *(v50 + 16) = v46 & 1;
  v50[3] = v48;
  v50[4] = v49;
  v50[5] = 1;
  *(v50 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964C8);
  v52 = sub_1C5AA4CE4();
  *&v71[0] = v51;
  *(&v71[0] + 1) = v52;
  swift_getOpaqueTypeConformance2();
  sub_1C595E1AC();
  return sub_1C5BC92C4();
}

uint64_t sub_1C5A92C44(uint64_t a1)
{
  v2 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (qword_1EC190760 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BA0 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (qword_1EC190768 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BA8 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (qword_1EC190770 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BB0 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
LABEL_15:
      v4 = qword_1EDA5DD00;
      sub_1C5BC7B14();
      return sub_1C5BCAE94();
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (qword_1EC190778 != -1)
  {
    swift_once();
  }

  if (qword_1EC1A6BB8 == a1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t sub_1C5A93048@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v65 = sub_1C5BC8F34();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FE8);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v4 = &v63 - v3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FF0);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v63 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FF8);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v63 - v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196000);
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v63 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196008);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v63 - v8;
  v9 = v1[2];
  v10 = v1[4];
  v91 = v1[3];
  v92 = v10;
  v93 = *(v1 + 80);
  v11 = v1[1];
  v89 = *v1;
  *v90 = v11;
  *&v90[16] = v9;
  *&v83 = *(v1 + 1);
  BYTE8(v83) = *(v1 + 16);
  v12 = swift_allocObject();
  v13 = v1[3];
  *(v12 + 48) = v1[2];
  *(v12 + 64) = v13;
  *(v12 + 80) = v1[4];
  *(v12 + 96) = *(v1 + 80);
  v14 = v1[1];
  *(v12 + 16) = *v1;
  *(v12 + 32) = v14;
  sub_1C5AA2EC0(&v89, &v85);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196010);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78);
  v17 = sub_1C5924F54(&qword_1EC196018, &qword_1EC196010);
  v18 = sub_1C59BD6B8();
  sub_1C5BCA344();

  v83 = *&v90[8];
  v84 = v90[24];
  v19 = swift_allocObject();
  v20 = v91;
  v21 = v92;
  v22 = *v90;
  *(v19 + 48) = *&v90[16];
  *(v19 + 64) = v20;
  *(v19 + 80) = v21;
  *(v19 + 96) = v93;
  *(v19 + 16) = v89;
  *(v19 + 32) = v22;
  sub_1C5AA2EC0(&v89, &v85);
  v85 = v15;
  v86 = v16;
  v87 = v17;
  v88 = v18;
  v23 = MEMORY[0x1E6981448];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1C5AA2F24();
  v26 = v67;
  v27 = v68;
  sub_1C5BCA344();

  (*(v69 + 8))(v4, v27);
  *&v83 = v91;
  v28 = swift_allocObject();
  v29 = v91;
  v30 = v92;
  v31 = *v90;
  *(v28 + 48) = *&v90[16];
  *(v28 + 64) = v29;
  *(v28 + 80) = v30;
  *(v28 + 96) = v93;
  *(v28 + 16) = v89;
  *(v28 + 32) = v31;
  sub_1C5AA2EC0(&v89, &v85);
  v85 = v27;
  v86 = &type metadata for ScrubberLoadingConfiguration;
  v87 = OpaqueTypeConformance2;
  v88 = v25;
  v66 = v23;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v70;
  v34 = v71;
  sub_1C5BCA344();

  (*(v72 + 8))(v26, v34);
  v95 = *(&v91 + 1);
  *&v83 = *(&v91 + 1);
  v35 = swift_allocObject();
  v36 = v91;
  v37 = v92;
  v38 = *v90;
  *(v35 + 48) = *&v90[16];
  *(v35 + 64) = v36;
  *(v35 + 80) = v37;
  *(v35 + 96) = v93;
  *(v35 + 16) = v89;
  *(v35 + 32) = v38;
  sub_1C5AA2EC0(&v89, &v85);
  sub_1C59400B0(&v95, &v85, &qword_1EC196030);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196030);
  v85 = v34;
  v86 = MEMORY[0x1E69E63B0];
  v87 = v32;
  v88 = MEMORY[0x1E69E63E0];
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_1C5AA2F88();
  v42 = v73;
  v43 = v74;
  sub_1C5BCA344();

  sub_1C5924EF4(&v95, &qword_1EC196030);
  (*(v75 + 8))(v33, v43);
  v94 = v92;
  *&v83 = v92;
  v44 = swift_allocObject();
  v45 = v91;
  v46 = v92;
  v47 = *v90;
  *(v44 + 48) = *&v90[16];
  *(v44 + 64) = v45;
  *(v44 + 80) = v46;
  *(v44 + 96) = v93;
  *(v44 + 16) = v89;
  *(v44 + 32) = v47;
  sub_1C5AA2EC0(&v89, &v85);
  sub_1C59400B0(&v94, &v85, &qword_1EC195D18);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195D18);
  v85 = v43;
  v86 = v39;
  v87 = v40;
  v88 = v41;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_1C5AA3038();
  v51 = v76;
  sub_1C5BCA344();
  v52 = v51;

  sub_1C5924EF4(&v94, &qword_1EC195D18);
  (*(v77 + 8))(v42, v51);
  *&v83 = *(&v92 + 1);
  BYTE8(v83) = v93;
  if (v93 == 1)
  {
    v53 = *(&v92 + 1);
  }

  else
  {

    sub_1C5BCB4E4();
    v54 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v55 = v63;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v83, &unk_1EC196050);
    (*(v64 + 8))(v55, v65);
    v53 = v85;
  }

  v82 = v53;
  v56 = swift_allocObject();
  v57 = v91;
  v58 = v92;
  v59 = *v90;
  *(v56 + 48) = *&v90[16];
  *(v56 + 64) = v57;
  *(v56 + 80) = v58;
  *(v56 + 96) = v93;
  *(v56 + 16) = v89;
  *(v56 + 32) = v59;
  sub_1C5AA2EC0(&v89, &v85);
  v85 = v52;
  v86 = v48;
  v87 = v49;
  v88 = v50;
  swift_getOpaqueTypeConformance2();
  sub_1C59AEC40();
  v60 = v79;
  v61 = v81;
  sub_1C5BCA344();

  return (*(v78 + 8))(v61, v60);
}

uint64_t sub_1C5A93C24(double *a1)
{
  v1 = a1[6];
  v2 = *(*(*a1 + 16) + 72);
  v3 = *(v2 + 88);
  if (v3 == v1)
  {
    *(v2 + 88) = v1;
    return sub_1C5A8916C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B64();
  }
}

void sub_1C5A93D4C(uint64_t a1)
{
  v1 = *(a1 + 56);

  sub_1C5A9B6AC(v2);
  sub_1C5A83BDC(v1);
}

uint64_t sub_1C5A93D9C(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 72);
  v10 = v6;
  v11 = *(a1 + 80);
  if ((v11 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v10, &unk_1EC196050);
    (*(v3 + 8))(v5, v2);
    v6 = v9[1];
  }

  return sub_1C5A87C04(v6, 0);
}

uint64_t sub_1C5A93F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FA8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C5A93F90(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EC190750 != -1)
  {
    swift_once();
  }

  v5 = 2;
  if (a3)
  {
    v5 = 1;
  }

  v6 = qword_1EC1A6B78[v5];
  *(&v26[0] + 1) = a2;
  sub_1C594A23C();

  v7 = sub_1C5BC9CA4();
  v9 = v8;
  v11 = v10;

  *&v26[0] = v6;
  v12 = sub_1C5BC9BC4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1C5953BD8(v7, v9, v11 & 1);

  if (qword_1EC190780 != -1)
  {
    swift_once();
  }

  v19 = qword_1EC1958E0;

  v20 = sub_1C5BC9914();
  v27 = v16 & 1;
  *&v22 = v12;
  *(&v22 + 1) = v14;
  LOBYTE(v23) = v16 & 1;
  *(&v23 + 1) = v18;
  *&v24 = v19;
  BYTE8(v24) = a3 & 1;
  *&v25 = swift_getKeyPath();
  *(&v25 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196140);
  sub_1C5AA32B8();
  sub_1C5BCA094();
  v26[0] = v22;
  v26[1] = v23;
  v26[2] = v24;
  v26[3] = v25;
  return sub_1C5924EF4(v26, &qword_1EC196140);
}

uint64_t sub_1C5A941C4@<X0>(uint64_t a1@<X8>)
{
  sub_1C5A9426C(v1, v15);
  v3 = sub_1C5BC9884();
  result = sub_1C5BC8174();
  v5 = v15[11];
  *(a1 + 160) = v15[10];
  *(a1 + 176) = v5;
  *(a1 + 192) = v15[12];
  v6 = v15[7];
  *(a1 + 96) = v15[6];
  *(a1 + 112) = v6;
  v7 = v15[9];
  *(a1 + 128) = v15[8];
  *(a1 + 144) = v7;
  v8 = v15[3];
  *(a1 + 32) = v15[2];
  *(a1 + 48) = v8;
  v9 = v15[5];
  *(a1 + 64) = v15[4];
  *(a1 + 80) = v9;
  v10 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v10;
  *(a1 + 208) = v3;
  *(a1 + 216) = v11;
  *(a1 + 224) = v12;
  *(a1 + 232) = v13;
  *(a1 + 240) = v14;
  *(a1 + 248) = 0;
  return result;
}

__n128 sub_1C5A9426C@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 & 1) == 0 || (a1[16] & 1) != 0 || (a1[48])
  {
    *&v35 = sub_1C5BCA474();
    sub_1C5AA34B4(&v35);
    v33 = *&v36[144];
    v34[0] = *&v36[160];
    *(v34 + 9) = *&v36[169];
    v29 = *&v36[80];
    v30 = *&v36[96];
    v31 = *&v36[112];
    v32 = *&v36[128];
  }

  else
  {
    v9 = sub_1C5BC8FC4();
    LOBYTE(v23) = 0;
    sub_1C5A945A0(&v37);
    v19 = v45;
    v20 = v46;
    v15 = v41;
    v16 = v42;
    v17 = v43;
    v18 = v44;
    v11 = v37;
    v12 = v38;
    v13 = v39;
    v14 = v40;
    v22[7] = v44;
    v22[8] = v45;
    v22[9] = v46;
    v22[10] = v47;
    v22[3] = v40;
    v22[4] = v41;
    v22[5] = v42;
    v22[6] = v43;
    v21 = v47;
    v22[0] = v37;
    v22[1] = v38;
    v22[2] = v39;
    sub_1C59400B0(&v11, &v35, &qword_1EC196198);
    sub_1C5924EF4(v22, &qword_1EC196198);
    *&v10[119] = v18;
    *&v10[135] = v19;
    *&v10[151] = v20;
    *&v10[167] = v21;
    *&v10[55] = v14;
    *&v10[71] = v15;
    *&v10[87] = v16;
    *&v10[103] = v17;
    *&v10[7] = v11;
    *&v10[23] = v12;
    *&v10[39] = v13;
    *&v36[129] = *&v10[128];
    *&v36[145] = *&v10[144];
    *&v36[161] = *&v10[160];
    *&v36[65] = *&v10[64];
    *&v36[81] = *&v10[80];
    *&v36[97] = *&v10[96];
    *&v36[113] = *&v10[112];
    *&v36[1] = *v10;
    *&v36[17] = *&v10[16];
    *&v36[33] = *&v10[32];
    v35 = v9;
    v36[0] = v23;
    *&v36[176] = v21.n128_u64[1];
    *&v36[49] = *&v10[48];
    sub_1C5AA34C0(&v35);
    v32 = *&v36[128];
    v33 = *&v36[144];
    v34[0] = *&v36[160];
    *(v34 + 9) = *&v36[169];
    v29 = *&v36[80];
    v30 = *&v36[96];
    v31 = *&v36[112];
  }

  v25 = *&v36[16];
  v26 = *&v36[32];
  v27 = *&v36[48];
  v28 = *&v36[64];
  v23 = v35;
  v24 = *v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196188);
  sub_1C5924F54(&qword_1EC196190, &qword_1EC196188);
  sub_1C5BC92C4();
  v3 = v46;
  v4 = v48[0];
  *(a2 + 160) = v47;
  *(a2 + 176) = v4;
  *(a2 + 185) = *(v48 + 9);
  v5 = v44;
  *(a2 + 96) = v43;
  *(a2 + 112) = v5;
  *(a2 + 128) = v45;
  *(a2 + 144) = v3;
  v6 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v6;
  v7 = v42;
  *(a2 + 64) = v41;
  *(a2 + 80) = v7;
  result = v38;
  *a2 = v37;
  *(a2 + 16) = result;
  return result;
}

double sub_1C5A945A0@<D0>(uint64_t a1@<X8>)
{
  v6 = sub_1C5BCA474();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v5 = sub_1C5BCA474();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  sub_1C5BCA474();
  v2 = sub_1C5BCA4B4();

  v3 = sub_1C5BCA474();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v5;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  *(a1 + 112) = v2;
  *(a1 + 120) = v3;
  *(a1 + 128) = v19;
  *(a1 + 136) = v20;
  *(a1 + 144) = v21;
  *(a1 + 152) = v22;
  result = *&v23;
  *(a1 + 160) = v23;
  return result;
}

uint64_t sub_1C5A947CC@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v64 = a2;
  v72 = a4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FC8);
  MEMORY[0x1EEE9AC00](v66);
  v6 = v60 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FD0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FD8);
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = v60 - v9;
  v10 = sub_1C5BCBD94();
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C5BC8F34();
  v61 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v16 = *(a1 + 16);
  v17 = *(*(v16 + 72) + 80);
  swift_getKeyPath();
  *&v78 = v17;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if (*(v17 + 32))
  {
    return (*(v70 + 56))(v72, 1, 1, v71);
  }

  v18 = *(v17 + 24);
  if (v18 <= 0.0)
  {
    return (*(v70 + 56))(v72, 1, 1, v71);
  }

  v19 = *(*(v16 + 72) + 80);
  swift_getKeyPath();
  *&v78 = v19;
  sub_1C5BC7B74();

  if (*(v19 + 48))
  {
    return (*(v70 + 56))(v72, 1, 1, v71);
  }

  v21 = *(v19 + 40);
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel___observationRegistrar;
  *&v78 = v16;
  v23 = sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  v60[1] = v22;
  v60[0] = v23;
  sub_1C5BC7B74();

  v24 = (v21 * *(v16 + 64) - v21) * 0.5;
  if (v62)
  {
    v25 = v64;
  }

  else
  {
    v26 = *&v64;

    sub_1C5BCB4E4();
    v27 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v26, 0);
    (*(v61 + 8))(v15, v13);
    v25 = *&v78;
  }

  v28 = v72;
  v29 = v63;
  (*(v63 + 104))(v12, *MEMORY[0x1E69E7040], v10);
  sub_1C5A9500C(v12, v25, v24);
  (*(v29 + 8))(v12, v10);
  v30 = *(*(v16 + 72) + 80);
  swift_getKeyPath();
  *&v78 = v30;
  sub_1C5BC7B74();

  v31 = *(v30 + 56);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    *&v78 = MEMORY[0x1E69E7CC0];

    sub_1C5B8F100(0, v32, 0);
    v33 = v78;
    v34 = *(v78 + 16);
    v35 = 48;
    do
    {
      v36 = *(v31 + v35);
      *&v78 = v33;
      v37 = *(v33 + 24);
      if (v34 >= v37 >> 1)
      {
        sub_1C5B8F100((v37 > 1), v34 + 1, 1);
        v33 = v78;
      }

      *(v33 + 16) = v34 + 1;
      *(v33 + 8 * v34 + 32) = v36 / v18;
      v35 += 24;
      ++v34;
      --v32;
    }

    while (v32);
  }

  KeyPath = swift_getKeyPath();
  v39 = sub_1C5BC9884();
  sub_1C5BC8174();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v77 = 0;
  v76 = 0;
  sub_1C5AA2D90();
  v49 = v48;
  swift_getKeyPath();
  *&v78 = v16;
  sub_1C5BC7B74();

  if (*(v16 + 104))
  {
    v50 = 1.0;
  }

  else
  {
    v50 = 0.0;
  }

  v51 = *(v66 + 36);
  v52 = *MEMORY[0x1E6981DC0];
  v53 = sub_1C5BCAB54();
  (*(*(v53 - 8) + 104))(&v6[v51], v52, v53);
  *v6 = v33;
  *(v6 + 1) = KeyPath;
  v6[16] = 0;
  *(v6 + 17) = *v75;
  *(v6 + 5) = *&v75[3];
  v6[24] = v39;
  *(v6 + 25) = *v74;
  *(v6 + 7) = *&v74[3];
  *(v6 + 4) = v41;
  *(v6 + 5) = v43;
  *(v6 + 6) = v45;
  *(v6 + 7) = v47;
  v6[64] = 0;
  v54 = *v73;
  *(v6 + 17) = *&v73[3];
  *(v6 + 65) = v54;
  *(v6 + 9) = v49;
  *(v6 + 10) = 0;
  *(v6 + 11) = v50;
  v55 = v69;
  sub_1C59E7D34(v6, v69, &qword_1EC195FC8);
  *(v55 + *(v68 + 36)) = 0;
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v56 = v67;
  sub_1C59E7D34(v55, v67, &qword_1EC195FD0);
  v57 = v71;
  v58 = (v56 + *(v71 + 36));
  v59 = v79;
  *v58 = v78;
  v58[1] = v59;
  v58[2] = v80;
  sub_1C59E7D34(v56, v28, &qword_1EC195FD8);
  return (*(v70 + 56))(v28, 0, 1, v57);
}

double sub_1C5A9500C(uint64_t a1, double a2, double a3)
{
  v6 = sub_1C5BCBD94();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3 / a2;
  v16 = v10;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x1E69E7038])
  {
    v12 = round(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7030])
  {
    v12 = rint(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7040])
  {
    v12 = ceil(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7048])
  {
    v12 = floor(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7020])
  {
    v12 = trunc(v10);
  }

  else if (v11 == *MEMORY[0x1E69E7028])
  {
    v12 = ceil(v10);
    v13 = floor(v10);
    if (v10 < 0.0)
    {
      v12 = v13;
    }
  }

  else
  {
    sub_1C5BCB314();
    (*(v7 + 8))(v9, v6);
    v12 = v16;
  }

  return v12 * a2;
}

uint64_t sub_1C5A951F4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = sub_1C5BC8F34();
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a6 + 16);
  if (v20)
  {
    v24[2] = 0x3FF0000000000000;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0x3FF0000000000000;
    v21 = a6 + 32;
    v22 = (v17 + 8);
    v24[6] = 0;
    v24[7] = 0;
    do
    {
      v27.origin.x = a1;
      v27.origin.y = a2;
      v27.size.width = a3;
      v27.size.height = a4;
      CGRectGetWidth(v27);
      if ((a8 & 1) == 0)
      {

        sub_1C5BCB4E4();
        v23 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5942458(a7, 0);
        (*v22)(v19, v15);
      }

      v25.origin.x = a1;
      v25.origin.y = a2;
      v25.size.width = a3;
      v25.size.height = a4;
      CGRectGetMinY(v25);
      v26.origin.x = a1;
      v26.origin.y = a2;
      v26.size.width = a3;
      v26.size.height = a4;
      CGRectGetHeight(v26);
      result = sub_1C5BC9B04();
      v21 += 8;
      --v20;
    }

    while (v20);
  }

  return result;
}

double sub_1C5A95428@<D0>(uint64_t a1@<X8>)
{
  sub_1C5BC9B34();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1C5A954A0(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C5A95528;
}

uint64_t sub_1C5A9552C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA5A08();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5A95590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA5A08();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5A955F4(uint64_t a1)
{
  v2 = sub_1C5AA5A08();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C5A95640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = sub_1C5BCAA54();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FB0) + 36);
  sub_1C5A947CC(v5, v6, v7, v11);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FB8) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195FC0);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_1C5A95734@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v141 = type metadata accessor for ScrubberTooltipModifier(0);
  v155 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v156 = v3;
  v159 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C5BC90F4();
  v138 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v131 - v8;
  v146 = sub_1C5BC8284();
  v169 = *(v146 - 8);
  v10 = MEMORY[0x1EEE9AC00](v146);
  v137 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v131 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v131 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960B0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v131 - v17;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960B8);
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v131 - v19;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960C0);
  MEMORY[0x1EEE9AC00](v140);
  v144 = &v131 - v20;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960C8);
  MEMORY[0x1EEE9AC00](v143);
  v152 = &v131 - v21;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960D0);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v131 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960D8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v131 - v23;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960E0);
  MEMORY[0x1EEE9AC00](v147);
  v154 = &v131 - v24;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960E8);
  MEMORY[0x1EEE9AC00](v153);
  v161 = &v131 - v25;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960F0);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v131 - v26;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960F8);
  MEMORY[0x1EEE9AC00](v157);
  v163 = &v131 - v27;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196100);
  MEMORY[0x1EEE9AC00](v162);
  v168 = &v131 - v28;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196108);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v131 - v29;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196110);
  v171 = *(v172 - 8);
  v30 = MEMORY[0x1EEE9AC00](v172);
  v165 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v131 - v32;
  v170 = a1;
  v33 = *a1;
  v34 = *(*(*&v33 + 72) + 80);
  swift_getKeyPath();
  *&v177 = v34;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if (*(v34 + 48))
  {
    return (*(v171 + 56))(v173, 1, 1, v172);
  }

  v35 = *(v34 + 40);
  v36 = sub_1C5A878C0();
  if ((v36 & 0x100000000) != 0)
  {
    return (*(v171 + 56))(v173, 1, 1, v172);
  }

  v133 = v7;
  v131 = v14;
  v37 = *&v36;
  swift_getKeyPath();
  v38 = OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel___observationRegistrar;
  *&v177 = v33;
  v39 = sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v40 = ((v37 + v37) + -1.0) * ((v35 * *(*&v33 + 64) - v35) * 0.5);
  v41 = v170;
  v42 = v170[1];
  v43 = -(v42 + -8.0);
  swift_getKeyPath();
  *&v177 = v33;
  v135 = v39;
  sub_1C5BC7B74();

  if (*(*&v33 + 24) == 1)
  {
    v44 = *(v41 + 16);
    v45 = *(v41 + 24);
    v46 = v35;
  }

  else
  {
    v48 = *(*&v33 + 16);
    v44 = *(v41 + 16);
    v45 = *(v41 + 24);
    *&v177 = v44;
    *(&v177 + 1) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
    sub_1C5BCA694();
    v46 = v48 - v175 - v42 + -8.0;
  }

  *&v177 = v44;
  *(&v177 + 1) = v45;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA694();
  v49 = v35 * v37 + v175 * -0.5;
  v50 = v40 + v49;
  if (v40 + v49 < v43)
  {
    v51 = v43;
  }

  else
  {
    v51 = v40 + v49;
  }

  if (v46 >= v51)
  {
    v46 = v51;
  }

  v52 = sub_1C5A878C0();
  v53 = 0.0;
  v54 = v133;
  if ((v52 & 0x100000000) == 0)
  {
    v55 = *&v52;
    swift_getKeyPath();
    *&v177 = v33;
    sub_1C5BC7B74();

    if (v55 >= 0.5)
    {
      v53 = -*(*&v33 + 56);
    }

    else
    {
      v53 = *(*&v33 + 40);
    }
  }

  v134 = v38;
  v56 = v50 - v46 + v53;
  *&v177 = v44;
  v132 = v45;
  *(&v177 + 1) = v45;
  sub_1C5BCA694();
  v57 = v175 * 0.5 + -5.0 + -8.0;
  v58 = -v57;
  if (v56 >= -v57)
  {
    v58 = v56;
  }

  if (v57 >= v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = v175 * 0.5 + -5.0 + -8.0;
  }

  sub_1C5BCAA54();
  sub_1C5BC8BD4();

  v60 = sub_1C5BC98B4();
  sub_1C5BC8174();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v184 = 0;
  v69 = &v18[*(v16 + 36)];
  sub_1C5BCA9C4();
  v70 = sub_1C5BC9894();
  v69[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196120) + 36)] = v70;
  v71 = v180;
  *(v18 + 40) = v179;
  v72 = v177;
  *(v18 + 24) = v178;
  v73 = v182;
  *(v18 + 104) = v183;
  v74 = v181;
  *(v18 + 88) = v73;
  *(v18 + 72) = v74;
  *(v18 + 56) = v71;
  *v18 = v33;
  *(v18 + 8) = v72;
  *(v18 + 60) = 1;
  v18[128] = v60;
  *(v18 + 17) = v62;
  *(v18 + 18) = v64;
  *(v18 + 19) = v66;
  *(v18 + 20) = v68;
  v18[168] = 0;
  sub_1C594C704(v9);
  v75 = v138;
  (*(v138 + 104))(v54, *MEMORY[0x1E697F608], v4);
  sub_1C5A9B150(&qword_1EDA46328, MEMORY[0x1E697F610]);
  v76 = sub_1C5BCADB4();
  v77 = *(v75 + 8);
  v77(v54, v4);
  v77(v9, v4);
  if (v76)
  {
    v78 = v131;
    sub_1C59421E4(v131);
    v79 = v169;
    v80 = *(v169 + 104);
    v81 = v137;
    LODWORD(v141) = *MEMORY[0x1E697DBB8];
    v82 = v146;
    v80(v137);
    v83 = sub_1C5BC8274();
    v84 = *(v79 + 8);
    v84(v81, v82);
    v84(v78, v82);
    v85 = v163;
    if ((v83 & 1) == 0)
    {
      v86 = v145;
      (v80)(v145, v141, v82);
      goto LABEL_27;
    }
  }

  else
  {
    v80 = *(v169 + 104);
    v85 = v163;
    v82 = v146;
  }

  v86 = v145;
  (v80)(v145, *MEMORY[0x1E697DBA8], v82);
LABEL_27:
  KeyPath = swift_getKeyPath();
  v88 = v142;
  v89 = &v142[*(v139 + 36)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196130);
  (*(v169 + 32))(v89 + *(v90 + 28), v86, v82);
  *v89 = KeyPath;
  sub_1C59E7D34(v18, v88, &qword_1EC1960B0);
  v91 = v88;
  v92 = v144;
  sub_1C59E7D34(v91, v144, &qword_1EC1960B8);
  *(v92 + *(v140 + 36)) = 0;
  v93 = v159;
  sub_1C5AA3634(v170, v159, type metadata accessor for ScrubberTooltipModifier);
  v94 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v95 = swift_allocObject();
  sub_1C5AA592C(v93, v95 + v94, type metadata accessor for ScrubberTooltipModifier);
  v96 = v92;
  v97 = v152;
  sub_1C59E7D34(v96, v152, &qword_1EC1960C0);
  v98 = (v97 + *(v143 + 36));
  *v98 = sub_1C5941E6C;
  v98[1] = 0;
  v98[2] = sub_1C5AA3248;
  v98[3] = v95;
  v99 = *(*&v33 + 72);
  swift_getKeyPath();
  v175 = v99;
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  if (*(*&v99 + 57) && *(*&v99 + 57) == 1)
  {
    v100 = 1;
  }

  else
  {
    v100 = sub_1C5BCBDE4();
  }

  v101 = v150;
  sub_1C59E7D34(v97, v150, &qword_1EC1960C8);
  v102 = v101 + *(v151 + 36);
  *v102 = 0;
  *(v102 + 8) = v100 & 1;
  v103 = v101;
  v104 = v148;
  sub_1C59E7D34(v103, v148, &qword_1EC1960D0);
  v105 = v104 + *(v149 + 36);
  *v105 = 0x4014000000000000;
  *(v105 + 8) = v59;
  *(v105 + 16) = 256;
  v106 = v154;
  sub_1C59E7D34(v104, v154, &qword_1EC1960D8);
  v107 = v106 + *(v147 + 36);
  *v107 = 0;
  *(v107 + 8) = v53;
  swift_getKeyPath();
  v175 = v33;
  sub_1C5BC7B74();

  v108 = 1.0;
  if (*(*&v33 + 120))
  {
    v109 = 1.0;
  }

  else
  {
    v109 = 0.0;
  }

  v110 = v161;
  sub_1C59E7D34(v106, v161, &qword_1EC1960E0);
  *(v110 + *(v153 + 36)) = v109;
  swift_getKeyPath();
  v175 = v33;
  sub_1C5BC7B74();

  if (!*(*&v33 + 120))
  {
    v108 = 0.5;
  }

  v175 = v44;
  v176 = v132;
  sub_1C5BCA694();
  v111 = v59 / v174 + 0.5;
  v112 = v158;
  sub_1C59E7D34(v110, v158, &qword_1EC1960E8);
  v113 = v112 + *(v160 + 36);
  *v113 = v108;
  *(v113 + 8) = v108;
  *(v113 + 16) = v111;
  *(v113 + 24) = 0x3FF4000000000000;
  sub_1C59E7D34(v112, v85, &qword_1EC1960F0);
  v114 = v85 + *(v157 + 36);
  *v114 = v46;
  *(v114 + 8) = 0xC018000000000000;
  v115 = *(*&v33 + 72);
  swift_getKeyPath();
  v175 = v115;
  sub_1C5BC7B74();

  if (*(*&v115 + 57))
  {
    v116 = v168;
    if (*(*&v115 + 57) == 1)
    {

LABEL_41:
      v118 = 0.0;
      goto LABEL_42;
    }
  }

  else
  {
    v116 = v168;
  }

  v117 = sub_1C5BCBDE4();

  v118 = 5.0;
  if (v117)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_1C59E7D34(v85, v116, &qword_1EC1960F8);
  v119 = (v116 + *(v162 + 36));
  *v119 = 0.0;
  v119[1] = v118;
  if (qword_1EC190780 != -1)
  {
    swift_once();
  }

  v120 = qword_1EC1958E0;
  v121 = *(*&v33 + 72);
  swift_getKeyPath();
  v175 = v121;
  sub_1C5BC7B74();

  if (*(*&v121 + 57) && *(*&v121 + 57) == 1)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_1C5BCBDE4();
  }

  v123 = v166;
  sub_1C59E7D34(v116, v166, &qword_1EC196100);
  v124 = v123 + *(v167 + 36);
  *v124 = v120;
  *(v124 + 8) = v122 & 1;
  v125 = v165;
  sub_1C59E7D34(v123, v165, &qword_1EC196108);
  v126 = v172;
  *(v125 + *(v172 + 36)) = xmmword_1C5BE1450;
  v127 = v125;
  v128 = v164;
  sub_1C59E7D34(v127, v164, &qword_1EC196110);
  v129 = v128;
  v130 = v173;
  sub_1C59E7D34(v129, v173, &qword_1EC196110);
  (*(v171 + 56))(v130, 0, 1, v126);
}

uint64_t sub_1C5A96D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BCAA14();
  v7 = v6;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196098) + 36);
  sub_1C5A95734(v2, v8);
  v9 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960A0) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1960A8);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1C5A96E3C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  if (*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8))
  {
    return sub_1C5A81AF8();
  }

  v3 = 43;
  if (*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession) < 0.0)
  {
    v3 = 0;
  }

  v8 = v3;
  if (qword_1EC190718 != -1)
  {
    swift_once();
  }

  v4 = [qword_1EC1A6B18 stringFromSeconds_];
  v5 = sub_1C5BCAE74();
  v7 = v6;

  MEMORY[0x1C694F170](v5, v7);

  return v8;
}

uint64_t sub_1C5A96F9C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  if (*(a1 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__tooltipSession + 8) == 1)
  {
    swift_getKeyPath();
    sub_1C5BC7B74();

    if (*(a1 + 88))
    {
      v2 = *(a1 + 80);

      return v2;
    }
  }

  return 0;
}

uint64_t sub_1C5A970B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C5A96E3C(*v1);
  v6 = v5;
  v7 = sub_1C5A96F9C(v3);
  v9 = v8;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);
  sub_1C5BC7B74();

  v11 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI28ScrubberInteractionViewModel__isMarqueeAnimating);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  return result;
}

double sub_1C5A971A0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v21 = a7;
  v13 = sub_1C5BC9044();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &MinX - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  CGRectGetMinY(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  CGRectGetWidth(v43);
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  CGRectGetHeight(v44);
  (*(v14 + 104))(v16, *MEMORY[0x1E697F468], v13);
  v35 = 0x3FF0000000000000;
  v36 = 0;
  v37 = 0;
  v38 = 0x3FF0000000000000;
  v39 = 0;
  v40 = 0;
  sub_1C5BC9AC4();
  (*(v14 + 8))(v16, v13);
  v17 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v17;
  v34 = *(a1 + 32);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = v21;
  v28 = 0x4024000000000000;
  sub_1C5BC9B34();
  sub_1C5BC9AE4();
  sub_1C5AA5A80(&v29);
  sub_1C5AA5A80(v33);
  result = *&v30;
  v19 = v31;
  *a1 = v30;
  *(a1 + 16) = v19;
  *(a1 + 32) = v32;
  return result;
}

uint64_t sub_1C5A973EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMidX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxY(v9);
  sub_1C5BC9AD4();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  sub_1C5BC9AF4();
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  return sub_1C5BC9AF4();
}

double sub_1C5A974C0@<D0>(uint64_t a1@<X8>)
{
  sub_1C5BC9B34();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_1C5A9752C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double sub_1C5A97538(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double (*sub_1C5A97544(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_1C5A97570;
}

double sub_1C5A97570(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

uint64_t sub_1C5A97580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA5AD4();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C5A975E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA5AD4();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C5A97648(uint64_t a1)
{
  v2 = sub_1C5AA5AD4();

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_1C5A97694@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC9134();
  v38 = 0;
  sub_1C5A97878(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v40, __src, sizeof(v40));
  sub_1C59400B0(__dst, v35, &qword_1EC196578);
  sub_1C5924EF4(v40, &qword_1EC196578);
  memcpy(&v37[7], __dst, 0x150uLL);
  v5 = v38;
  sub_1C5BC9A14();
  v6 = sub_1C5BC9934();

  KeyPath = swift_getKeyPath();
  v8 = sub_1C5BC98A4();
  sub_1C5BC8174();
  v33 = v10;
  v34 = v9;
  v31 = v12;
  v32 = v11;
  v38 = 0;
  LOBYTE(v2) = sub_1C5BC98B4();
  sub_1C5BC8174();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v35[0] = 0;
  v21 = sub_1C5BC9884();
  sub_1C5BC8174();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  *a1 = v4;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = v5;
  memcpy((a1 + 17), v37, 0x157uLL);
  *(a1 + 360) = KeyPath;
  *(a1 + 368) = v6;
  *(a1 + 376) = v8;
  *(a1 + 384) = v34;
  *(a1 + 392) = v33;
  result = v31;
  *(a1 + 400) = v32;
  *(a1 + 408) = v31;
  *(a1 + 416) = 0;
  *(a1 + 424) = v2;
  *(a1 + 432) = v14;
  *(a1 + 440) = v16;
  *(a1 + 448) = v18;
  *(a1 + 456) = v20;
  *(a1 + 464) = 0;
  *(a1 + 472) = v21;
  *(a1 + 480) = v23;
  *(a1 + 488) = v25;
  *(a1 + 496) = v27;
  *(a1 + 504) = v29;
  *(a1 + 512) = 0;
  return result;
}

uint64_t sub_1C5A97878@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC77C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[3];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = a1[2];
  v36[0] = v9;
  v36[1] = v8;
  sub_1C5BC7784();
  sub_1C594A23C();
  v10 = sub_1C5BCB8C4();
  v12 = v11;
  (*(v5 + 8))(v7, v4);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196588);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C5BD4D40;
    v15 = sub_1C5BC9854();
    *(v14 + 32) = v15;
    v16 = sub_1C5BC9874();
    *(v14 + 33) = v16;
    v17 = sub_1C5BC9864();
    sub_1C5BC9864();
    if (sub_1C5BC9864() != v15)
    {
      v17 = sub_1C5BC9864();
    }

    sub_1C5BC9864();
    if (sub_1C5BC9864() != v16)
    {
      v17 = sub_1C5BC9864();
    }

    sub_1C5A97C4C(v9, v8, a1, v36);
    memcpy(v35, v36, 0x121uLL);
    memcpy(v37, v36, 0x121uLL);
    sub_1C59400B0(v35, v38, &qword_1EC196590);
    sub_1C5924EF4(v37, &qword_1EC196590);
    memcpy(&v33[7], v35, 0x121uLL);
    LOBYTE(v36[0]) = v17;
    memcpy(v36 + 1, v33, 0x128uLL);
    CGSizeMake(v36, v18);
    memcpy(v38, v36, 0x129uLL);
  }

  else
  {
LABEL_10:
    sub_1C5AA5FCC(v38);
  }

  v19 = a1[1];
  v36[0] = *a1;
  v36[1] = v19;
  sub_1C594A23C();

  v20 = sub_1C5BC9CA4();
  v22 = v21;
  v24 = v23;
  v25 = sub_1C5BC9BD4();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1C5953BD8(v20, v22, v24 & 1);

  memcpy(v34, v38, sizeof(v34));
  memcpy(v35, v38, 0x129uLL);
  memcpy(v36, v38, 0x129uLL);
  v33[296] = v29 & 1;
  memcpy(a2, v36, 0x130uLL);
  *(a2 + 304) = v25;
  *(a2 + 312) = v27;
  *(a2 + 320) = v29 & 1;
  *(a2 + 328) = v31;
  sub_1C59400B0(v35, v37, &qword_1EC196580);
  sub_1C59AEE34(v25, v27, v29 & 1);

  sub_1C5953BD8(v25, v27, v29 & 1);

  memcpy(v37, v34, 0x129uLL);
  return sub_1C5924EF4(v37, &qword_1EC196580);
}

uint64_t sub_1C5A97C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a2;
  sub_1C594A23C();

  v5 = sub_1C5BC9CA4();
  v34 = v6;
  v35 = v5;
  v30 = v7;
  v36 = v8;
  v32 = *(a3 + 32);
  sub_1C5BCA684();
  v9 = v40;
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v38[0] = 0;
  v28 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v76 = 1;

  v10 = sub_1C5BC9CA4();
  v25 = v11;
  v12 = v11;
  v14 = v13;
  v23 = v13;
  v16 = v15 & 1;
  v24 = v15 & 1;
  v73 = 1;
  v37 = swift_getKeyPath();
  v26 = sub_1C5960930(&unk_1F4513AF8);
  v17 = sub_1C5BCAE44();
  v22 = [v17 _isNaturallyRTL];

  v21 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v30 &= 1u;
  v75 = v30;
  v74 = v30;
  *__src = v10;
  *&__src[8] = v12;
  __src[16] = v16;
  *&__src[32] = xmmword_1C5BD5090;
  *&__src[24] = v14;
  *&__src[48] = 0;
  __src[56] = v32;
  *&__src[60] = 0;
  *&__src[68] = 0;
  __src[72] = 1;
  *&__src[80] = 7104878;
  *&__src[88] = 0xE300000000000000;
  *&__src[96] = v40;
  v18 = v41;
  *&__src[104] = v41;
  *&__src[112] = KeyPath;
  __src[120] = 0;
  *&__src[128] = v29;
  memset(&__src[136], 0, 25);
  *&__src[168] = v28;
  __src[176] = 0;
  *&__src[184] = v27;
  __src[192] = 0;
  *&__src[200] = 0;
  __src[208] = 1;
  *&__src[216] = v37;
  *&__src[224] = v26;
  *&__src[232] = v21;
  __src[240] = v22;
  *&__src[248] = v20;
  __src[256] = 0;
  *a4 = v35;
  *(a4 + 8) = v34;
  *(a4 + 16) = v30;
  *(a4 + 24) = v36;
  memcpy((a4 + 32), __src, 0x101uLL);
  v40 = v10;
  v41 = v25;
  v42 = v24;
  v43 = v23;
  v44 = xmmword_1C5BD5090;
  v45 = 0;
  v46 = v32;
  v47 = 0;
  v48 = 0;
  v49 = 1;
  v50 = 7104878;
  v51 = 0xE300000000000000;
  v52 = v9;
  v53 = v18;
  v54 = KeyPath;
  v55 = 0;
  v56 = v29;
  v57 = 0;
  v59 = 0;
  v58 = 0;
  v60 = 0;
  v61 = v28;
  v62 = 0;
  v63 = v27;
  v64 = 0;
  v65 = 0;
  v66 = 1;
  v67 = v37;
  v68 = v26;
  v69 = v21;
  v70 = v22;
  v71 = v20;
  v72 = 0;
  sub_1C59AEE34(v35, v34, v30);

  sub_1C59400B0(__src, v38, &qword_1EC196598);
  sub_1C5924EF4(&v40, &qword_1EC196598);
  sub_1C5953BD8(v35, v34, v75);
}

uint64_t sub_1C5A98088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196060);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  type metadata accessor for ScrubberInteractionViewModel(0);
  sub_1C5A9B150(&qword_1EC195FE0, type metadata accessor for ScrubberInteractionViewModel);

  sub_1C5BCA964();
  sub_1C5BCA954();
  swift_getKeyPath();
  sub_1C5BCA974();

  v12 = *(v3 + 8);
  v12(v8, v2);
  v28 = v44;
  v29 = v43;
  v33 = v45;
  LOBYTE(v3) = v46;
  sub_1C5BCA954();
  swift_getKeyPath();
  sub_1C5BCA974();

  v12(v5, v2);
  v13 = v38;
  v14 = v39;
  v37 = v3;
  v35 = BYTE8(v39);
  v15 = sub_1C5BCAA54();
  v30 = v15;
  v17 = v16;
  v12(v11, v2);
  LOBYTE(v2) = v37;
  v18 = v35;
  v20 = v28;
  v19 = v29;
  *&v38 = v29;
  *(&v38 + 1) = v28;
  *&v39 = v33;
  BYTE8(v39) = v37;
  *(&v39 + 9) = *v36;
  HIDWORD(v39) = *&v36[3];
  v40 = v13;
  *&v41 = v14;
  BYTE8(v41) = v35;
  *&v42 = v15;
  *(&v42 + 1) = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196068);
  v22 = v31;
  (*(*(v21 - 8) + 16))(v31, v32, v21);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196070) + 36));
  v24 = v41;
  v23[2] = v40;
  v23[3] = v24;
  v23[4] = v42;
  v25 = v39;
  *v23 = v38;
  v23[1] = v25;
  v43 = v19;
  v44 = v20;
  v45 = v33;
  v46 = v2;
  *&v47[3] = *&v36[3];
  *v47 = *v36;
  v48 = v13;
  v49 = v14;
  v50 = v18;
  v51 = v30;
  v52 = v17;
  sub_1C59400B0(&v38, &v34, &qword_1EC196078);
  return sub_1C5924EF4(&v43, &qword_1EC196078);
}

uint64_t sub_1C5A98410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 72);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
  sub_1C5BC7B74();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

id sub_1C5A984CC()
{
  v15[0] = *v0;
  *(v15 + 9) = *(v0 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196088);
  sub_1C5BCA834();
  v1 = v13;
  v2 = v14;
  v15[0] = v0[2];
  *(v15 + 9) = *(v0 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196090);
  sub_1C5BCA834();
  v10 = v12;
  v3 = v13;
  v4 = v14;
  v5 = type metadata accessor for WindowPropertiesReaderViewController();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__windowWidth];
  *v7 = v12;
  *(v7 + 2) = v1;
  v7[24] = v2;
  v8 = &v6[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__maximumFramesPerSecond];
  *v8 = v10;
  *(v8 + 2) = v3;
  v8[24] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_1C5A985E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA31F4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1C5A98648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5AA31F4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1C5A986AC()
{
  sub_1C5AA31F4();
  sub_1C5BC9784();
  __break(1u);
}

id sub_1C5A98730(char a1)
{
  v2 = v1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for WindowPropertiesReaderViewController();
  objc_msgSendSuper2(&v24, sel_viewIsAppearing_, a1 & 1);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result window];

  if (v6)
  {
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    Width = CGRectGetWidth(v25);
  }

  else
  {
    Width = 0.0;
  }

  v21 = *&v2[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__windowWidth];
  v22 = *&v2[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__windowWidth + 16];
  LOBYTE(v23) = v2[OBJC_IVAR____TtC11MediaCoreUI36WindowPropertiesReaderViewController__windowWidth + 24];
  v19 = Width;
  LOBYTE(v20) = v6 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196088);
  sub_1C5BCA824();
  result = [v2 view];
  if (!result)
  {
    goto LABEL_10;
  }

  v16 = result;
  v17 = [result window];

  if (v17)
  {
    v18 = [v17 screen];

    [v18 maximumFramesPerSecond];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196090);
  return sub_1C5BCA824();
}

uint64_t sub_1C5A9899C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1C5BCAC14();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C5BCAC44();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WindowPropertiesReaderViewController();
  v22.receiver = v4;
  v22.super_class = v14;
  objc_msgSendSuper2(&v22, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  sub_1C592535C(0, &qword_1EDA4E620);
  v15 = sub_1C5BCB5A4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C5AA360C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_12;
  v17 = _Block_copy(aBlock);

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C5A9B150(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v13, v10, v17);
  _Block_release(v17);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1C5A98CCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 view];

      if (!v4)
      {
        __break(1u);
        goto LABEL_15;
      }

      v5 = [v4 window];

      if (v5)
      {
        [v5 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        v21.origin.x = v7;
        v21.origin.y = v9;
        v21.size.width = v11;
        v21.size.height = v13;
        CGRectGetWidth(v21);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196088);
    sub_1C5BCA824();
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    return;
  }

  v15 = v14;
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 view];

    if (v18)
    {
      v19 = [v18 window];

      if (v19)
      {
        v20 = [v19 screen];

        [v20 maximumFramesPerSecond];
      }

      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_12:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196090);
  sub_1C5BCA824();
}

id sub_1C5A99078(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C5A99114()
{
  result = sub_1C5BCAB24();
  qword_1EC1A6B38 = result;
  return result;
}

uint64_t sub_1C5A99138()
{
  result = sub_1C5BCAAD4();
  qword_1EC1A6B40 = result;
  return result;
}

void sub_1C5A99164()
{
  v0 = type metadata accessor for ScrubberSpecs.TrackEffects(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6B48);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6B48);
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = objc_opt_self();
  v5 = [v4 effectCompositingColor:v3 withMode:0 alpha:0.45];

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = [v2 whiteColor];
  v7 = [v4 effectCompositingColor:v6 withMode:0 alpha:1.0];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = [v2 whiteColor];
  v9 = [v4 effectCompositingColor:v8 withMode:0 alpha:0.45];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = [v2 whiteColor];
  v11 = [v4 effectCompositingColor:v10 withMode:0 alpha:0.18];

  if (v11)
  {
    v12 = *(v0 + 32);
    v13 = *MEMORY[0x1E6981DB8];
    v14 = sub_1C5BCAB54();
    (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
    *v1 = v5;
    *(v1 + 1) = v7;
    *(v1 + 2) = v9;
    *(v1 + 3) = v11;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1C5A99374()
{
  v0 = type metadata accessor for ScrubberSpecs.TrackEffects(0);
  __swift_allocate_value_buffer(v0, qword_1EC1A6B60);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A6B60);
  v2 = objc_opt_self();
  v3 = [v2 systemGrayColor];
  v4 = objc_opt_self();
  v5 = [v4 effectCompositingColor_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = [v2 labelColor];
  v7 = [v4 effectCompositingColor_];

  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = [v2 systemGrayColor];
  v9 = [v4 effectCompositingColor_];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = [v2 systemFillColor];
  v11 = [v4 effectCompositingColor_];

  if (v11)
  {
    v12 = *(v0 + 32);
    v13 = *MEMORY[0x1E6981DF0];
    v14 = sub_1C5BCAB54();
    (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
    *v1 = v5;
    *(v1 + 1) = v7;
    *(v1 + 2) = v9;
    *(v1 + 3) = v11;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1C5A99558()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v19 - v4);
  sub_1C5BC9A14();
  v6 = sub_1C5BC9934();

  if (qword_1EC190668 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC1A6AB0;

  v8 = sub_1C5BC93F4();
  v20 = v7;
  LODWORD(v19[0]) = v8;
  v9 = sub_1C5BC85E4();
  v10 = sub_1C5BC85E4();
  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC1A6AC0;
  v12 = *(v0 + 36);
  v13 = *MEMORY[0x1E6981DB8];
  v14 = sub_1C5BCAB54();
  (*(*(v14 - 8) + 104))(v5 + v12, v13, v14);
  *v5 = v11;

  LODWORD(v20) = sub_1C5BC9404();
  sub_1C59400B0(v5, v3, &unk_1EC196170);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);
  v15 = sub_1C5BC85E4();
  v16 = sub_1C5BC85E4();
  sub_1C5924EF4(v5, &unk_1EC196170);
  v20 = v9;
  v21 = v10;
  v19[0] = v15;
  v19[1] = v16;
  sub_1C59E6BD4();
  v17 = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  qword_1EC1A6B78 = v6;
  unk_1EC1A6B80 = v17;
  qword_1EC1A6B88 = result;
  return result;
}

uint64_t sub_1C5A99820()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v13 - v4);
  sub_1C5BC9A14();
  v6 = sub_1C5BC9934();

  if (qword_1EC190678 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC1A6AC0;
  v8 = *(v0 + 36);
  v9 = *MEMORY[0x1E6981DB8];
  v10 = sub_1C5BCAB54();
  (*(*(v10 - 8) + 104))(v5 + v8, v9, v10);
  *v5 = v7;
  sub_1C59400B0(v5, v3, &unk_1EC196170);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);

  v11 = sub_1C5BC85E4();
  result = sub_1C5924EF4(v5, &unk_1EC196170);
  qword_1EC1A6B90 = v6;
  *algn_1EC1A6B98 = v11;
  return result;
}

uint64_t sub_1C5A99A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C5BC8894();
  sub_1C5A9B150(&qword_1EDA4E1A0, MEMORY[0x1E697E3C0]);
  sub_1C5BCB3D4();
  sub_1C5BCB424();
  v9 = sub_1C5BCB414();
  if (v9 == 3)
  {
    sub_1C5BC88A4();
    v12 = *(v4 + 24);
    sub_1C5BC88A4();
    v13 = sub_1C5BC8744();
    (*(*(v13 - 8) + 56))(&v7[v12], 0, 1, v13);
  }

  else
  {
    if (v9 != 2)
    {
      (*(*(v8 - 8) + 8))(a1, v8);
      v14 = 1;
      return (*(v5 + 56))(a2, v14, 1, v4);
    }

    sub_1C5BC88A4();
    v10 = *(v4 + 24);
    v11 = sub_1C5BC8744();
    (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
  }

  sub_1C5BC88A4();
  (*(*(v8 - 8) + 8))(a1, v8);
  sub_1C5AA592C(v7, a2, type metadata accessor for ScrubberCompanionViewLayout.CompanionSubviews);
  v14 = 0;
  return (*(v5 + 56))(a2, v14, 1, v4);
}

void (*sub_1C5A99D0C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_1C5BC8134();
  return sub_1C5AA6380;
}

uint64_t ScrubEvent.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t ScrubberReader.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ScrubberProxy(0);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195A20);
  swift_allocObject();
  *(v6 + 16) = sub_1C5BC7F44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195A28);
  swift_allocObject();
  *(v6 + 24) = sub_1C5BC7F84();
  sub_1C5BC7BA4();
  result = sub_1C5BCA684();
  a3[2] = 0;
  a3[3] = v8;
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t ScrubberReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *(a1 + 16);
  v28 = v4;
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25[0] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScrubberProxy(255);
  v25[1] = v6;
  v7 = *(a1 + 24);
  v27 = v7;
  v26 = sub_1C5A9B150(&qword_1EC1958F8, type metadata accessor for ScrubberProxy);
  v33 = v4;
  v34 = v6;
  v35 = v7;
  v36 = v26;
  v29 = MEMORY[0x1E69811C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = *v2;
  v16 = *(v2 + 24);
  v33 = *(v2 + 16);
  v15 = v33;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196250);
  sub_1C5BCA694();
  v17 = v25[0];
  v14(v37);

  v33 = v15;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196250);
  sub_1C5BCA694();
  v18 = swift_checkMetadataState();
  v20 = v27;
  v19 = v28;
  v21 = v26;
  sub_1C5BC9DE4();

  (*(v31 + 8))(v17, v19);
  v33 = v19;
  v34 = v18;
  v35 = v20;
  v36 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C593EDC0(v10, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v30 + 8);
  v23(v10, OpaqueTypeMetadata2);
  sub_1C593EDC0(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v13, OpaqueTypeMetadata2);
}

Swift::Void __swiftcall ScrubberProxy.notifyJumped(by:)(Swift::Double by)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v2;
    v17[0] = v12;
    *v11 = 136446466;
    v13 = sub_1C5BCAEA4();
    v15 = sub_1C592ADA8(v13, v14, v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = by;
    _os_log_impl(&dword_1C5922000, v9, v10, "ScrubberReader proxy %{public}s notifying jumped by interval %f", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69510F0](v12, -1, -1);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *v17 = by;
  v17[1] = 0;
  v17[2] = 0;
  sub_1C5BC7F34();
}

Swift::Void __swiftcall ScrubberProxy.showSectionDelimiters(forDuration:delay:)(Swift::Double_optional forDuration, Swift::Double delay)
{
  v4 = v3;
  value = forDuration.value;
  v6 = v2;
  v7 = *&forDuration.is_nil;
  v8 = sub_1C5BC7D64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_1EC1A6BC0);
  (*(v9 + 16))(v11, v12, v8);

  v13 = sub_1C5BC7D44();
  v14 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v6;
    v6 = v15;
    v24 = swift_slowAlloc();
    v26 = v24;
    v27 = v4;
    *v6 = 136446722;
    v16 = sub_1C5BCAEA4();
    v18 = sub_1C592ADA8(v16, v17, &v26);

    *(v6 + 4) = v18;
    *(v6 + 12) = 2082;
    v27 = v7;
    LOBYTE(v28) = v25 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78);
    v19 = sub_1C5BCAEA4();
    v21 = sub_1C592ADA8(v19, v20, &v26);

    *(v6 + 14) = v21;
    *(v6 + 22) = 2048;
    *(v6 + 24) = value;
    _os_log_impl(&dword_1C5922000, v13, v14, "ScrubberReader proxy %{public}s showing section delimiters for %{public}s seconds, delay: %f", v6, 0x20u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v22, -1, -1);
    v23 = v6;
    LOBYTE(v6) = v25;
    MEMORY[0x1C69510F0](v23, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v27 = v7;
  v28 = v6 & 1 | 0x4000000000000000;
  v29 = value;
  sub_1C5BC7F34();
}

Swift::Void __swiftcall ScrubberProxy._pptChangeScrubberInteractionState(to:)(MediaCoreUI::ScrubState to)
{
  v2 = v1;
  v3 = to;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v3;
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v9, v4);

  v10 = sub_1C5BC7D44();
  v11 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v2;
    v25 = v22;
    *v12 = 136446466;
    v13 = sub_1C5BCAEA4();
    v15 = sub_1C592ADA8(v13, v14, &v25);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = 0xE800000000000000;
    v17 = 0x676E696B63617274;
    if (v8 != 1)
    {
      v17 = 0x6172656C65636564;
      v16 = 0xEC000000676E6974;
    }

    v23 = v8;
    if (v8)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1701602409;
    }

    if (v8)
    {
      v19 = v16;
    }

    else
    {
      v19 = 0xE400000000000000;
    }

    v20 = sub_1C592ADA8(v18, v19, &v25);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1C5922000, v10, v11, "ScrubberReader proxy %{public}s changing interaction state to %s", v12, 0x16u);
    v21 = v22;
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v21, -1, -1);
    MEMORY[0x1C69510F0](v12, -1, -1);

    (*(v5 + 8))(v7, v4);
    v8 = v23;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v25 = v8;
  v26 = xmmword_1C5BE1460;
  sub_1C5BC7F34();
}

Swift::Void __swiftcall ScrubberProxy.seek(to:)(Swift::Double to)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v2;
    v17 = *&v12;
    *v11 = 136446466;
    v13 = sub_1C5BCAEA4();
    v15 = sub_1C592ADA8(v13, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = to;
    _os_log_impl(&dword_1C5922000, v9, v10, "ScrubberReader proxy %{public}s seeking to time %f", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69510F0](v12, -1, -1);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v17 = to;
  sub_1C5BC7F54();
}

uint64_t ScrubberProxy.deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI13ScrubberProxy___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScrubberProxy.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI13ScrubberProxy___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ScrubberSection.title.getter()
{
  v1 = *v0;

  return v1;
}

MediaCoreUI::ScrubberSection __swiftcall ScrubberSection.init(title:startTime:)(Swift::String title, Swift::Double startTime)
{
  *v2 = title;
  *(v2 + 16) = startTime;
  result.title = title;
  result.startTime = startTime;
  return result;
}

BOOL static ScrubberSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C5BCBDE4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t ScrubberSection.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1C5BCAF04();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1C69501C0](*&v2);
}

uint64_t ScrubberSection.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C69501C0](*&v2);
  return sub_1C5BCBF94();
}

BOOL sub_1C5A9AF70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1C5BCBDE4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1C5A9AFD4()
{
  v1 = *(v0 + 16);
  sub_1C5BCAF04();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1C69501C0](*&v2);
}

uint64_t sub_1C5A9B020()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1C69501C0](*&v2);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A9B0F0(void (*a1)(void))
{
  a1();
  sub_1C5BC8F44();
  return v2;
}

uint64_t sub_1C5A9B150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MCUINamespace<A>.scrubberSensitivityInteraction(direction:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5A9B20C()
{
  sub_1C5AA3BE8();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5A9B260()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5A9B310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A9FF20();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t MCUINamespace<A>.scrubberForceSensitivityTextToSingleLine(_:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC195A40);
  v5 = sub_1C5BC8AB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  swift_getKeyPath();
  v17 = a1 ^ 1;
  sub_1C5BC9DF4();

  v12 = sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
  v16[1] = a2;
  v16[2] = v12;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v8, v5, WitnessTable);
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_1C593EDC0(v11, v5, WitnessTable);
  return (v14)(v11, v5);
}

uint64_t sub_1C5A9B55C()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();
}

uint64_t sub_1C5A9B600@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
}

uint64_t sub_1C5A9B6AC(uint64_t a1)
{
  if (sub_1C5A4A2CC(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;

    return sub_1C5A9CA60();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A9B7F4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v2;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if (*(v2 + 32))
  {
    if (a2)
    {
      return result;
    }
  }

  else if ((a2 & 1) == 0 && *(v2 + 24) == *&a1)
  {
    return result;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1EC1A6BC0);
  (*(v7 + 16))(v9, v11, v6);

  v12 = sub_1C5BC7D44();
  v13 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v7;
    v15 = v14;
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136446466;
    v27 = a1;
    v28 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78);
    v16 = sub_1C5BCAEA4();
    HIDWORD(v24) = v13;
    v18 = sub_1C592ADA8(v16, v17, &v29);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    swift_getKeyPath();
    v27 = v3;
    sub_1C5BC7B74();

    v19 = *(v3 + 32);
    v27 = *(v3 + 24);
    v28 = v19;
    v20 = sub_1C5BCAEA4();
    v22 = sub_1C592ADA8(v20, v21, &v29);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1C5922000, v12, BYTE4(v24), "ScrubberSections.duration changed from %{public}s to %{public}s", v15, 0x16u);
    v23 = v25;
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v23, -1, -1);
    MEMORY[0x1C69510F0](v15, -1, -1);

    (*(v26 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_1C5A9CA60();
}

uint64_t sub_1C5A9BB84()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  return *(v0 + 24);
}

uint64_t sub_1C5A9BC28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  v5 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5A9BCD8(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (v6)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
      sub_1C5BC7B64();
    }
  }

  else if ((a2 & 1) != 0 || *&v5 != *&a1)
  {
    goto LABEL_9;
  }

  *(v2 + 24) = *&a1;
  *(v2 + 32) = a2 & 1;

  return sub_1C5A9B7F4(v5, v6);
}

uint64_t sub_1C5A9BE38(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v2;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if (*(v2 + 48))
  {
    if (a2)
    {
      return result;
    }
  }

  else if ((a2 & 1) == 0 && *(v2 + 40) == *&a1)
  {
    return result;
  }

  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1EC1A6BC0);
  (*(v7 + 16))(v9, v11, v6);

  v12 = sub_1C5BC7D44();
  v13 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v7;
    v15 = v14;
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136446466;
    v27 = a1;
    v28 = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191B78);
    v16 = sub_1C5BCAEA4();
    HIDWORD(v24) = v13;
    v18 = sub_1C592ADA8(v16, v17, &v29);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    swift_getKeyPath();
    v27 = v3;
    sub_1C5BC7B74();

    v19 = *(v3 + 48);
    v27 = *(v3 + 40);
    v28 = v19;
    v20 = sub_1C5BCAEA4();
    v22 = sub_1C592ADA8(v20, v21, &v29);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1C5922000, v12, BYTE4(v24), "ScrubberSections.scrubberWidth changed from %{public}s to %{public}s", v15, 0x16u);
    v23 = v25;
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v23, -1, -1);
    MEMORY[0x1C69510F0](v15, -1, -1);

    (*(v26 + 8))(v9, v6);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_1C5A9CA60();
}

uint64_t sub_1C5A9C1C8()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  return *(v0 + 40);
}

uint64_t sub_1C5A9C26C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  v5 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C5A9C31C(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  if (v6)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
      sub_1C5BC7B64();
    }
  }

  else if ((a2 & 1) != 0 || *&v5 != *&a1)
  {
    goto LABEL_9;
  }

  *(v2 + 40) = *&a1;
  *(v2 + 48) = a2 & 1;

  return sub_1C5A9BE38(v5, v6);
}

uint64_t sub_1C5A9C47C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C5BC7D64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v25 = v1;
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  result = sub_1C5A4A2CC(*(v1 + 56), a1);
  if ((result & 1) == 0)
  {
    if (qword_1EC190798 != -1)
    {
      swift_once();
    }

    v9 = __swift_project_value_buffer(v4, qword_1EC1A6BC0);
    (*(v5 + 16))(v7, v9, v4);

    v10 = sub_1C5BC7D44();
    v11 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v12 = 136315394;
      v13 = MEMORY[0x1C694F2A0](a1, &type metadata for ScrubberSection);
      HIDWORD(v22) = v11;
      v15 = sub_1C592ADA8(v13, v14, &v25);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2082;
      swift_getKeyPath();
      v24 = v2;
      sub_1C5BC7B74();

      v17 = MEMORY[0x1C694F2A0](v16, &type metadata for ScrubberSection);
      v19 = v18;

      v20 = sub_1C592ADA8(v17, v19, &v25);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_1C5922000, v10, BYTE4(v22), "ScrubberSections.visibleSections changed from %s to %{public}s", v12, 0x16u);
      v21 = v23;
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v21, -1, -1);
      MEMORY[0x1C69510F0](v12, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1C5A9C7C4()
{
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();
}

uint64_t sub_1C5A9C868@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  *a2 = *(v3 + 56);
}

uint64_t sub_1C5A9C914(uint64_t a1)
{
  v3 = *(v1 + 56);
  if (sub_1C5A4A2CC(v3, a1))
  {
    *(v1 + 56) = a1;
    sub_1C5A9C47C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A9CA60()
{
  v3 = v0;
  swift_getKeyPath();
  v4 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberSections___observationRegistrar;
  v42[0] = v0;
  v5 = sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if (!*(*(v0 + 16) + 16) || (swift_getKeyPath(), v42[0] = v0, sub_1C5BC7B74(), , (*(v0 + 32) & 1) != 0) || (v6 = *(v0 + 24), v6 <= 0.0) || (swift_getKeyPath(), v42[0] = v0, sub_1C5BC7B74(), , (*(v0 + 48) & 1) != 0) || (v7 = *(v0 + 40), v7 <= 0.0))
  {
LABEL_33:
    swift_getKeyPath();
    v42[0] = v3;
    sub_1C5BC7B74();

    if (*(*(v3 + 56) + 16))
    {
LABEL_34:
      v31 = MEMORY[0x1E69E7CC0];
      return sub_1C5A9C914(v31);
    }

    return result;
  }

  swift_getKeyPath();
  sub_1C5BC7B74();

  v8 = sub_1C5AA2B38(v6);

  v42[0] = v8;

  v9 = 0;
  sub_1C5A9F190(v42);

  v10 = v42[0];
  v11 = *(v42[0] + 2);
  if (v11)
  {
    v12 = 0;
    v13 = v42[0] + 48;
    v14 = -v11;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = 9.5;
    do
    {
      v17 = *(v10 + 2);
      if (v12 > v17)
      {
        v17 = v12;
      }

      v18 = -v17;
      v19 = &v13[24 * v12++];
      while (1)
      {
        if (v18 + v12 == 1)
        {
          __break(1u);
          goto LABEL_50;
        }

        v20 = *v19;
        v21 = v7 * vabdd_f64(0.0, *v19) / v6;
        v22 = v7 * vabdd_f64(v6, *v19) / v6 <= 9.5 || v21 <= 7.5;
        if (!v22)
        {
          break;
        }

        ++v12;
        v19 += 3;
        if (v14 + v12 == 1)
        {
          goto LABEL_26;
        }
      }

      v9 = *(v19 - 1);
      v38 = *(v19 - 2);
      v40 = v10;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C5B8F0C8(0, *(v15 + 2) + 1, 1);
        v15 = v42[0];
      }

      v2 = *(v15 + 2);
      v24 = *(v15 + 3);
      v1 = v2 + 1;
      v10 = v40;
      if (v2 >= v24 >> 1)
      {
        sub_1C5B8F0C8((v24 > 1), v2 + 1, 1);
        v10 = v40;
        v15 = v42[0];
      }

      *(v15 + 2) = v1;
      v25 = &v15[24 * v2];
      *(v25 + 4) = v38;
      *(v25 + 5) = v9;
      v25[6] = v20;
    }

    while (v14 + v12);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

LABEL_26:

  swift_bridgeObjectRelease_n();
  v12 = *(v15 + 2);
  if (!v12)
  {

    goto LABEL_33;
  }

  v2 = v12 - 1;
  v13 = v15 + 32;
  v26 = &v15[24 * v12 + 8];
  v4 = *v26;
  v1 = *(v26 + 1);
  v16 = *(v26 + 2);

  v9 = sub_1C5B76A90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = *(v9 + 2);
  v18 = *(v9 + 3);
  v5 = v14 + 1;
  if (v14 >= v18 >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    *(v9 + 2) = v5;
    v27 = &v9[24 * v14];
    *(v27 + 4) = v4;
    *(v27 + 5) = v1;
    v27[6] = v16;
    if (v12 == 1)
    {
      break;
    }

    v12 = (v15 + 16);
    v16 = 6.0;
LABEL_38:
    v18 = *(v15 + 2);
    if (v2 >= v18)
    {
      __break(1u);
      goto LABEL_53;
    }

    v33 = *&v13[24 * v2 + 16];
    v34 = (v12 + 24 * v2);
    while (1)
    {
      v14 = v2 - 1;
      if (v2 - 1 >= v18)
      {
        break;
      }

      v35 = v34[1];
      if (v7 * vabdd_f64(v33, v35) / v6 >= 6.0)
      {
        v4 = *v34;
        v39 = *(v34 - 1);
        v41 = v13;
        v1 = v5 + 1;
        v36 = *(v9 + 3);

        if (v5 >= v36 >> 1)
        {
          v9 = sub_1C5B76A90((v36 > 1), v5 + 1, 1, v9);
        }

        *(v9 + 2) = v1;
        v37 = &v9[24 * v5];
        v13 = v41;
        *(v37 + 4) = v39;
        *(v37 + 5) = v4;
        v37[6] = v35;
        ++v5;
        v22 = v2-- > 1;
        if (v22)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

      v34 -= 3;
      --v2;
      if (v14 + 1 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v9 = sub_1C5B76A90((v18 > 1), v5, 1, v9);
  }

LABEL_29:

  v28 = *(v9 + 2);
  if (!v28)
  {

    goto LABEL_34;
  }

  v29 = sub_1C5A9EBA8(*(v9 + 2), 0);
  v30 = sub_1C5A9EEE0(v42, v29 + 4, v28, v9);

  if (v30 == v28)
  {

    v31 = v29;
    return sub_1C5A9C914(v31);
  }

LABEL_53:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C5A9CFC4()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI16ScrubberSections___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A9D070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[3] = a1;
  v36 = a3;
  v4 = sub_1C5BCAE14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1C5BC96A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F80);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F88);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = v30 - v16;
  v37 = a2;
  v30[0] = sub_1C5A9D5E4();
  v30[1] = v17;
  v30[4] = v18;
  v30[2] = v19;
  sub_1C5BC9674();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195F90);
  v21 = sub_1C5924F54(&unk_1EC195F98, &qword_1EC195F90);
  sub_1C5BCA0C4();
  (*(v8 + 8))(v10, v7);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v23 = v22;
  v40 = sub_1C5BCAE94();
  v41 = v24;
  v38 = v20;
  v39 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v26 = v32;
  v25 = v33;
  sub_1C5BCA034();

  (*(v31 + 8))(v13, v26);
  sub_1C5BCAE04();
  sub_1C5BCADF4();
  sub_1C5BCADE4();
  sub_1C5BCADF4();
  sub_1C5BCADE4();

  sub_1C5BCADF4();
  sub_1C5BCAE24();
  sub_1C5BC7B14();
  v40 = sub_1C5BCAE94();
  v41 = v27;
  v28 = v34;
  sub_1C5BC8A34();

  sub_1C5986AB4(v25);

  sub_1C5BC8A94();

  return sub_1C5986AB4(v28);
}

uint64_t sub_1C5A9D5E4()
{
  v1 = *(*(v0 + 72) + 80);
  swift_getKeyPath();
  sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if ((*(v1 + 32) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1C5A9B150(&qword_1EC1959D8, type metadata accessor for ScrubberPlayhead);
    sub_1C5BC7B74();

    v2 = AXDurationStringForDuration();
    if (v2)
    {
      v3 = v2;
      v4 = sub_1C5BCAE74();

      v5 = AXDurationStringForDuration();
      if (v5)
      {
        v6 = v5;
        sub_1C5BCAE74();

        return v4;
      }
    }
  }

  if (qword_1EC190728 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC1A6B28;
  swift_bridgeObjectRetain_n();
  return v4;
}

uint64_t sub_1C5A9D7CC(char *a1)
{
  v3 = sub_1C5BC7D64();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC97E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v49 = v1;
  v15 = *(v1 + 16);
  v16 = *(*(v15 + 72) + 80);
  swift_getKeyPath();
  v51 = v16;
  v50 = sub_1C5A9B150(&qword_1EC195F68, type metadata accessor for ScrubberSections);
  sub_1C5BC7B74();

  if ((*(v16 + 32) & 1) == 0)
  {
    v18 = *(v16 + 24);
    v19 = *(v6 + 16);
    v19(v14, a1, v5);
    v20 = (*(v6 + 88))(v14, v5);
    if (v20 == *MEMORY[0x1E697CC28])
    {
      v21 = v18 * 0.05;
    }

    else if (v20 == *MEMORY[0x1E697CC20])
    {
      v21 = v18 * -0.05;
    }

    else
    {
      v45 = v19;
      if (qword_1EC190798 != -1)
      {
        swift_once();
      }

      v22 = v48;
      v23 = __swift_project_value_buffer(v48, qword_1EC1A6BC0);
      (*(v47 + 16))(v46, v23, v22);
      v24 = v45;
      v45(v11, a1, v5);
      v25 = sub_1C5BC7D44();
      v26 = sub_1C5BCB4E4();
      v44 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v51 = v43;
        *v27 = 136315138;
        v24(v8, v11, v5);
        v28 = sub_1C5BCAEA4();
        v30 = v29;
        LODWORD(v45) = v26;
        v31 = *(v6 + 8);
        v31(v11, v5);
        v32 = sub_1C592ADA8(v28, v30, &v51);

        v33 = v27;
        *(v27 + 4) = v32;
        v34 = v44;
        _os_log_impl(&dword_1C5922000, v44, v45, "Unknown case AccessibilityAdjustmentDirection.%s", v33, 0xCu);
        v35 = v43;
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x1C69510F0](v35, -1, -1);
        MEMORY[0x1C69510F0](v33, -1, -1);
      }

      else
      {

        v31 = *(v6 + 8);
        v31(v11, v5);
      }

      (*(v47 + 8))(v46, v48);
      v31(v14, v5);
      v21 = 0.0;
    }

    v36 = *(v15 + 72);
    v37 = *(v36 + 96);
    v38 = v21 + v37;
    if (v38 <= 0.0)
    {
      v38 = 0.0;
    }

    if (v18 < v38)
    {
      v38 = v18;
    }

    *(v36 + 96) = v38;
    sub_1C5A89794(v37);
    v39 = *(*(v15 + 72) + 80);
    swift_getKeyPath();
    v51 = v39;
    sub_1C5BC7B74();

    sub_1C5A83BDC(v40);

    swift_getKeyPath();
    v41 = v49;
    v51 = v49;
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);
    sub_1C5BC7B74();

    v42 = *(v41 + 24);
    v51 = *(*(v15 + 72) + 96);
    v52 = 2;

    v42(&v51);
  }

  return result;
}

uint64_t sub_1C5A9DD90()
{
  result = sub_1C5BCAAA4();
  qword_1EC1958E0 = result;
  return result;
}

uint64_t sub_1C5A9DDC8()
{
  result = MEMORY[0x1C694ED40](0.25, 1.0, 0.0);
  qword_1EC1958E8 = result;
  return result;
}

uint64_t sub_1C5A9DDF4()
{
  result = MEMORY[0x1C694ED40](0.15, 1.0, 0.0);
  qword_1EC1958F0 = result;
  return result;
}

uint64_t sub_1C5A9DE28()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6BC0);
  __swift_project_value_buffer(v0, qword_1EC1A6BC0);
  return sub_1C5BC7D54();
}

MediaCoreUI::ScrubState_optional __swiftcall ScrubState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C5BCBCB4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C5A9DEFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v4 = 0x6172656C65636564;
    v3 = 0xEC000000676E6974;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701602409;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696B63617274;
  if (*a2 != 1)
  {
    v8 = 0x6172656C65636564;
    v7 = 0xEC000000676E6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701602409;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C5BCBDE4();
  }

  return v11 & 1;
}

uint64_t sub_1C5A9E008()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5A9E0AC()
{
  sub_1C5BCAF04();
}

uint64_t sub_1C5A9E13C()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

void sub_1C5A9E1E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676E696B63617274;
  if (v2 != 1)
  {
    v5 = 0x6172656C65636564;
    v4 = 0xEC000000676E6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701602409;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1C5A9E260()
{
  result = qword_1EC195940;
  if (!qword_1EC195940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195918);
    sub_1C5A9E2EC();
    sub_1C5A9E560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195940);
  }

  return result;
}

unint64_t sub_1C5A9E2EC()
{
  result = qword_1EC195948;
  if (!qword_1EC195948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195950);
    sub_1C5A9E3A4();
    sub_1C5924F54(&qword_1EC195988, &qword_1EC195990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195948);
  }

  return result;
}

unint64_t sub_1C5A9E3A4()
{
  result = qword_1EC195958;
  if (!qword_1EC195958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195960);
    sub_1C5A9E430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195958);
  }

  return result;
}

unint64_t sub_1C5A9E430()
{
  result = qword_1EC195968;
  if (!qword_1EC195968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195970);
    sub_1C5A9B150(&qword_1EC195978, type metadata accessor for MediaTimelineControl);
    sub_1C5A9E50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195968);
  }

  return result;
}

unint64_t sub_1C5A9E50C()
{
  result = qword_1EC195980;
  if (!qword_1EC195980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195980);
  }

  return result;
}

unint64_t sub_1C5A9E560()
{
  result = qword_1EC195998;
  if (!qword_1EC195998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195998);
  }

  return result;
}

unint64_t sub_1C5A9E5B4()
{
  result = qword_1EC1959A0;
  if (!qword_1EC1959A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1959A0);
  }

  return result;
}

unint64_t sub_1C5A9E644()
{
  result = qword_1EC1959E8;
  if (!qword_1EC1959E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1959E0);
    sub_1C5924F54(&qword_1EC1959F0, &qword_1EC1959F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1959E8);
  }

  return result;
}

uint64_t sub_1C5A9E724(uint64_t *a1)
{
  type metadata accessor for Scrubber();

  return sub_1C5A90DA8(a1);
}

unint64_t sub_1C5A9E7B0()
{
  result = qword_1EC195A08;
  if (!qword_1EC195A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A08);
  }

  return result;
}

unint64_t sub_1C5A9E804()
{
  result = qword_1EC195A10;
  if (!qword_1EC195A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A10);
  }

  return result;
}

uint64_t sub_1C5A9E858@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a6;
  v29 = a5;
  v26 = a3;
  v27 = a2;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196270);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v24 - v11;
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  v19 = sub_1C5BC8524();
  v21 = *(v19 - 8);
  result = v19 - 8;
  if (*(v21 + 64) == v9)
  {
    (*(v8 + 16))(v12, v25, v7);
    v27(v12);
    (*(v8 + 8))(v12, v7);
    v22 = v29;
    sub_1C593EDC0(v16, a4, v29);
    v23 = *(v13 + 8);
    v23(v16, a4);
    sub_1C593EDC0(v18, a4, v22);
    return (v23)(v18, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1C5A9EA9C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1C5A9EB24(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196230);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1C5A9EBA8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1C5A9EC38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C5A9ED8C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C5A9EEE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v14 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v14;
    return v6;
  }

  if (!a3)
  {
    v14 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 24 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        *v8 = *(v11 - 2);
        v8[1] = v12;
        v8[2] = v13;
        if (!(v10 + v9))
        {

          v14 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 3;
        v8 += 3;
        v14 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v14 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A9EFCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8E24();
  *a1 = result;
  return result;
}

uint64_t sub_1C5A9F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1C5A9F190(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C5A9FC08(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_1C5BCBD44();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 24;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          *(v13 + 1) = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C5BCB0C4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1C5A9F2F0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C5A9F2F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C5A9FAF0(v7);
      v7 = result;
    }

    v85 = (v7 + 16);
    v86 = *(v7 + 16);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = (v7 + 16 * v86);
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C5A9F8B4((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v27 + v10);
            v22 = (v27 + v18);
            v23 = *v21;
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v22;
            *v21 = *(v22 - 1);
            v21[2] = v26;
            *(v22 - 2) = v23;
            *(v22 - 1) = v24;
            *v22 = v25;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C5B76BB0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v38 = *(v7 + 16);
    v37 = *(v7 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1C5B76BB0((v37 > 1), v38 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v39;
    v40 = v7 + 32;
    v41 = (v7 + 32 + 16 * v38);
    *v41 = v8;
    v41[1] = v6;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 32);
          v44 = *(v7 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = (v7 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = (v40 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = (v7 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = (v40 + 16 * v42);
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = (v40 + 16 * (v42 - 1));
        v81 = *v80;
        v82 = (v40 + 16 * v42);
        v83 = v82[1];
        sub_1C5A9F8B4((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = *(v7 + 16);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        result = memmove((v40 + 16 * v42), v82 + 2, 16 * (v84 - 1 - v42));
        *(v7 + 16) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = v40 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = (v7 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = (v40 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *(v33 - 1))
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *v33;
    v35 = *(v33 + 1);
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v35;
    *(v33 - 1) = v31;
    *(v33 - 3) = v34;
    v33 -= 3;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C5A9F8B4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

char *sub_1C5A9FB04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1961B8);
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

uint64_t _s11MediaCoreUI28ScrubberLoadingConfigurationV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && ((*(a1 + 2) ^ *(a2 + 2)) & 1) == 0)
  {
    if (a1[2])
    {
      if ((a2[2] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (a1[1] == a2[1])
      {
        v4 = *(a2 + 16);
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t keypath_get_2Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

unint64_t sub_1C5A9FD7C()
{
  result = qword_1EC195A50;
  if (!qword_1EC195A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A50);
  }

  return result;
}

unint64_t sub_1C5A9FE18()
{
  result = qword_1EC195A58;
  if (!qword_1EC195A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A58);
  }

  return result;
}

unint64_t sub_1C5A9FE70()
{
  result = qword_1EC195A60;
  if (!qword_1EC195A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A60);
  }

  return result;
}

unint64_t sub_1C5A9FEC8()
{
  result = qword_1EC195A68;
  if (!qword_1EC195A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A68);
  }

  return result;
}

unint64_t sub_1C5A9FF20()
{
  result = qword_1EC195A70;
  if (!qword_1EC195A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A70);
  }

  return result;
}

unint64_t sub_1C5A9FF78()
{
  result = qword_1EC195A78;
  if (!qword_1EC195A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A78);
  }

  return result;
}

unint64_t sub_1C5A9FFD0()
{
  result = qword_1EC195A80;
  if (!qword_1EC195A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195A80);
  }

  return result;
}

uint64_t sub_1C5AA002C()
{
  result = sub_1C5BC7BB4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5AA0140()
{
  result = sub_1C5BC7AC4();
  if (v1 <= 0x3F)
  {
    result = sub_1C5BC7BB4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1C5AA027C()
{
  sub_1C5BC7AC4();
  if (v0 <= 0x3F)
  {
    sub_1C5AA0514(319, &qword_1EC193090, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C5BC7BB4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C5AA0414()
{
  sub_1C5AA0514(319, qword_1EC195C80, MEMORY[0x1E697F610], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C5AA0514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C5AA0578()
{
  sub_1C5AA0514(319, &qword_1EC195D08, type metadata accessor for ScrubberViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1C5AA0CD4();
    if (v1 <= 0x3F)
    {
      sub_1C5AA0514(319, &qword_1EDA46750, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C5933874(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C5933874(319, &qword_1EC195D20, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C5933874(319, &qword_1EC195D28, &type metadata for ScrubberSection, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C5AA0758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1C5BC90F4() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v11 + 8;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v16 = ((v15 + ((((v7 + ((v13 + 32) & ~v14) + 80) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + *(v8 + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v20 < 2)
    {
LABEL_30:
      if ((v9 & 0x80000000) != 0)
      {
        v25 = *(v8 + 48);

        return v25((v15 + ((((v7 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + 24) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_30;
  }

LABEL_17:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_1C5AA09D0(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1C5BC90F4() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8 | 7;
  v16 = ((v13 + 8 + ((((v9 + (((v12 & 0xF8) + 32) & ~v15) + 80) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_48:
              if (v17 == 2)
              {
                *(a1 + v16) = v19;
              }

              else
              {
                *(a1 + v16) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v22;
        *(a1 + 2) = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v17)
    {
      *(a1 + v16) = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v16) = 0;
  }

  else if (v17)
  {
    *(a1 + v16) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v11 & 0x80000000) != 0)
  {
    v23 = *(v10 + 56);

    v23((v13 + 8 + ((((v9 + ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15) + 24) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = (a2 - 1);
  }
}

void sub_1C5AA0CD4()
{
  if (!qword_1EC195D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195D18);
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC195D10);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScrubContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrubContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C5AA0E04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5AA0E40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C5AA0E88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C5AA0EE8()
{
  result = sub_1C5BC7BB4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5AA0FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C5AA0FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrubberLoadingConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrubberLoadingConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C5AA1118()
{
  result = sub_1C5BC7BB4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySbGGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1C5BC8AB4();
  sub_1C5924F54(a4, a2);
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for ScrubberInteractionViewModel.TooltipSessionKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrubberInteractionViewModel.TooltipSessionKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C5AA12C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5AA12DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C5AA131C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1C5AA1364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrubberProxy.Action(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
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

uint64_t storeEnumTagSinglePayload for ScrubberProxy.Action(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5AA14B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1C5AA1500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C5AA15B0()
{
  type metadata accessor for ScrubberInteractionViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1C5933874(319, &qword_1EDA45FE0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C5AA0514(319, &qword_1EDA46760, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C5AA0514(319, &qword_1EDA46750, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C5AA1710()
{
  type metadata accessor for ScrubberViewModel(319);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C5933874(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5AA17D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 8] & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1C5AA1934(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 8) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = &a1[v9 + 8] & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1C5AA1B1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C5AA1B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C5AA1BCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C5AA1C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1C5AA1CBC()
{
  type metadata accessor for ScrubberViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1C5AA0514(319, &qword_1EDA46750, MEMORY[0x1E697F610], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C5933874(319, &qword_1EC195EE0, &type metadata for ScrubberSensitivityInteractionDirection, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C5AA1E4C()
{
  result = qword_1EC195EE8;
  if (!qword_1EC195EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195EE8);
  }

  return result;
}

unint64_t sub_1C5AA1F94()
{
  result = qword_1EC195F20;
  if (!qword_1EC195F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195EF8);
    sub_1C5AA204C();
    sub_1C5924F54(&qword_1EC195F48, &qword_1EC195F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F20);
  }

  return result;
}

unint64_t sub_1C5AA204C()
{
  result = qword_1EC195F28;
  if (!qword_1EC195F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F00);
    sub_1C5AA20D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F28);
  }

  return result;
}

unint64_t sub_1C5AA20D8()
{
  result = qword_1EC195F30;
  if (!qword_1EC195F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195F38);
    sub_1C5AA2164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F30);
  }

  return result;
}

unint64_t sub_1C5AA2164()
{
  result = qword_1EC195F40;
  if (!qword_1EC195F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F40);
  }

  return result;
}

unint64_t sub_1C5AA21C4()
{
  result = qword_1EC195F70;
  if (!qword_1EC195F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195F70);
  }

  return result;
}

double sub_1C5AA2228()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

uint64_t sub_1C5AA226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v9 = sub_1C5BCBDE4();
        swift_bridgeObjectRetain_n();
        if ((v9 & 1) == 0)
        {
          v6 = 1;
          goto LABEL_12;
        }
      }

      v6 = *&a3 != *&a6;
LABEL_12:
      swift_bridgeObjectRelease_n();
      return v6;
    }
  }

  else if (!a5)
  {

    return v6;
  }

  return 1;
}

uint64_t sub_1C5AA2350(uint64_t a1)
{
  if (*(*(v1 + OBJC_IVAR____TtCV11MediaCoreUI20MediaTimelineControl11Coordinator_viewModel) + 40) == a1)
  {

    sub_1C5A7DCE0(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A9B150(&qword_1EC195910, type metadata accessor for ScrubberViewModel);

    sub_1C5BC7B64();
  }
}

void sub_1C5AA24B4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithDuration:0.4 bounce:0.0];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];

  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C596D09C;
  v7[3] = &block_descriptor_514;
  v6 = _Block_copy(v7);

  [v5 addAnimations_];
  _Block_release(v6);
  [v5 startAnimation];
}

uint64_t sub_1C5AA25D0(float a1)
{
  v3 = sub_1C5BC7D64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190798 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_1EC1A6BC0);
  (*(v4 + 16))(v6, v7, v3);
  v8 = v1;
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    v12 = a1;
    *(v11 + 4) = v12;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 0;
    *(v11 + 22) = 2048;
    [v8 maxValue];
    *(v11 + 24) = v13;
    _os_log_impl(&dword_1C5922000, v9, v10, "MediaTimelineControl.Coordinator: received value %f (min=%f, max=%f)", v11, 0x20u);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  else
  {

    v12 = a1;
  }

  (*(v4 + 8))(v6, v3);
  v16 = 1;

  sub_1C5A7E450(&v16, v12);
}