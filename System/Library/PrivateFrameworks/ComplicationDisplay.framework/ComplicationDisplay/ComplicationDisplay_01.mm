uint64_t ComplicationLabelProvider.snapshotMetadata.getter()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = [*v0 imageProvider];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  type metadata accessor for WidgetNamedImageProvider(0);
  if (!swift_dynamicCastClass())
  {

LABEL_8:
    v19[0] = 0;
    v11 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v19];
    v12 = v19[0];
    if (v11)
    {
      v10 = sub_243DAD7A0();

      goto LABEL_13;
    }

    v13 = v12;
    v14 = sub_243DAD760();

    swift_willThrow();
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v4 = sub_243DA83D8();
  if (v4)
  {
    v5 = [objc_opt_self() imageProviderWithOnePieceImage_];

    v4 = v5;
  }

  v6 = [v1 textProvider];
  v7 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v6 imageProvider:v4];

  v19[0] = 0;
  v8 = [objc_opt_self() archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v19];
  v9 = v19[0];
  if (!v8)
  {
    v15 = v9;
    v16 = sub_243DAD760();

    swift_willThrow();
    goto LABEL_12;
  }

  v10 = sub_243DAD7A0();

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_243D9F250(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 textProvider];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 textProviders];
      sub_243D9F3A8();
      v7 = sub_243DAE1B0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB168, &unk_243DB2DA0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_243DB29F0;
      *(v7 + 32) = v4;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a2 = v7;
}

unint64_t sub_243D9F344()
{
  result = qword_27EDBB180;
  if (!qword_27EDBB180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB178, &qword_243DB2D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB180);
  }

  return result;
}

unint64_t sub_243D9F3A8()
{
  result = qword_27EDBAF50;
  if (!qword_27EDBAF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDBAF50);
  }

  return result;
}

uint64_t sub_243D9F400(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_243D9F448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D9F494(uint64_t a1)
{
  v2 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  sub_243DAE2A0();
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4;
      sub_243DAE280();
      v6 = *(v8 + 16);
      sub_243DAE2B0();
      sub_243DAE2C0();
      sub_243DAE290();
      --v2;
    }

    while (v2);
  }

  return v8;
}

uint64_t sub_243D9F544@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v17 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  type metadata accessor for MonochromeModel();
  sub_243D96718();
  v7 = v5;

  v8 = sub_243DAD9C0();
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB188, &unk_243DB2F00) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAB90, &qword_243DB1AA0) + 28);
  v14 = *MEMORY[0x277CDFA88];
  v15 = sub_243DAD9D0();
  result = (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = KeyPath;
  *a1 = v17;
  a1[1] = v3;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v4;
  a1[5] = v6;
  return result;
}

id sub_243D9F680(void *a1)
{
  [a1 setFilterProvider_];
  [a1 setCornerComplicationPosition_];
  [a1 setFontStyle_];
  sub_243D9F494(v1[4]);
  sub_243D9FDE0();
  v3 = sub_243DAE1A0();

  [a1 setOuterLabelProviders_];

  sub_243D9F494(v1[5]);
  v4 = sub_243DAE1A0();

  [a1 setInnerLabelProviders_];

  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v6 >= 1.0)
  {
    return [a1 updateMonochromeColor];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return [a1 transitionToMonochromeWithFraction_];
}

id sub_243D9FA18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComplicationCornerStackedTextViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_243D9FA9C()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for ComplicationCornerStackedTextViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_243D9FB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_243D9FB50(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_243D9FBAC()
{
  result = qword_27EDBB190;
  if (!qword_27EDBB190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB188, &unk_243DB2F00);
    sub_243D9FC38();
    sub_243D9735C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB190);
  }

  return result;
}

unint64_t sub_243D9FC38()
{
  result = qword_27EDBB198;
  if (!qword_27EDBB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB198);
  }

  return result;
}

id sub_243D9FC8C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ComplicationCornerStackedTextViewRepresentable._CornerView()) initWithFontFallback_];
  sub_243D9F680(v1);
  return v1;
}

uint64_t sub_243D9FCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D9FE2C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243D9FD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D9FE2C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243D9FDB4()
{
  sub_243D9FE2C();
  sub_243DADBF0();
  __break(1u);
}

unint64_t sub_243D9FDE0()
{
  result = qword_27EDBAF30;
  if (!qword_27EDBAF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDBAF30);
  }

  return result;
}

unint64_t sub_243D9FE2C()
{
  result = qword_27EDBB1A0;
  if (!qword_27EDBB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB1A0);
  }

  return result;
}

uint64_t ComplicationCurvedTextConfiguration.color.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

double ComplicationCurvedTextConfiguration.circleCenter.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

void *ComplicationCurvedTextConfiguration.path.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

double ComplicationCurvedTextConfiguration.accessoryContentMaxSize.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t sub_243DA01DC()
{
  v1 = *v0;
  sub_243DAE320();
  MEMORY[0x245D51B40](v1);
  return sub_243DAE340();
}

uint64_t sub_243DA0224()
{
  v1 = *v0;
  sub_243DAE320();
  MEMORY[0x245D51B40](v1);
  return sub_243DAE340();
}

uint64_t ComplicationCurvedTextConfiguration.init(fontSize:color:interior:tracking:circleCenter:circleRadius:maximumAngularWidth:centerAngle:accessoryContentPlacement:accessoryContentPadding:accessoryContentMaxSize:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, double a7@<D2>, double a8@<D3>, float a9@<S4>, float a10@<S5>, float a11@<S6>, float a12@<S7>, uint64_t a13, uint64_t a14)
{
  v14 = *a3;
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 20) = a6;
  *(a4 + 24) = a7;
  *(a4 + 32) = a8;
  *(a4 + 40) = a9;
  *(a4 + 44) = a10;
  *(a4 + 48) = a11;
  *(a4 + 52) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 76) = a12;
  *(a4 + 72) = v14;
  *(a4 + 80) = a13;
  *(a4 + 88) = a14;
  return result;
}

__n128 ComplicationCurvedTextConfiguration.init(fontSize:color:path:accessoryContentPlacement:accessoryContentPadding:accessoryContentMaxSize:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a3;
  *a4 = a5;
  *(a4 + 8) = a1;
  *(a4 + 16) = 0;
  *(a4 + 20) = 0;
  result = *MEMORY[0x277CBF348];
  *(a4 + 24) = *MEMORY[0x277CBF348];
  *(a4 + 40) = 0;
  *(a4 + 45) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = a2;
  *(a4 + 72) = v8;
  *(a4 + 76) = a6;
  *(a4 + 80) = a7;
  *(a4 + 88) = a8;
  return result;
}

__n128 ComplicationCurvedTextConfiguration.init(fontSize:color:tracking:textAlignment:baselineOffset:path:accessoryContentPlacement:accessoryContentPadding:accessoryContentMaxSize:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>, float a8@<S2>, float a9@<S3>, double a10@<D4>, double a11@<D5>)
{
  v11 = *a2;
  v12 = *a4;
  *a5 = a6;
  *(a5 + 8) = a1;
  *(a5 + 16) = 0;
  *(a5 + 20) = a7;
  result = *MEMORY[0x277CBF348];
  *(a5 + 24) = *MEMORY[0x277CBF348];
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 52) = v11;
  *(a5 + 56) = a8;
  *(a5 + 64) = a3;
  *(a5 + 76) = a9;
  *(a5 + 72) = v12;
  *(a5 + 80) = a10;
  *(a5 + 88) = a11;
  return result;
}

unint64_t sub_243DA033C()
{
  result = qword_27EDBB1A8;
  if (!qword_27EDBB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB1A8);
  }

  return result;
}

unint64_t sub_243DA0394()
{
  result = qword_27EDBB1B0;
  if (!qword_27EDBB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB1B0);
  }

  return result;
}

uint64_t sub_243DA03E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_243DA0430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243DA04B4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_243DA0544(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_243DA0730()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_243DA0790(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_filterProvider;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_243DA0828;
}

void sub_243DA0828(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

uint64_t sub_243DA09E4(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  v5(v7, a2, a3);
}

uint64_t sub_243DA0B20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243DA0B30@<X0>(void *a1@<X0>, uint64_t (**a2)(double *a1, double *a2)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_243DA33F8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_243D76BF4(v4);
}

uint64_t sub_243DA0BD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_243DA33BC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_243D76BF4(v3);
  return sub_243DA0B20(v8);
}

uint64_t sub_243DA0D40()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243DA0DD8(char a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_243DA0ED0()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243DA0F68(char a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *sub_243DA108C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(type metadata accessor for _ComplicationHosting());
  v5 = _s19ComplicationDisplay01_A7HostingC5frame5asyncACSo6CGRectV_Sbtcfc_0(a3);

  return v5;
}

void sub_243DA112C(void *a1)
{
  v2 = [a1 statistics];
  type metadata accessor for RBDrawableStatisticsKey(0);
  sub_243DA3498(&qword_27EDBABF8, type metadata accessor for RBDrawableStatisticsKey);
  v3 = sub_243DAE120();

  if (!*(v3 + 16) || (v4 = sub_243DA2464(*MEMORY[0x277D462A0]), (v5 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_243DA34E0(*(v3 + 56) + 32 * v4, v15);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 0.0;
    goto LABEL_7;
  }

  v6 = v14;
LABEL_7:
  v7 = [a1 statistics];
  v8 = sub_243DAE120();

  if (*(v8 + 16) && (v9 = sub_243DA2464(*MEMORY[0x277D462A8]), (v10 & 1) != 0))
  {
    sub_243DA34E0(*(v8 + 56) + 32 * v9, v15);

    if (swift_dynamicCast())
    {
      v11 = v14;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = 0.0;
LABEL_13:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_243DA1C74(v11, v6);
  }
}

uint64_t sub_243DA132C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id _ComplicationHosting.__deallocating_deinit()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController];
  v3 = *&v0[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController];
  v4 = *(v2 + 1);
  swift_getObjectType();
  v5 = v3;
  sub_243DAE080();
  sub_243DADB30();

  v7.receiver = v1;
  v7.super_class = type metadata accessor for _ComplicationHosting();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_243DA1598()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController + 8);
  v2 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController);
  swift_getObjectType();
  return sub_243DADAF0();
}

uint64_t sub_243DA1730(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_243DA184C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_243DA18B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_243DA2BA4(v4, v5);
}

uint64_t sub_243DA1908(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_243DA2BA4(v2, v3);
  return sub_243DA2C0C(v5, v6);
}

uint64_t sub_243DA1A2C()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243DA1AC4(char a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_243DA1B74()
{
  if (*(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_rendersAsynchronously) == 1)
  {
    [objc_opt_self() flush];
    v1 = v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController;
    v3 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController);
    v2 = *(v1 + 8);
    swift_getObjectType();
    if (sub_243DADB00())
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        [v4 waitUntilAsyncRenderingCompleted];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_243DA1C74(double a1, double a2)
{
  v5 = sub_243DAE0E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_243DAE100();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler;
  result = swift_beginAccess();
  v17 = *v15;
  if (*v15)
  {
    v18 = *(v15 + 8);
    v19 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue;
    swift_beginAccess();
    if (*(v2 + v19) == 1)
    {
      sub_243D96A78(0, &qword_27EDBB290, 0x277D85C78);

      v25 = sub_243DAE200();
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v18;
      *(v20 + 32) = a1;
      *(v20 + 40) = a2;
      aBlock[4] = sub_243DA31EC;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_243DA6020;
      aBlock[3] = &block_descriptor_3;
      v21 = _Block_copy(aBlock);

      sub_243DAE0F0();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_243DA3498(&qword_27EDBB298, MEMORY[0x277D85198]);
      v24 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB2A0, &qword_243DB3370);
      sub_243DA3234();
      sub_243DAE250();
      v22 = v25;
      MEMORY[0x245D51A20](0, v14, v9, v21);
      _Block_release(v21);

      sub_243DA0B20(v17);
      (*(v6 + 8))(v9, v5);
      return (*(v11 + 8))(v14, v24);
    }

    else
    {

      v17(v23, a1, a2);
      return sub_243DA0B20(v17);
    }
  }

  return result;
}

id _ComplicationHosting.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void _ComplicationHosting.transitionToMonochrome(withFraction:)()
{
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_isMonochrome) = CLKFloatEqualsFloat();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong colorForView:*(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_view) accented:1];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model);
      v2 = v2;
      sub_243DADF20();
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = v3;

      sub_243DAD870();
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = [v5 colorForView:*(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_view) accented:0];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model);
      v6 = v6;
      sub_243DADF20();
      swift_getKeyPath();
      swift_getKeyPath();
      v8 = v7;

      sub_243DAD870();
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model);
  sub_243DA2324();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  sub_243DAD870();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  sub_243DAD870();
}

uint64_t sub_243DA2324()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector_])
    {
      v3 = [v2 viewShouldIgnoreTwoPieceImage_];
      swift_unknownObjectRelease();
      if (v3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (*(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_supportsComplicationForeground))
  {
    return 0;
  }

LABEL_8:
  v5 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView;
  swift_beginAccess();
  if (*(v0 + v5))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_243DA2464(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_243DAE160();
  sub_243DAE320();
  sub_243DAE170();
  v4 = sub_243DAE340();

  return sub_243DA24F8(a1, v4);
}

unint64_t sub_243DA24F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_243DAE160();
      v9 = v8;
      if (v7 == sub_243DAE160() && v9 == v10)
      {
        break;
      }

      v12 = sub_243DAE310();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *_s19ComplicationDisplay01_A7HostingC5frame5asyncACSo6CGRectV_Sbtcfc_0(char a1)
{
  v2 = v1;
  v53 = sub_243DADC80();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v53);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_243DADCD0();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model;
  *&v2[v12] = [objc_allocWithZone(type metadata accessor for MonochromeModel()) init];
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_isMonochrome] = 0;
  v13 = &v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler];
  *v13 = 0;
  v13[1] = 0;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue] = 1;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView] = 0;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_supportsComplicationForeground] = 0;
  *&v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData] = xmmword_243DB31F0;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused] = 0;
  v14 = CLKIsUVPreviewApp();
  v52 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_inPreview;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_inPreview] = v14;
  v15 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_rendersAsynchronously;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_rendersAsynchronously] = a1;
  sub_243DAE080();
  v16 = sub_243DADD10();

  swift_getObjectType();
  sub_243D96A78(0, &qword_27EDBB2B0, 0x277D75D28);
  v17 = dynamic_cast_existential_1_superclass_unconditional(v16);
  v18 = &v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController];
  *v18 = v17;
  *(v18 + 1) = v19;
  sub_243DADCC0();
  v20 = v2[v15];
  sub_243DADCA0();
  sub_243DADCB0();
  v21 = *v18;
  v22 = *(v18 + 1);
  swift_getObjectType();
  v23 = swift_allocBox();
  v24 = *(v54 + 16);
  v51 = v8;
  v24(v25, v11, v8);
  *v7 = v23;
  (*(v4 + 104))(v7, *MEMORY[0x277CE05C8], v53);
  v26 = v21;
  v27 = sub_243DADB20();
  sub_243DADCE0();
  v27(aBlock, 0);

  v28 = *v18;
  v29 = *(v18 + 1);
  swift_getObjectType();
  v30 = v28;
  v31 = sub_243DADB20();
  sub_243DADC90();
  v31(aBlock, 0);

  v32 = *v18;
  v33 = *(v18 + 1);
  swift_getObjectType();
  v34 = v2[v52];
  v35 = v32;
  sub_243DADB10();

  result = [*v18 view];
  if (result)
  {
    v37 = result;
    *&v2[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_view] = result;
    v38 = objc_opt_self();
    v39 = v37;
    v40 = [v38 clearColor];
    [v39 setBackgroundColor_];

    v41 = type metadata accessor for _ComplicationHosting();
    v56.receiver = v2;
    v56.super_class = v41;
    v42 = objc_msgSendSuper2(&v56, sel_init);
    v43 = *&v42[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController];
    v44 = *&v42[OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_hostingViewController + 8];
    swift_getObjectType();
    v45 = v43;
    v46 = sub_243DADB00();

    if (v46)
    {
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (v47)
      {
        v48 = v47;
        [v47 resetStatistics:6 alpha:0.0];
        v49 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_243DA3490;
        aBlock[5] = v49;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_243DA132C;
        aBlock[3] = &block_descriptor_60;
        v50 = _Block_copy(aBlock);

        [v48 setStatisticsHandler_];
        _Block_release(v50);
      }

      swift_unknownObjectRelease();
    }

    (*(v54 + 8))(v11, v51);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_243DA2BA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243DA2BB8(a1, a2);
  }

  return a1;
}

uint64_t sub_243DA2BB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_243DA2C0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_243DA2C20(a1, a2);
  }

  return a1;
}

uint64_t sub_243DA2C20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t keypath_get_27Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_28Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_243DA3234()
{
  result = qword_27EDBB2A8;
  if (!qword_27EDBB2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB2A0, &qword_243DB3370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB2A8);
  }

  return result;
}

void sub_243DA3298()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_model;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for MonochromeModel()) init];
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_isMonochrome) = 0;
  v2 = (v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_renderStatsHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldCallRenderStatsHandlerOnMainQueue) = 1;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_shouldAccentDesaturatedView) = 0;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_supportsComplicationForeground) = 0;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_viewData) = xmmword_243DB31F0;
  *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20_ComplicationHosting_paused) = 0;
  sub_243DAE2D0();
  __break(1u);
}

uint64_t sub_243DA33BC(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_243DA33F8(double *a1, double *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t dynamic_cast_existential_1_superclass_unconditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_243DA3498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243DA34E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_243DA3554(uint64_t a1, uint64_t a2)
{
  v4 = sub_243DADC20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_243DADC30();
}

uint64_t sub_243DA364C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_243DADC20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_243DADC30();
}

double ComplicationCircularBezelView.contentCenter.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ComplicationCircularBezelView.curvedLabelViewConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v13 = v1[5];
  v2 = v13;
  v14 = v3;
  v15 = v1[7];
  v4 = v15;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  v6 = v1[4];
  v11 = v1[3];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_243D91EF8(v10, &v9);
}

uint64_t ComplicationCircularBezelView.circularContent.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t ComplicationCircularBezelView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB2B8, &unk_243DB3390);
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v22[0] = a1[5];
  *&v23 = v5;
  *(&v23 + 1) = v4;
  *&v24 = v6;
  *(&v24 + 1) = v22[0];
  type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EDBB2C0, &qword_243DB33A0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  v7 = sub_243DAE070();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - v13;
  v15 = v2[7];
  v29 = v2[6];
  v30 = v15;
  v31 = v2[8];
  v16 = v2[3];
  v25 = v2[2];
  v26 = v16;
  v17 = v2[5];
  v27 = v2[4];
  v28 = v17;
  v18 = v2[1];
  v23 = *v2;
  v24 = v18;
  v22[4] = v5;
  v22[5] = v4;
  v22[6] = v6;
  v22[7] = v22[0];
  v22[8] = &v23;
  sub_243DAE090();
  sub_243DAE060();
  WitnessTable = swift_getWitnessTable();
  sub_243D9EE08(v12, v7, WitnessTable);
  v20 = *(v8 + 8);
  v20(v12, v7);
  sub_243D9EE08(v14, v7, WitnessTable);
  return (v20)(v14, v7);
}

uint64_t sub_243DA3AD0@<X0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a6;
  v65 = *(a3 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](a1);
  v61 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  v63 = sub_243DAD9E0();
  v68 = *(v63 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v63);
  v73 = &v56 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EDBB2C0, &qword_243DB33A0);
  v66 = sub_243DAD9E0();
  v70 = *(v66 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v56 - v16;
  v69 = sub_243DAD9E0();
  v71 = *(v69 - 8);
  v17 = *(v71 + 64);
  v18 = MEMORY[0x28223BE20](v69);
  v64 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v56 - v20;
  v21 = a1[4];
  v22 = a1[6];
  v84 = a1[5];
  v85 = v22;
  v23 = a1[6];
  v86 = a1[7];
  v24 = a1[2];
  v80 = a1[1];
  v81 = v24;
  v25 = a1[4];
  v27 = a1[1];
  v26 = a1[2];
  v82 = a1[3];
  v83 = v25;
  v93[4] = v84;
  v93[5] = v23;
  v93[6] = a1[7];
  v93[0] = v27;
  v93[1] = v26;
  v93[3] = v21;
  v93[2] = v82;
  sub_243D91EF8(&v80, v92);
  sub_243D91EF8(&v80, v92);
  ComplicationCurvedLabelView<>.init(configuration:)(v93, v91);
  v93[4] = v84;
  v93[5] = v85;
  v93[6] = v86;
  v93[0] = v80;
  v93[1] = v81;
  v93[3] = v83;
  v93[2] = v82;
  memset(v90, 0, 32);
  LOBYTE(v90[2]) = 2;
  sub_243DA43B4(v93, v90, v92);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB2B8, &unk_243DB3390);
  v93[0].n128_u64[0] = a2;
  v93[0].n128_u64[1] = a3;
  v93[1].n128_u64[0] = a4;
  v93[1].n128_u64[1] = a5;
  v29 = a5;
  v30 = type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier();
  v31 = sub_243D90C40(&qword_27EDBB3D8, &qword_27EDBB2B8, &unk_243DB3390);
  MEMORY[0x245D516E0](v93, v92, v28, v30, v31);
  v87[6] = *&v92[96];
  v87[7] = *&v92[112];
  v87[8] = *&v92[128];
  v87[9] = *&v92[144];
  v87[2] = *&v92[32];
  v87[3] = *&v92[48];
  v87[4] = *&v92[64];
  v87[5] = *&v92[80];
  v87[0] = *v92;
  v87[1] = *&v92[16];
  (*(*(v30 - 8) + 8))(v87, v30);
  v88[6] = *&v91[96];
  v88[7] = *&v91[112];
  v89 = *&v91[128];
  v88[2] = *&v91[32];
  v88[3] = *&v91[48];
  v88[5] = *&v91[80];
  v88[4] = *&v91[64];
  v88[1] = *&v91[16];
  v88[0] = *v91;
  sub_243DA5C7C(v88);
  memcpy(v92, v93, sizeof(v92));
  v32 = sub_243DAD9E0();
  WitnessTable = swift_getWitnessTable();
  v78[8] = v31;
  v78[9] = WitnessTable;
  v58 = swift_getWitnessTable();
  sub_243D9EE08(v92, v32, v58);
  memcpy(v90, v92, 0x128uLL);
  v57 = *(v32 - 8);
  v34 = *(v57 + 8);
  v59 = v57 + 8;
  v60 = v34;
  v35 = (v34)(v90, v32);
  v36 = a1[8].n128_i64[1];
  v37 = v61;
  (a1[8].n128_u64[0])(v35);
  sub_243D90BEC();
  sub_243DADEF0();
  (*(v65 + 8))(v37, a3);
  sub_243DAE090();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB3E0, &qword_243DB35B8);
  v38 = sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0);
  v78[6] = v29;
  v78[7] = v38;
  v39 = v63;
  v40 = swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBB3E8, &qword_27EDBB3E0, &qword_243DB35B8);
  v41 = v62;
  v42 = v73;
  sub_243DADEC0();
  (*(v68 + 8))(v42, v39);
  v43 = a1->n128_u64[0];
  v44 = a1->n128_i64[1];
  v45 = sub_243D90C40(&qword_27EDBB3F0, qword_27EDBB2C0, &qword_243DB33A0);
  v78[4] = v40;
  v78[5] = v45;
  v46 = v66;
  v47 = swift_getWitnessTable();
  v48 = v64;
  sub_243DADEE0();
  (*(v70 + 8))(v41, v46);
  v78[2] = v47;
  v78[3] = MEMORY[0x277CDFB28];
  v49 = v69;
  v50 = swift_getWitnessTable();
  v51 = v67;
  sub_243D9EE08(v48, v49, v50);
  v52 = v71;
  v53 = *(v71 + 8);
  v53(v48, v49);
  memcpy(v91, v79, sizeof(v91));
  memcpy(v77, v79, sizeof(v77));
  v78[0] = v77;
  (*(v52 + 16))(v48, v51, v49);
  v78[1] = v48;
  (*(v57 + 16))(v93, v91, v32);
  v76[0] = v32;
  v76[1] = v49;
  v74 = v58;
  v75 = v50;
  sub_243D94ED4(v78, 2uLL, v76);
  v53(v51, v49);
  memcpy(v92, v79, sizeof(v92));
  v54 = v60;
  v60(v92, v32);
  v53(v48, v49);
  memcpy(v93, v77, 0x128uLL);
  return v54(v93, v32);
}

double sub_243DA43B4@<D0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 32);
  v5 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v5;
  *(a3 + 96) = a1[6];
  v6 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v6;
  v7 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v7;
  v13 = *a2;
  v14 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD08, &unk_243DB35C0);
  sub_243DADFE0();
  result = *&v9;
  *(a3 + 112) = v9;
  *(a3 + 128) = v10;
  *(a3 + 144) = v11;
  *(a3 + 152) = v12;
  return result;
}

double sub_243DA4460@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_243DADC50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243DADCF0();
  sub_243DAD910();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  CGRectInset(v21, -5.0, -5.0);
  v15 = sub_243DADF30();
  sub_243DADE10();
  v16 = v20;
  *a1 = v15;
  result = *v19;
  v18 = v19[1];
  *(a1 + 8) = v19[0];
  *(a1 + 24) = v18;
  *(a1 + 40) = v16;
  return result;
}

__n128 ComplicationCircularBezelView<>.init(curvedLabelViewConfiguration:contentCenter:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = *(a1 + 104);
  if (v12)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v12;
    sub_243DAD870();
  }

  *a4 = a5;
  *(a4 + 8) = a6;
  v14 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v14;
  v15 = *(a1 + 96);
  v16 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v16;
  result = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = result;
  *(a4 + 112) = v15;
  *(a4 + 120) = v12;
  *(a4 + 128) = a2;
  *(a4 + 136) = a3;
  return result;
}

uint64_t sub_243DA46B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_243DA46EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_243DA4734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243DA47B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_243DA4818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_243DA4860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243DA48E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_243DA4914()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 128);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE0, &qword_243DB35B0);
  return sub_243DADFF0();
}

uint64_t sub_243DA4974(__int128 *a1)
{
  v6 = *(v1 + 112);
  v7 = *(v1 + 128);
  v8 = *(v1 + 144);
  v9 = *(v1 + 152);
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE0, &qword_243DB35B0);
  sub_243DAE000();
}

double sub_243DA49F4@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 10);
  sub_243DADE20();
  sub_243DADDE0();
  v29 = 0x3FF0000000000000;
  v30 = 0;
  v31 = 0;
  v32 = 0x3FF0000000000000;
  v33 = 0;
  v34 = 0;
  sub_243DADDF0();
  sub_243DADDD0();
  v10 = objc_opt_self();
  v11 = objc_opt_self();
  v12 = [v11 sharedRenderingContext];
  v13 = [v12 device];

  [v10 hitTestCarveOutWithDialCenter:1 leftSide:v13 forDevice:{v7, v8}];
  sub_243DADE10();
  v14 = [v11 sharedRenderingContext];
  v15 = [v14 device];

  [v10 hitTestCarveOutWithDialCenter:0 leftSide:v15 forDevice:{v7, v8}];
  sub_243DADE10();
  v27[0] = v18;
  v27[1] = v19;
  v28 = v20;
  sub_243DADDC0();
  sub_243DADDC0();
  sub_243D93CA4(v23);
  sub_243D93CA4(v22);
  sub_243D93CA4(v21);
  sub_243D93CA4(v27);
  result = *&v24;
  v17 = v25;
  *a2 = v24;
  *(a2 + 16) = v17;
  *(a2 + 32) = v26;
  return result;
}

uint64_t sub_243DA4C60(unsigned int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 32);
  v10 = v2[7];
  v47 = v2[6];
  v48 = v10;
  v11 = v2[9];
  v49 = v2[8];
  v50 = v11;
  v12 = v2[3];
  v43 = v2[2];
  v44 = v12;
  v13 = v2[5];
  v45 = v2[4];
  v46 = v13;
  v14 = v2[1];
  v41 = *v2;
  v42 = v14;
  sub_243DA4914();
  if (v33 == 2)
  {
    goto LABEL_3;
  }

  v21 = v31;
  v22 = v32;
  LOBYTE(v23) = v33;
  *&v17 = __PAIR64__(v5, v4);
  *(&v17 + 1) = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v21, &v17);
  if ((result & 1) == 0)
  {
LABEL_3:
    v27 = v47;
    v28 = v48;
    v29 = v49;
    v30 = v50;
    v23 = v43;
    v24 = v44;
    v25 = v45;
    v26 = v46;
    v21 = v41;
    v22 = v42;
    *&v17 = v4 | (v5 << 32);
    *(&v17 + 1) = v6;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v16 = *(a2 - 8);
    (*(v16 + 16))(&v31, &v41, a2);
    sub_243DA4974(&v17);
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v31 = v21;
    v32 = v22;
    return (*(v16 + 8))(&v31, a2);
  }

  return result;
}

uint64_t sub_243DA4DFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a1;
  v96 = a3;
  v5 = sub_243DADA20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v89 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_243DADC70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAE20, &unk_243DB35A0);
  v100 = v9;
  v10 = sub_243DAD9E0();
  v92 = *(v10 - 8);
  v11 = *(v92 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v80 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  v16 = sub_243DAD9E0();
  v88 = *(v16 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x28223BE20](v16);
  v87 = &v80 - v18;
  v99 = v19;
  v20 = sub_243DAD9E0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v90 = &v80 - v26;
  v98 = v27;
  v28 = sub_243DADC40();
  v94 = *(v28 - 8);
  v95 = v28;
  v29 = *(v94 + 64);
  MEMORY[0x28223BE20](v28);
  v93 = &v80 - v30;
  sub_243DA4914();
  if (v108 == 2)
  {
    v31 = v3[7];
    v112 = v3[6];
    v113 = v31;
    v32 = v3[9];
    v114 = v3[8];
    v115 = v32;
    v33 = v3[3];
    v108 = v3[2];
    v109 = v33;
    v34 = v3[5];
    v110 = v3[4];
    v111 = v34;
    v35 = v3[1];
    v106 = *v3;
    v107 = v35;
    sub_243DA5940(&v106, a2[2], a2[3], a2[4], a2[5]);
    WitnessTable = swift_getWitnessTable();
    sub_243DA5AF8();
    sub_243DA5B4C();
    sub_243DADEA0();

    v37 = sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0);
    v105[19] = WitnessTable;
    v105[20] = v37;
    v38 = swift_getWitnessTable();
    v39 = v97;
    sub_243D9EE08(v14, v10, v38);
    v40 = v98;
    v41 = *(v92 + 8);
    v41(v14, v10);
    sub_243D9EE08(v39, v10, v38);
    v42 = sub_243D90C40(qword_27EDBB0E0, &qword_27EDBB0C8, &unk_243DB2A00);
    v105[17] = v38;
    v105[18] = v42;
    v43 = swift_getWitnessTable();
    v44 = sub_243D940EC();
    v105[15] = v43;
    v105[16] = v44;
    swift_getWitnessTable();
    v45 = v93;
    sub_243DA364C(v14, v40, v10);
    v41(v14, v10);
    v41(v97, v10);
  }

  else
  {
    LOBYTE(v108) = v108 & 1;
    sub_243DA49F4(&v106, &v116);
    v85 = v118;
    v46 = v3[7];
    v112 = v3[6];
    v113 = v46;
    v47 = v3[9];
    v114 = v3[8];
    v115 = v47;
    v48 = v3[3];
    v108 = v3[2];
    v109 = v48;
    v49 = v3[5];
    v110 = v3[4];
    v111 = v49;
    v50 = v3[1];
    v106 = *v3;
    v107 = v50;
    v51 = a2[2];
    v52 = a2[3];
    v53 = a2[4];
    v54 = a2[5];
    v82 = v117;
    v83 = v116;
    sub_243DA5820(&v106, v51, v52, v53, v54);
    v84 = v25;
    v55 = swift_getWitnessTable();
    v86 = v21;
    v56 = v97;
    v57 = v55;
    sub_243DA5AF8();
    v81 = v5;
    sub_243DA5B4C();
    sub_243DADEA0();

    v58 = v89;
    sub_243DADA10();
    v106 = v116;
    v107 = v117;
    LOBYTE(v108) = v118;
    v59 = sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0);
    v105[5] = v57;
    v105[6] = v59;
    v60 = swift_getWitnessTable();
    sub_243D9EDB4();
    v61 = v87;
    v91 = v60;
    sub_243DADE80();
    (*(v6 + 8))(v58, v81);
    (*(v92 + 8))(v56, v10);
    v106 = v83;
    v107 = v82;
    LOBYTE(v108) = v85;
    v119[0] = v116;
    v119[1] = v117;
    v120 = v118;
    sub_243DA5BA0(v119, v105);
    v62 = sub_243D90C40(qword_27EDBB0E0, &qword_27EDBB0C8, &unk_243DB2A00);
    v103 = v60;
    v104 = v62;
    v63 = v99;
    v64 = swift_getWitnessTable();
    v65 = v84;
    View.complicationContainerPath(_:)(&v106, v63, v64);
    sub_243D93CA4(&v116);
    (*(v88 + 8))(v61, v63);
    v66 = sub_243D940EC();
    v101 = v64;
    v102 = v66;
    v67 = v98;
    v68 = swift_getWitnessTable();
    v69 = v90;
    sub_243D9EE08(v65, v67, v68);
    v70 = *(v86 + 8);
    v70(v65, v67);
    sub_243D9EE08(v69, v67, v68);
    v45 = v93;
    sub_243DA3554(v65, v67);
    sub_243D93CA4(&v116);
    v70(v65, v67);
    v70(v69, v67);
  }

  v71 = swift_getWitnessTable();
  v72 = sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0);
  v105[13] = v71;
  v105[14] = v72;
  v73 = swift_getWitnessTable();
  v74 = sub_243D90C40(qword_27EDBB0E0, &qword_27EDBB0C8, &unk_243DB2A00);
  v105[11] = v73;
  v105[12] = v74;
  v75 = swift_getWitnessTable();
  v76 = sub_243D940EC();
  v105[9] = v75;
  v105[10] = v76;
  v105[7] = swift_getWitnessTable();
  v105[8] = v73;
  v77 = v95;
  v78 = swift_getWitnessTable();
  sub_243D9EE08(v45, v77, v78);
  return (*(v94 + 8))(v45, v77);
}

uint64_t (*sub_243DA5820(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = a1[7];
  v24[6] = a1[6];
  v24[7] = v10;
  v11 = a1[9];
  v24[8] = a1[8];
  v24[9] = v11;
  v12 = a1[3];
  v24[2] = a1[2];
  v24[3] = v12;
  v13 = a1[5];
  v24[4] = a1[4];
  v24[5] = v13;
  v14 = a1[1];
  v24[0] = *a1;
  v24[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  v16 = a1[7];
  *(v15 + 144) = a1[6];
  *(v15 + 160) = v16;
  v17 = a1[9];
  *(v15 + 176) = a1[8];
  *(v15 + 192) = v17;
  v18 = a1[3];
  *(v15 + 80) = a1[2];
  *(v15 + 96) = v18;
  v19 = a1[5];
  *(v15 + 112) = a1[4];
  *(v15 + 128) = v19;
  v20 = a1[1];
  *(v15 + 48) = *a1;
  *(v15 + 64) = v20;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v21 = type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier();
  (*(*(v21 - 8) + 16))(v23, v24, v21);
  return sub_243DA5CE4;
}

uint64_t (*sub_243DA5940(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = a1[7];
  v24[6] = a1[6];
  v24[7] = v10;
  v11 = a1[9];
  v24[8] = a1[8];
  v24[9] = v11;
  v12 = a1[3];
  v24[2] = a1[2];
  v24[3] = v12;
  v13 = a1[5];
  v24[4] = a1[4];
  v24[5] = v13;
  v14 = a1[1];
  v24[0] = *a1;
  v24[1] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a5;
  v16 = a1[7];
  *(v15 + 144) = a1[6];
  *(v15 + 160) = v16;
  v17 = a1[9];
  *(v15 + 176) = a1[8];
  *(v15 + 192) = v17;
  v18 = a1[3];
  *(v15 + 80) = a1[2];
  *(v15 + 96) = v18;
  v19 = a1[5];
  *(v15 + 112) = a1[4];
  *(v15 + 128) = v19;
  v20 = a1[1];
  *(v15 + 48) = *a1;
  *(v15 + 64) = v20;
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v21 = type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier();
  (*(*(v21 - 8) + 16))(v23, v24, v21);
  return sub_243DA5C54;
}

uint64_t sub_243DA5A60(uint64_t *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = *(a1 + 32);
  v4 = a2[7];
  v21 = a2[6];
  v22 = v4;
  v5 = a2[9];
  v23 = a2[8];
  v24 = v5;
  v6 = a2[3];
  v17 = a2[2];
  v18 = v6;
  v7 = a2[5];
  v19 = a2[4];
  v20 = v7;
  v8 = a2[1];
  v15 = *a2;
  v16 = v8;
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = v2;
  v14 = v3;
  v9 = type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier();
  return sub_243DA4C60(&v11, v9);
}

unint64_t sub_243DA5AF8()
{
  result = qword_27EDBB3C8;
  if (!qword_27EDBB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB3C8);
  }

  return result;
}

unint64_t sub_243DA5B4C()
{
  result = qword_27EDBB3D0;
  if (!qword_27EDBB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB3D0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 144);

  v3 = *(v0 + 200);

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_243DA5C58(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_243DA5A60(a1, (v1 + 48));
}

uint64_t sub_243DA5C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB2B8, &unk_243DB3390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues._complicationInvertsAccentFilterStyle.getter()
{
  sub_243DA5D24();
  sub_243DADAD0();
  return v1;
}

unint64_t sub_243DA5D24()
{
  result = qword_27EDBB3F8;
  if (!qword_27EDBB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB3F8);
  }

  return result;
}

uint64_t sub_243DA5D78@<X0>(_BYTE *a1@<X8>)
{
  sub_243DA5D24();
  result = sub_243DADAD0();
  *a1 = v3;
  return result;
}

uint64_t sub_243DA5DC8(char *a1)
{
  v2 = *a1;
  sub_243DA5D24();
  return sub_243DADAE0();
}

uint64_t (*EnvironmentValues._complicationInvertsAccentFilterStyle.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_243DA5D24();
  sub_243DADAD0();
  *(a1 + 16) = *(a1 + 17);
  return sub_243DA5ECC;
}

uint64_t sub_243DA5ECC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_243DADAE0();
}

void ComplicationCurvedTextConfiguration.ContentProvider.init(_:)(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 textProvider];
  v4 = [v3 imageProvider];

  a2[1] = v4;
}

id ComplicationCurvedTextConfiguration.ContentProvider.labelProvider.getter@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:*v1 imageProvider:v1[1]];
  *a1 = result;
  return result;
}

uint64_t sub_243DA6020(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *sub_243DA6064()
{
  v1 = type metadata accessor for ComplicationCurvedTextViewRepresentable();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = [objc_allocWithZone(type metadata accessor for CenteringCurvedTextView()) init];
  v5 = OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView;
  v6 = *&v4[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_243DA7AE0(v0, aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_243D93564(aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  aBlock[4] = sub_243DA7B44;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_243DA6020;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);
  v11 = v6;

  [v11 setNeedsResizeHandler_];
  _Block_release(v10);

  [*&v4[v5] setUppercase_];
  [*&v4[v5] setUsesLegibility_];
  return v4;
}

void sub_243DA625C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong layoutSubviews];
    sub_243DA62C4(v1);
  }
}

uint64_t sub_243DA62C4(char *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
  v4 = [v3 path];
  if (v4)
  {

    v5 = *(v1 + 112);
    goto LABEL_12;
  }

  v39.a = 0.0;
  v39.b = 0.0;
  v35 = 0.0;
  *&v33[0] = 0;
  [v3 getTextCenter:&v39 startAngle:&v35 endAngle:v33];
  v6 = v35;
  v7 = *v33;
  if (v35 >= *v33)
  {
    goto LABEL_6;
  }

  v8 = v35;
  v9 = *v33;
  if (v8 > v9)
  {
    __break(1u);
LABEL_6:
    v8 = v7;
    v9 = v6;
    if (v8 > v9)
    {
      __break(1u);
    }
  }

  v5 = *(v1 + 112);
  swift_getKeyPath();
  v40 = v5;
  sub_243DA7A28(&qword_27EDBB090, type metadata accessor for ComplicationCurvedTextMetricsObservable);
  sub_243DAD7C0();

  if (*(*&v5 + 16) != v8 || *(*&v5 + 20) != v9)
  {
    swift_getKeyPath();
    v40 = v5;
    sub_243DAD7C0();

    v40 = v5;
    swift_getKeyPath();
    sub_243DAD7E0();

    *(*&v5 + 16) = v8;
    *(*&v5 + 20) = v9;
    v40 = v5;
    swift_getKeyPath();
    sub_243DAD7D0();
  }

LABEL_12:
  swift_getKeyPath();
  v39.a = v5;
  sub_243DA7A28(&qword_27EDBB090, type metadata accessor for ComplicationCurvedTextMetricsObservable);
  sub_243DAD7C0();

  v11 = *(*&v5 + 16);
  v12 = *(*&v5 + 20);
  v13 = *(*&v5 + 48);
  [v3 centerForImage];
  v15 = v14;
  v17 = v16;
  [v3 transformForImage];
  v42.x = v15;
  v42.y = v17;
  v18 = CGPointApplyAffineTransform(v42, &v39);
  [a1 convertPoint:v3 fromCoordinateSpace:{v18.x, v18.y}];
  v20 = v19;
  v22 = v21;
  [v3 transformForImage];
  v23 = atan2(v39.b, v39.a);
  *&v39.a = __PAIR64__(v12, v11);
  v39.b = v20;
  v39.c = v22;
  v39.d = v23;
  LOBYTE(v39.tx) = v13;
  swift_getKeyPath();
  v35 = v5;
  sub_243DAD7C0();

  v24 = *(*&v5 + 40);
  v25 = *(*&v5 + 48);
  v35 = *(*&v5 + 16);
  v36 = *(*&v5 + 24);
  v37 = v24;
  v38 = v25;
  result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v39, &v35);
  if ((result & 1) == 0)
  {
    *&v39.a = __PAIR64__(v12, v11);
    v39.b = v20;
    v39.c = v22;
    v39.d = v23;
    LOBYTE(v39.tx) = v13;
    v27 = *(*&v5 + 40);
    v28 = *(*&v5 + 48);
    v35 = *(*&v5 + 16);
    v36 = *(*&v5 + 24);
    v37 = v27;
    v38 = v28;
    v33[0] = *&v39.a;
    v33[1] = *&v39.c;
    v34 = v13;
    result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v35, v33);
    if (result)
    {
      tx_low = LOBYTE(v39.tx);
      v30 = *&v39.c;
      *(*&v5 + 16) = *&v39.a;
      *(*&v5 + 32) = v30;
      *(*&v5 + 48) = tx_low;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v35 = v5;
      sub_243DAD7B0();
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_243DA675C(char *a1)
{
  v3 = [objc_opt_self() systemFontOfSize:*MEMORY[0x277CBB6C0] weight:*v1 design:*MEMORY[0x277D74410]];
  v4 = [v3 CLKFontWithAlternativePunctuation];

  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = [v4 CLKFontWithLooplessThaiFallback];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
  [v5 setTracking_];
  [v5 setFont_];
  v6 = sub_243DA696C();
  [v5 setTextColor_];

  if (*(v1 + 64))
  {
    [v5 setPath_];
    [v5 setTextAlignment_];
    v7 = &selRef_setBaselineOffset_;
    v8 = 56;
  }

  else
  {
    *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_circleCenter] = *(v1 + 24);
    [v5 setInterior_];
    [v5 setImagePlacement_];
    [v5 setCircleRadius_];
    [v5 setMaxAngularWidth_];
    v7 = &selRef_setCenterAngle_;
    v8 = 48;
  }

  [v5 *v7];
  sub_243DA6AC4(a1);
  sub_243DA62C4(a1);
}

id sub_243DA696C()
{
  v1 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v7 == 0.0)
  {
    v2 = *(v0 + 8);
    v3 = sub_243DADF10();
    if (v3)
    {
LABEL_3:
      v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

      return v4;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243DAD860();

    v3 = sub_243DADF10();

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v6 = [objc_opt_self() whiteColor];

  return v6;
}

void sub_243DA6AC4(char *a1)
{
  v2 = a1;
  v3 = *(v1 + 96);
  v4 = *(v3 + 16);
  v5 = &selRef__setupShapeLayer_;
  if (v4)
  {
    v6 = objc_opt_self();
    v7 = 0;
    v51 = *&v2[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
    v47 = v4 - 1;
    v48 = v3 + 32;
    v43 = v2;
    v44 = v1;
    v49 = v6;
    v45 = v3;
    while (v7 < *(v3 + 16))
    {
      v50 = *(v48 + 8 * v7);
      v8 = [v50 imageProvider];
      if (v8)
      {
        type metadata accessor for WidgetNamedImageProvider(0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v10 = v9;
          v11 = v8;
          v12 = [v51 font];
          v13 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
          swift_beginAccess();
          v14 = *(v10 + v13);
          *(v10 + v13) = v12;
          v5 = &selRef__setupShapeLayer_;
          v1 = v44;

          v15 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
          swift_beginAccess();
          *(v10 + v15) = 2;

          v6 = v49;
        }
      }

      v16 = v51;
      v17 = [v51 imageView];
      if (v17)
      {
        v18 = v17;
        v19 = swift_dynamicCastObjCProtocolConditional();
        if (!v19)
        {
        }
      }

      else
      {
        v19 = 0;
      }

      if (([v6 existingImageView:v19 supportsImageProvider:v8] & 1) == 0)
      {
        v20 = [v6 viewForImageProvider_];
        [v51 setImageView_];

        v19 = v20;
      }

      if (v19)
      {
        type metadata accessor for WidgetNamedImageView();
        v21 = swift_dynamicCastClass();
        v22 = *(v1 + 104);
        if (v21)
        {
          v23 = v21;
          swift_getKeyPath();
          swift_getKeyPath();
          v46 = v19;
          sub_243DAD860();

          v24 = OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_monochromeFraction;
          *(v23 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_monochromeFraction) = v52;
          v25 = *(v23 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider);
          if (v25)
          {
            type metadata accessor for WidgetNamedImageProvider(0);
            v26 = swift_dynamicCastClass();
            if (v26)
            {
              v27 = *&v26;
              v28 = *(v23 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color);
              v29 = v25;
              if (v28)
              {
                v30 = v28;
                sub_243DADF20();
                v31 = *(v23 + v24);
              }

              v32 = *(v23 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController);
              v33 = *(v23 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController + 8);
              swift_getObjectType();
              v52 = v27;
              sub_243DA7A8C();
              v34 = v25;

              sub_243DAE080();
              sub_243DADB30();

              v1 = v44;
              v5 = &selRef__setupShapeLayer_;
            }
          }

          v2 = v43;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_243DAD860();

        if (v52 == 0.0)
        {
          v35 = *(v1 + 8);
          v36 = sub_243DADF10();
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_243DAD860();

          v36 = sub_243DADF10();
        }

        v3 = v45;
        v6 = v49;
        if (v36)
        {
          v37 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
        }

        else
        {
          v37 = [objc_opt_self() whiteColor];
        }

        [v19 setColor_];

        [v19 setImageProvider_];
        v16 = v51;
      }

      v38 = [v50 textProvider];
      [v16 v5[290]];
      if (!v8 || v38)
      {
        v40 = *(v1 + 76);
      }

      else
      {
        v39 = sub_243DAE130();
        [v51 setText_];

        v16 = v51;
        v40 = 0.0;
      }

      [v16 setImagePadding_];
      [v2 layoutSubviews];
      v41 = [v16 isTextTruncated];

      if (v47 != v7)
      {
        ++v7;
        if (v41)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }

  else
  {
    v42 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];

    [v42 setTextProvider_];
  }
}

uint64_t sub_243DA70AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243DA7A28(&unk_27EDBB450, type metadata accessor for ComplicationCurvedTextViewRepresentable);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243DA7140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243DA7A28(&unk_27EDBB450, type metadata accessor for ComplicationCurvedTextViewRepresentable);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243DA71D4()
{
  sub_243DA7A28(&unk_27EDBB450, type metadata accessor for ComplicationCurvedTextViewRepresentable);
  sub_243DADBF0();
  __break(1u);
}

id sub_243DA7354(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v12.receiver = a1;
  v12.super_class = type metadata accessor for CenteringCurvedTextView();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v2 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_curvedLabelView];
  v3 = [v2 path];
  if (v3)
  {
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v8 = 0;
    v9 = 0;
    [v2 getTextCenter:&v10 startAngle:&v9 endAngle:&v8];
    v4 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_circleCenter] - v10;
    v5 = *&a1[OBJC_IVAR____TtC19ComplicationDisplay23CenteringCurvedTextView_circleCenter + 8] - v11;
    [v2 frame];
    [v2 setFrame_];
  }

  result = [v2 sizeToFit];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_243DA75E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CenteringCurvedTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ComplicationCurvedTextConfiguration.ContentProvider.textProvider.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *ComplicationCurvedTextConfiguration.ContentProvider.imageProvider.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ComplicationCurvedTextConfiguration.ContentProvider.init(textProvider:imageProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_243DA7738(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_243DA7794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ComplicationCurvedTextViewRepresentable()
{
  result = qword_27EDBB428;
  if (!qword_27EDBB428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243DA7868()
{
  sub_243DA792C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MonochromeModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ComplicationCurvedTextMetricsObservable();
      if (v2 <= 0x3F)
      {
        sub_243DA797C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_243DA792C()
{
  if (!qword_27EDBB438)
  {
    v0 = sub_243DAE1C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDBB438);
    }
  }
}

void sub_243DA797C()
{
  if (!qword_27EDBB440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBADF0, &qword_243DB1E68);
    v0 = sub_243DAD8B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27EDBB440);
    }
  }
}

uint64_t sub_243DA7A28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_243DA7A8C()
{
  result = qword_27EDBB460;
  if (!qword_27EDBB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB460);
  }

  return result;
}

uint64_t sub_243DA7AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComplicationCurvedTextViewRepresentable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_243DA7B44()
{
  v1 = *(*(type metadata accessor for ComplicationCurvedTextViewRepresentable() - 8) + 80);
  v2 = *(v0 + 16);

  sub_243DA625C();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243DA7BC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id ApricotNamedImageProvider.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_243DADD80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = WidgetNamedImageProvider.init(_:)(v7);
  (*(v4 + 8))(a1, v3);
  return v9;
}

id ApricotNamedImageProvider.init(_:)(uint64_t a1)
{
  v2 = sub_243DADD80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = WidgetNamedImageProvider.init(_:)(v6);
  (*(v3 + 8))(a1, v2);
  return v7;
}

id WidgetNamedImageProvider.init(_:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font] = 0;
  *&v1[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale] = 2;
  v1[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized] = 0;
  v3 = &v1[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  v5 = sub_243DADD80();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for WidgetNamedImageProvider(0);
  v7 = objc_msgSendSuper2(&v12, sel_initPrivate);
  v11[4] = sub_243DA8D94;
  v11[5] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_243DA8DD8;
  v11[3] = &block_descriptor_5;
  v8 = _Block_copy(v11);
  v9 = v7;
  [v9 setImageViewCreationHandler_];
  _Block_release(v8);

  (*(v6 + 8))(a1, v5);
  return v9;
}

uint64_t sub_243DA803C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v4 = sub_243DADD80();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_243DA80C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v4 = sub_243DADD80();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *sub_243DA81B4()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_243DA8200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_243DA82B8()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_243DA82FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_243DA83AC(double a1, double a2)
{
  v3 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
  if ((*(v2 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
  {
    v4 = (v2 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
    *v4 = a1;
    v4[1] = a2;
    *(v2 + v3) = 1;
  }
}

uint64_t sub_243DA83D8()
{
  v53 = sub_243DAD780();
  v50 = *(v53 - 8);
  v1 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_243DADD60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_243DADD80();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v19 = v9[2];
  v51 = v0;
  v54 = v19;
  v19(v17, v0 + v18, v8);
  sub_243DADD70();
  v20 = v3;
  v21 = v9[1];
  v21(v17, v8);
  v22 = (*(v4 + 88))(v7, v20);
  if (v22 == *MEMORY[0x277CDE3D0])
  {
    (*(v4 + 96))(v7, v20);
    v23 = v50;
    (*(v50 + 32))(v52, v7, v53);
    v24 = sub_243DAD770();
    v25 = CLKUniqueBundle();

    v54(v15, v51 + v18, v8);
    sub_243DADD30();
    v21(v15, v8);
    v26 = sub_243DAE130();

    v27 = [objc_opt_self() imageNamed:v26 inBundle:v25 compatibleWithTraitCollection:0];

    (*(v23 + 8))(v52, v53);
    return v27;
  }

  else
  {
    v50 = v18;
    v52 = (v9 + 2);
    v53 = v8;
    v29 = v51;
    if (v22 == *MEMORY[0x277CDE3D8])
    {
      (*(v4 + 96))(v7, v20);
      v30 = *v7;
      v31 = v29;
      v32 = v29 + v50;
      v33 = v49;
      v34 = v53;
      v54(v49, v32, v53);
      v35 = sub_243DADD40();
      v36 = v21;
      v21(v33, v34);
      if ((v35 & 0x100000000) != 0)
      {
        v37 = 1.0;
      }

      else
      {
        v37 = *&v35;
      }

      v38 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
      swift_beginAccess();
      v39 = *(v31 + v38);
      if (v39)
      {
        v40 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
        swift_beginAccess();
        v41 = [objc_opt_self() configurationWithFont:v39 scale:*(v31 + v40)];
      }

      else
      {
        v42 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
        swift_beginAccess();
        v41 = [objc_opt_self() configurationWithScale_];
      }

      v43 = v41;
      v44 = v53;
      if (v30)
      {
        v45 = objc_opt_self();
        v54(v15, v31 + v50, v44);
        sub_243DADD30();
        v36(v15, v44);
        v46 = sub_243DAE130();

        v47 = [v45 cd:v46 internalSystemName:v43 variableValue:v37 withConfiguration:?];

        return v47;
      }

      else
      {
        sub_243D96A78(0, &qword_27EDBB540, 0x277D755B8);
        v54(v15, v31 + v50, v44);
        sub_243DADD30();
        v36(v15, v44);
        return sub_243DAE230();
      }
    }

    else
    {
      (*(v4 + 8))(v7, v20);
      return 0;
    }
  }
}

uint64_t sub_243DA8A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v5 = sub_243DADD80();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_243DA8AA0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_243DADD80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

void sub_243DA8C64(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_243DA8DD8(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  v8 = v5(v7, a2, a3);

  return v8;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243DA8E78(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_243DA8F5C@<Q0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_243DADD80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v9, v4);
  v10 = type metadata accessor for WidgetNamedImageProvider(0);
  v11 = objc_allocWithZone(v10);
  v12 = WidgetNamedImageProvider.init(_:)(v8);
  v13 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v14 = *(v2 + v13);
  v15 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v16 = *&v12[v15];
  *&v12[v15] = v14;
  v17 = v14;

  v18 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  v19 = *(v2 + v18);
  v20 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  *&v12[v20] = v19;
  v12[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized] = *(v2 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized);
  result = *(v2 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
  *&v12[OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize] = result;
  a1[3] = v10;
  *a1 = v12;
  return result;
}

id WidgetNamedImageProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetNamedImageProvider.__allocating_init(jsonObjectRepresentation:bundle:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_243DAE110();

  v6 = [v4 initWithJSONObjectRepresentation:v5 bundle:a2];

  return v6;
}

id WidgetNamedImageProvider.__allocating_init(private:)()
{
  v1 = objc_allocWithZone(v0);

  return [v1 initPrivate];
}

id WidgetNamedImageProvider.__allocating_init(foregroundAccentImage:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithForegroundAccentImage_];

  return v3;
}

id sub_243DA9468(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243DA9564()
{
  result = sub_243DADD80();
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

uint64_t sub_243DA9890@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v58 = a3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6B0, &qword_243DB3BE0);
  v4 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v6 = &v49 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6B8, &qword_243DB3BE8);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v9 = &v49 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6C0, &qword_243DB3BF0);
  v10 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v12 = &v49 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6C8, &qword_243DB3BF8);
  v13 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6D0, &qword_243DB3C00);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6D8, &qword_243DB3C08);
  v20 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6E0, &qword_243DB3C10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v49 - v25;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6E8, &qword_243DB3C18);
  v27 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v49 - v28;
  if (a2 && (v29 = a2[2]) != 0)
  {
    if (v29 == 2)
    {
      v40 = a2[4];
      v41 = a2[5];
      v49 = v41;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
      (*(*(v42 - 8) + 16))(v12, v55, v42);
      v43 = &v12[*(v50 + 36)];
      *v43 = v40;
      *(v43 + 1) = v41;
      sub_243D93F14(v12, v19, &qword_27EDBB6C0, &qword_243DB3BF0);
      swift_storeEnumTagMultiPayload();
      sub_243DACBC8();
      sub_243DACCAC();

      sub_243DADC30();
      sub_243D93F14(v22, v15, &qword_27EDBB6D8, &qword_243DB3C08);
      swift_storeEnumTagMultiPayload();
      sub_243DACB3C();
      sub_243DACD90();
      v34 = v53;
      sub_243DADC30();
      sub_243DACF58(v22, &qword_27EDBB6D8, &qword_243DB3C08);
      v35 = v12;
      v36 = &qword_27EDBB6C0;
      v37 = &qword_243DB3BF0;
    }

    else if (v29 == 1)
    {
      v30 = a2[4];
      KeyPath = swift_getKeyPath();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
      (*(*(v32 - 8) + 16))(v26, v55, v32);
      v33 = &v26[*(v23 + 36)];
      *v33 = KeyPath;
      v33[1] = v30;
      sub_243D93F14(v26, v19, &qword_27EDBB6E0, &qword_243DB3C10);
      swift_storeEnumTagMultiPayload();
      sub_243DACBC8();
      sub_243DACCAC();

      sub_243DADC30();
      sub_243D93F14(v22, v15, &qword_27EDBB6D8, &qword_243DB3C08);
      swift_storeEnumTagMultiPayload();
      sub_243DACB3C();
      sub_243DACD90();
      v34 = v53;
      sub_243DADC30();
      sub_243DACF58(v22, &qword_27EDBB6D8, &qword_243DB3C08);
      v35 = v26;
      v36 = &qword_27EDBB6E0;
      v37 = &qword_243DB3C10;
    }

    else
    {
      v44 = a2[4];
      v45 = a2[5];
      v46 = a2[6];
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
      (*(*(v47 - 8) + 16))(v9, v55, v47);
      v48 = &v9[*(v54 + 36)];
      *v48 = v44;
      *(v48 + 1) = v45;
      *(v48 + 2) = v46;
      sub_243D93F14(v9, v15, &qword_27EDBB6B8, &qword_243DB3BE8);
      swift_storeEnumTagMultiPayload();
      sub_243DACB3C();
      sub_243DACD90();

      v34 = v53;
      sub_243DADC30();
      v35 = v9;
      v36 = &qword_27EDBB6B8;
      v37 = &qword_243DB3BE8;
    }

    sub_243DACF58(v35, v36, v37);
    sub_243D93F14(v34, v6, &qword_27EDBB6E8, &qword_243DB3C18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
    sub_243DACAB0();
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20);
    sub_243DADC30();
    return sub_243DACF58(v34, &qword_27EDBB6E8, &qword_243DB3C18);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB6F0, &qword_243DB3C20);
    (*(*(v38 - 8) + 16))(v6, v55, v38);
    swift_storeEnumTagMultiPayload();
    sub_243DACAB0();
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20);
    return sub_243DADC30();
  }
}

char *sub_243DAA090(double a1, double a2)
{
  *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_baseline] = 0;
  *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider] = 0;
  *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_monochromeFraction] = 0;
  *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color] = 0;
  v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_usesLegibility] = 0;
  *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_overrideColor] = 0;
  v5 = &v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_maxSize];
  *v5 = a1;
  v5[1] = a2;
  sub_243DAE080();
  v6 = sub_243DADD10();

  swift_getObjectType();
  sub_243D96A78(0, &qword_27EDBB2B0, 0x277D75D28);
  v7 = dynamic_cast_existential_1_superclass_unconditional(v6);
  v8 = &v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController];
  *v8 = v7;
  v8[1] = v9;
  result = [v7 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor_];

    v17.receiver = v2;
    v17.super_class = type metadata accessor for WidgetNamedImageView();
    v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, a1, a2);
    v14 = *&v13[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController];
    v15 = v13;
    result = [v14 view];
    if (result)
    {
      v16 = result;
      [v15 addSubview_];

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_243DAA31C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WidgetNamedImageView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController] view];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v5 = CGRectOffset(v4, 0.0, *&v0[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_baseline]);
    [v2 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_243DAA490(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider];
  if (a1)
  {
    if (v3 == a1 || v3 == 0)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  type metadata accessor for WidgetNamedImageProvider(0);
  if (swift_dynamicCastClass())
  {
    v15 = v3;
    sub_243DAA5D8();
    v5 = *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController];
    v6 = *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController + 8];
    swift_getObjectType();
    v7 = *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_maxSize];
    v8 = *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_maxSize + 8];
    sub_243DADAF0();
    v9 = 0;
    [v2 setBounds_];
    v12 = sub_243DA83D8();
    if (v12)
    {
      v13 = v12;
      [v12 cd_baselineOffsetFromBottom];
      v9 = v14;
    }

    *&v2[OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_baseline] = v9;
    [v2 setNeedsLayout];
  }
}

void sub_243DAA5D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider);
  if (v1)
  {
    type metadata accessor for WidgetNamedImageProvider(0);
    if (swift_dynamicCastClass())
    {
      v2 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color);
      v3 = v1;
      if (v2)
      {
        v4 = v2;
        sub_243DADF20();
      }

      v5 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_monochromeFraction) != 0.0;
      v6 = v0 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController;
      v7 = *(v0 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController);
      v8 = *(v6 + 8);
      swift_getObjectType();
      sub_243DA7A8C();
      v9 = v1;

      sub_243DAE080();
      sub_243DADB30();
    }
  }
}

void sub_243DAA750(void *a1)
{
  v2 = OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color;
  v3 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color);
  *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_color) = a1;
  v13 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_imageProvider);
  if (v4 && (type metadata accessor for WidgetNamedImageProvider(0), swift_dynamicCastClass()))
  {
    v5 = *(v1 + v2);
    v6 = v4;
    if (v5)
    {
      v7 = v5;
      sub_243DADF20();
    }

    v8 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_monochromeFraction) != 0.0;
    v9 = v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController;
    v10 = *(v1 + OBJC_IVAR____TtC19ComplicationDisplay20WidgetNamedImageView_hostingViewController);
    v11 = *(v9 + 8);
    swift_getObjectType();
    sub_243DA7A8C();
    v12 = v4;

    sub_243DAE080();
    sub_243DADB30();
  }

  else
  {
  }
}

uint64_t sub_243DAA920@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v116 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB610, &qword_243DB3A00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v102 - v8;
  v10 = sub_243DADD60();
  v121 = *(v10 - 8);
  v11 = *(v121 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_243DADFB0();
  v125 = *(v119 - 8);
  v14 = *(v125 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB618, &qword_243DB3A08);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v112 = &v102 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB620, &qword_243DB3A10);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v102 - v21;
  v127 = sub_243DADD80();
  v123 = *(v127 - 8);
  v23 = *(v123 + 64);
  v24 = MEMORY[0x28223BE20](v127);
  v120 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v102 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v102 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v102 - v31;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB628, &qword_243DB3A18);
  v33 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v124 = (&v102 - v34);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB630, &qword_243DB3A20);
  v35 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v115 = &v102 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB638, &qword_243DB3A28);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v114 = &v102 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v118 = &v102 - v41;
  if (!sub_243DABFD0(a1))
  {
    swift_storeEnumTagMultiPayload();
    sub_243DAC4EC();
    return sub_243DADC30();
  }

  v104 = v37;
  v105 = v13;
  v106 = v10;
  v107 = v6;
  v108 = v9;
  v109 = a4;
  v42 = v122;
  if ((v122 & 1) == 0)
  {
    v43 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
    swift_beginAccess();
    v44 = v123;
    v45 = &a1[v43];
    v46 = v22;
    v47 = v42;
    v48 = a1;
    v49 = v127;
    v103 = *(v123 + 16);
    v103(v32, v45, v127);
    v50 = sub_243DADD50();
    v51 = v49;
    a1 = v48;
    v42 = v47;
    v22 = v46;
    v52 = *(v44 + 8);
    v52(v32, v51);
    if (!v50)
    {
      goto LABEL_9;
    }

    v53 = &a1[v43];
    v54 = v127;
    v103(v30, v53, v127);
    v55 = sub_243DADD50();
    result = (v52)(v30, v54);
    if (!v55)
    {
      __break(1u);
      return result;
    }

    v57 = *(v55 + 16);

    if (!v57)
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  v58 = *MEMORY[0x277CE1020];
  v59 = sub_243DADFA0();
  v60 = *(v59 - 8);
  (*(v60 + 104))(v22, v58, v59);
  (*(v60 + 56))(v22, 0, 1, v59);
  sub_243DADF70();
  sub_243DACF58(v22, &qword_27EDBB620, &qword_243DB3A10);
  if ((v42 & 1) == 0)
  {
LABEL_10:
    v63 = v123;
    v61 = v112;
    v64 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
    swift_beginAccess();
    v65 = &a1[v64];
    v66 = v110;
    v67 = v127;
    (*(v63 + 16))(v110, v65, v127);
    sub_243DADD20();
    (*(v63 + 8))(v66, v67);
    goto LABEL_11;
  }

  v61 = v112;
  sub_243DADB40();
  v62 = sub_243DADB50();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  v63 = v123;
LABEL_11:
  v123 = sub_243DADF90();

  sub_243DACF58(v61, &qword_27EDBB618, &qword_243DB3A08);
  v68 = sub_243DAB438(a1, v116, v42 & 1);
  v69 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  swift_beginAccess();
  v70 = *&a1[v69] - 1;
  if (v70 > 2)
  {
    v71 = MEMORY[0x277CE1058];
  }

  else
  {
    v71 = qword_278DF3A50[v70];
  }

  v72 = v121;
  v73 = v105;
  v74 = v117;
  v75 = v119;
  (*(v125 + 104))(v117, *v71, v119);
  KeyPath = swift_getKeyPath();
  v77 = v124;
  v78 = (v124 + *(v111 + 36));
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB678, &qword_243DB3A38);
  (*(v125 + 32))(v78 + *(v79 + 28), v74, v75);
  *v78 = KeyPath;
  *v77 = v123;
  v77[1] = v68;
  v80 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v81 = *&a1[v80];
  if (v81)
  {
    v82 = v81;
    v83 = sub_243DADD90();
  }

  else
  {
    v83 = 0;
  }

  v84 = v108;
  v85 = v104;
  v86 = swift_getKeyPath();
  v87 = v115;
  sub_243DAC81C(v124, v115, &qword_27EDBB628, &qword_243DB3A18);
  v88 = (v87 + *(v113 + 36));
  *v88 = v86;
  v88[1] = v83;
  v89 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v90 = &a1[v89];
  v91 = v120;
  v92 = v127;
  (*(v63 + 16))(v120, v90, v127);
  sub_243DADD70();
  (*(v63 + 8))(v91, v92);
  v93 = v106;
  LOBYTE(v92) = (*(v72 + 88))(v73, v106) != *MEMORY[0x277CDE3D0];
  (*(v72 + 8))(v73, v93);
  [a1 maxSize];
  v95 = v94;
  v97 = v96;
  v98 = v114;
  sub_243DAC81C(v87, v114, &qword_27EDBB630, &qword_243DB3A20);
  v99 = v98 + *(v85 + 36);
  *v99 = v92;
  *(v99 + 8) = v95;
  *(v99 + 16) = v97;
  *(v99 + 24) = 0;
  v100 = v98;
  v101 = v118;
  sub_243DAC81C(v100, v118, &qword_27EDBB638, &qword_243DB3A28);
  sub_243D93F14(v101, v84, &qword_27EDBB638, &qword_243DB3A28);
  swift_storeEnumTagMultiPayload();
  sub_243DAC4EC();
  sub_243DADC30();
  sub_243DACF58(v101, &qword_27EDBB638, &qword_243DB3A28);
}

uint64_t sub_243DAB438(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_243DADD80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  (*(v7 + 16))(v10, a1 + v11, v6);
  v12 = sub_243DADD50();
  (*(v7 + 8))(v10, v6);
  if (a3)
  {
    if (!a2)
    {
      return v12;
    }

    goto LABEL_12;
  }

  if (!v12)
  {
    if (!a2)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (*(v12 + 16))
  {
    v13 = 1;
  }

  else
  {
    v13 = a2 == 0;
  }

  if (!v13)
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB698, &qword_243DB3AA8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_243DB1AE0;
    *(v12 + 32) = a2;
  }

  return v12;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_243DAB758(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_243DAB7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243DAB80C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB758, &qword_243DB3C70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB760, &qword_243DB3C78);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  if (a2)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB768, &qword_243DB3C80);
    (*(*(v18 - 8) + 16))(v13, a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_243DACE74();
    sub_243D90C40(&qword_27EDBB788, &qword_27EDBB768, &qword_243DB3C80);
    return sub_243DADC30();
  }

  else
  {
    *v17 = a3;
    *(v17 + 1) = a4;
    v17[16] = a5 & 1;
    v20 = *(v14 + 44);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB768, &qword_243DB3C80);
    (*(*(v21 - 8) + 16))(&v17[v20], a1, v21);
    sub_243D93F14(v17, v13, &qword_27EDBB760, &qword_243DB3C78);
    swift_storeEnumTagMultiPayload();
    sub_243DACE74();
    sub_243D90C40(&qword_27EDBB788, &qword_27EDBB768, &qword_243DB3C80);
    sub_243DADC30();
    return sub_243DACF58(v17, &qword_27EDBB760, &qword_243DB3C78);
  }
}

uint64_t sub_243DABAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[1] = a6;
  v6 = sub_243DAD940();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243DAD9B0();
  sub_243DADA00();
  v16 = v11 & 1;
  v15 = v12 & 1;
  sub_243DAD920();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_243DABC74(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v6;
  v13 = *(v6 + 8);
  v14 = *(v6 + 16);
  sub_243DAD9A0();
  sub_243DAD404();
  sub_243DAE1D0();
  sub_243DAE1F0();
  result = sub_243DAE1E0();
  if (result == 1)
  {
    return sub_243DABAB8(a1, a2 & 1, a3, a4 & 1, a5, v12);
  }

  return result;
}

uint64_t sub_243DABD5C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  return sub_243DAD234(a9, a1, a2, a3, a4, a10, *v10);
}

void (*sub_243DABE24(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_243DAD890();
  return sub_243DABEAC;
}

void sub_243DABEAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_243DABF08(uint64_t a1)
{
  v2 = sub_243DADFB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243DADA40();
}

uint64_t sub_243DABFD0(uint64_t a1)
{
  v2 = sub_243DADF60();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_243DAD780();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_243DADD60();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_243DADD80();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  v21 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_named;
  swift_beginAccess();
  v22 = v12[2];
  v22(v20, a1 + v21, v11);
  v52 = sub_243DADD30();
  v53 = v23;
  v24 = v12[1];
  v24(v20, v11);
  v45 = a1;
  v22(v18, a1 + v21, v11);
  sub_243DADD70();
  v25 = v18;
  v27 = v54;
  v26 = v55;
  v24(v25, v11);
  v28 = (*(v27 + 88))(v10, v26);
  if (v28 == *MEMORY[0x277CDE3D0])
  {
    (*(v27 + 96))(v10, v26);
    v30 = v46;
    v29 = v47;
    v31 = v49;
    (*(v47 + 32))(v46, v10, v49);
    v32 = sub_243DAD770();
    v33 = CLKUniqueBundle();

    v34 = v33;
    sub_243DADFD0();
    v36 = v50;
    v35 = v51;
    v37 = v48;
    (*(v50 + 104))(v48, *MEMORY[0x277CE0FE0], v51);
    v38 = sub_243DADFC0();

    (*(v36 + 8))(v37, v35);
    (*(v29 + 8))(v30, v31);
    return v38;
  }

  else if (v28 == *MEMORY[0x277CDE3D8])
  {
    (*(v27 + 96))(v10, v26);
    v40 = *v10;
    v41 = v45 + v21;
    v42 = v44;
    v22(v44, v41, v11);
    sub_243DADD40();
    v24(v42, v11);
    if (v40 == 1)
    {
      return sub_243DADF80();
    }

    else
    {
      return sub_243DADF50();
    }
  }

  else
  {

    (*(v27 + 8))(v10, v26);
    return 0;
  }
}

unint64_t sub_243DAC4EC()
{
  result = qword_27EDBB640;
  if (!qword_27EDBB640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB638, &qword_243DB3A28);
    sub_243DAC578();
    sub_243DAC7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB640);
  }

  return result;
}

unint64_t sub_243DAC578()
{
  result = qword_27EDBB648;
  if (!qword_27EDBB648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB630, &qword_243DB3A20);
    sub_243DAC630();
    sub_243D90C40(&qword_27EDBB680, &qword_27EDBB688, &qword_243DB3A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB648);
  }

  return result;
}

unint64_t sub_243DAC630()
{
  result = qword_27EDBB650;
  if (!qword_27EDBB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB628, &qword_243DB3A18);
    sub_243DAC6E8();
    sub_243D90C40(&qword_27EDBB670, &qword_27EDBB678, &qword_243DB3A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB650);
  }

  return result;
}

unint64_t sub_243DAC6E8()
{
  result = qword_27EDBB658;
  if (!qword_27EDBB658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB660, &qword_243DB3A30);
    sub_243DAC774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB658);
  }

  return result;
}

unint64_t sub_243DAC774()
{
  result = qword_27EDBB668;
  if (!qword_27EDBB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB668);
  }

  return result;
}

unint64_t sub_243DAC7C8()
{
  result = qword_27EDBB690;
  if (!qword_27EDBB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB690);
  }

  return result;
}

uint64_t sub_243DAC81C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_243DAC884(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
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

uint64_t sub_243DAC8D8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_243DAC930(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_243DAC98C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_243DAC9EC()
{
  result = qword_27EDBB6A0;
  if (!qword_27EDBB6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6A8, "  ");
    sub_243DAC4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB6A0);
  }

  return result;
}

unint64_t sub_243DACAB0()
{
  result = qword_27EDBB6F8;
  if (!qword_27EDBB6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6E8, &qword_243DB3C18);
    sub_243DACB3C();
    sub_243DACD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB6F8);
  }

  return result;
}

unint64_t sub_243DACB3C()
{
  result = qword_27EDBB700;
  if (!qword_27EDBB700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6D8, &qword_243DB3C08);
    sub_243DACBC8();
    sub_243DACCAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB700);
  }

  return result;
}

unint64_t sub_243DACBC8()
{
  result = qword_27EDBB708;
  if (!qword_27EDBB708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6E0, &qword_243DB3C10);
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20);
    sub_243D90C40(&qword_27EDBB718, &qword_27EDBB720, &qword_243DB3C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB708);
  }

  return result;
}

unint64_t sub_243DACCAC()
{
  result = qword_27EDBB728;
  if (!qword_27EDBB728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6C0, &qword_243DB3BF0);
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20);
    sub_243D90C40(&qword_27EDBB730, &qword_27EDBB738, &qword_243DB3C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB728);
  }

  return result;
}

unint64_t sub_243DACD90()
{
  result = qword_27EDBB740;
  if (!qword_27EDBB740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB6B8, &qword_243DB3BE8);
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20);
    sub_243D90C40(&qword_27EDBB748, &qword_27EDBB750, &qword_243DB3C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB740);
  }

  return result;
}

unint64_t sub_243DACE74()
{
  result = qword_27EDBB770;
  if (!qword_27EDBB770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB760, &qword_243DB3C78);
    sub_243D90C40(&qword_27EDBB778, &qword_27EDBB780, &qword_243DB3C88);
    sub_243D90C40(&qword_27EDBB788, &qword_27EDBB768, &qword_243DB3C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB770);
  }

  return result;
}

uint64_t sub_243DACF58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ShrinkToFitModifier._ShrinkToFitLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ShrinkToFitModifier._ShrinkToFitLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_243DAD014()
{
  result = qword_27EDBB790;
  if (!qword_27EDBB790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB798, "j ");
    sub_243DACAB0();
    sub_243D90C40(&qword_27EDBB710, &qword_27EDBB6F0, &qword_243DB3C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB790);
  }

  return result;
}

unint64_t sub_243DAD0CC()
{
  result = qword_27EDBB7A0;
  if (!qword_27EDBB7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB7A8, "0 ");
    sub_243DACE74();
    sub_243D90C40(&qword_27EDBB788, &qword_27EDBB768, &qword_243DB3C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB7A0);
  }

  return result;
}

unint64_t sub_243DAD188()
{
  result = qword_27EDBB7B0;
  if (!qword_27EDBB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB7B0);
  }

  return result;
}

unint64_t sub_243DAD1E0()
{
  result = qword_27EDBB7B8;
  if (!qword_27EDBB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB7B8);
  }

  return result;
}

uint64_t sub_243DAD234(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_243DAD940();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_243DAD9A0();
  sub_243DAD404();
  sub_243DAE1D0();
  sub_243DAE1F0();
  result = sub_243DAE1E0();
  if (result == 1)
  {
    sub_243DAD9B0();
    sub_243DAE0C0();
    v18 = 0;
    v17[0] = 0;
    sub_243DABAB8(*&a4, 0, *&a5, 0, a1, a7);
    v18 = 0;
    v17[0] = 0;
    sub_243DAD930();
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

unint64_t sub_243DAD404()
{
  result = qword_27EDBB7C0;
  if (!qword_27EDBB7C0)
  {
    sub_243DAD9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB7C0);
  }

  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}