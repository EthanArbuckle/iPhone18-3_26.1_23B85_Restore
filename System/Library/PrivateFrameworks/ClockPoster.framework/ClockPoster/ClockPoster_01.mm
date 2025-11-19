unint64_t sub_1E48CD01C()
{
  result = qword_1ECF7F2B0;
  if (!qword_1ECF7F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F2B0);
  }

  return result;
}

unint64_t sub_1E48CD070()
{
  result = qword_1ECF7F2D0;
  if (!qword_1ECF7F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F2D0);
  }

  return result;
}

unint64_t sub_1E48CD0C4()
{
  result = qword_1ECF7F2E8;
  if (!qword_1ECF7F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F2E8);
  }

  return result;
}

uint64_t sub_1E48CD118(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E48CD160(uint64_t a1)
{
  v2 = type metadata accessor for WorldClockFace(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E48CD1BC()
{
  result = qword_1ECF7F310;
  if (!qword_1ECF7F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F310);
  }

  return result;
}

uint64_t sub_1E48CD210(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E48CD274()
{
  result = qword_1ECF7F318;
  if (!qword_1ECF7F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F318);
  }

  return result;
}

uint64_t sub_1E48CD2C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1E48CD31C()
{
  result = qword_1ECF7F320;
  if (!qword_1ECF7F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F320);
  }

  return result;
}

unint64_t sub_1E48CD370()
{
  result = qword_1ECF7F328;
  if (!qword_1ECF7F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F328);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E48CD408()
{
  result = qword_1ECF7F358;
  if (!qword_1ECF7F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F358);
  }

  return result;
}

id sub_1E48CD4C0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider];
  *v9 = 0x4036000000000000;
  v9[8] = 0;
  v10 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E695B570]) init];
  v11 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmIconLayer;
  *&v4[v11] = sub_1E48CDBF4();
  v12 = OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmTextLayer;
  *&v4[v12] = sub_1E48CDF3C();
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AlarmComplicationCurvedTextView();
  v13 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = [v13 effectiveUserInterfaceLayoutDirection] == 1;
  *(v13 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider + 8) = v14;

  return v13;
}

void sub_1E48CD6A8()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for AlarmComplicationCurvedTextView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmIconLayer];
  v2 = [v1 superlayer];
  if (!v2)
  {
    v3 = [v0 layer];
    [v3 addSublayer_];
    v2 = v3;
  }

  v4 = *&v0[OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmTextLayer];
  v5 = [v4 superlayer];
  if (!v5)
  {
    v6 = [v0 layer];
    [v6 addSublayer_];
    v5 = v6;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.152941176 blue:0.0 alpha:1.0];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0x4069800000000000;
  v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v23 = sub_1E48CE188;
  v24 = v8;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E4923F24;
  v22 = &block_descriptor_1;
  v10 = _Block_copy(&v19);
  v11 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  v12 = [v11 CGColor];

  [v1 setBackgroundColor_];
  v13 = [objc_opt_self() whiteColor];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = 0x4063200000000000;
  v15 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v23 = sub_1E48CE240;
  v24 = v14;
  v19 = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1E4923F24;
  v22 = &block_descriptor_11;
  v16 = _Block_copy(&v19);
  v17 = [v15 initWithDynamicProvider_];
  _Block_release(v16);

  v18 = [v17 CGColor];

  [v4 setFillColor_];
}

void sub_1E48CDA28(const CGPath *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_timeFormatter) timeAndDesignatorText];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E4997EEC();
    v8 = v7;

    MEMORY[0x1E691B7A0](v6, v8);

    if (qword_1ECF7EB08 != -1)
    {
      swift_once();
    }

    sub_1E48C3D14(qword_1ECF81938);
    v9 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v10 = sub_1E4997EAC();

    type metadata accessor for Key(0);
    sub_1E48CE130();
    v11 = sub_1E4997E2C();

    v12 = [v9 initWithString:v10 attributes:v11];

    v13 = *(v2 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmTextLayer);
    v14 = sub_1E48FA7EC(v12, a1, *(v2 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_alarmIconLayer), *(v2 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider + 8), *(v2 + OBJC_IVAR____TtC11ClockPoster31AlarmComplicationCurvedTextView_pathProvider));
    [v13 setPath_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1E48CDBF4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  if (qword_1ECF7EB00 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() configurationWithFont:qword_1ECF81930 scale:1];
  v3 = sub_1E4997EAC();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    *&v5 = COERCE_DOUBLE(sub_1E499845C());
    if ((v6 & 1) == 0)
    {
      v7 = *&v5;
      [v4 size];
      v9 = v8;
      v11 = v10;
      [v1 setBounds_];
      v12 = [v4 CGImage];
      [v1 setContents_];

      [v1 setAnchorPoint_];
      [v1 setPosition_];
      [v1 setContentsGravity_];
      [v0 setBounds_];
      [v0 setMask_];
      [v0 setAnchorPoint_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F380, &qword_1E499B948);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E499B670;
      *(inited + 32) = 0x726F66736E617274;
      *(inited + 40) = 0xE90000000000006DLL;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      sub_1E4949258(inited);
      swift_setDeallocating();
      sub_1E48CE1AC(inited + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F390, &qword_1E499B958);
      v14 = sub_1E4997E2C();

      [v0 setActions_];

      return v0;
    }
  }

  return v0;
}

id sub_1E48CDF3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F380, &qword_1E499B948);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  *(inited + 32) = 0x726F66736E617274;
  *(inited + 40) = 0xE90000000000006DLL;
  v2 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v3 = v0;
  *(inited + 48) = [v2 init];
  sub_1E4949258(inited);
  swift_setDeallocating();
  sub_1E48CE1AC(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F390, &qword_1E499B958);
  v4 = sub_1E4997E2C();

  [v3 setActions_];

  return v3;
}

id sub_1E48CE07C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlarmComplicationCurvedTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E48CE130()
{
  result = qword_1ECF7F060;
  if (!qword_1ECF7F060)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F060);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E48CE1AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F388, &qword_1E499B950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E48CE260(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_1E48CE2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1E48CE338@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  GEOLocationCoordinate2DMake(a2 * 1.4 * 0.5, a2 * 1.4 * 0.5 / (a2 / a3));
  UISizeRoundToScale();
  v8 = (result + result - a2) * 0.5;
  *a1 = 0x3FE0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = result + result;
  *(a1 + 24) = v7 + v7;
  v9 = (v7 + v7 - a3) * 0.5;
  *(a1 + 32) = result;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  *(a1 + 72) = v8;
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E48CE3F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E48CE438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E48CE4A8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1E4997D6C();
}

uint64_t sub_1E48CE678@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F398, &qword_1E499BAA0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3A0, &qword_1E499BAA8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v52 - v15;
  sub_1E499728C();
  v53 = v17;
  v55 = v18;
  v54 = v19;
  v52 = v20;
  sub_1E4961948(a1, a2 & 1);
  v21 = [objc_opt_self() mainScreen];
  [v21 bounds];
  v23 = v22;

  v24 = sub_1E492E268(v23);

  *&v25.f64[0] = v53;
  *&v25.f64[1] = v52;
  *&v26.f64[0] = v54;
  *&v26.f64[1] = v55;
  *v10 = v24;
  v27 = vbslq_s8(vcgeq_f64(v26, v25), v26, v25);
  __asm { FMOV            V1.2D, #1.0 }

  v33 = vaddq_f64(v27, _Q1);
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  v35 = vbslq_s8(vcgeq_f64(v33, v34), v33, v34);
  *(v10 + 24) = v35;
  *(v10 + 8) = v35;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3A8, &qword_1E499BAB0) + 44);
  v37 = v24;
  sub_1E48CEA48(a1, a2 & 1, &v10[v36]);

  v38 = sub_1E499734C();
  v39 = sub_1E49977CC();
  v40 = &v10[*(v6 + 44)];
  *v40 = v38;
  v40[8] = v39;
  sub_1E4997CEC();
  sub_1E499736C();
  sub_1E48C15C8(v10, v16, &qword_1ECF7F398, &qword_1E499BAA0);
  v41 = &v16[*(v12 + 44)];
  v42 = v63;
  *(v41 + 4) = v62;
  *(v41 + 5) = v42;
  *(v41 + 6) = v64;
  v43 = v59;
  *v41 = v58;
  *(v41 + 1) = v43;
  v44 = v61;
  *(v41 + 2) = v60;
  *(v41 + 3) = v44;
  v45 = sub_1E4961948(a1, a2 & 1);
  swift_getKeyPath();
  v57 = v45;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  LODWORD(v36) = *(v45 + 16);

  if (v36 == 1)
  {
    v46 = sub_1E4997A1C();
  }

  else
  {
    v46 = sub_1E4997A3C();
  }

  v47 = v46;
  v48 = sub_1E49977CC();
  v49 = v56;
  sub_1E48C15C8(v16, v56, &qword_1ECF7F3A0, &qword_1E499BAA8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3B0, &qword_1E499BAE0);
  v51 = v49 + *(result + 36);
  *v51 = v47;
  *(v51 + 8) = v48;
  return result;
}

uint64_t sub_1E48CEA48@<X0>(uint64_t a1@<X1>, int a2@<W2>, char *a3@<X8>)
{
  v3 = a2;
  v50 = a2;
  v56 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3B8, &qword_1E499BAE8);
  v58 = *(v55 - 8);
  v5 = v58[8];
  v7 = MEMORY[0x1EEE9AC00](v55, v6);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v51 = &v49 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3C0, &qword_1E499BAF0);
  v57 = *(v53 - 8);
  v11 = v57[8];
  v13 = MEMORY[0x1EEE9AC00](v53, v12);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v49 - v16;
  type metadata accessor for DigitalClockViewModel();
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E49971EC();

  sub_1E499729C();
  v19 = v18;
  v21 = v20;
  v59 = sub_1E49971EC();
  LOBYTE(v60) = v22 & 1;
  v61 = v19;
  v62 = v21;
  sub_1E4961948(a1, v3 & 1);
  sub_1E48D25D4();
  v23 = v17;
  v49 = v17;
  sub_1E499793C();

  v24 = sub_1E49971EC();
  v26 = v25;
  LOBYTE(v65) = 1;
  sub_1E4997B4C();
  v27 = v59;
  v28 = v60;
  v29 = [objc_opt_self() systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB970]];
  [v29 ascender];
  v31 = v30;
  [v29 capHeight];
  v33 = v32;

  v65 = v31 - v33;
  sub_1E4997B4C();
  v34 = v59;
  v35 = v60;
  v59 = v24;
  LOBYTE(v60) = v26 & 1;
  LOBYTE(v61) = v27;
  v62 = v28;
  v63 = v34;
  v64 = v35;
  sub_1E4961948(a1, v50 & 1);
  sub_1E48D2628();
  v36 = v51;
  sub_1E499793C();

  v37 = v57[2];
  v38 = v52;
  v39 = v23;
  v40 = v53;
  v37(v52, v39, v53);
  v41 = v58[2];
  v43 = v54;
  v42 = v55;
  v41(v54, v36, v55);
  v44 = v56;
  v37(v56, v38, v40);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3D8, &qword_1E499BAF8);
  v41(&v44[*(v45 + 48)], v43, v42);
  v46 = v58[1];
  v46(v36, v42);
  v47 = v57[1];
  v47(v49, v40);
  v46(v43, v42);
  return (v47)(v38, v40);
}

uint64_t sub_1E48CEF08@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DigitalClockViewModel();
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  result = sub_1E49971EC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E48CEF84@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = sub_1E48CF020;
  a1[1] = v5;
}

unint64_t sub_1E48CEFF8(uint64_t a1)
{
  result = sub_1E48CD070();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E48CF02C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F448, &qword_1E499BDE0);
  v38 = *(v39 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39, v6);
  v37 = &v35 - v7;
  sub_1E4961948(a1, a2 & 1);
  v8 = objc_opt_self();
  v9 = [v8 mainScreen];
  [v9 bounds];
  v11 = v10;

  v12 = sub_1E492E268(v11);

  sub_1E4961948(a1, a2 & 1);
  v13 = sub_1E492B27C();
  v36 = v14;
  v35 = v15;
  v17 = v16;

  sub_1E4961948(a1, a2 & 1);
  v18 = [v8 mainScreen];
  [v18 bounds];
  v20 = v19;

  v21 = sub_1E492E268(v20);

  type metadata accessor for RollingClockViewModel();
  sub_1E48D3598(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  v22 = sub_1E49971EC();
  LOBYTE(v45[0]) = v23 & 1;
  v24 = v12;
  v25 = sub_1E48C36F4();

  *&v41 = v22;
  BYTE8(v41) = v45[0];
  *&v42 = v25;
  *(&v42 + 1) = v13;
  v26 = v37;
  *&v43 = v36;
  *(&v43 + 1) = v35;
  v44[0] = v17;
  *&v44[8] = v24;
  *&v44[16] = v21;
  *&v44[24] = 384;
  v27 = sub_1E4961948(a1, a2 & 1);
  swift_getKeyPath();
  *&v45[0] = v27;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v28 = *(v27 + 24);

  sub_1E48D2BC4();
  sub_1E499793C();

  v45[2] = v43;
  v46[0] = *v44;
  *(v46 + 10) = *&v44[10];
  v45[0] = v41;
  v45[1] = v42;
  sub_1E48C1180(v45);
  v29 = sub_1E4961948(a1, a2 & 1);
  swift_getKeyPath();
  *&v41 = v29;
  sub_1E4996FCC();

  swift_beginAccess();
  LODWORD(v21) = *(v29 + 16);

  if (v21 == 1)
  {
    sub_1E4997A7C();
    v30 = sub_1E4997A8C();
  }

  else
  {
    v30 = sub_1E4997A4C();
  }

  v31 = sub_1E49977CC();
  v32 = v40;
  (*(v38 + 32))(v40, v26, v39);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F408, &qword_1E499BDC8);
  v34 = v32 + *(result + 36);
  *v34 = v30;
  *(v34 + 8) = v31;
  return result;
}

uint64_t sub_1E48CF4A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F400, &qword_1E499BDC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F408, &qword_1E499BDC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14[-v9];
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  sub_1E48CF02C(*v0, *(v0 + 8), &v14[-v9]);
  sub_1E48C12D0(v10, v5, &qword_1ECF7F408, &qword_1E499BDC8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F410, &qword_1E499BDD0);
  sub_1E48D2980();
  sub_1E48D2A90();
  sub_1E499772C();
  return sub_1E48C1338(v10, &qword_1ECF7F408, &qword_1E499BDC8);
}

uint64_t sub_1E48CF618@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F450, &qword_1E499BE10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v44 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F458, &qword_1E499BE18);
  v7 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45, v8);
  v10 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F460, &qword_1E499BE20);
  v11 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46, v12);
  v14 = &v44 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F468, &qword_1E499BE28);
  v15 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47, v16);
  v18 = &v44 - v17;
  *v6 = sub_1E499762C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F470, &qword_1E499BE30);
  sub_1E48CFB00(v1, &v6[*(v19 + 44)]);
  v20 = *v1;
  v21 = *(v1 + 8);
  v22 = sub_1E4961948(*v1, v21);
  swift_getKeyPath();
  v51 = v22;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  v23 = *(v22 + 16);

  if (v23 == 1)
  {
    v24 = sub_1E4997A5C();
  }

  else
  {
    v24 = sub_1E4997A4C();
  }

  v25 = v24;
  v26 = sub_1E49977CC();
  sub_1E48C15C8(v6, v10, &qword_1ECF7F450, &qword_1E499BE10);
  v27 = &v10[*(v45 + 36)];
  *v27 = v25;
  v27[8] = v26;
  v28 = sub_1E4997D3C();
  v29 = sub_1E4961948(v20, v21);
  swift_getKeyPath();
  v50 = v29;
  sub_1E4996FCC();

  v30 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  v31 = &v14[*(v46 + 36)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F478, &unk_1E499BE60);
  sub_1E48C12D0(v29 + v30, v31 + *(v32 + 36), &qword_1ECF809D0, &qword_1E499D6C0);

  *v31 = v28;
  sub_1E48C15C8(v10, v14, &qword_1ECF7F458, &qword_1E499BE18);
  v33 = sub_1E4997D3C();
  v34 = sub_1E4961948(v20, v21);
  swift_getKeyPath();
  v49 = v34;
  sub_1E4996FCC();

  v35 = *(v34 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);

  sub_1E48C12D0(v14, v18, &qword_1ECF7F460, &qword_1E499BE20);
  v36 = &v18[*(v47 + 36)];
  *v36 = v33;
  v36[1] = v35;
  sub_1E48C1338(v14, &qword_1ECF7F460, &qword_1E499BE20);
  v37 = sub_1E4997D3C();
  v38 = sub_1E4961948(v20, v21);
  swift_getKeyPath();
  v49 = v38;
  sub_1E4996FCC();

  v39 = *(v38 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);

  v40 = v18;
  v41 = v48;
  sub_1E48C15C8(v40, v48, &qword_1ECF7F468, &qword_1E499BE28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F480, &qword_1E499BEC0);
  v43 = (v41 + *(result + 36));
  *v43 = v37;
  v43[1] = v39;
  return result;
}

uint64_t sub_1E48CFB00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v307 = a2;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F488, &qword_1E499BEC8);
  v3 = *(*(v276 - 8) + 64);
  MEMORY[0x1EEE9AC00](v276, v4);
  v277 = &v274 - v5;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F490, &qword_1E499BED0);
  v298 = *(v299 - 8);
  v6 = *(v298 + 64);
  MEMORY[0x1EEE9AC00](v299, v7);
  v275 = &v274 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v296 = &v274 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F498, &qword_1E499BED8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v324 = &v274 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v335 = &v274 - v19;
  v332 = sub_1E499777C();
  v20 = *(*(v332 - 8) + 64);
  MEMORY[0x1EEE9AC00](v332, v21);
  v321 = &v274 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4A0, &qword_1E499BEE0);
  v23 = *(*(v319 - 8) + 64);
  MEMORY[0x1EEE9AC00](v319, v24);
  v303 = &v274 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v292 = &v274 - v28;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4A8, &qword_1E499BEE8);
  v29 = *(*(v320 - 8) + 64);
  MEMORY[0x1EEE9AC00](v320, v30);
  v300 = &v274 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v302 = &v274 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v289 = &v274 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v290 = &v274 - v40;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4B0, &qword_1E499BEF0);
  v41 = *(*(v322 - 8) + 64);
  MEMORY[0x1EEE9AC00](v322, v42);
  v301 = &v274 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v291 = &v274 - v46;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4B8, &qword_1E499BEF8);
  v305 = *(v306 - 8);
  v47 = *(v305 + 64);
  MEMORY[0x1EEE9AC00](v306, v48);
  v304 = &v274 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v334 = &v274 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v323 = &v274 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v333 = &v274 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4C0, &qword_1E499BF00);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8, v61);
  v311 = &v274 - v62;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4C8, &unk_1E499BF08);
  v63 = *(*(v285 - 8) + 64);
  MEMORY[0x1EEE9AC00](v285, v64);
  v286 = &v274 - v65;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFC8, &qword_1E499B100);
  v66 = *(*(v339 - 8) + 64);
  MEMORY[0x1EEE9AC00](v339, v67);
  v316 = (&v274 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v69, v70);
  v318 = (&v274 - v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  v287 = (&v274 - v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v313 = (&v274 - v77);
  MEMORY[0x1EEE9AC00](v78, v79);
  v280 = &v274 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v325 = (&v274 - v83);
  v340 = sub_1E499745C();
  v338 = *(v340 - 8);
  v84 = v338[8];
  MEMORY[0x1EEE9AC00](v340, v85);
  v315 = &v274 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87, v88);
  v310 = &v274 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v314 = (&v274 - v92);
  v93 = sub_1E4996A4C();
  v94 = *(v93 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93, v96);
  v98 = &v274 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4D0, &qword_1E499BF18);
  v100 = v99 - 8;
  v101 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99, v102);
  v104 = &v274 - v103;
  v309 = &v274 - v103;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4D8, &qword_1E499BF20);
  v105 = *(*(v279 - 8) + 64);
  MEMORY[0x1EEE9AC00](v279, v106);
  v281 = &v274 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v108, v109);
  v282 = &v274 - v110;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4E0, &qword_1E499BF28);
  v111 = *(*(v283 - 8) + 64);
  MEMORY[0x1EEE9AC00](v283, v112);
  v284 = &v274 - v113;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4E8, &qword_1E499BF30);
  v297 = *(v331 - 8);
  v114 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v331, v115);
  v317 = &v274 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v117, v118);
  v330 = &v274 - v119;
  v120 = *a1;
  v308 = a1;
  v121 = *(a1 + 8);
  v329 = v120;
  v328 = v121;
  v122 = sub_1E4961948(v120, v121);
  swift_getKeyPath();
  v345 = v122;
  v123 = sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v124 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__dateText;
  swift_beginAccess();
  v125 = *(v94 + 16);
  v295 = v93;
  v294 = v94 + 16;
  v288 = v125;
  v125(v98, v122 + v124, v93);

  v293 = v98;
  v126 = sub_1E49978CC();
  v128 = v127;
  LOBYTE(v122) = v129;
  v337 = v130;
  v131 = &v104[*(v100 + 44)];
  v132 = &v131[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4F0, &qword_1E499BF60) + 36)];
  v133 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4F8, &qword_1E499BF68) + 28);
  v134 = *MEMORY[0x1E6980FD8];
  v135 = sub_1E499787C();
  v136 = *(v135 - 8);
  (*(v136 + 104))(v132 + v133, v134, v135);
  (*(v136 + 56))(v132 + v133, 0, 1, v135);
  *v132 = swift_getKeyPath();
  *v131 = v126;
  *(v131 + 1) = v128;
  v131[16] = v122 & 1;
  *(v131 + 3) = v337;
  v326 = type metadata accessor for DigitalClockViewModel();
  v327 = v123;
  v137 = sub_1E49971EC();
  v138 = v309;
  *v309 = v137;
  *(v138 + 8) = v139 & 1;
  v140 = objc_opt_self();
  v141 = *MEMORY[0x1E69DB970];
  v312 = v140;
  v142 = [v140 systemFontOfSize:30.0 weight:v141];
  v143 = v314;
  v278 = v142;
  v144 = sub_1E48DAD54(v314, v142, 1);
  v145 = v325;
  *v325 = v144;
  v146 = v145 + *(v339 + 48);
  v147 = v338[2];
  v337 = v338 + 2;
  v336 = v147;
  v147(v146, v143, v340);
  sub_1E48C12D0(v138, v311, &qword_1ECF7F4D0, &qword_1E499BF18);
  v148 = v280;
  sub_1E48C12D0(v145, v280, &qword_1ECF7EFC8, &qword_1E499B100);
  v149 = v148;
  v150 = *v148;

  v151 = sub_1E499743C();
  v152 = sub_1E499744C();
  if (!v151)
  {
    if (!v152)
    {
      v151 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v151 |= v152;
    goto LABEL_7;
  }

  if ((v152 & ~v151) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v153 = v340;
  v154 = *(v339 + 48);
  v155 = v286;
  v156 = &v286[*(v285 + 36)];
  v157 = v146;
  v158 = v336;
  v336(v156, v157, v340);
  v159 = v332;
  *&v156[*(v332 + 20)] = v150;
  *&v156[*(v159 + 24)] = v151;
  sub_1E48C15C8(v311, v155, &qword_1ECF7F4C0, &qword_1E499BF00);
  v161 = v338 + 1;
  v160 = v338[1];
  v160(&v149[v154], v153);
  KeyPath = swift_getKeyPath();
  v163 = v281;
  v164 = &v281[*(v279 + 36)];
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010);
  v165 = v164 + *(v311 + 28);
  sub_1E49973CC();

  sub_1E48C1338(v325, &qword_1ECF7EFC8, &qword_1E499B100);
  v166 = v314;
  v338 = v161;
  v314 = v160;
  v160(v166, v153);
  sub_1E48C1338(v309, &qword_1ECF7F4D0, &qword_1E499BF18);
  *v164 = KeyPath;
  sub_1E48C15C8(v155, v163, &qword_1ECF7F4C8, &unk_1E499BF08);
  v167 = v282;
  sub_1E48C15C8(v163, v282, &qword_1ECF7F4D8, &qword_1E499BF20);
  v346 = *(v308 + 32);
  v344 = *(v308 + 32);
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F500, &qword_1E499BFD8);
  sub_1E4997B5C();
  v168 = -*&v343;
  v169 = v284;
  sub_1E48C15C8(v167, v284, &qword_1ECF7F4D8, &qword_1E499BF20);
  v170 = &v169[*(v283 + 36)];
  *v170 = 0.0;
  v170[1] = v168;
  v171 = v329;
  LOBYTE(v167) = v328;
  sub_1E4961948(v329, v328);
  sub_1E48D2CC0();
  sub_1E499793C();

  sub_1E48C1338(v169, &qword_1ECF7F4E0, &qword_1E499BF28);
  v172 = sub_1E4961948(v171, v167);
  swift_getKeyPath();
  *&v344 = v172;
  sub_1E4996FCC();

  v174 = *(v172 + 144);
  v173 = *(v172 + 152);

  *&v344 = v174;
  *(&v344 + 1) = v173;
  sub_1E48D2EE4();
  v286 = sub_1E49978DC();
  v285 = v175;
  LODWORD(v282) = v176;
  v309 = v177;
  v178 = sub_1E49971EC();
  LODWORD(v281) = v179;
  v180 = [v312 systemFontOfSize:30.0 weight:v141];
  v181 = v310;
  v284 = v180;
  v182 = sub_1E48DAD54(v310, v180, 1);
  v183 = v313;
  *v313 = v182;
  v184 = v183 + *(v339 + 48);
  v158(v184, v181, v153);
  v185 = v287;
  sub_1E48C12D0(v183, v287, &qword_1ECF7EFC8, &qword_1E499B100);
  v186 = *v185;
  v283 = v182;

  v187 = sub_1E499743C();
  v188 = sub_1E499744C();
  if (!v187)
  {
    if (!v188)
    {
      v187 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v187 |= v188;
    goto LABEL_13;
  }

  if ((v188 & ~v187) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v280 = *(v339 + 48);
  v189 = v321;
  v190 = v340;
  v336(v321, v184, v340);
  v191 = v332;
  *(v189 + *(v332 + 20)) = v186;
  *(v189 + *(v191 + 24)) = v187;
  v192 = v292;
  sub_1E48D2F38(v189, &v292[*(v319 + 36)]);
  *v192 = v178;
  *(v192 + 8) = v281 & 1;
  v193 = v286;
  v194 = v285;
  *(v192 + 16) = v286;
  *(v192 + 24) = v194;
  v195 = v282 & 1;
  *(v192 + 32) = v282 & 1;
  *(v192 + 40) = v309;

  sub_1E48C14F4(v193, v194, v195);

  sub_1E48D2F9C(v189);
  v196 = v190;
  v197 = v314;
  v314(v185 + v280, v196);
  v287 = swift_getKeyPath();
  v198 = v289;
  v199 = &v289[*(v320 + 36)];
  v200 = &v199[*(v311 + 28)];
  sub_1E49973CC();

  sub_1E48C1564(v193, v194, v195);

  sub_1E48C1338(v313, &qword_1ECF7EFC8, &qword_1E499B100);
  v197(v310, v340);
  *v199 = v287;
  sub_1E48C15C8(v192, v198, &qword_1ECF7F4A0, &qword_1E499BEE0);
  v201 = v290;
  sub_1E48C15C8(v198, v290, &qword_1ECF7F4A8, &qword_1E499BEE8);
  v344 = v346;
  sub_1E4997B5C();
  v202 = -*&v343;
  v203 = v201;
  v204 = v291;
  sub_1E48C15C8(v203, v291, &qword_1ECF7F4A8, &qword_1E499BEE8);
  v205 = v204 + *(v322 + 36);
  *v205 = 0;
  *(v205 + 8) = v202;
  v206 = v329;
  v207 = v328;
  sub_1E4961948(v329, v328);
  v313 = sub_1E48D2FF8();
  sub_1E499793C();

  sub_1E48C1338(v204, &qword_1ECF7F4B0, &qword_1E499BEF0);
  v208 = sub_1E4961948(v206, v207);
  swift_getKeyPath();
  *&v344 = v208;
  sub_1E4996FCC();

  v209 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  v210 = v296;
  sub_1E48C12D0(v208 + v209, v296, &qword_1ECF809D0, &qword_1E499D6C0);

  v211 = sub_1E4996D8C();
  v212 = 1;
  LODWORD(v209) = (*(*(v211 - 8) + 48))(v210, 1, v211);
  sub_1E48C1338(v210, &qword_1ECF809D0, &qword_1E499D6C0);
  v213 = v209 == 1;
  v214 = v299;
  v215 = v298;
  if (!v213)
  {
    v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F570, &qword_1E499C048);
    v217 = v277;
    sub_1E48D18E4(&v277[*(v216 + 36)]);
    *v217 = sub_1E49971EC();
    *(v217 + 8) = v218 & 1;
    v343 = v346;
    sub_1E4997B5C();
    v219 = *&v342 + -4.0;
    v220 = v217 + *(v276 + 36);
    *v220 = 0;
    *(v220 + 8) = v219;
    sub_1E4961948(v206, v207);
    sub_1E48D3248();
    v221 = v275;
    sub_1E499793C();

    sub_1E48C1338(v217, &qword_1ECF7F488, &qword_1E499BEC8);
    (*(v215 + 32))(v335, v221, v214);
    v212 = 0;
  }

  (*(v215 + 56))(v335, v212, 1, v214);
  v222 = sub_1E4961948(v206, v207);
  swift_getKeyPath();
  *&v343 = v222;
  sub_1E4996FCC();

  v223 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmText;
  swift_beginAccess();
  v288(v293, v222 + v223, v295);

  v224 = sub_1E49978CC();
  v226 = v225;
  LODWORD(v309) = v227;
  v229 = v228;
  v230 = sub_1E49971EC();
  LODWORD(v308) = v231;
  v232 = [v312 systemFontOfSize:30.0 weight:v141];
  v233 = v315;
  v312 = v232;
  v234 = sub_1E48DAD54(v315, v232, 1);
  v235 = v318;
  *v318 = v234;
  v236 = v235 + *(v339 + 48);
  v336(v236, v233, v340);
  v237 = v316;
  sub_1E48C12D0(v235, v316, &qword_1ECF7EFC8, &qword_1E499B100);
  v238 = *v237;
  v310 = v234;

  v239 = sub_1E499743C();
  v240 = sub_1E499744C();
  if (v239)
  {
    if ((v240 & ~v239) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (!v240)
  {
    v239 = 0;
    goto LABEL_21;
  }

  v239 |= v240;
LABEL_21:
  v241 = v340;
  v242 = *(v339 + 48);
  v243 = v321;
  v336(v321, v236, v340);
  v244 = v332;
  *(v243 + *(v332 + 20)) = v238;
  *(v243 + *(v244 + 24)) = v239;
  v245 = v303;
  sub_1E48D2F38(v243, &v303[*(v319 + 36)]);
  *v245 = v230;
  *(v245 + 8) = v308 & 1;
  *(v245 + 16) = v224;
  *(v245 + 24) = v226;
  v246 = v309 & 1;
  *(v245 + 32) = v309 & 1;
  *(v245 + 40) = v229;

  sub_1E48C14F4(v224, v226, v246);

  sub_1E48D2F9C(v243);
  v247 = v316 + v242;
  v337 = v229;
  v248 = v226;
  v249 = v224;
  v250 = v314;
  v314(v247, v241);
  v339 = swift_getKeyPath();
  v251 = v300;
  v252 = &v300[*(v320 + 36)];
  v253 = v252 + *(v311 + 28);
  sub_1E49973CC();

  sub_1E48C1564(v249, v248, v246);

  sub_1E48C1338(v318, &qword_1ECF7EFC8, &qword_1E499B100);
  v250(v315, v241);
  *v252 = v339;
  sub_1E48C15C8(v245, v251, &qword_1ECF7F4A0, &qword_1E499BEE0);
  v254 = v302;
  sub_1E48C15C8(v251, v302, &qword_1ECF7F4A8, &qword_1E499BEE8);
  v342 = v346;
  sub_1E4997B5C();
  v255 = v341;
  v256 = v301;
  sub_1E48C15C8(v254, v301, &qword_1ECF7F4A8, &qword_1E499BEE8);
  v257 = (v256 + *(v322 + 36));
  *v257 = 0;
  v257[1] = v255;
  sub_1E4961948(v329, v328);
  v258 = v323;
  sub_1E499793C();

  sub_1E48C1338(v256, &qword_1ECF7F4B0, &qword_1E499BEF0);
  v259 = v297;
  v260 = *(v297 + 16);
  v261 = v317;
  v260(v317, v330, v331);
  v262 = v305;
  v263 = *(v305 + 16);
  v264 = v306;
  v263(v334, v333, v306);
  sub_1E48C12D0(v335, v324, &qword_1ECF7F498, &qword_1E499BED8);
  v265 = v304;
  v263(v304, v258, v264);
  v266 = v307;
  v260(v307, v261, v331);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F568, &qword_1E499C040);
  v263(&v266[v267[12]], v334, v264);
  v268 = &v266[v267[16]];
  *v268 = 0;
  *(v268 + 8) = 1;
  v269 = v324;
  sub_1E48C12D0(v324, &v266[v267[20]], &qword_1ECF7F498, &qword_1E499BED8);
  v263(&v266[v267[24]], v265, v264);
  v270 = *(v262 + 8);
  v270(v323, v264);
  sub_1E48C1338(v335, &qword_1ECF7F498, &qword_1E499BED8);
  v270(v333, v264);
  v271 = *(v259 + 8);
  v272 = v331;
  v271(v330, v331);
  v270(v265, v264);
  sub_1E48C1338(v269, &qword_1ECF7F498, &qword_1E499BED8);
  v270(v334, v264);
  return (v271)(v317, v272);
}

uint64_t sub_1E48D18E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F588, &qword_1E499C050);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v20 - v7);

  v9 = sub_1E4997ADC();
  v10 = (v8 + *(v4 + 44));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F590, &qword_1E499C058) + 28);
  v12 = *MEMORY[0x1E69816C8];
  v13 = sub_1E4997B1C();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  *v8 = v9;
  v14 = *v1;
  v15 = *(v1 + 8);
  v16 = sub_1E4961948(*v1, v15);
  swift_getKeyPath();
  v21 = v16;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v17 = *(v16 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor);

  if (!v17)
  {
    v18 = sub_1E4961948(v14, v15);
    swift_getKeyPath();
    v21 = v18;
    sub_1E4996FCC();

    v17 = *(v18 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);
  }

  sub_1E48C15C8(v8, a1, &qword_1ECF7F588, &qword_1E499C050);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F598, &qword_1E499C0B8);
  *(a1 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_1E48D1B5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_1E48CF618(a1);
}

uint64_t sub_1E48D1B98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F688, &qword_1E499C148);
  sub_1E499733C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F690, &unk_1E499C150);
  sub_1E499733C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F680, &qword_1E499C0F0);
  sub_1E499733C();
  swift_getTupleTypeMetadata2();
  sub_1E4997D5C();
  swift_getWitnessTable();
  v6 = sub_1E4997BBC();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20[-v14];
  v16 = *(a1 + 24);
  v21 = v5;
  v22 = v16;
  v23 = v2;
  sub_1E49975AC();
  sub_1E4997BAC();
  swift_getWitnessTable();
  v17 = v7[2];
  v17(v15, v11, v6);
  v18 = v7[1];
  v18(v11, v6);
  v17(a2, v15, v6);
  return (v18)(v15, v6);
}

uint64_t sub_1E48D1E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v48 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F688, &qword_1E499C148);
  v5 = sub_1E499733C();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F690, &unk_1E499C150);
  v44 = sub_1E499733C();
  v47 = *(v44 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44, v11);
  v41 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F680, &qword_1E499C0F0);
  v13 = sub_1E499733C();
  v46 = *(v13 - 8);
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v43 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v45 = &v40 - v19;
  v20 = *(type metadata accessor for Complication() + 36);
  v21 = [objc_opt_self() systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB970]];
  sub_1E499782C();
  sub_1E499798C();

  v22 = sub_1E4961948(*a1, *(a1 + 8));
  swift_getKeyPath();
  v54[0] = v22;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  v23 = *(v22 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);

  v54[0] = v23;
  v24 = sub_1E48C1B44(&qword_1ECF7F698, &qword_1ECF7F688, &qword_1E499C148);
  v54[6] = a2;
  v54[7] = v24;
  WitnessTable = swift_getWitnessTable();
  v26 = v41;
  sub_1E499797C();

  (*(v42 + 8))(v9, v5);
  sub_1E4997D3C();
  v27 = sub_1E4961948(*a1, *(a1 + 8));
  swift_getKeyPath();
  v54[0] = v27;
  sub_1E4996FCC();

  v28 = *(v27 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);

  v54[0] = v28;
  v29 = sub_1E48C1B44(&qword_1ECF7F6A0, &qword_1ECF7F690, &unk_1E499C150);
  v54[4] = WitnessTable;
  v54[5] = v29;
  v30 = v44;
  v31 = swift_getWitnessTable();
  sub_1E48D3EA8();
  v32 = v43;
  sub_1E49979BC();

  (*(v47 + 8))(v26, v30);
  v33 = sub_1E48C1B44(&qword_1ECF7F678, &qword_1ECF7F680, &qword_1E499C0F0);
  v54[2] = v31;
  v54[3] = v33;
  v34 = swift_getWitnessTable();
  v36 = v45;
  v35 = v46;
  v37 = *(v46 + 16);
  v37(v45, v32, v13);
  v38 = *(v35 + 8);
  v38(v32, v13);
  v37(v32, v36, v13);
  v52 = 0;
  v53 = 1;
  v54[0] = v32;
  v54[1] = &v52;
  v51[0] = v13;
  v51[1] = MEMORY[0x1E6981840];
  v49 = v34;
  v50 = MEMORY[0x1E6981838];
  sub_1E48CE4A8(v54, 2uLL, v51);
  v38(v36, v13);
  return (v38)(v32, v13);
}

double sub_1E48D2430(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1E48D2450(double a1, double a2, double a3, double a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 4);
  return sub_1E48D3300(a1, a2, a3, a4);
}

void (*sub_1E48D2548(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1E499716C();
  return sub_1E48C2910;
}

unint64_t sub_1E48D25D4()
{
  result = qword_1ECF7F3C8;
  if (!qword_1ECF7F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F3C8);
  }

  return result;
}

unint64_t sub_1E48D2628()
{
  result = qword_1ECF7F3D0;
  if (!qword_1ECF7F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F3D0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E48D2690(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E48D26EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1E48D275C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E48D27A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E48D27F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E48D2840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E48D289C()
{
  result = qword_1ECF7F3F0;
  if (!qword_1ECF7F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F3F0);
  }

  return result;
}

unint64_t sub_1E48D28F4()
{
  result = qword_1ECF7F3F8;
  if (!qword_1ECF7F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F3F8);
  }

  return result;
}

unint64_t sub_1E48D2980()
{
  result = qword_1ECF7F418;
  if (!qword_1ECF7F418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F410, &qword_1E499BDD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F408, &qword_1E499BDC8);
    sub_1E4996D8C();
    sub_1E48D2A90();
    sub_1E48D3598(&qword_1ECF7F440, MEMORY[0x1E6969530]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F418);
  }

  return result;
}

unint64_t sub_1E48D2A90()
{
  result = qword_1ECF7F420;
  if (!qword_1ECF7F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F408, &qword_1E499BDC8);
    type metadata accessor for RollingClockViewModel();
    sub_1E48D2BC4();
    sub_1E48D3598(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E48C1B44(&qword_1ECF7F430, &qword_1ECF7F438, &qword_1E499BDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F420);
  }

  return result;
}

unint64_t sub_1E48D2BC4()
{
  result = qword_1ECF7F428;
  if (!qword_1ECF7F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F428);
  }

  return result;
}

uint64_t sub_1E48D2C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F5A0, &qword_1E499C0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  sub_1E48C12D0(a1, &v7 - v5, &qword_1ECF7F5A0, &qword_1E499C0C0);
  return sub_1E499756C();
}

unint64_t sub_1E48D2CC0()
{
  result = qword_1ECF7F508;
  if (!qword_1ECF7F508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F4E0, &qword_1E499BF28);
    sub_1E48D30B0(&qword_1ECF7F510, &qword_1ECF7F4D8, &qword_1E499BF20, sub_1E48D2D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F508);
  }

  return result;
}

uint64_t sub_1E48D2DA8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E48D2E2C()
{
  result = qword_1ECF7F520;
  if (!qword_1ECF7F520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F4C0, &qword_1E499BF00);
    sub_1E48C1B44(&qword_1ECF7F528, &qword_1ECF7F4D0, &qword_1E499BF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F520);
  }

  return result;
}

unint64_t sub_1E48D2EE4()
{
  result = qword_1EE2BB148;
  if (!qword_1EE2BB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB148);
  }

  return result;
}

uint64_t sub_1E48D2F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E499777C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D2F9C(uint64_t a1)
{
  v2 = sub_1E499777C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E48D2FF8()
{
  result = qword_1ECF7F530;
  if (!qword_1ECF7F530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F4B0, &qword_1E499BEF0);
    sub_1E48D30B0(&qword_1ECF7F538, &qword_1ECF7F4A8, &qword_1E499BEE8, sub_1E48D3160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F530);
  }

  return result;
}

uint64_t sub_1E48D30B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E48C1B44(&qword_1ECF7EE68, &qword_1ECF7EE70, &qword_1E499B010);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E48D3190()
{
  result = qword_1ECF7F548;
  if (!qword_1ECF7F548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F550, &qword_1E499C008);
    sub_1E48C1B44(&qword_1ECF7F558, &qword_1ECF7F560, &qword_1E499C010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F548);
  }

  return result;
}

unint64_t sub_1E48D3248()
{
  result = qword_1ECF7F578;
  if (!qword_1ECF7F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F488, &qword_1E499BEC8);
    sub_1E48C1B44(&qword_1ECF7F580, &qword_1ECF7F570, &qword_1E499C048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F578);
  }

  return result;
}

uint64_t sub_1E48D3300(double a1, double a2, double a3, double a4)
{
  v7 = sub_1E49972CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E49972DC();
  sub_1E48D3598(qword_1ECF7F5A8, MEMORY[0x1E697E3C0]);
  sub_1E499827C();
  sub_1E49982AC();
  result = sub_1E499829C();
  if (result == 2)
  {
    v14 = a3 - *(v4 + 16) - *(v4 + 32) + -50.0 - a3 * 0.2;
    v15 = a4 - *(v4 + 8) - *(v4 + 24);
    sub_1E49972EC();
    sub_1E4997D7C();
    v18 = 0;
    v17[0] = 0;
    sub_1E49972BC();
    v16 = *(v8 + 8);
    v16(v12, v7);
    [*v4 capHeight];
    sub_1E49972EC();
    sub_1E4997D7C();
    v18 = 0;
    v17[0] = 0;
    sub_1E49972BC();
    return (v16)(v12, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E48D3598(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E48D35E8(uint64_t a1)
{
  sub_1E48D3A68();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E48D3670(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E48D37F4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 9] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[8] = -a2;
  }
}

void sub_1E48D3A68()
{
  if (!qword_1ECF7F630)
  {
    type metadata accessor for DigitalClockViewModel();
    v0 = sub_1E49971DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF7F630);
    }
  }
}

unint64_t sub_1E48D3AC0()
{
  result = qword_1ECF7F638;
  if (!qword_1ECF7F638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F640, &qword_1E499C0E8);
    sub_1E48D2980();
    sub_1E48D2A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F638);
  }

  return result;
}

unint64_t sub_1E48D3B4C()
{
  result = qword_1ECF7F648;
  if (!qword_1ECF7F648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F480, &qword_1E499BEC0);
    sub_1E48D3C04();
    sub_1E48C1B44(&qword_1ECF7F678, &qword_1ECF7F680, &qword_1E499C0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F648);
  }

  return result;
}

unint64_t sub_1E48D3C04()
{
  result = qword_1ECF7F650;
  if (!qword_1ECF7F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F468, &qword_1E499BE28);
    sub_1E48D3CBC();
    sub_1E48C1B44(&qword_1ECF7F678, &qword_1ECF7F680, &qword_1E499C0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F650);
  }

  return result;
}

unint64_t sub_1E48D3CBC()
{
  result = qword_1ECF7F658;
  if (!qword_1ECF7F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F460, &qword_1E499BE20);
    sub_1E48D3D74();
    sub_1E48C1B44(&qword_1ECF7F670, &qword_1ECF7F478, &unk_1E499BE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F658);
  }

  return result;
}

unint64_t sub_1E48D3D74()
{
  result = qword_1ECF7F660;
  if (!qword_1ECF7F660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F458, &qword_1E499BE18);
    sub_1E48C1B44(&qword_1ECF7F668, &qword_1ECF7F450, &qword_1E499BE10);
    sub_1E48C1B44(&qword_1ECF7F430, &qword_1ECF7F438, &qword_1E499BDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F660);
  }

  return result;
}

unint64_t sub_1E48D3EA8()
{
  result = qword_1ECF7F6A8;
  if (!qword_1ECF7F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F6A8);
  }

  return result;
}

id sub_1E48D3EFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ClockLabel();
  v13.receiver = v0;
  v13.super_class = v6;
  result = objc_msgSendSuper2(&v13, sel_layoutSubviews);
  if ((*(v0 + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 1;
    v8 = sub_1E499816C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E499814C();

    v10 = sub_1E499813C();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;

    sub_1E498DD1C(0, 0, v5, &unk_1E499C178, v11);
  }

  return result;
}

uint64_t sub_1E48D4080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = sub_1E499814C();
  v4[18] = sub_1E499813C();
  v16 = sub_1E499811C();
  v4[19] = v16;
  v4[20] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1E48D4298, v16, v15);
}

uint64_t sub_1E48D4298()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[5];
  sub_1E493C7A4(v2);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = v0[17];
  v7 = sub_1E499813C();
  v0[21] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_1E48D43F0;
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[10];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E48D43F0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E48D4534, v5, v4);
}

uint64_t sub_1E48D4534()
{
  v1 = v0[10];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[18];
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_11:
    v28 = v0[16];
    v29 = v0[13];
    v31 = v0[9];
    v30 = v0[10];
    v32 = v0[8];

    v33 = v0[1];

    return v33();
  }

  v3 = v0[5];
  sub_1E48D4BCC(v1, v0[9]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v23 = v0[18];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    v27 = v0[9];

    sub_1E48D4C3C(v27);
    (*(v25 + 8))(v24, v26);
    goto LABEL_11;
  }

  v5 = Strong;
  v6 = [Strong timeFormatter];
  if (v6)
  {
    v10 = v6;
    v11 = v0[8];
    sub_1E48D4CA4(v0[9], v11);
    v12 = sub_1E4996D8C();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = 0;
    if (v14 != 1)
    {
      v16 = v0[8];
      v15 = sub_1E4996CEC();
      (*(v13 + 8))(v16, v12);
    }

    v17 = v0[9];
    [v10 setOverrideDate_];

    sub_1E48D4C3C(v17);
    v18 = v0[17];
    v19 = sub_1E499813C();
    v0[21] = v19;
    v20 = *(MEMORY[0x1E69E8678] + 4);
    v21 = swift_task_alloc();
    v0[22] = v21;
    *v21 = v0;
    v21[1] = sub_1E48D43F0;
    v22 = v0[16];
    v9 = v0[14];
    v6 = v0[10];
    v8 = MEMORY[0x1E69E85E0];
    v7 = v19;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D9C8](v6, v7, v8, v9);
}

id sub_1E48D4AC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E48D4B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48D4080(a1, v4, v5, v6);
}

uint64_t sub_1E48D4BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D4C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48D4CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D4D14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499C180;
  v21[3] = &type metadata for SolidClockFaceColor;
  v1 = sub_1E48D5004();
  v21[4] = v1;
  v2 = swift_allocObject();
  v21[0] = v2;
  *(v2 + 16) = xmmword_1E499C190;
  *(v2 + 32) = xmmword_1E499C1A0;
  v23 = 0;
  v22 = 0u;
  v18[3] = &type metadata for SolidClockFaceColor;
  v18[4] = v1;
  v3 = swift_allocObject();
  v18[0] = v3;
  *(v3 + 16) = xmmword_1E499C1B0;
  *(v3 + 32) = xmmword_1E499C1C0;
  v20 = 0;
  v19 = 0u;
  sub_1E4934214(v21, v18, v0 + 32);
  sub_1E48C8360(v18);
  sub_1E48C8360(v21);
  *(v0 + 160) = &type metadata for SolidClockFaceColor;
  *(v0 + 168) = v1;
  v4 = swift_allocObject();
  *(v0 + 136) = v4;
  *(v4 + 16) = xmmword_1E499C1D0;
  *(v4 + 32) = xmmword_1E499C1E0;
  *(v0 + 232) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 264) = &type metadata for SolidClockFaceColor;
  *(v0 + 272) = v1;
  v5 = swift_allocObject();
  *(v0 + 240) = v5;
  __asm { FMOV            V1.2D, #1.0 }

  *(v5 + 16) = xmmword_1E499C1F0;
  *(v5 + 32) = _Q1;
  *(v0 + 336) = 0;
  *(v0 + 280) = 0u;
  *(v0 + 368) = &type metadata for SolidClockFaceColor;
  *(v0 + 376) = v1;
  v11 = swift_allocObject();
  *(v0 + 344) = v11;
  *(v11 + 16) = xmmword_1E499C200;
  *(v11 + 32) = xmmword_1E499C210;
  *(v0 + 440) = 0;
  *(v0 + 384) = 0u;
  *(v0 + 472) = &type metadata for SolidClockFaceColor;
  *(v0 + 480) = v1;
  v12 = swift_allocObject();
  *(v0 + 448) = v12;
  *(v12 + 16) = xmmword_1E499C220;
  *(v12 + 32) = xmmword_1E499C230;
  *(v0 + 544) = 0;
  *(v0 + 488) = 0u;
  *(v0 + 576) = &type metadata for SolidClockFaceColor;
  *(v0 + 584) = v1;
  v13 = swift_allocObject();
  *(v0 + 552) = v13;
  *(v13 + 16) = xmmword_1E499C240;
  *(v13 + 32) = xmmword_1E499C250;
  *(v0 + 648) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 680) = &type metadata for SolidClockFaceColor;
  *(v0 + 688) = v1;
  v14 = swift_allocObject();
  *(v0 + 656) = v14;
  *(v14 + 16) = xmmword_1E499C260;
  *(v14 + 32) = xmmword_1E499C270;
  *(v0 + 752) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 784) = &type metadata for SolidClockFaceColor;
  *(v0 + 792) = v1;
  v15 = swift_allocObject();
  *(v0 + 760) = v15;
  *(v15 + 16) = xmmword_1E499C280;
  *(v15 + 32) = xmmword_1E499C290;
  *(v0 + 856) = 0;
  *(v0 + 800) = 0u;
  *(v0 + 888) = &type metadata for SolidClockFaceColor;
  *(v0 + 896) = v1;
  v16 = swift_allocObject();
  *(v0 + 864) = v16;
  *(v16 + 16) = xmmword_1E499C2A0;
  *(v16 + 32) = xmmword_1E499C2B0;
  *(v0 + 960) = 0;
  *(v0 + 904) = 0u;
  return v0;
}

unint64_t sub_1E48D5004()
{
  result = qword_1EE2BB4B8;
  if (!qword_1EE2BB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4B8);
  }

  return result;
}

uint64_t sub_1E48D5058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499C2C0;
  *(v0 + 56) = &type metadata for SolidClockFaceColor;
  v1 = sub_1E48D5004();
  *(v0 + 64) = v1;
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_1E499C2D0;
  *(v2 + 32) = xmmword_1E499C2E0;
  *(v0 + 128) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 160) = &type metadata for SolidClockFaceColor;
  *(v0 + 168) = v1;
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  __asm { FMOV            V1.2D, #1.0 }

  v41 = _Q1;
  *(v3 + 16) = xmmword_1E499C2F0;
  *(v3 + 32) = _Q1;
  *(v0 + 232) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 264) = &type metadata for SolidClockFaceColor;
  *(v0 + 272) = v1;
  v9 = swift_allocObject();
  *(v0 + 240) = v9;
  *(v9 + 16) = xmmword_1E499C300;
  *(v9 + 32) = xmmword_1E499C310;
  *(v0 + 336) = 0;
  *(v0 + 280) = 0u;
  *(v0 + 368) = &type metadata for SolidClockFaceColor;
  *(v0 + 376) = v1;
  v10 = swift_allocObject();
  *(v0 + 344) = v10;
  *(v10 + 16) = xmmword_1E499C320;
  *(v10 + 32) = xmmword_1E499C330;
  *(v0 + 440) = 0;
  *(v0 + 384) = 0u;
  *(v0 + 472) = &type metadata for SolidClockFaceColor;
  *(v0 + 480) = v1;
  v11 = swift_allocObject();
  *(v0 + 448) = v11;
  *(v11 + 16) = xmmword_1E499C340;
  *(v11 + 32) = xmmword_1E499C350;
  *(v0 + 544) = 0;
  *(v0 + 488) = 0u;
  *(v0 + 576) = &type metadata for SolidClockFaceColor;
  *(v0 + 584) = v1;
  v12 = swift_allocObject();
  *(v0 + 552) = v12;
  *(v12 + 16) = xmmword_1E499C360;
  *(v12 + 32) = xmmword_1E499C370;
  *(v0 + 648) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 680) = &type metadata for SolidClockFaceColor;
  *(v0 + 688) = v1;
  v13 = swift_allocObject();
  *(v0 + 656) = v13;
  *(v13 + 16) = xmmword_1E499C380;
  *(v13 + 32) = xmmword_1E499C390;
  *(v0 + 752) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 784) = &type metadata for SolidClockFaceColor;
  *(v0 + 792) = v1;
  v14 = swift_allocObject();
  *(v0 + 760) = v14;
  *(v14 + 16) = xmmword_1E499C3A0;
  *(v14 + 32) = xmmword_1E499C3B0;
  *(v0 + 856) = 0;
  *(v0 + 800) = 0u;
  *(v0 + 888) = &type metadata for SolidClockFaceColor;
  *(v0 + 896) = v1;
  v15 = swift_allocObject();
  *(v0 + 864) = v15;
  *(v15 + 16) = xmmword_1E499C3C0;
  *(v15 + 32) = xmmword_1E499C3D0;
  *(v0 + 960) = 0;
  *(v0 + 904) = 0u;
  *(v0 + 992) = &type metadata for SolidClockFaceColor;
  *(v0 + 1000) = v1;
  v16 = swift_allocObject();
  *(v0 + 968) = v16;
  *(v16 + 16) = xmmword_1E499C3E0;
  *(v16 + 32) = xmmword_1E499C3F0;
  *(v0 + 1064) = 0;
  *(v0 + 1008) = 0u;
  *(v0 + 1096) = &type metadata for SolidClockFaceColor;
  *(v0 + 1104) = v1;
  v17 = swift_allocObject();
  *(v0 + 1072) = v17;
  *(v17 + 16) = xmmword_1E499C400;
  *(v17 + 32) = xmmword_1E499C410;
  *(v0 + 1168) = 0;
  *(v0 + 1112) = 0u;
  *(v0 + 1200) = &type metadata for SolidClockFaceColor;
  *(v0 + 1208) = v1;
  v18 = swift_allocObject();
  *(v0 + 1176) = v18;
  *(v18 + 16) = xmmword_1E499C420;
  *(v18 + 32) = xmmword_1E499C430;
  *(v0 + 1272) = 0;
  *(v0 + 1216) = 0u;
  *(v0 + 1304) = &type metadata for SolidClockFaceColor;
  *(v0 + 1312) = v1;
  v19 = swift_allocObject();
  *(v0 + 1280) = v19;
  *(v19 + 16) = xmmword_1E499C440;
  *(v19 + 32) = xmmword_1E499C450;
  *(v0 + 1376) = 0;
  *(v0 + 1320) = 0u;
  *(v0 + 1408) = &type metadata for SolidClockFaceColor;
  *(v0 + 1416) = v1;
  v20 = swift_allocObject();
  *(v0 + 1384) = v20;
  *(v20 + 16) = xmmword_1E499C460;
  *(v20 + 32) = xmmword_1E499C470;
  *(v0 + 1480) = 0;
  *(v0 + 1424) = 0u;
  *(v0 + 1512) = &type metadata for SolidClockFaceColor;
  *(v0 + 1520) = v1;
  v21 = swift_allocObject();
  *(v0 + 1488) = v21;
  *(v21 + 16) = xmmword_1E499C480;
  *(v21 + 32) = xmmword_1E499C490;
  *(v0 + 1584) = 0;
  *(v0 + 1528) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C8, &unk_1E49A02E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E499A180;
  *(v22 + 56) = &type metadata for SolidClockFaceColor;
  *(v22 + 64) = v1;
  v23 = swift_allocObject();
  *(v22 + 32) = v23;
  *(v23 + 16) = xmmword_1E499C4A0;
  *(v23 + 32) = xmmword_1E499C4B0;
  *(v22 + 96) = &type metadata for SolidClockFaceColor;
  *(v22 + 104) = v1;
  v24 = swift_allocObject();
  *(v22 + 72) = v24;
  *(v24 + 16) = xmmword_1E499C4C0;
  *(v24 + 32) = v41;
  *(v0 + 1592) = v22;
  *(v0 + 1600) = 0u;
  *(v0 + 1688) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E499A180;
  *(v25 + 56) = &type metadata for SolidClockFaceColor;
  *(v25 + 64) = v1;
  v26 = swift_allocObject();
  *(v25 + 32) = v26;
  *(v26 + 16) = xmmword_1E499C4D0;
  *(v26 + 32) = xmmword_1E499C4E0;
  *(v25 + 96) = &type metadata for SolidClockFaceColor;
  *(v25 + 104) = v1;
  v27 = swift_allocObject();
  *(v25 + 72) = v27;
  *(v27 + 16) = xmmword_1E499C300;
  *(v27 + 32) = xmmword_1E499C310;
  *(v0 + 1696) = v25;
  *(v0 + 1704) = 0u;
  *(v0 + 1792) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E499A180;
  *(v28 + 56) = &type metadata for SolidClockFaceColor;
  *(v28 + 64) = v1;
  v29 = swift_allocObject();
  *(v28 + 32) = v29;
  *(v29 + 16) = xmmword_1E499C4F0;
  *(v29 + 32) = xmmword_1E499C500;
  *(v28 + 96) = &type metadata for SolidClockFaceColor;
  *(v28 + 104) = v1;
  v30 = swift_allocObject();
  *(v28 + 72) = v30;
  *(v30 + 16) = xmmword_1E499C510;
  *(v30 + 32) = xmmword_1E499C520;
  *(v0 + 1800) = v28;
  *(v0 + 1808) = 0u;
  *(v0 + 1896) = 1;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E499A180;
  *(v31 + 56) = &type metadata for SolidClockFaceColor;
  *(v31 + 64) = v1;
  v32 = swift_allocObject();
  *(v31 + 32) = v32;
  *(v32 + 16) = xmmword_1E499C530;
  *(v32 + 32) = xmmword_1E499C540;
  *(v31 + 96) = &type metadata for SolidClockFaceColor;
  *(v31 + 104) = v1;
  v33 = swift_allocObject();
  *(v31 + 72) = v33;
  *(v33 + 16) = xmmword_1E499C550;
  *(v33 + 32) = xmmword_1E499C560;
  *(v0 + 1904) = v31;
  *(v0 + 1912) = 0u;
  *(v0 + 2000) = 1;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1E499A180;
  *(v34 + 56) = &type metadata for SolidClockFaceColor;
  *(v34 + 64) = v1;
  v35 = swift_allocObject();
  *(v34 + 32) = v35;
  *(v35 + 16) = xmmword_1E499C3C0;
  *(v35 + 32) = xmmword_1E499C3D0;
  *(v34 + 96) = &type metadata for SolidClockFaceColor;
  *(v34 + 104) = v1;
  v36 = swift_allocObject();
  *(v34 + 72) = v36;
  *(v36 + 16) = xmmword_1E499C570;
  *(v36 + 32) = xmmword_1E499C580;
  *(v0 + 2008) = v34;
  *(v0 + 2016) = 0u;
  *(v0 + 2104) = 1;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1E499A180;
  *(v37 + 56) = &type metadata for SolidClockFaceColor;
  *(v37 + 64) = v1;
  v38 = swift_allocObject();
  *(v37 + 32) = v38;
  *(v38 + 16) = xmmword_1E499C590;
  *(v38 + 32) = xmmword_1E499C5A0;
  *(v37 + 96) = &type metadata for SolidClockFaceColor;
  *(v37 + 104) = v1;
  v39 = swift_allocObject();
  *(v37 + 72) = v39;
  *(v39 + 16) = xmmword_1E499C5B0;
  *(v39 + 32) = v41;
  *(v0 + 2112) = v37;
  *(v0 + 2120) = 0u;
  *(v0 + 2208) = 1;
  sub_1E4934308(&unk_1F5E82668, v0 + 2216);
  return v0;
}

uint64_t sub_1E48D57B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499C5C0;
  sub_1E4934478(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C8, &unk_1E49A02E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E499A180;
  *(v1 + 56) = &type metadata for SolidClockFaceColor;
  v2 = sub_1E48D5004();
  *(v1 + 64) = v2;
  v3 = swift_allocObject();
  *(v1 + 32) = v3;
  *(v3 + 16) = xmmword_1E499C5D0;
  *(v3 + 32) = xmmword_1E499C5E0;
  *(v1 + 96) = &type metadata for SolidClockFaceColor;
  *(v1 + 104) = v2;
  v4 = swift_allocObject();
  *(v1 + 72) = v4;
  *(v4 + 16) = xmmword_1E499C5F0;
  *(v4 + 32) = xmmword_1E499C600;
  *(v0 + 136) = v1;
  *(v0 + 144) = 0u;
  *(v0 + 232) = 1;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E499A180;
  *(v5 + 56) = &type metadata for SolidClockFaceColor;
  *(v5 + 64) = v2;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  *(v6 + 16) = xmmword_1E499C610;
  *(v6 + 32) = xmmword_1E499C620;
  *(v5 + 96) = &type metadata for SolidClockFaceColor;
  *(v5 + 104) = v2;
  v7 = swift_allocObject();
  *(v5 + 72) = v7;
  *(v7 + 16) = xmmword_1E499C630;
  *(v7 + 32) = xmmword_1E499C640;
  *(v0 + 240) = v5;
  *(v0 + 248) = 0u;
  *(v0 + 336) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E499A180;
  *(v8 + 56) = &type metadata for SolidClockFaceColor;
  *(v8 + 64) = v2;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = xmmword_1E499C650;
  *(v9 + 32) = xmmword_1E499C660;
  *(v8 + 96) = &type metadata for SolidClockFaceColor;
  *(v8 + 104) = v2;
  v10 = swift_allocObject();
  *(v8 + 72) = v10;
  *(v10 + 16) = xmmword_1E499C670;
  *(v10 + 32) = xmmword_1E499C680;
  *(v0 + 344) = v8;
  *(v0 + 352) = 0u;
  *(v0 + 440) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E499A180;
  *(v11 + 56) = &type metadata for SolidClockFaceColor;
  *(v11 + 64) = v2;
  v12 = swift_allocObject();
  *(v11 + 32) = v12;
  *(v12 + 16) = xmmword_1E499C690;
  *(v12 + 32) = xmmword_1E499C330;
  *(v11 + 96) = &type metadata for SolidClockFaceColor;
  *(v11 + 104) = v2;
  v13 = swift_allocObject();
  *(v11 + 72) = v13;
  __asm { FMOV            V1.2D, #1.0 }

  v23 = _Q1;
  *(v13 + 16) = xmmword_1E499C6A0;
  *(v13 + 32) = _Q1;
  *(v0 + 448) = v11;
  *(v0 + 456) = 0u;
  *(v0 + 544) = 1;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E499A180;
  *(v19 + 56) = &type metadata for SolidClockFaceColor;
  *(v19 + 64) = v2;
  v20 = swift_allocObject();
  *(v19 + 32) = v20;
  *(v20 + 16) = xmmword_1E499C6B0;
  *(v20 + 32) = xmmword_1E499C6C0;
  *(v19 + 96) = &type metadata for SolidClockFaceColor;
  *(v19 + 104) = v2;
  v21 = swift_allocObject();
  *(v19 + 72) = v21;
  *(v21 + 16) = xmmword_1E499C6D0;
  *(v21 + 32) = v23;
  *(v0 + 552) = v19;
  *(v0 + 560) = 0u;
  *(v0 + 648) = 1;
  sub_1E4934608(v0 + 656);
  return v0;
}

uint64_t sub_1E48D5B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499C6E0;
  *(v0 + 56) = &type metadata for DynamicClockFaceColor;
  v1 = sub_1E48D615C();
  *(v0 + 64) = v1;
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  v2[1] = xmmword_1E499C1D0;
  v2[2] = xmmword_1E499C1E0;
  v2[3] = xmmword_1E499C6F0;
  v2[4] = xmmword_1E499C5E0;
  *(v0 + 128) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 160) = &type metadata for DynamicClockFaceColor;
  *(v0 + 168) = v1;
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  __asm { FMOV            V1.2D, #1.0 }

  v27 = _Q1;
  v3[1] = xmmword_1E499C1F0;
  v3[2] = _Q1;
  v3[3] = xmmword_1E499C700;
  v3[4] = xmmword_1E499C710;
  *(v0 + 232) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 264) = &type metadata for DynamicClockFaceColor;
  *(v0 + 272) = v1;
  v9 = swift_allocObject();
  *(v0 + 240) = v9;
  v9[1] = xmmword_1E499C200;
  v9[2] = xmmword_1E499C210;
  v9[3] = xmmword_1E499C720;
  v9[4] = xmmword_1E499C730;
  *(v0 + 336) = 0;
  *(v0 + 280) = 0u;
  *(v0 + 368) = &type metadata for DynamicClockFaceColor;
  *(v0 + 376) = v1;
  v10 = swift_allocObject();
  *(v0 + 344) = v10;
  v10[1] = xmmword_1E499C220;
  v10[2] = xmmword_1E499C230;
  v10[3] = xmmword_1E499C740;
  v10[4] = xmmword_1E499C750;
  *(v0 + 440) = 0;
  *(v0 + 384) = 0u;
  *(v0 + 472) = &type metadata for DynamicClockFaceColor;
  *(v0 + 480) = v1;
  v11 = swift_allocObject();
  *(v0 + 448) = v11;
  v11[1] = xmmword_1E499C240;
  v11[2] = xmmword_1E499C250;
  v11[3] = xmmword_1E499C760;
  v11[4] = xmmword_1E499C770;
  *(v0 + 544) = 0;
  *(v0 + 488) = 0u;
  *(v0 + 576) = &type metadata for DynamicClockFaceColor;
  *(v0 + 584) = v1;
  v12 = swift_allocObject();
  *(v0 + 552) = v12;
  v12[1] = xmmword_1E499C260;
  v12[2] = xmmword_1E499C270;
  v12[3] = xmmword_1E499C780;
  v12[4] = xmmword_1E499C790;
  *(v0 + 648) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 680) = &type metadata for DynamicClockFaceColor;
  *(v0 + 688) = v1;
  v13 = swift_allocObject();
  *(v0 + 656) = v13;
  v13[1] = xmmword_1E499C280;
  v13[2] = xmmword_1E499C290;
  v13[3] = xmmword_1E499C7A0;
  v13[4] = xmmword_1E499C7B0;
  *(v0 + 752) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 784) = &type metadata for DynamicClockFaceColor;
  *(v0 + 792) = v1;
  v14 = swift_allocObject();
  *(v0 + 760) = v14;
  v14[1] = xmmword_1E499C2A0;
  v14[2] = xmmword_1E499C2B0;
  v14[3] = xmmword_1E499C7C0;
  v14[4] = xmmword_1E499C7D0;
  *(v0 + 856) = 0;
  *(v0 + 800) = 0u;
  *(v0 + 888) = &type metadata for DynamicClockFaceColor;
  *(v0 + 896) = v1;
  v15 = swift_allocObject();
  *(v0 + 864) = v15;
  v15[1] = xmmword_1E499C7E0;
  v15[2] = xmmword_1E499C5A0;
  v15[3] = xmmword_1E499C7F0;
  v15[4] = xmmword_1E499C330;
  *(v0 + 960) = 0;
  *(v0 + 904) = 0u;
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v16 = swift_allocObject();
  v16[1] = xmmword_1E499C1D0;
  v16[2] = xmmword_1E499C1E0;
  v16[3] = xmmword_1E499C6F0;
  v16[4] = xmmword_1E499C5E0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v16;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v17 = swift_allocObject();
  v17[1] = xmmword_1E499C2A0;
  v17[2] = xmmword_1E499C2B0;
  v17[3] = xmmword_1E499C7C0;
  v17[4] = xmmword_1E499C7D0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v17;
  sub_1E4934214(v34, v28, v0 + 968);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v18 = swift_allocObject();
  v18[1] = xmmword_1E499C6F0;
  v18[2] = xmmword_1E499C5E0;
  v18[3] = xmmword_1E499C1D0;
  v18[4] = xmmword_1E499C1E0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v18;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v19 = swift_allocObject();
  v19[1] = xmmword_1E499C280;
  v19[2] = xmmword_1E499C290;
  v19[3] = xmmword_1E499C7A0;
  v19[4] = xmmword_1E499C7B0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v19;
  sub_1E4934214(v34, v28, v0 + 1072);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v20 = swift_allocObject();
  v20[1] = xmmword_1E499C700;
  v20[2] = xmmword_1E499C710;
  v20[3] = xmmword_1E499C1F0;
  v20[4] = v27;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v20;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v21 = swift_allocObject();
  v21[1] = xmmword_1E499C220;
  v21[2] = xmmword_1E499C230;
  v21[3] = xmmword_1E499C740;
  v21[4] = xmmword_1E499C750;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v21;
  sub_1E4934214(v34, v28, v0 + 1176);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v22 = swift_allocObject();
  v22[1] = xmmword_1E499C260;
  v22[2] = xmmword_1E499C270;
  v22[3] = xmmword_1E499C780;
  v22[4] = xmmword_1E499C790;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v22;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v23 = swift_allocObject();
  v23[1] = xmmword_1E499C240;
  v23[2] = xmmword_1E499C250;
  v23[3] = xmmword_1E499C760;
  v23[4] = xmmword_1E499C770;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v23;
  sub_1E4934214(v34, v28, v0 + 1280);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v24 = swift_allocObject();
  v24[1] = xmmword_1E499C200;
  v24[2] = xmmword_1E499C210;
  v24[3] = xmmword_1E499C720;
  v24[4] = xmmword_1E499C730;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v24;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v25 = swift_allocObject();
  v25[1] = xmmword_1E499C7E0;
  v25[2] = xmmword_1E499C5A0;
  v25[3] = xmmword_1E499C7F0;
  v25[4] = xmmword_1E499C330;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v25;
  sub_1E4934214(v34, v28, v0 + 1384);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  return v0;
}

unint64_t sub_1E48D615C()
{
  result = qword_1EE2BB490;
  if (!qword_1EE2BB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB490);
  }

  return result;
}

uint64_t sub_1E48D61D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = *(v12 + 16);
  v16(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6E0, &qword_1E499C9E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
  }

  sub_1E48C12D0(v27, &v22, &qword_1ECF7F6E8, &qword_1E499C9E8);
  v17 = v23;
  if (v23)
  {
    v18 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    sub_1E48D6438(a1, v17, a3, v18, v25);
    __swift_destroy_boxed_opaque_existential_0Tm(&v22);
  }

  else
  {
    sub_1E48C1338(&v22, &qword_1ECF7F6E8, &qword_1E499C9E8);
    memset(v25, 0, sizeof(v25));
    v26 = 0;
  }

  sub_1E48C12D0(v25, &v22, &qword_1ECF7F6F0, &qword_1E499C9F0);
  if (v23)
  {
    sub_1E48C1338(v25, &qword_1ECF7F6F0, &qword_1E499C9F0);
    sub_1E48B7448(&v22, a5);
  }

  else
  {
    a5[3] = a2;
    a5[4] = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
    (v16)(boxed_opaque_existential_0, v6, a2);
    sub_1E48C1338(v25, &qword_1ECF7F6F0, &qword_1E499C9F0);
    if (v23)
    {
      sub_1E48C1338(&v22, &qword_1ECF7F6F0, &qword_1E499C9F0);
    }
  }

  return sub_1E48C1338(v27, &qword_1ECF7F6E8, &qword_1E499C9E8);
}

uint64_t sub_1E48D6438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v37 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_1E49984BC();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v36, v12);
  v14 = &v35 - v13;
  v15 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v35 - v25;
  (*(v27 + 16))(v19, v37, a3, v24);
  v28 = swift_dynamicCast();
  v29 = *(v20 + 56);
  if (v28)
  {
    v29(v14, 0, 1, AssociatedTypeWitness);
    (*(v20 + 32))(v26, v14, AssociatedTypeWitness);
    v30 = *(a4 + 24);
    v31 = *(a4 + 8);
    a5[3] = a2;
    a5[4] = v31;
    __swift_allocate_boxed_opaque_existential_0(a5);
    v30(v26, a2, a4);
    return (*(v20 + 8))(v26, AssociatedTypeWitness);
  }

  else
  {
    v29(v14, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v14, v36);
    v33 = *(a4 + 8);
    a5[3] = a2;
    a5[4] = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
    return (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v38, a2);
  }
}

float sub_1E48D6754()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  noise2();
  if (v6 < fabsf(v8))
  {
    if (v8 < -v6)
    {
      v8 = -v6;
    }

    if (v8 >= v6)
    {
      v8 = v6;
    }
  }

  v9 = v4 + ((v5 - v4) * (1.0 - ((v6 - v8) / (v6 + v6))));

  return fmodf(v9, v7);
}

float sub_1E48D67F4@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v9 = *(v2 + 3);
  v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  *(a2 + 24) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  result = *(v5 + 6);
  v8 = *(v5 + 1);
  *boxed_opaque_existential_0 = v4;
  *(boxed_opaque_existential_0 + 1) = v8;
  *(boxed_opaque_existential_0 + 6) = result;
  return result;
}

float sub_1E48D6868(uint64_t a1, float a2)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0.0;
  }

  if (v8 == 1)
  {
    return *(a1 + 36);
  }

  v26 = v7;
  v27 = v6;
  v28 = v5;
  v29 = v4;
  v30 = v2;
  v31 = v3;
  sub_1E48D6948(a1, v21, a2);
  v12 = v21[1];
  v13 = v22;
  v14 = v24;
  v15 = v25;
  v16 = (a2 - v21[0]) + 1.0;
  if (v21[0] <= a2)
  {
    v16 = a2 - v21[0];
  }

  if (v23 <= v21[0])
  {
    *&v11 = v16;
  }

  else
  {
    *&v11 = a2 - v21[0];
  }

  if (v23 <= v21[0])
  {
    v17 = (v23 - v21[0]) + 1.0;
  }

  else
  {
    v17 = v23 - v21[0];
  }

  *&v11 = *&v11 / v17;
  [v25 _solveForInput_];
  v19 = v18;

  v20 = 0.0;
  if (v19 > 0.0)
  {
    v20 = v19;
  }

  if (v19 >= 1.0)
  {
    v20 = 1.0;
  }

  return v12 - ((v12 - v14) * v20);
}

void sub_1E48D6948(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v10 = (a1 + 56);
  v9 = *(a1 + 56);
  v11 = *(a1 + 48);
  v12 = *(a1 + 52);
  v13 = *(a1 + 40);
  v14 = v9;
  v15 = v7;
  v16 = v8;
  v17 = v13;
  while (1)
  {
    v21 = *(v10 - 6);
    v22 = *(v10 - 2);
    v23 = *(v10 - 2);
    v24 = *(v10 - 1);
    v25 = *v10;
    if (v21 <= a3 && v23 >= a3)
    {
      break;
    }

    if (v5 == 1)
    {
      v18 = v22;
      v19 = v25;

      v20 = v13;
      v11 = v7;
      v12 = v8;
      v14 = v20;
      v17 = v19;
      v15 = v23;
      v16 = v24;
    }

    else
    {
      v23 = v15;
      v24 = v16;
    }

    v10 += 2;
    if (!--v5)
    {
      goto LABEL_13;
    }
  }

  v27 = *(v10 - 5);
  v28 = v22;
  v29 = v25;

  v11 = v23;
  v12 = v24;
  v14 = v29;
  v23 = v21;
  v24 = v27;
  v17 = v28;
LABEL_13:
  *a2 = v23;
  *(a2 + 4) = v24;
  *(a2 + 8) = v17;
  *(a2 + 16) = v11;
  *(a2 + 20) = v12;
  *(a2 + 24) = v14;
}

uint64_t sub_1E48D6AAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_1E48D6ACC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E4952DC0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E49987EC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6D0, &qword_1E499C860);
      v7 = sub_1E49980EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E48D6C20(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E48D6C20(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E48E9FB4(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1E48D7194((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 8 * v7 - 8;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 8;
          v11 += 8;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E48EA0AC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_1E48EA0AC((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
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

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_1E48D7194((*a3 + 8 * *v74), (*a3 + 8 * *v76), (*a3 + 8 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v7 - 8;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 8 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 8;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 12);
    *(v30 + 8) = *v30;
    *v30 = v28;
    *(v30 + 4) = v31;
    v30 -= 8;
    if (__CFADD__(v29++, 1))
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

uint64_t sub_1E48D7194(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

char *sub_1E48D7398(char *a1)
{
  v14 = a1;

  sub_1E48D6ACC(&v14);

  v1 = v14;
  v2 = *(v14 + 2);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1E4906EB8(0, v2, 0);
    v3 = v14;
    v4 = objc_opt_self();
    v5 = *MEMORY[0x1E6979EB8];
    v6 = 32;
    do
    {
      v7 = *&v1[v6];
      v8 = [v4 functionWithName_];
      v14 = v3;
      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v12 = v8;
        sub_1E4906EB8((v9 > 1), v10 + 1, 1);
        v8 = v12;
        v3 = v14;
      }

      *(v3 + 2) = v10 + 1;
      v11 = &v3[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
      v6 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E48D7520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E48D7568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E48D75C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E48D760C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E48D7664(uint64_t a1)
{
  result = sub_1E48D768C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E48D768C()
{
  result = qword_1ECF7F6D8;
  if (!qword_1ECF7F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F6D8);
  }

  return result;
}

id sub_1E48D76E8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace;
  type metadata accessor for AnalogClockFaceView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[v4] = v5;
  sub_1E48C8304(a1, &v2[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look]);
  v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode] = 0;
  v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode] = 0;
  v6 = objc_allocWithZone(type metadata accessor for ClockFaceHostView());
  v7 = v5;
  *&v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_hostView] = sub_1E49120F8(v7);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ClockFaceViewController();
  v8 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

  sub_1E48C8304(a1, v12);
  v9 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look;
  swift_beginAccess();
  v10 = v8;
  sub_1E48D8EA8(v12, v8 + v9);
  swift_endAccess();
  sub_1E48D7840();

  sub_1E48C8360(a1);
  sub_1E48C8360(v12);
  return v10;
}

uint64_t sub_1E48D7840()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v44 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look;
  swift_beginAccess();
  sub_1E48C8304(&v0[v13], v53);
  if (v55 == 2)
  {

    sub_1E48B7448(v53, v49);
    sub_1E48B7448(v54, v46);
    v19 = *&v0[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace];
    v20 = v50;
    v21 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v22 = (*(v21 + 40))(v20, v21);
    [v19 setTintColor_];

    v23 = v47;
    v24 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v25 = (*(v24 + 40))(v23, v24);
    v26 = *&v19[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor];
    *&v19[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor] = v25;
    v27 = v25;

    sub_1E494B0D8();
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  if (!v55)
  {

    sub_1E48B7448(v53, v49);
    v14 = v50;
    v15 = v51;
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v16 = (*(v15 + 40))(v14, v15);
    v17 = *&v0[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace];
    [*&v1[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace] setTintColor_];
    v18 = *(v17 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor);
    *(v17 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor) = 0;

    sub_1E494B0D8();
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v29 = qword_1EE2BB458;
  v30 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v29 + v30, v6, &qword_1ECF7F008, &qword_1E499B170);
  v31 = *(v8 + 48);
  if (v31(v6, 1, v7) == 1)
  {
    sub_1E4904BF4(v12);
    if (v31(v6, 1, v7) != 1)
    {
      sub_1E48C1338(v6, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
  }

  v32 = v1;
  v33 = sub_1E499706C();
  v34 = sub_1E499830C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v35 = 136446466;
    sub_1E48C8304(&v1[v13], v49);
    v36 = v33;
    v37 = sub_1E48C60D0();
    v39 = v38;
    sub_1E48C8360(v49);
    v40 = sub_1E48CA094(v37, v39, &v52);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2114;
    *(v35 + 14) = v32;
    v41 = v44;
    *v44 = v32;
    v42 = v32;
    _os_log_impl(&dword_1E48B0000, v36, v34, "Unsupported look. Look: '%{public}s' for '%{public}@'", v35, 0x16u);
    sub_1E48C1338(v41, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v41, -1, -1);
    v43 = v45;
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x1E691CED0](v43, -1, -1);
    MEMORY[0x1E691CED0](v35, -1, -1);
  }

  else
  {
  }

  (*(v8 + 8))(v12, v7);
  return sub_1E48C8360(v53);
}

void sub_1E48D7D70(char a1)
{
  sub_1E48C21E0(a1);
  *(*(v1 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace) + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode) = a1;
  sub_1E494B0D8();
}

uint64_t sub_1E48D7E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AnalogClockFaceViewController();
  v14.receiver = v0;
  v14.super_class = v6;
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  [v0 setOverrideUserInterfaceStyle_];
  v7 = [objc_allocWithZone(type metadata accessor for AnalogClockFaceDateComplicationView()) initWithFrame:0 options:{0.0, 0.0, 0.0, 0.0}];
  sub_1E48D8AE0(v7);
  v8 = sub_1E499816C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E499814C();

  v10 = sub_1E499813C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;

  sub_1E498DD1C(0, 0, v5, &unk_1E499CAA8, v11);
}

uint64_t sub_1E48D7FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1E4996D8C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for Alarm();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v4[17] = v15;
  v16 = *(v15 - 8);
  v4[18] = v16;
  v17 = *(v16 + 64) + 15;
  v4[19] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F738, &unk_1E49A2240);
  v4[20] = v18;
  v19 = *(v18 - 8);
  v4[21] = v19;
  v20 = *(v19 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = sub_1E499814C();
  v4[24] = sub_1E499813C();
  v22 = sub_1E499811C();
  v4[25] = v22;
  v4[26] = v21;

  return MEMORY[0x1EEE6DFA0](sub_1E48D82C0, v22, v21);
}

uint64_t sub_1E48D82C0()
{
  if (qword_1ECF7EAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81910;
  *(v0 + 216) = qword_1ECF81910;

  return MEMORY[0x1EEE6DFA0](sub_1E48D8358, v1, 0);
}

uint64_t sub_1E48D8358()
{
  v1 = v0[27];
  sub_1E48F0638(v0[19]);
  v2 = v0[25];
  v3 = v0[26];

  return MEMORY[0x1EEE6DFA0](sub_1E48D83C0, v2, v3);
}

uint64_t sub_1E48D83C0()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[5];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v6 = v0[23];
  v7 = sub_1E499813C();
  v0[28] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_1E48D84C8;
  v10 = v0[22];
  v11 = v0[20];
  v12 = v0[16];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E48D84C8()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1E48D860C, v5, v4);
}

uint64_t sub_1E48D860C()
{
  v1 = v0[16];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    v2 = v0[24];
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_8:
    v22 = v0[22];
    v23 = v0[19];
    v25 = v0[15];
    v24 = v0[16];
    v26 = v0[14];
    v27 = v0[11];
    v28 = v0[8];

    v29 = v0[1];

    return v29();
  }

  v3 = v0[5];
  sub_1E48D9004(v1, v0[15]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v17 = v0[24];
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[20];
    v21 = v0[15];

    sub_1E48C1338(v21, &qword_1ECF7F728, &unk_1E499CAB0);
    (*(v19 + 8))(v18, v20);
    goto LABEL_8;
  }

  v5 = Strong;
  v6 = v0[14];
  v7 = v0[9];
  v8 = v0[10];
  sub_1E48C12D0(v0[15], v6, &qword_1ECF7F728, &unk_1E499CAB0);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[14];
  if (v9 != 1)
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[6];
    v35 = v0[7];
    sub_1E48D9074(v10, v31);
    LOBYTE(v33) = *(v31 + *(v33 + 20));
    (*(v35 + 16))(v32, v31, v34);
    v36 = objc_allocWithZone(type metadata accessor for AnalogClockFaceAlarmComplicationView());
    sub_1E498B07C(v32, (v33 & 1) == 0, 0.0, 0.0, 0.0, 0.0);
    v38 = v37;
    v39 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace;
    v40 = *&v5[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace];
    v41 = &v40[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
    v42 = *&v40[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
    if (v42)
    {
      sub_1E48D8F04();
      v43 = v38;
      v44 = v42;
      v45 = sub_1E499848C();

      if (v45)
      {
        v14 = v0[15];
        v46 = v0[11];

        sub_1E48D90D8(v46);
        goto LABEL_15;
      }

      v40 = *&v5[v39];
      v41 = &v40[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
      v47 = *&v40[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
      if (v47)
      {
        v48 = v43;
        [v47 removeFromSuperview];
        v49 = *v41;
LABEL_20:
        v51 = v0[15];
        v52 = v0[11];
        *v41 = v43;
        v53 = v38;

        [v40 addSubview_];
        sub_1E494B0D8();

        [v40 setNeedsLayout];
        sub_1E48D90D8(v52);
        v16 = v51;
        goto LABEL_21;
      }
    }

    else
    {
      v43 = v37;
    }

    v50 = v38;
    v49 = 0;
    goto LABEL_20;
  }

  sub_1E48C1338(v10, &qword_1ECF7F728, &unk_1E499CAB0);
  v11 = *&v5[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace];
  v12 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView;
  v13 = *&v11[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
  v14 = v0[15];
  if (v13)
  {
    [v13 removeFromSuperview];
    v15 = *&v11[v12];
    *&v11[v12] = 0;

    [v11 setNeedsLayout];
    v16 = v14;
LABEL_21:
    sub_1E48C1338(v16, &qword_1ECF7F728, &unk_1E499CAB0);

    goto LABEL_22;
  }

LABEL_15:
  sub_1E48C1338(v14, &qword_1ECF7F728, &unk_1E499CAB0);
LABEL_22:
  v54 = v0[23];
  v55 = sub_1E499813C();
  v0[28] = v55;
  v56 = *(MEMORY[0x1E69E8678] + 4);
  v57 = swift_task_alloc();
  v0[29] = v57;
  *v57 = v0;
  v57[1] = sub_1E48D84C8;
  v58 = v0[22];
  v59 = v0[20];
  v60 = v0[16];
  v61 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v60, v55, v61, v59);
}

void sub_1E48D8AE0(id a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace);
  v4 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView;
  v5 = *&v3[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_5:
    v8 = v2;
    v9 = 0;
LABEL_8:
    *&v3[v4] = v2;
    v10 = v8;

    if (v2)
    {
      [v3 addSubview_];
      sub_1E494B0D8();
    }

    [v3 setNeedsLayout];

    goto LABEL_11;
  }

  sub_1E48D8F04();
  v6 = v5;
  v10 = v2;
  v7 = sub_1E499848C();

  if ((v7 & 1) == 0)
  {
    v5 = *&v3[v4];
    a1 = v10;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v8 = a1;
    [v5 removeFromSuperview];
    v9 = *&v3[v4];
    goto LABEL_8;
  }

LABEL_11:
}

void sub_1E48D8C38()
{
  sub_1E48C8360(v0 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace);
}

id sub_1E48D8C78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalogClockFaceViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E48D8D1C(uint64_t a1)
{
  result = sub_1E48D8E68(&qword_1ECF7F708);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E48D8D60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look;
  swift_beginAccess();
  return sub_1E48C8304(v1 + v3, a1);
}

uint64_t sub_1E48D8DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look;
  swift_beginAccess();
  sub_1E48D8EA8(a1, v1 + v3);
  swift_endAccess();
  sub_1E48D7840();
  return sub_1E48C8360(a1);
}

uint64_t sub_1E48D8E24(uint64_t a1)
{
  result = sub_1E48D8E68(&qword_1ECF7F710);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E48D8E68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnalogClockFaceViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E48D8F04()
{
  result = qword_1ECF7F720;
  if (!qword_1ECF7F720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF7F720);
  }

  return result;
}

uint64_t sub_1E48D8F50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48D7FF0(a1, v4, v5, v6);
}

uint64_t sub_1E48D9004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D9074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D90D8(uint64_t a1)
{
  v2 = type metadata accessor for Alarm();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RedModeRenderingMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1E499892C();
  MEMORY[0x1E691C150](v1);
  return sub_1E499896C();
}

unint64_t sub_1E48D91C0()
{
  result = qword_1ECF7F740;
  if (!qword_1ECF7F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F740);
  }

  return result;
}

id sub_1E48D9394(void *a1, uint64_t a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(void))
{
  v9 = sub_1E499709C();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  a3(v12);
  sub_1E499843C();
  sub_1E48D96F8(a4, a5);
  sub_1E49970AC();
  sub_1E499844C();
  [a1 updateTraitsIfNeeded];
  return [a1 layoutIfNeeded];
}

id sub_1E48D9494(uint64_t a1, void *a2)
{
  type metadata accessor for RedModeTrait();
  sub_1E48D96F8(&qword_1ECF7F130, type metadata accessor for RedModeTrait);
  if (sub_1E49983DC())
  {
    return sub_1E48D953C();
  }

  return a2;
}

id sub_1E48D953C()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  v6[0] = 0.0;
  [v0 getHue:0 saturation:0 brightness:v6 alpha:&v5];
  v1 = v5 * v6[0] * 0.5 + 0.5;
  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  if (v1 < 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v2 green:0.0 blue:0.0 alpha:1.0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1E48D9604(double a1, uint64_t a2, void *a3)
{
  type metadata accessor for RedModeCustomColorTrait();
  sub_1E48D96F8(&qword_1ECF7F128, type metadata accessor for RedModeCustomColorTrait);
  if (sub_1E49983DC())
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    return [v4 initWithRed:a1 / 255.0 green:0.0 blue:0.0 alpha:1.0];
  }

  else
  {

    return a3;
  }
}

uint64_t sub_1E48D96F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E48D973C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E49979EC();
  v5 = *(*(v4 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v4, a2);
  if (v6 > 1)
  {
    if (v6 == 2 || v6 == 3)
    {
      goto LABEL_6;
    }
  }

  else if (v6 <= 1)
  {
LABEL_6:
    (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v9);
    sub_1E4997AAC();
  }

  return a1;
}

uint64_t type metadata accessor for City()
{
  result = qword_1ECF7F748;
  if (!qword_1ECF7F748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E48D9958()
{
  result = sub_1E48D9CFC(319, &unk_1ECF813D0, 0x1E6985C40);
  if (v1 <= 0x3F)
  {
    result = sub_1E4996F4C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E48D9A44(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1E499884C() & 1) != 0)
  {
    sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
    v7 = a1[2];
    v8 = a2[2];
    if (sub_1E499848C())
    {
      v9 = *(a3 + 24);

      JUMPOUT(0x1E691A740);
    }
  }

  return 0;
}

uint64_t sub_1E48D9AF4(uint64_t a1)
{
  sub_1E499892C();
  v3 = *v1;
  v4 = v1[1];
  sub_1E4997F5C();
  v5 = v1[2];
  sub_1E499849C();
  v6 = *(a1 + 24);
  sub_1E4996F4C();
  sub_1E48D9D44(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E48D9BAC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1E4997F5C();
  v6 = v2[2];
  sub_1E499849C();
  v7 = *(a2 + 24);
  sub_1E4996F4C();
  sub_1E48D9D44(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  return sub_1E4997E5C();
}

uint64_t sub_1E48D9C48(uint64_t a1, uint64_t a2)
{
  sub_1E499892C();
  v4 = *v2;
  v5 = v2[1];
  sub_1E4997F5C();
  v6 = v2[2];
  sub_1E499849C();
  v7 = *(a2 + 24);
  sub_1E4996F4C();
  sub_1E48D9D44(&unk_1ECF809B0, MEMORY[0x1E6969BC0]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E48D9CFC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E48D9D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ClockFaceKind.suggestedLooks.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {

      return sub_1E48D4D14();
    }

    else
    {

      return sub_1E48D5058();
    }
  }

  else if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E499B670;
    sub_1E49347A0(v3 + 32);
    return v3;
  }

  else if (v1 == 3)
  {

    return sub_1E48D57B4();
  }

  else
  {

    return sub_1E48D5B04();
  }
}

uint64_t ClockFaceKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C617469676964;
  v3 = 0x646C726F77;
  v4 = 0x72616C6F73;
  if (v1 != 3)
  {
    v4 = 2036427888;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676F6C616E61;
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

uint64_t ClockFaceKind.newConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 97) = v3;
  if (v3 <= 1)
  {
    if (v3)
    {
      result = sub_1E48D4D14();
    }

    else
    {
      result = sub_1E48D5058();
    }
  }

  else
  {
    if (v3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E499B670;
      result = sub_1E49347A0(v5 + 32);
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      result = sub_1E48D57B4();
    }

    else
    {
      result = sub_1E48D5B04();
    }
  }

  v5 = result;
LABEL_11:
  if (*(v5 + 16))
  {
    sub_1E48C8304(v5 + 32, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

ClockPoster::ClockFaceKind_optional __swiftcall ClockFaceKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E499873C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1E48DA048(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C617469676964;
  v5 = 0xE500000000000000;
  v6 = 0x646C726F77;
  v7 = 0xE500000000000000;
  v8 = 0x72616C6F73;
  if (v2 != 3)
  {
    v8 = 2036427888;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676F6C616E61;
    v3 = 0xE600000000000000;
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

uint64_t sub_1E48DA0D4()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E48DA1A4()
{
  *v0;
  *v0;
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E48DA260()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

ClockPoster::ClockFaceKind::DescriptorLocalizedStringKey_optional __swiftcall ClockFaceKind.DescriptorLocalizedStringKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E499873C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ClockFaceKind.DescriptorLocalizedStringKey.rawValue.getter()
{
  *v0;
  v1 = 0xD000000000000013;
  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1E48DA4DC()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E48DA59C()
{
  *v0;
  *v0;
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E48DA648()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

void sub_1E48DA710(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "gital";
  v5 = "DIGITAL_CLOCK_TITLE";
  v6 = "SOLAR_CLOCK_TITLE";
  if (v3 != 3)
  {
    v6 = "WORLD_CLOCK_TITLE";
  }

  if (v3 != 2)
  {
    v5 = v6;
  }

  v7 = 0xD000000000000013;
  if (*v1)
  {
    v4 = "ANALOG_CLOCK_TITLE";
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*v1 > 1u)
  {
    v8 = v5;
  }

  else
  {
    v2 = v7;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8 | 0x8000000000000000;
}

unint64_t sub_1E48DA7B4()
{
  result = qword_1ECF7F760;
  if (!qword_1ECF7F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F760);
  }

  return result;
}

unint64_t sub_1E48DA80C()
{
  result = qword_1ECF7F768;
  if (!qword_1ECF7F768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F770, &qword_1E499CDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F768);
  }

  return result;
}

unint64_t sub_1E48DA874()
{
  result = qword_1ECF7F778;
  if (!qword_1ECF7F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E48DAA28()
{
  result = qword_1ECF7F780;
  if (!qword_1ECF7F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F780);
  }

  return result;
}

uint64_t sub_1E48DAA8C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, double a7, double a8)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v17 = result;
  if ((a1 & 1) == 0)
  {
    a8 = 0.0;
  }

  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = *(a5 + 40);
    v37 = *(a5 + 56);
    v20 = (a2 + 32);
    if (qword_1ECF7EB80 != -1)
    {
      swift_once();
    }

    v21 = MEMORY[0x1E69E7CC0];
    *&v19 = 0x4056800000000000;
    v35 = v19;
    v36 = vdupq_n_s64(0x4066800000000000uLL);
    v34 = xmmword_1E499CF40;
    do
    {
      v23 = vaddq_f64(*v20, v36);
      result = UIPointRoundToScale();
      v25 = v24;
      v27 = v26;
      if ((a6 & 1) != 0 || (v24 > 4.0 ? (v28 = v24 < a7 + -4.0) : (v28 = 0), v28))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1E490640C(0, *(v21 + 16) + 1, 1, v21);
          v21 = result;
        }

        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_1E490640C((v29 > 1), v30 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 16) = v30 + 1;
        v22 = v21 + 16 * v30;
        *(v22 + 32) = v25;
        *(v22 + 40) = v27;
      }

      ++v20;
      --v18;
    }

    while (v18);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  if ((a4 & 1) == 0)
  {
    v31 = sub_1E4912D90(v21, a3);

    v21 = v31;
  }

  if (a6)
  {
    [v17 moveToPoint_];
  }

  else
  {
    if (!*(v21 + 16))
    {
      __break(1u);
      return result;
    }

    [v17 moveToPoint_];
  }

  v32 = *(v21 + 16);
  if (v32)
  {
    v33 = (v21 + 40);
    do
    {
      [v17 addLineToPoint_];
      v33 += 2;
      --v32;
    }

    while (v32);
  }

  if (a6)
  {
    [v17 addLineToPoint_];
    [v17 addLineToPoint_];
  }

  return v17;
}

uint64_t sub_1E48DAD54(uint64_t a1, void *a2, char a3)
{
  v5 = sub_1E499741C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = sub_1E49973BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  [a2 capHeight];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F788, &qword_1E499CF60);
  v11 = *(sub_1E49973EC() - 8);
  if (a3 < 0)
  {
    v14 = *(v11 + 72);
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1E499B6D0;
    sub_1E49973AC();
    sub_1E49973FC();
    sub_1E499737C();
    sub_1E49973FC();
    sub_1E49973AC();
    sub_1E49973FC();
    sub_1E499737C();
  }

  else
  {
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1E499CF50;
    sub_1E499737C();
    sub_1E49973FC();
    sub_1E499739C();
    sub_1E49973FC();
    sub_1E499738C();
    sub_1E49973FC();
    sub_1E49973AC();
    sub_1E49973FC();
    sub_1E499737C();
    sub_1E49973FC();
    sub_1E499739C();
    sub_1E49973FC();
    sub_1E499738C();
    sub_1E49973FC();
    sub_1E49973AC();
  }

  sub_1E49973FC();
  v16 = sub_1E4997CFC();
  sub_1E499740C();
  sub_1E499742C();
  return v16;
}

uint64_t sub_1E48DB224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E48DB274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1E48DB2FC()
{
  v6 = MEMORY[0x1E69E7CC0];
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E49980DC();
  }

  sub_1E49980FC();
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E49980DC();
  }

  sub_1E49980FC();
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E49980DC();
  }

  sub_1E49980FC();
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E49980DC();
  }

  sub_1E49980FC();
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E49980DC();
  }

  sub_1E49980FC();
  return v6;
}

void sub_1E48DB53C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E49986EC())
    {

      if (!i)
      {
        break;
      }

      v3 = 4;
      while (1)
      {
        v4 = v3 - 4;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1E691BDE0](v3 - 4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v5 = *(v1 + 8 * v3);
        }

        v6 = v5;
        v7 = v3 - 3;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = *(v0 + 16);
        if (v8 >> 62)
        {
          if (v8 < 0)
          {
            v11 = *(v0 + 16);
          }

          if (v4 >= sub_1E49986EC())
          {
LABEL_23:

            goto LABEL_24;
          }
        }

        else if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1E691BDE0](v3 - 4, v8);
        }

        else
        {
          if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v9 = *(v8 + 8 * v3);
        }

        v10 = v9;
        [v9 setTextColor_];

        ++v3;
        if (v7 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

LABEL_24:
  }

  else
  {
    __break(1u);
  }
}

void sub_1E48DB6AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v34 - v5;
  v7 = type metadata accessor for TimeString(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  swift_beginAccess();
  sub_1E48DBD34(v1 + v13, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E48DBDA4(v6);
    v1 = *(v1 + 16);
    if (v1 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
    {
      for (j = 0; ; ++j)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1E691BDE0](j, v1);
        }

        else
        {
          if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v16 = *(v1 + 8 * j + 32);
        }

        v17 = v16;
        v18 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v16 setText_];

        if (v18 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }
  }

  else
  {
    sub_1E48BF0EC(v6, v12);
    v19 = v12[6];
    v20 = v12[7];
    v21 = sub_1E4997F6C();
    v22 = *v12;
    v23 = v12[1];
    if (v21 == 2)
    {
      v24 = v12[1];
    }

    else
    {
      v35 = 9142498;
      v36 = 0xA300000000000000;
      MEMORY[0x1E691B7A0](v22, v23);
      v22 = v35;
      v23 = v36;
    }

    v25 = HIBYTE(v23) & 0xF;
    v35 = v22;
    v36 = v23;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    v37 = 0;
    v38 = v25;
    sub_1E4997F9C();
    if (v26)
    {
      v27 = 0;
      do
      {
        if (__OFADD__(v27, 1))
        {
          goto LABEL_38;
        }

        v28 = *(v1 + 16);
        if (v28 >> 62)
        {
          if (v28 < 0)
          {
            v33 = *(v1 + 16);
          }

          if (v27 >= sub_1E49986EC())
          {
LABEL_33:

            break;
          }
        }

        else if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        if ((v28 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1E691BDE0](v27, v28);
        }

        else
        {
          if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v29 = *(v28 + 8 * v27 + 32);
        }

        v30 = v29;
        v34[1] = 0;
        v34[2] = 0xE000000000000000;
        sub_1E4997E7C();

        v31 = sub_1E4997EAC();

        [v30 setText_];

        [v30 sizeToFit];
        sub_1E4997F9C();
        ++v27;
      }

      while (v32);
    }

    sub_1E48DBE0C(v12);
  }
}

uint64_t sub_1E48DBA70()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_1E48DBDA4(v0 + OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RollingTimeLabel()
{
  result = qword_1ECF7F790;
  if (!qword_1ECF7F790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48DBB40()
{
  sub_1E48DBBEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E48DBBEC()
{
  if (!qword_1ECF7EBC8)
  {
    type metadata accessor for TimeString(255);
    v0 = sub_1E49984BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF7EBC8);
    }
  }
}

void sub_1E48DBC44(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = a1;

  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
  {
    for (j = 0; ; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E691BDE0](j, v4);
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v7 setFont_];

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1E48DBD34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48DBDA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48DBE0C(uint64_t a1)
{
  v2 = type metadata accessor for TimeString(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48DBE68(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
  v5 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v6);
  v8 = (&v24 - v7);
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(v26 + 56);
    v20 = (*(v26 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = type metadata accessor for WorldViewModel.Pin(0);
    sub_1E48EC724(v19 + *(*(v23 - 8) + 72) * v18, v8 + *(v24 + 48), type metadata accessor for WorldViewModel.Pin);
    *v8 = v21;
    v8[1] = v22;
    v25(v8);
    result = sub_1E48C1338(v8, &qword_1ECF7F880, &qword_1E499D630);
    if (v3)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48DC03C()
{
  sub_1E499892C();
  MEMORY[0x1E691C150](0);
  return sub_1E499896C();
}

uint64_t sub_1E48DC080()
{
  sub_1E499892C();
  MEMORY[0x1E691C150](0);
  return sub_1E499896C();
}

uint64_t sub_1E48DC0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1802465132 && a2 == 0xE400000000000000)
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

uint64_t sub_1E48DC170(uint64_t a1)
{
  v2 = sub_1E48EB508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E48DC1AC(uint64_t a1)
{
  v2 = sub_1E48EB508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E48DC1E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F858, &qword_1E499D5A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48EB508();
  sub_1E49989BC();
  if (!v2)
  {
    sub_1E48EB55C();
    sub_1E499878C();
    (*(v6 + 8))(v10, v5);
    v12 = v25;
    v31 = v24;
    v32 = v25;
    v13 = v26;
    v33 = v26;
    v14 = v20;
    v15 = v21;
    v27 = v20;
    v28 = v21;
    v16 = v23;
    v17 = v22;
    v29 = v22;
    v30 = v23;
    *(a2 + 64) = v24;
    *(a2 + 80) = v12;
    *(a2 + 96) = v13;
    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = v17;
    *(a2 + 48) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

__n128 sub_1E48DC3A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1E48DC410(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F870, &unk_1E499D5B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48EB508();
  sub_1E49989CC();
  sub_1E48EB5B0();
  sub_1E49987DC();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1E48DC558(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v66 - v7;
  v9 = type metadata accessor for RollingClockViewModel();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + 120) = sub_1E48B81A4();
  v12 = *(v9 + 48);
  v13 = *(v9 + 52);
  swift_allocObject();
  *(v1 + 128) = sub_1E48B81A4();
  *(v1 + 176) = 256;
  *(v1 + 336) = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  v15 = type metadata accessor for WorldViewModel.Pin(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v2 + v14, 1, 1, v15);
  v16(v2 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin, 1, 1, v15);
  *(v2 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate) = MEMORY[0x1E69E7CC8];
  v17 = v2 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *v17 = 0;
  *(v17 + 24) = 0;
  v18 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  v19 = sub_1E4996D8C();
  (*(*(v19 - 8) + 56))(v2 + v18, 1, 1, v19);
  *(v2 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask) = 0;
  sub_1E4996FFC();
  sub_1E48C9DB4(a1, v2 + 16);
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  LOBYTE(v76) = 3;
  LOBYTE(v18) = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(&v70);
  v67 = a1;
  if (v18)
  {
    v20 = 0xEE00656C62617A69;
    v21 = 0x6D6F747375636E75;
  }

  else
  {
    v21 = sub_1E4921538();
    if (v22)
    {
      v20 = v22;
    }

    else
    {
      v23 = sub_1E4921408();
      v24 = sub_1E49348B8(v23);
      v20 = v25;

      v21 = v24;
    }
  }

  sub_1E48EAF00(v21, v20, &v70);

  v26 = objc_opt_self();
  v27 = [v26 mainScreen];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = [v26 mainScreen];
  v37 = [v36 traitCollection];

  [v37 displayScale];
  sub_1E4994480(v68, v29, v31, v33, v35, 40.666, 95.0, 44.667, 41.0);
  v38 = v68[1];
  *(v2 + 144) = v68[0];
  *(v2 + 160) = v38;
  v39 = v76;
  v40 = v78;
  *(v2 + 296) = v77;
  *(v2 + 312) = v40;
  v41 = v73;
  *(v2 + 216) = v72;
  *(v2 + 232) = v41;
  v42 = v75;
  *(v2 + 248) = v74;
  v43 = v69;
  *(v2 + 328) = v79;
  *(v2 + 264) = v42;
  *(v2 + 280) = v39;
  v44 = v71;
  *(v2 + 184) = v70;
  *(v2 + 200) = v44;
  *(v2 + 136) = v43 == 1;
  v45 = sub_1E499816C();
  v46 = *(*(v45 - 8) + 56);
  v46(v8, 1, 1, v45);
  v47 = swift_allocObject();
  swift_weakInit();
  sub_1E499814C();
  sub_1E48CCDD4(&v70, v68);

  v48 = sub_1E499813C();
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E85E0];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v47;

  sub_1E498DD1C(0, 0, v8, &unk_1E499D778, v49);

  v46(v8, 1, 1, v45);
  v51 = swift_allocObject();
  swift_weakInit();

  v52 = sub_1E499813C();
  v53 = swift_allocObject();
  v53[2] = v52;
  v53[3] = MEMORY[0x1E69E85E0];
  v53[4] = v51;

  sub_1E498DD1C(0, 0, v8, &unk_1E499D788, v53);

  v46(v8, 1, 1, v45);
  v54 = swift_allocObject();
  swift_weakInit();

  v55 = sub_1E499813C();
  v56 = swift_allocObject();
  v56[2] = v55;
  v57 = MEMORY[0x1E69E85E0];
  v56[3] = MEMORY[0x1E69E85E0];
  v56[4] = v54;

  sub_1E498DD1C(0, 0, v8, &unk_1E499D798, v56);

  v46(v8, 1, 1, v45);
  v58 = swift_allocObject();
  swift_weakInit();

  v59 = sub_1E499813C();
  v60 = swift_allocObject();
  v61 = v77;
  *(v60 + 136) = v76;
  *(v60 + 152) = v61;
  *(v60 + 168) = v78;
  v62 = v73;
  *(v60 + 72) = v72;
  *(v60 + 88) = v62;
  v63 = v75;
  *(v60 + 104) = v74;
  *(v60 + 120) = v63;
  v64 = v71;
  *(v60 + 40) = v70;
  *(v60 + 16) = v59;
  *(v60 + 24) = v57;
  *(v60 + 32) = v58;
  *(v60 + 184) = v79;
  *(v60 + 56) = v64;

  sub_1E498DD1C(0, 0, v8, &unk_1E499D7A8, v60);

  if (qword_1ECF7EB50 != -1)
  {
    swift_once();
  }

  sub_1E4954D1C();
  sub_1E48C9E10(v67);
  return v2;
}

uint64_t sub_1E48DCCCC(uint64_t a1)
{
  if (*(v1 + 120) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E48DCE00(uint64_t a1)
{
  if (*(v1 + 128) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E48DCF34(uint64_t result)
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

uint64_t sub_1E48DD044(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 177) == v2)
  {
    *(v1 + 177) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E48DD168(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 336);

  v5 = sub_1E498D7E8(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 336);
    *(v1 + 336) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E48DD2B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v8, v7, &qword_1ECF7F848, &qword_1E499D520);
  v9 = sub_1E48EB830(v7, a1);
  sub_1E48C1338(v7, &qword_1ECF7F848, &qword_1E499D520);
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
    sub_1E48C12D0(a1, v7, &qword_1ECF7F848, &qword_1E499D520);
    swift_beginAccess();
    sub_1E48EC0CC(v7, v1 + v8, &qword_1ECF7F848, &qword_1E499D520);
    swift_endAccess();
  }

  return sub_1E48C1338(a1, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48DD4B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v8, v7, &qword_1ECF7F848, &qword_1E499D520);
  v9 = sub_1E48EB830(v7, a1);
  sub_1E48C1338(v7, &qword_1ECF7F848, &qword_1E499D520);
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
    sub_1E48C12D0(a1, v7, &qword_1ECF7F848, &qword_1E499D520);
    swift_beginAccess();
    sub_1E48EC048(v7, v1 + v8, &qword_1ECF7F848, &qword_1E499D520);
    swift_endAccess();
    sub_1E48E4E8C();
    sub_1E48E52C0();
    sub_1E48C1338(v7, &qword_1ECF7F848, &qword_1E499D520);
  }

  return sub_1E48C1338(a1, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48DD6D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1E48EA770(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E48DD828(uint64_t a1)
{
  swift_beginAccess();
  sub_1E48C9DB4(v1 + 16, v7);
  v3 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C9E10(v7);
  if (v3)
  {
    sub_1E48C9DB4(a1, v7);
    swift_beginAccess();
    sub_1E48EC818(v7, v1 + 16);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    v7[0] = v1;
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }

  return sub_1E48C9E10(a1);
}

uint64_t sub_1E48DD99C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 144), v12);
  if (result)
  {
    *(v4 + 144) = a1;
    *(v4 + 152) = a2;
    *(v4 + 160) = a3;
    *(v4 + 168) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E48DDAE4(uint64_t a1)
{
  v3 = (v1 + 184);
  v4 = *(v1 + 296);
  v5 = *(v1 + 312);
  v6 = *(v1 + 264);
  v22[6] = *(v1 + 280);
  v22[7] = v4;
  v22[8] = v5;
  v23 = *(v1 + 328);
  v7 = *(v1 + 232);
  v22[2] = *(v1 + 216);
  v22[3] = v7;
  v22[4] = *(v1 + 248);
  v22[5] = v6;
  v8 = *(v1 + 200);
  v22[0] = *(v1 + 184);
  v22[1] = v8;
  if (sub_1E4994938(v22, a1))
  {
    v9 = *(v1 + 296);
    v20[6] = *(v1 + 280);
    v20[7] = v9;
    v20[8] = *(v1 + 312);
    v21 = *(v1 + 328);
    v10 = *(v1 + 232);
    v20[2] = *(v1 + 216);
    v20[3] = v10;
    v11 = *(v1 + 264);
    v20[4] = *(v1 + 248);
    v20[5] = v11;
    v12 = *(v1 + 200);
    v20[0] = *v3;
    v20[1] = v12;
    v13 = *(a1 + 112);
    *(v1 + 280) = *(a1 + 96);
    *(v1 + 296) = v13;
    *(v1 + 312) = *(a1 + 128);
    *(v1 + 328) = *(a1 + 144);
    v14 = *(a1 + 48);
    *(v1 + 216) = *(a1 + 32);
    *(v1 + 232) = v14;
    v15 = *(a1 + 80);
    *(v1 + 248) = *(a1 + 64);
    *(v1 + 264) = v15;
    v16 = *(a1 + 16);
    *v3 = *a1;
    *(v1 + 200) = v16;
    return sub_1E48EB6DC(v20);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v19);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
    sub_1E4996FBC();
    sub_1E48EB6DC(a1);
  }
}

uint64_t sub_1E48DDCA8(uint64_t result)
{
  if (*(v1 + 136) == (result & 1))
  {
    *(v1 + 136) = result & 1;
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

uint64_t sub_1E48DDDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8C8, &qword_1E499D7E0);
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8D0, &unk_1E499D7E8);
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = sub_1E499814C();
  v4[18] = sub_1E499813C();
  v12 = sub_1E499811C();
  v4[19] = v12;
  v4[20] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E48DDF24, v12, v11);
}

uint64_t sub_1E48DDF24()
{
  if (qword_1ECF7EAE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81918;
  *(v0 + 168) = qword_1ECF81918;

  return MEMORY[0x1EEE6DFA0](sub_1E48DDFBC, v1, 0);
}

uint64_t sub_1E48DDFBC()
{
  v1 = v0[21];
  sub_1E48F43AC(v0[13]);
  v2 = v0[19];
  v3 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1E48DE024, v2, v3);
}

uint64_t sub_1E48DE024()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[22] = 0;
  v6 = v0[17];
  v7 = sub_1E499813C();
  v0[23] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_1E48DE12C;
  v10 = v0[16];
  v11 = v0[14];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v7, v12, v11);
}

uint64_t sub_1E48DE12C()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E48DE270, v5, v4);
}

uint64_t sub_1E48DE270()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    v3 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

LABEL_17:
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);

    v16 = *(v0 + 8);

    return v16();
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 80);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v13 = *(v0 + 144);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    sub_1E48EC78C(v2, v1);
    goto LABEL_17;
  }

  v8 = Strong;
  v9 = Strong + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v10 = *(Strong + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 8);
  if (v10)
  {
    if (v1)
    {
      if ((v2 & 1) == (*v9 & 1))
      {
        v11 = *(v10 + 16);
        if (v11 == *(v1 + 16))
        {
          if (v11)
          {
            v12 = v10 == v1;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            v27 = (v10 + 32);
            v28 = (v1 + 32);
            do
            {
              v29 = vmovn_s64(vceqq_f64(*v27, *v28));
              if ((v29.i32[0] & v29.i32[1] & 1) == 0)
              {
                goto LABEL_21;
              }

              ++v28;
              ++v27;
            }

            while (--v11);
          }

          if (*(v9 + 24))
          {
            if (v5)
            {
              goto LABEL_25;
            }
          }

          else if ((v5 & 1) == 0 && *(v9 + 16) == v4)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

  else if (!v1)
  {
LABEL_25:
    *v9 = v2;
    *(v9 + 8) = v1;
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;

    v18 = *(v0 + 176);
    goto LABEL_22;
  }

LABEL_21:
  v18 = *(v0 + 176);
  swift_getKeyPath();
  v19 = swift_task_alloc();
  *(v19 + 16) = v8;
  *(v19 + 24) = v2;
  *(v19 + 32) = v1;
  *(v19 + 40) = v4;
  *(v19 + 48) = v5;
  *(v0 + 72) = v8;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FBC();
  sub_1E48EC78C(v2, v1);

LABEL_22:
  *(v0 + 176) = v18;
  v20 = *(v0 + 136);
  v21 = sub_1E499813C();
  *(v0 + 184) = v21;
  v22 = *(MEMORY[0x1E69E8678] + 4);
  v23 = swift_task_alloc();
  *(v0 + 192) = v23;
  *v23 = v0;
  v23[1] = sub_1E48DE12C;
  v24 = *(v0 + 128);
  v25 = *(v0 + 112);
  v26 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 16, v21, v26, v25);
}

uint64_t sub_1E48DE5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for WorldViewModel.Pin(0);
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B8, &qword_1E499D7D0);
  v4[25] = v9;
  v10 = *(v9 - 8);
  v4[26] = v10;
  v11 = *(v10 + 64) + 15;
  v4[27] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8C0, &qword_1E499D7D8);
  v4[28] = v12;
  v13 = *(v12 - 8);
  v4[29] = v13;
  v14 = *(v13 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = sub_1E499814C();
  v4[32] = sub_1E499813C();
  v16 = sub_1E499811C();
  v4[33] = v16;
  v4[34] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1E48DE7E4, v16, v15);
}

uint64_t sub_1E48DE7E4()
{
  if (qword_1ECF7EB50 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[19];
  sub_1E4954870(v2);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[35] = 0;
  v6 = v0[31];
  v7 = sub_1E499813C();
  v0[36] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[37] = v9;
  *v9 = v0;
  v9[1] = sub_1E48DE940;
  v10 = v0[30];
  v11 = v0[28];
  v12 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 11, v7, v12, v11);
}

uint64_t sub_1E48DE940()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 272);
  v5 = *(v1 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1E48DEA84, v5, v4);
}

uint64_t sub_1E48DEA84()
{
  v1 = v0 + 11;
  v2 = v0[11];
  if (v2 == 1)
  {
    v3 = v0[32];
    (*(v0[29] + 8))(v0[30], v0[28]);

LABEL_7:
    v14 = v0[30];
    v15 = v0[27];
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];

    v19 = v0[1];

    return v19();
  }

  v4 = v0[19];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v13 = v0[32];
    (*(v0[29] + 8))(v0[30], v0[28]);

    sub_1E48EC714(v2);
    goto LABEL_7;
  }

  v6 = Strong;
  swift_getKeyPath();
  v0[13] = v6;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v7 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v77 = v7;
  v8 = *(v6 + v7);

  v10 = sub_1E48DF1AC(v9);
  v0[12] = v10;
  v11 = v0[35];
  if (v2)
  {

    sub_1E48EBB14(v2, (v0 + 12), v6);
    v73 = v11;

    sub_1E48EC714(v2);
    v12 = v0[12];
  }

  else
  {
    v12 = v10;
    v73 = v0[35];
  }

  v21 = v12 + 56;
  v22 = -1;
  v23 = -1 << *(v12 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v12 + 56);
  v25 = (63 - v23) >> 6;

  v30 = 0;
  v74 = v25;
  v75 = v12 + 56;
  v76 = v12;
  while (1)
  {
    if (!v24)
    {
      while (1)
      {
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v33 >= v25)
        {
          break;
        }

        v24 = *(v21 + 8 * v33);
        ++v30;
        if (v24)
        {
          v30 = v33;
          goto LABEL_22;
        }
      }

      sub_1E48E4E8C();
      sub_1E48E52C0();

      v0[35] = v73;
      v68 = v0[31];
      v69 = sub_1E499813C();
      v0[36] = v69;
      v70 = *(MEMORY[0x1E69E8678] + 4);
      v71 = swift_task_alloc();
      v0[37] = v71;
      *v71 = v0;
      v71[1] = sub_1E48DE940;
      v72 = v0[30];
      v29 = v0[28];
      v28 = MEMORY[0x1E69E85E0];
      v26 = v1;
      v27 = v69;

      return MEMORY[0x1EEE6D9C8](v26, v27, v28, v29);
    }

LABEL_22:
    v34 = v0[20];
    v35 = v0[21];
    v79 = v34;
    v80 = v0[24];
    v36 = (*(v12 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v24)))));
    v38 = *v36;
    v37 = v36[1];
    v78 = *(v35 + 56);
    v78();
    swift_getKeyPath();
    v0[14] = v6;
    sub_1E4996FCC();

    v0[15] = v6;
    swift_getKeyPath();
    sub_1E4996FEC();

    v39 = v77;
    swift_beginAccess();
    v40 = (*(v35 + 48))(v80, 1, v79);
    v41 = v0[24];
    if (v40 == 1)
    {
      sub_1E48C1338(v41, &qword_1ECF7F848, &qword_1E499D520);
      v42 = *(v6 + v77);
      v43 = sub_1E4948350(v38, v37);
      if (v44)
      {
        v45 = v43;
        v46 = *(v6 + v77);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v6 + v77);
        v1 = v0 + 11;
        v0[17] = v48;
        *(v6 + v77) = 0x8000000000000000;
        v12 = v76;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1E4987F18();
          v48 = v0[17];
        }

        sub_1E48EC64C(*(v48 + 56) + *(v0[21] + 72) * v45, v0[23], type metadata accessor for WorldViewModel.Pin);
        sub_1E4985130(v45, v48);
        v49 = *(v6 + v77);
        *(v6 + v77) = v48;

        v31 = 0;
      }

      else
      {
        v31 = 1;
        v1 = v0 + 11;
        v12 = v76;
      }

      v32 = v0[23];
      (v78)(v32, v31, 1, v0[20]);
      sub_1E48C1338(v32, &qword_1ECF7F848, &qword_1E499D520);
      goto LABEL_16;
    }

    sub_1E48EC64C(v41, v0[22], type metadata accessor for WorldViewModel.Pin);
    v50 = *(v6 + v77);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v6 + v77);
    v0[18] = v52;
    *(v6 + v77) = 0x8000000000000000;
    v26 = sub_1E4948350(v38, v37);
    v53 = *(v52 + 16);
    v54 = (v27 & 1) == 0;
    v55 = __OFADD__(v53, v54);
    v56 = v53 + v54;
    if (v55)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return MEMORY[0x1EEE6D9C8](v26, v27, v28, v29);
    }

    v57 = v27;
    if (*(v52 + 24) >= v56)
    {
      v1 = v0 + 11;
      if ((v51 & 1) == 0)
      {
        v67 = v26;
        sub_1E4987F18();
        v26 = v67;
        v39 = v77;
      }

      goto LABEL_33;
    }

    v1 = v0 + 11;
    sub_1E4982A60(v56, v51);
    v58 = v0[18];
    v26 = sub_1E4948350(v38, v37);
    if ((v57 & 1) != (v59 & 1))
    {
      break;
    }

LABEL_33:
    v60 = v0[18];
    v62 = v0[21];
    v61 = v0[22];
    v12 = v76;
    if (v57)
    {
      sub_1E48EB76C(v0[22], v60[7] + *(v62 + 72) * v26);
    }

    else
    {
      v60[(v26 >> 6) + 8] |= 1 << v26;
      v63 = (v60[6] + 16 * v26);
      *v63 = v38;
      v63[1] = v37;
      v26 = sub_1E48EC64C(v61, v60[7] + *(v62 + 72) * v26, type metadata accessor for WorldViewModel.Pin);
      v64 = v60[2];
      v55 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v55)
      {
        goto LABEL_46;
      }

      v60[2] = v65;
    }

    v66 = *(v6 + v39);
    *(v6 + v39) = v60;

LABEL_16:
    v21 = v75;
    v24 &= v24 - 1;
    swift_endAccess();
    v1[5] = v6;
    swift_getKeyPath();
    sub_1E4996FDC();

    v25 = v74;
  }

  type metadata accessor for CLLocationCoordinate2D(0);

  return sub_1E499887C();
}

uint64_t sub_1E48DF1AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for CLLocationCoordinate2D(0);
  v4 = v3;
  v5 = sub_1E48E7460(&qword_1ECF7F840, type metadata accessor for CLLocationCoordinate2D);
  result = MEMORY[0x1E691BA70](v2, v4, v5);
  v7 = 0;
  v16 = result;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  for (i = (v8 + 63) >> 6; v10; result = sub_1E4957220(v15, *v14, v14[1]))
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      return v16;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48DF2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v45 = &v44 - v8;
  v49 = type metadata accessor for WorldViewModel.Pin(0);
  v46 = *(v49 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v49, v10);
  v44 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44 - v14;
  *&v18 = MEMORY[0x1EEE9AC00](v16, v17).n128_u64[0];
  v20 = &v44 - v19;
  v21 = *(a1 + 16);
  [v21 coordinate];
  sub_1E48EA1B0(v22, v23);
  sub_1E48E61C4(a1, v20);
  [v21 coordinate];
  v25 = v24;
  v27 = v26;
  swift_getKeyPath();
  v48 = a3;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v28 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v29 = *(a3 + v28);
  if (*(v29 + 16))
  {
    v30 = sub_1E4948350(v25, v27);
    if (v31)
    {
      v32 = *(v29 + 56) + *(v46 + 72) * v30;
      v33 = v44;
      sub_1E48EC724(v32, v44, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC64C(v33, v15, type metadata accessor for WorldViewModel.Pin);
      v20[17] = v15[17];
      v34 = v49;
      v35 = &v15[*(v49 + 36)];
      v44 = *v35;
      v36 = v35[8];
      sub_1E48EC6B4(v15, type metadata accessor for WorldViewModel.Pin);
      v37 = &v20[*(v34 + 36)];
      *v37 = v44;
      v37[8] = v36;
    }
  }

  [v21 coordinate];
  v39 = v38;
  v41 = v40;
  v42 = v45;
  sub_1E48EC724(v20, v45, type metadata accessor for WorldViewModel.Pin);
  (*(v46 + 56))(v42, 0, 1, v49);
  swift_getKeyPath();
  v47 = a3;
  sub_1E4996FCC();

  v47 = a3;
  swift_getKeyPath();
  sub_1E4996FEC();

  swift_beginAccess();
  sub_1E49702F8(v42, v39, v41);
  swift_endAccess();
  v47 = a3;
  swift_getKeyPath();
  sub_1E4996FDC();

  return sub_1E48EC6B4(v20, type metadata accessor for WorldViewModel.Pin);
}

uint64_t sub_1E48DF70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_1E4996D8C();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v4[16] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v4[26] = v15;
  v16 = *(v15 - 8);
  v4[27] = v16;
  v17 = *(v16 + 64) + 15;
  v4[28] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F738, &unk_1E49A2240);
  v4[29] = v18;
  v19 = *(v18 - 8);
  v4[30] = v19;
  v20 = *(v19 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = sub_1E499814C();
  v4[33] = sub_1E499813C();
  v22 = sub_1E499811C();
  v4[34] = v22;
  v4[35] = v21;

  return MEMORY[0x1EEE6DFA0](sub_1E48DFA0C, v22, v21);
}

uint64_t sub_1E48DFA0C()
{
  if (qword_1ECF7EAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81910;
  *(v0 + 288) = qword_1ECF81910;

  return MEMORY[0x1EEE6DFA0](sub_1E48DFAA4, v1, 0);
}

uint64_t sub_1E48DFAA4()
{
  v1 = v0[36];
  sub_1E48F0638(v0[28]);
  v2 = v0[34];
  v3 = v0[35];

  return MEMORY[0x1EEE6DFA0](sub_1E48DFB0C, v2, v3);
}

uint64_t sub_1E48DFB0C()
{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[12];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[37] = 0;
  v6 = v0[32];
  v7 = sub_1E499813C();
  v0[38] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[39] = v9;
  *v9 = v0;
  v9[1] = sub_1E48DFC18;
  v10 = v0[31];
  v11 = v0[29];
  v12 = v0[25];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E48DFC18()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 304);
  v7 = *v0;

  v4 = *(v1 + 280);
  v5 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1E48DFD5C, v5, v4);
}

uint64_t sub_1E48DFD5C()
{
  v1 = v0[25];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    v2 = v0[33];
    (*(v0[30] + 8))(v0[31], v0[29]);

LABEL_7:
    v16 = v0[31];
    v17 = v0[28];
    v19 = v0[24];
    v18 = v0[25];
    v20 = v0[23];
    v22 = v0[19];
    v21 = v0[20];
    v24 = v0[17];
    v23 = v0[18];
    v25 = v0[15];

    v26 = v0[1];

    return v26();
  }

  v3 = v0[12];
  sub_1E48C15C8(v1, v0[24], &qword_1ECF7F728, &unk_1E499CAB0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v11 = v0[33];
    v13 = v0[30];
    v12 = v0[31];
    v14 = v0[29];
    v15 = v0[24];

    sub_1E48C1338(v15, &qword_1ECF7F728, &unk_1E499CAB0);
    (*(v13 + 8))(v12, v14);
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = v0[23];
  sub_1E48C12D0(v0[24], v6, &qword_1ECF7F728, &unk_1E499CAB0);
  v7 = type metadata accessor for Alarm();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v9 = v0[23];
  if (v8 == 1)
  {
    sub_1E48C1338(v0[23], &qword_1ECF7F728, &unk_1E499CAB0);
    v10 = 1;
  }

  else
  {
    (*(v0[14] + 16))(v0[20], v0[23], v0[13]);
    sub_1E48EC6B4(v9, type metadata accessor for Alarm);
    v10 = 0;
  }

  v29 = v0[19];
  v28 = v0[20];
  v31 = v0[16];
  v30 = v0[17];
  v32 = v0[13];
  v33 = v0[14];
  (*(v33 + 56))(v28, v10, 1, v32);
  v34 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  v63 = v34;
  v64 = v5;
  sub_1E48C12D0(v5 + v34, v29, &qword_1ECF809D0, &qword_1E499D6C0);
  v35 = *(v31 + 48);
  sub_1E48C12D0(v29, v30, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(v28, v30 + v35, &qword_1ECF809D0, &qword_1E499D6C0);
  v36 = *(v33 + 48);
  if (v36(v30, 1, v32) == 1)
  {
    v37 = v0[13];
    sub_1E48C1338(v0[19], &qword_1ECF809D0, &qword_1E499D6C0);
    if (v36(v30 + v35, 1, v37) == 1)
    {
      sub_1E48C1338(v0[17], &qword_1ECF809D0, &qword_1E499D6C0);
LABEL_19:
      v54 = v0[20];
      sub_1E48C1338(v0[24], &qword_1ECF7F728, &unk_1E499CAB0);
      swift_beginAccess();
      sub_1E48EC048(v54, v64 + v63, &qword_1ECF809D0, &qword_1E499D6C0);
      swift_endAccess();

      v44 = v0[37];
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v38 = v0[13];
  sub_1E48C12D0(v0[17], v0[18], &qword_1ECF809D0, &qword_1E499D6C0);
  v39 = v36(v30 + v35, 1, v38);
  v40 = v0[18];
  v41 = v0[19];
  if (v39 == 1)
  {
    v42 = v0[13];
    v43 = v0[14];
    sub_1E48C1338(v0[19], &qword_1ECF809D0, &qword_1E499D6C0);
    (*(v43 + 8))(v40, v42);
LABEL_16:
    sub_1E48C1338(v0[17], &qword_1ECF7F898, &qword_1E499D6F0);
    goto LABEL_17;
  }

  v48 = v0[17];
  v49 = v0[14];
  v50 = v0[15];
  v51 = v0[13];
  (*(v49 + 32))(v50, v30 + v35, v51);
  sub_1E48E7460(&qword_1ECF7F440, MEMORY[0x1E6969530]);
  v52 = sub_1E4997E9C();
  v53 = *(v49 + 8);
  v53(v50, v51);
  sub_1E48C1338(v41, &qword_1ECF809D0, &qword_1E499D6C0);
  v53(v40, v51);
  sub_1E48C1338(v48, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v52)
  {
    goto LABEL_19;
  }

LABEL_17:
  v44 = v0[37];
  v45 = v0[24];
  v46 = v0[20];
  swift_getKeyPath();
  v47 = swift_task_alloc();
  *(v47 + 16) = v64;
  *(v47 + 24) = v46;
  v0[11] = v64;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FBC();

  sub_1E48C1338(v45, &qword_1ECF7F728, &unk_1E499CAB0);

LABEL_20:
  sub_1E48C1338(v0[20], &qword_1ECF809D0, &qword_1E499D6C0);
  v0[37] = v44;
  v55 = v0[32];
  v56 = sub_1E499813C();
  v0[38] = v56;
  v57 = *(MEMORY[0x1E69E8678] + 4);
  v58 = swift_task_alloc();
  v0[39] = v58;
  *v58 = v0;
  v58[1] = sub_1E48DFC18;
  v59 = v0[31];
  v60 = v0[29];
  v61 = v0[25];
  v62 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v61, v56, v62, v60);
}

uint64_t sub_1E48E0444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = type metadata accessor for WorldViewModel.Pin(0);
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F850, &qword_1E499D578);
  v5[35] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0) - 8) + 64) + 15;
  v5[46] = swift_task_alloc();
  v13 = type metadata accessor for CurrentLocationResult(0);
  v5[47] = v13;
  v14 = *(v13 - 8);
  v5[48] = v14;
  v15 = *(v14 + 64) + 15;
  v5[49] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0) - 8) + 64) + 15;
  v5[50] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A0, &unk_1E499D7C0);
  v5[51] = v17;
  v18 = *(v17 - 8);
  v5[52] = v18;
  v19 = *(v18 + 64) + 15;
  v5[53] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B0, &unk_1E49A62C0);
  v5[54] = v20;
  v21 = *(v20 - 8);
  v5[55] = v21;
  v22 = *(v21 + 64) + 15;
  v5[56] = swift_task_alloc();
  v5[57] = sub_1E499814C();
  v5[58] = sub_1E499813C();
  v24 = sub_1E499811C();
  v5[59] = v24;
  v5[60] = v23;

  return MEMORY[0x1EEE6DFA0](sub_1E48E07D0, v24, v23);
}

uint64_t sub_1E48E07D0()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 488) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E48E0868, v1, 0);
}

uint64_t sub_1E48E0868()
{
  v1 = v0[61];
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
    v14 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 0, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v14;
    swift_endAccess();
  }

  sub_1E497D394(v0[53]);

  v11 = v0[59];
  v12 = v0[60];

  return MEMORY[0x1EEE6DFA0](sub_1E48E09BC, v11, v12);
}

uint64_t sub_1E48E09BC()
{
  v1 = v0[56];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];
  v5 = v0[27];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[62] = 0;
  v6 = v0[57];
  v7 = sub_1E499813C();
  v0[63] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[64] = v9;
  *v9 = v0;
  v9[1] = sub_1E48E0AC8;
  v10 = v0[56];
  v11 = v0[54];
  v12 = v0[50];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E48E0AC8()
{
  v1 = *v0;
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 504);
  v7 = *v0;

  v4 = *(v1 + 480);
  v5 = *(v1 + 472);

  return MEMORY[0x1EEE6DFA0](sub_1E48E0C0C, v5, v4);
}

uint64_t sub_1E48E0C0C()
{
  v1 = v0[50];
  if ((*(v0[48] + 48))(v1, 1, v0[47]) == 1)
  {
    v2 = v0[58];
    (*(v0[55] + 8))(v0[56], v0[54]);

LABEL_9:
    v31 = v0[56];
    v32 = v0[53];
    v34 = v0[49];
    v33 = v0[50];
    v35 = v0[45];
    v36 = v0[46];
    v38 = v0[43];
    v37 = v0[44];
    v40 = v0[41];
    v39 = v0[42];
    v150 = v0[40];
    v151 = v0[39];
    v152 = v0[38];
    v153 = v0[37];
    v154 = v0[36];
    v155 = v0[34];
    v158 = v0[33];
    v162 = v0[32];
    v165 = v0[31];

    v41 = v0[1];

    return v41();
  }

  v3 = v0[27];
  sub_1E48EC64C(v1, v0[49], type metadata accessor for CurrentLocationResult);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v26 = v0[58];
    v28 = v0[55];
    v27 = v0[56];
    v29 = v0[54];
    v30 = v0[49];

    sub_1E48EC6B4(v30, type metadata accessor for CurrentLocationResult);
    (*(v28 + 8))(v27, v29);
    goto LABEL_9;
  }

  v5 = Strong;
  v6 = v0[46];
  sub_1E48C12D0(v0[49], v6, &qword_1ECF7F8A0, &unk_1E499D7B0);
  v7 = type metadata accessor for CurrentLocation(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v9 = v0[46];
  if (v8 == 1)
  {
    v11 = v0[44];
    v10 = v0[45];
    v12 = v0[37];
    v164 = v0[35];
    v13 = v0[29];
    v14 = v0[30];
    sub_1E48C1338(v9, &qword_1ECF7F8A0, &unk_1E499D7B0);
    (*(v14 + 56))(v10, 1, 1, v13);
    v15 = v5;
    v16 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
    swift_beginAccess();
    v161 = v16;
    v17 = v15 + v16;
    v18 = v15;
    sub_1E48C12D0(v17, v11, &qword_1ECF7F848, &qword_1E499D520);
    v19 = *(v164 + 48);
    sub_1E48C12D0(v11, v12, &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48C12D0(v10, v12 + v19, &qword_1ECF7F848, &qword_1E499D520);
    v20 = *(v14 + 48);
    if (v20(v12, 1, v13) == 1)
    {
      v21 = v0[29];
      sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
      if (v20(v12 + v19, 1, v21) == 1)
      {
LABEL_7:
        v22 = v0[49];
        v23 = v0[45];
        v24 = v0[42];
        sub_1E48C1338(v0[37], &qword_1ECF7F848, &qword_1E499D520);
        sub_1E48C12D0(v23, v24, &qword_1ECF7F848, &qword_1E499D520);
        swift_beginAccess();
        sub_1E48EC048(v24, v161 + v18, &qword_1ECF7F848, &qword_1E499D520);
        swift_endAccess();
        sub_1E48E4E8C();
        sub_1E48E52C0();

        sub_1E48C1338(v24, &qword_1ECF7F848, &qword_1E499D520);
        sub_1E48EC6B4(v22, type metadata accessor for CurrentLocationResult);
        v25 = v0[62];
LABEL_56:
        sub_1E48C1338(v0[45], &qword_1ECF7F848, &qword_1E499D520);
        goto LABEL_57;
      }

      goto LABEL_20;
    }

    v73 = v0[29];
    sub_1E48C12D0(v0[37], v0[43], &qword_1ECF7F848, &qword_1E499D520);
    if (v20(v12 + v19, 1, v73) == 1)
    {
      v74 = v0[43];
      sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
      sub_1E48EC6B4(v74, type metadata accessor for WorldViewModel.Pin);
LABEL_20:
      v75 = v0[37];
      v76 = &qword_1ECF7F850;
      v77 = &qword_1E499D578;
LABEL_55:
      sub_1E48C1338(v75, v76, v77);
      v25 = v0[62];
      v136 = v0[49];
      v137 = v0[45];
      swift_getKeyPath();
      v138 = swift_task_alloc();
      *(v138 + 16) = v18;
      *(v138 + 24) = v137;
      v0[23] = v18;
      sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
      sub_1E4996FBC();

      sub_1E48EC6B4(v136, type metadata accessor for CurrentLocationResult);

      goto LABEL_56;
    }

    v105 = v0[43];
    v106 = v0[34];
    sub_1E48EC64C(v12 + v19, v106, type metadata accessor for WorldViewModel.Pin);
    if (*v105 != *v106)
    {
      goto LABEL_53;
    }

    if (v105[1] != v106[1])
    {
      goto LABEL_53;
    }

    v107 = v0[43];
    v108 = v0[34];
    if (*(v107 + 16) != *(v108 + 16))
    {
      goto LABEL_53;
    }

    if (*(v107 + 17) != *(v108 + 17))
    {
      goto LABEL_53;
    }

    v109 = *(v0[29] + 28);
    if ((MEMORY[0x1E691A740](v107 + v109, v108 + v109) & 1) == 0)
    {
      goto LABEL_53;
    }

    v110 = v0[43];
    v111 = v0[34];
    v112 = v0[29];
    v113 = v112[8];
    v114 = v110 + v113;
    v115 = *(v110 + v113);
    v116 = (v111 + v113);
    if (v115 != *v116 || *(v114 + 8) != v116[1])
    {
      goto LABEL_53;
    }

    v117 = v112[9];
    v118 = (v110 + v117);
    v119 = *(v110 + v117 + 8);
    v120 = (v111 + v117);
    v121 = *(v111 + v117 + 8);
    if (v119)
    {
      if (!v121)
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (*v118 != *v120)
      {
        LOBYTE(v121) = 1;
      }

      if (v121)
      {
        goto LABEL_53;
      }
    }

    v128 = v112[10];
    v129 = (v110 + v128);
    v130 = v129[1];
    v131 = (v111 + v128);
    v132 = v131[1];
    if (v130)
    {
      if (!v132)
      {
LABEL_53:
        sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
LABEL_54:
        v134 = v0[43];
        v135 = v0[37];
        sub_1E48EC6B4(v0[34], type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC6B4(v134, type metadata accessor for WorldViewModel.Pin);
        v76 = &qword_1ECF7F848;
        v77 = &qword_1E499D520;
        v75 = v135;
        goto LABEL_55;
      }

      v133 = v0[44];
      if (*v129 == *v131 && v130 == v132)
      {
        sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
      }

      else
      {
        v147 = v131[1];
        v148 = sub_1E499884C();
        sub_1E48C1338(v133, &qword_1ECF7F848, &qword_1E499D520);
        if ((v148 & 1) == 0)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
      if (v132)
      {
        goto LABEL_54;
      }
    }

    v149 = v0[43];
    sub_1E48EC6B4(v0[34], type metadata accessor for WorldViewModel.Pin);
    sub_1E48EC6B4(v149, type metadata accessor for WorldViewModel.Pin);
    goto LABEL_7;
  }

  v43 = v0[33];
  v44 = v0[28];
  v45 = v0[29];
  v46 = v0[46];
  v47 = *v9;
  sub_1E48EC6B4(v46, type metadata accessor for CurrentLocation);
  [v47 coordinate];
  v49 = v48;
  v51 = v50;
  v52 = v43 + *(v45 + 28);
  sub_1E4996F3C();
  v163 = v47;
  [v47 coordinate];
  v156 = v54;
  v159 = v53;
  swift_getKeyPath();
  v0[24] = v5;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v55 = *(v44 + 40);
  v56.f64[0] = 180.0;
  v57.f64[0] = v156.f64[0];
  *&v56.f64[0] = *&vaddq_f64(v156, v56);
  v57.f64[1] = v159;
  v56.f64[1] = vsubq_f64(vdupq_n_s64(0x4056800000000000uLL), v57).f64[1];
  v58 = vaddq_f64(vdivq_f64(vmulq_f64(v56, v55), xmmword_1E499CF40), *(v44 + 56));
  if ((*(v44 + 112) & 1) == 0)
  {
    v58 = vaddq_f64(*(v0[28] + 80), vmulq_n_f64(vrndaq_f64(vdivq_f64(vsubq_f64(v58, *(v0[28] + 80)), vdupq_lane_s64(*(v0[28] + 96), 0))), *(v0[28] + 96)));
  }

  v59 = vmulq_n_f64(v58, *(v5 + 160) / v55.f64[0]);
  if (qword_1ECF7EB80 != -1)
  {
    swift_once();
  }

  v60 = v0[41];
  v61 = v0[33];
  v63 = v0[29];
  v62 = v0[30];
  UIPointRoundToScale();
  *(v61 + 17) = 0;
  v64 = v61 + v63[9];
  *v64 = 0;
  *(v64 + 8) = 1;
  v65 = (v61 + v63[10]);
  *v61 = v49;
  *(v61 + 8) = v51;
  *(v61 + 16) = 1;
  v66 = (v61 + v63[8]);
  *v66 = v67;
  v66[1] = v68;
  *v65 = 0;
  v65[1] = 0;
  swift_getKeyPath();
  v0[25] = v5;
  sub_1E4996FCC();

  v69 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  v160 = v69;
  sub_1E48C12D0(v5 + v69, v60, &qword_1ECF7F848, &qword_1E499D520);
  v70 = *(v62 + 48);
  v71 = v70(v60, 1, v63);
  v72 = v0[41];
  v157 = v70;
  if (v71 == 1)
  {
    sub_1E48C1338(v72, &qword_1ECF7F848, &qword_1E499D520);
  }

  else
  {
    v78 = v0[32];
    sub_1E48EC64C(v72, v78, type metadata accessor for WorldViewModel.Pin);
    v80 = *v78;
    v79 = v78[1];
    [v163 coordinate];
    if (v80 == v82 && v79 == v81)
    {
      v83 = v0[32];
      v84 = v0[33];
      v85 = v0[29];
      v86 = (v83 + *(v85 + 40));
      v87 = v86[1];
      *v65 = *v86;
      v65[1] = v87;
      v88 = v83 + *(v85 + 36);
      v89 = *v88;
      LOBYTE(v88) = *(v88 + 8);
      *v64 = v89;
      *(v64 + 8) = v88;
      v90 = *(v83 + 17);

      sub_1E48EC6B4(v83, type metadata accessor for WorldViewModel.Pin);
      *(v84 + 17) = v90;
    }

    else
    {
      sub_1E48EC6B4(v0[32], type metadata accessor for WorldViewModel.Pin);
    }
  }

  v92 = v0[39];
  v91 = v0[40];
  v94 = v0[35];
  v93 = v0[36];
  v95 = v0[29];
  v96 = v0[30];
  sub_1E48EC724(v0[33], v91, type metadata accessor for WorldViewModel.Pin);
  (*(v96 + 56))(v91, 0, 1, v95);
  sub_1E48C12D0(v5 + v160, v92, &qword_1ECF7F848, &qword_1E499D520);
  v97 = *(v94 + 48);
  sub_1E48C12D0(v92, v93, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C12D0(v91, v93 + v97, &qword_1ECF7F848, &qword_1E499D520);
  if (v157(v93, 1, v95) == 1)
  {
    v98 = v0[29];
    sub_1E48C1338(v0[39], &qword_1ECF7F848, &qword_1E499D520);
    if (v157(v93 + v97, 1, v98) == 1)
    {
      sub_1E48C1338(v0[36], &qword_1ECF7F848, &qword_1E499D520);
LABEL_43:
      v125 = v0[42];
      sub_1E48C12D0(v0[40], v125, &qword_1ECF7F848, &qword_1E499D520);
      swift_beginAccess();
      sub_1E48EC048(v125, v5 + v160, &qword_1ECF7F848, &qword_1E499D520);
      swift_endAccess();
      sub_1E48E4E8C();
      sub_1E48E52C0();
      sub_1E48C1338(v125, &qword_1ECF7F848, &qword_1E499D520);
      v25 = v0[62];
      goto LABEL_44;
    }

    goto LABEL_30;
  }

  v99 = v0[29];
  sub_1E48C12D0(v0[36], v0[38], &qword_1ECF7F848, &qword_1E499D520);
  v100 = v157(v93 + v97, 1, v99);
  v101 = v0[38];
  v102 = v0[39];
  if (v100 == 1)
  {
    sub_1E48C1338(v0[39], &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48EC6B4(v101, type metadata accessor for WorldViewModel.Pin);
LABEL_30:
    sub_1E48C1338(v0[36], &qword_1ECF7F850, &qword_1E499D578);
    goto LABEL_31;
  }

  v122 = v0[36];
  v123 = v0[31];
  sub_1E48EC64C(v93 + v97, v123, type metadata accessor for WorldViewModel.Pin);
  v124 = sub_1E48EAD30(v101, v123);
  sub_1E48EC6B4(v123, type metadata accessor for WorldViewModel.Pin);
  sub_1E48C1338(v102, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48EC6B4(v101, type metadata accessor for WorldViewModel.Pin);
  sub_1E48C1338(v122, &qword_1ECF7F848, &qword_1E499D520);
  if (v124)
  {
    goto LABEL_43;
  }

LABEL_31:
  v25 = v0[62];
  v103 = v0[40];
  swift_getKeyPath();
  v104 = swift_task_alloc();
  *(v104 + 16) = v5;
  *(v104 + 24) = v103;
  v0[26] = v5;
  sub_1E4996FBC();

LABEL_44:
  v126 = v0[49];
  v127 = v0[33];
  sub_1E48C1338(v0[40], &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48E64AC(v163);

  sub_1E48EC6B4(v126, type metadata accessor for CurrentLocationResult);
  sub_1E48EC6B4(v127, type metadata accessor for WorldViewModel.Pin);
LABEL_57:
  v0[62] = v25;
  v139 = v0[57];
  v140 = sub_1E499813C();
  v0[63] = v140;
  v141 = *(MEMORY[0x1E69E8678] + 4);
  v142 = swift_task_alloc();
  v0[64] = v142;
  *v142 = v0;
  v142[1] = sub_1E48E0AC8;
  v143 = v0[56];
  v144 = v0[54];
  v145 = v0[50];
  v146 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v145, v140, v146, v144);
}

uint64_t sub_1E48E1BE0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9DB4(v1 + 16, a1);
}

uint64_t sub_1E48E1CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9DB4(v3 + 16, a2);
}

uint64_t sub_1E48E1D60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1E48EC850(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_1E48E1DC4()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + 120);
}

uint64_t sub_1E48E1E68()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v1 = *(v0 + 128);
}

uint64_t sub_1E48E1F0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 128);
}

uint64_t sub_1E48E1FB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E48DCE00(v4);
}

uint64_t sub_1E48E1FE4()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  return *(v0 + 136);
}

uint64_t sub_1E48E2084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 136);
  return result;
}

double sub_1E48E2154()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  result = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  return result;
}

__n128 sub_1E48E21F8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  result = *(v3 + 144);
  v5 = *(v3 + 160);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E48E22CC()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  return *(v0 + 176);
}

uint64_t sub_1E48E236C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 176);
  return result;
}

uint64_t sub_1E48E2490()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return *(v0 + 177);
}

uint64_t sub_1E48E2544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  result = swift_beginAccess();
  *a2 = *(v3 + 177);
  return result;
}

void (*sub_1E48E2600(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E48E243C();
  return sub_1E48E2738;
}

double sub_1E48E2744@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v14 = v1;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v3 = *(v1 + 296);
  v4 = *(v1 + 312);
  v5 = *(v1 + 264);
  v20 = *(v1 + 280);
  v21 = v3;
  v22 = v4;
  v23 = *(v1 + 328);
  v6 = *(v1 + 232);
  v16 = *(v1 + 216);
  v17 = v6;
  v18 = *(v1 + 248);
  v19 = v5;
  v7 = *(v1 + 200);
  v14 = *(v1 + 184);
  v15 = v7;
  sub_1E48CCDD4(&v14, v13);
  v8 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v8;
  *(a1 + 128) = v22;
  *(a1 + 144) = v23;
  v9 = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = v9;
  v10 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  result = *&v14;
  v12 = v15;
  *a1 = v14;
  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_1E48E2868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v14[0] = v3;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v4 = *(v3 + 296);
  v5 = *(v3 + 264);
  v15 = *(v3 + 280);
  v16 = v4;
  v6 = *(v3 + 296);
  v17 = *(v3 + 312);
  v7 = *(v3 + 232);
  v14[2] = *(v3 + 216);
  v14[3] = v7;
  v8 = *(v3 + 264);
  v14[4] = *(v3 + 248);
  v14[5] = v8;
  v9 = *(v3 + 200);
  v14[0] = *(v3 + 184);
  v14[1] = v9;
  v18 = *(v3 + 328);
  *(a2 + 96) = v15;
  *(a2 + 112) = v6;
  *(a2 + 128) = *(v3 + 312);
  *(a2 + 144) = *(v3 + 328);
  v10 = *(v3 + 232);
  *(a2 + 32) = *(v3 + 216);
  *(a2 + 48) = v10;
  *(a2 + 64) = *(v3 + 248);
  *(a2 + 80) = v5;
  v11 = *(v3 + 200);
  *a2 = *(v3 + 184);
  *(a2 + 16) = v11;
  return sub_1E48CCDD4(v14, v13);
}

uint64_t sub_1E48E2998(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v2;
  v9[8] = *(a1 + 128);
  v10 = *(a1 + 144);
  v3 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v3;
  v4 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v4;
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v6 = *a2;
  sub_1E48CCDD4(v9, v8);
  return sub_1E48DDAE4(v9);
}

uint64_t sub_1E48E2A08()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  v1 = *(v0 + 336);
}

uint64_t sub_1E48E2AC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  *a2 = *(v3 + 336);
}

uint64_t sub_1E48E2B80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E48DD168(v4);
}

uint64_t sub_1E48E2BAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 336);
  *(a1 + 336) = a2;
}

uint64_t (*sub_1E48E2C64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E48E2CC8;
}

uint64_t sub_1E48E2CC8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_1E48E4E8C();
    return sub_1E48E52C0();
  }

  return result;
}

uint64_t sub_1E48E2D24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v6 = *a2;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v6, a3, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48E2E00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v15 - v11;
  sub_1E48C12D0(a1, &v15 - v11, &qword_1ECF7F848, &qword_1E499D520);
  v13 = *a2;
  return a5(v12);
}

uint64_t sub_1E48E2EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_1E48C12D0(a2, &v11 - v7, &qword_1ECF7F848, &qword_1E499D520);
  v9 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  sub_1E48EC048(v8, a1 + v9, &qword_1ECF7F848, &qword_1E499D520);
  swift_endAccess();
  sub_1E48E4E8C();
  sub_1E48E52C0();
  return sub_1E48C1338(v8, &qword_1ECF7F848, &qword_1E499D520);
}

void (*sub_1E48E2FB0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E48E2C64(v4);
  return sub_1E48E30E8;
}

void sub_1E48E30F4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E4996FDC();

  free(v1);
}

uint64_t sub_1E48E3188()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v1 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1E48E3248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E48E3310(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1E48E3380()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v60 = &v55 - v3;
  v4 = sub_1E499708C();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4996F4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4996D8C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v56 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v55 - v25;
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v26);
  v27 = *(type metadata accessor for WorldViewModel.Pin(0) + 28);
  sub_1E4996D7C();
  v28 = sub_1E4996EFC();
  v55 = v15;
  v29 = *(v15 + 8);
  v29(v22, v14);
  sub_1E4996F3C();
  sub_1E4996D7C();
  v30 = sub_1E4996EFC();
  v29(v22, v14);
  (*(v9 + 8))(v13, v8);
  v31 = v28 - v30;
  if (__OFSUB__(v28, v30))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
LABEL_10:
    v38 = qword_1EE2BB458;
    v39 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
    swift_beginAccess();
    sub_1E48C12D0(v38 + v39, v13, &qword_1ECF7F008, &qword_1E499B170);
    v41 = v57;
    v40 = v58;
    v42 = *(v57 + 48);
    if (v42(v13, 1, v58) == 1)
    {
      sub_1E4904BF4(v59);
      v40 = v58;
      v43 = v42(v13, 1, v58);
      v44 = v41;
      v45 = v56;
      if (v43 != 1)
      {
        sub_1E48C1338(v60, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v41 + 32))(v59, v13, v40);
      v44 = v41;
      v45 = v56;
    }

    (*(v55 + 16))(v45, v26, v14);
    v46 = sub_1E499706C();
    v47 = sub_1E499830C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v61 = v49;
      *v48 = 136446210;
      sub_1E48E7460(&qword_1ECF7F8F0, MEMORY[0x1E6969530]);
      v50 = sub_1E49987FC();
      v51 = v45;
      v53 = v52;
      v29(v51, v14);
      v54 = sub_1E48CA094(v50, v53, &v61);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_1E48B0000, v46, v47, "Cannot convert %{public}s to an offset string", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x1E691CED0](v49, -1, -1);
      MEMORY[0x1E691CED0](v48, -1, -1);

      (*(v57 + 8))(v59, v58);
    }

    else
    {

      v29(v45, v14);
      (*(v44 + 8))(v59, v40);
    }

    goto LABEL_17;
  }

  v32 = v28 - v30;
  v13 = v60;
  if (v31 < 0)
  {
    v32 = v30 - v28;
    if (__OFSUB__(0, v31))
    {
      goto LABEL_19;
    }
  }

  if (v32 >= 1)
  {
    v33 = objc_opt_self();
    v34 = sub_1E4996CEC();
    v35 = [v33 dayAndTimeZoneOffsetStringFromDate:v34 withTimeZoneOffset:v31 timeZoneAbbreviation:0 spaceBeforeTimeDesignator:1 hoursOnly:0 numericOnly:0];

    if (v35)
    {
      v36 = sub_1E4997EEC();

      v29(v26, v14);
      return v36;
    }

    if (qword_1EE2BB450 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_17:
  v29(v26, v14);
  return 0;
}

uint64_t sub_1E48E3A18()
{
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(*v0, v0[1]);
  return sub_1E499896C();
}

uint64_t sub_1E48E3A5C()
{
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(*v0, v0[1]);
  return sub_1E499896C();
}

__n128 sub_1E48E3A9C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1E48E3AB0(double *a1, double *a2)
{
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) + 36);
  v5 = (a2 + v4);
  v6 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
  v8 = *(v7 + 8);
  if (v6 == 1)
  {
    if ((v7[1] & 1) == 0)
    {
      v12 = 1;
      return v12 ^ 1u;
    }

    v9 = *a2 < *a1;
    if (*a2 != *a1)
    {
      goto LABEL_10;
    }

    v10 = a2[1];
    v11 = a1[1];
  }

  else
  {
    if (v7[1])
    {
      v12 = 0;
      return v12 ^ 1u;
    }

    v10 = *v5;
    v11 = *v7;
  }

  v9 = v10 < v11;
LABEL_10:
  v12 = v9;
  return v12 ^ 1u;
}

uint64_t sub_1E48E3B44(double *a1, double *a2)
{
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) + 36);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(v7 + 8);
  if (v6 == 1)
  {
    if ((v7[1] & 1) == 0)
    {
      v12 = 1;
      return v12 ^ 1u;
    }

    v9 = *a1 < *a2;
    if (*a1 != *a2)
    {
      goto LABEL_10;
    }

    v10 = a1[1];
    v11 = a2[1];
  }

  else
  {
    if (v7[1])
    {
      v12 = 0;
      return v12 ^ 1u;
    }

    v10 = *v5;
    v11 = *v7;
  }

  v9 = v10 < v11;
LABEL_10:
  v12 = v9;
  return v12 ^ 1u;
}

BOOL sub_1E48E3BD8(double *a1, double *a2)
{
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) + 36);
  v5 = (a2 + v4);
  v6 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
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

  v9 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v10 = a2[1];
    v11 = a1[1];
    return v10 < v11;
  }

  return v9;
}