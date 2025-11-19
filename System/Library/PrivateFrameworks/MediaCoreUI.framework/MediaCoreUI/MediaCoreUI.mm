uint64_t sub_1C59245CC()
{
  result = sub_1C5BCB804();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1C59246FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id ScopeBar.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *ScopeBar.init()()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (v0 + *((*v3 & *v0) + 0x68));
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *v6 = *MEMORY[0x1E69DDCE0];
  v6[1] = v7;
  v8 = v0 + *((*v3 & *v0) + 0x70);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  *(v0 + *((*v3 & *v0) + 0x78)) = 0;
  v9 = *((*v3 & *v0) + 0x80);
  v10 = *((v4 & v2) + 0x50);
  *(v0 + v9) = sub_1C5BCB0B4();
  v11 = (v0 + *((*v3 & *v0) + 0x88));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + *((*v3 & *v0) + 0x90));
  *v12 = 0;
  v12[1] = 0;
  (*(*(v10 - 8) + 56))(v0 + *((*v3 & *v0) + 0x98), 1, 1, v10);
  *(v0 + *((*v3 & *v0) + 0xA0)) = 0;
  v13 = *((*v3 & *v0) + 0xA8);
  *(v0 + v13) = sub_1C5924C60();
  *(v0 + *((*v3 & *v0) + 0xB0)) = MEMORY[0x1E69E7CC0];
  *(v0 + *((*v3 & *v0) + 0xB8)) = 0;
  *(v0 + *((*v3 & *v0) + 0xC0)) = 0;
  *(v0 + *((*v3 & *v0) + 0xC8)) = 0;
  v23.receiver = v0;
  v23.super_class = type metadata accessor for ScopeBar();
  v14 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v14 setShowsHorizontalScrollIndicator_];
  [v14 setShowsVerticalScrollIndicator_];
  [v14 setAlwaysBounceHorizontal_];
  sub_1C59253A4(v24);
  v15 = type metadata accessor for ScopeBar.Specs();
  (*(*(v15 - 8) + 8))(v24, v15);
  *(v14 + *((*v3 & *v14) + 0xA0)) = v25;
  v16 = [v14 layer];

  [v16 setMask_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C5BD4D40;
  v18 = sub_1C5BC7E34();
  v19 = MEMORY[0x1E69DC2B0];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = sub_1C5BC7DE4();
  v21 = MEMORY[0x1E69DC0A0];
  *(v17 + 48) = v20;
  *(v17 + 56) = v21;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1C5BCB6C4();

  swift_unknownObjectRelease();

  return v14;
}

id sub_1C5924C60()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  [v0 setStartPoint_];
  [v0 setEndPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C5BD21E0;
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [v3 CGColor];

  type metadata accessor for CGColor(0);
  v6 = v5;
  *(v1 + 56) = v5;
  *(v1 + 32) = v4;
  v7 = [v2 blackColor];
  v8 = [v7 CGColor];

  *(v1 + 88) = v6;
  *(v1 + 64) = v8;
  v9 = [v2 clearColor];
  v10 = [v9 CGColor];

  *(v1 + 120) = v6;
  *(v1 + 96) = v10;
  v11 = sub_1C5BCB044();

  [v0 setColors_];

  return v0;
}

uint64_t sub_1C5924E34()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C5924EA4()
{
  if (!qword_1EDA4E6B8)
  {
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA4E6B8);
    }
  }
}

uint64_t sub_1C5924EF4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5924F54(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5924FB0(double a1, double a2, double a3, double a4)
{
  v9.receiver = v4;
  v9.super_class = type metadata accessor for ScopeBar();
  objc_msgSendSuper2(&v9, sel_setFrame_, a1, a2, a3, a4);
  sub_1C5925198();
}

void sub_1C5925054(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  sub_1C5924FB0(a2, a3, a4, a5);
}

id sub_1C59250CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScopeBar();
  return objc_msgSendSuper2(&v2, sel_frame);
}

double sub_1C592513C(void *a1)
{
  v1 = a1;
  sub_1C59250CC();
  v3 = v2;

  return v3;
}

void sub_1C5925198()
{
  [v0 bounds];
  v1 = 1.0 / CGRectGetWidth(v8);
  [v0 contentInset];
  v3 = v1 * v2;
  v4 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C5BD31B0;
  sub_1C592535C(0, &qword_1EDA4E048);
  *(v5 + 32) = sub_1C5BCB724();
  *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(v5 + 48) = sub_1C5BCB724();
  v6 = sub_1C5BCB044();

  [v4 setLocations_];
}

id sub_1C59252EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScopeBar();
  return objc_msgSendSuper2(&v2, sel_contentInset);
}

uint64_t sub_1C592535C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1C59253A4@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    v6 = objc_opt_self();
    v7 = [v6 whiteColor];
    v8 = [v6 blackColor];
    if (qword_1EDA4E058 != -1)
    {
      swift_once();
    }

    v9 = 0;
    v10 = qword_1EDA4E060;
    v11 = 1;
    v20 = xmmword_1C5BE7CC0;
    v12 = xmmword_1C5BE7CD0;
LABEL_14:
    v19 = v12;
    result = v10;
    *a1 = v5;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11;
    *(a1 + 24) = v19;
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = result;
    *(a1 + 64) = 0;
    *(a1 + 72) = v20;
    *(a1 + 88) = v20;
    return result;
  }

  v13 = [v2 currentDevice];
  v14 = [v13 userInterfaceIdiom];

  v15 = *MEMORY[0x1E69DB970];
  if (v14 == 5)
  {
    result = [objc_opt_self() _preferredFontForTextStyle_weight_];
    if (result)
    {
      v5 = result;
      v9 = *MEMORY[0x1E69DB980];
      v17 = objc_opt_self();
      v7 = [v17 tintColor];
      v8 = [v17 whiteColor];
      if (qword_1EDA4E058 != -1)
      {
        swift_once();
      }

      v11 = 0;
      v10 = qword_1EDA4E060;
      v20 = xmmword_1C5BE7CB0;
      v12 = xmmword_1C5BDB0F0;
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    result = [objc_opt_self() _preferredFontForTextStyle_weight_];
    if (result)
    {
      v5 = result;
      v9 = *MEMORY[0x1E69DB980];
      v18 = objc_opt_self();
      v7 = [v18 tintColor];
      v8 = [v18 whiteColor];
      if (qword_1EDA4E058 != -1)
      {
        swift_once();
      }

      v11 = 0;
      v10 = qword_1EDA4E060;
      v20 = xmmword_1C5BE7C90;
      v12 = xmmword_1C5BE7CA0;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5925770()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C59257B8(void *a1)
{
  v1 = a1;
  sub_1C5925800();
}

id sub_1C5925800()
{
  v1 = MEMORY[0x1E69E7D40];
  v43.receiver = v0;
  v43.super_class = type metadata accessor for ScopeBar();
  objc_msgSendSuper2(&v43, sel_layoutSubviews);
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 safeAreaInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *v1 & *v0;
  v19 = (v0 + *(v18 + 0x60));
  v21 = v19[2];
  v20 = v19[3];
  if (v21 != v7)
  {
    v22 = fabs(v21);
    v23 = fabs(v7);
    if (v22 <= v23)
    {
      v22 = v23;
    }

    if (COERCE__INT64(fabs(v21 - v7)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v21, v7) > fmax(v22 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  if (v20 != v9)
  {
    v24 = fabs(v20);
    v25 = fabs(v9);
    if (v24 <= v25)
    {
      v24 = v25;
    }

    if (COERCE__INT64(fabs(v20 - v9)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v20, v9) > fmax(v24 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  v26 = (v0 + *((*v1 & *v0) + 0x68));
  v28 = *v26;
  v27 = v26[1];
  v30 = v26[2];
  v29 = v26[3];
  if (*v26 != v11)
  {
    v31 = fabs(v28);
    v32 = fabs(v11);
    if (v31 <= v32)
    {
      v31 = v32;
    }

    if (COERCE__INT64(fabs(v28 - v11)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v28, v11) > fmax(v31 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  if (v27 != v13)
  {
    v33 = fabs(v27);
    v34 = fabs(v13);
    if (v33 <= v34)
    {
      v33 = v34;
    }

    if (COERCE__INT64(fabs(v27 - v13)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v27, v13) > fmax(v33 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  if (v30 != v15)
  {
    v35 = fabs(v30);
    v36 = fabs(v15);
    if (v35 <= v36)
    {
      v35 = v36;
    }

    if (COERCE__INT64(fabs(v30 - v15)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v30, v15) > fmax(v35 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      goto LABEL_31;
    }
  }

  if (v29 != v17)
  {
    v37 = fabs(v29);
    v38 = fabs(v17);
    if (v37 <= v38)
    {
      v37 = v38;
    }

    if (COERCE__INT64(fabs(v29 - v17)) > 0x7FEFFFFFFFFFFFFFLL || vabdd_f64(v29, v17) > fmax(v37 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
LABEL_31:
      sub_1C5AECE9C();
      sub_1C5AED234();
      sub_1C5AEF524(0);
      sub_1C5925198();
      v18 = *v1 & *v0;
    }
  }

  v39 = (v0 + *(v18 + 96));
  *v39 = v3;
  v39[1] = v5;
  v39[2] = v7;
  v39[3] = v9;
  v40 = (v0 + *((*v1 & *v0) + 0x68));
  *v40 = v11;
  v40[1] = v13;
  v40[2] = v15;
  v40[3] = v17;
  v41 = objc_opt_self();
  [v41 begin];
  [v41 setDisableActions_];
  [*(v0 + *((*v1 & *v0) + 0xA8)) setFrame_];
  return [v41 commit];
}

uint64_t sub_1C5925C58(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1C5925CD8();
}

uint64_t sub_1C5925CD8()
{
  swift_beginAccess();

  v0 = sub_1C5BCB154();

  if ((v0 & 1) == 0)
  {
    return sub_1C5AEE1D0();
  }

  return result;
}

uint64_t sub_1C5925DE4(uint64_t a1, int a2)
{
  v19 = a2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = sub_1C5BCB804();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-v9];
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v18[-v12];
  (*(v7 + 16))(v10, a1, v6);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v14 = 0;
    v15 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v10, v5);
    v16 = *((*v4 & *v2) + 0x80);
    swift_beginAccess();
    v20 = *(v2 + v16);
    sub_1C5BCB144();
    swift_getWitnessTable();
    sub_1C5BCB464();
    (*(v11 + 8))(v13, v5);
    v14 = v21;
    v15 = v22;
  }

  return sub_1C5926520(v14, v15, v19 & 1);
}

double sub_1C59260A4(void *a1)
{
  v1 = a1;
  sub_1C59252EC();
  v3 = v2;

  return v3;
}

uint64_t sub_1C5926100@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  v4 = sub_1C5BCB804();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1C59261FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5926248(char *a1)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  return sub_1C5927A64(&v6);
}

void sub_1C592632C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C5926380(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59263D4()
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

unint64_t sub_1C59264B4()
{
  result = qword_1EDA4B338;
  if (!qword_1EDA4B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B338);
  }

  return result;
}

uint64_t sub_1C5926520(unint64_t a1, int a2, int a3)
{
  v4 = v3;
  v140 = a3;
  v151 = a1;
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v138 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = *((v7 & v6) + 0x50);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v130 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v133 = &v127 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v131 = &v127 - v14;
  v15 = sub_1C5BCB804();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v135 = *(TupleTypeMetadata2 - 1);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v127 - v17;
  v139 = *(v15 - 8);
  v154 = v139;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v132 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v136 = &v127 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v137 = &v127 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v149 = &v127 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v134 = &v127 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v146 = &v127 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v147 = &v127 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v142 = &v127 - v33;
  v150 = swift_allocBox();
  v35 = v34;
  v152 = v9;
  v36 = *(v9 + 56);
  v36(v34, 1, 1, v8);
  v145 = a2;
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();

    v37 = v142;
    sub_1C5BCB174();

    v36(v37, 0, 1, v8);
    (*(v154 + 5))(v35, v37, v15);
  }

  v38 = v154 + 16;
  v39 = *(v154 + 2);
  v40 = v147;
  v39(v147, v35, v15);
  v41 = v35;
  v42 = v8;
  v43 = v146;
  v141 = v4;
  sub_1C5926100(v146);
  v44 = TupleTypeMetadata2[12];
  v39(v18, v40, v15);
  v153 = v39;
  v39(&v18[v44], v43, v15);
  v45 = v152 + 48;
  v46 = *(v152 + 48);
  v47 = v46(v18, 1, v42);
  v155 = v42;
  v144 = v41;
  v143 = v38;
  if (v47 == 1)
  {
    v48 = v44;
    v49 = v155;
    v50 = *(v154 + 1);
    v50(v43, v15);
    v50(v40, v15);
    if (v46(&v18[v48], 1, v49) == 1)
    {
      v50(v18, v15);
    }

    v154 = v50;
    v54 = v141;
    v52 = v46;
  }

  else
  {
    v51 = v134;
    v153(v134, v18, v15);
    v129 = v45;
    v52 = v46;
    if (v46(&v18[v44], 1, v155) != 1)
    {
      v77 = v15;
      v78 = v152;
      v79 = &v18[v44];
      v80 = v131;
      v81 = v155;
      (*(v152 + 32))(v131, v79, v155);
      LODWORD(TupleTypeMetadata2) = sub_1C5BCADB4();
      v82 = *(v78 + 8);
      v82(v80, v81);
      v83 = v51;
      v84 = *(v154 + 1);
      v84(v146, v77);
      v84(v147, v77);
      v82(v83, v81);
      v52 = v46;
      v15 = v77;
      v154 = v84;
      v84(v18, v77);
      v54 = v141;
      v55 = MEMORY[0x1E69E7D40];
      if (TupleTypeMetadata2)
      {
      }

      goto LABEL_10;
    }

    v53 = *(v154 + 1);
    v53(v146, v15);
    v154 = v53;
    v53(v147, v15);
    (*(v152 + 8))(v51, v155);
    v54 = v141;
  }

  (*(v135 + 8))(v18, TupleTypeMetadata2);
  v55 = MEMORY[0x1E69E7D40];
LABEL_10:
  v56 = v149;
  sub_1C5926100(v149);
  v57 = *(v54 + *((*v55 & *v54) + 0xB8));
  v58 = v142;
  v153(v142, v144, v15);
  v147 = v57;
  TupleTypeMetadata2 = v57;
  sub_1C5AEB990(v58);
  if (v145)
  {
    v59 = v15;
    v60 = *v55 & *v54;
    v61 = *(v54 + *(v60 + 0xB8));
    v62 = v151;
    if (v61)
    {
      [v61 removeFromSuperview];
      v60 = *v55 & *v54;
    }

    v63 = v152;
    v64 = *(v60 + 184);
    p_aBlock = *(v54 + v64);
    *(v54 + v64) = 0;
    goto LABEL_21;
  }

  v66 = v55;
  v67 = v15;
  v62 = v151;
  v68 = sub_1C5AEBA58(v151, v54);
  v69 = *((*v66 & *v54) + 0xB8);
  v70 = *(v54 + v69);
  *(v54 + v69) = v68;
  p_aBlock = v68;

  v63 = *(v54 + *((*v66 & *v54) + 0xB0));
  if ((v63 & 0xC000000000000001) != 0)
  {
    goto LABEL_76;
  }

  if ((v62 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) > v62)
  {
    v71 = *(v63 + 8 * v62 + 32);
    goto LABEL_18;
  }

  __break(1u);
LABEL_79:
  __break(1u);
  do
  {

    v86 = MEMORY[0x1C694FD20](p_aBlock, v70);

    v85 = v133;
LABEL_31:
    v87 = [v86 hoverStyle];

    if (v87)
    {
      [v87 setEnabled_];
    }

    (*(v63 + 8))(v85, v155);
    while (2)
    {
      v76 = v136;
LABEL_35:
      v70 = sub_1C59AE878(MEMORY[0x1E69E7CC0]);
      v88 = v144;
      if ((v140 & 1) == 0)
      {

        sub_1C5AEBFC8(v54, v150, v62, v145 & 1, 0);
        v91 = sub_1C5AECC64();
        swift_beginAccess();
        v92 = v132;
        v153(v132, v88, v56);
        v93 = v52(v92, 1, v155) == 1;
        v94 = v92;
        v95 = v154;
        (v154)(v94, v56);
        [v91 setHidden_];

        if (v147)
        {
          v96 = TupleTypeMetadata2;
          [TupleTypeMetadata2 removeFromSuperview];
        }

        v95(v149, v56);
      }

      v153(v76, v149, v56);
      v89 = v52(v76, 1, v155);
      v128 = v56;
      if (v89 == 1)
      {
        v90 = v154;
        (v154)(v76, v56);
LABEL_73:
        v117 = sub_1C5AECC64();
        [v117 setHidden_];

        v118 = objc_opt_self();
        v119 = swift_allocObject();
        v120 = v150;
        *(v119 + 16) = v54;
        *(v119 + 24) = v120;
        *(v119 + 32) = v62;
        *(v119 + 40) = v145 & 1;
        *(v119 + 41) = 1;
        *(v119 + 48) = v70;
        v163 = sub_1C5AF6F40;
        v164 = v119;
        aBlock = MEMORY[0x1E69E9820];
        v160 = 1107296256;
        v161 = sub_1C596D09C;
        v162 = &block_descriptor_17;
        v121 = _Block_copy(&aBlock);
        v122 = v54;

        v123 = swift_allocObject();
        v123[2] = v70;
        v123[3] = v120;
        v123[4] = v122;
        v163 = sub_1C5AF6F58;
        v164 = v123;
        aBlock = MEMORY[0x1E69E9820];
        v160 = 1107296256;
        v161 = sub_1C5AECA14;
        v162 = &block_descriptor_9;
        v124 = _Block_copy(&aBlock);
        v125 = v122;

        [v118 animateWithDuration:2 delay:v121 usingSpringWithDamping:v124 initialSpringVelocity:0.35 options:0.0 animations:0.8 completion:1.0];
        _Block_release(v124);
        _Block_release(v121);

        v90(v149, v128);
      }

      v97 = v130;
      (*(v63 + 32))(v130, v76, v155);
      if (v145)
      {
        (*(v63 + 8))(v97, v155);
LABEL_72:
        v90 = v154;
        goto LABEL_73;
      }

      v98 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x80);
      swift_beginAccess();
      v158 = *(v54 + v98);
      sub_1C5BCB144();
      swift_getWitnessTable();
      sub_1C5BCB464();
      if (v160 == 1)
      {
        (*(v152 + 8))(v97, v155);
        goto LABEL_72;
      }

      v63 = aBlock;
      v157 = v62;
      v158 = aBlock;
      p_aBlock = MEMORY[0x1E69E6530];
      sub_1C5BCBE54();
      v99 = aBlock;
      v156 = v62;
      v157 = v63;
      sub_1C5BCBE44();
      v67 = v158;
      if (v158 < v99)
      {
        goto LABEL_83;
      }

      v54 = 1;
      v62 = v151;
      do
      {
        if (v62 == v99)
        {
          goto LABEL_67;
        }

        if (v63 == v99)
        {
          if (!v147)
          {
            p_aBlock = v70;
            v110 = sub_1C5AB6FAC(v63);
            if (v111)
            {
              v112 = v110;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              aBlock = v70;
              if (!isUniquelyReferenced_nonNull_native)
              {
                p_aBlock = &aBlock;
                sub_1C5AF5D50();
                v70 = aBlock;
              }

              sub_1C5AF4760(v112, v70);
            }

            goto LABEL_66;
          }

          v100 = TupleTypeMetadata2;
        }

        else
        {
          v100 = sub_1C5AEBA58(v99, v141);
        }

        v62 = v100;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v70;
        p_aBlock = v70;
        v102 = sub_1C5AB6FAC(v99);
        v104 = *(v70 + 16);
        v105 = (v103 & 1) == 0;
        v106 = __OFADD__(v104, v105);
        v107 = v104 + v105;
        if (v106)
        {
          goto LABEL_75;
        }

        v52 = v103;
        if (*(v70 + 24) >= v107)
        {
          if ((v101 & 1) == 0)
          {
            p_aBlock = &aBlock;
            v114 = v102;
            sub_1C5AF5D50();
            v102 = v114;
            v70 = aBlock;
            if ((v52 & 1) == 0)
            {
LABEL_64:
              *(v70 + 8 * (v102 >> 6) + 64) |= 1 << v102;
              *(*(v70 + 48) + 8 * v102) = v99;
              *(*(v70 + 56) + 8 * v102) = v62;

              v115 = *(v70 + 16);
              v106 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v106)
              {
                goto LABEL_79;
              }

              *(v70 + 16) = v116;
              goto LABEL_66;
            }

            goto LABEL_58;
          }
        }

        else
        {
          sub_1C5AF34E4(v107, v101);
          p_aBlock = aBlock;
          v102 = sub_1C5AB6FAC(v99);
          if ((v52 & 1) != (v108 & 1))
          {
            goto LABEL_84;
          }
        }

        v70 = aBlock;
        if ((v52 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_58:
        v109 = *(v70 + 56);
        p_aBlock = *(v109 + 8 * v102);
        *(v109 + 8 * v102) = v62;

LABEL_66:
        v62 = v151;
LABEL_67:
        if (v67 == v99)
        {
          (*(v152 + 8))(v130, v155);
          v54 = v141;
          goto LABEL_72;
        }

        v106 = __OFADD__(v99++, 1);
      }

      while (!v106);
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:

      v71 = MEMORY[0x1C694FD20](v62, v63);

LABEL_18:
      v72 = [v71 hoverStyle];

      if (v72)
      {
        [v72 setEnabled_];
      }

      v59 = v67;
      v55 = MEMORY[0x1E69E7D40];
      v63 = v152;
LABEL_21:

      v73 = v137;
      v153(v137, v56, v59);
      if (v52(v73, 1, v155) == 1)
      {
        v56 = v59;
        (v154)(v73, v59);
        continue;
      }

      break;
    }

    v56 = v59;
    v74 = v133;
    (*(v63 + 32))(v133, v73, v155);
    v75 = *((*v55 & *v54) + 0x80);
    swift_beginAccess();
    v165 = *(v54 + v75);
    sub_1C5BCB144();
    swift_getWitnessTable();
    sub_1C5BCB464();
    if (v160 == 1)
    {
      (*(v63 + 8))(v74, v155);
      v76 = v136;
      goto LABEL_35;
    }

    p_aBlock = aBlock;
    v70 = *(v54 + *((*v55 & *v54) + 0xB0));
  }

  while ((v70 & 0xC000000000000001) != 0);
  v85 = v133;
  if ((aBlock & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (aBlock < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v86 = *(v70 + 8 * aBlock + 32);
    goto LABEL_31;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

uint64_t sub_1C5927940()
{

  return swift_deallocObject();
}

uint64_t sub_1C5927988()
{

  return swift_deallocObject();
}

uint64_t sub_1C59279D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x88));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1C59261FC(v6);
}

uint64_t sub_1C5927A64(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    return sub_1C5AEE1D0();
  }

  return result;
}

unint64_t sub_1C5927AEC()
{
  result = sub_1C5927B74();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C5927B74()
{
  result = qword_1EDA45D00;
  if (!qword_1EDA45D00)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDA45D00);
  }

  return result;
}

uint64_t sub_1C5927BDC()
{
  result = sub_1C5BC8FD4();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C5927C60()
{
  sub_1C5927D2C();
  if (v0 <= 0x3F)
  {
    sub_1C5926380(319, &qword_1EDA46788, _s13HostedContentCMa);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5927D2C()
{
  if (!qword_1EDA46790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470);
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46790);
    }
  }
}

uint64_t _s13HostedContentCMa()
{
  result = qword_1EDA4AE68;
  if (!qword_1EDA4AE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5927DDC()
{
  result = sub_1C5BCB144();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5927F68()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EDA5DB08 = result;
  unk_1EDA5DB10 = v4;
  return result;
}

uint64_t sub_1C59280B8()
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

unint64_t sub_1C5928158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191828);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C596FBD8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C592825C()
{
  if (!qword_1EDA46820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197E58);
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46820);
    }
  }
}

uint64_t type metadata accessor for NowPlayingViewModel.CurrentItem()
{
  result = qword_1EDA4B158;
  if (!qword_1EDA4B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1C5928310()
{
  v1 = v0;
  v0[5] = &type metadata for NowPlayingStandardArtworkTreatment;
  v2 = sub_1C5928464();
  v1[6] = v2;
  v1[2] = sub_1C592CFE4(&unk_1F45138F8);
  v1[7] = -1;
  v1[11] = &type metadata for NowPlayingStandardArtworkTreatment;
  v1[12] = v2;
  v1[8] = sub_1C592CFE4(&unk_1F4513920);
  sub_1C592CFE4(&unk_1F4513948);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194D90);
  swift_allocObject();
  v1[13] = sub_1C5BC7F84();
  v1[14] = 0;
  _s14DefaultArtworkCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[15] = v3;
  _s7ArtworkC17BackgroundArtworkCMa(0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC194CE0);
  sub_1C5BC7FF4();
  v1[16] = v4;
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_1C5BC7BA4();
  v1[17] = v5;
  return v1;
}

unint64_t sub_1C5928464()
{
  result = qword_1EDA47570;
  if (!qword_1EDA47570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47570);
  }

  return result;
}

unint64_t sub_1C59284B8()
{
  result = qword_1EDA47578;
  if (!qword_1EDA47578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47578);
  }

  return result;
}

void *sub_1C59285C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1988A8);
  swift_allocObject();
  v0[2] = sub_1C5BC7F44();
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1988B0);
  swift_allocObject();
  *(v2 + 80) = sub_1C5BC7F44();
  sub_1C5924F54(&qword_1EDA46878, qword_1EC1988B0);
  *(v2 + 88) = sub_1C5BC8064();
  v0[3] = v2;
  v0[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1962A0);
  swift_allocObject();
  v0[5] = sub_1C5BC7F44();
  v3 = [objc_allocWithZone(MEMORY[0x1E6988158]) init];
  [v3 setStyle_];
  v1[6] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E6988158]) init];
  [v4 setStyle_];
  v1[7] = v4;
  sub_1C592C1AC(&qword_1EDA4A740, v5, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
  sub_1C5BC7F24();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C5B45CCC;
  *(v7 + 24) = v6;
  sub_1C5BC7FB4();
  v8 = sub_1C5BC8114();

  v1[4] = v8;

  return v1;
}

uint64_t sub_1C5928854()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1C592888C()
{

  return swift_deallocObject();
}

uint64_t View.mcui.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

unint64_t sub_1C59289C4()
{
  result = qword_1EDA46070;
  if (!qword_1EDA46070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46070);
  }

  return result;
}

uint64_t static UIView.Corner.rounded.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA4E080 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = byte_1EDA4E090;
  v2 = qword_1EDA4E098;
  *a1 = qword_1EDA4E088;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  return result;
}

void sub_1C5928AC0()
{
  qword_1EDA4E088 = 0;
  byte_1EDA4E090 = 2;
  qword_1EDA4E098 = 15;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s6CornerVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void UIView.corner.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 == 3)
  {
    v57 = *MEMORY[0x1E69796E0];
    v4 = [v1 layer];
    v5 = [v4 maskedCorners];

    v6 = 0.0;
    goto LABEL_16;
  }

  v5 = *(a1 + 16);
  [v1 bounds];
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 * 0.5;
  v6 = v2;
  [v1 bounds];
  if (v3 != 2)
  {
    v23 = MEMORY[0x1E69796E0];
    if (v3)
    {
      v23 = MEMORY[0x1E69796E8];
    }

    goto LABEL_15;
  }

  v6 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  Width = CGRectGetWidth(*&v11);
  v59.origin.x = v15;
  v59.origin.y = v16;
  v59.size.width = v17;
  v59.size.height = v18;
  Height = CGRectGetHeight(v59);
  if (Width == Height)
  {
    goto LABEL_12;
  }

  v21 = fabs(Width);
  v22 = fabs(Height);
  if (v21 <= v22)
  {
    v21 = v22;
  }

  if (COERCE__INT64(fabs(Width - Height)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(Width, Height) <= fmax(v21 * 2.22044605e-16, COERCE_DOUBLE(1)))
  {
LABEL_12:
    v23 = MEMORY[0x1E69796E0];
LABEL_15:
    v57 = *v23;
    goto LABEL_16;
  }

  v57 = *MEMORY[0x1E69796E8];
  v6 = v10;
LABEL_16:
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = sub_1C5BCAE74();
    v28 = v27;
    if (v26 == sub_1C5BCAE74() && v28 == v29)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_1C5BCBDE4();
    }

    v50 = v1;

    [v25 _setCornerRadius_continuous_maskedCorners_];
  }

  else
  {
    v32 = [v1 layer];
    v33 = MEMORY[0x1E69796E0];
    if (v3 != 3)
    {
      [v1 bounds];
      if (v3 == 2)
      {
        v38 = v34;
        v39 = v35;
        v40 = v36;
        v41 = v37;
        v42 = CGRectGetWidth(*&v34);
        v60.origin.x = v38;
        v60.origin.y = v39;
        v60.size.width = v40;
        v60.size.height = v41;
        v43 = CGRectGetHeight(v60);
        if (v42 != v43)
        {
          v44 = v42 - v43;
          v45 = vabdd_f64(v42, v43);
          v46 = fabs(v42);
          v47 = fabs(v43);
          if (v46 > v47)
          {
            v47 = v46;
          }

          v48 = *&v44 & 0x7FFFFFFFFFFFFFFFLL;
          if (v45 > fmax(v47 * 2.22044605e-16, COERCE_DOUBLE(1)) || v48 >= 0x7FF0000000000000)
          {
            v33 = MEMORY[0x1E69796E8];
          }
        }
      }

      else if (v3)
      {
        v33 = MEMORY[0x1E69796E8];
      }
    }

    v51 = *v33;
    [v32 setCornerCurve_];

    v52 = [v1 layer];
    v53 = 0.0;
    if (v3 != 3)
    {
      [v1 bounds];
      if (v3 == 2)
      {
        if (v55 >= v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = v55;
        }

        v53 = v56 * 0.5;
      }

      else
      {
        v53 = v2;
      }
    }

    [v52 setCornerRadius_];

    v50 = [v1 layer];
    [v50 setMaskedCorners_];
  }
}

uint64_t sub_1C5928F70()
{
  result = sub_1C5BC7A24();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

id static UIFont.preferredFont(forTextStyle:weight:)(uint64_t a1, double a2)
{
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingArtworkRestrictionsMonitor()
{
  result = qword_1EDA47438;
  if (!qword_1EDA47438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C59290BC()
{
  sub_1C5924EA4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id static NowPlayingArtworkRestrictionsMonitor.shared.getter()
{
  if (qword_1EDA47448 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDA47450;

  return v1;
}

id sub_1C59291B0()
{
  result = [objc_allocWithZone(type metadata accessor for NowPlayingArtworkRestrictionsMonitor()) init];
  qword_1EDA47450 = result;
  return result;
}

char *sub_1C59291E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198558);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC11MediaCoreUI36NowPlayingArtworkRestrictionsMonitor__isMotionDisabled;
  LOBYTE(v30) = 1;
  sub_1C5BC7FF4();
  (*(v12 + 32))(&v0[v15], v14, v11);
  *&v0[OBJC_IVAR____TtC11MediaCoreUI36NowPlayingArtworkRestrictionsMonitor_networkConstrainingObserver] = 0;
  v16 = type metadata accessor for NowPlayingArtworkRestrictionsMonitor();
  v31.receiver = v0;
  v31.super_class = v16;
  v17 = objc_msgSendSuper2(&v31, sel_init);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 standardUserDefaults];
  v21 = sub_1C5BCAE44();
  [v20 addObserver:v19 forKeyPath:v21 options:1 context:0];

  if (qword_1EDA4EE00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  sub_1C5929CA0();
  v22 = sub_1C5BCB5A4();
  v30 = v22;
  v23 = sub_1C5BCB594();
  (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
  sub_1C5924F54(&qword_1EDA4E6C0, &qword_1EC1958C8);
  sub_1C5929CEC(&qword_1EDA4E630, sub_1C5929CA0);
  sub_1C5BC80D4();
  sub_1C5924EF4(v3, &unk_1EC199F20);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C5924F54(&qword_1EDA4E6C8, &qword_1EC198558);
  v24 = v29;
  v25 = sub_1C5BC8114();

  (*(v28 + 8))(v10, v24);
  *&v19[OBJC_IVAR____TtC11MediaCoreUI36NowPlayingArtworkRestrictionsMonitor_networkConstrainingObserver] = v25;

  sub_1C5929DEC();

  return v19;
}

uint64_t sub_1C592972C()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

id sub_1C5929788()
{
  result = [objc_allocWithZone(type metadata accessor for EnvironmentMonitor()) init];
  qword_1EDA5DE70 = result;
  return result;
}

uint64_t type metadata accessor for EnvironmentMonitor()
{
  result = qword_1EDA4EDE8;
  if (!qword_1EDA4EDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C592981C()
{
  if (!qword_1EDA4E6B0)
  {
    type metadata accessor for OSThermalPressureLevel(255);
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA4E6B0);
    }
  }
}

uint64_t static UIView.Corner.value(_:continuous:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  *(a2 + 16) = 15;
  return result;
}

id sub_1C5929888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1998E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC11MediaCoreUI18EnvironmentMonitor__isNetworkConstrained;
  LOBYTE(v22) = 0;
  sub_1C5BC7FF4();
  (*(v9 + 32))(&v0[v12], v11, v8);
  v13 = OBJC_IVAR____TtC11MediaCoreUI18EnvironmentMonitor__thermalLevel;
  v22 = 0;
  type metadata accessor for OSThermalPressureLevel(0);
  sub_1C5BC7FF4();
  (*(v5 + 32))(&v0[v13], v7, v4);
  v14 = type metadata accessor for EnvironmentMonitor();
  v21.receiver = v0;
  v21.super_class = v14;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  v16 = sub_1C5BCB214();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;
  v18 = v15;
  sub_1C5A0BB28(0, 0, v3, &unk_1C5BF1660, v17);

  sub_1C5929C38(v3);
  return v18;
}

uint64_t sub_1C5929B64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5929BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5929C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5929CA0()
{
  result = qword_1EDA4E620;
  if (!qword_1EDA4E620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA4E620);
  }

  return result;
}

uint64_t sub_1C5929CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5929D34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C592A748;

  return sub_1C592A1E8(a1, v4);
}

uint64_t sub_1C5929DEC()
{
  sub_1C592A2E0(&v25);
  v1 = v25;
  if (qword_1EDA4EE00 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  v2 = (v1 == 0) | v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  if (((v1 == 0) | v24 & 1) != v23)
  {
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C5BC7D64();
    __swift_project_value_buffer(v4, qword_1EDA5DB60);
    v5 = v0;
    v6 = sub_1C5BC7D44();
    v7 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 67110146;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1C5BC8034();

      *(v8 + 4) = v20[1];

      *(v8 + 8) = 1024;
      *(v8 + 10) = v2 & 1;
      *(v8 + 14) = 2082;
      sub_1C592A2E0(v20);
      v10 = 0xE200000000000000;
      v11 = 28271;
      if (v20[0] == 1)
      {
        v11 = 0x796C6E4F69666977;
        v10 = 0xE800000000000000;
      }

      if (v20[0])
      {
        v12 = v11;
      }

      else
      {
        v12 = 6710895;
      }

      if (v20[0])
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xE300000000000000;
      }

      v14 = sub_1C592ADA8(v12, v13, &v21);

      *(v8 + 16) = v14;
      *(v8 + 24) = 1024;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1C5BC8034();

      *(v8 + 26) = v19;
      *(v8 + 30) = 2080;
      if (v2)
      {
        v15 = 0xD00000000000005BLL;
      }

      else
      {
        v15 = 0;
      }

      if (v2)
      {
        v16 = 0x80000001C5BFC9C0;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      v17 = sub_1C592ADA8(v15, v16, &v21);

      *(v8 + 32) = v17;
      _os_log_impl(&dword_1C5922000, v6, v7, "NowPlayingRestrictionsMonitor: isMotionDisabled updated from %{BOOL}d to %{BOOL}d: motionMode=%{public}s isNetworkConstrained=%{BOOL}d. %s", v8, 0x28u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v9, -1, -1);
      MEMORY[0x1C69510F0](v8, -1, -1);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v2 & 1;
    v18 = v5;
    return sub_1C5BC8044();
  }

  return result;
}

uint64_t sub_1C592A1E8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C592AADC;

  return v6(a1);
}

uint64_t sub_1C592A2E0@<X0>(char *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1C5BCAE44();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1C5BCB8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    result = sub_1C5924EF4(v10, &qword_1EC191700);
    goto LABEL_10;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_10:
    v6 = 2;
    goto LABEL_11;
  }

  if (v7 >= 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v7;
  }

LABEL_11:
  *a1 = v6;
  return result;
}

uint64_t sub_1C592A40C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C592A4C0(a1, v4, v5, v6);
}

uint64_t sub_1C592A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C592A55C, 0, 0);
}

uint64_t sub_1C592A55C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [objc_opt_self() sharedMonitor];
  v4 = sub_1C5BCB214();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v2;
  v7 = v3;
  v8 = v2;
  sub_1C5A0BB28(0, 0, v1, &unk_1C5BF1668, v6);

  sub_1C5929C38(v1);
  v5(v1, 1, 1, v4);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v8;
  v10 = v7;
  v11 = v8;
  sub_1C5A0BB28(0, 0, v1, &unk_1C5BF1670, v9);

  sub_1C5929C38(v1);
  [v10 registerObserver_];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1C592A74C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C592A80C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C592A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C592A82C, 0, 0);
}

uint64_t sub_1C592A82C()
{
  *(v0 + 41) = [*(v0 + 16) isNetworkConstrained];
  sub_1C5BCB1E4();
  *(v0 + 32) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C592B430, v2, v1);
}

uint64_t sub_1C592A8D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592ABD4;

  return sub_1C592A994(a1, v4, v5, v7, v6);
}

uint64_t sub_1C592A994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C592A9B4, 0, 0);
}

uint64_t sub_1C592A9B4()
{
  v1 = [*(v0 + 16) currentThermalLevel];
  *(v0 + 32) = v1;
  if (v1 >> 32)
  {
    __break(1u);
  }

  else
  {
    sub_1C5BCB1E4();
    *(v0 + 40) = sub_1C5BCB1D4();
    v4 = sub_1C5BCB194();
    v6 = v5;
    v1 = sub_1C592B538;
    v2 = v4;
    v3 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C592AA68()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA5DB60);
  __swift_project_value_buffer(v0, qword_1EDA5DB60);
  return sub_1C5BC7D54();
}

uint64_t sub_1C592AADC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C592ABD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C592ADA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C592AEC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C592B32C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_1C592AE74(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C592AFCC(a1, a2);
  sub_1C592B240(&unk_1F4513670);
  return v3;
}

unint64_t sub_1C592AEC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1C592AE74(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1C5BCBB04();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1C592AFCC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C592B0FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C5BCBB04();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C5BCAF44();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C592B0FC(v10, 0);
        result = sub_1C5BCBA74();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1C592B0FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193638);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1C592B170()
{
  sub_1C5924EA4();
  if (v0 <= 0x3F)
  {
    sub_1C592981C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C592B240(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C592B640(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C592B32C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_1C592B3DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C5929DEC();
  }
}

uint64_t sub_1C592B430()
{
  v1 = *(v0 + 41);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  if (v1 != *(v0 + 40))
  {
    v2 = *(v0 + 41);
    v3 = *(v0 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = v2;
    v4 = v3;
    sub_1C5BC8044();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C592B538()
{
  v1 = *(v0 + 32);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  if (*(v0 + 48) != v1)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 48) = v2;
    v4 = v3;
    sub_1C5BC8044();
  }

  v5 = *(v0 + 8);

  return v5();
}

char *sub_1C592B640(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1C592B734()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  sub_1C5BC8004();
  return swift_endAccess();
}

void CGRect.aspectFit(in:scale:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  Width = CGRectGetWidth(*&a1);
  if (Width != 0.0)
  {
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v25 = fabs(Width), v25 > fmax(v25 * 2.22044605e-16, COERCE_DOUBLE(1))))
    {
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      Height = CGRectGetHeight(v43);
      if (Height != 0.0)
      {
        if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v27 = fabs(Height), v27 > fmax(v27 * 2.22044605e-16, COERCE_DOUBLE(1))))
        {
          v37 = a1;
          v44.origin.x = a1;
          v44.origin.y = a2;
          v44.size.width = a3;
          v44.size.height = a4;
          v38 = CGRectGetWidth(v44);
          v45.origin.x = a6;
          v45.origin.y = a7;
          v45.size.width = a8;
          v45.size.height = a9;
          v39 = v38 / CGRectGetWidth(v45);
          v46.origin.x = a1;
          v46.origin.y = a2;
          v46.size.width = a3;
          v46.size.height = a4;
          v35 = CGRectGetHeight(v46);
          v47.origin.x = a6;
          v47.origin.y = a7;
          v47.size.width = a8;
          v47.size.height = a9;
          v28 = v35 / CGRectGetHeight(v47);
          if (v28 >= v39)
          {
            v28 = v39;
          }

          v29 = v28 * a8;
          v30 = v28 * a9;
          v48.origin.x = v37;
          v48.origin.y = a2;
          v48.size.width = a3;
          v48.size.height = a4;
          MinX = CGRectGetMinX(v48);
          v49.origin.x = v37;
          v49.origin.y = a2;
          v49.size.width = a3;
          v49.size.height = a4;
          v36 = CGRectGetWidth(v49);
          v50.origin.x = a6;
          v50.origin.y = a7;
          v50.size.width = v29;
          v50.size.height = v30;
          v31 = CGRectGetWidth(v50);
          v32 = CGFloat.roundValue(scale:)(a5, MinX + (v36 - v31) * 0.5);
          v51.origin.x = v37;
          v51.origin.y = a2;
          v51.size.width = a3;
          v51.size.height = a4;
          rect = CGRectGetMinY(v51);
          v52.origin.x = v37;
          v52.origin.y = a2;
          v52.size.width = a3;
          v52.size.height = a4;
          v33 = CGRectGetHeight(v52);
          v53.origin.x = v32;
          v53.origin.y = a7;
          v53.size.width = v29;
          v53.size.height = v30;
          v34 = CGRectGetHeight(v53);
          CGFloat.roundValue(scale:)(a5, rect + (v33 - v34) * 0.5);
        }
      }
    }
  }
}

double CGFloat.roundValue(scale:)(double a1, double a2)
{
  if (a1 <= 0.0 || (v2 = a1, (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v3 = fabs(a1), v4 = v3 > fmax(v3 * 2.22044605e-16, COERCE_DOUBLE(1)), v2 = a1, !v4))
  {
    v2 = 1.0;
  }

  return round(a1 * a2) / v2;
}

double CGRect.centeringAlong(axes:bounds:scale:)(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  if (a1)
  {
    MinX = CGRectGetMinX(*&a2);
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    Width = CGRectGetWidth(v34);
    v35.origin.x = a7;
    v35.origin.y = a8;
    v35.size.width = a9;
    v35.size.height = a10;
    v25 = CGRectGetWidth(v35);
    a7 = CGFloat.roundValue(scale:)(a6, MinX + (Width - v25) * 0.5);
  }

  if ((a1 & 2) != 0)
  {
    v36.origin.x = a2;
    v36.origin.y = a3;
    v36.size.width = a4;
    v36.size.height = a5;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = a2;
    v37.origin.y = a3;
    v37.size.width = a4;
    v37.size.height = a5;
    Height = CGRectGetHeight(v37);
    v38.origin.x = a7;
    v38.origin.y = a8;
    v38.size.width = a9;
    v38.size.height = a10;
    v28 = CGRectGetHeight(v38);
    CGFloat.roundValue(scale:)(a6, MinY + (Height - v28) * 0.5);
  }

  return a7;
}

double CGSize.aspectRatio.getter(double a1, double a2)
{
  result = 0.0;
  if (a2 != 0.0)
  {
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return a1 / a2;
    }

    v4 = fabs(a2);
    if (v4 > fmax(v4 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
      return a1 / a2;
    }
  }

  return result;
}

__C::CGRect __swiftcall CGRect.centeringAlong(axes:in:)(UIAxis axes, UIView *in)
{
  v6 = v5;
  v26 = v4;
  v7 = v3;
  v8 = v2;
  v10 = axes;
  [(UIView *)in bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIView *)in traitCollection];
  [v19 displayScale];
  v21 = v20;

  v22 = CGRect.centeringAlong(axes:bounds:scale:)(v10, v12, v14, v16, v18, v21, v8, v7, v26, v6);
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

id sub_1C592BD0C(void *a1)
{
  v1 = a1;
  v2 = UINavigationItem.preferredNavigationBarTintColor.getter();

  return v2;
}

uint64_t sub_1C592BD50()
{
  result = swift_slowAlloc();
  qword_1EDA4E108 = result;
  return result;
}

uint64_t UINavigationItem.preferredNavigationBarTintColor.getter()
{
  if (qword_1EDA4E100 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1EDA4E108))
  {
    sub_1C5BCB8D4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1C5A28198();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C592BE5C(v5);
    return 0;
  }
}

uint64_t sub_1C592BE5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C592BEC4()
{
  result = qword_1EDA490E0;
  if (!qword_1EDA490E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA490E0);
  }

  return result;
}

uint64_t sub_1C592BF18()
{
  sub_1C592BEC4();

  return sub_1C5BC8F54();
}

BOOL sub_1C592BF94(double a1, double a2, double a3, double a4)
{
  if (a1 == a3)
  {
    goto LABEL_6;
  }

  result = 0;
  v5 = fabs(a1);
  v6 = fabs(a3);
  if (v5 <= v6)
  {
    v5 = v6;
  }

  if (COERCE__INT64(fabs(a1 - a3)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(a1, a3) <= fmax(v5 * 2.22044605e-16, COERCE_DOUBLE(1)))
  {
LABEL_6:
    if (a2 == a4)
    {
      return 1;
    }

    else if (COERCE__INT64(fabs(a2 - a4)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v7 = vabdd_f64(a2, a4);
      v8 = fabs(a2);
      v9 = fabs(a4);
      if (v8 <= v9)
      {
        v8 = v9;
      }

      return v7 <= fmax(v8 * 2.22044605e-16, COERCE_DOUBLE(1));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C592C0B8()
{
  type metadata accessor for NowPlayingViewControllerProxy();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v0;
}

unint64_t sub_1C592C110()
{
  result = qword_1EDA48698;
  if (!qword_1EDA48698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48698);
  }

  return result;
}

uint64_t sub_1C592C1AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C592C204(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NowPlayingViewModel.init()()
{
  v1 = v0;
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (qword_1EDA4AEA0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDA5DB08;
  v3 = unk_1EDA5DB10;
  *(v2 + 32) = qword_1EDA5DB08;
  *(v2 + 40) = v3;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = v5;
  *(v2 + 72) = 0;
  *(v2 + 104) = &type metadata for MetadataAutomaticStyle;
  v6 = sub_1C592C110();
  *(v2 + 112) = v6;
  *(v1 + 16) = v2;
  type metadata accessor for NowPlayingViewModel.Metrics();
  v7 = swift_allocObject();
  _s32HostedContentToggleButtonMetricsCMa();
  v8 = swift_allocObject();

  *(v8 + 16) = sub_1C5928158(v5);
  *(v7 + 16) = v8;
  sub_1C5BC7BA4();
  *(v1 + 24) = v7;
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  v9 = swift_allocObject();
  *(v9 + 16) = 5;
  *(v1 + 32) = v9;
  _s12PresentationCMa();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A3F0);
  swift_allocObject();
  *(v10 + 24) = sub_1C5BC7F44();
  sub_1C5BC7BA4();
  *(v1 + 40) = v10;
  type metadata accessor for Geometry();
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197E58);
  sub_1C5BC7FF4();
  *(v1 + 48) = v11;
  type metadata accessor for NowPlayingViewModel.CurrentItem();
  v12 = swift_allocObject();
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1C592CB84(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B0);
  sub_1C5BC7FF4();
  sub_1C5924EF4(v25, &qword_1EC1929B0);
  *(v1 + 56) = v12;
  _s8BackdropCMa();
  swift_allocObject();
  *(v1 + 64) = sub_1C592CD98();
  _s7ArtworkCMa();
  swift_allocObject();
  *(v1 + 72) = sub_1C5928310();
  _s18MiniPlayerMetadataCMa();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v4;
  *(v13 + 32) = v3;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 511;
  *(v13 + 120) = &type metadata for MetadataAutomaticStyle;
  *(v13 + 128) = v6;
  *(v13 + 136) = sub_1C592D330(v5);
  *(v1 + 80) = v13;
  _s11ContextMenuCMa(0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;

  sub_1C5BC7BA4();
  *(v1 + 88) = v14;
  _s11TimeControlCMa();
  swift_allocObject();
  *(v1 + 96) = sub_1C59285C4();
  _s17TransportControlsCMa();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 255;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  *(v15 + 56) = 255;
  *(v15 + 58) = 0;
  *(v1 + 104) = v15;
  *(v1 + 112) = 0;
  _s6BannerCMa();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v1 + 120) = v16;
  _s5QueueCMa();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v1 + 128) = v17;
  _s5DebugCMa();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 18) = 0;
  LOBYTE(v25[0]) = 0;
  sub_1C5BC7FF4();
  *(v1 + 136) = v18;
  _s13TrackSectionsCMa(0);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
  sub_1C5BC7BA4();
  *(v1 + 144) = v19;
  type metadata accessor for WindowProperties();
  swift_allocObject();
  *(v1 + 152) = sub_1C592F4E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F40);
  swift_allocObject();
  *(v1 + 168) = sub_1C5BC7F44();
  *(v1 + 176) = 0;
  type metadata accessor for NowPlayingViewModel.VolumeControl(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 1;
  _s13VolumeControlC10MiniPlayerCMa(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = 1;
  sub_1C5BC7BA4();
  *(v20 + 32) = v21;
  sub_1C5BC7BA4();
  *(v1 + 184) = v20;
  *&v25[0] = *(*(v1 + 96) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1962A0);
  sub_1C5934890();
  *(v1 + 160) = sub_1C5BC8064();
  _s13HostedContentCMa();
  swift_allocObject();

  v22 = sub_1C5933D58();

  *(v1 + 112) = v22;

  return v1;
}

void sub_1C592C7EC()
{
  v0 = sub_1C5BCAE44();
  v1 = objc_opt_self();
  v2 = [v1 bundleWithIdentifier_];

  if (!v2)
  {
    v2 = [v1 mainBundle];
  }

  qword_1EDA5DD00 = v2;
}

unint64_t sub_1C592C888(uint64_t a1)
{
  result = sub_1C592C8B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C592C8B0()
{
  result = qword_1EDA486A0;
  if (!qword_1EDA486A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA486A0);
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingViewModel.Metrics()
{
  result = qword_1EDA49A28;
  if (!qword_1EDA49A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Geometry()
{
  result = qword_1EDA46EA8;
  if (!qword_1EDA46EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C592C99C()
{
  sub_1C592825C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C592CA3C()
{
  result = qword_1EDA47978;
  if (!qword_1EDA47978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47978);
  }

  return result;
}

void sub_1C592CA90()
{
  if (!qword_1EDA46800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0);
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46800);
    }
  }
}

void sub_1C592CAF4()
{
  sub_1C592CA90();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C592CB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s8BackdropCMa()
{
  result = qword_1EDA49920;
  if (!qword_1EDA49920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C592CC40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C592CCA4()
{
  sub_1C592CC40(319, &qword_1EDA46818, qword_1EC194CE0, &unk_1C5BE8C80, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1C5924EA4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C592CD98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194D88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__image;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC194CE0);
  sub_1C5BC7FF4();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__isPaused;
  v14[7] = 0;
  sub_1C5BC7FF4();
  v11 = *(v2 + 32);
  v11(v0 + v10, v4, v1);
  v12 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel8Backdrop__isLegibilityOverlayShown;
  v14[6] = 0;
  sub_1C5BC7FF4();
  v11(v0 + v12, v4, v1);
  return v0;
}

unint64_t sub_1C592CFBC(uint64_t a1)
{
  result = sub_1C59284B8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C592CFE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194DB0);
    v3 = sub_1C5BCBA64();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1C5BCBF54();
      MEMORY[0x1C69501A0](v10);
      result = sub_1C5BCBF94();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1C592D124()
{
  result = qword_1EDA4B610[0];
  if (!qword_1EDA4B610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4B610);
  }

  return result;
}

void sub_1C592D178()
{
  sub_1C592D208();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C592D208()
{
  if (!qword_1EDA46818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC194CE0);
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46818);
    }
  }
}

uint64_t sub_1C592D26C()
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

void *sub_1C592D330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191820);
  v3 = sub_1C5BCBC74();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1C5AB97D8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1C5AB97D8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C592D484()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
  v2 = v1;
  sub_1C5937D74(v1);
}

uint64_t sub_1C592D4C8(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BCAC14();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1C5BCAC44();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 window];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = [objc_opt_self() sharedApplication];
    v18 = [v17 userInterfaceLayoutDirection];

    if (v18 == 1)
    {
      v19 = v16;
    }

    else
    {
      v19 = v12;
    }

    if (v18 != 1)
    {
      v12 = v16;
    }
  }

  else
  {
    v10 = 0;
    v19 = 0.0;
    v14 = 0;
    v12 = 0.0;
  }

  if (sub_1C5BC8164())
  {
    *(v2 + 16) = v10;
    *(v2 + 24) = v19;
    *(v2 + 32) = v14;
    *(v2 + 40) = v12;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v43 - 6) = v2;
    *(&v43 - 5) = v10;
    *(&v43 - 4) = v19;
    *(&v43 - 3) = v14;
    *(&v43 - 2) = v12;
    *&v59 = v2;
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  sub_1C5937F60(a1, &v53);
  v49 = *(&v53 + 1);
  v50 = *&v53;
  v21 = v54[0];
  v61 = *(v54 + 1);
  v62 = *(&v54[1] + 1);
  v63 = *(&v54[2] + 1);
  v64 = *(&v54[3] + 1);
  swift_getKeyPath();
  *&v59 = v2;
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  v23 = *(v2 + 104);
  v57 = v54[1];
  v58[0] = v54[2];
  *(v58 + 9) = *(&v54[2] + 9);
  v55 = v53;
  v56 = v54[0];
  if ((v23 & 0xFF0000) == 0x40000)
  {
    if ((v54[0] & 0xFF0000) == 0x40000)
    {
      return result;
    }

LABEL_17:
    swift_getKeyPath();
    *&v59 = v2;
    sub_1C5BC7B74();

    if (*(v2 + 106) << 16 == 0x40000)
    {
      goto LABEL_28;
    }

    swift_getKeyPath();
    *&v59 = v2;
    sub_1C5BC7B74();

    if (*(v2 + 106) << 8 == 1024 || (*(v2 + 104) & 1) != 0)
    {
      if (v21)
      {
LABEL_28:
        v36 = *(v2 + 104);
        v37 = *(v2 + 136);
        v60[1] = *(v2 + 120);
        v60[2] = v37;
        *(&v60[2] + 9) = *(v2 + 145);
        v59 = *(v2 + 88);
        v60[0] = v36;
        if (sub_1C592DEB4(&v59, &v55))
        {
          v38 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v38);
          *(&v43 - 2) = v2;
          *(&v43 - 1) = &v55;
          *&v51 = v2;
          sub_1C5BC7B64();
        }

        else
        {
          v39 = *(v2 + 104);
          v40 = *(v2 + 136);
          v52[1] = *(v2 + 120);
          v52[2] = v40;
          *(&v52[2] + 9) = *(v2 + 145);
          v51 = *(v2 + 88);
          v52[0] = v39;
          v41 = v55;
          *(v2 + 104) = v56;
          v42 = v58[0];
          *(v2 + 120) = v57;
          *(v2 + 136) = v42;
          *(v2 + 145) = *(v58 + 9);
          *(v2 + 88) = v41;
          return sub_1C592DF7C(&v51);
        }
      }
    }

    else if ((v21 & 1) == 0 && *(v2 + 88) == v50 && *(v2 + 96) == v49)
    {
      goto LABEL_28;
    }

    swift_getKeyPath();
    *&v59 = v2;
    sub_1C5BC7B74();

    if (*(v2 + 48) == 1)
    {
      v25 = [objc_opt_self() sharedApplication];
      v26 = [v25 applicationState];

      if (!v26)
      {
        sub_1C5929CA0();
        v27 = sub_1C5BCB5A4();
        v28 = swift_allocObject();
        v29 = v62;
        *(v28 + 41) = v61;
        v30 = v49;
        v31 = v50;
        *(v28 + 16) = v2;
        *(v28 + 24) = v31;
        *(v28 + 32) = v30;
        *(v28 + 40) = v21;
        *(v28 + 57) = v29;
        *(v28 + 73) = v63;
        *(v28 + 89) = v64;
        *&v60[1] = sub_1C5A34370;
        *(&v60[1] + 1) = v28;
        *&v59 = MEMORY[0x1E69E9820];
        *(&v59 + 1) = 1107296256;
        *&v60[0] = sub_1C596D09C;
        *(&v60[0] + 1) = &block_descriptor_6;
        v32 = _Block_copy(&v59);

        v33 = v43;
        sub_1C5BCAC34();
        *&v59 = MEMORY[0x1E69E7CC0];
        sub_1C5937E40(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
        sub_1C5A3437C();
        v34 = v45;
        v35 = v48;
        sub_1C5BCB8F4();
        MEMORY[0x1C694F7F0](0, v33, v34, v32);
        _Block_release(v32);

        (*(v47 + 8))(v34, v35);
        return (*(v44 + 8))(v33, v46);
      }
    }

    goto LABEL_28;
  }

  v59 = *(v2 + 88);
  v24 = *(v2 + 128);
  *(v60 + 8) = *(v2 + 112);
  *(&v60[1] + 8) = v24;
  *(&v60[2] + 8) = *(v2 + 144);
  BYTE8(v60[3]) = *(v2 + 160);
  *&v60[0] = v23;
  if ((v54[0] & 0xFF0000) == 0x40000)
  {
    goto LABEL_17;
  }

  v51 = v53;
  *(v52 + 8) = *(v54 + 8);
  *(&v52[1] + 8) = *(&v54[1] + 8);
  *(&v52[2] + 8) = *(&v54[2] + 8);
  BYTE8(v52[3]) = BYTE8(v54[3]);
  *&v52[0] = *&v54[0];
  result = _s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(&v59, &v51);
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1C592DD08()
{

  return swift_deallocObject();
}

void sub_1C592DD40(_BYTE *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (v3 >= 744.0)
  {
    if (v3 <= 744.0)
    {
      *a1 = 0;
      return;
    }

    if (v3 <= 768.0)
    {
      *a1 = 1;
      return;
    }

    if (v3 <= 810.0)
    {
      *a1 = 2;
      return;
    }

    if (v3 <= 820.0)
    {
      *a1 = 3;
      return;
    }

    if (v3 > 834.0)
    {
      *a1 = 6;
      return;
    }

    v4 = a2 > 1112.0;
    v5 = 5;
    v6 = 4;
  }

  else
  {
    if (v3 <= 375.0)
    {
      *a1 = a2 > 667.0;
      return;
    }

    if (v3 <= 393.0)
    {
      v4 = a2 > 844.0;
      v5 = 3;
      v6 = 2;
    }

    else
    {
      if (v3 <= 414.0)
      {
        *a1 = 4;
        return;
      }

      v4 = v3 > 428.0;
      v5 = 6;
      v6 = 5;
    }
  }

  if (!v4)
  {
    v5 = v6;
  }

  *a1 = v5;
}

BOOL sub_1C592DEB4(__int128 *a1, __int128 *a2)
{
  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if ((v4 & 0xFF0000) == 0x40000)
  {
    return (v5 & 0xFF0000) != 0x40000;
  }

  v20 = v2;
  v21 = v3;
  v14 = *a1;
  v16 = *(a1 + 24);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = *(a1 + 72);
  v15 = v4;
  if ((v5 & 0xFF0000) == 0x40000)
  {
    v7 = 1;
  }

  else
  {
    v8 = *a2;
    v10 = *(a2 + 24);
    v11 = *(a2 + 40);
    v12 = *(a2 + 56);
    v13 = *(a2 + 72);
    v9 = v5;
    v7 = _s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(&v14, &v8) ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1C592DF7C(__int128 *a1)
{
  v2 = v1;
  v4 = *(a1 + 2);
  swift_getKeyPath();
  *&v26 = v1;
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  v6 = *(v1 + 104);
  if ((v4 & 0xFF0000) == 0x40000)
  {
    if ((v6 & 0xFF0000) == 0x40000)
    {
      return result;
    }
  }

  else
  {
    v26 = *a1;
    *&v27[8] = *(a1 + 24);
    *&v27[24] = *(a1 + 40);
    *&v27[40] = *(a1 + 56);
    v27[56] = *(a1 + 72);
    *v27 = v4;
    if ((v6 & 0xFF0000) != 0x40000)
    {
      v20 = *(v1 + 88);
      v7 = *(v1 + 128);
      *&v21[8] = *(v1 + 112);
      *&v21[24] = v7;
      v22 = *(v1 + 144);
      v23 = *(v1 + 160);
      *v21 = v6;
      result = _s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(&v26, &v20);
      if (result)
      {
        return result;
      }
    }
  }

  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7D64();
  __swift_project_value_buffer(v8, qword_1EDA5DA78);

  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    swift_getKeyPath();
    *&v26 = v1;
    sub_1C5BC7B74();

    v25 = *(v1 + 88);
    v13 = *(v1 + 104);
    v14 = *(v2 + 128);
    v20 = *(v2 + 112);
    *v21 = v14;
    *&v21[16] = *(v2 + 144);
    v21[32] = *(v2 + 160);

    if ((v13 & 0xFF0000) == 0x40000)
    {
      __break(1u);
      return result;
    }

    v26 = v25;
    *v27 = v13;
    *&v27[8] = v20;
    *&v27[24] = *v21;
    *&v27[40] = *&v21[16];
    v27[56] = v21[32];
    v15 = DeviceMetrics.description.getter();
    v17 = sub_1C592ADA8(v15, v16, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1C5922000, v9, v10, "Updated device metrics: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C69510F0](v12, -1, -1);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }

  else
  {
  }

  swift_getKeyPath();
  *&v26 = v2;
  sub_1C5BC7B74();

  v18 = *(v2 + 104);
  v19 = *(v2 + 136);
  *&v27[16] = *(v2 + 120);
  *&v27[32] = v19;
  *&v27[41] = *(v2 + 145);
  v26 = *(v2 + 88);
  *v27 = v18;
  return sub_1C5BC7F54();
}

uint64_t sub_1C592E304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v9[2] = *(v1 + 120);
  v10[0] = v4;
  *(v10 + 9) = *(v1 + 145);
  v9[0] = *(v1 + 88);
  v9[1] = v3;
  *(v1 + 88) = *v2;
  v6 = v2[2];
  v5 = v2[3];
  v7 = *(v2 + 57);
  *(v1 + 104) = v2[1];
  *(v1 + 145) = v7;
  *(v1 + 136) = v5;
  *(v1 + 120) = v6;
  return sub_1C592DF7C(v9);
}

unint64_t DeviceMetrics.description.getter()
{
  if (v0[16])
  {
    return 0xD00000000000001DLL;
  }

  v2 = v0[18];
  v3 = v0[17] == 9 || v2 == 3;
  if (v3 || (v0[32] & 1) != 0)
  {
    return 0xD00000000000001DLL;
  }

  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000015, 0x80000001C5BF6050);
  v4 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v4);

  MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
  v5 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v5);

  MEMORY[0x1C694F170](62, 0xE100000000000000);
  MEMORY[0x1C694F170](540702524, 0xE400000000000000);

  MEMORY[0x1C694F170](0x6C43657A6973202CLL, 0xEC0000003D737361);
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](0x74756F79616C202CLL, 0xE90000000000003DLL);
  v6 = 0xE700000000000000;
  v7 = 0x72616C75676572;
  if (v2 != 1)
  {
    v7 = 0x4572616C75676572;
    v6 = 0xEF6465646E657478;
  }

  if (v2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x746361706D6F63;
  }

  if (v2)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  MEMORY[0x1C694F170](v8, v9);

  MEMORY[0x1C694F170](0xD000000000000015, 0x80000001C5BF6070);
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1C5BCBBA4();
  return 0;
}

uint64_t sub_1C592E620()
{
  (*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 224))(*((*MEMORY[0x1E69E7D40] & *v0) + 0x50));

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8044();
  return sub_1C593871C(0);
}

void sub_1C592E71C()
{
  v1 = [v0 superview];
  if (v1)
  {
    v17 = v1;
    [v0 setTranslatesAutoresizingMaskIntoConstraints_];
    v2 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C5BD9A40;
    v4 = [v0 leadingAnchor];
    v5 = [v17 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor_];

    *(v3 + 32) = v6;
    v7 = [v0 trailingAnchor];
    v8 = [v17 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor_];

    *(v3 + 40) = v9;
    v10 = [v0 topAnchor];
    v11 = [v17 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v3 + 48) = v12;
    v13 = [v0 bottomAnchor];
    v14 = [v17 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v3 + 56) = v15;
    sub_1C592535C(0, &qword_1EDA45E20);
    v16 = sub_1C5BCB044();

    [v2 activateConstraints_];

    [v0 setNeedsUpdateConstraints];
  }
}

void sub_1C592EA28(void *a1)
{
  v1 = a1;
  sub_1C5938F50(&selRef_viewSafeAreaInsetsDidChange);
}

void sub_1C592EA7C(void *a1)
{
  v1 = a1;
  sub_1C5938F50(&selRef_viewWillLayoutSubviews);
}

__n128 sub_1C592EBB0()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  return result;
}

uint64_t _s11MediaCoreUI13DeviceMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = *(a2 + 17);
  v9 = *(a2 + 18);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    result = 0;
    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return result;
    }
  }

  if (v3 == 9)
  {
    if (v8 != 9)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 == 9 || v3 != v8)
    {
      return result;
    }
  }

  if (v4 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v9 == 3 || v4 != v9)
    {
      return result;
    }
  }

  if (v6)
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v5 == *(a2 + 24))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v7)
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 72) & 1) != 0 || (sub_1C5BC8164() & 1) == 0)
  {
    return 0;
  }

  return 1;
}

id sub_1C592ECE0()
{
  v10.receiver = v0;
  v10.super_class = _s12BackdropViewCMa();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[qword_1EDA48118];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[qword_1EDA48120];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }

  v4 = *&v0[qword_1EDA48128];
  [v0 bounds];
  [v4 setFrame_];
  v5 = *&v0[qword_1EDA480F0];
  [v0 bounds];
  [v5 setFrame_];
  v6 = *&v0[qword_1EDA48100];
  [v0 bounds];
  [v6 setFrame_];
  v7 = *&v0[qword_1EDA48108];
  [v0 bounds];
  [v7 setFrame_];
  v8 = *&v0[qword_1EDA48110];
  [v0 bounds];
  return [v8 setFrame_];
}

__n128 sub_1C592EE88()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

uint64_t sub_1C592EEA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C592EEE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C592EF38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C592EF8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C592F010()
{
  if (!qword_1EDA46710)
  {
    type metadata accessor for EnvironmentMonitor();
    sub_1C592F30C(qword_1EDA4B360, type metadata accessor for EnvironmentMonitor);
    v0 = sub_1C5BC83B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46710);
    }
  }
}

void sub_1C592F0A4()
{
  sub_1C592F010();
  if (v0 <= 0x3F)
  {
    sub_1C5936BDC();
    if (v1 <= 0x3F)
    {
      sub_1C5BC8C94();
      if (v2 <= 0x3F)
      {
        sub_1C5936C70();
        if (v3 <= 0x3F)
        {
          sub_1C593A1C8(319, &qword_1EDA467C0, type metadata accessor for WindowProperties);
          if (v4 <= 0x3F)
          {
            sub_1C592CC40(319, &qword_1EDA46790, &qword_1EC194470, &unk_1C5BEBAC0, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1C592CC40(319, &qword_1EDA46778, qword_1EC19A460, &unk_1C5BDD000, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1C592CC40(319, &qword_1EDA467D0, &qword_1EC193C10, &unk_1C5BDB690, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1C593A1C8(319, &qword_1EDA46768, MEMORY[0x1E697BE48]);
                  if (v8 <= 0x3F)
                  {
                    sub_1C592CC40(319, &qword_1EDA46780, &qword_1EC194468, &unk_1C5BDBCD0, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1C593A1C8(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

uint64_t sub_1C592F30C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5DebugCMa()
{
  result = qword_1EDA4A1F8;
  if (!qword_1EDA4A1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C592F3D4()
{
  sub_1C5924EA4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for WindowProperties()
{
  result = qword_1EDA4B948;
  if (!qword_1EDA4B948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C592F4E0()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0x40000;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943B0);
  swift_allocObject();
  *(v0 + 168) = sub_1C5BC7F84();
  sub_1C5BC7BA4();
  return v0;
}

unint64_t sub_1C592F5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191818);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C596FBD8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C592F69C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);

  LOBYTE(v4) = sub_1C5934068(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[0] = v1;
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B64();
  }

  else
  {
    v8 = *(v1 + 24);
    v9 = *(v1 + 32);
    *(v1 + 24) = v3;
    *(v1 + 32) = v2;
    v10[0] = v8;
    v10[1] = v9;
    sub_1C5936674(v10);
  }
}

uint64_t sub_1C592F7F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void sub_1C592F844(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
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
LABEL_47:
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
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
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
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1C592FAC0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v85 = sub_1C5BCB5F4();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v80 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A448);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v80 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A450);
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v80 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A458);
  v95 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v13 = &v80 - v12;
  *(v1 + qword_1EDA47FB8) = 0;
  *(v1 + qword_1EDA47FA0) = 0;
  *(v1 + qword_1EDA47FA8) = 0;
  *(v1 + qword_1EDA47F90) = MEMORY[0x1E69E7CD0];
  v14 = qword_1EDA47F98;
  type metadata accessor for NowPlayingRouteObserver();
  swift_allocObject();
  *(v1 + v14) = sub_1C5930D44();
  *(v1 + qword_1EDA47F30) = 0;
  *(v1 + qword_1EDA47F20 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1EDA47F78) = 0;
  *(v1 + qword_1EDA47F60) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_1EDA481F0) = 0;
  *(v1 + qword_1EDA47FD0) = 0;
  *(v1 + qword_1EDA47FC8) = 0;
  *(v1 + qword_1EDA47F50) = 0;
  *(v1 + qword_1EDA47F68) = 0;
  *(v1 + qword_1EDA47FE0) = 0;
  *(v1 + qword_1EDA47F88) = 0;
  *(v1 + qword_1EDA48200) = 0;
  *(v1 + qword_1EDA47F48) = 0;
  v15 = v1 + qword_1EDA47F40;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *(v1 + qword_1EDA481E8) = a1;
  v16 = *((v4 & v3) + 0x58);
  v17 = *((v4 & v3) + 0x50);
  v105 = v17;
  v18 = v16;
  v19 = type metadata accessor for NowPlayingViewController();
  v110.receiver = v1;
  v110.super_class = v19;
  v101 = a1;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v110, sel_initWithNibName_bundle_, 0, 0);
  v102 = *(v18 + 224);
  v21 = v102;
  v103 = v18 + 224;
  v104 = v20;
  v22 = *(v21(v17, v18) + 168);

  v107[0] = v22;
  v23 = sub_1C592535C(0, &qword_1EDA4E620);
  v24 = sub_1C5BCB5A4();
  v106 = v24;
  v25 = sub_1C5BCB594();
  v26 = *(v25 - 8);
  *&v100 = *(v26 + 56);
  v97 = v26 + 56;
  v98 = v11;
  (v100)(v11, 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F40);
  sub_1C5924F54(&qword_1EDA46898, &unk_1EC199F40);
  v99 = sub_1C5931640();
  sub_1C5BC80D4();
  sub_1C5924EF4(v11, &unk_1EC199F20);

  v27 = swift_allocObject();
  v28 = v104;
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v30 = v105;
  v29[2] = v105;
  v29[3] = v18;
  v96 = v18;
  v29[4] = v27;
  v90 = MEMORY[0x1E695BE98];
  sub_1C5924F54(&qword_1EDA468F0, &qword_1EC19A458);
  v31 = v91;
  sub_1C5BC8114();

  (*(v95 + 8))(v13, v31);
  v32 = &v28[qword_1EDA47F90];
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v102(v30, v18);

  v33 = sub_1C5931774();

  v107[0] = v33;
  v34 = sub_1C5BCB5A4();
  v106 = v34;
  v35 = v98;
  v95 = v25;
  (v100)(v98, 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199990);
  sub_1C5924F54(&qword_1EDA468B0, &qword_1EC199990);
  v36 = v92;
  v91 = v23;
  sub_1C5BC80D4();
  sub_1C5924EF4(v35, &unk_1EC199F20);

  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v39 = v105;
  v40 = v96;
  v38[2] = v105;
  v38[3] = v40;
  v38[4] = v37;
  sub_1C5924F54(&qword_1EDA468F8, &qword_1EC19A450);
  v41 = v93;
  sub_1C5BC8114();

  (*(v94 + 1))(v36, v41);
  swift_beginAccess();
  v94 = v32;
  sub_1C5BC7EE4();
  swift_endAccess();

  v42 = v40;
  v43 = *(v102(v39, v40) + 112);

  if (v43)
  {
    swift_getKeyPath();
    v107[0] = v43;
    sub_1C5931880(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B74();

    v45 = *(v43 + 56);

    v107[0] = v45;
    v46 = sub_1C5BCB5A4();
    v106 = v46;
    v47 = v98;
    (v100)(v98, 1, 1, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194460);
    sub_1C5924F54(&qword_1EDA46890, &qword_1EC194460);
    v48 = v80;
    sub_1C5BC80D4();
    sub_1C5924EF4(v47, &unk_1EC199F20);

    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    v50[2] = v105;
    v50[3] = v42;
    v50[4] = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1C5BA9440;
    *(v51 + 24) = v50;
    sub_1C5924F54(&qword_1EDA468E8, &qword_1EC19A448);
    v52 = v82;
    sub_1C5BC8114();

    (*(v81 + 8))(v48, v52);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    v53 = [objc_opt_self() defaultCenter];
    v54 = v83;
    sub_1C5BCB604();

    v55 = sub_1C5BCB5A4();
    v107[0] = v55;
    (v100)(v47, 1, 1, v95);
    sub_1C5931880(&unk_1EDA4E0E0, MEMORY[0x1E6969F20]);
    v56 = v86;
    v57 = v85;
    sub_1C5BC80D4();
    sub_1C5924EF4(v47, &unk_1EC199F20);

    (*(v84 + 8))(v54, v57);
    v58 = swift_allocObject();
    v59 = v104;
    swift_unknownObjectWeakInit();

    v60 = v59;
    v61 = swift_allocObject();
    v62 = v105;
    v63 = v96;
    v61[2] = v105;
    v61[3] = v63;
    v61[4] = v58;
    sub_1C5924F54(&qword_1EDA4E1B8, &qword_1EC19A440);
    v64 = v88;
    sub_1C5BC8114();

    (*(v87 + 8))(v56, v64);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0);
    v65 = swift_allocObject();
    v100 = xmmword_1C5BCFF00;
    *(v65 + 16) = xmmword_1C5BCFF00;
    v66 = sub_1C5BC7E04();
    v67 = MEMORY[0x1E69DC0F8];
    *(v65 + 32) = v66;
    *(v65 + 40) = v67;
    v68 = swift_allocObject();
    v69 = ObjectType;
    *(v68 + 16) = v101;
    *(v68 + 24) = v69;
    swift_unknownObjectRetain();
    v70 = v60;
    sub_1C5BCB554();
    swift_unknownObjectRelease();

    v71 = swift_allocObject();
    *(v71 + 16) = v100;
    v72 = sub_1C5BC7E24();
    v73 = MEMORY[0x1E69DC198];
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;
    *(swift_allocObject() + 16) = v69;
    sub_1C5BCB554();
    swift_unknownObjectRelease();

    v74 = *(v102(v62, v63) + 72);

    v75 = [v70 traitCollection];

    v76 = [v75 accessibilityContrast];
    if (*(v74 + 56) == v76)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      sub_1C59318C8(v74 + 16, v107);
      v77 = v108;
      v78 = v109;
      v79 = __swift_project_boxed_opaque_existential_0(v107, v108);
      sub_1C593192C(v79, v76, v74, v77, v78);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v107);
    }

    *(v74 + 56) = v76;

    return v70;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5930BC0()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C5930BF8()
{

  return swift_deallocObject();
}

uint64_t sub_1C5930C30()
{

  return swift_deallocObject();
}

uint64_t sub_1C5930C98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t type metadata accessor for NowPlayingRouteObserver()
{
  result = qword_1EDA48448;
  if (!qword_1EDA48448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5930D44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v31 - v3;
  v41 = sub_1C5BCB5F4();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440);
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198300);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver__route;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1982F8);
  sub_1C5BC7FF4();
  (*(v9 + 32))(v1 + v12, v11, v8);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver_routeDidChange) = 0;
  v40 = OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver_subscriptions;
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver_subscriptions) = MEMORY[0x1E69E7CD0];
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1C596C118;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596C0AC;
  aBlock[3] = &block_descriptor_19;
  v15 = _Block_copy(aBlock);
  swift_retain_n();

  [v13 getActiveRouteWithCompletion_];
  _Block_release(v15);
  v39 = objc_opt_self();
  v16 = [v39 defaultCenter];
  sub_1C5BCB604();

  sub_1C592535C(0, &qword_1EDA4E620);
  v17 = sub_1C5BCB5A4();
  aBlock[0] = v17;
  v18 = sub_1C5BCB594();
  v19 = *(v18 - 8);
  v37 = *(v19 + 56);
  v38 = v19 + 56;
  v20 = v43;
  v37(v43, 1, 1, v18);
  v35 = sub_1C59315F8(&unk_1EDA4E0E0, MEMORY[0x1E6969F20]);
  v36 = sub_1C5931640();
  v21 = v7;
  v22 = v41;
  sub_1C5BC80D4();
  sub_1C59316A8(v20);

  v23 = *(v44 + 8);
  v44 += 8;
  v34 = v23;
  v24 = v22;
  v23(v5, v22);
  swift_allocObject();
  swift_weakInit();

  v33 = sub_1C5931710();
  v25 = v42;
  sub_1C5BC8114();

  v26 = *(v45 + 8);
  v45 += 8;
  v32 = v26;
  v26(v21, v25);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v27 = [v39 defaultCenter];
  sub_1C5BCB604();

  v28 = sub_1C5BCB5A4();
  aBlock[0] = v28;
  v29 = v43;
  v37(v43, 1, 1, v18);
  sub_1C5BC80D4();
  sub_1C59316A8(v29);

  v34(v5, v24);
  swift_allocObject();
  swift_weakInit();

  sub_1C5BC8114();

  v32(v21, v25);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  return v1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C59315F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C5931640()
{
  result = qword_1EDA4E630;
  if (!qword_1EDA4E630)
  {
    sub_1C592535C(255, &qword_1EDA4E620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E630);
  }

  return result;
}

uint64_t sub_1C59316A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5931710()
{
  result = qword_1EDA4E1B8;
  if (!qword_1EDA4E1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E1B8);
  }

  return result;
}

uint64_t sub_1C5931774()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194D90);
    sub_1C5924F54(&qword_1EDA46868, &unk_1EC194D90);
    v1 = sub_1C5BC8064();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1C5931838(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C5931880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C59318C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C593192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[3] = a4;
  v20[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  if (a2 == 1 && (sub_1C59318C8(v20, v18), __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460), swift_dynamicCast()))
  {

    v11 = sub_1C592CFE4(&unk_1F4518B80);
    sub_1C5B8FAFC(v11, a3);
  }

  else
  {
    sub_1C59318C8(v20, v18);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x1EEE9AC00](v12);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    sub_1C59341CC(v14, a3, a4, a5);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t NowPlayingArtworkTreatment.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BCB804();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C59318C8(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v8, 0, 1, a2);
    (*(v9 + 32))(v11, v8, a2);
    v14 = sub_1C5BCADB4();
    (*(v9 + 8))(v11, a2);
  }

  else
  {
    v13(v8, 1, 1, a2);
    (*(v5 + 8))(v8, v4);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1C5931E14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1C5BCBF54();
    MEMORY[0x1C69501A0](v13);
    result = sub_1C5BCBF94();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5931F84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1C5931F9C(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1C592535C(0, &qword_1EDA45E38);
    v6 = v1;
    v7 = sub_1C5BCB744();

    if (v7)
    {
      return;
    }
  }

  v8 = v2;
  swift_unknownObjectWeakAssign();
  sub_1C5932278(1);

  v9 = [v8 tabBar];
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  v11 = [v8 tabBar];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v11 _setBackgroundView_];

  sub_1C59322FC();
  if (v13)
  {
    v14 = v13;
    v15 = [a1 view];
    if (!v15)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v16 = v15;
    v17 = [v8 tabBar];
    [v14 insertSubview:v16 belowSubview:v17];
  }

  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 1)
  {
    v20 = [a1 view];
    if (!v20)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v21 = v20;
    v22 = [v20 respondsToSelector_];

    if (v22)
    {
      v23 = [a1 view];
      if (!v23)
      {
LABEL_18:
        __break(1u);
        return;
      }

      v24 = v23;
      [v23 _accessibilitySetSortPriority_];
    }
  }

  v25 = [a1 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  sub_1C592E71C();
}

void sub_1C5932278(char a1)
{
  [*(v1 + qword_1EDA47F88) removeFromSuperview];
  if (a1)
  {
    v3 = *(v1 + qword_1EDA47F88);
    *(v1 + qword_1EDA47F88) = 0;
  }

  [*(v1 + qword_1EDA48200) removeFromSuperview];
  v4 = *(v1 + qword_1EDA48200);
  *(v1 + qword_1EDA48200) = 0;
}

void sub_1C59322FC()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = [v0 view];
  v4 = v3;
  if (v2 != 1)
  {
    return;
  }

  if (!v3)
  {
    goto LABEL_23;
  }

  v5 = [v3 subviews];

  sub_1C592535C(0, &qword_1EDA4E078);
  v6 = sub_1C5BCB054();

  if (v6 >> 62)
  {
LABEL_19:
    v7 = sub_1C5BCB984();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_20:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_5:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C694FD20](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v12 = [v0 selectedViewController];
    if (v12)
    {
      break;
    }

LABEL_6:

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_20;
    }
  }

  v13 = v12;
  v14 = [v12 view];

  if (v14)
  {
    v15 = [v14 superview];

    if (v15)
    {
      v16 = [v15 isDescendantOfView_];

      if (v16)
      {

        return;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C593251C(void *a1)
{
  v1 = a1;
  sub_1C5932564();
}

uint64_t sub_1C5932564()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  type metadata accessor for PassthroughView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setView_];

  v5 = *((v3 & v2) + 0x50);
  v6 = *((v3 & v2) + 0x58);
  _s12BackdropViewCMa();
  v7 = (*(v6 + 224))(v5, v6);
  *&v1[qword_1EDA47FE0] = sub_1C593278C(v7);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1C5932820()
{
  v0[qword_1EDA481B0] = 0;
  v0[qword_1EDA481C8] = 0;
  v0[qword_1EDA481B8] = 0;
  v0[qword_1EDA481C0] = 0;
  v6.receiver = v0;
  v6.super_class = _s12BackdropViewC16VideoOverlayViewCMa();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 blackColor];
  [v3 setBackgroundColor_];

  return v3;
}

unint64_t sub_1C5932A90()
{
  result = qword_1EDA45E60;
  if (!qword_1EDA45E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA45E60);
  }

  return result;
}

uint64_t _s11PlayerStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s11PlayerStyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

id sub_1C5932C1C(uint64_t a1)
{
  v2 = v1;
  [*(v2 + qword_1EDA48108) setHidden_];
  v4 = *(v2 + qword_1EDA48120);
  if (v4)
  {
    [v4 setHidden_];
  }

  *(*(v2 + qword_1EDA48128) + qword_1EDA481B8) = a1 == 1;
  sub_1C5932CD4();
  v5 = *(v2 + qword_1EDA480F0);

  return [v5 setHidden_];
}

id sub_1C5932CD4()
{
  if (v0[qword_1EDA481B0] != 1 || v0[qword_1EDA481C8] != 1 || (v0[qword_1EDA481B8] & 1) != 0 || (v1 = 1.0, (v0[qword_1EDA481C0] & 1) == 0))
  {
    v1 = 0.0;
  }

  return [v0 setAlpha_];
}

void sub_1C5932D34(void *a1)
{
  v1 = a1;
  sub_1C5932D7C();
}

void sub_1C5932D7C()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = type metadata accessor for NowPlayingView();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v54 - v6;
  type metadata accessor for NowPlayingEnvironmentModifier();
  v7 = sub_1C5BC8AB4();
  v62 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v54 - v8;
  v58 = sub_1C5BC8AB4();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v54 - v9;
  v10 = type metadata accessor for NowPlayingViewController();
  v73.receiver = v0;
  v73.super_class = v10;
  objc_msgSendSuper2(&v73, sel_viewDidLoad);
  v11 = *&v0[qword_1EDA481E8];
  v12 = *(v3 + 224);
  v63 = v3;
  v64 = v11;
  v13 = *(v12(v2, v3) + 152);

  v14 = objc_allocWithZone(type metadata accessor for ExpandedViewController());

  v16 = sub_1C5936404(v15, 0);
  v17 = *&v1[qword_1EDA47FA8];
  *&v1[qword_1EDA47FA8] = v16;

  if (_UISolariumEnabled())
  {
    v18 = sub_1C5934434();
    objc_allocWithZone(type metadata accessor for CollapsedTabAccessoryViewController());

    v19 = sub_1C593448C(v18, v13, 0);
    v20 = *&v1[qword_1EDA47FA0];
    *&v1[qword_1EDA47FA0] = v19;
  }

  else
  {
    v21 = objc_allocWithZone(type metadata accessor for CollapsedViewController());
    *&v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer] = 0;
    v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController_hidesMiniPlayer] = 0;
    v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] = 0;
    *&v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView] = 0;
    *&v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView] = 0;
    *&v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties] = v13;
    *&v21[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_statusBarStyle] = 0;
    v22 = type metadata accessor for ContentViewController();
    v72.receiver = v21;
    v72.super_class = v22;

    v23 = objc_msgSendSuper2(&v72, sel_initWithNibName_bundle_, 0, 0);
    v24 = *&v1[qword_1EDA47FA0];
    *&v1[qword_1EDA47FA0] = v23;

    if (!*&v1[qword_1EDA47FA0])
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v1 addChildViewController_];
  }

  v25 = *&v1[qword_1EDA47FA0];
  if (!v25)
  {
    __break(1u);
    goto LABEL_20;
  }

  v26 = [v25 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28;
  v57 = v5;
  [v28 addSubview_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v30 = *&v1[qword_1EDA47FA0];
    if (!v30)
    {
LABEL_25:
      __break(1u);
      return;
    }

    [v30 didMoveToParentViewController_];
  }

  v65 = v27;
  v56 = v13;
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v70 = WitnessTable;
  v71 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_1C5933B64();
  v68 = v33;
  v69 = v34;
  swift_getWitnessTable();
  v58 = sub_1C5BC91C4();
  v35 = v59;
  sub_1C5933BB8(v59);
  v36 = *&v1[qword_1EDA47F98];
  v55 = v2;
  type metadata accessor for NowPlayingViewControllerProxy();
  v37 = v4;
  v38 = sub_1C592C0B8();

  v39 = v61;
  sub_1C5937490(v64, v36, v38, v37, WitnessTable);

  (*(v57 + 8))(v35, v37);
  v66[0] = sub_1C593EF24;
  v66[1] = 0;
  v67 = 0;
  MEMORY[0x1C694E550](v66, v7, &type metadata for HostedScenePhaseSupport, v33);
  (*(v62 + 8))(v39, v7);
  v40 = sub_1C5BC9194();
  sub_1C5BC8AD4();
  sub_1C5BC9184();
  v41 = v40;
  v42 = [v41 view];
  if (!v42)
  {
    goto LABEL_22;
  }

  v43 = v42;
  v44 = [objc_opt_self() clearColor];
  [v43 setBackgroundColor_];

  v45 = *&v1[qword_1EDA47FB8];
  *&v1[qword_1EDA47FB8] = v41;

  v46 = *&v1[qword_1EDA47FA0];
  if (!v46)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v47 = v46;
  sub_1C5937994(v47);

  sub_1C5938180();
  if ((*(v63 + 312))(v55))
  {
    swift_unknownObjectRelease();
    v48 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    v49 = v65;
    if (*&v1[qword_1EDA47FA0])
    {
      type metadata accessor for CollapsedTabAccessoryViewController();
      v50 = swift_dynamicCastClass();
      v49 = v65;
      if (v50)
      {
        v49 = *(v50 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer);
      }
    }

    v51 = v49;
    [v51 addInteraction_];
    v52 = *&v1[qword_1EDA47F78];
    *&v1[qword_1EDA47F78] = v48;
  }

  sub_1C5938344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD31C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1C5A2DF98(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
}

void sub_1C59335A0(uint64_t a1@<X8>)
{
  *a1 = "MediaCoreUI";
  *(a1 + 8) = 11;
  *(a1 + 16) = 2;
  *(a1 + 24) = "HoveringChapterPicker";
  *(a1 + 32) = 21;
  *(a1 + 40) = 2;
}

void sub_1C59335D0(uint64_t a1@<X8>)
{
  *a1 = "MediaCoreUI";
  *(a1 + 8) = 11;
  *(a1 + 16) = 2;
  *(a1 + 24) = "FluidScrubber";
  *(a1 + 32) = 13;
  *(a1 + 40) = 2;
}

void sub_1C5933618()
{
  sub_1C5BC8C94();
  if (v0 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EDA46778, qword_1EC19A460);
    if (v1 <= 0x3F)
    {
      sub_1C592EF8C(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
      if (v2 <= 0x3F)
      {
        sub_1C5AB41DC();
        if (v3 <= 0x3F)
        {
          sub_1C592EF8C(319, &qword_1EDA46798, _s12PresentationCMa);
          if (v4 <= 0x3F)
          {
            sub_1C593377C(319, &qword_1EDA46780, &qword_1EC194468);
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

void sub_1C593377C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C59337D0()
{
  if (!qword_1EDA46760)
  {
    sub_1C5BC8284();
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46760);
    }
  }
}

void sub_1C5933828(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C5BC8304();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C5933874(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C59338DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1C5933960()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1C5BC7E54();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C5BC7E74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v0[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_hidesBackground] = 0;
  *&v0[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView] = 0;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C5BC7E44();
  sub_1C5BC7E84();
  v10[3] = v3;
  v10[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0(v10);
  sub_1C5BC7E64();
  (*(v4 + 8))(v6, v3);
  sub_1C5BCB694();

  return v7;
}

unint64_t sub_1C5933B64()
{
  result = qword_1EDA485E0;
  if (!qword_1EDA485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA485E0);
  }

  return result;
}

uint64_t sub_1C5933BB8@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = sub_1C5BC8C84();
  *(a1 + 16) = v2;
  *(a1 + 24) = swift_getKeyPath();
  *(a1 + 64) = 0;
  v3 = type metadata accessor for NowPlayingView();
  v4 = v3[11];
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v5 = a1 + v3[12];
  *v5 = swift_getKeyPath();
  *(v5 + 73) = 0;
  v6 = a1 + v3[13];
  _s12PresentationCMa();
  sub_1C5B8013C(&qword_1EDA4AF70, _s12PresentationCMa);
  *v6 = sub_1C5BC8324();
  *(v6 + 8) = v7 & 1;
  v8 = a1 + v3[14];
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  return result;
}

uint64_t sub_1C5933D58()
{
  v1 = v0;
  *(v0 + 16) = sub_1C592F5A0(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194460);
  swift_allocObject();
  *(v0 + 56) = sub_1C5BC7F44();
  *(v0 + 64) = xmmword_1C5BDB910;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  swift_weakInit();
  sub_1C5BC7BA4();
  swift_getKeyPath();
  v8[0] = v0;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);

  sub_1C5BC7B64();

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1C5933F84();
  v5 = v4;

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v8[0] = v6;
  v8[1] = v5;
  sub_1C592F69C(v8);
  return v1;
}

uint64_t sub_1C5933F04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5933F84()
{
  v1 = sub_1C5BCAE44();
  v2 = [v0 stringForKey_];

  if (!v2)
  {
    v3 = sub_1C5BCAE44();
    v2 = [v0 stringForKey_];

    if (!v2)
    {
      return 0;
    }
  }

  v4 = sub_1C5BCAE74();

  return v4;
}

uint64_t sub_1C5934068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a2)
  {
    if (!a4)
    {

      return v4 & 1;
    }

    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:

    v4 = 1;
    return v4 & 1;
  }

  if (a1 == a3 && a2 == a4)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1C5BCBDE4();

    v4 = v5 ^ 1;
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t MCUINamespace<A>.installNowPlayingView<A>(controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1C5934B08(a1, a2, a3, sub_1C5931F9C);
}

{
  return sub_1C5934B08(a1, a2, a3, sub_1C5B9D22C);
}

void sub_1C5934168()
{
  if (!qword_1EDA46808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1982F8);
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46808);
    }
  }
}

uint64_t sub_1C59341CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v14 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  swift_beginAccess();
  sub_1C59318C8(a2 + 64, v11);
  v8 = NowPlayingArtworkTreatment.isEqual(_:)(v11, a3);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v8 & 1) == 0)
  {
    _s7ArtworkCMa();
    sub_1C5A4E970(qword_1EDA49C50, v9, _s7ArtworkCMa);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();

    sub_1C5BC7F54();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(a2 + 64);
  sub_1C5931F84(&v12, a2 + 64);
  return swift_endAccess();
}

id sub_1C593432C(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = _s12GradientViewCMa();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_1C59343CC()
{
  v1 = [v0 layer];
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t sub_1C5934434()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void *sub_1C593448C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(type metadata accessor for CollapsedTabAccessoryViewController.MiniPlayerContainer());
  v9 = a1;
  v10 = sub_1C5933960();

  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer] = v10;
  v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] = 0;
  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView] = 0;
  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView] = 0;
  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties] = a2;
  *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_statusBarStyle] = a3;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for ContentViewController();

  v11 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  v12 = v11;
  if (a1)
  {
    v13 = *&v11[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController_miniPlayerContainer];
    v14 = objc_allocWithZone(MEMORY[0x1E69DD790]);
    v15 = v9;
    v16 = v12;
    v17 = [v14 initWithContentView_];
    [v15 _setBottomAccessory_];
  }

  else
  {
  }

  return v12;
}

uint64_t sub_1C59346D0()
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

uint64_t sub_1C59347D8()
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

unint64_t sub_1C5934890()
{
  result = qword_1EDA46880;
  if (!qword_1EDA46880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1962A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46880);
  }

  return result;
}

uint64_t sub_1C59348F4()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA5DA78);
  __swift_project_value_buffer(v0, qword_1EDA5DA78);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5934970(uint64_t result, int a2, int a3)
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

uint64_t sub_1C59349AC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 112);
  if (v2)
  {
    swift_getKeyPath();
    sub_1C5B906C0(&qword_1EDA4AE80, _s13HostedContentCMa);

    sub_1C5BC7B74();

    v5 = *(v2 + 24);
    v4 = *(v2 + 32);

    *a1 = v5;
    a1[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5934A84(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_1C592F69C(v4);
}

uint64_t sub_1C5934AC0(uint64_t a1, int a2)
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

uint64_t sub_1C5934B08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for NowPlayingViewController();
  swift_unknownObjectRetain();
  v7 = objc_allocWithZone(v6);
  v8 = sub_1C592FAC0(a1);
  a4();
  return v8;
}

void sub_1C5934B78()
{
  sub_1C5934168();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1C5934C20(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199960);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v95 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199968);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = &v95 - v6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C8);
  v127 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v95 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198558);
  v128 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v106 = &v95 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199970);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199978);
  v116 = *(v10 - 8);
  v117 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v103 = &v95 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199980);
  v97 = *(v118 - 1);
  MEMORY[0x1EEE9AC00](v118);
  v96 = &v95 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199988);
  v99 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v98 = &v95 - v15;
  *&v2[qword_1EDA480F8] = MEMORY[0x1E69E7CD0];
  *&v2[qword_1EDA48120] = 0;
  swift_weakInit();
  v129 = a1;
  swift_weakAssign();
  if (_UISolariumEnabled())
  {
    v16 = MEMORY[0x1E69DD250];
  }

  else
  {
    v16 = type metadata accessor for NowPlayingMiniPlayerContentBackgroundView();
  }

  v17 = [objc_allocWithZone(v16) init];
  *&v2[qword_1EDA48118] = v17;
  v18 = *(v4 + 80);
  v19 = *(v4 + 88);
  *&v2[qword_1EDA48128] = [objc_allocWithZone(_s12BackdropViewC16VideoOverlayViewCMa()) init];
  v20 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v21 = qword_1EDA480F0;
  *&v2[qword_1EDA480F0] = v20;
  v22 = objc_opt_self();
  v23 = v20;
  v24 = [v22 systemBackgroundColor];
  [v23 setBackgroundColor_];

  [*&v2[v21] setAlpha_];
  v25 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v26 = qword_1EDA48100;
  *&v2[qword_1EDA48100] = v25;
  v27 = v25;
  v28 = [v22 redColor];
  [v27 setBackgroundColor_];

  [*&v2[v26] setHidden_];
  _s12GradientViewCMa();
  v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = qword_1EDA48108;
  *&v2[qword_1EDA48108] = v29;
  [v29 setAlpha_];
  v31 = *&v2[v30];
  v32 = sub_1C59343CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C5BD31C0;
  sub_1C592535C(0, &qword_1EDA4E048);
  *(v33 + 32) = sub_1C5BCB714();
  *(v33 + 40) = sub_1C5BCB714();
  v34 = sub_1C5BCB044();

  [v32 setLocations_];

  type metadata accessor for BackdropLayerHostView();
  v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36 = qword_1EDA48110;
  *&v2[qword_1EDA48110] = v35;
  v37 = [v35 layer];
  objc_opt_self();
  v38 = swift_dynamicCastObjCClassUnconditional();
  v39 = sub_1C5BCAE44();
  [v38 setGroupName_];

  v40 = [*&v2[v36] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCaptureOnly_];

  v41 = v18;
  v121 = v18;
  v122 = v19;
  v42 = _s12BackdropViewCMa();
  v132.receiver = v2;
  v132.super_class = v42;
  v43 = objc_msgSendSuper2(&v132, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v44 = *&v43[qword_1EDA48118];
  v45 = v43;
  [v45 addSubview_];
  [v45 addSubview_];
  [v45 addSubview_];
  [v45 addSubview_];
  [v45 addSubview_];
  [v45 addSubview_];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194D88);
  v46 = v96;
  sub_1C5BC8004();
  swift_endAccess();
  v124 = sub_1C592535C(0, &qword_1EDA4E620);
  v47 = sub_1C5BCB5A4();
  v131 = v47;
  v125 = sub_1C5BCB594();
  v48 = *(v125 - 8);
  v126 = *(v48 + 56);
  v120 = v48 + 56;
  v49 = v103;
  v126(v103, 1, 1, v125);
  v95 = MEMORY[0x1E695C068];
  sub_1C5924F54(&qword_1EDA46850, &qword_1EC199980);
  v123 = sub_1C5931640();
  v50 = v98;
  v51 = v118;
  sub_1C5BC80D4();
  sub_1C5924EF4(v49, &unk_1EC199F20);

  (*(v97 + 8))(v46, v51);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v53[2] = v41;
  v53[3] = v19;
  v53[4] = v52;
  v118 = MEMORY[0x1E695BE98];
  sub_1C5924F54(&qword_1EDA468D0, &qword_1EC199988);
  v54 = v114;
  sub_1C5BC8114();

  (*(v99 + 8))(v50, v54);
  v55 = qword_1EDA480F8;
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  v131 = *(*(v129 + 40) + 24);

  v130 = sub_1C5931774();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199990);
  sub_1C5924F54(&unk_1EDA468A0, &qword_1EC19A3F0);
  sub_1C5924F54(&qword_1EDA468B0, &qword_1EC199990);
  v56 = v100;
  sub_1C5BC7EC4();
  v57 = sub_1C5BCB5A4();
  v131 = v57;
  v126(v49, 1, 1, v125);
  sub_1C5924F54(&qword_1EDA46938, &qword_1EC199970);
  v58 = v115;
  v59 = v102;
  sub_1C5BC80D4();
  sub_1C5924EF4(v49, &unk_1EC199F20);

  (*(v101 + 8))(v56, v59);
  v60 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = swift_allocObject();
  v63 = v121;
  v62 = v122;
  v61[2] = v121;
  v61[3] = v62;
  v61[4] = v60;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1C596C954;
  *(v64 + 24) = v61;
  sub_1C5924F54(&qword_1EDA468C8, &qword_1EC199978);
  v65 = v117;
  sub_1C5BC8114();

  (*(v116 + 8))(v58, v65);
  v114 = v55;
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  swift_beginAccess();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1958C0);
  v66 = v104;
  sub_1C5BC8004();
  swift_endAccess();
  v67 = sub_1C5BCB5A4();
  v131 = v67;
  v126(v49, 1, 1, v125);
  v116 = sub_1C5924F54(&qword_1EDA4E6C0, &qword_1EC1958C8);
  v68 = v106;
  v69 = v105;
  sub_1C5BC80D4();
  sub_1C5924EF4(v49, &unk_1EC199F20);

  v70 = *(v127 + 8);
  v127 += 8;
  v115 = v70;
  (v70)(v66, v69);
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  v72[2] = v63;
  v73 = v122;
  v72[3] = v122;
  v72[4] = v71;
  v102 = sub_1C5924F54(&qword_1EDA4E6C8, &qword_1EC198558);
  v74 = v119;
  sub_1C5BC8114();

  v75 = *(v128 + 8);
  v128 += 8;
  v118 = v75;
  (v75)(v68, v74);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  v76 = sub_1C5BCB5A4();
  v131 = v76;
  v126(v49, 1, 1, v125);
  sub_1C5BC80D4();
  sub_1C5924EF4(v49, &unk_1EC199F20);

  (v115)(v66, v69);
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  v78[2] = v121;
  v78[3] = v73;
  v78[4] = v77;
  v79 = v119;
  sub_1C5BC8114();

  (v118)(v68, v79);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  swift_beginAccess();
  sub_1C5BC8004();
  swift_endAccess();
  v80 = sub_1C5BCB5A4();
  v131 = v80;
  v126(v49, 1, 1, v125);
  sub_1C5BC80D4();
  sub_1C5924EF4(v49, &unk_1EC199F20);

  (v115)(v66, v69);
  LOWORD(v131) = 512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199998);
  v81 = v107;
  sub_1C5BC8094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999A0);
  sub_1C5924F54(&qword_1EDA46918, &qword_1EC199960);
  v82 = v110;
  v83 = v109;
  sub_1C5BC8074();
  (*(v108 + 8))(v81, v83);
  (v118)(v68, v79);
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v85 = swift_allocObject();
  v86 = v122;
  v85[2] = v121;
  v85[3] = v86;
  v85[4] = v84;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1C596CE58;
  *(v87 + 24) = v85;
  sub_1C5924F54(&qword_1EDA46930, &qword_1EC199968);
  v88 = v112;
  sub_1C5BC8114();

  (*(v111 + 8))(v82, v88);
  swift_beginAccess();
  sub_1C5BC7EE4();
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914D0);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1C5BCFF00;
  v90 = sub_1C5BC7E24();
  v91 = MEMORY[0x1E69DC198];
  *(v89 + 32) = v90;
  *(v89 + 40) = v91;
  *(swift_allocObject() + 16) = ObjectType;
  sub_1C5BCB6C4();
  swift_unknownObjectRelease();

  v92 = [v45 traitCollection];

  v93 = [v92 accessibilityContrast];
  sub_1C5932C1C(v93);

  return v45;
}

uint64_t sub_1C59362D0()
{
  MEMORY[0x1C6951220](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1C5936308()
{

  return swift_deallocObject();
}

uint64_t sub_1C5936340()
{

  return swift_deallocObject();
}

uint64_t sub_1C593639C()
{
  swift_getObjCClassMetadata();
  sub_1C59363D4();

  return swift_getObjCClassFromMetadata();
}

id sub_1C5936404(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_lastSeenBounds];
  *v3 = 0u;
  v3[1] = 0u;
  v4 = &v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_isCollapsing] = 0;
  v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive] = 0;
  *&v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView] = 0;
  *&v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView] = 0;
  *&v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_windowProperties] = a1;
  *&v2[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_statusBarStyle] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ContentViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1C59364E4()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    if (swift_weakLoadStrong())
    {
      v3 = *&v0[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView];
      if (v3)
      {
        v4 = v3;
        [v0 frame];
        Width = CGRectGetWidth(v17);
        [v2 frame];
        [v4 setFrame_];
      }

      [v0 bounds];
      v7 = v6;
      v9 = v8;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v11 = Strong, v12 = [Strong _bottomAccessory], v11, v12))
      {
        v13 = [v12 displayStyle];

        v14 = v13 == 1;
      }

      else
      {
        v14 = 2;
      }

      v15 = v14;
      sub_1C5A32D3C(&v15, v7, v9);
    }
  }
}

void sub_1C5936674(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  v19 = v1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  if (*(v1 + 32))
  {

    v6 = sub_1C5BCAE44();
  }

  else
  {

    v6 = 0;
  }

  v7 = sub_1C5BCAE44();
  [v5 setValue:v6 forKey:v7];

  swift_unknownObjectRelease();
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7D64();
  __swift_project_value_buffer(v8, qword_1EDA5DA78);

  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = 7104878;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446466;
    if (v3)
    {
      v14 = v4;
    }

    else
    {
      v14 = 7104878;
    }

    if (v3)
    {
      v15 = v3;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_1C592ADA8(v14, v15, &v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    swift_getKeyPath();
    sub_1C5BC7B74();

    v17 = *(v2 + 32);
    if (v17)
    {
      v11 = *(v2 + 24);
    }

    else
    {

      v17 = 0xE300000000000000;
    }

    v18 = sub_1C592ADA8(v11, v17, &v19);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1C5922000, v9, v10, "Selected content changing from %{public}s to %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v13, -1, -1);
    MEMORY[0x1C69510F0](v12, -1, -1);
  }
}

uint64_t _s27TransportInteractionMonitorCMa()
{
  result = qword_1EDA4A338;
  if (!qword_1EDA4A338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5936AF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC196CB8);
  _s27TransportInteractionMonitorCMa();
  sub_1C5924F54(&qword_1EDA46238, qword_1EC196CB8);
  sub_1C5939F8C(&qword_1EDA4A348, _s27TransportInteractionMonitorCMa);
  return swift_getOpaqueTypeConformance2();
}

void sub_1C5936BDC()
{
  if (!qword_1EDA463F8)
  {
    _s8BackdropCMa();
    sub_1C592F30C(&qword_1EDA49930, _s8BackdropCMa);
    v0 = sub_1C5BC8C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA463F8);
    }
  }
}

void sub_1C5936C70()
{
  if (!qword_1EDA463F0)
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    sub_1C5931838(&qword_1EDA497D0, 255, type metadata accessor for NowPlayingViewModel.Lifecycle);
    v0 = sub_1C5BC8C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA463F0);
    }
  }
}

uint64_t sub_1C5936D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 73))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 18);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 18);
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

uint64_t sub_1C5936D5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5936DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for DeviceMetrics.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceMetrics.Layout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C5936F90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199990);
  _s25BackdropConditionObserverVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C593A9AC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470);
  swift_getOpaqueTypeConformance2();
  sub_1C5937414(&qword_1EDA4AE90, &qword_1EC194470, &unk_1C5BEBAC0, sub_1C593AA00);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194468);
  swift_getOpaqueTypeConformance2();
  sub_1C5937414(&qword_1EDA47CC8, &qword_1EC194468, &unk_1C5BDBCD0, sub_1C593AA54);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC90F4();
  swift_getOpaqueTypeConformance2();
  sub_1C592F30C(&qword_1EDA46328, MEMORY[0x1E697F610]);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for OSThermalPressureLevel(255);
  swift_getOpaqueTypeConformance2();
  sub_1C592F30C(&qword_1EDA45DE8, type metadata accessor for OSThermalPressureLevel);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC81D4();
  swift_getOpaqueTypeConformance2();
  sub_1C592F30C(&qword_1EDA467E8, MEMORY[0x1E697BE48]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EDA468B0, &qword_1EC199990);
  swift_getOpaqueTypeConformance2();
  sub_1C5BC8BB4();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5937414(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5937490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();

  sub_1C59375C4(a1, a2, a3, v12);
  v10 = type metadata accessor for NowPlayingEnvironmentModifier();
  MEMORY[0x1C694E550](v12, a4, v10, a5);
  v14[4] = v12[4];
  v14[5] = v12[5];
  v15 = v13;
  v14[0] = v12[0];
  v14[1] = v12[1];
  v14[2] = v12[2];
  v14[3] = v12[3];
  return (*(*(v10 - 8) + 8))(v14, v10);
}

uint64_t sub_1C59375C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *(*a3 + 88);
  v7 = *(v6 + 224);
  v8 = *(*a3 + 80);
  swift_unknownObjectRetain();
  v22 = v7(v8, v6);
  v7(v8, v6);

  _s7ArtworkCMa();
  sub_1C59378A8(qword_1EDA49C50, _s7ArtworkCMa);
  v9 = sub_1C5BC88C4();
  v20 = v10;
  v21 = v9;
  v7(v8, v6);

  type metadata accessor for NowPlayingViewModel.CurrentItem();
  sub_1C59378A8(&qword_1EDA4B168, type metadata accessor for NowPlayingViewModel.CurrentItem);
  v11 = sub_1C5BC88C4();
  v18 = v12;
  v19 = v11;
  v13 = *(v7(v8, v6) + 112);

  if (v13)
  {
    v15 = *(v7(v8, v6) + 152);

    v16 = *(v7(v8, v6) + 144);

    v7(v8, v6);
    swift_unknownObjectRelease();

    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C59378A8(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    result = sub_1C5BC88C4();
    *a4 = a1;
    a4[1] = a2;
    a4[2] = v22;
    a4[3] = a3;
    a4[4] = v15;
    a4[5] = v13;
    a4[6] = v16;
    a4[7] = v21;
    a4[8] = v20;
    a4[9] = v19;
    a4[10] = v18;
    a4[11] = result;
    a4[12] = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59378A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C59378F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5937938(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_1C5937994(void *a1)
{
  v2 = v1;
  v4 = *(v1 + qword_1EDA47FA8);
  v5 = MEMORY[0x1E69E7D40];
  if (v4)
  {
    type metadata accessor for ContentViewController();
    v6 = v4;
    v7 = a1;
    v8 = sub_1C5BCB744();

    if (v8)
    {
      v4 = *(v2 + qword_1EDA47FA0);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = *(v2 + qword_1EDA47FA8);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v9 = v4;
    *(v9 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive) = 0;

    v10 = *((*v5 & *v9) + 0xD0);
    v4 = v9;
    v10(0);
  }

LABEL_7:
  v11 = *(v2 + qword_1EDA47FE0);
  v12 = *((*v5 & *a1) + 0xD0);
  v13 = v11;
  v12(v11);
  v14 = _UISolariumEnabled();
  v15 = *(v2 + qword_1EDA47FB8);
  if (v14)
  {
    if (!v15)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v16 = [*(v2 + qword_1EDA47FB8) view];
    v17 = *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
    *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) = v16;
    v18 = *((*v5 & *a1) + 0xA8);
    v19 = v16;
    v18(v17);
  }

  else
  {
    if (!v15)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [a1 addChildViewController_];
    v20 = *(v2 + qword_1EDA47FB8);
    if (!v20)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = [v20 view];
    v22 = *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView);
    *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_contentView) = v21;
    v23 = *((*v5 & *a1) + 0xA8);
    v24 = v21;
    v23(v22);

    v25 = *(v2 + qword_1EDA47FB8);
    if (!v25)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    [v25 didMoveToParentViewController_];
    *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive) = 1;
    v26 = [a1 view];
    if (!v26)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v17 = v26;
    sub_1C592D4C8(v26);
  }

  *(a1 + OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_isActive) = 1;
  v27 = [a1 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_20;
  }

  v28 = v27;
  sub_1C592D4C8(v27);
}

void sub_1C5937CB8(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView;
  v8 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView];
  *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC21ContentViewController_backdropView] = a1;
  v3 = a1;
  [v8 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 addSubview_];
  }
}

void sub_1C5937D74(void *a1)
{
  v2 = OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView;
  v3 = *&v1[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView];
  *&v1[OBJC_IVAR____TtCC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC35CollapsedTabAccessoryViewController19MiniPlayerContainer_contentView] = a1;
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    if ([v5 isDescendantOfView_])
    {
      [v5 removeFromSuperview];
    }

    v6 = *&v1[v2];
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = a1;
    v6 = a1;
    if (a1)
    {
LABEL_5:
      v7 = v6;
      [v1 addSubview_];
    }
  }
}

uint64_t sub_1C5937E40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5937E88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5937ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5937F18(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1C5937F60@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [a1 window];
  v9 = 1.0;
  v10 = 1.0;
  if (v8)
  {
    v11 = v8;
    v12 = [v8 screen];

    [v12 nativeScale];
    v10 = v13;
  }

  v14 = [a1 window];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 screen];

    [v16 scale];
    v9 = v17;
  }

  v18 = v7 * (v10 / v9);
  v19 = round(v5 * (v10 / v9));
  v20 = round(v18);
  v21 = [objc_opt_self() currentTraitCollection];
  v22 = [v21 horizontalSizeClass];

  v23 = objc_opt_self();
  v24 = [v23 currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v19 >= 1024.0 && v20 < v19)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  if (v22 == 2 && v25 == 1)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  sub_1C592DD40(&v34, v19, v20);
  v30 = v34;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  *(a2 + 17) = v30;
  *(a2 + 18) = v29;
  v31 = [v23 currentDevice];
  v32 = [v31 userInterfaceIdiom];

  *(a2 + 24) = v32;
  *(a2 + 32) = 0;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0;
  return result;
}

void sub_1C5938180()
{
  v1 = *(v0 + qword_1EDA47FA8);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v5 = *(v2 + 80);
  *(v4 + 2) = v5;
  v6 = *(v2 + 88);
  *(v4 + 3) = v6;
  *(v4 + 4) = v3;
  v7 = &v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan];
  v8 = *&v1[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseBegan];
  *v7 = sub_1C5BA9674;
  v7[1] = v4;
  v9 = v1;

  sub_1C59261FC(v8);

  v10 = *(v0 + qword_1EDA47FA8);
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v11;
  v13 = &v10[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded];
  v14 = *&v10[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC22ExpandedViewController_onCollapseEnded];
  *v13 = sub_1C5BA9680;
  v13[1] = v12;
  v15 = v10;

  sub_1C59261FC(v14);
}

void sub_1C5938344()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1 && !*(v0 + qword_1EDA47F60))
  {
    v9 = v1 + 80;
    v8 = *(v1 + 80);
    v7 = *(v9 + 8);
    v10 = *((*(v7 + 224))(v8, v7) + 72);

    swift_beginAccess();
    sub_1C59318C8(v10 + 64, v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
    if (swift_dynamicCast())
    {
      v11 = v31;
      if (v31)
      {
        v12 = v31;
        v13 = [v0 view];
        if (!v13)
        {
          __break(1u);
          return;
        }

        v14 = v13;
        v15 = [v13 window];

        if (v15)
        {
          v16 = [v15 screen];

          [v16 bounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;

          v25 = sub_1C5BCB214();
          (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
          v26 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v27 = swift_allocObject();
          v27[2] = 0;
          v27[3] = 0;
          v27[4] = v8;
          v27[5] = v7;
          v27[6] = v26;
          v27[7] = v12;
          v27[8] = v18;
          v27[9] = v20;
          v27[10] = v22;
          v27[11] = v24;
          v28 = v12;
          v29 = sub_1C5A0BB28(0, 0, v4, &unk_1C5BF3B30, v27);
          sub_1C5924EF4(v4, &qword_1EC1930A0);
          sub_1C593871C(v29);

LABEL_11:
          __swift_destroy_boxed_opaque_existential_0(v32);
          return;
        }
      }

      sub_1C592E620();

      goto LABEL_11;
    }

    sub_1C592E620();
    goto LABEL_11;
  }
}

uint64_t sub_1C59386D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C593871C(uint64_t a1)
{
  v2 = *(v1 + qword_1EDA47F60);
  *(v1 + qword_1EDA47F60) = a1;

  if (v2)
  {
    sub_1C5BCB2A4();
  }
}

uint64_t sub_1C5938788(uint64_t a1, uint64_t a2)
{
  sub_1C59387C0(a1, a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C59387C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EDA47F20;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

void sub_1C5938824(void *a1)
{
  v1 = a1;
  sub_1C593886C();
}

void sub_1C593886C()
{
  v1 = v0;
  v2 = *&v0[qword_1EDA47FA0];
  if (v2)
  {
    type metadata accessor for CollapsedViewController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1C5BD31C0;
      v6 = v2;
      v7 = [v4 view];
      if (v7)
      {
        v8 = v7;
        v88 = v6;
        v9 = [v7 heightAnchor];

        v10 = [v1 view];
        if (v10)
        {
          v11 = v10;
          v12 = objc_opt_self();
          v13 = [v11 heightAnchor];

          v14 = [v9 constraintEqualToAnchor_];
          *(v5 + 32) = v14;
          *(v5 + 40) = sub_1C5B9E300();
          sub_1C592535C(0, &qword_1EDA45E20);
          v15 = sub_1C5BCB044();

          [v12 activateConstraints_];

          v16 = [v4 view];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 topAnchor];

            v19 = sub_1C5BA1AB0();
            if (!v19 || (v20 = v19, v21 = [v19 topAnchor], v20, !v21))
            {
              sub_1C5BA1CC8();
              v23 = v22;
              v21 = [v22 bottomAnchor];
            }

            v24 = [v18 constraintEqualToAnchor:v21 constant:-sub_1C5B9E228()];

            sub_1C5BA8340(v24);
            sub_1C5BA19C4(v90);
            v25 = v90[18];
            v26 = [v4 view];

            if (v26)
            {
              v27 = [v26 centerXAnchor];

              if (v25 == 2)
              {
                v28 = sub_1C5B9E264();
              }

              else
              {
                v29 = [v1 view];
                if (!v29)
                {
LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                v30 = v29;
                v28 = [v29 safeAreaLayoutGuide];
              }

              v31 = [v28 centerXAnchor];

              v32 = [v27 constraintEqualToAnchor_];
              sub_1C5BA83A0(v32);

              v33 = sub_1C5BA1AB0();
              if (v33)
              {
                v35 = v33;
                [v33 bounds];
                Height = CGRectGetHeight(v92);

                *&v37 = Height + 6.0;
                v86 = v37;
                v89 = 12.0;
              }

              else
              {
                v89 = 24.0;
                *&v34 = 24.0;
                v86 = v34;
              }

              v38 = sub_1C5B9E6A8();
              v39 = v38;
              v40 = &v38[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets];
              v41 = *&v38[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets];
              v42 = *&v38[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets + 16];
              *v40 = 0.0;
              *&v43.f64[0] = v86;
              v40[1] = v89;
              *(v40 + 2) = v86;
              v40[3] = v89;
              v44.f64[0] = 0.0;
              v44.f64[1] = v89;
              v43.f64[1] = v89;
              if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v44, v41), vceqq_f64(v43, v42)))) & 1) == 0)
              {
                [v38 setNeedsLayout];
              }

              v45 = [v1 view];
              if (v45)
              {
                v46 = v45;
                v47 = [v45 window];

                if (v47)
                {
                  v48 = [v47 screen];
                }

                else
                {
                  v49 = [v1 view];
                  if (!v49)
                  {
LABEL_43:
                    __break(1u);
                    return;
                  }

                  v48 = v49;
                }

                [v48 bounds];
                v87 = v50;
                v52 = v51;
                v54 = v53;
                v56 = v55;

                v57 = [v1 view];
                if (v57)
                {
                  v58 = v57;
                  [v57 bounds];
                  v60 = v59;
                  v62 = v61;
                  v64 = v63;
                  v66 = v65;

                  v93.origin.x = v60;
                  v93.origin.y = v62;
                  v93.size.width = v64;
                  v93.size.height = v66;
                  Width = CGRectGetWidth(v93);
                  v68 = sub_1C5B9E264();
                  [v68 layoutFrame];
                  v70 = v69;
                  v72 = v71;
                  v74 = v73;
                  v76 = v75;

                  v94.origin.x = v70;
                  v94.origin.y = v72;
                  v94.size.width = v74;
                  v94.size.height = v76;
                  v77 = Width - CGRectGetMinX(v94);
                  v95.origin.x = v87;
                  v95.origin.y = v52;
                  v95.size.width = v54;
                  v95.size.height = v56;
                  v78 = CGRectGetWidth(v95);
                  v96.origin.x = v87;
                  v96.origin.y = v52;
                  v96.size.width = v54;
                  v96.size.height = v56;
                  v79 = CGRectGetHeight(v96);
                  if (v79 >= v78)
                  {
                    v79 = v78;
                  }

                  v80 = (v89 + v89) * 0.5 + v79;
                  v81 = OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer;
                  v82 = *&v4[OBJC_IVAR____TtC11MediaCoreUIP33_0349A88C813783B152676260F9284CCC23CollapsedViewController____lazy_storage___miniPlayerContainer];
                  v83 = v80 < v77;
                  v84 = v82[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows];
                  v82[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows] = v83;
                  if (v83 != v84)
                  {
                    [v82 setNeedsLayout];
                  }

                  if (*(*&v4[v81] + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows))
                  {
                    v85 = v80;
                  }

                  else
                  {
                    v85 = v77;
                  }

                  [*&v1[qword_1EDA481F0] setConstant_];

                  goto LABEL_33;
                }

                goto LABEL_41;
              }

LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }
  }

LABEL_33:

  sub_1C5938ED4(v1);
}

id sub_1C5938ED4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for NowPlayingViewController();
  return objc_msgSendSuper2(&v2, sel_updateViewConstraints);
}

void sub_1C5938F50(SEL *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NowPlayingViewController();
  objc_msgSendSuper2(&v5, *a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 setNeedsUpdateConstraints];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1C5939008(void *a1)
{
  v1 = a1;
  sub_1C592ECE0();
}

uint64_t type metadata accessor for HostedScenePhaseModel()
{
  result = qword_1EDA48C18;
  if (!qword_1EDA48C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5939100()
{
  type metadata accessor for NowPlayingEnvironmentModifier();
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193A98);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  sub_1C5BC97B4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AA0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AA8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AB0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AB8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AC0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AC8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AD0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AD8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AE0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AE8);
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingViewControllerProxy();
  sub_1C5BCB804();
  sub_1C5BC97B4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AF0);
  sub_1C5BC8AB4();
  _s13TrackSectionsCMa(255);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46038, &qword_1EC193A98);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46108, &qword_1EC193AA0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46120, &qword_1EC193AA8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46150, &qword_1EC193AB0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46128, &qword_1EC193AB8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460D0, &qword_1EC193AC0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46178, &qword_1EC193AC8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46158, &qword_1EC193AD0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46148, &qword_1EC193AD8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46130, &qword_1EC193AE0);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46168, &qword_1EC193AE8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46160, &qword_1EC193AF0);
  swift_getWitnessTable();
  sub_1C59378A8(qword_1EDA4AB40, _s13TrackSectionsCMa);
  swift_getOpaqueTypeMetadata2();
  _s11ContextMenuCMa(255);
  swift_getOpaqueTypeConformance2();
  sub_1C59378A8(&qword_1EDA4B230, _s11ContextMenuCMa);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for NowPlayingViewModel.VolumeControl(255);
  swift_getOpaqueTypeConformance2();
  sub_1C59378A8(&qword_1EDA4A998, type metadata accessor for NowPlayingViewModel.VolumeControl);
  swift_getOpaqueTypeMetadata2();
  _s12PresentationCMa();
  swift_getOpaqueTypeConformance2();
  sub_1C59378A8(&qword_1EDA4AF70, _s12PresentationCMa);
  swift_getOpaqueTypeMetadata2();
  _s13HostedContentCMa();
  swift_getOpaqueTypeConformance2();
  sub_1C59378A8(&qword_1EDA4AE80, _s13HostedContentCMa);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AF8);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B00);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B08);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B10);
  sub_1C5BC8AB4();
  _s7ArtworkC20MiniPlayerAppearanceCMa(255);
  swift_getOpaqueTypeConformance2();
  sub_1C5A126A0(&qword_1EDA46170, &qword_1EC193AF8);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460F8, &qword_1EC193B00);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46140, &qword_1EC193B08);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46138, &qword_1EC193B10);
  swift_getWitnessTable();
  sub_1C59378A8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B18);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A4F0);
  sub_1C5BC8AB4();
  type metadata accessor for WindowProperties();
  swift_getOpaqueTypeConformance2();
  sub_1C5A126A0(&qword_1EDA460F0, &qword_1EC193B18);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA46188, &unk_1EC19A4F0);
  swift_getWitnessTable();
  sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B20);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B30);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B38);
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingViewModel.Metrics();
  swift_getOpaqueTypeConformance2();
  sub_1C5A126A0(&qword_1EDA46198, &qword_1EC193B20);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460B8, &qword_1EC193B28);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460E0, &qword_1EC193B30);
  swift_getWitnessTable();
  sub_1C5A126A0(&qword_1EDA460C0, &qword_1EC193B38);
  swift_getWitnessTable();
  sub_1C59378A8(&qword_1EDA49A38, type metadata accessor for NowPlayingViewModel.Metrics);
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5939EE0();
  return swift_getWitnessTable();
}

unint64_t sub_1C5939EE0()
{
  result = qword_1EDA47950;
  if (!qword_1EDA47950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47950);
  }

  return result;
}

unint64_t sub_1C5939F34()
{
  result = qword_1EDA4B080;
  if (!qword_1EDA4B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B080);
  }

  return result;
}

uint64_t sub_1C5939F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5939FEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C593A068()
{
  sub_1C5BC8C94();
  if (v0 <= 0x3F)
  {
    sub_1C5AB41DC();
    if (v1 <= 0x3F)
    {
      sub_1C592EF38(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
      if (v2 <= 0x3F)
      {
        sub_1C592EF38(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C593A174()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C593A1C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C593A21C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 18) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1C593A2B8()
{
  _s18ArtworkPlaceholderVMa();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s11ArtworkViewVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s21FullScreenContentViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingView.OverlayView();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  type metadata accessor for NowPlayingColorSchemeModifier();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996C8);
  _s19HeaderDismissButtonVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  sub_1C5BC92D4();
  _s21MiniPlayerContentViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s31TrackSectionsTouchDetectionViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7F4();
  _s25BackdropConditionObserverVMa();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PPTRunnerModifier();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996D0);
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46080, &qword_1EC1996D0);
  swift_getWitnessTable();
  sub_1C5939F34();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C593A834()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _ViewLookupNode.OutputGroup();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCA944();
  swift_getWitnessTable();
  sub_1C5BC93E4();
  sub_1C5BCA584();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C593A9AC()
{
  result = qword_1EDA497D8[0];
  if (!qword_1EDA497D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA497D8);
  }

  return result;
}

unint64_t sub_1C593AA00()
{
  result = qword_1EDA4AE98;
  if (!qword_1EDA4AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4AE98);
  }

  return result;
}

unint64_t sub_1C593AA54()
{
  result = qword_1EDA47CD0;
  if (!qword_1EDA47CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47CD0);
  }

  return result;
}

unint64_t sub_1C593AACC()
{
  result = qword_1EDA46600;
  if (!qword_1EDA46600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191650);
    sub_1C593AB58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46600);
  }

  return result;
}

unint64_t sub_1C593AB58()
{
  result = qword_1EDA46270;
  if (!qword_1EDA46270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46270);
  }

  return result;
}

uint64_t sub_1C593ABE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C593AC50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C593ACBC()
{
  sub_1C5B855D4();
  if (v0 <= 0x3F)
  {
    sub_1C5BC8C94();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NowPlayingViewControllerProxy();
      swift_getWitnessTable();
      sub_1C5BC8C94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for TapExcludedGeometries()
{
  result = qword_1EDA488C8;
  if (!qword_1EDA488C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C593ADF0()
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

uint64_t sub_1C593AEE8()
{
  _s11LeadingViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s21MiniPlayerContentViewV10CenterViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  sub_1C5BC8AB4();
  _s12TrailingViewVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  _s25ExpandsNowPlayingModifierVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C593B318();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C593B318()
{
  result = qword_1EDA482E8;
  if (!qword_1EDA482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA482E8);
  }

  return result;
}

uint64_t sub_1C593B398()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EB8);
  sub_1C593B410();
  sub_1C593B5AC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C593B410()
{
  result = qword_1EDA464C0;
  if (!qword_1EDA464C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198EB8);
    sub_1C593B4C8();
    sub_1C5924F54(&qword_1EDA46210, &qword_1EC198EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464C0);
  }

  return result;
}

unint64_t sub_1C593B4C8()
{
  result = qword_1EDA465D8;
  if (!qword_1EDA465D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198ED0);
    sub_1C5924F54(&qword_1EDA46240, &qword_1EC198EC8);
    sub_1C5924F54(&qword_1EDA460D8, &qword_1EC198ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465D8);
  }

  return result;
}

unint64_t sub_1C593B5AC()
{
  result = qword_1EDA47468[0];
  if (!qword_1EDA47468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47468);
  }

  return result;
}

uint64_t sub_1C593B600@<X0>(uint64_t *a1@<X8>)
{
  _s7ArtworkCMa();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C593B650@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingViewModel.CurrentItem();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C593B690@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C593B6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v373 = a1;
  v257 = a3;
  swift_getWitnessTable();
  v4 = sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193A98);
  v296 = v4;
  v390 = sub_1C5BC8AB4();
  v367 = *(v390 - 8);
  MEMORY[0x1EEE9AC00](v390);
  v355 = &v241 - v5;
  v6 = *(a2 + 16);
  v381 = a2;
  v330 = v6;
  sub_1C5BCB804();
  v386 = sub_1C5BC97B4();
  v391 = sub_1C5BC8AB4();
  v366 = *(v391 - 8);
  MEMORY[0x1EEE9AC00](v391);
  v350 = &v241 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AA0);
  v392 = sub_1C5BC8AB4();
  v368 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v351 = &v241 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AA8);
  v393 = sub_1C5BC8AB4();
  v369 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393);
  v352 = &v241 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AB0);
  v394 = sub_1C5BC8AB4();
  v370 = *(v394 - 8);
  MEMORY[0x1EEE9AC00](v394);
  v353 = &v241 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AB8);
  v395 = sub_1C5BC8AB4();
  v372 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v354 = &v241 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AC0);
  v396 = sub_1C5BC8AB4();
  v374 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396);
  v356 = &v241 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AC8);
  v387 = sub_1C5BC8AB4();
  v376 = *(v387 - 8);
  MEMORY[0x1EEE9AC00](v387);
  v358 = &v241 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AD0);
  v14 = sub_1C5BC8AB4();
  v377 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v360 = &v241 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AD8);
  v336 = v14;
  v16 = sub_1C5BC8AB4();
  v379 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v361 = &v241 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AE0);
  v342 = v16;
  v18 = sub_1C5BC8AB4();
  v380 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v362 = &v241 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AE8);
  v345 = v18;
  v20 = sub_1C5BC8AB4();
  v378 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v363 = &v241 - v21;
  v327 = *(a2 + 24);
  v365 = type metadata accessor for NowPlayingViewControllerProxy();
  sub_1C5BCB804();
  sub_1C5BC97B4();
  v346 = v20;
  v22 = sub_1C5BC8AB4();
  v375 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v357 = &v241 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AF0);
  v349 = v22;
  v389 = sub_1C5BC8AB4();
  v371 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389);
  v359 = &v241 - v24;
  v388 = _s13TrackSectionsCMa(255);
  WitnessTable = swift_getWitnessTable();
  v293 = WitnessTable;
  v26 = sub_1C5A126A0(&qword_1EDA46038, &qword_1EC193A98);
  v448 = WitnessTable;
  v449 = v26;
  v27 = swift_getWitnessTable();
  v292 = v27;
  v28 = swift_getWitnessTable();
  v446 = v27;
  v447 = v28;
  v29 = swift_getWitnessTable();
  v295 = v29;
  v30 = sub_1C5A126A0(&qword_1EDA46108, &qword_1EC193AA0);
  v444 = v29;
  v445 = v30;
  v31 = swift_getWitnessTable();
  v305 = v31;
  v32 = sub_1C5A126A0(&qword_1EDA46120, &qword_1EC193AA8);
  v442 = v31;
  v443 = v32;
  v33 = swift_getWitnessTable();
  v307 = v33;
  v34 = sub_1C5A126A0(&qword_1EDA46150, &qword_1EC193AB0);
  v440 = v33;
  v441 = v34;
  v35 = swift_getWitnessTable();
  v311 = v35;
  v36 = sub_1C5A126A0(&qword_1EDA46128, &qword_1EC193AB8);
  v438 = v35;
  v439 = v36;
  v37 = swift_getWitnessTable();
  v319 = v37;
  v38 = sub_1C5A126A0(&qword_1EDA460D0, &qword_1EC193AC0);
  v436 = v37;
  v437 = v38;
  v39 = swift_getWitnessTable();
  v321 = v39;
  v40 = sub_1C5A126A0(&qword_1EDA46178, &qword_1EC193AC8);
  v434 = v39;
  v435 = v40;
  v41 = swift_getWitnessTable();
  v328 = v41;
  v42 = sub_1C5A126A0(&qword_1EDA46158, &qword_1EC193AD0);
  v432 = v41;
  v433 = v42;
  v43 = swift_getWitnessTable();
  v335 = v43;
  v44 = sub_1C5A126A0(&qword_1EDA46148, &qword_1EC193AD8);
  v430 = v43;
  v431 = v44;
  v45 = swift_getWitnessTable();
  v339 = v45;
  v46 = sub_1C5A126A0(&qword_1EDA46130, &qword_1EC193AE0);
  v428 = v45;
  v429 = v46;
  v47 = swift_getWitnessTable();
  v343 = v47;
  v48 = sub_1C5A126A0(&qword_1EDA46168, &qword_1EC193AE8);
  v426 = v47;
  v427 = v48;
  v49 = swift_getWitnessTable();
  v344 = v49;
  v50 = swift_getWitnessTable();
  v424 = v49;
  v425 = v50;
  v51 = swift_getWitnessTable();
  v347 = v51;
  v52 = sub_1C5A126A0(&qword_1EDA46160, &qword_1EC193AF0);
  v422 = v51;
  v423 = v52;
  v53 = v389;
  v54 = swift_getWitnessTable();
  v55 = sub_1C59378A8(qword_1EDA4AB40, _s13TrackSectionsCMa);
  *&v399 = v53;
  v56 = v53;
  v57 = v388;
  *(&v399 + 1) = v388;
  v400[0] = v54;
  v58 = v54;
  v338 = v54;
  v400[1] = v55;
  v59 = v55;
  v337 = v55;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v348 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v340 = &v241 - v61;
  v62 = _s11ContextMenuCMa(255);
  *&v399 = v56;
  *(&v399 + 1) = v57;
  v400[0] = v58;
  v400[1] = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = sub_1C59378A8(&qword_1EDA4B230, _s11ContextMenuCMa);
  v323 = OpaqueTypeMetadata2;
  *&v399 = OpaqueTypeMetadata2;
  v322 = v62;
  *(&v399 + 1) = v62;
  v400[0] = OpaqueTypeConformance2;
  v65 = OpaqueTypeConformance2;
  v325 = OpaqueTypeConformance2;
  v400[1] = v64;
  v66 = v64;
  v324 = v64;
  v67 = swift_getOpaqueTypeMetadata2();
  v341 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v326 = &v241 - v68;
  v69 = type metadata accessor for NowPlayingViewModel.VolumeControl(255);
  *&v399 = OpaqueTypeMetadata2;
  *(&v399 + 1) = v62;
  v400[0] = v65;
  v400[1] = v66;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_1C59378A8(&qword_1EDA4A998, type metadata accessor for NowPlayingViewModel.VolumeControl);
  v312 = v67;
  *&v399 = v67;
  v309 = v69;
  *(&v399 + 1) = v69;
  v400[0] = v70;
  v72 = v70;
  v314 = v70;
  v400[1] = v71;
  v73 = v71;
  v313 = v71;
  v74 = swift_getOpaqueTypeMetadata2();
  v329 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v315 = &v241 - v75;
  v76 = _s12PresentationCMa();
  *&v399 = v67;
  *(&v399 + 1) = v69;
  v400[0] = v72;
  v400[1] = v73;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_1C59378A8(&qword_1EDA4AF70, _s12PresentationCMa);
  v301 = v74;
  *&v399 = v74;
  v298 = v76;
  *(&v399 + 1) = v76;
  v400[0] = v77;
  v79 = v77;
  v303 = v78;
  v304 = v77;
  v400[1] = v78;
  v80 = v78;
  v81 = swift_getOpaqueTypeMetadata2();
  v386 = v81;
  v318 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v306 = &v241 - v82;
  v83 = _s13HostedContentCMa();
  v385 = v83;
  *&v399 = v74;
  *(&v399 + 1) = v76;
  v400[0] = v79;
  v400[1] = v80;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = sub_1C59378A8(&qword_1EDA4AE80, _s13HostedContentCMa);
  *&v399 = v81;
  *(&v399 + 1) = v83;
  v400[0] = v84;
  v86 = v84;
  v272 = v85;
  v273 = v84;
  v400[1] = v85;
  v308 = swift_getOpaqueTypeMetadata2();
  v320 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v290 = &v241 - v87;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193AF8);
  v88 = sub_1C5BC8AB4();
  v332 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v299 = &v241 - v89;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B00);
  v284 = v88;
  v90 = sub_1C5BC8AB4();
  v333 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v310 = &v241 - v91;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B08);
  v288 = v90;
  v92 = sub_1C5BC8AB4();
  v334 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v316 = &v241 - v93;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B10);
  v294 = v92;
  v94 = sub_1C5BC8AB4();
  v331 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v317 = &v241 - v95;
  v96 = _s7ArtworkC20MiniPlayerAppearanceCMa(255);
  *&v399 = v386;
  *(&v399 + 1) = v385;
  v400[0] = v86;
  v400[1] = v85;
  v97 = swift_getOpaqueTypeConformance2();
  v278 = v97;
  v98 = sub_1C5A126A0(&qword_1EDA46170, &qword_1EC193AF8);
  v420 = v97;
  v421 = v98;
  v99 = swift_getWitnessTable();
  v282 = v99;
  v100 = sub_1C5A126A0(&qword_1EDA460F8, &qword_1EC193B00);
  v418 = v99;
  v419 = v100;
  v101 = swift_getWitnessTable();
  v287 = v101;
  v102 = sub_1C5A126A0(&qword_1EDA46140, &qword_1EC193B08);
  v416 = v101;
  v417 = v102;
  v103 = swift_getWitnessTable();
  v291 = v103;
  v104 = sub_1C5A126A0(&qword_1EDA46138, &qword_1EC193B10);
  v414 = v103;
  v415 = v104;
  v105 = swift_getWitnessTable();
  v106 = sub_1C59378A8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa);
  *&v399 = v94;
  v107 = v94;
  v274 = v96;
  v275 = v94;
  v108 = v96;
  *(&v399 + 1) = v96;
  v400[0] = v105;
  v276 = v106;
  v277 = v105;
  v400[1] = v106;
  v109 = v106;
  v289 = swift_getOpaqueTypeMetadata2();
  v300 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v283 = &v241 - v110;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B18);
  v111 = sub_1C5BC8AB4();
  v302 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v285 = &v241 - v112;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC19A4F0);
  v281 = v111;
  v113 = sub_1C5BC8AB4();
  v297 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v286 = &v241 - v114;
  v115 = type metadata accessor for WindowProperties();
  v383 = v115;
  *&v399 = v107;
  *(&v399 + 1) = v108;
  v400[0] = v105;
  v400[1] = v109;
  v116 = swift_getOpaqueTypeConformance2();
  v279 = v116;
  v117 = sub_1C5A126A0(&qword_1EDA460F0, &qword_1EC193B18);
  v412 = v116;
  v413 = v117;
  v118 = swift_getWitnessTable();
  v280 = v118;
  v119 = sub_1C5A126A0(&qword_1EDA46188, &unk_1EC19A4F0);
  v410 = v118;
  v411 = v119;
  v384 = v113;
  v120 = swift_getWitnessTable();
  v382 = sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  *&v399 = v113;
  *(&v399 + 1) = v115;
  v400[0] = v120;
  v271 = v120;
  v400[1] = v382;
  v121 = swift_getOpaqueTypeMetadata2();
  v261 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v270 = &v241 - v122;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B20);
  v262 = v121;
  v123 = sub_1C5BC8AB4();
  v264 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v263 = &v241 - v124;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B28);
  v125 = sub_1C5BC8AB4();
  v268 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v266 = &v241 - v126;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B30);
  v127 = sub_1C5BC8AB4();
  v254 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v267 = &v241 - v128;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193B38);
  v129 = sub_1C5BC8AB4();
  v253 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v252 = &v241 - v130;
  v131 = type metadata accessor for NowPlayingViewModel.Metrics();
  *&v399 = v384;
  *(&v399 + 1) = v383;
  v400[0] = v120;
  v400[1] = v382;
  v132 = swift_getOpaqueTypeConformance2();
  v133 = sub_1C5A126A0(&qword_1EDA46198, &qword_1EC193B20);
  v258 = v132;
  v408 = v132;
  v409 = v133;
  v265 = v123;
  v134 = swift_getWitnessTable();
  v135 = sub_1C5A126A0(&qword_1EDA460B8, &qword_1EC193B28);
  v259 = v134;
  v406 = v134;
  v407 = v135;
  v269 = v125;
  v136 = swift_getWitnessTable();
  v137 = sub_1C5A126A0(&qword_1EDA460E0, &qword_1EC193B30);
  v260 = v136;
  v404 = v136;
  v405 = v137;
  v256 = v127;
  v138 = swift_getWitnessTable();
  v139 = sub_1C5A126A0(&qword_1EDA460C0, &qword_1EC193B38);
  v241 = v138;
  v402 = v138;
  v403 = v139;
  v140 = swift_getWitnessTable();
  v141 = sub_1C59378A8(&qword_1EDA49A38, type metadata accessor for NowPlayingViewModel.Metrics);
  v255 = v129;
  *&v399 = v129;
  v251 = v131;
  *(&v399 + 1) = v131;
  v248 = v140;
  v400[0] = v140;
  v243 = v141;
  v400[1] = v141;
  v142 = swift_getOpaqueTypeMetadata2();
  v245 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v242 = &v241 - v143;
  v247 = v144;
  v145 = sub_1C5BC8AB4();
  v249 = *(v145 - 8);
  v250 = v145;
  v146 = MEMORY[0x1EEE9AC00](v145);
  v244 = &v241 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v146);
  v246 = &v241 - v148;
  swift_getKeyPath();
  v149 = v364;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  v150 = v355;
  sub_1C5BC9DF4();

  sub_1C5A126F4(&v399);
  v151 = v350;
  v152 = v390;
  sub_1C5BC9FF4();
  (*(v367 + 8))(v150, v152);
  type metadata accessor for NowPlayingRouteObserver();
  sub_1C59378A8(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
  v153 = v351;
  v154 = v391;
  sub_1C5BC9FF4();
  (*(v366 + 8))(v151, v154);
  v155 = *(v149 + 16);
  type metadata accessor for NowPlayingViewModel();
  sub_1C59378A8(qword_1EDA49710, type metadata accessor for NowPlayingViewModel);
  v156 = v352;
  v157 = v392;
  sub_1C5BC9FF4();
  (*(v368 + 8))(v153, v157);
  _s5DebugCMa();
  sub_1C59378A8(&qword_1EDA4A208, _s5DebugCMa);
  v158 = v353;
  v159 = v393;
  sub_1C5BC9FF4();
  (*(v369 + 8))(v156, v159);
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C59378A8(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
  v160 = v354;
  v161 = v394;
  sub_1C5BC9FF4();
  (*(v370 + 8))(v158, v161);
  type metadata accessor for Geometry();
  sub_1C59378A8(&qword_1EDA46EB8, type metadata accessor for Geometry);
  v162 = v356;
  v163 = v395;
  sub_1C5BC9FF4();
  (*(v372 + 8))(v160, v163);
  _s11TimeControlCMa();
  sub_1C59378A8(&qword_1EDA4B070, _s11TimeControlCMa);
  v164 = v358;
  v165 = v396;
  sub_1C5BC9FF4();
  (*(v374 + 8))(v162, v165);
  _s17TransportControlsCMa();
  sub_1C59378A8(&qword_1EDA4A620, _s17TransportControlsCMa);
  v166 = v360;
  v167 = v387;
  sub_1C5BC9FF4();
  (*(v376 + 8))(v164, v167);
  _s5QueueCMa();
  sub_1C59378A8(qword_1EDA4A0C0, _s5QueueCMa);
  v168 = v361;
  v169 = v336;
  sub_1C5BC9FF4();
  (*(v377 + 8))(v166, v169);
  _s8BackdropCMa();
  sub_1C59378A8(&qword_1EDA49930, _s8BackdropCMa);
  v170 = v362;
  v171 = v342;
  sub_1C5BC9FF4();
  (*(v379 + 8))(v168, v171);
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C59378A8(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
  v172 = v363;
  v173 = v345;
  sub_1C5BC9FF4();
  (*(v380 + 8))(v170, v173);
  v174 = v149;
  swift_getWitnessTable();
  v175 = v357;
  v176 = v346;
  sub_1C5BC9FF4();
  (*(v378 + 8))(v172, v176);
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C59378A8(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
  v177 = v359;
  v178 = v349;
  sub_1C5BC9FF4();
  (*(v375 + 8))(v175, v178);
  swift_checkMetadataState();
  v179 = v340;
  v180 = v389;
  sub_1C5BC9DE4();
  (*(v371 + 8))(v177, v180);
  swift_checkMetadataState();
  v181 = v326;
  v182 = v323;
  sub_1C5BC9DE4();
  (*(v348 + 8))(v179, v182);
  swift_checkMetadataState();
  v183 = v315;
  v184 = v312;
  sub_1C5BC9DE4();
  (*(v341 + 8))(v181, v184);
  v396 = v155;
  swift_checkMetadataState();
  v185 = v306;
  v186 = v301;
  sub_1C5BC9DE4();
  (*(v329 + 8))(v183, v186);
  v187 = *(v149 + 40);
  swift_checkMetadataState();
  v188 = v290;
  v189 = v386;
  sub_1C5BC9DE4();
  (*(v318 + 8))(v185, v189);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v399 = v187;
  sub_1C5BC7B74();

  v190 = v187[9];
  v191 = v187[10];
  v192 = v187[11];
  *&v399 = v187[8];
  *(&v399 + 1) = v190;
  v400[0] = v191;
  v400[1] = v192;
  sub_1C593E7D8(v399, v190);
  v193 = v299;
  v194 = v308;
  sub_1C5BC9DF4();

  sub_1C593E820(v399, *(&v399 + 1));
  (*(v320 + 8))(v188, v194);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v399 = v187;
  sub_1C5BC7B74();

  v195 = v187[6];
  *&v399 = v187[5];
  *(&v399 + 1) = v195;

  v196 = v310;
  v197 = v284;
  v198 = v193;
  v199 = v270;
  sub_1C5BC9DF4();

  (*(v332 + 8))(v198, v197);
  v200 = *(v174 + 64);
  _s7ArtworkC17BackgroundArtworkCMa(0);
  sub_1C59378A8(&qword_1EDA49EF0, _s7ArtworkC17BackgroundArtworkCMa);
  v201 = v316;
  v202 = v288;
  sub_1C5BC9FF4();
  (*(v333 + 8))(v196, v202);
  _s14DefaultArtworkCMa();
  sub_1C59378A8(qword_1EDA49E00, _s14DefaultArtworkCMa);
  v203 = v317;
  v204 = v294;
  sub_1C5BC9FF4();
  (*(v334 + 8))(v201, v204);
  swift_checkMetadataState();
  v205 = v283;
  v206 = v275;
  sub_1C5BC9DE4();
  (*(v331 + 8))(v203, v206);
  swift_getKeyPath();
  swift_beginAccess();
  sub_1C59318C8(v200 + 64, &v399);
  v207 = v285;
  v208 = v289;
  sub_1C5BC9DF4();

  __swift_destroy_boxed_opaque_existential_0(&v399);
  (*(v300 + 8))(v205, v208);
  swift_getKeyPath();
  sub_1C593E868(&v399);
  v209 = v286;
  v210 = v281;
  sub_1C5BC9DF4();

  (*(v302 + 8))(v207, v210);
  v211 = *(v174 + 32);
  swift_checkMetadataState();
  v212 = v384;
  sub_1C5BC9DE4();
  (*(v297 + 8))(v209, v212);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v399 = v211;
  sub_1C5BC7B74();

  v214 = *(v211 + 104);
  if ((v214 & 0xFF0000) == 0x40000)
  {
    __break(1u);
    goto LABEL_10;
  }

  v399 = *(v211 + 88);
  v400[0] = v214;
  v215 = *(v211 + 128);
  *&v400[1] = *(v211 + 112);
  *&v400[3] = v215;
  *&v400[5] = *(v211 + 144);
  v401 = *(v211 + 160);
  v216 = v262;
  v217 = v263;
  sub_1C5BC9DF4();

  (*(v261 + 8))(v199, v216);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v399 = v211;
  sub_1C5BC7B74();

  v218 = *(v211 + 32);
  v399 = *(v211 + 16);
  *v400 = v218;
  v219 = v265;
  v220 = v266;
  sub_1C5BC9DF4();

  (*(v264 + 8))(v217, v219);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v399 = v211;
  sub_1C5BC7B74();

  LOBYTE(v399) = *(v211 + 49);
  v221 = v267;
  v222 = v269;
  sub_1C5BC9DF4();

  (*(v268 + 8))(v220, v222);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v399 = v211;
  sub_1C5BC7B74();

  if (*(v211 + 106) << 8 == 1024)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(v211 + 104))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v223 = *(v211 + 96);
  v224 = 0.0;
  if (v223 != 0.0)
  {
    if ((*&v223 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v225 = fabs(v223), v225 > fmax(v225 * 2.22044605e-16, COERCE_DOUBLE(1))))
    {
      v224 = *(v211 + 88) / v223;
    }
  }

  *&v399 = v224;
  BYTE8(v399) = 0;
  v226 = v252;
  v227 = v256;
  sub_1C5BC9DF4();

  (*(v254 + 8))(v221, v227);
  v228 = swift_checkMetadataState();
  v230 = v242;
  v229 = v243;
  v231 = v255;
  v232 = v248;
  sub_1C5BC9DE4();
  (*(v253 + 8))(v226, v231);
  *&v399 = v231;
  *(&v399 + 1) = v228;
  v400[0] = v232;
  v400[1] = v229;
  v233 = swift_getOpaqueTypeConformance2();
  v234 = v244;
  v235 = v247;
  sub_1C593ECC4(v247, v233);
  (*(v245 + 8))(v230, v235);
  v236 = sub_1C5939EE0();
  v397 = v233;
  v398 = v236;
  v237 = v250;
  v238 = swift_getWitnessTable();
  v239 = v246;
  sub_1C593EDC0(v234, v237, v238);
  v240 = *(v249 + 8);
  v240(v234, v237);
  sub_1C593EDC0(v239, v237, v238);
  return (v240)(v239, v237);
}