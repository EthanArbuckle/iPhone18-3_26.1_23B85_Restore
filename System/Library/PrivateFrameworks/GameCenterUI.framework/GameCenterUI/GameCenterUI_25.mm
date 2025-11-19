unint64_t sub_24E1D7124()
{
  result = qword_27F1E72F0;
  if (!qword_27F1E72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E72F0);
  }

  return result;
}

uint64_t sub_24E1D7190()
{
  type metadata accessor for ActivityFeedCache();
  v0 = swift_allocObject();
  result = sub_24E1D7B78();
  qword_27F20B150 = v0;
  return result;
}

void sub_24E1D71CC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_24E1D79D8(*a1, a1[1]);
  if (v4)
  {
  }

  else
  {
    v5 = a1[8];
    if (v5)
    {
      v15 = 0;
      v16 = 0;

      v6 = OUTLINED_FUNCTION_0_140();
      sub_24E0ABE8C(v7, 0, v6, v8);
      if (*(a2 + qword_27F1EB198))
      {
        v15 = 0;
        v16 = 0;

        v9 = OUTLINED_FUNCTION_0_140();
        v12 = sub_24E0ABE8C(v10, 0, v9, v11);
        v18 = 0;
        memset(v17, 0, sizeof(v17));
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = v5;
        memcpy(v14 + 4, a1, 0x48uLL);

        sub_24E00FD28(a1, &v15);
        sub_24E200340(v12, 1, 0, v17, sub_24E1D7BF0, v14);

        sub_24DFD8588(v17);
      }

      else
      {
      }
    }
  }
}

void sub_24E1D73C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      type metadata accessor for ArtworkView();
      v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v11 = a1;
      v12 = [v10 init];
      [v12 setFrame_];
      v18[0] = *(a6 + 56);
      sub_24E0D8DC8(v18);
      v13 = v11;
      sub_24E0D8E24(a1);
      v14 = v12;
      v15 = sub_24E220730();

      [*(v9 + 40) unlock];
      swift_beginAccess();
      if (v15)
      {
        v16 = v15;
        swift_isUniquelyReferenced_nonNull_native();
        v17 = *(v9 + 16);
        sub_24E058BDC();
        *(v9 + 16) = v17;
      }

      else
      {

        v16 = 0;
      }

      swift_endAccess();
      [*(v9 + 40) unlock];
    }
  }
}

void sub_24E1D7570(uint64_t a1, uint64_t a2)
{
  if ((sub_24E1513A0() & 1) == 0)
  {
    v4 = sub_24E1D79D8(*a1, *(a1 + 8));
    if (v4)
    {
    }

    else
    {
      LOBYTE(v15[0]) = 2;
      v5 = OUTLINED_FUNCTION_0_140();
      sub_24E253E8C(v6, v5, v7);
      if (*(a2 + qword_27F1EB198))
      {
        v15[0] = 0;
        v15[1] = 0;

        v8 = OUTLINED_FUNCTION_0_140();
        v11 = sub_24E0ABE8C(v9, 0, v8, v10);
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        v14 = *(a1 + 16);
        *(v13 + 24) = *a1;
        *(v13 + 40) = v14;
        *(v13 + 56) = *(a1 + 32);
        *(v13 + 72) = *(a1 + 48);

        sub_24DFC5470(a1, v15);
        sub_24E200340(v11, 1, 0, v16, sub_24E1D7BE4, v13);

        sub_24DFD8588(v16);
      }

      else
      {
      }
    }
  }
}

void sub_24E1D775C(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      type metadata accessor for ArtworkView();
      v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v5 = a1;
      v6 = [v4 init];
      [v6 setFrame_];
      v12[0] = 2;
      sub_24E0D8DC8(v12);
      v7 = v5;
      sub_24E0D8E24(a1);
      v8 = v6;
      v9 = sub_24E220730();

      [*(v3 + 40) lock];
      swift_beginAccess();
      if (v9)
      {
        v10 = v9;
        swift_isUniquelyReferenced_nonNull_native();
        v11 = *(v3 + 16);
        sub_24E058BDC();
        *(v3 + 16) = v11;
      }

      else
      {

        v10 = 0;
      }

      swift_endAccess();
      [*(v3 + 40) unlock];
    }
  }
}

uint64_t sub_24E1D7904(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = *(a2 + 16);
  for (i = (a2 + 32); v7; --v7)
  {
    memcpy(__dst, i, sizeof(__dst));
    sub_24E00FD28(__dst, v13);
    sub_24E1D71CC(__dst, a5);
    result = sub_24E00FD84(__dst);
    i += 72;
  }

  v9 = *(v6 + 16);
  for (j = v6 + 32; v9; --v9)
  {
    v11 = *(j + 16);
    v13[0] = *j;
    v13[1] = v11;
    v13[2] = *(j + 32);
    v14 = *(j + 48);
    sub_24DFC5470(v13, v12);
    sub_24E1D7570(v13, a5);
    result = sub_24DFC54CC(v13);
    j += 56;
  }

  return result;
}

uint64_t sub_24E1D79D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  [v5 lock];
  swift_beginAccess();
  v6 = *(v2 + 16);

  v7 = sub_24E130ED0(a1, a2, v6);

  [v5 unlock];
  return v7;
}

id sub_24E1D7A70()
{
  v1 = *(v0 + 40);
  [v1 lock];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E72F8);
  sub_24E347C38();
  swift_endAccess();
  return [v1 unlock];
}

uint64_t sub_24E1D7AF8()
{

  return v0;
}

uint64_t sub_24E1D7B20()
{
  sub_24E1D7AF8();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_24E1D7B78()
{
  sub_24DFC2C38();
  *(v0 + 16) = sub_24E347C28();
  *(v0 + 24) = vdupq_n_s64(0x4044000000000000uLL);
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  return v0;
}

id sub_24E1D7C10(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SectionFooterPlaceholderView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_24E1D7C98(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SectionFooterPlaceholderView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_24E1D7D24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SectionFooterPlaceholderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AsyncArtworkImageView()
{
  result = qword_27F1E7300;
  if (!qword_27F1E7300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E1D7DF0()
{
  sub_24E1D7E7C();
  if (v0 <= 0x3F)
  {
    sub_24E1D7F10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E1D7E7C()
{
  if (!qword_27F1E7310)
  {
    type metadata accessor for AsyncArtworkViewConfig();
    sub_24E1D8AE0(&qword_27F1E7318, type metadata accessor for AsyncArtworkViewConfig);
    v0 = sub_24E3452C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E7310);
    }
  }
}

void sub_24E1D7F10()
{
  if (!qword_27F1E6A98)
  {
    sub_24E347BC8();
    v0 = sub_24E348698();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E6A98);
    }
  }
}

uint64_t sub_24E1D7F84@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = sub_24E345C68();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_1();
  v77 = v4 - v3;
  v72 = sub_24E3457C8();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v71 = (v7 - v6);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7320);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v8);
  v76 = &v62 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7328);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v10);
  v75 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7330);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v15);
  v79 = &v62 - v16;
  v17 = type metadata accessor for ArtworkImageView();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v21 = (v20 - v19);
  v78 = v1;
  type metadata accessor for AsyncArtworkViewConfig();
  sub_24E1D8AE0(&qword_27F1E7318, type metadata accessor for AsyncArtworkViewConfig);
  OUTLINED_FUNCTION_0_141();
  v22 = sub_24E3452B8();
  v23 = sub_24E0BD668();

  if (v23)
  {
    OUTLINED_FUNCTION_0_141();
    v24 = sub_24E3452B8();
    v25 = v24[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_style];

    OUTLINED_FUNCTION_0_141();
    v26 = sub_24E3452B8();
    v27 = *&v26[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size];
    v28 = *&v26[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size + 8];

    v29 = type metadata accessor for AsyncArtworkImageView();
    sub_24DFAE87C(v78 + *(v29 + 24), v21 + v17[10], &qword_27F1E6A70);
    *v21 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390);
    swift_storeEnumTagMultiPayload();
    v30 = v17[5];
    *(v21 + v30) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FE8);
    swift_storeEnumTagMultiPayload();
    v31 = v17[6];
    *(v21 + v31) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0);
    swift_storeEnumTagMultiPayload();
    *(v21 + v17[7]) = v23;
    *(v21 + v17[8]) = v25;
    v32 = (v21 + v17[9]);
    *v32 = v27;
    v32[1] = v28;
    sub_24E1D8B90(v21, v79);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_92();
    sub_24E1D8AE0(v33, v34);
    sub_24E1D88B0();
    sub_24E345E38();
    return sub_24E1D8BF4(v21);
  }

  else
  {
    v68 = v14;
    v69 = v17;
    v78 = *(v78 + 24);
    OUTLINED_FUNCTION_0_141();

    OUTLINED_FUNCTION_0_141();
    sub_24E346E28();
    sub_24E3453D8();
    v67 = v83;
    v66 = v84;
    v65 = v85;
    v64 = v86;
    v63 = v87;
    v62 = v88;
    OUTLINED_FUNCTION_0_141();
    v36 = sub_24E3452B8();
    v37 = v36[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_style];

    OUTLINED_FUNCTION_0_141();
    v38 = sub_24E3452B8();
    v39 = *&v38[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size];
    v40 = *&v38[OBJC_IVAR____TtC12GameCenterUI22AsyncArtworkViewConfig_size + 8];

    v41 = 6.0;
    v42 = MEMORY[0x277CE0118];
    v43 = v76;
    v44 = v77;
    v46 = v73;
    v45 = v74;
    switch(v37)
    {
      case 1:
        ScaledCornerRadiusForSize = GKHomeScreenIconsGetScaledCornerRadiusForSize(v39, v40);
        v44 = v77;
        v41 = ScaledCornerRadiusForSize;
        goto LABEL_12;
      case 2:
        if (v39 >= v40)
        {
          v47 = v40;
        }

        else
        {
          v47 = v39;
        }

        v41 = v47 * 0.5;
        goto LABEL_10;
      case 3:
        goto LABEL_13;
      default:
        v41 = 0.0;
        if (((v37 - 1) & 0xFD) != 0)
        {
LABEL_10:
          v42 = MEMORY[0x277CE0128];
        }

        else
        {
LABEL_12:
          v42 = MEMORY[0x277CE0118];
        }

LABEL_13:
        (*(v46 + 104))(v44, *v42, v45);
        v49 = v71;
        *v71 = v41;
        *(v49 + 8) = v41;
        (*(v46 + 32))(v49 + *(v72 + 20), v44, v45);
        v50 = &v43[*(v70 + 36)];
        sub_24E1ABA3C(v49, v50);
        *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF7E0) + 36)) = 256;
        v51 = v67;
        *v43 = v78;
        *(v43 + 1) = v51;
        v43[16] = v66;
        *(v43 + 3) = v65;
        v43[32] = v64;
        v52 = v62;
        *(v43 + 5) = v63;
        *(v43 + 6) = v52;

        OUTLINED_FUNCTION_0_141();
        v53 = sub_24E3452B8();
        v54 = v43;
        v55 = swift_allocObject();
        *(v55 + 16) = v53;
        v56 = v75;
        v57 = &v75[*(v82 + 36)];
        sub_24E345528();
        sub_24E348078();
        *v57 = &unk_24E382B60;
        *(v57 + 1) = v55;
        sub_24DFB4B20(v54, v56, &qword_27F1E7320);
        v58 = v56;
        v59 = v68;
        sub_24DFB4B20(v58, v68, &qword_27F1E7328);
        sub_24DFAE87C(v59, v79, &qword_27F1E7328);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_2_92();
        sub_24E1D8AE0(v60, v61);
        sub_24E1D88B0();
        sub_24E345E38();
        result = sub_24E1D8B28(v59);
        break;
    }
  }

  return result;
}

uint64_t sub_24E1D8788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DF8CD84;

  return sub_24E0BDE34();
}

uint64_t sub_24E1D881C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24DF8CD84;

  return sub_24E1D8788();
}

unint64_t sub_24E1D88B0()
{
  result = qword_27F1E7340;
  if (!qword_27F1E7340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7328);
    sub_24E1D896C();
    sub_24E1D8AE0(&qword_27F1DE1E0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7340);
  }

  return result;
}

unint64_t sub_24E1D896C()
{
  result = qword_27F1E7348;
  if (!qword_27F1E7348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7320);
    sub_24E1D89F8();
    sub_24E1D8A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7348);
  }

  return result;
}

unint64_t sub_24E1D89F8()
{
  result = qword_27F1E7350;
  if (!qword_27F1E7350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7350);
  }

  return result;
}

unint64_t sub_24E1D8A7C()
{
  result = qword_27F1DF820;
  if (!qword_27F1DF820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF820);
  }

  return result;
}

uint64_t sub_24E1D8AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E1D8B28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E1D8B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1D8BF4(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E1D8C50()
{
  result = qword_27F1E7360;
  if (!qword_27F1E7360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E7368);
    sub_24E1D8AE0(&qword_27F1E7338, type metadata accessor for ArtworkImageView);
    sub_24E1D88B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7360);
  }

  return result;
}

uint64_t sub_24E1D8D38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 464))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_24E1D8D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E1D8E44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_24E1D8E84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 224) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24E1D8F08()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v33[4] = v10;
  v11 = sub_24E3447C8();
  OUTLINED_FUNCTION_0_14();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v33 - v18;
  sub_24E344828();
  OUTLINED_FUNCTION_0_14();
  v34 = v21;
  v35 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  v24 = v23 - v22;
  sub_24DF89628(v0 + 88, v42);
  sub_24DF89628(v0 + 264, &v43);
  sub_24DF89628(v0 + 344, &v44);
  v40 = &unk_286123770;
  v41 = sub_24E1D9C64();
  v39[0] = swift_allocObject();
  sub_24E1D9CB8(v42, v39[0] + 16);
  __swift_project_boxed_opaque_existential_1((v1 + 224), *(v1 + 248));
  sub_24E3440B8();
  sub_24DF89628(v0 + 48, &v38);
  v25 = *MEMORY[0x277D228C8];
  v26 = *(v13 + 104);
  v26(v19, v25, v11);
  sub_24DF8968C(v1 + 424, &v37);
  sub_24DF89628(v1 + 128, &v36);
  v26(v16, v25, v11);
  sub_24E344808();
  swift_getObjectType();
  sub_24E0B7968();
  v33[1] = v9;
  v33[2] = v7;
  v33[3] = v5;
  sub_24E3484F8();
  sub_24E3447E8();
  __swift_project_boxed_opaque_existential_1((v1 + 224), *(v1 + 248));
  sub_24E344078();
  v27 = [v3 traitCollection];
  v28 = sub_24E3483B8();

  v29 = OUTLINED_FUNCTION_5_84();
  if (v28)
  {
    CGRectGetMinX(*&v29);
  }

  else
  {
    CGRectGetMaxX(*&v29);
  }

  v45.origin.x = OUTLINED_FUNCTION_5_84();
  CGRectGetMaxY(v45);
  sub_24DF8968C(v1 + 384, v39);
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1(v39, v40);
    sub_24E348508();
    sub_24E344088();
    (*(v34 + 8))(v24, v35);
    sub_24E1D9CF0(v42);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    (*(v34 + 8))(v24, v35);
    sub_24E1D9CF0(v42);
    sub_24DF8C95C(v39, &qword_27F1DEE30);
  }

  OUTLINED_FUNCTION_45();
}

void sub_24E1D9300()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v44 = sub_24E344648();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44 - 8);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v3 - v2);
  v43 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v48 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v47 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  v45 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v13 - v12);
  v42 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v41 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v17 - v16);
  v18 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_1();
  v24 = v23 - v22;
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  sub_24E3440D8();
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  sub_24E3440D8();
  sub_24E1D9DC8(v0, v53);
  v25 = v54;
  v26 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_24E2548A0(v25, v26);
  sub_24E344198();
  (*(v20 + 8))(v24, v18);
  __swift_destroy_boxed_opaque_existential_1(v53);
  v56.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMinX(v56);
  v57.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetMidY(v57);
  v58.origin.x = OUTLINED_FUNCTION_28();
  CGRectGetWidth(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  sub_24E344688();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  v27 = v1[8];
  v28 = v1[9];
  v29 = __swift_project_boxed_opaque_existential_1(v1 + 5, v27);
  v54 = v27;
  v55 = *(v28 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v29, v27);
  *(&v51 + 1) = sub_24E3442F8();
  v52 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v50);
  sub_24E3442E8();
  memset(v49, 0, 40);
  v37 = *(v10 + 104);
  v37(v38, *MEMORY[0x277D227D0], v47);
  v36 = *MEMORY[0x277D227F0];
  v35 = *(v48 + 104);
  v35(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  sub_24E3487E8();
  sub_24E344678();
  v34 = *(v46 + 8);
  v34(v39, v44);
  v33 = *(v48 + 8);
  v33(v8, v43);
  v31 = *(v45 + 8);
  v31(v38, v47);
  sub_24DF8C95C(v49, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v50);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_24E1D9DC8(v1, v53);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v37(v38, *MEMORY[0x277D227C8], v47);
  (v35)(v8, v36, v43);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v49[0] = v32;
  sub_24E3487E8();
  sub_24E344678();
  v34(v39, v44);
  v33(v8, v43);
  v31(v38, v47);
  sub_24DF8C95C(&v50, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_24E344668();
  OUTLINED_FUNCTION_28();
  sub_24E348508();
  sub_24E344608();
  (*(v41 + 8))(v40, v42);
  OUTLINED_FUNCTION_45();
}

unint64_t sub_24E1D9C64()
{
  result = qword_27F1E7370;
  if (!qword_27F1E7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7370);
  }

  return result;
}

uint64_t sub_24E1D9D20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24E1D9D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E1D9E00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24E1D9E40(uint64_t result, int a2, int a3)
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

uint64_t sub_24E1D9EA8()
{
  v1 = v0;
  v2 = sub_24E3442D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-1] - v7;
  sub_24E3442B8();
  v9 = *v1;
  if (*v1)
  {
    v10 = *(*&v9 + 16);
    if (v10)
    {
      v11 = *&v9 + 32;
      do
      {
        sub_24E3442C8();
        (*(v3 + 8))(v8, v2);
        (*(v3 + 32))(v8, v5, v2);
        v11 += 40;
        --v10;
      }

      while (v10);
    }
  }

  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v19[3] = v2;
  v19[4] = MEMORY[0x277D226E0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(v3 + 16))(boxed_opaque_existential_1, v8, v2);
  MEMORY[0x25303B510](v19, v12, v13, v14, v15);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_24E1DA104(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E1DA158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24E1DA1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E1DA2E4();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24E1DA21C()
{
  result = qword_27F1E7378;
  if (!qword_27F1E7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7378);
  }

  return result;
}

unint64_t sub_24E1DA274()
{
  result = qword_27F1E7380;
  if (!qword_27F1E7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7380);
  }

  return result;
}

unint64_t sub_24E1DA2E4()
{
  result = qword_27F1E7388;
  if (!qword_27F1E7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7388);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlayerProfileDataFetcher(_BYTE *result, int a2, int a3)
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

uint64_t sub_24E1DA3E4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = a2;
  v9 = a4;

  return sub_24E32EA4C(v7, a2, a3, v9);
}

uint64_t sub_24E1DA44C(uint64_t a1, uint64_t a2)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return MEMORY[0x2822009F8](sub_24E1DA46C, 0, 0);
}

uint64_t sub_24E1DA46C()
{
  v1 = v0[22];
  v2 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24E1DA5B8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3308);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E1DA3E4;
  v0[13] = &block_descriptor_70;
  v0[14] = v3;
  [v2 playerAvatarImageWithSize:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E1DA5B8()
{

  return MEMORY[0x2822009F8](sub_24E1DA698, 0, 0);
}

uint64_t sub_24E1DA698()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_24E1DA720()
{
  OUTLINED_FUNCTION_29();
  v5 = type metadata accessor for SmallLockupCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

uint64_t sub_24E1DA800(void *a1)
{
  v1 = a1;
  v2 = sub_24E1DA9CC(&selRef_isHighlighted);

  return v2 & 1;
}

void sub_24E1DA848(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_24E1DAA9C(a3, &selRef_setHighlighted_, sub_24E1DA8D8);
}

void sub_24E1DA8D8()
{
  v1 = [v0 contentView];
  if ([v0 isHighlighted])
  {
    v2 = [objc_opt_self() quaternaryLabelColor];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [v1 setBackgroundColor_];
}

uint64_t sub_24E1DA984(void *a1)
{
  v1 = a1;
  v2 = sub_24E1DA9CC(&selRef_isSelected);

  return v2 & 1;
}

id sub_24E1DA9CC(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SmallLockupCollectionViewCell();
  return objc_msgSendSuper2(&v4, *a1);
}

void sub_24E1DAA0C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_24E1DAA9C(a3, &selRef_setSelected_, sub_24E1DAAF8);
}

uint64_t sub_24E1DAA9C(char a1, SEL *a2, uint64_t (*a3)(id))
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for SmallLockupCollectionViewCell();
  v7 = objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7);
}

void sub_24E1DAAF8()
{
  v1 = *&v0[qword_280BE0C10];
  v2 = [v0 contentView];
  if ([v0 isSelected])
  {
    v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15SmallLockupView_selectedBackgroundColor);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setBackgroundColor_];
}

id sub_24E1DABB0()
{
  OUTLINED_FUNCTION_29();
  v0 = type metadata accessor for Shelf.Presentation(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7_1();
  v4 = v3 - v2;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  LODWORD(v1) = *(v4 + *(v1 + 32));
  OUTLINED_FUNCTION_0_142();
  sub_24E1DCDF8(v4, v5);
  v9 = OUTLINED_FUNCTION_28();
  if (v1 == 1)
  {
    return sub_24E1DACC4(v6, v7, v8);
  }

  else
  {
    return sub_24E1DB4DC(v9, v10, v11, v12, v6, v7, v8);
  }
}

id sub_24E1DACC4(uint64_t a1, uint64_t a2, void *a3)
{
  v72 = type metadata accessor for Shelf.Presentation(0);
  MEMORY[0x28223BE20](v72);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1460);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v13 = type metadata accessor for SmallLockupData();
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  swift_getKeyPath();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v67 = a1;
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  [objc_msgSend(a3 container)];
  v20 = v19;
  v22 = v21;
  swift_unknownObjectRelease();
  v70 = v18;
  sub_24E1DCD94(v18, v15);
  sub_24E1DCD4C(&qword_27F1E1458, type metadata accessor for SmallLockupData);
  sub_24E347158();
  type metadata accessor for SmallLockupView();
  v23 = sub_24E035038(v20, v22, v12, a3);
  v25 = v24;
  (*(v10 + 8))(v12, v9, v23);
  v26 = objc_opt_self();
  v27 = &selRef_setRequiresValidation_;
  v28 = [v26 fractionalWidthDimension_];
  v29 = [v26 absoluteDimension_];
  v30 = objc_opt_self();
  v31 = [v30 sizeWithWidthDimension:v28 heightDimension:v29];

  v32 = [v26 fractionalWidthDimension_];
  if (qword_27F1DDA08 != -1)
  {
    swift_once();
  }

  v33 = [v26 absoluteDimension_];
  v71 = [v30 sizeWithWidthDimension:v32 heightDimension:v33];

  swift_getKeyPath();
  sub_24E347128();

  v34 = v8[*(v72 + 28)];
  sub_24E1DCDF8(v8, type metadata accessor for Shelf.Presentation);
  v68 = v31;
  if (v34 == 1 && (swift_getKeyPath(), sub_24E347128(), , v35 = *(v73 + 16), , v35 >= 2))
  {
    v65 = sub_24DF88A8C(0, &qword_27F1EA590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
    v36 = v31;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_24E369990;
    v64 = sub_24DF88A8C(0, &qword_27F1E5838);
    type metadata accessor for SeparatorView();
    v38 = sub_24DFEA80C();
    v63 = v39;
    v40 = objc_opt_self();
    v41 = [v40 layoutAnchorWithEdges_];
    v42 = [v40 layoutAnchorWithEdges_];
    v43 = v71;
    *(v37 + 32) = sub_24E1DB9C0(v43, v38, v63, v41, v42);
    v44 = v36;
    v27 = &selRef_setRequiresValidation_;
    v45 = sub_24E14E72C(v44);
  }

  else
  {
    v45 = [objc_opt_self() itemWithLayoutSize_];
  }

  v46 = v45;
  swift_getKeyPath();
  sub_24E347128();

  v47 = *(v73 + 16);

  v48 = [v26 v27[23]];
  v49 = [v26 absoluteDimension_];
  v50 = [v30 sizeWithWidthDimension:v48 heightDimension:v49];

  v51 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_24E369990;
  *(v52 + 32) = v46;
  sub_24DF88A8C(0, &qword_27F1EA590);
  v53 = v46;
  v54 = sub_24E347EE8();

  v55 = [v51 verticalGroupWithLayoutSize:v50 subitems:v54];

  swift_getKeyPath();
  v56 = v69;
  sub_24E347128();

  v57 = v56 + *(v72 + 48);
  v58 = *v57;
  LOBYTE(v51) = *(v57 + 8);
  sub_24E1DCDF8(v56, type metadata accessor for Shelf.Presentation);
  if ((v51 & 1) == 0)
  {
    v59 = [objc_opt_self() fixedSpacing_];
    [v55 setInterItemSpacing_];
  }

  v60 = [objc_opt_self() sectionWithGroup_];

  sub_24E1DCDF8(v70, type metadata accessor for SmallLockupData);
  return v60;
}

id sub_24E1DB4DC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1460);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = type metadata accessor for SmallLockupData();
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  [objc_msgSend(a7 container)];
  v23 = v22;
  v25 = v24;
  swift_unknownObjectRelease();
  v26 = v23 - a2 - a4;
  type metadata accessor for SmallLockupView();
  sub_24E1DCD94(v21, v18);
  sub_24E1DCD4C(&qword_27F1E1458, type metadata accessor for SmallLockupData);
  sub_24E347158();
  v27 = sub_24E035038(v26, v25 - a1 - a3, v15, a7);
  v29 = v28;
  (*(v13 + 8))(v15, v12, v27);
  v30 = objc_opt_self();
  v31 = [v30 fractionalWidthDimension_];
  v32 = [v30 absoluteDimension_];
  v33 = objc_opt_self();
  v34 = [v33 sizeWithWidthDimension:v31 heightDimension:v32];

  v35 = [objc_opt_self() itemWithLayoutSize_];
  v36 = [v30 absoluteDimension_];
  v37 = [v30 absoluteDimension_];
  v38 = [v33 sizeWithWidthDimension:v36 heightDimension:v37];

  v39 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_24E370DD0;
  *(v40 + 32) = v35;
  *(v40 + 40) = v35;
  *(v40 + 48) = v35;
  sub_24DF88A8C(0, &qword_27F1EA590);
  v41 = v35;
  v42 = sub_24E347EE8();

  v43 = [v39 verticalGroupWithLayoutSize:v38 subitems:v42];

  v44 = [objc_opt_self() sectionWithGroup_];
  [v44 setOrthogonalScrollingBehavior_];
  [v44 setInterGroupSpacing_];

  sub_24E1DCDF8(v21, type metadata accessor for SmallLockupData);
  return v44;
}

id sub_24E1DB9C0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = sub_24E347CB8();

  v9 = [swift_getObjCClassFromMetadata() supplementaryItemWithLayoutSize:a1 elementKind:v8 containerAnchor:a4 itemAnchor:a5];

  return v9;
}

void sub_24E1DBA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_12_33();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_1();
  v37 = v36 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_6_67();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  OUTLINED_FUNCTION_14_30(v30, &a9 - v39);
  OUTLINED_FUNCTION_14_30(v28, &v40[*(v22 + 56)]);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v42 = type metadata accessor for PlayerCardTheme();
    __swift_project_value_buffer(v42, qword_27F20BF00);
    v43 = [v26 traitCollection];
    v44 = sub_24E3368B4();

    if (v44)
    {
      if (qword_27F1DDC40 != -1)
      {
        swift_once();
      }

      v45 = sub_24E3444F8();
      __swift_project_value_buffer(v45, qword_27F20B4D0);
      v46 = [v26 traitCollection];
      sub_24E343F98();
      sub_24E3444C8();

      (*(v33 + 8))(v37, v31);
    }
  }

  sub_24DF8BFF4(v40, &unk_27F1E1CA0);
  OUTLINED_FUNCTION_13_41();
}

void sub_24E1DBCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_12_33();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_1();
  v37 = v36 - v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_6_67();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v38);
  v40 = &a9 - v39;
  OUTLINED_FUNCTION_14_30(v30, &a9 - v39);
  OUTLINED_FUNCTION_14_30(v28, &v40[*(v22 + 56)]);
  if (qword_27F1DDC38 != -1)
  {
    OUTLINED_FUNCTION_0_35();
  }

  v41 = sub_24E3444F8();
  __swift_project_value_buffer(v41, qword_27F20B4B8);
  v42 = [v26 traitCollection];
  sub_24E343F98();
  sub_24E3444C8();

  (*(v33 + 8))(v37, v31);
  sub_24DF8BFF4(v40, &unk_27F1E1CA0);
  OUTLINED_FUNCTION_13_41();
}

void sub_24E1DBE64()
{
  OUTLINED_FUNCTION_12_33();
  v64 = v1;
  v65 = v0;
  v3 = v2;
  v66 = v4;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v62 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  OUTLINED_FUNCTION_0_14();
  v67 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v63 = &v60 - v12;
  v13 = type metadata accessor for Shelf.Presentation(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v61 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  sub_24DF8BD90(v3, &v60 - v26, &unk_27F1E1CB0);
  v28 = *(v20 + 48);
  v68 = v27;
  sub_24DF8BD90(v65, &v27[v28], &unk_27F1E1CB0);
  swift_getKeyPath();
  v29 = v9;
  sub_24E347128();

  v30 = v19[*(v14 + 40)];
  OUTLINED_FUNCTION_0_142();
  sub_24E1DCDF8(v19, v31);
  if (v30 == 1)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v32 = type metadata accessor for PlayerCardTheme();
    v33 = *(__swift_project_value_buffer(v32, qword_27F20BF00) + 64);
    v34 = v33;
    v35 = [v64 traitCollection];
    sub_24E336638();
    v37 = v36;

    v38 = 0;
  }

  else
  {
    v33 = 0;
    v38 = 3;
    v37 = 0;
  }

  v71 = 1;
  v70 = 1;
  v39 = v68;
  sub_24DF8BD90(v68, v24, &unk_27F1E1CA0);
  v40 = *(v20 + 48);
  if (__swift_getEnumTagSinglePayload(v24 + v40, 1, v29) == 1)
  {
    sub_24DF8BFF4(v39, &unk_27F1E1CA0);
    sub_24DF8BFF4(v24 + v40, &unk_27F1E1CB0);
    v41 = v24;
    v42 = &unk_27F1E1CB0;
LABEL_22:
    sub_24DF8BFF4(v41, v42);
    v37 = 0;
    v55 = -1;
    goto LABEL_23;
  }

  (*(v67 + 32))(v63, v24 + v40, v29);
  sub_24DF8BFF4(v24, &unk_27F1E1CB0);
  swift_getKeyPath();
  sub_24E347128();

  if (sub_24E17A62C(v69) == 0x6C6961746564 && v43 == 0xE600000000000000)
  {
  }

  else
  {
    v45 = sub_24E348C08();

    if ((v45 & 1) == 0)
    {
LABEL_21:
      v56 = OUTLINED_FUNCTION_9_48();
      v57(v56);
      v42 = &unk_27F1E1CA0;
      v41 = v68;
      goto LABEL_22;
    }
  }

  swift_getKeyPath();
  v46 = v61;
  sub_24E347128();

  v47 = v62;
  sub_24DF8BD90(v46, v62, &qword_27F1DF058);
  OUTLINED_FUNCTION_0_142();
  sub_24E1DCDF8(v46, v48);
  v49 = type metadata accessor for HeaderData();
  LODWORD(v46) = __swift_getEnumTagSinglePayload(v47, 1, v49);
  sub_24DF8BFF4(v47, &qword_27F1DF058);
  if (v46 != 1)
  {
    goto LABEL_21;
  }

  v50 = [v64 traitCollection];
  v51 = sub_24DF9EF04();

  if (v51)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v52 = type metadata accessor for PlayerCardTheme();
    if (*__swift_project_value_buffer(v52, qword_27F20BF00) != 1)
    {
      goto LABEL_21;
    }
  }

  v53 = OUTLINED_FUNCTION_9_48();
  v54(v53);
  sub_24DF8BFF4(v68, &unk_27F1E1CA0);
  v70 = v30 ^ 1;
  v55 = 3;
LABEL_23:
  v58 = v71;
  v59 = v70;
  *v6 = v33;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0;
  *(v6 + 48) = v38;
  *(v6 + 56) = v55;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = v58;
  *(v6 + 104) = 0;
  *(v6 + 112) = v37;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = v59;
  OUTLINED_FUNCTION_13_41();
}

double sub_24E1DC428(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a4;
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v33 = v8;
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v11 = v10 - v9;
  type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_6_67();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  sub_24DF8BD90(a2, &v31 - v18, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v19[*(v16 + 56)], &unk_27F1E1CB0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v20 = *(v15 + *(v4 + 32));
  OUTLINED_FUNCTION_0_142();
  sub_24E1DCDF8(v15, v21);
  if (v20)
  {
    v22 = *MEMORY[0x277D768C8];
  }

  else
  {
    if (qword_27F1DDC38 != -1)
    {
      OUTLINED_FUNCTION_0_35();
    }

    v23 = sub_24E3444F8();
    __swift_project_value_buffer(v23, qword_27F20B4B8);
    v24 = v32;
    v25 = [v32 traitCollection];
    sub_24E343F98();
    sub_24E3444C8();
    v22 = v26;

    v27 = v34;
    v28 = *(v33 + 8);
    v28(v11, v34);
    v29 = [v24 traitCollection];
    sub_24E343F98();
    sub_24E3444C8();

    v28(v11, v27);
  }

  sub_24DF8BFF4(v19, &unk_27F1E1CA0);
  return v22;
}

double sub_24E1DC71C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = a4;
  v27 = type metadata accessor for Shelf.Presentation(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_12_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  sub_24DF8BD90(a2, &v26 - v16, &unk_27F1E1CB0);
  sub_24DF8BD90(a3, &v17[*(v10 + 48)], &unk_27F1E1CB0);
  if (qword_27F1DD6D8 != -1)
  {
    swift_once();
  }

  if (qword_27F1DD6E0 != -1)
  {
    swift_once();
  }

  sub_24DF8BD90(v17, v14, &unk_27F1E1CA0);
  v18 = *(v10 + 48);
  v19 = v28;
  sub_24E1DBE64();
  sub_24DF8BFF4(v14 + v18, &unk_27F1E1CB0);
  sub_24DF8BFF4(v14, &unk_27F1E1CB0);
  memcpy(v34, v33, 0x89uLL);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v20 = *(v9 + *(v27 + 24));
  OUTLINED_FUNCTION_0_142();
  sub_24E1DCDF8(v9, v21);
  if (v20 != 1)
  {
    goto LABEL_9;
  }

  memcpy(v31, v34, 0x89uLL);
  if (qword_27F1DDB58 != -1)
  {
    swift_once();
  }

  memcpy(v32, &xmmword_27F20B258, 0x89uLL);
  memcpy(v30, &xmmword_27F20B258, 0x89uLL);
  sub_24E15063C(v32, &v29);
  v22 = sub_24E26C3C0(v31, v30);
  memcpy(v33, v30, 0x89uLL);
  sub_24E1505E8(v33);
  if ((v22 & 1) == 0)
  {
    if (qword_27F1DE118 != -1)
    {
      OUTLINED_FUNCTION_10_3();
    }

    v23 = type metadata accessor for PlayerCardTheme();
    __swift_project_value_buffer(v23, qword_27F20BF00);
    v24 = [v19 traitCollection];
    sub_24E336638();
    sub_24E1505E8(v34);

    sub_24DF8BFF4(v17, &unk_27F1E1CA0);
  }

  else
  {
LABEL_9:
    sub_24DF8BFF4(v17, &unk_27F1E1CA0);
    sub_24E1505E8(v34);
  }

  return 0.0;
}

id sub_24E1DCAF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SmallLockupCollectionViewCell()
{
  result = qword_27F1E7390;
  if (!qword_27F1E7390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1DCC0C(uint64_t a1)
{
  result = sub_24E1DCD4C(&qword_27F1E73A0, type metadata accessor for SmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1DCCF4(uint64_t a1)
{
  result = sub_24E1DCD4C(&qword_27F1E6420, type metadata accessor for SmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1DCD4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E1DCD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallLockupData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1DCDF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_14_30(uint64_t a1, uint64_t a2)
{

  return sub_24DF8BD90(a1, a2, v2);
}

uint64_t sub_24E1DCEDC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_hasShadow;
  OUTLINED_FUNCTION_17_28();
  return *(v0 + v1);
}

void sub_24E1DCF14(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_hasShadow;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_24E1DDA68();
}

void (*sub_24E1DCF68(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_9_1();
  return sub_24E1DCFBC;
}

void sub_24E1DCFBC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E1DDA68();
  }
}

uint64_t (*sub_24E1DCFF0(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_24E1DD038();
  return sub_24E1DE510;
}

id sub_24E1DD03C()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView) + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView) image];

  return v1;
}

uint64_t (*sub_24E1DD0B4(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_24E1DD038();
  return sub_24E1DD0FC;
}

void sub_24E1DD100(id *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_24E0D8E24(v2);
  }

  else
  {
    sub_24E0D8E24(*a1);
  }
}

uint64_t sub_24E1DD174()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_isArcadeSubscriber;
  OUTLINED_FUNCTION_17_28();
  return *(v0 + v1);
}

id sub_24E1DD1C0(char a1, uint64_t *a2, void *a3)
{
  v7 = *a2;
  swift_beginAccess();
  *(v3 + v7) = a1;
  return sub_24E1DDEAC(a3, a2);
}

id (*sub_24E1DD228(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_9_1();
  return sub_24E1DD27C;
}

id sub_24E1DD290(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24E1DDEAC(a3, a4);
  }

  return result;
}

uint64_t sub_24E1DD2DC()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_showMessagesBadge;
  OUTLINED_FUNCTION_17_28();
  return *(v0 + v1);
}

id (*sub_24E1DD328(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_9_1();
  return sub_24E1DD37C;
}

void sub_24E1DD390(id a1, char a2)
{
  if (a1)
  {
    [a1 size];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  sub_24E0D8E04(v4, v5);
  sub_24E0D90D8(a1, a2 & 1);
}

void sub_24E1DD3FC(void *a1, double a2)
{
  *(*(v2 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView) + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderWidth) = a2;
  sub_24E0983D0();
  sub_24E098584(a1);
}

id AvatarView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

char *AvatarView.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = sub_24E343F88();
  v47 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_arcadeBadgeView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_messagesBadgeView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_hasShadow) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_isArcadeSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_showMessagesBadge) = 0;
  v7 = type metadata accessor for AvatarView();
  v48 = v0;
  v49 = v7;
  v8 = OUTLINED_FUNCTION_28();
  v11 = objc_msgSendSuper2(v9, v10, v8);
  v12 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  v16 = v11;
  [v16 setLayoutMargins_];
  v17 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView;
  v18 = qword_27F1DD8C8;
  v19 = *&v16[OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView];
  if (v18 != -1)
  {
    OUTLINED_FUNCTION_0_143();
  }

  v20 = qword_27F20AF30;
  v21 = *algn_27F20AF38;
  v22 = qword_27F20AF40;
  v23 = qword_27F20AF48;
  v24 = qword_27F20AF30;
  sub_24E0D8B84(v20, v21, v22, v23);

  v25 = qword_27F1DE118;
  v26 = *&v16[v17];
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for PlayerCardTheme();
  [v26 setBackgroundColor_];

  [*&v16[v17] setContentMode_];
  [v16 addSubview_];
  v28 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_arcadeBadgeView;
  v29 = *&v16[OBJC_IVAR____TtC12GameCenterUI10AvatarView_arcadeBadgeView];
  sub_24DFC2C38();
  v30 = v29;
  v31 = sub_24E011930(0xD000000000000012, 0x800000024E3AC610);
  [v30 setImage_];

  [*&v16[v28] setHidden_];
  [v16 addSubview_];
  v32 = [v16 traitCollection];

  [v32 displayScale];
  v34 = v33;

  v35 = sub_24DFE71DC(16.0, 16.0, v34);
  if (v35)
  {
    v36 = v35[2];

    v37 = *&v16[OBJC_IVAR____TtC12GameCenterUI10AvatarView_messagesBadgeView];
    v38 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v39 = v37;
    v40 = [v38 initWithCGImage_];
    [v39 setImage_];
  }

  else
  {
    sub_24E343CC8();
    v41 = sub_24E343F78();
    v42 = sub_24E348258();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_24DE53000, v41, v42, "Failed to load Messages icon to overlay it on top of friend suggestion avatar.", v43, 2u);
      MEMORY[0x253040EE0](v43, -1, -1);
    }

    (*(v47 + 8))(v3, v1);
  }

  v44 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_messagesBadgeView;
  [*&v16[OBJC_IVAR____TtC12GameCenterUI10AvatarView_messagesBadgeView] setHidden_];
  [v16 addSubview_];

  return v16;
}

void sub_24E1DD95C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView;
  type metadata accessor for ArtworkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_arcadeBadgeView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_messagesBadgeView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_hasShadow) = 1;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_isArcadeSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_showMessagesBadge) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E1DDA68()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_hasShadow;
  OUTLINED_FUNCTION_17_28();
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  if (*(v0 + v1) == 1)
  {
    if (qword_27F1DD8C8 != -1)
    {
      OUTLINED_FUNCTION_0_143();
    }

    v2 = qword_27F20AF30;
    v3 = *algn_27F20AF38;
    v4 = qword_27F20AF40;
    v5 = qword_27F20AF48;
    v6 = qword_27F20AF30;
  }

  sub_24E0D8B84(v2, v3, v4, v5);
}

id sub_24E1DDB6C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView) backgroundColor];

  return v1;
}

void sub_24E1DDC08(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView) setBackgroundColor_];
}

void sub_24E1DDCCC()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AvatarView();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI10AvatarView_artworkView];
  OUTLINED_FUNCTION_3_95();
  [v2 setFrame_];
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v3 = 2.75;
  }

  else
  {
    v3 = 4.0;
  }

  OUTLINED_FUNCTION_3_95();
  v4 = CGRectGetWidth(v13) / v3;
  [v1 bounds];
  Height = CGRectGetHeight(v14);
  v6 = *&v1[OBJC_IVAR____TtC12GameCenterUI10AvatarView_arcadeBadgeView];
  v7 = Height / v3;
  [v1 bounds];
  v8 = CGRectGetMaxX(v15) + 4.0 - v4;
  OUTLINED_FUNCTION_3_95();
  [v6 setFrame_];
  v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI10AvatarView_messagesBadgeView];
  OUTLINED_FUNCTION_3_95();
  v10 = CGRectGetMaxX(v17) + 2.0 + -16.0;
  OUTLINED_FUNCTION_3_95();
  [v9 setFrame_];
  [v2 frame];
  Width = CGRectGetWidth(v19);
  sub_24E0D8A24(1, Width * 0.5);
}

id sub_24E1DDEAC(void *a1, uint64_t *a2)
{
  v3 = *(v2 + *a1);
  v4 = *a2;
  OUTLINED_FUNCTION_17_28();
  return [v3 setHidden_];
}

id sub_24E1DDF2C(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AvatarView();
  objc_msgSendSuper2(&v4, sel_traitCollectionDidChange_, a1);
  return [v1 setNeedsLayout];
}

id AvatarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E1DE084(uint64_t a1)
{
  result = sub_24E1DE0AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24E1DE0AC()
{
  result = qword_27F1E73D8;
  if (!qword_27F1E73D8)
  {
    type metadata accessor for AvatarView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E73D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_143()
{

  return swift_once();
}

id OUTLINED_FUNCTION_3_95()
{

  return [v0 (v1 + 3832)];
}

void GKVisualEffects.init()(void *a1@<X8>)
{
  *a1 = [objc_allocWithZone(MEMORY[0x277D75D58]) init];
  v2 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DFEC928();
  v3 = sub_24E347F08();

  a1[1] = v3;
}

Swift::Void __swiftcall GKVisualEffects.applyTo(view:)(UIVisualEffectView *view)
{
  [(UIVisualEffectView *)view setEffect:*v1];
  sub_24DFEC928();
  v3 = sub_24E347EE8();
  [(UIVisualEffectView *)view setBackgroundEffects:v3];
}

unint64_t sub_24E1DE670()
{
  result = qword_27F1E5240;
  if (!qword_27F1E5240)
  {
    type metadata accessor for AppStoreContentListAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E5240);
  }

  return result;
}

uint64_t sub_24E1DE6C8(uint64_t a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  type metadata accessor for AppStoreContentListAction();
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v8 = Strong;
  v9 = *a1;
  if (!*a1)
  {

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    return sub_24E347AA8();
  }

  v21 = *(a1 + 8);
  v10 = *(a1 + 16);
  type metadata accessor for AppStoreContentListPagePresenter();
  swift_allocObject();
  v11 = v10;
  v12 = v9;
  sub_24E021080(v12, &v21, v10);
  v13 = objc_allocWithZone(type metadata accessor for AppStoreContentListViewController());

  sub_24E2332C4();
  v15 = v14;
  v16 = [v8 navigationController];
  if (v16)
  {
    v17 = v16;
    [v16 pushViewController:v15 animated:1];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
  v18 = sub_24E347AA8();

  return v18;
}

char *sub_24E1DE940(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_24E347358();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[2];
  v58 = a1[1];
  v59 = v9;
  v56 = a1[3];
  v57 = a1[5];
  v11 = a1[8];
  v10 = a1[9];
  v60 = a1[10];
  v12 = objc_allocWithZone(GKBaseContentUnavailableView);
  v13 = OUTLINED_FUNCTION_1_38();
  result = sub_24E1DF3D4(v13, v14, v15, v16, 0, 0xE000000000000000, 0);
  if (result)
  {
    v52[1] = v11;
    v55 = v5;
    *(v2 + OBJC_IVAR____TtC12GameCenterUI9ErrorView_contentView) = result;
    v69 = v2;
    v70 = ObjectType;
    v18 = OUTLINED_FUNCTION_1_38();
    v21 = objc_msgSendSuper2(v19, v20, v18);
    v22 = qword_27F1DDD80;
    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v53 = v6;
    [v23 setBackgroundColor_];
    v67 = v23;
    v68 = ObjectType;
    v24 = OUTLINED_FUNCTION_7_2();
    objc_msgSendSuper2(v25, v26, v24);
    v27 = OBJC_IVAR____TtC12GameCenterUI9ErrorView_contentView;
    v28 = OUTLINED_FUNCTION_7_2();
    [v29 v30];
    v31 = *&v23[v27];
    v54 = v10;
    if (v10)
    {
      v63 = v10;
      v64 = v60;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v62 = sub_24E00B24C;
      *(&v62 + 1) = &block_descriptor_71;
      v32 = _Block_copy(&aBlock);
      v33 = v31;
      sub_24DF88BEC(v10);
    }

    else
    {
      v34 = v31;
      v32 = 0;
    }

    [v31 setButtonAction_];
    _Block_release(v32);

    v35 = *&v23[v27];
    v36 = sub_24E347CB8();
    [v35 setTitle_];

    v37 = *&v23[v27];
    v38 = sub_24E347CB8();
    [v37 setMessage_];

    v39 = *&v23[v27];
    v40 = sub_24E347CB8();
    v41 = GKGameCenterUIFrameworkBundle();
    v42 = GKGetLocalizedStringFromTableInBundle();

    v43 = sub_24E347CF8();
    v45 = v44;

    sub_24E1DF470(v43, v45, v39);
    [v23 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E28F0);
    sub_24E347018();
    *(swift_allocObject() + 16) = xmmword_24E36A270;
    sub_24E346FB8();
    v46 = v59;
    if (v59)
    {
      swift_getErrorValue();
      v47 = v65;
      v48 = v66;
      *(&v62 + 1) = v66;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v47, v48);

      sub_24DE73FA0(v54);
    }

    else
    {

      sub_24DE73FA0(v54);
      aBlock = 0u;
      v62 = 0u;
    }

    sub_24E346FE8();
    sub_24DF8894C(&aBlock);
    v50 = v53;
    v51 = v55;
    (*(v53 + 104))(v8, *MEMORY[0x277D21DE8], v55);
    sub_24E0EF428();

    (*(v50 + 8))(v8, v51);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24E1DF0A0()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = v0;
  v10[3] = v2;
  v10[4] = v4;
  v10[5] = v6;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24E1DF4EC;
  *(v11 + 24) = v10;
  v16[4] = sub_24DFA0D30;
  v16[5] = v11;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_24E2C314C;
  v16[3] = &block_descriptor_6_3;
  v12 = _Block_copy(v16);
  v13 = v0;

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_24E1DF254(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12GameCenterUI9ErrorView_contentView);
  [v1 setFrame_];
  v2 = [v1 _actionButton];
  if (v2)
  {
    v5 = v2;
    v3 = [v1 buttonAction];
    v4 = v3;
    if (v3)
    {
      _Block_release(v3);
    }

    [v5 setHidden_];
  }
}

id sub_24E1DF3D4(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v13 = sub_24E347CB8();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithFrame:v13 title:a7 style:{a1, a2, a3, a4}];

  return v14;
}

void sub_24E1DF470(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_24E347CB8();

  [a3 setButtonTitle_];
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for ResetAnalyticsIdentifierState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E1DF5E4()
{
  result = qword_27F1E73E8;
  if (!qword_27F1E73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E73E8);
  }

  return result;
}

unint64_t sub_24E1DF638(char a1)
{
  result = 0x74656C63696863;
  switch(a1)
  {
    case 1:
      result = 0x666C656873;
      break;
    case 2:
      result = 0x70756B636F6CLL;
      break;
    case 3:
      result = 0x6F50737365636361;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24E1DF6D8(char a1)
{
  result = 0x657079546469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
    case 4:
      result = 0x6973736572706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24E1DF774@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v93 = sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v91 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12_1();
  v89 = v5 - v6;
  v8 = MEMORY[0x28223BE20](v7);
  v90 = &v75 - v9;
  MEMORY[0x28223BE20](v8);
  v92 = &v75 - v10;
  v85 = sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v83 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v15);
  v17 = (&v75 - v16);
  sub_24E344998();
  OUTLINED_FUNCTION_0_14();
  v97 = v18;
  v98 = v19;
  MEMORY[0x28223BE20](v18);
  v96 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  v22 = v21 - 8;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v79 = v24;
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_24E3442D8();
  OUTLINED_FUNCTION_0_14();
  v27 = v26;
  v81 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12_1();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v75 - v34;
  MEMORY[0x28223BE20](v33);
  v80 = &v75 - v36;
  sub_24E3442B8();
  v76 = v25;
  sub_24E1DFFB8(v2, v25);
  v78 = *(v23 + 80);
  v37 = (v78 + 16) & ~v78;
  v77 = v37;
  v38 = swift_allocObject();
  sub_24E1E001C(v25, v38 + v37);
  sub_24E3442C8();

  v40 = v27 + 8;
  v39 = *(v27 + 8);
  v41 = v95;
  v39(v31, v95);
  v87 = v39;
  v88 = v40;
  sub_24E3442C8();
  v39(v35, v41);
  v75 = v2;
  sub_24DF89628(v2, v99);
  v42 = (v2 + *(v22 + 36));
  v43 = (v42 + *(type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics() + 32));
  v44 = *v43;
  v45 = MEMORY[0x277D85048];
  v46 = MEMORY[0x277D225F8];
  v17[3] = MEMORY[0x277D85048];
  v17[4] = v46;
  *v17 = v44;
  v47 = *MEMORY[0x277D22980];
  v48 = *(v83 + 104);
  v49 = v85;
  v48(v17, v47, v85);
  v50 = v43[1];
  v51 = v82;
  v82[3] = v45;
  v51[4] = v46;
  *v51 = v50;
  v48(v51, v47, v49);
  v52 = *MEMORY[0x277D22988];
  v48(v84, v52, v49);
  v48(v86, v52, v49);
  v53 = v96;
  sub_24E3449A8();
  v54 = v89;
  sub_24E344408();
  v55 = v97;
  v100 = v97;
  v101 = MEMORY[0x277D22998];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v99);
  (*(v98 + 16))(boxed_opaque_existential_1, v53, v55);
  v57 = v76;
  sub_24E1DFFB8(v75, v76);
  v58 = v77;
  v59 = swift_allocObject();
  sub_24E1E001C(v57, v59 + v58);
  v60 = v90;
  v61 = v54;
  sub_24E344418();

  v62 = v91;
  v63 = *(v91 + 8);
  v64 = v93;
  v63(v61, v93);
  __swift_destroy_boxed_opaque_existential_1(v99);
  v65 = v95;
  v100 = v95;
  v101 = MEMORY[0x277D226E0];
  v66 = __swift_allocate_boxed_opaque_existential_1(v99);
  v67 = v80;
  (*(v81 + 16))(v66, v80, v65);
  v68 = v92;
  sub_24E344418();
  v63(v60, v64);
  __swift_destroy_boxed_opaque_existential_1(v99);
  v69 = *v42;
  v70 = v42[1];
  v71 = v42[2];
  v72 = v42[3];
  v100 = v64;
  v101 = MEMORY[0x277D22778];
  v73 = __swift_allocate_boxed_opaque_existential_1(v99);
  (*(v62 + 16))(v73, v68, v64);
  MEMORY[0x25303B510](v99, v69, v70, v71, v72);
  v63(v68, v64);
  (*(v98 + 8))(v96, v97);
  return v87(v67, v65);
}

uint64_t type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout()
{
  result = qword_27F1E73F0;
  if (!qword_27F1E73F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1DFF4C()
{
  type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  return sub_24E344268();
}

uint64_t sub_24E1DFFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1E001C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1E00C0()
{
  type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
  type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  return sub_24E3443D8();
}

uint64_t objectdestroyTm_21()
{
  v1 = (type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + v3 + 80);
  v5 = v0 + v3 + v1[9];
  v6 = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
  v7 = v6[5];
  v8 = sub_24E344158();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v6[6], v8);
  v9(v5 + v6[10], v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24E1E0294(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_24E1E034C()
{
  result = sub_24DF99D14();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActivityFeedLeaderboardAvatarsSubview.Metrics();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E1E03D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E1E04CC(&qword_27F1E7410);

  return MEMORY[0x282180C48](a1, a2, v4);
}

uint64_t sub_24E1E04CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActivityFeedLeaderboardAvatarsSubviewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI21SmallFriendLockupDataV25TrailingViewConfigurationO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t sub_24E1E0548(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 49))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E1E0588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24E1E05DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t type metadata accessor for SmallFriendLockupData()
{
  result = qword_27F1E7418;
  if (!qword_27F1E7418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E1E0688()
{
  sub_24DF9E030(319, &qword_280BE0128);
  if (v0 <= 0x3F)
  {
    sub_24DF9E030(319, &qword_280BDFCA8);
    if (v1 <= 0x3F)
    {
      sub_24E0007CC(319, &qword_280BE0108, &qword_280BE0110);
      if (v2 <= 0x3F)
      {
        sub_24DF9E07C();
        if (v3 <= 0x3F)
        {
          sub_24DF9E0E0();
          if (v4 <= 0x3F)
          {
            sub_24E0007CC(319, &qword_27F1E7428, &qword_27F1DF028);
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

unint64_t sub_24E1E0814()
{
  result = qword_27F1E7430;
  if (!qword_27F1E7430)
  {
    type metadata accessor for SmallFriendLockupData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7430);
  }

  return result;
}

void sub_24E1E086C()
{
  OUTLINED_FUNCTION_32();
  v45 = v1;
  v49 = sub_24E3472B8();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v48 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E88);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_12_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = *(v0 + 16);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v38 = v3 + 16;
  v47 = (v3 + 32);
  v41 = v3;
  v42 = v14;
  v43 = (v3 + 8);

  v20 = 0;
  v39 = v13;
  v40 = v10;
  v44 = v15;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_9:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = v22 | (v21 << 6);
      v24 = v42;
      (*(v41 + 16))(v48, *(v42 + 48) + *(v41 + 72) * v23, v49);
      v25 = *(v24 + 56);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E80);
      v27 = *(v26 + 48);
      v46 = *(v25 + 16 * v23);
      v10 = v40;
      v28 = OUTLINED_FUNCTION_9_49();
      v29(v28);
      *(v10 + v27) = v46;
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v26);
      v13 = v39;
LABEL_10:
      v30 = OUTLINED_FUNCTION_9_49();
      sub_24E1E1AE0(v30, v31);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E80);
      if (__swift_getEnumTagSinglePayload(v13, 1, v32) == 1)
      {
        break;
      }

      v33 = v48;
      v34 = v49;
      (*v47)(v48, v13, v49);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_24E347288();
      v36 = sub_24E347CB8();

      [v45 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v36];

      (*v43)(v33, v34);
      v15 = v44;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    OUTLINED_FUNCTION_18();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E80);
        __swift_storeEnumTagSinglePayload(v10, 1, 1, v37);
        v18 = 0;
        goto LABEL_10;
      }

      v18 = *(v15 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

void sub_24E1E0BCC()
{
  OUTLINED_FUNCTION_32();
  v33 = v1;
  v34 = v2;
  v36 = v3;
  v37 = v4;
  v31 = v6;
  v32 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v35 = sub_24E3472B8();
  OUTLINED_FUNCTION_0_14();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_14();
  sub_24DF9DEAC(v8, v0, &unk_27F1E1CB0);
  sub_24DF9DEAC(v31, v0 + *(v21 + 56), &unk_27F1E1CB0);
  v23 = v32;
  (*(v11 + 16))(v14, v32, v9);
  sub_24DF9005C();
  sub_24E347298();
  sub_24E347288();
  v24 = sub_24E347CB8();

  v25 = sub_24E343488();
  v26 = [v34 dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:v25];

  swift_getObjectType();
  dynamic_cast_existential_1_unconditional(v26);
  v28 = v27;
  ObjectType = swift_getObjectType();
  (*(v28 + 96))(v23, v36, v37, ObjectType, v28);
  (*(v16 + 8))(v20, v35);
  sub_24DF8C95C(v0, &unk_27F1E1CA0);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E1E0E74()
{
  v1 = v0;
  v2 = sub_24E3472B8();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v9 = v19;
  v10 = __swift_project_boxed_opaque_existential_1(&v17, v19);
  v16[3] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v10, v9);
  sub_24E3472A8();
  __swift_destroy_boxed_opaque_existential_1(&v17);
  v12 = sub_24E130ECC(v8, *(v1 + 16));
  if (v12)
  {
    v13 = v12;
    (*(v4 + 8))(v8, v2);
    return v13;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_24E348998();

    v17 = 0xD00000000000001CLL;
    v18 = 0x800000024E3AC870;
    sub_24E1E1A88();
    v15 = sub_24E348BA8();
    MEMORY[0x25303E950](v15);

    result = sub_24E348AE8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24E1E108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v48 = a5;
  v49 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_12_1();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v47 - v24;
  sub_24DF9DEAC(a2, v47 - v24, &unk_27F1E1CB0);
  sub_24DF9DEAC(a3, &v25[*(v19 + 56)], &unk_27F1E1CB0);
  v26 = a1;
  v47[1] = sub_24E1E0E74();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_9_49();
  sub_24DF9DEAC(v29, v30, &unk_27F1E1CA0);
  v31 = *(v19 + 56);
  v32 = *(*v10 + 136);
  v33 = a1;
  v47[0] = a1;
  v34 = v48;
  v35 = v32(v33, v22, v22 + v31, v48);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_24DF8C95C(v22 + v31, &unk_27F1E1CB0);
  sub_24DF8C95C(v22, &unk_27F1E1CB0);
  v42 = (*(v28 + 16))(v26, v49, v34, v35 + a6, v37 + a7, v39 + a8, v41 + a9);
  v43 = OUTLINED_FUNCTION_9_49();
  sub_24DF9DEAC(v43, v44, &unk_27F1E1CA0);
  v45 = *(v19 + 56);
  (*(*v10 + 128))(v42, v47[0], v22, v22 + v45, v34);
  sub_24DF8C95C(v25, &unk_27F1E1CA0);
  sub_24DF8C95C(v22 + v45, &unk_27F1E1CB0);
  sub_24DF8C95C(v22, &unk_27F1E1CB0);
  return v42;
}

uint64_t sub_24E1E1348()
{
  v0 = OUTLINED_FUNCTION_7_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_14();
  OUTLINED_FUNCTION_4_79();
  OUTLINED_FUNCTION_1_110();
  return OUTLINED_FUNCTION_10_46();
}

double sub_24E1E13E4()
{
  v0 = OUTLINED_FUNCTION_7_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_14();
  OUTLINED_FUNCTION_4_79();
  OUTLINED_FUNCTION_1_110();
  v2 = *MEMORY[0x277D75060];
  OUTLINED_FUNCTION_10_46();
  return v2;
}

void sub_24E1E14B0()
{
  OUTLINED_FUNCTION_32();
  v20 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = OUTLINED_FUNCTION_7_26();
  sub_24DF9DEAC(v13, v14, &unk_27F1E1CB0);
  sub_24DF9DEAC(v2, &v12[*(v6 + 56)], &unk_27F1E1CB0);
  v15 = sub_24E1E0E74();
  v17 = v16;
  sub_24DF9DEAC(v12, v9, &unk_27F1E1CA0);
  v18 = *(v6 + 56);
  (*(v17 + 80))(v4, v9, v9 + v18, v20, v15, v17);
  sub_24DF8C95C(v12, &unk_27F1E1CA0);
  sub_24DF8C95C(v9 + v18, &unk_27F1E1CB0);
  sub_24DF8C95C(v9, &unk_27F1E1CB0);
  OUTLINED_FUNCTION_18();
}

void sub_24E1E1634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_32();
  v50 = v22;
  v51 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v49 = a21;
  v47 = v32;
  v48 = a22;
  v33 = type metadata accessor for Shelf.Presentation(0);
  MEMORY[0x28223BE20](v33 - 8);
  OUTLINED_FUNCTION_7_1();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v47 - v39;
  v41 = OUTLINED_FUNCTION_9_49();
  sub_24DF9DEAC(v41, v42, &unk_27F1E1CB0);
  sub_24DF9DEAC(v25, &v40[*(v37 + 56)], &unk_27F1E1CB0);
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  v44 = v48;
  (*(v29 + 104))(v27, v51, v36, v50, v49, v48, ObjectType, v29, v47);
  sub_24DF82D00(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  sub_24E347148();
  v52[3] = ObjectType;
  v52[0] = v31;
  v45 = *(v44 + qword_27F1EB198);

  v46 = v31;
  sub_24E18FE24(v53, v52, v45);

  sub_24DF8C95C(v53, &qword_27F1E2428);
  sub_24DF8C95C(v40, &unk_27F1E1CA0);
  __swift_destroy_boxed_opaque_existential_1(v52);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E1E1868()
{
  v0 = OUTLINED_FUNCTION_7_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_13_30();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_14();
  OUTLINED_FUNCTION_4_79();
  OUTLINED_FUNCTION_1_110();
  return OUTLINED_FUNCTION_10_46();
}

uint64_t sub_24E1E1904(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 112))(a3, a4, ObjectType, a2);
  v17[3] = ObjectType;
  v17[0] = a1;
  if (*(a4 + qword_27F1EB198))
  {
    sub_24DFB4104(v17, v16);
    swift_retain_n();
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6530);
    if (OUTLINED_FUNCTION_12_34())
    {
      swift_getObjectType();
      v10 = OUTLINED_FUNCTION_6_68();
      v11(v10);
      swift_unknownObjectRelease();
    }

    sub_24DFB4104(v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6538);
    if (OUTLINED_FUNCTION_12_34())
    {
      swift_getObjectType();
      v12 = OUTLINED_FUNCTION_6_68();
      v13(v12);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = a1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_24E1E1A88()
{
  result = qword_27F1EA1B0;
  if (!qword_27F1EA1B0)
  {
    sub_24E3472B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1EA1B0);
  }

  return result;
}

uint64_t sub_24E1E1AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2E88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_110()
{
  v5 = v2 + *(v1 + 56);

  return sub_24DF9DEAC(v0, v5, v3);
}

uint64_t OUTLINED_FUNCTION_4_79()
{

  return sub_24DF9DEAC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_10_46()
{

  return sub_24DF8C95C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_12_34()
{

  return swift_dynamicCast();
}

uint64_t sub_24E1E1BF8(void *a1)
{
  v2 = sub_24E347208();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  sub_24E3471C8();
  sub_24DFD8A60();

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v7 = sub_24E347AD8();
  aBlock[4] = sub_24E1E2018;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_72;
  v8 = _Block_copy(aBlock);

  [a1 signOutWithCompletionHandler_];
  _Block_release(v8);
  return v7;
}

void sub_24E1E1DA8(uint64_t a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_24E1E2038();
    v7 = swift_allocError();
    sub_24E347AB8();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D21CA8], v2, v4);
    sub_24E347AC8();
    (*(v3 + 8))(v6, v2);
  }
}

id sub_24E1E1EF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameCenterSignOutActionImplementation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24E1E1F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameCenterSignOutActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E1E1FA8()
{
  result = qword_27F1E7438;
  if (!qword_27F1E7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7438);
  }

  return result;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E1E2038()
{
  result = qword_27F1E7440;
  if (!qword_27F1E7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GameCenterSignOutActionImplementation.GameCenterSignOutActionImplementationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_24E1E213C()
{
  result = qword_27F1E7448;
  if (!qword_27F1E7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E7448);
  }

  return result;
}

uint64_t sub_24E1E2198(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
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

uint64_t sub_24E1E21D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24E1E2280(double a1)
{
  v2 = v1;
  v4 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = v9 - v8;
  v11 = v1[15];
  v12 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v11);
  sub_24E2548A0(v11, v12);
  OUTLINED_FUNCTION_15_27();
  sub_24E344198();
  v13 = *(v6 + 8);
  v13(v10, v4);
  v14 = v2[20];
  v15 = v2[21];
  __swift_project_boxed_opaque_existential_1(v2 + 17, v14);
  sub_24E2548A0(v14, v15);
  OUTLINED_FUNCTION_15_27();
  sub_24E344198();
  v13(v10, v4);
  return a1;
}

void sub_24E1E23FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (GKIsXRUIIdiomShouldUsePadUI())
  {

    sub_24E1E24A4(a1, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  else
  {

    sub_24E1E2EF4(a1, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }
}

void sub_24E1E24A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_44();
  a27 = v29;
  a28 = v30;
  v31 = v28;
  v32 = sub_24E344048();
  v33 = OUTLINED_FUNCTION_0_27(v32, &a15);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v34);
  v81 = sub_24E344648();
  OUTLINED_FUNCTION_33_4();
  v82 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v37);
  v38 = sub_24E344658();
  v39 = OUTLINED_FUNCTION_0_27(v38, &a18);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v40);
  v71 = sub_24E3445E8();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v41);
  v42 = sub_24E3446A8();
  v43 = OUTLINED_FUNCTION_0_27(v42, &a11);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v44);
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7_1();
  __swift_project_boxed_opaque_existential_1(v28 + 5, v28[8]);
  OUTLINED_FUNCTION_22_23();
  OUTLINED_FUNCTION_12_35();
  v48 = *(v46 + 8);
  v49 = OUTLINED_FUNCTION_13_0();
  v48(v49);
  __swift_project_boxed_opaque_existential_1(v31 + 12, v31[15]);
  OUTLINED_FUNCTION_22_23();
  OUTLINED_FUNCTION_12_35();
  v51 = v50;
  v52 = OUTLINED_FUNCTION_13_0();
  v48(v52);
  v87.origin.x = OUTLINED_FUNCTION_3_96();
  MinX = CGRectGetMinX(v87);
  v88.origin.x = OUTLINED_FUNCTION_3_96();
  v53 = v51 + CGRectGetMinY(v88);
  v55 = *(v28 + 10);
  v54 = *(v28 + 11);
  __swift_project_boxed_opaque_existential_1(v31 + 37, v31[40]);
  sub_24E3440E8();
  v89.origin.x = OUTLINED_FUNCTION_3_96();
  CGRectGetMinX(v89);
  v90.origin.x = MinX;
  v90.origin.y = v53;
  v90.size.width = v55;
  v90.size.height = v54;
  CGRectGetMidY(v90);
  __swift_project_boxed_opaque_existential_1(v31 + 37, v31[40]);
  OUTLINED_FUNCTION_3_96();
  sub_24E348508();
  sub_24E344088();
  v91.origin.x = OUTLINED_FUNCTION_3_96();
  CGRectGetMinX(v91);
  v92.origin.x = OUTLINED_FUNCTION_3_96();
  CGRectGetMaxX(v92);
  v93.origin.x = OUTLINED_FUNCTION_3_96();
  CGRectGetMinY(v93);
  v94.origin.x = OUTLINED_FUNCTION_3_96();
  CGRectGetHeight(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  sub_24E344688();
  OUTLINED_FUNCTION_33_4();
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  __swift_project_boxed_opaque_existential_1(v31 + 27, v31[30]);
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_6_45();
  (*(v56 + 16))();
  v84 = MEMORY[0x277D839F8];
  v85 = MEMORY[0x277D22A30];
  OUTLINED_FUNCTION_6_69(0x4028000000000000);
  v75 = *MEMORY[0x277D227C8];
  OUTLINED_FUNCTION_13_42();
  v76 = v57;
  v57();
  v74 = *MEMORY[0x277D227E8];
  OUTLINED_FUNCTION_13_42();
  v73 = v58;
  v58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  sub_24E3487E8();
  OUTLINED_FUNCTION_8_59();
  sub_24E344678();
  v59 = *(v82 + 8);
  v59(v79, v81);
  OUTLINED_FUNCTION_34_0();
  v72 = v60;
  v60();
  OUTLINED_FUNCTION_14_31();
  v62 = *(v61 + 8);
  (v62)(v77, v71);
  sub_24DF8A960(v83);
  OUTLINED_FUNCTION_18_32();
  v63 = v28[35];
  v64 = v31[36];
  __swift_project_boxed_opaque_existential_1(v31 + 32, v31[35]);
  v86[3] = v63;
  v86[4] = *(v64 + 8);
  __swift_allocate_boxed_opaque_existential_1(v86);
  OUTLINED_FUNCTION_6_45();
  OUTLINED_FUNCTION_15_27();
  v65();
  v85 = MEMORY[0x277D22A30];
  v84 = MEMORY[0x277D839F8];
  v66 = OUTLINED_FUNCTION_6_69(0x4032000000000000);
  (v76)(v77, v75, v71, v66);
  (v73)(v78, v74);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  sub_24E3487E8();
  OUTLINED_FUNCTION_8_59();
  sub_24E344678();
  v67 = OUTLINED_FUNCTION_2_34();
  (v59)(v67);
  v72();
  OUTLINED_FUNCTION_14_31();
  v62();
  sub_24DF8A960(v83);
  OUTLINED_FUNCTION_18_32();
  sub_24E344668();
  sub_24E3440D8();
  v95.origin.x = MinX;
  v95.origin.y = v53;
  v95.size.width = v55;
  v95.size.height = v54;
  CGRectGetMidY(v95);
  sub_24E344608();
  OUTLINED_FUNCTION_34_0();
  v68();
  OUTLINED_FUNCTION_3_96();
  sub_24E343FD8();
  OUTLINED_FUNCTION_34_0();
  v69 = OUTLINED_FUNCTION_13_0();
  v70(v69);
  OUTLINED_FUNCTION_45();
}

void sub_24E1E2EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_44();
  a27 = v29;
  a28 = v30;
  v31 = v28;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = sub_24E344048();
  v41 = OUTLINED_FUNCTION_0_27(v40, &a10);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v42);
  v100 = sub_24E344648();
  OUTLINED_FUNCTION_33_4();
  v102 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v45);
  v46 = sub_24E344658();
  v47 = OUTLINED_FUNCTION_0_27(v46, &a17);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v48);
  v49 = sub_24E3445E8();
  v50 = OUTLINED_FUNCTION_0_27(v49, &a18);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3_14();
  v52 = v51;
  v53 = sub_24E3446A8();
  v54 = OUTLINED_FUNCTION_0_27(v53, v107);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v55);
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_9_50(v28 + 5);
  OUTLINED_FUNCTION_7_49();
  v59 = *(v57 + 8);
  v60 = OUTLINED_FUNCTION_2_34();
  v59(v60);
  OUTLINED_FUNCTION_9_50(v28);
  OUTLINED_FUNCTION_7_49();
  v61 = OUTLINED_FUNCTION_2_34();
  v59(v61);
  OUTLINED_FUNCTION_9_50(v28 + 12);
  OUTLINED_FUNCTION_7_49();
  v63 = v62;
  v64 = OUTLINED_FUNCTION_2_34();
  v59(v64);
  v95 = v39;
  v108.origin.x = v39;
  v108.origin.y = v37;
  v108.size.width = v35;
  v108.size.height = v33;
  MinX = CGRectGetMinX(v108);
  v109.origin.x = v39;
  v109.origin.y = v37;
  v109.size.width = v35;
  v109.size.height = v33;
  v65 = v33;
  v86 = v33;
  v98 = v63 + CGRectGetMinY(v109);
  v97 = *(v28 + 10);
  v101 = *(v28 + 11);
  OUTLINED_FUNCTION_8_8(v28 + 37);
  sub_24E3440E8();
  v67 = v66;
  v69 = v68;
  v110.origin.x = v95;
  v110.origin.y = v37;
  v110.size.width = v35;
  v110.size.height = v65;
  v91 = CGRectGetMaxX(v110) - v67;
  v111.origin.x = MinX;
  v111.origin.y = v98;
  v111.size.width = v97;
  v111.size.height = v101;
  v90 = CGRectGetMidY(v111) - v69 * 0.5;
  OUTLINED_FUNCTION_8_8(v28 + 37);
  sub_24E348508();
  sub_24E344088();
  OUTLINED_FUNCTION_8_8(v28 + 22);
  sub_24E348508();
  sub_24E344088();
  v112.origin.x = v91;
  v112.origin.y = v90;
  v112.size.width = v67;
  v112.size.height = v69;
  CGRectGetMinX(v112);
  v113.origin.x = MinX;
  v113.origin.y = v98;
  v113.size.width = v97;
  v113.size.height = v101;
  CGRectGetMaxX(v113);
  v114.origin.x = v95;
  v114.origin.y = v37;
  v114.size.width = v35;
  v114.size.height = v86;
  CGRectGetMinY(v114);
  v115.origin.x = v95;
  v115.origin.y = v37;
  v115.size.width = v35;
  v115.size.height = v86;
  CGRectGetHeight(v115);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10);
  sub_24E344688();
  OUTLINED_FUNCTION_33_4();
  v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  *(swift_allocObject() + 16) = xmmword_24E36A270;
  v72 = v31[30];
  v73 = v31[31];
  OUTLINED_FUNCTION_8_8(v31 + 27);
  v107[0] = v72;
  v107[1] = *(v73 + 8);
  v74 = __swift_allocate_boxed_opaque_existential_1(&v106);
  (*(*(v72 - 8) + 16))(v74, v71, v72);
  v104 = MEMORY[0x277D839F8];
  v105 = MEMORY[0x277D22A30];
  OUTLINED_FUNCTION_6_69(0x4028000000000000);
  LODWORD(v90) = *MEMORY[0x277D227C8];
  OUTLINED_FUNCTION_13_42();
  v92 = v75;
  v75(v52);
  v89 = *MEMORY[0x277D227F0];
  OUTLINED_FUNCTION_13_42();
  v88 = v76;
  v76();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  sub_24E3487E8();
  OUTLINED_FUNCTION_8_59();
  sub_24E344678();
  v77 = *(v102 + 8);
  v77(v94, v100);
  OUTLINED_FUNCTION_34_0();
  v87 = v78;
  v78();
  OUTLINED_FUNCTION_14_31();
  v80 = *(v79 + 8);
  (v80)(v52);
  sub_24DF8A960(v103);
  OUTLINED_FUNCTION_18_32();
  __swift_project_boxed_opaque_existential_1(v31 + 32, v31[35]);
  OUTLINED_FUNCTION_23_27();
  OUTLINED_FUNCTION_6_45();
  OUTLINED_FUNCTION_15_27();
  v81();
  v105 = MEMORY[0x277D22A30];
  v104 = MEMORY[0x277D839F8];
  v82 = OUTLINED_FUNCTION_6_69(0x4032000000000000);
  v92(v52, LODWORD(v90), v99, v82);
  (v88)(v93, v89);
  *(swift_allocObject() + 16) = xmmword_24E367D20;
  sub_24E344618();
  sub_24E3487E8();
  OUTLINED_FUNCTION_8_59();
  sub_24E344678();
  v77(v94, v100);
  v87();
  OUTLINED_FUNCTION_14_31();
  v80();
  sub_24DF8A960(v103);
  OUTLINED_FUNCTION_18_32();
  sub_24E344668();
  sub_24E3440D8();
  v116.origin.x = MinX;
  v116.origin.y = v98;
  v116.size.width = v97;
  v116.size.height = v101;
  CGRectGetMidY(v116);
  sub_24E344608();
  OUTLINED_FUNCTION_34_0();
  v83();
  sub_24E343FD8();
  OUTLINED_FUNCTION_34_0();
  v84 = OUTLINED_FUNCTION_13_0();
  v85(v84);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_24E1E3AE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_24E1E3B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double OUTLINED_FUNCTION_6_69@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = 0;
  *(v1 - 232) = a1;
  result = 0.0;
  *(v1 - 256) = 0u;
  *(v1 - 272) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_49()
{

  return sub_24E344198();
}

uint64_t OUTLINED_FUNCTION_9_50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24E2548A0(v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_35()
{

  return sub_24E344198();
}

uint64_t OUTLINED_FUNCTION_18_32()
{
  __swift_destroy_boxed_opaque_existential_1(v0 - 232);

  return __swift_destroy_boxed_opaque_existential_1(v0 - 192);
}

uint64_t OUTLINED_FUNCTION_22_23()
{

  return sub_24E2548A0(v0, v1);
}

uint64_t *OUTLINED_FUNCTION_23_27()
{
  *(v2 - 168) = v1;
  *(v2 - 160) = *(v0 + 8);

  return __swift_allocate_boxed_opaque_existential_1((v2 - 192));
}

id sub_24E1E3CE8(double a1, double a2, double a3, double a4)
{
  v17.receiver = v4;
  v17.super_class = type metadata accessor for JetDashboardCollectionViewCell();
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setMaskedCorners_];

  v11 = [v9 layer];
  [v11 setMasksToBounds_];

  v12 = [v9 layer];
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v13 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v13, qword_27F20BF00);
  v14 = [v9 traitCollection];

  v15 = sub_24E336558();
  [v12 setCornerRadius_];

  [v9 set:20.0 gkFocusHighlightCornerRadius:?];
  return v9;
}

uint64_t sub_24E1E3F18(void *a1)
{
  v1 = a1;
  v2 = sub_24E1E3F4C();

  return v2 & 1;
}

id sub_24E1E3F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JetDashboardCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

void sub_24E1E3F84(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_24E1E3FD8(a3);
}

void sub_24E1E3FD8(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JetDashboardCollectionViewCell();
  objc_msgSendSuper2(&v3, sel_setHighlighted_, a1 & 1);
  sub_24E1DA8D8();
}

id sub_24E1E4024(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0C50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = type metadata accessor for JetDashboardSectionData();
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  sub_24E347128();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180);
  swift_dynamicCast();
  [objc_msgSend(a3 container)];
  v15 = v14;
  swift_unknownObjectRelease();
  sub_24E1E48B0(v13, v10);
  sub_24E1E4868(&qword_27F1E0C48, type metadata accessor for JetDashboardSectionData);
  sub_24E347158();
  type metadata accessor for JetDashboardCellView();
  v16 = sub_24E0185D0(v15);
  v18 = v17;
  (*(v5 + 8))(v7, v4, v16);
  v19 = objc_opt_self();
  v20 = [v19 fractionalWidthDimension_];
  v21 = [v19 absoluteDimension_];
  v22 = objc_opt_self();
  v23 = [v22 sizeWithWidthDimension:v20 heightDimension:v21];

  v24 = [objc_opt_self() itemWithLayoutSize_];
  if (qword_27F1DDC38 != -1)
  {
    swift_once();
  }

  v25 = sub_24E3444F8();
  __swift_project_value_buffer(v25, qword_27F20B4B8);
  sub_24E3444E8();
  v27 = v18 + v26;
  v28 = [v19 fractionalWidthDimension_];
  v29 = [v19 absoluteDimension_];
  v30 = [v22 sizeWithWidthDimension:v28 heightDimension:v29];

  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_24E369990;
  *(v32 + 32) = v24;
  sub_24E1698C0();
  v33 = v24;
  v34 = sub_24E347EE8();

  v35 = [v31 verticalGroupWithLayoutSize:v30 subitems:v34];

  v36 = [objc_opt_self() sectionWithGroup_];
  sub_24E1E4914(v13);
  return v36;
}

double sub_24E1E44CC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  sub_24E120A58(a1, v18 - v10);
  sub_24E120A58(a2, &v11[*(v9 + 56)]);
  *a4 = [objc_opt_self() clearColor];
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 33) = 0u;
  *(a4 + 56) = -1;
  if (qword_27F1DE118 != -1)
  {
    OUTLINED_FUNCTION_10_3();
  }

  v12 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v12, qword_27F20BF00);
  v13 = [a3 traitCollection];
  sub_24E33670C(v13, v18);

  v14 = v18[1];
  *(a4 + 64) = v18[0];
  *(a4 + 80) = v14;
  *(a4 + 96) = v19;
  v15 = [a3 traitCollection];
  sub_24E33670C(v15, v20);

  sub_24E120AC8(v11);
  result = *v20;
  v17 = v20[1];
  *(a4 + 104) = v20[0];
  *(a4 + 120) = v17;
  *(a4 + 136) = v21;
  return result;
}

id sub_24E1E466C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JetDashboardCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for JetDashboardCollectionViewCell()
{
  result = qword_27F1E7450;
  if (!qword_27F1E7450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1E4728(uint64_t a1)
{
  result = sub_24E1E4868(&qword_27F1E7460, type metadata accessor for JetDashboardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1E4810(uint64_t a1)
{
  result = sub_24E1E4868(&qword_27F1E6478, type metadata accessor for JetDashboardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1E4868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E1E48B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetDashboardSectionData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1E4914(uint64_t a1)
{
  v2 = type metadata accessor for JetDashboardSectionData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double static BaseSmallFriendLockupView.size(fitting:in:)(void *a1)
{
  swift_getObjectType();

  return sub_24E1E89A8(a1);
}

id sub_24E1E49C8()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id sub_24E1E4A64(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_style);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_style) = v2;
  sub_24E1E8CD4(v3);

  return sub_24E1E75F4();
}

uint64_t sub_24E1E4AA0(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration);
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 8);
  v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 16);
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 24);
  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 32);
  v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 40);
  v10 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v10;
  *(v3 + 32) = *(a1 + 32);
  v11 = *(v3 + 48);
  *(v3 + 48) = *(a1 + 48);
  sub_24E1E8E60(a1, v13);
  sub_24E1E8CE4(v4, v5, v6, v7, v8, v9, v11);
  sub_24E1E7BB0();
  return sub_24E1E8EBC(a1);
}

uint64_t sub_24E1E4B50@<X0>(void *a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 48) >= 2u)
  {
    v3 = (v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration);
    if (v3[4] | v3[5] | *v3 | v3[3] | v3[2] | v3[1])
    {
      v5 = 0;
      goto LABEL_7;
    }

    v4 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_chevronView;
  }

  else
  {
    v4 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton;
  }

  v5 = *(v1 + v4);
  v6 = v5;
LABEL_7:
  sub_24E1E4CE8(__src);
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView);
  v25 = type metadata accessor for AvatarView();
  v26 = MEMORY[0x277D22A58];
  *&v24 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel);
  v9 = type metadata accessor for DynamicTypeLabel();
  v10 = MEMORY[0x277D22A68];
  v22 = v9;
  v23 = MEMORY[0x277D22A68];
  *&v21 = v8;
  v11 = *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel);
  if (v5)
  {
    v12 = sub_24DF88A8C(0, &qword_27F1E1D30);
    v13 = v7;
    v14 = v8;
    v15 = v11;

    v16 = MEMORY[0x277D22A58];
  }

  else
  {
    v17 = v7;
    v18 = v8;
    v19 = v11;
    v12 = 0;
    v16 = 0;
  }

  memcpy(a1, __src, 0x130uLL);
  sub_24DE56CE8(&v24, (a1 + 38));
  result = sub_24DE56CE8(&v21, (a1 + 43));
  a1[48] = v11;
  a1[51] = v9;
  a1[52] = v10;
  a1[53] = v5;
  a1[54] = 0;
  a1[55] = 0;
  a1[56] = v12;
  a1[57] = v16;
  return result;
}

double sub_24E1E4CE8@<D0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v3 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = sub_24E3444F8();
  OUTLINED_FUNCTION_0_14();
  v54 = v11;
  MEMORY[0x28223BE20](v12);
  v51 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50[1] = v50 - v15;
  MEMORY[0x28223BE20](v16);
  sub_24E1E6980(v1, v67);
  v17 = v67[0];
  v18 = v67[1];
  sub_24DF89628(v68, v66);
  v53 = v68[5];
  sub_24DF89628(&v69, v65);
  sub_24DF89628(v70, v64);
  v52 = v70[5];
  v19 = *&v1[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel];
  if ([v19 jet_textLength] < 1)
  {
    v63 = 0;
    v61 = 0u;
    v62 = 0u;
    v27 = v54;
  }

  else
  {
    if (qword_27F1DD9D0 != -1)
    {
      OUTLINED_FUNCTION_0_144();
      swift_once();
    }

    v20 = sub_24E344158();
    __swift_project_value_buffer(v20, qword_27F1E7540);
    OUTLINED_FUNCTION_22_0();
    (*(v21 + 16))(v9);
    v22 = OUTLINED_FUNCTION_10_47();
    v23(v22);
    *(&v62 + 1) = v3;
    v63 = MEMORY[0x277D22628];
    __swift_allocate_boxed_opaque_existential_1(&v61);
    OUTLINED_FUNCTION_11_38();
    v24();
    sub_24E344508();
    v25 = OUTLINED_FUNCTION_20_24();
    v26(v25);
    *(&v62 + 1) = v10;
    v63 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v61);
    v27 = v54;
    OUTLINED_FUNCTION_21_26();
    v28();
  }

  if ([v19 jet_textLength] < 1)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
  }

  else
  {
    if (qword_27F1DD9A8 != -1)
    {
      OUTLINED_FUNCTION_1_111();
      swift_once();
    }

    v29 = sub_24E344158();
    __swift_project_value_buffer(v29, qword_27F1E7498);
    OUTLINED_FUNCTION_22_0();
    (*(v30 + 16))(v9);
    v31 = OUTLINED_FUNCTION_10_47();
    v32(v31);
    *(&v59 + 1) = v3;
    v60 = MEMORY[0x277D22628];
    __swift_allocate_boxed_opaque_existential_1(&v58);
    OUTLINED_FUNCTION_11_38();
    v33();
    sub_24E344508();
    v34 = OUTLINED_FUNCTION_20_24();
    v35(v34);
    *(&v59 + 1) = v10;
    v60 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v58);
    OUTLINED_FUNCTION_21_26();
    v36();
  }

  if ([v19 jet_textLength] < 1)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
  }

  else
  {
    if (qword_27F1DD9D0 != -1)
    {
      OUTLINED_FUNCTION_0_144();
      swift_once();
    }

    v37 = sub_24E344158();
    __swift_project_value_buffer(v37, qword_27F1E7540);
    OUTLINED_FUNCTION_22_0();
    (*(v38 + 16))(v9);
    v39 = OUTLINED_FUNCTION_10_47();
    v40(v39);
    *(&v56 + 1) = v3;
    v57 = MEMORY[0x277D22628];
    __swift_allocate_boxed_opaque_existential_1(&v55);
    OUTLINED_FUNCTION_11_38();
    v41();
    v42 = v51;
    sub_24E344508();
    (*(v5 + 8))(v9, v3);
    *(&v56 + 1) = v10;
    v57 = MEMORY[0x277D22798];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
    (*(v27 + 32))(boxed_opaque_existential_1, v42, v10);
  }

  if (qword_27F1DD9F0 != -1)
  {
    swift_once();
  }

  v44 = qword_27F1E75C0;
  v45 = *algn_27F1E75C8;
  sub_24E1E8A70(v67);
  *a1 = v17;
  *(a1 + 8) = v18;
  sub_24DE56CE8(v66, a1 + 16);
  *(a1 + 56) = v53;
  sub_24DE56CE8(v65, a1 + 64);
  sub_24DE56CE8(v64, a1 + 104);
  v46 = v62;
  *(a1 + 152) = v61;
  *(a1 + 168) = v46;
  v47 = v59;
  *(a1 + 192) = v58;
  *(a1 + 208) = v47;
  v48 = v56;
  *(a1 + 232) = v55;
  *(a1 + 144) = v52;
  *(a1 + 184) = v63;
  *(a1 + 224) = v60;
  *(a1 + 248) = v48;
  *(a1 + 264) = v57;
  result = 12.0;
  *(a1 + 272) = xmmword_24E36F3C0;
  *(a1 + 288) = v44;
  *(a1 + 296) = v45;
  return result;
}

void sub_24E1E5308()
{
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel) setText_];
  [*(v0 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel) setText_];
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarLoadingTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
    sub_24E3480B8();
  }

  sub_24E1DD390(0, 0);
}

id sub_24E1E53C4(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel];
  v5 = sub_24E347CB8();
  [v4 setText_];

  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel];
  if (*(a1 + 64))
  {
    v7 = sub_24E347CB8();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  sub_24E1E5790(a1);
  v8 = *(a1 + 200);
  v17[0] = *(a1 + 184);
  v17[1] = v8;
  v17[2] = *(a1 + 216);
  v18 = *(a1 + 232);
  sub_24E1E8E60(v17, v14);
  sub_24E1E4AA0(v17);
  v15 = &type metadata for GKFeatureFlags;
  v16 = sub_24DFA0CB4();
  v14[0] = 15;
  v9 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v9)
  {
    v10 = *&v2[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView];
    v11 = *(a1 + 96);
    v12 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_showMessagesBadge;
    swift_beginAccess();
    *(v10 + v12) = v11;
    sub_24E1DDE98();
  }

  return [v2 setNeedsLayout];
}

id sub_24E1E5528()
{
  v1 = v0;
  v2 = type metadata accessor for SmallFriendLockupData();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_7_1();
  v5 = v4 - v3;
  v6 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7620);
  sub_24E347128();

  sub_24DFA0B40(*&v18[0], *(&v18[0] + 1), v6);
  v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel];
  swift_getKeyPath();
  sub_24E347128();

  if (*(&v18[0] + 1))
  {
    v8 = sub_24E347CB8();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText_];

  swift_getKeyPath();
  sub_24E347128();

  v18[0] = v14;
  v18[1] = v15;
  v18[2] = v16;
  v19 = v17;
  sub_24E1E4AA0(v18);
  sub_24E347148();
  sub_24E1E5790(v5);
  sub_24DFDBCB8(v5);
  *(&v15 + 1) = &type metadata for GKFeatureFlags;
  *&v16 = sub_24DFA0CB4();
  LOBYTE(v14) = 15;
  v9 = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(&v14);
  if (v9)
  {
    v10 = *&v1[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView];
    swift_getKeyPath();
    sub_24E347128();

    v11 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_showMessagesBadge;
    swift_beginAccess();
    *(v10 + v11) = v13;
    sub_24E1DDE98();
  }

  return [v1 setNeedsLayout];
}

void sub_24E1E5790(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    v22 = v7;
    sub_24E1DD390(v7, 0);
    v8 = v22;
  }

  else
  {
    v9 = *(a1 + *(type metadata accessor for SmallFriendLockupData() + 60));
    if (v9)
    {
      v10 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarLoadingTask;
      if (*&v2[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarLoadingTask])
      {
        v11 = v9;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3D30);
        sub_24E3480B8();
      }

      else
      {
        v12 = v9;
      }

      v13 = sub_24E348098();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
      sub_24E348068();
      v14 = v9;
      v15 = v2;
      v16 = sub_24E348058();
      OUTLINED_FUNCTION_21_14();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v14;
      v17[5] = v15;
      sub_24E0E26E8();
      v20 = v19;

      *&v2[v10] = v20;
    }
  }
}

void sub_24E1E597C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 16);
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 32);
  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 48);
  if (!*(v0 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 48))
  {
    if (!v1)
    {
      return;
    }

    v13 = OUTLINED_FUNCTION_5_85();
    sub_24E1E8F10(v13, v14, v15, v16, v17, v18, 0);
    v19 = sub_24DF88BEC(v1);
    v1(v19);
    v12 = v1;
    goto LABEL_9;
  }

  if (v3 == 1 && v2 != 0)
  {
    v5 = OUTLINED_FUNCTION_5_85();
    sub_24E1E8F10(v5, v6, v7, v8, v9, v10, 1);
    v11 = sub_24DF88BEC(v2);
    v2(v11);
    v12 = v2;
LABEL_9:
    sub_24DE73FA0(v12);
    v20 = OUTLINED_FUNCTION_5_85();

    sub_24E1E8CE4(v20, v21, v22, v23, v24, v25, v3);
  }
}

id sub_24E1E5A88()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_24E3483C8();

  v4 = *&v1[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel];
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return [v4 setNumberOfLines_];
}

id GameCenterFriendPlayerView.init(handle:player:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v16.receiver = v4;
  v16.super_class = swift_getObjectType();
  v8 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (a3)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_21_14();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a3;
    v11[4] = a1;
    v11[5] = a2;
    v15[4] = sub_24E1E8A28;
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_24E1E5FC4;
    v15[3] = &block_descriptor_73;
    v12 = _Block_copy(v15);
    v13 = a3;

    [v9 playerAvatarImageWithSize:0x10000 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
  }

  return v8;
}

uint64_t sub_24E1E5CDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v10 = sub_24E3433A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for SmallFriendLockupData();
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v22 = sub_24E0C5B1C(a5);
    *(v19 + 104) = 0u;
    *(v19 + 120) = 0u;
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    *(v19 + 17) = 0;
    v25 = 0xE000000000000000;
    if (v23)
    {
      v25 = v23;
    }

    v33 = v25;
    v34 = v24;
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    v26 = a5;
    sub_24E343398();
    (*(v11 + 16))(v13, v16, v10);
    sub_24E1E8FA0(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
    sub_24E348918();
    (*(v11 + 8))(v16, v10);
    *(v19 + 22) = 0;
    *(v19 + 10) = 0u;
    *(v19 + 9) = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 34) = 0;
    *(v19 + 15) = 0u;
    v27 = *(v17 + 56);
    v28 = sub_24E3474B8();
    __swift_storeEnumTagSinglePayload(&v19[v27], 1, 1, v28);
    v29 = *(v17 + 60);
    v30 = v33;
    *(v19 + 5) = v34;
    *(v19 + 6) = v30;
    *(v19 + 7) = v35;
    *(v19 + 8) = a7;
    *(v19 + 9) = a5;
    v19[80] = 0;
    *(v19 + 11) = a1;
    v31 = a1;

    sub_24DFE981C(v38, (v19 + 144));
    *(v19 + 184) = 0u;
    *(v19 + 200) = 0u;
    *(v19 + 216) = 0u;
    v19[232] = 2;
    sub_24DFE981C(v36, (v19 + 240));
    *&v19[v29] = 0;
    v19[96] = 0;
    sub_24E1E53C4(v19);

    return sub_24DFDBCB8(v19);
  }

  return result;
}

void sub_24E1E5FC4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, v8);
}

id GameCenterFriendPlayerView.init(relationshipResult:)(void *a1)
{
  sub_24E1E8944(a1);
  if (v3)
  {
    v4 = sub_24E347CB8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 relatedPlayer];
  v6 = [v1 initWithHandle:v4 player:v5];

  return v6;
}

uint64_t sub_24E1E6240()
{
  v0 = sub_24E3442F8();
  __swift_allocate_value_buffer(v0, qword_27F1E7468);
  __swift_project_value_buffer(v0, qword_27F1E7468);
  return sub_24E3442E8();
}

uint64_t sub_24E1E6364()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DD9D0 != -1)
  {
    swift_once();
  }

  v4 = sub_24E344158();
  v5 = __swift_project_value_buffer(v4, qword_27F1E7540);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D22618], v0);
  qword_27F1E7570 = sub_24E3444F8();
  unk_27F1E7578 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(qword_27F1E7558);
  v9[3] = v0;
  v9[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E1E6544(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v13 = v12 - v11;
  if (qword_27F1DD9A8 != -1)
  {
    OUTLINED_FUNCTION_1_111();
    swift_once();
  }

  v14 = sub_24E344158();
  __swift_project_value_buffer(v14, qword_27F1E7498);
  OUTLINED_FUNCTION_22_0();
  (*(v15 + 16))(v13);
  (*(v9 + 104))(v13, *MEMORY[0x277D22618], v7);
  *a2 = sub_24E3444F8();
  *a3 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(a4);
  v18[3] = v7;
  v18[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(v9 + 16))(boxed_opaque_existential_1, v13, v7);
  sub_24E344508();
  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_24E1E6718(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = sub_24E3444F8();
  __swift_allocate_value_buffer(v10, a2);
  __swift_project_value_buffer(v10, a2);
  if (qword_27F1DD9D0 != -1)
  {
    OUTLINED_FUNCTION_0_144();
    swift_once();
  }

  v11 = sub_24E344158();
  __swift_project_value_buffer(v11, qword_27F1E7540);
  OUTLINED_FUNCTION_22_0();
  (*(v12 + 16))(v9);
  (*(v5 + 104))(v9, *MEMORY[0x277D22618], v3);
  v15[3] = v3;
  v15[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(v5 + 16))(boxed_opaque_existential_1, v9, v3);
  sub_24E344508();
  return (*(v5 + 8))(v9, v3);
}

void sub_24E1E68C4()
{
  type metadata accessor for SystemImage();
  v0 = sub_24E18EFCC(0x2E6E6F7276656863, 0xED00007468676972, 0);
  [v0 size];
  v2 = v1;
  v4 = v3;

  qword_27F1E75C0 = v2;
  *algn_27F1E75C8 = v4;
}

id sub_24E1E6944()
{
  result = [objc_opt_self() systemBlueColor];
  qword_27F1E75D0 = result;
  return result;
}

double sub_24E1E6980@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 traitCollection];
  v4 = sub_24E3483C8();

  v5 = MEMORY[0x277D22798];
  if (v4)
  {
    if (qword_27F1DD9A0 != -1)
    {
      swift_once();
    }

    v6 = sub_24E3444F8();
    v7 = __swift_project_value_buffer(v6, qword_27F1E7480);
    v22 = v6;
    v23 = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
    if (qword_27F1DD9C0 != -1)
    {
      swift_once();
    }

    v9 = qword_27F1E74F0;
    v10 = 2;
  }

  else
  {
    if (qword_27F1DD998 != -1)
    {
      swift_once();
    }

    v11 = sub_24E3442F8();
    v12 = __swift_project_value_buffer(v11, qword_27F1E7468);
    v22 = v11;
    v23 = MEMORY[0x277D226F0];
    v13 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(*(v11 - 8) + 16))(v13, v12, v11);
    if (qword_27F1DD9B8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F1E74C8;
    v10 = 1;
  }

  sub_24DF89628(v9, v20);
  sub_24DF89628(v21, a2 + 16);
  sub_24DF89628(v20, a2 + 64);
  if (qword_27F1DD9C8 != -1)
  {
    swift_once();
  }

  sub_24DF89628(qword_27F1E7518, a2 + 104);
  if (qword_27F1DD9D8 != -1)
  {
    swift_once();
  }

  sub_24DF89628(qword_27F1E7558, a2 + 152);
  if (qword_27F1DD9E0 != -1)
  {
    swift_once();
  }

  sub_24DF89628(qword_27F1E7580, a2 + 192);
  if (qword_27F1DD9E8 != -1)
  {
    swift_once();
  }

  v14 = sub_24E3444F8();
  v15 = __swift_project_value_buffer(v14, qword_27F1E75A8);
  *(a2 + 256) = v14;
  *(a2 + 264) = v5;
  v16 = __swift_allocate_boxed_opaque_existential_1((a2 + 232));
  (*(*(v14 - 8) + 16))(v16, v15, v14);
  if (qword_27F1DD9F0 != -1)
  {
    swift_once();
  }

  v17 = qword_27F1E75C0;
  v18 = *algn_27F1E75C8;
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  *a2 = vdupq_n_s64(0x4044000000000000uLL);
  *(a2 + 56) = 1;
  *(a2 + 144) = v10;
  result = 12.0;
  *(a2 + 272) = xmmword_24E36F3C0;
  *(a2 + 288) = v17;
  *(a2 + 296) = v18;
  return result;
}

char *BaseSmallFriendLockupView.init(frame:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v47 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView;
  type metadata accessor for AvatarView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel;
  if (qword_27F1DD9A8 != -1)
  {
    OUTLINED_FUNCTION_1_111();
    swift_once();
  }

  v7 = sub_24E344158();
  __swift_project_value_buffer(v7, qword_27F1E7498);
  OUTLINED_FUNCTION_22_0();
  v9 = *(v8 + 16);
  v9(v4);
  OUTLINED_FUNCTION_1_22();
  v10 = type metadata accessor for DynamicTypeLabel();
  v11 = objc_allocWithZone(v10);
  v12 = OUTLINED_FUNCTION_0_29();
  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel;
  if (qword_27F1DD9D0 != -1)
  {
    OUTLINED_FUNCTION_0_144();
    v12 = swift_once();
  }

  v14 = OUTLINED_FUNCTION_6_13(v12, qword_27F1E7540);
  v9(v14);
  OUTLINED_FUNCTION_1_22();
  v15 = objc_allocWithZone(v10);
  *(v1 + v13) = OUTLINED_FUNCTION_0_29();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_style) = 0;
  v16 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_chevronView;
  v48 = 1;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v53 = 7;
  v17 = sub_24E073800();
  sub_24DF9D524(&v48);
  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_hasChevron) = 0;
  v18 = (v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration);
  *v18 = 1;
  OUTLINED_FUNCTION_22_24(v18);
  v20 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton;
  if (qword_27F1DE018 != -1)
  {
    OUTLINED_FUNCTION_13_43();
    v19 = swift_once();
  }

  v21 = OUTLINED_FUNCTION_6_13(v19, &unk_27F20BC48);
  v9(v21);
  OUTLINED_FUNCTION_1_22();
  v22 = objc_allocWithZone(type metadata accessor for RoundedButton());
  *(v1 + v20) = sub_24E2C2254(v4);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarLoadingTask) = 0;
  v23 = type metadata accessor for BaseSmallFriendLockupView();
  v47[1] = v1;
  v47[2] = v23;
  v24 = OUTLINED_FUNCTION_28();
  v27 = objc_msgSendSuper2(v25, v26, v24);
  v28 = OUTLINED_FUNCTION_7_2();
  [v29 v30];
  [v27 setClipsToBounds_];
  v31 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel;
  [*&v27[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel] setTextAlignment_];
  v32 = *&v27[v31];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 labelColor];
  [v34 setTextColor_];

  sub_24DFD8050(0xD00000000000002FLL, 0x800000024E3AC990, *&v27[v31]);
  v36 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel;
  [*&v27[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel] setTextAlignment_];
  v37 = *&v27[v36];
  v38 = [v33 secondaryLabelColor];
  [v37 setTextColor_];

  sub_24DFD8050(0xD000000000000032, 0x800000024E3AC9C0, *&v27[v36]);
  v39 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView;
  sub_24DFD8050(0xD00000000000002FLL, 0x800000024E3ACA00, *&v27[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView]);
  sub_24E1E5A88();
  v40 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton;
  v41 = *&v27[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton];
  v42 = [v33 tertiarySystemFillColor];
  [v41 setBackgroundColor_];

  v43 = *&v27[v40];
  [v43 addTarget:v27 action:sel_didTapAccessoryButton forControlEvents:0x2000];

  sub_24DFD8050(0xD000000000000034, 0x800000024E3ACA30, *&v27[v40]);
  [*&v27[v40] setTitleEdgeInsets_];
  v44 = *&v27[v40];
  v45 = [v33 systemGrayColor];
  [v44 setTintColor_];

  [*&v27[v40] setContentEdgeInsets_];
  [v27 addSubview_];
  [v27 addSubview_];
  [v27 addSubview_];

  return v27;
}

void sub_24E1E7308()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView;
  type metadata accessor for AvatarView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_titleLabel;
  if (qword_27F1DD9A8 != -1)
  {
    OUTLINED_FUNCTION_1_111();
    swift_once();
  }

  v7 = sub_24E344158();
  __swift_project_value_buffer(v7, qword_27F1E7498);
  OUTLINED_FUNCTION_22_0();
  v9 = *(v8 + 16);
  v9(v4);
  OUTLINED_FUNCTION_1_22();
  v10 = type metadata accessor for DynamicTypeLabel();
  v11 = objc_allocWithZone(v10);
  v12 = OUTLINED_FUNCTION_0_29();
  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_subtitleLabel;
  if (qword_27F1DD9D0 != -1)
  {
    OUTLINED_FUNCTION_0_144();
    v12 = swift_once();
  }

  v14 = OUTLINED_FUNCTION_6_13(v12, qword_27F1E7540);
  v9(v14);
  OUTLINED_FUNCTION_1_22();
  v15 = objc_allocWithZone(v10);
  *(v1 + v13) = OUTLINED_FUNCTION_0_29();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_style) = 0;
  v16 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_chevronView;
  v24 = 1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29 = 7;
  v17 = sub_24E073800();
  sub_24DF9D524(&v24);
  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_hasChevron) = 0;
  v18 = (v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration);
  *v18 = 1;
  OUTLINED_FUNCTION_22_24(v18);
  v20 = OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton;
  if (qword_27F1DE018 != -1)
  {
    OUTLINED_FUNCTION_13_43();
    v19 = swift_once();
  }

  v21 = OUTLINED_FUNCTION_6_13(v19, &unk_27F20BC48);
  v9(v21);
  OUTLINED_FUNCTION_1_22();
  v22 = objc_allocWithZone(type metadata accessor for RoundedButton());
  *(v1 + v20) = sub_24E2C2254(v4);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarLoadingTask) = 0;
  OUTLINED_FUNCTION_14_32();
  __break(1u);
}

id sub_24E1E75F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29[-v3];
  v5 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_style];
  if (!v5)
  {
    if (qword_27F1DD9A8 != -1)
    {
      swift_once();
    }

    v12 = sub_24E344158();
    v13 = __swift_project_value_buffer(v12, qword_27F1E7498);
    (*(*(v12 - 8) + 16))(v4, v13, v12);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v12);
    sub_24E0AED24(v4);
    v14 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView];
    v15 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_hasShadow;
    swift_beginAccess();
    *(v14 + v15) = 1;
    sub_24E1DDA68();
    v16 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_showMessagesBadge;
    swift_beginAccess();
    *(v14 + v16) = 0;
    sub_24E1DDE98();
    v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton];
    if (qword_27F1DD9F8 == -1)
    {
      goto LABEL_12;
    }

LABEL_19:
    swift_once();
LABEL_12:
    [v11 setTitleColor:qword_27F1E75D0 forState:0];
    v17 = [objc_opt_self() tertiarySystemFillColor];
    [v11 setBackgroundColor_];

    return [v1 setNeedsLayout];
  }

  if (v5 == 1)
  {
    if (qword_27F1DD9B0 != -1)
    {
      swift_once();
    }

    v6 = sub_24E344158();
    v7 = __swift_project_value_buffer(v6, qword_27F1E74B0);
    (*(*(v6 - 8) + 16))(v4, v7, v6);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
    sub_24E0AED24(v4);
    v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView];
    v9 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_hasShadow;
    swift_beginAccess();
    *(v8 + v9) = 0;
    sub_24E1DDA68();
    v30 = &type metadata for GKFeatureFlags;
    v31 = sub_24DFA0CB4();
    v29[0] = 15;
    LOBYTE(v9) = sub_24E3435A8();
    __swift_destroy_boxed_opaque_existential_1(v29);
    if ((v9 & 1) == 0)
    {
      v10 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_showMessagesBadge;
      swift_beginAccess();
      *(v8 + v10) = 1;
      sub_24E1DDE98();
    }

    v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton];
    if (qword_27F1DD9F8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v18 = qword_27F1DD9A8;
  v19 = v5;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_24E344158();
  v21 = __swift_project_value_buffer(v20, qword_27F1E7498);
  (*(*(v20 - 8) + 16))(v4, v21, v20);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v20);
  sub_24E0AED24(v4);
  v22 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_avatarView];
  v23 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_hasShadow;
  swift_beginAccess();
  *(v22 + v23) = 0;
  sub_24E1DDA68();
  v30 = &type metadata for GKFeatureFlags;
  v31 = sub_24DFA0CB4();
  v29[0] = 15;
  LOBYTE(v23) = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v29);
  if ((v23 & 1) == 0)
  {
    v24 = OBJC_IVAR____TtC12GameCenterUI10AvatarView_showMessagesBadge;
    swift_beginAccess();
    *(v22 + v24) = 0;
    sub_24E1DDE98();
  }

  v25 = *&v1[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton];
  [v25 setTitleColor:v19 forState:0];
  v26 = [objc_opt_self() labelColor];
  v27 = [v26 colorWithAlphaComponent_];

  [v25 setBackgroundColor_];
  sub_24E1E8CD4(v5);
  return [v1 setNeedsLayout];
}

void sub_24E1E7BB0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_chevronView];
  [v2 removeFromSuperview];
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_accessoryButton];
  [v3 removeFromSuperview];
  v4 = &v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration];
  v5 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration];
  v6 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 8];
  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 16];
  v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI25BaseSmallFriendLockupView_trailingViewConfiguration + 24];
  if (!v4[48])
  {

    sub_24DF88BEC(v8);
    sub_24E2BE6B4(v5, v6, 0, v3);
    [v3 setImage:0 forState:0];
    [v3 setEnabled_];
    [v3 contentEdgeInsets];
    [v3 setContentEdgeInsets_];
    [v1 addSubview_];
    v14 = v8;
LABEL_7:
    sub_24DE73FA0(v14);
    goto LABEL_10;
  }

  v9 = *(v4 + 4);
  if (v4[48] == 1)
  {

    sub_24DF88BEC(v9);
    sub_24E2BE6B4(v8, v7, 0, v3);
    [v3 sizeThatFits_];
    [v3 setEnabled_];
    sub_24DF88A8C(0, &qword_280BE0110);
    v10 = sub_24DFD29F8();
    v11 = v10;
    if (v10)
    {
      v12 = [v10 imageWithRenderingMode_];

      v13 = [objc_opt_self() configurationWithWeight_];
      v11 = [v12 imageWithSymbolConfiguration_];
    }

    [v3 setTitle:0 forState:0];
    [v3 setImage:v11 forState:0];
    [v3 sizeThatFits_];
    [v3 contentEdgeInsets];
    [v3 setContentEdgeInsets_];
    [v1 addSubview_];

    v14 = v9;
    goto LABEL_7;
  }

  if (!(v8 | v6 | v5 | v7 | v9 | *(v4 + 5)))
  {
    [v1 addSubview_];
  }

LABEL_10:
  v15 = [objc_opt_self() whiteColor];
  [v3 _setImageColor_forState_];
}

void sub_24E1E7FEC(void *a1)
{
  sub_24E1E4CE8(v2);
  swift_getObjectType();
  sub_24E067924(v2, a1);
  sub_24E1E8A70(v2);
  OUTLINED_FUNCTION_7_2();
}

uint64_t sub_24E1E80F8()
{
  v1 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for BaseSmallFriendLockupView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  sub_24E1E4B50(v9);
  [v0 bounds];
  [v0 layoutMargins];
  sub_24E06750C(v0, v7);
  (*(v3 + 8))(v7, v1);
  return sub_24E1E8AC4(v9);
}

uint64_t sub_24E1E8288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  sub_24E348068();
  v5[23] = sub_24E348058();
  v7 = sub_24E347FF8();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x2822009F8](sub_24E1E8320, v7, v6);
}

uint64_t sub_24E1E8320()
{
  sub_24E3480C8();
  v0[26] = 0;
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24E1E8494;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3308);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E1DA3E4;
  v0[13] = &block_descriptor_80_0;
  v0[14] = v2;
  [v1 playerAvatarImageWithSize:0x10000 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24E1E8494()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_24E1E859C, v2, v1);
}

uint64_t sub_24E1E859C()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 144);

  sub_24E3480C8();
  if (!v1)
  {
    sub_24E1DD390(v2, 1);
  }

  OUTLINED_FUNCTION_12_5();

  return v3();
}

uint64_t sub_24E1E8748(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BaseSmallFriendLockupView();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = sub_24E3483C8();

  if (!a1)
  {
    return sub_24E1E5A88();
  }

  result = sub_24E3483C8();
  if ((result & 1) != (v4 & 1))
  {
    return sub_24E1E5A88();
  }

  return result;
}

id BaseSmallFriendLockupView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseSmallFriendLockupView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E1E8944(void *a1)
{
  v1 = [a1 handle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

double sub_24E1E89A8(void *a1)
{
  sub_24E1E6980(a1, v5);
  sub_24E067924(v5, a1);
  v3 = v2;
  sub_24E1E8A70(v5);
  return v3;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI25BaseSmallFriendLockupViewC5StyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_24E1E8CD4(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_24E1E8CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {

    v8 = a5;
  }

  else
  {
    if (a7)
    {
      return;
    }

    v8 = a3;
  }

  sub_24DE73FA0(v8);
}

uint64_t sub_24E1E8D74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E06920C;

  return sub_24E1E8288(a1, v4, v5, v7, v6);
}

void sub_24E1E8F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {

    v8 = a5;
  }

  else
  {
    if (a7)
    {
      return;
    }

    v8 = a3;
  }

  sub_24DF88BEC(v8);
}

uint64_t sub_24E1E8FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_14_32()
{

  return sub_24E348AE8();
}

double OUTLINED_FUNCTION_22_24@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  return result;
}

uint64_t FriendsFeedViewController.init(game:navigationProxy:objectGraph:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60);
  OUTLINED_FUNCTION_4_5(v7);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-v9 - 8];
  v11 = sub_24E347638();
  v12 = OUTLINED_FUNCTION_4_5(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v13 = sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v19 = v18 - v17;
  v20 = objc_allocWithZone(type metadata accessor for FriendsFeedPresenter());
  v21 = a1;
  v22 = sub_24E062754(a1);
  v23 = OBJC_IVAR____TtC12GameCenterUI25FriendsFeedViewController_activityFeedPresenter;
  *(v4 + OBJC_IVAR____TtC12GameCenterUI25FriendsFeedViewController_activityFeedPresenter) = v22;
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  (*(v15 + 16))(v19, qword_27F20B960 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v13);
  sub_24E347628();
  v24 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v24);
  sub_24E3476A8();
  swift_allocObject();
  sub_24E347658();
  v25 = *(v4 + v23);
  sub_24E09797C(a2, v31);
  v26 = v25;
  sub_24E137668();
  v28 = v27;

  sub_24DF8C95C(a2, &qword_27F1E1B70);
  return v28;
}

void sub_24E1E9454()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FriendsFeedViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
  if (v2)
  {
    v3 = v2;
    sub_24E19116C();

    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setLayoutMarginsFollowReadableWidth_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E1E953C(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FriendsFeedViewController();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1 & 1);
  sub_24E1EA4EC();
}

void sub_24E1E95D8()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for FriendsFeedViewController();
  objc_msgSendSuper2(&v1, sel_viewWillLayoutSubviews);
  sub_24E1EA4EC();
}

void sub_24E1E9658()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 safeAreaLayoutGuide];

    [v3 layoutFrame];
    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for PageGrid();
      [v5 frame];

      v6 = [v0 traitCollection];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_24E1E97E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40);
  OUTLINED_FUNCTION_0_14();
  v39 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CA0);
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C30);
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v40 = a1;
  sub_24E137F30();

  v19 = OUTLINED_FUNCTION_16_29();
  if (!v19)
  {
    __break(1u);
    goto LABEL_8;
  }

  v20 = v19;
  v36 = v4;
  sub_24E1E086C();

  v21 = OUTLINED_FUNCTION_16_29();
  if (!v21)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v23 = *(v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = v21;
  v25 = v23;
  sub_24E0B0548();

  v26 = OUTLINED_FUNCTION_16_29();
  if (!v26)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27 = v26;
  [v26 setDataSource_];

  v28 = OUTLINED_FUNCTION_16_29();
  if (v28)
  {
    v29 = v28;
    sub_24E1E9ED8();
    v31 = v30;
    [v29 setCollectionViewLayout_];

    v32 = sub_24E137E60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70);
    sub_24E041D60(&unk_27F1E97F0, &unk_27F1E1C70);
    sub_24E347198();
    type metadata accessor for FriendsFeedViewController();
    OUTLINED_FUNCTION_13_38();

    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v15 + 8))(v18, v13);
    v33 = sub_24E137E60();
    sub_24E287BB0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CB0);
    sub_24E041D60(&unk_27F1E1C60, &unk_27F1E6CB0);
    sub_24E347198();
    OUTLINED_FUNCTION_13_38();

    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v9 + 8))(v12, v37);
    v34 = sub_24E137E60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0);
    sub_24E041D60(&unk_27F1E1C50, &unk_27F1E6CC0);
    sub_24E347198();
    v35 = v38;
    OUTLINED_FUNCTION_13_38();

    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v39 + 8))(v35, v36);
    sub_24E287A3C(v40);
    sub_24E063790(0);
    return;
  }

LABEL_11:
  __break(1u);
}

void (*sub_24E1E9D0C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E1EB23C;
}

void (*sub_24E1E9D74(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E052A04;
}

uint64_t (*sub_24E1E9DD8(void *a1))(void *__src)
{
  v1 = sub_24E1E9D74(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E1EB1F8;
}

void (*sub_24E1E9E30(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E1EB1F0;
}

void sub_24E1E9E94(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_24E1EA6D0(&v2);
}

void sub_24E1E9ED8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  objc_allocWithZone(MEMORY[0x277D752B8]);
  v4 = v2;
  v5 = sub_24E237540(sub_24E1EB1E8, v3, v4);
  v6 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout;
  v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_compositionalLayout) = v5;
  v8 = v5;

  if (v8)
  {
    type metadata accessor for SectionBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_24DFEA80C();
    v10 = sub_24E347CB8();

    [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v10];

    v11 = *(v1 + v6);
    if (v11)
    {
      v11;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24E1EA01C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v35 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v37 = &v35 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v18 = *&Strong[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
  if (!v18)
  {
    goto LABEL_15;
  }

  v2 = Strong;
  v19 = v18;
  sub_24DFB8854(a1, v13);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v35 = v15;
    v36 = v14;
    v20 = v37;
    (*(v15 + 32))(v37, v13, v14);
    sub_24E1E9658();
    v22 = v21;
    v24 = v23;

    v25 = sub_24E137E60();

    sub_24DFC15B4(v10, v7, a1);
    v26 = sub_24DFC15B8();
    v27 = sub_24E1E108C(v20, v10, v7, v26, a2, 0.0, v22, 0.0, v24);

    sub_24DF8C95C(v7, &unk_27F1E1CB0);
    sub_24DF8C95C(v10, &unk_27F1E1CB0);
    v13 = &off_27966F000;
    [v27 contentInsets];
    [v27 setContentInsets_];
    [v27 contentInsets];
    [v27 setContentInsets_];
    v28 = [v27 decorationItems];
    sub_24DF88A8C(0, &qword_27F1E7690);
    v29 = sub_24E347F08();

    v30 = sub_24DFD8654();
    for (i = 0; ; ++i)
    {
      if (v30 == i)
      {

        (*(v35 + 8))(v37, v36);
        return v27;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x25303F560](i, v29);
      }

      else
      {
        if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v32 = *(v29 + 8 * i + 32);
      }

      v33 = v32;
      if (__OFADD__(i, 1))
      {
        break;
      }

      [v32 contentInsets];
      [v33 setContentInsets_];
      [v33 contentInsets];
      [v33 setContentInsets_];
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  sub_24DF8C95C(v13, &unk_27F1E1CB0);
LABEL_17:
  result = sub_24E348AE8();
  __break(1u);
  return result;
}

void sub_24E1EA4EC()
{
  v1 = [v0 navigationItem];
  if (qword_27F1DDC28 != -1)
  {
    swift_once();
  }

  v2 = sub_24E3444F8();
  __swift_project_value_buffer(v2, qword_27F20B488);
  sub_24E3444E8();
  v4 = v3;
  sub_24E1E9658();
  v6 = v5;
  sub_24E3444E8();
  v8 = v7;
  sub_24E1E9658();
  [v1 setLargeTitleInsets_];

  v9 = [v0 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 navigationBar];

    [v11 setNeedsLayout];
  }
}

void sub_24E1EA658()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v1)
  {
    v2 = v1;
    sub_24E344CE8();
  }

  else
  {
    __break(1u);
  }
}

void sub_24E1EA6D0(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  if (*a1 != 1)
  {
    if (v3 == 2)
    {
      v4 = [v2 navigationController];
      if (!v4)
      {
        return;
      }

      v30 = v4;
      [v4 setNeedsFocusUpdate];
    }

    else
    {
      v6 = *(a1 + 8);
      v5 = *(a1 + 16);
      v7 = v3;
      sub_24DF88BEC(v6);
      v8 = sub_24E347CB8();
      v9 = GKGameCenterUIFrameworkBundle();
      v10 = GKGetLocalizedStringFromTableInBundle();

      v29 = sub_24E347CF8();
      v12 = v11;

      v13 = sub_24E347CB8();
      v14 = GKGameCenterUIFrameworkBundle();
      v15 = GKGetLocalizedStringFromTableInBundle();

      v16 = sub_24E347CF8();
      v18 = v17;

      v19 = sub_24E347CB8();
      v20 = GKGameCenterUIFrameworkBundle();
      v21 = GKGetLocalizedStringFromTableInBundle();

      v22 = sub_24E347CF8();
      v24 = v23;

      v31[0] = 0xD000000000000016;
      v31[1] = 0x800000024E39EA90;
      v31[2] = v3;
      v31[3] = v29;
      v31[4] = v12;
      v31[5] = v16;
      v31[6] = v18;
      v31[7] = v22;
      v31[8] = v24;
      v31[9] = v6;
      v31[10] = v5;
      v25 = objc_allocWithZone(type metadata accessor for ErrorView());
      v30 = sub_24E1DE940(v31);
      v26 = [v2 view];
      if (!v26)
      {
        __break(1u);
        return;
      }

      v27 = v26;
      v28 = [v26 backgroundColor];

      [v30 setBackgroundColor_];
      sub_24DFFE6D0(v30);
    }
  }
}

uint64_t sub_24E1EA9A8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00);
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v14 = sub_24E343488();
  v15 = [a1 cellForItemAtIndexPath_];

  if (!v15)
  {
    return 0;
  }

  swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v15);
  if (!result)
  {

    return 0;
  }

  v17 = *(v2 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  if (v17)
  {
    v18 = v17;
    sub_24E344CD8();

    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      (*(v10 + 32))(v13, v7, v8);
      swift_getObjectType();
      sub_24DFC15B8();
      sub_24E29753C();
      v19 = v20;

      (*(v10 + 8))(v13, v8);
      return v19;
    }

    sub_24DF8C95C(v7, &unk_27F1E6C70);
    return 0;
  }

  __break(1u);
  return result;
}

id sub_24E1EAD24(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  v7 = v30 - v6;
  v8 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v14 = v13 - v12;
  v30[1] = [a2 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1EA8D0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    (*(v10 + 32))(v14, v7, v8);
    v15 = sub_24E343488();
    v16 = [a1 cellForItemAtIndexPath_];

    if (v16)
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
      v18 = v16;
      [v18 frame];
      Width = CGRectGetWidth(v31);
      [v18 frame];
      Height = CGRectGetHeight(v32);
      ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
      v22 = 16.0;
      if (ShouldUsePadUI)
      {
        v22 = 0.0;
      }

      v23 = Height - v22;
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for PlayerCardTheme();
      __swift_project_value_buffer(v24, qword_27F20BF00);
      v25 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
      v26 = sub_24E336558();

      v27 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, Width, v23, v26}];
      [v17 setVisiblePath_];

      v28 = [objc_opt_self() clearColor];
      [v17 setBackgroundColor_];

      sub_24DF88A8C(0, &qword_27F1E6CE0);
      v16 = sub_24E2E1614(v18, v17);
    }

    (*(v10 + 8))(v14, v8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    sub_24DF8C95C(v7, &unk_27F1E6C80);
    return 0;
  }

  return v16;
}

id FriendsFeedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FriendsFeedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E1EB1F8(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, 0x41uLL);
  return v2(__dst);
}

uint64_t sub_24E1EB26C()
{
  v0 = sub_24E343FC8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_24E3444F8();
  __swift_allocate_value_buffer(v4, qword_27F1E7698);
  __swift_project_value_buffer(v4, qword_27F1E7698);
  v5 = *MEMORY[0x277D76918];
  *v3 = *MEMORY[0x277D76918];
  (*(v1 + 104))(v3, *MEMORY[0x277D22620], v0);
  v10[3] = v0;
  v10[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  v7 = v5;
  sub_24E344508();
  return (*(v1 + 8))(v3, v0);
}

char *sub_24E1EB3D8(char a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_lockupViews) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_placeholderView;
  v5 = objc_allocWithZone(type metadata accessor for GKAddFriendsLockupView());
  *(v1 + v4) = OUTLINED_FUNCTION_5_86();
  v6 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView;
  type metadata accessor for EmptyStateView();
  *(v2 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v2 + OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_hasEmptyStateData) = 0;
  v7 = sub_24E243C34(a1 & 1);
  v8 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_placeholderView;
  v9 = *&v7[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_placeholderView];
  v10 = v7;
  [v9 setHidden_];
  v11 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView;
  [*&v10[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView] setHidden_];
  v12 = OUTLINED_FUNCTION_9_51();
  [v13 v14];
  v15 = OUTLINED_FUNCTION_9_51();
  [v16 v17];
  [*&v10[v11] setInsetsLayoutMarginsFromSafeArea_];
  [*&v7[v8] setInsetsLayoutMarginsFromSafeArea_];
  [v10 addSubview_];
  [v10 addSubview_];

  return v10;
}

void sub_24E1EB554()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_lockupViews) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_placeholderView;
  v3 = objc_allocWithZone(type metadata accessor for GKAddFriendsLockupView());
  *(v0 + v2) = OUTLINED_FUNCTION_5_86();
  v4 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView;
  type metadata accessor for EmptyStateView();
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_hasEmptyStateData) = 0;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E1EB63C()
{
  if (v0[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_orientation] != 1)
  {
    return 1;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_24E1EB6B4()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  if (v0[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_hasEmptyStateData] != 1 || *&v0[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView] || (v9 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_lockupViews, swift_beginAccess(), *(*&v0[v9] + 16)))
  {
    v10 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_lockupViews;
    swift_beginAccess();
    v11 = *&v0[v10];
    v12 = &selRef_smallIconURLString;
    if (*(v11 + 16))
    {
      v13 = *(v11 + 32);
      [v13 sizeThatFits_];
      if (qword_27F1DDA00 != -1)
      {
        OUTLINED_FUNCTION_0_145();
      }

      v14 = sub_24E3444F8();
      __swift_project_value_buffer(v14, qword_27F1E7698);
      sub_24E343F98();
      sub_24E344198();

      v15 = OUTLINED_FUNCTION_13_0();
      v16(v15);
    }

    else
    {
      if (qword_27F1DDA00 != -1)
      {
        OUTLINED_FUNCTION_0_145();
      }

      v17 = sub_24E3444F8();
      __swift_project_value_buffer(v17, qword_27F1E7698);
      sub_24E343F98();
      OUTLINED_FUNCTION_6_70();
      v18 = *(v7 + 8);
      v19 = OUTLINED_FUNCTION_13_0();
      v18(v19);
      sub_24E343F98();
      OUTLINED_FUNCTION_6_70();
      v20 = OUTLINED_FUNCTION_13_0();
      v18(v20);
      v12 = &selRef_smallIconURLString;
      v21 = [v0 traitCollection];
      OUTLINED_FUNCTION_9_51();
      ASCLockupViewSizeGetEstimatedSize();
    }

    sub_24E1EC604();
    v22 = [v1 v12[200]];
    sub_24E348398();
  }

  else
  {
    v23 = *&v0[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView];
    sub_24E1EDB30(v1, v23, v5, v3);

    if (qword_27F1DDA00 != -1)
    {
      OUTLINED_FUNCTION_0_145();
    }

    v24 = sub_24E3444F8();
    __swift_project_value_buffer(v24, qword_27F1E7698);
    sub_24E343F98();
    sub_24E344198();
    v25 = OUTLINED_FUNCTION_13_0();
    v26(v25);
  }

  OUTLINED_FUNCTION_12_37();
}

void sub_24E1EBA7C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = v4;
  sub_24E1EC604();
  v11 = v10;
  v12 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_lockupViews;
  swift_beginAccess();
  v13 = *(v4 + v12);

  v14 = sub_24E1EB63C();
  if ((v11 * v14) >> 64 != (v11 * v14) >> 63)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v4 = sub_24E2A4370(v11 * v14, v13);
  v13 = v15;
  v5 = v16;
  v6 = v17;
  if ((v17 & 1) == 0)
  {
LABEL_3:
    sub_24E09CA00(v4, v13, v5, v6);
    v71 = v18;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_24E348C28();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v6 >> 1, v5))
  {
    goto LABEL_80;
  }

  if (v20 != (v6 >> 1) - v5)
  {
LABEL_81:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v71 = v21;
  if (!v21)
  {
    v71 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v22 = *&v7[v12];

  v4 = sub_24E25C318(v11, v22);
  v13 = v23;
  v12 = v24 >> 1;
  v26 = (v25 + 16 * v23 + 8);
  while (v12 != v13)
  {
    if (v13 >= v12)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    ++v13;
    v6 = *v26;
    v5 = *(v26 - 1);
    v27 = v6;
    [v5 setHidden_];
    [v27 setHidden_];

    v26 += 2;
  }

  swift_unknownObjectRelease();
  if (*(v71 + 16))
  {
    v4 = v7;
    v12 = 0;
    v70 = sub_24E1EB63C() + 1;
    v28 = v71;
    v13 = MEMORY[0x277D84F90];
LABEL_17:
    v69 = v28 + 4;
    v72 = v28;
    while (v70 != ++v12)
    {
      v29 = v28[2];
      if (!v29)
      {
        break;
      }

      if (v11 < 0)
      {
        goto LABEL_77;
      }

      if (v29 >= v11)
      {
        v30 = v11;
      }

      else
      {
        v30 = v28[2];
      }

      if (v11)
      {
        v4 = v30;
      }

      else
      {
        v4 = 0;
      }

      v31 = v29 - v4;
      if (v29 == v4)
      {
      }

      else if (v4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2530);
        v5 = swift_allocObject();
        _swift_stdlib_malloc_size_0(v5);
        OUTLINED_FUNCTION_9_24();
        v5[2] = v4;
        v5[3] = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2538);
        swift_arrayInitWithCopy();
      }

      else
      {
        v5 = MEMORY[0x277D84F90];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_11_39();
        sub_24E078484();
        v13 = v35;
      }

      v6 = *(v13 + 16);
      v28 = v72;
      if (v6 >= *(v13 + 24) >> 1)
      {
        sub_24E078484();
        v13 = v36;
        v28 = v72;
      }

      *(v13 + 16) = v6 + 1;
      *(v13 + 8 * v6 + 32) = v5;
      v33 = v28[2];
      if (v33 < v4 || v33 < v29)
      {
        goto LABEL_78;
      }

      if (v33 != v31)
      {
        v5 = MEMORY[0x277D84F90];
        if (v29 != v4)
        {
          if (v31 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2530);
            v5 = swift_allocObject();
            _swift_stdlib_malloc_size_0(v5);
            OUTLINED_FUNCTION_9_24();
            v5[2] = v31;
            v5[3] = v37;
          }

          v4 = &v69[2 * v4];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2538);
          swift_arrayInitWithCopy();
        }

        v28 = v5;
        goto LABEL_17;
      }
    }
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  type metadata accessor for PageGrid();
  v38 = [objc_opt_self() mainScreen];
  [v38 bounds];

  v39 = [v7 traitCollection];
  v5 = PageGrid.__allocating_init(size:traitCollection:)();
  v4 = v7;
  v40 = (sub_24E1EB63C() - 1);
  v76.origin.x = a1;
  v76.origin.y = a2;
  v76.size.width = a3;
  v76.size.height = a4;
  Width = CGRectGetWidth(v76);
  v42 = OBJC_IVAR___GameLayerPageGrid_interColumnSpacing;
  v43 = Width - *(v5 + OBJC_IVAR___GameLayerPageGrid_interColumnSpacing) * v40;
  v44 = v43 / sub_24E1EB63C();
  v77.origin.x = a1;
  v77.origin.y = a2;
  v77.size.width = a3;
  v77.size.height = a4;
  MinX = CGRectGetMinX(v77);
  v46 = 0;
  v12 = *(v13 + 16);
  v73 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_hasEmptyStateData;
  while (v12 != v46)
  {
    if (v46 >= *(v13 + 16))
    {
      goto LABEL_76;
    }

    v6 = *(v13 + 8 * v46 + 32);

    OUTLINED_FUNCTION_2_93();
    CGRectGetMinY(v78);
    OUTLINED_FUNCTION_2_93();
    CGRectGetHeight(v79);
    OUTLINED_FUNCTION_2_93();
    sub_24E348508();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = *(v6 + 16);
    if (v55)
    {
      v56 = v55 < v11;
    }

    else
    {
      v56 = 0;
    }

    if (v56 && (v46 || (v58 = [v7 traitCollection], v59 = sub_24E348398(), v58, (v59 & 1) != 0) || (v7[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_orientation] & 1) == 0))
    {
      v57 = v7[v73];
    }

    else
    {
      v57 = 0;
    }

    v4 = v7;
    sub_24E1EC1A0(v6, 0, v57, v48, v50, v52, v54);

    MinX = MinX + v44 + *(v5 + v42);
    ++v46;
  }

  v60 = [v7 traitCollection];
  v61 = sub_24E3483A8();

  v62 = *(v13 + 16);
  if ((v61 & 1) != 0 && v62 == 1)
  {
    OUTLINED_FUNCTION_2_93();
    CGRectGetMinY(v80);
    OUTLINED_FUNCTION_2_93();
    CGRectGetHeight(v81);
    OUTLINED_FUNCTION_2_93();
    sub_24E348508();
    if (*&v7[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView])
    {
      v67 = 0;
    }

    else
    {
      v67 = v7[v73];
    }

    v68 = MEMORY[0x277D84F90];
LABEL_73:
    sub_24E1EC1A0(v68, v67, 0, v63, v64, v65, v66);
    goto LABEL_74;
  }

  if (!v62)
  {
    if (*&v7[OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_errorView])
    {
      v67 = 0;
    }

    else
    {
      v67 = v7[v73];
    }

    v68 = MEMORY[0x277D84F90];
    v63 = a1;
    v64 = a2;
    v66 = a4;
    v65 = a3;
    goto LABEL_73;
  }

LABEL_74:
}

void sub_24E1EC1A0(uint64_t a1, char a2, int a3, double a4, double a5, double a6, double a7)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  sub_24E1EC604();
  v17 = v16;
  v18 = &v7[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView];
  [*&v7[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView] setHidden_];
  v42 = &v7[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_placeholderView];
  [*&v7[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_placeholderView] setHidden_];
  if (a2)
  {
    if (qword_27F1DDA00 != -1)
    {
LABEL_17:
      OUTLINED_FUNCTION_0_145();
    }

    v19 = sub_24E3444F8();
    __swift_project_value_buffer(v19, qword_27F1E7698);
    sub_24E343F98();
    sub_24E344198();
    v20 = OUTLINED_FUNCTION_14_33();
    v21(v20);
    [*v18 setFrame_];
  }

  else
  {
    if (qword_27F1DDA00 != -1)
    {
      OUTLINED_FUNCTION_0_145();
    }

    v22 = sub_24E3444F8();
    __swift_project_value_buffer(v22, qword_27F1E7698);
    sub_24E343F98();
    sub_24E344198();
    v23 = OUTLINED_FUNCTION_14_33();
    v24(v23);
    v25 = [v7 traitCollection];
    sub_24E344A98();
    v45 = v26;

    v47.origin.x = OUTLINED_FUNCTION_1_112();
    MinY = CGRectGetMinY(v47);
    v46 = v8;
    v44 = v8 + v8;
    v18 = (a1 + 40);
    v28 = -*(a1 + 16);
    v29 = 1;
    v30 = 0.0;
    while (v28 + v29 != 1)
    {
      if (!v17)
      {
        __break(1u);
        goto LABEL_17;
      }

      v31 = *v18;
      v32 = *(v18 - 1);
      v33 = v31;
      v34 = v32;
      v35 = v33;
      [v34 setHidden_];
      v36 = v35;
      [v36 setHidden_];
      if (v30 == 0.0)
      {
        [v34 sizeThatFits_];
        v30 = v37;
      }

      v48.origin.x = OUTLINED_FUNCTION_1_112();
      MinX = CGRectGetMinX(v48);
      v49.origin.x = OUTLINED_FUNCTION_1_112();
      [v34 setFrame_];
      v50.origin.x = OUTLINED_FUNCTION_1_112();
      v8 = CGRectGetMinX(v50) + 72.0;
      [v34 frame];
      v39 = v46 + CGRectGetMaxY(v51);
      [v34 frame];
      [v36 setFrame_];

      [v34 layoutIfNeeded];
      MinY = MinY + v44 + v30;
      ++v29;
      v18 += 2;
    }

    if ((a3 & 1) == 0)
    {
      return;
    }

    v18 = v42;
    v40 = *v42;
    v53.origin.x = OUTLINED_FUNCTION_1_112();
    v41 = CGRectGetMinX(v53);
    v54.origin.x = OUTLINED_FUNCTION_1_112();
    [v40 setFrame_];
  }

  [*v18 layoutIfNeeded];
}

void sub_24E1EC604()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  v3 = v2;
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v7 = OBJC_IVAR____TtC12GameCenterUI26AppStoreContentPlatterView_orientation;
  if (sub_24DFC5830(v1))
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if ((*(v1 + v7) & 1) == 0)
  {
    if (qword_27F1DDA00 != -1)
    {
      OUTLINED_FUNCTION_0_145();
    }

    v9 = sub_24E3444F8();
    __swift_project_value_buffer(v9, qword_27F1E7698);
    sub_24E343F98();
    OUTLINED_FUNCTION_6_70();
    v10 = *(v5 + 8);
    v11 = OUTLINED_FUNCTION_13_0();
    v10(v11);
    sub_24E343F98();
    OUTLINED_FUNCTION_6_70();
    v12 = OUTLINED_FUNCTION_13_0();
    v10(v12);
    v13 = [v1 traitCollection];
    ASCLockupViewSizeGetEstimatedSize();
    v15 = v14;

    v16 = -1;
    do
    {
      v17 = v15 * (v16 + 2) > v3 || v16 + 1 >= v8;
      ++v16;
    }

    while (!v17);
  }

  OUTLINED_FUNCTION_12_37();
}

void sub_24E1EC7D4()
{
  OUTLINED_FUNCTION_13_44();
  v78 = v1;
  v79 = v2;
  v69 = type metadata accessor for EmptyStateData();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v67 = v5 - v4;
  type metadata accessor for AppStorePlatterData.ContentData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0058);
  MEMORY[0x28223BE20](v10 - 8);
  v68 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v67 - v13;
  v14 = OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_lockupViews;
  swift_beginAccess();
  v80 = v0;
  v81 = v14;
  v15 = *&v0[v14];
  v16 = *(v15 + 16);

  v17 = 0;
  v18 = (v15 + 40);
  while (v16 != v17)
  {
    if (v17 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    ++v17;
    v19 = *v18;
    v20 = *(v18 - 1);
    v21 = v19;
    [v20 removeFromSuperview];
    [v21 removeFromSuperview];

    v18 += 2;
  }

  *&v80[v81] = MEMORY[0x277D84F90];

  sub_24E00A4D4(v79, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_24E1EDAC8(v9, type metadata accessor for AppStorePlatterData.ContentData);
    v54 = v80;
LABEL_29:
    [v54 setNeedsLayout];
    OUTLINED_FUNCTION_12_37();
    return;
  }

  v22 = *v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFC10);
  sub_24E1EDA58(v9 + *(v23 + 48), v70);
  v79 = v22;
  v77 = sub_24DFD8654();
  if (!v77)
  {
LABEL_23:

    v55 = v70;
    v56 = v68;
    sub_24DF8BD90(v70, v68, &qword_27F1E0058);
    if (__swift_getEnumTagSinglePayload(v56, 1, v69) == 1)
    {
      sub_24DF8BFF4(v55, &qword_27F1E0058);
      sub_24DF8BFF4(v56, &qword_27F1E0058);
      v54 = v80;
      v80[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_hasEmptyStateData] = 0;
    }

    else
    {
      v57 = v67;
      sub_24DFE227C(v56, v67);
      v58 = v80;
      v80[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_hasEmptyStateData] = 1;
      v59 = *&v58[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView];
      v60 = v78;
      sub_24E2D93A0(v57, v78);

      sub_24DF8BD90(v57 + 136, &v82, &qword_27F1DEE90);
      if (v83)
      {
        sub_24DE56CE8(&v82, v84);
        sub_24E347638();
        v61 = swift_allocBox();
        sub_24E05F70C();
        OUTLINED_FUNCTION_7_50();
        sub_24DF8BFF4(v55, &qword_27F1E0058);
        v62 = *&v58[OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_placeholderView];
        sub_24DE56CE8(v84, &v82);
        v63 = swift_allocObject();
        *(v63 + 16) = v60;
        sub_24DE56CE8(&v82, v63 + 24);
        *(v63 + 64) = v61;
        v64 = &v62[OBJC_IVAR____TtC12GameCenterUI22GKAddFriendsLockupView_addFriendsHandler];
        swift_beginAccess();
        v65 = *v64;
        *v64 = sub_24E1EDB20;
        v64[1] = v63;

        v66 = v62;

        sub_24DE73FA0(v65);
      }

      else
      {
        OUTLINED_FUNCTION_7_50();
        sub_24DF8BFF4(v55, &qword_27F1E0058);
        sub_24DF8BFF4(&v82, &qword_27F1DEE90);
      }

      v54 = v58;
    }

    goto LABEL_29;
  }

  v76 = sub_24DF88A8C(0, &qword_27F1DEFE0);
  v75 = objc_opt_self();
  type metadata accessor for SeparatorView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v77 >= 1)
  {
    v24 = 0;
    v73 = v79 & 0xC000000000000001;
    v25 = &selRef_iconURLString;
    v72 = *MEMORY[0x277CEC230];
    v71 = *MEMORY[0x277CEC200];
    do
    {
      if (v73)
      {
        v26 = MEMORY[0x25303F560](v24, v79);
      }

      else
      {
        v26 = *(v79 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [objc_allocWithZone(MEMORY[0x277CEC298]) v25[56]];
      v29 = OUTLINED_FUNCTION_9_51();
      [v30 v31];
      if (qword_27F1DDB50 != -1)
      {
        swift_once();
      }

      [v28 setGroup_];
      if (qword_27F1DE118 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for PlayerCardTheme();
      [v28 setOfferTheme_];
      v33 = v27;
      v34 = v72;
      v35 = sub_24E1C69D4(v33, v34, v71);
      [v28 setRequest_];

      v36 = [v75 whiteColor];
      [v28 setTintColor_];

      v37 = v80;
      [v80 addSubview_];
      [v28 setAutomaticallyPresentsProductDetails_];
      v38 = objc_allocWithZone(type metadata accessor for LockupViewTapGestureRecognizer());
      v39 = v28;
      v40 = v33;
      v41 = v78;

      v42 = sub_24E1ED414(v40, v39, v41);
      [v39 addGestureRecognizer_];
      v43 = v25;
      v44 = [objc_allocWithZone(ObjCClassFromMetadata) v25[56]];
      [v37 addSubview_];
      v45 = v81;
      swift_beginAccess();
      v46 = *&v37[v45];
      v47 = v39;
      v48 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v37[v45] = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_11_39();
        sub_24E0775C8();
        v37 = v80;
        v46 = v52;
        *&v80[v81] = v52;
      }

      v50 = *(v46 + 16);
      if (v50 >= *(v46 + 24) >> 1)
      {
        sub_24E0775C8();
        v37 = v80;
        v46 = v53;
      }

      ++v24;
      *(v46 + 16) = v50 + 1;
      v51 = v46 + 16 * v50;
      *(v51 + 32) = v47;
      *(v51 + 40) = v48;
      *&v37[v81] = v46;
      swift_endAccess();

      v25 = v43;
    }

    while (v77 != v24);
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_24E1ED0B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_24E347638();
  v8 = swift_projectBox();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    return sub_24DF8BFF4(v6, &unk_27F1EAC90);
  }

  swift_beginAccess();
  (*(*(v7 - 8) + 16))(v3, v8, v7);
  (*(v1 + 104))(v3, *MEMORY[0x277D21E10], v0);
  sub_24E3473B8();

  (*(v1 + 8))(v3, v0);
  return (*(*(v9 - 8) + 8))(v6, v9);
}

void sub_24E1ED310()
{

  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI21AppLockupsPlatterView_emptyStateView);
}

id sub_24E1ED360()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLockupsPlatterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E1ED414(void *a1, void *a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC12GameCenterUIP33_64554770326E76789B08F6F30099D03930LockupViewTapGestureRecognizer_adamId] = a1;
  *&v3[OBJC_IVAR____TtC12GameCenterUIP33_64554770326E76789B08F6F30099D03930LockupViewTapGestureRecognizer_lockupView] = a2;
  *&v3[OBJC_IVAR____TtC12GameCenterUIP33_64554770326E76789B08F6F30099D03930LockupViewTapGestureRecognizer_objectGraph] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v8 = a1;
  v9 = a2;

  v10 = objc_msgSendSuper2(&v12, sel_initWithTarget_action_, 0, 0);
  [v10 addTarget:v10 action:{sel_execute, v12.receiver, v12.super_class}];

  return v10;
}

id sub_24E1ED4F4()
{
  v1 = v0;
  v28 = sub_24E343F88();
  v2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_24DF8BFF4(v10, &unk_27F1EAC90);
    sub_24E343C98();
    v15 = sub_24E343F78();
    v16 = sub_24E348258();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24DE53000, v15, v16, "ActionDispatcher was nil when trying to perform AppStoreProductAction, fallback to ASCLockupView.presentProductDetailsViewController", v17, 2u);
      MEMORY[0x253040EE0](v17, -1, -1);
    }

    (*(v2 + 8))(v4, v28);
    return [*(v1 + OBJC_IVAR____TtC12GameCenterUIP33_64554770326E76789B08F6F30099D03930LockupViewTapGestureRecognizer_lockupView) presentProductDetailsViewController];
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v19 = *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_64554770326E76789B08F6F30099D03930LockupViewTapGestureRecognizer_adamId);
    v20 = *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_64554770326E76789B08F6F30099D03930LockupViewTapGestureRecognizer_lockupView);
    v29[3] = &type metadata for AppStoreProductAction;
    v29[4] = sub_24E18C284();
    v29[0] = v19;
    v29[1] = v20;
    v21 = v27;
    (*(v5 + 104))(v7, *MEMORY[0x277D21E18], v27);
    v22 = v19;
    v23 = v20;
    v24 = v22;
    v25 = v23;
    sub_24E3473B8();

    (*(v5 + 8))(v7, v21);
    (*(v12 + 8))(v14, v11);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }
}

uint64_t sub_24E1EDA58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E1EDAC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_24E1EDB30(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (qword_27F1DDCC0 != -1)
  {
    swift_once();
  }

  sub_24E1EDD24(qword_27F20B548, v24);
  v8 = *(a2 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_imageView);
  v9 = sub_24DF88A8C(0, &qword_27F1DFF00);
  v10 = *(a2 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_wordmarkView);
  v11 = MEMORY[0x277D22A58];
  if (v10)
  {
    v12 = type metadata accessor for WordmarkView();
    v13 = MEMORY[0x277D22A58];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(a2 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_primaryLabel);
  v35 = type metadata accessor for DynamicTypeLabel();
  v34 = v14;
  v15 = *(a2 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_secondaryLabel);
  v38 = v35;
  v39 = MEMORY[0x277D22A68];
  v36 = MEMORY[0x277D22A68];
  v37 = v15;
  v16 = *(a2 + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_button);
  v41 = type metadata accessor for DynamicTypeButton();
  v42 = v11;
  v40 = v16;
  memcpy(__dst, v24, sizeof(__dst));
  v26 = v8;
  v27 = v9;
  v28 = v11;
  v29 = v10;
  v31 = 0;
  v30 = 0;
  v32 = v12;
  v33 = v13;
  v17 = v10;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v8;
  v22 = sub_24E2DDA78(a1, __dst, a3, a4);
  sub_24E02629C(__dst);
  return v22;
}

uint64_t OUTLINED_FUNCTION_0_145()
{

  return swift_once();
}

char *OUTLINED_FUNCTION_5_86()
{

  return GKAddFriendsLockupView.init(frame:friendState:metricsPageId:metricsPageType:)(2, 0x676E69646E616CLL, 0xE700000000000000, 0x656461637261, 0xE600000000000000);
}

uint64_t OUTLINED_FUNCTION_6_70()
{

  return sub_24E344198();
}

uint64_t OUTLINED_FUNCTION_7_50()
{

  return sub_24E1EDAC8(v0, type metadata accessor for EmptyStateData);
}

uint64_t type metadata accessor for ReportFriendAction()
{
  result = qword_27F1E76E8;
  if (!qword_27F1E76E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24E1EDF48()
{
  result = sub_24E01CAA4();
  if (v1 <= 0x3F)
  {
    result = sub_24E347208();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_24E1EDFCC(double a1)
{
  if ((*(v1 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 32) != 1 || *(v1 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 16) | *(v1 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 24) | *(v1 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style) | *(v1 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 8)) && qword_27F1DDA08 != -1)
  {
    OUTLINED_FUNCTION_0_146();
  }

  return a1;
}

double sub_24E1EE050()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_27F20B158 = 1.0 / v2;
  return result;
}

uint64_t sub_24E1EE0BC()
{
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 32) != 1)
  {
    return sub_24E0B7F88(v0, *(v0 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style), *(v0 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 8), *(v0 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 16), *(v0 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 24));
  }

  return result;
}

id sub_24E1EE11C()
{
  if (v0[OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 32] == 1)
  {
    v1 = vorrq_s8(*&v0[OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style], *&v0[OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style + 16]);
    v2 = vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) == 0;
  }

  else
  {
    v2 = 0;
  }

  [v0 setHidden_];

  return [v0 setNeedsLayout];
}

char *sub_24E1EE198(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style];
  *v10 = 1;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  v10[32] = 1;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC12GameCenterUI13SeparatorView_separatorView] = v11;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC12GameCenterUI13SeparatorView_separatorView;
  v14 = *&v12[OBJC_IVAR____TtC12GameCenterUI13SeparatorView_separatorView];
  v15 = qword_27F1DE118;
  v16 = v12;
  v17 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for PlayerCardTheme();
  v19 = __swift_project_value_buffer(v18, qword_27F20BF00);
  [v17 setBackgroundColor_];

  v20 = [*&v12[v13] layer];
  if (*(v19 + *(v18 + 56) + 8))
  {
    v21 = sub_24E347CB8();
  }

  else
  {
    v21 = 0;
  }

  [v20 setCompositingFilter_];

  swift_unknownObjectRelease();
  [v16 addSubview_];

  return v16;
}

void sub_24E1EE38C()
{
  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI13SeparatorView_style;
  *v1 = 1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E1EE468()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  [v0 bounds];
  if (qword_27F1DDA08 != -1)
  {
    OUTLINED_FUNCTION_0_146();
  }

  v1 = *&qword_27F20B158;
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI13SeparatorView_separatorView];
  v13.origin.x = OUTLINED_FUNCTION_7_2();
  MinX = CGRectGetMinX(v13);
  sub_24E1EE0BC();
  v5 = MinX + v4;
  v14.origin.x = OUTLINED_FUNCTION_7_2();
  MinY = CGRectGetMinY(v14);
  v15.origin.x = OUTLINED_FUNCTION_7_2();
  Width = CGRectGetWidth(v15);
  sub_24E1EE0BC();
  v9 = Width - v8;
  sub_24E1EE0BC();
  return [v2 setFrame_];
}

uint64_t OUTLINED_FUNCTION_0_146()
{

  return swift_once();
}

id sub_24E1EE620()
{
  OUTLINED_FUNCTION_29();
  v10 = type metadata accessor for ActivityFeedLeaderboardCollectionViewCell();
  v1 = OUTLINED_FUNCTION_28();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v10);
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 16.0;
  }

  [v4 set:0.0 gkFocusHighlightInsets:{0.0, v5, 0.0}];
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for PlayerCardTheme();
  __swift_project_value_buffer(v6, qword_27F20BF00);
  v7 = [objc_allocWithZone(MEMORY[0x277D75C80]) init];
  v8 = sub_24E336558();

  [v4 set:v8 gkFocusHighlightCornerRadius:?];
  return v4;
}

double sub_24E1EE7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  OUTLINED_FUNCTION_3_18(a2, &v18 - v14);
  OUTLINED_FUNCTION_3_18(a3, &v15[*(v6 + 56)]);
  sub_24DFC5400(v15, v13);
  v16 = *(v6 + 56);
  OUTLINED_FUNCTION_3_18(v13, v9);
  OUTLINED_FUNCTION_3_18(&v13[v16], v9 + *(v6 + 56));
  sub_24DF8C95C(v9, &unk_27F1E1CA0);
  sub_24DF8C95C(&v13[v16], &unk_27F1E1CB0);
  sub_24DF8C95C(v13, &unk_27F1E1CB0);
  return 0.0;
}

double sub_24E1EE93C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_24DF9DEAC(a2, &v19 - v14, &unk_27F1E1CB0);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0);
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0);
  v16 = *(v9 + 56);
  v17 = sub_24E17B0B4(a1, v12, v12 + v16, a4);
  sub_24DF8C95C(v15, &unk_27F1E1CA0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0);
  sub_24DF8C95C(v12, &unk_27F1E1CB0);
  return v17;
}

uint64_t sub_24E1EEADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  sub_24DF9DEAC(a2, v18 - v14, &unk_27F1E1CB0);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0);
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0);
  v16 = *(v9 + 56);
  sub_24E17B1EC(v12, v12 + v16, a5);
  sub_24DF8C95C(v15, &unk_27F1E1CA0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0);
  return sub_24DF8C95C(v12, &unk_27F1E1CB0);
}

uint64_t sub_24E1EEC4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347148();

  return 1;
}

uint64_t sub_24E1EEC9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347148();
}

uint64_t sub_24E1EECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347148();
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  sub_24E17B2CC(v13, a6);
  sub_24E2CB520(a1, a2, a3, a4, a5, a6);
}

id sub_24E1EEDB8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE1A0);
  sub_24E347148();
  type metadata accessor for ActivityFeedBaseCollectionViewCell();
  v3 = sub_24E17B3B4(v5, a2);

  return v3;
}

id sub_24E1EEE44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedLeaderboardCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityFeedLeaderboardCollectionViewCell()
{
  result = qword_27F1E7708;
  if (!qword_27F1E7708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1EEF50(uint64_t a1)
{
  result = sub_24E1EF090(&qword_27F1E7718, type metadata accessor for ActivityFeedLeaderboardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1EF038(uint64_t a1)
{
  result = sub_24E1EF090(&qword_27F1E6468, type metadata accessor for ActivityFeedLeaderboardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E1EF090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AccessPointView()
{
  result = qword_27F1E7728;
  if (!qword_27F1E7728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E1EF1CC()
{
  v0 = type metadata accessor for AccessPoint(319);
  if (v1 <= 0x3F)
  {
    sub_24DFB442C(319, &qword_27F1DF470);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_24E1EF2D4();
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_24DFB442C(319, &qword_27F1E7740);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_24E1EF2D4()
{
  if (!qword_27F1E7738)
  {
    type metadata accessor for AccessPoint.Model(255);
    v0 = sub_24E346BB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F1E7738);
    }
  }
}

id sub_24E1EF348(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_9_52(a1) location];
  *v1 = result;
  return result;
}

double sub_24E1EF38C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v9 = objc_opt_self();
  v10 = [v9 shared];
  v11 = sub_24E08A608();

  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FE0000000000000;
  LOBYTE(v33[0]) = 1;
  OUTLINED_FUNCTION_12_38();
  sub_24E346B78();
  OUTLINED_FUNCTION_16_32();
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  LOBYTE(v33[0]) = 0;
  OUTLINED_FUNCTION_12_38();
  sub_24E346B78();
  OUTLINED_FUNCTION_16_32();
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  v16 = type metadata accessor for AccessPointView();
  v17 = [v9 &selRef_setWithArray_ + 5];
  v18 = sub_24E08A608();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  sub_24E1F5378(v8, v5, type metadata accessor for AccessPoint.Model);
  sub_24E346B78();
  sub_24E08FBA8(v8);
  v19 = a1 + v16[10];
  LOBYTE(v33[0]) = 0;
  OUTLINED_FUNCTION_12_38();
  sub_24E346B78();
  OUTLINED_FUNCTION_16_32();
  *v19 = v20;
  *(v19 + 8) = v21;
  v22 = a1 + v16[11];
  LOBYTE(v33[0]) = 1;
  OUTLINED_FUNCTION_12_38();
  sub_24E346B78();
  OUTLINED_FUNCTION_16_32();
  *v22 = v23;
  *(v22 + 8) = v24;
  v25 = a1 + v16[12];
  v26 = [v9 shared];
  v27 = sub_24E08A608();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24E344E58();

  v28 = sub_24E298EA0();
  v30 = v29;
  sub_24E08FBA8(v8);
  v33[0] = v28;
  v33[1] = v30;
  OUTLINED_FUNCTION_12_38();
  sub_24E346B78();
  v31 = v35;
  result = *&v34;
  *v25 = v34;
  *(v25 + 16) = v31;
  return result;
}

uint64_t sub_24E1EF680@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v6[1];
  *a6 = *v6;
  *(a6 + 16) = v8;
  v9 = v6[3];
  *(a6 + 32) = v6[2];
  *(a6 + 48) = v9;
  *(a6 + 64) = a1;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  *(a6 + 88) = a4;
  *(a6 + 96) = a5;

  v10 = a1;

  return sub_24DE6A30C(v6, &v12);
}

uint64_t sub_24E1EF6F0@<X0>(uint64_t a1@<X8>)
{
  [objc_allocWithZone(MEMORY[0x277D75D58]) init];
  v2 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_24DFEC928();
  sub_24E347F08();

  sub_24E346B78();
  v3 = sub_24E346E28();
  sub_24E1EF680(v6, v7, v8, v3, v4, a1);
}

double sub_24E1EF7D4()
{
  v1 = OUTLINED_FUNCTION_18_33();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_147();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  result = 0.5;
  if ((v5 & 1) == 0)
  {
    type metadata accessor for AccessPointView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
    sub_24E346B88();
    v4 = *v0 == 0;
    sub_24E08FBA8(v0);
    return dbl_24E383C70[v4];
  }

  return result;
}

double sub_24E1EF8A4()
{
  v1 = v0;
  v2 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
  v21[16] = *(v0 + 24);
  v22 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  v6 = 0.0;
  if (v21[15] == 1)
  {
    type metadata accessor for AccessPointView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
    sub_24E346B88();
    v7 = *v4;
    sub_24E08FBA8(v4);
    if (v7)
    {
      type metadata accessor for AccessPointWindow();
      sub_24DFFB074();
      if (v8)
      {
        v9 = v8;
        [v8 safeAreaInsets];
        v11 = v10;
        v13 = v12;

        if (sub_24E299218())
        {
          v14 = v11;
        }

        else
        {
          v14 = v13;
        }

        v15 = v14 + 74.0;
      }

      else
      {
        v15 = 136.0;
      }

      v16 = *(v1 + 8);
      v17 = sub_24E299218();
      v18 = -v15;
      if (v17)
      {
        v19 = -v15;
      }

      else
      {
        v19 = v15;
      }

      if (v17)
      {
        v18 = v15;
      }

      if (v16 == 1)
      {
        return v18;
      }

      else
      {
        return v19;
      }
    }
  }

  return v6;
}

double sub_24E1EFA1C()
{
  v1 = OUTLINED_FUNCTION_18_33();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_147();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v5 == 1 && (type metadata accessor for AccessPointView(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720), sub_24E346B88(), v3 = *v0, sub_24E08FBA8(v0), !v3))
  {
    return 0.0;
  }

  else
  {
    return 1.0;
  }
}

double sub_24E1EFAE8()
{
  v1 = OUTLINED_FUNCTION_18_33();
  v2 = OUTLINED_FUNCTION_4_5(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_147();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v5 == 1 && (type metadata accessor for AccessPointView(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720), sub_24E346B88(), v3 = *v0, sub_24E08FBA8(v0), !v3))
  {
    return 0.8;
  }

  else
  {
    return 1.0;
  }
}

void sub_24E1EFBB8()
{
  v0 = type metadata accessor for AccessPoint.Model(0);
  v1 = OUTLINED_FUNCTION_4_5(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_1();
  v4 = v3 - v2;
  type metadata accessor for AccessPointView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  sub_24E346B88();
  sub_24E08FBA8(v4);
  v5 = [objc_opt_self() mainScreen];
  [v5 bounds];
}

void sub_24E1EFCA0()
{
  v0 = OUTLINED_FUNCTION_18_33();
  v1 = OUTLINED_FUNCTION_4_5(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_1();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = (&v14 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  type metadata accessor for AccessPointView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  sub_24E346B88();
  v11 = *(v10 + 8);
  v12 = v11;
  sub_24E08FBA8(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_15_28();
    sub_24E08FBA8(v7);
    OUTLINED_FUNCTION_15_28();
    v13 = v7[10];
    sub_24E08FBA8(v7);
    if (v13 <= 0.0)
    {
    }

    else
    {
      OUTLINED_FUNCTION_15_28();
      sub_24E08FBA8(v7);
      sub_24E346B88();

      sub_24E08FBA8(v4);
    }
  }
}

uint64_t sub_24E1EFE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a2;
  v3 = sub_24E346968();
  v126 = *(v3 - 8);
  v127 = v3;
  MEMORY[0x28223BE20](v3);
  v128 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A50);
  MEMORY[0x28223BE20](v141);
  v143 = &v119 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A58);
  MEMORY[0x28223BE20](v133);
  v135 = &v119 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A60);
  MEMORY[0x28223BE20](v132);
  v8 = &v119 - v7;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7868);
  MEMORY[0x28223BE20](v134);
  v129 = &v119 - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7858);
  MEMORY[0x28223BE20](v142);
  v136 = &v119 - v10;
  v11 = sub_24E345C88();
  v124 = *(v11 - 8);
  v125 = v11;
  MEMORY[0x28223BE20](v11);
  v123 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v119 - v14;
  v16 = sub_24E346A68();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A70);
  MEMORY[0x28223BE20](v121);
  v122 = &v119 - v20;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7878);
  MEMORY[0x28223BE20](v131);
  v130 = &v119 - v21;
  v22 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v22 - 8);
  v139 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v119 - v25;
  v27 = *(type metadata accessor for AccessPointView() + 36);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  v140 = a1;
  v137 = v27;
  v138 = v28;
  sub_24E346B88();
  v29 = *(v26 + 1);
  v30 = v26[24];
  v31 = *(v26 + 2);
  sub_24E08FB88(v29, v31, v26[24]);
  sub_24E08FBA8(v26);
  if (!v30)
  {
    v128 = v29;
    sub_24E346A38();
    (*(v17 + 104))(v19, *MEMORY[0x277CE0FE0], v16);
    sub_24E346AE8();

    (*(v17 + 8))(v19, v16);
    v70 = *MEMORY[0x277CE1010];
    v71 = sub_24E346AA8();
    (*(*(v71 - 8) + 104))(v15, v70, v71);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v71);
    v72 = sub_24E346A78();

    sub_24DF8C95C(v15, &qword_27F1E7A68);
    v73 = v139;
    sub_24E346B88();
    sub_24E08FBA8(v73);
    sub_24E346B88();
    sub_24E08FBA8(v73);
    sub_24E346E28();
    sub_24E3453D8();
    v147[0] = BYTE8(v148[0]);
    LOBYTE(v149) = BYTE8(v148[1]);
    v145[0] = v72;
    v145[1] = *&v148[0];
    LOBYTE(v145[2]) = BYTE8(v148[0]);
    v145[3] = *&v148[1];
    LOBYTE(v145[4]) = BYTE8(v148[1]);
    *&v145[5] = v148[2];
    LOWORD(v145[7]) = 256;
    v74 = sub_24E347CB8();
    v75 = GKGameCenterUIFrameworkBundle();
    v76 = GKGetLocalizedStringFromTableInBundle();

    v77 = sub_24E347CF8();
    v79 = v78;

    *&v146[0] = v77;
    *(&v146[0] + 1) = v79;
    sub_24DF90C4C();
    v80 = sub_24E3464E8();
    v82 = v81;
    v84 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A78);
    sub_24E1F66CC();
    v85 = v122;
    sub_24E346658();
    sub_24DFA92EC(v80, v82, v84 & 1);

    v146[0] = *v145;
    v146[1] = *&v145[2];
    v146[2] = *&v145[4];
    *(&v146[2] + 10) = *(&v145[5] + 2);
    sub_24DF8C95C(v146, &qword_27F1E7A78);
    v86 = v123;
    sub_24E345C78();
    v87 = v130;
    sub_24E3456B8();
    (*(v124 + 8))(v86, v125);
    sub_24DF8C95C(v85, &qword_27F1E7A70);
    *&v87[*(v131 + 52)] = v128;
    sub_24DFC24D4(v87, v8, &qword_27F1E7878);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7888);
    sub_24DFB4C28(&qword_27F1E7870, &qword_27F1E7878);
    sub_24DFB4C28(&qword_27F1E7880, &qword_27F1E7888);
    v88 = v129;
    sub_24E345E38();
    sub_24DFC24D4(v88, v135, &qword_27F1E7868);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7898);
    sub_24E1F5ACC();
    sub_24E1F5BAC();
    v89 = v136;
    sub_24E345E38();
    sub_24DF8C95C(v88, &qword_27F1E7868);
    sub_24DFC24D4(v89, v143, &qword_27F1E7858);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78B8);
    sub_24E1F5A40();
    sub_24DFB4C28(&qword_27F1E78B0, &qword_27F1E78B8);
    sub_24E345E38();
    sub_24DF8C95C(v89, &qword_27F1E7858);
    v68 = v130;
    v69 = &qword_27F1E7878;
    return sub_24DF8C95C(v68, v69);
  }

  if (v30 == 1)
  {
    *&v146[0] = v29;
    *(&v146[0] + 1) = v31;
    v120 = v31;
    sub_24DF90C4C();

    v32 = sub_24E3464E8();
    v34 = v33;
    v36 = v35;
    sub_24E346298();
    v37 = sub_24E3464B8();
    v130 = v8;
    v38 = v37;
    v125 = v29;
    v40 = v39;
    v42 = v41;

    sub_24DFA92EC(v32, v34, v36 & 1);

    v43 = sub_24E346498();
    v45 = v44;
    v47 = v46;
    sub_24DFA92EC(v38, v40, v42 & 1);

    sub_24E3469B8();
    v48 = sub_24E346468();
    v123 = v49;
    v124 = v48;
    v51 = v50;
    v122 = v52;

    sub_24DFA92EC(v43, v45, v47 & 1);

    v53 = sub_24E3461E8();
    sub_24E3451B8();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    LOBYTE(v146[0]) = v51 & 1;
    LOBYTE(v145[0]) = 0;
    KeyPath = swift_getKeyPath();
    v63 = v139;
    sub_24E346B88();
    sub_24E08FBA8(v63);
    sub_24E346B88();
    sub_24E08FBA8(v63);
    sub_24E346E28();
    sub_24E3453D8();
    (*(v126 + 104))(v128, *MEMORY[0x277CE0EE0], v127);
    v64 = sub_24E346A08();
    v65 = sub_24E3461E8();
    *&v146[0] = v124;
    *(&v146[0] + 1) = v123;
    LOBYTE(v146[1]) = v51 & 1;
    *(&v146[1] + 1) = v122;
    LOBYTE(v146[2]) = v53;
    *(&v146[2] + 1) = v55;
    *&v146[3] = v57;
    *(&v146[3] + 1) = v59;
    *&v146[4] = v61;
    BYTE8(v146[4]) = 0;
    *&v146[5] = KeyPath;
    *(&v146[5] + 1) = 0x3F847AE147AE147BLL;
    v146[6] = *&v145[25];
    v146[7] = *&v145[27];
    v146[8] = *&v145[29];
    *&v146[9] = v64;
    BYTE8(v146[9]) = v65;
    *(&v146[9] + 9) = 256;
    *(&v146[9] + 11) = v145[0];
    HIBYTE(v146[9]) = BYTE4(v145[0]);
    *&v146[10] = v125;
    *(&v146[10] + 1) = v120;
    memcpy(v130, v146, 0xB0uLL);
    swift_storeEnumTagMultiPayload();
    sub_24DFC24D4(v146, v145, &qword_27F1E7888);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7888);
    sub_24DFB4C28(&qword_27F1E7870, &qword_27F1E7878);
    sub_24DFB4C28(&qword_27F1E7880, &qword_27F1E7888);
    v66 = v129;
    sub_24E345E38();
    sub_24DFC24D4(v66, v135, &qword_27F1E7868);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7898);
    sub_24E1F5ACC();
    sub_24E1F5BAC();
    v67 = v136;
    sub_24E345E38();
    sub_24DF8C95C(v66, &qword_27F1E7868);
    sub_24DFC24D4(v67, v143, &qword_27F1E7858);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78B8);
    sub_24E1F5A40();
    sub_24DFB4C28(&qword_27F1E78B0, &qword_27F1E78B8);
    sub_24E345E38();
    sub_24DF8C95C(v146, &qword_27F1E7888);
    v68 = v67;
    v69 = &qword_27F1E7858;
    return sub_24DF8C95C(v68, v69);
  }

  if (!(v29 | v31))
  {
    v98 = sub_24E346A88();
    v99 = sub_24E3462F8();
    v100 = swift_getKeyPath();
    v101 = v139;
    sub_24E346B88();
    sub_24E08FBA8(v101);
    sub_24E346B88();
    sub_24E08FBA8(v101);
    sub_24E346E28();
    sub_24E3453D8();
    v102 = sub_24E3469B8();
    v103 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2DF0);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_24E36A270;
    *(v104 + 32) = sub_24E019BE4();
    *(v104 + 40) = sub_24E019BE4();
    MEMORY[0x25303D900](v104);
    sub_24E346EB8();
    sub_24E346EC8();
    sub_24E345598();
    v105 = v149;
    v106 = sub_24E3461E8();
    *v147 = v98;
    *&v147[8] = v100;
    *&v147[24] = v146[0];
    *&v147[40] = v146[1];
    *&v147[56] = v146[2];
    *&v147[16] = v99;
    *&v147[72] = v103;
    *&v147[80] = v102;
    *&v147[88] = v105;
    *&v147[96] = v150;
    *&v147[112] = v151;
    v147[128] = v106;
    *&v147[129] = 256;
    strcpy(&v147[136], "joystick");
    v147[145] = 0;
    *&v147[146] = 0;
    *&v147[148] = -402653184;
    memcpy(v146, v147, 0x98uLL);
    sub_24E1F66C4(v146);
    memcpy(v148, v146, 0x99uLL);
    v97 = &qword_27F1E78A8;
    sub_24DFC24D4(v147, v145, &qword_27F1E78A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78B8);
    sub_24DFB4C28(&qword_27F1E78A0, &qword_27F1E78A8);
    sub_24DFB4C28(&qword_27F1E78B0, &qword_27F1E78B8);
    goto LABEL_9;
  }

  if (!(v29 ^ 1 | v31))
  {
    v132 = sub_24E346A88();
    v90 = sub_24E3462F8();
    v91 = swift_getKeyPath();
    v92 = v139;
    sub_24E346B88();
    sub_24E08FBA8(v92);
    sub_24E346B88();
    sub_24E08FBA8(v92);
    sub_24E346E28();
    sub_24E3453D8();
    v93 = sub_24E3469B8();
    v94 = swift_getKeyPath();
    (*(v126 + 104))(v128, *MEMORY[0x277CE0EE0], v127);
    v95 = sub_24E346A08();
    v96 = sub_24E3461E8();
    *&v147[24] = v148[10];
    *v147 = v132;
    *&v147[8] = v91;
    *&v147[40] = v148[11];
    *&v147[56] = v148[12];
    *&v147[16] = v90;
    *&v147[72] = v94;
    *&v147[80] = v93;
    *&v147[88] = v95;
    v147[96] = v96;
    *&v147[97] = 256;
    *&v147[99] = v146[0];
    v147[103] = BYTE4(v146[0]);
    strcpy(&v147[104], "achievement");
    *&v147[116] = -352321536;
    memcpy(v146, v147, 0x78uLL);
    sub_24E1F66B8(v146);
    memcpy(v148, v146, 0x99uLL);
    v97 = &qword_27F1E78B8;
    sub_24DFC24D4(v147, v145, &qword_27F1E78B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78B8);
    sub_24DFB4C28(&qword_27F1E78A0, &qword_27F1E78A8);
    sub_24DFB4C28(&qword_27F1E78B0, &qword_27F1E78B8);
LABEL_9:
    sub_24E345E38();
    memcpy(v135, v145, 0x99uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7898);
    sub_24E1F5ACC();
    sub_24E1F5BAC();
    v107 = v136;
    sub_24E345E38();
    sub_24DFC24D4(v107, v143, &qword_27F1E7858);
    swift_storeEnumTagMultiPayload();
    sub_24E1F5A40();
    sub_24E345E38();
    sub_24DF8C95C(v147, v97);
    v68 = v107;
    v69 = &qword_27F1E7858;
    return sub_24DF8C95C(v68, v69);
  }

  v109 = sub_24E346A88();
  v110 = sub_24E3462F8();
  v111 = swift_getKeyPath();
  v112 = v139;
  sub_24E346B88();
  sub_24E08FBA8(v112);
  sub_24E346B88();
  sub_24E08FBA8(v112);
  sub_24E346E28();
  sub_24E3453D8();
  v113 = sub_24E3469B8();
  v114 = swift_getKeyPath();
  (*(v126 + 104))(v128, *MEMORY[0x277CE0EE0], v127);
  v115 = sub_24E346A08();
  v116 = sub_24E3461E8();
  v117 = v148[14];
  v118 = v143;
  *(v143 + 24) = v148[13];
  *v118 = v109;
  *(v118 + 8) = v111;
  *(v118 + 16) = v110;
  *(v118 + 40) = v117;
  *(v118 + 56) = v148[15];
  *(v118 + 72) = v114;
  *(v118 + 80) = v113;
  *(v118 + 88) = v115;
  *(v118 + 96) = v116;
  *(v118 + 97) = 256;
  *(v118 + 104) = 0x6F6272656461656CLL;
  *(v118 + 112) = 0xEB00000000647261;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78B8);
  sub_24E1F5A40();
  sub_24DFB4C28(&qword_27F1E78B0, &qword_27F1E78B8);
  return sub_24E345E38();
}

uint64_t sub_24E1F15A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a4;
  v92 = a2;
  v93 = a3;
  v100 = a5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7918);
  MEMORY[0x28223BE20](v97);
  v91 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7920);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v83 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7928);
  MEMORY[0x28223BE20](v94);
  v12 = &v83 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7930);
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7938);
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7940);
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7948);
  MEMORY[0x28223BE20](v22 - 8);
  v96 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v83 - v25;
  v27 = a1;
  v28 = *(a1 + 56);
  if (v28)
  {
    v29 = v27;
    v30 = *(v27 + 48);
    *v12 = sub_24E345D08();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E79D0);
    sub_24E1F1ED0(v92, v93, v30, v28, &v12[*(v31 + 44)]);
    sub_24DFC24D4(v12, v15, &qword_27F1E7928);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E7998, &qword_27F1E7928);
    sub_24E1F603C();
    sub_24E345E38();
    sub_24DF8C95C(v12, &qword_27F1E7928);
    v32 = v99;
  }

  else
  {
    v84 = v16;
    v85 = v21;
    v86 = v13;
    v87 = v19;
    v88 = v15;
    v89 = v27;
    v90 = &v83 - v25;
    __dst[0] = v92;
    __dst[1] = v93;
    sub_24DF90C4C();

    v33 = sub_24E3464E8();
    v35 = v34;
    v37 = v36;
    if (qword_27F1DDBB0 != -1)
    {
      swift_once();
    }

    v38 = sub_24E3464B8();
    v40 = v39;
    v42 = v41;
    sub_24DFA92EC(v33, v35, v37 & 1);

    v43 = sub_24E346498();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_24DFA92EC(v38, v40, v42 & 1);

    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7950) + 36);
    v51 = *MEMORY[0x277CE13B8];
    v52 = sub_24E346E88();
    (*(*(v52 - 8) + 104))(&v18[v50], v51, v52);
    *v18 = v43;
    *(v18 + 1) = v45;
    v18[16] = v47 & 1;
    *(v18 + 3) = v49;
    sub_24E3469B8();
    v53 = sub_24E3469C8();

    KeyPath = swift_getKeyPath();
    v55 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7958) + 36)];
    *v55 = KeyPath;
    v55[1] = v53;
    v56 = swift_getKeyPath();
    v57 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7960) + 36)];
    *v57 = v56;
    *(v57 + 1) = 1;
    v57[16] = 0;
    v58 = swift_getKeyPath();
    v59 = &v18[*(v84 + 36)];
    *v59 = v58;
    v59[1] = 0x3FE0000000000000;
    sub_24E1F5D90();
    v60 = v85;
    sub_24E346648();
    sub_24DF8C95C(v18, &qword_27F1E7938);
    sub_24DFC24D4(v60, v88, &qword_27F1E7940);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E7998, &qword_27F1E7928);
    sub_24E1F603C();
    v26 = v90;
    sub_24E345E38();
    sub_24DF8C95C(v60, &qword_27F1E7940);
    v32 = v99;
    v29 = v89;
  }

  v61 = *(v29 + 64);
  if (v61)
  {
    v62 = v61;
    sub_24E1EFCA0();
    sub_24E1EFCA0();
    sub_24E346E28();
    sub_24E3453D8();
    v63 = __dst[15];
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v26;
    v68 = v109;
    v69 = v110;
    v70 = sub_24E3461E8();
    v104 = v64;
    v103 = v66;
    v102 = 0;
    *v101 = v62;
    *&v101[8] = v63;
    v101[16] = v64;
    *&v101[24] = v65;
    v101[32] = v66;
    *&v101[40] = v68;
    *&v101[48] = v69;
    v101[56] = v70;
    *&v101[64] = xmmword_24E381190;
    *&v101[80] = xmmword_24E369920;
    v101[96] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E79B0);
    sub_24E1F6140();
    v71 = v91;
    sub_24E346648();

    memcpy(__dst, v101, 0x61uLL);
    sub_24DF8C95C(__dst, &qword_27F1E79B0);
    v72 = v71;
    v26 = v67;
    v73 = v98;
    sub_24E1F5314(v72, v98, &qword_27F1E7918);
    v74 = v73;
    v75 = 0;
  }

  else
  {
    v73 = v98;
    v74 = v98;
    v75 = 1;
  }

  __swift_storeEnumTagSinglePayload(v74, v75, 1, v97);
  v76 = v26;
  v77 = v26;
  v78 = v96;
  sub_24DFC24D4(v76, v96, &qword_27F1E7948);
  sub_24DFC24D4(v73, v32, &qword_27F1E7920);
  v79 = v100;
  sub_24DFC24D4(v78, v100, &qword_27F1E7948);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E79A8);
  v81 = v79 + *(v80 + 48);
  *v81 = 0;
  *(v81 + 8) = 1;
  sub_24DFC24D4(v32, v79 + *(v80 + 64), &qword_27F1E7920);
  sub_24DF8C95C(v73, &qword_27F1E7920);
  sub_24DF8C95C(v77, &qword_27F1E7948);
  sub_24DF8C95C(v32, &qword_27F1E7920);
  return sub_24DF8C95C(v78, &qword_27F1E7948);
}

uint64_t sub_24E1F1ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a3;
  v80 = a4;
  v85 = a5;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E79D8);
  MEMORY[0x28223BE20](v82);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E79E0);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v77 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E79E8);
  MEMORY[0x28223BE20](v78);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E79F0);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v77 - v18;
  v87 = a1;
  v88 = a2;
  v19 = sub_24DF90C4C();

  v77 = v19;
  v20 = sub_24E3464E8();
  v22 = v21;
  v24 = v23;
  if (qword_27F1DDBB0 != -1)
  {
    swift_once();
  }

  v25 = sub_24E3464B8();
  v27 = v26;
  v29 = v28;
  sub_24DFA92EC(v20, v22, v24 & 1);

  v30 = sub_24E346498();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_24DFA92EC(v25, v27, v29 & 1);

  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7950) + 36);
  v38 = *MEMORY[0x277CE13B8];
  v39 = sub_24E346E88();
  (*(*(v39 - 8) + 104))(&v14[v37], v38, v39);
  *v14 = v30;
  *(v14 + 1) = v32;
  v14[16] = v34 & 1;
  *(v14 + 3) = v36;
  KeyPath = swift_getKeyPath();
  v41 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E79F8) + 36)];
  *v41 = KeyPath;
  v41[1] = 0x3F847AE147AE147BLL;
  sub_24E3469B8();
  v42 = sub_24E3469C8();

  v43 = swift_getKeyPath();
  v44 = &v14[*(v78 + 36)];
  *v44 = v43;
  v44[1] = v42;
  sub_24E1F6258();
  sub_24E346648();
  sub_24DF8C95C(v14, &qword_27F1E79E8);
  v87 = v79;
  v88 = v80;

  v45 = sub_24E3464E8();
  v47 = v46;
  v49 = v48;
  if (qword_27F1DDBB8 != -1)
  {
    swift_once();
  }

  v50 = sub_24E3464B8();
  v52 = v51;
  v54 = v53;
  sub_24DFA92EC(v45, v47, v49 & 1);

  v55 = sub_24E346498();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  sub_24DFA92EC(v50, v52, v54 & 1);

  v62 = swift_getKeyPath();
  v63 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A10) + 36)];
  v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A18) + 28);
  v65 = *MEMORY[0x277CE0B28];
  v66 = sub_24E346458();
  (*(*(v66 - 8) + 104))(v63 + v64, v65, v66);
  *v63 = swift_getKeyPath();
  *v8 = v55;
  *(v8 + 1) = v57;
  v8[16] = v59 & 1;
  *(v8 + 3) = v61;
  *(v8 + 4) = v62;
  *(v8 + 5) = 1;
  v8[48] = 0;
  v67 = sub_24E3469B8();
  v68 = swift_getKeyPath();
  v69 = &v8[*(v82 + 36)];
  *v69 = v68;
  v69[1] = v67;
  sub_24E1F6490();
  v70 = v83;
  sub_24E346648();
  sub_24DF8C95C(v8, &qword_27F1E79D8);
  v71 = v86;
  v72 = v81;
  sub_24DFC24D4(v86, v81, &qword_27F1E79F0);
  v73 = v84;
  sub_24DFC24D4(v70, v84, &qword_27F1E79E0);
  v74 = v85;
  sub_24DFC24D4(v72, v85, &qword_27F1E79F0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7A48);
  sub_24DFC24D4(v73, v74 + *(v75 + 48), &qword_27F1E79E0);
  sub_24DF8C95C(v70, &qword_27F1E79E0);
  sub_24DF8C95C(v71, &qword_27F1E79F0);
  sub_24DF8C95C(v73, &qword_27F1E79E0);
  return sub_24DF8C95C(v72, &qword_27F1E79F0);
}

uint64_t sub_24E1F25BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78D8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessPointView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  sub_24E346B88();
  v18 = *(v17 + 5);

  sub_24E08FBA8(v17);
  v19 = 1;
  if (v18)
  {

    *v5 = sub_24E345CF8();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78E8);
    sub_24E1F29CC(a1, &v5[*(v20 + 44)]);
    sub_24E346E38();
    sub_24E3457F8();
    sub_24E1F5314(v5, v8, &qword_27F1E78D0);
    memcpy(&v8[*(v6 + 36)], __src, 0x70uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2DE8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24E369E30;
    sub_24E3469A8();
    *(v21 + 32) = sub_24E346D88();
    *(v21 + 40) = v22;
    sub_24E3469B8();
    *(v21 + 48) = sub_24E346D88();
    *(v21 + 56) = v23;
    sub_24E3469B8();
    *(v21 + 64) = sub_24E346D88();
    *(v21 + 72) = v24;
    sub_24E3469A8();
    *(v21 + 80) = sub_24E346D88();
    *(v21 + 88) = v25;
    sub_24E346D98();
    sub_24E346EB8();
    sub_24E346EC8();
    sub_24E345598();
    v26 = v35;
    sub_24E1F5314(v8, v11, &qword_27F1E78D8);
    v27 = &v11[*(v9 + 36)];
    *v27 = v26;
    v28 = v36;
    *(v27 + 24) = v37;
    *(v27 + 8) = v28;
    sub_24E1F5314(v11, v14, &qword_27F1E78E0);
    v29 = v33;
    sub_24E1F5314(v14, v33, &qword_27F1E78E0);
    v19 = 0;
    v30 = v29;
  }

  else
  {
    v30 = v33;
  }

  return __swift_storeEnumTagSinglePayload(v30, v19, 1, v9);
}

uint64_t sub_24E1F29CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78F0);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E78F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7900);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for AccessPointView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
  sub_24E346B88();
  v16 = *(v11 + 5);
  v17 = 1;
  if (v16)
  {
    v18 = *(v11 + 4);
    *v5 = sub_24E345BF8();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7910);
    sub_24E1F15A0(v11, v18, v16, a1, &v5[*(v19 + 44)]);
    v20 = &v5[*(v3 + 52)];
    *v20 = v18;
    v20[1] = v16;
    sub_24E1F5314(v5, v8, &qword_27F1E78F0);
    v17 = 0;
  }

  __swift_storeEnumTagSinglePayload(v8, v17, 1, v3);
  sub_24E1F5314(v8, v14, &qword_27F1E78F8);

  sub_24E08FBA8(v11);
  sub_24E345428();
  sub_24E345408();
  v21 = a1 + *(v15 + 44);
  v22 = *v21;
  v23 = *(v21 + 8);
  v29 = v22;
  v30 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v28 == 1)
  {
    sub_24E345408();
  }

  else
  {
    sub_24E345448();
  }

  sub_24E3453F8();

  v24 = sub_24E345438();

  v25 = v27;
  sub_24E1F5314(v14, v27, &qword_27F1E7900);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7908);
  *(v25 + *(result + 36)) = v24;
  return result;
}

void *sub_24E1F2D18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AccessPoint.Model(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  LOBYTE(v37[0]) = v7;
  v37[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (LOBYTE(v36[0]) == 1)
  {
    type metadata accessor for AccessPointView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7720);
    sub_24E346B88();
    v9 = *(v6 + 5);

    sub_24E08FBA8(v6);
    if (v9)
    {
    }

    v10 = [objc_opt_self() sharedApplication];
    v11 = [v10 userInterfaceLayoutDirection];

    v12 = sub_24E1EFAE8();
    if (v11 == 1)
    {
      v13 = -v12;
    }

    else
    {
      v13 = v12;
    }

    sub_24E346ED8();
    v15 = v14;
    v17 = v16;
    LOBYTE(v37[0]) = v7;
    v37[1] = v8;
    sub_24E346B88();
    v31 = a2;
    if (LOBYTE(v36[0]) == 1)
    {
      sub_24E3469B8();
      v18 = sub_24E3469C8();
    }

    else
    {
      v18 = sub_24E3469A8();
    }

    v19 = v9 != 0;
    sub_24E3452D8();
    v20 = sub_24E346E28();
    v22 = v21;
    LOBYTE(v37[0]) = v7;
    v37[1] = v8;
    sub_24E346B88();
    if (LOBYTE(v36[0]))
    {
      v23 = 1.1;
    }

    else
    {
      v23 = 1.0;
    }

    sub_24E346ED8();
    v25 = v24;
    v27 = v26;
    LOBYTE(v37[0]) = v7;
    v37[1] = v8;
    sub_24E346B88();
    if (LOBYTE(v36[0]) == 1)
    {
      sub_24E346998();
      v28 = sub_24E3469C8();
    }

    else
    {
      v28 = sub_24E3469A8();
    }

    LOBYTE(v36[0]) = v19;
    *(&v36[0] + 1) = 0x402A000000000000;
    *&v36[1] = v13;
    *(&v36[1] + 1) = v13;
    *&v36[2] = v15;
    *(&v36[2] + 1) = v17;
    v36[3] = v32;
    v36[4] = v33;
    *&v36[5] = v34;
    *(&v36[5] + 1) = v18;
    LOWORD(v36[6]) = 256;
    *(&v36[6] + 1) = v20;
    *&v36[7] = v22;
    *(&v36[7] + 1) = v23;
    *&v36[8] = v23;
    *(&v36[8] + 1) = v25;
    *&v36[9] = v27;
    v36[10] = xmmword_24E383C80;
    *(&v36[9] + 1) = v28;
    *&v36[11] = 0x4024000000000000;
    sub_24E1F5558(v36);
    memcpy(v35, v36, sizeof(v35));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7788);
    sub_24E1F5414();
    sub_24E345E38();
    a2 = v31;
  }

  else
  {
    sub_24E1F5408(v36);
    memcpy(v35, v36, sizeof(v35));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E7788);
    sub_24E1F5414();
    sub_24E345E38();
  }

  return memcpy(a2, v37, 0xB9uLL);
}