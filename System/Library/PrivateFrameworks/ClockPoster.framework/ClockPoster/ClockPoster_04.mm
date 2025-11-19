unint64_t sub_1E49110B4()
{
  result = qword_1ECF7FDF0;
  if (!qword_1ECF7FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FDF0);
  }

  return result;
}

uint64_t sub_1E4911120(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4911190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4911248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1);
  return a6(v12);
}

uint64_t sub_1E4911318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E499751C();
  *a1 = result;
  return result;
}

uint64_t sub_1E4911344(uint64_t *a1)
{
  v1 = *a1;

  return sub_1E499752C();
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for WorldClockFace(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC0, &qword_1E49A0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E499732C();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E49114A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WorldClockFace(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E4911548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD98, &unk_1E49A03A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD98, &unk_1E49A03A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1E4911730()
{
  sub_1E490803C(319, &qword_1ECF7FDB0, type metadata accessor for WorldViewModel);
  if (v0 <= 0x3F)
  {
    sub_1E490803C(319, &qword_1ECF7FDB8, MEMORY[0x1E697E7E0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E49117F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
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

uint64_t sub_1E491183C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E4911894()
{
  result = qword_1ECF7FF08;
  if (!qword_1ECF7FF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FDD0, &qword_1E49A0470);
    sub_1E48C1B44(&qword_1ECF7FF10, &qword_1ECF7FF18, &qword_1E49A0770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FF08);
  }

  return result;
}

uint64_t sub_1E4911984(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E4911990@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  return sub_1E490C200(*(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_1E49119B0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E49119BC()
{
  result = qword_1ECF7FF50;
  if (!qword_1ECF7FF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FF48, &qword_1E49A08B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FF50);
  }

  return result;
}

double sub_1E4911A40(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1E4911A60()
{
  result = qword_1ECF7FF58;
  if (!qword_1ECF7FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FF58);
  }

  return result;
}

uint64_t sub_1E4911ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_1E4911AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_1E4911AEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_1E4911B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4911BE8()
{
  result = qword_1ECF80020;
  if (!qword_1ECF80020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7FF80, &qword_1E49A0908);
    sub_1E48C1B44(&qword_1ECF80028, &qword_1ECF7FF78, &qword_1E49A0900);
    sub_1E48C1B44(&qword_1ECF80030, &qword_1ECF7FE30, &qword_1E49A0548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80020);
  }

  return result;
}

uint64_t sub_1E4911CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1E490DADC(a1, a2, *(v2 + 32), *(v2 + 40));
}

unint64_t sub_1E4911D00()
{
  result = qword_1ECF80068;
  if (!qword_1ECF80068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80068);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1E4911D68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
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

uint64_t sub_1E4911DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E4911E04()
{
  result = qword_1ECF80080;
  if (!qword_1ECF80080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80078, &qword_1E49A0B00);
    sub_1E48C1B44(&qword_1ECF80088, &qword_1ECF80038, &qword_1E49A0AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80080);
  }

  return result;
}

unint64_t sub_1E4911ED8()
{
  result = qword_1ECF80098;
  if (!qword_1ECF80098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80098);
  }

  return result;
}

unint64_t sub_1E4911F2C()
{
  result = qword_1ECF800B0;
  if (!qword_1ECF800B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF800B8, &qword_1E49A0BE8);
    sub_1E48C1B44(&qword_1ECF800C0, &qword_1ECF800C8, &qword_1E49A0BF0);
    sub_1E48C1B44(&qword_1ECF800D0, &qword_1ECF800D8, &qword_1E49A0BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF800B0);
  }

  return result;
}

id sub_1E4912020()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.658823529 green:0.658823529 blue:0.658823529 alpha:1.0];
  qword_1ECF81948 = result;
  return result;
}

id sub_1E4912068()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.419607843 green:0.419607843 blue:0.419607843 alpha:1.0];
  qword_1ECF81950 = result;
  return result;
}

id sub_1E49120B0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.176470588 green:0.176470588 blue:0.176470588 alpha:1.0];
  qword_1ECF81958 = result;
  return result;
}

id sub_1E49120F8(void *a1)
{
  v1[OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface] = 0;
  *&v1[OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_hostedClockFace] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ClockFaceHostView();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_opt_self() blackColor];
  [v4 setBackgroundColor_];

  [v4 setClipsToBounds_];
  return v4;
}

id sub_1E49122FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v72 = &v71 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v71 - v12;
  v14 = sub_1E499708C();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v74 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v73 = &v71 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v71 - v23;
  v25 = type metadata accessor for ClockFaceHostView();
  v77.receiver = v0;
  v77.super_class = v25;
  objc_msgSendSuper2(&v77, sel_layoutSubviews);
  v26 = *&v0[OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_hostedClockFace];
  v27 = [v26 superview];
  v75 = v14;
  if (v27)
  {
  }

  else
  {
    [v0 frame];
    if (v28 <= 0.0 || ([v0 frame], v29 <= 0.0))
    {
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v30 = qword_1EE2BB458;
      v31 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
      swift_beginAccess();
      sub_1E48CC978(v30 + v31, v13);
      v14 = v75;
      v32 = v76;
      v33 = *(v76 + 48);
      if (v33(v13, 1, v75) == 1)
      {
        sub_1E4904BF4(v24);
        if (v33(v13, 1, v14) != 1)
        {
          sub_1E48EF578(v13);
        }
      }

      else
      {
        (*(v32 + 32))(v24, v13, v14);
      }

      v34 = v1;
      v35 = sub_1E499706C();
      v36 = sub_1E499830C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134349312;
        [v34 frame];
        *(v37 + 4) = CGRectGetWidth(v78);
        *(v37 + 12) = 2050;
        [v34 frame];
        *(v37 + 14) = CGRectGetHeight(v79);
        _os_log_impl(&dword_1E48B0000, v35, v36, "Frame is invalid at layoutSubviews; unable add ClockFace. Frame: %{public}f x %{public}f.", v37, 0x16u);
        MEMORY[0x1E691CED0](v37, -1, -1);
      }

      (*(v76 + 8))(v24, v14);
    }

    else
    {
      [v0 addSubview_];
    }
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 frame];
  Height = CGRectGetHeight(v80);
  [v1 frame];
  Width = CGRectGetWidth(v81);
  v40 = v74;
  if (Width >= Height || (v41 = [objc_opt_self() currentDevice], v42 = objc_msgSend(v41, sel_userInterfaceIdiom), v41, v42 == 1))
  {
    [v1 setHidden_];
    v43 = v76;
    if (*(v1 + OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface) == 1)
    {
      *(v1 + OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface) = 0;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v44 = qword_1EE2BB458;
      v45 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
      swift_beginAccess();
      sub_1E48CC978(v44 + v45, v6);
      v46 = *(v43 + 48);
      v47 = v75;
      if (v46(v6, 1, v75) == 1)
      {
        sub_1E4904BF4(v40);
        if (v46(v6, 1, v47) != 1)
        {
          sub_1E48EF578(v6);
        }
      }

      else
      {
        (*(v43 + 32))(v40, v6, v47);
      }

      v62 = v1;
      v63 = sub_1E499706C();
      v64 = sub_1E499830C();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 134349312;
        [v62 &selRef_dateFromString_];
        *(v65 + 4) = CGRectGetWidth(v82);
        *(v65 + 12) = 2050;
        [v62 &selRef_dateFromString_];
        *(v65 + 14) = CGRectGetHeight(v83);
        _os_log_impl(&dword_1E48B0000, v63, v64, "Recovering from last layout pass where frame was an unsupported portrait size. Frame: (%{public}f, %{public}f).", v65, 0x16u);
        MEMORY[0x1E691CED0](v65, -1, -1);
      }

      (*(v43 + 8))(v40, v75);
    }

    [v1 bounds];
    return [v26 setFrame_];
  }

  else
  {
    [v1 setHidden_];
    [v1 frame];
    v49 = v48;
    [v1 frame];
    v51 = v50;
    [v1 frame];
    v53 = v52;
    [v1 frame];
    [v26 setFrame_];
    *(v1 + OBJC_IVAR____TtC11ClockPoster17ClockFaceHostView_wasUnsupportedPortraitInterface) = 1;
    v55 = v76;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v56 = qword_1EE2BB458;
    v57 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
    swift_beginAccess();
    v58 = v72;
    sub_1E48CC978(v56 + v57, v72);
    v59 = *(v55 + 48);
    v60 = v59(v58, 1, v14);
    v61 = v73;
    if (v60 == 1)
    {
      sub_1E4904BF4(v73);
      if (v59(v58, 1, v14) != 1)
      {
        sub_1E48EF578(v58);
      }
    }

    else
    {
      (*(v55 + 32))(v73, v58, v14);
    }

    v67 = v1;
    v68 = sub_1E499706C();
    v69 = sub_1E499830C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134349312;
      [v67 frame];
      *(v70 + 4) = CGRectGetWidth(v84);
      *(v70 + 12) = 2050;
      [v67 frame];
      *(v70 + 14) = CGRectGetHeight(v85);
      _os_log_impl(&dword_1E48B0000, v68, v69, "Frame is portrait, unsupported on iOS. Frame: (%{public}f, %{public}f). This is likely on the first layout pass of an Ambient extension coming up over a portrait SpringBoard interface.", v70, 0x16u);
      MEMORY[0x1E691CED0](v70, -1, -1);
    }

    return (*(v55 + 8))(v61, v14);
  }
}

id sub_1E4912D28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockFaceHostView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E4912D90(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (v5 < 4)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC50, &qword_1E499E5C0);
    v7 = swift_allocObject();
    v8 = &qword_1E499B000;
    _Q0 = xmmword_1E499B670;
    v11 = *(v4 + 32);
    v10 = v4 + 32;
    *(v7 + 16) = xmmword_1E499B670;
    *(v7 + 32) = v11;
    if (a2 < 1)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      v45 = _Q0;
      v33 = sub_1E490640C((v8 > 1), v10, 1, v2);
      _Q0 = v45;
      v2 = v33;
    }

    else
    {
      v2 = v7;
      v12 = v5 - 2;
      v8 = 1;
      __asm
      {
        FMOV            V1.2D, #-5.0
        FMOV            V0.2D, #4.0
      }

      v36 = _Q0;
      v37 = _Q1;
      __asm { FMOV            V0.2D, #3.0 }

      v35 = _Q0;
      __asm { FMOV            V0.2D, #0.5 }

      v39 = _Q0;
      do
      {
        if (v8 == v12)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v8 == v5 + 1)
        {
          goto LABEL_22;
        }

        v20 = v8 + 1;
        v21 = *(v10 + 16 * (v8 + 1));
        v38 = v21;
        if (a2 == 1)
        {
          v22 = *(v2 + 2);
        }

        else
        {
          v24 = (v10 + 16 * v8);
          v25 = v24[-1];
          v26 = v24[2];
          v42 = vsubq_f64(v21, v25);
          v43 = vaddq_f64(*v24, *v24);
          v40 = vaddq_f64(vsubq_f64(vsubq_f64(vmulq_f64(*v24, v35), v25), vmulq_f64(v21, v35)), v26);
          v41 = vsubq_f64(vaddq_f64(vaddq_f64(vaddq_f64(v25, v25), vmulq_f64(*v24, v37)), vmulq_f64(v21, v36)), v26);
          v27 = *(v2 + 2);
          v28 = 1;
          do
          {
            v44 = 1.0 / a2 * v28;
            v29 = pow(v44, 3.0);
            v30 = *(v2 + 3);
            v22 = v27 + 1;
            if (v27 >= v30 >> 1)
            {
              v34 = v29;
              v31 = sub_1E490640C((v30 > 1), v27 + 1, 1, v2);
              v29 = v34;
              v2 = v31;
            }

            ++v28;
            *(v2 + 2) = v22;
            *&v2[16 * v27++ + 32] = vmulq_f64(vaddq_f64(vmulq_n_f64(v40, v29), vaddq_f64(vaddq_f64(v43, vmulq_n_f64(v42, v44)), vmulq_n_f64(v41, v44 * v44))), v39);
          }

          while (a2 != v28);
        }

        v23 = *(v2 + 3);
        v3 = v22 + 1;
        if (v22 >= v23 >> 1)
        {
          v2 = sub_1E490640C((v23 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v3;
        _Q0 = v38;
        *&v2[16 * v22 + 32] = v38;
        v8 = v20;
      }

      while (v20 != v12);
      _Q0 = *(v10 + 16 * v5 - 16);
      v8 = *(v2 + 3);
      v10 = v22 + 2;
      if (v3 >= v8 >> 1)
      {
        goto LABEL_24;
      }
    }

    *(v2 + 2) = v10;
    *&v2[16 * v3 + 32] = _Q0;
    return v2;
  }

  return v4;
}

uint64_t sub_1E4913064(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1E49130A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E4906EF8(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 32);
    do
    {
      v9 = *v4;
      v13 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E4906EF8((v5 > 1), v6 + 1, 1);
        v2 = v13;
      }

      type metadata accessor for CGPoint(0);
      v11 = v7;
      v12 = &off_1F5E84E08;
      v10 = v9;
      *(v2 + 16) = v6 + 1;
      sub_1E48B7448(&v10, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1E491319C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E49986EC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1E4906F98(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1E691BDE0](i, a1);
        sub_1E48D9CFC(0, &qword_1ECF80110, 0x1E6979378);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1E4906F98((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1E48C42DC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1E48D9CFC(0, &qword_1ECF80110, 0x1E6979378);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1E4906F98((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1E48C42DC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1E4913398(double a1, double a2, double a3, double a4)
{
  v58 = type metadata accessor for TextClockDescriptor(0);
  v9 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58, v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4996F4C();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeString(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v57 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4996F3C();
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_overlap] = 0;
  v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter] = 0;
  v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_transformModifier] = 0;
  v23 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel;
  v24 = type metadata accessor for RollingTimeLabel();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = sub_1E48DB2FC();
  *(v27 + 3) = 0;
  *(v27 + 4) = 0;
  *(v27 + 2) = v28;
  v29 = *(v19 + 56);
  v29(&v27[OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString], 1, 1, v18);
  *&v4[v23] = v27;
  v30 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel;
  v31 = *(v24 + 48);
  v32 = *(v24 + 52);
  v33 = swift_allocObject();
  v34 = sub_1E48DB2FC();
  *(v33 + 3) = 0;
  *(v33 + 4) = 0;
  *(v33 + 2) = v34;
  v29(&v33[OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString], 1, 1, v18);
  *&v4[v30] = v33;
  v35 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_maxScale;
  v36 = objc_opt_self();
  v37 = [v36 mainScreen];
  [v37 scale];
  v39 = v38;

  v40 = [v36 mainScreen];
  [v40 nativeScale];
  v42 = v41;

  *&v4[v35] = v39 / v42;
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___redModeColonLayers] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___colonBlurViews] = 0;
  v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeTextListenerTask] = 0;
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v43 = qword_1ECF80790;
  sub_1E4996F3C();
  v44 = v59;
  v45 = *(v59 + 16);
  v46 = v60;
  v47 = v45(&v12[*(v58 + 20)], v17, v60);
  *v12 = 0;
  v48 = *(v43 + OBJC_IVAR____TtC11ClockPoster5Clock_textClock);
  MEMORY[0x1EEE9AC00](v47, v49);
  *(&v57 - 2) = v12;
  *(&v57 - 1) = v50;
  v51 = v57;
  sub_1E4939498(sub_1E48BF0E4, (&v57 - 4), v57);
  v52 = *(v44 + 8);
  v52(v17, v46);
  sub_1E4918D74(v12, type metadata accessor for TextClockDescriptor);
  sub_1E48BF0EC(v51, &v4[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeString]);
  v53 = type metadata accessor for RollingTimeView();
  v61.receiver = v4;
  v61.super_class = v53;
  v54 = objc_msgSendSuper2(&v61, sel_initWithFrame_, a1, a2, a3, a4);
  v45(v17, &v54[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeZone], v46);
  v55 = v54;
  sub_1E49149C8();

  v52(v17, v46);
  return v55;
}

void sub_1E49138C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for RollingTimeView();
  v45.receiver = v0;
  v45.super_class = v11;
  objc_msgSendSuper2(&v45, sel_layoutSubviews);
  v12 = *&v0[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel];
  v13 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  swift_beginAccess();
  sub_1E48C12D0(v12 + v13, v10, &qword_1ECF815D0, &unk_1E499A370);
  v14 = type metadata accessor for TimeString(0);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v10, 1, v14);
  sub_1E48C1338(v10, &qword_1ECF815D0, &unk_1E499A370);
  if (v16 == 1)
  {
    v17 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeString;
    swift_beginAccess();
    sub_1E49184D8(&v1[v17], v6);
    (*(v15 + 56))(v6, 0, 1, v14);
    swift_beginAccess();
    sub_1E491853C(v6, v12 + v13);
    swift_endAccess();
    sub_1E48DB6AC();
    sub_1E48C1338(v6, &qword_1ECF815D0, &unk_1E499A370);
  }

  v18 = *(v12 + 16);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v21 = *(v12 + 16);
    }

    if (!sub_1E49986EC())
    {
      goto LABEL_13;
    }
  }

  else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    goto LABEL_60;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_62;
  }

  v19 = *(v18 + 32);
  while (1)
  {
    v20 = [v19 superview];

    if (v20)
    {

      goto LABEL_36;
    }

LABEL_13:
    v18 = *(v12 + 16);
    if (v18 >> 62)
    {
LABEL_62:
      v22 = sub_1E49986EC();
    }

    else
    {
      v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      v23 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1E691BDE0](v23, v18);
        }

        else
        {
          if (v23 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v24 = *(v18 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        [v1 addSubview_];

        ++v23;
        if (v26 == v22)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_24:

    v18 = *(*&v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel] + 16);
    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v42 = *(*&v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel] + 16);
      }

      v27 = sub_1E49986EC();
    }

    else
    {
      v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v27)
    {
      break;
    }

    v28 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E691BDE0](v28, v18);
      }

      else
      {
        if (v28 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v29 = *(v18 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      [v1 addSubview_];

      ++v28;
      if (v31 == v27)
      {
        goto LABEL_35;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:

    v19 = MEMORY[0x1E691BDE0](0, v18);
  }

LABEL_35:

LABEL_36:
  if (v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating])
  {
    return;
  }

  v32 = *(v12 + 16);

  sub_1E4915660(v33, 0, 1);

  v34 = *&v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel];
  v35 = *(v34 + 16);

  [v1 bounds];
  *&v36 = CGRectGetHeight(v46);
  sub_1E4915660(v35, v36, 0);

  sub_1E4915DA4();
  v37 = *(v12 + 16);
  if (v37 >> 62)
  {
    if (v37 < 0)
    {
      v43 = *(v12 + 16);
    }

    v38 = sub_1E49986EC();
    if (!v38)
    {
      return;
    }

LABEL_39:
    v39 = v38 - 1;
    if (__OFSUB__(v38, 1))
    {
      __break(1u);
    }

    else if ((v37 & 0xC000000000000001) == 0)
    {
      if ((v39 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_73;
      }

      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_76;
      }

      v39 = *(v37 + 8 * v39 + 32);
LABEL_44:
      v37 = *(v34 + 16);
      if (!(v37 >> 62))
      {
        v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
          goto LABEL_46;
        }

        goto LABEL_54;
      }

LABEL_73:
      v40 = sub_1E49986EC();
      if (v40)
      {
LABEL_46:
        v35 = v40 - 1;
        if (!__OFSUB__(v40, 1))
        {
          if ((v37 & 0xC000000000000001) == 0)
          {
            if ((v35 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v35 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v41 = *(v37 + 8 * v35 + 32);
              goto LABEL_51;
            }

            __break(1u);
            return;
          }

LABEL_77:

          v41 = MEMORY[0x1E691BDE0](v35, v37);

LABEL_51:
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1E4995E98(v39, v41);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          goto LABEL_54;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_54:

      return;
    }

    v39 = MEMORY[0x1E691BDE0](v39, v37);

    goto LABEL_44;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v38)
  {
    goto LABEL_39;
  }
}

uint64_t sub_1E4913F14(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon) == 1)
  {
    if (result)
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 0.0;
    }

    v3 = sub_1E491411C();
    v4 = v3;
    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E691BDE0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v10 = v8;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v7 = v2;
        *&v9 = v7;
        [v8 setOpacity_];

        ++v6;
        if (v11 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    v12 = sub_1E49143E8();
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_31;
    }

    for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1E49986EC())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1E691BDE0](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        [v16 setAlpha_];

        ++v15;
        if (v18 == j)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:
  }

  return result;
}

unint64_t sub_1E491413C()
{
  sub_1E4914848();
  v1 = v0;
  v22 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80130, &qword_1E49A3E20);
  for (i = 0; ; i = 1)
  {
    v3 = i;
    v4 = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
    v19 = 0x7974696361706FLL;
    v20 = 0xE700000000000000;
    v5 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
    v6 = v4;
    v21 = [v5 init];
    v7 = sub_1E499871C();

    v8 = v19;
    v9 = v20;
    v10 = v21;

    swift_unknownObjectRetain();
    result = sub_1E494812C(v8, v9);
    if (v12)
    {
      break;
    }

    v7[(result >> 6) + 8] |= 1 << result;
    v13 = (v7[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    *(v7[7] + 8 * result) = v10;
    v14 = v7[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_9;
    }

    v7[2] = v16;

    sub_1E48C1338(&v19, &qword_1ECF7F388, &qword_1E499B950);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F390, &qword_1E499B958);
    v17 = sub_1E4997E2C();

    [v6 setActions_];

    [v6 setOpacity_];
    [v6 frame];
    [v6 setFrame_];
    MEMORY[0x1E691B8A0]([v6 setCornerRadius_]);
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E49980DC();
    }

    sub_1E49980FC();

    if (v3)
    {
      return v22;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E4914408(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1E4914470()
{
  sub_1E4914848();
  v1 = v0;
  v23 = MEMORY[0x1E69E7CC0];
  v2 = objc_opt_self();
  if (qword_1ECF7EB48 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECF819A8;
  v4 = sub_1E4997EAC();
  v5 = [v2 materialViewWithRecipeNamed:v4 inBundle:v3 options:0 initialWeighting:0 scaleAdjustment:1.0];

  if (v5)
  {
    v6 = v5;
    [v6 frame];
    [v6 setFrame_];
    v7 = [v6 layer];
    [v7 setCornerRadius_];

    v8 = [objc_opt_self() whiteColor];
    v9 = [v8 colorWithAlphaComponent_];

    [v6 setBackgroundColor_];
    v10 = v6;
    MEMORY[0x1E691B8A0]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E49980DC();
    }

    sub_1E49980FC();

    v11 = v23;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = qword_1ECF819A8;
  v13 = sub_1E4997EAC();
  v14 = [v2 materialViewWithRecipeNamed:v13 inBundle:v12 options:0 initialWeighting:0 scaleAdjustment:1.0];

  if (v14)
  {
    v15 = v14;
    [v15 frame];
    [v15 setFrame_];
    v16 = [v15 layer];
    [v16 &selRef:v1 * 0.5 bringSubviewToFront:?];

    v17 = [objc_opt_self() &selRef_defaultMinuteConfigurationForDevice_];
    v18 = [v17 &off_1E8761178];

    [v15 &off_1E8761078];
    v19 = v15;
    MEMORY[0x1E691B8A0]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v22 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1E49980DC();
    }

    sub_1E49980FC();

    return v23;
  }

  return v11;
}

void sub_1E4914848()
{
  v1 = sub_1E4997FEC();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E4918244(v1, 0);
    v4 = sub_1E4917F70(v14, (v3 + 16), v2, 46, 0xE100000000000000);

    if (v4 != v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v5 = *(v3 + 2);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v5)
    {
LABEL_4:
      v6 = sub_1E49980EC();
      *(v6 + 16) = v5;
      bzero((v6 + 32), 2 * v5);
      goto LABEL_7;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v7 = *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel);
  v8 = *(v7 + 24);
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v9, v3 + 16, (v6 + 32), v5);

  if (!GlyphsForCharacters)
  {
LABEL_13:

    return;
  }

  v11 = *(v7 + 24);
  if (v11)
  {
    if (*(v6 + 16))
    {
      PathForGlyph = CTFontCreatePathForGlyph(v11, *(v6 + 32), 0);
      if (PathForGlyph)
      {
        v13 = PathForGlyph;
        CGPathGetBoundingBox(PathForGlyph);

        return;
      }

      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1E49149C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v29 - v5;
  v7 = sub_1E4996F4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v29 - v15;
  v30 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeTextListenerTask;
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeTextListenerTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
    sub_1E49981DC();
  }

  v17 = *(v8 + 16);
  v17(v16, v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeZone, v7, v14);
  v18 = sub_1E499816C();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v29 = v6;
  v20 = v19;
  swift_unknownObjectWeakInit();
  (v17)(v11, v16, v7);
  sub_1E499814C();

  v21 = sub_1E499813C();
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;
  (*(v8 + 32))(v24 + v22, v11, v7);
  *(v24 + v23) = v20;

  v26 = sub_1E49690B8(0, 0, v29, &unk_1E49A0DD8, v24);
  (*(v8 + 8))(v16, v7);
  v27 = *(v1 + v30);
  *(v1 + v30) = v26;
}

uint64_t sub_1E4914CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = type metadata accessor for TimeString(0);
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v10 = type metadata accessor for TextClockDescriptor(0);
  v5[20] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC68, &unk_1E49A0DE0);
  v5[22] = v12;
  v13 = *(v12 - 8);
  v5[23] = v13;
  v14 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC70, &qword_1E499A380);
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = sub_1E499814C();
  v5[29] = sub_1E499813C();
  v19 = sub_1E499811C();
  v5[30] = v19;
  v5[31] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1E4914F20, v19, v18);
}

uint64_t sub_1E4914F20()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[11];
  v7 = v0[12];
  v8 = qword_1ECF80790;
  v9 = *(v0[20] + 20);
  v10 = sub_1E4996F4C();
  (*(*(v10 - 8) + 16))(v5 + v9, v6, v10);
  *v5 = 0.0;
  v11 = *(v8 + OBJC_IVAR____TtC11ClockPoster5Clock_textClockStreamObservers);
  v12 = swift_task_alloc();
  *(v12 + 16) = v8;
  *(v12 + 24) = v5;
  sub_1E491780C(v5, sub_1E48BFE74, v12, v2);

  sub_1E4918D74(v5, type metadata accessor for TextClockDescriptor);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[32] = 0;
  v13 = v0[28];
  v14 = sub_1E499813C();
  v0[33] = v14;
  v15 = *(MEMORY[0x1E69E8678] + 4);
  v16 = swift_task_alloc();
  v0[34] = v16;
  *v16 = v0;
  v16[1] = sub_1E4915130;
  v17 = v0[27];
  v18 = v0[25];
  v19 = v0[19];
  v20 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v19, v14, v20, v18);
}

uint64_t sub_1E4915130()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v7 = *v0;

  v4 = *(v1 + 248);
  v5 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1E4915274, v5, v4);
}

uint64_t sub_1E4915274()
{
  v1 = v0[19];
  if ((*(v0[14] + 48))(v1, 1, v0[13]) == 1)
  {
    v2 = v0[29];
    (*(v0[26] + 8))(v0[27], v0[25]);

LABEL_7:
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[21];
    v25 = v0[18];
    v24 = v0[19];
    v27 = v0[16];
    v26 = v0[17];
    v28 = v0[15];

    v15 = v0[1];
    goto LABEL_8;
  }

  v3 = v0[12];
  sub_1E48BF0EC(v1, v0[18]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = v0[29];
    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[25];
    v20 = v0[18];

    sub_1E4918D74(v20, type metadata accessor for TimeString);
    (*(v18 + 8))(v17, v19);
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = v0[32];
  sub_1E49981FC();
  if (v6)
  {
    v7 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v45 = v0[17];
    v46 = v0[16];
    v47 = v0[15];

    sub_1E4918D74(v14, type metadata accessor for TimeString);
    (*(v9 + 8))(v8, v10);

    v15 = v0[1];
LABEL_8:

    return v15();
  }

  v30 = v0[17];
  v31 = v0[16];
  sub_1E49184D8(v0[18], v30);
  v32 = &v5[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeString];
  swift_beginAccess();
  sub_1E49184D8(v32, v31);
  swift_beginAccess();
  sub_1E48BFB2C(v30, v32);
  swift_endAccess();
  v33 = *v31 == *v32 && v31[1] == *(v32 + 1);
  if (v33 || (sub_1E499884C() & 1) != 0)
  {
  }

  else
  {
    v34 = v0[15];
    sub_1E49184D8(v32, v34);
    sub_1E491665C(v34);

    sub_1E4918D74(v34, type metadata accessor for TimeString);
  }

  v35 = v0[18];
  v36 = v0[16];
  sub_1E4918D74(v0[17], type metadata accessor for TimeString);
  sub_1E4918D74(v35, type metadata accessor for TimeString);
  sub_1E4918D74(v36, type metadata accessor for TimeString);
  v0[32] = 0;
  v37 = v0[28];
  v38 = sub_1E499813C();
  v0[33] = v38;
  v39 = *(MEMORY[0x1E69E8678] + 4);
  v40 = swift_task_alloc();
  v0[34] = v40;
  *v40 = v0;
  v40[1] = sub_1E4915130;
  v41 = v0[27];
  v42 = v0[25];
  v43 = v0[19];
  v44 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v43, v38, v44, v42);
}

void sub_1E4915660(unint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  v5 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_overlap;
  v6 = *&v3[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_overlap];
  sub_1E4915A40(a1);
  x = v7;
  [v3 bounds];
  v9 = CGRectGetWidth(v54) / x;
  [v3 bounds];
  Height = CGRectGetHeight(v55);
  v11 = Height / sub_1E4915B88(v4);
  if (v11 >= v9)
  {
    v11 = v9;
  }

  if (*&v3[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_maxScale] < v11)
  {
    v11 = *&v3[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_maxScale];
  }

  sx = v11;
  [v3 bounds];
  Width = CGRectGetWidth(v56);
  v13 = *&v3[v5];
  v37 = sub_1E4915C80(v4);
  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
  {
    v15 = 0;
    Width = (Width - x * sx) * 0.5;
    v35 = v4 & 0xFFFFFFFFFFFFFF8;
    v36 = v4 & 0xC000000000000001;
    v34 = sx * v13;
    while (1)
    {
      if (v36)
      {
        v16 = v4;
        v17 = MEMORY[0x1E691BDE0](v15, v4);
      }

      else
      {
        if (v15 >= *(v35 + 16))
        {
          goto LABEL_20;
        }

        v16 = v4;
        v17 = *(v4 + 8 * v15 + 32);
      }

      v18 = v17;
      v4 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      [v17 _tightBoundingRectOfFirstLine];
      x = v57.origin.x;
      v39 = CGRectGetWidth(v57);
      v19 = v18;
      [v19 transform];
      v20 = atan2(t1.b, t1.a);
      CGAffineTransformMakeRotation(&t1, v20);
      v42 = *&t1.c;
      v43 = *&t1.a;
      ty = t1.ty;
      tx = t1.tx;
      CGAffineTransformMakeScale(&t1, sx, sx);
      b = t1.b;
      a = t1.a;
      d = t1.d;
      c = t1.c;
      v44 = t1.ty;
      v45 = t1.tx;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.a = 1.0;
      t1.d = 1.0;
      t1.tx = 0.0;
      t1.ty = 0.0;
      [v19 setTransform_];
      if (a3)
      {
        [v19 _tightBoundingRectOfFirstLine];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        [v3 bounds];
        UIRectGetHeight(v29, v30, v31, v32);
        v58.origin.x = v22;
        v58.origin.y = v24;
        v58.size.width = v26;
        v58.size.height = v28;
        CGRectGetHeight(v58);
      }

      [v19 frame];
      [v19 setFrame_];
      v13 = a;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v45;
      t1.ty = v44;
      [v19 setTransform_];
      if (__OFSUB__(v15, v37))
      {
        goto LABEL_21;
      }

      x = Width - sx * x - v34 * (v15 - v37);
      [v19 frame];
      [v19 setFrame_];
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v45;
      t1.ty = v44;
      *&t2.a = v43;
      *&t2.c = v42;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v51, &t1, &t2);
      t1 = v51;
      [v19 setTransform_];

      Width = Width + sx * v39;
      ++v15;
      v33 = v4 == i;
      v4 = v16;
      if (v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

unint64_t sub_1E4915A40(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
  {
    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E691BDE0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v6 _tightBoundingRectOfFirstLine];
      Width = CGRectGetWidth(v12);

      v5 = v5 + Width;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (v2)
  {
    result = sub_1E49986EC();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  result = sub_1E4915C80(a1);
  if (__OFSUB__(v11, result))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

double sub_1E4915B88(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
  {
    v3 = 0;
    v4 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E691BDE0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v5 _tightBoundingRectOfFirstLine];
      Height = CGRectGetHeight(v10);

      if (Height > v4)
      {
        v4 = Height;
      }

      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return 0.0;
}

unint64_t sub_1E4915C80(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v8 = result;
  v9 = sub_1E49986EC();
  result = v8;
  if (!v9)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1E691BDE0](0, result);
LABEL_6:
    v2 = v1;
    v3 = [v1 text];

    if (v3)
    {
      v4 = sub_1E4997EEC();
      v6 = v5;

      if (v4 == 9142498 && v6 == 0xA300000000000000)
      {

        return 1;
      }

      v7 = sub_1E499884C();

      if (v7)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1E4915DA4()
{
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon) != 1)
  {
    return;
  }

  v8 = *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel);
  v9 = *(v8 + 16);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v19 = *(v8 + 16);

    v58 = MEMORY[0x1E691BDE0](2, v9);

    v10 = v58;
  }

  else
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      goto LABEL_41;
    }

    v10 = *(v9 + 48);
  }

  v57 = v10;
  [v10 _tightBoundingRectOfFirstLine];
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v15 = sub_1E49143E8();
  if (v15 >> 62)
  {
    v9 = v15;
    v20 = sub_1E49986EC();
    v15 = v9;
    v2 = &RollingTimeView;
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  v2 = 0x1EE2BB000;
  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = *(v15 + 32); ; i = MEMORY[0x1E691BDE0](0))
  {
    v17 = i;

    v18 = [v17 superview];

    if (v18)
    {

      goto LABEL_47;
    }

LABEL_16:
    v9 = v57;
    [v0 bringSubviewToFront_];
    v21 = [v9 layer];

    [v21 setCompositingFilter_];
    v1 = *(v0 + *(v2 + 384));
    v3 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
LABEL_44:
      v2 = sub_1E49986EC();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2)
    {
      v22 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1E691BDE0](v22, v1);
        }

        else
        {
          if (v22 >= *(v3 + 16))
          {
            goto LABEL_38;
          }

          v23 = *(v1 + 8 * v22 + 32);
        }

        v24 = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        [v9 addSubview_];

        ++v22;
        if (v25 == v2)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_27:

    sub_1E4918954();
    v59 = v26;
    v27 = sub_1E491411C();
    v2 = v27;
    v56 = v0;
    if (!(v27 >> 62))
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        break;
      }

      goto LABEL_29;
    }

    v28 = sub_1E49986EC();
    if (!v28)
    {
      break;
    }

LABEL_29:
    v29 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1E691BDE0](v29, v2);
      }

      else
      {
        if (v29 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v30 = *(v2 + 8 * v29 + 32);
      }

      v31 = v30;
      v0 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v32 = [v9 layer];
      [v32 addSublayer_];

      sub_1E491319C(v59);
      v33 = sub_1E499809C();

      [v31 setFilters_];

      ++v29;
      if (v0 == v28)
      {
        goto LABEL_46;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_46:

  v0 = v56;
  v2 = &RollingTimeView;
LABEL_47:
  v34 = *(v2 + 384);
  v35 = *(v0 + v34);
  v36 = v35 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
    if (v35 < 0)
    {
      v46 = *(v0 + v34);
    }

    v37 = sub_1E49986EC();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37)
  {
    if ((v35 & 0xC000000000000001) == 0)
    {
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v38 = *(v35 + 32);
        goto LABEL_53;
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v38 = MEMORY[0x1E691BDE0](0, v35);

LABEL_53:
    [v38 frame];
    [v38 setFrame_];
  }

  v35 = *(v0 + v34);
  if (v35 >> 62)
  {
    v39 = sub_1E49986EC();
    if (!v39)
    {
      goto LABEL_62;
    }

LABEL_56:
    v36 = v39 - 1;
    if (__OFSUB__(v39, 1))
    {
      __break(1u);
      goto LABEL_92;
    }

    if ((v35 & 0xC000000000000001) != 0)
    {
LABEL_93:

      v54 = MEMORY[0x1E691BDE0](v36, v35);

      v40 = v54;
    }

    else
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      if (v36 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v40 = *(v35 + 8 * v36 + 32);
    }

    v35 = v40;
    v61.origin.x = v4;
    v61.origin.y = v5;
    v61.size.width = v6;
    v61.size.height = v7;
    v41 = v5 + CGRectGetHeight(v61);
    [v35 frame];
    v42 = v41 - CGRectGetHeight(v62);
    [v35 frame];
    [v35 setFrame_];

    goto LABEL_62;
  }

  v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
    goto LABEL_56;
  }

LABEL_62:
  v43 = sub_1E491411C();
  if (v43 >> 62)
  {
    v35 = v43;
    v47 = sub_1E49986EC();
    v43 = v35;
    if (!v47)
    {
      goto LABEL_74;
    }

LABEL_64:
    if ((v43 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1E691BDE0](0);
    }

    else
    {
      if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v44 = *(v43 + 32);
    }

    v45 = v44;

    [v45 frame];
    [v45 setFrame_];

    goto LABEL_75;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_64;
  }

LABEL_74:

LABEL_75:
  v35 = *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___redModeColonLayers);
  if (v35 >> 62)
  {
    if (v35 < 0)
    {
      v53 = *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___redModeColonLayers);
    }

    v48 = sub_1E49986EC();
    if (!v48)
    {
      goto LABEL_83;
    }

LABEL_77:
    v0 = v48 - 1;
    if (!__OFSUB__(v48, 1))
    {
      if ((v35 & 0xC000000000000001) == 0)
      {
        if ((v0 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v0 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v49 = *(v35 + 8 * v0 + 32);
LABEL_82:
          v50 = v49;
          v63.origin.x = v4;
          v63.origin.y = v5;
          v63.size.width = v6;
          v63.size.height = v7;
          v51 = v5 + CGRectGetHeight(v63);
          [v50 frame];
          v52 = v51 - CGRectGetHeight(v64);
          [v50 frame];
          [v50 setFrame_];

          goto LABEL_83;
        }

        __break(1u);
        return;
      }

LABEL_99:

      v55 = MEMORY[0x1E691BDE0](v0, v35);

      v49 = v55;
      goto LABEL_82;
    }

    goto LABEL_96;
  }

  v48 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v48)
  {
    goto LABEL_77;
  }

LABEL_83:
}

void sub_1E49164D8(unint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_transformModifier) == 1)
  {
    if (a1 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1E691BDE0](j, a1);
        }

        else
        {
          if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v5 = *(a1 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (qword_1ECF7EB30 != -1)
        {
          swift_once();
        }

        v8 = off_1ECF800F0;
        v9 = *(off_1ECF800F0 + 2);
        if (HIDWORD(v9))
        {
          goto LABEL_18;
        }

        v10 = arc4random_uniform(v9);
        if (v8[2] <= v10)
        {
          goto LABEL_19;
        }

        v11 = v8[v10 + 4];
        CLKDegreesToRadians();
        CGAffineTransformMakeRotation(&v13, v12);
        [v6 setTransform_];

        if (v7 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }
  }
}

uint64_t sub_1E491665C(uint64_t a1)
{
  v2 = v1;
  v93 = sub_1E4997DBC();
  v92 = *(v93 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93, v5);
  v90 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1E4997DFC();
  v89 = *(v91 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v91, v8);
  v88 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeString(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v85[1] = v14;
  v86 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = v85 - v18;
  v20 = *&v1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel];
  v87 = a1;
  sub_1E49184D8(a1, v85 - v18);
  v85[0] = v11;
  (*(v11 + 56))(v19, 0, 1, v10);
  v21 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  swift_beginAccess();
  sub_1E491853C(v19, v20 + v21);
  swift_endAccess();
  v99 = v20;
  sub_1E48DB6AC();
  sub_1E48C1338(v19, &qword_1ECF815D0, &unk_1E499A370);
  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
  v2[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating] = 1;
  v22 = dispatch_group_create();
  v101 = v2;
  v23 = *(*&v2[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel] + 16);
  if (v23 >> 62)
  {
    goto LABEL_39;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v100 = v22;

  if (v24)
  {
    v98 = v23 & 0xC000000000000001;
    v97 = v23 & 0xFFFFFFFFFFFFFF8;
    v94 = &v107;
    v25 = -0.0333333333;
    v26 = 0.0333333333;
    v27 = 4;
    v28 = &off_1E8761000;
    v95 = v24;
    v96 = v23;
    while (1)
    {
      v56 = v27 - 4;
      if (v98)
      {
        v22 = MEMORY[0x1E691BDE0](v27 - 4, v23);
      }

      else
      {
        if (v56 >= *(v97 + 16))
        {
          goto LABEL_37;
        }

        v22 = *(v23 + 8 * v27);
      }

      v57 = v22;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v84 = v22;
        v24 = sub_1E49986EC();
        v22 = v84;
        goto LABEL_3;
      }

      v58 = *(v99 + 16);
      if ((v58 & 0xC000000000000001) != 0)
      {
        v70 = *(v99 + 16);

        v59 = MEMORY[0x1E691BDE0](v27 - 4, v58);
      }

      else
      {
        if (v56 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v59 = *(v58 + 8 * v27);
      }

      v60 = [v57 v28[314]];
      if (v60)
      {
        v61 = v60;
        v62 = sub_1E4997EEC();
        v64 = v63;
      }

      else
      {
        v62 = 0;
        v64 = 0;
      }

      v65 = [v59 v28[314]];
      v103 = v27 - 3;
      if (v65)
      {
        v66 = v65;
        v67 = sub_1E4997EEC();
        v69 = v68;

        if (v64)
        {
          if (v69)
          {
            if (v62 == v67 && v64 == v69)
            {

              v29 = 1;
            }

            else
            {
              v29 = sub_1E499884C();
            }

            goto LABEL_6;
          }

LABEL_28:

          v29 = 0;
          goto LABEL_6;
        }

        if (v69)
        {
          goto LABEL_28;
        }
      }

      else if (v64)
      {
        goto LABEL_28;
      }

      v29 = 1;
LABEL_6:
      v102 = v29;
      [v59 _tightBoundingRectOfFirstLine];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      [v101 bounds];
      Height = UIRectGetHeight(v38, v39, v40, v41);
      v111.origin.x = v31;
      v111.origin.y = v33;
      v111.size.width = v35;
      v111.size.height = v37;
      v43 = (Height - CGRectGetHeight(v111)) * 0.5 - v33;
      v25 = v25 + v26;
      v44 = v100;
      dispatch_group_enter(v100);
      v45 = objc_opt_self();
      v46 = swift_allocObject();
      *(v46 + 16) = v59;
      v47 = (v29 & 1) == 0;
      *(v46 + 24) = v47;
      *(v46 + 32) = v43;
      *(v46 + 40) = v57;
      v109 = sub_1E49185B4;
      v110 = v46;
      aBlock = MEMORY[0x1E69E9820];
      v106 = 1107296256;
      v107 = sub_1E4913064;
      v108 = &block_descriptor_4;
      v48 = _Block_copy(&aBlock);
      v49 = v59;
      v50 = v57;

      v51 = swift_allocObject();
      *(v51 + 16) = v47;
      *(v51 + 24) = v50;
      *(v51 + 32) = v49;
      *(v51 + 40) = v44;
      v109 = sub_1E49185E0;
      v110 = v51;
      aBlock = MEMORY[0x1E69E9820];
      v106 = 1107296256;
      v107 = sub_1E491720C;
      v108 = &block_descriptor_52;
      v52 = _Block_copy(&aBlock);
      v53 = v49;
      v54 = v50;
      v55 = v44;

      [v45 animateWithDuration:0 delay:v48 usingSpringWithDamping:v52 initialSpringVelocity:2.0 options:v25 animations:0.6 completion:0.0];

      _Block_release(v52);
      _Block_release(v48);
      if ((v102 & 1) == 0)
      {
        v26 = 0.0833333333;
      }

      ++v27;
      v23 = v96;
      v28 = &off_1E8761000;
      if (v103 == v95)
      {
        goto LABEL_33;
      }
    }
  }

  v25 = -0.0333333333;
LABEL_33:

  Strong = swift_unknownObjectWeakLoadStrong();
  v72 = v100;
  if (Strong)
  {
    sub_1E4996144(v100, v25);
    swift_unknownObjectRelease();
  }

  sub_1E48D9CFC(0, &qword_1ECF809E0, 0x1E69E9610);
  v73 = sub_1E499839C();
  v74 = v86;
  sub_1E49184D8(v87, v86);
  v75 = (*(v85[0] + 80) + 24) & ~*(v85[0] + 80);
  v76 = swift_allocObject();
  v77 = v101;
  *(v76 + 16) = v101;
  sub_1E48BF0EC(v74, v76 + v75);
  v109 = sub_1E49185F0;
  v110 = v76;
  aBlock = MEMORY[0x1E69E9820];
  v106 = 1107296256;
  v107 = sub_1E4913064;
  v108 = &block_descriptor_58;
  v78 = _Block_copy(&aBlock);
  v79 = v77;
  v80 = v88;
  sub_1E4997DDC();
  v104 = MEMORY[0x1E69E7CC0];
  sub_1E4918654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF814B0, &qword_1E49A5AE0);
  sub_1E49186AC();
  v81 = v90;
  v82 = v93;
  sub_1E499850C();
  sub_1E499836C();
  _Block_release(v78);

  (*(v92 + 8))(v81, v82);
  (*(v89 + 8))(v80, v91);
}

id sub_1E4917018(void *a1, char a2, void *a3)
{
  [a1 transform];
  v7 = v15;
  v6 = v16;
  v9 = v17;
  v8 = v18;
  v11 = v19;
  v10 = v20;
  v15 = 0x3FF0000000000000;
  v16 = 0;
  v17 = 0;
  v18 = 0x3FF0000000000000;
  v19 = 0;
  v20 = 0;
  [a1 setTransform_];
  if (a2)
  {
    [a1 frame];
    [a1 setFrame_];
    [a3 frame];
    CGRectGetHeight(v21);
    [a3 frame];
    [a3 setFrame_];
    return [a1 setTransform_];
  }

  else
  {
    v15 = 0x3FF0000000000000;
    v16 = 0;
    v17 = 0;
    v18 = 0x3FF0000000000000;
    v19 = 0;
    v20 = 0;
    [a3 setTransform_];
    [a1 frame];
    v14 = v13;
    [a3 frame];
    [a3 setFrame_];
    return [a3 setTransform_];
  }
}

void sub_1E491719C(int a1, char a2, void *a3, id a4, dispatch_group_t group)
{
  if (a2)
  {
    [a4 transform];
    [a3 setTransform_];
  }

  dispatch_group_leave(group);
}

uint64_t sub_1E491720C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_1E4917260(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - v7;
  a1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating] = 0;
  v9 = *&a1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel];
  sub_1E49184D8(a2, &v15 - v7);
  v10 = type metadata accessor for TimeString(0);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  v11 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  swift_beginAccess();
  sub_1E491853C(v8, v9 + v11);
  swift_endAccess();
  sub_1E48DB6AC();
  sub_1E48C1338(v8, &qword_1ECF815D0, &unk_1E499A370);
  v12 = *(*&a1[OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel] + 16);

  sub_1E49164D8(v13);

  [a1 setNeedsLayout];
  return [a1 layoutIfNeeded];
}

id sub_1E49173E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RollingTimeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RollingTimeView()
{
  result = qword_1EE2BB158;
  if (!qword_1EE2BB158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4917564()
{
  result = sub_1E4996F4C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for TimeString(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1E4917688()
{
  result = qword_1ECF800F8;
  if (!qword_1ECF800F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF800F8);
  }

  return result;
}

uint64_t sub_1E49176DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD30, &unk_1E49A0DB0);
  v0 = swift_allocObject();
  v1 = _swift_stdlib_malloc_size(v0);
  v2 = v1 - 32;
  if (v1 < 32)
  {
    v2 = v1 - 25;
  }

  v0[2] = 11;
  v0[3] = 2 * (v2 >> 3);
  result = sub_1E4952D08(&v4, (v0 + 4), 11, -5, 5);
  if (result == 11)
  {
    v4 = v0;
    result = sub_1E4917784(5uLL);
    off_1ECF800F0 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4917784(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E48EA4E4(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1E491780C@<X0>(double *a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a3;
  v70 = a2;
  v68 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80118, &qword_1E49A0DF0);
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v72 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80120, &qword_1E49A0DF8);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v71 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v65 - v30;
  v32 = *(v4 + 16);
  swift_beginAccess();
  os_unfair_lock_lock(v32 + 4);
  swift_endAccess();
  swift_beginAccess();
  v33 = *(v4 + 24);
  if (*(v33 + 16))
  {

    v34 = sub_1E4947FC0(a1);
    if (v35)
    {
      v36 = *(*(v33 + 56) + 8 * v34);
      swift_retain_n();

      goto LABEL_6;
    }
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80128, &qword_1E49A0E00);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v36 = swift_allocObject();
  v40 = *(*v36 + 96);
  v41 = type metadata accessor for TimeString(0);
  (*(*(v41 - 8) + 56))(v36 + v40, 1, 1, v41);
  v42 = *(*v36 + 104);
  type metadata accessor for CPUnfairLock();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v36 + v42) = v43;
  *(v36 + *(*v36 + 112)) = MEMORY[0x1E69E7CC8];
  *(v36 + *(*v36 + 120)) = 0;
  swift_beginAccess();
  swift_retain_n();
  v44 = *(v5 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v5 + 24);
  *(v5 + 24) = 0x8000000000000000;
  sub_1E498605C(v36, a1, isUniquelyReferenced_nonNull_native);
  *(v5 + 24) = v76;
  swift_endAccess();
LABEL_6:
  v75 = v16;
  v46 = *(*v36 + 104);
  v47 = *(v36 + v46);
  swift_beginAccess();
  os_unfair_lock_lock(v47 + 4);
  swift_endAccess();
  v48 = *(*v36 + 120);
  v49 = *(v36 + v48);
  if ((v49 & 1) == 0)
  {
    *(v36 + v48) = 1;
  }

  v50 = *(v36 + v46);
  swift_beginAccess();
  os_unfair_lock_unlock(v50 + 4);
  swift_endAccess();
  v51 = type metadata accessor for TimeString(0);
  v52 = *(*(v51 - 8) + 56);
  v52(v31, 1, 1, v51);
  if ((v49 & 1) == 0)
  {
    swift_beginAccess();
    os_unfair_lock_unlock(v32 + 4);
    v53 = swift_endAccess();
    v70(v53);
    swift_beginAccess();
    os_unfair_lock_lock(v32 + 4);
    swift_endAccess();
    v52(v28, 0, 1, v51);
    sub_1E4918E4C(v28, v31);
  }

  v67 = v32;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC68, &unk_1E49A0DE0);
  v55 = *(v54 - 8);
  v56 = v55;
  v69 = *(v55 + 56);
  v70 = (v55 + 56);
  v69(v22, 1, 1, v54);
  v57 = *(v36 + v46);
  swift_beginAccess();
  os_unfair_lock_lock(v57 + 4);
  v58 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v58, v59);
  *(&v65 - 2) = v36;
  *(&v65 - 1) = v31;
  v66 = v31;
  (*(v73 + 104))(v72, *MEMORY[0x1E69E8650], v74);
  v60 = v71;
  sub_1E49981BC();
  sub_1E48C1338(v22, &qword_1ECF80120, &qword_1E49A0DF8);
  v69(v60, 0, 1, v54);
  sub_1E4918DDC(v60, v22);
  v61 = *(v36 + v46);
  swift_beginAccess();
  os_unfair_lock_unlock(v61 + 4);
  swift_endAccess();
  v62 = v75;
  sub_1E48C12D0(v22, v75, &qword_1ECF80120, &qword_1E49A0DF8);
  result = (*(v56 + 48))(v62, 1, v54);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1E48C1338(v22, &qword_1ECF80120, &qword_1E49A0DF8);
    (*(v56 + 32))(v68, v62, v54);
    sub_1E48C1338(v66, &qword_1ECF815D0, &unk_1E499A370);
    v64 = v67;
    swift_beginAccess();
    os_unfair_lock_unlock(v64 + 4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E4917F70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = sub_1E49985AC();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = sub_1E49985DC();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = sub_1E49989DC();
    v22 = sub_1E49989DC();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *sub_1E4918244(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD38, &qword_1E49A0280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_1E49182C0(void *a1)
{
  v2 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter;
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter);
  *(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter) = a1;
  v4 = a1;

  v5 = *(*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel) + 16);
  if (v5 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E49986EC())
  {

    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E691BDE0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 layer];
        [v11 setCompositingFilter_];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_12:

    v5 = *(*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel) + 16);
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v19 = *(*(v1 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel) + 16);
      }

      v12 = sub_1E49986EC();
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v12)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E691BDE0](v13, v5);
      }

      else
      {
        if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v14 = *(v5 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [v14 layer];
      [v17 setCompositingFilter_];

      ++v13;
      if (v16 == v12)
      {
        goto LABEL_23;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_23:
}

uint64_t sub_1E49184D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeString(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E491853C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1E49185F0()
{
  v1 = *(type metadata accessor for TimeString(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1E4917260(v2, v3);
}

unint64_t sub_1E4918654()
{
  result = qword_1ECF80100;
  if (!qword_1ECF80100)
  {
    sub_1E4997DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80100);
  }

  return result;
}

unint64_t sub_1E49186AC()
{
  result = qword_1ECF80108;
  if (!qword_1ECF80108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF814B0, &qword_1E49A5AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80108);
  }

  return result;
}

void sub_1E4918710()
{
  sub_1E4996F3C();
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_overlap) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_blurColon) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_compositingFilter) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_transformModifier) = 0;
  v1 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeLabel;
  v2 = type metadata accessor for RollingTimeLabel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = sub_1E48DB2FC();
  *(v5 + 3) = 0;
  *(v5 + 4) = 0;
  *(v5 + 2) = v6;
  v7 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  v8 = type metadata accessor for TimeString(0);
  v9 = *(*(v8 - 8) + 56);
  v9(&v5[v7], 1, 1, v8);
  *(v0 + v1) = v5;
  v10 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_offScreenTimeLabel;
  v11 = *(v2 + 48);
  v12 = *(v2 + 52);
  v13 = swift_allocObject();
  v14 = sub_1E48DB2FC();
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  *(v13 + 2) = v14;
  v9(&v13[OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString], 1, 1, v8);
  *(v0 + v10) = v13;
  v15 = OBJC_IVAR____TtC11ClockPoster15RollingTimeView_maxScale;
  v16 = objc_opt_self();
  v17 = [v16 mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = [v16 mainScreen];
  [v20 nativeScale];
  v22 = v21;

  *(v0 + v15) = v19 / v22;
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___redModeColonLayers) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView____lazy_storage___colonBlurViews) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster15RollingTimeView_timeTextListenerTask) = 0;
  sub_1E49986DC();
  __break(1u);
}

double sub_1E4918954()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v1 = sub_1E499809C();
  [v0 setValue:v1 forKey:*MEMORY[0x1E6979C28]];

  v2 = sub_1E499701C();
  v3 = *MEMORY[0x1E6979990];
  [v0 setValue:v2 forKey:*MEMORY[0x1E6979990]];

  v4 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v5 = sub_1E499826C();
  [v4 setValue:v5 forKey:*MEMORY[0x1E6979BA8]];

  v6 = sub_1E499810C();
  [v4 setValue:v6 forKey:*MEMORY[0x1E6979B78]];

  v7 = sub_1E499810C();
  [v4 setValue:v7 forKey:*MEMORY[0x1E6979AC8]];

  v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v9 = sub_1E499701C();
  [v8 setValue:v9 forKey:v3];

  v10 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v16[0] = xmmword_1E49A0C60;
  v16[1] = xmmword_1E49A0C70;
  v16[2] = xmmword_1E49A0C80;
  v16[3] = xmmword_1E49A0C90;
  v16[4] = xmmword_1E499A170;
  v11 = [objc_opt_self() valueWithCAColorMatrix_];
  [v10 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

  v12 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  GenericRGB = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 0.08);
  [v12 setValue:GenericRGB forKey:*MEMORY[0x1E6979AA0]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v14 = swift_allocObject();
  *&result = 5;
  *(v14 + 16) = xmmword_1E49A0CA0;
  *(v14 + 32) = v0;
  *(v14 + 40) = v4;
  *(v14 + 48) = v8;
  *(v14 + 56) = v10;
  *(v14 + 64) = v12;
  return result;
}

uint64_t sub_1E4918C54(uint64_t a1)
{
  v4 = *(sub_1E4996F4C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E48BFD3C;

  return sub_1E4914CCC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E4918D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4918DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80120, &qword_1E49A0DF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4918E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

int8x8_t sub_1E4918ECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E48C8304(a1, v10);
  v4 = sub_1E491FF10(0x1000001uLL);
  v5 = sub_1E491FF10(0x1000001uLL);
  sub_1E48C8360(a1);
  v6 = v10[5];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v6;
  *(a2 + 96) = v11;
  v7 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v7;
  v8 = v10[3];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v8;
  *(a2 + 112) = 0;
  result = vbsl_s8(vceq_s32(__PAIR64__(v5, v4), 0x100000001000000), 0x469C4000461C4000, vadd_f32(vmul_f32(vmul_f32(vcvt_f32_u32(__PAIR64__(v5, v4)), vdup_n_s32(0x33800000u)), 0x461C3C00461C4000), 0x461C440000000000));
  *(a2 + 100) = result;
  return result;
}

uint64_t sub_1E4918FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801C8, &qword_1E49A1190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E491FF9C();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v17[7] = 0;
  sub_1E48EB55C();
  sub_1E499878C();
  v25[4] = v22;
  v25[5] = v23;
  v26 = v24;
  v25[0] = v18;
  v25[1] = v19;
  v25[2] = v20;
  v25[3] = v21;
  LOBYTE(v18) = 3;
  sub_1E499876C();
  v29 = v12;
  LOBYTE(v18) = 1;
  sub_1E499877C();
  v27 = v13;
  LOBYTE(v18) = 2;
  sub_1E499877C();
  v15 = v14;
  (*(v6 + 8))(v10, v5);
  v28 = v15;
  sub_1E48C9F14(v25, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1E48C9F70(v25);
}

uint64_t sub_1E4919254(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801D8, &qword_1E49A1198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E491FF9C();
  sub_1E49989CC();
  v16[15] = 0;
  sub_1E48EB5B0();
  sub_1E49987DC();
  if (v2)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v12 = *(v3 + 100);
  v16[14] = 1;
  sub_1E49987CC();
  v13 = *(v3 + 104);
  v16[13] = 2;
  sub_1E49987CC();
  v15 = *(v3 + 112);
  v16[12] = 3;
  sub_1E49987BC();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E4919430()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4919508()
{
  *v0;
  *v0;
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E49195CC()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E49196A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E4920700();
  *a2 = result;
  return result;
}

void sub_1E49196D0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1802465132;
  v4 = 0x756F72676B636162;
  v5 = 0xEE0064656553646ELL;
  if (*v1 != 2)
  {
    v4 = 0x6D69546573696F6ELL;
    v5 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x756F726765726F66;
    v2 = 0xEE0064656553646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1E4919764()
{
  v1 = 1802465132;
  v2 = 0x756F72676B636162;
  if (*v0 != 2)
  {
    v2 = 0x6D69546573696F6ELL;
  }

  if (*v0)
  {
    v1 = 0x756F726765726F66;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E49197F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4920700();
  *a1 = result;
  return result;
}

uint64_t sub_1E4919828(uint64_t a1)
{
  v2 = sub_1E491FF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4919864(uint64_t a1)
{
  v2 = sub_1E491FF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E49198DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 7957363 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    if (a1 == 0x6D75727463657073 && a2 == 0xE800000000000000)
    {
    }

    else
    {
      v9 = sub_1E499884C();

      if ((v9 & 1) == 0)
      {
        v7 = 2;
        goto LABEL_7;
      }
    }

    v7 = 1;
  }

LABEL_7:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v7;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  return result;
}

void sub_1E49199C4(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(a2 + 80) = a3;
  sub_1E4919F78(v70);
  sub_1E4920CEC(v70, &v67);
  if (v68 == 1)
  {
    v12 = *(a1 + 112);
    v13 = *(a1 + 100);
    *(a2 + 64) = &type metadata for ColorProvider;
    v14 = sub_1E4920D78();
    *(a2 + 72) = v14;
    v15 = swift_allocObject();
    *(a2 + 40) = v15;
    *(v15 + 40) = &type metadata for NoiseColorChannelGenerator;
    *(v15 + 48) = &off_1F5E841B8;
    v16 = swift_allocObject();
    *(v15 + 16) = v16;
    v16[5] = &type metadata for PerlinNoiseGenerator;
    v17 = sub_1E4920D24();
    v16[6] = v17;
    v18 = swift_allocObject();
    v16[2] = v18;
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;
    *(v18 + 28) = xmmword_1E49A0E30;
    *(v15 + 80) = &type metadata for FixedColorChannel;
    *(v15 + 88) = &off_1F5E841A8;
    *(v15 + 56) = 1051260355;
    v19 = sub_1E4920638(0.66, 1.0);
    *(v15 + 120) = &type metadata for ColorCurveChannelProvider;
    *(v15 + 128) = &off_1F5E84198;
    *(v15 + 96) = v20;
    *(v15 + 104) = v19;
    v21 = *(a1 + 104);
    *(a2 + 24) = &type metadata for ColorProvider;
    *(a2 + 32) = v14;
    v22 = swift_allocObject();
    *a2 = v22;
    *(v22 + 40) = &type metadata for NoiseColorChannelGenerator;
    *(v22 + 48) = &off_1F5E841B8;
    v23 = swift_allocObject();
    *(v22 + 16) = v23;
    v23[5] = &type metadata for PerlinNoiseGenerator;
    v23[6] = v17;
    v24 = swift_allocObject();
    v23[2] = v24;
    *(v24 + 16) = v12;
    *(v24 + 24) = v21;
    *(v24 + 28) = xmmword_1E49A0E30;
    *(v22 + 80) = &type metadata for FixedColorChannel;
    *(v22 + 88) = &off_1F5E841A8;
    *(v22 + 56) = 1059648963;
    v25 = sub_1E4920638(0.0, 0.66);
    *(v22 + 120) = &type metadata for ColorCurveChannelProvider;
    *(v22 + 128) = &off_1F5E84198;
    *(v22 + 96) = v26;
    *(v22 + 104) = v25;
    goto LABEL_5;
  }

  if (!v68)
  {
    v5 = sub_1E4937638();
    v6 = LODWORD(v5);
    v8 = v7;
    *(a2 + 64) = &type metadata for ColorCurve;
    v9 = sub_1E4920DFC();
    *(a2 + 72) = v9;
    *(a2 + 40) = v6;
    *(a2 + 48) = v8;
    v10 = sub_1E493799C();
    *(a2 + 24) = &type metadata for ColorCurve;
    *(a2 + 32) = v9;
    *a2 = LODWORD(v10);
    *(a2 + 8) = v11;
LABEL_5:
    sub_1E48C9F70(a1);
    sub_1E4920DCC(v70);
    return;
  }

  sub_1E48B7448(&v67, v64);
  sub_1E48B7448(&v69, v61);
  v27 = *(a1 + 112);
  v28 = *(a1 + 100);
  v59 = &type metadata for NoiseColorChannelGenerator;
  v60 = &off_1F5E841B8;
  v29 = swift_allocObject();
  *&v58 = v29;
  v30 = v65;
  v31 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v32 = sub_1E491E9D0(v30, v31);
  if ((v32 + -0.2) < 0.0)
  {
    v32 = v32 + 1.0;
  }

  v33 = v32 + -0.2;
  v34 = v32 + 0.2;
  if ((v32 + -0.2) > (v32 + 0.2))
  {
    __break(1u);
  }

  else
  {
    v29[5] = &type metadata for PerlinNoiseGenerator;
    v35 = sub_1E4920D24();
    v29[6] = v35;
    v36 = swift_allocObject();
    v29[2] = v36;
    *(v36 + 16) = v27;
    *(v36 + 24) = v28;
    *(v36 + 28) = v33;
    *(v36 + 32) = v34;
    *(v36 + 36) = 0x3F8000003F333333;
    v37 = v65;
    v38 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    v39 = sub_1E491A110(v37, v38);
    *(a2 + 64) = &type metadata for ColorProvider;
    v40 = sub_1E4920D78();
    *(a2 + 72) = v40;
    v41 = swift_allocObject();
    *(a2 + 40) = v41;
    *(v41 + 80) = &type metadata for FixedColorChannel;
    *(v41 + 88) = &off_1F5E841A8;
    *(v41 + 56) = v39;
    v42 = sub_1E4920638(0.66, 1.0);
    *(v41 + 120) = &type metadata for ColorCurveChannelProvider;
    *(v41 + 128) = &off_1F5E84198;
    *(v41 + 96) = v43;
    *(v41 + 104) = v42;
    sub_1E48B7448(&v58, v41 + 16);
    v44 = *(a1 + 104);
    v59 = &type metadata for NoiseColorChannelGenerator;
    v60 = &off_1F5E841B8;
    v45 = swift_allocObject();
    *&v58 = v45;
    v46 = v62;
    v47 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v48 = sub_1E491E9D0(v46, v47);
    if ((v48 + -0.2) < 0.0)
    {
      v48 = v48 + 1.0;
    }

    v49 = v48 + -0.2;
    v50 = v48 + 0.2;
    if ((v48 + -0.2) <= (v48 + 0.2))
    {
      v45[5] = &type metadata for PerlinNoiseGenerator;
      v45[6] = v35;
      v51 = swift_allocObject();
      v45[2] = v51;
      *(v51 + 16) = v27;
      *(v51 + 24) = v44;
      *(v51 + 28) = v49;
      *(v51 + 32) = v50;
      *(v51 + 36) = 0x3F8000003F333333;
      v52 = v62;
      v53 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v54 = sub_1E491A110(v52, v53);
      *(a2 + 24) = &type metadata for ColorProvider;
      *(a2 + 32) = v40;
      v55 = swift_allocObject();
      *a2 = v55;
      *(v55 + 80) = &type metadata for FixedColorChannel;
      *(v55 + 88) = &off_1F5E841A8;
      *(v55 + 56) = v54;
      v56 = sub_1E4920638(0.0, 0.66);
      *(v55 + 120) = &type metadata for ColorCurveChannelProvider;
      *(v55 + 128) = &off_1F5E84198;
      *(v55 + 96) = v57;
      *(v55 + 104) = v56;
      sub_1E48C9F70(a1);
      sub_1E4920DCC(v70);
      sub_1E48B7448(&v58, v55 + 16);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      return;
    }
  }

  __break(1u);
}

void sub_1E4919F78(_OWORD *a1@<X8>)
{
  memset(v18, 0, sizeof(v18));
  v19 = 3;
  v2 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(v18);
  if (v2)
  {
    v3 = 0xEE00656C62617A69;
    v4 = 0x6D6F747375636E75;
  }

  else
  {
    v4 = sub_1E4921538();
    if (!v3)
    {
      v5 = sub_1E4921408();
      v6 = sub_1E49348B8(v5);
      v8 = v7;

      v4 = v6;
      v3 = v8;
    }
  }

  sub_1E49198DC(v4, v3, &v20);
  if (*(&v21 + 1) != 2)
  {
    v13 = v23;
    v27 = v22;
    v28 = v23;
    v14 = v24;
    v29 = v24;
    v16 = v20;
    v15 = v21;
    v25 = v20;
    v26 = v21;
    a1[2] = v22;
    a1[3] = v13;
    a1[4] = v14;
    *a1 = v16;
    a1[1] = v15;
    return;
  }

  sub_1E48C1338(&v20, &qword_1ECF80228, &qword_1E49A1358);
  v9 = *(sub_1E4921408() + 16);

  v10 = sub_1E4921408();
  v11 = *(v10 + 16);
  if (v9 == 1)
  {
    if (!v11)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = 32;
  }

  else
  {
    if (v11 < 2)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v12 = 72;
  }

  sub_1E48CD210(v10 + v12, v18);

  v17 = sub_1E4921408();
  if (!*(v17 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1E48CD210(v17 + 32, a1);

  sub_1E48B7448(v18, a1 + 40);
}

float sub_1E491A110(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0.0;
  v2 = (*(a2 + 40))();
  [v2 getHue:0 saturation:v5 brightness:0 alpha:0];

  v3 = *MEMORY[0x1E69E9840];
  return v5[0];
}

uint64_t sub_1E491A1A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RollingClockViewModel();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1E48B81A4();
  *(v1 + 24) = xmmword_1E49A0E40;
  v7 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  v8 = type metadata accessor for CurrentLocationSolarPosition(0);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  v9 = v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible) = 0;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode) = 0;
  v10 = v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 255;
  *(v10 + 104) = 0;
  *(v10 + 112) = 0;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode) = 0;
  v11 = [objc_opt_self() mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  sub_1E48CE338(v23, v13, v15);
  v16 = (v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  v17 = v23[3];
  v18 = v23[4];
  v19 = v23[1];
  v16[2] = v23[2];
  v16[3] = v17;
  v20 = v23[5];
  v16[4] = v18;
  v16[5] = v20;
  *v16 = v23[0];
  v16[1] = v19;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) = 0;
  *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedModeCurve) = 0;
  sub_1E4996FFC();
  sub_1E48C9F14(a1, v22);
  sub_1E491AEE0(v22);
  sub_1E491ACE0(v2, a1);
  sub_1E48C9F70(a1);
  return v2;
}

uint64_t sub_1E491A394(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E491A4B4(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;

    return sub_1E491B770();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }
}

void sub_1E491A5E0(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E491A6E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v8, v7, &unk_1ECF816F0, &qword_1E49A5090);
  v9 = sub_1E492074C(v7, a1);
  sub_1E48C1338(v7, &unk_1ECF816F0, &qword_1E49A5090);
  if (v9)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v11);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v7, &unk_1ECF816F0, &qword_1E49A5090);
    swift_beginAccess();
    sub_1E48EC048(v7, v1 + v8, &unk_1ECF816F0, &qword_1E49A5090);
    swift_endAccess();
    sub_1E491BBBC();
    sub_1E48C1338(v7, &unk_1ECF816F0, &qword_1E49A5090);
  }

  return sub_1E48C1338(a1, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E491A8EC(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E491AA54(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E491ABBC(void *a1, float a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a1) == a2)
  {
    *(v5 + *a1) = a2;

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E491ACE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v15[-v6 - 8];
  sub_1E48C9F14(a2, v15);
  sub_1E491AEE0(v15);
  v8 = sub_1E499816C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_1E499814C();

  v10 = sub_1E499813C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;

  sub_1E498DD1C(0, 0, v7, &unk_1E49A1340, v11);
}

uint64_t sub_1E491AE50()
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v1 = *(v0 + 16);
}

uint64_t sub_1E491AEE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v45 - v7);
  v9 = type metadata accessor for CurrentLocationSolarPosition(0);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48C9F14(a1, v63);
  sub_1E491D6E4(v63);
  sub_1E48C9F14(a1, v63);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel___observationRegistrar;
  v56[0] = v1;
  v14 = sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  sub_1E49199C4(v63, v56, *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode));
  swift_getKeyPath();
  v53 = v1;
  v54 = v56;
  v63[0] = v1;
  sub_1E4996FBC();

  sub_1E48C1338(v56, &qword_1ECF801E0, &qword_1E49A5370);
  v15 = *(a1 + 112);
  if (*(v1 + 24) == v15)
  {
    *(v1 + 24) = v15;
    sub_1E491B770();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v17);
    *(&v45 - 2) = v1;
    *(&v45 - 1) = v15;
    v63[0] = v1;
    sub_1E4996FBC();
  }

  swift_getKeyPath();
  v63[0] = v1;
  sub_1E4996FCC();

  v18 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v2 + v18, v8, &unk_1ECF816F0, &qword_1E49A5090);
  if ((*(v50 + 48))(v8, 1, v51) == 1)
  {
    sub_1E48C9F70(a1);
    v19 = &unk_1ECF816F0;
    v20 = &qword_1E49A5090;
    v21 = v8;
    return sub_1E48C1338(v21, v19, v20);
  }

  v47 = a1;
  v48 = 0;
  sub_1E4920BBC(v8, v52, type metadata accessor for CurrentLocationSolarPosition);
  swift_getKeyPath();
  v63[0] = v2;
  sub_1E4996FCC();

  v22 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  v49 = v22;
  result = sub_1E48C12D0(v2 + v22, v56, &qword_1ECF801E0, &qword_1E49A5370);
  v50 = v13;
  v51 = v14;
  if (v57)
  {
    v25 = v60;
    v24 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v26 = *(v24 + 32);
    v67 = v25;
    v68 = v24;
    __swift_allocate_boxed_opaque_existential_0(v66);
    v27 = type metadata accessor for SolarPosition(0);
    v28 = v52;
    v26(v52, v27, v25, v24);
    v29 = v57;
    v30 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v31 = *(v30 + 32);
    v64 = v29;
    v65 = v30;
    __swift_allocate_boxed_opaque_existential_0(v63);
    v46 = v27;
    v31(v28, v27, v29, v30);
    v69 = v62;
    sub_1E4920094(v56);
    v32 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v32, v33);
    *(&v45 - 2) = v2;
    *(&v45 - 1) = v63;
    v56[0] = v2;
    v34 = v48;
    sub_1E4996FBC();
    v48 = v34;

    sub_1E48C1338(v63, &qword_1ECF801E0, &qword_1E49A5370);
    swift_getKeyPath();
    v63[0] = v2;
    sub_1E4996FCC();

    result = sub_1E48C12D0(v2 + v49, v56, &qword_1ECF801E0, &qword_1E49A5370);
    if (v57)
    {
      v35 = v52;
      v55[0] = *(v52 + *(v46 + 24));
      v36 = v60;
      v37 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v38 = *(v37 + 32);
      v67 = v36;
      v68 = v37;
      __swift_allocate_boxed_opaque_existential_0(v66);
      v39 = MEMORY[0x1E69E6448];
      v38(v55, MEMORY[0x1E69E6448], v36, v37);
      v40 = v57;
      v41 = v58;
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v42 = *(v41 + 32);
      v64 = v40;
      v65 = v41;
      __swift_allocate_boxed_opaque_existential_0(v63);
      v42(v55, v39, v40, v41);
      v69 = v62;
      sub_1E4920094(v56);
      v43 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v43, v44);
      *(&v45 - 2) = v2;
      *(&v45 - 1) = v63;
      v56[0] = v2;
      sub_1E4996FBC();

      sub_1E48C9F70(v47);
      sub_1E4920C8C(v35, type metadata accessor for CurrentLocationSolarPosition);
      v19 = &qword_1ECF801E0;
      v20 = &qword_1E49A5370;
      v21 = v63;
      return sub_1E48C1338(v21, v19, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E491B630@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  v8[0] = v1;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  result = sub_1E48C12D0(v2 + v4, v8, &qword_1ECF7F338, &qword_1E499B8D0);
  if (v9 == 0xFF)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    sub_1E4996FCC();

    v6 = *(v2 + 24);
    v7 = v10;
    sub_1E48C8304(v8, a1);
    *(a1 + 112) = v6;
    *(a1 + 100) = v7;
    return sub_1E48C9F70(v8);
  }

  return result;
}

uint64_t sub_1E491B770()
{
  v1 = v0;
  swift_getKeyPath();
  v21[0] = v0;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v2 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  result = sub_1E48C12D0(v1 + v2, v14, &qword_1ECF801E0, &qword_1E49A5370);
  if (v15)
  {
    swift_getKeyPath();
    v21[0] = v1;
    sub_1E4996FCC();

    v13 = *(v1 + 24);
    v4 = v18;
    v5 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v6 = *(v5 + 32);
    v22[3] = v4;
    v22[4] = v5;
    __swift_allocate_boxed_opaque_existential_0(v22);
    v7 = MEMORY[0x1E69E63B0];
    v6(&v13, MEMORY[0x1E69E63B0], v4, v5);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = *(v9 + 32);
    v21[3] = v8;
    v21[4] = v9;
    __swift_allocate_boxed_opaque_existential_0(v21);
    v10(&v13, v7, v8, v9);
    v23 = v20;
    sub_1E4920094(v14);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v12);
    v14[0] = v1;
    sub_1E4996FBC();

    return sub_1E48C1338(v21, &qword_1ECF801E0, &qword_1E49A5370);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1E491B9E0()
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  return *(v0 + 24);
}

double sub_1E491BA6C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1E491BB28()
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  return *(v0 + 32);
}

uint64_t sub_1E491BBBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = (v39 - v5);
  v7 = type metadata accessor for CurrentLocationSolarPosition(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel___observationRegistrar;
  v51[0] = v1;
  v14 = sub_1E491E98C(&qword_1ECF7F2F0);
  v42 = v13;
  sub_1E4996FCC();

  v15 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v15, v6, &unk_1ECF816F0, &qword_1E49A5090);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v16 = &unk_1ECF816F0;
    v17 = &qword_1E49A5090;
    v18 = v6;
    return sub_1E48C1338(v18, v16, v17);
  }

  sub_1E4920BBC(v6, v12, type metadata accessor for CurrentLocationSolarPosition);
  swift_getKeyPath();
  v51[0] = v1;
  v41 = v14;
  sub_1E4996FCC();

  v19 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  v40 = v19;
  result = sub_1E48C12D0(v1 + v19, v44, &qword_1ECF801E0, &qword_1E49A5370);
  if (v45)
  {
    v21 = v48;
    v22 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v23 = *(v22 + 32);
    v55 = v21;
    v56 = v22;
    __swift_allocate_boxed_opaque_existential_0(v54);
    v24 = type metadata accessor for SolarPosition(0);
    v23(v12, v24, v21, v22);
    v25 = v45;
    v26 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v27 = *(v26 + 32);
    v52 = v25;
    v53 = v26;
    __swift_allocate_boxed_opaque_existential_0(v51);
    v27(v12, v24, v25, v26);
    v57 = v50;
    sub_1E4920094(v44);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v29);
    v39[-2] = v1;
    v39[-1] = v51;
    v44[0] = v1;
    sub_1E4996FBC();
    v39[1] = 0;

    sub_1E48C1338(v51, &qword_1ECF801E0, &qword_1E49A5370);
    swift_getKeyPath();
    v51[0] = v1;
    sub_1E4996FCC();

    result = sub_1E48C12D0(v1 + v40, v44, &qword_1ECF801E0, &qword_1E49A5370);
    if (v45)
    {
      v43[0] = *&v12[*(v24 + 24)];
      v30 = v48;
      v31 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v32 = *(v31 + 32);
      v55 = v30;
      v56 = v31;
      __swift_allocate_boxed_opaque_existential_0(v54);
      v33 = MEMORY[0x1E69E6448];
      v32(v43, MEMORY[0x1E69E6448], v30, v31);
      v34 = v45;
      v35 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v36 = *(v35 + 32);
      v52 = v34;
      v53 = v35;
      __swift_allocate_boxed_opaque_existential_0(v51);
      v36(v43, v33, v34, v35);
      v57 = v50;
      sub_1E4920094(v44);
      v37 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v37, v38);
      v39[-2] = v1;
      v39[-1] = v51;
      v44[0] = v1;
      sub_1E4996FBC();

      sub_1E4920C8C(v12, type metadata accessor for CurrentLocationSolarPosition);
      v16 = &qword_1ECF801E0;
      v17 = &qword_1E49A5370;
      v18 = v51;
      return sub_1E48C1338(v18, v16, v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E491C1C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v3, a1, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E491C288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_1E48C12D0(a2, &v11 - v7, &unk_1ECF816F0, &qword_1E49A5090);
  v9 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48EC048(v8, a1 + v9, &unk_1ECF816F0, &qword_1E49A5090);
  swift_endAccess();
  sub_1E491BBBC();
  return sub_1E48C1338(v8, &unk_1ECF816F0, &qword_1E49A5090);
}

uint64_t sub_1E491C384@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v3, a1, &qword_1ECF801E0, &qword_1E49A5370);
}

uint64_t sub_1E491C448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &qword_1ECF801E0, &qword_1E49A5370);
}

uint64_t sub_1E491C50C(uint64_t a1, uint64_t *a2)
{
  sub_1E48C12D0(a1, v5, &qword_1ECF801E0, &qword_1E49A5370);
  v3 = *a2;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FBC();

  return sub_1E48C1338(v5, &qword_1ECF801E0, &qword_1E49A5370);
}

uint64_t sub_1E491C600(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  sub_1E48EC048(a2, a1 + v4, &qword_1ECF801E0, &qword_1E49A5370);
  return swift_endAccess();
}

uint64_t sub_1E491C6DC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v1 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_1E491C784@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*sub_1E491C85C(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11ClockPoster14SolarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E491C67C();
  return sub_1E491C980;
}

void sub_1E491C980(void *a1)
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

double sub_1E491CA14()
{
  v1 = v0;
  v31 = type metadata accessor for SolarPosition(0);
  v2 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CurrentLocationSolarPosition(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v29 - v14;
  swift_getKeyPath();
  v32 = v0;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v16 = *(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 8);
  v18 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 32);
  v17 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 40);
  v19 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 48);
  v20 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 56);
  swift_getKeyPath();
  v32 = v1;
  v21 = v16;
  sub_1E4996FCC();

  v22 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v22, v15, &unk_1ECF816F0, &qword_1E49A5090);
  if ((*(v6 + 48))(v15, 1, v5))
  {
    sub_1E48C1338(v15, &unk_1ECF816F0, &qword_1E49A5090);
    v23 = 3.1416;
  }

  else
  {
    sub_1E4920C24(v15, v10, type metadata accessor for CurrentLocationSolarPosition);
    sub_1E48C1338(v15, &unk_1ECF816F0, &qword_1E49A5090);
    v24 = v30;
    sub_1E4920C24(v10, v30, type metadata accessor for SolarPosition);
    sub_1E4920C8C(v10, type metadata accessor for CurrentLocationSolarPosition);
    v25 = *(v24 + *(v31 + 24));
    sub_1E4920C8C(v24, type metadata accessor for SolarPosition);
    v23 = ((v25 + 0.5) * 3.1416) + ((v25 + 0.5) * 3.1416);
  }

  __sincosf_stret(v23);
  UIPointRoundToScale();
  v27 = v26;

  return v27;
}

uint64_t sub_1E491CE08(uint64_t result, char a2)
{
  v4 = result;
  if (*(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode) == (result & 1))
  {
    *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }

  if (*(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode) == (v4 & 1))
  {
    *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode) = v4 & 1;
    if (a2)
    {
      return result;
    }
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();

    if (a2)
    {
      return result;
    }
  }

  if (v4)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  if (*(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) == v9)
  {
    *(v2 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) = v9;
    return sub_1E491DCC0();
  }

  else
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10, v11);
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }
}

void sub_1E491D0DC()
{
  v0 = *MEMORY[0x1E6979EB8];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 functionWithName_];

  qword_1ECF81960 = v3;
}

uint64_t sub_1E491D148(double a1)
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode;
  if ((*(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__shouldRenderRedMode) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1E4996FCC();

    if (*(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) != 0.0)
    {
      goto LABEL_5;
    }
  }

  swift_getKeyPath();
  sub_1E4996FCC();

  if (*(v1 + v3) == 1)
  {
    swift_getKeyPath();
    sub_1E4996FCC();

    if (*(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) != 1.0)
    {
LABEL_5:
      v4 = 0.0;
      v5 = 0.0;
      if (a1 < 1.2)
      {
        v5 = a1 / 1.2;
      }

      swift_getKeyPath();
      sub_1E4996FCC();

      if (!*(v1 + v3))
      {
        v5 = -v5;
      }

      swift_getKeyPath();
      sub_1E4996FCC();

      v6 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode);
      v7 = fminf(v5 + v6, 1.0);
      if (v7 >= 0.0)
      {
        v4 = v7;
      }

      if (v6 == v4)
      {
        *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode) = v4;
        sub_1E491DCC0();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v9);
        sub_1E4996FBC();
      }
    }
  }

  swift_getKeyPath();
  sub_1E4996FCC();

  v10 = a1 * 0.012 * *(v1 + 32);
  if (1.79769313e308 - v10 <= a1)
  {
    v12 = 0.0;
    if (*(v1 + 24) != 0.0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_1E4996FCC();

    v11 = *(v1 + 24);
    v12 = v10 + v11;
    if (v11 != v10 + v11)
    {
LABEL_16:
      v13 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v13, v14);
      sub_1E4996FBC();
    }
  }

  *(v1 + 24) = v12;
  return sub_1E491B770();
}

uint64_t sub_1E491D55C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  return sub_1E48C12D0(v5 + v3, a1, &qword_1ECF7F338, &qword_1E499B8D0);
}

uint64_t sub_1E491D620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &qword_1ECF7F338, &qword_1E499B8D0);
}

uint64_t sub_1E491D6E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v3, v8, &qword_1ECF7F338, &qword_1E499B8D0);
  v4 = sub_1E49201FC(v8, a1);
  sub_1E48C1338(v8, &qword_1ECF7F338, &qword_1E499B8D0);
  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    v8[0] = v1;
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v8, &qword_1ECF7F338, &qword_1E499B8D0);
    swift_beginAccess();
    sub_1E49203B8(v8, v1 + v3);
    swift_endAccess();
  }

  return sub_1E48C1338(a1, &qword_1ECF7F338, &qword_1E499B8D0);
}

uint64_t sub_1E491D88C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext;
  swift_beginAccess();
  sub_1E48EC048(a2, a1 + v4, &qword_1ECF7F338, &qword_1E499B8D0);
  return swift_endAccess();
}

uint64_t sub_1E491D91C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  return *(v2 + *a2);
}

uint64_t sub_1E491D9A8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  *a3 = *(v5 + *a2);
  return result;
}

double sub_1E491DA48@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v11 = v1;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 48);
  v13 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 32);
  v14 = v3;
  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 80);
  v15 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 64);
  v16 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 16);
  v11 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  v12 = v5;
  sub_1E4920120(&v11, &v10);
  v6 = v14;
  a1[2] = v13;
  a1[3] = v6;
  v7 = v16;
  a1[4] = v15;
  a1[5] = v7;
  result = *&v11;
  v9 = v12;
  *a1 = v11;
  a1[1] = v9;
  return result;
}

uint64_t sub_1E491DB1C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v15[0] = v3;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v4 = (v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  v5 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 16);
  v15[0] = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  v15[1] = v5;
  v6 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 80);
  v8 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 32);
  v7 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 48);
  v15[4] = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 64);
  v15[5] = v6;
  v15[2] = v8;
  v15[3] = v7;
  v9 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit);
  a2[1] = v9;
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[5];
  a2[4] = v4[4];
  a2[5] = v12;
  a2[2] = v10;
  a2[3] = v11;
  return sub_1E4920120(v15, &v14);
}

uint64_t sub_1E491DBF0(__int128 *a1, uint64_t *a2)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v2 = *a2;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FBC();
}

uint64_t sub_1E491DCC0()
{
  if (qword_1ECF7EB38 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81960;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedMode);
  [v1 _solveForInput_];
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedModeCurve) == v3)
  {
    *(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedModeCurve) = v3;
    return sub_1E491DE70();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E491DE70()
{
  v1 = v0;
  swift_getKeyPath();
  v9[0] = v0;
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  v2 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette;
  swift_beginAccess();
  result = sub_1E48C12D0(v1 + v2, v7, &qword_1ECF801E0, &qword_1E49A5370);
  if (v7[3])
  {
    swift_getKeyPath();
    v9[0] = v1;
    sub_1E4996FCC();

    v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__percentRedModeCurve);
    sub_1E48CD210(&v8, v10);
    sub_1E48CD210(v7, v9);
    v10[10] = v4;
    sub_1E4920094(v7);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v6);
    v7[0] = v1;
    sub_1E4996FBC();

    return sub_1E48C1338(v9, &qword_1ECF801E0, &qword_1E49A5370);
  }

  else
  {
    __break(1u);
  }

  return result;
}

float sub_1E491E06C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  return *(v2 + *a2);
}

float sub_1E491E0F8@<S0>(uint64_t *a1@<X0>, void *a2@<X4>, float *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E491E198()
{
  v1 = *(v0 + 2);

  sub_1E48C1338(&v0[OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition], &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C1338(&v0[OBJC_IVAR____TtC11ClockPoster14SolarViewModel__colorPalette], &qword_1ECF801E0, &qword_1E49A5370);
  sub_1E48C1338(&v0[OBJC_IVAR____TtC11ClockPoster14SolarViewModel__initialContext], &qword_1ECF7F338, &qword_1E499B8D0);

  v2 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel___observationRegistrar;
  v3 = sub_1E499700C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SolarViewModel()
{
  result = qword_1ECF80188;
  if (!qword_1ECF80188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E491E304()
{
  sub_1E491E428();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1E499700C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E491E428()
{
  if (!qword_1ECF80198)
  {
    type metadata accessor for CurrentLocationSolarPosition(255);
    v0 = sub_1E49984BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF80198);
    }
  }
}

__n128 __swift_memcpy84_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E491E4A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 84))
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

uint64_t sub_1E491E4EC(uint64_t result, int a2, int a3)
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
      *(result + 84) = 1;
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

    *(result + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E491E580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 120))
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

uint64_t sub_1E491E5C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E491E638(uint64_t a1)
{
  result = sub_1E491E660();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E491E660()
{
  result = qword_1ECF801A0;
  if (!qword_1ECF801A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801A0);
  }

  return result;
}

unint64_t sub_1E491E6B4(void *a1)
{
  a1[1] = sub_1E491E6F4();
  a1[2] = sub_1E48F0294();
  a1[3] = sub_1E491E748();
  result = sub_1E491E79C();
  a1[4] = result;
  return result;
}

unint64_t sub_1E491E6F4()
{
  result = qword_1ECF801A8;
  if (!qword_1ECF801A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801A8);
  }

  return result;
}

unint64_t sub_1E491E748()
{
  result = qword_1ECF801B0;
  if (!qword_1ECF801B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801B0);
  }

  return result;
}

unint64_t sub_1E491E79C()
{
  result = qword_1ECF801B8;
  if (!qword_1ECF801B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801B8);
  }

  return result;
}

uint64_t sub_1E491E7F0()
{
  swift_getKeyPath();
  sub_1E491E98C(&qword_1ECF7F2F0);
  sub_1E4996FCC();

  return *(v0 + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDisplayStyleRedMode);
}

void (*sub_1E491E890(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1E491C85C(v2);
  return sub_1E48C2910;
}

uint64_t sub_1E491E904(uint64_t a1)
{
  result = sub_1E491E98C(&qword_1ECF7F2F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E491E948(uint64_t a1)
{
  result = sub_1E491E98C(&qword_1ECF801C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E491E98C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SolarViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

float sub_1E491E9D0(uint64_t a1, uint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0.0;
  v2 = (*(a2 + 40))();
  [v2 getHue:v5 saturation:0 brightness:0 alpha:0];

  v3 = *MEMORY[0x1E69E9840];
  return v5[0];
}

uint64_t sub_1E491EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF813E0, &unk_1E49A57F0);
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = *(*(type metadata accessor for LocationAccuracy(0) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81420, &qword_1E49A5A80);
  v4[17] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = type metadata accessor for CurrentLocation(0);
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF81410, &qword_1E499E3E0);
  v4[23] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v17 = type metadata accessor for CurrentLocationSolarPosition(0);
  v4[25] = v17;
  v18 = *(v17 - 8);
  v4[26] = v18;
  v19 = *(v18 + 64) + 15;
  v4[27] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801F0, &qword_1E49A5CE0);
  v4[28] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v4[30] = v22;
  v23 = *(v22 - 8);
  v4[31] = v23;
  v24 = *(v23 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB70, &unk_1E499E400) - 8) + 64) + 15;
  v4[37] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB78, &qword_1E499E410);
  v4[38] = v26;
  v27 = *(v26 - 8);
  v4[39] = v27;
  v28 = *(v27 + 64) + 15;
  v4[40] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801F8, &qword_1E49A1348);
  v4[41] = v29;
  v30 = *(v29 - 8);
  v4[42] = v30;
  v31 = *(v30 + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = sub_1E499814C();
  v4[45] = sub_1E499813C();
  v33 = sub_1E499811C();
  v4[46] = v33;
  v4[47] = v32;

  return MEMORY[0x1EEE6DFA0](sub_1E491EED8, v33, v32);
}

uint64_t sub_1E491EED8()
{
  if (qword_1ECF7EAE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81918;
  *(v0 + 384) = qword_1ECF81918;

  return MEMORY[0x1EEE6DFA0](sub_1E491EF70, v1, 0);
}

uint64_t sub_1E491EF70()
{
  v1 = v0[48];
  sub_1E48F4FA4(v0[40]);
  v2 = v0[46];
  v3 = v0[47];

  return MEMORY[0x1EEE6DFA0](sub_1E491EFD8, v2, v3);
}

uint64_t sub_1E491EFD8()
{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[12];
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[49] = 0;
  v6 = v0[44];
  v7 = sub_1E499813C();
  v0[50] = v7;
  v8 = *(MEMORY[0x1E69E8678] + 4);
  v9 = swift_task_alloc();
  v0[51] = v9;
  *v9 = v0;
  v9[1] = sub_1E491F0E4;
  v10 = v0[43];
  v11 = v0[41];
  v12 = v0[37];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v12, v7, v13, v11);
}

uint64_t sub_1E491F0E4()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v7 = *v0;

  v4 = *(v1 + 376);
  v5 = *(v1 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1E491F228, v5, v4);
}

uint64_t sub_1E491F228()
{
  v1 = v0[37];
  if ((*(v0[31] + 48))(v1, 1, v0[30]) == 1)
  {
    v2 = v0[45];
    (*(v0[42] + 8))(v0[43], v0[41]);

LABEL_8:
    v27 = v0[43];
    v28 = v0[40];
    v30 = v0[36];
    v29 = v0[37];
    v32 = v0[34];
    v31 = v0[35];
    v34 = v0[32];
    v33 = v0[33];
    v35 = v0[29];
    v36 = v0[27];
    v123 = v0[24];
    v124 = v0[22];
    v125 = v0[21];
    v126 = v0[18];
    v128 = v0[16];
    v130 = v0[15];

    v37 = v0[1];

    return v37();
  }

  v3 = v0[12];
  sub_1E4920B4C(v1, v0[36]);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v22 = v0[45];
    v24 = v0[42];
    v23 = v0[43];
    v25 = v0[41];
    v26 = v0[36];

    sub_1E48C1338(v26, &unk_1ECF816F0, &qword_1E49A5090);
    (*(v24 + 8))(v23, v25);
    goto LABEL_8;
  }

  v5 = Strong;
  v6 = v0[35];
  v7 = v0[34];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[25];
  v11 = v0[26];
  sub_1E48C12D0(v0[36], v6, &unk_1ECF816F0, &qword_1E49A5090);
  v129 = v5;
  v12 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarPosition;
  swift_beginAccess();
  v127 = v12;
  v13 = v129 + v12;
  v14 = v129;
  sub_1E48C12D0(v13, v7, &unk_1ECF816F0, &qword_1E49A5090);
  v15 = *(v9 + 48);
  sub_1E48C12D0(v7, v8, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C12D0(v6, v8 + v15, &unk_1ECF816F0, &qword_1E49A5090);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v10) != 1)
  {
    v39 = v0[25];
    sub_1E48C12D0(v0[29], v0[33], &unk_1ECF816F0, &qword_1E49A5090);
    if (v16(v8 + v15, 1, v39) == 1)
    {
      v40 = v0[33];
      sub_1E48C1338(v0[34], &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E4920C8C(v40, type metadata accessor for CurrentLocationSolarPosition);
      goto LABEL_13;
    }

    v44 = v0[33];
    sub_1E4920BBC(v8 + v15, v0[27], type metadata accessor for CurrentLocationSolarPosition);
    if ((sub_1E4996D2C() & 1) == 0)
    {
      goto LABEL_31;
    }

    v45 = v0[33];
    v46 = v0[27];
    v47 = type metadata accessor for SolarEvent(0);
    if (*(v45 + *(v47 + 20)) != *(v46 + *(v47 + 20)))
    {
      goto LABEL_31;
    }

    if (*(v45 + *(v47 + 24)) != *(v46 + *(v47 + 24)))
    {
      goto LABEL_31;
    }

    v48 = v47;
    v49 = type metadata accessor for SolarCycle(0);
    v50 = v49[5];
    v51 = v45 + v50;
    v52 = v46 + v50;
    if ((sub_1E4996D2C() & 1) == 0)
    {
      goto LABEL_31;
    }

    if (*(v51 + *(v48 + 20)) != *(v52 + *(v48 + 20)))
    {
      goto LABEL_31;
    }

    if (*(v51 + *(v48 + 24)) != *(v52 + *(v48 + 24)))
    {
      goto LABEL_31;
    }

    v53 = v49[6];
    v54 = v0[33] + v53;
    v55 = v0[27] + v53;
    if ((sub_1E4996D2C() & 1) == 0 || *(v54 + *(v48 + 20)) != *(v55 + *(v48 + 20)) || *(v54 + *(v48 + 24)) != *(v55 + *(v48 + 24)) || (v56 = v49[8], v57 = v0[33] + v56, v58 = v0[27] + v56, (sub_1E4996D2C() & 1) == 0) || *(v57 + *(v48 + 20)) != *(v58 + *(v48 + 20)) || *(v57 + *(v48 + 24)) != *(v58 + *(v48 + 24)) || (v59 = v0[33], v60 = v0[27], v61 = type metadata accessor for SolarPosition(0), *(v59 + *(v61 + 20)) != *(v60 + *(v61 + 20))) || *(v59 + *(v61 + 24)) != *(v60 + *(v61 + 24)))
    {
LABEL_31:
      v71 = v0[34];
      sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v71, &unk_1ECF816F0, &qword_1E49A5090);
LABEL_32:
      v72 = v0[29];
      sub_1E4920C8C(v0[33], type metadata accessor for CurrentLocationSolarPosition);
      v42 = &unk_1ECF816F0;
      v43 = &qword_1E49A5090;
      v41 = v72;
      goto LABEL_33;
    }

    v62 = v0[24];
    v63 = v0[19];
    v64 = v0[20];
    v65 = *(v0[25] + 20);
    v66 = *(v0[23] + 48);
    sub_1E48C12D0(v59 + v65, v62, &qword_1ECF7F8A0, &unk_1E499D7B0);
    sub_1E48C12D0(v60 + v65, v62 + v66, &qword_1ECF7F8A0, &unk_1E499D7B0);
    v67 = *(v64 + 48);
    if (v67(v62, 1, v63) == 1)
    {
      v68 = v0[34];
      v69 = v0[19];
      sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v68, &unk_1ECF816F0, &qword_1E49A5090);
      if (v67(v62 + v66, 1, v69) == 1)
      {
LABEL_30:
        v70 = v0[33];
        sub_1E48C1338(v0[24], &qword_1ECF7F8A0, &unk_1E499D7B0);
        sub_1E4920C8C(v70, type metadata accessor for CurrentLocationSolarPosition);
        v14 = v129;
        goto LABEL_6;
      }

      goto LABEL_39;
    }

    v84 = v0[19];
    sub_1E48C12D0(v0[24], v0[22], &qword_1ECF7F8A0, &unk_1E499D7B0);
    if (v67(v62 + v66, 1, v84) == 1)
    {
      v85 = v0[34];
      v86 = v0[22];
      sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v85, &unk_1ECF816F0, &qword_1E49A5090);
      sub_1E4920C8C(v86, type metadata accessor for CurrentLocation);
LABEL_39:
      v87 = v0[24];
      v88 = &unk_1ECF81410;
      v89 = &qword_1E499E3E0;
LABEL_50:
      sub_1E48C1338(v87, v88, v89);
      v14 = v129;
      goto LABEL_32;
    }

    v90 = v0[21];
    v91 = v0[22];
    sub_1E4920BBC(v62 + v66, v90, type metadata accessor for CurrentLocation);
    sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
    v92 = *v91;
    v93 = *v90;
    if (sub_1E499848C())
    {
      v94 = v0[21];
      v95 = v0[18];
      v96 = v0[13];
      v97 = v0[14];
      v98 = *(v0[19] + 20);
      v99 = *(v0[17] + 48);
      sub_1E4920C24(v0[22] + v98, v95, type metadata accessor for LocationAccuracy);
      sub_1E4920C24(v94 + v98, v95 + v99, type metadata accessor for LocationAccuracy);
      v100 = *(v97 + 48);
      if (v100(v95, 1, v96) == 1)
      {
        v101 = v0[34];
        v102 = v0[13];
        sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
        sub_1E48C1338(v101, &unk_1ECF816F0, &qword_1E49A5090);
        if (v100(v95 + v99, 1, v102) == 1)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v107 = v0[13];
        sub_1E4920C24(v0[18], v0[16], type metadata accessor for LocationAccuracy);
        v108 = v100(v95 + v99, 1, v107);
        v109 = v0[34];
        v110 = v0[27];
        v111 = v0[16];
        if (v108 != 1)
        {
          v117 = v0[14];
          v116 = v0[15];
          v118 = v0[13];
          (*(v117 + 32))(v116, v95 + v99, v118);
          sub_1E48D9CFC(0, &qword_1ECF80200, 0x1E696B058);
          v119 = sub_1E49968AC();
          v120 = *(v117 + 8);
          v120(v116, v118);
          sub_1E4920C8C(v110, type metadata accessor for CurrentLocationSolarPosition);
          sub_1E48C1338(v109, &unk_1ECF816F0, &qword_1E49A5090);
          v120(v111, v118);
          if (v119)
          {
LABEL_52:
            v122 = v0[21];
            v121 = v0[22];
            sub_1E4920C8C(v0[18], type metadata accessor for LocationAccuracy);
            sub_1E4920C8C(v122, type metadata accessor for CurrentLocation);
            sub_1E4920C8C(v121, type metadata accessor for CurrentLocation);
            goto LABEL_30;
          }

          sub_1E4920C8C(v0[18], type metadata accessor for LocationAccuracy);
LABEL_49:
          v114 = v0[24];
          v115 = v0[22];
          sub_1E4920C8C(v0[21], type metadata accessor for CurrentLocation);
          sub_1E4920C8C(v115, type metadata accessor for CurrentLocation);
          v88 = &qword_1ECF7F8A0;
          v89 = &unk_1E499D7B0;
          v87 = v114;
          goto LABEL_50;
        }

        v112 = v0[13];
        v113 = v0[14];
        sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
        sub_1E48C1338(v109, &unk_1ECF816F0, &qword_1E49A5090);
        (*(v113 + 8))(v111, v112);
      }

      v106 = v0[18];
      v104 = &unk_1ECF81420;
      v105 = &qword_1E49A5A80;
    }

    else
    {
      v103 = v0[34];
      sub_1E4920C8C(v0[27], type metadata accessor for CurrentLocationSolarPosition);
      v104 = &unk_1ECF816F0;
      v105 = &qword_1E49A5090;
      v106 = v103;
    }

    sub_1E48C1338(v106, v104, v105);
    goto LABEL_49;
  }

  v17 = v0[25];
  sub_1E48C1338(v0[34], &unk_1ECF816F0, &qword_1E49A5090);
  if (v16(v8 + v15, 1, v17) != 1)
  {
LABEL_13:
    v41 = v0[29];
    v42 = &qword_1ECF801F0;
    v43 = &qword_1E49A5CE0;
LABEL_33:
    sub_1E48C1338(v41, v42, v43);
    v21 = v0[49];
    v73 = v0[35];
    v74 = v0[36];
    swift_getKeyPath();
    v75 = swift_task_alloc();
    *(v75 + 16) = v14;
    *(v75 + 24) = v73;
    v0[11] = v14;
    sub_1E491E98C(&qword_1ECF7F2F0);
    sub_1E4996FBC();

    sub_1E48C1338(v74, &unk_1ECF816F0, &qword_1E49A5090);

    goto LABEL_34;
  }

LABEL_6:
  v18 = v0[35];
  v19 = v0[36];
  v20 = v0[32];
  sub_1E48C1338(v0[29], &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C12D0(v18, v20, &unk_1ECF816F0, &qword_1E49A5090);
  swift_beginAccess();
  sub_1E48EC048(v20, v14 + v127, &unk_1ECF816F0, &qword_1E49A5090);
  swift_endAccess();
  sub_1E491BBBC();

  sub_1E48C1338(v20, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C1338(v19, &unk_1ECF816F0, &qword_1E49A5090);
  v21 = v0[49];
LABEL_34:
  sub_1E48C1338(v0[35], &unk_1ECF816F0, &qword_1E49A5090);
  v0[49] = v21;
  v76 = v0[44];
  v77 = sub_1E499813C();
  v0[50] = v77;
  v78 = *(MEMORY[0x1E69E8678] + 4);
  v79 = swift_task_alloc();
  v0[51] = v79;
  *v79 = v0;
  v79[1] = sub_1E491F0E4;
  v80 = v0[43];
  v81 = v0[41];
  v82 = v0[37];
  v83 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v82, v77, v83, v81);
}

unint64_t sub_1E491FF10(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x1E691CEE0](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x1E691CEE0](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E491FF9C()
{
  result = qword_1ECF801D0;
  if (!qword_1ECF801D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF801D0);
  }

  return result;
}

void sub_1E492017C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC11ClockPoster14SolarViewModel__solarOrbit;
  v3 = *(v2 + 8);
  v4 = *v1;
  *(v2 + 16) = v1[1];
  v5 = v1[5];
  v7 = v1[2];
  v6 = v1[3];
  *(v2 + 64) = v1[4];
  *(v2 + 80) = v5;
  *(v2 + 32) = v7;
  *(v2 + 48) = v6;
  *v2 = v4;
  sub_1E4920120(v1, &v8);
}

uint64_t sub_1E49201FC(uint64_t a1, uint64_t a2)
{
  sub_1E48C12D0(a1, v14, &qword_1ECF7F338, &qword_1E499B8D0);
  sub_1E48C12D0(a2, v15, &qword_1ECF7F338, &qword_1E499B8D0);
  if (v14[96] == 0xFF)
  {
    if (v16 == 0xFF)
    {
      sub_1E48C1338(v14, &qword_1ECF7F338, &qword_1E499B8D0);
      return 0;
    }

    goto LABEL_6;
  }

  sub_1E48C12D0(v14, v10, &qword_1ECF7F338, &qword_1E499B8D0);
  if (v16 == 0xFF)
  {
    sub_1E48C9F70(v10);
LABEL_6:
    sub_1E48C1338(v14, &qword_1ECF801E8, &qword_1E49A1290);
    return 1;
  }

  v7[4] = v15[4];
  v7[5] = v15[5];
  v8 = v16;
  v9 = v17;
  v7[0] = v15[0];
  v7[1] = v15[1];
  v7[2] = v15[2];
  v7[3] = v15[3];
  if ((_s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0() & 1) != 0 && v11 == *(&v8 + 1) && v12 == *(&v8 + 2))
  {
    v4 = v13;
    v5 = v9;
    sub_1E48C9F70(v7);
    v6 = v4 != v5;
  }

  else
  {
    sub_1E48C9F70(v7);
    v6 = 1;
  }

  sub_1E48C9F70(v10);
  sub_1E48C1338(v14, &qword_1ECF7F338, &qword_1E499B8D0);
  return v6;
}

uint64_t sub_1E49203B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F338, &qword_1E499B8D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4920494()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11ClockPoster14SolarViewModel__isDebuggingHUDVisible;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

char *sub_1E49204F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E4906ED8(0, v2, 0);
    result = v13;
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 2);
      v6 = *v4;
      v7 = 0.25;
      if (*(v4 - 4) > 1u)
      {
        if (*(v4 - 4) == 2)
        {
          v9 = 180.0;
        }

        else
        {
          v7 = 0.5;
          v9 = 270.0;
        }
      }

      else
      {
        v8 = 0.0;
        if (*(v4 - 4))
        {
          goto LABEL_10;
        }

        v7 = 0.75;
        v9 = 360.0;
      }

      v8 = v7;
      v7 = v9 / 360.0;
      if (v8 > (v9 / 360.0))
      {
        __break(1u);
        return result;
      }

LABEL_10:
      v14 = result;
      v11 = *(result + 2);
      v10 = *(result + 3);
      if (v11 >= v10 >> 1)
      {
        sub_1E4906ED8((v10 > 1), v11 + 1, 1);
        result = v14;
      }

      *(result + 2) = v11 + 1;
      v12 = &result[8 * v11];
      *(v12 + 8) = v8 + (v5 * (v7 - v8));
      *(v12 + 9) = v6;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return sub_1E48D7398(result);
}

char *sub_1E4920638(float a1, float a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80220, &qword_1E49A1350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B6D0;
  strcpy((inited + 32), "fff?");
  *(inited + 40) = a1;
  *(inited + 44) = 0;
  *(inited + 48) = 1;
  *(inited + 52) = a2;
  *(inited + 56) = 1063675494;
  *(inited + 60) = 2;
  *(inited + 64) = a2;
  *(inited + 68) = 1036831949;
  *(inited + 72) = 3;
  *(inited + 76) = a1;
  v5 = sub_1E49204F0(inited);
  swift_setDeallocating();
  return v5;
}

uint64_t sub_1E4920700()
{
  v0 = sub_1E499873C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E492074C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationSolarPosition(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF801F0, &qword_1E49A5CE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v26 - v18;
  v21 = *(v20 + 56);
  sub_1E48C12D0(a1, &v26 - v18, &unk_1ECF816F0, &qword_1E49A5090);
  sub_1E48C12D0(a2, &v19[v21], &unk_1ECF816F0, &qword_1E49A5090);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_1E48C12D0(v19, v14, &unk_1ECF816F0, &qword_1E49A5090);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      sub_1E4920BBC(&v19[v21], v9, type metadata accessor for CurrentLocationSolarPosition);
      v24 = sub_1E48F778C(v14, v9);
      sub_1E4920C8C(v9, type metadata accessor for CurrentLocationSolarPosition);
      sub_1E4920C8C(v14, type metadata accessor for CurrentLocationSolarPosition);
      sub_1E48C1338(v19, &unk_1ECF816F0, &qword_1E49A5090);
      v23 = !v24;
      return v23 & 1;
    }

    sub_1E4920C8C(v14, type metadata accessor for CurrentLocationSolarPosition);
    goto LABEL_6;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_1E48C1338(v19, &qword_1ECF801F0, &qword_1E49A5CE0);
    v23 = 1;
    return v23 & 1;
  }

  sub_1E48C1338(v19, &unk_1ECF816F0, &qword_1E49A5090);
  v23 = 0;
  return v23 & 1;
}

double sub_1E4920A4C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

uint64_t sub_1E4920A5C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_1E4920A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E491EA64(a1, v4, v5, v6);
}

uint64_t sub_1E4920B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816F0, &qword_1E49A5090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4920BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4920C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4920C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4920D24()
{
  result = qword_1ECF80208;
  if (!qword_1ECF80208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80208);
  }

  return result;
}

unint64_t sub_1E4920D78()
{
  result = qword_1ECF80210;
  if (!qword_1ECF80210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80210);
  }

  return result;
}

unint64_t sub_1E4920DFC()
{
  result = qword_1ECF80218;
  if (!qword_1ECF80218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80218);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ClockPoster14SolarViewModelC5StyleO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1E4920E84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 80))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4920ED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1E4920F40(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E4920F9C()
{
  result = qword_1ECF80230;
  if (!qword_1ECF80230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80230);
  }

  return result;
}

unint64_t sub_1E4920FF4()
{
  result = qword_1ECF80238;
  if (!qword_1ECF80238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80238);
  }

  return result;
}

unint64_t sub_1E492104C()
{
  result = qword_1ECF80240;
  if (!qword_1ECF80240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80240);
  }

  return result;
}

uint64_t ClockFaceLook.identifier.getter()
{
  memset(v5, 0, sizeof(v5));
  v6 = 3;
  v0 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(v5);
  if (v0)
  {
    return 0x6D6F747375636E75;
  }

  result = sub_1E4921538();
  if (!v2)
  {
    v3 = sub_1E4921408();
    v4 = sub_1E49348B8(v3);

    return v4;
  }

  return result;
}

uint64_t sub_1E49211F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

uint64_t sub_1E492125C(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v10 = &v13 - v9;
  (*(a2 + 40))(a1, a2, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v5 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1E49213A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

uint64_t sub_1E4921408()
{
  sub_1E48C8304(v0, &v5);
  if (v7 > 1u)
  {
    if (v7 == 2)
    {

      sub_1E48B7448(&v5, v4);
      sub_1E48B7448(&v6, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C8, &unk_1E49A02E0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E499A180;
      sub_1E48CD210(v4, v1 + 32);
      sub_1E48B7448(v3, v1 + 72);
      __swift_destroy_boxed_opaque_existential_0Tm(v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (v7)
  {
    v1 = v5;
  }

  else
  {

    sub_1E48B7448(&v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C8, &unk_1E49A02E0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E499B670;
    sub_1E48B7448(v4, v1 + 32);
  }

  return v1;
}

uint64_t sub_1E4921538()
{
  sub_1E48C8304(v0, v3);
  if (v5 > 1u)
  {
    if (v5 != 2)
    {
      return 0;
    }

    v1 = v4[5];
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    if (v5)
    {
      v1 = v3[1];

      return v1;
    }

    v1 = v4[0];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  return v1;
}

char *ClockFaceLook.thumbnailView.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v41[-1] - v4;
  v6 = sub_1E499708C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v41[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E48C8304(v0, &v47);
  if (v49 <= 1u)
  {
    if (!v49)
    {

      sub_1E48B7448(&v47, v44);
      v12 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v13 = v45;
      v14 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v15 = *(v14 + 40);
      v16 = v12;
      v17 = v15(v13, v14);
      [v16 setBackgroundColor_];

LABEL_9:
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      return v16;
    }

    v6 = v47;

    if (*(v6 + 16))
    {
      sub_1E48CD210(v6 + 32, v44);
      v26 = v45;
      v27 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      v28 = (*(v27 + 40))(v26, v27);
      v21 = [v28 CGColor];

      sub_1E48CD210(v6 + 32, v41);

      v29 = v42;
      v30 = v43;
      __swift_project_boxed_opaque_existential_1(v41, v42);
      v24 = (*(v30 + 40))(v29, v30);
      v25 = [v24 CGColor];
      goto LABEL_8;
    }

    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_11;
  }

  if (v49 == 2)
  {

    sub_1E48B7448(&v47, v44);
    sub_1E48B7448(&v48, v41);
    v18 = v45;
    v19 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v20 = (*(v19 + 40))(v18, v19);
    v21 = [v20 CGColor];

    v22 = v42;
    v23 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v24 = (*(v23 + 40))(v22, v23);
    v25 = [v24 CGColor];
LABEL_8:
    v31 = v25;

    v32 = objc_allocWithZone(type metadata accessor for ClackFaceLookThumbnailView());
    v16 = sub_1E4923980(v21, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    goto LABEL_9;
  }

  if (qword_1EE2BB450 != -1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v34 = qword_1EE2BB458;
  v35 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v34 + v35, v5, &qword_1ECF7F008, &qword_1E499B170);
  v36 = *(v7 + 48);
  if (v36(v5, 1, v6) == 1)
  {
    sub_1E4904BF4(v11);
    if (v36(v5, 1, v6) != 1)
    {
      sub_1E48C1338(v5, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
  }

  v37 = sub_1E499706C();
  v38 = sub_1E499830C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1E48B0000, v37, v38, "Uncustomizable view. Thumbnail view should never be shown for editing", v39, 2u);
    MEMORY[0x1E691CED0](v39, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
  return [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
}

id ClockFaceLook.primaryUIColor.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v48 - v9;
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v48 - v19;
  v21 = sub_1E4921408();
  if (*(v21 + 16))
  {
    sub_1E48CD210(v21 + 32, v57);

    sub_1E48B7448(v57, &aBlock);
    v22 = *(&v51 + 1);
    v23 = v52;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v51 + 1));
    v24 = (*(v23 + 40))(v22, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  }

  else
  {

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    aBlock = 0u;
    v51 = 0u;
    v56 = 3;
    v25 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
    sub_1E48C8360(&aBlock);
    if (v25)
    {
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v26 = qword_1EE2BB458;
      v27 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v26 + v27, v10, &qword_1ECF7F008, &qword_1E499B170);
      v28 = *(v12 + 48);
      if (v28(v10, 1, v11) == 1)
      {
        sub_1E4904BF4(v20);
        if (v28(v10, 1, v11) != 1)
        {
          sub_1E48C1338(v10, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v12 + 32))(v20, v10, v11);
      }

      v32 = sub_1E499706C();
      v33 = sub_1E499830C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1E48B0000, v32, v33, "This primaryUIColor shouldn't be used for uncustomizable looks.", v34, 2u);
        MEMORY[0x1E691CED0](v34, -1, -1);
      }

      (*(v12 + 8))(v20, v11);
    }

    else
    {
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v29 = qword_1EE2BB458;
      v30 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v29 + v30, v7, &qword_1ECF7F008, &qword_1E499B170);
      v31 = *(v12 + 48);
      if (v31(v7, 1, v11) == 1)
      {
        sub_1E4904BF4(v17);
        if (v31(v7, 1, v11) != 1)
        {
          sub_1E48C1338(v7, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*(v12 + 32))(v17, v7, v11);
      }

      sub_1E48C8304(v1, &aBlock);
      v35 = sub_1E499706C();
      v36 = sub_1E499830C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v49 = v38;
        *v37 = 136446210;
        v39 = sub_1E48C60D0();
        v41 = v40;
        sub_1E48C8360(&aBlock);
        v42 = sub_1E48CA094(v39, v41, &v49);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_1E48B0000, v35, v36, "Missing color for %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        MEMORY[0x1E691CED0](v38, -1, -1);
        MEMORY[0x1E691CED0](v37, -1, -1);
      }

      else
      {

        sub_1E48C8360(&aBlock);
      }

      (*(v12 + 8))(v17, v11);
    }

    v43 = [objc_opt_self() whiteColor];
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    v45 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    *&v52 = sub_1E492429C;
    *(&v52 + 1) = v44;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v51 = sub_1E4923F24;
    *(&v51 + 1) = &block_descriptor_5;
    v46 = _Block_copy(&aBlock);
    v24 = [v45 initWithDynamicProvider_];
    _Block_release(v46);
  }

  return v24;
}

uint64_t ClockFaceLook.hash(into:)()
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v34 = 3;
  v0 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(&v28);
  if ((v0 & 1) == 0)
  {
    sub_1E4921538();
    if (!v1)
    {
      v2 = sub_1E4921408();
      sub_1E49348B8(v2);
    }
  }

  sub_1E4997F5C();

  v3 = sub_1E4921408();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1E48CD210(v5, v27);
      sub_1E48CD210(v27, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD78, &qword_1E49A4A30);
      if (swift_dynamicCast())
      {
        v6 = v26[0];
        v7 = v26[1];
        v8 = v26[2];
        v9 = v26[3];
        if (v26[0] == 0.0)
        {
          v6 = 0.0;
        }

        MEMORY[0x1E691C170](*&v6);
        if (v7 == 0.0)
        {
          v10 = 0.0;
        }

        else
        {
          v10 = v7;
        }

        MEMORY[0x1E691C170](*&v10);
        if (v8 == 0.0)
        {
          v11 = 0.0;
        }

        else
        {
          v11 = v8;
        }

        MEMORY[0x1E691C170](*&v11);
        if (v9 == 0.0)
        {
          v12 = 0.0;
        }

        else
        {
          v12 = v9;
        }

        MEMORY[0x1E691C170](*&v12);
      }

      sub_1E48CD210(v27, v26);
      if (swift_dynamicCast())
      {
        v14 = *(&v28 + 1);
        v13 = *&v28;
        v15 = v29;
        v16 = v30;
        v17 = v31;
        if (*&v28 == 0.0)
        {
          v13 = 0.0;
        }

        MEMORY[0x1E691C170](*&v13);
        if (v14 == 0.0)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = v14;
        }

        MEMORY[0x1E691C170](*&v18);
        if (*&v15 == 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = *&v15;
        }

        MEMORY[0x1E691C170](*&v19);
        if (*(&v15 + 1) == 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = *(&v15 + 1);
        }

        MEMORY[0x1E691C170](*&v20);
        if (*&v16 == 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = *&v16;
        }

        MEMORY[0x1E691C170](*&v21);
        if (*(&v16 + 1) == 0.0)
        {
          v22 = 0.0;
        }

        else
        {
          v22 = *(&v16 + 1);
        }

        MEMORY[0x1E691C170](*&v22);
        if (*&v17 == 0.0)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = *&v17;
        }

        MEMORY[0x1E691C170](*&v23);
        if (*(&v17 + 1) == 0.0)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = *(&v17 + 1);
        }

        MEMORY[0x1E691C170](*&v24);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v5 += 40;
      --v4;
    }

    while (v4);
  }
}

uint64_t ClockFaceLook.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80248, &qword_1E49A1510);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49242BC();
  sub_1E49989CC();
  sub_1E492268C();
  LOBYTE(v22[0]) = 1;
  sub_1E49987AC();
  if (v1)
  {
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v20 = v8;

    sub_1E4921538();
    if (v11)
    {
      LOBYTE(v22[0]) = 2;
      sub_1E49987AC();
    }

    v18 = v4;
    v19 = v3;
    LOBYTE(v21[0]) = 0;
    sub_1E499879C();
    result = sub_1E4921408();
    v12 = result;
    v23 = *(result + 16);
    if (v23)
    {
      v13 = 0;
      v14 = result + 32;
      while (v13 < *(v12 + 16))
      {
        sub_1E48CD210(v14, v21);
        v15 = v21[4];
        __swift_project_boxed_opaque_existential_1(v21, v21[3]);
        __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
        v16 = *(v15 + 16);
        sub_1E499883C();
        ++v13;
        result = __swift_destroy_boxed_opaque_existential_0Tm(v21);
        v14 += 40;
        if (v23 == v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      (*(v18 + 8))(v20, v19);
      return __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }
  }

  return result;
}

uint64_t sub_1E492268C()
{
  sub_1E48C8304(v0, v2);
  if (v4 > 1u)
  {
    if (v4 == 2)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v3);
      __swift_destroy_boxed_opaque_existential_0Tm(v2);
      return 0x6E6F5474696C7073;
    }

    else
    {
      return 0x6D6F747375636E75;
    }
  }

  else if (v4)
  {
    sub_1E48C8360(v2);
    return 0x746E656964617267;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    return 0x726F6C6F63;
  }
}

uint64_t ClockFaceLook.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80258, &qword_1E49A1518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v34 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49242BC();
  sub_1E49989BC();
  if (!v2)
  {
    LOBYTE(v38) = 0;
    sub_1E499874C();
    v35 = v10;
    v36 = v6;
    v37 = v5;
    v34 = a2;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v12 = sub_1E499882C();
    v13 = MEMORY[0x1E69E7CC0];
    if ((v12 & 1) == 0)
    {
      v52 = a1;
      while (1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
        sub_1E4924310();
        sub_1E499880C();
        if (v49)
        {
          v38 = 0u;
          v39 = 0u;
          *&v40 = 0;
        }

        else
        {
          *(&v39 + 1) = &type metadata for SolidClockFaceColor;
          *&v40 = sub_1E48D5004();
          v17 = swift_allocObject();
          *&v38 = v17;
          v18 = v48;
          *(v17 + 16) = v47;
          *(v17 + 32) = v18;
        }

        sub_1E48C12D0(&v38, &v47, &qword_1ECF80260, &qword_1E49A1520);
        v14 = *(&v48 + 1);
        sub_1E48C1338(&v47, &qword_1ECF80260, &qword_1E49A1520);
        if (!v14)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
          *(&v48 + 1) = &type metadata for DynamicClockFaceColor;
          v49 = sub_1E48D615C();
          *&v47 = swift_allocObject();
          sub_1E4924364();
          sub_1E499881C();
          sub_1E49243B8(&v47, &v38);
          a1 = v52;
        }

        sub_1E48C12D0(&v38, &v45, &qword_1ECF80260, &qword_1E49A1520);
        if (!v46)
        {
          break;
        }

        sub_1E48B7448(&v45, &v47);
        sub_1E48CD210(&v47, &v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1E4906890(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_1E4906890((v15 > 1), v16 + 1, 1, v13);
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v47);
        v13[2] = v16 + 1;
        sub_1E48B7448(&v45, &v13[5 * v16 + 4]);
        sub_1E48C1338(&v38, &qword_1ECF80260, &qword_1E49A1520);
        __swift_project_boxed_opaque_existential_1(v50, v51);
        if (sub_1E499882C())
        {
          goto LABEL_17;
        }
      }

      sub_1E48C1338(&v45, &qword_1ECF80260, &qword_1E49A1520);
      sub_1E48C1338(&v38, &qword_1ECF80260, &qword_1E49A1520);
    }

LABEL_17:
    LOBYTE(v38) = 1;
    v19 = v37;
    v20 = v35;
    v21 = sub_1E499875C();
    v23 = sub_1E4924474(v21, v22);
    v24 = v36;
    v25 = v23;

    LOBYTE(v38) = 2;
    v26 = sub_1E499875C();
    v27 = v34;
    v29 = sub_1E4922D9C(v25, v13, v26, v28, &v38);
    (*(v24 + 8))(v20, v19, v29);

    v31 = v43;
    *(v27 + 64) = v42;
    *(v27 + 80) = v31;
    *(v27 + 96) = v44;
    v32 = v39;
    *v27 = v38;
    *(v27 + 16) = v32;
    v33 = v41;
    *(v27 + 32) = v40;
    *(v27 + 48) = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

double sub_1E4922D9C@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      *a5 = a2;
      *(a5 + 8) = a3;
      *(a5 + 16) = a4;
      *(a5 + 96) = 1;

      return result;
    }

    if (*(a2 + 16) == 2)
    {
      sub_1E48CD210(a2 + 32, a5);
      sub_1E48CD210(a2 + 72, a5 + 40);
      *(a5 + 80) = a3;
      *(a5 + 88) = a4;
      *(a5 + 96) = 2;

      return result;
    }

    sub_1E49985BC();
    sub_1E49986CC();
    v15 = "kFaceLookThumbnailView";
    v7 = 0xD000000000000025;
    goto LABEL_13;
  }

  if (a1)
  {
    if (*(a2 + 16) == 1)
    {
      sub_1E48CD210(a2 + 32, a5);
      *(a5 + 40) = a3;
      *(a5 + 48) = a4;
      *(a5 + 96) = 0;

      return result;
    }

    sub_1E49985BC();
    sub_1E49986CC();
    v15 = "actly 2 color, not: '";
    v7 = 0xD000000000000026;
LABEL_13:
    v6 = v15 | 0x8000000000000000;
    goto LABEL_14;
  }

  if (*(a2 + 16))
  {
    sub_1E49985BC();
    sub_1E49986CC();
    v6 = 0x80000001E49A7C60;
    v7 = 0xD00000000000001FLL;
LABEL_14:
    MEMORY[0x1E691B7A0](v7, v6);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD78, &qword_1E49A4A30);
    v17 = MEMORY[0x1E691B8E0](a2, v16);
    MEMORY[0x1E691B7A0](v17);

    MEMORY[0x1E691B7A0](39, 0xE100000000000000);
    sub_1E49248F0();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0xE000000000000000;
    *(v18 + 16) = 0;
    swift_willThrow();
    return result;
  }

  result = 0.0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 3;
  return result;
}

uint64_t sub_1E4923070(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E65644965707974;
  v4 = 0xEE00726569666974;
  v5 = 0x80000001E49A67C0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001E49A67C0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x73726F6C6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6E65644965707974;
  if (*a2 == 1)
  {
    v5 = 0xEE00726569666974;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73726F6C6F63;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E499884C();
  }

  return v11 & 1;
}

uint64_t sub_1E4923180()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4923230()
{
  *v0;
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E49232CC()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4923378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E49248A4();
  *a2 = result;
  return result;
}

void sub_1E49233A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEE00726569666974;
  v5 = 0x6E65644965707974;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001E49A67C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73726F6C6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1E4923414()
{
  v1 = 0x6E65644965707974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73726F6C6F63;
  }
}

uint64_t sub_1E492347C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E49248A4();
  *a1 = result;
  return result;
}

uint64_t sub_1E49234A4(uint64_t a1)
{
  v2 = sub_1E49242BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E49234E0(uint64_t a1)
{
  v2 = sub_1E49242BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClockFaceLook.hashValue.getter()
{
  sub_1E499892C();
  ClockFaceLook.hash(into:)();
  return sub_1E499896C();
}

uint64_t sub_1E492355C()
{
  sub_1E499892C();
  ClockFaceLook.hash(into:)();
  return sub_1E499896C();
}

uint64_t sub_1E49235A0()
{
  sub_1E499892C();
  ClockFaceLook.hash(into:)();
  return sub_1E499896C();
}

uint64_t sub_1E492361C()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4923700()
{
  *v0;
  *v0;
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E49237D0()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E49238B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E4924428();
  *a2 = result;
  return result;
}

void sub_1E49238E0(uint64_t *a1@<X8>)
{
  v2 = 0xEE00656C62617A69;
  v3 = 0x6D6F747375636E75;
  v4 = 0xEE0079617272615FLL;
  v5 = 0x746E656964617267;
  if (*v1 != 2)
  {
    v5 = 0x6E6F5474696C7073;
    v4 = 0xED0000625F615F65;
  }

  if (*v1)
  {
    v3 = 0x726F6C6F63;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

char *sub_1E4923980(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v21.receiver = v2;
  v21.super_class = type metadata accessor for ClackFaceLookThumbnailView();
  v6 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer;
  v8 = *&v6[OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC08, &unk_1E499E510);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E499A180;
  type metadata accessor for CGColor(0);
  *(v9 + 32) = a1;
  *(v9 + 88) = v10;
  *(v9 + 56) = v10;
  *(v9 + 64) = a2;
  v11 = v6;
  v12 = v8;
  v13 = a1;
  v14 = a2;
  v15 = sub_1E499809C();

  [v12 setColors_];

  v16 = *&v6[v7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E49A1500;
  sub_1E48FA6A0();
  v18 = v16;
  *(v17 + 32) = sub_1E499847C();
  *(v17 + 40) = sub_1E499847C();
  v19 = sub_1E499809C();

  [v18 setLocations_];

  [v11 frame];
  [v11 _setCornerRadius_];

  return v11;
}

id sub_1E4923C1C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ClackFaceLookThumbnailView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer;
  v2 = [*&v0[OBJC_IVAR____TtC11ClockPoster26ClackFaceLookThumbnailView_gradientLayer] superlayer];
  if (v2)
  {
  }

  else
  {
    v3 = [v0 layer];
    [v3 insertSublayer:*&v0[v1] atIndex:0];

    [*&v0[v1] setType_];
  }

  v4 = *&v0[v1];
  [v0 bounds];
  [v4 setFrame_];

  [*&v0[v1] setStartPoint_];
  return [*&v0[v1] setEndPoint_];
}

id sub_1E4923DB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClackFaceLookThumbnailView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4923DF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

uint64_t sub_1E4923E5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

uint64_t sub_1E4923EC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1E492125C(a1, WitnessTable);
}

id sub_1E4923F24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0()
{
  v0 = sub_1E492268C();
  v2 = v1;
  if (v0 == sub_1E492268C() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_1E499884C();

    result = 0;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  v6 = sub_1E4921408();
  result = sub_1E4921408();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 32;
    while (v9 < *(v7 + 16))
    {
      result = sub_1E48CD210(v7 + v10, v25);
      v11 = *(v6 + 16);
      if (v9 == v11)
      {

        goto LABEL_21;
      }

      if (v9 >= v11)
      {
        goto LABEL_26;
      }

      sub_1E48CD210(v6 + v10, v24);
      sub_1E48CD210(v25, &v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD78, &qword_1E49A4A30);
      if (swift_dynamicCast())
      {
        v14 = v23;
        v16 = v22;
        sub_1E48CD210(v24, &v18);
        if ((swift_dynamicCast() & 1) != 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v16, v22), vceqq_f64(v14, v23)))) & 1) == 0)
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v24);
LABEL_21:
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          return 0;
        }
      }

      sub_1E48B7448(v25, &v22);
      if (swift_dynamicCast())
      {
        v15 = v20;
        v17 = v21;
        v12 = v19;
        v13 = v18;
        sub_1E48B7448(v24, &v22);
        result = swift_dynamicCast();
        if ((result & 1) != 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v13, v18), vceqq_f64(v12, v19)), vuzp1q_s32(vceqq_f64(v15, v20), vceqq_f64(v17, v21))))) & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      }

      ++v9;
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_19:

    return 1;
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E49242BC()
{
  result = qword_1ECF80250;
  if (!qword_1ECF80250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80250);
  }

  return result;
}

unint64_t sub_1E4924310()
{
  result = qword_1EE2BB4C0;
  if (!qword_1EE2BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4C0);
  }

  return result;
}

unint64_t sub_1E4924364()
{
  result = qword_1EE2BB498;
  if (!qword_1EE2BB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB498);
  }

  return result;
}

uint64_t sub_1E49243B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80260, &qword_1E49A1520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4924428()
{
  v0 = sub_1E499873C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E4924474(uint64_t a1, uint64_t a2)
{

  v4 = sub_1E499873C();

  if (v4 > 3)
  {
    sub_1E49985BC();

    MEMORY[0x1E691B7A0](a1, a2);
    sub_1E49248F0();
    swift_allocError();
    *v5 = 0xD000000000000010;
    *(v5 + 8) = 0x80000001E49A7C80;
    *(v5 + 16) = 0;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1E4924564()
{
  result = qword_1ECF80268;
  if (!qword_1ECF80268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80268);
  }

  return result;
}

unint64_t sub_1E49245B8(uint64_t a1)
{
  result = sub_1E49245E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E49245E0()
{
  result = qword_1ECF80270;
  if (!qword_1ECF80270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80270);
  }

  return result;
}

uint64_t sub_1E4924634(uint64_t a1, unsigned int a2)
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
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4924670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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

uint64_t sub_1E49246C4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

unint64_t sub_1E49247A0()
{
  result = qword_1ECF80280;
  if (!qword_1ECF80280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80280);
  }

  return result;
}

unint64_t sub_1E49247F8()
{
  result = qword_1ECF80288;
  if (!qword_1ECF80288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80288);
  }

  return result;
}

unint64_t sub_1E4924850()
{
  result = qword_1ECF80290;
  if (!qword_1ECF80290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80290);
  }

  return result;
}

uint64_t sub_1E49248A4()
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

unint64_t sub_1E49248F0()
{
  result = qword_1ECF80298;
  if (!qword_1ECF80298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80298);
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

uint64_t sub_1E4924964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1E49249AC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E4924A20()
{
  result = qword_1ECF802A0;
  if (!qword_1ECF802A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF802A0);
  }

  return result;
}

uint64_t sub_1E4924A78()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = &v0[OBJC_IVAR____TtCV11ClockPoster24DarwinNotificationCenter12Subscription_name];
  v3 = *&v0[OBJC_IVAR____TtCV11ClockPoster24DarwinNotificationCenter12Subscription_name];
  v4 = *&v0[OBJC_IVAR____TtCV11ClockPoster24DarwinNotificationCenter12Subscription_name + 8];

  v5 = sub_1E4997EAC();

  CFNotificationCenterRemoveObserver(v1, v0, v5, 0);

  v6 = OBJC_IVAR____TtCV11ClockPoster24DarwinNotificationCenter12Subscription_id;
  v7 = sub_1E4996DBC();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(v2 + 1);

  v9 = *&v0[OBJC_IVAR____TtCV11ClockPoster24DarwinNotificationCenter12Subscription_handler + 8];

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DarwinNotificationCenter.Subscription()
{
  result = qword_1ECF802A8;
  if (!qword_1ECF802A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4924BF0()
{
  result = sub_1E4996DBC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4924C98()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4996DBC();
  sub_1E4924F84(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E4924D38()
{
  v1 = *v0;
  sub_1E4996DBC();
  sub_1E4924F84(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
  return sub_1E4997E5C();
}

uint64_t sub_1E4924DC0()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4996DBC();
  sub_1E4924F84(&qword_1ECF814C0, MEMORY[0x1E69695A8]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E4924E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCV11ClockPoster24DarwinNotificationCenter12Subscription_id;
  v5 = sub_1E4996DBC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E4924F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4924FCC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80388, &qword_1E49A20B0);
  return sub_1E4997E9C() & 1;
}

uint64_t sub_1E4925030(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80360, &qword_1E49A1EE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E492E944();
  sub_1E49989CC();
  v14[15] = 0;
  sub_1E48EB5B0();
  sub_1E49987DC();
  if (!v2)
  {
    v13 = *(v3 + 104);
    v14[14] = 1;
    sub_1E49987BC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E49251C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80350, &qword_1E49A1ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E492E944();
  sub_1E49989BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15[7] = 0;
  sub_1E48EB55C();
  sub_1E499878C();
  v23[4] = v20;
  v23[5] = v21;
  v24 = v22;
  v23[0] = v16;
  v23[1] = v17;
  v23[2] = v18;
  v23[3] = v19;
  LOBYTE(v16) = 1;
  sub_1E499876C();
  v13 = v12;
  (*(v6 + 8))(v10, v5);
  v25 = v13;
  sub_1E48C9E64(v23, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1E48C9EC0(v23);
}

uint64_t sub_1E49253F8()
{
  if (*v0)
  {
    result = 0x656C676E61;
  }

  else
  {
    result = 1802465132;
  }

  *v0;
  return result;
}

uint64_t sub_1E4925428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802465132 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E499884C();

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

uint64_t sub_1E4925500(uint64_t a1)
{
  v2 = sub_1E492E944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E492553C(uint64_t a1)
{
  v2 = sub_1E492E944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E4925578@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_1E4925668()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_1E492571C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1E4925800(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }

  return result;
}

void (*sub_1E4925924(uint64_t *a1))(void *a1)
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
  v4[5] = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E4925618();
  return sub_1E4925A5C;
}

void sub_1E4925A5C(void *a1)
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

uint64_t sub_1E4925AF0()
{
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  return *(v0 + 17);
}

uint64_t sub_1E4925B90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1E4925C38(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;

    return sub_1E492DD60();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E4925D6C(uint64_t a1)
{
  v2 = v1;
  v137 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v135 = &v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80380, &qword_1E49A1F98);
  v133 = *(v7 - 8);
  v134 = v7;
  v8 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v132 = &v105 - v10;
  v129 = sub_1E49969DC();
  v126 = *(v129 - 8);
  v11 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v129, v12);
  v125 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FA50, &qword_1E49A1FA0);
  v123 = *(v14 - 8);
  v124 = v14;
  v15 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v121 = &v105 - v17;
  v18 = sub_1E4996ABC();
  v130 = *(v18 - 8);
  v131 = v18;
  v19 = *(v130 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v128 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v127 = &v105 - v24;
  v119 = sub_1E4996CBC();
  v116 = *(v119 - 8);
  v25 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v119, v26);
  v114 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1E4996BFC();
  v111 = *(v112 - 8);
  v28 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112, v29);
  v110 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1E4996C7C();
  v107 = *(v108 - 8);
  v31 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108, v32);
  v106 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1E4996CAC();
  v34 = *(v109 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x1EEE9AC00](v109, v36);
  v39 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v37, v40);
  v43 = &v105 - v42;
  MEMORY[0x1EEE9AC00](v41, v44);
  v105 = &v105 - v45;
  v46 = sub_1E4996D8C();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46, v49);
  v138 = &v105 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E4996A4C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51, v54);
  v56 = &v105 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v57 = type metadata accessor for RollingClockViewModel();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  *(v1 + 24) = sub_1E48B81A4();
  *(v1 + 144) = 0;
  *(v1 + 152) = 0xE000000000000000;
  sub_1E4996A3C();
  v60 = *(v52 + 32);
  v115 = v56;
  v118 = v51;
  v117 = v52 + 32;
  v113 = v60;
  v60(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmText, v56, v51);
  (*(v47 + 56))(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime, 1, 1, v46);
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor) = sub_1E4997A6C();
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor) = sub_1E4997A6C();
  *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor) = 0;
  v61 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__temperature;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF816A0, &unk_1E49A5C90);
  (*(*(v62 - 8) + 56))(v2 + v61, 1, 1, v62);
  *(v2 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex) = 0;
  sub_1E4996FFC();
  sub_1E48C9E64(v137, v2 + 32);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v63 = v138;
  sub_1E493BA48(v138);
  v122 = v47;
  v64 = *(v47 + 16);
  v120 = v46;
  v64(v2 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date, v63, v46);
  ClockFaceLook.primaryUIColor.getter();
  v136 = sub_1E49979DC();
  MEMORY[0x1E691A0B0]();
  v65 = v106;
  sub_1E4996C4C();
  sub_1E4996C9C();
  (*(v107 + 8))(v65, v108);
  v66 = *(v34 + 8);
  v67 = v109;
  v66(v39, v109);
  v68 = v110;
  sub_1E4996BEC();
  v69 = v105;
  sub_1E4996BCC();
  (*(v111 + 8))(v68, v112);
  v66(v43, v67);
  v70 = v114;
  sub_1E4996BBC();
  v66(v69, v67);
  sub_1E492F470(&qword_1ECF7FA58, MEMORY[0x1E6969350]);
  v71 = v115;
  v72 = v119;
  sub_1E4996D6C();
  (*(v116 + 8))(v70, v72);
  KeyPath = swift_getKeyPath();
  *(&v105 - 2) = MEMORY[0x1EEE9AC00](KeyPath, v74);
  swift_getKeyPath();
  sub_1E48F36FC();
  v75 = v121;
  sub_1E4996A8C();

  v77 = v125;
  v76 = v126;
  v78 = v129;
  (*(v126 + 104))(v125, *MEMORY[0x1E6968598], v129);
  v79 = v127;
  v80 = v124;
  sub_1E4996A9C();
  (*(v76 + 8))(v77, v78);
  (*(v123 + 8))(v75, v80);
  v81 = swift_getKeyPath();
  *(&v105 - 2) = MEMORY[0x1EEE9AC00](v81, v82);
  swift_getKeyPath();
  sub_1E48C1684();
  v83 = v132;
  sub_1E4996A8C();

  v139 = v136;
  v84 = v128;
  v85 = v134;
  sub_1E4996A9C();
  (*(v133 + 8))(v83, v85);
  sub_1E4996A2C();
  v86 = v131;
  v87 = *(v130 + 8);
  v87(v84, v131);
  v87(v79, v86);
  v113(v2 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__dateText, v71, v118);

  sub_1E4926FBC(v88);
  v89 = sub_1E499816C();
  v90 = *(*(v89 - 8) + 56);
  v91 = v135;
  v90(v135, 1, 1, v89);
  v92 = swift_allocObject();
  swift_weakInit();
  sub_1E499814C();

  v93 = sub_1E499813C();
  v94 = swift_allocObject();
  v95 = MEMORY[0x1E69E85E0];
  v94[2] = v93;
  v94[3] = v95;
  v94[4] = v92;

  sub_1E498DD1C(0, 0, v91, &unk_1E49A2200, v94);

  v90(v91, 1, 1, v89);
  v96 = swift_allocObject();
  swift_weakInit();

  v97 = sub_1E499813C();
  v98 = swift_allocObject();
  v98[2] = v97;
  v99 = MEMORY[0x1E69E85E0];
  v98[3] = MEMORY[0x1E69E85E0];
  v98[4] = v96;

  sub_1E498DD1C(0, 0, v91, &unk_1E49A2210, v98);

  v90(v91, 1, 1, v89);
  v100 = swift_allocObject();
  swift_weakInit();

  v101 = sub_1E499813C();
  v102 = swift_allocObject();
  v102[2] = v101;
  v102[3] = v99;
  v102[4] = v100;

  sub_1E498DD1C(0, 0, v91, &unk_1E49A2220, v102);

  v90(v91, 1, 1, v89);
  v103 = swift_allocObject();
  *(v103 + 16) = 0;
  *(v103 + 24) = 0;
  sub_1E498DD1C(0, 0, v91, &unk_1E49A2230, v103);

  sub_1E492DD60();

  sub_1E48C9EC0(v137);
  (*(v122 + 8))(v138, v120);
  return v2;
}

uint64_t sub_1E4926BA4(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E4926CD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144) == a1 && *(v2 + 152) == a2;
  if (v5 || (v6 = *(v2 + 152), (sub_1E499884C() & 1) != 0))
  {
    *(v2 + 144) = a1;
    *(v2 + 152) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E4926E60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor;
  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);

  v5 = sub_1E49979FC();

  if (v5)
  {
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E4926FBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor;
  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);

  v5 = sub_1E49979FC();

  if (v5)
  {
    v6 = *(v1 + v3);
    *(v1 + v3) = a1;

    sub_1E492C76C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v9);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E4927130(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor;
  if (!*(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v8);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor);

  v5 = sub_1E49979FC();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + v3);
LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1E49272A0(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__colorWheelIndex) == a1)
  {

    return sub_1E492DD60();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v4);
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E49273D4(uint64_t a1)
{
  swift_beginAccess();
  sub_1E48C9E64(v1 + 32, v7);
  if ((_s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    sub_1E48C9EC0(v7);
    goto LABEL_5;
  }

  v3 = *&v7[13];
  sub_1E48C9EC0(v7);
  if (v3 != *(a1 + 104))
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v5);
    v7[0] = v1;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();

    return sub_1E48C9EC0(a1);
  }

  sub_1E48C9E64(a1, v7);
  swift_beginAccess();
  sub_1E492F9D0(v7, v1 + 32);
  swift_endAccess();
  sub_1E492DD60();
  sub_1E48C9EC0(v7);
  return sub_1E48C9EC0(a1);
}

uint64_t sub_1E4927578(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4996D8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__date;
  swift_beginAccess();
  v11 = *(v5 + 16);
  v11(v9, v2 + v10, v4);
  sub_1E492F470(&qword_1ECF7F440, MEMORY[0x1E6969530]);
  v17[0] = a1;
  LOBYTE(a1) = sub_1E4997E9C();
  v12 = *(v5 + 8);
  v12(v9, v4);
  if (a1)
  {
    v11(v9, v17[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v10, v9, v4);
    swift_endAccess();
    sub_1E492C76C();
    v12(v9, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v14);
    v15 = v17[0];
    v17[-2] = v2;
    v17[-1] = v15;
    v17[1] = v2;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }

  return (v12)(v17[0], v4);
}

uint64_t sub_1E492785C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v21[1] = a4;
  v6 = v4;
  v8 = sub_1E4996A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  swift_beginAccess();
  v15 = *(v9 + 16);
  v15(v13, v6 + v14, v8);
  sub_1E492F470(&qword_1ECF80390, MEMORY[0x1E6968848]);
  v22 = a1;
  LOBYTE(a1) = sub_1E4997E9C();
  v16 = *(v9 + 8);
  v16(v13, v8);
  if (a1)
  {
    v15(v13, v22, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v14, v13, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v18);
    v19 = v22;
    v21[-2] = v6;
    v21[-1] = v19;
    v23 = v6;
    sub_1E492F470(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel);
    sub_1E4996FBC();
  }

  return (v16)(v22, v8);
}

uint64_t sub_1E4927AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_1E4996D8C();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB80, &unk_1E49A2260);
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v11 = *(v10 + 64) + 15;
  v4[21] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB88, &unk_1E499E440);
  v4[22] = v12;
  v13 = *(v12 - 8);
  v4[23] = v13;
  v14 = *(v13 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = sub_1E499814C();
  v4[26] = sub_1E499813C();
  v16 = sub_1E499811C();
  v4[27] = v16;
  v4[28] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1E4927D04, v16, v15);
}

uint64_t sub_1E4927D04()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = v0[12];
  v6 = qword_1ECF80790;
  v7 = *(qword_1ECF80790 + OBJC_IVAR____TtC11ClockPoster5Clock_dateStreamObservers);

  sub_1E4938964(2, v7, v6, 2, v2);
  sub_1E499819C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[29] = 0;
  v8 = v0[25];
  v9 = sub_1E499813C();
  v0[30] = v9;
  v10 = *(MEMORY[0x1E69E8678] + 4);
  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_1E4927E8C;
  v12 = v0[24];
  v13 = v0[22];
  v14 = v0[18];
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v14, v9, v15, v13);
}