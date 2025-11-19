void sub_1C5A34D74(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C5BD4D40;
  v12 = objc_opt_self();
  v13 = [v12 blackColor];
  v14 = [v13 colorWithAlphaComponent_];

  v15 = [v14 CGColor];
  type metadata accessor for CGColor(0);
  v17 = v16;
  *(v11 + 56) = v16;
  *(v11 + 32) = v15;
  v18 = [v12 blackColor];
  v19 = [v18 CGColor];

  *(v11 + 88) = v17;
  *(v11 + 64) = v19;
  v20 = sub_1C5BCB044();

  [v10 setColors_];

  [v10 setStartPoint_];
  [v10 setStartPoint_];
  [v10 setFrame_];
  v21 = [a1 CGContext];
  [v10 renderInContext_];
}

void sub_1C5A34FA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1C5A3509C()
{
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows) = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenContentWidthOverflows) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

id sub_1C5A35164(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return [objc_opt_self() effectWithBlurRadius_];
  }

  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v19.origin.x = *a1;
  v19.origin.y = v2;
  v19.size.width = v3;
  v19.size.height = v4;
  if (CGRectIsEmpty(v19))
  {
    return [objc_opt_self() effectWithBlurRadius_];
  }

  v20.origin.x = v1;
  v20.origin.y = v2;
  v20.size.width = v3;
  v20.size.height = v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v2;
  v7[4] = v3;
  v7[5] = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C5A353DC;
  *(v8 + 24) = v7;
  v18[4] = sub_1C5A353E8;
  v18[5] = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1C5A34FA0;
  v18[3] = &block_descriptor_7;
  v9 = _Block_copy(v18);

  v10 = [v6 imageWithActions_];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    [v10 size];
    v12 = v11;
    v14 = v13;
    v15 = objc_opt_self();
    if (v12 == 0.0 && v14 == 0.0)
    {
      v16 = [v15 effectWithBlurRadius_];
    }

    else
    {
      v16 = [v15 effectWithVariableBlurRadius:v10 imageMask:18.0];
    }

    v17 = v16;

    return v17;
  }

  return result;
}

uint64_t sub_1C5A35410@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v33, a1, sizeof(v33));
  v9 = *(a2 + 32);
  v36 = v9;
  v37 = *(a2 + 40);
  if (v37 == 1)
  {
    v32 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v36, &qword_1EC194408);
    (*(v6 + 8))(v8, v5);
    v9 = v32;
  }

  swift_getKeyPath();
  v35[0] = v9;
  sub_1C5937E88(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  sub_1C5BCAA54();
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
  WitnessTable = swift_getWitnessTable();
  v12 = MEMORY[0x1E697E5D8];
  v28 = WitnessTable;
  v29 = MEMORY[0x1E697E5D8];
  v26 = swift_getWitnessTable();
  v27 = v12;
  v13 = swift_getWitnessTable();
  v14 = MEMORY[0x1E697E040];
  v24 = v13;
  v25 = MEMORY[0x1E697E040];
  v15 = swift_getWitnessTable();
  sub_1C5BCA234();
  memcpy(v31, v34, sizeof(v31));
  v16 = sub_1C5BC8AB4();
  v22 = v15;
  v23 = v14;
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v31, v16, v17);
  memcpy(v30, v31, sizeof(v30));
  v18 = *(*(v16 - 8) + 8);
  v18(v30, v16);
  memcpy(v21, v35, sizeof(v21));
  sub_1C593EDC0(v21, v16, v17);
  memcpy(v31, v21, sizeof(v31));
  return (v18)(v31, v16);
}

uint64_t sub_1C5A35928@<X0>(uint64_t a1@<X8>)
{
  _s12PresentationCMa();
  sub_1C5937E88(&qword_1EDA4AF70, _s12PresentationCMa);
  *a1 = sub_1C5BC8324();
  *(a1 + 8) = v2 & 1;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1C5A359B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = *(a1 + 24);
  v55 = *(a1 + 16);
  v63[0] = v55;
  v63[1] = &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.SecondaryMobile;
  v64 = v3;
  v65 = sub_1C5A365E8();
  v53 = v65;
  v4 = _s23MiniPlayerAccessoryViewVMa();
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v49 - v5;
  sub_1C5BC97C4();
  v6 = sub_1C5BC8AB4();
  v59 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v49 - v9;
  v10 = sub_1C5BC8F34();
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  v18 = *(v2 + 16);
  if (*(v2 + 24) != 1)
  {
    v51 = v14;

    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    v50 = v10;
    v20 = v3;
    v21 = v16;
    v22 = v6;
    v23 = v4;
    v24 = v17;
    v25 = v19;
    sub_1C5BC7C54();

    v17 = v24;
    v4 = v23;
    v6 = v22;
    v16 = v21;
    v3 = v20;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v18, 0);
    (*(v52 + 8))(v12, v50);
    v14 = v51;
    LOBYTE(v18) = v63[0];
  }

  if (v18 != 3 && v18)
  {
    if (qword_1EC1906C8 != -1)
    {
      v47 = v14;
      swift_once();
      v14 = v47;
    }

    v26 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      v46 = v14;
      swift_once();
      v14 = v46;
    }

    v26 = qword_1EDA5DAE8;
  }

  v27 = __swift_project_value_buffer(v14, v26);
  sub_1C5948550(v27, v16);
  v28 = v55;
  sub_1C59498C4(v17);
  v29 = *(v3 + 400);
  swift_unknownObjectRetain();
  v29(v63, v28, v3);
  swift_unknownObjectRelease();
  v30 = v64;
  v31 = v65;

  v32 = *(v16 + 9);
  v33 = sub_1C5BCAA64();
  v35 = v34;
  v36 = sub_1C5BC8FC4();
  v48 = v28;
  v37 = v54;
  sub_1C594EC50(v30, v31, v38, v36, v32, 0, v33, v35, v54, 0.0, v48, &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.SecondaryMobile);
  WitnessTable = swift_getWitnessTable();
  v40 = v57;
  sub_1C5BCA184();
  (*(v56 + 8))(v37, v4);
  sub_1C594A4A4(v16);
  v41 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v61 = WitnessTable;
  v62 = v41;
  v42 = swift_getWitnessTable();
  v43 = v58;
  sub_1C593EDC0(v40, v6, v42);
  v44 = *(v59 + 8);
  v44(v40, v6);
  sub_1C593EDC0(v43, v6, v42);
  return (v44)(v43, v6);
}

uint64_t sub_1C5A35F7C()
{
  v0 = sub_1C5BCA5D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  __swift_allocate_value_buffer(v4, qword_1EC1A6AC8);
  v5 = __swift_project_value_buffer(v4, qword_1EC1A6AC8);
  (*(v1 + 104))(v3, *MEMORY[0x1E69816C0], v0);
  sub_1C5BC9924();
  sub_1C5BC9994();
  v6 = sub_1C5BC99E4();

  __asm { FMOV            V1.2D, #8.0 }

  *v5 = xmmword_1C5BDB100;
  *(v5 + 16) = _Q1;
  *(v5 + 32) = xmmword_1C5BDB110;
  *(v5 + 48) = xmmword_1C5BDB120;
  *(v5 + 64) = xmmword_1C5BDB130;
  *(v5 + 80) = 0x4048000000000000;
  result = (*(v1 + 32))(v5 + v4[12], v3, v0);
  *(v5 + v4[13]) = 0x4018000000000000;
  *(v5 + v4[14]) = v6;
  return result;
}

uint64_t type metadata accessor for NowPlayingMiniPlayerSpecs()
{
  result = qword_1EDA47CA8;
  if (!qword_1EDA47CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5A361A0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a3;
  if (*a2 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
    v4 = a3;
  }

  v6 = __swift_project_value_buffer(a1, v4);

  return sub_1C5948550(v6, a4);
}

uint64_t sub_1C5A36238()
{
  result = sub_1C5BCA5D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5A362DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_1C5A36338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C5A3639C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A36418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BCA4C4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194428);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194430);
  *(a2 + *(result + 36)) = v4;
  return result;
}

__n128 sub_1C5A364B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194420) + 36));
  __asm { FMOV            V0.2D, #1.0 }

  *v5 = result;
  v5[1].n128_u32[0] = 1051931443;
  return result;
}

uint64_t sub_1C5A3654C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C5A365E8()
{
  result = qword_1EC194410;
  if (!qword_1EC194410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194410);
  }

  return result;
}

unint64_t sub_1C5A3663C()
{
  result = qword_1EDA472F8[0];
  if (!qword_1EDA472F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA472F8);
  }

  return result;
}

unint64_t sub_1C5A36690()
{
  result = qword_1EDA4DA28;
  if (!qword_1EDA4DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10);
    sub_1C594CE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DA28);
  }

  return result;
}

unint64_t sub_1C5A3677C()
{
  result = qword_1EC194438;
  if (!qword_1EC194438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194420);
    sub_1C5924F54(&qword_1EC194440, &qword_1EC194418);
    sub_1C5924F54(&qword_1EC194448, &qword_1EC194450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194438);
  }

  return result;
}

unint64_t sub_1C5A36860()
{
  result = qword_1EDA465D0;
  if (!qword_1EDA465D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194430);
    sub_1C5924F54(&qword_1EDA46230, &qword_1EC194428);
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465D0);
  }

  return result;
}

uint64_t sub_1C5A36950()
{
  sub_1C593FF58();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5A36998()
{
  sub_1C593FE54();

  return sub_1C5BC8F44();
}

uint64_t static NowPlayingHostedContentID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4();
  }
}

uint64_t NowPlayingHostedContentID.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A36A64()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A36AB8()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t ContentLookupItem<>.init(_:hostedContent:)@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  a3[1] = v4;
  sub_1C5A36B84();
  v5 = type metadata accessor for ContentLookupItem();
  return a2(v5, v6, v7, v8);
}

unint64_t sub_1C5A36B84()
{
  result = qword_1EC194458;
  if (!qword_1EC194458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194458);
  }

  return result;
}

__n128 ContentLookupItem<>.init<A>(_:viewController:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  *a4 = *a1;
  *(a4 + 8) = v5;
  sub_1C5AD1894(a2, a3, v12);
  v6 = type metadata accessor for NowPlayingHostedViewControllerRepresentable();
  swift_getWitnessTable();
  sub_1C5AD1930(v12, v6, v13);
  v7 = v13[9];
  *(a4 + 144) = v13[8];
  *(a4 + 160) = v7;
  *(a4 + 176) = v14;
  v8 = v13[5];
  *(a4 + 80) = v13[4];
  *(a4 + 96) = v8;
  v9 = v13[7];
  *(a4 + 112) = v13[6];
  *(a4 + 128) = v9;
  v10 = v13[1];
  *(a4 + 16) = v13[0];
  *(a4 + 32) = v10;
  result = v13[3];
  *(a4 + 48) = v13[2];
  *(a4 + 64) = result;
  return result;
}

void sub_1C5A36CB8(uint64_t a1)
{
  swift_getKeyPath();
  v17 = v1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v4 = sub_1C5A39E2C(v3, a1);

  if ((v4 & 1) == 0)
  {
    sub_1C5A37D8C(0);
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C5BC7D64();
    __swift_project_value_buffer(v5, qword_1EDA5DA78);

    v6 = sub_1C5BC7D44();
    v7 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446466;
      sub_1C5A36B84();
      v10 = sub_1C5BCACC4();
      v12 = sub_1C592ADA8(v10, v11, &v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      swift_getKeyPath();
      sub_1C5BC7B74();

      v13 = sub_1C5BCACC4();
      v15 = v14;

      v16 = sub_1C592ADA8(v13, v15, &v17);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1C5922000, v6, v7, "Content availability changing from %{public}s to %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v9, -1, -1);
      MEMORY[0x1C69510F0](v8, -1, -1);
    }
  }
}

uint64_t sub_1C5A36F88()
{
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();
}

uint64_t sub_1C5A3702C(uint64_t a1)
{

  v4 = sub_1C5A39E2C(v3, a1);

  if (v4)
  {
    v5 = *(v1 + 16);
    *(v1 + 16) = a1;
    sub_1C5A36CB8(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A3718C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v3;
}

uint64_t sub_1C5A37238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;

  v6[0] = v3;
  v6[1] = v4;
  sub_1C5936674(v6);
}

uint64_t sub_1C5A37294(_OWORD *a1)
{
  *(v1 + 40) = *a1;
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  swift_getKeyPath();

  sub_1C5BC7B74();

  sub_1C5BC7F34();
}

uint64_t sub_1C5A373E4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v3 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v3;
}

uint64_t sub_1C5A37490(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);

  LOBYTE(v4) = sub_1C5934068(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v8 = v1;
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B64();
  }

  else
  {
    *&v8 = v3;
    *(&v8 + 1) = v2;
    return sub_1C5A37294(&v8);
  }
}

uint64_t sub_1C5A375D4()
{
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();
}

uint64_t sub_1C5A37678(uint64_t a1)
{
  if (*(v1 + 56) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A377B0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_1C593E7D8(v3, v4);
}

uint64_t sub_1C5A37864(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  sub_1C593E7D8(v6, v7);
  v10 = sub_1C5A3A0AC(v6, v7, v8, v9, v2, v3, v4, v5);
  sub_1C593E820(v6, v7);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B64();
    sub_1C593E820(v2, v3);
  }

  else
  {
    v13 = v1[8];
    v14 = v1[9];
    v1[8] = v2;
    v1[9] = v3;
    v1[10] = v4;
    v1[11] = v5;

    return sub_1C593E820(v13, v14);
  }
}

uint64_t sub_1C5A37A28()
{
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  return swift_weakLoadStrong();
}

uint64_t sub_1C5A37ACC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1C5A37B78()
{
  swift_getKeyPath();
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B64();
}

uint64_t sub_1C5A37C44(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  swift_getKeyPath();
  v8[0] = v2;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v6 = *(v2 + 32);
  if (!v6)
  {
    if (!v5)
    {
    }

    goto LABEL_8;
  }

  if (!v5)
  {
LABEL_8:

LABEL_9:
    v8[0] = v4;
    v8[1] = v5;

    sub_1C592F69C(v8);
    return sub_1C5A37D8C(a2 & 1);
  }

  result = *(v2 + 24);
  if (result != v4 || v6 != v5)
  {
    result = sub_1C5BCBDE4();
    if ((result & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_1C5A37D8C(char a1)
{
  swift_getKeyPath();
  v10 = v1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  v3 = v1[4];
  if (v3)
  {
    v4 = v1[3];
    swift_getKeyPath();
    v10 = v1;

    sub_1C5BC7B74();

    v5 = v1[2];
    if (*(v5 + 16))
    {

      v6 = sub_1C596FBD8(v4, v3);
      if (v7)
      {
        v8 = *(*(v5 + 56) + v6);

        if (v8)
        {
          v10 = v4;
          v11 = v3;
          sub_1C5A37F00(&v10, a1 & 1);
        }
      }

      else
      {
      }
    }
  }

  v10 = 0;
  v11 = 0;
  return sub_1C5A37F00(&v10, a1 & 1);
}

uint64_t sub_1C5A37F00(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = sub_1C5BCAC14();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C5BCAC44();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BCAC04();
  v69 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v68 = (&v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v67 = (&v64 - v12);
  v78 = sub_1C5BCAC64();
  v70 = *(v78 - 8);
  v13 = MEMORY[0x1EEE9AC00](v78);
  v66 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v64 - v15;
  v17 = *a1;
  v16 = a1[1];
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C5BC7D64();
  __swift_project_value_buffer(v18, qword_1EDA5DA78);

  v19 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v19, v20))
  {
    v65 = v9;
    v21 = v17;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&aBlock = v23;
    *v22 = 136446722;
    swift_getKeyPath();
    v79 = v3;
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
    sub_1C5BC7B74();

    v24 = v3[6];
    if (v24)
    {
      v25 = v3[5];
    }

    else
    {

      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    v32 = sub_1C592ADA8(v25, v24, &aBlock);

    *(v22 + 4) = v32;
    *(v22 + 12) = 2082;
    if (v16)
    {
      v33 = v21;
    }

    else
    {
      v33 = 7104878;
    }

    if (v16)
    {
      v34 = v16;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_1C592ADA8(v33, v34, &aBlock);
    v17 = v21;

    *(v22 + 14) = v35;
    *(v22 + 22) = 1024;
    *(v22 + 24) = a2 & 1;
    _os_log_impl(&dword_1C5922000, v19, v20, "Displayed content changing from %{public}s to %{public}s, animated=%{BOOL}d", v22, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v23, -1, -1);
    MEMORY[0x1C69510F0](v22, -1, -1);

    v9 = v65;
    if (a2)
    {
LABEL_18:
      swift_getKeyPath();
      *&aBlock = v3;
      sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
      sub_1C5BC7B74();

      v36 = v3[6];
      if (v36)
      {
        if (v16)
        {
          result = v3[5];
          if (result == v17 && v36 == v16)
          {
            return result;
          }

          result = sub_1C5BCBDE4();
          if (result)
          {
            return result;
          }

          goto LABEL_37;
        }
      }

      else if (!v16)
      {
      }

LABEL_37:
      swift_getKeyPath();
      *&aBlock = v3;
      sub_1C5BC7B74();

      if (v3[9] == 1)
      {
        swift_getKeyPath();
        *&aBlock = v3;
        sub_1C5BC7B74();

        v48 = v3[6];
        *&aBlock = v3[5];
        *(&aBlock + 1) = v48;
        v81 = v17;
        v82 = v16;

        sub_1C5A37864(&aBlock);
        sub_1C5929CA0();
        v65 = sub_1C5BCB5A4();
        v49 = v66;
        sub_1C5BCAC54();
        v50 = v67;
        *v67 = 600;
        v51 = v69;
        (*(v69 + 104))(v50, *MEMORY[0x1E69E7F38], v9);
        v52 = v68;
        sub_1C5B01834(v68);
        v53 = *(v51 + 8);
        v53(v50, v9);
        MEMORY[0x1C694EEB0](v49, v52);
        v53(v52, v9);
        v69 = *(v70 + 8);
        (v69)(v49, v78);
        v54 = swift_allocObject();
        v54[2] = v3;
        v54[3] = v17;
        v70 = v17;
        v54[4] = v16;
        v83 = sub_1C5A3A2AC;
        v84 = v54;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v81 = sub_1C596D09C;
        v82 = &block_descriptor_8;
        v55 = _Block_copy(&aBlock);

        v56 = v71;
        sub_1C5BCAC34();
        v79 = MEMORY[0x1E69E7CC0];
        sub_1C5933F04(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
        sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
        v57 = v73;
        v58 = v76;
        sub_1C5BCB8F4();
        v59 = v77;
        v60 = v65;
        MEMORY[0x1C694F7C0](v77, v56, v57, v55);
        _Block_release(v55);

        (*(v75 + 8))(v57, v58);
        (*(v72 + 8))(v56, v74);
        (v69)(v59, v78);

        if (qword_1EC1905C8 != -1)
        {
          v61 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v61);
        v62 = v70;
        *(&v64 - 4) = v3;
        *(&v64 - 3) = v62;
        *(&v64 - 2) = v16;

        sub_1C596D96C(v63, 1);
      }

      return result;
    }
  }

  else
  {

    if (a2)
    {
      goto LABEL_18;
    }
  }

  v26 = qword_1EC1A6D00;
  if (qword_1EC1A6D00)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = *(v26 + 40);
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 24);

      v31(ObjectType, v29);
    }

    else
    {
    }
  }

  swift_getKeyPath();
  *&aBlock = v3;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v38 = *(result + 104);

  KeyPath = swift_getKeyPath();
  v40 = swift_getKeyPath();
  sub_1C5971FE0(0, v38, KeyPath, v40);
  v41 = v3[5];
  v42 = v3[6];

  LOBYTE(v41) = sub_1C5934068(v41, v42, v17, v16);

  if (v41)
  {
    v43 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v43);
    *(&v64 - 4) = v3;
    *(&v64 - 3) = v17;
    *(&v64 - 2) = v16;
    *&aBlock = v3;
    sub_1C5BC7B64();

    if (!v26)
    {
      return result;
    }
  }

  else
  {
    *&aBlock = v17;
    *(&aBlock + 1) = v16;
    result = sub_1C5A37294(&aBlock);
    if (!v26)
    {
      return result;
    }
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    v46 = *(v26 + 40);
    v47 = swift_getObjectType();
    (*(v46 + 16))(v47, v46);
  }
}

uint64_t sub_1C5A38AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = xmmword_1C5BDB910;
  v11 = 0;
  v12 = 0;
  result = sub_1C5A37864(&v10);
  if (a3)
  {
    v5 = qword_1EC1A6D00;
    if (qword_1EC1A6D00)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v6 = result;
        v7 = *(v5 + 40);
        ObjectType = swift_getObjectType();
        v9 = *(v7 + 16);

        v9(ObjectType, v7);
      }
    }
  }

  return result;
}

uint64_t sub_1C5A38BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_1EC1A6D00;
  if (qword_1EC1A6D00)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 24);

      v11(ObjectType, v9);
    }

    else
    {
    }
  }

  swift_getKeyPath();
  *&v19 = a1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 104);

    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();
    sub_1C5971FE0(0, v13, KeyPath, v15);
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);

    LOBYTE(KeyPath) = sub_1C5934068(v17, v16, a2, a3);

    if (KeyPath)
    {
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      *&v19 = a1;
      sub_1C5BC7B64();
    }

    else
    {
      *&v19 = a2;
      *(&v19 + 1) = a3;
      sub_1C5A37294(&v19);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A38E24()
{

  sub_1C593E820(*(v0 + 64), *(v0 + 72));
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel13HostedContent___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A38EFC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194480);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = v1[1];
  v25 = *v1;
  v26 = v7;
  v9 = *v1;
  v8 = v1[1];
  *v27 = v1[2];
  *&v27[15] = *(v1 + 47);
  v22 = v9;
  v23 = v8;
  v24[0] = v1[2];
  *(v24 + 15) = *(v1 + 47);
  v10 = sub_1C5A394DC();
  v20 = a1;
  v21 = v4;
  v19 = v3;
  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_9;
    }
  }

  else if ((v27[18] & 1) == 0)
  {
    v10 = sub_1C5BCAA84();
    goto LABEL_9;
  }

  if (qword_1EDA45F90 != -1)
  {
    swift_once();
  }

LABEL_9:
  MEMORY[0x1EEE9AC00](v10);
  *(&v18 - 2) = &v25;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194488);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194490);
  v13 = sub_1C5924F54(&qword_1EC194498, &qword_1EC194488);
  v14 = sub_1C5A3A674();
  sub_1C5BCA374();

  v22 = v25;
  v23 = v26;
  v24[0] = *v27;
  *(v24 + 15) = *&v27[15];
  v15 = sub_1C5A394DC();
  v16 = v19;
  if (v15 < 2u)
  {
    sub_1C5BCAA84();
    sub_1C5BCAAB4();
  }

  MEMORY[0x1EEE9AC00](v15);
  *(&v18 - 2) = &v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944C8);
  *&v22 = v11;
  *(&v22 + 1) = v12;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_1C5A3A7C0();
  sub_1C5BCA374();

  return (*(v21 + 8))(v6, v16);
}

uint64_t sub_1C5A39308@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944B0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = *(a2 + 49);
  if ((v9 & 1) != 0 && (v10 = a2[1], v22 = *a2, v23 = v10, v24[0] = a2[2], *(v24 + 15) = *(a2 + 47), !sub_1C5A394DC()))
  {
    v11 = 0.9;
  }

  else
  {
    v11 = 1.0;
  }

  sub_1C5BCABD4();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944C0);
  (*(*(v16 - 8) + 16))(v8, a1, v16);
  v17 = &v8[*(v6 + 36)];
  *v17 = v11;
  v17[1] = v11;
  *(v17 + 2) = v13;
  *(v17 + 3) = v15;
  v18 = 0.0;
  if (v9)
  {
    v19 = a2[1];
    v22 = *a2;
    v23 = v19;
    v24[0] = a2[2];
    *(v24 + 15) = *(a2 + 47);
    if (sub_1C5A394DC() == 1)
    {
      if (*(a2 + 50))
      {
        v18 = 0.95;
      }

      else
      {
        v18 = 0.99;
      }
    }
  }

  sub_1C5A3A878(v8, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194490);
  v21 = a3 + *(result + 36);
  *v21 = 0;
  *(v21 + 8) = v18;
  return result;
}

uint64_t sub_1C5A394DC()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  LODWORD(v3) = *(v0 + 32);
  v9 = *(v0 + 40);
  v20 = *(v0 + 48);
  if (v3 == 1)
  {
    sub_1C593E7D8(v5, v6);
    if (v6 == 1)
    {
      return 2;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC4C(v5, v6, v8, v7, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v22;
    v6 = v23;
    v7 = v24;
    if (v23 == 1)
    {
      return 2;
    }
  }

  v19 = v1;
  if (v20)
  {
    v12 = v2;
    v22 = v9;

    v13 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    v12 = v2;
    (*(v2 + 8))(v4, v19);
    v13 = v22;
  }

  swift_getKeyPath();
  v21 = v13;
  v18 = sub_1C5933F04(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  v15 = *(v13 + 104);

  if ((v15 & 0xFF0000) != 0x40000)
  {
    if (BYTE2(v15) <= 1u)
    {
      if (!BYTE2(v15) && v6)
      {

        sub_1C593E820(v5, v6);
        if (v7)
        {

          return 0;
        }

        return 1;
      }

LABEL_20:
      sub_1C593E820(v5, v6);
      return 1;
    }

    if (BYTE2(v15) != 2)
    {
      goto LABEL_20;
    }

    sub_1C593E820(v5, v6);

    if ((v20 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v16 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v12 + 8))(v4, v19);
      v9 = v21;
    }

    swift_getKeyPath();
    v21 = v9;
    sub_1C5BC7B74();

    v17 = *(v9 + 48);

    if (v17 != 1)
    {
      return 0;
    }

    return 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A39910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 49))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944E0);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944C8);
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1C5A399B8()
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for WindowProperties();
  sub_1C5933F04(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  v18 = KeyPath;
  v19 = 0uLL;
  v20[0] = 0;
  *&v20[8] = sub_1C5BC8324();
  v20[16] = v1 & 1;
  *&v20[17] = 257;
  v15 = swift_getKeyPath();
  v16 = 0uLL;
  v17[0] = 0;
  *&v17[8] = sub_1C5BC8324();
  v17[16] = v2 & 1;
  *&v17[17] = 256;
  sub_1C5A3A4D0();
  sub_1C5BC8654();
  v11[0] = v15;
  v11[1] = 0uLL;
  v12[0] = *v17;
  *(v12 + 15) = *&v17[15];
  sub_1C5A3A524(v11);
  v13[0] = v18;
  v13[1] = v19;
  v14[0] = *v20;
  *(v14 + 15) = *&v20[15];
  sub_1C5A3A524(v13);
  v3 = swift_getKeyPath();
  v10[0] = 0;
  *&v10[8] = sub_1C5BC8324();
  v10[16] = v4 & 1;
  *&v10[17] = 1;
  v5 = swift_getKeyPath();
  v9[0] = 0;
  *&v9[8] = sub_1C5BC8324();
  v9[16] = v6 & 1;
  sub_1C5BC8654();
  v15 = v5;
  v16 = 0uLL;
  *v17 = *v9;
  *&v17[15] = *&v9[15];
  sub_1C5A3A524(&v15);
  v18 = v3;
  v19 = 0uLL;
  *v20 = *v10;
  *&v20[15] = *&v10[15];
  sub_1C5A3A524(&v18);
  v7 = sub_1C5BC85F4();

  return v7;
}

uint64_t sub_1C5A39C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A3A454(&qword_1EDA47CC8, &qword_1EC194468, &unk_1C5BDBCD0, sub_1C593AA54);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5A39CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A3A454(&qword_1EDA4AE90, &qword_1EC194470, &unk_1C5BEBAC0, sub_1C593AA00);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5A39D70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 58);
  return result;
}

uint64_t sub_1C5A39DB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  return sub_1C5971FE0(v2, v3, KeyPath, v5);
}

uint64_t sub_1C5A39E2C(uint64_t result, uint64_t a2)
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
  v21 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + v12);
    v17 = v14 == 0;

    if (v14)
    {
      v18 = sub_1C596FBD8(v15, v14);
      v20 = v19;

      if ((v20 & 1) != 0 && v16 == *(*(a2 + 56) + v18))
      {
        continue;
      }
    }

    return v17;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v21 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C5A39F84(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a2[1];
  v5 = a2[2];
  v7 = a2[3];
  if (!v2)
  {
    if (v6)
    {
      goto LABEL_19;
    }

    if (v4)
    {
LABEL_9:
      if (v7)
      {
        return v3 == v5 && v4 == v7 || (sub_1C5BCBDE4() & 1) != 0;
      }

LABEL_19:

      return 0;
    }

LABEL_18:
    if (!v7)
    {

      return 1;
    }

    goto LABEL_19;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = *a1 == *a2 && v2 == v6;
  if (v8 || (v9 = sub_1C5BCBDE4(), result = 0, (v9 & 1) != 0))
  {
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1C5A3A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    v16[0] = a1;
    v16[1] = a2;
    v16[2] = a3;
    v16[3] = a4;
    if (a6 != 1)
    {
      v15[0] = a5;
      v15[1] = a6;
      v15[2] = a7;
      v15[3] = a8;
      sub_1C593E7D8(a1, a2);
      sub_1C593E7D8(a5, a6);
      sub_1C593E7D8(a1, a2);
      v13 = sub_1C5A39F84(v16, v15);

      sub_1C593E820(a1, a2);
      v12 = !v13;
      return v12 & 1;
    }

    sub_1C593E7D8(a1, a2);
    sub_1C593E7D8(a5, 1);
    sub_1C593E7D8(a1, a2);

    goto LABEL_7;
  }

  sub_1C593E7D8(a1, 1);
  if (a6 != 1)
  {
    sub_1C593E7D8(a5, a6);
LABEL_7:
    sub_1C593E820(a1, a2);
    sub_1C593E820(a5, a6);
    v12 = 1;
    return v12 & 1;
  }

  sub_1C593E7D8(a5, 1);
  sub_1C593E820(a1, 1);
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1C5A3A2D8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[8];
  v7 = v2[9];
  v2[8] = v1;
  v2[9] = v3;
  v2[10] = v4;
  v2[11] = v5;
  sub_1C593E7D8(v1, v3);
  return sub_1C593E820(v6, v7);
}

uint64_t sub_1C5A3A340()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_1C5A3A37C()
{
  v1 = *(v0 + 32);
  *&v3 = *(v0 + 24);
  *(&v3 + 1) = v1;

  return sub_1C5A37294(&v3);
}

uint64_t sub_1C5A3A3E4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);

  sub_1C5A36CB8(v2);
}

uint64_t sub_1C5A3A454(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C5A3A4D0()
{
  result = qword_1EC194478;
  if (!qword_1EC194478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194478);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI19NowPlayingViewModelC13HostedContentC10TransitionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C5A3A5A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 51))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1C5A3A5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C5A3A674()
{
  result = qword_1EC1944A0;
  if (!qword_1EC1944A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194490);
    sub_1C5A3A700();
    sub_1C5A25B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1944A0);
  }

  return result;
}

unint64_t sub_1C5A3A700()
{
  result = qword_1EC1944A8;
  if (!qword_1EC1944A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944B0);
    sub_1C5924F54(&qword_1EC1944B8, &qword_1EC1944C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1944A8);
  }

  return result;
}

unint64_t sub_1C5A3A7C0()
{
  result = qword_1EC1944D0;
  if (!qword_1EC1944D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944C8);
    sub_1C5924F54(&qword_1EC1944D8, &qword_1EC1944E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1944D0);
  }

  return result;
}

uint64_t sub_1C5A3A878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LibraryStandardButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  sub_1C5BC9564();
  v2 = sub_1C5BCAA54();
  v4 = v3;
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944E8) + 36));
  *v5 = sub_1C5A3A9C8;
  v5[1] = 0;
  v5[2] = v2;
  v5[3] = v4;
  v6 = sub_1C5A3AA60();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944F0);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_1C5A3A9C8@<X0>(void *a1@<X8>)
{
  sub_1C5BC86C4();
  *a1 = v2;
  a1[1] = v3;
  type metadata accessor for BackgroundCapsule();
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  sub_1C5A3B53C();
  return sub_1C5BC84C4();
}

double sub_1C5A3AA60()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    result = 0.25;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v5, 0);
    (*(v2 + 8))(v4, v1);
    result = 0.25;
    if (v9[15] != 1)
    {
      return result;
    }
  }

  v8 = sub_1C5BC9574();
  result = 1.0;
  if (v8)
  {
    return 0.5;
  }

  return result;
}

uint64_t sub_1C5A3ABE0@<X0>(uint64_t a1@<X8>)
{
  sub_1C5BC9564();
  v2 = sub_1C5BCAA54();
  v4 = v3;
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944E8) + 36));
  *v5 = sub_1C5A3A9C8;
  v5[1] = 0;
  v5[2] = v2;
  v5[3] = v4;
  v6 = sub_1C5A3AA60();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944F0);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_1C5A3ACA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194540);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194548);
  MEMORY[0x1EEE9AC00](v34);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194550);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194558);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1C5BC9044();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  v18 = [objc_opt_self() tertiarySystemFillColor];
  v19 = sub_1C5BCA424();
  v20 = *(v5 + 44);
  v35 = v7;
  *&v7[v20] = v19;
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  v21 = *(type metadata accessor for BackgroundCapsule() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518);
  sub_1C5BC84D4();
  v33[2] = v21;
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C59E7D34(v35, v9, &qword_1EC194540);
  v22 = &v9[*(v34 + 36)];
  v23 = v41;
  *(v22 + 4) = v40;
  *(v22 + 5) = v23;
  *(v22 + 6) = v42;
  v24 = v37;
  *v22 = v36;
  *(v22 + 1) = v24;
  v25 = v39;
  *(v22 + 2) = v38;
  *(v22 + 3) = v25;
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  sub_1C59E7D34(v9, v12, &qword_1EC194548);
  v26 = &v12[*(v10 + 36)];
  v27 = v44;
  *v26 = v43;
  *(v26 + 1) = v27;
  *(v26 + 2) = v45;
  if (qword_1EC190908 != -1)
  {
    swift_once();
  }

  v28 = qword_1EC1A6DA8;
  v29 = *v2;
  v30 = v2[1];
  sub_1C59E7D34(v12, v15, &qword_1EC194550);
  v31 = &v15[*(v13 + 36)];
  *v31 = v28;
  v31[1] = v29;
  v31[2] = v30;
  sub_1C59E7D34(v15, a1, &qword_1EC194558);
}

uint64_t static MCUINamespace<A>.libraryStandard.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1C5A3B1F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8EC4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1C5A3B274()
{
  result = qword_1EC1944F8;
  if (!qword_1EC1944F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944F0);
    sub_1C5A3B300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1944F8);
  }

  return result;
}

unint64_t sub_1C5A3B300()
{
  result = qword_1EC194500;
  if (!qword_1EC194500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944E8);
    sub_1C5A3B864(&qword_1EDA46200, MEMORY[0x1E697C8D0]);
    sub_1C5924F54(&qword_1EC194508, &qword_1EC194510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194500);
  }

  return result;
}

uint64_t type metadata accessor for BackgroundCapsule()
{
  result = qword_1EC194520;
  if (!qword_1EC194520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5A3B45C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1C5A3B4E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5A3B4E0()
{
  if (!qword_1EC194530)
  {
    sub_1C5A3B53C();
    v0 = sub_1C5BC84E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC194530);
    }
  }
}

unint64_t sub_1C5A3B53C()
{
  result = qword_1EC194538;
  if (!qword_1EC194538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194538);
  }

  return result;
}

unint64_t sub_1C5A3B5AC()
{
  result = qword_1EC194560;
  if (!qword_1EC194560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194558);
    sub_1C5A3B664();
    sub_1C5924F54(&qword_1EC194580, &qword_1EC194588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194560);
  }

  return result;
}

unint64_t sub_1C5A3B664()
{
  result = qword_1EC194568;
  if (!qword_1EC194568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194550);
    sub_1C5A3B6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194568);
  }

  return result;
}

unint64_t sub_1C5A3B6F0()
{
  result = qword_1EC194570;
  if (!qword_1EC194570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194548);
    sub_1C5A3B77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194570);
  }

  return result;
}

unint64_t sub_1C5A3B77C()
{
  result = qword_1EC194578;
  if (!qword_1EC194578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194540);
    sub_1C5A3B864(&qword_1EDA45F98, MEMORY[0x1E6981998]);
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194578);
  }

  return result;
}

uint64_t sub_1C5A3B864(unint64_t *a1, void (*a2)(uint64_t))
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

AudioQueueBufferRef sub_1C5A3B8AC(void *a1, OpaqueAudioQueue *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 streamDescription];
  v8 = v7[5] * v7[6];
  if ((v8 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a5))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v9 = a5 * v8;
  if ((v9 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_12;
  }

  v13[0] = 0;
  Buffer = AudioQueueAllocateBuffer(a2, v9, v13);
  if (Buffer || (result = v13[0]) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194590);
    sub_1C5A3B9C4();
    swift_allocError();
    *v11 = 3;
    *(v11 + 4) = Buffer;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C5A3B9C4()
{
  result = qword_1EC194598;
  if (!qword_1EC194598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194598);
  }

  return result;
}

AudioQueueRef sub_1C5A3BA28(void *a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v2 = AudioQueueNewInput([a1 streamDescription], sub_1C5ACC00C, a2, 0, 0, 0x800u, v5);
  if (v2 || (result = v5[0]) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194590);
    sub_1C5A3B9C4();
    swift_allocError();
    *v3 = 1;
    *(v3 + 4) = v2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C5A3BB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  _s24HeaderArtworkPlaceholderVMa();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s32HeaderMetadataAndContextMenuViewVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194858);
  _s19TrackSectionsButtonVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v5 = sub_1C5BCA7D4();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v41 = _s28TrackSectionsPlatterModifierVMa();
  v43 = sub_1C5BC8AB4();
  v49 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v40 - v8;
  v46 = sub_1C5BC8AB4();
  v51 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v40 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98);
  v48 = sub_1C5BC8AB4();
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v40 - v11;
  v12 = sub_1C5BC8AB4();
  v53 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v40 - v15;
  v56 = v4;
  v57 = v3;
  v58 = v54;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  v16 = sub_1C5A3D634();
  v18 = v17;
  *&v70 = v16;
  BYTE8(v70) = v19 & 1;
  *&v71 = v17;
  v21 = v20 & 1;
  BYTE8(v71) = v20 & 1;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C694E550](&v70, v5, v41, WitnessTable);

  sub_1C5942458(v18, v21);
  (*(v45 + 8))(v7, v5);
  KeyPath = swift_getKeyPath();
  v69 = 0;
  *&v67[0] = KeyPath;
  v68[25] = 0;
  v24 = swift_getWitnessTable();
  v65 = WitnessTable;
  v66 = v24;
  v25 = v43;
  v26 = swift_getWitnessTable();
  v27 = v42;
  MEMORY[0x1C694E550](v67, v25, &type metadata for HoveringHeaderPadding, v26);
  v72 = v67[2];
  v73[0] = *v68;
  *(v73 + 10) = *&v68[10];
  v70 = v67[0];
  v71 = v67[1];
  sub_1C5A47B68(&v70);
  (*(v49 + 8))(v9, v25);
  sub_1C5A3D6D4();
  v28 = sub_1C5A47B98();
  v63 = v26;
  v64 = v28;
  v29 = v46;
  v30 = swift_getWitnessTable();
  v31 = v44;
  sub_1C5BC9D74();

  (*(v51 + 8))(v27, v29);
  sub_1C5BC98B4();
  v32 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98);
  v61 = v30;
  v62 = v32;
  v33 = v48;
  v34 = swift_getWitnessTable();
  v35 = v47;
  sub_1C5BCA2F4();
  (*(v52 + 8))(v31, v33);
  v59 = v34;
  v60 = MEMORY[0x1E697E5D8];
  v36 = swift_getWitnessTable();
  v37 = v50;
  sub_1C593EDC0(v35, v12, v36);
  v38 = *(v53 + 8);
  v38(v35, v12);
  sub_1C593EDC0(v37, v12, v36);
  return (v38)(v37, v12);
}

uint64_t sub_1C5A3C2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a1;
  v122 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194858);
  v107 = _s19TrackSectionsButtonVMa();
  v109 = sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v7 = sub_1C5BCAB74();
  v120 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v88 - v8;
  v9 = sub_1C5BC90F4();
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v98 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v88 - v12;
  v13 = sub_1C5BCAB54();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1C5BCA894();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194868);
  v16 = MEMORY[0x1EEE9AC00](v90);
  v92 = &v88 - v17;
  v123 = v6;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v104 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v91 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v88 - v22;
  v23 = sub_1C5BC8F34();
  v88 = *(v23 - 8);
  v89 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v7;
  v125 = sub_1C5BCB804();
  v118 = *(v125 - 8);
  v26 = MEMORY[0x1EEE9AC00](v125);
  v124 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v119 = &v88 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  _s24HeaderArtworkPlaceholderVMa();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s32HeaderMetadataAndContextMenuViewVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v29 = sub_1C5BCA714();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v88 - v34;
  sub_1C5BC8FC4();
  v105 = a2;
  v106 = a3;
  v126 = a2;
  v127 = a3;
  v36 = v110;
  v128 = v110;
  sub_1C5BCA704();
  WitnessTable = swift_getWitnessTable();
  v116 = v35;
  v112 = WitnessTable;
  sub_1C593EDC0(v33, v29, WitnessTable);
  v113 = v30;
  v38 = *(v30 + 8);
  v117 = v33;
  v111 = v29;
  v114 = v38;
  v115 = v30 + 8;
  v38(v33, v29);
  v39 = *(v36 + 16);
  LOBYTE(v7) = *(v36 + 24);

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v40 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v88 + 8))(v25, v89);
    v39 = v142;
  }

  swift_getKeyPath();
  *&v142 = v39;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v41 = *(v39 + 16);

  if (v41 >> 62)
  {
    v42 = sub_1C5BCB984();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v124;

  if (v42)
  {
    v44 = v93;
    sub_1C5BCA884();
    _s18HoveringHeaderViewVMa();
    v45 = v97;
    sub_1C594C704(v97);
    v47 = v101;
    v46 = v102;
    v48 = v98;
    (*(v101 + 104))(v98, *MEMORY[0x1E697F608], v102);
    v49 = sub_1C5BC8274();
    v50 = *(v47 + 8);
    v50(v48, v46);
    v50(v45, v46);
    v51 = v99;
    v52 = MEMORY[0x1E6981DF0];
    if ((v49 & 1) == 0)
    {
      v52 = MEMORY[0x1E6981DB8];
    }

    v53 = v95;
    v54 = v100;
    (*(v99 + 104))(v95, *v52, v100);
    v55 = v92;
    (*(v51 + 32))(&v92[*(v90 + 36)], v53, v54);
    v56 = v44;
    v43 = v124;
    (*(v94 + 32))(v55, v56, v96);
    LOBYTE(v54) = sub_1C5BC98A4();
    sub_1C5BC8174();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = v91;
    sub_1C59E7D34(v55, v91, &qword_1EC194868);
    v66 = v103;
    v67 = v65 + *(v123 + 36);
    *v67 = v54;
    *(v67 + 8) = v58;
    *(v67 + 16) = v60;
    *(v67 + 24) = v62;
    *(v67 + 32) = v64;
    *(v67 + 40) = 0;
    sub_1C59E7D34(v65, v66, &qword_1EC194858);
    *&v140[0] = sub_1C5A4F994();
    BYTE8(v140[0]) = v68 & 1;
    sub_1C5BC98A4();
    v69 = swift_getWitnessTable();
    sub_1C5BCA2F4();

    v140[0] = v142;
    v140[1] = v143;
    v141[0] = v144[0];
    *(v141 + 9) = *(v144 + 9);
    v134 = v142;
    v135 = v143;
    v136[0] = v144[0];
    *(v136 + 9) = *(v144 + 9);
    v133[2] = v69;
    v133[3] = MEMORY[0x1E697E5D8];
    v70 = v109;
    v71 = swift_getWitnessTable();
    sub_1C593EDC0(&v134, v70, v71);
    v72 = *(*(v70 - 8) + 8);
    v72(v140, v70);
    v73 = v104;
    sub_1C59400B0(v66, v104, &qword_1EC194858);
    v142 = v137;
    v143 = v138;
    v144[0] = v139[0];
    *(v144 + 9) = *(v139 + 9);
    v134 = v137;
    v135 = v138;
    v136[0] = v139[0];
    *(v136 + 9) = *(v139 + 9);
    v133[0] = v73;
    v133[1] = &v134;

    v132[0] = v123;
    v132[1] = v70;
    v130 = sub_1C5A47BF8();
    v131 = v71;
    v74 = v108;
    sub_1C594226C(v133, 2uLL, v132);
    v72(&v142, v70);
    sub_1C5924EF4(v66, &qword_1EC194858);

    sub_1C5924EF4(v73, &qword_1EC194858);
    v75 = v120;
    v76 = v121;
    (*(v120 + 32))(v43, v74, v121);
    (*(v75 + 56))(v43, 0, 1, v76);
  }

  else
  {
    (*(v120 + 56))(v43, 1, 1, v121);
  }

  swift_getWitnessTable();
  v77 = v119;
  sub_1C5941600(v43, v119);
  v78 = v118;
  v123 = *(v118 + 8);
  (v123)(v43, v125);
  v79 = v116;
  v80 = v117;
  v81 = v111;
  (*(v113 + 16))(v117, v116, v111);
  *&v142 = v80;
  v82 = v43;
  v83 = v43;
  v84 = v125;
  (*(v78 + 16))(v82, v77, v125);
  *(&v142 + 1) = v83;
  *&v140[0] = v81;
  *(&v140[0] + 1) = v84;
  *&v137 = v112;
  v129 = swift_getWitnessTable();
  *(&v137 + 1) = swift_getWitnessTable();
  sub_1C594226C(&v142, 2uLL, v140);
  v85 = v123;
  (v123)(v77, v84);
  v86 = v114;
  v114(v79, v81);
  v85(v83, v84);
  return v86(v80, v81);
}

uint64_t sub_1C5A3D084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  *&v31 = _s24HeaderArtworkPlaceholderVMa();
  v28[1] = swift_getWitnessTable();
  v32 = v7;
  v33 = sub_1C5BC8BE4();
  v8 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v37 = sub_1C5BC8AB4();
  v35 = *(v37 - 8);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v34 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v36 = v28 - v11;
  v12 = sub_1C5BCA484();
  if (qword_1EC1906D0 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA54();
  v13 = sub_1C5BC85D4();
  *&v63 = v12;
  *(&v63 + 1) = v58;
  LOBYTE(v64) = v59;
  *(&v64 + 1) = v60;
  LOBYTE(v65[0]) = v61;
  *(v65 + 8) = v62;
  MEMORY[0x1EEE9AC00](v13);
  v28[-4] = a2;
  v28[-3] = a3;
  v29 = a1;
  v28[-2] = a1;
  sub_1C5BCAA54();
  v30 = a2;
  v28[0] = a3;
  v14 = sub_1C594C97C();
  sub_1C5BCA2C4();

  v50 = v55;
  v51 = v56;
  v52 = v57;
  v48[0] = *v53;
  v48[1] = *&v53[16];
  v49 = v54;
  WitnessTable = swift_getWitnessTable();
  v46 = v14;
  v47 = WitnessTable;
  v16 = swift_getWitnessTable();
  v17 = v34;
  sub_1C5BCA094();
  v65[0] = v49;
  v65[1] = v50;
  v65[2] = v51;
  v66 = v52;
  v63 = v48[0];
  v64 = v48[1];
  (*(*(v8 - 8) + 8))(&v63, v8);
  v18 = sub_1C59378F0(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v44 = v16;
  v45 = v18;
  v19 = v37;
  v32 = swift_getWitnessTable();
  v20 = v36;
  sub_1C593EDC0(v17, v19, v32);
  v21 = v35;
  v33 = *(v35 + 8);
  v33(v17, v19);
  sub_1C59498C4(*v29);
  NowPlayingController.sharedViews.getter(v41);
  v39 = v41[0];
  v22 = type metadata accessor for NowPlayingViews();
  NowPlayingViews.metadata.getter(v22, v48);
  swift_unknownObjectRelease();
  v42 = *&v48[0];
  v31 = *(v48 + 8);
  v43 = *(v48 + 8);
  v23 = _s32HeaderMetadataAndContextMenuViewVMa();
  v24 = swift_getWitnessTable();
  sub_1C593EDC0(&v42, v23, v24);

  swift_unknownObjectRelease();
  (*(v21 + 16))(v17, v20, v19);
  *&v48[0] = *v53;
  *(v48 + 8) = *&v53[8];
  v42 = v17;
  *&v43 = v48;
  swift_unknownObjectRetain();

  v41[0] = v19;
  v41[1] = v23;
  v39 = v32;
  v40 = v24;
  sub_1C594226C(&v42, 2uLL, v41);
  swift_unknownObjectRelease();

  v25 = v20;
  v26 = v33;
  v33(v25, v19);

  swift_unknownObjectRelease();
  return v26(v17, v19);
}

uint64_t sub_1C5A3D634()
{
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  v0 = sub_1C5BC8324();
  swift_getKeyPath();
  return v0;
}

uint64_t sub_1C5A3D6D4()
{
  MEMORY[0x1C694C860](0.0, 170.0);
  if (qword_1EDA45F90 != -1)
  {
    swift_once();
  }

  sub_1C5BC8664();

  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  sub_1C5BC8644();

  MEMORY[0x1C694C860](v0, 0.0, 130.0);
  if (qword_1EC1905C8 != -1)
  {
    swift_once();
  }

  sub_1C5BC8664();

  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  sub_1C5BC8644();

  v1 = sub_1C5BC85F4();

  return v1;
}

uint64_t sub_1C5A3D91C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  *(a1 + 16) = sub_1C5BC8324();
  *(a1 + 24) = v3 & 1;
  v4 = *(_s18HoveringHeaderViewVMa() + 40);
  *(a1 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5A3DA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194968);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v46 - v5;
  v49 = sub_1C5BC8F34();
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v62 + 10) = *(v2 + 58);
  v10 = v2[3];
  v61 = v2[2];
  v62[0] = v10;
  v11 = v2[1];
  v59 = *v2;
  v60 = v11;
  v47 = v7;
  if (BYTE9(v62[1]))
  {
    v12 = v2[3];
    v57 = v2[2];
    v58[0] = v12;
    *(v58 + 9) = *(v2 + 57);
    v13 = v2[1];
    v55 = *v2;
    v56 = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = v6;
    v15 = v4;
    v16 = a1;
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    a1 = v16;
    v4 = v15;
    v6 = v14;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v59, &unk_1EC194DE0);
    (*(v7 + 8))(v9, v49);
  }

  v18 = BYTE2(v56);
  v19 = sub_1C5BC9884();
  if (v18 != 2)
  {
    if (BYTE9(v62[1]))
    {
      v57 = v61;
      v58[0] = v62[0];
      *(v58 + 9) = *(v62 + 9);
      v55 = v59;
      v56 = v60;
    }

    else
    {
      v46[1] = v59;

      sub_1C5BCB4E4();
      v20 = v6;
      v21 = v4;
      v22 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v4 = v21;
      v6 = v20;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v59, &unk_1EC194DE0);
      (*(v47 + 8))(v9, v49);
    }

    v53 = v57;
    v54[0] = v58[0];
    *(v54 + 9) = *(v58 + 9);
    v51 = v55;
    v52 = v56;
    DeviceMetrics.padding.getter(&v50);
  }

  sub_1C5BC8174();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194970);
  (*(*(v31 - 8) + 16))(v6, a1, v31);
  v32 = &v6[*(v4 + 36)];
  *v32 = v19;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = sub_1C5BC98A4();
  if (v18 != 2)
  {
    if (BYTE9(v62[1]))
    {
      v57 = v61;
      v58[0] = v62[0];
      *(v58 + 9) = *(v62 + 9);
      v55 = v59;
      v56 = v60;
    }

    else
    {

      sub_1C5BCB4E4();
      v34 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v59, &unk_1EC194DE0);
      (*(v47 + 8))(v9, v49);
    }

    v53 = v57;
    v54[0] = v58[0];
    *(v54 + 9) = *(v58 + 9);
    v51 = v55;
    v52 = v56;
    sub_1C5A48300(&v51);
  }

  sub_1C5BC8174();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v48;
  sub_1C59E7D34(v6, v48, &qword_1EC194968);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194978);
  v45 = v43 + *(result + 36);
  *v45 = v33;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_1C5A3DF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v41 = a2;
  v40 = a1;
  v46 = a8;
  v38 = a6;
  v39 = a7;
  _s28TrackSectionsPlatterModifierVMa();
  swift_getWitnessTable();
  v8 = sub_1C5BC9394();
  v36 = sub_1C5BC8AB4();
  v45 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v37 = v35 - v9;
  v10 = _s28ExpandedTrackSectionsContentVMa();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v63 = v8;
  v64 = v10;
  v65 = WitnessTable;
  v66 = v12;
  type metadata accessor for BackgroundPlatter();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194670);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194678);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  sub_1C5BC8AB4();
  v13 = sub_1C5BCB804();
  v14 = swift_getWitnessTable();
  v15 = sub_1C5924F54(&qword_1EC194680, &qword_1EC194678);
  v61 = v14;
  v62 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
  v59 = v16;
  v60 = v17;
  v58 = swift_getWitnessTable();
  v35[0] = v13;
  v35[1] = swift_getWitnessTable();
  v35[2] = sub_1C5BC92A4();
  v18 = v36;
  v19 = sub_1C5BC8AB4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v35 - v24;
  v26 = v37;
  v27 = v40;
  sub_1C5A45C88(v8, WitnessTable, &type metadata for CollapsedPlatterPositionModifier, sub_1C5A46F28);
  v47 = v38;
  v48 = v39;
  v49 = v41;
  v50 = v42 & 1;
  v51 = v43;
  v52 = v44 & 1;
  v53 = v27;
  sub_1C5BCAA54();
  v28 = sub_1C5A46DF0();
  v56 = WitnessTable;
  v57 = v28;
  v29 = v18;
  v30 = swift_getWitnessTable();
  sub_1C5BC9CE4();
  (*(v45 + 8))(v26, v29);
  v31 = swift_getWitnessTable();
  v54 = v30;
  v55 = v31;
  v32 = swift_getWitnessTable();
  sub_1C593EDC0(v23, v19, v32);
  v33 = *(v20 + 8);
  v33(v23, v19);
  sub_1C593EDC0(v25, v19, v32);
  return (v33)(v25, v19);
}

uint64_t sub_1C5A3E534@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v73 = a5;
  v90 = a4;
  v91 = a3;
  v87 = a8;
  _s28TrackSectionsPlatterModifierVMa();
  swift_getWitnessTable();
  v74 = a7;
  v108 = sub_1C5BC9394();
  v109 = _s28ExpandedTrackSectionsContentVMa();
  WitnessTable = swift_getWitnessTable();
  v111 = swift_getWitnessTable();
  type metadata accessor for BackgroundPlatter();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194670);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v72 = swift_getWitnessTable();
  v12 = sub_1C5BCA7D4();
  v75 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v72 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194678);
  v86 = v12;
  v14 = sub_1C5BC8AB4();
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v72 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  v85 = v14;
  v16 = sub_1C5BC8AB4();
  v81 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v80 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v77 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v78 = &v72 - v21;
  v94 = sub_1C5BC8F34();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C5BCB804();
  v83 = *(v84 - 8);
  v24 = MEMORY[0x1EEE9AC00](v84);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v82 = &v72 - v27;

  v28 = a1;
  v92 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v93 + 8))(v23, v94);
    v28 = v108;
  }

  swift_getKeyPath();
  v108 = v28;
  v88 = sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v30 = *(v28 + 16);

  if (v30 >> 62)
  {
    v31 = sub_1C5BCB984();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31)
  {
    v33 = v92;
    MEMORY[0x1EEE9AC00](v32);
    v34 = v74;
    *(&v72 - 8) = a6;
    *(&v72 - 7) = v34;
    *(&v72 - 6) = v73;
    *(&v72 - 5) = a1;
    *(&v72 - 32) = v35;
    *(&v72 - 3) = v91;
    *(&v72 - 16) = v90 & 1;
    sub_1C5BC9134();
    sub_1C5BCA7C4();

    v36 = a1;
    if ((v33 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v37 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v93 + 8))(v23, v94);
      v36 = v108;
    }

    swift_getKeyPath();
    v108 = v36;
    sub_1C5BC7B74();

    v38 = *(v36 + 56);

    v39 = "layingHoveringHeaderView.swift";
    v40 = 0xD00000000000001DLL;
    if (!v38)
    {
      v40 = 0xD00000000000001ELL;
      v39 = "trackSectionsPlatter.expanded";
    }

    v108 = v40;
    v109 = v39 | 0x8000000000000000;
    v41 = v76;
    if ((v90 & 1) == 0)
    {
      v47 = v91;

      sub_1C5BCB4E4();
      v48 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v47, 0);
      (*(v93 + 8))(v23, v94);
    }

    v42 = v86;
    sub_1C5BC9664();
    sub_1C5BCABD4();
    v49 = swift_getWitnessTable();
    v50 = v89;
    sub_1C5BCA114();

    (*(v75 + 8))(v50, v42);
    if (qword_1EC1906D8 != -1)
    {
      swift_once();
    }

    if ((v92 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v51 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v93 + 8))(v23, v94);
      a1 = v108;
    }

    swift_getKeyPath();
    v108 = a1;
    sub_1C5BC7B74();

    v52 = *(a1 + 56);

    LOBYTE(v108) = v52;
    v53 = sub_1C5924F54(&qword_1EC194680, &qword_1EC194678);
    v106 = v49;
    v107 = v53;
    v54 = v85;
    v55 = swift_getWitnessTable();
    v56 = v77;
    sub_1C5BCA384();
    (*(v79 + 8))(v41, v54);
    v57 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
    v104 = v55;
    v105 = v57;
    v58 = swift_getWitnessTable();
    v59 = v78;
    sub_1C593EDC0(v56, v16, v58);
    v60 = v81;
    v61 = *(v81 + 8);
    v61(v56, v16);
    v62 = v80;
    sub_1C593EDC0(v59, v16, v58);
    v61(v59, v16);
    (*(v60 + 32))(v26, v62, v16);
    (*(v60 + 56))(v26, 0, 1, v16);
  }

  else
  {
    (*(v81 + 56))(v26, 1, 1, v16);
    v43 = swift_getWitnessTable();
    v44 = sub_1C5924F54(&qword_1EC194680, &qword_1EC194678);
    v97 = v43;
    v98 = v44;
    v45 = swift_getWitnessTable();
    v46 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
    v95 = v45;
    v96 = v46;
    swift_getWitnessTable();
  }

  v63 = v82;
  sub_1C5941600(v26, v82);
  v64 = *(v83 + 8);
  v65 = v84;
  v64(v26, v84);
  v66 = swift_getWitnessTable();
  v67 = sub_1C5924F54(&qword_1EC194680, &qword_1EC194678);
  v102 = v66;
  v103 = v67;
  v68 = swift_getWitnessTable();
  v69 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
  v100 = v68;
  v101 = v69;
  v99 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  sub_1C593EDC0(v63, v65, v70);
  return (v64)(v63, v65);
}

uint64_t sub_1C5A3F3D0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a2;
  v48 = a4;
  v50 = a3;
  v51 = a1;
  v52 = a8;
  v45 = a3 & 1;
  v46 = a5;
  v10 = sub_1C5BC8F34();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a7;
  v54 = a6;
  _s28TrackSectionsPlatterModifierVMa();
  swift_getWitnessTable();
  v12 = sub_1C5BC9394();
  v49 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v39 - v13;
  v14 = _s28ExpandedTrackSectionsContentVMa();
  WitnessTable = swift_getWitnessTable();
  v43 = WitnessTable;
  v42 = swift_getWitnessTable();
  *&v82 = v12;
  *(&v82 + 1) = v14;
  *&v83 = WitnessTable;
  *(&v83 + 1) = v42;
  v16 = type metadata accessor for BackgroundPlatter();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  v20 = sub_1C5BC8AB4();
  v55 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v39 - v24;
  v26 = v44;
  (*(v49 + 16))(v44, v51, v12);
  v56 = v54;
  v57 = v53;
  sub_1C5A3FCB0(v26, sub_1C5A46E68, v12, v19);
  v27 = swift_getWitnessTable();
  sub_1C5BC9F24();
  (*(v17 + 8))(v19, v16);
  v28 = v20;
  v29 = sub_1C5924F54(&qword_1EDA462C0, &qword_1EC1943F0);
  v90 = v27;
  v91 = v29;
  v30 = swift_getWitnessTable();
  v51 = v25;
  v49 = v30;
  sub_1C593EDC0(v23, v20, v30);
  v31 = *(v55 + 8);
  v31(v23, v28);
  v32 = sub_1C5BCAA34();
  v43 = v33;
  v44 = v32;
  LOBYTE(v82) = v45;
  LOBYTE(v74) = v46 & 1;
  v34 = v47;
  sub_1C5A3FDEC(v47, v45, &v82);
  v99 = v86;
  v100 = v87;
  v101[0] = v88[0];
  *(v101 + 10) = *(v88 + 10);
  v95 = v82;
  v96 = v83;
  v97 = v84;
  v98 = v85;
  v102[0] = v82;
  v102[1] = v83;
  v102[2] = v84;
  v102[3] = v85;
  v102[4] = v86;
  v102[5] = v87;
  v103[0] = v88[0];
  *(v103 + 10) = *(v88 + 10);
  sub_1C59400B0(&v95, &v74, &qword_1EC194690);
  sub_1C5924EF4(v102, &qword_1EC194690);
  v108 = v99;
  v109 = v100;
  v110[0] = v101[0];
  *(v110 + 10) = *(v101 + 10);
  v104 = v95;
  v105 = v96;
  v106 = v97;
  v107 = v98;

  if ((v50 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v36 = v39;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v40 + 8))(v36, v41);
    v34 = v82;
  }

  swift_getKeyPath();
  *&v82 = v34;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v89[6] = v92;
  *&v89[22] = v93;
  *&v89[38] = v94;
  *&v74 = v44;
  *(&v74 + 1) = v43;
  v79 = v108;
  v80 = v109;
  v81[0] = v110[0];
  *(v81 + 10) = *(v110 + 10);
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v78 = v107;
  *(&v81[4] + 1) = *(&v94 + 1);
  *(&v81[3] + 10) = *&v89[32];
  *(&v81[2] + 10) = *&v89[16];
  *(&v81[1] + 10) = *v89;
  v37 = v51;
  (*(v55 + 16))(v23, v51, v28);
  v69 = v81[1];
  v70 = v81[2];
  v71 = v81[3];
  v72 = v81[4];
  v65 = v78;
  v66 = v79;
  v67 = v80;
  v68 = v81[0];
  v61 = v74;
  v62 = v75;
  v63 = v76;
  v64 = v77;
  v73[0] = v23;
  v73[1] = &v61;
  sub_1C59400B0(&v74, &v82, &qword_1EC194670);
  v60[0] = v28;
  v60[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194670);
  v58 = v49;
  v59 = sub_1C5A46E70();
  sub_1C594226C(v73, 2uLL, v60);
  sub_1C5924EF4(&v74, &qword_1EC194670);
  v31(v37, v28);
  v88[2] = v69;
  v88[3] = v70;
  v88[4] = v71;
  v88[5] = v72;
  v86 = v65;
  v87 = v66;
  v88[0] = v67;
  v88[1] = v68;
  v82 = v61;
  v83 = v62;
  v84 = v63;
  v85 = v64;
  sub_1C5924EF4(&v82, &qword_1EC194670);
  return (v31)(v23, v28);
}

uint64_t sub_1C5A3FBE0()
{
  KeyPath = swift_getKeyPath();
  v4 = 0;
  v0 = _s28ExpandedTrackSectionsContentVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&KeyPath, v0, WitnessTable);
  sub_1C5942458(KeyPath, v4);
  KeyPath = v5;
  v4 = v6;
  sub_1C593EDC0(&KeyPath, v0, WitnessTable);
  return sub_1C5942458(KeyPath, v4);
}

uint64_t sub_1C5A3FCB0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = a4 + *(type metadata accessor for BackgroundPlatter() + 56);
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  *v8 = sub_1C5BC8324();
  *(v8 + 8) = v9 & 1;
  v10 = *(a3 - 8);
  v11 = (*(v10 + 16))(a4, a1, a3);
  a2(v11);
  return (*(v10 + 8))(a1, a3);
}

uint64_t sub_1C5A3FDEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  v10 = sub_1C5BC8324();
  v32 = v11;
  _s5DebugCMa();
  sub_1C59378F0(&qword_1EDA4A208, _s5DebugCMa);
  v12 = sub_1C5BC8C84();
  v31 = v13;
  if (a2)
  {
    v42 = a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    v30 = v10;
    v15 = v6;
    v16 = v14;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    v17 = v15;
    v10 = v30;
    (*(v7 + 8))(v9, v17);
    a1 = v42;
  }

  swift_getKeyPath();
  v36[0] = a1;
  sub_1C5BC7B74();

  v18 = *(a1 + 56);

  if (v18 == 1)
  {
    _s17TransportControlsCMa();
    sub_1C59378F0(&qword_1EDA4A620, _s17TransportControlsCMa);
    v19 = sub_1C5BC8C84();
    v21 = v20;
    KeyPath = swift_getKeyPath();
    LOBYTE(v36[0]) = 0;
  }

  else
  {
    v21 = 0;
    KeyPath = 0;
    v19 = 1;
  }

  v23 = v32 & 1;
  v33[96] = v32 & 1;
  *&v34 = v19;
  *(&v34 + 1) = v21;
  *&v35[0] = KeyPath;
  *(v35 + 8) = 0u;
  *(&v35[1] + 8) = 0u;
  *(&v35[2] + 8) = 0u;
  *(&v35[3] + 8) = 0u;
  WORD4(v35[4]) = 0;
  *a3 = v10;
  *(a3 + 8) = v23;
  v24 = v31;
  *(a3 + 16) = v12;
  *(a3 + 24) = v24;
  v25 = v35[0];
  *(a3 + 32) = v34;
  *(a3 + 48) = v25;
  v26 = v35[1];
  v27 = v35[2];
  v28 = v35[3];
  *(a3 + 106) = *(&v35[3] + 10);
  *(a3 + 80) = v27;
  *(a3 + 96) = v28;
  *(a3 + 64) = v26;
  v36[0] = v19;
  v36[1] = v21;
  v36[2] = KeyPath;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v41 = 0;

  sub_1C59400B0(&v34, v33, qword_1EC1946B0);
  sub_1C5924EF4(v36, qword_1EC1946B0);
}

uint64_t sub_1C5A401C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = *(a1 + 16);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v5 = *(a1 + 24);
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1C5BCA7D4();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194908);
  v9 = sub_1C5BC8AB4();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910);
  v12 = sub_1C5BC8AB4();
  v32 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v28 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v26 - v15;
  *&v16 = v4;
  *(&v16 + 1) = v5;
  v40 = v2;
  v26 = *(a1 + 32);
  v38 = v16;
  v39 = v26;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  v34 = v4;
  v35 = v5;
  v36 = v26;
  v37 = v2;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194918);
  v17 = swift_getWitnessTable();
  sub_1C5A480B8();
  sub_1C5BC9CE4();
  (*(v30 + 8))(v8, v6);
  v18 = sub_1C5924F54(&qword_1EC194960, &qword_1EC194908);
  v43 = v17;
  v44 = v18;
  v19 = swift_getWitnessTable();
  v20 = v28;
  sub_1C5BCA2A4();
  (*(v31 + 8))(v11, v9);
  v21 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910);
  v41 = v19;
  v42 = v21;
  v22 = swift_getWitnessTable();
  v23 = v29;
  sub_1C593EDC0(v20, v12, v22);
  v24 = *(v32 + 8);
  v24(v20, v12);
  sub_1C593EDC0(v23, v12, v22);
  return (v24)(v23, v12);
}

uint64_t sub_1C5A406C4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v72 = a6;
  v73 = a1;
  v60 = a3;
  v70 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v52 - v10;
  v55 = sub_1C5BC8F34();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C5BCB804();
  v68 = *(v71 - 8);
  v12 = MEMORY[0x1EEE9AC00](v71);
  v67 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v52 - v14;
  v59 = a2;
  v15 = sub_1C5BC8AB4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = sub_1C5BC8AB4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v52 - v24;
  v58 = a4;
  sub_1C5BCA254();
  v26 = sub_1C5953670();
  v84 = a4;
  v85 = v26;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2E4();
  (*(v16 + 8))(v18, v15);
  v28 = v61;
  v82 = WitnessTable;
  v83 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v66 = v25;
  v30 = v60;
  v63 = v29;
  sub_1C593EDC0(v23, v19, v29);
  v62 = v20;
  v31 = *(v20 + 8);
  v65 = v20 + 8;
  v64 = v31;
  v31(v23, v19);
  v78 = v59;
  v79 = v30;
  v80 = v58;
  v81 = v28;
  v32 = v28;
  v33 = type metadata accessor for BackgroundPlatter();
  v34 = (v73 + *(v33 + 56));
  v35 = *v34;
  LOBYTE(v28) = *(v34 + 8);

  if ((v28 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v36 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v37 = v53;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v54 + 8))(v37, v55);
    v35 = v78;
  }

  swift_getKeyPath();
  v78 = v35;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v38 = v35[56];

  if (v38 == 1)
  {
    v39 = v73 + *(v33 + 52);
    v40 = v56;
    sub_1C593EDC0(v39, v30, v32);
    v41 = v57;
    sub_1C593EDC0(v40, v30, v32);
    v42 = v70;
    (*(v70 + 8))(v40, v30);
    v43 = v67;
    (*(v42 + 32))(v67, v41, v30);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v42 = v70;
    v43 = v67;
  }

  (*(v42 + 56))(v43, v44, 1, v30);
  v45 = v69;
  sub_1C5941600(v43, v69);
  v46 = v68;
  v47 = *(v68 + 8);
  v48 = v71;
  v47(v43, v71);
  v49 = v66;
  (*(v62 + 16))(v23, v66, v19);
  v78 = v23;
  (*(v46 + 16))(v43, v45, v48);
  v79 = v43;
  v77[0] = v19;
  v77[1] = v48;
  v74 = v32;
  v75 = v63;
  v76 = swift_getWitnessTable();
  sub_1C594226C(&v78, 2uLL, v77);
  v47(v45, v48);
  v50 = v64;
  v64(v49, v19);
  v47(v43, v48);
  return v50(v23, v19);
}

uint64_t sub_1C5A40E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v45 = type metadata accessor for BackgroundPlatter();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v45 - v14);
  v16 = *(sub_1C5BC8B84() + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1C5BC9044();
  (*(*(v18 - 8) + 104))(&a6[v16], v17, v18);
  __asm { FMOV            V0.2D, #12.0 }

  *a6 = _Q0;
  sub_1C5BCA494();
  v24 = sub_1C5BCA4B4();

  v25 = *(v10 + 36);
  v26 = *MEMORY[0x1E6981DB8];
  v27 = sub_1C5BCAB54();
  (*(*(v27 - 8) + 104))(v15 + v25, v26, v27);
  *v15 = v24;
  v28 = [objc_opt_self() quaternarySystemFillColor];
  v51 = sub_1C5BCA424();
  sub_1C59400B0(v15, v13, &unk_1EC196170);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);
  v29 = sub_1C5BC85E4();
  v30 = sub_1C5BC85E4();
  sub_1C5924EF4(v15, &unk_1EC196170);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194940);
  v32 = &a6[*(v31 + 52)];
  *v32 = v29;
  v32[1] = v30;
  *&a6[*(v31 + 56)] = 256;
  v33 = sub_1C5BCAA54();
  v35 = v34;
  v36 = &a6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194930) + 36)];
  *v36 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v37 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194950) + 36));
  *v37 = v33;
  v37[1] = v35;
  v38 = v45;
  (*(v7 + 16))(v9, v46, v45);
  v39 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v40 = swift_allocObject();
  v41 = v48;
  *(v40 + 2) = v47;
  *(v40 + 3) = v41;
  v42 = v50;
  *(v40 + 4) = v49;
  *(v40 + 5) = v42;
  (*(v7 + 32))(&v40[v39], v9, v38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194918);
  v44 = &a6[*(result + 36)];
  *v44 = sub_1C5A41298;
  *(v44 + 1) = 0;
  *(v44 + 2) = sub_1C5A48254;
  *(v44 + 3) = v40;
  return result;
}

uint64_t sub_1C5A41298@<X0>(void *a1@<X8>)
{
  v2 = sub_1C5BC9384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC94A4();
  sub_1C5BC86D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1C5A413A4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C5BC8F34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v22 = *a1;
  v23 = v16;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v17 = (a2 + *(type metadata accessor for BackgroundPlatter() + 56));
  v18 = *v17;
  LOBYTE(a5) = *(v17 + 8);

  if ((a5 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    v18 = v24;
  }

  v20 = v23;
  *(v18 + 64) = v22;
  *(v18 + 80) = v20;
}

uint64_t sub_1C5A41540@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a4;
  v48 = sub_1C5BC8F34();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NowPlayingContrastSensitiveBackdrop();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194980);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194988);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194990);
  MEMORY[0x1EEE9AC00](v49);
  v18 = &v45 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194998);
  MEMORY[0x1EEE9AC00](v50);
  v20 = &v45 - v19;
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C5A48438(v9, v13);
  v21 = &v13[*(v11 + 44)];
  v22 = v59;
  *(v21 + 4) = v58;
  *(v21 + 5) = v22;
  *(v21 + 6) = v60;
  v24 = v55;
  v23 = v56;
  *v21 = v54;
  *(v21 + 1) = v24;
  v25 = v57;
  *(v21 + 2) = v23;
  *(v21 + 3) = v25;
  v26 = sub_1C5BCAA54();
  if (a3)
  {
    v28 = v26;
    v29 = v27;
    swift_beginAccess();
    v30 = 0;
    if (*(a3 + 17))
    {
      v30 = sub_1C5BCA464();
    }

    sub_1C59E7D34(v13, v16, &qword_1EC194980);
    v31 = &v16[*(v14 + 36)];
    *v31 = v30;
    v31[1] = v28;
    v31[2] = v29;
    v32 = sub_1C5BCAA54();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1C5BD4D40;
    *(v35 + 32) = sub_1C5BCA474();
    *(v35 + 40) = sub_1C5BCA484();
    sub_1C5BCABB4();
    sub_1C5BCABC4();
    MEMORY[0x1C694EBE0](v35);
    sub_1C5BC88B4();
    v36 = v61;
    sub_1C59E7D34(v16, v18, &qword_1EC194988);
    v37 = &v18[*(v49 + 36)];
    *v37 = v32;
    *(v37 + 1) = v34;
    *(v37 + 2) = v36;
    v38 = v62;
    *(v37 + 40) = v63;
    *(v37 + 24) = v38;

    if ((v51 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v39 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v40 = v46;
      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v47 + 8))(v40, v48);
      a1 = v53;
    }

    swift_getKeyPath();
    v53 = a1;
    sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
    sub_1C5BC7B74();

    v41 = *(a1 + 56);

    if (v41)
    {
      v42 = 1.0;
    }

    else
    {
      v42 = 0.0;
    }

    sub_1C59E7D34(v18, v20, &qword_1EC194990);
    *&v20[*(v50 + 36)] = v42;
    v43 = v52;
    sub_1C59E7D34(v20, v52, &qword_1EC194998);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1949A8);
    *(v43 + *(result + 36)) = 0;
  }

  else
  {
    _s5DebugCMa();
    sub_1C59378F0(&qword_1EDA4A208, _s5DebugCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5A41BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v7 = *v1;
  v8 = *(v1 + 4);
  v29 = *(v1 + 3);
  *v30 = v8;
  *&v30[10] = *(v1 + 74);
  v9 = *(v1 + 2);
  v27 = *(v1 + 1);
  v28 = v9;
  v10 = sub_1C5BCA484();
  if (v7)
  {
    v11 = v10;
    swift_beginAccess();
    if ((*(v7 + 58) & 1) == 0)
    {
      if (v30[25])
      {
        v25 = v29;
        v26[0] = *v30;
        *(v26 + 9) = *&v30[9];
        v23 = v27;
        v24 = v28;
      }

      else
      {

        sub_1C5BCB4E4();
        v12 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5924EF4(&v27, &unk_1EC194DE0);
        (*(v4 + 8))(v6, v3);
      }

      if (BYTE2(v24) != 2)
      {
        goto LABEL_11;
      }
    }

    if (v30[25])
    {
      v25 = v29;
      v26[0] = *v30;
      *(v26 + 9) = *&v30[9];
      v23 = v27;
      v24 = v28;
    }

    else
    {

      sub_1C5BCB4E4();
      v13 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v27, &unk_1EC194DE0);
      (*(v4 + 8))(v6, v3);
    }

    if ((v24 & 1) == 0)
    {
LABEL_11:
      sub_1C5BCAA54();
      result = sub_1C5BC8BD4();
      *&v22[7] = v23;
      *&v22[23] = v24;
      *&v22[39] = v25;
      *&v22[55] = v26[0];
      *&v22[103] = v26[3];
      *&v22[87] = v26[2];
      *&v22[71] = v26[1];
      *a1 = v11;
      *(a1 + 8) = 0;
      v15 = *v22;
      v16 = *&v22[16];
      v17 = *&v22[32];
      *(a1 + 57) = *&v22[48];
      *(a1 + 41) = v17;
      *(a1 + 25) = v16;
      *(a1 + 9) = v15;
      v18 = *&v22[64];
      v19 = *&v22[80];
      v20 = *&v22[96];
      *(a1 + 120) = *&v22[111];
      *(a1 + 105) = v20;
      *(a1 + 89) = v19;
      *(a1 + 73) = v18;
      return result;
    }

    __break(1u);
  }

  _s17TransportControlsCMa();
  sub_1C59378F0(&qword_1EDA4A620, _s17TransportControlsCMa);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5A42018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194888);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  _s19TrackSectionsPickerVMa();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v6 = sub_1C5BC8AB4();
  v21[0] = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x1E697E5D8];
  v31 = WitnessTable;
  v32 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v30 = v8;
  v27 = swift_getWitnessTable();
  v28 = v8;
  v23 = v4;
  v24 = v6;
  v25 = v5;
  v26 = swift_getWitnessTable();
  _s22TrackSectionsContainerVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v9 = sub_1C5BCA7D4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  sub_1C5BC9144();
  v21[4] = v4;
  v21[5] = v5;
  v21[6] = v16;
  v22 = v17;
  sub_1C5BCA7C4();
  v18 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v9, v18);
  v19 = *(v10 + 8);
  v19(v13, v9);
  sub_1C593EDC0(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t sub_1C5A42328@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a3;
  v62 = a4;
  v65 = a5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v57 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194890);
  v9 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v57 - v10;
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194888);
  v15 = MEMORY[0x1EEE9AC00](v63);
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - v17;
  if (a2)
  {
    v19 = a1;
  }

  else
  {
    sub_1C5950E48(a1, 0);
    sub_1C5BCB4E4();
    v20 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(a1, 0);
    (*(v12 + 8))(v14, v11);
    v19 = v128;
  }

  v66 = v18;
  if (v19 == 2)
  {
    (*(v9 + 56))(v18, 1, 1, v60);
LABEL_8:
    v45 = v61;
    v46 = v62;
    _s19TrackSectionsPickerVMa();
    swift_getWitnessTable();
    sub_1C5BCA7D4();
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    v47 = sub_1C5BC8AB4();
    WitnessTable = swift_getWitnessTable();
    v49 = MEMORY[0x1E697E5D8];
    v85[6] = WitnessTable;
    v85[7] = MEMORY[0x1E697E5D8];
    v85[4] = swift_getWitnessTable();
    v85[5] = v49;
    v85[2] = swift_getWitnessTable();
    v85[3] = v49;
    v50 = swift_getWitnessTable();
    sub_1C5A42D30();
    v139 = v113;
    v140 = v114;
    v141 = v115;
    v135 = v109;
    v136 = v110;
    v138 = v112;
    v137 = v111;
    v132 = v105;
    v133 = v106;
    v134[1] = v108;
    v134[0] = v107;
    v128 = v101;
    v129 = v102;
    v131 = v104;
    v130 = v103;
    *&v120 = v45;
    *(&v120 + 1) = v47;
    *&v121 = v46;
    *(&v121 + 1) = v50;
    v51 = _s22TrackSectionsContainerVMa();
    v52 = swift_getWitnessTable();
    sub_1C593EDC0(&v128, v51, v52);
    v116[12] = v139;
    v116[13] = v140;
    v117 = v141;
    v116[8] = v135;
    v116[9] = v136;
    v116[11] = v138;
    v116[10] = v137;
    v116[4] = v132;
    v116[5] = v133;
    v116[6] = v134[0];
    v116[7] = v134[1];
    v116[0] = v128;
    v116[1] = v129;
    v116[2] = v130;
    v116[3] = v131;
    v53 = *(v51 - 8);
    v54 = *(v53 + 8);
    v54(v116, v51);
    v55 = v66;
    v56 = v64;
    sub_1C5981D3C(v66, v64);
    v118[12] = v98;
    v118[13] = v99;
    v118[8] = v94;
    v118[9] = v95;
    v118[11] = v97;
    v118[10] = v96;
    v118[4] = v90;
    v118[5] = v91;
    v118[7] = v93;
    v118[6] = v92;
    v118[0] = v86;
    v118[1] = v87;
    v118[3] = v89;
    v118[2] = v88;
    v82 = v98;
    v83 = v99;
    v78 = v94;
    v79 = v95;
    v80 = v96;
    v81 = v97;
    v74 = v90;
    v75 = v91;
    v76 = v92;
    v77 = v93;
    v70 = v86;
    v71 = v87;
    v119 = v100;
    v84 = v100;
    v72 = v88;
    v73 = v89;
    v85[0] = v56;
    v85[1] = &v70;
    (*(v53 + 16))(&v128, v118, v51);
    v69[0] = v63;
    v69[1] = v51;
    v67 = sub_1C5A47F60();
    v68 = v52;
    sub_1C594226C(v85, 2uLL, v69);
    v126[6] = v98;
    v126[7] = v99;
    v127 = v100;
    v126[2] = v94;
    v126[3] = v95;
    v126[5] = v97;
    v126[4] = v96;
    v124 = v90;
    v125 = v91;
    v126[1] = v93;
    v126[0] = v92;
    v120 = v86;
    v121 = v87;
    v123 = v89;
    v122 = v88;
    v54(&v120, v51);
    sub_1C5981DAC(v55);
    v139 = v82;
    v140 = v83;
    v141 = v84;
    v135 = v78;
    v136 = v79;
    v138 = v81;
    v137 = v80;
    v132 = v74;
    v133 = v75;
    v134[1] = v77;
    v134[0] = v76;
    v128 = v70;
    v129 = v71;
    v131 = v73;
    v130 = v72;
    v54(&v128, v51);
    return sub_1C5981DAC(v56);
  }

  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  v21 = sub_1C5BC8324();
  v23 = v22;
  v24 = sub_1C5BC98C4();
  sub_1C5BC8174();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v23 & 1;
  LOBYTE(v128) = v23 & 1;
  LOBYTE(v120) = 0;
  v34 = sub_1C5BC98E4();
  sub_1C5BC8174();
  LOBYTE(v118[0]) = 0;
  *&v120 = v21;
  BYTE8(v120) = v33;
  v121 = xmmword_1C5BDC0B0;
  LOBYTE(v122) = v24;
  *(&v122 + 1) = v26;
  *&v123 = v28;
  *(&v123 + 1) = v30;
  *&v124 = v32;
  BYTE8(v124) = 0;
  LOBYTE(v125) = v34;
  *(&v125 + 1) = v35;
  *&v126[0] = v36;
  *(&v126[0] + 1) = v37;
  *&v126[1] = v38;
  BYTE8(v126[1]) = 0;
  v39 = *MEMORY[0x1E697E728];
  v40 = sub_1C5BC89B4();
  (*(*(v40 - 8) + 104))(v8, v39, v40);
  sub_1C59378F0(&qword_1EDA46688, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194898);
    sub_1C5A47D68();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
    v42 = v59;
    sub_1C5BC9F54();
    sub_1C5924EF4(v8, &qword_1EC192838);
    v132 = v124;
    v133 = v125;
    v134[0] = v126[0];
    *(v134 + 9) = *(v126 + 9);
    v128 = v120;
    v129 = v121;
    v130 = v122;
    v131 = v123;
    sub_1C5924EF4(&v128, &qword_1EC194898);
    v43 = v66;
    v44 = v60;
    (*(v9 + 32))(v66, v42, v60);
    (*(v9 + 56))(v43, 0, 1, v44);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A42D30()
{
  sub_1C5BC9144();
  _s19TrackSectionsPickerVMa();
  swift_getWitnessTable();
  sub_1C5BCA7C4();
  v31 = v52;
  v32 = v53;
  v33 = v54;
  *&v34 = v55;
  v29 = v50;
  v30 = v51;
  sub_1C5BC98C4();
  v0 = sub_1C5BCA7D4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v44[2] = v52;
  v44[3] = v53;
  v44[4] = v54;
  v45 = v55;
  v44[0] = v50;
  v44[1] = v51;
  (*(*(v0 - 8) + 8))(v44, v0);
  v35 = v71;
  v36 = v72;
  LOBYTE(v37) = v73;
  v31 = v67;
  v32 = v68;
  v33 = v69;
  v34 = v70;
  v29 = v65;
  v30 = v66;
  sub_1C5BC98E4();
  v2 = sub_1C5BC8AB4();
  v3 = MEMORY[0x1E697E5D8];
  v27 = WitnessTable;
  v28 = MEMORY[0x1E697E5D8];
  v4 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v46[6] = v35;
  v46[7] = v36;
  v47 = v37;
  v46[2] = v31;
  v46[3] = v32;
  v46[4] = v33;
  v46[5] = v34;
  v46[0] = v29;
  v46[1] = v30;
  (*(*(v2 - 8) + 8))(v46, v2);
  v37 = v58;
  v38 = v59;
  v39 = v60;
  LOBYTE(v40) = v61;
  v33 = v54;
  v34 = v55;
  v35 = v56;
  v36 = v57;
  v29 = v50;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  sub_1C5BC98B4();
  v5 = sub_1C5BC8AB4();
  v25 = v4;
  v26 = v3;
  swift_getWitnessTable();
  sub_1C5BCA2F4();
  v48[8] = v37;
  v48[9] = v38;
  v48[10] = v39;
  v49 = v40;
  v48[4] = v33;
  v48[5] = v34;
  v48[6] = v35;
  v48[7] = v36;
  v48[0] = v29;
  v48[1] = v30;
  v48[2] = v31;
  v48[3] = v32;
  (*(*(v5 - 8) + 8))(v48, v5);
  v22 = v77;
  v23 = v78;
  v24 = v79;
  v18 = v73;
  v19 = v74;
  v20 = v75;
  v21 = v76;
  v14 = v69;
  v15 = v70;
  v16 = v71;
  v17 = v72;
  v10 = v65;
  v11 = v66;
  v12 = v67;
  v13 = v68;
  v6 = sub_1C5BC8AB4();
  v7 = swift_getWitnessTable();
  sub_1C593EDC0(&v10, v6, v7);
  v62 = v22;
  v63 = v23;
  v64 = v24;
  v58 = v18;
  v59 = v19;
  v61 = v21;
  v60 = v20;
  v54 = v14;
  v55 = v15;
  v57 = v17;
  v56 = v16;
  v50 = v10;
  v51 = v11;
  v53 = v13;
  v52 = v12;
  v8 = *(*(v6 - 8) + 8);
  v8(&v50, v6);
  v22 = v41;
  v23 = v42;
  v24 = v43;
  v18 = v37;
  v19 = v38;
  v20 = v39;
  v21 = v40;
  v14 = v33;
  v15 = v34;
  v16 = v35;
  v17 = v36;
  v10 = v29;
  v11 = v30;
  v12 = v31;
  v13 = v32;
  sub_1C593EDC0(&v10, v6, v7);
  v77 = v22;
  v78 = v23;
  v79 = v24;
  v73 = v18;
  v74 = v19;
  v76 = v21;
  v75 = v20;
  v69 = v14;
  v70 = v15;
  v72 = v17;
  v71 = v16;
  v65 = v10;
  v66 = v11;
  v68 = v13;
  v67 = v12;
  return (v8)(&v65, v6);
}

uint64_t sub_1C5A432B8()
{
  sub_1C5A4FAA4(&v12);
  v20 = v14;
  v21 = v15;
  v18 = v13;
  v19 = BYTE8(v13);
  v16 = v12;
  v17 = BYTE8(v12);
  v6 = v14;
  v7 = v15;
  v4 = v12;
  v5 = v13;
  v0 = _s19TrackSectionsPickerVMa();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v4, v0, WitnessTable);
  sub_1C5924EF4(&v16, &qword_1EC1948D8);
  sub_1C5924EF4(&v18, &qword_1EC1948E0);
  sub_1C5924EF4(&v20, &qword_1EC1948E8);
  v2 = sub_1C5BC8C94();
  (*(*(v2 - 8) + 8))(&v21, v2);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;
  sub_1C593EDC0(&v4, v0, WitnessTable);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A43464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17 = a1[2];
  v3 = v17;
  v18 = v2;
  v19 = v4;
  v20 = v5;
  _s22TrackSectionsContainerV17ScrollableContentVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v6 = sub_1C5BC85B4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  sub_1C5BC9874();
  v16[4] = v3;
  v16[5] = v2;
  v16[6] = v4;
  v16[7] = v5;
  v16[8] = v16[0];
  sub_1C5BC85A4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v10, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_1C593EDC0(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_1C5A43660@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a2;
  v33 = a6;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v9 = _s22TrackSectionsContainerV17ScrollableContentVMa();
  v32 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v27 - v14;
  v30 = *(a3 - 8);
  v16 = v30;
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v27 - v20;
  v29 = a5;
  sub_1C593EDC0(a1, a3, a5);
  v28 = *(v16 + 16);
  v28(v19, a1, a3);
  sub_1C5A4395C(v19, a3, v12);
  WitnessTable = swift_getWitnessTable();
  v22 = v15;
  sub_1C593EDC0(v12, v9, WitnessTable);
  v23 = v32;
  v24 = *(v32 + 8);
  v24(v12, v9);
  v28(v19, v34, a3);
  v38 = v19;
  (*(v23 + 16))(v12, v22, v9);
  v39 = v12;
  v37[0] = a3;
  v37[1] = v9;
  v35 = v29;
  v36 = WitnessTable;
  sub_1C594226C(&v38, 2uLL, v37);
  v24(v22, v9);
  v25 = *(v30 + 8);
  v25(v34, a3);
  v24(v12, v9);
  return (v25)(v19, a3);
}

uint64_t sub_1C5A4395C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  v4 = _s22TrackSectionsContainerV17ScrollableContentVMa();
  v5 = a3 + *(v4 + 52);
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  *v5 = sub_1C5BC8324();
  *(v5 + 8) = v6 & 1;
  v7 = (a3 + *(v4 + 56));
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C59378F0(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
  result = sub_1C5BC8C84();
  *v7 = result;
  v7[1] = v9;
  return result;
}

uint64_t sub_1C5A43AA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[5];
  v17 = a1[4];
  v4 = v17;
  v18 = v5;
  _s22TrackSectionsContainerV17ScrollableContentV12FadeBackdropVMa();
  sub_1C5BC81E4();
  sub_1C5BC8AB4();
  v16[10] = swift_getWitnessTable();
  v16[11] = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v16[12] = sub_1C5BC8BA4();
  v16[13] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AC8);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v6 = sub_1C5BCA7F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  sub_1C5BCAA44();
  v16[4] = v3;
  v16[5] = v2;
  v16[6] = v4;
  v16[7] = v5;
  v16[8] = v16[0];
  sub_1C5BCA7E4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v10, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_1C593EDC0(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_1C5A43DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a1;
  v64 = a6;
  v10 = sub_1C5BC93D4();
  OpaqueTypeConformance2 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = a2;
  *(&v85 + 1) = a3;
  v12 = a2;
  *&v86 = a4;
  *(&v86 + 1) = a5;
  v13 = a5;
  v54 = _s22TrackSectionsContainerV17ScrollableContentVMa();
  v14 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v47 - v15;
  v16 = v13;
  sub_1C5BC81E4();
  v17 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v83 = MEMORY[0x1E69805D0];
  v63 = MEMORY[0x1E697E858];
  v49 = v17;
  v50 = swift_getWitnessTable();
  v18 = sub_1C5BC8BA4();
  v51 = v18;
  v53 = swift_getWitnessTable();
  *&v85 = v18;
  *(&v85 + 1) = v53;
  v56 = MEMORY[0x1E697CF10];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  v58 = OpaqueTypeMetadata2;
  v20 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v48 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v47 - v22;
  LOBYTE(v84[0]) = 1;
  *&v85 = v12;
  *(&v85 + 1) = a3;
  *&v86 = a4;
  *(&v86 + 1) = v16;
  v23 = v16;
  v24 = _s22TrackSectionsContainerV17ScrollableContentV12FadeBackdropVMa();
  v65 = v24;
  v55 = swift_getWitnessTable();
  sub_1C593EDC0(v84, v24, v55);
  v25 = v52;
  v26 = v54;
  (*(v14 + 16))(v52, v59, v54);
  v27 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v12;
  *(v28 + 3) = a3;
  *(v28 + 4) = a4;
  *(v28 + 5) = v23;
  (*(v14 + 32))(&v28[v27], v25, v26);
  swift_checkMetadataState();
  *&v85 = sub_1C5BC8B94();
  *(&v85 + 1) = v29;
  v30 = sub_1C5BC98B4();
  v31 = v60;
  sub_1C5BC93B4();
  v32 = swift_checkMetadataState();
  v33 = v48;
  v34 = v53;
  MEMORY[0x1C694E150](v30, 0x4030000000000000, 0, v31, v32, v53);
  (*(OpaqueTypeConformance2 + 8))(v31, v62);

  *&v85 = v32;
  *(&v85 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v58;
  sub_1C593EDC0(v33, v58, OpaqueTypeConformance2);
  v36 = v57;
  v62 = *(v57 + 8);
  v62(v33, v35);
  LOBYTE(v84[0]) = 0;
  sub_1C5BCAA54();
  sub_1C5A496CC();
  v37 = v55;
  sub_1C5BCA204();
  v73 = v85;
  v74 = v86;
  v75 = v87;
  v76 = v88;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AC8);
  v38 = sub_1C5BC8AB4();
  v39 = sub_1C5924F54(&qword_1EC194AC0, &qword_1EC194AC8);
  v72[3] = v37;
  v72[4] = v39;
  v40 = swift_getWitnessTable();
  sub_1C593EDC0(&v73, v38, v40);
  v84[0] = v73;
  v84[1] = v74;
  v84[2] = v75;
  v84[3] = v76;
  v41 = *(*(v38 - 8) + 8);
  v41(v84, v38);
  v71 = v81;
  v72[0] = &v71;
  v42 = *(v36 + 16);
  v43 = v66;
  v42(v33, v66, v35);
  v73 = v77;
  v74 = v78;
  v75 = v79;
  v76 = v80;
  v72[1] = v33;
  v72[2] = &v73;
  v70[0] = v65;
  v70[1] = v35;
  v70[2] = v38;
  v67 = v37;
  v68 = OpaqueTypeConformance2;
  v69 = v40;
  sub_1C594226C(v72, 3uLL, v70);
  v44 = v43;
  v45 = v62;
  v62(v44, v35);
  v85 = v73;
  v86 = v74;
  v87 = v75;
  v88 = v76;
  v41(&v85, v38);
  return v45(v33, v35);
}

uint64_t sub_1C5A44464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v49 = a2;
  v51 = a1;
  v56 = a7;
  v65 = a3;
  v66 = a4;
  v43 = a3;
  v67 = a5;
  v68 = a6;
  v44 = a5;
  v57 = _s22TrackSectionsContainerV17ScrollableContentVMa();
  v50 = *(v57 - 8);
  v53 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v48 = &v40 - v11;
  v12 = sub_1C5BC8AF4();
  v13 = *(v12 - 8);
  v47 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C5BC81E4();
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v40 - v17;
  v18 = sub_1C5BC8AB4();
  v55 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v46 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v40 - v21;
  sub_1C5BC9874();
  v58 = a3;
  v59 = a4;
  v41 = a4;
  v60 = a5;
  v61 = a6;
  v42 = a6;
  v22 = v49;
  v62 = v49;
  sub_1C59A09AC();
  v23 = v15;
  v24 = v15;
  v25 = v12;
  (*(v13 + 16))(v24, v51, v12);
  v26 = v50;
  v27 = v48;
  (*(v50 + 16))(v48, v22, v57);
  v28 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v29 = (v47 + *(v26 + 80) + v28) & ~*(v26 + 80);
  v30 = swift_allocObject();
  v31 = v41;
  *(v30 + 2) = v43;
  *(v30 + 3) = v31;
  v32 = v42;
  *(v30 + 4) = v44;
  *(v30 + 5) = v32;
  (*(v13 + 32))(&v30[v28], v23, v25);
  (*(v26 + 32))(&v30[v29], v27, v57);
  WitnessTable = swift_getWitnessTable();
  v34 = v46;
  v35 = v45;
  sub_1C5BCA324();

  (*(v54 + 8))(v35, v16);
  v63 = WitnessTable;
  v64 = MEMORY[0x1E69805D0];
  v36 = swift_getWitnessTable();
  v37 = v52;
  sub_1C593EDC0(v34, v18, v36);
  v38 = *(v55 + 8);
  v38(v34, v18);
  sub_1C593EDC0(v37, v18, v36);
  return (v38)(v37, v18);
}

uint64_t sub_1C5A44968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C593EDC0(v8, v11, v12);
  sub_1C593EDC0(v10, a3, a5);
  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_1C5A44A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = a3;
  *(&v20 + 1) = a4;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  v15 = _s22TrackSectionsContainerV17ScrollableContentVMa();
  LOBYTE(a4) = *(a2 + *(v15 + 52) + 8);

  if ((a4 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
  }

  if (*(a2 + *(v15 + 56)))
  {

    sub_1C5A4FC2C(v17, &v20);

    v19[0] = v20;
    v19[1] = v21;
    sub_1C5BCABD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194B98);
    sub_1C5A49858();
    sub_1C5BC8AE4();
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C59378F0(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

double sub_1C5A44CB8@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BD4D40;
  *(v2 + 32) = sub_1C5BCA484();
  *(v2 + 40) = sub_1C5BCA474();
  sub_1C5BCABB4();
  sub_1C5BCABC4();
  MEMORY[0x1C694EBE0](v2);
  sub_1C5BC88B4();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

__n128 sub_1C5A44D7C@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v5[7] = v6;
  *&v5[23] = v7;
  *&v5[39] = v8;
  *(a2 + 17) = *v5;
  *a2 = 0xD00000000000003DLL;
  *(a2 + 8) = 0x80000001C5BF84C0;
  *(a2 + 16) = a1;
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *(a2 + 64) = *(&v8 + 1);
  return result;
}

uint64_t sub_1C5A44E44@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v45 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194AD0);
  v54 = *(v13 - 8);
  v55 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v45 - v14;
  v15 = sub_1C5BC8F34();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v16 + 8))(v18, v15);
    a1 = v59;
  }

  swift_getKeyPath();
  v59 = a1;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v21 = a1[3];
  v20 = a1[4];
  v22 = a1[5];
  v23 = a1[6];
  sub_1C596F94C(v21, v20, v22, v23);

  if (v23)
  {
    sub_1C5BC9A44();
    v24 = sub_1C5BC9C14();
    v50 = v25;
    v51 = v26;
    v46 = v27;

    v48 = v21;
    v49 = v20;
    v47 = v22;
    if (qword_1EC190670 != -1)
    {
      swift_once();
    }

    v28 = qword_1EC1A6AB8;
    v29 = *(v5 + 36);
    v30 = *MEMORY[0x1E6981DB8];
    v31 = sub_1C5BCAB54();
    (*(*(v31 - 8) + 104))(v12 + v29, v30, v31);
    *v12 = v28;

    LODWORD(v30) = sub_1C5BC9404();
    v32 = v52;
    sub_1C59400B0(v12, v52, &unk_1EC196170);
    LODWORD(v59) = v30;
    sub_1C59400B0(v32, v8, &unk_1EC196170);
    sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);
    v33 = sub_1C5BC85E4();
    v45 = v33;
    v34 = sub_1C5BC85E4();
    sub_1C5924EF4(v32, &unk_1EC196170);
    sub_1C5924EF4(v12, &unk_1EC196170);
    v35 = v50;
    v59 = v24;
    v60 = v50;
    LOBYTE(v29) = v46 & 1;
    v61 = v46 & 1;
    v52 = v24;
    v62 = v51;
    v63 = v33;
    v64 = v34;
    v36 = [objc_opt_self() mainBundle];
    v37 = sub_1C5949F2C();
    v39 = v38;

    v57 = v37;
    v58 = v39;
    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](0xD00000000000001DLL, 0x80000001C5BF84A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194AD8);
    sub_1C5A48F48();
    v40 = v53;
    sub_1C5BCA164();
    sub_1C5953BD8(v48, v49, v47 & 1);

    sub_1C5953BD8(v52, v35, v29);

    v41 = v40;
    v42 = v56;
    sub_1C59E7D34(v41, v56, &qword_1EC194AD0);
    v43 = 0;
  }

  else
  {
    v43 = 1;
    v42 = v56;
  }

  return (*(v54 + 56))(v42, v43, 1, v55);
}

double sub_1C5A45438()
{
  if (qword_1EC1909E8 != -1)
  {
    swift_once();
  }

  result = *&qword_1EC1A6E68;
  qword_1EC1945A0 = qword_1EC1A6E68;
  return result;
}

uint64_t sub_1C5A45490()
{
  if (qword_1EC1905C8 != -1)
  {
    swift_once();
  }

  qword_1EC1945A8 = qword_1EC1A6A38;
}

double sub_1C5A454F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C5BCA484();
  v9 = *(a1 + 16);
  v28 = v9;
  v29 = *(a1 + 24);
  if (v29 == 1)
  {
    v26 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v28, &qword_1EC191B48);
    (*(v5 + 8))(v7, v4);
    v9 = v26;
  }

  v11 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v13 = v12;
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v25[7] = 0;
  v17 = sub_1C5BC9894();
  v27 = 0;
  v18 = sub_1C5BC98B4();
  *a2 = v8;
  *(a2 + 8) = 0xD00000000000001DLL;
  *(a2 + 16) = 0x80000001C5BF8460;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = 1;
  *(a2 + 64) = KeyPath;
  *(a2 + 137) = 0;
  *(a2 + 144) = v17;
  __asm { FMOV            V0.2D, #-12.0 }

  *(a2 + 152) = _Q0;
  *(a2 + 168) = xmmword_1C5BDC0C0;
  *(a2 + 184) = 0;
  *(a2 + 192) = v18;
  result = 0.0;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 1;
  return result;
}

uint64_t sub_1C5A4571C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v38[4] = v2[4];
  v39[0] = v5;
  *(v39 + 10) = *(v2 + 90);
  v6 = v2[1];
  v38[0] = *v2;
  v38[1] = v6;
  v7 = v2[3];
  v38[2] = v2[2];
  v38[3] = v7;
  v8 = sub_1C5BCAA54();
  v10 = v9;
  sub_1C5A454F4(v38, &v23);
  v52 = v35;
  v53 = v36;
  v54 = v37;
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  *&v55 = v8;
  *(&v55 + 1) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194658);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194660) + 36));
  v13 = v53;
  v12[12] = v52;
  v12[13] = v13;
  v14 = v55;
  v12[14] = v54;
  v12[15] = v14;
  v15 = v49;
  v12[8] = v48;
  v12[9] = v15;
  v16 = v51;
  v12[10] = v50;
  v12[11] = v16;
  v17 = v45;
  v12[4] = v44;
  v12[5] = v17;
  v18 = v47;
  v12[6] = v46;
  v12[7] = v18;
  v19 = v41;
  *v12 = v40;
  v12[1] = v19;
  v20 = v43;
  v12[2] = v42;
  v12[3] = v20;
  v56[12] = v35;
  v56[13] = v36;
  v56[14] = v37;
  v56[8] = v31;
  v56[9] = v32;
  v56[11] = v34;
  v56[10] = v33;
  v56[4] = v27;
  v56[5] = v28;
  v56[6] = v29;
  v56[7] = v30;
  v56[0] = v23;
  v56[1] = v24;
  v56[2] = v25;
  v56[3] = v26;
  v57 = v8;
  v58 = v10;
  sub_1C59400B0(&v40, &v22, &qword_1EC194668);
  return sub_1C5924EF4(v56, &qword_1EC194668);
}

double sub_1C5A45904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA484();
  v9 = *(a1 + 16);
  v24 = v9;
  v25 = *(a1 + 24);
  if (v25 == 1)
  {
    v23 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v24, &qword_1EC191B48);
    (*(v5 + 8))(v7, v4);
    v9 = v23;
  }

  v11 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v13 = v12;
  v15 = v14;
  v16 = sub_1C5BC9894();
  *a2 = v8;
  *(a2 + 8) = 0xD00000000000001ELL;
  *(a2 + 16) = 0x80000001C5BF8480;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = 1;
  *(a2 + 64) = v16;
  __asm { FMOV            V0.2D, #-12.0 }

  *(a2 + 72) = _Q0;
  result = -13.0;
  *(a2 + 88) = xmmword_1C5BDC0C0;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_1C5A45AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v26[4] = v2[4];
  v27[0] = v5;
  *(v27 + 10) = *(v2 + 90);
  v6 = v2[1];
  v26[0] = *v2;
  v26[1] = v6;
  v7 = v2[3];
  v26[2] = v2[2];
  v26[3] = v7;
  v8 = sub_1C5BCAA54();
  v10 = v9;
  sub_1C5A45904(v26, &v19);
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  *&v35 = v8;
  *(&v35 + 1) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1948F0);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1948F8) + 36));
  v13 = v33;
  v12[4] = v32;
  v12[5] = v13;
  v14 = v35;
  v12[6] = v34;
  v12[7] = v14;
  v15 = v29;
  *v12 = v28;
  v12[1] = v15;
  v16 = v31;
  v12[2] = v30;
  v12[3] = v16;
  v36[0] = v19;
  v36[1] = v20;
  v36[5] = v24;
  v36[6] = v25;
  v36[3] = v22;
  v36[4] = v23;
  v36[2] = v21;
  v37 = v8;
  v38 = v10;
  sub_1C59400B0(&v28, &v18, &qword_1EC194900);
  return sub_1C5924EF4(v36, &qword_1EC194900);
}

uint64_t sub_1C5A45C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  v8 = sub_1C5BC8324();
  v18 = v9 & 1;
  v17 = 0;
  v19 = 0;
  *&v11 = v8;
  BYTE8(v11) = v9 & 1;
  *&v12 = swift_getKeyPath();
  BYTE8(v12) = 0;
  *&v13 = swift_getKeyPath();
  v16[25] = 0;
  MEMORY[0x1C694E550](&v11, a1, a3, a2);
  v20[4] = v15;
  v21[0] = *v16;
  *(v21 + 10) = *&v16[10];
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  return a4(v20);
}

uint64_t sub_1C5A45DBC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(CGFloat a1, CGFloat a2)@<X8>)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v14 = v21;
  }

  swift_getKeyPath();
  v21 = v14;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v16 = *(v14 + 56);

  if (v16 == 1)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2 & 1;

    v19 = sub_1C5A46AF4;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *a5 = v19;
  a5[1] = v18;
  return result;
}

uint64_t sub_1C5A45FE8(double *a1, char a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6)
{
  v12 = sub_1C5BC8F34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    v16 = v27;
  }

  swift_getKeyPath();
  v27 = v16;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v18 = *(v16 + 56);

  if (v18 == 1)
  {

    if ((a2 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v21 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v13 + 8))(v15, v12);
      v20 = v27;
    }

    v22 = v20[8];
    v23 = v20[9];
    v24 = v20[10];
    v25 = v20[11];

    v29.origin.x = v22;
    v29.origin.y = v23;
    v29.size.width = v24;
    v29.size.height = v25;
    v28.x = a5;
    v28.y = a6;
    result = CGRectContainsPoint(v29, v28);
    if ((result & 1) == 0)
    {
      if (qword_1EC1906D8 != -1)
      {
        swift_once();
      }

      MEMORY[0x1EEE9AC00](qword_1EC1945A8);
      *(&v26 - 4) = a3;
      *(&v26 - 3) = a4;
      *(&v26 - 2) = a1;
      *(&v26 - 8) = a2 & 1;
      return sub_1C5BC87F4();
    }
  }

  return result;
}

uint64_t sub_1C5A46330(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v12;
  }

  if (*(a1 + 56))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = a1;
    *(&v11 - 8) = 0;
    v12 = a1;
    sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
    sub_1C5BC7B64();
  }

  else
  {
    *(a1 + 56) = 0;
  }
}

uint64_t sub_1C5A46560()
{
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa);
  return sub_1C5BC8324();
}

char *sub_1C5A46640(char *result, double a2, double a3)
{
  if (result)
  {
    v6 = result;
    if ([result type] || (UIViewIgnoresTouchEvents() & 1) != 0)
    {
      return 0;
    }

    v10.receiver = v3;
    v10.super_class = type metadata accessor for TouchDownDetectionView.PassthroughView();
    result = objc_msgSendSuper2(&v10, sel_hitTest_withEvent_, v6, a2, a3);
    if (result && result == v3)
    {
      v7 = *&v3[OBJC_IVAR____TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView_action];
      v8 = result;

      v7(v9, a2, a3);

      return 0;
    }
  }

  return result;
}

id sub_1C5A467C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TouchDownDetectionView.PassthroughView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5A46834()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for TouchDownDetectionView.PassthroughView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView_action];
  *v5 = v2;
  *(v5 + 1) = v1;
  v11.receiver = v4;
  v11.super_class = v3;

  v6 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor_];

  return v8;
}

uint64_t sub_1C5A46914(uint64_t a1)
{
  v2 = v1[1];
  v3 = (a1 + OBJC_IVAR____TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView_action);
  *v3 = *v1;
  v3[1] = v2;
}

uint64_t sub_1C5A4696C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A46C34();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5A469D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A46C34();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5A46A34()
{
  sub_1C5A46C34();
  sub_1C5BC9264();
  __break(1u);
}

uint64_t sub_1C5A46A5C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5A46B58()
{
  result = qword_1EC1945B8;
  if (!qword_1EC1945B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1945C0);
    sub_1C5A46BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1945B8);
  }

  return result;
}

unint64_t sub_1C5A46BDC()
{
  result = qword_1EC1945C8;
  if (!qword_1EC1945C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1945C8);
  }

  return result;
}

unint64_t sub_1C5A46C34()
{
  result = qword_1EC1945D0[0];
  if (!qword_1EC1945D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC1945D0);
  }

  return result;
}

uint64_t sub_1C5A46CC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5A46DF0()
{
  result = qword_1EC194688;
  if (!qword_1EC194688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194688);
  }

  return result;
}

unint64_t sub_1C5A46E70()
{
  result = qword_1EC194698;
  if (!qword_1EC194698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194670);
    sub_1C5924F54(&qword_1EC1946A0, &qword_1EC1946A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194698);
  }

  return result;
}

void sub_1C5A46F58()
{
  sub_1C5BC8C94();
  if (v0 <= 0x3F)
  {
    sub_1C5A4705C(319, qword_1EC194738, _s13TrackSectionsCMa);
    if (v1 <= 0x3F)
    {
      sub_1C5A4705C(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5A4705C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C5A470D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 74))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 73);
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

uint64_t sub_1C5A4711C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C5A471A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
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

uint64_t sub_1C5A47204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C5A47280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1C5A472DC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5A47340()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C5A4737C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C5A4705C(319, qword_1EC194738, _s13TrackSectionsCMa);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5A4743C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0xFE)
  {
    v10 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v22 = &a1[v11] & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 > 1)
    {
      return (v23 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = a1[v13];
  if (!a1[v13])
  {
    goto LABEL_30;
  }

LABEL_26:
  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void sub_1C5A47618(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  v16 = v12 + 7;
  v17 = ((v12 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 >= a3)
  {
    v21 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = (a3 - v13 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v24 = *(v6 + 56);

        v24();
      }

      else
      {
        v25 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v26 = *(v8 + 56);

          v26(v25);
        }

        else
        {
          v27 = (v16 + v25) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v27 + 8) = 0;
            *v27 = a2 - 255;
          }

          else
          {
            *(v27 + 8) = -a2;
          }
        }
      }

      return;
    }
  }

  v22 = ~v13 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

uint64_t sub_1C5A478B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 106))
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

uint64_t sub_1C5A478F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C5A47968()
{
  result = qword_1EC194840;
  if (!qword_1EC194840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194660);
    sub_1C5924F54(&qword_1EC194848, &qword_1EC194658);
    sub_1C5924F54(&qword_1EC194850, &qword_1EC194668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194840);
  }

  return result;
}

unint64_t sub_1C5A47B98()
{
  result = qword_1EC194860;
  if (!qword_1EC194860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194860);
  }

  return result;
}

unint64_t sub_1C5A47BF8()
{
  result = qword_1EC194870;
  if (!qword_1EC194870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194858);
    sub_1C5A47C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194870);
  }

  return result;
}

unint64_t sub_1C5A47C84()
{
  result = qword_1EC194878;
  if (!qword_1EC194878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194868);
    sub_1C59378F0(&qword_1EC194880, MEMORY[0x1E697D6D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194878);
  }

  return result;
}

unint64_t sub_1C5A47D68()
{
  result = qword_1EC1948A0;
  if (!qword_1EC1948A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194898);
    sub_1C5A47DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948A0);
  }

  return result;
}

unint64_t sub_1C5A47DF4()
{
  result = qword_1EC1948A8;
  if (!qword_1EC1948A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1948B0);
    sub_1C5A47E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948A8);
  }

  return result;
}

unint64_t sub_1C5A47E80()
{
  result = qword_1EC1948B8;
  if (!qword_1EC1948B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1948C0);
    sub_1C5A47F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948B8);
  }

  return result;
}

unint64_t sub_1C5A47F0C()
{
  result = qword_1EC1948C8;
  if (!qword_1EC1948C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948C8);
  }

  return result;
}

unint64_t sub_1C5A47F60()
{
  result = qword_1EC1948D0;
  if (!qword_1EC1948D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194898);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
    sub_1C5A47D68();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948D0);
  }

  return result;
}

unint64_t sub_1C5A480B8()
{
  result = qword_1EC194920;
  if (!qword_1EC194920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194918);
    sub_1C5A48170();
    sub_1C5924F54(&qword_1EDA46208, &qword_1EC194958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194920);
  }

  return result;
}

unint64_t sub_1C5A48170()
{
  result = qword_1EC194928;
  if (!qword_1EC194928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194930);
    sub_1C5924F54(&qword_1EC194938, &qword_1EC194940);
    sub_1C5924F54(&qword_1EC194948, &qword_1EC194950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194928);
  }

  return result;
}

uint64_t sub_1C5A48254(__int128 *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for BackgroundPlatter() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1C5A413A4(a1, v8, v3, v4, v5, v6);
}

double sub_1C5A48300(uint64_t a1)
{
  v1 = *(a1 + 17);
  v2 = *(a1 + 18);
  if (qword_1EC1908D0 != -1)
  {
    swift_once();
  }

  v3 = *(&xmmword_1EC1A6D80 + 1);
  if (v2 > 1)
  {
    v8 = 0.0;
    v9 = 6.0;
    if (v1 < 3)
    {
      v9 = 12.0;
    }

    if (v2 == 2)
    {
      v8 = v9;
    }
  }

  else
  {
    if (v2)
    {
      goto LABEL_17;
    }

    if (!v1)
    {
      v8 = 12.0;
      return v3 + v8 + *&qword_1EC1A6D90 + 8.0;
    }

    if (v1 != 1)
    {
LABEL_17:
      v8 = 6.0;
    }

    else
    {
      v4 = [objc_opt_self() currentTraitCollection];
      [v4 displayScale];
      v6 = v5;

      v7 = 1.0;
      if (v6 >= 1.0)
      {
        v7 = v6;
        if ((~*&v6 & 0x7FF0000000000000) == 0)
        {
          v7 = 1.0;
          if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v7 = v6;
          }
        }
      }

      v8 = 1.0 / v7 + 5.0;
    }
  }

  return v3 + v8 + *&qword_1EC1A6D90 + 8.0;
}

uint64_t sub_1C5A48438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingContrastSensitiveBackdrop();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A4849C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5A4850C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1C5A4864C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_1C5A48864()
{
  result = qword_1EC194A30;
  if (!qword_1EC194A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1948F8);
    sub_1C5924F54(&qword_1EC194A38, &qword_1EC1948F0);
    sub_1C5924F54(&qword_1EC194A40, &qword_1EC194900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A30);
  }

  return result;
}

unint64_t sub_1C5A48948()
{
  result = qword_1EC194A48;
  if (!qword_1EC194A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194978);
    sub_1C5A489D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A48);
  }

  return result;
}

unint64_t sub_1C5A489D4()
{
  result = qword_1EC194A50;
  if (!qword_1EC194A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194968);
    sub_1C5924F54(&qword_1EC194A58, &qword_1EC194970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A50);
  }

  return result;
}

unint64_t sub_1C5A48A8C()
{
  result = qword_1EC194A60;
  if (!qword_1EC194A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A68);
    sub_1C5A48B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A60);
  }

  return result;
}

unint64_t sub_1C5A48B18()
{
  result = qword_1EDA46568;
  if (!qword_1EDA46568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A70);
    sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46568);
  }

  return result;
}

unint64_t sub_1C5A48BD0()
{
  result = qword_1EC194A80;
  if (!qword_1EC194A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC1949A8);
    sub_1C5A48C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A80);
  }

  return result;
}

unint64_t sub_1C5A48C5C()
{
  result = qword_1EC194A88;
  if (!qword_1EC194A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194998);
    sub_1C5A48CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A88);
  }

  return result;
}

unint64_t sub_1C5A48CE8()
{
  result = qword_1EC194A90;
  if (!qword_1EC194A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194990);
    sub_1C5A48DA0();
    sub_1C5924F54(&qword_1EC194AC0, &qword_1EC194AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A90);
  }

  return result;
}

unint64_t sub_1C5A48DA0()
{
  result = qword_1EC194A98;
  if (!qword_1EC194A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194988);
    sub_1C5A48E58();
    sub_1C5924F54(&qword_1EC194AB0, &qword_1EC194AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A98);
  }

  return result;
}

unint64_t sub_1C5A48E58()
{
  result = qword_1EC194AA0;
  if (!qword_1EC194AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194980);
    sub_1C59378F0(&qword_1EC194AA8, type metadata accessor for NowPlayingContrastSensitiveBackdrop);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194AA0);
  }

  return result;
}

unint64_t sub_1C5A48F48()
{
  result = qword_1EC194AE0;
  if (!qword_1EC194AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AD8);
    sub_1C5924F54(&qword_1EC194AE8, qword_1EC194AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194AE0);
  }

  return result;
}

void sub_1C5A49030()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C5A4705C(319, qword_1EC194738, _s13TrackSectionsCMa);
    if (v1 <= 0x3F)
    {
      sub_1C5A493F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5A490EC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1C5A49234(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 23) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = a2 - 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1C5A493F4()
{
  if (!qword_1EC194B78)
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C59378F0(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    v0 = sub_1C5BC8C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC194B78);
    }
  }
}

unint64_t sub_1C5A49488()
{
  result = qword_1EC194B80;
  if (!qword_1EC194B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194B88);
    sub_1C5A4950C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194B80);
  }

  return result;
}

unint64_t sub_1C5A4950C()
{
  result = qword_1EC194B90;
  if (!qword_1EC194B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AD0);
    sub_1C5A48F48();
    sub_1C59378F0(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194B90);
  }

  return result;
}

uint64_t sub_1C5A49610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(_s22TrackSectionsContainerV17ScrollableContentVMa() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1C5A44464(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1C5A496CC()
{
  result = qword_1EDA46698;
  if (!qword_1EDA46698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46698);
  }

  return result;
}

uint64_t sub_1C5A49750()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(sub_1C5BC8AF4() - 8);
  v6 = *(v5 + 64);
  v7 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = *(_s22TrackSectionsContainerV17ScrollableContentVMa() - 8);
  v9 = v0 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1C5A44A4C(v0 + v7, v9, v1, v2, v3, v4);
}

unint64_t sub_1C5A49858()
{
  result = qword_1EC194BA0;
  if (!qword_1EC194BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194B98);
    sub_1C5A498DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194BA0);
  }

  return result;
}

unint64_t sub_1C5A498DC()
{
  result = qword_1EC194BA8[0];
  if (!qword_1EC194BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC194BA8);
  }

  return result;
}

uint64_t sub_1C5A49930()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5A49984()
{
  result = qword_1EC194C30;
  if (!qword_1EC194C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC194C38);
    sub_1C5A49A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194C30);
  }

  return result;
}

unint64_t sub_1C5A49A10()
{
  result = qword_1EDA4B698;
  if (!qword_1EDA4B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B698);
  }

  return result;
}

uint64_t sub_1C5A49A78()
{
  sub_1C593FCA4();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5A49AC0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t NowPlayingArtwork.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A49BC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1C5BCBF54();

    sub_1C5BCAF04();
    v16 = sub_1C5BCBF94();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1C5BCBDE4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A49D7C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_1C5BC7F04();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1EC194D70;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_1C5A4E970(&qword_1EC194D70, 255, MEMORY[0x1E695BF10]);

          v19 = sub_1C5BCAD34();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_1C5A4E970(&unk_1EC194D78, 255, MEMORY[0x1E695BF10]);
          while ((sub_1C5BCADB4() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_1EC194D70;
          if (!v23)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1C5A4E23C(v8, v7);
}

uint64_t static NowPlayingArtworkTreatment<>.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C592CFE4(&unk_1F4513970);
  *a1 = result;
  return result;
}

uint64_t NowPlayingBackgroundStaticArtworkTreatment.placements(for:)(uint64_t a1)
{
  if (*(a1 + 18) || (*(a1 + 32) & 1) == 0 && *(a1 + 24) == 1)
  {
    return sub_1C592CFE4(&unk_1F4513858);
  }

  else
  {
  }
}

id static NowPlayingArtworkTreatment<>.background(image:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1C592CFE4(&unk_1F4513998);
  a2[1] = a1;

  return a1;
}

uint64_t static NowPlayingVideoPlayerArtworkTreatment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1C592535C(0, &qword_1EDA45D70);
  if ((sub_1C5BCB744() & 1) == 0 || (sub_1C5A4A39C(v2, v4, &qword_1EC194C48) & 1) == 0)
  {
    return 0;
  }

  return sub_1C5931E14(v3, v5);
}

uint64_t sub_1C5A4A200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v9 = *(v4 - 1);
      v8 = *v4;
      if (*(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1C5BCBDE4();
        result = 0;
        if ((v11 & 1) == 0)
        {
          return result;
        }

        if (v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C5A4A2CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1C5BCBDE4();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C5A4A39C(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1C592535C(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1C694FD20](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1C694FD20](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1C5BCB744();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1C5BCB744();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_1C5BCB984();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_1C5BCB984();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C5A4A60C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1C592535C(0, &qword_1EDA45D70);
  if ((sub_1C5BCB744() & 1) == 0 || (sub_1C5A4A39C(v2, v4, &qword_1EC194C48) & 1) == 0)
  {
    return 0;
  }

  return sub_1C5931E14(v3, v5);
}

uint64_t static NowPlayingArtworkTreatment<>.videoPlayer(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 systemDefaultSpeeds];
  sub_1C592535C(0, &qword_1EC194C48);
  v7 = sub_1C5BCB054();

  *a2 = v5;
  a2[1] = v7;
  result = sub_1C592CFE4(&unk_1F45139C0);
  a2[2] = result;
  return result;
}

uint64_t static NowPlayingArtworkTreatment<>.videoPlayer(_:speeds:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = sub_1C592CFE4(&unk_1F45139E8);
  v4 = a1;
}

uint64_t static NowPlayingMPCVideoArtworkTreatment.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1C5931E14(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194CB0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA00](v2, v3, v4, v5, v6);
}

uint64_t sub_1C5A4A870(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1C5931E14(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194CB0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA00](v2, v3, v4, v5, v6);
}

uint64_t static NowPlayingArtworkTreatment<>.mpcVideo(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1C592CFE4(&unk_1F4513A10);
  a2[1] = a1;
}

uint64_t sub_1C5A4A95C@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);

  if ((v8 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v7 = v12;
  }

  swift_getKeyPath();
  v12 = v7;
  sub_1C5A4E970(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  sub_1C5BC7B74();

  *a1 = *(v7 + 17);
}

uint64_t sub_1C5A4AB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v7 = sub_1C5BC8F34();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = a2;
  v72 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a3;
  v9 = _s31PrimaryArtworkViewOrVideoPlayerVMa();
  v10 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  v11 = sub_1C5BC8AB4();
  sub_1C5BC9414();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v12 = sub_1C5BC8AB4();
  v61 = v9;
  WitnessTable = swift_getWitnessTable();
  v101 = WitnessTable;
  v102 = MEMORY[0x1E697E5C0];
  v62 = v10;
  v13 = swift_getWitnessTable();
  v14 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
  v60 = v13;
  v99 = v13;
  v100 = v14;
  v15 = swift_getWitnessTable();
  v97 = swift_getWitnessTable();
  v98 = MEMORY[0x1E697E070];
  v16 = swift_getWitnessTable();
  v17 = sub_1C5943310();
  v95 = v16;
  v96 = v17;
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x1E697DD90];
  v18 = swift_getWitnessTable();
  v63 = v12;
  v64 = v11;
  *&v89 = v11;
  *(&v89 + 1) = v12;
  v76 = v18;
  v77 = v15;
  *&v90 = v15;
  *(&v90 + 1) = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v75 = &v57 - v20;
  v65 = sub_1C5BC8AB4();
  v21 = *(v65 - 8);
  v22 = MEMORY[0x1EEE9AC00](v65);
  v67 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v68 = &v57 - v24;
  v25 = *a1;
  if (*(a1 + 8) == 1)
  {
    v86 = *a1;
    v27 = v72;
    v26 = v73;
    v28 = v74;
  }

  else
  {

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v27 = v72;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v25, 0);
    v26 = v73;
    v28 = v74;
    (*(v73 + 8))(v27, v74);
    LOBYTE(v25) = v86;
  }

  LOBYTE(v80[0]) = v25;
  result = sub_1C59416B4(v88);
  *(v85 + 10) = *(a1 + 170);
  v31 = *(a1 + 160);
  v84[2] = *(a1 + 144);
  v85[0] = v31;
  v32 = *(a1 + 128);
  v84[0] = *(a1 + 112);
  v84[1] = v32;
  if (BYTE9(v85[1]))
  {
    v33 = *(a1 + 160);
    v91 = *(a1 + 144);
    v92[0] = v33;
    *(v92 + 9) = *(a1 + 169);
    v34 = *(a1 + 128);
    v89 = *(a1 + 112);
    v90 = v34;
  }

  else
  {

    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v84, &unk_1EC194DE0);
    result = (*(v26 + 8))(v27, v28);
  }

  v36 = v71;
  if (BYTE2(v90) == 3)
  {
    __break(1u);
  }

  else
  {
    v58 = OpaqueTypeMetadata2;
    v71 = v21;
    v83 = BYTE2(v90);
    v37 = v66;
    _s11ArtworkViewVMa();
    sub_1C5A4A95C(&v82);
    v81 = v82;
    sub_1C59451F4(v80, v88, &v83, &v81, v87);
    sub_1C59452C4();
    v38 = v36;
    v39 = swift_checkMetadataState();
    sub_1C5BCA2B4();
    (*(*(v39 - 8) + 8))(v87, v39);
    LOBYTE(v80[0]) = sub_1C59452C4() & 1;
    v40 = swift_checkMetadataState();
    sub_1C5BCA384();
    v41 = (*(*(v40 - 8) + 8))(v88, v40);
    if (qword_1EDA45F90 != -1)
    {
      v41 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v41);
    *(&v57 - 4) = v38;
    *(&v57 - 3) = v37;
    *(&v57 - 2) = a1;

    v42 = swift_checkMetadataState();
    v43 = swift_checkMetadataState();
    sub_1C5BCA374();

    (*(*(v42 - 8) + 8))(&v89, v42);
    v44 = *(a1 + 280);
    v45 = *(a1 + 288);

    if ((v45 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v46 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v47 = v72;
      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v73 + 8))(v47, v74);
      v44 = v80[0];
    }

    swift_getKeyPath();
    v80[0] = v44;
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
    sub_1C5BC7B74();

    v48 = *(v44 + 19);

    if (v48 == 1)
    {
      sub_1C5A4A95C(v80);
    }

    v80[0] = v42;
    v80[1] = v43;
    v80[2] = v77;
    v80[3] = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v50 = v67;
    v51 = v58;
    v52 = v75;
    sub_1C5BCA2B4();
    (*(v69 + 8))(v52, v51);
    v78 = OpaqueTypeConformance2;
    v79 = MEMORY[0x1E697E5C0];
    v53 = v65;
    v54 = swift_getWitnessTable();
    v55 = v68;
    sub_1C593EDC0(v50, v53, v54);
    v56 = *(v71 + 8);
    v56(v50, v53);
    sub_1C593EDC0(v55, v53, v54);
    return (v56)(v55, v53);
  }

  return result;
}

uint64_t sub_1C5A4B54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42[1] = a1;
  v50 = a5;
  v8 = sub_1C5BC8F34();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  v54 = a4;
  _s31PrimaryArtworkViewOrVideoPlayerVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  sub_1C5BC8AB4();
  sub_1C5BC9414();
  v11 = sub_1C5BC8AB4();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  v14 = sub_1C5BC8AB4();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v44 = v42 - v15;
  v48 = v16;
  v17 = sub_1C5BC8AB4();
  v49 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v45 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v46 = v42 - v20;
  v21 = *(a2 + 280);
  v55 = a2;
  LODWORD(a2) = *(a2 + 288);

  v22 = v21;
  v56 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v23 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v51 + 8))(v10, v52);
    v22 = v63[0];
  }

  swift_getKeyPath();
  v63[0] = v22;
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
  sub_1C5BC7B74();

  v24 = *(v22 + 17);

  if (v24 == 1)
  {
    _s11ArtworkViewVMa();
    sub_1C5A4A95C(v63);
  }

  sub_1C5BCABD4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9E54();

  v26 = v21;
  if ((v56 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v27 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v51 + 8))(v10, v52);
    v26 = v63[0];
  }

  swift_getKeyPath();
  v63[0] = v26;
  sub_1C5BC7B74();

  v28 = *(v26 + 16);

  if (v28 == 1)
  {
    _s11ArtworkViewVMa();
    sub_1C5A4A95C(v63);
    v29 = LOBYTE(v63[0]) ^ 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v44;
  LOBYTE(v63[0]) = v29 & 1;
  v61 = WitnessTable;
  v62 = MEMORY[0x1E697E070];
  v31 = swift_getWitnessTable();
  MEMORY[0x1C694E550](v63, v11, &type metadata for NowPlayingMiniPlayerFade, v31);
  (*(v43 + 8))(v13, v11);

  if ((v56 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v32 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v51 + 8))(v10, v52);
    v21 = v63[0];
  }

  swift_getKeyPath();
  v63[0] = v21;
  sub_1C5BC7B74();

  v33 = *(v21 + 16);

  if (v33 == 1)
  {
    _s11ArtworkViewVMa();
    sub_1C5A4A95C(v63);
  }

  v34 = sub_1C5943310();
  v59 = v31;
  v60 = v34;
  v35 = v48;
  v36 = swift_getWitnessTable();
  v37 = v45;
  sub_1C5BCA1E4();
  (*(v47 + 8))(v30, v35);
  v57 = v36;
  v58 = MEMORY[0x1E697DD90];
  v38 = swift_getWitnessTable();
  v39 = v46;
  sub_1C593EDC0(v37, v17, v38);
  v40 = *(v49 + 8);
  v40(v37, v17);
  sub_1C593EDC0(v39, v17, v38);
  return (v40)(v39, v17);
}

uint64_t sub_1C5A4BD70()
{
  swift_getKeyPath();
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
  sub_1C5BC7B74();

  return *(v0 + 17);
}

uint64_t sub_1C5A4BE14()
{
  swift_getKeyPath();
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

uint64_t sub_1C5A4BEB8()
{
  swift_getKeyPath();
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
  sub_1C5BC7B74();

  return *(v0 + 19);
}

uint64_t sub_1C5A4BF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a1;
  v98 = a4;
  v102 = _s9VideoViewVMa();
  v6 = sub_1C5BC8AB4();
  v100 = sub_1C5BC97C4();
  v96 = v6;
  v7 = sub_1C5BC8AB4();
  v92 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v91 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v77 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v13 = sub_1C5BCB804();
  v87 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v77 - v14;
  v15 = sub_1C5950C90();
  *&v124 = &type metadata for NowPlayingLookupID;
  *(&v124 + 1) = AssociatedTypeWitness;
  *&v125 = v15;
  *(&v125 + 1) = AssociatedConformanceWitness;
  v83 = type metadata accessor for ViewProvider();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v79 = &v77 - v16;
  v17 = sub_1C5BC8AB4();
  v89 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v77 - v18;
  v135 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1C5946D98();
  v133 = WitnessTable;
  v134 = v20;
  v21 = swift_getWitnessTable();
  v101 = v17;
  *&v124 = v17;
  *(&v124 + 1) = v21;
  v103 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v78 = &v77 - v23;
  v82 = v24;
  v25 = sub_1C5BC8AB4();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v80 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v85 = &v77 - v29;
  v97 = v7;
  v99 = v30;
  v31 = sub_1C5BC92D4();
  v94 = *(v31 - 8);
  v95 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v100 = &v77 - v32;
  v33 = v93;
  sub_1C59318C8(v93 + 8, &v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199CD0);
  if (swift_dynamicCast())
  {
    sub_1C5931F84(v130, v132);
    sub_1C59318C8(v132, &v124);
    sub_1C5B9107C(&v124, v130);
    v34 = v102;
    v35 = swift_getWitnessTable();
    sub_1C5AC1590(v34, v35);
    (*(*(v34 - 8) + 8))(v130, v34);
    v36 = sub_1C5946DEC();
    v108 = v35;
    v109 = v36;
    v93 = MEMORY[0x1E697E858];
    v37 = v96;
    v38 = swift_getWitnessTable();
    v39 = v91;
    sub_1C5949C94(0xD000000000000012, 0x80000001C5BF86C0, &unk_1F4513A38);
    sub_1C5A4EF10(&unk_1F4513A58);
    (*(*(v37 - 8) + 8))(&v124, v37);
    v40 = sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    v106 = v38;
    v107 = v40;
    v41 = v97;
    v42 = swift_getWitnessTable();
    v43 = v90;
    sub_1C593EDC0(v39, v41, v42);
    v44 = *(v92 + 8);
    v44(v39, v41);
    sub_1C593EDC0(v43, v41, v42);
    *&v124 = v101;
    *(&v124 + 1) = v103;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v105 = v40;
    swift_getWitnessTable();
    sub_1C5950E54(v39, v41);
    v44(v39, v41);
    v44(v43, v41);
    __swift_destroy_boxed_opaque_existential_0(v132);
  }

  else
  {
    v131 = 0;
    memset(v130, 0, sizeof(v130));
    sub_1C5924EF4(v130, &qword_1EC194E78);
    sub_1C59498C4(*(v33 + 56));
    v92 = v26;
    v45 = *(a3 + 384);
    swift_unknownObjectRetain();
    v46 = v79;
    v45(a2, a3);
    swift_unknownObjectRelease();
    strcpy(&v124, "PrimaryArtwork");
    HIBYTE(v124) = -18;
    v47 = v86;
    v48 = v83;
    sub_1C595BC70(&v124, v83);

    (*(v81 + 8))(v46, v48);
    v49 = v88;
    sub_1C595EE20(v13, WitnessTable);
    (*(v87 + 8))(v47, v13);
    v50 = _s31PrimaryArtworkViewOrVideoPlayerVMa();
    (*(*(v50 - 8) + 16))(&v124, v33, v50);
    v51 = swift_allocObject();
    *(v51 + 16) = a2;
    *(v51 + 24) = a3;
    v52 = v127;
    *(v51 + 64) = v126;
    *(v51 + 80) = v52;
    *(v51 + 96) = v128;
    *(v51 + 112) = v129;
    v53 = v125;
    *(v51 + 32) = v124;
    *(v51 + 48) = v53;
    v54 = v78;
    v55 = v101;
    sub_1C5BC9EC4();

    (*(v89 + 8))(v49, v55);
    *&v124 = v55;
    *(&v124 + 1) = v103;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = v80;
    v58 = v82;
    sub_1C595BB1C(0xD000000000000012, 0x80000001C5BF86C0);
    (*(v84 + 8))(v54, v58);
    v59 = sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    v122 = v56;
    v123 = v59;
    v60 = v99;
    v61 = swift_getWitnessTable();
    v62 = v85;
    sub_1C593EDC0(v57, v60, v61);
    v63 = *(v92 + 8);
    v92 += 8;
    v63(v57, v60);
    sub_1C593EDC0(v62, v60, v61);
    v64 = swift_getWitnessTable();
    v65 = sub_1C5946DEC();
    v120 = v64;
    v121 = v65;
    v118 = swift_getWitnessTable();
    v119 = v59;
    v66 = v97;
    swift_getWitnessTable();
    sub_1C5941738(v57, v66, v60);
    v63(v57, v60);
    v63(v62, v60);
  }

  v67 = swift_getWitnessTable();
  v68 = sub_1C5946DEC();
  v116 = v67;
  v117 = v68;
  v69 = swift_getWitnessTable();
  v70 = sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  v114 = v69;
  v115 = v70;
  v71 = swift_getWitnessTable();
  *&v124 = v101;
  *(&v124 + 1) = v103;
  v112 = swift_getOpaqueTypeConformance2();
  v113 = v70;
  v72 = swift_getWitnessTable();
  v110 = v71;
  v111 = v72;
  v73 = v95;
  v74 = swift_getWitnessTable();
  v75 = v100;
  sub_1C593EDC0(v100, v73, v74);
  return (*(v94 + 8))(v75, v73);
}

uint64_t sub_1C5A4CCA4(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) != 2)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);

    v9 = v7;
    if ((v8 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v10 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v3 + 8))(v6, v2);
      v9 = v17[0];
    }

    swift_getKeyPath();
    v17[0] = v9;
    sub_1C5A4E970(&qword_1EDA4AE80, 255, _s13HostedContentCMa);
    sub_1C5BC7B74();

    v11 = *(v9 + 48);

    if (v11)
    {

      if (qword_1EDA469E0 != -1)
      {
        swift_once();
      }

      v12 = sub_1C5BC7D64();
      __swift_project_value_buffer(v12, qword_1EDA5DA78);
      v13 = sub_1C5BC7D44();
      v14 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1C5922000, v13, v14, "Dismissing selected content because artwork was tapped", v15, 2u);
        MEMORY[0x1C69510F0](v15, -1, -1);
      }

      if ((v8 & 1) == 0)
      {
        sub_1C5BCB4E4();
        v16 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();

        (*(v3 + 8))(v6, v2);
      }

      v17[0] = 0;
      v17[1] = 0;
      sub_1C5A37C44(v17, 1);
    }
  }

  return result;
}

uint64_t sub_1C5A4CFE8()
{
  *&v15[0] = sub_1C5BCA484();
  sub_1C5BCAA54();
  _s18ArtworkPlaceholderVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC9CE4();

  v6 = v19;
  v7 = v20;
  v8 = v21;
  v4 = v17;
  v5 = v18;
  sub_1C5BC92A4();
  v0 = sub_1C5BC8AB4();
  swift_getWitnessTable();
  v1 = swift_getWitnessTable();
  sub_1C593EDC0(&v4, v0, v1);
  v15[2] = v6;
  v15[3] = v7;
  v16 = v8;
  v15[0] = v4;
  v15[1] = v5;
  v2 = *(*(v0 - 8) + 8);
  v2(v15, v0);
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v4 = v10;
  v5 = v11;
  sub_1C593EDC0(&v4, v0, v1);
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v17 = v4;
  v18 = v5;
  return v2(&v17, v0);
}

void sub_1C5A4D284(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    a1 = v52;
  }

  swift_getKeyPath();
  *&v52 = a1;
  sub_1C5A4E970(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  sub_1C5BC7B74();

  v12 = *(a1 + 17);

  if (v12 == 1)
  {
    KeyPath = swift_getKeyPath();
    LOBYTE(v52) = 0;
    *(&v52 + 1) = KeyPath;
    LOBYTE(v53) = 0;
    v14 = _s18ArtworkPlaceholderVMa();
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(&v52, v14, WitnessTable);
    sub_1C5942458(KeyPath, 0);
    v16 = swift_getKeyPath();
    LOBYTE(v52) = 1;
    *(&v52 + 1) = v16;
    LOBYTE(v53) = 0;
    sub_1C593EDC0(&v52, v14, WitnessTable);
    sub_1C5942458(v16, 0);
    v17 = v45;
    LOBYTE(KeyPath) = v46;
    v37 = v44;
    v38 = v45;
    v39 = v46;
    v18 = v42;
    v26[1] = a4;
    v19 = v43;
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v40[0] = &v37;
    v40[1] = &v34;
    sub_1C5A36948(v45, v46);
    sub_1C5A36948(v18, v19);
    v33[0] = v14;
    v33[1] = v14;
    v31 = WitnessTable;
    v32 = WitnessTable;
    sub_1C594226C(v40, 2uLL, v33);
    sub_1C5942458(v18, v19);
    sub_1C5942458(v17, KeyPath);
    sub_1C5942458(v35, v36);
    sub_1C5942458(v38, v39);
    v20 = *(&v52 + 1);
    LOBYTE(v17) = v53;
    v21 = v54;
    LOBYTE(v18) = v55;
    v29[0] = v52;
    v29[1] = *(&v52 + 1);
    v29[2] = v53;
    v29[3] = BYTE8(v53);
    v29[4] = v54;
    v30 = v55;
    swift_getTupleTypeMetadata2();
    sub_1C5BCAB74();
    swift_getWitnessTable();
    sub_1C5941600(v29, &v48);
    sub_1C5942458(v20, v17);
    sub_1C5942458(v21, v18);
    v27 = v48;
    v28 = v49;
    v22 = v50;
    v23 = v51;
    _s18ArtworkPlaceholderVMa();
  }

  else
  {
    v48 = 0uLL;
    *&v49 = 255;
    _s18ArtworkPlaceholderVMa();
    *(&v49 + 1) = 0;
    v50 = 0;
    v51 = 0;
    swift_getTupleTypeMetadata2();
    sub_1C5BCAB74();
    swift_getWitnessTable();
    sub_1C5941600(&v48, &v52);
    v27 = v52;
    v28 = v53;
    v22 = v54;
    v23 = v55;
  }

  v52 = v27;
  v53 = v28;
  v54 = v22;
  v55 = v23;
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v24 = sub_1C5BCB804();
  v47 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  sub_1C593EDC0(&v52, v24, v25);
  sub_1C595BAC4(v27, *(&v27 + 1), v28, *(&v28 + 1), v22, v23);
}

uint64_t sub_1C5A4D7D8()
{
  _s12PresentationCMa();
  sub_1C5A4E970(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  return sub_1C5BC8324();
}

uint64_t sub_1C5A4D84C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  return v1;
}

uint64_t sub_1C5A4D8D4()
{
  v1 = OBJC_IVAR____TtCCC11MediaCoreUI19NowPlayingViewModel7Artwork17BackgroundArtwork__snapshotImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194D88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A4D97C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C5A4DA28(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A4DB3C(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A4DC50()
{
  swift_getKeyPath();
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
  sub_1C5BC7B74();

  return *(v0 + 18);
}

uint64_t sub_1C5A4DCF4(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A4DE08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
  sub_1C5BC7B74();

  *a2 = *(v3 + 19);
  return result;
}

uint64_t sub_1C5A4DEB4(uint64_t result)
{
  if (*(v1 + 19) == (result & 1))
  {
    *(v1 + 19) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A4DFC8()
{
  v1 = OBJC_IVAR____TtCCC11MediaCoreUI19NowPlayingViewModel7Artwork20MiniPlayerAppearance___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A4E064()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5A4E108()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();

  return sub_1C5BCBF94();
}

uint64_t sub_1C5A4E1A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5A4EF64();
  *a1 = result;
  return result;
}

void sub_1C5A4E1D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000646ELL;
  v5 = 0x756F72676B636162;
  if (v2 != 1)
  {
    v5 = 0x726564616568;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C5A4E23C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1C5BCB984();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_1C5BCB9D4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A4E340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  swift_beginAccess();
  sub_1C59318C8(a2 + 16, v11);
  v9 = v12;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  LOBYTE(v9) = NowPlayingArtworkTreatment.isEqual(_:)(&v13, v9);
  __swift_destroy_boxed_opaque_existential_0(v11);
  if ((v9 & 1) == 0)
  {
    sub_1C593192C(boxed_opaque_existential_0, *(a2 + 56), a2, a3, a4);
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(a2 + 16);
  sub_1C5931F84(&v13, a2 + 16);
  return swift_endAccess();
}

uint64_t _s11MediaCoreUI42NowPlayingBackgroundStaticArtworkTreatmentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_1C5931E14(*a1, *a2))
  {
    if (v2)
    {
      if (v3)
      {
        sub_1C592535C(0, &qword_1EDA4E5E0);
        v4 = v3;
        v5 = v2;
        v6 = sub_1C5BCB744();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1C5A4E4FC(uint64_t a1)
{
  result = sub_1C5A4E524();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E524()
{
  result = qword_1EDA47380;
  if (!qword_1EDA47380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47380);
  }

  return result;
}

unint64_t sub_1C5A4E578(uint64_t a1)
{
  result = sub_1C5A4E5A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E5A0()
{
  result = qword_1EC194CB8;
  if (!qword_1EC194CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194CB8);
  }

  return result;
}

unint64_t sub_1C5A4E5F4(uint64_t a1)
{
  result = sub_1C5A4E61C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E61C()
{
  result = qword_1EC194CC0;
  if (!qword_1EC194CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194CC0);
  }

  return result;
}

unint64_t sub_1C5A4E670(uint64_t a1)
{
  result = sub_1C5A4E698();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E698()
{
  result = qword_1EC194CC8;
  if (!qword_1EC194CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194CC8);
  }

  return result;
}

unint64_t sub_1C5A4E6EC(uint64_t a1)
{
  result = sub_1C5A4E714();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5A4E714()
{
  result = qword_1EC194CD0;
  if (!qword_1EC194CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194CD0);
  }

  return result;
}