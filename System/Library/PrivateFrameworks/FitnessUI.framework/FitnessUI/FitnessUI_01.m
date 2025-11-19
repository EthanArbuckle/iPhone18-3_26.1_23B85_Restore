id sub_1E5D6155C()
{
  if (*v0 && sub_1E5D7C234())
  {
    v1 = sub_1E5D82F88();
    v2 = sub_1E5D82FB0(v1, 0, 0);
LABEL_6:
    v5 = v2;
    v6 = v3;

    v7 = sub_1E5D82F88();
    sub_1E5D82FB0(v7, 0, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E5DB2290;
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1E5D5E0E0();
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1E5DA912C();

    return v9;
  }

  result = [*(v0 + 16) localizedLongActiveEnergyUnitString];
  if (result)
  {
    v1 = result;
    v2 = sub_1E5DA915C();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5D616AC()
{
  v0 = sub_1E5D82F88();
  v1 = sub_1E5D82FB0(v0, 0, 0);

  return v1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E5D61734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E5D6177C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

CGPoint __swiftcall PolarPoint.cartesianPointInUIKitCoordinates(of:)(__C::CGRect of)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = CGRect.center.getter(of.origin.x, of.origin.y, of.size.width, of.size.height);
  v6 = v5;
  v9 = __sincos_stret(v2);
  v10.n128_f64[0] = v4;
  v11.n128_u64[0] = v6;

  v7.n128_f64[0] = v3 * v9.__cosval;
  v8.n128_f64[0] = v3 * v9.__sinval;
  static CGPoint.+ infix(_:_:)(v10, v11, v7, v8);
  result.y = v13;
  result.x = v12;
  return result;
}

void PolarPoint.init(cartesianPoint:)(uint64_t a1@<X8>, long double a2@<D0>, long double a3@<D1>)
{
  v4 = sqrt(a2 * a2 + a3 * a3);
  v5 = atan2(a3, a2);
  *a1 = 0x400921FB54442D18;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
}

void PolarPoint.init(r:theta:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = 0x400921FB54442D18;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
}

void PolarPoint.init(r:thetaInDegrees:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = 0x400921FB54442D18;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3 * 3.14159265 / 180.0;
}

void static PolarPoint.+ infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = __sincos_stret(*(a1 + 16));
  v8 = __sincos_stret(v5);
  v9.n128_f64[0] = v6 * v8.__cosval;
  v10.n128_f64[0] = v6 * v8.__sinval;
  v11.n128_f64[0] = v4 * v7.__cosval;
  v12.n128_f64[0] = v4 * v7.__sinval;
  v13 = static CGPoint.+ infix(_:_:)(v11, v12, v9, v10);
  v15 = sqrt(v13 * v13 + v14 * v14);
  v16 = atan2(v14, v13);
  *a3 = 0x400921FB54442D18;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PolarPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PolarPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1E5D61AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E5DA8A5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A480);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1E5D5CD3C(v2, &v14 - v9, &qword_1ED06A480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E5DA897C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1E5DA932C();
    v13 = sub_1E5DA8B8C();
    sub_1E5DA861C();

    sub_1E5DA8A4C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E5D61CC0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A480);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5D61D38()
{
  type metadata accessor for ActivityStatisticsArchivableView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
  sub_1E5DA8DFC();
  return v1;
}

uint64_t type metadata accessor for ActivityStatisticsArchivableView()
{
  result = qword_1ED7FFC40;
  if (!qword_1ED7FFC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5D61DE4()
{
  type metadata accessor for ActivityStatisticsArchivableView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
  return sub_1E5DA8E0C();
}

uint64_t (*sub_1E5D61E4C(uint64_t *a1))()
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
  v5 = (v1 + *(type metadata accessor for ActivityStatisticsArchivableView() + 20));
  v7 = *v5;
  v6 = v5[1];
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
  sub_1E5DA8DFC();
  return sub_1E5D61F04;
}

uint64_t sub_1E5D61F08()
{
  type metadata accessor for FIUIActivityStatisticsProvider();
  v0 = *sub_1E5D83598();
  return sub_1E5D74808(v0);
}

uint64_t sub_1E5D61F40()
{
  type metadata accessor for ActivityStatisticsArchivableView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
  sub_1E5DA8E1C();
  return v1;
}

uint64_t sub_1E5D61FBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1E5DA8DEC();
  return v3;
}

uint64_t sub_1E5D61FFC()
{
  type metadata accessor for ActivityStatisticsArchivableView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  sub_1E5DA8DFC();
  return v1;
}

uint64_t sub_1E5D6205C()
{
  type metadata accessor for ActivityStatisticsArchivableView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  return sub_1E5DA8E0C();
}

uint64_t (*sub_1E5D620C4(uint64_t *a1))()
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
  v5 = (v1 + *(type metadata accessor for ActivityStatisticsArchivableView() + 24));
  v7 = *v5;
  v6 = v5[1];
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  sub_1E5DA8DFC();
  return sub_1E5D6894C;
}

void sub_1E5D6217C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_1E5DA8E0C();
  }

  else
  {
    sub_1E5DA8E0C();
  }

  free(v2);
}

uint64_t sub_1E5D6222C()
{
  sub_1E5D8367C();
}

uint64_t sub_1E5D62258()
{
  type metadata accessor for ActivityStatisticsArchivableView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  sub_1E5DA8E1C();
  return v1;
}

uint64_t sub_1E5D6233C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = (v1 + *(type metadata accessor for ActivityStatisticsArchivableView() + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  updated = type metadata accessor for FIUIUnitPreferenceUpdateObserver();
  v7 = sub_1E5D688A4(&qword_1ED7FF5A8, type metadata accessor for FIUIUnitPreferenceUpdateObserver);

  return a1(v3, v4, v5, updated, v7);
}

id sub_1E5D623F0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1E5DA911C();
  v2 = [v0 initWithSuiteName_];

  return v2;
}

uint64_t ActivityStatisticsArchivableView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A480);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for ActivityStatisticsArchivableView();
  v3 = (a1 + v2[5]);
  type metadata accessor for FIUIActivityStatisticsProvider();
  v4 = *sub_1E5D83598();
  sub_1E5D74808(v4);
  sub_1E5DA8DEC();
  *v3 = v14;
  v3[1] = v15;
  v5 = (a1 + v2[6]);
  sub_1E5D8367C();
  type metadata accessor for FIUIWheelchairStatusProvider();

  sub_1E5DA8DEC();
  *v5 = v14;
  v5[1] = v15;
  v6 = a1 + v2[7];
  *v6 = sub_1E5D622F8;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = v2[8];
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v9 = sub_1E5DA911C();
  v10 = [v8 initWithSuiteName_];

  *(a1 + v7) = v10;
  v11 = (a1 + v2[9]);
  *v11 = 0xD000000000000030;
  v11[1] = 0x80000001E5DB6F60;
  v12 = v2[10];
  result = sub_1E5DA8BDC();
  *(a1 + v12) = result;
  return result;
}

uint64_t ActivityStatisticsArchivableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActivityStatisticsArchivableView();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  v6 = (v1 + *(MEMORY[0x1EEE9AC00](v4) + 20));
  v8 = *v6;
  v7 = v6[1];
  v34 = v8;
  v35 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
  v9 = sub_1E5DA8DFC();
  v10 = (*(*v33[0] + 152))(v9);

  if (!v10 || (v11 = [v10 currentActivityCache]) == 0)
  {
    v13 = 0;
    goto LABEL_6;
  }

  v12 = v11;
  v13 = sub_1E5D7C95C();

  if (([v13 paused] & 1) == 0)
  {
LABEL_6:
    v15 = v10;
    v14 = v10;
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  v16 = (v2 + *(v4 + 24));
  v18 = *v16;
  v17 = v16[1];
  v34 = v18;
  v35 = v17;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  v20 = sub_1E5DA8DFC();
  v21 = (*(*v33[0] + 136))(v20);

  v22 = *sub_1E5D837EC();
  sub_1E5D60008(v13, v21 & 1, v22, v33);
  v23 = v14;
  sub_1E5D629C4(v33, &v34);
  sub_1E5D7F4C4(v14, v33, &v34);
  *a1 = sub_1E5DA8B0C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E8);
  sub_1E5D62A20(v2, v13, v33, &v34, (a1 + *(v24 + 44)));

  sub_1E5D6361C(&v34);
  sub_1E5D63670(v33);

  sub_1E5D64438(v2, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v26 = swift_allocObject();
  sub_1E5D644A4(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v27 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5F0) + 36));
  *v27 = sub_1E5D64508;
  v27[1] = v26;
  v27[2] = 0;
  v27[3] = 0;
  sub_1E5D64438(v2, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  sub_1E5D644A4(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5F8);
  v30 = (a1 + *(result + 36));
  *v30 = 0;
  v30[1] = 0;
  v30[2] = sub_1E5D64B44;
  v30[3] = v28;
  return result;
}

uint64_t sub_1E5D62A20@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v96 = a4;
  v92 = a3;
  v112 = a2;
  v101 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A790);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v95 = (&v83 - v7);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A798);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A7A0);
  v99 = *(v9 - 8);
  v100 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v117 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v83 - v12;
  v115 = sub_1E5DA8B6C();
  v120 = *(v115 - 1);
  MEMORY[0x1EEE9AC00](v115);
  v93 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A6B8);
  MEMORY[0x1EEE9AC00](v87);
  v15 = &v83 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A7A8);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v85 = &v83 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A7B0);
  v17 = MEMORY[0x1EEE9AC00](v90);
  v86 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v83 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A7B8);
  v94 = *(v114 - 8);
  v20 = MEMORY[0x1EEE9AC00](v114);
  v113 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v83 - v22;
  v23 = sub_1E5DA841C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E5DA8ABC();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v28 = type metadata accessor for ActivityStatisticsArchivableView();
  v29 = *(a1 + *(v28 + 32));
  v30 = 0;
  if (v29 && (v31 = v28, v32 = sub_1E5DA911C(), v33 = [v29 BOOLForKey_], v32, v33))
  {
    sub_1E5DA8AAC();
    sub_1E5DA8A9C();
    v34 = (a1 + *(v31 + 20));
    v36 = *v34;
    v35 = v34[1];
    *&v148 = v36;
    *(&v148 + 1) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
    sub_1E5DA8DFC();
    (*(v24 + 16))(v26, v128 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_uuid, v23);

    sub_1E5D688A4(&qword_1ED06A7F8, MEMORY[0x1E69695A8]);
    sub_1E5DA8A8C();
    (*(v24 + 8))(v26, v23);
    sub_1E5DA8A9C();
    sub_1E5DA8ADC();
    v37 = sub_1E5DA8C4C();
    v110 = v38;
    v111 = v37;
    v40 = v39;
    v109 = v41;
    sub_1E5DA8E8C();
    sub_1E5DA88FC();
    LOBYTE(v148) = v40 & 1;
    v107 = v143;
    v108 = v142;
    v105 = v145;
    v106 = v144;
    v103 = v147;
    v104 = v146;
    v102 = v40 & 1;
    sub_1E5DA8EBC();
    v30 = v42;
    v44 = v43;
    v118 = 0x3FE0000000000000;
  }

  else
  {
    v110 = 0;
    v111 = 0;
    v108 = 0;
    v109 = 0;
    v106 = 0;
    v107 = 0;
    v104 = 0;
    v105 = 0;
    v102 = 0;
    v103 = 0;
    v118 = 0;
    v44 = 0;
  }

  v45 = v15;
  *v15 = sub_1E5DA8A7C();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A600);
  sub_1E5D64BD0(a1, v92, v112, &v15[*(v46 + 44)]);
  v47 = v93;
  sub_1E5DA8B4C();
  v48 = sub_1E5D5CC08(&qword_1ED06A6B0, &qword_1ED06A6B8);
  v49 = v85;
  v50 = v87;
  sub_1E5DA8D4C();
  v51 = *(v120 + 8);
  v120 += 8;
  v84 = v51;
  v51(v47, v115);
  sub_1E5D5EC00(v45, &qword_1ED06A6B8);
  *&v148 = sub_1E5D60328();
  *(&v148 + 1) = v52;
  v128 = v50;
  v129 = v48;
  swift_getOpaqueTypeConformance2();
  sub_1E5D5E1E0();
  v53 = v86;
  v54 = v91;
  sub_1E5DA8D3C();

  (*(v89 + 8))(v49, v54);
  v55 = v88;
  sub_1E5DA891C();
  sub_1E5D5EC00(v53, &qword_1ED06A7B0);
  sub_1E5D68658();
  sub_1E5DA8D2C();
  sub_1E5D5EC00(v55, &qword_1ED06A7B0);
  v56 = sub_1E5DA8B0C();
  v57 = v95;
  *v95 = v56;
  v57[1] = 0;
  *(v57 + 16) = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A7D0);
  sub_1E5D6372C(v112, v96, v57 + *(v58 + 44));
  sub_1E5DA8E8C();
  sub_1E5DA898C();
  v59 = v57;
  v60 = v98;
  sub_1E5D68784(v59, v98, &qword_1ED06A790);
  v61 = (v60 + *(v97 + 36));
  v62 = v153;
  v61[4] = v152;
  v61[5] = v62;
  v61[6] = v154;
  v63 = v149;
  *v61 = v148;
  v61[1] = v63;
  v64 = v151;
  v61[2] = v150;
  v61[3] = v64;
  sub_1E5DA8B5C();
  sub_1E5D687EC();
  v65 = v116;
  sub_1E5DA8D4C();
  v84(v47, v115);
  sub_1E5D5EC00(v60, &qword_1ED06A798);
  v66 = v94;
  v120 = *(v94 + 16);
  v67 = v113;
  (v120)(v113, v119, v114);
  v68 = v99;
  v69 = v100;
  v115 = *(v99 + 16);
  v115(v117, v65, v100);
  *&v121 = v111;
  *(&v121 + 1) = v110;
  *&v122 = v102;
  *(&v122 + 1) = v109;
  *&v123 = v108;
  *(&v123 + 1) = v107;
  *&v124 = v106;
  *(&v124 + 1) = v105;
  *&v125 = v104;
  *(&v125 + 1) = v103;
  *&v126 = v118;
  *(&v126 + 1) = v118;
  *&v127 = v30;
  *(&v127 + 1) = v44;
  v70 = v122;
  v71 = v101;
  *v101 = v121;
  v71[1] = v70;
  v72 = v123;
  v73 = v124;
  v74 = v127;
  v75 = v125;
  v71[5] = v126;
  v71[6] = v74;
  v71[3] = v73;
  v71[4] = v75;
  v71[2] = v72;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A7E8);
  v77 = v114;
  (v120)(v71 + *(v76 + 48), v67, v114);
  v78 = v71 + *(v76 + 64);
  v79 = v117;
  v115(v78, v117, v69);
  sub_1E5D5CD3C(&v121, &v128, &qword_1ED06A7F0);
  v80 = *(v68 + 8);
  v80(v116, v69);
  v81 = *(v66 + 8);
  v81(v119, v77);
  v80(v79, v69);
  v81(v113, v77);
  v128 = v111;
  v129 = v110;
  v130 = v102;
  v131 = v109;
  v132 = v108;
  v133 = v107;
  v134 = v106;
  v135 = v105;
  v136 = v104;
  v137 = v103;
  v138 = v118;
  v139 = v118;
  v140 = v30;
  v141 = v44;
  return sub_1E5D5EC00(&v128, &qword_1ED06A7F0);
}

uint64_t sub_1E5D636C4@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1E5DA8A7C();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A600);
  return sub_1E5D64BD0(v3, a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_1E5D6372C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v77 = a3;
  v73 = type metadata accessor for StandHourChart();
  MEMORY[0x1EEE9AC00](v73);
  v70 = (v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A800);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A808);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v75 = v62 - v9;
  v10 = sub_1E5DA8B6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for QuantityChart();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A810);
  v66 = *(v17 - 8);
  v67 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A818);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v69 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v68 = v62 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v82 = v62 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v80 = v62 - v27;
  if (sub_1E5D7C92C(a1))
  {
    v28 = sub_1E5D7D584();
  }

  else
  {
    v28 = sub_1E5D7DEBC();
  }

  v29 = v28;

  sub_1E5D5C2A8(v30, v16);
  sub_1E5DA8B4C();
  v31 = sub_1E5D688A4(&qword_1ED06A820, type metadata accessor for QuantityChart);
  sub_1E5DA8D4C();
  v64 = *(v11 + 8);
  v78 = v11 + 8;
  v64(v13, v10);
  v79 = v10;
  v63 = type metadata accessor for QuantityChart;
  sub_1E5D688EC(v16, type metadata accessor for QuantityChart);
  v32 = sub_1E5D7E92C(0, v29);
  v34 = v33;

  v85 = v32;
  v86 = v34;
  v83 = v14;
  v84 = v31;
  v65 = MEMORY[0x1E697D248];
  v62[2] = swift_getOpaqueTypeConformance2();
  v62[1] = sub_1E5D5E1E0();
  v35 = v67;
  sub_1E5DA8D3C();

  v66 = *(v66 + 8);
  (v66)(v19, v35);
  v36 = sub_1E5D7DF9C();

  sub_1E5D5C2A8(v37, v16);
  sub_1E5DA8B4C();
  sub_1E5DA8D4C();
  v38 = v64;
  v64(v13, v79);
  sub_1E5D688EC(v16, v63);
  v39 = sub_1E5D7E92C(1, v36);
  v41 = v40;

  v85 = v39;
  v86 = v41;
  sub_1E5DA8D3C();

  (v66)(v19, v35);
  sub_1E5D7E074();
  v43 = v42;

  v45 = v70;
  sub_1E5D719A4(v44, v70);
  sub_1E5DA8B4C();
  v46 = sub_1E5D688A4(&qword_1ED06A828, type metadata accessor for StandHourChart);
  v47 = v71;
  v48 = v73;
  sub_1E5DA8D4C();
  v38(v13, v79);
  sub_1E5D688EC(v45, type metadata accessor for StandHourChart);
  v49 = sub_1E5D7F030(v43);
  v51 = v50;

  v85 = v49;
  v86 = v51;
  v83 = v48;
  v84 = v46;
  swift_getOpaqueTypeConformance2();
  v52 = v74;
  v53 = v75;
  sub_1E5DA8D3C();

  (*(v72 + 8))(v47, v52);
  v54 = v80;
  v55 = v68;
  sub_1E5D5CD3C(v80, v68, &qword_1ED06A818);
  v56 = v82;
  v57 = v69;
  sub_1E5D5CD3C(v82, v69, &qword_1ED06A818);
  v58 = v76;
  sub_1E5D5CD3C(v53, v76, &qword_1ED06A808);
  v59 = v77;
  sub_1E5D5CD3C(v55, v77, &qword_1ED06A818);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A830);
  sub_1E5D5CD3C(v57, v59 + *(v60 + 48), &qword_1ED06A818);
  sub_1E5D5CD3C(v58, v59 + *(v60 + 64), &qword_1ED06A808);
  sub_1E5D5EC00(v53, &qword_1ED06A808);
  sub_1E5D5EC00(v56, &qword_1ED06A818);
  sub_1E5D5EC00(v54, &qword_1ED06A818);
  sub_1E5D5EC00(v58, &qword_1ED06A808);
  sub_1E5D5EC00(v57, &qword_1ED06A818);
  return sub_1E5D5EC00(v55, &qword_1ED06A818);
}

uint64_t sub_1E5D63F98(uint64_t a1)
{
  v2 = sub_1E5DA841C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityStatisticsArchivableView();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5DA864C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5D805C0();
  (*(v10 + 16))(v12, v13, v9);
  v41 = a1;
  sub_1E5D64438(a1, v8);
  v14 = sub_1E5DA862C();
  v40 = sub_1E5DA933C();
  if (os_log_type_enabled(v14, v40))
  {
    v15 = v5;
    v16 = v2;
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43 = v39;
    *v17 = 136315394;
    *(v17 + 4) = sub_1E5D67320(0xD000000000000020, 0x80000001E5DB27E0, &v43);
    *(v17 + 12) = 2080;
    v36 = v6;
    v18 = &v8[*(v6 + 20)];
    v20 = *v18;
    v19 = *(v18 + 1);
    v44 = v20;
    v45 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
    v38 = v14;
    sub_1E5DA8DFC();
    v21 = v16;
    (*(v3 + 16))(v15, v42 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_uuid, v16);

    sub_1E5D688A4(&qword_1ED06A780, MEMORY[0x1E69695A8]);
    v22 = v15;
    v23 = v21;
    v24 = sub_1E5DA95AC();
    v37 = v9;
    v26 = v25;
    (*(v3 + 8))(v22, v23);
    sub_1E5D688EC(v8, type metadata accessor for ActivityStatisticsArchivableView);
    v27 = sub_1E5D67320(v24, v26, &v43);
    v6 = v36;

    *(v17 + 14) = v27;
    v28 = v38;
    _os_log_impl(&dword_1E5D0F000, v38, v40, "%s id=%s onAppear", v17, 0x16u);
    v29 = v39;
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v29, -1, -1);
    MEMORY[0x1E693E930](v17, -1, -1);

    (*(v10 + 8))(v12, v37);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    sub_1E5D688EC(v8, type metadata accessor for ActivityStatisticsArchivableView);
  }

  v30 = (v41 + *(v6 + 20));
  v32 = *v30;
  v31 = v30[1];
  v44 = v32;
  v45 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
  sub_1E5DA8DFC();
  v33 = v43;
  v34 = sub_1E5D69BD8();
  (*(*v33 + 280))(v34);
}

uint64_t sub_1E5D64438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStatisticsArchivableView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5D644A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityStatisticsArchivableView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5D64520(uint64_t a1)
{
  v2 = sub_1E5DA841C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityStatisticsArchivableView();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5DA864C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5D805C0();
  (*(v10 + 16))(v12, v13, v9);
  v40 = a1;
  sub_1E5D64438(a1, v8);
  v14 = sub_1E5DA862C();
  v39 = sub_1E5DA933C();
  if (os_log_type_enabled(v14, v39))
  {
    v15 = v5;
    v16 = v2;
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v42 = v38;
    *v17 = 136315394;
    *(v17 + 4) = sub_1E5D67320(0xD000000000000020, 0x80000001E5DB27E0, &v42);
    *(v17 + 12) = 2080;
    v35 = v6;
    v18 = &v8[*(v6 + 20)];
    v20 = *v18;
    v19 = *(v18 + 1);
    v43 = v20;
    v44 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
    v37 = v14;
    sub_1E5DA8DFC();
    v21 = v16;
    (*(v3 + 16))(v15, v41 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_uuid, v16);

    sub_1E5D688A4(&qword_1ED06A780, MEMORY[0x1E69695A8]);
    v22 = v15;
    v23 = v21;
    v24 = sub_1E5DA95AC();
    v36 = v9;
    v26 = v25;
    (*(v3 + 8))(v22, v23);
    sub_1E5D688EC(v8, type metadata accessor for ActivityStatisticsArchivableView);
    v27 = sub_1E5D67320(v24, v26, &v42);
    v6 = v35;

    *(v17 + 14) = v27;
    v28 = v37;
    _os_log_impl(&dword_1E5D0F000, v37, v39, "%s id=%s onDisappear", v17, 0x16u);
    v29 = v38;
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v29, -1, -1);
    MEMORY[0x1E693E930](v17, -1, -1);

    (*(v10 + 8))(v12, v36);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    sub_1E5D688EC(v8, type metadata accessor for ActivityStatisticsArchivableView);
  }

  v30 = (v40 + *(v6 + 20));
  v32 = *v30;
  v31 = v30[1];
  v43 = v32;
  v44 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5D8);
  v33 = sub_1E5DA8DFC();
  (*(*v42 + 296))(v33);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for ActivityStatisticsArchivableView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5DA897C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_1E5D6449C();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E5D64B5C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ActivityStatisticsArchivableView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E5D64BD0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(uint64_t, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v289 = a3;
  v326 = a2;
  v318 = a4;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A6D0);
  MEMORY[0x1EEE9AC00](v317);
  v286 = &v279 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A608);
  v310 = *(v6 - 8);
  v311 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v309 = &v279 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v324 = &v279 - v9;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A610);
  MEMORY[0x1EEE9AC00](v298);
  v297 = (&v279 - v10);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A618);
  v321 = *(v308 - 8);
  v11 = MEMORY[0x1EEE9AC00](v308);
  v299 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  OpaqueTypeConformance2 = &v279 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A6C8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v284 = &v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v283 = &v279 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v282 = &v279 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v281 = &v279 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v285 = &v279 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v301 = &v279 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v300 = &v279 - v27;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A6D8);
  MEMORY[0x1EEE9AC00](v314);
  v316 = &v279 - v28;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A6E0);
  MEMORY[0x1EEE9AC00](v294);
  v293 = (&v279 - v29);
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A6E8);
  MEMORY[0x1EEE9AC00](v315);
  v296 = &v279 - v30;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A6F0);
  MEMORY[0x1EEE9AC00](v295);
  v307 = &v279 - v31;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A6F8);
  v292 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320);
  v302 = &v279 - v32;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A700);
  v323 = *(v306 - 8);
  v33 = MEMORY[0x1EEE9AC00](v306);
  v291 = (&v279 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v305 = (&v279 - v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A708);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v279 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A710);
  v287 = *(v39 - 8);
  v288 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v279 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A718);
  v303 = *(v42 - 8);
  v304 = v42;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v290 = &v279 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v322 = &v279 - v45;
  v46 = sub_1E5DA897C();
  v47 = *(v46 - 8);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v279 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v279 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A720);
  v54 = MEMORY[0x1EEE9AC00](v53 - 8);
  v313 = &v279 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v312 = &v279 - v56;
  v319 = a1;
  sub_1E5D61AC0(v52);
  v57 = MEMORY[0x1E697EA58];
  sub_1E5D688A4(&qword_1ED06A550, MEMORY[0x1E697EA58]);
  sub_1E5DA93EC();
  sub_1E5D688A4(&qword_1ED06A558, v57);
  LOBYTE(a1) = sub_1E5DA910C();
  v58 = *(v47 + 8);
  v58(v50, v46);
  v58(v52, v46);
  if (a1)
  {
    v59 = v302;
    v60 = v319;
    if (sub_1E5D7C8F0(v289))
    {
      v61 = sub_1E5D82F88();
      v62 = sub_1E5D82FB0(v61, 0, 0);
      v64 = v63;

      *&v341 = v62;
      *(&v341 + 1) = v64;
      sub_1E5D5E1E0();
      v65 = sub_1E5DA8C6C();
      v67 = v66;
      LOBYTE(v64) = v68;
      type metadata accessor for ActivityStatisticsArchivableView();
      v69 = sub_1E5DA8C1C();
      v71 = v70;
      v73 = v72;
      v75 = v74;
      sub_1E5D67CC0(v65, v67, v64 & 1);

      *&v341 = v69;
      *(&v341 + 1) = v71;
      LOBYTE(v67) = v73 & 1;
      LOBYTE(v342) = v73 & 1;
      *(&v342 + 1) = v75;
      v76 = MEMORY[0x1E6981148];
      v77 = MEMORY[0x1E6981138];
      v78 = v59;
      sub_1E5DA8CCC();
      sub_1E5D67CC0(v69, v71, v67);

      v79 = v292;
      v80 = v320;
      (*(v292 + 16))(v293, v78, v320);
      swift_storeEnumTagMultiPayload();
      sub_1E5D5CC08(&qword_1ED06A758, &qword_1ED06A6F0);
      *&v341 = v76;
      *(&v341 + 1) = v77;
      swift_getOpaqueTypeConformance2();
      v81 = v296;
      sub_1E5DA8B2C();
      sub_1E5D5CD3C(v81, v316, &qword_1ED06A6E8);
      swift_storeEnumTagMultiPayload();
      sub_1E5D684C8();
      sub_1E5D5CC08(&qword_1ED06A768, &qword_1ED06A6D0);
      v82 = v312;
      sub_1E5DA8B2C();
      sub_1E5D5EC00(v81, &qword_1ED06A6E8);
      (*(v79 + 8))(v78, v80);
    }

    else
    {
      v303 = sub_1E5D5D1C4();
      v138 = v137;
      sub_1E5D5D5B0();
      v139 = sub_1E5DA8D9C();
      v140 = sub_1E5DA8DCC();
      v280 = type metadata accessor for ActivityStatisticsArchivableView();
      v141 = *(v60 + *(v280 + 40));
      KeyPath = swift_getKeyPath();
      v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A620);
      v143 = v297;
      v144 = (v297 + *(v323 + 36));
      v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A628);
      v145 = *(v322 + 7);
      LODWORD(v307) = *MEMORY[0x1E69816C8];
      v146 = v307;
      v306 = sub_1E5DA8DDC();
      v147 = *(v306 - 8);
      v305 = *(v147 + 104);
      v320 = v147 + 104;
      v305(v144 + v145, v146, v306);
      *v144 = swift_getKeyPath();
      *v143 = v140;
      v143[1] = KeyPath;
      v143[2] = v141;
      v148 = swift_getKeyPath();
      v149 = (v143 + *(v298 + 36));
      *v149 = v148;
      v149[1] = v139;
      v294 = v139;
      v304 = sub_1E5D67A98();
      v288 = v141;

      sub_1E5DA8CCC();
      sub_1E5D5EC00(v143, &qword_1ED06A610);
      *&v341 = v303;
      *(&v341 + 1) = v138;
      v303 = sub_1E5D5E1E0();
      v150 = sub_1E5DA8C6C();
      v152 = v151;
      LOBYTE(v138) = v153;
      v154 = sub_1E5DA8C1C();
      v156 = v155;
      LOBYTE(v145) = v157;
      sub_1E5D67CC0(v150, v152, v138 & 1);

      v158 = sub_1E5DA8C0C();
      v160 = v159;
      LOBYTE(v138) = v161;
      v163 = v162;
      sub_1E5D67CC0(v154, v156, v145 & 1);

      LOBYTE(v144) = sub_1E5DA8B9C();
      sub_1E5DA88BC();
      LOBYTE(v332) = v138 & 1;
      LOBYTE(v327) = 0;
      *&v337 = v158;
      *(&v337 + 1) = v160;
      LOBYTE(v338) = v138 & 1;
      *(&v338 + 1) = v163;
      LOBYTE(v339) = v144;
      *(&v339 + 1) = v164;
      *&v340[0] = v165;
      *(&v340[0] + 1) = v166;
      *&v340[1] = v167;
      BYTE8(v340[1]) = 0;
      v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A678);
      v296 = sub_1E5D67CD0();
      v168 = v324;
      sub_1E5DA8CCC();
      v343 = v339;
      v344[0] = v340[0];
      *(v344 + 9) = *(v340 + 9);
      v341 = v337;
      v342 = v338;
      sub_1E5D5EC00(&v341, &qword_1ED06A678);
      v169 = v321 + 16;
      v170 = *(v321 + 16);
      v171 = v299;
      v172 = OpaqueTypeConformance2;
      (v170)(v299, OpaqueTypeConformance2, v308);
      v291 = v170;
      v292 = v169;
      v173 = v310;
      v174 = (v310 + 16);
      v175 = *(v310 + 16);
      v175(v309, v168, v311);
      v289 = v175;
      v290 = v174;
      v176 = v300;
      v170();
      v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A688);
      v177 = v176 + *(v295 + 48);
      v178 = v309;
      v179 = v311;
      v175(v177, v309, v311);

      v180 = *(v173 + 8);
      v294 = v180;
      v180(v324, v179);
      v310 = v173 + 8;
      v181 = v321 + 8;
      v182 = *(v321 + 8);
      v293 = v182;
      v183 = v308;
      (v182)(v172, v308);
      v321 = v181;
      v180(v178, v179);
      (v182)(v171, v183);
      v184 = sub_1E5D5D3EC();
      v186 = v185;
      sub_1E5D5D5BC();
      v187 = sub_1E5DA8D9C();
      v188 = sub_1E5DA8DCC();
      v189 = swift_getKeyPath();
      v190 = v297;
      v191 = (v297 + *(v323 + 36));
      v305(v191 + *(v322 + 7), v307, v306);
      *v191 = swift_getKeyPath();
      *v190 = v188;
      v190[1] = v189;
      v190[2] = v288;
      v192 = swift_getKeyPath();
      v193 = (v190 + *(v298 + 36));
      *v193 = v192;
      v193[1] = v187;
      v287 = v187;

      sub_1E5DA8CCC();
      sub_1E5D5EC00(v190, &qword_1ED06A610);
      *&v337 = v184;
      *(&v337 + 1) = v186;
      v194 = sub_1E5DA8C6C();
      v196 = v195;
      LOBYTE(v191) = v197;
      v198 = sub_1E5DA8C1C();
      v200 = v199;
      LOBYTE(v138) = v201;
      sub_1E5D67CC0(v194, v196, v191 & 1);

      v202 = sub_1E5DA8C0C();
      v204 = v203;
      LOBYTE(v191) = v205;
      v207 = v206;
      sub_1E5D67CC0(v198, v200, v138 & 1);

      LOBYTE(v200) = sub_1E5DA8B9C();
      sub_1E5DA88BC();
      LOBYTE(v327) = v191 & 1;
      v336 = 0;
      *&v332 = v202;
      *(&v332 + 1) = v204;
      LOBYTE(v333) = v191 & 1;
      *(&v333 + 1) = v207;
      LOBYTE(v334) = v200;
      *(&v334 + 1) = v208;
      *&v335[0] = v209;
      *(&v335[0] + 1) = v210;
      *&v335[1] = v211;
      BYTE8(v335[1]) = 0;
      v212 = v324;
      sub_1E5DA8CCC();
      v339 = v334;
      v340[0] = v335[0];
      *(v340 + 9) = *(v335 + 9);
      v337 = v332;
      v338 = v333;
      sub_1E5D5EC00(&v337, &qword_1ED06A678);
      v213 = v299;
      v214 = v308;
      v215 = v291;
      (v291)(v299, OpaqueTypeConformance2, v308);
      v216 = v309;
      v217 = v212;
      v218 = v311;
      v219 = v289;
      v289(v309, v217, v311);
      v220 = v301;
      (v215)(v301, v213, v214);
      v219(v220 + *(v295 + 48), v216, v218);

      v221 = v218;
      v222 = v294;
      v294(v324, v218);
      v223 = v293;
      (v293)(OpaqueTypeConformance2, v214);
      v222(v216, v221);
      (v223)(v213, v214);
      v224 = (v319 + *(v280 + 24));
      v226 = *v224;
      v225 = v224[1];
      *&v332 = v226;
      *(&v332 + 1) = v225;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
      v227 = sub_1E5DA8DFC();
      (*(*v327 + 136))(v227);

      v228 = sub_1E5D5D400();
      v230 = v229;
      sub_1E5D5D5C8();
      v231 = sub_1E5DA8D9C();
      v232 = sub_1E5DA8DCC();
      v233 = swift_getKeyPath();
      v234 = v297;
      v235 = (v297 + *(v323 + 36));
      v305(v235 + *(v322 + 7), v307, v306);
      *v235 = swift_getKeyPath();
      *v234 = v232;
      v234[1] = v233;
      v234[2] = v288;
      v236 = swift_getKeyPath();
      v237 = (v234 + *(v298 + 36));
      *v237 = v236;
      v237[1] = v231;
      v326 = v231;

      sub_1E5DA8CCC();
      sub_1E5D5EC00(v234, &qword_1ED06A610);
      *&v332 = v228;
      *(&v332 + 1) = v230;
      v238 = sub_1E5DA8C6C();
      v240 = v239;
      LOBYTE(v235) = v241;
      v242 = sub_1E5DA8C1C();
      v244 = v243;
      LOBYTE(v228) = v245;
      sub_1E5D67CC0(v238, v240, v235 & 1);

      v246 = sub_1E5DA8C0C();
      v248 = v247;
      LOBYTE(v235) = v249;
      v251 = v250;
      sub_1E5D67CC0(v242, v244, v228 & 1);

      LOBYTE(v242) = sub_1E5DA8B9C();
      sub_1E5DA88BC();
      v336 = v235 & 1;
      v331 = 0;
      *&v327 = v246;
      *(&v327 + 1) = v248;
      LOBYTE(v328) = v235 & 1;
      *(&v328 + 1) = v251;
      LOBYTE(v329) = v242;
      *(&v329 + 1) = v252;
      *&v330[0] = v253;
      *(&v330[0] + 1) = v254;
      *&v330[1] = v255;
      BYTE8(v330[1]) = 0;
      v256 = v324;
      sub_1E5DA8CCC();
      v334 = v329;
      v335[0] = v330[0];
      *(v335 + 9) = *(v330 + 9);
      v332 = v327;
      v333 = v328;
      sub_1E5D5EC00(&v332, &qword_1ED06A678);
      v257 = v299;
      v258 = v308;
      v259 = v291;
      (v291)(v299, OpaqueTypeConformance2, v308);
      v260 = v309;
      v261 = v256;
      v262 = v311;
      v263 = v289;
      v289(v309, v261, v311);
      v264 = v281;
      (v259)(v281, v257, v258);
      v263(v264 + *(v295 + 48), v260, v262);

      v265 = v294;
      v294(v324, v262);
      v266 = v258;
      v267 = v258;
      v268 = v293;
      (v293)(OpaqueTypeConformance2, v267);
      v265(v260, v262);
      (v268)(v257, v266);
      v269 = v285;
      sub_1E5D68784(v264, v285, &qword_1ED06A6C8);
      v270 = v282;
      sub_1E5D5CD3C(v300, v282, &qword_1ED06A6C8);
      v271 = v283;
      sub_1E5D5CD3C(v301, v283, &qword_1ED06A6C8);
      v272 = v284;
      sub_1E5D5CD3C(v269, v284, &qword_1ED06A6C8);
      v273 = v286;
      sub_1E5D5CD3C(v270, v286, &qword_1ED06A6C8);
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A778);
      sub_1E5D5CD3C(v271, v273 + *(v274 + 48), &qword_1ED06A6C8);
      sub_1E5D5CD3C(v272, v273 + *(v274 + 64), &qword_1ED06A6C8);
      sub_1E5D5EC00(v272, &qword_1ED06A6C8);
      sub_1E5D5EC00(v271, &qword_1ED06A6C8);
      sub_1E5D5EC00(v270, &qword_1ED06A6C8);
      sub_1E5D5CD3C(v273, v316, &qword_1ED06A6D0);
      swift_storeEnumTagMultiPayload();
      sub_1E5D684C8();
      sub_1E5D5CC08(&qword_1ED06A768, &qword_1ED06A6D0);
      v82 = v312;
      sub_1E5DA8B2C();
      sub_1E5D5EC00(v273, &qword_1ED06A6D0);
      sub_1E5D5EC00(v269, &qword_1ED06A6C8);
      sub_1E5D5EC00(v301, &qword_1ED06A6C8);
      sub_1E5D5EC00(v300, &qword_1ED06A6C8);
    }
  }

  else
  {
    *&v341 = sub_1E5DA8DCC();
    sub_1E5DA8BBC();
    sub_1E5DA8CFC();

    v83 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A728) + 36)];
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A628) + 28);
    v85 = *MEMORY[0x1E69816C8];
    v86 = sub_1E5DA8DDC();
    (*(*(v86 - 8) + 104))(v83 + v84, v85, v86);
    *v83 = swift_getKeyPath();
    sub_1E5D5D5B0();
    v87 = sub_1E5DA8D9C();
    v88 = swift_getKeyPath();
    v89 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A730) + 36)];
    *v89 = v88;
    v89[1] = v87;
    LOBYTE(v87) = sub_1E5DA8B9C();
    sub_1E5DA88BC();
    v90 = &v38[*(v36 + 36)];
    *v90 = v87;
    *(v90 + 1) = v91;
    *(v90 + 2) = v92;
    *(v90 + 3) = v93;
    *(v90 + 4) = v94;
    v90[40] = 0;
    v95 = sub_1E5D6829C();
    sub_1E5DA8CCC();
    sub_1E5D5EC00(v38, &qword_1ED06A708);
    *&v341 = v36;
    *(&v341 + 1) = v95;
    OpaqueTypeConformance2 = MEMORY[0x1E6985688];
    swift_getOpaqueTypeConformance2();
    v96 = v288;
    sub_1E5DA8D0C();
    (*(v287 + 8))(v41, v96);
    v97 = sub_1E5D82F88();
    v98 = sub_1E5D82FB0(v97, 0, 0);
    v100 = v99;

    *&v341 = v98;
    *(&v341 + 1) = v100;
    sub_1E5D5E1E0();
    v101 = sub_1E5DA8C6C();
    v103 = v102;
    LOBYTE(v100) = v104;
    type metadata accessor for ActivityStatisticsArchivableView();
    v105 = sub_1E5DA8C1C();
    v107 = v106;
    v109 = v108;
    sub_1E5D67CC0(v101, v103, v100 & 1);

    sub_1E5D5D5B0();
    sub_1E5DA8D9C();
    v110 = sub_1E5DA8C0C();
    v112 = v111;
    v114 = v113;
    v116 = v115;

    sub_1E5D67CC0(v105, v107, v109 & 1);

    *&v341 = v110;
    *(&v341 + 1) = v112;
    v114 &= 1u;
    LOBYTE(v342) = v114;
    *(&v342 + 1) = v116;
    v117 = MEMORY[0x1E6981148];
    v118 = MEMORY[0x1E6981138];
    v119 = v302;
    sub_1E5DA8CCC();
    sub_1E5D67CC0(v110, v112, v114);

    *&v341 = v117;
    *(&v341 + 1) = v118;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v120 = v305;
    v121 = v320;
    sub_1E5DA8D0C();
    (*(v292 + 8))(v119, v121);
    v122 = v304;
    v123 = *(v303 + 16);
    v124 = v290;
    v123(v290, v322, v304);
    v125 = v323;
    v126 = *(v323 + 16);
    v127 = v291;
    v128 = v120;
    v129 = v306;
    v126(v291, v128, v306);
    v123(v307, v124, v122);
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A750);
    v131 = v307;
    v126(&v307[*(v130 + 48)], v127, v129);
    v132 = *(v125 + 8);
    v323 = v125 + 8;
    v326 = v132;
    v132(v127, v129);
    v133 = *(v303 + 8);
    v133(v124, v122);
    v134 = v131;
    sub_1E5D5CD3C(v131, v293, &qword_1ED06A6F0);
    swift_storeEnumTagMultiPayload();
    sub_1E5D5CC08(&qword_1ED06A758, &qword_1ED06A6F0);
    v135 = v296;
    sub_1E5DA8B2C();
    sub_1E5D5CD3C(v135, v316, &qword_1ED06A6E8);
    swift_storeEnumTagMultiPayload();
    sub_1E5D684C8();
    sub_1E5D5CC08(&qword_1ED06A768, &qword_1ED06A6D0);
    v136 = v312;
    sub_1E5DA8B2C();
    sub_1E5D5EC00(v135, &qword_1ED06A6E8);
    sub_1E5D5EC00(v134, &qword_1ED06A6F0);
    v326(v305, v306);
    v133(v322, v304);
    v82 = v136;
  }

  v275 = v313;
  sub_1E5D5CD3C(v82, v313, &qword_1ED06A720);
  v276 = v318;
  sub_1E5D5CD3C(v275, v318, &qword_1ED06A720);
  v277 = v276 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A770) + 48);
  *v277 = 0;
  *(v277 + 8) = 1;
  sub_1E5D5EC00(v82, &qword_1ED06A720);
  return sub_1E5D5EC00(v275, &qword_1ED06A720);
}

uint64_t sub_1E5D66AD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  *(&v57 + 1) = a2;
  *&v57 = a1;
  v63 = a4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A608);
  v60 = *(v62 - 8);
  v6 = MEMORY[0x1EEE9AC00](v62);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A610);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v56 - v10);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A618);
  v65 = *(v59 - 8);
  v12 = MEMORY[0x1EEE9AC00](v59);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v56 - v14;

  v15 = sub_1E5DA8DCC();
  v16 = *(v4 + *(type metadata accessor for ActivityStatisticsArchivableView() + 40));
  KeyPath = swift_getKeyPath();
  v18 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A620) + 36));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A628) + 28);
  v20 = *MEMORY[0x1E69816C8];
  v21 = sub_1E5DA8DDC();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v11 = v15;
  v11[1] = KeyPath;
  v11[2] = v16;
  v22 = swift_getKeyPath();
  v23 = (v11 + *(v9 + 36));
  *v23 = v22;
  v23[1] = a3;
  sub_1E5D67A98();

  sub_1E5DA8CCC();
  sub_1E5D5EC00(v11, &qword_1ED06A610);
  v73[0] = v57;
  sub_1E5D5E1E0();

  v24 = sub_1E5DA8C6C();
  v26 = v25;
  LOBYTE(v15) = v27;
  v28 = sub_1E5DA8C1C();
  v30 = v29;
  LOBYTE(v19) = v31;
  sub_1E5D67CC0(v24, v26, v15 & 1);

  v32 = sub_1E5DA8C0C();
  v34 = v33;
  LOBYTE(v15) = v35;
  v37 = v36;
  sub_1E5D67CC0(v28, v30, v19 & 1);

  LOBYTE(v18) = sub_1E5DA8B9C();
  sub_1E5DA88BC();
  v72 = v15 & 1;
  v71 = 0;
  *&v67 = v32;
  *(&v67 + 1) = v34;
  LOBYTE(v68) = v15 & 1;
  *(&v68 + 1) = v37;
  LOBYTE(v69) = v18;
  *(&v69 + 1) = v38;
  *v70 = v39;
  *&v70[8] = v40;
  *&v70[16] = v41;
  v70[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A678);
  sub_1E5D67CD0();
  v42 = v66;
  sub_1E5DA8CCC();
  v73[2] = v69;
  *v74 = *v70;
  *&v74[9] = *&v70[9];
  v73[0] = v67;
  v73[1] = v68;
  sub_1E5D5EC00(v73, &qword_1ED06A678);
  v43 = *(v65 + 16);
  v44 = v58;
  v45 = v59;
  v43(v58, v64, v59);
  v46 = v60;
  v47 = *(v60 + 16);
  v48 = v61;
  v49 = v42;
  v50 = v62;
  v47(v61, v49, v62);
  v51 = v63;
  v43(v63, v44, v45);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A688);
  v47(&v51[*(v52 + 48)], v48, v50);
  v53 = *(v46 + 8);
  v53(v66, v50);
  v54 = *(v65 + 8);
  v54(v64, v45);
  v53(v48, v50);
  return (v54)(v44, v45);
}

uint64_t sub_1E5D67114()
{
  type metadata accessor for ActivityStatisticsArchivableView();
}

uint64_t sub_1E5D67148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5D688A4(&qword_1ED7FF688, type metadata accessor for ActivityStatisticsArchivableView);

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_1E5D671DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5D688A4(&qword_1ED7FF688, type metadata accessor for ActivityStatisticsArchivableView);

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

unint64_t sub_1E5D67320(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5D673EC(v11, 0, 0, 1, a1, a2);
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
    sub_1E5D685FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1E5D673EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E5D674F8(a5, a6);
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
    result = sub_1E5DA944C();
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

uint64_t sub_1E5D674F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E5D67544(a1, a2);
  sub_1E5D67674(&unk_1F5F87D90);
  return v3;
}

uint64_t sub_1E5D67544(uint64_t a1, unint64_t a2)
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

  v6 = sub_1E5D67760(v5, 0);
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

  result = sub_1E5DA944C();
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
        v10 = sub_1E5DA91DC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5D67760(v10, 0);
        result = sub_1E5DA940C();
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

uint64_t sub_1E5D67674(uint64_t result)
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

  result = sub_1E5D677D4(result, v11, 1, v3);
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

void *sub_1E5D67760(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A788);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5D677D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A788);
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

uint64_t sub_1E5D67918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1E5D679E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5DA89AC();
  *a1 = result;
  return result;
}

uint64_t sub_1E5D67A40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5DA8A1C();
  *a1 = result;
  return result;
}

unint64_t sub_1E5D67A98()
{
  result = qword_1ED06A630;
  if (!qword_1ED06A630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A610);
    sub_1E5D67B50();
    sub_1E5D5CC08(&qword_1ED06A668, &qword_1ED06A670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A630);
  }

  return result;
}

unint64_t sub_1E5D67B50()
{
  result = qword_1ED06A638;
  if (!qword_1ED06A638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A620);
    sub_1E5D67C08();
    sub_1E5D5CC08(&qword_1ED06A660, &qword_1ED06A628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A638);
  }

  return result;
}

unint64_t sub_1E5D67C08()
{
  result = qword_1ED06A640;
  if (!qword_1ED06A640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A648);
    sub_1E5D5CC08(&qword_1ED06A650, &qword_1ED06A658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A640);
  }

  return result;
}

uint64_t sub_1E5D67CC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1E5D67CD0()
{
  result = qword_1ED06A680;
  if (!qword_1ED06A680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A680);
  }

  return result;
}

void sub_1E5D67E70()
{
  sub_1E5D680A8(319, &qword_1ED7FF598, MEMORY[0x1E697EA58], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E5D680A8(319, &qword_1ED7FF620, type metadata accessor for FIUIActivityStatisticsProvider, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1E5D680A8(319, &qword_1ED7FF628, type metadata accessor for FIUIWheelchairStatusProvider, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1E5D68014();
        if (v3 <= 0x3F)
        {
          sub_1E5D680A8(319, &qword_1ED7FF638, sub_1E5D6810C, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5D68014()
{
  if (!qword_1ED7FF630)
  {
    type metadata accessor for FIUIUnitPreferenceUpdateObserver();
    sub_1E5D688A4(&qword_1ED7FF5A8, type metadata accessor for FIUIUnitPreferenceUpdateObserver);
    v0 = sub_1E5DA88DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7FF630);
    }
  }
}

void sub_1E5D680A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E5D6810C()
{
  result = qword_1ED7FF640;
  if (!qword_1ED7FF640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7FF640);
  }

  return result;
}

unint64_t sub_1E5D68158()
{
  result = qword_1ED06A690;
  if (!qword_1ED06A690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A5F8);
    sub_1E5D681E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A690);
  }

  return result;
}

unint64_t sub_1E5D681E4()
{
  result = qword_1ED06A698;
  if (!qword_1ED06A698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A5F0);
    sub_1E5D5CC08(&qword_1ED06A6A0, &qword_1ED06A6A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A698);
  }

  return result;
}

unint64_t sub_1E5D6829C()
{
  result = qword_1ED06A738;
  if (!qword_1ED06A738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A708);
    sub_1E5D68328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A738);
  }

  return result;
}

unint64_t sub_1E5D68328()
{
  result = qword_1ED06A740;
  if (!qword_1ED06A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A730);
    sub_1E5D683E0();
    sub_1E5D5CC08(&qword_1ED06A668, &qword_1ED06A670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A740);
  }

  return result;
}

unint64_t sub_1E5D683E0()
{
  result = qword_1ED06A748;
  if (!qword_1ED06A748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A728);
    swift_getOpaqueTypeConformance2();
    sub_1E5D5CC08(&qword_1ED06A660, &qword_1ED06A628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A748);
  }

  return result;
}

unint64_t sub_1E5D684C8()
{
  result = qword_1ED06A760;
  if (!qword_1ED06A760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A6E8);
    sub_1E5D5CC08(&qword_1ED06A758, &qword_1ED06A6F0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A760);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
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

uint64_t sub_1E5D685FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E5D68658()
{
  result = qword_1ED06A7C0;
  if (!qword_1ED06A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A7B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A6B8);
    sub_1E5D5CC08(&qword_1ED06A6B0, &qword_1ED06A6B8);
    swift_getOpaqueTypeConformance2();
    sub_1E5D688A4(&qword_1ED06A7C8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A7C0);
  }

  return result;
}

uint64_t sub_1E5D68784(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5D687EC()
{
  result = qword_1ED06A7D8;
  if (!qword_1ED06A7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A798);
    sub_1E5D5CC08(&qword_1ED06A7E0, &qword_1ED06A790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A7D8);
  }

  return result;
}

uint64_t sub_1E5D688A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5D688EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1E5D68950(double a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  return a1 / v4;
}

uint64_t static UIImage.resizable(with:capInsets:)(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 16) = a1;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 40) = _Q0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1E5D68BB0;
  *(v17 + 24) = v11;
  v23[4] = sub_1E5D68C24;
  v23[5] = v17;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1E5D68C4C;
  v23[3] = &block_descriptor;
  v18 = _Block_copy(v23);
  v19 = a1;

  v20 = [v10 imageWithActions_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v22 = [v20 resizableImageWithCapInsets_];

    return v22;
  }

  return result;
}

id sub_1E5D68BB0(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  [*(v1 + 16) setFill];

  return [a1 fillRect_];
}

void sub_1E5D68C4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1E5D68CF8(uint64_t a1, unint64_t *a2)
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

Swift::Double __swiftcall Double.dynamicStepRoundUp(minValue:)(Swift::Double minValue)
{
  if (v1 > 0.0)
  {
    v2 = v1;
    v3 = floor(log(v1) / 2.30258509);
    if (v3 > 3.0)
    {
      v3 = 3.0;
    }

    if (v3 <= 0.0)
    {
      v3 = 0.0;
    }

    v4 = __exp10(v3);
    return v4 * ceil(v2 / v4);
  }

  return minValue;
}

uint64_t AdaptiveStackType.hashValue.getter()
{
  v1 = *v0;
  sub_1E5DA968C();
  MEMORY[0x1E693D380](v1);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D68E5C()
{
  v1 = *v0;
  sub_1E5DA968C();
  MEMORY[0x1E693D380](v1);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D68ED0()
{
  v1 = *v0;
  sub_1E5DA968C();
  MEMORY[0x1E693D380](v1);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D68F14()
{
  v1 = *v0;

  return v1;
}

char *AdaptiveStack.init(type:verticalAlignment:horizontalAlignment:spacing:content:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *result;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5 & 1;
  *(a8 + 16) = v8;
  *a8 = a6;
  *(a8 + 8) = a7;
  return result;
}

uint64_t AdaptiveStack.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1E5DA8E3C();
  sub_1E5DA8E5C();
  sub_1E5DA8B3C();
  v5 = sub_1E5DA8DBC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = *(v2 + 16);
  v27[0] = *v2;
  v27[1] = v12;
  v27[2] = *(v2 + 32);
  v28 = *(v2 + 48);
  v21 = v3;
  v22 = v4;
  v23 = v27;
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v25 = WitnessTable;
  v26 = v14;
  v15 = swift_getWitnessTable();
  sub_1E5DA8DAC();
  v24 = v15;
  swift_getWitnessTable();
  v16 = *(v6 + 16);
  v16(v11, v9, v5);
  v17 = *(v6 + 8);
  v17(v9, v5);
  v16(v20, v11, v5);
  return (v17)(v11, v5);
}

uint64_t sub_1E5D691F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1E5DA8E5C();
  v31 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v29 - v7;
  v8 = sub_1E5DA8E3C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = sub_1E5DA8B3C();
  v32 = *(v15 - 8);
  v33 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  if (*(a1 + 16))
  {
    sub_1E5DA8E4C();
    swift_getWitnessTable();
    v19 = v30;
    v18 = v31;
    v20 = *(v31 + 16);
    v20(v30, v6, v3);
    v21 = *(v18 + 8);
    v21(v6, v3);
    v20(v6, v19, v3);
    swift_getWitnessTable();
    sub_1E5D69780(v6, v8, v3);
    v21(v6, v3);
    v21(v19, v3);
  }

  else
  {
    sub_1E5DA8E2C();
    swift_getWitnessTable();
    v22 = *(v9 + 16);
    v22(v14, v12, v8);
    v23 = *(v9 + 8);
    v23(v12, v8);
    v22(v12, v14, v8);
    swift_getWitnessTable();
    sub_1E5D69688(v12, v8);
    v23(v12, v8);
    v23(v14, v8);
  }

  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v35 = WitnessTable;
  v36 = v25;
  v26 = v33;
  swift_getWitnessTable();
  v27 = v32;
  (*(v32 + 16))(v34, v17, v26);
  return (*(v27 + 8))(v17, v26);
}

uint64_t sub_1E5D69688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5DA8B1C();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E5DA8B2C();
}

uint64_t sub_1E5D69780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5DA8B1C();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E5DA8B2C();
}

unint64_t sub_1E5D6987C()
{
  result = qword_1ED06A850;
  if (!qword_1ED06A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveStackType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AdaptiveStackType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5D69A88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E5D69AEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1E5D69B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5D69B9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9FitnessUI19ModernBarButtonItem_callback);

  return v1;
}

id sub_1E5D69C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = &v5[OBJC_IVAR____TtC9FitnessUI19ModernBarButtonItem_callback];
  *v7 = a4;
  *(v7 + 1) = a5;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for ModernBarButtonItem();

  v8 = objc_msgSendSuper2(&v11, sel_init);
  v9 = sub_1E5DA911C();

  [v8 setTitle_];

  [v8 setStyle_];
  [v8 setTarget_];
  [v8 setAction_];

  return v8;
}

id sub_1E5D69D78(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_1E5D69F00()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1E5D69F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E5D69FDC()
{
  v0 = [objc_opt_self() weakObjectsHashTable];

  return v0;
}

id sub_1E5D6A01C(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHealthStore_];

  return v2;
}

id sub_1E5D6A064(void *a1)
{
  *&v1[OBJC_IVAR___FIUIPregnancyStateProvider_query] = 0;
  v3 = OBJC_IVAR___FIUIPregnancyStateProvider_observers;
  *&v1[v3] = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR___FIUIPregnancyStateProvider_pregnancyModel] = 0;
  *&v1[OBJC_IVAR___FIUIPregnancyStateProvider_healthStore] = a1;
  v7.receiver = v1;
  v7.super_class = FIUIPregnancyStateProvider;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v5 activate];

  return v5;
}

id sub_1E5D6A158()
{
  swift_getObjectType();
  v1 = sub_1E5DA933C();
  v2 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_1E5DA96DC();
    v8 = sub_1E5D67320(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1E5D0F000, v3, v1, "%s De-init called.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E693E930](v5, -1, -1);
    MEMORY[0x1E693E930](v4, -1, -1);
  }

  [v0 stopQuery];
  v11.receiver = v0;
  v11.super_class = FIUIPregnancyStateProvider;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

void *sub_1E5D6A334()
{
  v1 = *(v0 + OBJC_IVAR___FIUIPregnancyStateProvider_pregnancyModel);
  v2 = v1;
  return v1;
}

void *sub_1E5D6A374()
{
  result = *(v0 + OBJC_IVAR___FIUIPregnancyStateProvider_pregnancyModel);
  if (result)
  {
    return ([result state] == 1);
  }

  return result;
}

void sub_1E5D6A450(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___FIUIPregnancyStateProvider_observers) allObjects];
  v4 = sub_1E5DA923C();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_15;
  }

  v5 = sub_1E5DA94FC();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E693D110](i, v4);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        [v7 pregnancyModelDidChangeWithProvider:v1 model:a1];
      }

      swift_unknownObjectRelease();
    }

LABEL_15:

    return;
  }

  __break(1u);
}

void sub_1E5D6A630()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1E5DA933C();
  v3 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], v2))
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = sub_1E5DA96DC();
    v9 = sub_1E5D67320(v7, v8, v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1E5D0F000, v4, v2, "%s Starting pregnancy state query.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E693E930](v6, -1, -1);
    MEMORY[0x1E693E930](v5, -1, -1);
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = ObjectType;
  v12 = objc_allocWithZone(MEMORY[0x1E696C228]);
  v16[4] = sub_1E5D6B230;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1E5D6B144;
  v16[3] = &block_descriptor_0;
  v13 = _Block_copy(v16);

  v14 = [v12 initWithUpdateHandler_];
  _Block_release(v13);

  [*(v0 + OBJC_IVAR___FIUIPregnancyStateProvider_healthStore) executeQuery_];
  v15 = *(v0 + OBJC_IVAR___FIUIPregnancyStateProvider_query);
  *(v0 + OBJC_IVAR___FIUIPregnancyStateProvider_query) = v14;
}

void sub_1E5D6A8B4()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR___FIUIPregnancyStateProvider_query);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___FIUIPregnancyStateProvider_healthStore);
    v11 = v1;
    [v2 stopQuery_];
    v3 = sub_1E5DA933C();
    v4 = *MEMORY[0x1E696B928];
    if (os_log_type_enabled(*MEMORY[0x1E696B928], v3))
    {
      v5 = v4;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = sub_1E5DA96DC();
      v10 = sub_1E5D67320(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1E5D0F000, v5, v3, "%s Stopping pregnancy state query.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E693E930](v7, -1, -1);
      MEMORY[0x1E693E930](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1E5D6AA7C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1E5DA933C();
  v5 = MEMORY[0x1E696B928];
  v6 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], v4))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56 = v9;
    *v8 = 136315138;
    sub_1E5DA941C();
    v10 = sub_1E5DA96DC();
    v12 = v11;

    v57 = v10;
    v58 = v12;
    MEMORY[0x1E693CEB0](0xD00000000000001ELL, 0x80000001E5DB71C0);
    v13 = [a1 description];
    v14 = sub_1E5DA915C();
    v16 = v15;

    MEMORY[0x1E693CEB0](v14, v16);

    MEMORY[0x1E693CEB0](46, 0xE100000000000000);
    v17 = sub_1E5DA911C();

    v18 = HKSensitiveLogItem();

    sub_1E5DA93DC();
    swift_unknownObjectRelease();
    v19 = sub_1E5DA917C();
    v21 = sub_1E5D67320(v19, v20, &v56);

    *(v8 + 4) = v21;
    v5 = MEMORY[0x1E696B928];
    _os_log_impl(&dword_1E5D0F000, v7, v4, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E693E930](v9, -1, -1);
    MEMORY[0x1E693E930](v8, -1, -1);
  }

  v22 = OBJC_IVAR___FIUIPregnancyStateProvider_pregnancyModel;
  v23 = *&v2[OBJC_IVAR___FIUIPregnancyStateProvider_pregnancyModel];
  if (v23)
  {
    v24 = [*&v2[OBJC_IVAR___FIUIPregnancyStateProvider_pregnancyModel] state];
  }

  else
  {
    v24 = 0;
  }

  v25 = [a1 state];
  v26 = sub_1E5DA933C();
  v27 = *v5;
  v28 = os_log_type_enabled(*v5, v26);
  if (v23)
  {
    v29 = v24 == v25;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    if (v28)
    {
      v47 = v27;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v56 = v49;
      v57 = 0;
      *v48 = 136315138;
      v58 = 0xE000000000000000;
      sub_1E5DA941C();
      v50 = sub_1E5DA96DC();
      MEMORY[0x1E693CEB0](v50);

      MEMORY[0x1E693CEB0](0xD000000000000034, 0x80000001E5DB71E0);
      v51 = sub_1E5DA911C();

      v52 = HKSensitiveLogItem();

      sub_1E5DA93DC();
      swift_unknownObjectRelease();
      v53 = sub_1E5DA917C();
      v55 = sub_1E5D67320(v53, v54, &v56);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_1E5D0F000, v47, v26, "%s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x1E693E930](v49, -1, -1);
      MEMORY[0x1E693E930](v48, -1, -1);
    }
  }

  else
  {
    if (v28)
    {
      v30 = v27;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v32;
      v57 = 0;
      *v31 = 136315138;
      v58 = 0xE000000000000000;
      sub_1E5DA941C();
      v33 = sub_1E5DA96DC();
      v35 = v34;

      v57 = v33;
      v58 = v35;
      MEMORY[0x1E693CEB0](0xD00000000000001CLL, 0x80000001E5DB7220);
      v36 = [a1 description];
      v37 = sub_1E5DA915C();
      v39 = v38;

      MEMORY[0x1E693CEB0](v37, v39);

      v40 = sub_1E5DA911C();

      v41 = HKSensitiveLogItem();

      sub_1E5DA93DC();
      swift_unknownObjectRelease();
      v42 = sub_1E5DA917C();
      v44 = sub_1E5D67320(v42, v43, &v56);

      *(v31 + 4) = v44;
      _os_log_impl(&dword_1E5D0F000, v30, v26, "%s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x1E693E930](v32, -1, -1);
      MEMORY[0x1E693E930](v31, -1, -1);
    }

    v45 = *&v2[v22];
    *&v2[v22] = a1;
    v46 = a1;

    [v2 notifyObservers_];
  }
}

void __swiftcall FIUIPregnancyStateProvider.init()(FIUIPregnancyStateProvider *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1E5D6B144(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

unint64_t type metadata accessor for FIUIPregnancyStateProvider()
{
  result = qword_1ED06B190;
  if (!qword_1ED06B190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED06B190);
  }

  return result;
}

void sub_1E5D6B230(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      [Strong pregnancyModelDidChangeWithModel_];
LABEL_7:

      return;
    }

    v7 = sub_1E5DA931C();
    v8 = *MEMORY[0x1E696B928];
    if (!os_log_type_enabled(*MEMORY[0x1E696B928], v7))
    {
      goto LABEL_7;
    }

    v9 = v8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    v13 = sub_1E5DA96DC();
    v15 = sub_1E5D67320(v13, v14, &v19);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    if (a3)
    {
      v16 = a3;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = v17;
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

    *(v10 + 14) = v17;
    *v11 = v18;
    _os_log_impl(&dword_1E5D0F000, v9, v7, "%s Error when trying to get model from pregnancy state query: %@", v10, 0x16u);
    sub_1E5D6B414(v11);
    MEMORY[0x1E693E930](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E693E930](v12, -1, -1);
    MEMORY[0x1E693E930](v10, -1, -1);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5D6B414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED06A880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E5D6B47C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  qword_1ED06B1A0 = v2;
}

uint64_t *sub_1E5D6B4E0()
{
  if (qword_1ED06B198 != -1)
  {
    swift_once();
  }

  return &qword_1ED06B1A0;
}

double sub_1E5D6B554()
{
  if (qword_1ED06B198 != -1)
  {
    swift_once();
  }

  result = 1.0 / *&qword_1ED06B1A0;
  *&qword_1ED06B1B0 = 1.0 / *&qword_1ED06B1A0;
  return result;
}

uint64_t *sub_1E5D6B5B4()
{
  if (qword_1ED06B1A8 != -1)
  {
    swift_once();
  }

  return &qword_1ED06B1B0;
}

double sub_1E5D6B628(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

double CGFloat.roundToScreenScale()(double a1)
{
  if (qword_1ED06B198 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return round(*&qword_1ED06B1A0 * a1) / *&qword_1ED06B1A0;
}

double CGFloat.floorToScreenScale()(double a1)
{
  if (qword_1ED06B198 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return floor(*&qword_1ED06B1A0 * a1) / *&qword_1ED06B1A0;
}

double CGFloat.ceilToScreenScale()(double a1)
{
  if (qword_1ED06B198 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return ceil(*&qword_1ED06B1A0 * a1) / *&qword_1ED06B1A0;
}

double CGFloat.bracketed(min:max:)(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    if ((*&a1 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      a3 = a1;
    }

    if ((~*&a1 & 0x7FF0000000000000) != 0)
    {
      a3 = a1;
    }

    if (a3 <= a2)
    {
      return a3;
    }
  }

  else if (a3 <= a2)
  {
    return a3;
  }

  if ((*&a2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  if ((~*&a2 & 0x7FF0000000000000) != 0)
  {
    return a2;
  }

  else
  {
    return v4;
  }
}

CGSize __swiftcall CGSize.applyInsets(_:)(UIEdgeInsets a1)
{
  v3 = a1.left + v1 + a1.right;
  v4 = a1.top + v2 + a1.bottom;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

double _sSo6CGSizeV9FitnessUIE18roundToScreenScaleAByF_0(double a1)
{
  if (qword_1ED06B198 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return round(*&qword_1ED06B1A0 * a1) / *&qword_1ED06B1A0;
}

double _sSo6CGSizeV9FitnessUIE18floorToScreenScaleAByF_0(double a1)
{
  if (qword_1ED06B198 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return floor(*&qword_1ED06B1A0 * a1) / *&qword_1ED06B1A0;
}

double _sSo6CGSizeV9FitnessUIE17ceilToScreenScaleAByF_0(double a1)
{
  if (qword_1ED06B198 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return ceil(*&qword_1ED06B1A0 * a1) / *&qword_1ED06B1A0;
}

__C::CGRect __swiftcall CGRect.roundToScreenScale()()
{
  if (qword_1ED06B198 != -1)
  {
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    swift_once();
    v0 = v11;
    v1 = v10;
    v2 = v9;
    v3 = v8;
  }

  v4 = round(*&qword_1ED06B1A0 * v0) / *&qword_1ED06B1A0;
  v5 = round(*&qword_1ED06B1A0 * v1) / *&qword_1ED06B1A0;
  v6 = round(*&qword_1ED06B1A0 * v2) / *&qword_1ED06B1A0;
  v7 = round(*&qword_1ED06B1A0 * v3) / *&qword_1ED06B1A0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

__C::CGRect __swiftcall CGRect.floorToScreenScale()()
{
  if (qword_1ED06B198 != -1)
  {
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    swift_once();
    v0 = v11;
    v1 = v10;
    v2 = v9;
    v3 = v8;
  }

  v4 = floor(*&qword_1ED06B1A0 * v0) / *&qword_1ED06B1A0;
  v5 = floor(*&qword_1ED06B1A0 * v1) / *&qword_1ED06B1A0;
  v6 = floor(*&qword_1ED06B1A0 * v2) / *&qword_1ED06B1A0;
  v7 = floor(*&qword_1ED06B1A0 * v3) / *&qword_1ED06B1A0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

__C::CGRect __swiftcall CGRect.ceilToScreenScale()()
{
  if (qword_1ED06B198 != -1)
  {
    v8 = v3;
    v9 = v2;
    v10 = v1;
    v11 = v0;
    swift_once();
    v0 = v11;
    v1 = v10;
    v2 = v9;
    v3 = v8;
  }

  v4 = ceil(*&qword_1ED06B1A0 * v0) / *&qword_1ED06B1A0;
  v5 = ceil(*&qword_1ED06B1A0 * v1) / *&qword_1ED06B1A0;
  v6 = ceil(*&qword_1ED06B1A0 * v2) / *&qword_1ED06B1A0;
  v7 = ceil(*&qword_1ED06B1A0 * v3) / *&qword_1ED06B1A0;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

__C::CGRect __swiftcall CGRect.rtl(inSuperviewBounds:)(__C::CGRect inSuperviewBounds)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  Width = CGRectGetWidth(inSuperviewBounds);
  v16.origin.x = v8;
  v16.origin.y = v7;
  v16.size.width = v6;
  v16.size.height = v5;
  v10 = Width - CGRectGetMaxX(v16);
  v17.origin.x = v8;
  v17.origin.y = v7;
  v17.size.width = v6;
  v17.size.height = v5;
  v11 = CGRectGetWidth(v17);
  v18.origin.x = v8;
  v18.origin.y = v7;
  v18.size.width = v6;
  v18.size.height = v5;
  Height = CGRectGetHeight(v18);
  v13 = v10;
  v14 = v7;
  v15 = v11;
  result.size.height = Height;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

Swift::Void __swiftcall CGRect.flipRTL(inSuperviewBounds:)(__C::CGRect inSuperviewBounds)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  Width = CGRectGetWidth(inSuperviewBounds);
  v7.origin.x = v2;
  v7.origin.y = v3;
  v7.size.width = v4;
  v7.size.height = v5;
  *v1 = Width - CGRectGetMaxX(v7);
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

UIEdgeInsets __swiftcall UIEdgeInsets.init(offset:)(UIOffset offset)
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v3 = vertical;
  v4 = horizontal;
  result.right = v4;
  result.bottom = vertical;
  result.left = horizontal;
  result.top = v3;
  return result;
}

id UIScrollView.isPagingEnabled(_:)(char a1)
{
  [v1 setPagingEnabled_];

  return v3;
}

id UIScrollView.showsHorizontalScrollIndicator(_:)(char a1)
{
  [v1 setShowsHorizontalScrollIndicator_];

  return v3;
}

id UIScrollView.showsVerticalScrollIndicator(_:)(char a1)
{
  [v1 setShowsVerticalScrollIndicator_];

  return v3;
}

id UIScrollView.contentInsetAdjustmentBehavior(_:)(uint64_t a1)
{
  [v1 setContentInsetAdjustmentBehavior_];

  return v3;
}

id UIScrollView.alwaysBounceVertical(_:)(char a1)
{
  [v1 setAlwaysBounceVertical_];

  return v3;
}

id sub_1E5D6BF28(SEL *a1, float a2)
{
  v5 = [v2 ringGroup];
  *&v6 = a2;
  [v5 *a1];

  return v8;
}

id ARUIRingsView.emptyRings()()
{
  v1 = [v0 ringGroup];
  v2 = [v1 rings];

  sub_1E5D6C0E0();
  v3 = sub_1E5DA923C();

  if (v3 >> 62)
  {
    v4 = sub_1E5DA94FC();

    if (v4 < 0)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v11;
  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x1E6989B10];
    do
    {
      v8 = [v11 ringGroup];
      LODWORD(v9) = *v7;
      [v8 setPercentage:v6 ofRingAtIndex:v9];

      v5 = v11;
      ++v6;
    }

    while (v4 != v6);
  }

  return v5;
}

unint64_t sub_1E5D6C0E0()
{
  result = qword_1ED06A8F0;
  if (!qword_1ED06A8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED06A8F0);
  }

  return result;
}

id ARUIRingsView.nilRings(animated:)(char a1)
{
  v3 = [v1 ringGroup];
  [v3 hk:0 configureWithActivitySummary:a1 & 1 animated:?];

  return v5;
}

id UIView.autoLayout()()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];

  return v2;
}

id static UIView.tableViewDivider()()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() separatorColor];
  [v0 setBackgroundColor_];

  return v0;
}

id UIView.backgroundColor(_:)(uint64_t a1)
{
  [v1 setBackgroundColor_];

  return v3;
}

id UIView.tintColor(_:)(uint64_t a1)
{
  [v1 setTintColor_];

  return v3;
}

id UIView.isHidden(_:)(char a1)
{
  [v1 setHidden_];

  return v3;
}

id UIView.layerCornerRadius(_:)(double a1)
{
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  [v5 setClipsToBounds_];

  return v5;
}

id UIView.alpha(_:)()
{
  [v0 setAlpha_];

  return v2;
}

id UIView.borderColor(_:width:)(void *a1, double a2)
{
  v5 = [v2 layer];
  v6 = [a1 CGColor];
  [v5 setBorderColor_];

  v7 = [v9 layer];
  [v7 setBorderWidth_];

  return v9;
}

id UIView.clipsToBounds(_:)(char a1)
{
  [v1 setClipsToBounds_];

  return v3;
}

id UIView.cornerCurve(_:)(uint64_t a1)
{
  v3 = [v1 layer];
  [v3 setCornerCurve_];

  return v5;
}

id UIView.isOpaque(_:)(char a1)
{
  [v1 setOpaque_];

  return v3;
}

id UIView.userInteractionEnabled(_:)(char a1)
{
  [v1 setUserInteractionEnabled_];

  return v3;
}

id UIView.shouldRasterize(_:)(char a1)
{
  v3 = [v1 layer];
  [v3 setShouldRasterize_];

  return v5;
}

id UIView.contentCompressionResistancePriority(_:forAxis:)(uint64_t a1)
{
  [v1 setContentCompressionResistancePriority:a1 forAxis:?];

  return v3;
}

id UIView.incompressible()(double a1)
{
  LODWORD(a1) = 1148846080;
  [v1 setContentCompressionResistancePriority:0 forAxis:a1];
  LODWORD(v2) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v2];

  return v4;
}

id UIView.incompressibleForAxis(_:)(uint64_t a1, double a2)
{
  LODWORD(a2) = 1148846080;
  [v2 setContentCompressionResistancePriority:a1 forAxis:a2];

  return v4;
}

id UIView.contentHuggingPriority(_:forAxis:)(uint64_t a1)
{
  [v1 setContentHuggingPriority:a1 forAxis:?];

  return v3;
}

id UIView.tightlyHuggingContent()(double a1)
{
  LODWORD(a1) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:a1];
  LODWORD(v2) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v2];

  return v4;
}

id UIView.tightlyHuggingContentForAxis(_:)(uint64_t a1, double a2)
{
  LODWORD(a2) = 1148846080;
  [v2 setContentHuggingPriority:a1 forAxis:a2];

  return v4;
}

id UIView.withContentMode(_:)(uint64_t a1)
{
  [v1 setContentMode_];

  return v3;
}

uint64_t UIView.constraintsPinningToEdgesOfView(_:supportingRTL:insets:leadingPriority:trailingPriority:topPriority:bottomPriority:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = -a6;
  if (a2)
  {
    v13 = &selRef_leadingAnchor;
  }

  else
  {
    v13 = &selRef_leftAnchor;
  }

  if (a2)
  {
    v14 = &selRef_trailingAnchor;
  }

  else
  {
    v14 = &selRef_rightAnchor;
  }

  v15 = [v7 *v13];
  v16 = [a1 *v13];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a4];

  v18 = NSLayoutConstraint.priority(_:)();
  v19 = v18;
  v20 = [v7 *v14];
  v21 = [a1 *v14];
  v22 = [v20 constraintEqualToAnchor:v21 constant:v12];

  v23 = NSLayoutConstraint.priority(_:)();
  v24 = v23;
  v25 = [v7 topAnchor];
  v26 = [a1 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:a3];

  v28 = NSLayoutConstraint.priority(_:)();
  v29 = [v7 bottomAnchor];
  v30 = [a1 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-a5];

  v32 = NSLayoutConstraint.priority(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A8F8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1E5DB2B70;
  *(v33 + 32) = v19;
  *(v33 + 40) = v24;
  *(v33 + 48) = v28;
  *(v33 + 56) = v32;

  return v33;
}

uint64_t UIView.constraintsPinningToLayoutGuide(_:supportingRTL:insets:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = -a6;
  if (a2)
  {
    v13 = &selRef_leadingAnchor;
  }

  else
  {
    v13 = &selRef_leftAnchor;
  }

  if (a2)
  {
    v14 = &selRef_trailingAnchor;
  }

  else
  {
    v14 = &selRef_rightAnchor;
  }

  v15 = [v7 *v13];
  v16 = [a1 *v13];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a4];

  v18 = v17;
  v19 = [v7 *v14];
  v20 = [a1 *v14];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v12];

  v22 = v21;
  v23 = [v7 topAnchor];
  v24 = [a1 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:a3];

  v26 = [v7 bottomAnchor];
  v27 = [a1 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-a5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A8F8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1E5DB2B70;
  *(v29 + 32) = v18;
  *(v29 + 40) = v22;
  *(v29 + 48) = v25;
  *(v29 + 56) = v28;

  return v29;
}

uint64_t sub_1E5D6CE60(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A8F8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E5DB2B80;
  v5 = [v2 centerXAnchor];
  v6 = [a1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v2 centerYAnchor];
  v9 = [a1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  return v4;
}

uint64_t sub_1E5D6CFF0()
{
  sub_1E5DA8A3C();
  sub_1E5D7251C(&qword_1ED06AA00, MEMORY[0x1E6985530]);
  sub_1E5DA8A6C();
  return v1;
}

uint64_t sub_1E5D6D06C@<X0>(_BYTE *a1@<X8>)
{
  sub_1E5DA8A3C();
  sub_1E5D7251C(&qword_1ED06AA00, MEMORY[0x1E6985530]);
  result = sub_1E5DA8A6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1E5D6D0FC()
{
  type metadata accessor for StandHourChart();
}

uint64_t type metadata accessor for StandHourChart()
{
  result = qword_1ED06B260;
  if (!qword_1ED06B260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E5D6D188()
{
  v0 = sub_1E5DA84AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E5DA845C();
  v5 = sub_1E5DA844C();
  v6 = *(v1 + 8);
  v6(v3, v0);
  [v4 setLocale_];

  v7 = objc_opt_self();
  v8 = sub_1E5DA911C();
  sub_1E5DA845C();
  v9 = sub_1E5DA844C();
  v6(v3, v0);
  v10 = [v7 dateFormatFromTemplate:v8 options:0 locale:v9];

  [v4 setDateFormat_];
  return v4;
}

uint64_t sub_1E5D6D320@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for StandHourChart();
  v4 = v3 - 8;
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v66 = v5;
  v67 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A488);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A900);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A908);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v46 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A910);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v46 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A918);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v46 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A920);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v46 - v16;
  v69 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A928);
  sub_1E5D6E048();
  sub_1E5DA87BC();
  v68 = v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A938);
  v18 = sub_1E5D5CC08(&qword_1ED06A940, &qword_1ED06A900);
  v19 = sub_1E5D5CC08(&qword_1ED06A948, &qword_1ED06A938);
  v51 = v13;
  sub_1E5DA8C7C();
  result = (*(v9 + 8))(v11, v8);
  v21 = *(v2 + *(v4 + 40));
  v22 = (v21 * 24) >> 64;
  v23 = 24 * v21;
  if (v22 == v23 >> 63)
  {
    if ((v23 & 0x8000000000000000) == 0)
    {
      v75 = 0;
      v76 = v23;
      v48 = sub_1E5DA886C();
      v24 = *(v48 - 8);
      v50 = v2;
      v47 = *(v24 + 56);
      v49 = v24 + 56;
      v25 = v64;
      v47(v64, 1, 1, v48);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A950);
      v71 = v8;
      v72 = v17;
      v73 = v18;
      v74 = v19;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v28 = sub_1E5D7147C(&qword_1ED06A958, &qword_1ED06A950);
      v29 = v52;
      v30 = v54;
      v31 = v51;
      sub_1E5DA8C9C();
      sub_1E5D5EC00(v25, &qword_1ED06A488);
      (*(v53 + 8))(v31, v30);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4C8);
      v71 = v30;
      v72 = v26;
      v73 = OpaqueTypeConformance2;
      v74 = v28;
      v33 = swift_getOpaqueTypeConformance2();
      v34 = sub_1E5D5CC08(&qword_1ED06A4D8, &qword_1ED06A4C8);
      v35 = v58;
      v36 = v57;
      sub_1E5DA8C8C();
      (*(v56 + 8))(v29, v36);
      v70 = *sub_1E5D5702C();
      v47(v25, 1, 1, v48);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4E0);
      v71 = v36;
      v72 = v32;
      v73 = v33;
      v74 = v34;
      v38 = swift_getOpaqueTypeConformance2();
      v39 = sub_1E5D7147C(&qword_1ED06A4E8, &qword_1ED06A4E0);
      v40 = v60;
      v41 = v61;
      sub_1E5DA8CAC();
      sub_1E5D5EC00(v25, &qword_1ED06A488);
      (*(v59 + 8))(v35, v41);
      v42 = v67;
      sub_1E5D71624(v50, v67);
      v43 = (*(v65 + 80) + 16) & ~*(v65 + 80);
      v44 = swift_allocObject();
      sub_1E5D71694(v42, v44 + v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A960);
      v71 = v41;
      v72 = v37;
      v73 = v38;
      v74 = v39;
      swift_getOpaqueTypeConformance2();
      sub_1E5D717D8();
      v45 = v63;
      sub_1E5DA8CBC();

      return (*(v62 + 8))(v40, v45);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5D6DC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for StandHourChart();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1E5DA897C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  sub_1E5D71CBC(&qword_1ED06A480, MEMORY[0x1E697EA58], &v20 - v10);
  v12 = MEMORY[0x1E697EA58];
  sub_1E5D7251C(&qword_1ED06A550, MEMORY[0x1E697EA58]);
  sub_1E5DA93EC();
  sub_1E5D7251C(&qword_1ED06A558, v12);
  LOBYTE(v12) = sub_1E5DA910C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v27 = v14;
  sub_1E5D71624(a1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v16 = swift_allocObject();
  sub_1E5D71694(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4B8);
  sub_1E5D5CC08(&qword_1ED06A538, &qword_1ED06A528);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4C0);
  v23 = sub_1E5DA883C();
  v24 = MEMORY[0x1E697E3F0];
  v25 = MEMORY[0x1E695B2B8];
  v26 = MEMORY[0x1E697E3E0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v17;
  v24 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E5D5CC50();
  return sub_1E5DA8E6C();
}

unint64_t sub_1E5D6E048()
{
  result = qword_1ED06A930;
  if (!qword_1ED06A930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A928);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4C0);
    sub_1E5DA883C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A930);
  }

  return result;
}

uint64_t sub_1E5D6E14C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v31 = a3;
  v29 = sub_1E5DA8AFC();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A548);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v24 = sub_1E5DA883C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4C0);
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v22 - v11;
  v13 = *a1;
  v14 = a1[1];
  v23 = *(a1 + 16);
  v22 = *(a1 + 17);
  sub_1E5DA8ACC();
  *&v38[0] = v13;
  sub_1E5DA872C();

  sub_1E5DA8ACC();
  *&v38[0] = v14;
  sub_1E5DA872C();

  sub_1E5DA8ACC();
  *&v38[0] = v14;
  sub_1E5DA872C();

  sub_1E5DA882C();
  sub_1E5D71CBC(&qword_1ED06A478, MEMORY[0x1E697F610], v5);
  if (v22)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  sub_1E5D7CAB0(v15 | v23, v36);
  (*(v27 + 8))(v5, v29);
  v38[0] = v36[0];
  v38[1] = v36[1];
  v39 = v37;
  v16 = MEMORY[0x1E697E3F0];
  v17 = MEMORY[0x1E695B2B8];
  v18 = MEMORY[0x1E697E3E0];
  v19 = v24;
  sub_1E5DA86CC();
  sub_1E5D724C8(v36);
  (*(v25 + 8))(v10, v19);
  sub_1E5D68950(10.8);
  sub_1E5DA88EC();
  v32 = v19;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v28;
  sub_1E5DA86EC();
  sub_1E5D5CCE8(v38);
  return (*(v30 + 8))(v12, v20);
}

int64_t sub_1E5D6E66C(uint64_t a1)
{
  v2 = sub_1E5DA870C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for StandHourChart();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1E5DA875C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5DA873C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A520);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  v9 = 0;
  v10 = result - 32;
  if (result < 32)
  {
    v10 = result - 25;
  }

  v7[2] = 25;
  v7[3] = 2 * (v10 >> 3);
  v11 = 4;
  while (v9 == 24)
  {
    v12 = 0;
LABEL_7:
    v7[v11] = v9;
    if (v11 == 28)
    {
      goto LABEL_11;
    }

    ++v11;
    v13 = v9 == 24;
    v9 = v12;
    if (v13)
    {
      __break(1u);
LABEL_11:
      MEMORY[0x1EEE9AC00](result);
      v16 = a1;
      sub_1E5D71894(sub_1E5D71EBC, &v17[-32], v7);

      sub_1E5D71624(a1, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v15 = swift_allocObject();
      sub_1E5D71694(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
      sub_1E5DA86FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A988);
      sub_1E5D71F9C();
      v16 = MEMORY[0x1E695B470];
      return sub_1E5DA884C();
    }
  }

  v12 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5D6E94C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v87 = a1;
  v100 = a3;
  v75 = sub_1E5DA8AFC();
  v74 = *(v75 - 8);
  v3 = MEMORY[0x1EEE9AC00](v75);
  v73 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v71 - v5;
  v6 = sub_1E5DA878C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5DA87AC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9C0);
  v83 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v82 = &v71 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9B8);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v93 = &v71 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9D0);
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v84 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v99 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v71 - v16;
  v17 = sub_1E5DA87FC();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v77 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1E5DA881C();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9D8);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v71 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9A0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v92 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v71 - v27;
  v29 = sub_1E5DA86BC();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A518);
  v90 = *(v91 - 8);
  v33 = MEMORY[0x1EEE9AC00](v91);
  v89 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v71 - v35;
  sub_1E5D56F78();
  sub_1E5DA88EC();
  v114 = v105;
  v115 = v106;
  v116 = v107;
  sub_1E5DA86AC();
  v37 = sub_1E5D56EA8();
  *&v111 = *v37;
  v88 = v36;
  sub_1E5DA87CC();
  (*(v30 + 8))(v32, v29);
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * sub_1E5DA885C() + 0x2AAAAAAAAAAAAAAALL, 1) <= 0x2AAAAAAAAAAAAAAAuLL)
  {
    sub_1E5DA87EC();
    sub_1E5DA88EC();
    v111 = v108;
    v112 = v109;
    v113 = v110;
    sub_1E5DA880C();
    v102 = *v37;
    v39 = v76;
    v40 = v79;
    sub_1E5DA87CC();
    (*(v78 + 8))(v20, v40);
    (*(v22 + 32))(v28, v39, v21);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v41 = 1;
  (*(v22 + 56))(v28, v38, 1, v21);
  v42 = sub_1E5DA885C();
  v43 = sub_1E5D6F6A0(v42);
  v45 = v94;
  v46 = v93;
  if (v44)
  {
    v102 = v43;
    v103 = v44;
    sub_1E5DA879C();
    sub_1E5DA877C();
    sub_1E5D5E1E0();
    v47 = v82;
    sub_1E5DA871C();
    sub_1E5DA8BEC();
    v48 = sub_1E5D5CC08(&qword_1ED06A9C8, &qword_1ED06A9C0);
    sub_1E5DA87DC();

    (*(v83 + 8))(v47, v45);
    if (sub_1E5DA885C() != 24)
    {
      v87 = v28;
      v49 = v72;
      sub_1E5D71CBC(&qword_1ED06A478, MEMORY[0x1E697F610], v72);
      v50 = v74;
      v51 = v73;
      v52 = v75;
      (*(v74 + 104))(v73, *MEMORY[0x1E697F608], v75);
      sub_1E5DA8AEC();
      v53 = *(v50 + 8);
      v53(v51, v52);
      v54 = v49;
      v28 = v87;
      v53(v54, v52);
    }

    sub_1E5DA8D7C();
    v55 = sub_1E5DA8D8C();

    v101 = v55;
    v102 = v45;
    v103 = v48;
    swift_getOpaqueTypeConformance2();
    v56 = v84;
    v57 = v86;
    sub_1E5DA87CC();

    (*(v85 + 8))(v46, v57);
    v58 = v95;
    v59 = v96;
    v60 = v97;
    (*(v95 + 32))(v96, v56, v97);
    v41 = 0;
  }

  else
  {
    v60 = v97;
    v59 = v96;
    v58 = v95;
  }

  (*(v58 + 56))(v59, v41, 1, v60);
  v61 = v90;
  v62 = v89;
  v63 = v88;
  v64 = v91;
  (*(v90 + 16))(v89, v88, v91);
  v102 = v62;
  v65 = v28;
  v66 = v28;
  v67 = v92;
  sub_1E5D5CD3C(v65, v92, &qword_1ED06A9A0);
  v103 = v67;
  v68 = v99;
  sub_1E5D5CD3C(v59, v99, &qword_1ED06A9B0);
  v104 = v68;
  sub_1E5D71160(&v102, v100);
  sub_1E5D5EC00(v59, &qword_1ED06A9B0);
  sub_1E5D5EC00(v66, &qword_1ED06A9A0);
  v69 = *(v61 + 8);
  v69(v63, v64);
  sub_1E5D5EC00(v68, &qword_1ED06A9B0);
  sub_1E5D5EC00(v67, &qword_1ED06A9A0);
  return (v69)(v62, v64);
}

uint64_t sub_1E5D6F6A0(uint64_t a1)
{
  v207 = a1;
  v2 = sub_1E5DA848C();
  v199 = *(v2 - 8);
  v200 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v184 = &v170 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v183 = &v170 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v182 = &v170 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v193 = &v170 - v9;
  v10 = sub_1E5DA84AC();
  v197 = *(v10 - 8);
  v198 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v178 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v177 = &v170 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v176 = &v170 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v191 = &v170 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9E8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v181 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v180 = &v170 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v179 = &v170 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v192 = &v170 - v25;
  v26 = sub_1E5DA83DC();
  v205 = *(v26 - 8);
  v206 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v190 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v189 = &v170 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v188 = &v170 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v201 = &v170 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A3D0);
  v35 = MEMORY[0x1EEE9AC00](v34 - 8);
  v187 = &v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v186 = &v170 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v185 = &v170 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v208 = &v170 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v209 = &v170 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9F0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v204 = &v170 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9F8);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v48 = &v170 - v47;
  v49 = sub_1E5DA82CC();
  v202 = *(v49 - 8);
  v203 = v49;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v194 = &v170 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v170 - v52;
  v210 = sub_1E5DA854C();
  v54 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v56 = &v170 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1E5DA897C();
  v58 = *(v57 - 8);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v170 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v170 - v62;
  v195 = type metadata accessor for StandHourChart();
  v196 = v1;
  sub_1E5D71CBC(&qword_1ED06A480, MEMORY[0x1E697EA58], v63);
  v64 = MEMORY[0x1E697EA58];
  sub_1E5D7251C(&qword_1ED06A550, MEMORY[0x1E697EA58]);
  sub_1E5DA93EC();
  sub_1E5D7251C(&qword_1ED06A558, v64);
  v65 = sub_1E5DA910C();
  v66 = *(v58 + 8);
  v66(v61, v57);
  v66(v63, v57);
  if (v65)
  {
    sub_1E5DA852C();
    v67 = *(v54 + 56);
    v67(v48, 1, 1, v210);
    v68 = sub_1E5DA855C();
    v69 = *(v68 - 8);
    v174 = *(v69 + 56);
    v173 = v69 + 56;
    v174(v204, 1, 1, v68);
    v70 = v48;
    sub_1E5DA82BC();
    v71 = v209;
    sub_1E5DA84EC();
    v72 = v71;
    v73 = v208;
    sub_1E5D5CD3C(v72, v208, &qword_1ED06A3D0);
    v74 = v205;
    v75 = v73;
    v76 = v206;
    v175 = *(v205 + 48);
    if (v175(v75, 1, v206) == 1)
    {
      sub_1E5D5EC00(v209, &qword_1ED06A3D0);
      (*(v202 + 8))(v53, v203);
      (*(v54 + 8))(v56, v210);
      v77 = v208;
LABEL_4:
      sub_1E5D5EC00(v77, &qword_1ED06A3D0);
      return 0;
    }

    v171 = v53;
    v172 = v56;
    v170 = v54;
    v81 = v201;
    v82 = *(v74 + 32);
    v82(v201, v208, v76);
    if (v207 > 11)
    {
      if (v207 != 12)
      {
        if (v207 != 18)
        {
          if (v207 != 24)
          {
            goto LABEL_31;
          }

LABEL_20:
          v107 = v74;
          v108 = *(v196 + *(v195 + 36));
          v109 = sub_1E5DA83AC();
          v110 = [v108 stringFromDate_];

          v78 = sub_1E5DA915C();
          v112 = v111;

          v113 = v191;
          sub_1E5DA846C();
          v114 = v193;
          sub_1E5DA849C();
          (*(v197 + 8))(v113, v198);
          v115 = v192;
          sub_1E5DA847C();
          (*(v199 + 8))(v114, v200);
          v116 = sub_1E5DA843C();
          v117 = *(v116 - 8);
          if ((*(v117 + 48))(v115, 1, v116) == 1)
          {
            sub_1E5D5EC00(v115, &qword_1ED06A9E8);
            v118 = v170;
            v120 = v209;
            v119 = v210;
            v121 = v172;
            v122 = v202;
LABEL_36:
            (*(v107 + 8))(v201, v206);
            sub_1E5D5EC00(v120, &qword_1ED06A3D0);
            (*(v122 + 8))(v171, v203);
            (*(v118 + 8))(v121, v119);
            return v78;
          }

          v141 = sub_1E5DA842C();
          v143 = v142;
          (*(v117 + 8))(v115, v116);
          if (v141 == 26984 && v143 == 0xE200000000000000)
          {

            v118 = v170;
            v120 = v209;
            v119 = v210;
            v121 = v172;
            v122 = v202;
          }

          else
          {
            v156 = sub_1E5DA95CC();

            v118 = v170;
            v120 = v209;
            v119 = v210;
            v121 = v172;
            v122 = v202;
            if ((v156 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          v215 = v78;
          v216 = v112;
          v213 = 32;
          v214 = 0xE100000000000000;
          v211 = 0;
          v212 = 0xE000000000000000;
          sub_1E5D5E1E0();
          v78 = sub_1E5DA93CC();

          goto LABEL_36;
        }

        v208 = v74 + 32;
        v67(v70, 1, 1, v210);
        v174(v204, 1, 1, v68);
        v138 = v194;
        sub_1E5DA82BC();
        v139 = v187;
        v85 = v172;
        sub_1E5DA84FC();
        v86 = v81;
        v87 = *(v202 + 8);
        v140 = v138;
        v89 = v139;
        v90 = v203;
        v87(v140, v203);
        if (v175(v89, 1, v76) == 1)
        {
LABEL_27:
          (*(v205 + 8))(v86, v76);
          sub_1E5D5EC00(v209, &qword_1ED06A3D0);
          v87(v171, v90);
          (*(v170 + 8))(v85, v210);
          v77 = v89;
          goto LABEL_4;
        }

        v82(v190, v89, v76);
        v144 = *(v196 + *(v195 + 36));
        v145 = sub_1E5DA83AC();
        v146 = [v144 stringFromDate_];

        v78 = sub_1E5DA915C();
        v148 = v147;

        v149 = v178;
        sub_1E5DA846C();
        v150 = v184;
        sub_1E5DA849C();
        (*(v197 + 8))(v149, v198);
        v151 = v181;
        sub_1E5DA847C();
        v152 = v151;
        (*(v199 + 8))(v150, v200);
        v153 = sub_1E5DA843C();
        v154 = *(v153 - 8);
        v155 = (*(v154 + 48))(v152, 1, v153);
        v103 = v170;
        if (v155 == 1)
        {
          sub_1E5D5EC00(v152, &qword_1ED06A9E8);
          v104 = v210;
          v105 = v206;
          v106 = v172;
LABEL_51:
          v167 = *(v205 + 8);
          v167(v190, v105);
          goto LABEL_55;
        }

        v160 = sub_1E5DA842C();
        v162 = v161;
        (*(v154 + 8))(v152, v153);
        if (v160 == 26984 && v162 == 0xE200000000000000)
        {

          v104 = v210;
          v105 = v206;
          v106 = v172;
        }

        else
        {
          v168 = sub_1E5DA95CC();

          v104 = v210;
          v105 = v206;
          v106 = v172;
          if ((v168 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        v215 = v78;
        v216 = v148;
        v213 = 32;
        v214 = 0xE100000000000000;
        v211 = 0;
        v212 = 0xE000000000000000;
        sub_1E5D5E1E0();
        v78 = sub_1E5DA93CC();

        goto LABEL_51;
      }

      v208 = v74 + 32;
      v67(v70, 1, 1, v210);
      v174(v204, 1, 1, v68);
      v123 = v194;
      sub_1E5DA82BC();
      v124 = v186;
      v85 = v172;
      sub_1E5DA84FC();
      v86 = v81;
      v87 = *(v202 + 8);
      v125 = v123;
      v89 = v124;
      v90 = v203;
      v87(v125, v203);
      if (v175(v89, 1, v76) == 1)
      {
        goto LABEL_27;
      }

      v82(v189, v89, v76);
      v126 = *(v196 + *(v195 + 36));
      v127 = sub_1E5DA83AC();
      v128 = [v126 stringFromDate_];

      v78 = sub_1E5DA915C();
      v130 = v129;

      v131 = v177;
      sub_1E5DA846C();
      v132 = v183;
      sub_1E5DA849C();
      (*(v197 + 8))(v131, v198);
      v133 = v180;
      sub_1E5DA847C();
      v134 = v133;
      (*(v199 + 8))(v132, v200);
      v135 = sub_1E5DA843C();
      v136 = *(v135 - 8);
      v137 = (*(v136 + 48))(v134, 1, v135);
      v103 = v170;
      if (v137 == 1)
      {
        sub_1E5D5EC00(v134, &qword_1ED06A9E8);
        v104 = v210;
        v105 = v206;
        v106 = v172;
LABEL_48:
        v167 = *(v205 + 8);
        v167(v189, v105);
LABEL_55:
        v167(v201, v105);
        sub_1E5D5EC00(v209, &qword_1ED06A3D0);
        v87(v171, v203);
        (*(v103 + 8))(v106, v104);
        return v78;
      }

      v157 = sub_1E5DA842C();
      v159 = v158;
      (*(v136 + 8))(v134, v135);
      if (v157 == 26984 && v159 == 0xE200000000000000)
      {

        v104 = v210;
        v105 = v206;
        v106 = v172;
      }

      else
      {
        v166 = sub_1E5DA95CC();

        v104 = v210;
        v105 = v206;
        v106 = v172;
        if ((v166 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v215 = v78;
      v216 = v130;
      v213 = 32;
      v214 = 0xE100000000000000;
      v211 = 0;
      v212 = 0xE000000000000000;
      sub_1E5D5E1E0();
      v78 = sub_1E5DA93CC();

      goto LABEL_48;
    }

    if (!v207)
    {
      goto LABEL_20;
    }

    if (v207 != 6)
    {
LABEL_31:
      (*(v74 + 8))(v81, v76);
      sub_1E5D5EC00(v209, &qword_1ED06A3D0);
      (*(v202 + 8))(v171, v203);
      (*(v170 + 8))(v172, v210);
      return 0;
    }

    v208 = v74 + 32;
    v67(v70, 1, 1, v210);
    v174(v204, 1, 1, v68);
    v83 = v194;
    sub_1E5DA82BC();
    v84 = v185;
    v85 = v172;
    sub_1E5DA84FC();
    v86 = v81;
    v87 = *(v202 + 8);
    v88 = v83;
    v89 = v84;
    v90 = v203;
    v87(v88, v203);
    if (v175(v89, 1, v76) == 1)
    {
      goto LABEL_27;
    }

    v82(v188, v89, v76);
    v91 = *(v196 + *(v195 + 36));
    v92 = sub_1E5DA83AC();
    v93 = [v91 stringFromDate_];

    v78 = sub_1E5DA915C();
    v95 = v94;

    v96 = v176;
    sub_1E5DA846C();
    v97 = v182;
    sub_1E5DA849C();
    (*(v197 + 8))(v96, v198);
    v98 = v179;
    sub_1E5DA847C();
    v99 = v98;
    (*(v199 + 8))(v97, v200);
    v100 = sub_1E5DA843C();
    v101 = *(v100 - 8);
    v102 = (*(v101 + 48))(v99, 1, v100);
    v103 = v170;
    if (v102 == 1)
    {
      sub_1E5D5EC00(v99, &qword_1ED06A9E8);
      v104 = v210;
      v105 = v206;
      v106 = v172;
LABEL_54:
      v167 = *(v205 + 8);
      v167(v188, v105);
      goto LABEL_55;
    }

    v163 = sub_1E5DA842C();
    v165 = v164;
    (*(v101 + 8))(v99, v100);
    if (v163 == 26984 && v165 == 0xE200000000000000)
    {

      v104 = v210;
      v105 = v206;
      v106 = v172;
    }

    else
    {
      v169 = sub_1E5DA95CC();

      v104 = v210;
      v105 = v206;
      v106 = v172;
      if ((v169 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    v215 = v78;
    v216 = v95;
    v213 = 32;
    v214 = 0xE100000000000000;
    v211 = 0;
    v212 = 0xE000000000000000;
    sub_1E5D5E1E0();
    v78 = sub_1E5DA93CC();

    goto LABEL_54;
  }

  v78 = 0;
  if (v207 <= 0x18 && ((1 << v207) & 0x1041041) != 0)
  {
    v79 = sub_1E5D82F88();
    v78 = sub_1E5D82FB0(v79, 0, 0);
  }

  return v78;
}

uint64_t sub_1E5D71160@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9E0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A518);
  sub_1E5DA86BC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, *a1, v8);
  sub_1E5D7207C();
  v10 = *(v5 + 56);
  sub_1E5D5CD3C(a1[1], &v7[v10], &qword_1ED06A9A0);
  sub_1E5D72144();
  v11 = *(v5 + 72);
  sub_1E5D5CD3C(a1[2], &v7[v11], &qword_1ED06A9B0);
  (*(v9 + 32))(a2, v7, v8);
  sub_1E5D68784(&v7[v10], a2 + *(v5 + 56), &qword_1ED06A9A0);
  return sub_1E5D68784(&v7[v11], a2 + *(v5 + 72), &qword_1ED06A9B0);
}

uint64_t sub_1E5D71304()
{
  v0 = sub_1E5DA875C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E5DA870C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1E5DA86FC();
  sub_1E5DA874C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A518);
  sub_1E5DA86BC();
  swift_getOpaqueTypeConformance2();
  return sub_1E5DA884C();
}

uint64_t sub_1E5D7147C(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1E5D714E4()
{
  v0 = sub_1E5DA86BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5D56F78();
  sub_1E5DA88EC();
  v9 = v6;
  v10 = v7;
  v11 = v8;
  sub_1E5DA86AC();
  v5[1] = *sub_1E5D56EA8();
  sub_1E5DA87CC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E5D71624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandHourChart();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5D71688(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E5D71694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StandHourChart();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E5D716F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for StandHourChart();
  sub_1E5D68950(10.8);
  sub_1E5DA8E8C();
  sub_1E5DA88FC();
  v4 = sub_1E5DA876C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A960) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

unint64_t sub_1E5D717D8()
{
  result = qword_1ED06A968;
  if (!qword_1ED06A968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A960);
    sub_1E5D7251C(&qword_1ED06A970, MEMORY[0x1E695B190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A968);
  }

  return result;
}

uint64_t sub_1E5D71894(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1E5D5C99C(0, v4, 0);
  v5 = v16;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v14 = v9;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v16 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1E5D5C99C((v11 > 1), v12 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 8 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_1E5D719A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A478);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for StandHourChart();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A480);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a2 + v4[7]) = a1;
  *(a2 + v4[8]) = 3600;
  v7 = v4[9];
  result = sub_1E5D6D188();
  *(a2 + v7) = result;
  return result;
}

void sub_1E5D71ACC()
{
  sub_1E5D5C6F8(319, &qword_1ED06A500, MEMORY[0x1E697F610]);
  if (v0 <= 0x3F)
  {
    sub_1E5D5C6F8(319, &qword_1ED7FF598, MEMORY[0x1E697EA58]);
    if (v1 <= 0x3F)
    {
      sub_1E5D71C20(319, &qword_1ED06A978, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1E5D71C20(319, &qword_1ED06A508, &type metadata for ChartMarkInfo, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1E5D71C70();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E5D71C20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1E5D71C70()
{
  result = qword_1ED06A980;
  if (!qword_1ED06A980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED06A980);
  }

  return result;
}

uint64_t sub_1E5D71CBC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1E5DA8A5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1E5D5CD3C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1E5DA932C();
    v17 = sub_1E5DA8B8C();
    sub_1E5DA861C();

    sub_1E5DA8A4C();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1E5D71EBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = type metadata accessor for StandHourChart();
  v7 = *(v4 + *(result + 32));
  if ((v5 * v7) >> 64 == (v5 * v7) >> 63)
  {
    *a2 = v5 * v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5D71F1C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StandHourChart() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E5D6E94C(a1, v6, a2);
}

unint64_t sub_1E5D71F9C()
{
  result = qword_1ED06A990;
  if (!qword_1ED06A990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A988);
    sub_1E5DA86BC();
    swift_getOpaqueTypeConformance2();
    sub_1E5D7207C();
    sub_1E5D72144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A990);
  }

  return result;
}

unint64_t sub_1E5D7207C()
{
  result = qword_1ED06A998;
  if (!qword_1ED06A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A9A0);
    sub_1E5DA881C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A998);
  }

  return result;
}

unint64_t sub_1E5D72144()
{
  result = qword_1ED06A9A8;
  if (!qword_1ED06A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A9B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A9B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A9C0);
    sub_1E5D5CC08(&qword_1ED06A9C8, &qword_1ED06A9C0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A9A8);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for StandHourChart();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1E5DA8AFC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E5DA897C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_1E5D71688(*(v5 + v1[6]), *(v5 + v1[6] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E5D72448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StandHourChart() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E5D6E14C(a1, v6, a2);
}

uint64_t sub_1E5D7251C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5D7257C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  sub_1E5DA8DFC();
  return v1;
}

uint64_t (*sub_1E5D72620(uint64_t *a1))()
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
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  sub_1E5DA8DFC();
  return sub_1E5D61F04;
}

uint64_t sub_1E5D726C8()
{
  type metadata accessor for FIUIActivitySummaryProvider();
  v0 = *sub_1E5D83598();
  return sub_1E5D79848(v0);
}

uint64_t sub_1E5D72700()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  sub_1E5DA8E1C();
  return v1;
}

uint64_t sub_1E5D7276C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1E5DA8DEC();
  return v3;
}

uint64_t sub_1E5D727AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  sub_1E5DA8DFC();
  return v1;
}

uint64_t (*sub_1E5D72850(uint64_t *a1))()
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
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4[6] = v6;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  sub_1E5DA8DFC();
  return sub_1E5D6894C;
}

uint64_t sub_1E5D728F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  sub_1E5DA8E1C();
  return v1;
}

uint64_t StepPushCountTodayArchivableView.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for FIUIActivitySummaryProvider();
  v2 = *sub_1E5D83598();
  sub_1E5D79848(v2);
  sub_1E5DA8DEC();
  *a1 = v4;
  a1[1] = v5;
  sub_1E5D8367C();
  type metadata accessor for FIUIWheelchairStatusProvider();

  result = sub_1E5DA8DEC();
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t StepPushCountTodayArchivableView.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for FIUIActivitySummaryProvider();
  v4 = *sub_1E5D83598();
  sub_1E5D79848(v4);
  sub_1E5DA8DEC();
  sub_1E5D8367C();
  type metadata accessor for FIUIWheelchairStatusProvider();

  sub_1E5DA8DEC();
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t StepPushCountTodayArchivableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_1E5DA8BCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v55 = *v1;
  v56 = v55;
  v7 = v1[2];
  v47 = v1[3];
  v48 = v7;
  v57 = v6;
  v58 = v7;
  v52 = v6;
  v59 = v47;
  v8 = sub_1E5D82F88();
  v9 = sub_1E5D82FB0(v8, 0, 0);

  v10 = sub_1E5D72FC4(v9);
  v12 = v11;

  v56 = v10;
  v57 = v12;
  v53 = sub_1E5D5E1E0();
  v13 = sub_1E5DA8C6C();
  v15 = v14;
  v17 = v16;
  sub_1E5DA8BAC();
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  sub_1E5DA8BFC();

  (*(v3 + 8))(v5, v2);
  v18 = sub_1E5DA8C1C();
  v49 = v19;
  v50 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v51 = v23;

  sub_1E5D67CC0(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v56 = v18;
  v57 = v20;
  LOBYTE(v18) = v22 & 1;
  LOBYTE(v58) = v22 & 1;
  v59 = v24;
  v60 = KeyPath;
  v61 = 0x3FE6666666666666;
  v63 = v55;
  v64 = v6;
  v26 = v47;
  v27 = v48;
  v65 = v48;
  v66 = v47;
  v28 = sub_1E5D82F88();
  v29 = sub_1E5D82FB0(v28, 0, 0);

  v30 = sub_1E5D72FC4(v29);
  v32 = v31;

  v63 = v27;
  v64 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  v33 = sub_1E5DA8DFC();
  (*(*v62 + 136))(v33);

  v34 = sub_1E5D82F88();
  sub_1E5D82FB0(v34, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E5DB2290;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1E5D5E0E0();
  *(v35 + 32) = v30;
  *(v35 + 40) = v32;
  v36 = sub_1E5DA912C();
  v38 = v37;

  v63 = v36;
  v64 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA10);
  sub_1E5D73848();
  v39 = v54;
  sub_1E5DA8D3C();

  sub_1E5D67CC0(v50, v49, v18);

  v40 = swift_allocObject();
  v41 = v55;
  v42 = v52;
  *(v40 + 2) = v55;
  *(v40 + 3) = v42;
  *(v40 + 4) = v27;
  *(v40 + 5) = v26;
  v43 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA30) + 36));
  *v43 = sub_1E5D73938;
  v43[1] = v40;
  v43[2] = 0;
  v43[3] = 0;
  v44 = swift_allocObject();
  v44[2] = v41;
  v44[3] = v42;
  v44[4] = v27;
  v44[5] = v26;
  v45 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA38) + 36));
  *v45 = 0;
  v45[1] = 0;
  v45[2] = sub_1E5D739C4;
  v45[3] = v44;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  return swift_retain_n();
}

uint64_t sub_1E5D72FC4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5E0);
  v2 = sub_1E5DA8DFC();
  v3 = (*(*v18 + 136))(v2);

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
    v4 = sub_1E5DA8DFC();
    v5 = (*(*v18 + 152))(v4);

    if (v5)
    {
      v6 = &selRef__pushCount;
      goto LABEL_6;
    }

LABEL_12:

    return a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  v7 = sub_1E5DA8DFC();
  v5 = (*(*v18 + 152))(v7);

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = &selRef_stepCount;
LABEL_6:
  v8 = [v5 *v6];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 countUnit];
  [v10 doubleValueForUnit_];
  v13 = v12;

  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  if (qword_1ED06B270 != -1)
  {
    swift_once();
  }

  v15 = [qword_1ED06B278 stringFromNumber_];
  if (!v15)
  {
    v15 = [v14 description];
  }

  v16 = v15;
  a1 = sub_1E5DA915C();

  return a1;
}

uint64_t sub_1E5D73270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1E5DA929C();
  v5[7] = sub_1E5DA928C();
  v7 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D73308, v7, v6);
}

uint64_t sub_1E5D73308()
{
  v1 = v0[6];
  v2 = v0[5];

  v0[2] = v2;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  sub_1E5DA8DFC();
  v3 = v0[4];
  v4 = sub_1E5D69BD8();
  (*(*v3 + 240))(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5D733D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_1E5DA92BC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5DA929C();

  v15 = sub_1E5DA928C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  sub_1E5D57DE8(0, 0, v13, a6, v16);
}

uint64_t sub_1E5D73520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1E5DA929C();
  v5[7] = sub_1E5DA928C();
  v7 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D735B8, v7, v6);
}

uint64_t sub_1E5D735B8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  v3 = sub_1E5DA8DFC();
  (*(**(v0 + 32) + 248))(v3);

  v4 = *(v0 + 8);

  return v4();
}

id sub_1E5D7367C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  result = [v0 setNumberStyle_];
  qword_1ED06B278 = v0;
  return result;
}

uint64_t sub_1E5D736CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5D73D54();

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_1E5D73730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5D73D54();

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

uint64_t sub_1E5D737F4@<X0>(void *a1@<X8>)
{
  result = sub_1E5DA89EC();
  *a1 = v3;
  return result;
}

unint64_t sub_1E5D73848()
{
  result = qword_1ED06AA18;
  if (!qword_1ED06AA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06AA10);
    sub_1E5D738D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AA18);
  }

  return result;
}

unint64_t sub_1E5D738D4()
{
  result = qword_1ED06AA20;
  if (!qword_1ED06AA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06AA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AA20);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1E5D73A20()
{
  result = qword_1ED7FF690;
  if (!qword_1ED7FF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF690);
  }

  return result;
}

unint64_t sub_1E5D73A78()
{
  result = qword_1ED7FF698;
  if (!qword_1ED7FF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF698);
  }

  return result;
}

unint64_t sub_1E5D73AD0()
{
  result = qword_1ED7FF6A0;
  if (!qword_1ED7FF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF6A0);
  }

  return result;
}

uint64_t sub_1E5D73B24(uint64_t *a1, int a2)
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

uint64_t sub_1E5D73B6C(uint64_t result, int a2, int a3)
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

uint64_t sub_1E5D73BEC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1E5D73C70()
{
  result = qword_1ED06AA50;
  if (!qword_1ED06AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06AA58);
    sub_1E5D73848();
    sub_1E5D73CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AA50);
  }

  return result;
}

unint64_t sub_1E5D73CFC()
{
  result = qword_1ED06A7C8;
  if (!qword_1ED06A7C8)
  {
    sub_1E5DA8B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A7C8);
  }

  return result;
}

unint64_t sub_1E5D73D54()
{
  result = qword_1ED7FF6A8;
  if (!qword_1ED7FF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF6A8);
  }

  return result;
}

uint64_t sub_1E5D73DA8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5D594BC;

  return sub_1E5D73520(v4, v5, v6, v2, v3);
}

uint64_t sub_1E5D73E40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5D594BC;

  return sub_1E5D58AE0(a1, v4);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1E5D73F50()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5D597F0;

  return sub_1E5D73270(v4, v5, v6, v2, v3);
}

id UICollectionViewFlowLayout.scrollDirection(_:)(uint64_t a1)
{
  [v1 setScrollDirection_];

  return v3;
}

void *sub_1E5D74030()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  v1 = v0[2];
  v2 = v1;
  return v1;
}

uint64_t sub_1E5D7409C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

void sub_1E5D740E8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E5D74118(v1);
}

void sub_1E5D74118(void *a1)
{
  v3 = v1[2];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 312))(v9, sub_1E5D74290);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1E5D56E18(0, &qword_1ED06AA60);
  v4 = v3;
  v5 = a1;
  v6 = sub_1E5DA939C();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[2];
LABEL_8:
  v1[2] = a1;
}

void sub_1E5D74290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1E5D742CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_uuid;
  v4 = sub_1E5DA841C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *sub_1E5D7434C()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  v1 = *(v0 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery);
  v2 = v1;
  return v1;
}

id sub_1E5D743C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 304))();

  v4 = *(v3 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery);
  *a2 = v4;

  return v4;
}

void sub_1E5D74450(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E5D74480(v1);
}

void sub_1E5D74480(void *a1)
{
  v3 = OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery;
  v4 = *(v1 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 312))(v10, sub_1E5D77484);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1E5D56E18(0, &qword_1ED06AA78);
  v5 = v4;
  v6 = a1;
  v7 = sub_1E5DA939C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

uint64_t sub_1E5D7460C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A9F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1E5DA82CC();
  __swift_allocate_value_buffer(v6, qword_1ED06B298);
  __swift_project_value_buffer(v6, qword_1ED06B298);
  v7 = sub_1E5DA854C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1E5DA855C();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return sub_1E5DA82BC();
}

uint64_t sub_1E5D74808(void *a1)
{
  v2 = swift_allocObject();
  sub_1E5D74848(a1);
  return v2;
}

uint64_t *sub_1E5D74848(void *a1)
{
  v2 = v1;
  v34 = *v2;
  v4 = sub_1E5DA841C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1E5DA864C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2[2] = 0;
  sub_1E5DA840C();
  *(v2 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery) = 0;
  *(v2 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__queryTask) = 0;
  sub_1E5DA85AC();
  *(v2 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_healthStore) = a1;
  v12 = a1;
  v13 = sub_1E5D805C0();
  (*(v9 + 16))(v11, v13, v8);

  v14 = sub_1E5DA862C();
  v15 = sub_1E5DA933C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v12;
    v17 = v4;
    v18 = v16;
    v32 = swift_slowAlloc();
    v35 = v32;
    *v18 = 136315394;
    v19 = sub_1E5DA96DC();
    v31 = v15;
    v21 = sub_1E5D67320(v19, v20, &v35);
    v34 = v8;
    v22 = v21;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = v7;
    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_uuid, v17);
    sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
    v24 = sub_1E5DA95AC();
    v26 = v25;
    (*(v5 + 8))(v23, v17);
    v27 = sub_1E5D67320(v24, v26, &v35);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1E5D0F000, v14, v31, "%s id=%s init", v18, 0x16u);
    v28 = v32;
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v28, -1, -1);
    MEMORY[0x1E693E930](v18, -1, -1);

    (*(v9 + 8))(v11, v34);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return v2;
}

id *sub_1E5D74C18()
{
  v1 = v0;
  v2 = sub_1E5DA864C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5D805C0();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1E5DA862C();
  v8 = sub_1E5DA933C();

  v9 = &unk_1ED800000;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315394;
    v12 = sub_1E5DA96DC();
    v14 = sub_1E5D67320(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_1E5DA841C();
    sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
    v15 = sub_1E5DA95AC();
    v17 = sub_1E5D67320(v15, v16, &v26);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_1E5D0F000, v7, v8, "%s id=%s deinit", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v11, -1, -1);
    v18 = v10;
    v9 = &unk_1ED800000;
    MEMORY[0x1E693E930](v18, -1, -1);
  }

  v19 = (*(v3 + 8))(v5, v2);
  (*(*v0 + 37))(v19);

  v20 = v9[70];
  v21 = sub_1E5DA841C();
  (*(*(v21 - 8) + 8))(v1 + v20, v21);

  v22 = OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider___observationRegistrar;
  v23 = sub_1E5DA85BC();
  (*(*(v23 - 8) + 8))(v1 + v22, v23);
  return v1;
}

uint64_t sub_1E5D74F94()
{
  sub_1E5D74C18();

  return swift_deallocClassInstance();
}

void sub_1E5D74FEC(uint64_t a1)
{
  v2 = v1;
  v53 = a1;
  v3 = *v1;
  v4 = sub_1E5DA864C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - v8;
  v10 = sub_1E5D805C0();
  v50 = *(v5 + 16);
  v51 = v10;
  v50(v9);

  v11 = sub_1E5DA862C();
  v12 = sub_1E5DA933C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v52 = v5;
    v15 = v14;
    aBlock[0] = v14;
    *v13 = 136315394;
    v16 = sub_1E5DA96DC();
    v18 = sub_1E5D67320(v16, v17, aBlock);
    v49 = v4;
    v19 = v3;
    v20 = v18;

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    sub_1E5DA841C();
    sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
    v21 = sub_1E5DA95AC();
    v23 = sub_1E5D67320(v21, v22, aBlock);

    *(v13 + 14) = v23;
    v3 = v19;
    v4 = v49;
    _os_log_impl(&dword_1E5D0F000, v11, v12, "%s id=%s startStatisticsQueryIfNeeded", v13, 0x16u);
    swift_arrayDestroy();
    v24 = v15;
    v5 = v52;
    MEMORY[0x1E693E930](v24, -1, -1);
    MEMORY[0x1E693E930](v13, -1, -1);
  }

  v25 = *(v5 + 8);
  v25(v9, v4);
  swift_getKeyPath();
  (*(*v1 + 304))();

  if (!*(v1 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery))
  {
    v26 = v54;
    (v50)(v54, v51, v4);

    v27 = sub_1E5DA862C();
    v28 = sub_1E5DA933C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v5;
      v31 = v30;
      aBlock[0] = v30;
      *v29 = 136315394;
      v32 = v3;
      v33 = sub_1E5DA96DC();
      v35 = sub_1E5D67320(v33, v34, aBlock);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      sub_1E5DA841C();
      sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
      v36 = sub_1E5DA95AC();
      v38 = sub_1E5D67320(v36, v37, aBlock);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_1E5D0F000, v27, v28, "%s id=%s Starting activity statistics cache query", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E693E930](v31, -1, -1);
      MEMORY[0x1E693E930](v29, -1, -1);

      v39 = v54;
    }

    else
    {
      v32 = v3;

      v39 = v26;
    }

    v25(v39, v4);
    if (qword_1ED06B290 != -1)
    {
      swift_once();
    }

    v40 = sub_1E5DA82CC();
    __swift_project_value_buffer(v40, qword_1ED06B298);
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v43 = v53;
    v42[2] = v41;
    v42[3] = v43;
    v42[4] = v32;
    v44 = objc_allocWithZone(MEMORY[0x1E696C088]);

    v45 = sub_1E5DA827C();
    aBlock[4] = sub_1E5D7704C;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5D6B144;
    aBlock[3] = &block_descriptor_1;
    v46 = _Block_copy(aBlock);
    v47 = [v44 initWithStatisticsIntervalComponents:v45 updateHandler:v46];
    _Block_release(v46);

    v48 = v47;
    sub_1E5D74480(v47);
    [*(v2 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_healthStore) executeQuery_];
  }
}

uint64_t sub_1E5D75654(void *a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v49 = a4;
  v50 = a5;
  v7 = sub_1E5DA841C();
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1E5DA864C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v44[-v15];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    if (a2)
    {
      v19 = sub_1E5D805C0();
      (*(v11 + 16))(v13, v19, v10);

      v20 = a2;
      v21 = sub_1E5DA862C();
      v22 = sub_1E5DA931C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v47 = v11;
        v24 = v23;
        v46 = swift_slowAlloc();
        v51 = v46;
        *v24 = 136315650;
        v25 = sub_1E5DA96DC();
        v50 = v21;
        v27 = sub_1E5D67320(v25, v26, &v51);
        v45 = v22;
        v28 = v27;

        *(v24 + 4) = v28;
        *(v24 + 12) = 2080;
        v29 = v48;
        (*(v48 + 16))(v9, v18 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_uuid, v7);
        sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
        v30 = sub_1E5DA95AC();
        v32 = v31;
        (*(v29 + 8))(v9, v7);
        v33 = sub_1E5D67320(v30, v32, &v51);

        *(v24 + 14) = v33;
        *(v24 + 22) = 2080;
        swift_getErrorValue();
        v34 = sub_1E5DA963C();
        v36 = sub_1E5D67320(v34, v35, &v51);

        *(v24 + 24) = v36;
        v37 = v50;
        _os_log_impl(&dword_1E5D0F000, v50, v45, "%s id=%s Error from current activity statistics cache query: %s", v24, 0x20u);
        v38 = v46;
        swift_arrayDestroy();
        MEMORY[0x1E693E930](v38, -1, -1);
        MEMORY[0x1E693E930](v24, -1, -1);

        (*(v47 + 8))(v13, v10);
      }

      else
      {

        (*(v11 + 8))(v13, v10);
      }

      sub_1E5D75F5C(v49);
    }

    else
    {
      v39 = sub_1E5DA92BC();
      (*(*(v39 - 8) + 56))(v16, 1, 1, v39);
      sub_1E5DA929C();
      v40 = a1;

      v41 = sub_1E5DA928C();
      v42 = swift_allocObject();
      v43 = MEMORY[0x1E69E85E0];
      v42[2] = v41;
      v42[3] = v43;
      v42[4] = a1;
      v42[5] = v18;
      v42[6] = v50;
      sub_1E5D57DE8(0, 0, v16, &unk_1E5DB3070, v42);
    }
  }

  return result;
}

uint64_t sub_1E5D75B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E5DA864C();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  sub_1E5DA929C();
  v6[8] = sub_1E5DA928C();
  v9 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D75C4C, v9, v8);
}

uint64_t sub_1E5D75C4C()
{
  v34 = v0;
  v1 = *(v0 + 16);

  if (v1 && (v2 = [*(v0 + 16) currentActivityCache]) != 0)
  {
    v3 = v2;
    v4 = sub_1E5D7C95C();
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = sub_1E5D805C0();
  (*(v6 + 16))(v5, v8, v7);
  v9 = v4;

  v10 = sub_1E5DA862C();
  v11 = sub_1E5DA933C();

  v12 = os_log_type_enabled(v10, v11);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 40);
  if (v12)
  {
    v32 = *(v0 + 56);
    v16 = swift_slowAlloc();
    v31 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v16 = 136315650;
    v19 = sub_1E5DA96DC();
    v30 = v4;
    v21 = sub_1E5D67320(v19, v20, &v33);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    sub_1E5DA841C();
    sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
    v22 = sub_1E5DA95AC();
    v24 = sub_1E5D67320(v22, v23, &v33);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v9;
    *v17 = v30;
    v25 = v9;
    _os_log_impl(&dword_1E5D0F000, v10, v11, "%s id=%s Received graph samples from current activity statistics cache query: %@", v16, 0x20u);
    sub_1E5D5EC00(v17, &unk_1ED06A880);
    MEMORY[0x1E693E930](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v18, -1, -1);
    MEMORY[0x1E693E930](v16, -1, -1);

    (*(v14 + 8))(v32, v31);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v26 = *(v0 + 16);
  v27 = v26;
  sub_1E5D74118(v26);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1E5D75F5C(uint64_t a1)
{
  v44 = a1;
  v2 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v38 - v4;
  v5 = sub_1E5DA94CC();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v38 - v9;
  v10 = sub_1E5DA864C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E5D805C0();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_1E5DA862C();
  v16 = sub_1E5DA933C();

  v17 = os_log_type_enabled(v15, v16);
  v40 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v39 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v47 = v20;
    *v19 = 136315394;
    v21 = sub_1E5DA96DC();
    v23 = sub_1E5D67320(v21, v22, &v47);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    sub_1E5DA841C();
    sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
    v24 = sub_1E5DA95AC();
    v26 = sub_1E5D67320(v24, v25, &v47);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_1E5D0F000, v15, v16, "%s id=%s retryStatisticsQuery", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v20, -1, -1);
    MEMORY[0x1E693E930](v19, -1, -1);

    v27 = (*(v11 + 8))(v13, v39);
  }

  else
  {

    v27 = (*(v11 + 8))(v13, v10);
  }

  (*(*v1 + 296))(v27);
  sub_1E5DA94AC();
  v38 = v1;
  v29 = v44;
  v28 = v45;
  sub_1E5DA94BC();
  v30 = v42;
  v31 = v43;
  v39 = *(v42 + 8);
  v39(v8, v43);
  v32 = sub_1E5DA92BC();
  (*(*(v32 - 8) + 56))(v46, 1, 1, v32);
  (*(v30 + 16))(v8, v28, v31);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = (v41 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  (*(v30 + 32))(v36 + v33, v8, v31);
  *(v36 + v34) = v29;
  *(v36 + v35) = v38;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;

  sub_1E5D57DE8(0, 0, v46, &unk_1E5DB3048, v36);

  return (v39)(v45, v31);
}

uint64_t sub_1E5D764BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_1E5DA864C();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  v9 = sub_1E5DA94DC();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5D765DC, 0, 0);
}

uint64_t sub_1E5D765DC()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_1E5DA962C();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  v2 = sub_1E5D7732C(&qword_1ED06AA70, MEMORY[0x1E69E8820]);
  *v1 = v0;
  v1[1] = sub_1E5D766D4;
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 40);

  return MEMORY[0x1EEE6DA68](v5, v0 + 16, v3, v4, v2);
}

uint64_t sub_1E5D766D4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[13];
    v3 = v2[14];
    v5 = v2[12];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
  }

  return MEMORY[0x1EEE6DFA0](sub_1E5D7682C, 0, 0);
}

void sub_1E5D7682C()
{
  v25 = v0;
  v1 = *(v0 + 48);
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = sub_1E5D805C0();
    (*(v3 + 16))(v4, v6, v5);

    v7 = sub_1E5DA862C();
    v8 = sub_1E5DA933C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = *(v0 + 72);
    if (v9)
    {
      v23 = *(v0 + 88);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315650;
      v15 = sub_1E5DA96DC();
      v17 = v2;
      v18 = sub_1E5D67320(v15, v16, &v24);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      sub_1E5DA841C();
      sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
      v19 = sub_1E5DA95AC();
      v21 = sub_1E5D67320(v19, v20, &v24);

      *(v13 + 14) = v21;
      v2 = v17;
      *(v13 + 22) = 2048;
      *(v13 + 24) = v17;
      _os_log_impl(&dword_1E5D0F000, v7, v8, "%s id=%s Restarting activity statistics cache query. Retry attempt: %ld", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E693E930](v14, -1, -1);
      MEMORY[0x1E693E930](v13, -1, -1);

      (*(v10 + 8))(v23, v12);
    }

    else
    {

      (*(v10 + 8))(v11, v12);
    }

    (*(**(v0 + 56) + 280))(v2);

    v22 = *(v0 + 8);

    v22();
  }
}

id sub_1E5D76AE4()
{
  v1 = v0;
  v2 = sub_1E5DA864C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5D805C0();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_1E5DA862C();
  v8 = sub_1E5DA933C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315394;
    v11 = sub_1E5DA96DC();
    v13 = sub_1E5D67320(v11, v12, v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_1E5DA841C();
    sub_1E5D7732C(&qword_1ED06A780, MEMORY[0x1E69695A8]);
    v14 = sub_1E5DA95AC();
    v16 = sub_1E5D67320(v14, v15, v21);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1E5D0F000, v7, v8, "%s id=%s stopStatisticsQuery", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v10, -1, -1);
    MEMORY[0x1E693E930](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath();
  (*(*v0 + 304))();

  v18 = OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery;
  if (*(v1 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery) && (result = [*(v1 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider_healthStore) stopQuery_], *(v1 + v18)))
  {
    KeyPath = swift_getKeyPath();
    v20 = MEMORY[0x1EEE9AC00](KeyPath);
    v21[-2] = v1;
    v21[-1] = 0;
    (*(*v1 + 312))(v20, sub_1E5D7707C);
  }

  else
  {
    *(v1 + v18) = 0;
  }

  return result;
}

uint64_t sub_1E5D76FD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FIUIActivityStatisticsProvider();
  result = sub_1E5DA888C();
  *a1 = result;
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1E5D7707C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery);
  *(v1 + OBJC_IVAR____TtC9FitnessUI30FIUIActivityStatisticsProvider__statisticsQuery) = v2;
  v4 = v2;
}

uint64_t type metadata accessor for FIUIActivityStatisticsProvider()
{
  result = qword_1ED7FFF80;
  if (!qword_1ED7FFF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5D7711C()
{
  result = sub_1E5DA841C();
  if (v1 <= 0x3F)
  {
    result = sub_1E5DA85BC();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E5D77204()
{
  v2 = *(sub_1E5DA94CC() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1E5D594BC;

  return sub_1E5D764BC(v9, v10, v11, v0 + v3, v6, v7, v8);
}

uint64_t sub_1E5D7732C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5D77374()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5D597F0;

  return sub_1E5D75B54(v5, v6, v7, v2, v3, v4);
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

uint64_t sub_1E5D7749C()
{
  type metadata accessor for FIUIActivitySummaryProvider();
  sub_1E5DA8DEC();
  return v1;
}

void (*sub_1E5D774D8(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  sub_1E5DA8DFC();
  return sub_1E5D6217C;
}

uint64_t sub_1E5D775B0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  updated = type metadata accessor for FIUIUnitPreferenceUpdateObserver();
  v6 = sub_1E5D78E60(&qword_1ED7FF5A8, type metadata accessor for FIUIUnitPreferenceUpdateObserver);

  return a1(v2, v3, v4, updated, v6);
}

void sub_1E5D77654()
{
  v0 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore_];
  v1 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager_];

  if (!v1)
  {
    __break(1u);
  }
}

void WalkingRunningDistanceTodayArchivableView.init()(uint64_t a1@<X8>)
{
  type metadata accessor for FIUIActivitySummaryProvider();
  v2 = sub_1E5D83598();
  sub_1E5D79848(*v2);
  sub_1E5DA8DEC();
  v3 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore_];
  v4 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager_];

  if (v4)
  {
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = sub_1E5D622F8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = v4;
  }

  else
  {
    __break(1u);
  }
}

void WalkingRunningDistanceTodayArchivableView.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FIUIActivitySummaryProvider();
  v4 = sub_1E5D83598();
  sub_1E5D79848(*v4);
  sub_1E5DA8DEC();
  v5 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore_];
  v6 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager_];

  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = sub_1E5D622F8;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t WalkingRunningDistanceTodayArchivableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1E5DA8BCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5DA82EC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v1[1];
  v55 = *v1;
  v56 = v8;
  v57 = v1[2];
  sub_1E5D77E14(v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1E5DA8C5C();
  v11 = v10;
  v13 = v12;
  sub_1E5DA8BAC();
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  sub_1E5DA8BFC();

  (*(v3 + 8))(v5, v2);
  v14 = sub_1E5DA8C1C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_1E5D67CC0(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v50[0] = v14;
  v50[1] = v16;
  v51 = v18 & 1;
  v48[1] = v20;
  v52 = v20;
  v53 = KeyPath;
  v54 = 0x3FE6666666666666;
  v22 = *(&v57 + 1);
  v59 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  v23 = sub_1E5DA8DFC();
  v24 = (*(*v58 + 152))(v23);

  if (v24)
  {
    v25 = [v24 distanceWalkingRunning];

    v26 = [objc_opt_self() meterUnit];
    [v25 doubleValueForUnit_];
    v28 = v27;

    v29 = [v22 localizedNaturalScaleStringWithDistanceInMeters:1 distanceType:3 unitStyle:0 usedUnit:v28];
    if (!v29)
    {
      *&v59 = 0;
      *(&v59 + 1) = 0xE000000000000000;
      sub_1E5DA92EC();
      v34 = *(&v59 + 1);
      v33 = v59;
      goto LABEL_7;
    }

    v30 = v29;
    v31 = sub_1E5DA915C();
  }

  else
  {
    v30 = sub_1E5D82F88();
    v31 = sub_1E5D82FB0(v30, 0, 0);
  }

  v33 = v31;
  v34 = v32;

LABEL_7:
  v35 = sub_1E5D82F88();
  sub_1E5D82FB0(v35, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1E5DB2290;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1E5D5E0E0();
  *(v36 + 32) = v33;
  *(v36 + 40) = v34;
  v37 = sub_1E5DA912C();
  v39 = v38;

  *&v59 = v37;
  *(&v59 + 1) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA10);
  sub_1E5D73848();
  sub_1E5D5E1E0();
  v40 = v49;
  sub_1E5DA8D3C();

  sub_1E5D67CC0(v14, v16, v18 & 1);

  v41 = swift_allocObject();
  v42 = v56;
  *(v41 + 1) = v55;
  *(v41 + 2) = v42;
  *(v41 + 3) = v57;
  v43 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA30) + 36));
  *v43 = sub_1E5D78B7C;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
  v44 = swift_allocObject();
  v45 = v56;
  v44[1] = v55;
  v44[2] = v45;
  v44[3] = v57;
  v46 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA38) + 36));
  *v46 = 0;
  v46[1] = 0;
  v46[2] = sub_1E5D78C08;
  v46[3] = v44;
  sub_1E5D78C40(&v55, v50);
  return sub_1E5D78C40(&v55, v50);
}

id sub_1E5D77E14@<X0>(uint64_t a1@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5B0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A560);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A568);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A570);
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v14 = &v57 - v13;
  v15 = sub_1E5DA833C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1E5DA82EC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1[1];
  v20 = v1[5];
  v69 = *v1;
  v70 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  v21 = sub_1E5DA8DFC();
  v22 = (*(*v68 + 152))(v21);

  if (v22)
  {
    v58 = v6;
    v59 = v8;
    v23 = [v22 distanceWalkingRunning];

    v24 = [objc_opt_self() meterUnit];
    [v23 doubleValueForUnit_];
    v26 = v25;

    v68 = 1;
    v27 = [v20 localizedNaturalScaleStringWithDistanceInMeters:1 distanceType:0 unitStyle:&v68 usedUnit:v26];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1E5DA915C();
      v31 = v30;
    }

    else
    {
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_1E5DA92EC();
      v29 = v69;
      v31 = v70;
    }

    v60 = v17;
    v61 = a1;
    v62 = v16;
    result = [v20 localizedShortUnitStringForDistanceUnit_];
    if (result)
    {
      v34 = result;
      v35 = sub_1E5DA915C();
      v37 = v36;

      v69 = v35;
      v70 = v37;
      sub_1E5D5E1E0();
      v38 = MEMORY[0x1E69E6158];
      v39 = sub_1E5DA93BC();
      v41 = v40;

      v42 = sub_1E5D82F88();
      sub_1E5D82FB0(v42, 0, 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1E5DB2490;
      *(v43 + 56) = v38;
      v44 = sub_1E5D5E0E0();
      *(v43 + 32) = v29;
      *(v43 + 40) = v31;
      *(v43 + 96) = v38;
      *(v43 + 104) = v44;
      *(v43 + 64) = v44;
      *(v43 + 72) = v39;
      *(v43 + 80) = v41;

      sub_1E5DA916C();

      sub_1E5DA832C();
      v45 = v67;
      sub_1E5DA82FC();
      v69 = v39;
      v70 = v41;
      v46 = sub_1E5DA84AC();
      v47 = v64;
      (*(*(v46 - 8) + 56))(v64, 1, 1, v46);
      sub_1E5D78E60(&qword_1ED06A590, MEMORY[0x1E6968848]);
      v48 = v65;
      v49 = v62;
      v50 = v45;
      sub_1E5DA835C();
      sub_1E5D5EC00(v47, &qword_1ED06A560);

      if ((*(v63 + 48))(v48, 1, v66) == 1)
      {
        v51 = &qword_1ED06A568;
        v52 = v48;
      }

      else
      {
        v53 = v57;
        sub_1E5D5E234(v48, v57);
        v54 = v59;
        sub_1E5DA8C2C();
        v55 = sub_1E5DA8C3C();
        (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
        sub_1E5D5CC08(&qword_1ED06A5A8, &qword_1ED06A570);
        v56 = sub_1E5DA831C();
        sub_1E5D5CD3C(v54, v58, &qword_1ED06A5B0);
        sub_1E5D5EBAC();
        v49 = v62;
        sub_1E5DA834C();
        v50 = v67;
        sub_1E5D5EC00(v54, &qword_1ED06A5B0);
        v56(&v69, 0);
        v52 = v53;
        v51 = &qword_1ED06A570;
      }

      sub_1E5D5EC00(v52, v51);
      return (*(v60 + 32))(v61, v50, v49);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v32 = sub_1E5D82F88();
    sub_1E5D82FB0(v32, 0, 0);

    sub_1E5DA832C();
    return sub_1E5DA82FC();
  }

  return result;
}

uint64_t sub_1E5D78620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1E5DA929C();
  *(v4 + 48) = sub_1E5DA928C();
  v6 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D786B8, v6, v5);
}

uint64_t sub_1E5D786B8()
{
  v1 = *(v0 + 40);

  *(v0 + 16) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  sub_1E5DA8DFC();
  v2 = *(v0 + 32);
  v3 = sub_1E5D69BD8();
  (*(*v2 + 240))(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E5D78774(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-v6];
  v8 = sub_1E5DA92BC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1E5DA929C();
  sub_1E5D78C40(a1, v14);
  v9 = sub_1E5DA928C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  v12 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  *(v10 + 64) = a1[2];
  sub_1E5D57DE8(0, 0, v7, a3, v10);
}

uint64_t sub_1E5D788A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1E5DA929C();
  *(v4 + 48) = sub_1E5DA928C();
  v6 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D78940, v6, v5);
}

uint64_t sub_1E5D78940()
{
  v1 = *(v0 + 40);

  *(v0 + 16) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AA08);
  v2 = sub_1E5DA8DFC();
  (*(**(v0 + 32) + 248))(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E5D789F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5D78EA8();

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_1E5D78A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5D78EA8();

  return MEMORY[0x1EEDDA030](a1, a2, a3, v6);
}

double sub_1E5D78B08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WalkingRunningDistanceTodayArchivableView.init()(&v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  *a2 = v8;
  result = *&v9;
  *(a2 + 8) = v9;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  return result;
}

uint64_t objectdestroyTm_2()
{

  sub_1E5D6449C();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_1E5D78C98()
{
  result = qword_1ED7FF850;
  if (!qword_1ED7FF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF850);
  }

  return result;
}

unint64_t sub_1E5D78CF0()
{
  result = qword_1ED7FF858;
  if (!qword_1ED7FF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF858);
  }

  return result;
}

unint64_t sub_1E5D78D48()
{
  result = qword_1ED7FF860;
  if (!qword_1ED7FF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF860);
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

uint64_t sub_1E5D78DBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E5D78E04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5D78E60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5D78EA8()
{
  result = qword_1ED7FF868;
  if (!qword_1ED7FF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7FF868);
  }

  return result;
}

uint64_t sub_1E5D78EFC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5D594BC;

  return sub_1E5D788A8(v2, v3, v4, v0 + 32);
}

uint64_t objectdestroy_6Tm_0()
{
  swift_unknownObjectRelease();

  sub_1E5D6449C();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1E5D78FE8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5D597F0;

  return sub_1E5D78620(v2, v3, v4, v0 + 32);
}

void *sub_1E5D79078()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  swift_beginAccess();
  v1 = v0[2];
  v2 = v1;
  return v1;
}

uint64_t sub_1E5D79100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1E5D7914C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);
  v4 = *a1;
  return v3(v2);
}

void sub_1E5D791A4(void *a1)
{
  swift_beginAccess();
  v3 = v1[2];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 280))(v9, sub_1E5D79310);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1E5D56E18(0, &qword_1ED06AA80);
  v4 = v3;
  v5 = a1;
  v6 = sub_1E5DA939C();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[2];
LABEL_8:
  v1[2] = a1;
}

void sub_1E5D79310()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
}

void (*sub_1E5D7936C(uint64_t *a1))(void *a1)
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
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v4[5] = OBJC_IVAR____TtC9FitnessUI27FIUIActivitySummaryProvider___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1E5D7BCF8(&qword_1ED06AA88, type metadata accessor for FIUIActivitySummaryProvider);
  sub_1E5DA859C();

  v4[7] = sub_1E5D57728();
  return sub_1E5D794BC;
}

void sub_1E5D794BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E5DA858C();

  free(v1);
}

uint64_t type metadata accessor for FIUIActivitySummaryProvider()
{
  result = qword_1ED06B470;
  if (!qword_1ED06B470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E5D795AC()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  v1 = v0[5];
  v2 = v1;
  return v1;
}

id sub_1E5D79618@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 272))();

  v4 = v3[5];
  *a2 = v4;

  return v4;
}

void sub_1E5D796A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E5D796D0(v1);
}

void sub_1E5D796D0(void *a1)
{
  v3 = v1[5];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 280))(v9, sub_1E5D7BFAC);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1E5D56E18(0, &qword_1ED06AAA0);
  v4 = v3;
  v5 = a1;
  v6 = sub_1E5DA939C();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[5];
LABEL_8:
  v1[5] = a1;
}

uint64_t sub_1E5D79848(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5DB32E0;
  *(v2 + 32) = xmmword_1E5DB32F0;
  sub_1E5DA85AC();
  *(v2 + 48) = a1;
  return v2;
}

uint64_t sub_1E5D798A8(uint64_t a1)
{
  *(v1 + 16) = xmmword_1E5DB32E0;
  *(v1 + 32) = xmmword_1E5DB32F0;
  sub_1E5DA85AC();
  *(v1 + 48) = a1;
  return v1;
}

void sub_1E5D798F4(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E5DA864C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 152);
  v11 = (v10)(v7);
  if (v11)
  {
  }

  else if (a1)
  {
    v13 = 1;
    goto LABEL_8;
  }

  v12 = v10();
  if (v12)
  {

    v13 = a1 == 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_8:
  v14 = v10();
  if (v14)
  {
    v15 = v14;
    if (a1)
    {
      v16 = a1;
      v17 = [v15 _allFieldsAreEqual_];

      if (!v13 && (v17 & 1) != 0)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  if (!v13)
  {
    return;
  }

  v16 = a1;
LABEL_15:
  v18 = sub_1E5D805C0();
  (*(v6 + 16))(v9, v18, v5);
  v19 = v16;
  v20 = sub_1E5DA862C();
  v21 = sub_1E5DA933C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v22 = 136315394;
    v23 = sub_1E5DA96DC();
    v25 = sub_1E5D67320(v23, v24, &v36);
    v35 = v5;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v19;
    v27 = v33;
    *v33 = a1;
    v28 = v19;
    _os_log_impl(&dword_1E5D0F000, v20, v21, "%s received activity summary %@", v22, 0x16u);
    sub_1E5D5EC00(v27, &unk_1ED06A880);
    MEMORY[0x1E693E930](v27, -1, -1);
    v29 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1E693E930](v29, -1, -1);
    MEMORY[0x1E693E930](v22, -1, -1);

    (*(v6 + 8))(v9, v35);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v30 = v19;
  v31 = *(*v2 + 160);
  v32 = v30;
  v31(a1);
}

void sub_1E5D79C40(uint64_t a1)
{
  v3 = *v1;
  swift_getKeyPath();
  (*(*v1 + 272))();

  if (v1[5])
  {
    return;
  }

  v4 = swift_allocObject();
  v41 = v1;
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v3;
  v6 = objc_allocWithZone(MEMORY[0x1E696C610]);
  aBlock[4] = sub_1E5D7A43C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5D6B144;
  aBlock[3] = &block_descriptor_2;
  v7 = _Block_copy(aBlock);

  v40 = [v6 initWithUpdateHandler_];
  _Block_release(v7);

  sub_1E5D56E18(0, &qword_1ED06A3F8);
  v8 = sub_1E5DA937C();
  v10 = *MEMORY[0x1E696BD68];
  v43 = *MEMORY[0x1E696BDC8];
  v9 = v43;
  v44 = v10;
  v45 = *MEMORY[0x1E696BCF8];
  v11 = v45;
  v12 = objc_opt_self();
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = MEMORY[0x1E69E7CC8];
  v17 = 4;
  while (1)
  {
    v18 = aBlock[v17 + 6];
    v19 = [v12 quantityTypeForIdentifier_];
    if (!v19)
    {

      goto LABEL_4;
    }

    v20 = v19;
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 >= 0)
      {
        v16 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v21 = v8;
      v22 = sub_1E5DA94FC();
      if (__OFADD__(v22, 1))
      {
        goto LABEL_25;
      }

      v16 = sub_1E5D7B468(v16, v22 + 1);
    }

    else
    {
      v23 = v8;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v16;
    v25 = sub_1E5D7B6B4(v20);
    v27 = *(v16 + 16);
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (*(v16 + 24) >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v25;
        sub_1E5D7BA34();
        v25 = v35;
        v16 = aBlock[0];
        if (v31)
        {
LABEL_18:
          v33 = *(v16 + 56);
          v34 = *(v33 + 8 * v25);
          *(v33 + 8 * v25) = v8;

          goto LABEL_4;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_1E5D7B6F8(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1E5D7B6B4(v20);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }
    }

    v16 = aBlock[0];
    if (v31)
    {
      goto LABEL_18;
    }

LABEL_20:
    *(v16 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    *(*(v16 + 48) + 8 * v25) = v20;
    *(*(v16 + 56) + 8 * v25) = v8;

    v36 = *(v16 + 16);
    v29 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v29)
    {
      goto LABEL_26;
    }

    *(v16 + 16) = v37;
LABEL_4:
    if (++v17 == 7)
    {

      type metadata accessor for HKQuantityTypeIdentifier();
      swift_arrayDestroy();
      sub_1E5D56E18(0, &qword_1ED06AA90);
      sub_1E5D7BB94();
      v38 = sub_1E5DA907C();

      [v40 _setCollectionIntervals_];

      [v41[6] executeQuery_];
      v39 = v40;
      sub_1E5D796D0(v40);

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1E5D56E18(0, &qword_1ED06AA90);
  sub_1E5DA961C();
  __break(1u);
}

uint64_t sub_1E5D7A0BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v32 - v8 + 24;
  if (!a2)
  {
    v25 = sub_1E5DA92BC();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    v26 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1E5DA929C();
    v27 = a1;

    v28 = sub_1E5DA928C();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v26;
    v29[5] = a1;

    sub_1E5D580A8(0, 0, v9, &unk_1E5DB3418, v29);
  }

  v10 = sub_1E5DA931C();
  v11 = *MEMORY[0x1E696B928];
  if (os_log_type_enabled(*MEMORY[0x1E696B928], v10))
  {
    v12 = v11;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v13 = 136315394;
    v15 = sub_1E5DA96DC();
    v17 = sub_1E5D67320(v15, v16, v32);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v18 = sub_1E5DA963C();
    v20 = sub_1E5D67320(v18, v19, v32);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_1E5D0F000, v12, v10, "%s failed to query current activity summary: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E693E930](v14, -1, -1);
    MEMORY[0x1E693E930](v13, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = sub_1E5DA92BC();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v22;
    v24[5] = a4;
    sub_1E5D57DE8(0, 0, v9, &unk_1E5DB3428, v24);
  }

  return result;
}

uint64_t sub_1E5D7A454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1E5D594BC;

  return sub_1E5D7A7A4(a5);
}

uint64_t sub_1E5D7A4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1E5DA929C();
  v5[8] = sub_1E5DA928C();
  v7 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D7A58C, v7, v6);
}

uint64_t sub_1E5D7A58C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1E5D798F4(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1E5D7A634()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    v5 = v1;
    [v2 stopQuery_];
    if (v0[5])
    {
      KeyPath = swift_getKeyPath();
      v4 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 280))(v4, sub_1E5D7BBFC);
    }

    else
    {
    }
  }
}

uint64_t sub_1E5D7A7A4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E5DA94DC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1E5DA94CC();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_1E5DA864C();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5D7A928, 0, 0);
}

uint64_t sub_1E5D7A928()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = sub_1E5D805C0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1E5DA862C();
  v6 = sub_1E5DA933C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 40);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_1E5D0F000, v5, v6, "Restarting activity summary query. Retry attempt: %ld", v8, 0xCu);
    MEMORY[0x1E693E930](v8, -1, -1);
  }

  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 112);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);

  v14 = (*(v10 + 8))(v9, v11);
  v15 = (*(*v12 + 248))(v14);
  if ((v13 * 5) >> 64 == (5 * v13) >> 63)
  {
    v20 = *(v0 + 96);
    v21 = *(v0 + 80);
    v22 = *(v0 + 88);
    sub_1E5DA94AC();
    sub_1E5DA94BC();
    v23 = *(v22 + 8);
    *(v0 + 136) = v23;
    *(v0 + 144) = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v20, v21);
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    sub_1E5DA962C();
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    v19 = sub_1E5D7BCF8(&qword_1ED06AA70, MEMORY[0x1E69E8820]);
    *v24 = v0;
    v24[1] = sub_1E5D7ABB4;
    v15 = *(v0 + 104);
    v17 = *(v0 + 72);
    v18 = *(v0 + 56);
    v16 = v0 + 16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DA68](v15, v16, v17, v18, v19);
}

uint64_t sub_1E5D7ABB4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[8];
    v3 = v2[9];
    v5 = v2[7];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
  }

  return MEMORY[0x1EEE6DFA0](sub_1E5D7AD0C, 0, 0);
}

uint64_t sub_1E5D7AD0C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  (*(**(v0 + 48) + 240))(*(v0 + 40) + 1);
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

id *sub_1E5D7AF24()
{
  v1 = OBJC_IVAR____TtC9FitnessUI27FIUIActivitySummaryProvider___observationRegistrar;
  v2 = sub_1E5DA85BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1E5D7AF9C()
{
  v1 = OBJC_IVAR____TtC9FitnessUI27FIUIActivitySummaryProvider___observationRegistrar;
  v2 = sub_1E5DA85BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E5D7B070(uint64_t a1, id *a2)
{
  result = sub_1E5DA913C();
  *a2 = 0;
  return result;
}

uint64_t sub_1E5D7B0E8(uint64_t a1, id *a2)
{
  v3 = sub_1E5DA914C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1E5D7B168@<X0>(uint64_t *a1@<X8>)
{
  sub_1E5DA915C();
  v2 = sub_1E5DA911C();

  *a1 = v2;
  return result;
}

uint64_t sub_1E5D7B1AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E5DA911C();

  *a1 = v2;
  return result;
}

uint64_t sub_1E5D7B1F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5DA915C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5D7B220(uint64_t a1)
{
  v2 = sub_1E5D7BCF8(&qword_1ED06AAD0, type metadata accessor for HKQuantityTypeIdentifier);
  v3 = sub_1E5D7BCF8(&qword_1ED06AAD8, type metadata accessor for HKQuantityTypeIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E5D7B2DC()
{
  v0 = sub_1E5DA915C();
  v1 = MEMORY[0x1E693CED0](v0);

  return v1;
}

uint64_t sub_1E5D7B318()
{
  sub_1E5DA915C();
  sub_1E5DA91AC();
}

uint64_t sub_1E5D7B36C()
{
  sub_1E5DA915C();
  sub_1E5DA968C();
  sub_1E5DA91AC();
  v0 = sub_1E5DA96CC();

  return v0;
}

uint64_t sub_1E5D7B3E0()
{
  v0 = sub_1E5DA915C();
  v2 = v1;
  if (v0 == sub_1E5DA915C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E5DA95CC();
  }

  return v5 & 1;
}

uint64_t sub_1E5D7B468(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAA8);
    v2 = sub_1E5DA957C();
    v19 = v2;
    sub_1E5DA94EC();
    v3 = sub_1E5DA950C();
    if (v3)
    {
      v4 = v3;
      sub_1E5D56E18(0, &qword_1ED06AA90);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1E5D56E18(0, &qword_1ED06A3F8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1E5D7B6F8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1E5DA938C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1E5DA950C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t sub_1E5D7B6B4(uint64_t a1)
{
  v2 = sub_1E5DA938C();

  return sub_1E5D7B960(a1, v2);
}

uint64_t sub_1E5D7B6F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAA8);
  result = sub_1E5DA956C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_1E5DA938C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1E5D7B960(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1E5D56E18(0, &qword_1ED06AA90);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1E5DA939C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_1E5D7BA34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06AAA8);
  v2 = *v0;
  v3 = sub_1E5DA955C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1E5D7BB94()
{
  result = qword_1ED06AA98;
  if (!qword_1ED06AA98)
  {
    sub_1E5D56E18(255, &qword_1ED06AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AA98);
  }

  return result;
}

void sub_1E5D7BBFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_1E5D7BC3C()
{
  result = sub_1E5DA85BC();
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

uint64_t sub_1E5D7BCF8(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for HKQuantityTypeIdentifier()
{
  if (!qword_1ED06AAB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED06AAB0);
    }
  }
}

uint64_t sub_1E5D7BD90(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5D594BC;

  return sub_1E5D7A4F0(a1, v6, v7, v5, v4);
}

uint64_t sub_1E5D7BE3C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5D597F0;

  return sub_1E5D7A454(v4, v5, v6, v2, v3);
}

Swift::Void __swiftcall UIView.setGlassBackground(color:)(UIColor_optional color)
{
  isa = color.value.super.isa;
  v2 = sub_1E5DA866C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1E5DA868C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isa)
  {
    v7 = isa;
    sub_1E5DA865C();
    sub_1E5DA869C();
    v10 = v3;
    v11 = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v9);
    sub_1E5DA867C();
    (*(v4 + 8))(v6, v3);
    sub_1E5DA936C();
  }

  else
  {
    sub_1E5DA865C();
    v10 = v3;
    v11 = MEMORY[0x1E69DC388];
    __swift_allocate_boxed_opaque_existential_1(v9);
    sub_1E5DA869C();
    sub_1E5DA936C();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1E5D7C1C8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  UIView.setGlassBackground(color:)(v9);
}

BOOL sub_1E5D7C260()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef_appleMoveTimeGoal;
  if (v1 == 2)
  {
    v3 = &selRef_minuteUnit;
  }

  else
  {
    v2 = &selRef_activeEnergyBurnedGoal;
    v3 = &selRef_kilocalorieUnit;
  }

  v4 = [v0 *v2];
  v5 = [objc_opt_self() *v3];
  [v4 doubleValueForUnit_];
  v7 = v6;

  return v7 <= 0.0;
}

id sub_1E5D7C328()
{
  v1 = [v0 activityMoveMode];
  v2 = &selRef__moveMinutesCompletionPercentage;
  if (v1 != 2)
  {
    v2 = &selRef__activeEnergyCompletionPercentage;
  }

  v3 = *v2;

  return [v0 v3];
}

id sub_1E5D7C394(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x1E696BEC8]) init];
  v13 = objc_opt_self();
  v14 = [v13 kilocalorieUnit];
  v15 = objc_opt_self();
  v16 = [v15 quantityWithUnit:v14 doubleValue:a1];

  [v12 setActiveEnergyBurnedGoal_];
  v17 = [v13 kilocalorieUnit];
  v18 = [v15 quantityWithUnit:v17 doubleValue:a2];

  [v12 setActiveEnergyBurned_];
  v19 = [v13 minuteUnit];
  v20 = [v15 quantityWithUnit:v19 doubleValue:a3];

  [v12 setAppleExerciseTimeGoal_];
  v21 = [v13 minuteUnit];
  v22 = [v15 quantityWithUnit:v21 doubleValue:a4];

  [v12 setAppleExerciseTime_];
  v23 = [v13 countUnit];
  v24 = [v15 quantityWithUnit:v23 doubleValue:a5];

  [v12 setAppleStandHoursGoal_];
  v25 = [v13 countUnit];
  v26 = [v15 quantityWithUnit:v25 doubleValue:a6];

  [v12 setAppleStandHours_];
  return v12;
}

id sub_1E5D7C658(double a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696BEC8]) init];
  v7 = objc_opt_self();
  v8 = [v7 kilocalorieUnit];
  v9 = objc_opt_self();
  v10 = [v9 quantityWithUnit:v8 doubleValue:500.0];

  [v6 setActiveEnergyBurnedGoal_];
  v11 = [v7 kilocalorieUnit];
  v12 = [v9 quantityWithUnit:v11 doubleValue:a1];

  [v6 setActiveEnergyBurned_];
  v13 = [v7 minuteUnit];
  v14 = [v9 quantityWithUnit:v13 doubleValue:30.0];

  [v6 setAppleExerciseTimeGoal_];
  v15 = [v7 minuteUnit];
  v16 = [v9 quantityWithUnit:v15 doubleValue:a2];

  [v6 setAppleExerciseTime_];
  v17 = [v7 countUnit];
  v18 = [v9 quantityWithUnit:v17 doubleValue:12.0];

  [v6 setAppleStandHoursGoal_];
  v19 = [v7 countUnit];
  v20 = [v9 quantityWithUnit:v19 doubleValue:a3];

  [v6 setAppleStandHours_];
  return v6;
}

void *sub_1E5D7C8F0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_1E5D7C260();

    return v2;
  }

  return result;
}

void *sub_1E5D7C92C(void *result)
{
  if (result)
  {
    return ([result activityMoveMode] == 2);
  }

  return result;
}

id sub_1E5D7C95C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696BEC8]) init];

  return [v1 _initWithActivityCache_shouldIncludePrivateProperties_];
}

uint64_t sub_1E5D7C9E0(unsigned __int8 a1)
{
  sub_1E5DA968C();
  MEMORY[0x1E693D380](a1);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D7CA50(unsigned __int8 a1, double a2, double a3)
{
  sub_1E5DA968C();
  sub_1E5D7CDE4(a2, a3, v7, a1);
  return sub_1E5DA96CC();
}

void sub_1E5D7CAB0(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_1E5DA8AFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = objc_opt_self();
  if (!a1)
  {
LABEL_5:
    v8 = [v8 energyColors];
    if (!v8)
    {
      __break(1u);
LABEL_7:
      v8 = [v8 sedentaryColors];
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (a1 != 1)
  {
    goto LABEL_7;
  }

  v8 = [v8 briskColors];
  if (!v8)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_8:
  v9 = v8;
  if ((a1 & 0x100) == 0)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E697F608], v4);
    v10 = sub_1E5DA8AEC();
    (*(v5 + 8))(v7, v4);
    if ((v10 & 1) == 0)
    {
      v11 = sub_1E5D7FFC8();
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A510);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E5DB2290;
    if ([v9 highContrastTextColor])
    {
LABEL_13:
      *(v11 + 32) = sub_1E5DA8D9C();
LABEL_15:
      sub_1E5DA8E9C();
      sub_1E5DA8EAC();
      MEMORY[0x1E693CB60](v11);
      sub_1E5DA890C();

      v12 = v14;
      *a2 = *&v13[8];
      *(a2 + 16) = v12;
      *(a2 + 32) = v15;
      return;
    }

    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A510);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E5DB2290;
  if ([v9 adjustmentButtonBackgroundColor])
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1E5D7CD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6, __int16 a7)
{
  if (a5 == 3)
  {
    v7 = a7;
  }

  else
  {
    v7 = a5;
  }

  if (a6 == 2)
  {
    v8 = HIBYTE(a7) & 1;
  }

  else
  {
    v8 = a6;
  }

  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 0xFFFFFF00 | v7;
}

uint64_t sub_1E5D7CD98(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFF00 | a1;
}

uint64_t sub_1E5D7CDB0(__int16 a1, __int16 a2, double a3, double a4, double a5, double a6)
{
  v6 = a3 == a5;
  if (a4 != a6)
  {
    v6 = 0;
  }

  if (a2 != a1)
  {
    v6 = 0;
  }

  return v6 & (((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8));
}

uint64_t sub_1E5D7CDE4(double a1, double a2, uint64_t a3, unsigned __int8 a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E693D3A0](*&a1);
  if (a2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a2;
  }

  MEMORY[0x1E693D3A0](*&v6);
  MEMORY[0x1E693D380](a4);
  return sub_1E5DA96AC();
}

uint64_t sub_1E5D7CE48()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E5DA968C();
  sub_1E5D7CDE4(v1, v2, v5, v3);
  return sub_1E5DA96CC();
}

uint64_t sub_1E5D7CED4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E5DA968C();
  sub_1E5D7CDE4(v1, v2, v5, v3);
  return sub_1E5DA96CC();
}

unint64_t sub_1E5D7CF40()
{
  result = qword_1ED06AAE0;
  if (!qword_1ED06AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AAE0);
  }

  return result;
}

unint64_t sub_1E5D7CF98()
{
  result = qword_1ED06AAE8;
  if (!qword_1ED06AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06AAE8);
  }

  return result;
}

uint64_t sub_1E5D7CFF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_1E5DA968C();
  sub_1E5D7CDE4(v3, v4, v7, v5);
  result = sub_1E5DA96CC();
  *a1 = result;
  return result;
}

uint64_t sub_1E5D7D074(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (*(a1 + 8) != *(a2 + 8))
  {
    v2 = 0;
  }

  v3 = *(a1 + 16) == *(a2 + 16) && v2;
  return v3 & (*(a2 + 17) ^ *(a1 + 17) ^ 1u);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ChartMarkInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}