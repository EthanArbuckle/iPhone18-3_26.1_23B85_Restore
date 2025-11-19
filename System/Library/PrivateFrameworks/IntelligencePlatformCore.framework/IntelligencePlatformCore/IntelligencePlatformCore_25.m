uint64_t sub_1C460D3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v47 = a2;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v45 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = sub_1C4EF9CD8();
  v46 = *(v14 - 8);
  v15 = v46[8];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v40 - v19;
  v21 = *(a1 + 64);
  sub_1C4616B08(a3, v48);
  if (v50 == 255)
  {
    sub_1C461844C();
    swift_allocError();
    *v26 = 0;
    return swift_willThrow();
  }

  else
  {
    v51 = v48[0];
    v52 = v48[1];
    v53 = v49;
    v54 = v50;
    v22 = *(a1 + 32);
    v55 = *(a1 + 16);
    v56[0] = v22;
    *(v56 + 9) = *(a1 + 41);
    sub_1C460BC84();
    if (v4)
    {
      return sub_1C4420C3C(v48, &qword_1EC0B9A20, &unk_1C4F10DF0);
    }

    v24 = v23;
    sub_1C460BC84();
    v44 = v27;
    v28 = v46[2];
    v43 = v46 + 2;
    v42 = v28;
    v28(v20, v21 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v14);
    sub_1C4EF9B78();
    v30 = 1.0;
    if (v29 > 0.0)
    {
      v30 = exp2(v29 / -2592000.0);
    }

    v31 = v46;
    v41 = v46[1];
    v41(v20, v14);
    v32 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
    swift_beginAccess();
    *&v33 = v30;
    [*v32 add:v24 a:v44 b:v33];
    v34 = type metadata accessor for DecayingHistogramState();
    sub_1C4467FE0(v32 + *(v34 + 20), v13);
    if (sub_1C44157D4(v13, 1, v14) == 1)
    {
      sub_1C4420C3C(v48, &qword_1EC0B9A20, &unk_1C4F10DF0);
      sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v35 = v45;
      v36 = v45;
      v37 = v47;
LABEL_13:
      v42(v36, v37, v14);
      sub_1C440BAA8(v35, 0, 1, v14);
      swift_beginAccess();
      sub_1C45AD734(v35, v32 + *(v34 + 20));
      return swift_endAccess();
    }

    (v31[4])(v18, v13, v14);
    v38 = v47;
    v39 = sub_1C4EF9C18();
    sub_1C4420C3C(v48, &qword_1EC0B9A20, &unk_1C4F10DF0);
    result = (v41)(v18, v14);
    if (v39)
    {
      v35 = v45;
      v36 = v45;
      v37 = v38;
      goto LABEL_13;
    }
  }

  return result;
}

void sub_1C460D874(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = *(a1 + 32);
  v42 = *(a1 + 16);
  v43[0] = v20;
  *(v43 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v3)
  {
    v22 = v21;
    v39 = v2;
    v40 = 0;
    v37 = v17;
    v38 = v9;
    v23 = *(v13 + 16);
    v23(v19, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v12);
    sub_1C4EF9B78();
    v25 = 1.0;
    if (v24 > 0.0)
    {
      v25 = exp2(v24 / -604800.0);
    }

    v36 = *(v13 + 8);
    v36(v19, v12);
    v26 = &v39[OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state];
    swift_beginAccess();
    *&v27 = v25;
    [*v26 add:v22 a:0 b:v27];
    v28 = type metadata accessor for DecayingHistogramState();
    sub_1C4467FE0(v26 + *(v28 + 20), v11);
    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v29 = v38;
      v23(v38, v41, v12);
      sub_1C440BAA8(v29, 0, 1, v12);
      swift_beginAccess();
      v30 = *(v28 + 20);
    }

    else
    {
      v35 = v28;
      v39 = v23;
      v31 = v37;
      (*(v13 + 32))(v37, v11, v12);
      v32 = v41;
      v33 = sub_1C4EF9C18();
      v36(v31, v12);
      if ((v33 & 1) == 0)
      {
        return;
      }

      v29 = v38;
      (v39)(v38, v32, v12);
      sub_1C440BAA8(v29, 0, 1, v12);
      swift_beginAccess();
      v30 = *(v35 + 20);
    }

    sub_1C45AD734(v29, v26 + v30);
    swift_endAccess();
  }
}

uint64_t sub_1C460DC20(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v38 - v9;
  v10 = sub_1C4EF9CD8();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = v45[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = *(a1 + 64);
  sub_1C4617EC4();
  if (v18)
  {
    v19 = *(a1 + 32);
    v48 = *(a1 + 16);
    v49[0] = v19;
    *(v49 + 9) = *(a1 + 41);
    sub_1C460BC84();
    if (v3)
    {
    }

    LODWORD(v42) = v20;
    v23 = sub_1C4613044();
    v40 = v45[2];
    v41 = v45 + 2;
    v40(v16, v17 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v46);
    sub_1C4EF9B78();
    v25 = 1.0;
    if (v24 > 0.0)
    {
      v25 = exp2(v24 / -2592000.0);
    }

    v26 = v45;
    v27 = v16;
    v28 = v46;
    v39 = v45[1];
    v39(v27, v46);
    v29 = (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
    swift_beginAccess();
    *&v30 = v25;
    [*v29 add:v42 a:v23 b:v30];
    v31 = type metadata accessor for DecayingHistogramState();
    v32 = v44;
    sub_1C4467FE0(v29 + *(v31 + 20), v44);
    if (sub_1C44157D4(v32, 1, v28) == 1)
    {

      sub_1C4420C3C(v32, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v33 = v43;
      v40(v43, v47, v28);
      sub_1C440BAA8(v33, 0, 1, v28);
      swift_beginAccess();
      v34 = *(v31 + 20);
LABEL_13:
      sub_1C45AD734(v33, v29 + v34);
      return swift_endAccess();
    }

    v42 = v31;
    (v26[4])(v14, v32, v28);
    v35 = v28;
    v36 = v47;
    v37 = sub_1C4EF9C18();

    result = (v39)(v14, v35);
    if (v37)
    {
      v33 = v43;
      v40(v43, v36, v35);
      sub_1C440BAA8(v33, 0, 1, v35);
      swift_beginAccess();
      v34 = *(v42 + 20);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C461844C();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1C460E078()
{
  sub_1C43FE628();
  v54[6] = v4;
  v56 = v5;
  v57 = v1;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v55 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v54[8] = v14;
  sub_1C43FBE44();
  v15 = sub_1C4EF9CD8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v54[7] = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v54[5] = v54 - v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C441D15C();
  v25 = *(v7 + 64);
  v26 = sub_1C443DF3C();
  v2(v26);
  sub_1C447544C();
  v27 = v57;
  sub_1C460BC84();
  if (v27)
  {
    v29 = *(v18 + 8);
    v30 = sub_1C440CAF0();
    v31(v30);
    goto LABEL_11;
  }

  v32 = sub_1C4422A24(v28);
  v34 = v33(v32);
  v35 = sub_1C441B2FC(v34);
  v2(v35);
  sub_1C4EF9B78();
  v54[1] = v3;
  if (v36 > 0.0)
  {
    exp2(v36 / -2592000.0);
  }

  v37 = sub_1C4401694();
  v38(v37);
  v39 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C44609F0(*v39, sel_add_a_b_, v40);
  v41 = type metadata accessor for DecayingHistogramState();
  sub_1C4424C5C(v41);
  sub_1C4414160(v18);
  v42 = v55;
  if (v43)
  {
    v44 = sub_1C44EB860();
    v2(v44);
    sub_1C4420C3C(v18, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_10:
    sub_1C443EEA0();
    v50();
    sub_1C43FBD94();
    sub_1C440BAA8(v51, v52, v53, v15);
    sub_1C4414918();
    swift_beginAccess();
    sub_1C45AD734(v42, v39 + *(v0 + 20));
    swift_endAccess();
    goto LABEL_11;
  }

  v45 = sub_1C442900C();
  v46(v45);
  v47 = sub_1C44ADFF0();
  v48 = sub_1C440CAF0();
  v2(v48);
  v49 = sub_1C44EB860();
  v2(v49);
  if (v47)
  {
    sub_1C4404044();
    goto LABEL_10;
  }

LABEL_11:
  sub_1C44109F8();
}

void sub_1C460E380()
{
  sub_1C43FE628();
  v54[6] = v4;
  v56 = v5;
  v57 = v1;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v55 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v54[8] = v14;
  sub_1C43FBE44();
  v15 = sub_1C4EF9CD8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v54[7] = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v54[5] = v54 - v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C441D15C();
  v25 = *(v7 + 64);
  v26 = sub_1C443DF3C();
  v2(v26);
  sub_1C447544C();
  v27 = v57;
  sub_1C460BC84();
  if (v27)
  {
    v29 = *(v18 + 8);
    v30 = sub_1C440CAF0();
    v31(v30);
    goto LABEL_11;
  }

  v32 = sub_1C4422A24(v28);
  v34 = v33(v32);
  v35 = sub_1C441B2FC(v34);
  v2(v35);
  sub_1C4EF9B78();
  v54[1] = v3;
  if (v36 > 0.0)
  {
    exp2(v36 / -5184000.0);
  }

  v37 = sub_1C4401694();
  v38(v37);
  v39 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C44609F0(*v39, sel_add_a_b_, v40);
  v41 = type metadata accessor for DecayingHistogramState();
  sub_1C4424C5C(v41);
  sub_1C4414160(v18);
  v42 = v55;
  if (v43)
  {
    v44 = sub_1C44EB860();
    v2(v44);
    sub_1C4420C3C(v18, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_10:
    sub_1C443EEA0();
    v50();
    sub_1C43FBD94();
    sub_1C440BAA8(v51, v52, v53, v15);
    sub_1C4414918();
    swift_beginAccess();
    sub_1C45AD734(v42, v39 + *(v0 + 20));
    swift_endAccess();
    goto LABEL_11;
  }

  v45 = sub_1C442900C();
  v46(v45);
  v47 = sub_1C44ADFF0();
  v48 = sub_1C440CAF0();
  v2(v48);
  v49 = sub_1C44EB860();
  v2(v49);
  if (v47)
  {
    sub_1C4404044();
    goto LABEL_10;
  }

LABEL_11:
  sub_1C44109F8();
}

void sub_1C460E688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v43 = a2;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = sub_1C4EF9CD8();
  v42 = *(v14 - 8);
  v15 = v42[8];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  v21 = *(a1 + 64);
  sub_1C4616C88(&v44, v21, a3);
  if (v45)
  {
    sub_1C461844C();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return;
  }

  v46 = v44;
  v23 = *(a1 + 32);
  v47 = *(a1 + 16);
  v48[0] = v23;
  *(v48 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v4)
  {
    v25 = v24;
    v40 = sub_1C4616D1C(&v46);
    v38 = v42[2];
    v39 = v42 + 2;
    v38(v20, v21 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v14);
    sub_1C4EF9B78();
    v27 = 1.0;
    if (v26 > 0.0)
    {
      v27 = exp2(v26 / -2592000.0);
    }

    v28 = v42;
    v37 = v42[1];
    v37(v20, v14);
    v29 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
    swift_beginAccess();
    *&v30 = v27;
    [*v29 add:v25 a:v40 b:v30];
    v31 = type metadata accessor for DecayingHistogramState();
    sub_1C4467FE0(v29 + *(v31 + 20), v13);
    if (sub_1C44157D4(v13, 1, v14) == 1)
    {
      sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v32 = v41;
      v33 = v41;
      v34 = v43;
    }

    else
    {
      (v28[4])(v18, v13, v14);
      v35 = v43;
      v36 = sub_1C4EF9C18();
      v37(v18, v14);
      if ((v36 & 1) == 0)
      {
        return;
      }

      v32 = v41;
      v33 = v41;
      v34 = v35;
    }

    v38(v33, v34, v14);
    sub_1C440BAA8(v32, 0, 1, v14);
    swift_beginAccess();
    sub_1C45AD734(v32, v29 + *(v31 + 20));
    swift_endAccess();
  }
}

void sub_1C460EA60()
{
  sub_1C43FE628();
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v49 = v9;
  v11 = v10;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = sub_1C43FBD18(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v46 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FC010();
  v18 = sub_1C4EF9CD8();
  v47 = sub_1C43FCDF8(v18);
  v48 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBD08();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C440D100();
  v26 = *(v11 + 64);
  v5(v26, v8);
  if (v27)
  {
    sub_1C461844C();
    sub_1C441C114();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
  }

  else
  {
    v50 = *(v11 + 16);
    *v51 = *(v11 + 32);
    *&v51[9] = *(v11 + 41);
    sub_1C460BC84();
    if (!v1)
    {
      v30 = v29;
      v45 = sub_1C4613148();
      v44 = *(v48 + 16);
      v44(v3, v26 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v47);
      sub_1C4EF9B78();
      v32 = 1.0;
      if (v31 > 0.0)
      {
        v32 = exp2(v31 / -2592000.0);
      }

      v43 = *(v48 + 8);
      v43(v3, v47);
      v33 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
      sub_1C440F1BC();
      swift_beginAccess();
      *&v34 = v32;
      [*v33 add:v30 a:v45 b:v34];
      v35 = type metadata accessor for DecayingHistogramState();
      sub_1C4467FE0(v33 + *(v35 + 20), v2);
      if (sub_1C44157D4(v2, 1, v47) == 1)
      {
        sub_1C4420C3C(v2, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v36 = v46;
        v44(v46, v49, v47);
        sub_1C4409A84();
      }

      else
      {
        (*(v48 + 32))(v24, v2, v47);
        v41 = sub_1C4EF9C18();
        v43(v24, v47);
        if ((v41 & 1) == 0)
        {
          goto LABEL_11;
        }

        v36 = v46;
        v42 = sub_1C43FBC98();
        (v44)(v42);
        v37 = sub_1C43FC024();
        v40 = v47;
      }

      sub_1C440BAA8(v37, v38, v39, v40);
      sub_1C4414918();
      swift_beginAccess();
      sub_1C45AD734(v36, v33 + *(v35 + 20));
      swift_endAccess();
    }
  }

LABEL_11:
  sub_1C44109F8();
}

uint64_t sub_1C460EDF8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v38 - v9;
  v10 = sub_1C4EF9CD8();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = v45[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = *(a1 + 64);
  sub_1C4616F28();
  if (v18)
  {
    v19 = *(a1 + 32);
    v48 = *(a1 + 16);
    v49[0] = v19;
    *(v49 + 9) = *(a1 + 41);
    sub_1C460BC84();
    if (v3)
    {
    }

    LODWORD(v42) = v20;
    v23 = sub_1C4613044();
    v40 = v45[2];
    v41 = v45 + 2;
    v40(v16, v17 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v46);
    sub_1C4EF9B78();
    v25 = 1.0;
    if (v24 > 0.0)
    {
      v25 = exp2(v24 / -3456000.0);
    }

    v26 = v45;
    v27 = v16;
    v28 = v46;
    v39 = v45[1];
    v39(v27, v46);
    v29 = (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
    swift_beginAccess();
    *&v30 = v25;
    [*v29 add:v42 a:v23 b:v30];
    v31 = type metadata accessor for DecayingHistogramState();
    v32 = v44;
    sub_1C4467FE0(v29 + *(v31 + 20), v44);
    if (sub_1C44157D4(v32, 1, v28) == 1)
    {

      sub_1C4420C3C(v32, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v33 = v43;
      v40(v43, v47, v28);
      sub_1C440BAA8(v33, 0, 1, v28);
      swift_beginAccess();
      v34 = *(v31 + 20);
LABEL_13:
      sub_1C45AD734(v33, v29 + v34);
      return swift_endAccess();
    }

    v42 = v31;
    (v26[4])(v14, v32, v28);
    v35 = v28;
    v36 = v47;
    v37 = sub_1C4EF9C18();

    result = (v39)(v14, v35);
    if (v37)
    {
      v33 = v43;
      v40(v43, v36, v35);
      sub_1C440BAA8(v33, 0, 1, v35);
      swift_beginAccess();
      v34 = *(v42 + 20);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C461844C();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1C460F250(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v48 = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v10;
  v47 = sub_1C4EF9CD8();
  v11 = *(v47 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v47);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = *(a1 + 64);
  sub_1C4617138();
  if (v19)
  {
    sub_1C461844C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    return;
  }

  v21 = *(a1 + 32);
  v49 = *(a1 + 16);
  v50[0] = v21;
  *(v50 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v3)
  {
    v23 = v22;
    v44 = sub_1C4613148();
    v24 = v18 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
    v25 = v47;
    v42 = v11[2];
    v43 = v11 + 2;
    v42(v17, v24, v47);
    sub_1C4EF9B78();
    v27 = 1.0;
    if (v26 > 0.0)
    {
      v27 = exp2(v26 / -3456000.0);
    }

    v28 = v11;
    v29 = v11[1];
    v29(v17, v25);
    v30 = (v4 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
    swift_beginAccess();
    *&v31 = v27;
    [*v30 add:v23 a:v44 b:v31];
    v32 = type metadata accessor for DecayingHistogramState();
    v33 = v46;
    sub_1C4467FE0(v30 + *(v32 + 20), v46);
    if (sub_1C44157D4(v33, 1, v25) == 1)
    {
      sub_1C4420C3C(v33, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v34 = v25;
      v35 = v45;
      v42(v45, v48, v34);
      v36 = v35;
      v37 = v34;
    }

    else
    {
      (v28[4])(v15, v33, v25);
      v38 = v48;
      v39 = v25;
      v40 = sub_1C4EF9C18();
      v29(v15, v39);
      if ((v40 & 1) == 0)
      {
        return;
      }

      v35 = v45;
      v42(v45, v38, v39);
      v36 = v35;
      v37 = v39;
    }

    sub_1C440BAA8(v36, 0, 1, v37);
    swift_beginAccess();
    sub_1C45AD734(v35, v30 + *(v32 + 20));
    swift_endAccess();
  }
}

void sub_1C460F65C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = *(a1 + 32);
  v42 = *(a1 + 16);
  v43[0] = v20;
  *(v43 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v3)
  {
    v22 = v21;
    v39 = v2;
    v40 = 0;
    v37 = v17;
    v38 = v9;
    v23 = *(v13 + 16);
    v23(v19, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v12);
    sub_1C4EF9B78();
    v25 = 1.0;
    if (v24 > 0.0)
    {
      v25 = exp2(v24 / -1209600.0);
    }

    v36 = *(v13 + 8);
    v36(v19, v12);
    v26 = &v39[OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state];
    swift_beginAccess();
    *&v27 = v25;
    [*v26 add:v22 a:0 b:v27];
    v28 = type metadata accessor for DecayingHistogramState();
    sub_1C4467FE0(v26 + *(v28 + 20), v11);
    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v29 = v38;
      v23(v38, v41, v12);
      sub_1C440BAA8(v29, 0, 1, v12);
      swift_beginAccess();
      v30 = *(v28 + 20);
    }

    else
    {
      v35 = v28;
      v39 = v23;
      v31 = v37;
      (*(v13 + 32))(v37, v11, v12);
      v32 = v41;
      v33 = sub_1C4EF9C18();
      v36(v31, v12);
      if ((v33 & 1) == 0)
      {
        return;
      }

      v29 = v38;
      (v39)(v38, v32, v12);
      sub_1C440BAA8(v29, 0, 1, v12);
      swift_beginAccess();
      v30 = *(v35 + 20);
    }

    sub_1C45AD734(v29, v26 + v30);
    swift_endAccess();
  }
}

void sub_1C460FA08(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = *(a1 + 32);
  v42 = *(a1 + 16);
  v43[0] = v20;
  *(v43 + 9) = *(a1 + 41);
  sub_1C460BC84();
  if (!v3)
  {
    v22 = v21;
    v39 = v2;
    v40 = 0;
    v37 = v17;
    v38 = v9;
    v23 = *(v13 + 16);
    v23(v19, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v12);
    sub_1C4EF9B78();
    v25 = 1.0;
    if (v24 > 0.0)
    {
      v25 = exp2(v24 / -21600.0);
    }

    v36 = *(v13 + 8);
    v36(v19, v12);
    v26 = &v39[OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state];
    swift_beginAccess();
    *&v27 = v25;
    [*v26 add:v22 a:0 b:v27];
    v28 = type metadata accessor for DecayingHistogramState();
    sub_1C4467FE0(v26 + *(v28 + 20), v11);
    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v29 = v38;
      v23(v38, v41, v12);
      sub_1C440BAA8(v29, 0, 1, v12);
      swift_beginAccess();
      v30 = *(v28 + 20);
    }

    else
    {
      v35 = v28;
      v39 = v23;
      v31 = v37;
      (*(v13 + 32))(v37, v11, v12);
      v32 = v41;
      v33 = sub_1C4EF9C18();
      v36(v31, v12);
      if ((v33 & 1) == 0)
      {
        return;
      }

      v29 = v38;
      (v39)(v38, v32, v12);
      sub_1C440BAA8(v29, 0, 1, v12);
      swift_beginAccess();
      v30 = *(v35 + 20);
    }

    sub_1C45AD734(v29, v26 + v30);
    swift_endAccess();
  }
}

uint64_t sub_1C460FDB4(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v48 - v8;
  v9 = sub_1C4EF9CD8();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = v56[8];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - v17;
  v19 = sub_1C4EF9D38();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 64);
  sub_1C4617984();
  if (sub_1C44157D4(v18, 1, v19) == 1)
  {
    sub_1C4420C3C(v18, &qword_1EC0B9DC8, &unk_1C4F124A0);
    sub_1C461844C();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  (*(v20 + 32))(v23, v18, v19);
  v27 = *(a1 + 32);
  v60 = *(a1 + 16);
  v61[0] = v27;
  *(v61 + 9) = *(a1 + 41);
  v28 = v59;
  sub_1C460BC84();
  if (v28)
  {
    return (*(v20 + 8))(v23, v19);
  }

  v30 = v29;
  LODWORD(v52) = sub_1C4613268();
  v59 = v2;
  v31 = v56[2];
  v51 = v56 + 2;
  v50 = v31;
  v31(v14, v24 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v57);
  sub_1C4EF9B78();
  v33 = 1.0;
  if (v32 > 0.0)
  {
    v33 = exp2(v32 / -3456000.0);
  }

  v35 = v56;
  v34 = v57;
  v49 = v56[1];
  v49(v14, v57);
  v36 = (v59 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state);
  swift_beginAccess();
  *&v37 = v33;
  [*v36 add:v30 a:v52 b:v37];
  v59 = type metadata accessor for DecayingHistogramState();
  v38 = v55;
  sub_1C4467FE0(v36 + *(v59 + 20), v55);
  if (sub_1C44157D4(v38, 1, v34) == 1)
  {
    (*(v20 + 8))(v23, v19);
    sub_1C4420C3C(v38, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v39 = v34;
    v40 = v54;
    v50(v54, v58, v39);
    sub_1C440BAA8(v40, 0, 1, v39);
    swift_beginAccess();
    v41 = v36 + *(v59 + 20);
    v42 = v40;
LABEL_13:
    sub_1C45AD734(v42, v41);
    return swift_endAccess();
  }

  v52 = v36;
  v43 = v53;
  (v35[4])(v53, v38, v34);
  v44 = v58;
  v45 = sub_1C4EF9C18();
  v49(v43, v34);
  result = (*(v20 + 8))(v23, v19);
  if (v45)
  {
    v46 = v54;
    v50(v54, v44, v34);
    sub_1C440BAA8(v46, 0, 1, v34);
    v47 = v52;
    swift_beginAccess();
    v41 = v47 + *(v59 + 20);
    v42 = v46;
    goto LABEL_13;
  }

  return result;
}

void sub_1C4610378()
{
  sub_1C4456250();
  if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, &selRef_aSet) < 0xBB9u)
  {
    goto LABEL_9;
  }

  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, &selRef_aSet);
  sub_1C444C20C();
  if (v2)
  {
    v3 = sub_1C44D44D8(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, v1);
    sub_1C441AE48(v3);
    if (v0)
    {
      sub_1C440F1BC();
      swift_beginAccess();
      do
      {
        sub_1C447EF58();
        sub_1C44B8F04();
      }

      while (!v2);
    }

LABEL_9:
    if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, &selRef_bSet) >= 0x1Fu)
    {
      v4 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, &selRef_bSet) - 30;
      if ((v4 & 0xFFFF0000) != 0)
      {
        goto LABEL_16;
      }

      v5 = sub_1C44AB104(&OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state, v4);
      sub_1C441AE48(v5);
      if (v0)
      {
        sub_1C4425948();
        swift_beginAccess();
        do
        {
          sub_1C4402198();
          --v0;
        }

        while (v0);
      }
    }

    sub_1C4475D64();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1C46104B0()
{
  if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet) >= 0x3E9u)
  {
    result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
    if (((result - 1000) & 0xFFFF0000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v2 = sub_1C4610B78((result - 1000), 0, &OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
      swift_beginAccess();
      v5 = 32;
      do
      {
        [*(v0 + v4) deleteWhereA:*(v2 + v5) b:0xFFFFLL];
        v5 += 2;
        --v3;
      }

      while (v3);
    }
  }

  result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet);
  if (result < 5u)
  {
    return result;
  }

  result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet);
  if (((result - 4) & 0xFFFF0000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = sub_1C4610B78((result - 4), 1, &OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v9 = (v6 + 32);
    swift_beginAccess();
    do
    {
      v10 = *v9++;
      [*(v0 + v8) deleteWhereA:0xFFFFLL b:v10];
      --v7;
    }

    while (v7);
  }
}

void sub_1C4610648()
{
  sub_1C4456250();
  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C4462390();
  if (v2 >= 0x3E9)
  {
    v3 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet) - 1000;
    if ((v3 & 0xFFFF0000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    v4 = sub_1C44D44D8(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, v3);
    sub_1C441AE48(v4);
    if (v1)
    {
      v5 = *(v0 + 1048);
      sub_1C440F1BC();
      swift_beginAccess();
      do
      {
        sub_1C447EF58();
        sub_1C44B8F04();
      }

      while (!v6);
    }
  }

  if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) < 0xC9u)
  {
LABEL_14:
    sub_1C4475D64();
    return;
  }

  v7 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) - 200;
  if ((v7 & 0xFFFF0000) == 0)
  {
    v8 = sub_1C44AB104(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, v7);
    sub_1C441AE48(v8);
    if (v1)
    {
      v9 = *(v0 + 1048);
      sub_1C4425948();
      swift_beginAccess();
      do
      {
        sub_1C4402198();
        --v1;
      }

      while (v1);
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_1C4610780()
{
  if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet) >= 0xBB9u)
  {
    result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
    if (((result - 3000) & 0xFFFF0000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    v2 = sub_1C4610B78((result - 3000), 0, &OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
      swift_beginAccess();
      v5 = 32;
      do
      {
        [*(v0 + v4) deleteWhereA:*(v2 + v5) b:0xFFFFLL];
        v5 += 2;
        --v3;
      }

      while (v3);
    }
  }

  result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet);
  if (result < 3u)
  {
    return result;
  }

  result = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet);
  if (((result - 2) & 0xFFFF0000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = sub_1C4610B78((result - 2), 1, &OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state;
    v9 = (v6 + 32);
    swift_beginAccess();
    do
    {
      v10 = *v9++;
      [*(v0 + v8) deleteWhereA:0xFFFFLL b:v10];
      --v7;
    }

    while (v7);
  }
}

void sub_1C4610918()
{
  sub_1C4456250();
  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C4462390();
  if (v2 < 0xBB9)
  {
    goto LABEL_9;
  }

  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C444C20C();
  if (v4)
  {
    v5 = sub_1C44D44D8(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, v3);
    sub_1C441AE48(v5);
    if (v1)
    {
      v6 = *(v0 + 1048);
      sub_1C440F1BC();
      swift_beginAccess();
      do
      {
        sub_1C447EF58();
        sub_1C44B8F04();
      }

      while (!v4);
    }

LABEL_9:
    if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) >= 8u)
    {
      v7 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) - 7;
      if ((v7 & 0xFFFF0000) != 0)
      {
        goto LABEL_16;
      }

      v8 = sub_1C44AB104(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, v7);
      sub_1C441AE48(v8);
      if (v1)
      {
        v9 = *(v0 + 1048);
        sub_1C4425948();
        swift_beginAccess();
        do
        {
          sub_1C4402198();
          --v1;
        }

        while (v1);
      }
    }

    sub_1C4475D64();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C4610A48()
{
  sub_1C4456250();
  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C4462390();
  if (v2 < 0xBB9)
  {
    goto LABEL_9;
  }

  sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_aSet);
  sub_1C444C20C();
  if (v4)
  {
    v5 = sub_1C44D44D8(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, v3);
    sub_1C441AE48(v5);
    if (v1)
    {
      v6 = *(v0 + 1048);
      sub_1C440F1BC();
      swift_beginAccess();
      do
      {
        sub_1C447EF58();
        sub_1C44B8F04();
      }

      while (!v4);
    }

LABEL_9:
    if (sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) >= 2u)
    {
      v7 = sub_1C460B42C(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, &selRef_bSet) - 1;
      if ((v7 & 0xFFFF0000) != 0)
      {
        goto LABEL_16;
      }

      v8 = sub_1C44AB104(&OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_state, v7);
      sub_1C441AE48(v8);
      if (v1)
      {
        v9 = *(v0 + 1048);
        sub_1C4425948();
        swift_beginAccess();
        do
        {
          sub_1C4402198();
          --v1;
        }

        while (v1);
      }
    }

    sub_1C4475D64();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1C4610B78(uint64_t a1, char a2, uint64_t *a3)
{
  sub_1C44158BC();
  v8 = sub_1C4EF9F98();
  v9 = sub_1C43FCDF8(v8);
  v92 = v10;
  v93 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v97 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C441D15C();
  v15 = sub_1C4EF9FD8();
  v16 = sub_1C43FCDF8(v15);
  v95 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1C4F00F28();
  v98 = *a3;
  v94 = v4;
  sub_1C440F1BC();
  if ((a2 & 1) == 0)
  {
    v39 = v26;
    swift_beginAccess();
    v40 = [*(v3 + v39) aSet];
    sub_1C4EF9FA8();

    sub_1C441C0FC();
    sub_1C461861C(v41, v42);
    sub_1C4404044();
    v43 = sub_1C4F01BA8();
    if (v43)
    {
      v44 = v43;
      sub_1C4458664(v43);
      v24 = v100;
      sub_1C4404044();
      sub_1C4F01B98();
      if (v44 < 0)
      {
        goto LABEL_70;
      }

      v96 = v25;
      while (1)
      {
        v45 = sub_1C4F01BE8();
        v47 = sub_1C449DA30(v45, v46);
        v48(v47);
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v4 >> 16)
        {
          goto LABEL_61;
        }

        v49 = v15;
        v50 = v5;
        v51 = v24;
        v100 = v24;
        v53 = *(v24 + 16);
        v52 = *(v24 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1C459D488((v52 > 1), v53 + 1, 1);
          v51 = v100;
        }

        *(v51 + 16) = v53 + 1;
        v24 = v51;
        *(v51 + 2 * v53 + 32) = v4;
        v5 = v50;
        v15 = v49;
        sub_1C4F01BB8();
        --v44;
        v25 = v96;
        if (!v44)
        {
          (*(v92 + 8))(v5, v93);
          break;
        }
      }
    }

    v67 = *(v95 + 8);
    v68 = sub_1C43FFE24();
    v69(v68);
    v4 = *(v24 + 16);
    if (v4)
    {
      v70 = 0;
      while (v70 < *(v24 + 16))
      {
        [sub_1C441D688() lookupUnsmoothedA:v15 b:0xFFFFLL];
        v72 = v71;
        swift_isUniquelyReferenced_nonNull_native();
        v73 = sub_1C444BFB8();
        sub_1C4404C54(v73, v74);
        if (v61)
        {
          goto LABEL_64;
        }

        v77 = v75;
        v78 = v76;
        sub_1C456902C(&qword_1EC0B9DF8, &qword_1C4F12D50);
        if (sub_1C4485E9C())
        {
          v79 = sub_1C457AF20(v15);
          if ((v78 & 1) != (v80 & 1))
          {
            goto LABEL_71;
          }

          v77 = v79;
        }

        v25 = v99[0];
        if (v78)
        {
          *(*(v99[0] + 56) + 4 * v77) = v72;
        }

        else
        {
          sub_1C443FAA4();
          if (v61)
          {
            goto LABEL_67;
          }

          *(v99[0] + 16) = v81;
        }

        if (v4 == ++v70)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_63;
    }

LABEL_44:

    v99[0] = sub_1C4618984(v25, sub_1C497EB7C, sub_1C4619C24, sub_1C449BB08);
    v4 = 0;
    sub_1C46098E8(v99);

    if (*(v99[0] + 16) >= v94)
    {
      v82 = v94;
    }

    else
    {
      v82 = *(v99[0] + 16);
    }

    if ((v94 & 0x8000000000000000) == 0)
    {
      if (v82)
      {
        v83 = (v99[0] + 32);
        v84 = MEMORY[0x1E69E7CC0];
        do
        {
          v86 = *v83;
          v83 += 4;
          v85 = v86;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = *(v84 + 16);
            sub_1C458B26C();
            v84 = v89;
          }

          v87 = *(v84 + 16);
          if (v87 >= *(v84 + 24) >> 1)
          {
            sub_1C458B26C();
            v84 = v90;
          }

          *(v84 + 16) = v87 + 1;
          *(v84 + 2 * v87 + 32) = v85;
          --v82;
        }

        while (v82);
      }

      else
      {
        v84 = MEMORY[0x1E69E7CC0];
      }

      return v84;
    }

    goto LABEL_68;
  }

  v27 = v26;
  swift_beginAccess();
  v28 = [*(v3 + v27) bSet];
  sub_1C4EF9FA8();

  sub_1C441C0FC();
  sub_1C461861C(v29, v30);
  sub_1C43FC034();
  v31 = sub_1C4F01BA8();
  if (!v31)
  {
LABEL_19:
    (*(v95 + 8))(v22, v15);
    v4 = *(v24 + 16);
    if (v4)
    {
      v54 = 0;
      while (v54 < *(v24 + 16))
      {
        [sub_1C441D688() lookupUnsmoothedA:0xFFFFLL b:v15];
        v56 = v55;
        swift_isUniquelyReferenced_nonNull_native();
        v57 = sub_1C444BFB8();
        sub_1C4404C54(v57, v58);
        if (v61)
        {
          goto LABEL_65;
        }

        v62 = v59;
        v63 = v60;
        sub_1C456902C(&qword_1EC0B9DF8, &qword_1C4F12D50);
        if (sub_1C4485E9C())
        {
          v64 = sub_1C457AF20(v15);
          if ((v63 & 1) != (v65 & 1))
          {
            goto LABEL_71;
          }

          v62 = v64;
        }

        v25 = v99[0];
        if (v63)
        {
          *(*(v99[0] + 56) + 4 * v62) = v56;
        }

        else
        {
          sub_1C443FAA4();
          if (v61)
          {
            goto LABEL_66;
          }

          *(v99[0] + 16) = v66;
        }

        if (v4 == ++v54)
        {
          goto LABEL_44;
        }
      }

LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    goto LABEL_44;
  }

  v32 = v31;
  sub_1C4458664(v31);
  v24 = v100;
  sub_1C43FC034();
  sub_1C4F01B98();
  if ((v32 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v33 = sub_1C4F01BE8();
      v35 = sub_1C449DA30(v33, v34);
      v36(v35);
      if ((v4 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v4 >> 16)
      {
        goto LABEL_60;
      }

      v100 = v24;
      v38 = *(v24 + 16);
      v37 = *(v24 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1C459D488((v37 > 1), v38 + 1, 1);
        v24 = v100;
      }

      *(v24 + 16) = v38 + 1;
      *(v24 + 2 * v38 + 32) = v4;
      sub_1C4F01BB8();
      if (!--v32)
      {
        (*(v92 + 8))(v97, v93);
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  sub_1C4F029F8();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C46112E4(void *a1)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44058BC();
  v8 = (v1 + *a1);
  sub_1C440F1BC();
  swift_beginAccess();
  [*v8 clear];
  v9 = sub_1C4EF9CD8();
  sub_1C440BAA8(v2, 1, 1, v9);
  sub_1C4414918();
  swift_beginAccess();
  v10 = type metadata accessor for DecayingHistogramState();
  sub_1C45AD734(v2, v8 + *(v10 + 20));
  return swift_endAccess();
}

uint64_t sub_1C46113D0(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = a5;
  *(v5 + 136) = a1;
  *(v5 + 144) = a3;
  v7 = sub_1C4EF9CD8();
  *(v5 + 168) = v7;
  sub_1C43FCF7C(v7);
  *(v5 + 176) = v8;
  v10 = *(v9 + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v11 = sub_1C4EFDAB8();
  *(v5 + 192) = v11;
  sub_1C43FCF7C(v11);
  *(v5 + 200) = v12;
  v14 = *(v13 + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C461151C, 0, 0);
}

void sub_1C461151C()
{
  v1 = *(v0 + 160);
  v2 = v1[2];
  *(v0 + 264) = v2;
  v3 = *(v0 + 232);
  if (v2)
  {
    v4 = *(v0 + 200);
    v68 = *(v0 + 192);
    v5 = v1[4];
    v6 = v1[5];
    v65 = *(v0 + 240);
    swift_getObjectType();
    v7 = *(v6 + 64);
    swift_unknownObjectRetain();
    v8 = sub_1C440CAF0();
    v9 = v1;
    v7(v8);
    swift_unknownObjectRelease();
    v67 = *(v4 + 32);
    v67(v65, v3, v68);
    *(swift_task_alloc() + 16) = v65;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4B344BC();
    v11 = v10;

    v12 = *(v11 + 16);

    if (v12 == v2)
    {
      v14 = *(v0 + 248);
      v13 = *(v0 + 256);
      v16 = *(v0 + 152);
      v15 = *(v0 + 160);
      v18 = *(v0 + 136);
      v17 = *(v0 + 144);
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      sub_1C4D37344(sub_1C461C07C, v19, v15);

      v20 = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested;
      *(v0 + 272) = OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested;
      v21 = *(v17 + v20);
      *(v17 + v20) = v16;

      v14(v22);
      v23 = *(v0 + 88);
      *(v0 + 280) = v23;
      *(v0 + 304) = 0;
      *(v0 + 312) = 0;
      *(v0 + 296) = 0;
      v69 = v23 + *v23;
      v24 = *(v23 + 4);
      v25 = swift_task_alloc();
      *(v0 + 320) = v25;
      *v25 = v0;
      sub_1C441E214(v25);
      sub_1C4409A94();

      __asm { BRAA            X1, X16 }
    }

    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v35 = *(v0 + 160);
    v36 = sub_1C4F00978();
    sub_1C442B738(v36, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v37 = sub_1C4F00968();
    v38 = sub_1C4F01CE8();

    if (os_log_type_enabled(v37, v38))
    {
      v63 = v38;
      log = v37;
      v66 = *(v0 + 200);
      v39 = swift_slowAlloc();
      sub_1C43FEC60();
      v61 = swift_slowAlloc();
      v70 = v61;
      buf = v39;
      *v39 = 136315138;
      v71 = MEMORY[0x1E69E7CC0];
      sub_1C459D1E0();
      v40 = v71;
      v41 = v9 + 5;
      do
      {
        v42 = *(v0 + 208);
        v43 = *(v41 - 1);
        v44 = *v41;
        ObjectType = swift_getObjectType();
        v46 = *(v44 + 64);
        swift_unknownObjectRetain();
        v46(ObjectType, v44);
        swift_unknownObjectRelease();
        v71 = v40;
        v47 = *(v40 + 16);
        if (v47 >= *(v40 + 24) >> 1)
        {
          sub_1C459D1E0();
          v40 = v71;
        }

        v48 = *(v0 + 208);
        v49 = *(v0 + 192);
        *(v40 + 16) = v47 + 1;
        v67(v40 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v47, v48, v49);
        v41 += 2;
        --v2;
      }

      while (v2);
      v50 = MEMORY[0x1C6940380](v40, *(v0 + 192));
      v52 = v51;

      v53 = sub_1C441D828(v50, v52, &v70);

      *(buf + 4) = v53;
      v37 = log;
      _os_log_impl(&dword_1C43F8000, log, v63, "Mismatch histogram behavior types. Skipping digest of histograms: %s", buf, 0xCu);
      sub_1C440962C(v61);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C461844C();
    sub_1C441C114();
    v54 = swift_allocError();
    sub_1C440ED9C(v54, v55);
    swift_willThrow();
    v56 = sub_1C4461F20();
    v57(v56);

    v58 = *(v0 + 8);
    sub_1C4409A94();

    __asm { BRAA            X1, X16 }
  }

  v28 = *(v0 + 216);
  v29 = *(v0 + 224);
  v30 = *(v0 + 208);
  v31 = *(v0 + 184);

  v32 = *(v0 + 8);
  sub_1C4409A94();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C4611AA0()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_1C46124A8;
  }

  else
  {
    v3 = sub_1C4611BB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C4611BD0()
{
  v117 = v0;
  v2 = *(v0 + 336);
  if (!v2)
  {
    v63 = *(v0 + 312);
    v64 = *(v0 + 96);

    if (v63 < 1)
    {
LABEL_26:
      v88 = *(v0 + 272);
      v89 = *(v0 + 144);
      v90 = *(v89 + v88);
      *(v89 + v88) = 0;

      v91 = 0;
      v92 = 0;
      while (v92 != *(v0 + 264))
      {
        ++v92;
        v93 = *(v0 + 160) + v91;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        swift_getObjectType();
        v96 = *(v94 + 136);
        swift_unknownObjectRetain();
        v97 = sub_1C4404C28();
        v96(v97);
        swift_unknownObjectRelease();
        v91 += 16;
      }

      (*(*(v0 + 200) + 8))(*(v0 + 240), *(v0 + 192));
      v98 = *(v0 + 296);
      v100 = *(v0 + 232);
      v99 = *(v0 + 240);
      v102 = *(v0 + 216);
      v101 = *(v0 + 224);
      v103 = *(v0 + 208);
      v104 = *(v0 + 184);

      v105 = *(v0 + 8);

      return v105(v98);
    }

    v1 = *(v0 + 304);
    v65 = *(v0 + 312);
    if (qword_1EDDFA668 == -1)
    {
LABEL_23:
      v66 = *(v0 + 240);
      v67 = *(v0 + 216);
      v68 = *(v0 + 192);
      v69 = *(v0 + 200);
      v70 = sub_1C4F00978();
      sub_1C442B738(v70, qword_1EDE2DDE0);
      v71 = *(v69 + 16);
      v72 = sub_1C43FBC98();
      v73(v72);
      v74 = sub_1C4F00968();
      v75 = sub_1C4F01CB8();
      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v0 + 216);
      v78 = *(v0 + 192);
      v79 = *(v0 + 200);
      if (v76)
      {
        sub_1C44357DC();
        v80 = swift_slowAlloc();
        sub_1C43FEC60();
        v81 = swift_slowAlloc();
        v116[0] = v81;
        *v80 = 136315394;
        sub_1C441F518();
        sub_1C461861C(v82, v83);
        sub_1C4F02858();
        (*(v79 + 8))(v77, v78);
        v84 = sub_1C43FD258();
        v87 = sub_1C441D828(v84, v85, v86);

        *(v80 + 4) = v87;
        *(v80 + 12) = 2048;
        *(v80 + 14) = v1;
        _os_log_impl(&dword_1C43F8000, v74, v75, "[tracking %s]: Skipped %f%% behavior events during digest due to missing context", v80, 0x16u);
        sub_1C440962C(v81);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {

        (*(v79 + 8))(v77, v78);
      }

      goto LABEL_26;
    }

LABEL_36:
    sub_1C4406758();
    swift_once();
    goto LABEL_23;
  }

  v3 = *(v0 + 296);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v107 = v5;
  v7 = *(v0 + 176);
  v6 = *(v0 + 184);
  v8 = *(v0 + 168);
  v106 = objc_autoreleasePoolPush();
  type metadata accessor for BehaviorEvent();
  v9 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);
  *(v0 + 16) = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
  *(v0 + 24) = v9;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 17;
  (*(v7 + 16))(v6, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date, v8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45D644C(v0 + 16, v6);
  v10 = 0;
  v11 = 0;
  v12 = *(v0 + 328);
  v108 = *(v0 + 312);
  v112 = *(v0 + 304);
  v113 = v13;
  do
  {
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v114 = v10;
    v16 = *(v0 + 160) + v10;
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 120);
    swift_unknownObjectRetain();
    v20(v113, v14, v15, ObjectType, v18);
    if (v12)
    {
      *(v0 + 120) = v12;
      v21 = v12;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 57) & 1) == 0)
      {

        swift_unknownObjectRelease();
        if (__OFADD__(v108, 1))
        {
          goto LABEL_33;
        }

        if (__OFADD__(v112, 1))
        {
          goto LABEL_34;
        }

        ++v108;
        ++v112;
      }

      else
      {

        if (qword_1EDDFA668 != -1)
        {
          sub_1C4406758();
          swift_once();
        }

        v22 = *(v0 + 240);
        v23 = *(v0 + 224);
        v24 = *(v0 + 192);
        v25 = *(v0 + 200);
        v26 = sub_1C4F00978();
        sub_1C442B738(v26, qword_1EDE2DDE0);
        v27 = *(v25 + 16);
        v28 = sub_1C43FBC98();
        v29(v28);
        swift_unknownObjectRetain();
        v30 = v12;

        v31 = sub_1C4F00968();
        v32 = sub_1C4F01CD8();
        swift_unknownObjectRelease();

        v33 = os_log_type_enabled(v31, v32);
        v111 = *(v0 + 224);
        v35 = *(v0 + 192);
        v34 = *(v0 + 200);
        if (v33)
        {
          v110 = v32;
          v36 = swift_slowAlloc();
          v116[0] = swift_slowAlloc();
          *v36 = 136315906;
          swift_getObjectType();
          log = v31;
          v37 = (*(v18 + 24))();
          v38 = sub_1C460AEA8(v37);
          v40 = sub_1C441D828(v38, v39, v116);

          *(v36 + 4) = v40;
          *(v36 + 12) = 2080;
          sub_1C441F518();
          sub_1C461861C(&qword_1EDDEFFB0, v41);
          sub_1C4F02858();
          (*(v34 + 8))(v111, v35);
          v42 = sub_1C43FFE24();
          v45 = sub_1C441D828(v42, v43, v44);

          *(v36 + 14) = v45;
          *(v36 + 22) = 2080;

          v46 = sub_1C45D62A8();
          v48 = v47;

          v49 = sub_1C441D828(v46, v48, v116);

          *(v36 + 24) = v49;
          *(v36 + 32) = 2080;
          swift_getErrorValue();
          v51 = *(v0 + 64);
          v50 = *(v0 + 72);
          v52 = *(v0 + 80);
          v53 = sub_1C4F02A38();
          v55 = sub_1C441D828(v53, v54, v116);

          *(v36 + 34) = v55;
          _os_log_impl(&dword_1C43F8000, log, v110, "[%s histogram, tracking %s]: Skipping event %s due to failure getting histogram key for behavior - %s", v36, 0x2Au);
          swift_arrayDestroy();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          (*(v34 + 8))(v111, v35);
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
      if (__OFADD__(v112, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      ++v112;
    }

    v12 = 0;
    ++v11;
    v10 = v114 + 16;
  }

  while (v11 != *(v0 + 264));
  v56 = *(v0 + 272);
  v57 = *(v0 + 144);
  v58 = *(v57 + v56);
  *(v57 + v56) = v113;

  objc_autoreleasePoolPop(v106);

  *(v0 + 304) = v112;
  *(v0 + 312) = v108;
  *(v0 + 296) = v107;
  v115 = (*(v0 + 280) + **(v0 + 280));
  v59 = *(*(v0 + 280) + 4);
  v60 = swift_task_alloc();
  *(v0 + 320) = v60;
  *v60 = v0;
  v61 = sub_1C441E214();

  return v115(v61);
}

uint64_t sub_1C46124BC()
{
  *(v0 + 112) = *(v0 + 328);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1C4612550, 0, 0);
}

uint64_t sub_1C4612550()
{
  v1 = v0[12];

  v2 = v0[41];
  v3 = sub_1C4461F20();
  v4(v3);

  v5 = v0[1];

  return v5();
}

BOOL sub_1C461260C()
{
  sub_1C43FBE94();
  v2 = sub_1C4EFDAB8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v8 = *v0;
  v9 = v0[1];
  ObjectType = swift_getObjectType();
  (*(v9 + 64))(ObjectType, v9);
  sub_1C441F518();
  sub_1C461861C(v11, v12);
  sub_1C4F01578();
  sub_1C4F01578();
  (*(v5 + 8))(v1, v2);
  return v15 == v14;
}

uint64_t sub_1C4612754(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 128))(a2, ObjectType, v4);
}

void sub_1C46127B4(void *a1, uint64_t a2)
{
  v4 = sub_1C4EFDAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 error];
  if (v9)
  {
    v10 = v9;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v11 = sub_1C4F00978();
    sub_1C442B738(v11, qword_1EDE2DDE0);
    (*(v5 + 16))(v8, a2, v4);
    v12 = v10;
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315394;
      sub_1C461861C(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
      v17 = sub_1C4F02858();
      v19 = v18;
      (*(v5 + 8))(v8, v4);
      v20 = sub_1C441D828(v17, v19, &v25);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_1C4F02A38();
      v23 = sub_1C441D828(v21, v22, &v25);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_1C43F8000, v13, v14, "[tracking %s]: At digest, Biome sink completed with error- %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_1C4612AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1C4EFDAB8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(a2 + 16);
  if (v8)
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v9 = (a2 + 40);
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v13 = *(v10 + 120);
      swift_unknownObjectRetain();
      v13(a1, a3, a4, ObjectType, v10);
      result = swift_unknownObjectRelease();
      v15 = *(a5 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        break;
      }

      *(a5 + 16) = v17;
      v9 += 2;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {
LABEL_5:
    v18 = *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested);
    *(a4 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested) = a1;
  }

  return result;
}

uint64_t sub_1C4613044()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C4425948();
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!*(v3 + 16))
  {
LABEL_5:
    v10 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C46133B8(v10);

    if ((v11 & 0x10000) == 0)
    {
      v8 = v11 + 1;
      if ((v8 & 0x10000) == 0)
      {
LABEL_9:
        sub_1C4414918();
        swift_beginAccess();
        v12 = *(v1 + v2);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4434E60();
        *(v1 + v2) = v14;
        swift_endAccess();
        return v8;
      }

      __break(1u);
    }

    v8 = 0;
    goto LABEL_9;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C43FE5F8();
  v6 = sub_1C445FAA8(v4, v5);
  if ((v7 & 1) == 0)
  {

    v9 = *(v1 + v2);
    goto LABEL_5;
  }

  v8 = *(*(v3 + 56) + 2 * v6);

  return v8;
}

uint64_t sub_1C4613148()
{
  v1 = v0;
  sub_1C4F02858();
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C4425948();
  swift_beginAccess();
  v3 = *(v0 + v2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C43FE5F8();
  v6 = sub_1C465C230(v4, v5, v3);

  if ((v6 & 0x10000) != 0)
  {
    v7 = *(v1 + v2);
    v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C46133B8(v8);

    if ((v9 & 0x10000) == 0)
    {
      v6 = v9 + 1;
      if ((v6 & 0x10000) == 0)
      {
LABEL_7:
        sub_1C4414918();
        swift_beginAccess();
        v10 = *(v1 + v2);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4434E60();
        *(v1 + v2) = v12;

        swift_endAccess();
        return v6;
      }

      __break(1u);
    }

    v6 = 0;
    goto LABEL_7;
  }

  return v6;
}

uint64_t sub_1C4613268()
{
  v1 = v0;
  sub_1C4EF9CF8();
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C4425948();
  swift_beginAccess();
  v3 = *(v0 + v2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C43FE5F8();
  v6 = sub_1C465C230(v4, v5, v3);

  if ((v6 & 0x10000) != 0)
  {
    v7 = *(v1 + v2);
    v8 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v9 = sub_1C46133B8(v8);

    if ((v9 & 0x10000) == 0)
    {
      v6 = v9 + 1;
      if ((v6 & 0x10000) == 0)
      {
LABEL_7:
        sub_1C4414918();
        swift_beginAccess();
        v10 = *(v1 + v2);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4434E60();
        *(v1 + v2) = v12;

        swift_endAccess();
        return v6;
      }

      __break(1u);
    }

    v6 = 0;
    goto LABEL_7;
  }

  return v6;
}

uint64_t sub_1C4613374(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C46133B8(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 2 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = *(v11 + ((v13 << 7) | (2 * v14)));
      if (v12 <= v15)
      {
        v12 = v15;
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = v12;
        return v17 | (v16 << 16);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        break;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 16);
  }

  return result;
}

uint64_t sub_1C46134D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_1C4613518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

void sub_1C4613570()
{
  sub_1C43FBD3C();
  v2 = v0;
  v3 = sub_1C4EF9FD8();
  v4 = sub_1C43FCDF8(v3);
  v40 = v5;
  v41 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44144F4();
  sub_1C4610378();
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  v9 = [*(v2 + v8) bSet];
  v43 = v1;
  sub_1C4EF9FA8();

  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C440F1BC();
  swift_beginAccess();
  v11 = *(v2 + v10);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = *(v2 + v10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = 0;
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      break;
    }

LABEL_8:
    sub_1C43FE644();
    v20 = v19 | (v17 << 6);
    v21 = (*(v11 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v11 + 56) + 2 * v20);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (sub_1C4EF9FC8())
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = v42[2];
        sub_1C443D664();
        v42 = v28;
      }

      v25 = v42[2];
      if (v25 >= v42[3] >> 1)
      {
        sub_1C443D664();
        v42 = v29;
      }

      v42[2] = v25 + 1;
      v26 = &v42[2 * v25];
      v26[4] = v23;
      v26[5] = v22;
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  v30 = v42[2];
  if (v30)
  {
    v31 = v42 + 5;
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      sub_1C4414918();
      swift_beginAccess();
      v34 = *(v2 + v10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v35 = sub_1C445FAA8(v32, v33);
      LOBYTE(v34) = v36;

      if (v34)
      {
        v37 = *(v2 + v10);
        swift_isUniquelyReferenced_nonNull_native();
        v44 = *(v2 + v10);
        *(v2 + v10) = 0x8000000000000000;
        v38 = *(v44 + 24);
        sub_1C456902C(&qword_1EC0B9E10, &unk_1C4F12D68);
        sub_1C4F02458();
        v39 = *(*(v44 + 48) + 16 * v35 + 8);

        sub_1C4F02478();
        *(v2 + v10) = v44;
      }

      swift_endAccess();
      v31 += 2;
      --v30;
    }

    while (v30);
  }

  (*(v40 + 8))(v43, v41);

  sub_1C43FE9F0();
}

void sub_1C46138B4()
{
  sub_1C43FBD3C();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(v2 + 48);
  v16 = *(v2 + 52);
  v17 = swift_allocObject();
  sub_1C4418280(v10, v10[3]);
  sub_1C43FCE64();
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v22 = sub_1C443E2C0(v21);
  v23(v22);
  v24 = *v1;
  v25 = (v17 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource);
  v25[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v25[4] = &off_1F43E2510;
  *v25 = v24;
  sub_1C44191A0();
  sub_1C461B9D8(v14, v17 + v26);
  v27 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType;
  v28 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v28);
  (*(v29 + 32))(v17 + v27, v12);
  sub_1C443FA18(v8, v17 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource);
  v30 = (v17 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
  *v30 = v6;
  v30[1] = v4;
  sub_1C440962C(v10);
  sub_1C4495188();
  sub_1C43FE9F0();
}

uint64_t sub_1C4613A34()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType;
  v2 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource));
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource + 8);

  sub_1C440DF1C();
  sub_1C461B820();
  return v0;
}

uint64_t sub_1C4613B14()
{
  result = sub_1C4EFDAB8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DecayingHistogramState();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4613BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172676F74736968 && a2 == 0xEE0065746174536DLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xEB0000000070614DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4613CCC(char a1)
{
  if (a1)
  {
    return 0x79726F6765746163;
  }

  else
  {
    return 0x6172676F74736968;
  }
}

uint64_t sub_1C4613D18(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0B9E48, &qword_1C4F12F98);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FE61C();
  v11 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C461BCA8();
  sub_1C4F02BF8();
  type metadata accessor for DecayingHistogramState();
  sub_1C4431FA4();
  sub_1C461861C(v12, v13);
  sub_1C447F7A8();
  if (!v2)
  {
    v18 = *(v3 + *(type metadata accessor for CategoricalBehaviorHistogramBase.Snapshot(0) + 20));
    sub_1C456902C(&qword_1EC0B9E40, &qword_1C4F12F90);
    sub_1C461BCFC(&qword_1EDDF06D8);
    sub_1C447F7A8();
  }

  v14 = *(v7 + 8);
  v15 = sub_1C43FD024();
  return v16(v15);
}

void sub_1C4613EE0()
{
  sub_1C43FE96C();
  v4 = v3;
  v25 = v5;
  v6 = type metadata accessor for DecayingHistogramState();
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v28 = v11 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9E38, &qword_1C4F12F88);
  v13 = sub_1C43FCDF8(v12);
  v26 = v14;
  v27 = v13;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4405820();
  v18 = type metadata accessor for CategoricalBehaviorHistogramBase.Snapshot(0);
  v19 = sub_1C43FBCE0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v22 = v4[4];
  sub_1C4409678(v4, v4[3]);
  sub_1C461BCA8();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v4);
  }

  else
  {
    sub_1C4431FA4();
    sub_1C461861C(v23, v24);
    sub_1C4F026C8();
    sub_1C44191A0();
    sub_1C461B9D8(v28, v1);
    sub_1C456902C(&qword_1EC0B9E40, &qword_1C4F12F90);
    sub_1C461BCFC(&qword_1EDDF06D0);
    sub_1C4F026C8();
    (*(v26 + 8))(v2, v27);
    *(v1 + *(v18 + 20)) = v29;
    sub_1C461B8B4(v1, v25);
    sub_1C440962C(v4);
    sub_1C461B820();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C46141F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4614248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4613BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4614270(uint64_t a1)
{
  v2 = sub_1C461BCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46142AC(uint64_t a1)
{
  v2 = sub_1C461BCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4614318()
{
  sub_1C43FBD3C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1C4440CCC();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  sub_1C4418280(v11, v11[3]);
  sub_1C43FCE64();
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v20 = sub_1C4414900(v19);
  v21(v20);
  v22 = *v3;
  v23 = (v15 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_behaviorKeySource);
  v23[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v23[4] = &off_1F43E2510;
  *v23 = v22;
  sub_1C44191A0();
  sub_1C461B9D8(v2, v15 + v24);
  *(v15 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap) = v1;
  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_trackedBehaviorType;
  v26 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v26);
  (*(v27 + 32))(v15 + v25, v0);
  sub_1C443FA18(v9, v15 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource);
  v28 = (v15 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource);
  *v28 = v7;
  v28[1] = v5;
  sub_1C440962C(v11);
  sub_1C4495188();
  sub_1C43FE9F0();
}

void sub_1C46144A0()
{
  sub_1C43FE96C();
  v38 = v4;
  v39 = v3;
  v42 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C4EFDAB8();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v37 = v17 - v16;
  sub_1C43FBE44();
  v18 = type metadata accessor for DecayingHistogramState();
  v19 = sub_1C43FBD18(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v22 = type metadata accessor for CategoricalBehaviorHistogramBase.Snapshot(0);
  v23 = sub_1C43FBCE0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v29 = objc_autoreleasePoolPush();
  v30 = sub_1C4EF9348();
  sub_1C43FD23C(v30);
  swift_allocObject();
  sub_1C4EF9338();
  sub_1C444FC5C();
  sub_1C461861C(v31, v32);
  sub_1C4EF9328();

  objc_autoreleasePoolPop(v29);
  if (v1)
  {
    sub_1C4434000(v9, v7);
    sub_1C440962C(v38);
    sub_1C440962C(v39);
    (*(v13 + 8))(v42, v10);
  }

  else
  {
    sub_1C4412D20();
    v33 = sub_1C440CAF0();
    sub_1C461B8B4(v33, v34);
    v35 = *(v28 + *(v22 + 20));
    (*(v13 + 16))(v37, v42, v10);
    sub_1C442E860(v39, v41);
    sub_1C442E860(v38, v40);
    v36 = *(v0 + 200);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v36(v2, v35, v37, v41, v40, sub_1C461C054, 0);
    sub_1C4434000(v9, v7);
    sub_1C440962C(v38);
    sub_1C440962C(v39);
    (*(v13 + 8))(v42, v10);
    sub_1C440BB94();
    sub_1C461B820();
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C461477C()
{
  v2 = type metadata accessor for CategoricalBehaviorHistogramBase.Snapshot(0);
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44109B4();
  v6 = sub_1C4EF93D8();
  sub_1C43FD23C(v6);
  swift_allocObject();
  sub_1C4EF93C8();
  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_state;
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C4412D20();
  sub_1C461B8B4(v0 + v7, v1);
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C440F1BC();
  swift_beginAccess();
  *(v1 + *(v2 + 20)) = *(v0 + v8);
  sub_1C444FC5C();
  sub_1C461861C(v9, v10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF93B8();
  sub_1C440BB94();
  sub_1C461B820();

  return sub_1C44A1BCC();
}

uint64_t sub_1C46148B8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_trackedBehaviorType;
  v2 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource));
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_behaviorKeySource));
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource + 8);

  sub_1C440DF1C();
  sub_1C461B820();
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap);

  return v0;
}

uint64_t sub_1C4614990()
{
  result = sub_1C4EFDAB8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DecayingHistogramState();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1C4614A80()
{
  sub_1C442A8A4();
  v1 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v7 = sub_1C4EF9F88();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v13 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  v14 = *(v13 + 8);
  v15 = sub_1C4404044();
  v16(v15);
  v17 = objc_autoreleasePoolPush();
  sub_1C4EF9E78();
  sub_1C4EF9B78();
  v18 = *(v4 + 8);
  v19 = sub_1C4422A18();
  v20(v19);
  v21 = sub_1C447F4CC(432.0);
  if (!(v23 ^ v24 | v22))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v21 <= -9.22337204e18)
  {
    goto LABEL_8;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v25 = v21;
  objc_autoreleasePoolPop(v17);
  v26 = *(v10 + 8);
  v27 = sub_1C43FFE3C();
  v28(v27);
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25 >> 16)
  {
LABEL_11:
    __break(1u);
  }
}

void sub_1C4614C70()
{
  sub_1C43FBD3C();
  v1 = sub_1C4EF9F88();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C44144F4();
  v7 = sub_1C4EF9CD8();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v28 = objc_autoreleasePoolPush();
  v19 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  v20 = *(v19 + 8);
  v21 = sub_1C43FD258();
  v22(v21);
  sub_1C4EF9CC8();
  sub_1C4EF9E78();
  v23 = *(v10 + 8);
  v23(v15, v7);
  v24 = *(v4 + 8);
  v25 = sub_1C4404C28();
  v26(v25);
  v29 = v18;
  v30 = 0x407B000000000000;
  sub_1C45D9A84();
  v23(v18, v7);
  objc_autoreleasePoolPop(v28);
  sub_1C43FE9F0();
}

void sub_1C4614F38()
{
  sub_1C442A8A4();
  v1 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4425958();
  v8 = objc_autoreleasePoolPush();
  sub_1C4EF9E78();
  sub_1C4EF9BE8();
  sub_1C4EF9B78();
  v9 = *(v4 + 8);
  v10 = sub_1C43FFE3C();
  v9(v10);
  (v9)(v0, v1);
  v11 = sub_1C447F4CC(21600.0);
  if (!(v13 ^ v14 | v12))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v11 <= -1.0)
  {
    goto LABEL_6;
  }

  if (v11 < 65536.0)
  {
    objc_autoreleasePoolPop(v8);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C46150A0()
{
  sub_1C4614F38();
  v1 = &unk_1F43D2B78 + v0;
  result = 0x746867696ELL;
  switch(v1[32])
  {
    case 1:
      v3 = 1852993389;
      goto LABEL_5;
    case 2:
      result = sub_1C44D3F60();
      break;
    case 3:
      v3 = 1852143205;
LABEL_5:
      result = v3 | 0x676E6900000000;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4615124()
{
  sub_1C442F0C4();
  sub_1C44158BC();
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = objc_autoreleasePoolPush();
  sub_1C4EF9E78();
  sub_1C4EF9BE8();
  v10 = *(v3 + 8);
  v11 = sub_1C43FD024();
  v10(v11);
  v13[2] = v8;
  v13[3] = 0x40D5180000000000;
  sub_1C45D9A84();
  v12 = sub_1C43FFE3C();
  v10(v12);
  objc_autoreleasePoolPop(v9);
  sub_1C4422220();
}

void sub_1C461526C()
{
  sub_1C442F0C4();
  sub_1C4403FC0();
  v1 = sub_1C4EF9F88();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24);
  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v5);
  sub_1C44690A8();
  v7(v5, v6);
  sub_1C4402CD0();
  sub_1C4614F38();
  v8 = sub_1C442F104();
  v9(v8);
  sub_1C4422220();
}

void sub_1C4615350()
{
  sub_1C43FBD3C();
  v2 = sub_1C4EF9F88();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44109B4();
  v8 = sub_1C4EF9CD8();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4EF9CC8();
  v14 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  sub_1C44690A8();
  v15 = sub_1C43FFE24();
  v16(v15);
  sub_1C4615124();
  v17 = *(v5 + 8);
  v18 = sub_1C43FD024();
  v19(v18);
  (*(v11 + 8))(v1, v8);
  sub_1C43FE9F0();
}

void sub_1C461552C()
{
  sub_1C442F0C4();
  v2 = v1;
  v4 = v3;
  sub_1C4418280(v3, *(v3 + 24));
  sub_1C43FCE64();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C4405820();
  (*(v8 + 16))(v0);
  v9 = *v0;
  v10 = sub_1C43FE5F8();
  v2(v10);
  sub_1C440962C(v4);
  sub_1C445AB74();
  sub_1C4422220();
}

void sub_1C4615670()
{
  sub_1C43FBD3C();
  sub_1C44158BC();
  v3 = sub_1C4EF9F68();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v9 = sub_1C4EF9F88();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v15 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  v16 = *(v15 + 8);
  v17 = sub_1C4404044();
  v18(v17);
  v19 = objc_autoreleasePoolPush();
  (*(v6 + 104))(v1, *MEMORY[0x1E6969AB0], v3);
  v20 = sub_1C4EF9F78();
  v21 = *(v6 + 8);
  v22 = sub_1C43FFE3C();
  v23(v22);
  v24 = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v19);
  (*(v12 + 8))(v2, v9);
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(v24 >> 16))
  {
    sub_1C43FE9F0();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C4615834()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C4615884(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1C4615884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = sub_1C4EF9F68();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - v7;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = sub_1C4EF9F88();
  v49 = *(v16 - 8);
  v50 = v16;
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24);
  v20 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((a1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v21);
  (*(v20 + 8))(v21, v20);
  sub_1C4EF9CC8();
  v44 = v15;
  sub_1C4EF9E78();
  v22 = *(v9 + 8);
  v51 = v9 + 8;
  v52 = v8;
  v47 = v22;
  v22(v13, v8);
  v23 = *MEMORY[0x1E6969AB0];
  v24 = v45;
  v25 = v46;
  v26 = *(v46 + 104);
  v26(v45, v23, v3);
  v43 = sub_1C4EF9F78();
  v27 = *(v25 + 8);
  v27(v24, v3);
  v26(v24, v23, v3);
  v28 = v48;
  v26(v48, *MEMORY[0x1E6969A10], v3);
  v29 = v44;
  v30 = v19;
  v31 = sub_1C4EF9F48();
  v46 = v32;
  LOBYTE(v19) = v33;
  v27(v28, v3);
  v34 = (v27)(v24, v3);
  if (v19)
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v34);
    v36 = v43;
    *(&v42 - 4) = v30;
    *(&v42 - 3) = v36;
    *(&v42 - 2) = v29;
    sub_1C49BFC78(sub_1C461B9B8, (&v42 - 6), v31, v46, v37, v38, v39, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  }

  *v54 = v35;
  v47(v29, v52);
  return (*(v49 + 8))(v30, v50);
}

uint64_t sub_1C4615C88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EF9F68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = (*(v6 + 104))(v9, *MEMORY[0x1E6969A48], v5);
  if (__OFSUB__(v10, a3))
  {
    __break(1u);
  }

  else
  {
    sub_1C4EF9F28();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

BOOL sub_1C4615E88()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1C4EF9EC8();
  objc_autoreleasePoolPop(v0);
  return (v1 & 1) == 0;
}

uint64_t sub_1C4615ED8(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4615F2C(a2, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4615F2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v69 = *(v3 - 8);
  v4 = *(v69 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v75 = v61 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v61 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v61 - v12;
  v14 = sub_1C4EF9F68();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v72 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C4EF9CD8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v74 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v61 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v61 - v25;
  sub_1C4EF9CC8();
  sub_1C4EF9E78();
  v70 = v17;
  v71 = v18;
  v65 = *(v18 + 8);
  v66 = v18 + 8;
  v65(v24, v17);
  v27 = *MEMORY[0x1E6969AB0];
  v28 = v76;
  v29 = *(v76 + 104);
  v61[1] = v76 + 104;
  v30 = v72;
  v29(v72, v27, v14);
  v68 = v26;
  v61[2] = a1;
  v31 = sub_1C4EF9F78();
  v32 = v28 + 8;
  v33 = *(v28 + 8);
  v76 = v32;
  v33(v30, v14);
  v34 = v33;
  v35 = v30;
  v36 = *MEMORY[0x1E6969A48];
  v62 = v14;
  v64 = v29;
  result = (v29)(v35, v36, v14);
  v63 = v31;
  if (__OFSUB__(0, v31))
  {
    __break(1u);
  }

  else
  {
    sub_1C4EF9F28();
    v38 = v36;
    v39 = v62;
    v34(v35, v62);
    v64(v35, v38, v39);
    sub_1C4EF9F28();
    v34(v35, v39);
    sub_1C456902C(&qword_1EC0B8F38, &qword_1C4F0EA08);
    v40 = *(v69 + 72);
    v41 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C4F0CE60;
    v64 = v42;
    v43 = v42 + v41;
    sub_1C4467FE0(v13, v42 + v41);
    sub_1C4467FE0(v11, v43 + v40);
    v44 = 0;
    v45 = 0;
    v46 = v70;
    v72 = (v71 + 32);
    v76 = MEMORY[0x1E69E7CC0];
    v69 = v43;
    do
    {
      v47 = v13;
      v48 = v11;
      v49 = v44;
      v50 = v75;
      sub_1C4467FE0(v43 + v45 * v40, v75);
      v51 = v73;
      sub_1C44973B8(v50, v73, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (sub_1C44157D4(v51, 1, v46) == 1)
      {
        sub_1C4420C3C(v51, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v13 = v47;
      }

      else
      {
        v52 = *v72;
        (*v72)(v74, v51, v46);
        v53 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458B150(0, *(v53 + 16) + 1, 1, v53);
          v53 = v59;
        }

        v55 = *(v53 + 16);
        v54 = *(v53 + 24);
        v56 = v71;
        if (v55 >= v54 >> 1)
        {
          sub_1C458B150(v54 > 1, v55 + 1, 1, v53);
          v56 = v71;
          v53 = v60;
        }

        *(v53 + 16) = v55 + 1;
        v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v76 = v53;
        v58 = v53 + v57 + *(v56 + 72) * v55;
        v46 = v70;
        v52(v58, v74, v70);
        v11 = v48;
        v13 = v47;
        v43 = v69;
      }

      v44 = 1;
      v45 = 1;
    }

    while ((v49 & 1) == 0);
    swift_setDeallocating();
    sub_1C49E1570();
    sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = (v65)(v68, v46);
    *v67 = v76;
  }

  return result;
}

void sub_1C4616548()
{
  sub_1C442F0C4();
  sub_1C4403FC0();
  v1 = sub_1C4EF9F88();
  v2 = sub_1C43FCDF8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24);
  v6 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v5);
  sub_1C44690A8();
  v7(v5, v6);
  sub_1C4402CD0();
  sub_1C4615E88();
  v8 = sub_1C442F104();
  v9(v8);
  sub_1C4422220();
}

void sub_1C461662C()
{
  sub_1C43FBD3C();
  v3 = sub_1C4EF9F88();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  sub_1C44109B4();
  v9 = sub_1C4EF9CD8();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C4EF9CC8();
  v15 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 32);
  sub_1C4409678((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource + 24));
  sub_1C44690A8();
  v16 = sub_1C43FFE24();
  v18 = v17(v16);
  sub_1C4615ED8(v18, v1);
  v19 = *(v6 + 8);
  v20 = sub_1C43FD024();
  v21(v20);
  (*(v12 + 8))(v2, v9);
  sub_1C43FE9F0();
}

uint64_t sub_1C461697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  v5 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v5);
  (*(v6 + 16))(a2, a1 + v4, v5);
  sub_1C43FBD94();

  return sub_1C440BAA8(v7, v8, v9, v5);
}

uint64_t sub_1C4616A94()
{
  v1 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource);
  sub_1C440F1BC();
  swift_beginAccess();
  v2 = *sub_1C4409678(v1, v1[3]);
  return sub_1C45EA5B4();
}

uint64_t sub_1C4616B08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 && (v4 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore21CachedContextProvider_lastBehaviorEventDigested)) != 0)
  {
    v10 = *(v4 + 32);
    v11 = *(v4 + 16);
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    result = sub_1C45D7F78(*(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v5, v6);
    v9 = v10;
    v8 = v11;
  }

  else
  {
    result = sub_1C45D72D0(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType, (v2 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource), v12);
    v8 = v12[0];
    v9 = v12[1];
    v5 = v13;
    v6 = v14;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  return result;
}

double sub_1C4616C04@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  sub_1C4616B08(a1, &v5);
  v3 = v6[0];
  *a2 = v5;
  a2[1] = v3;
  result = *(v6 + 9);
  *(a2 + 25) = *(v6 + 9);
  return result;
}

unint64_t sub_1C4616D1C(unint64_t *a1)
{
  result = *a1;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result >> 16)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1C4616D5C()
{
  sub_1C43FBD3C();
  v2 = v1;
  sub_1C4418280(v1, *(v1 + 24));
  sub_1C43FCE64();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v7 = sub_1C443E2C0(v6);
  v8(v7);
  v9 = *v0;
  sub_1C461B5AC();
  sub_1C440962C(v2);
  sub_1C43FE9F0();
}

void sub_1C4616F28()
{
  sub_1C442F0C4();
  v2 = sub_1C4441424();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44144F4();
  v8 = *MEMORY[0x1E69A9428];
  if (v0)
  {
    v9 = sub_1C43FEC50(v5);
    v10(v9);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v11 = sub_1C44109E8();
    v12(v11);
    if (!v1)
    {
      goto LABEL_9;
    }

    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    sub_1C445C110();
    v15 = *(v1 + 56);
    v16 = sub_1C44086E0();
    sub_1C45D7F78(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = sub_1C43FEC50(v5);
    v23(v22);
    sub_1C4404C34();
    v24 = sub_1C44109E8();
    v25(v24);
    v15 = v33;
    if (v33 == 255)
    {
      goto LABEL_9;
    }

    LOBYTE(v5) = v32;
  }

  if (v15 != 7 || (v5 & 1) == 0)
  {
    v26 = sub_1C44086E0();
    sub_1C45A23B4(v26, v27, v28, v29, v30, v31);
  }

LABEL_9:
  sub_1C43FBC98();
  sub_1C4422220();
}

void sub_1C46170C4(void *a1@<X8>)
{
  sub_1C4616F28();
  *a1 = v2;
  a1[1] = v3;
}

void sub_1C4617138()
{
  sub_1C442F0C4();
  v2 = sub_1C4441424();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44144F4();
  v8 = *MEMORY[0x1E69A9408];
  if (v0)
  {
    v9 = sub_1C43FEC50(v5);
    v10(v9);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v11 = sub_1C44109E8();
    v12(v11);
    if (!v1)
    {
      goto LABEL_8;
    }

    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    sub_1C445C110();
    v15 = *(v1 + 56);
    v16 = sub_1C441189C();
    sub_1C45D7F78(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = sub_1C43FEC50(v5);
    v23(v22);
    sub_1C4404C34();
    v24 = sub_1C44109E8();
    v25(v24);
    v15 = v32;
    if (v32 == 255)
    {
      goto LABEL_8;
    }

    sub_1C44605FC();
  }

  if (v15 != 18)
  {
    v26 = sub_1C441189C();
    sub_1C45A23B4(v26, v27, v28, v29, v30, v31);
  }

LABEL_8:
  sub_1C445AB74();
  sub_1C4422220();
}

void sub_1C461729C()
{
  sub_1C43FBD3C();
  v36 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1C4440CCC();
  v12 = *(v0 + 48);
  v13 = *(v0 + 52);
  v14 = swift_allocObject();
  sub_1C4418280(v11, v11[3]);
  sub_1C43FCE64();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v19 = sub_1C4414900(v18);
  v20(v19);
  v21 = *v4;
  v22 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v37[3] = v22;
  v37[4] = &off_1F43E2510;
  v37[0] = v21;
  sub_1C4418280(v37, v22);
  sub_1C43FCE64();
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v27 = sub_1C4414900(v26);
  v28(v27);
  v29 = *v21;
  v30 = (v14 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_behaviorKeySource);
  v30[3] = v22;
  v30[4] = &off_1F43E2510;
  *v30 = v29;
  sub_1C44191A0();
  sub_1C461B9D8(v3, v14 + v31);
  *(v14 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap) = v2;
  v32 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_trackedBehaviorType;
  v33 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v33);
  (*(v34 + 32))(v14 + v32, v1);
  sub_1C443FA18(v9, v14 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource);
  v35 = (v14 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_timeSource);
  *v35 = v7;
  v35[1] = v36;
  sub_1C440962C(v37);
  sub_1C440962C(v11);
  sub_1C43FE9F0();
}

void sub_1C46174E0(uint64_t a1@<X8>)
{
  sub_1C4617138();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_1C4617554()
{
  sub_1C442F0C4();
  v2 = sub_1C4441424();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44144F4();
  v8 = *MEMORY[0x1E69A93F8];
  if (v0)
  {
    v9 = sub_1C43FEC50(v5);
    v10(v9);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v11 = sub_1C44109E8();
    v12(v11);
    if (!v1)
    {
      goto LABEL_8;
    }

    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    sub_1C445C110();
    v15 = *(v1 + 56);
    v16 = sub_1C441189C();
    sub_1C45D7F78(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = sub_1C43FEC50(v5);
    v23(v22);
    sub_1C4404C34();
    v24 = sub_1C44109E8();
    v25(v24);
    v15 = v32;
    if (v32 == 255)
    {
      goto LABEL_8;
    }

    sub_1C44605FC();
  }

  if (v15 != 19)
  {
    v26 = sub_1C441189C();
    sub_1C45A23B4(v26, v27, v28, v29, v30, v31);
  }

LABEL_8:
  sub_1C445AB74();
  sub_1C4422220();
}

void sub_1C46176E0(uint64_t a1@<X8>)
{
  sub_1C4617554();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_1C4617768()
{
  sub_1C442F0C4();
  v2 = sub_1C4441424();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44144F4();
  v8 = *MEMORY[0x1E69A93E8];
  if (v0)
  {
    v9 = sub_1C43FEC50(v5);
    v10(v9);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v11 = sub_1C44109E8();
    v12(v11);
    if (!v1)
    {
      goto LABEL_8;
    }

    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    sub_1C445C110();
    v15 = *(v1 + 56);
    v16 = sub_1C441189C();
    sub_1C45D7F78(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = sub_1C43FEC50(v5);
    v23(v22);
    sub_1C4404C34();
    v24 = sub_1C44109E8();
    v25(v24);
    v15 = v32;
    if (v32 == 255)
    {
      goto LABEL_8;
    }

    sub_1C44605FC();
  }

  if (v15 != 20)
  {
    v26 = sub_1C441189C();
    sub_1C45A23B4(v26, v27, v28, v29, v30, v31);
  }

LABEL_8:
  sub_1C445AB74();
  sub_1C4422220();
}

void sub_1C46178FC(uint64_t a1@<X8>)
{
  sub_1C4617768();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

void sub_1C4617984()
{
  sub_1C442F0C4();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C4EFDAB8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v12 = *MEMORY[0x1E69A9458];
  if (v3)
  {
    (*(v9 + 104))(v1, v12, v6);

    sub_1C466B77C();
    v14 = v13;

    v15 = sub_1C442F104();
    v16(v15);
    if (!v14)
    {
      goto LABEL_11;
    }

    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v20 = *(v14 + 32);
    v19 = *(v14 + 40);
    v21 = *(v14 + 48);
    v22 = *(v14 + 56);
    v23 = sub_1C44058A4();
    sub_1C45D7F78(v23, v24, v25, v26, v27, v22);
  }

  else
  {
    (*(v9 + 104))(v1, v12, v6);
    sub_1C45D72D0(v1, (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource), v41);
    v28 = sub_1C442F104();
    v29(v28);
    v22 = v42;
    if (v42 == 255)
    {
      goto LABEL_11;
    }

    v17 = v41[1];
    v20 = v41[2];
  }

  if (v22 != 14)
  {
LABEL_10:
    v30 = sub_1C44058A4();
    sub_1C45A23B4(v30, v31, v32, v33, v34, v22);
    goto LABEL_11;
  }

  if (v17)
  {
    if ((v20 & 0x100000000) != 0)
    {
      sub_1C43FE5F8();
      sub_1C4EF9CE8();
      v36 = sub_1C44058A4();
      sub_1C45A23B4(v36, v37, v38, v39, v40, 14);
      goto LABEL_12;
    }

    LOBYTE(v22) = 14;
    goto LABEL_10;
  }

LABEL_11:
  v35 = sub_1C4EF9D38();
  sub_1C440BAA8(v5, 1, 1, v35);
LABEL_12:
  sub_1C4422220();
}

void sub_1C4617C00()
{
  sub_1C442F0C4();
  v2 = sub_1C4441424();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  sub_1C44144F4();
  v8 = *MEMORY[0x1E69A9470];
  if (v0)
  {
    v9 = sub_1C43FEC50(v5);
    v10(v9);

    sub_1C4423AA4();
    sub_1C44C11E4();
    v11 = sub_1C44109E8();
    v12(v11);
    if (!v1)
    {
      goto LABEL_9;
    }

    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    sub_1C445C110();
    v15 = *(v1 + 56);
    v16 = sub_1C44086E0();
    sub_1C45D7F78(v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v22 = sub_1C43FEC50(v5);
    v23(v22);
    sub_1C4404C34();
    v24 = sub_1C44109E8();
    v25(v24);
    v15 = v33;
    if (v33 == 255)
    {
      goto LABEL_9;
    }

    LOBYTE(v5) = v32;
  }

  if (v15 != 9 || (v5 & 1) == 0)
  {
    v26 = sub_1C44086E0();
    sub_1C45A23B4(v26, v27, v28, v29, v30, v31);
  }

LABEL_9:
  sub_1C43FBC98();
  sub_1C4422220();
}

void sub_1C4617DB8(void *a1@<X8>)
{
  sub_1C4617C00();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C4617E2C(uint64_t *a1, char a2)
{
  if (*(a1 + 40) != 4)
  {
    return 0;
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);
  if ((a2 & 1) != 0 && (*(a1 + 20) & 1) == 0)
  {
    return 0;
  }

  v6 = sub_1C463C1B4(*(a1 + 4));
  MEMORY[0x1C6940010](58, 0xE100000000000000);
  MEMORY[0x1C6940010](v2, v3);
  return v6;
}

void sub_1C4617EC4()
{
  sub_1C43FBD3C();
  v2 = v1;
  sub_1C442A8A4();
  v3 = sub_1C4EFDAB8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = *MEMORY[0x1E69A9438];
  if (v2)
  {
    (*(v6 + 104))(v11, v12, v3);

    sub_1C466B77C();
    v14 = v13;

    v15 = *(v6 + 8);
    v16 = sub_1C43FC034();
    v17(v16);
    if (v14)
    {
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);
      v20 = *(v14 + 32);
      v21 = *(v14 + 40);
      v22 = *(v14 + 48);
      v23 = *(v14 + 56);
      v24 = sub_1C4401D1C();
      sub_1C45D7F78(v24, v25, v26, v27, v28, v29);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = -1;
    }
  }

  else
  {
    (*(v6 + 104))(v11, v12, v3);
    sub_1C45D72D0(v11, (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_eventSource), v39);
    v18 = v39[0];
    v19 = v39[1];
    v20 = v39[2];
    v21 = v39[3];
    v22 = v39[4];
    v23 = v40;
    v30 = *(v6 + 8);
    v31 = sub_1C43FC034();
    v32(v31);
  }

  v41[0] = v18;
  v41[1] = v19;
  v41[2] = v20;
  v41[3] = v21;
  v41[4] = v22;
  v42 = v23;
  sub_1C4617E2C(v41, 1);
  v33 = sub_1C4401D1C();
  sub_1C45D8070(v33, v34, v35, v36, v37, v38);
  sub_1C43FE9F0();
}

uint64_t sub_1C46180A0(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for BehaviorHistogramKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C461823C()
{
  result = qword_1EC0B9DD8;
  if (!qword_1EC0B9DD8)
  {
    sub_1C4572308(&qword_1EC0B9DE0, qword_1C4F12900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DD8);
  }

  return result;
}

unint64_t sub_1C46182A4()
{
  result = qword_1EC0B9DE8;
  if (!qword_1EC0B9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9DE8);
  }

  return result;
}

uint64_t sub_1C4618300@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

void sub_1C461836C(void *a1@<X8>)
{
  sub_1C4617EC4();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C46183D8@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C4412D20();
  return sub_1C461B8B4(v2 + v4, a2);
}

unint64_t sub_1C461844C()
{
  result = qword_1EDDDFF78[0];
  if (!qword_1EDDDFF78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDFF78);
  }

  return result;
}

void sub_1C46184BC()
{
  sub_1C4403FC0();
  v2 = sub_1C4EFDAB8();
  sub_1C43FBD18(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1C46127B4(v0, v4);
}

uint64_t sub_1C4618524()
{
  sub_1C4403FC0();
  v2 = sub_1C4EF9CD8();
  sub_1C43FCF7C(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1C4EFDAB8();
  sub_1C43FBD18(v9);
  v11 = *(v1 + v6);
  v12 = *(v1 + 16);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = v1 + ((*(v10 + 80) + v8 + 8) & ~*(v10 + 80));

  return sub_1C4612AAC(v0, v12, v1 + v4, v11, v13);
}

uint64_t sub_1C461861C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C4618664(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      sub_1C44166F4(v8);
    }

    if (v4 != a3)
    {
      type metadata accessor for TextMessageData(0);
      sub_1C4456960();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C461871C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1C497EB30((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(sub_1C456902C(&qword_1EC0B89E0, &qword_1C4F0DE00) - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

size_t sub_1C4618808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C497ED48(*(a1 + 16), 0);
  v4 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  sub_1C43FBD18(v4);
  sub_1C4619D54(&v9, v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v1, a1);
  v7 = v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C449BB0C();
  if (v7 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1C4618984(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = a2(*(a1 + 16), 0);
  v9 = a3(&v12, v8 + 32, v4, a1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = sub_1C43FFE24();
  a4(v10);
  if (v9 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

void sub_1C4618A54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      sub_1C44166F4(v8);
    }

    if (v4 != a3)
    {
      sub_1C4461BB8(0, &qword_1EDDFA448, 0x1E698F358);
      sub_1C4456960();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1C4618B1C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1C4F02128();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C49802A8(v2, 0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v1 = sub_1C461AA24(&v5, (v3 + 32), v2, v1, &qword_1EC0B9E18, 0x1E6978A38);
    sub_1C449BB0C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1C4618BE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
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
        sub_1C456902C(&qword_1EC0B9E00, &qword_1C4F12D58);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4618D5C(v7, v8, a1, v4);
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
    return sub_1C4618CE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4618CE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3 + 4);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 4) = v10;
        *(v9 - 1) = v7;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4618D5C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 8 * v9 + 4);
        v11 = *a3 + 8 * v7;
        v12 = 8 * v7;
        v13 = *(v11 + 4);
        v14 = (v11 + 20);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 8 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = *(v24 + 1);
                *v24 = *(v25 - 8);
                *(v25 - 8) = v26;
                *(v25 - 4) = v27;
              }

              ++v22;
              v20 -= 8;
              v12 += 8;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 8 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 8 * v9 + 4);
              v32 = v30;
              v33 = v29;
              do
              {
                if (v31 >= *(v33 - 1))
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 4) = v34;
                *(v33 - 1) = v31;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 8;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = v8[2];
        sub_1C458A358();
        v8 = v80;
      }

      v36 = v8[2];
      v37 = v36 + 1;
      if (v36 >= v8[3] >> 1)
      {
        sub_1C458A358();
        v8 = v81;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_56:
            if (v46)
            {
              goto LABEL_96;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_99;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_104;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v37 < 2)
          {
            goto LABEL_98;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_71:
          if (v61)
          {
            goto LABEL_101;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_103;
          }

          if (v68 < v60)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v40 - 1 >= v37)
          {
            __break(1u);
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
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_1C4619370((*a3 + 8 * *v72), (*a3 + 8 * *v74), (*a3 + 8 * v75), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v75 < v73)
          {
            goto LABEL_91;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_92;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_93;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_85;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_94;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_95;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_97;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_100;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_105;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C4619244(&v87, *a1, a3);
LABEL_89:
}

uint64_t sub_1C4619244(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C4619370((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C4619370(char *a1, char *a2, float *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C4474DD4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v6[1] >= v4[1])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 2;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 2;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C4474DD4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[2 * v9];
LABEL_15:
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v15 = v6 - 2;
      v13 = v5 + 2 == v6;
      v6 -= 2;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_28:
  v16 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[2 * v16])
  {
    memmove(v6, v4, 8 * v16);
  }

  return 1;
}

char *sub_1C461950C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1C4619538(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B87B8, &qword_1C4F12D60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1C4619638()
{
  sub_1C43FBD3C();
  sub_1C44263B0();
  sub_1C4403FC0();
  v4 = type metadata accessor for GDInteractionEnumeration.GDInteractionIterator();
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  sub_1C44256F8();
  sub_1C4EF97F8();
  if (!v3 || !v2)
  {
LABEL_11:
    sub_1C461B9D8(v1, v0);
    sub_1C4495188();
    sub_1C43FE9F0();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      sub_1C4EF97D8();
      if (!v9[3])
      {
        break;
      }

      sub_1C4461BB8(0, &qword_1EDDF0578, off_1E81EC5C8);
      if (sub_1C445BCE4())
      {
        sub_1C442A69C();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    sub_1C4420C3C(v9, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1C461975C()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&qword_1EC0B9D20, &qword_1C4F117D0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C44058BC();
  v14 = sub_1C456902C(&qword_1EC0B9CF8, &unk_1C4F11660);
  sub_1C43FCDF8(v14);
  v24 = v15;
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4405820();
  v19 = *(v3 + 16);
  if (v19)
  {
    v20 = *(v3 + 16);
    v21 = sub_1C4F01728();
    *(v21 + 16) = v19;
    bzero((v21 + 32), 8 * v19);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  if (v7 && v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v23 = v9;
      for (i = 0; i < v5; ++i)
      {
        if (__OFADD__(i, 1))
        {
          goto LABEL_18;
        }

        sub_1C45F6EC8();
        if (sub_1C44157D4(v0, 1, v14) == 1)
        {
          sub_1C4420C3C(v0, &qword_1EC0B9D20, &qword_1C4F117D0);
LABEL_15:
          v9 = v23;
          goto LABEL_16;
        }

        sub_1C44973B8(v0, v1, &qword_1EC0B9CF8, &unk_1C4F11660);
        sub_1C44973B8(v1, v7, &qword_1EC0B9CF8, &unk_1C4F11660);
        if (i + 1 == v5)
        {
          goto LABEL_15;
        }

        v7 += *(v24 + 72);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    *v9 = v3;
    v9[1] = v21;
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C461996C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  if (a2 && a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        result = sub_1C4D295BC();
        if (!result)
        {
          goto LABEL_9;
        }

        *(a2 + 8 * v5++) = result;
        if (v8 == a3)
        {
          v5 = a3;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    *v4 = v3;
    return v5;
  }

  return result;
}

void sub_1C46199EC()
{
  sub_1C43FBD3C();
  sub_1C44263B0();
  v4 = sub_1C4403FC0();
  v5 = type metadata accessor for PhotosMetadataSequence.Iterator(v4);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C44256F8();
  sub_1C4EFFAB8();
  if (!v3 || !v2)
  {
LABEL_11:
    sub_1C461B9D8(v1, v0);
    sub_1C4495188();
    sub_1C43FE9F0();
    return;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      sub_1C4EFFA98();
      if (!v10[3])
      {
        break;
      }

      sub_1C4461BB8(0, &qword_1EDDDB860, 0x1E6978630);
      if (sub_1C445BCE4())
      {
        sub_1C442A69C();
        if (!v9)
        {
          continue;
        }
      }

      goto LABEL_11;
    }

    sub_1C4420C3C(v10, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1C4619B10()
{
  sub_1C44263B0();
  v3 = v2;
  v4 = objc_autoreleasePoolPush();
  sub_1C4415EA8();
  v5 = sub_1C4F01FC8();
  objc_autoreleasePoolPop(v4);

  if (!v1)
  {
    v0 = 0;
    goto LABEL_12;
  }

  if (!v0)
  {
LABEL_12:
    *v3 = v5;
    v3[1] = v0;
    return v0;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = *(v5 + 16);
    for (i = (v5 + 40); ; i += 2)
    {
      if (v8 == v7)
      {
        v0 = v8;
        goto LABEL_12;
      }

      if (v7 >= *(v5 + 16))
      {
        break;
      }

      v10 = *i;
      *v1 = *(i - 1);
      v1[1] = v10;
      if (v0 - 1 == v7)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        goto LABEL_12;
      }

      v1 += 2;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      ++v7;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C4619C24(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = *(*(a4 + 56) + 4 * v12);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + 2 * v12);
      *(a2 + 4) = v13;
      a2 += 8;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C4619D54(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v37 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  v34 = *(v37 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v30 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
    v18 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v18;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = a2;
    v31 = -1 << *(a4 + 32);
    v32 = a1;
    v17 = 0;
    v18 = 0;
    v19 = (63 - v13) >> 6;
    v33 = a3;
    while (1)
    {
      if (v17 >= a3)
      {
        goto LABEL_24;
      }

      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_25;
      }

      if (!v15)
      {
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v15 = 0;
            goto LABEL_19;
          }

          v15 = *(v12 + 8 * v21);
          ++v18;
          if (v15)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v21 = v18;
LABEL_15:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v21 << 6);
      v24 = *(a4 + 48);
      v25 = sub_1C4EF9DD8();
      v26 = *(v25 - 8);
      v27 = v24 + *(v26 + 72) * v23;
      v28 = v36;
      (*(v26 + 16))(v36, v27, v25);
      *(v28 + *(v37 + 48)) = *(*(a4 + 56) + 8 * v23);
      v29 = v35;
      sub_1C44973B8(v28, v35, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      sub_1C44973B8(v29, v16, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      a3 = v33;
      if (v20 == v33)
      {
        break;
      }

      v16 += *(v34 + 72);
      v17 = v20;
      v18 = v21;
    }

    v18 = v21;
LABEL_19:
    v13 = v31;
    a1 = v32;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void *sub_1C4619FFC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C461A084()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1C4403FC0();
  v8 = sub_1C4EFD548();
  v30 = sub_1C43FCDF8(v8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v12 = *(v3 + 56);
  v29 = -1 << *(v3 + 32);
  sub_1C440D0F0();
  v16 = v15 & v14;
  if (!v7)
  {
    v19 = 0;
LABEL_18:
    sub_1C444AC74(v19);
    sub_1C43FE9F0();
    return;
  }

  if (!v5)
  {
    v19 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v27 = v13;
    sub_1C443315C();
    v18 = sub_1C443F534(v17);
    while (v20 < v18)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_22;
      }

      if (!v16)
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v5)
          {
            goto LABEL_18;
          }

          v16 = *(v27 + 8 * v21);
          ++v19;
          if (v16)
          {
            v31 = v20 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v31 = v20 + 1;
      v21 = v19;
LABEL_13:
      sub_1C444092C();
      v22 = *(v3 + 48);
      v23 = sub_1C441830C();
      v24(v23);
      v25 = sub_1C44418B4();
      (v3)(v25);
      v26 = sub_1C43FD024();
      (v3)(v26);
      v18 = v28;
      v20 = v31;
      if (v31 == v28)
      {
        v19 = v21;
        goto LABEL_18;
      }

      v7 += v1;
      v19 = v21;
      v3 = v0;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C461A260(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C461A3C0()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_1C4403FC0();
  v8 = sub_1C4EFF318();
  v30 = sub_1C43FCDF8(v8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v12 = *(v3 + 64);
  v29 = -1 << *(v3 + 32);
  sub_1C440D0F0();
  v16 = v15 & v14;
  if (!v7)
  {
    v19 = 0;
LABEL_18:
    sub_1C444AC74(v19);
    sub_1C43FE9F0();
    return;
  }

  if (!v5)
  {
    v19 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v27 = v13;
    sub_1C443315C();
    v18 = sub_1C443F534(v17);
    while (v20 < v18)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_22;
      }

      if (!v16)
      {
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v5)
          {
            goto LABEL_18;
          }

          v16 = *(v27 + 8 * v21);
          ++v19;
          if (v16)
          {
            v31 = v20 + 1;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v31 = v20 + 1;
      v21 = v19;
LABEL_13:
      sub_1C444092C();
      v22 = *(v3 + 56);
      v23 = sub_1C441830C();
      v24(v23);
      v25 = sub_1C44418B4();
      (v3)(v25);
      v26 = sub_1C43FD024();
      (v3)(v26);
      v18 = v28;
      v20 = v31;
      if (v31 == v28)
      {
        v19 = v21;
        goto LABEL_18;
      }

      v7 += v1;
      v19 = v21;
      v3 = v0;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C461A59C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = *(a4 + 48) + 24 * (__clz(__rbit64(v9)) | (v15 << 6));
      v17 = *(v16 + 16);
      v9 &= v9 - 1;
      *v11 = *v16;
      *(v11 + 16) = v17;
      if (v14 == v10)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 24;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C461A71C()
{
  sub_1C44158A0();
  v2 = v0 + 64;
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  sub_1C440F35C();
  v11 = v10 & v9;
  if (!v5)
  {
    sub_1C4414154();
LABEL_18:
    *v4 = v7;
    v4[1] = v2;
    v4[2] = ~v8;
    v4[3] = v14;
    v4[4] = v11;
    sub_1C4410198();
    return;
  }

  v12 = v6;
  if (!v6)
  {
    v14 = 0;
    goto LABEL_18;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v13 = v5;
    v28 = v8;
    v29 = v4;
    sub_1C443315C();
    v18 = (v16 - v17) >> 6;
    while (1)
    {
      if (v15 >= v12)
      {
        goto LABEL_21;
      }

      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_22;
      }

      if (!v11)
      {
        while (1)
        {
          v20 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v11 = 0;
            goto LABEL_16;
          }

          v11 = *(v2 + 8 * v20);
          ++v14;
          if (v11)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v20 = v14;
LABEL_12:
      v21 = v7;
      v22 = (*(v7 + 56) + 48 * (__clz(__rbit64(v11)) | (v20 << 6)));
      v23 = v22[1];
      v11 &= v11 - 1;
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[4];
      v27 = v22[5];
      *v13 = *v22;
      v13[1] = v23;
      v13[2] = v24;
      v13[3] = v25;
      v13[4] = v26;
      v13[5] = v27;
      if (v19 == v12)
      {
        break;
      }

      v13 += 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = v19;
      v14 = v20;
      v7 = v21;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = v20;
    v7 = v21;
LABEL_16:
    v8 = v28;
    v4 = v29;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C461A8C4()
{
  sub_1C44BBDA4();
  v3 = *(v1 + 56);
  v2 = v1 + 56;
  v4 = -1 << *(v2 - 24);
  sub_1C440D0F0();
  v9 = v8 & v7;
  if (!v5)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C441EA9C(v26);
    return;
  }

  v10 = v6;
  if (!v6)
  {
    v26 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = v5;
    sub_1C443315C();
    v15 = (v14 - v4) >> 6;
    while (v13 < v10)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        while (1)
        {
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v17 >= v15)
          {
            sub_1C446BC0C();
            goto LABEL_17;
          }

          v9 = *(v2 + 8 * v17);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v17 = v12;
LABEL_12:
      sub_1C43FEA58();
      v19 = *(v0 + 48) + 56 * (v18 | (v17 << 6));
      v21 = *(v19 + 16);
      v20 = *(v19 + 32);
      v22 = *v19;
      v29 = *(v19 + 48);
      v28[1] = v21;
      v28[2] = v20;
      v28[0] = v22;
      v23 = *v19;
      v24 = *(v19 + 16);
      v25 = *(v19 + 32);
      *(v11 + 48) = *(v19 + 48);
      *(v11 + 16) = v24;
      *(v11 + 32) = v25;
      *v11 = v23;
      if (v16 == v10)
      {
        sub_1C461B90C(v28, v27);
        v26 = v17;
        goto LABEL_17;
      }

      v11 += 56;
      sub_1C461B90C(v28, v27);
      v13 = v16;
      v12 = v17;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1C461AA24(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1C4F02118();
    sub_1C44158BC();
    sub_1C442A36C();
    sub_1C4461BB8(v11, v12, v13);
    sub_1C442A36C();
    sub_1C461B968(v14, v15, v16);
    result = sub_1C4F01B08();
    v8 = v35;
    v17 = v36;
    v18 = v37;
    v19 = v38;
    v20 = v39;
  }

  else
  {
    v19 = 0;
    v21 = -1 << *(a4 + 32);
    v17 = a4 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(a4 + 56);
  }

  v24 = a3;
  if (!a2)
  {
    v25 = 0;
LABEL_28:
    *v10 = v8;
    v10[1] = v17;
    v10[2] = v18;
    v10[3] = v19;
    v10[4] = v20;
    return v25;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a5;
    v32 = a6;
    v25 = 0;
    v30 = v18;
    v26 = (v18 + 64) >> 6;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v8 < 0)
      {
        if (!sub_1C4F02148())
        {
          goto LABEL_26;
        }

        sub_1C4461BB8(0, v31, v32);
        swift_dynamicCast();
        result = v34;
        v24 = a3;
        if (!v34)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v20)
        {
          while (1)
          {
            v28 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v28 >= v26)
            {
              v20 = 0;
              goto LABEL_26;
            }

            v20 = *(v17 + 8 * v28);
            ++v19;
            if (v20)
            {
              v19 = v28;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        sub_1C43FE644();
        result = *(*(v8 + 48) + ((v19 << 9) | (8 * v29)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v25;
      if (v27 == v24)
      {
        v25 = v24;
LABEL_26:
        v18 = v30;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C461AD14()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C4403FC0();
  v10 = v9(v8);
  v11 = sub_1C43FCF7C(v10);
  v39 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v38 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C441D15C();
  v40 = v3;
  v18 = *(v3 + 56);
  v17 = v3 + 56;
  v19 = *(v17 - 24);
  sub_1C440F35C();
  v23 = v22 & v21;
  if (!v7)
  {
    sub_1C4414154();
LABEL_18:
    *v0 = v40;
    v0[1] = v17;
    v0[2] = ~v20;
    v0[3] = v35;
    v0[4] = v23;
    sub_1C43FE9F0();
    return;
  }

  if (!v5)
  {
    v35 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v36 = v20;
    v37 = v0;
    sub_1C443315C();
    v28 = (v26 - v27) >> 6;
    while (1)
    {
      if (v25 >= v5)
      {
        goto LABEL_21;
      }

      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_22;
      }

      if (!v23)
      {
        while (1)
        {
          v30 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v30 >= v28)
          {
            sub_1C446BC0C();
            goto LABEL_16;
          }

          v23 = *(v17 + 8 * v30);
          ++v24;
          if (v23)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v30 = v24;
LABEL_12:
      sub_1C43FEA58();
      v32 = *(v39 + 72);
      sub_1C461B8B4(*(v40 + 48) + v32 * (v31 | (v30 << 6)), v38);
      v33 = sub_1C43FD258();
      sub_1C461B9D8(v33, v34);
      sub_1C461B9D8(v1, v7);
      if (v29 == v5)
      {
        break;
      }

      v7 += v32;
      v25 = v29;
      v24 = v30;
    }

    v35 = v30;
LABEL_16:
    v20 = v36;
    v0 = v37;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C461AEE0()
{
  sub_1C43FBD3C();
  sub_1C44BBDA4();
  v2 = *(v0 + 64);
  v1 = v0 + 64;
  v3 = -1 << *(v1 - 32);
  sub_1C440D0F0();
  v8 = v7 & v6;
  if (!v4)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C441EA9C(v18);
    sub_1C43FE9F0();
    return;
  }

  v9 = v5;
  if (!v5)
  {
    v18 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = v4;
    sub_1C443315C();
    v14 = (v13 - v3) >> 6;
    while (v12 < v9)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            sub_1C446BC0C();
            goto LABEL_17;
          }

          v8 = *(v1 + 8 * v16);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      sub_1C4415870();
      if (v17)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v18 = v16;
        goto LABEL_17;
      }

      v10 += 16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C461B168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_1C4EFDAB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = type metadata accessor for DecayingHistogramState();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v25[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v25[4] = &off_1F43E2510;
  v25[0] = a3;
  sub_1C461B8B4(a1, v18);
  v19 = sub_1C4F00F28();
  (*(v11 + 16))(v14, a2, v10);
  sub_1C442E860(v25, v24);
  sub_1C442E860(a4, v23);
  v20 = (*(a5 + 200))(v18, v19, v14, v24, v23, sub_1C461C054, 0);
  sub_1C440962C(a4);
  (*(v11 + 8))(a2, v10);
  sub_1C461B820();
  sub_1C440962C(v25);
  return v20;
}

uint64_t sub_1C461B3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_1C4EFDAB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = type metadata accessor for DecayingHistogramState();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v24[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v24[4] = &off_1F43E2510;
  v24[0] = a3;
  sub_1C461B8B4(a1, v18);
  (*(v11 + 16))(v14, a2, v10);
  sub_1C442E860(v24, v23);
  sub_1C442E860(a4, v22);
  v19 = (*(a5 + 168))(v18, v14, v23, v22, sub_1C461C054, 0);
  sub_1C440962C(a4);
  (*(v11 + 8))(a2, v10);
  sub_1C461B820();
  sub_1C440962C(v24);
  return v19;
}

void sub_1C461B5AC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v32 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v36[3] = v11;
  v36[4] = &off_1F43E2510;
  v36[0] = v6;
  v12 = v1(0);
  sub_1C43FD23C(v12);
  v13 = swift_allocObject();
  sub_1C4418280(v36, v11);
  sub_1C43FCE64();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v15 + 16);
  v20(v19);
  v21 = *v19;
  v35[3] = v11;
  v35[4] = &off_1F43E2510;
  v35[0] = v21;
  v22 = sub_1C4418280(v35, v11);
  MEMORY[0x1EEE9AC00](v22);
  v20(v19);
  v23 = *v19;
  v24 = (v13 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource);
  v24[3] = v11;
  v24[4] = &off_1F43E2510;
  *v24 = v23;
  sub_1C44191A0();
  sub_1C461B9D8(v10, v13 + v25);
  v26 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType;
  v27 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v27);
  (*(v28 + 32))(v13 + v26, v8);
  sub_1C443FA18(v32, v13 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource);
  v29 = (v13 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
  v30 = v34;
  *v29 = v33;
  v29[1] = v30;
  sub_1C440962C(v35);
  sub_1C440962C(v36);
  sub_1C4495188();
  sub_1C43FE9F0();
}

unint64_t sub_1C461B7AC()
{
  result = qword_1EC0B9E08;
  if (!qword_1EC0B9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9E08);
  }

  return result;
}

uint64_t sub_1C461B820()
{
  v1 = sub_1C4403FC0();
  v3 = v2(v1);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C461B874(_WORD *a1, double a2, double a3)
{
  LOWORD(a3) = *a1;
  v4 = *(v3 + 24) * *&a3;
  v5 = *(v3 + 16);
  return sub_1C4EF9BE8();
}

uint64_t sub_1C461B8B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 16);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C461B968(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4461BB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C461B9D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v5 = v4(v3);
  sub_1C43FBCE0(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

void sub_1C461BA58()
{
  type metadata accessor for DecayingHistogramState();
  if (v0 <= 0x3F)
  {
    sub_1C461BADC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C461BADC()
{
  if (!qword_1EDDDBD78)
  {
    v0 = sub_1C4F00FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBD78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for BehaviorHistogramKeyProvidingError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C461BBFC()
{
  result = qword_1EC0B9E28;
  if (!qword_1EC0B9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9E28);
  }

  return result;
}

unint64_t sub_1C461BC54()
{
  result = qword_1EC0B9E30;
  if (!qword_1EC0B9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9E30);
  }

  return result;
}

unint64_t sub_1C461BCA8()
{
  result = qword_1EDDF1968;
  if (!qword_1EDDF1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1968);
  }

  return result;
}

uint64_t sub_1C461BCFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C44263B0();
    sub_1C4572308(&qword_1EC0B9E40, &qword_1C4F12F90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1C461BD68(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C461BE48()
{
  result = qword_1EC0B9E50;
  if (!qword_1EC0B9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9E50);
  }

  return result;
}

unint64_t sub_1C461BEA0()
{
  result = qword_1EDDF1958;
  if (!qword_1EDDF1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1958);
  }

  return result;
}

unint64_t sub_1C461BEF8()
{
  result = qword_1EDDF1960;
  if (!qword_1EDDF1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1960);
  }

  return result;
}

uint64_t sub_1C461C1C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235938 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C461C290(char a1)
{
  if (a1)
  {
    return 0x636E657571657266;
  }

  else
  {
    return 7235938;
  }
}

uint64_t sub_1C461C2F4(uint64_t a1, uint64_t a2)
{
  sub_1C4F02AF8();
  v4 = *(a2 + 16);
  sub_1C455B550(v6, *v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C461C34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1C461C1C0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1C461C378(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1C4462378();
}

uint64_t sub_1C461C3A0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1C4593680();
  *a2 = result;
  return result;
}

uint64_t sub_1C461C3CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C461C420(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t HistogramBinFrequencyPair<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[2] = a4;
  v19[0] = a2;
  v5 = *(a2 + 16);
  type metadata accessor for HistogramBinFrequencyPair.CodingKeys();
  sub_1C442C4FC();
  swift_getWitnessTable();
  v6 = sub_1C4F02808();
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v15 = v19[1];
  sub_1C4F02BF8();
  v21 = 0;
  v16 = v19[3];
  sub_1C4F027E8();
  if (!v16)
  {
    v17 = *(v15 + *(v19[0] + 28));
    v20 = 1;
    sub_1C4F027B8();
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t HistogramBinFrequencyPair<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v33 = a4;
  v35 = *(a2 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HistogramBinFrequencyPair.CodingKeys();
  sub_1C442C4FC();
  swift_getWitnessTable();
  v36 = sub_1C4F02708();
  sub_1C43FCDF8(v36);
  v34 = v8;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v12 = type metadata accessor for HistogramBinFrequencyPair();
  sub_1C43FCDF8(v12);
  v32 = v13;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v20 = v39;
  sub_1C4F02BC8();
  if (v20)
  {
    return sub_1C440962C(a1);
  }

  v39 = v12;
  v21 = v35;
  v41 = 0;
  sub_1C4F026C8();
  v22 = *(v21 + 32);
  v37 = v18;
  v22(v18, v38, a2);
  v40 = 1;
  sub_1C4F02698();
  v24 = v23;
  v25 = sub_1C4416DCC();
  v26(v25);
  v27 = v39;
  v28 = v37;
  *&v37[*(v39 + 28)] = v24;
  v29 = v32;
  (*(v32 + 16))(v33, v28, v27);
  sub_1C440962C(a1);
  return (*(v29 + 8))(v28, v27);
}

BOOL static HistogramBinFrequencyPair<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C4F010B8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HistogramBinFrequencyPair();
  return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
}

BOOL sub_1C461CA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static HistogramBinFrequencyPair<A>.== infix(_:_:)(a1, a2);
}

uint64_t sub_1C461CA14(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C461CA8C(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C44157D4(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C44157D4(result, v5, v4);
}

void sub_1C461CB90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C461CD30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C461CD70(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

_BYTE *sub_1C461CDDC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void *sub_1C461CEFC(char a1, void *a2)
{
  v4 = v2;
  switch(a1)
  {
    case 1:
      v6 = type metadata accessor for DayOfWeekBehaviorHistogram(0);
      sub_1C44191C4();
      sub_1C461DAF0();
      if (!v3)
      {
        goto LABEL_13;
      }

      return v4;
    case 2:
    case 3:
    case 4:
      v9 = sub_1C44191C4();
      sub_1C461D580(v9, v10, v11, v12);
      if (!v3)
      {
        goto LABEL_22;
      }

      return v4;
    case 5:
      v19 = sub_1C44191C4();
      sub_1C461D724(v19);
      if (!v3)
      {
        goto LABEL_26;
      }

      return v4;
    case 6:
    case 11:
    case 12:
      sub_1C44191C4();
      sub_1C461DBA0();
      if (!v3)
      {
        goto LABEL_26;
      }

      return v4;
    case 7:
      v13 = sub_1C44191C4();
      sub_1C461D808(v13);
      goto LABEL_24;
    case 8:
      v33 = sub_1C44191C4();
      sub_1C461D900(v33);
      goto LABEL_24;
    case 9:
      v7 = sub_1C44191C4();
      sub_1C461D9F8(v7);
LABEL_24:
      if (v3)
      {
        return v4;
      }

LABEL_26:
      v34 = sub_1C4402120();
      sub_1C461E144(v34, v35, v36, v37);
      goto LABEL_27;
    case 10:
      sub_1C44191C4();
      sub_1C461DAF0();
      if (v3)
      {
        return v4;
      }

LABEL_22:
      v27 = sub_1C4402120();
      sub_1C461DED8(v27, v28, v29, v30, v31, v32);
      goto LABEL_27;
    case 13:
      v8 = type metadata accessor for MotionStateBehaviorHistogram(0);
      v20 = v2[3];
      v21 = v2[4];
      sub_1C4409678(v2, v20);
      v22 = (*(v21 + 8))(v8, a2, v8, &off_1F43E3748, v20, v21);
      if (v3)
      {
        return v4;
      }

      sub_1C461E924(a2, v22, &unk_1F43D2BA0);

LABEL_18:
      v23 = sub_1C4402120();
      sub_1C461E3C4(v23, v24, v8, v25, v26);
      goto LABEL_27;
    case 14:
      v6 = type metadata accessor for PartOfDayBehaviorHistogram(0);
      sub_1C44191C4();
      sub_1C461DAF0();
      if (!v3)
      {
        goto LABEL_13;
      }

      return v4;
    case 15:
      v8 = type metadata accessor for PartOfWeekBehaviorHistogram(0);
      sub_1C44191C4();
      sub_1C461DAF0();
      if (!v3)
      {
        goto LABEL_18;
      }

      return v4;
    default:
      v6 = type metadata accessor for TimeOfDayBehaviorHistogram(0);
      sub_1C44191C4();
      sub_1C461DAF0();
      if (v3)
      {
        return v4;
      }

LABEL_13:
      v14 = sub_1C4402120();
      sub_1C461DC74(v14, v15, v6, v16, v17);
LABEL_27:
      v4 = v18;

      return v4;
  }
}

void (*sub_1C461D580(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t *, __int128 *, uint64_t, uint64_t)))(uint64_t *, __int128 *, uint64_t, uint64_t)
{
  v8 = v4;
  v10 = a2(0);
  v11 = v8[3];
  v12 = v8[4];
  sub_1C4409678(v8, v11);
  v13 = (*(v12 + 8))(v10, a1, v10, a3, v11, v12);
  if (!v5)
  {
    v14 = v13;
    sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
    v15 = *(sub_1C4EF9CD8() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C4F0D130;
    sub_1C4EF9CC8();
    a4 = sub_1C461F690(a1, v14, v18, a4);

    swift_setDeallocating();
    sub_1C49E1584();
  }

  return a4;
}

uint64_t sub_1C461D724(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for PreviousBehaviorHistogram(0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_1C4409678(v3, v6);
  v9 = v5;
  v10 = v5;
  v11 = v8;
  v12 = (*(v7 + 8))(v9, a1, v10, &off_1F43E3808, v6, v7);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_1C4616A94();
    v11 = sub_1C461F25C(a1, v13, v14);
  }

  return v11;
}

uint64_t sub_1C461D808(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SpecificGeoHashBehaviorHistogram(0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_1C4409678(v3, v6);
  v9 = v5;
  v10 = v5;
  v11 = v8;
  v12 = (*(v7 + 8))(v9, a1, v10, &off_1F43E3548, v6, v7);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_1C47F78F4();
    v11 = sub_1C461EF80(a1, v13, v14, sub_1C460632C);
  }

  return v11;
}

uint64_t sub_1C461D900(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CoarseGeoHashBehaviorHistogram(0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_1C4409678(v3, v6);
  v9 = v5;
  v10 = v5;
  v11 = v8;
  v12 = (*(v7 + 8))(v9, a1, v10, &off_1F43E3448, v6, v7);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_1C47F78F4();
    v11 = sub_1C461EF80(a1, v13, v14, sub_1C46061D8);
  }

  return v11;
}

uint64_t sub_1C461D9F8(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for LargeGeoHashBehaviorHistogram(0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_1C4409678(v3, v6);
  v9 = v5;
  v10 = v5;
  v11 = v8;
  v12 = (*(v7 + 8))(v9, a1, v10, &off_1F43E3348, v6, v7);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_1C47F78F4();
    v11 = sub_1C461EF80(a1, v13, v14, sub_1C46061D8);
  }

  return v11;
}

uint64_t sub_1C461DAF0()
{
  v4 = sub_1C440A6D0();
  v5(v4);
  v6 = v2[4];
  sub_1C4409678(v2, v2[3]);
  v7 = sub_1C441F530();
  v8(v7);
  if (!v1)
  {
    v3();
    v9 = sub_1C44118B8();
    v0 = sub_1C461F690(v9, v10, v11, v12);
  }

  return v0;
}

uint64_t sub_1C461DBA0()
{
  v4 = sub_1C440A6D0();
  v5(v4);
  v6 = v2[4];
  sub_1C4409678(v2, v2[3]);
  v7 = sub_1C441F530();
  v8(v7);
  if (!v1)
  {
    v3();
    v9 = sub_1C44118B8();
    v0 = sub_1C461EC68(v9, v10, v11, v12);
  }

  return v0;
}

void sub_1C461DC74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = a1;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C459D4A8();
    v6 = v44;
    v9 = sub_1C4703354(v7);
    v10 = v7 + 64;
    v36 = v8;
    v37 = v5;
    v38 = v7 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v7 + 32))
    {
      v11 = v9 >> 6;
      if ((*(v10 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v7 + 36) != v8)
      {
        goto LABEL_23;
      }

      v42 = v8;
      v12 = *(v7 + 56);
      v13 = sub_1C442FBE8((*(v7 + 48) + 48 * v9));
      v45 = v15;
      v46[0] = v14;
      *(v46 + 9) = v13;
      v16 = v7;
      v18 = *(v17 + 8 * v9);
      sub_1C45A2358(&v45, v43);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C46226AC(&v45, v18, a3, a4, a5);
      v21 = v20;
      v23 = v22;
      sub_1C45EC75C(&v45);

      v44 = v6;
      v24 = *(v6 + 16);
      if (v24 >= *(v6 + 24) >> 1)
      {
        sub_1C459D4A8();
        v6 = v44;
      }

      *(v6 + 16) = v24 + 1;
      v25 = (v6 + 24 * v24);
      v25[4] = v19;
      v25[5] = v21;
      v25[6] = v23;
      v26 = 1 << *(v16 + 32);
      if (v9 >= v26)
      {
        goto LABEL_24;
      }

      v7 = v16;
      v10 = v38;
      if ((*(v38 + 8 * v11) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v7 + 36) != v42)
      {
        goto LABEL_26;
      }

      sub_1C43FFE48();
      if (v27)
      {
        sub_1C441C80C();
        v30 = v11 + 1;
        while (v30 < v29)
        {
          sub_1C4402CDC();
          if (v23)
          {
            sub_1C4434E8C();
            sub_1C440951C(v9, v31, v32);
            sub_1C43FD264();
            goto LABEL_19;
          }
        }

        sub_1C4434E8C();
        sub_1C440951C(v9, v33, v34);
      }

      else
      {
        sub_1C442AB14();
        v26 = v28 | v9 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_19:
      sub_1C442DD8C();
      v9 = v26;
      v8 = v36;
      if (v35 == v37)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C4BA01F4(v6);
  }
}

void sub_1C461DED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = a1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1C459D4A8();
    v7 = v47;
    v11 = a3(v9);
    v12 = v9 + 64;
    v39 = v10;
    v40 = v6;
    v41 = v9 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v9 + 32))
    {
      v13 = v11 >> 6;
      if ((*(v12 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v9 + 36) != v10)
      {
        goto LABEL_23;
      }

      v45 = v10;
      v14 = *(v9 + 56);
      v15 = sub_1C442FBE8((*(v9 + 48) + 48 * v11));
      v48 = v17;
      v49[0] = v16;
      *(v49 + 9) = v15;
      v19 = *(v18 + 8 * v11);
      sub_1C45A2358(&v48, v46);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4622318(&v48, v19, a4, a5, a6);
      v22 = v21;
      v24 = v23;
      sub_1C45EC75C(&v48);

      v47 = v7;
      v25 = v9;
      v26 = *(v7 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v7 + 24) >> 1)
      {
        sub_1C459D4A8();
        v7 = v47;
      }

      *(v7 + 16) = v27;
      v28 = (v7 + 24 * v26);
      v28[4] = v20;
      v28[5] = v22;
      v28[6] = v24;
      v29 = 1 << *(v25 + 32);
      if (v11 >= v29)
      {
        goto LABEL_24;
      }

      v9 = v25;
      v12 = v41;
      if ((*(v41 + 8 * v13) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v9 + 36) != v45)
      {
        goto LABEL_26;
      }

      sub_1C43FFE48();
      if (v30)
      {
        sub_1C441C80C();
        v33 = v13 + 1;
        while (v33 < v32)
        {
          sub_1C4402CDC();
          if (v27)
          {
            sub_1C4434E8C();
            sub_1C440951C(v11, v34, v35);
            sub_1C43FD264();
            goto LABEL_19;
          }
        }

        sub_1C4434E8C();
        sub_1C440951C(v11, v36, v37);
      }

      else
      {
        sub_1C442AB14();
        v29 = v31 | v11 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_19:
      sub_1C442DD8C();
      v11 = v29;
      v10 = v39;
      if (v38 == v40)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C4BA01F4(v7);
  }
}

void sub_1C461E144(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(__int128 *, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1C459D4A8();
    v5 = v48;
    v9 = a3(v7);
    v10 = v7 + 64;
    v42 = v8;
    v43 = v4;
    v41 = v7 + 72;
    v44 = v7 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v7 + 32))
    {
      v11 = v9 >> 6;
      if ((*(v10 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v7 + 36) != v8)
      {
        goto LABEL_23;
      }

      v46 = v8;
      v12 = *(v7 + 56);
      v13 = sub_1C442FBE8((*(v7 + 48) + 48 * v9));
      v49 = v15;
      v50[0] = v14;
      *(v50 + 9) = v13;
      v17 = *(v16 + 8 * v9);
      sub_1C45A2358(&v49, v47);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = a4(&v49, v17);
      v20 = v19;
      v22 = v21;
      sub_1C45EC75C(&v49);

      v48 = v5;
      v23 = v7;
      v24 = *(v5 + 16);
      if (v24 >= *(v5 + 24) >> 1)
      {
        sub_1C459D4A8();
        v5 = v48;
      }

      *(v5 + 16) = v24 + 1;
      v25 = (v5 + 24 * v24);
      v25[4] = v18;
      v25[5] = v20;
      v25[6] = v22;
      v26 = 1 << *(v23 + 32);
      if (v9 >= v26)
      {
        goto LABEL_24;
      }

      v10 = v44;
      if ((*(v44 + 8 * v11) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      v7 = v23;
      if (*(v23 + 36) != v46)
      {
        goto LABEL_26;
      }

      sub_1C43FFE48();
      if (v27)
      {
        sub_1C441C80C();
        v31 = v11 << 6;
        v32 = v11 + 1;
        v33 = (v41 + 8 * v11);
        v29 = v43;
        while (v32 < v30)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_1C443316C();
            sub_1C440951C(v9, v36, v37);
            v26 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        sub_1C443316C();
        sub_1C440951C(v9, v38, v39);
      }

      else
      {
        sub_1C442AB14();
        v26 = v28 | v9 & 0x7FFFFFFFFFFFFFC0;
        v29 = v43;
      }

LABEL_19:
      sub_1C442DD8C();
      v9 = v26;
      v8 = v42;
      if (v40 == v29)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C4BA01F4(v5);
  }
}

void sub_1C461E3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(__int128 *, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v8 = a1;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C459D4A8();
    v6 = v45;
    v10 = a4(v8);
    v11 = v8 + 64;
    v38 = v9;
    v39 = v5;
    v40 = v8 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v8 + 32))
    {
      v12 = v10 >> 6;
      v13 = 1 << v10;
      if ((*(v11 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v8 + 36) != v9)
      {
        goto LABEL_23;
      }

      v43 = v9;
      v14 = *(v8 + 56);
      v15 = sub_1C442FBE8((*(v8 + 48) + 48 * v10));
      v46 = v17;
      v47[0] = v16;
      *(v47 + 9) = v15;
      v19 = *(v18 + 8 * v10);
      sub_1C45A2358(&v46, v44);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = a5(&v46, v19, a3);
      v22 = v21;
      v24 = v23;
      sub_1C45EC75C(&v46);

      v45 = v6;
      v25 = v8;
      v26 = *(v6 + 16);
      if (v26 >= *(v6 + 24) >> 1)
      {
        sub_1C459D4A8();
        v6 = v45;
      }

      *(v6 + 16) = v26 + 1;
      v27 = (v6 + 24 * v26);
      v27[4] = v20;
      v27[5] = v22;
      v27[6] = v24;
      v28 = 1 << *(v25 + 32);
      if (v10 >= v28)
      {
        goto LABEL_24;
      }

      v8 = v25;
      v11 = v40;
      if ((*(v40 + 8 * v12) & v13) == 0)
      {
        goto LABEL_25;
      }

      if (*(v8 + 36) != v43)
      {
        goto LABEL_26;
      }

      sub_1C43FFE48();
      if (v29)
      {
        sub_1C441C80C();
        v32 = v12 + 1;
        while (v32 < v31)
        {
          sub_1C4402CDC();
          if (v13)
          {
            sub_1C443316C();
            sub_1C440951C(v10, v33, v34);
            sub_1C43FD264();
            goto LABEL_19;
          }
        }

        sub_1C443316C();
        sub_1C440951C(v10, v35, v36);
      }

      else
      {
        sub_1C442AB14();
        v28 = v30 | v10 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_19:
      sub_1C442DD8C();
      v10 = v28;
      v9 = v38;
      if (v37 == v39)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C4BA01F4(v6);
  }
}

uint64_t sub_1C461E674(uint64_t a1, void *a2, id *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v4 = *a3;
  v5 = sub_1C4EF9BF8();
  v6 = [v4 stringFromDate_];

  v7 = sub_1C4F01138();
  return v7;
}

uint64_t sub_1C461E714()
{
  v0 = sub_1C4EF9F88();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_autoreleasePoolPush();
  sub_1C4EF9F58();
  v9 = sub_1C4615E88();
  (*(v3 + 8))(v7, v0);
  if (v9)
  {
    v10 = 0x7961646B656577;
  }

  else
  {
    v10 = 0x646E656B656577;
  }

  objc_autoreleasePoolPop(v8);
  return v10;
}

uint64_t sub_1C461E824(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 - 1;
  result = 0x6E776F6E6B6E55;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      return 0x616E6F6974617453;
    case 2:
    case 4:
    case 5:
    case 6:
      return 0xD000000000000016;
    case 3:
      v4 = 1802264919;
      return v4 | 0x676E6900000000;
    case 7:
      v4 = 1852732754;
      return v4 | 0x676E6900000000;
    default:
      switch(v1)
      {
        case 16:
          v4 = 1818458435;
          return v4 | 0x676E6900000000;
        case 32:
          return 0x69746F6D6F747541;
        case 34:
          return 0xD000000000000014;
        default:
          return 0xD000000000000016;
      }
  }
}

uint64_t sub_1C461E924(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = *sub_1C4409678((v3 + 40), *(v3 + 64));
  v8 = sub_1C45EA9C0(a1);
  if (v4)
  {
    return a1;
  }

  v9 = 0;
  v10 = *(v8 + 16);
  v54 = v8 + 32;
  v47 = a3 + 32;
  a1 = MEMORY[0x1E69E7CC8];
  v46 = a3;
  v53 = v8;
  for (i = v10; ; v10 = i)
  {
    if (v9 == v10)
    {

      return a1;
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    v55 = v9;
    v11 = v54 + 48 * v9;
    v12 = *v11;
    v13 = *(v11 + 16);
    *&v59[9] = *(v11 + 25);
    v58 = v12;
    *v59 = v13;
    v14 = *(a3 + 16);
    if (v14)
    {
      v52 = a1;
      v15 = *(v11 + 40);
      v16 = *(v11 + 32);
      v49 = *(v11 + 16);
      v50 = *v11;
      sub_1C45A2358(&v58, v56);
      v57 = MEMORY[0x1E69E7CC0];
      sub_1C459D528(0, v14, 0);
      v21 = v57;
      v60[1] = v49;
      v60[0] = v50;
      v61 = v16;
      v22 = v47;
      v62 = v15;
      do
      {
        v24 = *v22++;
        v23 = v24;
        LOBYTE(v56[0]) = 1;
        sub_1C4605BC4(v60, v24, 0, 0x100000000, v17, v18, v19, v20, v45, v46, v47, i, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56[0], v56[1], v56[2], v56[3], v56[4]);
        v26 = v25;
        v57 = v21;
        v28 = *(v21 + 16);
        v27 = *(v21 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C459D528((v27 > 1), v28 + 1, 1);
          v21 = v57;
        }

        *(v21 + 16) = v28 + 1;
        v29 = v21 + 16 * v28;
        *(v29 + 32) = v23;
        *(v29 + 40) = v26;
        --v14;
      }

      while (v14);
      a3 = v46;
      a1 = v52;
    }

    else
    {
      sub_1C45A2358(&v58, v56);
      v21 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v56[0] = a1;
    v30 = sub_1C457AF68();
    if (__OFADD__(a1[2], (v31 & 1) == 0))
    {
      goto LABEL_24;
    }

    v32 = v30;
    v33 = v31;
    sub_1C456902C(&qword_1EC0B9F88, &unk_1C4F13350);
    if (sub_1C4F02458())
    {
      v34 = sub_1C457AF68();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_26;
      }

      v32 = v34;
    }

    a1 = v56[0];
    if (v33)
    {
      v36 = *(v56[0] + 56);
      v37 = *(v36 + 8 * v32);
      *(v36 + 8 * v32) = v21;

      sub_1C45EC75C(&v58);
    }

    else
    {
      *(v56[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v38 = (a1[6] + 48 * v32);
      v39 = v58;
      v40 = *v59;
      *(v38 + 25) = *&v59[9];
      *v38 = v39;
      v38[1] = v40;
      *(a1[7] + 8 * v32) = v21;
      v41 = a1[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      a1[2] = v43;
    }

    v9 = v55 + 1;
    v8 = v53;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C461EC68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1C44040FC(a1);
  if (v4)
  {
    return v5;
  }

  v10 = 0;
  v11 = *(v9 + 16);
  v49 = v9 + 32;
  v43 = a3 + 40;
  v5 = MEMORY[0x1E69E7CC8];
  v44 = v11;
  v45 = a3;
  v52 = a2;
  v48 = v9;
  while (1)
  {
    if (v10 == v11)
    {

      return v5;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v50 = v10;
    v51 = v5;
    sub_1C44058C8(v49 + 48 * v10);
    v13 = *(a3 + 16);
    if (v13)
    {
      v14 = *(v12 + 40);
      v15 = *(v12 + 32);
      sub_1C4404C68(v12, v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60.n128_i8[0]);
      sub_1C44086FC();
      sub_1C459D4E8();
      v16 = v59;
      v63 = v46;
      v62 = v47;
      v64 = v15;
      v17 = v43;
      v65 = v14;
      do
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        swift_bridgeObjectRetain_n();
        v20 = sub_1C440F378();
        a4(v20, v19, v18);
        v22 = v21;
        v23 = a4;

        v59 = v16;
        v24 = *(v16 + 16);
        v25 = v16;
        if (v24 >= *(v16 + 24) >> 1)
        {
          sub_1C459D4E8();
          v25 = v59;
        }

        *(v25 + 16) = v24 + 1;
        v26 = (v25 + 24 * v24);
        v26[4] = v19;
        v26[5] = v18;
        v26[6] = v22;
        v17 += 2;
        --v13;
        a4 = v23;
        v16 = v25;
      }

      while (v13);
      v27 = v25;
    }

    else
    {
      sub_1C45A2358(&v60, &v53);
      v27 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v53 = v51;
    v28 = sub_1C457AF68();
    sub_1C441EAB4(v28, v29);
    if (v32)
    {
      goto LABEL_24;
    }

    v33 = v30;
    v34 = v31;
    sub_1C456902C(&qword_1EC0B9F80, &qword_1C4F13348);
    if (sub_1C4F02458())
    {
      v35 = sub_1C457AF68();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v33 = v35;
    }

    v5 = v53;
    if (v34)
    {
      v37 = v53[7];
      v38 = *(v37 + 8 * v33);
      *(v37 + 8 * v33) = v27;

      sub_1C45EC75C(&v60);
    }

    else
    {
      v53[(v33 >> 6) + 8] |= 1 << v33;
      sub_1C43FC040((v5[6] + 48 * v33), v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
      *(v5[7] + 8 * v33) = v27;
      v39 = v5[2];
      v32 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v5[2] = v40;
    }

    v10 = v50 + 1;
    v9 = v48;
    v11 = v44;
    a3 = v45;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C461EF80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void))
{
  v9 = sub_1C44040FC(a1);
  if (v5)
  {
    return v4;
  }

  v56 = a2;
  v10 = a4;
  v11 = 0;
  v12 = *(v9 + 16);
  v55 = v9 + 32;
  v47 = a3 + 32;
  v4 = MEMORY[0x1E69E7CC8];
  v13 = 48;
  v48 = v12;
  v49 = a3;
  for (i = v9; ; v9 = i)
  {
    if (v11 == v12)
    {

      return v4;
    }

    if (v11 >= *(v9 + 16))
    {
      break;
    }

    sub_1C44058C8(v55 + v11 * v13);
    v15 = *(a3 + 16);
    if (v15)
    {
      v46 = v11;
      v16 = *(v14 + 40);
      v17 = *(v14 + 32);
      sub_1C4404C68(v14, v46, v47, v48, v49, v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v4, i, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64.n128_i8[0]);
      v18 = sub_1C44086FC();
      sub_1C459D588(v18, v19, v20);
      v21 = v63;
      v67 = v50;
      v66 = v51;
      v68 = v17;
      v22 = v47;
      v69 = v16;
      do
      {
        v24 = *v22++;
        v23 = v24;
        v25 = sub_1C440F378();
        v10(v25, v24, 0);
        v27 = v26;
        v63 = v21;
        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1C459D588((v28 > 1), v29 + 1, 1);
          v21 = v63;
        }

        *(v21 + 16) = v29 + 1;
        v30 = v21 + 16 * v29;
        *(v30 + 32) = v23;
        *(v30 + 40) = v27;
        --v15;
      }

      while (v15);
      v11 = v45;
      v4 = v53;
    }

    else
    {
      sub_1C45A2358(&v64, &v57);
      v21 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v57 = v4;
    v31 = sub_1C457AF68();
    sub_1C441EAB4(v31, v32);
    if (v35)
    {
      goto LABEL_24;
    }

    v36 = v33;
    v37 = v34;
    sub_1C456902C(&qword_1EC0B9F78, &qword_1C4F13340);
    if (sub_1C4F02458())
    {
      v38 = sub_1C457AF68();
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_26;
      }

      v36 = v38;
    }

    v4 = v57;
    if (v37)
    {
      v40 = v57[7];
      v41 = *(v40 + 8 * v36);
      *(v40 + 8 * v36) = v21;

      sub_1C45EC75C(&v64);
      v13 = 48;
    }

    else
    {
      v57[(v36 >> 6) + 8] |= 1 << v36;
      sub_1C43FC040((v4[6] + 48 * v36), v45, v47, v48, v49, v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, i, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
      *(v4[7] + 8 * v36) = v21;
      v42 = v4[2];
      v35 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v4[2] = v43;
    }

    ++v11;
    v12 = v48;
    a3 = v49;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}