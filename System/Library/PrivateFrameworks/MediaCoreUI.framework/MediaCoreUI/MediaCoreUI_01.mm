uint64_t sub_1C593E5AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return sub_1C5A37490(v4);
}

uint64_t sub_1C593E60C(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v5[0] = v1;
  *(v5 + 9) = *(a1 + 57);
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1C5A33D1C(v4);
}

uint64_t sub_1C593E6D0@<X0>(uint64_t a1@<X8>)
{
  sub_1C593F524();
  result = sub_1C5BC8F44();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C593E7D8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C593E820(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1C593E868@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = v1[8];
  swift_beginAccess();
  sub_1C59318C8(v4 + 64, v24);
  v5 = v25;
  v6 = v26;
  __swift_project_boxed_opaque_existential_0(v24, v25);
  v7 = v2[4];
  swift_getKeyPath();
  *&v18 = v7;
  sub_1C59378A8(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  v9 = *(v7 + 104);
  if ((v9 & 0xFF0000) == 0x40000)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = *(v7 + 88);
  v19 = v9;
  v10 = *(v7 + 128);
  v20 = *(v7 + 112);
  v21 = v10;
  v22 = *(v7 + 144);
  v23 = *(v7 + 160);
  v11 = (*(v6 + 16))(&v18, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v24);
  v12 = *(v2[2] + 40);
  swift_getKeyPath();
  *&v18 = v12;
  sub_1C59378A8(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  if ((*(v12 + 17) & 1) == 0)
  {
    v16 = sub_1C593EBD4(4u, v11);

    if (v16)
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_17;
  }

  v13 = v2[5];
  swift_getKeyPath();
  *&v18 = v13;
  sub_1C59378A8(&qword_1EDA4AE80, _s13HostedContentCMa);
  sub_1C5BC7B74();

  if (!*(v13 + 48))
  {
    if (sub_1C593EBD4(1u, v11))
    {

      v15 = 1;
    }

    else
    {
      v17 = sub_1C593EBD4(0, v11);

      v15 = 0;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    *a1 = v15;
    return result;
  }

  if (!sub_1C593EBD4(2u, v11))
  {

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  swift_getKeyPath();
  *&v18 = v7;

  sub_1C5BC7B74();

  v14 = *(v7 + 104);
  if (BYTE2(v14) != 4)
  {

    v15 = 2;
    if ((v14 & 0xFF0000) == 0x30000 || BYTE2(v14) != 2)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

BOOL sub_1C593EBD4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v3);
  v4 = sub_1C5BCBF94();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C593ECC4(uint64_t a1, uint64_t a2)
{
  _s27TransportInteractionMonitorCMa();
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196CA8);
  swift_allocObject();
  *(v4 + 16) = sub_1C5BC7F44();
  sub_1C5BC7BA4();
  sub_1C5BCA684();
  MEMORY[0x1C694E550](&v6, a1, &type metadata for TransportInteractionObserver, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C593EE00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196CB0);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC196CB8);
  _s27TransportInteractionMonitorCMa();
  sub_1C5924F54(&qword_1EDA46238, qword_1EC196CB8);
  sub_1C5939F8C(&qword_1EDA4A348, _s27TransportInteractionMonitorCMa);
  sub_1C5BC9DE4();
}

uint64_t sub_1C593EF24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C50);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - v2;
  v4 = sub_1C5BC81D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  type metadata accessor for HostedScenePhaseModel();
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel__scenePhase;
  (*(v5 + 104))(v10, *MEMORY[0x1E697BE30], v4);
  (*(v5 + 16))(v8, v10, v4);
  sub_1C5BC7FF4();
  (*(v5 + 8))(v10, v4);
  (*(v1 + 32))(v11 + v12, v3, v0);
  *(v11 + OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel_notificationObservers) = MEMORY[0x1E69E7CC0];
  v13 = (v11 + OBJC_IVAR____TtC11MediaCoreUIP33_8B5FAED8DE080D34DF68BF28A36B87C521HostedScenePhaseModel_sceneConnectionObserver);
  *v13 = 0u;
  v13[1] = 0u;
  sub_1C5ABB2EC();
  return v11;
}

unint64_t sub_1C593F170()
{
  result = qword_1EDA45D90;
  if (!qword_1EDA45D90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA45D90);
  }

  return result;
}

uint64_t sub_1C593F1BC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1C593F20C(char *a1, int64_t a2, char a3)
{
  result = sub_1C593F22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C593F22C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_1C593F33C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C593F34C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HostedScenePhaseModel();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C593F38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for HostedScenePhaseModel();
  sub_1C593F1BC(&qword_1EDA48C28, type metadata accessor for HostedScenePhaseModel);
  sub_1C5BC83A4();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C28) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C30);
  sub_1C5BC8034();

  *v5 = KeyPath;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196C38);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

unint64_t sub_1C593F524()
{
  result = qword_1EDA4B3F8[0];
  if (!qword_1EDA4B3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4B3F8);
  }

  return result;
}

uint64_t sub_1C593F58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C593F5F8@<X0>(_BYTE *a1@<X8>)
{
  sub_1C593F648();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

unint64_t sub_1C593F648()
{
  result = qword_1EDA48A78[0];
  if (!qword_1EDA48A78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA48A78);
  }

  return result;
}

uint64_t sub_1C593F6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  (*(v8 + 8))(a2, v7);
  sub_1C593F7E4(a1, v6);
  return (*(v8 + 32))(a2, v6, v7);
}

uint64_t sub_1C593F7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C593F854@<D0>(_OWORD *a1@<X8>)
{
  sub_1C593F8A4();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C593F8A4()
{
  result = qword_1EDA4B500[0];
  if (!qword_1EDA4B500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4B500);
  }

  return result;
}

double sub_1C593F8F8@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_1C593F950@<Q0>(_OWORD *a1@<X8>)
{
  sub_1C593F9B0();
  sub_1C5BC8F44();
  a1[2] = v5;
  a1[3] = *v6;
  *(a1 + 57) = *&v6[9];
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C593F9B0()
{
  result = qword_1EDA4BAC0;
  if (!qword_1EDA4BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4BAC0);
  }

  return result;
}

__n128 sub_1C593FA04@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EDA4BAC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EDA4BB00;
  *(a1 + 32) = xmmword_1EDA4BAF0;
  *(a1 + 48) = v1;
  *(a1 + 57) = unk_1EDA4BB09;
  result = *&byte_1EDA4BAE0;
  *a1 = xmmword_1EDA4BAD0;
  *(a1 + 16) = result;
  return result;
}

double sub_1C593FA7C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  xmmword_1EDA4BAD0 = 0uLL;
  byte_1EDA4BAE0 = 1;
  *algn_1EDA4BAE1 = 777;
  qword_1EDA4BAE8 = v1;
  LOBYTE(xmmword_1EDA4BAF0) = 0;
  result = 0.0;
  *(&xmmword_1EDA4BAF0 + 8) = 0u;
  unk_1EDA4BB08 = 0u;
  byte_1EDA4BB18 = 0;
  return result;
}

uint64_t sub_1C593FB74@<X0>(_BYTE *a1@<X8>)
{
  sub_1C593FBC4();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

unint64_t sub_1C593FBC4()
{
  result = qword_1EDA47E78;
  if (!qword_1EDA47E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47E78);
  }

  return result;
}

unint64_t sub_1C593FCA4()
{
  result = qword_1EDA4B260;
  if (!qword_1EDA4B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B260);
  }

  return result;
}

uint64_t sub_1C593FCF8@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_1EDA4B270 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_1C59318C8(&qword_1EDA4B280, v1);
}

uint64_t sub_1C593FD5C()
{
  qword_1EDA4B298 = &type metadata for NowPlayingStandardArtworkTreatment;
  qword_1EDA4B2A0 = sub_1C5928464();
  result = sub_1C592CFE4(&unk_1F4513AD0);
  qword_1EDA4B280 = result;
  return result;
}

uint64_t sub_1C593FDA4(uint64_t a1)
{
  sub_1C59318C8(a1, v3);
  sub_1C59318C8(v3, &v2);
  sub_1C593FCA4();
  sub_1C5BC8F54();
  return __swift_destroy_boxed_opaque_existential_0(v3);
}

double sub_1C593FE04@<D0>(_OWORD *a1@<X8>)
{
  sub_1C593FE54();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_1C593FE54()
{
  result = qword_1EDA46370;
  if (!qword_1EDA46370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46370);
  }

  return result;
}

uint64_t sub_1C593FEA8()
{
  sub_1C593FE54();

  return sub_1C5BC8F54();
}

double sub_1C593FF08@<D0>(_OWORD *a1@<X8>)
{
  sub_1C593FF58();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C593FF58()
{
  result = qword_1EDA47B68[0];
  if (!qword_1EDA47B68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47B68);
  }

  return result;
}

double sub_1C593FFAC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C5BDB910;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1C593FFC0(uint64_t *a1)
{
  sub_1C593E7D8(*a1, a1[1]);
  sub_1C593FF58();
  return sub_1C5BC8F54();
}

unint64_t sub_1C594005C()
{
  result = qword_1EDA4BB20;
  if (!qword_1EDA4BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4BB20);
  }

  return result;
}

uint64_t sub_1C59400B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1C5940118()
{
  qword_1EDA4BB48 = 0;
  result = 0.0;
  xmmword_1EDA4BB28 = 0u;
  unk_1EDA4BB38 = 0u;
  return result;
}

uint64_t sub_1C5940130@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_1EDA4BB58 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_1C59400B0(&xmmword_1EDA4BB28, v1, &qword_1EC1929B0);
}

uint64_t sub_1C59401A4(uint64_t a1)
{
  sub_1C59400B0(a1, v3, &qword_1EC1929B0);
  sub_1C59400B0(v3, &v2, &qword_1EC1929B0);
  sub_1C594005C();
  sub_1C5BC8F54();
  return sub_1C5924EF4(v3, &qword_1EC1929B0);
}

uint64_t sub_1C594024C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C59402A0()
{
  sub_1C5933828(319, &qword_1EDA467C8);
  if (v0 <= 0x3F)
  {
    sub_1C5933828(319, &qword_1EDA46730);
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

uint64_t sub_1C594037C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContentLookupItem();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ContentLookupItem();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C594046C()
{
  result = swift_checkMetadataState();
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

uint64_t sub_1C5940510()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5940550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v93 = a1;
  v2 = a1 - 8;
  v92 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v90 = v3;
  v91 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1C5BC96A4();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v95 = _s25BackdropConditionObserverVMa();
  v85 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v84 = &v60 - v7;
  _s18ArtworkPlaceholderVMa();
  sub_1C5BC8AB4();
  v106 = sub_1C5BCB804();
  _s11ArtworkViewVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197220);
  sub_1C5BC8AB4();
  v107 = sub_1C5BCB804();
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
  v108 = sub_1C5BC92D4();
  _s21MiniPlayerContentViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v109 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196130);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v110 = sub_1C5BCB804();
  _s31TrackSectionsTouchDetectionViewVMa();
  sub_1C5BC8AB4();
  v111 = sub_1C5BCB804();
  swift_getTupleTypeMetadata();
  v70 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1C5BCA7F4();
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v60 - v9;
  v65 = v8;
  v10 = sub_1C5BC8AB4();
  v81 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v60 - v11;
  v12 = swift_getWitnessTable();
  v64 = v12;
  v13 = swift_getWitnessTable();
  v104 = v12;
  v105 = v13;
  v14 = swift_getWitnessTable();
  v106 = v10;
  v107 = v14;
  v60 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v62 = &v60 - v16;
  type metadata accessor for PPTRunnerModifier();
  v78 = OpaqueTypeMetadata2;
  v17 = sub_1C5BC8AB4();
  v79 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v60 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1996D0);
  v19 = sub_1C5BC8AB4();
  v83 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v60 - v20;
  v106 = v10;
  v107 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = swift_getWitnessTable();
  v61 = OpaqueTypeConformance2;
  v102 = OpaqueTypeConformance2;
  v103 = v22;
  v74 = v17;
  v23 = swift_getWitnessTable();
  v24 = sub_1C5924F54(&qword_1EDA46080, &qword_1EC1996D0);
  v63 = v23;
  v100 = v23;
  v101 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_1C5939F34();
  v106 = v19;
  v107 = &type metadata for NowPlayingViewModel.PlayerStyle;
  v72 = v25;
  v108 = v25;
  v109 = v26;
  v71 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v73 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v67 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v68 = &v60 - v30;
  sub_1C5BCAA34();
  v31 = v5;
  v96 = v5;
  v97 = v6;
  v32 = v86;
  v98 = v86;
  v33 = v69;
  sub_1C5BCA7E4();
  v34 = v84;
  WitnessTable = v31;
  v70 = v6;
  sub_1C5942464(v84);
  v35 = v66;
  v36 = v65;
  v37 = v95;
  MEMORY[0x1C694E550](v34, v65, v95, v64);
  (*(v85 + 8))(v34, v37);
  v38 = v62;
  (*(v80 + 8))(v33, v36);
  v39 = v87;
  sub_1C5BC9694();
  sub_1C5BCA0C4();
  (*(v88 + 8))(v39, v89);
  (*(v81 + 8))(v35, v10);
  if (*(v32 + 8))
  {
    v40 = swift_unknownObjectRetain();
    v41 = v75;
    v42 = v78;
    v43 = WitnessTable;
    v44 = v70;
    sub_1C5942744(v40, v78, WitnessTable, v61);
    swift_unknownObjectRelease();
    (*(v76 + 8))(v38, v42);
    swift_getKeyPath();
    v106 = sub_1C5BCAB64();
    LOBYTE(v107) = 0;
    v45 = v82;
    v46 = v74;
    sub_1C5BC9DF4();

    (*(v79 + 8))(v41, v46);
    v47 = v32;
    v48 = v93;
    sub_1C5B7B224(v93, &v106);
    v99 = v106;
    v49 = v92;
    v50 = v91;
    (*(v92 + 16))(v91, v47, v48);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = v43;
    *(v52 + 24) = v44;
    (*(v49 + 32))(v52 + v51, v50, v48);
    v53 = v67;
    v54 = v72;
    v55 = v71;
    sub_1C5BCA344();

    (*(v83 + 8))(v45, v19);
    v106 = v19;
    v107 = &type metadata for NowPlayingViewModel.PlayerStyle;
    v108 = v54;
    v109 = v55;
    v56 = swift_getOpaqueTypeConformance2();
    v57 = v68;
    sub_1C593EDC0(v53, v27, v56);
    v58 = *(v73 + 8);
    v58(v53, v27);
    sub_1C593EDC0(v57, v27, v56);
    return (v58)(v57, v27);
  }

  else
  {
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59413B0@<X0>(uint64_t a1@<X8>)
{
  sub_1C59434EC();
  result = sub_1C5BC8F44();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1C594145C()
{
  v1 = type metadata accessor for NowPlayingView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));
  swift_unknownObjectRelease();
  if (*(v2 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 24);
  }

  else
  {
  }

  v3 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v2 + v1[12];
  sub_1C596AC80(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72), *(v5 + 73));

  sub_1C596AC58(*(v2 + v1[14]), *(v2 + v1[14] + 8), *(v2 + v1[14] + 16));

  return swift_deallocObject();
}

uint64_t sub_1C5941600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BCB804();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C594166C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C59416DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 290))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 248);
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

uint64_t sub_1C5941738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C5BC92B4();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1C5BC92C4();
}

uint64_t sub_1C5941830@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  type metadata accessor for WindowProperties();
  sub_1C5937E88(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  *(a1 + 32) = sub_1C5BC8324();
  *(a1 + 40) = v3 & 1;
  _s12PresentationCMa();
  sub_1C5937E88(&qword_1EDA4AF70, _s12PresentationCMa);
  result = sub_1C5BC8324();
  *(a1 + 48) = result;
  *(a1 + 56) = v5 & 1;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C5941958(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  _s12PresentationCMa();
  sub_1C59A8828();
  v8 = sub_1C5BC8324();
  v9 = v6 & 1;
  v10 = v5;
  MEMORY[0x1C694E550](&v8, a2, &type metadata for OpacityModifier, a3);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

unint64_t sub_1C5941A04()
{
  result = qword_1EDA4BF08[0];
  if (!qword_1EDA4BF08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4BF08);
  }

  return result;
}

uint64_t sub_1C5941A58@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1C59400B0(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

void sub_1C5941C58()
{
  sub_1C5941D00();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C5941D00()
{
  if (!qword_1EDA46828)
  {
    sub_1C5BC81D4();
    v0 = sub_1C5BC8054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46828);
    }
  }
}

unint64_t sub_1C5941D88()
{
  result = qword_1EDA465E0;
  if (!qword_1EDA465E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196C28);
    sub_1C5924F54(&qword_1EDA46248, &qword_1EC196C38);
    sub_1C5924F54(&qword_1EDA460B0, &qword_1EC196C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465E0);
  }

  return result;
}

uint64_t sub_1C5941E74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5941EBC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 56) = 0;
  *(a2 + 64) = swift_getKeyPath();
  *(a2 + 104) = 0;
  *(a2 + 112) = swift_getKeyPath();
  *(a2 + 185) = 0;
  *(a2 + 192) = swift_getKeyPath();
  *(a2 + 200) = 0;
  _s12PresentationCMa();
  sub_1C5A4E970(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  *(a2 + 208) = sub_1C5BC8324();
  *(a2 + 216) = v4 & 1;
  *(a2 + 224) = swift_getKeyPath();
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  _s7ArtworkC17BackgroundArtworkCMa(0);
  sub_1C5A4E970(&qword_1EDA49EF0, 255, _s7ArtworkC17BackgroundArtworkCMa);
  *(a2 + 248) = sub_1C5BC8C84();
  *(a2 + 256) = v5;
  type metadata accessor for WindowProperties();
  sub_1C5A4E970(&qword_1EDA4B960, 255, type metadata accessor for WindowProperties);
  *(a2 + 264) = sub_1C5BC8324();
  *(a2 + 272) = v6 & 1;
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa);
  result = sub_1C5BC8324();
  *(a2 + 280) = result;
  *(a2 + 288) = v8 & 1;
  *(a2 + 289) = a1;
  return result;
}

uint64_t sub_1C59420E4@<X0>(_BYTE *a1@<X8>)
{
  sub_1C593FBC4();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5942250(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C5A36948(a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C594226C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1C5BCAB84();
}

void sub_1C594243C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1C5942458(a2, a3 & 1);
  }
}

uint64_t sub_1C5942458(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C5942464@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C594AB10;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  _s8BackdropCMa();
  sub_1C592F30C(&qword_1EDA49930, _s8BackdropCMa);
  *(a1 + 24) = sub_1C5BC8C84();
  *(a1 + 32) = v2;
  *(a1 + 40) = sub_1C5BC8C84();
  *(a1 + 48) = v3;
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C592F30C(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
  *(a1 + 56) = sub_1C5BC8C84();
  *(a1 + 64) = v4;
  type metadata accessor for WindowProperties();
  sub_1C592F30C(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  *(a1 + 72) = sub_1C5BC8324();
  *(a1 + 80) = v5 & 1;
  *(a1 + 88) = swift_getKeyPath();
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = swift_getKeyPath();
  *(a1 + 168) = 0;
  *(a1 + 176) = swift_getKeyPath();
  *(a1 + 184) = 0;
  v6 = _s25BackdropConditionObserverVMa();
  v7 = v6[16];
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v6[17];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  v9 = v6[18];
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);

  return swift_storeEnumTagMultiPayload();
}

double sub_1C59426EC@<D0>(_OWORD *a1@<X8>)
{
  sub_1C593FE54();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1C5942744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v6 = type metadata accessor for PPTRunnerModifier();
  swift_unknownObjectRetain();
  MEMORY[0x1C694E550](&v8, a2, v6, a4);
  return swift_unknownObjectRelease();
}

void sub_1C594284C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ArtworkCornerStyle(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1C59428AC()
{
  sub_1C594284C(319, &qword_1EDA467B0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C5942934()
{
  result = sub_1C5BC9044();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C59429C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5942A18()
{
  result = qword_1EDA4B6A0;
  if (!qword_1EDA4B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B6A0);
  }

  return result;
}

void sub_1C5942A8C()
{
  sub_1C5942BBC();
  if (v0 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EDA46778, qword_1EC19A460);
    if (v1 <= 0x3F)
    {
      sub_1C593377C(319, &qword_1EDA467D0, &qword_1EC193C10);
      if (v2 <= 0x3F)
      {
        sub_1C5942C0C();
        if (v3 <= 0x3F)
        {
          sub_1C5936C70();
          if (v4 <= 0x3F)
          {
            sub_1C594284C(319, &qword_1EDA46008, MEMORY[0x1E6981790]);
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

void sub_1C5942BBC()
{
  if (!qword_1EDA467B8)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA467B8);
    }
  }
}

void sub_1C5942C0C()
{
  if (!qword_1EDA46400)
  {
    _s14DefaultArtworkCMa();
    sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa);
    v0 = sub_1C5BC8C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46400);
    }
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingArtwork.Placement(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NowPlayingArtwork.Placement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C5942E24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DB8);
  _s31PrimaryArtworkViewOrVideoPlayerVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  sub_1C5BC8AB4();
  sub_1C5BC9414();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5943310();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  type metadata accessor for ArtworkCornerModifier(255);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0);
  sub_1C5943364();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46218, &qword_1EC194DC8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5A4E970(&unk_1EDA48E70, 255, type metadata accessor for ArtworkCornerModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C594341C();
  sub_1C5BCA724();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5943498();
  return swift_getWitnessTable();
}

unint64_t sub_1C5943310()
{
  result = qword_1EC1904B0;
  if (!qword_1EC1904B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1904B0);
  }

  return result;
}

unint64_t sub_1C5943364()
{
  result = qword_1EDA46550;
  if (!qword_1EDA46550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DB8);
    sub_1C5924F54(&qword_1EDA46308, &unk_1EC194DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46550);
  }

  return result;
}

unint64_t sub_1C594341C()
{
  result = qword_1EDA45D38;
  if (!qword_1EDA45D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D38);
  }

  return result;
}

unint64_t sub_1C5943498()
{
  result = qword_1EDA46028;
  if (!qword_1EDA46028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46028);
  }

  return result;
}

unint64_t sub_1C59434EC()
{
  result = qword_1EDA490D0;
  if (!qword_1EDA490D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA490D0);
  }

  return result;
}

uint64_t sub_1C5943540@<X0>(void *a1@<X8>)
{
  sub_1C59434EC();
  result = sub_1C5BC8F44();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1C594359C@<X0>(uint64_t *a1@<X8>)
{
  _s7ArtworkC17BackgroundArtworkCMa(0);
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C59435F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_1C5BC8F34();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194DB8);
  MEMORY[0x1EEE9AC00](v123);
  v5 = *(a1 + 24);
  v118 = *(a1 + 16);
  v119 = (&v78 - v6);
  v121 = a1;
  v117 = v5;
  _s31PrimaryArtworkViewOrVideoPlayerVMa();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0);
  v7 = sub_1C5BC8AB4();
  sub_1C5BC9414();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v8 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v157 = MEMORY[0x1E697E5C0];
  v9 = swift_getWitnessTable();
  v10 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
  v154 = v9;
  v155 = v10;
  v11 = swift_getWitnessTable();
  v152 = swift_getWitnessTable();
  v153 = MEMORY[0x1E697E070];
  v12 = swift_getWitnessTable();
  v13 = sub_1C5943310();
  v150 = v12;
  v151 = v13;
  v148 = swift_getWitnessTable();
  v149 = MEMORY[0x1E697DD90];
  v14 = swift_getWitnessTable();
  v129 = v7;
  v130 = v8;
  v131 = v11;
  v132 = v14;
  swift_getOpaqueTypeMetadata2();
  v97 = sub_1C5BC8AB4();
  v129 = v7;
  v130 = v8;
  v131 = v11;
  v132 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v147 = MEMORY[0x1E697E5C0];
  v98 = swift_getWitnessTable();
  v116 = sub_1C5BC92A4();
  v15 = sub_1C5BC8AB4();
  v115 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v78 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC8);
  v17 = sub_1C5BC8AB4();
  v113 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v78 - v18;
  v19 = sub_1C5BC8AB4();
  v110 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v78 - v20;
  type metadata accessor for ArtworkCornerModifier(255);
  v21 = sub_1C5BC8AB4();
  v105 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v78 - v22;
  v23 = sub_1C5BC8AB4();
  v103 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v78 - v24;
  v25 = sub_1C5BC8AB4();
  v104 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v101 = &v78 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0);
  v28 = sub_1C5943364();
  v81 = v28;
  v29 = swift_getWitnessTable();
  v144 = v28;
  v145 = v29;
  v116 = v15;
  v30 = swift_getWitnessTable();
  v31 = sub_1C5924F54(&qword_1EDA46218, &qword_1EC194DC8);
  v87 = v30;
  v142 = v30;
  v143 = v31;
  v114 = v17;
  v86 = swift_getWitnessTable();
  v140 = v86;
  v141 = MEMORY[0x1E6980A30];
  v112 = v19;
  v32 = swift_getWitnessTable();
  v33 = sub_1C5A4E970(&unk_1EDA48E70, 255, type metadata accessor for ArtworkCornerModifier);
  v85 = v32;
  v138 = v32;
  v139 = v33;
  v108 = v21;
  v82 = swift_getWitnessTable();
  v136 = v82;
  v137 = MEMORY[0x1E69802C0];
  v106 = v23;
  v83 = swift_getWitnessTable();
  v134 = v83;
  v135 = MEMORY[0x1E69805B0];
  v34 = swift_getWitnessTable();
  v35 = sub_1C594341C();
  v107 = v25;
  v129 = v25;
  v130 = v27;
  v99 = v27;
  v88 = v34;
  v131 = v34;
  v132 = v35;
  v84 = v35;
  v36 = sub_1C5BCA724();
  v92 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v89 = &v78 - v37;
  v93 = v38;
  v39 = sub_1C5BC8AB4();
  v94 = *(v39 - 8);
  v95 = v39;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v90 = &v78 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v91 = &v78 - v42;
  v43 = sub_1C5BCA484();
  v44 = sub_1C5BCAA34();
  v46 = v45;
  v47 = v119;
  v48 = v120;
  v49 = v119 + *(v123 + 36);
  v51 = v117;
  v50 = v118;
  sub_1C594436C(v120, v118, v117, v49);
  v52 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194DD0) + 36));
  *v52 = v44;
  v52[1] = v46;
  *v47 = v43;
  v53 = v96;
  sub_1C5BCAA34();
  v124 = v50;
  v125 = v51;
  v126 = v48;
  sub_1C5BC9CE4();
  sub_1C5924EF4(v47, &qword_1EC194DB8);
  v133 = *(v48 + 289);
  v54 = *(v48 + 24);
  if ((*(v48 + 200) & 1) == 0)
  {

    sub_1C5BCB4E4();
    v55 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v56 = v78;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v54, 0);
    (*(v79 + 8))(v56, v80);
  }

  sub_1C5BC9664();
  sub_1C5BCABD4();
  sub_1C59454F8();
  v57 = v111;
  v58 = v116;
  sub_1C5BCA114();
  (*(v115 + 8))(v53, v58);
  sub_1C5BC8AC4();
  sub_1C5BC9894();
  v59 = v109;
  v60 = v114;
  sub_1C5BC9F84();
  (*(v113 + 8))(v57, v60);
  v61 = v102;
  v62 = v112;
  sub_1C594554C(v112, v85);
  (*(v110 + 8))(v59, v62);
  v63 = v100;
  v64 = v108;
  sub_1C5BC9FC4();
  (*(v105 + 8))(v61, v64);
  sub_1C5A4A95C(&v129);
  v65 = v101;
  v66 = v106;
  sub_1C5BC9FA4();
  (*(v103 + 8))(v63, v66);
  sub_1C59458F8(&v129);
  v67 = v89;
  v68 = v107;
  sub_1C5BCA1C4();
  sub_1C5924EF4(&v129, &qword_1EC1929B0);
  (*(v104 + 8))(v65, v68);
  v69 = v93;
  v70 = swift_getWitnessTable();
  v71 = v90;
  sub_1C5BCA1D4();
  (*(v92 + 8))(v67, v69);
  v72 = sub_1C5943498();
  v127 = v70;
  v128 = v72;
  v73 = v95;
  v74 = swift_getWitnessTable();
  v75 = v91;
  sub_1C593EDC0(v71, v73, v74);
  v76 = *(v94 + 8);
  v76(v71, v73);
  sub_1C593EDC0(v75, v73, v74);
  return (v76)(v75, v73);
}

uint64_t sub_1C594436C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194DF0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v31 - v8);
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40[10] = *(a1 + 170);
  v15 = a1[10];
  v39[2] = a1[9];
  *v40 = v15;
  v16 = a1[8];
  v39[0] = a1[7];
  v39[1] = v16;
  if (v40[25])
  {
    v17 = a1[10];
    v37 = a1[9];
    v38[0] = v17;
    *(v38 + 9) = *(a1 + 169);
    v18 = a1[8];
    v35 = a1[7];
    v36 = v18;
    if (v37)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v32 = v12;

    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v39, &unk_1EC194DE0);
    (*(v11 + 8))(v14, v32);
    if (v37)
    {
LABEL_7:
      v21 = sub_1C5BCA484();
      v22 = sub_1C5BCAA34();
      v24 = v23;
      v25 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194DF8) + 36);
      sub_1C594474C(a1, v25);
      v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E00) + 36));
      *v26 = v22;
      v26[1] = v24;
      *v9 = v21;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E08) + 36);
      *(v9 + v27) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E10);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath();
      v29 = v9 + *(v6 + 36);
      *v29 = KeyPath;
      v29[8] = 1;
      sub_1C59E7D34(v9, a4, &qword_1EC194DF0);
      v20 = 0;
      return (*(v7 + 56))(a4, v20, 1, v6);
    }
  }

  if (*(&v36 + 1) != 1)
  {
    goto LABEL_7;
  }

  v20 = 1;
  return (*(v7 + 56))(a4, v20, 1, v6);
}

uint64_t sub_1C59446F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8E74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C594474C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E18);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E20);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  sub_1C5944C58(a1, v9);
  v13 = *a1;
  if (*(a1 + 8) == 1)
  {
    v14 = *a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v13, 0);
    (*(v4 + 8))(v6, v3);
    v14 = v30;
  }

  if (v14 == 1)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  sub_1C59E7D34(v9, v12, &qword_1EC194E18);
  *&v12[*(v10 + 36)] = v16;
  v17 = *a1;
  if (*(a1 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v18 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v17, 0);
    v19 = *(v4 + 8);
    v19(v6, v3);
    v20 = *a1;
    if (*(a1 + 8) != 1)
    {

      sub_1C5BCB4E4();
      v21 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v20, 0);
      v19(v6, v3);
    }
  }

  sub_1C5BCAA84();
  v22 = sub_1C5BCAAB4();

  v23 = *a1;
  if (*(a1 + 8) == 1)
  {
    v29 = *a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v24 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v23, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v23) = v29;
  }

  v25 = v28;
  sub_1C59E7D34(v12, v28, &qword_1EC194E20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E28);
  v27 = v25 + *(result + 36);
  *v27 = v22;
  *(v27 + 8) = v23;
  return result;
}

uint64_t sub_1C5944C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E30);
  MEMORY[0x1EEE9AC00](v27);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E38);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_1C5BCA5B4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 248))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1C5BC8034();

    if (v31[0])
    {
      v12 = v31[0];
      sub_1C5BCA594();
      (*(v9 + 104))(v11, *MEMORY[0x1E6981630], v8);
      v13 = sub_1C5BCA5E4();

      (*(v9 + 8))(v11, v8);
      *v7 = v13;
      *(v7 + 1) = 0;
      *(v7 + 8) = 257;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C10);
      sub_1C5946E40(&qword_1EDA46510, &qword_1EC192C10);
      sub_1C5A4ED64();
      v14 = v28;
      sub_1C5BC92C4();

      v15 = 0;
LABEL_9:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E40);
      return (*(*(v24 - 8) + 56))(v14, v15, 1, v24);
    }

    sub_1C59416B4(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
    if (swift_dynamicCast())
    {
      v16 = v30;
      if (v30)
      {
        v26 = v29;
        type metadata accessor for NowPlayingArtworkMirrorReplicatorLayer();
        *(swift_allocObject() + 16) = v16;
        v17 = v16;
        sub_1C5BC85C4();
        v18 = sub_1C5BCAA54();
        v20 = v19;
        KeyPath = swift_getKeyPath();
        v22 = swift_getKeyPath();
        v23 = &v4[*(v27 + 36)];
        *v23 = KeyPath;
        v23[8] = 0;
        *(v23 + 2) = v22;
        v23[24] = 0;
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
        sub_1C59400B0(v4, v7, &qword_1EC194E30);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C10);
        sub_1C5946E40(&qword_1EDA46510, &qword_1EC192C10);
        sub_1C5A4ED64();
        v14 = v28;
        sub_1C5BC92C4();

        sub_1C5924EF4(v4, &qword_1EC194E30);
        v15 = 0;
        goto LABEL_9;
      }
    }

    v15 = 1;
    v14 = v28;
    goto LABEL_9;
  }

  _s7ArtworkC17BackgroundArtworkCMa(0);
  sub_1C5A4E970(&qword_1EDA49EF0, 255, _s7ArtworkC17BackgroundArtworkCMa);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C59451A4()
{

  return swift_deallocObject();
}

uint64_t sub_1C59451F4@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a3;
  v7 = *a4;
  *a5 = *a1;
  sub_1C5931F84(a2, a5 + 8);
  *(a5 + 48) = v6;
  *(a5 + 49) = v7;
  *(a5 + 56) = sub_1C5BC8C84();
  *(a5 + 64) = v8;
  _s13HostedContentCMa();
  sub_1C5A4E970(&qword_1EDA4AE80, 255, _s13HostedContentCMa);
  result = sub_1C5BC8324();
  *(a5 + 72) = result;
  *(a5 + 80) = v10 & 1;
  return result;
}

uint64_t sub_1C59452C4()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (*v0 != 1)
    {
      return 0;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v6 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v10[0] != 1)
    {
      return 0;
    }
  }

  sub_1C59416B4(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
  if (swift_dynamicCast())
  {
    v7 = v9[2];

    if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C59454BC()
{
  result = sub_1C5BCAAA4();
  qword_1EDA5DA40 = result;
  return result;
}

unint64_t sub_1C59454F8()
{
  result = qword_1EDA4B6B0;
  if (!qword_1EDA4B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B6B0);
  }

  return result;
}

uint64_t sub_1C594554C(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = type metadata accessor for ArtworkCornerStyle(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ArtworkCornerModifier(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  *(v11 + 2) = swift_getKeyPath();
  v11[56] = 0;
  *(v11 + 8) = swift_getKeyPath();
  v11[72] = 0;
  _s14DefaultArtworkCMa();
  sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa);
  *(v11 + 10) = sub_1C5BC8C84();
  *(v11 + 11) = v12;
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  sub_1C5AC3CD8(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
  *(v11 + 12) = sub_1C5BC8C84();
  *(v11 + 13) = v13;
  *v8 = 0;
  v14 = *(v3 + 20);
  v15 = *MEMORY[0x1E697F480];
  v16 = sub_1C5BC9044();
  (*(*(v16 - 8) + 104))(&v8[v14], v15, v16);
  sub_1C5945830(v8, v6, type metadata accessor for ArtworkCornerStyle);
  sub_1C5BCA684();
  sub_1C5945898(v8, type metadata accessor for ArtworkCornerStyle);
  MEMORY[0x1C694E550](v11, a1, v9, v18);
  return sub_1C5945898(v11, type metadata accessor for ArtworkCornerModifier);
}

uint64_t sub_1C5945830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5945898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C59458F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C59400B0(v2, v11, &qword_1EC192EF8);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1C5945A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10);
  sub_1C5AC4570();
  sub_1C5945CDC();
  swift_getOpaqueTypeConformance2();
  sub_1C593A9AC();
  swift_getOpaqueTypeConformance2();
  sub_1C592D124();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5945BF8()
{
  result = qword_1EDA46630;
  if (!qword_1EDA46630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196E18);
    sub_1C5924F54(&qword_1EDA462A0, &qword_1EC196E20);
    sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46630);
  }

  return result;
}

unint64_t sub_1C5945CDC()
{
  result = qword_1EDA4DA20;
  if (!qword_1EDA4DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10);
    sub_1C5945D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DA20);
  }

  return result;
}

unint64_t sub_1C5945D60()
{
  result = qword_1EDA4DA30;
  if (!qword_1EDA4DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DA30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WaveformTheme.ArtworkTreatment(uint64_t a1, int a2)
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

uint64_t sub_1C5945E20()
{
  _s25ExpandsNowPlayingModifierVMa();
  swift_getWitnessTable();
  sub_1C5BC9394();
  type metadata accessor for TapExcludedGeometries();
  swift_getWitnessTable();
  sub_1C594618C(qword_1EDA488D8, type metadata accessor for TapExcludedGeometries);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78);
  sub_1C5BC8AB4();
  sub_1C5BC9304();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997B8);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997B0);
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA461F8, &qword_1EC1997B8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA466B8, &qword_1EC1997B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C594618C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C59461EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5946240()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59462C0()
{
  _s21MiniPlayerContentViewV7ArtworkVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s22MiniPlayerMetadataViewVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC92D4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59464E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997D8);
  sub_1C5946558();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5946558()
{
  result = qword_1EDA46570;
  if (!qword_1EDA46570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929F8);
    sub_1C594664C();
    sub_1C5946730();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46570);
  }

  return result;
}

unint64_t sub_1C594664C()
{
  result = qword_1EDA46610;
  if (!qword_1EDA46610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997D0);
    sub_1C5924F54(&qword_1EDA46280, &qword_1EC1997E0);
    sub_1C5924F54(&qword_1EDA46208, &qword_1EC194958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46610);
  }

  return result;
}

unint64_t sub_1C5946730()
{
  result = qword_1EDA45DC8;
  if (!qword_1EDA45DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929F8);
    sub_1C594618C(&unk_1EDA45DD0, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45DC8);
  }

  return result;
}

unint64_t sub_1C5946804()
{
  result = qword_1EC1904A0;
  if (!qword_1EC1904A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199958);
    sub_1C5946890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1904A0);
  }

  return result;
}

unint64_t sub_1C5946890()
{
  result = qword_1EC1904A8;
  if (!qword_1EC1904A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199930);
    sub_1C5924F54(&qword_1EC190490, &qword_1EC199940);
    sub_1C5924F54(&qword_1EC190498, &qword_1EC199938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1904A8);
  }

  return result;
}

uint64_t sub_1C5946990()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5946A30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00);
  _s9VideoViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1C5946D98();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  sub_1C5946DEC();
  swift_getWitnessTable();
  sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5946E40(&qword_1EDA46558, &unk_1EC199E00);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C5946D98()
{
  result = qword_1EDA49240;
  if (!qword_1EDA49240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA49240);
  }

  return result;
}

unint64_t sub_1C5946DEC()
{
  result = qword_1EDA47E88[0];
  if (!qword_1EDA47E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA47E88);
  }

  return result;
}

uint64_t sub_1C5946E40(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1C5946EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v3 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v165 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v164 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC96A4();
  v160 = *(v7 - 8);
  v161 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v156 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = _s25ExpandsNowPlayingModifierVMa();
  v153 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v152 = &v121 - v12;
  _s11LeadingViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s21MiniPlayerContentViewV10CenterViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  sub_1C5BC8AB4();
  v171 = v10;
  v168 = v9;
  _s12TrailingViewVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  v13 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v126 = v13;
  v128 = WitnessTable;
  v15 = sub_1C5BCA714();
  v16 = sub_1C5BC8AB4();
  v17 = sub_1C5BC8AB4();
  v18 = sub_1C5BC8AB4();
  v19 = sub_1C5BC8AB4();
  v129 = v15;
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x1E697E5D8];
  v127 = v20;
  v181[76] = v20;
  v181[77] = MEMORY[0x1E697E5D8];
  v132 = v16;
  v130 = swift_getWitnessTable();
  v181[74] = v130;
  v181[75] = v21;
  v134 = v17;
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x1E697E040];
  v133 = v22;
  v181[72] = v22;
  v181[73] = MEMORY[0x1E697E040];
  v24 = swift_getWitnessTable();
  v181[70] = v24;
  v181[71] = v23;
  v25 = swift_getWitnessTable();
  v181[0] = v18;
  v181[1] = MEMORY[0x1E6981CD8];
  v181[2] = v19;
  v181[3] = v24;
  v181[4] = MEMORY[0x1E6981CD0];
  v181[5] = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v139 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v137 = &v121 - v27;
  v140 = v28;
  v29 = sub_1C5BC8AB4();
  v147 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v144 = &v121 - v30;
  v31 = sub_1C5BC8AB4();
  v146 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v142 = v18;
  v143 = &v121 - v32;
  v181[0] = v18;
  v181[1] = MEMORY[0x1E6981CD8];
  v141 = v19;
  v181[2] = v19;
  v138 = v24;
  v181[3] = v24;
  v181[4] = MEMORY[0x1E6981CD0];
  v135 = v25;
  v181[5] = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v154 = v11;
  v34 = swift_getWitnessTable();
  v131 = OpaqueTypeConformance2;
  v181[68] = OpaqueTypeConformance2;
  v181[69] = v34;
  v148 = v29;
  v35 = swift_getWitnessTable();
  v36 = sub_1C593B318();
  v181[66] = v35;
  v181[67] = v36;
  v37 = swift_getWitnessTable();
  v167 = v31;
  v181[0] = v31;
  v145 = v37;
  v181[1] = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v150 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v149 = &v121 - v39;
  sub_1C5BC97C4();
  v151 = v38;
  v40 = sub_1C5BC8AB4();
  v158 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v170 = &v121 - v41;
  v159 = v42;
  v43 = sub_1C5BC8AB4();
  v44 = *(v43 - 8);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v155 = &v121 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v157 = &v121 - v47;
  v48 = sub_1C5BC8F34();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v121 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  MEMORY[0x1EEE9AC00](v52);
  v169 = &v121 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(v125 + 16);
  v182[0] = *v125;
  v182[1] = v54;
  *v183 = *(v125 + 32);
  *&v183[9] = *(v125 + 41);
  v185 = *(v125 + 24);
  v55 = *(v125 + 16);
  v184 = v55;
  if (v185 != 1)
  {
    sub_1C5A3639C(&v184, v181);
    sub_1C5BCB4E4();
    v56 = sub_1C5BC9844();
    v125 = v52;
    v57 = v43;
    v58 = v35;
    v59 = v49;
    v60 = v48;
    v61 = v56;
    sub_1C5BC7C54();

    v48 = v60;
    v49 = v59;
    v35 = v58;
    v43 = v57;
    v52 = v125;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v184, &qword_1EC1929E0);
    (*(v49 + 8))(v51, v48);
    LOBYTE(v55) = v181[0];
  }

  v162 = v44;
  v163 = v43;
  v123 = v49;
  v124 = v48;
  v122 = v51;
  v136 = v35;
  if (v55 != 3 && v55)
  {
    if (qword_1EC1906C8 != -1)
    {
      swift_once();
    }

    v62 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      swift_once();
    }

    v62 = qword_1EDA5DAE8;
  }

  v63 = __swift_project_value_buffer(v52, v62);
  v64 = v169;
  sub_1C5948550(v63, v169);
  v65 = sub_1C5BC8FC4();
  MEMORY[0x1EEE9AC00](v65);
  v66 = v171;
  v67 = v168;
  *(&v121 - 4) = v171;
  *(&v121 - 3) = v67;
  v119 = v182;
  v120 = v64;
  swift_checkMetadataState();
  sub_1C5BCA704();
  memcpy(v176, v181, 0x180uLL);
  sub_1C5BC98C4();
  v68 = swift_checkMetadataState();
  sub_1C5BCA2F4();
  memcpy(v178, v176, sizeof(v178));
  (*(*(v68 - 8) + 8))(v178, v68);
  memcpy(v176, v177, 0x1A9uLL);
  sub_1C5BC98E4();
  v69 = swift_checkMetadataState();
  sub_1C5BCA2F4();
  memcpy(v179, v176, 0x1A9uLL);
  (*(*(v69 - 8) + 8))(v179, v69);
  memcpy(v176, v181, 0x1D9uLL);
  sub_1C5BCAA54();
  v70 = swift_checkMetadataState();
  sub_1C5BCA234();
  memcpy(v180, v176, 0x1D9uLL);
  (*(*(v70 - 8) + 8))(v180, v70);
  memcpy(v176, v177, sizeof(v176));
  v71 = sub_1C5BCA9F4();
  MEMORY[0x1EEE9AC00](v71);
  *(&v121 - 4) = v66;
  *(&v121 - 3) = v67;
  v72 = swift_checkMetadataState();
  swift_checkMetadataState();
  v119 = v135;
  v73 = v137;
  sub_1C5BCA364();
  memcpy(v181, v176, 0x210uLL);
  (*(*(v72 - 8) + 8))(v181, v72);
  v74 = v152;
  sub_1C5949AA0(v152);
  v75 = v144;
  v76 = v140;
  v77 = v154;
  MEMORY[0x1C694E550](v74, v140, v154, v131);
  (*(v153 + 8))(v74, v77);
  (*(v139 + 8))(v73, v76);
  KeyPath = swift_getKeyPath();
  LOBYTE(v176[0]) = 0;
  type metadata accessor for WindowProperties();
  sub_1C5937E88(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  v79 = sub_1C5BC8324();
  LOBYTE(v72) = v80;
  LOBYTE(v186) = 2;
  sub_1C5BCA684();
  v81 = v177[0];
  v82 = v177[1];
  v177[0] = KeyPath;
  LOBYTE(v177[1]) = v176[0];
  v177[2] = v79;
  LOBYTE(v177[3]) = v72 & 1;
  LOBYTE(v177[4]) = v81;
  v177[5] = v82;
  v83 = v143;
  v84 = v148;
  MEMORY[0x1C694E550](v177, v148, &type metadata for ApplyingWidthConstraints, v136);
  sub_1C5942458(v177[0], v177[1]);

  (*(v147 + 8))(v75, v84);
  v85 = v156;
  sub_1C5BC9694();
  v86 = v149;
  v87 = v167;
  v88 = v145;
  sub_1C5BCA0C4();
  (*(v160 + 8))(v85, v161);
  (*(v146 + 8))(v83, v87);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v89 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  v177[0] = sub_1C5BCAE94();
  v177[1] = v90;
  v176[0] = v167;
  v176[1] = v88;
  v91 = swift_getOpaqueTypeConformance2();
  sub_1C594A23C();
  v92 = v151;
  sub_1C5BCA034();

  (*(v150 + 8))(v86, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943F8);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1C5BD4D40;
  v177[0] = 0;
  v177[1] = 0xE000000000000000;
  MEMORY[0x1C694F170](0x7461745377656976, 0xEA00000000003D65);
  v187 = v183[24];
  v94 = *&v183[16];
  v186 = *&v183[16];
  v95 = v183[24];

  v96 = v162;
  if ((v95 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v97 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v98 = v122;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v186, &qword_1EC194400);
    (*(v123 + 8))(v98, v124);
    v94 = v176[0];
  }

  swift_getKeyPath();
  v176[0] = v94;
  sub_1C5937E88(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v99 = *(v94 + 17);

  LOBYTE(v176[0]) = v99;
  sub_1C5BCBBA4();
  v100 = v177[1];
  *(v93 + 32) = v177[0];
  *(v93 + 40) = v100;
  v176[0] = 0x6E6979616C507369;
  v176[1] = 0xEA00000000003D67;
  v101 = v168;
  v102 = v171;
  sub_1C59498C4(*&v182[0]);
  v103 = *(v101 + 224);
  swift_unknownObjectRetain();
  v104 = v103(v102, v101);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v105 = *(v104 + 177);

  if (v105)
  {
    v106 = 1702195828;
  }

  else
  {
    v106 = 0x65736C6166;
  }

  if (v105)
  {
    v107 = 0xE400000000000000;
  }

  else
  {
    v107 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v106, v107);

  v108 = v176[1];
  *(v93 + 48) = v176[0];
  *(v93 + 56) = v108;
  v109 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v174 = v91;
  v175 = v109;
  v110 = v159;
  v111 = swift_getWitnessTable();
  v112 = v155;
  v113 = v170;
  sub_1C5949C94(0xD000000000000016, 0x80000001C5BF8190, v93);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v158 + 8))(v113, v110);
  v172 = v111;
  v173 = v109;
  v114 = v163;
  v115 = swift_getWitnessTable();
  v116 = v157;
  sub_1C593EDC0(v112, v114, v115);
  v117 = *(v96 + 8);
  v117(v112, v114);
  sub_1C593EDC0(v116, v114, v115);
  v117(v116, v114);
  return sub_1C594A4A4(v169);
}

uint64_t sub_1C59483C0()
{
  v0 = sub_1C5BCA5D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  __swift_allocate_value_buffer(v4, qword_1EDA5DAE8);
  v5 = __swift_project_value_buffer(v4, qword_1EDA5DAE8);
  (*(v1 + 104))(v3, *MEMORY[0x1E69816E0], v0);
  sub_1C5BC9924();
  sub_1C5BC9994();
  v6 = sub_1C5BC99E4();

  *v5 = xmmword_1C5BDB0C0;
  *(v5 + 16) = xmmword_1C5BDB0D0;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0x4034000000000000;
  *(v5 + 56) = xmmword_1C5BDB0E0;
  *(v5 + 72) = xmmword_1C5BDB0F0;
  result = (*(v1 + 32))(v5 + v4[12], v3, v0);
  *(v5 + v4[13]) = 0x4028000000000000;
  *(v5 + v4[14]) = v6;
  return result;
}

uint64_t sub_1C5948550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59485B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C5BC8454();
  MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3);
  sub_1C5BC8464();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_1C5BC87D4();
}

uint64_t sub_1C594875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = (MEMORY[0x1EEE9AC00])();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v12();
  sub_1C593EDC0(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_1C593EDC0(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_1C59488A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v84 = a2;
  v85 = a3;
  v80 = a5;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = *(a1 + 24);
  v11 = *(a1 + 16);
  v197 = v11;
  if (v198 == 1)
  {
    v12 = v11;
    v196 = v11;
  }

  else
  {
    sub_1C5A3639C(&v197, &v178);
    sub_1C5BCB4E4();
    v13 = a4;
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    a4 = v13;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v197, &qword_1EC1929E0);
    (*(v8 + 8))(v10, v7);
    v12 = v196;
  }

  v15 = v85;
  v81 = a4;
  if (v12 && _UISolariumEnabled())
  {
    v82 = *(a4 + 8);
    v16 = sub_1C5BC8C84();
    v18 = v17;
    KeyPath = swift_getKeyPath();
    *&v169 = v16;
    *(&v169 + 1) = v18;
    *&v170 = KeyPath;
    BYTE8(v170) = 0;
    v20 = swift_getKeyPath();
    v21 = _s11LeadingViewVMa();
    WitnessTable = swift_getWitnessTable();
    sub_1C59498F4(v20, 1, v21, WitnessTable);

    v23 = v170;
    LOBYTE(v20) = BYTE8(v170);
    swift_unknownObjectRelease();
    sub_1C5942458(v23, v20);
    v173 = v181[1];
    v174 = v182;
    v175[0] = v183;
    v169 = v178;
    v170 = v179;
    v171 = v180;
    v172 = v181[0];
    v24 = sub_1C5BC8AB4();
    v25 = sub_1C5949828();
    v86 = WitnessTable;
    v87 = v25;
    v26 = swift_getWitnessTable();
    sub_1C593EDC0(&v169, v24, v26);
    v163[1] = v173;
    v164 = v174;
    v165[0] = v175[0];
    v160 = v169;
    v161 = v170;
    v162 = v171;
    v163[0] = v172;
    v27 = *(*(v24 - 8) + 8);
    v27(&v160, v24);
    v181[1] = v154;
    v182 = v155;
    v183 = v156;
    v178 = v150;
    v179 = v151;
    v180 = v152;
    v181[0] = v153;
    sub_1C593EDC0(&v178, v24, v26);
    v173 = v181[1];
    v174 = v182;
    v175[0] = v183;
    v169 = v178;
    v170 = v179;
    a4 = v81;
    v171 = v180;
    v172 = v181[0];
    v27(&v169, v24);
    v15 = v85;
    v147 = v136;
    v148 = v137;
    v149[0] = v138;
    v143 = v132;
    v144 = v133;
    v145 = v134;
    v146 = v135;
    sub_1C5941600(&v143, &v102);
    v181[1] = v147;
    v182 = v148;
    v183 = v149[0];
    v178 = v143;
    v179 = v144;
    v180 = v145;
    v181[0] = v146;
    v28 = sub_1C5BCB804();
    (*(*(v28 - 8) + 8))(&v178, v28);
    v29 = v82;
    v193 = v106;
    v194 = v107;
    v195 = v108;
    v189 = v102;
    v190 = v103;
    v191 = v104;
    v192 = v105;
  }

  else
  {
    _s11LeadingViewVMa();
    sub_1C5BC8AB4();
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    memset(v181, 0, sizeof(v181));
    v182 = 0u;
    v183 = 0u;
    v30 = swift_getWitnessTable();
    v31 = sub_1C5949828();
    v187 = v30;
    v188 = v31;
    swift_getWitnessTable();
    sub_1C5941600(&v178, &v189);
    v29 = *(a4 + 8);
  }

  v32 = *a1;
  v82 = v29;
  sub_1C59498C4(v32);
  v33 = v15;
  v34 = *(a4 + 224);
  swift_unknownObjectRetain();
  v34(v33, a4);
  swift_unknownObjectRelease();

  _s18MiniPlayerMetadataCMa();
  sub_1C5937E88(qword_1EDA4A4D8, _s18MiniPlayerMetadataCMa);
  v35 = sub_1C5BC88C4();
  v37 = v36;
  v38 = swift_getKeyPath();
  *&v169 = v35;
  *(&v169 + 1) = v37;
  *&v170 = v38;
  BYTE8(v170) = 0;
  sub_1C5BC98C4();
  _s21MiniPlayerContentViewV10CenterViewVMa();
  v39 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v40 = v170;
  LOBYTE(v37) = BYTE8(v170);

  sub_1C5942458(v40, v37);
  v161 = v179;
  v162 = v180;
  v163[0] = v181[0];
  *(v163 + 9) = *(v181 + 9);
  v160 = v178;
  sub_1C5BC98E4();
  v41 = sub_1C5BC8AB4();
  v130 = v39;
  v131 = MEMORY[0x1E697E5D8];
  v42 = MEMORY[0x1E697E858];
  v43 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v141[1] = v161;
  v141[2] = v162;
  v142[0] = v163[0];
  *(v142 + 9) = *(v163 + 9);
  v141[0] = v160;
  (*(*(v41 - 8) + 8))(v141, v41);
  v163[1] = v173;
  v164 = v174;
  v165[0] = v175[0];
  *(v165 + 9) = *(v175 + 9);
  v160 = v169;
  v161 = v170;
  v162 = v171;
  v163[0] = v172;
  v44 = sub_1C5BC8AB4();
  v128 = v43;
  v129 = MEMORY[0x1E697E5D8];
  v84 = v42;
  v45 = swift_getWitnessTable();
  sub_1C5BC9F24();
  v147 = v163[1];
  v148 = v164;
  v149[0] = v165[0];
  *(v149 + 9) = *(v165 + 9);
  v143 = v160;
  v144 = v161;
  v145 = v162;
  v146 = v163[0];
  (*(*(v44 - 8) + 8))(&v143, v44);
  v175[0] = v183;
  v175[1] = v184;
  v176 = v185;
  v171 = v180;
  v172 = v181[0];
  v173 = v181[1];
  v174 = v182;
  v169 = v178;
  v170 = v179;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  v46 = sub_1C5BC8AB4();
  v47 = sub_1C5924F54(&qword_1EDA462C0, &qword_1EC1943F0);
  v126 = v45;
  v127 = v47;
  v77 = swift_getWitnessTable();
  sub_1C593EDC0(&v169, v46, v77);
  v156 = v175[0];
  v157 = v175[1];
  v158 = v176;
  v152 = v171;
  v153 = v172;
  v154 = v173;
  v155 = v174;
  v150 = v169;
  v151 = v170;
  v83 = v46;
  v76 = *(v46 - 8);
  v48 = *(v76 + 8);
  v78 = v76 + 8;
  v79 = v48;
  v48(&v150, v46);
  v49 = sub_1C5BC8C84();
  v51 = v50;
  v52 = swift_getKeyPath();
  *&v169 = v49;
  *(&v169 + 1) = v51;
  *&v170 = v52;
  BYTE8(v170) = 0;
  v53 = swift_getKeyPath();
  v54 = _s12TrailingViewVMa();
  v55 = swift_getWitnessTable();
  sub_1C59498F4(v53, 1, v54, v55);

  v56 = v170;
  LOBYTE(v53) = BYTE8(v170);
  swift_unknownObjectRelease();
  sub_1C5942458(v56, v53);
  v173 = v181[1];
  v174 = v182;
  v175[0] = v183;
  v169 = v178;
  v170 = v179;
  v171 = v180;
  v172 = v181[0];
  v57 = sub_1C5BC8AB4();
  v73 = sub_1C5949828();
  v118[3] = v55;
  v118[4] = v73;
  v74 = swift_getWitnessTable();
  sub_1C593EDC0(&v169, v57, v74);
  v159[4] = v173;
  v159[5] = v174;
  v159[6] = v175[0];
  v159[0] = v169;
  v159[1] = v170;
  v159[2] = v171;
  v159[3] = v172;
  v72 = v57;
  v58 = *(v57 - 8);
  v59 = *(v58 + 8);
  v75 = v58 + 8;
  v82 = v59;
  v59(v159, v57);
  v115 = v193;
  v116 = v194;
  v117 = v195;
  v111 = v189;
  v112 = v190;
  v113 = v191;
  v114 = v192;
  v162 = v134;
  v163[0] = v135;
  v160 = v132;
  v161 = v133;
  v165[0] = v138;
  v165[1] = v139;
  v163[1] = v136;
  v164 = v137;
  v166 = v140;
  v108 = v138;
  v109 = v139;
  v110 = v140;
  v104 = v134;
  v105 = v135;
  v106 = v136;
  v107 = v137;
  v102 = v132;
  v103 = v133;
  v118[0] = &v111;
  v118[1] = &v102;
  v167[4] = v123;
  v167[5] = v124;
  v167[6] = v125;
  v167[0] = v119;
  v167[1] = v120;
  v167[2] = v121;
  v167[3] = v122;
  v96 = v120;
  v97 = v121;
  v95 = v119;
  v98 = v122;
  v99 = v123;
  v100 = v124;
  v101 = v125;
  v118[2] = &v95;
  _s11LeadingViewVMa();
  sub_1C5BC8AB4();
  v60 = sub_1C5BCB804();
  v61 = *(v60 - 8);
  (*(v61 + 16))(&v178, &v189, v60);
  v62 = v83;
  (*(v76 + 16))(&v178, &v160, v83);
  v63 = *(v58 + 16);
  v64 = v72;
  v63(&v178, v167, v72);
  v94[0] = v60;
  v94[1] = v62;
  v94[2] = v64;
  v89 = swift_getWitnessTable();
  v90 = v73;
  v88 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v92 = v77;
  v93 = v74;
  sub_1C594226C(v118, 3uLL, v94);
  v65 = *(v61 + 8);
  v84 = v61 + 8;
  v85 = v65;
  v65(&v189, v60);
  v168[4] = v123;
  v168[5] = v124;
  v168[6] = v125;
  v168[0] = v119;
  v168[1] = v120;
  v168[2] = v121;
  v168[3] = v122;
  v66 = v64;
  v67 = v82;
  v82(v168, v64);
  v175[0] = v138;
  v175[1] = v139;
  v176 = v140;
  v171 = v134;
  v172 = v135;
  v173 = v136;
  v174 = v137;
  v169 = v132;
  v170 = v133;
  v68 = v83;
  v69 = v79;
  v79(&v169, v83);
  v177[4] = v99;
  v177[5] = v100;
  v177[6] = v101;
  v177[0] = v95;
  v177[1] = v96;
  v177[2] = v97;
  v177[3] = v98;
  v67(v177, v66);
  v183 = v108;
  v184 = v109;
  v185 = v110;
  v180 = v104;
  v181[0] = v105;
  v181[1] = v106;
  v182 = v107;
  v178 = v102;
  v179 = v103;
  v69(&v178, v68);
  v186[4] = v115;
  v186[5] = v116;
  v186[6] = v117;
  v186[0] = v111;
  v186[1] = v112;
  v186[2] = v113;
  v186[3] = v114;
  return v85(v186, v60);
}

unint64_t sub_1C5949828()
{
  result = qword_1EDA47588;
  if (!qword_1EDA47588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47588);
  }

  return result;
}

uint64_t sub_1C594987C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1C59498C4(uint64_t result)
{
  if (!result)
  {
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C59498F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TapExcludedGeometries();
  sub_1C594618C(qword_1EDA488D8, type metadata accessor for TapExcludedGeometries);
  v8 = sub_1C5BC8324();
  v10 = v9;
  v12 = 0u;
  v13 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929F8);
  sub_1C5BCA684();
  v18 = v10 & 1;
  v17 = v21;
  *&v12 = a1;
  BYTE8(v12) = a2;
  *&v13 = v8;
  BYTE8(v13) = v10 & 1;
  v14 = v19;
  v15 = v20;
  LOBYTE(v16) = v21;
  *(&v16 + 1) = *(&v21 + 1);

  MEMORY[0x1C694E550](&v12, a3, &type metadata for RegisterExcludedGeometryModifier, a4);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = v12;
  v20 = v13;
  return sub_1C5949A54(&v19);
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

uint64_t sub_1C5949AA0@<X0>(uint64_t a1@<X8>)
{
  sub_1C5949B68(sub_1C5B84A2C, 0);
  v2 = _s25ExpandsNowPlayingModifierVMa();
  v3 = (a1 + *(v2 + 36));
  *v3 = sub_1C5BC8C84();
  v3[1] = v4;
  v5 = (a1 + *(v2 + 40));
  type metadata accessor for NowPlayingViewControllerProxy();
  swift_getWitnessTable();
  result = sub_1C5BC8C84();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_1C5949B68(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for TapExcludedGeometries();

  return sub_1C5BC8194();
}

uint64_t sub_1C5949BEC()
{

  return swift_deallocObject();
}

uint64_t sub_1C5949C24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C5949C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = [objc_opt_self() mainBundle];
    sub_1C5949F2C();

    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](a1, a2);
    MEMORY[0x1C694F170](91, 0xE100000000000000);
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C594A39C(0, v5, 0);
    v8 = (a3 + 40);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v12 = *(v19 + 16);
      v11 = *(v19 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_1C594A39C((v11 > 1), v12 + 1, 1);
      }

      *(v19 + 16) = v12 + 1;
      v13 = v19 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 2;
      --v5;
    }

    while (v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196E80);
    sub_1C594A3BC();
    v14 = sub_1C5BCAD74();
    v16 = v15;

    MEMORY[0x1C694F170](v14, v16);

    MEMORY[0x1C694F170](93, 0xE100000000000000);
    sub_1C5BCA164();
  }

  else
  {
    v18 = [objc_opt_self() mainBundle];
    sub_1C5949F2C();

    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](a1, a2);
    sub_1C5BCA164();
  }
}

uint64_t sub_1C5949F2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195738);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38[-v6];
  v41 = 0;
  v42 = 0xE000000000000000;
  v8 = [v1 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C5BCAE74();
    v12 = v11;

    v39 = 46;
    v40 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v13);
    *&v38[-16] = &v39;
    v14 = sub_1C5AF0AC8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1C5AC4F58, &v38[-32], v10, v12, v38);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 32 * v15);
      v17 = *v16;
      v18 = v16[1];
      v20 = v16[2];
      v19 = v16[3];

      v21 = v20;
      v22 = v18;
      v23 = v17;
      goto LABEL_12;
    }
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  v24 = [v1 executableURL];
  if (v24)
  {
    v25 = v24;
    sub_1C5BC79E4();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_1C5BC7A24();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v5, v26, 1, v27);
  sub_1C5AC4E80(v5, v7);
  if ((*(v28 + 48))(v7, 1, v27) == 1)
  {
    sub_1C5AC4EF0(v7);
    v29 = 0xEB00000000495565;
    v30 = 0x726F43616964654DLL;
  }

  else
  {
    v31 = sub_1C5BC7984();
    v29 = v32;
    (*(v28 + 8))(v7, v27);
    v30 = v31;
  }

  MEMORY[0x1C694F170](v30, v29);

  v23 = sub_1C5BCB874();
  v19 = v33;
LABEL_12:
  v34 = MEMORY[0x1C694F120](v23, v22, v21, v19);
  v36 = v35;

  MEMORY[0x1C694F170](v34, v36);

  return v41;
}

unint64_t sub_1C594A23C()
{
  result = qword_1EDA4E180;
  if (!qword_1EDA4E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E180);
  }

  return result;
}

char *sub_1C594A290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1943F8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C594A39C(char *a1, int64_t a2, char a3)
{
  result = sub_1C594A290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C594A3BC()
{
  result = qword_1EDA45D28;
  if (!qword_1EDA45D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196E80);
    sub_1C594A440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D28);
  }

  return result;
}

unint64_t sub_1C594A440()
{
  result = qword_1EDA45EB0;
  if (!qword_1EDA45EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45EB0);
  }

  return result;
}

uint64_t sub_1C594A4A4(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C594A508(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EB8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v29 - v4;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v11 = v1[2];
  v31 = *v1;
  v32 = v10;
  v33 = v11;
  v35 = *(v1 + 8);
  v12 = *v1;
  v34 = v12;
  if (v35 == 1)
  {
    v13 = v12;
    if (v12 == 3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C59400B0(&v34, v29, &qword_1EC1929E0);
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v34, &qword_1EC1929E0);
    (*(v7 + 8))(v9, v6);
    v13 = v36;
    if (v36 == 3)
    {
LABEL_6:
      v29[0] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EC0);
      sub_1C5BCA694();
      v15 = v36;
      goto LABEL_7;
    }
  }

  if (v13)
  {
    goto LABEL_6;
  }

  v37 = BYTE8(v32);
  v25 = v32;
  v36 = v32;
  v26 = BYTE8(v32);

  if ((v26 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v27 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v36, &qword_1EC194408);
    (*(v7 + 8))(v9, v6);
    v25 = *&v29[0];
  }

  swift_getKeyPath();
  *&v29[0] = v25;
  sub_1C594AA80();
  sub_1C5BC7B74();

  v28 = *(v25 + 49);

  if (v28)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EC8);
  (*(*(v17 - 8) + 16))(v5, a1, v17);
  v18 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198ED0) + 36)];
  *v18 = KeyPath;
  v18[8] = v15;
  v19 = swift_allocObject();
  v20 = v32;
  v19[1] = v31;
  v19[2] = v20;
  v19[3] = v33;
  v21 = &v5[*(v3 + 36)];
  *v21 = sub_1C5966294;
  *(v21 + 1) = 0;
  *(v21 + 2) = sub_1C5971540;
  *(v21 + 3) = v19;
  v30 = v15;
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = v32;
  *(v22 + 24) = v31;
  *(v22 + 40) = v23;
  *(v22 + 56) = v33;
  sub_1C594AAD8(&v31, v29);
  sub_1C594AAD8(&v31, v29);
  sub_1C593B410();
  sub_1C593B5AC();
  sub_1C5BCA344();

  return sub_1C5924EF4(v5, &qword_1EC198EB8);
}

uint64_t sub_1C594A9DC()
{
  sub_1C5950E44(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1C594AA28()
{
  sub_1C5950E44(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_1C594AA80()
{
  result = qword_1EDA4B960;
  if (!qword_1EDA4B960)
  {
    type metadata accessor for WindowProperties();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B960);
  }

  return result;
}

id sub_1C594AB10()
{
  if (qword_1EDA4EE00 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDA5DE70;

  return v1;
}

uint64_t sub_1C594AB6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EnvironmentMonitor();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C594ABAC@<X0>(uint64_t *a1@<X8>)
{
  _s8BackdropCMa();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C594ABEC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingViewModel.Lifecycle();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C594AC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v208 = a2;
  v209 = a1;
  v197 = a3;
  v205 = sub_1C5BC81D4();
  v196 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v195 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BC90F4();
  v193 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v192 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1C5BC8F34();
  v199 = *(v200 - 8);
  v7 = MEMORY[0x1EEE9AC00](v200);
  v198 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = *(a2 - 8);
  v214 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v217 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v152 = sub_1C5BC9394();
  v10 = sub_1C5BC8AB4();
  *&v153 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  *&v201 = &v147 - v11;
  WitnessTable = swift_getWitnessTable();
  v222 = WitnessTable;
  v223 = MEMORY[0x1E69805D0];
  v12 = swift_getWitnessTable();
  v13 = sub_1C593A9AC();
  *&v220 = v10;
  *(&v220 + 1) = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  v148 = v10;
  *&v221 = v12;
  *(&v221 + 1) = v13;
  v150 = v12;
  v14 = v13;
  v149 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v157 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  *&v216 = &v147 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194470);
  *&v220 = v10;
  *(&v220 + 1) = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
  *&v221 = v12;
  *(&v221 + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1C5937414(&qword_1EDA4AE90, &qword_1EC194470, &unk_1C5BEBAC0, sub_1C593AA00);
  *&v220 = OpaqueTypeMetadata2;
  *(&v220 + 1) = v17;
  *&v221 = OpaqueTypeConformance2;
  *(&v221 + 1) = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v166 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v202 = &v147 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194468);
  v158 = OpaqueTypeMetadata2;
  *&v220 = OpaqueTypeMetadata2;
  *(&v220 + 1) = v17;
  v156 = v17;
  v155 = OpaqueTypeConformance2;
  *&v221 = OpaqueTypeConformance2;
  *(&v221 + 1) = v19;
  v154 = v19;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_1C5937414(&qword_1EDA47CC8, &qword_1EC194468, &unk_1C5BDBCD0, sub_1C593AA54);
  *&v220 = v20;
  *(&v220 + 1) = v22;
  *&v221 = v23;
  *(&v221 + 1) = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v165 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v164 = &v147 - v26;
  v168 = v20;
  *&v220 = v20;
  *(&v220 + 1) = v22;
  v163 = v22;
  v161 = v23;
  *&v221 = v23;
  *(&v221 + 1) = v24;
  v159 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_1C592F30C(&qword_1EDA46328, MEMORY[0x1E697F610]);
  *&v220 = v25;
  *(&v220 + 1) = v5;
  *&v221 = v27;
  *(&v221 + 1) = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v177 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v203 = &v147 - v30;
  type metadata accessor for OSThermalPressureLevel(255);
  v32 = v31;
  v167 = v25;
  *&v220 = v25;
  *(&v220 + 1) = v5;
  v194 = v5;
  v162 = v27;
  *&v221 = v27;
  *(&v221 + 1) = v28;
  v160 = v28;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_1C592F30C(&qword_1EDA45DE8, type metadata accessor for OSThermalPressureLevel);
  *&v220 = v29;
  *(&v220 + 1) = v32;
  *&v221 = v33;
  *(&v221 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v178 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v175 = &v147 - v36;
  v179 = v29;
  *&v220 = v29;
  *(&v220 + 1) = v32;
  v171 = v32;
  v173 = v33;
  *&v221 = v33;
  *(&v221 + 1) = v34;
  v170 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_1C592F30C(&qword_1EDA467E8, MEMORY[0x1E697BE48]);
  v39 = v205;
  *&v220 = v35;
  *(&v220 + 1) = v205;
  *&v221 = v37;
  *(&v221 + 1) = v38;
  v40 = swift_getOpaqueTypeMetadata2();
  v182 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v204 = &v147 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199990);
  v43 = sub_1C5924F54(&qword_1EDA468B0, &qword_1EC199990);
  v180 = v35;
  *&v220 = v35;
  *(&v220 + 1) = v39;
  v172 = v37;
  *&v221 = v37;
  *(&v221 + 1) = v38;
  v169 = v38;
  v44 = swift_getOpaqueTypeConformance2();
  v181 = v42;
  *&v220 = v42;
  *(&v220 + 1) = v40;
  v183 = v40;
  v176 = v43;
  *&v221 = v43;
  *(&v221 + 1) = v44;
  v174 = v44;
  v45 = sub_1C5BC8BB4();
  v189 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v187 = &v147 - v46;
  v47 = swift_getWitnessTable();
  v191 = v45;
  *&v220 = v45;
  *(&v220 + 1) = MEMORY[0x1E69E6370];
  v186 = v47;
  *&v221 = v47;
  *(&v221 + 1) = MEMORY[0x1E69E6388];
  v190 = swift_getOpaqueTypeMetadata2();
  v188 = *(v190 - 8);
  v48 = MEMORY[0x1EEE9AC00](v190);
  v184 = &v147 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v185 = &v147 - v50;
  v51 = v215;
  v52 = v215 + 16;
  v211 = *(v215 + 16);
  v53 = v217;
  v54 = v208;
  v211(v217, v213, v208);
  v55 = *(v51 + 80);
  v56 = (v55 + 32) & ~v55;
  v57 = swift_allocObject();
  v58 = *(v54 + 24);
  v210 = *(v54 + 16);
  *(v57 + 16) = v210;
  *(v57 + 24) = v58;
  v59 = *(v51 + 32);
  v59(v57 + v56, v53, v54);
  sub_1C5BCA324();

  v60 = v213;
  LOBYTE(v220) = *(sub_1C594C688() + 16);
  v212 = v52;
  v211(v53, v60, v54);
  v207 = v55;
  v61 = swift_allocObject();
  *(v61 + 16) = v210;
  *(v61 + 24) = v58;
  v209 = v58;
  v215 = v51 + 32;
  v206 = v59;
  v59(v61 + v56, v53, v54);
  v62 = v148;
  v63 = v201;
  sub_1C5BCA344();

  (*(v153 + 8))(v63, v62);
  v64 = *(v213 + 88);
  v65 = *(v213 + 104);
  v66 = *(v213 + 120) == 1;
  v201 = v65;
  v153 = v64;
  if (v66)
  {
    v220 = v64;
    v221 = v65;
    sub_1C593E7D8(v64, *(&v64 + 1));
    v73 = v153;
    v72 = v201;
    v71 = v200;
    v70 = v199;
    v69 = v198;
  }

  else
  {
    v67 = v64;

    sub_1C5BCB4E4();
    v68 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v69 = v198;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC4C(v67, *(&v153 + 1), v201, *(&v201 + 1), 0);
    v70 = v199;
    v71 = v200;
    (*(v199 + 8))(v69, v200);
    v73 = v220;
    v72 = v221;
  }

  v218 = v73;
  v219 = v72;
  v74 = v213;
  v75 = v208;
  v211(v53, v213, v208);
  v76 = swift_allocObject();
  v77 = v209;
  *(v76 + 16) = v210;
  *(v76 + 24) = v77;
  v206(v76 + v56, v53, v75);
  v78 = v158;
  v79 = v216;
  sub_1C5BCA344();

  sub_1C593E820(v218, *(&v218 + 1));
  (*(v157 + 8))(v79, v78);
  v80 = (v74 + *(v75 + 68));
  v81 = *v80;
  LODWORD(v80) = *(v80 + 16);
  v216 = v81;
  if (v80 == 1)
  {
    v220 = v81;

    v82 = v216;
  }

  else
  {
    v83 = v81;

    sub_1C5BCB4E4();
    v84 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v83, *(&v216 + 1), 0);
    (*(v70 + 8))(v69, v71);
    v82 = v220;
  }

  v218 = v82;
  v85 = v213;
  v86 = v208;
  v87 = v211;
  v211(v53, v213, v208);
  v88 = v87;
  v89 = swift_allocObject();
  v90 = v210;
  *(v89 + 16) = v210;
  v91 = v90;
  *&v216 = v56;
  *(v89 + 24) = v209;
  v92 = v206;
  v206(v89 + v56, v217, v86);
  v93 = v92;
  v94 = v164;
  v95 = v168;
  v96 = v202;
  sub_1C5BCA344();

  (*(v166 + 8))(v96, v95);
  v97 = v86;
  v98 = v192;
  sub_1C594C704(v192);
  v88(v217, v85, v97);
  v99 = swift_allocObject();
  v100 = v209;
  *(v99 + 16) = v91;
  *(v99 + 24) = v100;
  v101 = v97;
  v93(v99 + v216, v217, v97);
  v102 = v167;
  v103 = v194;
  sub_1C5BCA344();

  (*(v193 + 8))(v98, v103);
  (*(v165 + 8))(v94, v102);
  type metadata accessor for EnvironmentMonitor();
  sub_1C592F30C(qword_1EDA4B360, type metadata accessor for EnvironmentMonitor);
  v104 = sub_1C5BC83A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  v105 = v85;
  v106 = v211;
  v211(v217, v105, v101);
  v107 = swift_allocObject();
  v108 = v209;
  *(v107 + 16) = v210;
  *(v107 + 24) = v108;
  v206(v107 + v216, v217, v101);
  swift_checkMetadataState();
  v109 = v175;
  v110 = v179;
  v111 = v203;
  sub_1C5BCA344();

  (*(v177 + 8))(v111, v110);
  v112 = v213;
  v113 = v195;
  sub_1C594C72C(v195);
  v106(v217, v112, v101);
  v114 = swift_allocObject();
  v115 = v210;
  v116 = v209;
  *(v114 + 16) = v210;
  *(v114 + 24) = v116;
  v117 = v206;
  v206(v114 + v216, v217, v101);
  v118 = v180;
  v119 = v205;
  sub_1C5BCA344();

  (*(v196 + 8))(v113, v119);
  (*(v178 + 8))(v109, v118);
  v120 = v213;
  sub_1C59498C4(*(v213 + 40));
  v121 = *(v116 + 224);
  swift_unknownObjectRetain();
  v121(v115, v116);
  swift_unknownObjectRelease();

  v122 = sub_1C5931774();

  *&v220 = v122;
  v123 = v208;
  v211(v217, v120, v208);
  v124 = v217;
  v125 = swift_allocObject();
  *(v125 + 16) = v115;
  *(v125 + 24) = v116;
  v126 = v216;
  v117(v125 + v216, v124, v123);
  v127 = v187;
  v128 = v183;
  v129 = v204;
  sub_1C5BCA3D4();

  (*(v182 + 8))(v129, v128);
  v130 = *(v120 + 72);
  LOBYTE(v129) = *(v120 + 80);

  if ((v129 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v131 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v132 = v198;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v199 + 8))(v132, v200);
    v130 = v220;
  }

  swift_getKeyPath();
  *&v220 = v130;
  sub_1C592F30C(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  v133 = *(v130 + 48);

  LOBYTE(v220) = v133;
  v134 = v208;
  v211(v124, v213, v208);
  v135 = swift_allocObject();
  v136 = v209;
  *(v135 + 16) = v210;
  *(v135 + 24) = v136;
  v206(v135 + v126, v124, v134);
  v137 = v184;
  v138 = v191;
  v139 = MEMORY[0x1E69E6370];
  v140 = v186;
  v141 = MEMORY[0x1E69E6388];
  sub_1C5BCA344();

  (*(v189 + 8))(v127, v138);
  *&v220 = v138;
  *(&v220 + 1) = v139;
  *&v221 = v140;
  *(&v221 + 1) = v141;
  v142 = swift_getOpaqueTypeConformance2();
  v143 = v185;
  v144 = v190;
  sub_1C593EDC0(v137, v190, v142);
  v145 = *(v188 + 8);
  v145(v137, v144);
  sub_1C593EDC0(v143, v144, v142);
  return (v145)(v143, v144);
}

uint64_t sub_1C594C688()
{
  result = *(v0 + 56);
  if (!result)
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    sub_1C592F30C(&qword_1EDA497D0, type metadata accessor for NowPlayingViewModel.Lifecycle);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C594C798()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  _s18ArtworkPlaceholderVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCB804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C594C97C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C594C97C()
{
  result = qword_1EDA46560;
  if (!qword_1EDA46560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46560);
  }

  return result;
}

uint64_t sub_1C594CA04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1C594CA50()
{
  sub_1C5927B74();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C594CB64();
      if (v2 <= 0x3F)
      {
        sub_1C5BC8C94();
        if (v3 <= 0x3F)
        {
          sub_1C594CBB4();
          if (v4 <= 0x3F)
          {
            sub_1C594CC0C();
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

void sub_1C594CB64()
{
  if (!qword_1EDA46AC0)
  {
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46AC0);
    }
  }
}

void sub_1C594CBB4()
{
  if (!qword_1EDA4E1B0)
  {
    sub_1C5BC8F34();
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA4E1B0);
    }
  }
}

void sub_1C594CC0C()
{
  if (!qword_1EDA467D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10);
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA467D0);
    }
  }
}

uint64_t sub_1C594CCB8()
{
  sub_1C5A3663C();
  _s23MiniPlayerAccessoryViewVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C78);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
  swift_getWitnessTable();
  sub_1C5A36690();
  sub_1C5BCA724();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  return swift_getWitnessTable();
}

unint64_t sub_1C594CE70()
{
  result = qword_1EDA4DA38[0];
  if (!qword_1EDA4DA38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4DA38);
  }

  return result;
}

uint64_t sub_1C594CEC4@<X0>(_BYTE *a1@<X8>)
{
  sub_1C594CF14();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

unint64_t sub_1C594CF14()
{
  result = qword_1EDA47430;
  if (!qword_1EDA47430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47430);
  }

  return result;
}

uint64_t sub_1C594CFC4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void *sub_1C594CFF4()
{
  type metadata accessor for TapExcludedGeometries.Geometry();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 257;
  v0[2] = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 257;
  v0[3] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 257;
  v0[4] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 257;
  v0[5] = v4;
  sub_1C5BC7BA4();
  return v0;
}

uint64_t sub_1C594D0B4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingViewControllerProxy();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C594D0FC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a2;
  v133 = a1;
  v118 = a3;
  v115 = sub_1C5BC82F4();
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997B0);
  v116 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v114 = v89 - v5;
  v6 = sub_1C5BC9304();
  v112 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v132 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = *(a2 - 8);
  v131 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v129 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = sub_1C5BC9394();
  v11 = type metadata accessor for TapExcludedGeometries();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C594618C(qword_1EDA488D8, type metadata accessor for TapExcludedGeometries);
  v144 = v10;
  v145 = v11;
  v92 = v10;
  v14 = v11;
  v121 = v11;
  v146 = WitnessTable;
  v147 = v13;
  v119 = WitnessTable;
  v15 = v13;
  v120 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v123 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v89 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78);
  v18 = sub_1C5BC8AB4();
  v110 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v97 = v89 - v19;
  v144 = v10;
  v145 = v14;
  v146 = WitnessTable;
  v147 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = OpaqueTypeConformance2;
  v21 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
  v142 = OpaqueTypeConformance2;
  v143 = v21;
  v22 = swift_getWitnessTable();
  v144 = v18;
  v145 = v6;
  v23 = v18;
  v89[0] = v18;
  v24 = v6;
  v124 = v6;
  v146 = v22;
  v147 = MEMORY[0x1E697FA08];
  v89[1] = v22;
  v25 = MEMORY[0x1E697FA08];
  v98 = swift_getOpaqueTypeMetadata2();
  v100 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = v89 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1997B8);
  v27 = sub_1C5BC8AB4();
  v105 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v125 = v89 - v28;
  v91 = v27;
  v29 = sub_1C5BC8AB4();
  v109 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v126 = v89 - v30;
  v96 = v29;
  v31 = sub_1C5BC8AB4();
  v111 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v130 = v89 - v32;
  v144 = v23;
  v145 = v24;
  v146 = v22;
  v147 = v25;
  v33 = swift_getOpaqueTypeConformance2();
  v89[2] = v33;
  v34 = sub_1C5924F54(&qword_1EDA461F8, &qword_1EC1997B8);
  v140 = v33;
  v141 = v34;
  v90 = swift_getWitnessTable();
  v35 = MEMORY[0x1E69805D0];
  v138 = v90;
  v139 = MEMORY[0x1E69805D0];
  v93 = swift_getWitnessTable();
  v136 = v93;
  v137 = v35;
  v102 = v31;
  v36 = swift_getWitnessTable();
  v104 = v36;
  v103 = sub_1C5924F54(&qword_1EDA466B8, &qword_1EC1997B0);
  v144 = v31;
  v145 = v128;
  v146 = v36;
  v147 = v103;
  v106 = MEMORY[0x1E6981348];
  v107 = swift_getOpaqueTypeMetadata2();
  v108 = *(v107 - 8);
  v37 = MEMORY[0x1EEE9AC00](v107);
  v99 = v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v101 = v89 - v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997A8);
  v40 = v135;
  sub_1C5BC81A4();
  swift_checkMetadataState();
  sub_1C5BC9DE4();

  sub_1C594E11C();
  v41 = v97;
  v42 = OpaqueTypeMetadata2;
  sub_1C5BC9E84();
  (*(v123 + 8))(v17, v42);
  v43 = v134;
  v44 = *(v134 + 16);
  v121 = v134 + 16;
  v133 = v44;
  v45 = v129;
  v46 = v127;
  v44(v129, v40, v127);
  v123 = *(v43 + 80);
  v47 = (v123 + 32) & ~v123;
  v48 = swift_allocObject();
  v120 = *(v46 + 16);
  OpaqueTypeMetadata2 = *(v46 + 24);
  v49 = OpaqueTypeMetadata2;
  *(v48 + 16) = v120;
  *(v48 + 24) = v49;
  v50 = *(v43 + 32);
  v134 = v43 + 32;
  v119 = v50;
  v50(v48 + v47, v45, v46);
  v51 = v132;
  sub_1C5BC9474();
  v52 = v95;
  v53 = v89[0];
  v54 = v124;
  sub_1C5BC9EB4();

  (*(v112 + 8))(v51, v54);
  (*(v110 + 8))(v41, v53);
  v144 = 0xD000000000000037;
  v145 = 0x80000001C5BFD680;
  v55 = v98;
  sub_1C5BC9F34();
  (*(v100 + 8))(v52, v55);
  v56 = v129;
  v57 = v135;
  v133(v129, v135, v46);
  v58 = v47;
  v94 = v47;
  v59 = swift_allocObject();
  v60 = v120;
  v61 = OpaqueTypeMetadata2;
  *(v59 + 16) = v120;
  *(v59 + 24) = v61;
  v62 = v59 + v58;
  v63 = v119;
  v119(v62, v56, v46);
  v64 = v91;
  v65 = v125;
  sub_1C5BCA324();

  (*(v105 + 8))(v65, v64);
  v66 = v57;
  v67 = v127;
  v133(v56, v66, v127);
  v68 = v94;
  v69 = swift_allocObject();
  *(v69 + 16) = v60;
  v70 = OpaqueTypeMetadata2;
  *(v69 + 24) = OpaqueTypeMetadata2;
  v63(v69 + v68, v56, v67);
  v71 = v96;
  v72 = v126;
  sub_1C5BC9E34();

  (*(v109 + 8))(v72, v71);
  sub_1C5BC9474();
  v73 = v113;
  sub_1C5BC82B4();
  v133(v56, v135, v67);
  v74 = swift_allocObject();
  *(v74 + 16) = v120;
  *(v74 + 24) = v70;
  v119(v74 + v68, v56, v67);
  sub_1C594618C(&qword_1EDA467D8, MEMORY[0x1E697BEA8]);
  v75 = v114;
  v76 = v115;
  sub_1C5BCA8D4();

  (*(v117 + 8))(v73, v76);
  sub_1C5BC8334();
  v77 = v99;
  v78 = v75;
  v79 = v102;
  v80 = v128;
  v81 = v104;
  v82 = v103;
  v83 = v130;
  sub_1C5BCA0B4();
  (*(v116 + 8))(v78, v80);
  (*(v111 + 8))(v83, v79);
  v144 = v79;
  v145 = v80;
  v146 = v81;
  v147 = v82;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = v101;
  v86 = v107;
  sub_1C593EDC0(v77, v107, v84);
  v87 = *(v108 + 8);
  v87(v77, v86);
  sub_1C593EDC0(v85, v86, v84);
  return (v87)(v85, v86);
}

unint64_t sub_1C594E11C()
{
  result = qword_1EDA45F60;
  if (!qword_1EDA45F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45F60);
  }

  return result;
}

uint64_t sub_1C594E170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v89 = v4;
  v90 = &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.Primary;
  v91 = v3;
  v92 = sub_1C5A3663C();
  v71 = v92;
  v5 = _s23MiniPlayerAccessoryViewVMa();
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v61 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C78);
  v7 = sub_1C5BC8AB4();
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10);
  v76 = v5;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
  v66 = WitnessTable;
  v95 = WitnessTable;
  v96 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_1C5A36690();
  v83 = v7;
  v89 = v7;
  v90 = v9;
  v79 = v9;
  v68 = v12;
  v91 = v12;
  v92 = v13;
  v67 = v13;
  v14 = sub_1C5BCA724();
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v61 - v15;
  sub_1C5BC97C4();
  v77 = v14;
  v72 = sub_1C5BC8AB4();
  v80 = *(v72 - 8);
  v16 = MEMORY[0x1EEE9AC00](v72);
  v75 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v61 - v18;
  v19 = sub_1C5BC8F34();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v2 + 8);
  v64 = *v2;
  v65 = v26;
  v27 = *(v2 + 16);
  v85 = *(v2 + 24);
  if (v85 == 1)
  {
    v28 = v27;
  }

  else
  {

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v27, 0);
    (*(v20 + 8))(v22, v19);
    v28 = v89;
  }

  if (v28 != 3 && v28)
  {
    if (qword_1EC1906C8 != -1)
    {
      swift_once();
    }

    v30 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      swift_once();
    }

    v30 = qword_1EDA5DAE8;
  }

  v31 = __swift_project_value_buffer(v23, v30);
  sub_1C5948550(v31, v25);
  if (v85)
  {
    v32 = v27;
  }

  else
  {

    sub_1C5BCB4E4();
    v33 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v27, 0);
    (*(v20 + 8))(v22, v19);
    v32 = v89;
  }

  v63 = v19;
  v62 = v20;
  if (v32 && (_UISolariumEnabled() & 1) != 0)
  {
    sub_1C59498C4(v64);
    v34 = *(v3 + 400);
    swift_unknownObjectRetain();
    v34(&v89, v4, v3);
    swift_unknownObjectRelease();
    v35 = v4;
    v36 = v93;
    v37 = v94;
  }

  else
  {
    sub_1C59498C4(v64);
    v38 = *(v3 + 400);
    swift_unknownObjectRetain();
    v38(&v89, v4, v3);
    swift_unknownObjectRelease();
    v36 = v89;
    v37 = v90;

    v35 = v4;
  }

  v39 = sub_1C5BC8FC4();
  v40 = *&v25[*(v23 + 52)];
  v41 = *(v25 + 10);
  v42 = sub_1C5BCAA74();
  v60 = v35;
  v43 = v69;
  sub_1C594EC50(v36, v37, v45, v39, v41, 0, v42, v44, v69, v40, v60, &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.Primary);
  v46 = v81;
  v47 = v76;
  sub_1C5BC9D24();
  (*(v73 + 8))(v43, v47);
  if (v85)
  {
    LOBYTE(v89) = v27;
  }

  else
  {

    sub_1C5BCB4E4();
    v48 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v27, 0);
    (*(v62 + 8))(v22, v63);
    LOBYTE(v27) = v89;
  }

  v88 = v27;
  v49 = v70;
  v50 = v83;
  sub_1C5BCA1C4();
  (*(v82 + 8))(v46, v50);
  v51 = v77;
  v52 = swift_getWitnessTable();
  v53 = v75;
  sub_1C5BCA184();
  (*(v74 + 8))(v49, v51);
  sub_1C594A4A4(v25);
  v54 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v86 = v52;
  v87 = v54;
  v55 = v72;
  v56 = swift_getWitnessTable();
  v57 = v78;
  sub_1C593EDC0(v53, v55, v56);
  v58 = *(v80 + 8);
  v58(v53, v55);
  sub_1C593EDC0(v57, v55, v56);
  return (v58)(v57, v55);
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.Standard.init(trailing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t NowPlayingMiniPlayerAccessoryLayout.Large.init(leading:trailing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

__n128 NowPlayingMiniPlayerAccessoryLayout.init(standard:large:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  result = *a1;
  v4 = *a2;
  v5 = a2[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  return result;
}

uint64_t sub_1C594EC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = _s23MiniPlayerAccessoryViewVMa();
  (*(*(a12 - 8) + 32))(&a9[v19[13]], a3, a12);
  *&a9[v19[14]] = a4;
  *&a9[v19[15]] = a10;
  v20 = &a9[v19[16]];
  *v20 = a5;
  v20[8] = a6 & 1;
  v21 = &a9[v19[17]];
  *v21 = a7;
  *(v21 + 1) = a8;
  v22 = &a9[v19[18]];
  *v22 = sub_1C5BC8C84();
  v22[1] = v23;
  v24 = v19[19];
  *&a9[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  swift_storeEnumTagMultiPayload();
  v25 = &a9[v19[20]];
  result = swift_getKeyPath();
  *v25 = result;
  v25[8] = 0;
  return result;
}

uint64_t sub_1C594EDF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C594EE48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C594EEBC()
{
  sub_1C594EF70();
  if (v0 <= 0x3F)
  {
    sub_1C594EFD4();
    if (v1 <= 0x3F)
    {
      sub_1C594F100();
      if (v2 <= 0x3F)
      {
        sub_1C594F0B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C594EF70()
{
  if (!qword_1EDA46740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC199FF8);
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46740);
    }
  }
}

void sub_1C594EFD4()
{
  if (!qword_1EDA463E8)
  {
    type metadata accessor for NowPlayingRouteObserver();
    sub_1C594F068(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
    v0 = sub_1C5BC8C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA463E8);
    }
  }
}

uint64_t sub_1C594F068(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C594F0B0()
{
  if (!qword_1EDA46720)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46720);
    }
  }
}

void sub_1C594F100()
{
  if (!qword_1EDA46750)
  {
    sub_1C5BC90F4();
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46750);
    }
  }
}

unint64_t sub_1C594F16C()
{
  result = qword_1EDA47590;
  if (!qword_1EDA47590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47590);
  }

  return result;
}

uint64_t sub_1C594F204()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C48);
  _s24BackwardsTransportButtonVMa();
  _s21TransportControlsViewV22MiniPlayerCenterButtonVMa();
  sub_1C5BC92D4();
  _s23ForwardsTransportButtonVMa();
  type metadata accessor for NowPlayingRouteButton.Content(255);
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  _s15ContextMenuViewVMa();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5BC92D4();
  sub_1C5BCA584();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C50);
  sub_1C5BC8AB4();
  sub_1C5BC92E4();
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA461B8, &qword_1EC198C50);
  swift_getWitnessTable();
  sub_1C594F9D8(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EDA45EC0, &qword_1EC198C48);
  sub_1C594F984();
  sub_1C5BCA8C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA462C0, &qword_1EC1943F0);
  return swift_getWitnessTable();
}

unint64_t sub_1C594F984()
{
  result = qword_1EDA47598;
  if (!qword_1EDA47598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47598);
  }

  return result;
}

uint64_t sub_1C594F9D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C594FA38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C48);
  v3 = a1[2];
  v4 = a1[4];
  _s24BackwardsTransportButtonVMa();
  _s21TransportControlsViewV22MiniPlayerCenterButtonVMa();
  v60 = sub_1C5BC92D4();
  v62 = _s23ForwardsTransportButtonVMa();
  type metadata accessor for NowPlayingRouteButton.Content(255);
  v65 = sub_1C5BC92D4();
  v59 = sub_1C5BC92D4();
  v61 = _s15ContextMenuViewVMa();
  swift_getAssociatedTypeWitness();
  v72 = v3;
  v73 = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v63 = sub_1C5BCB804();
  v64 = sub_1C5BC92D4();
  sub_1C5BC92D4();
  v66 = sub_1C5BC92D4();
  v70 = sub_1C5BCA584();
  v5 = a1[3];
  v75 = a1;
  v71 = v5;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  v67 = sub_1C5BC8AB4();
  v68 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v107 = swift_getWitnessTable();
  v108 = sub_1C594F9D8(&qword_1EDA48A70, type metadata accessor for NowPlayingRouteButton.Content);
  v105 = v6;
  v106 = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v102 = v8;
  v103 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x1E6981E60];
  v98 = v7;
  v99 = swift_getWitnessTable();
  v97 = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v10 = a1[5];
  v95 = v9;
  v96 = v10;
  v70 = v10;
  v93 = swift_getWitnessTable();
  v94 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A78);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198C50);
  v11 = sub_1C5BC8AB4();
  v12 = sub_1C5BC92E4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78);
  v87 = swift_getWitnessTable();
  v88 = sub_1C5924F54(&qword_1EDA461B8, &qword_1EC198C50);
  v13 = swift_getWitnessTable();
  v14 = sub_1C594F9D8(&qword_1EDA462E0, MEMORY[0x1E697C658]);
  swift_getOpaqueTypeMetadata2();
  sub_1C5924F54(&qword_1EDA45EC0, &qword_1EC198C48);
  v86 = sub_1C594F984();
  v15 = sub_1C5BCA8C4();
  v82 = v11;
  v83 = v12;
  v84 = v13;
  v85 = v14;
  v81 = swift_getOpaqueTypeConformance2();
  v60 = v15;
  v58 = swift_getWitnessTable();
  v16 = sub_1C5BCA714();
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v56 - v17;
  v65 = v18;
  v19 = sub_1C5BC8AB4();
  v66 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v56 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0);
  v59 = sub_1C5BC8AB4();
  v21 = *(v59 - 8);
  v22 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v56 - v24;
  v25 = sub_1C5BC8F34();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v76 + *(v75 + 20);
  v34 = *v33;
  if (v33[8] != 1)
  {
    v57 = v30;

    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5950E44(v34, 0);
    (*(v26 + 8))(v28, v25);
    v30 = v57;
    LOBYTE(v34) = v82;
  }

  v68 = v19;
  v69 = v21;
  if (v34 != 3 && v34)
  {
    if (qword_1EC1906C8 != -1)
    {
      v53 = v30;
      swift_once();
      v30 = v53;
    }

    v36 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      v52 = v30;
      swift_once();
      v30 = v52;
    }

    v36 = qword_1EDA5DAE8;
  }

  v37 = __swift_project_value_buffer(v30, v36);
  sub_1C5948550(v37, v32);
  v38 = v75;
  v39 = v76;
  v40 = *v76;
  sub_1C5950790(v28);
  v40(v28);
  (*(v26 + 8))(v28, v25);
  MEMORY[0x1EEE9AC00](*(v39 + *(v38 + 14)));
  v41 = v61;
  sub_1C5BCA704();

  v54 = v65;
  v55 = swift_getWitnessTable();
  v42 = v62;
  sub_1C5BCA244();
  (*(v63 + 8))(v41, v54);
  v79 = v55;
  v80 = MEMORY[0x1E697EBF8];
  v43 = v68;
  v44 = swift_getWitnessTable();
  v45 = v64;
  sub_1C5BC9F24();
  (*(v66 + 8))(v42, v43);
  v46 = sub_1C5924F54(&qword_1EDA462C0, &qword_1EC1943F0);
  v77 = v44;
  v78 = v46;
  v47 = v59;
  v48 = swift_getWitnessTable();
  v49 = v67;
  sub_1C593EDC0(v45, v47, v48);
  v50 = *(v69 + 8);
  v50(v45, v47);
  sub_1C593EDC0(v49, v47, v48);
  v50(v49, v47);
  return sub_1C5B50BC0(v32, type metadata accessor for NowPlayingMiniPlayerSpecs);
}

uint64_t sub_1C5950790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C59400B0(v2, &v13 - v9, &qword_1EC192E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  sub_1C5BCB4E4();
  v12 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t EnvironmentValues.mcui.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MCUINamespace<A>.deviceMetrics.getter()
{
  sub_1C593F9B0();

  return sub_1C5BC8F44();
}

double static NowPlayingMiniPlayerAccessoryID.playPauseTransportButton.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x7265746E6543;
  *a1 = xmmword_1C5BF4010;
  *(a1 + 16) = 0;
  return result;
}

uint64_t MCUINamespace<A>.miniPlayerWidth.getter()
{
  sub_1C594CF14();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5950AA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D756964656DLL;
  if (v2 != 1)
  {
    v4 = 0x7274736E6F636E75;
    v3 = 0xED000064656E6961;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6C616D73;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (*a2 != 1)
  {
    v8 = 0x7274736E6F636E75;
    v7 = 0xED000064656E6961;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

double static NowPlayingMiniPlayerAccessoryID.forwardsTransportButton.getter@<D0>(uint64_t a1@<X8>)
{
  result = 7.1481193e247;
  *a1 = xmmword_1C5BF4020;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1C5950BDC()
{
  v1 = *(v0 + 16);
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5950C4C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C5950C90()
{
  result = qword_1EDA4B340;
  if (!qword_1EDA4B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B340);
  }

  return result;
}

uint64_t sub_1C5950CEC@<X0>(uint64_t a1@<X8>)
{
  _s17TransportControlsCMa();
  sub_1C5950DFC(&qword_1EDA4A620, v2, _s17TransportControlsCMa);
  *a1 = sub_1C5BC88C4();
  *(a1 + 8) = v3;
  *(a1 + 16) = sub_1C5BC8C84();
  *(a1 + 24) = v4;
  result = swift_getKeyPath();
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1C5950DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5950DFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C5950E48(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C5950E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C5BC92B4();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1C5BC92C4();
}

uint64_t sub_1C5950F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{

  if (a7)
  {
    swift_unknownObjectRelease();

    return sub_1C5950E44(a5, a6 & 1);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1C5951048()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C59510F8()
{
  sub_1C59337D0();
  if (v0 <= 0x3F)
  {
    sub_1C5933828(319, &qword_1EDA46720);
    if (v1 <= 0x3F)
    {
      sub_1C5933828(319, &qword_1EDA46770);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1C5951214()
{
  result = qword_1EDA464F0;
  if (!qword_1EDA464F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195610);
    sub_1C5A6C9C8();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464F0);
  }

  return result;
}

unint64_t sub_1C59512CC()
{
  result = qword_1EDA4BD00;
  if (!qword_1EDA4BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4BD00);
  }

  return result;
}

unint64_t sub_1C5951360()
{
  result = qword_1EDA46528;
  if (!qword_1EDA46528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956D0);
    sub_1C5A6D670();
    sub_1C5924F54(&qword_1EDA46030, qword_1EC193698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46528);
  }

  return result;
}

unint64_t sub_1C5951418()
{
  result = qword_1EDA46300;
  if (!qword_1EDA46300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1956E0);
    sub_1C59514A4();
    sub_1C5A6D330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46300);
  }

  return result;
}

unint64_t sub_1C59514A4()
{
  result = qword_1EDA489C0;
  if (!qword_1EDA489C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA489C0);
  }

  return result;
}

unint64_t sub_1C59514F8()
{
  result = qword_1EDA48690;
  if (!qword_1EDA48690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48690);
  }

  return result;
}

uint64_t sub_1C5951558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v10[0] = *a1;
  v10[1] = v2;
  v11 = v3;
  v8[0] = v4;
  v8[1] = v5;
  v9 = v6;
  sub_1C595154C(v10[0], v2, v3);
  sub_1C595154C(v4, v5, v6);
  LOBYTE(v4) = sub_1C59515EC(v10, v8);
  sub_1C5950CE4();
  sub_1C5950CE4();
  return v4 & 1;
}

BOOL sub_1C59515EC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4)
  {
    if (v7)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1C5BCBDE4();
        sub_1C595154C(v6, v5, 1);
        sub_1C595154C(v3, v2, 1);
        sub_1C5950CE4();
        sub_1C5950CE4();
        return (v10 & 1) != 0;
      }

      sub_1C595154C(v8, v2, 1);
      sub_1C595154C(v3, v2, 1);
      sub_1C5950CE4();
      goto LABEL_17;
    }

LABEL_9:
    sub_1C595154C(*a2, a2[1], v7);
    sub_1C595154C(v3, v2, v4);
    sub_1C5950CE4();
    sub_1C5950CE4();
    return 0;
  }

  if (v7)
  {
    goto LABEL_9;
  }

  v12 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v14 = sub_1C5BCBDE4();
    sub_1C595154C(v6, v5, 0);
    sub_1C595154C(v3, v2, 0);
    sub_1C5950CE4();
    sub_1C5950CE4();
    return v14 & 1;
  }

  sub_1C595154C(v12, v2, 0);
  sub_1C595154C(v3, v2, 0);
  sub_1C5950CE4();
LABEL_17:
  sub_1C5950CE4();
  return 1;
}

unint64_t sub_1C5951830()
{
  result = qword_1EDA46508;
  if (!qword_1EDA46508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1955A8);
    sub_1C5924F54(&qword_1EDA45FC8, &qword_1EC1955B0);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46508);
  }

  return result;
}

unint64_t sub_1C5951914()
{
  result = qword_1EDA46478;
  if (!qword_1EDA46478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195570);
    sub_1C5951830();
    sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46478);
  }

  return result;
}

uint64_t sub_1C59519CC()
{
  _s17TransportControlsCMa();
  sub_1C594F9D8(&qword_1EDA4A620, _s17TransportControlsCMa);
  v0 = sub_1C5BC88C4();
  sub_1C5BC8C84();
  return v0;
}

uint64_t sub_1C5951AB4()
{
  _s21TransportControlsViewV20MiniPlayerEdgeButtonVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getWitnessTable();
  sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5951BB8@<X0>(uint64_t *a1@<X8>)
{
  _s17TransportControlsCMa();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C5951C24()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5951CB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C5BCAB54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BC8284();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  sub_1C5BC8CD4();
  (*(v7 + 104))(v10, *MEMORY[0x1E697DBB8], v6);
  v13 = sub_1C5BC8274();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if (v13)
  {
    v15 = MEMORY[0x1E6981DA0];
    sub_1C5BCA474();
  }

  else
  {
    v15 = MEMORY[0x1E6981DB8];
    sub_1C5BCA494();
  }

  v16 = sub_1C5BCA4B4();

  (*(v3 + 104))(v5, *v15, v2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  result = (*(v3 + 32))(a1 + *(v17 + 36), v5, v2);
  *a1 = v16;
  return result;
}

unint64_t sub_1C5951F50()
{
  result = qword_1EC192920;
  if (!qword_1EC192920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC196170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192920);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5951FD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v47 = a3;
  v46 = a2;
  v10 = _s21TransportControlsViewV20MiniPlayerEdgeButtonVMa();
  sub_1C5BC97C4();
  v50 = v10;
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v43 - v16;
  v17 = sub_1C5BCB804();
  v51 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v43 - v21;
  swift_beginAccess();
  v22 = *(a1 + 56);
  if (v22 == 255)
  {
    (*(v12 + 56))(v20, 1, 1, v11);
    WitnessTable = swift_getWitnessTable();
    v36 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    v62 = WitnessTable;
    v63 = v36;
    swift_getWitnessTable();
  }

  else
  {
    v45 = a6;
    v44 = v17;
    v24 = *(a1 + 40);
    v23 = *(a1 + 48);
    v56 = &type metadata for NowPlayingViewModel.TrailingTransportButtonConfiguration;
    v57 = sub_1C5973A34();
    *&v54 = v24;
    *(&v54 + 1) = v23;
    v55 = v22 & 1;
    swift_beginAccess();
    v25 = *(a1 + 57);
    sub_1C59525FC(v24, v23, v22);
    v26 = sub_1C59498C4(v46);
    v27 = swift_allocObject();
    v27[2] = a4;
    v27[3] = a5;
    v27[4] = v26;
    swift_unknownObjectRetain();
    v28 = v27;
    v17 = v44;
    sub_1C5973B04(&v54, v25, sub_1C5B50C58, v28, v58);
    v29 = v50;
    v30 = swift_getWitnessTable();
    sub_1C595BB1C(0xD000000000000023, 0x80000001C5BFC460);
    (*(*(v29 - 8) + 8))(v58, v29);
    v31 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    v52 = v30;
    v53 = v31;
    v32 = swift_getWitnessTable();
    v33 = v48;
    sub_1C593EDC0(v15, v11, v32);
    v34 = *(v12 + 8);
    v34(v15, v11);
    sub_1C593EDC0(v33, v11, v32);
    v34(v33, v11);
    (*(v12 + 32))(v20, v15, v11);
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  v37 = v49;
  sub_1C5941600(v20, v49);
  v38 = *(v51 + 8);
  v38(v20, v17);
  v39 = swift_getWitnessTable();
  v40 = sub_1C594F9D8(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v60 = v39;
  v61 = v40;
  v59 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  sub_1C593EDC0(v37, v17, v41);
  return (v38)(v37, v17);
}

uint64_t sub_1C59525FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C5951550();
  }

  return result;
}

uint64_t sub_1C5952614()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5952674(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C59526D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C5952730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = sub_1C5BC89B4();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  MEMORY[0x1EEE9AC00](v62);
  v7 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195570);
  MEMORY[0x1EEE9AC00](v60);
  v9 = &v59 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195578);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v59 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195580);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v59 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195588);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v59 - v12;
  v13 = sub_1C5BC8F34();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MiniPlayerTransportSpecs(0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[1];
  v76 = *v2;
  v77[0] = v19;
  *(v77 + 9) = *(v2 + 25);
  v79 = *(v2 + 40);
  v20 = *(v2 + 4);
  v78 = v20;
  if (v79 != 1)
  {
    sub_1C59400B0(&v78, &v74, &qword_1EC1929E0);
    sub_1C5BCB4E4();
    v21 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v78, &qword_1EC1929E0);
    (*(v14 + 8))(v16, v13);
    LOBYTE(v20) = v74;
  }

  if (v20 != 3 && v20)
  {
    if (qword_1EDA482A0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDA482A8;
  }

  else
  {
    if (qword_1EDA482C8 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDA482D0;
  }

  v23 = __swift_project_value_buffer(v17, v22);
  v24 = v68;
  sub_1C59534C8(v23, v68);
  v25 = swift_allocObject();
  v26 = *(a1 + 24);
  *(v25 + 16) = *(a1 + 16);
  *(v25 + 24) = v26;
  v27 = v77[0];
  *(v25 + 32) = v76;
  *(v25 + 48) = v27;
  *(v25 + 57) = *(v77 + 9);
  MEMORY[0x1EEE9AC00](v25);
  *(&v59 - 4) = v28;
  *(&v59 - 3) = v29;
  *(&v59 - 2) = &v76;
  (*(*(a1 - 8) + 16))(&v74, &v76, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195590);
  sub_1C595352C();
  sub_1C5BCA6E4();
  v30 = *v24;
  KeyPath = swift_getKeyPath();
  v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1955A8) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = *(v17 + 20);
  v34 = swift_getKeyPath();
  v35 = &v9[*(v60 + 36)];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78) + 28);
  v37 = sub_1C5BCA5D4();
  (*(*(v37 - 8) + 16))(v35 + v36, &v24[v33], v37);
  *v35 = v34;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v38 = v62;
  v39 = v7 + *(v62 + 20);
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = v7 + *(v38 + 24);
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  *(v7 + *(v38 + 28)) = 0x3FF0000000000000;
  sub_1C5951914();
  sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle);

  v41 = v61;
  sub_1C5BC9DB4();
  sub_1C595391C(v7, type metadata accessor for NowPlayingTransportButtonStyle);
  sub_1C5924EF4(v9, &qword_1EC195570);
  v43 = v69;
  v42 = v70;
  v44 = v66;
  (*(v69 + 104))(v66, *MEMORY[0x1E697E6E8], v70);
  v45 = sub_1C5A6C3E0();
  v46 = v64;
  v47 = v63;
  sub_1C5BC9F44();
  (*(v43 + 8))(v44, v42);
  sub_1C5924EF4(v41, &qword_1EC195578);

  v48 = sub_1C595397C();
  v50 = v49;
  LOBYTE(v44) = v51;

  v74 = v47;
  v75 = v45;
  swift_getOpaqueTypeConformance2();
  v52 = v72;
  v53 = v67;
  sub_1C5BCA024();
  sub_1C5953BD8(v48, v50, v44 & 1);

  (*(v65 + 8))(v46, v53);
  v54 = [objc_opt_self() mainBundle];
  v55 = sub_1C5949F2C();
  v57 = v56;

  v74 = v55;
  v75 = v57;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000023, 0x80000001C5BF9320);
  sub_1C5A6C5DC();
  sub_1C5BCA164();

  sub_1C5924EF4(v52, &qword_1EC195588);
  return sub_1C595391C(v24, type metadata accessor for MiniPlayerTransportSpecs);
}

uint64_t sub_1C59530FC()
{

  swift_unknownObjectRelease();
  sub_1C5942458(*(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_1C5953168@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5954684();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5953228()
{
  result = sub_1C5BCA5D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C59532A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_1C5BCA5D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MiniPlayerTransportSpecs(0);
  __swift_allocate_value_buffer(v7, qword_1EDA482D0);
  v8 = __swift_project_value_buffer(v7, qword_1EDA482D0);
  sub_1C5BC9924();
  sub_1C5BC9964();
  v9 = sub_1C5BC99E4();

  (*(v4 + 104))(v6, *MEMORY[0x1E69816E0], v3);
  if (_UISolariumEnabled())
  {
    sub_1C5BC9964();
  }

  else
  {
    sub_1C5BC9974();
  }

  v10 = sub_1C5BC9954();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_1C5BC99A4();
  sub_1C5924EF4(v2, &qword_1EC190F90);
  *v8 = v9;
  result = (*(v4 + 32))(&v8[*(v7 + 20)], v6, v3);
  *&v8[*(v7 + 24)] = v11;
  return result;
}

uint64_t sub_1C59534C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MiniPlayerTransportSpecs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C595352C()
{
  result = qword_1EDA46480;
  if (!qword_1EDA46480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195590);
    sub_1C59535E4();
    sub_1C5924F54(&qword_1EDA46428, &qword_1EC1955A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46480);
  }

  return result;
}

unint64_t sub_1C59535E4()
{
  result = qword_1EDA46518;
  if (!qword_1EDA46518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195598);
    sub_1C5953670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46518);
  }

  return result;
}

unint64_t sub_1C5953670()
{
  result = qword_1EDA46430;
  if (!qword_1EDA46430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46430);
  }

  return result;
}

double sub_1C59536D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BCA5A4();
  v5 = sub_1C5BCAA54();
  v7 = v6;
  sub_1C5953804(a1, &v20);
  v12 = v23;
  v13[0] = v20;
  v13[1] = v21;
  v13[2] = v22;
  LOBYTE(v14) = v23;
  *(&v14 + 1) = v5;
  v15 = v7;
  v24 = v7;
  v23 = v14;
  v16[0] = v20;
  v16[1] = v21;
  v16[2] = v22;
  v17 = v12;
  v18 = v5;
  v19 = v7;
  sub_1C59400B0(v13, &v11, &qword_1EC1955A0);
  sub_1C5924EF4(v16, &qword_1EC1955A0);
  *a2 = v4;
  v8 = v20;
  *(a2 + 24) = v21;
  result = *&v22;
  v10 = v23;
  *(a2 + 40) = v22;
  *(a2 + 56) = v10;
  *(a2 + 72) = v24;
  *(a2 + 8) = v8;
  return result;
}

double sub_1C5953804@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v3 + 33);
  v5 = *&aPlay_3[8 * v4];
  v6 = qword_1C5BE0B68[v4];
  v7 = swift_allocObject();
  result = 4.82582436e276;
  *(v7 + 16) = xmmword_1C5BDFC60;
  *a2 = 0xD000000000000018;
  *(a2 + 8) = 0x80000001C5BF9350;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = sub_1C59668D8;
  *(a2 + 40) = v7;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1C59538C0()
{

  return swift_deallocObject();
}

uint64_t sub_1C595391C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C595397C()
{
  v1 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v2 - 8);
  swift_beginAccess();
  if (!*(v0 + 33))
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*(v0 + 33) == 1)
  {
    sub_1C5BCADC4();
    if (qword_1EDA4E5D0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  v3 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  sub_1C5BCAE94();
  sub_1C594A23C();
  return sub_1C5BC9CA4();
}

uint64_t sub_1C5953BD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1C5953C08()
{
  result = qword_1EDA46440;
  if (!qword_1EDA46440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195670);
    sub_1C5953CC0();
    sub_1C5924F54(&qword_1EDA46310, &qword_1EC195678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46440);
  }

  return result;
}

unint64_t sub_1C5953CC0()
{
  result = qword_1EDA46448;
  if (!qword_1EDA46448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195668);
    sub_1C5A6D5E4();
    sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46448);
  }

  return result;
}

unint64_t sub_1C5953D78()
{
  result = qword_1EDA464B0;
  if (!qword_1EDA464B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195658);
    sub_1C5953E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464B0);
  }

  return result;
}

unint64_t sub_1C5953E04()
{
  result = qword_1EDA465B0;
  if (!qword_1EDA465B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195650);
    sub_1C5950DFC(&qword_1EDA46200, 255, MEMORY[0x1E697C8D0]);
    sub_1C5924F54(&qword_1EDA461E8, &qword_1EC1956C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465B0);
  }

  return result;
}

uint64_t type metadata accessor for _CAPackageView()
{
  result = qword_1EDA4C040;
  if (!qword_1EDA4C040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5953F60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C5953FB0()
{
  sub_1C5953F60(319, &qword_1EDA45EC8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C59540FC();
    if (v1 <= 0x3F)
    {
      sub_1C592EEE4(319, &qword_1EDA46760, MEMORY[0x1E697DBD0]);
      if (v2 <= 0x3F)
      {
        sub_1C5953F60(319, &qword_1EDA46738, MEMORY[0x1E69815C0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C592EEE4(319, &qword_1EDA46768, MEMORY[0x1E697BE48]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C59540FC()
{
  if (!qword_1EDA46690)
  {
    type metadata accessor for ViewState();
    sub_1C5954190(&qword_1EDA46C30, type metadata accessor for ViewState);
    v0 = sub_1C5BC88D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46690);
    }
  }
}

uint64_t sub_1C5954190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C595427C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197900);
  sub_1C5BC81D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1978F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192880);
  sub_1C5954398();
  sub_1C5954488();
  swift_getOpaqueTypeConformance2();
  sub_1C5954190(&qword_1EDA467E8, MEMORY[0x1E697BE48]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5954398()
{
  result = qword_1EDA465C0;
  if (!qword_1EDA465C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1978F8);
    sub_1C5954424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465C0);
  }

  return result;
}

unint64_t sub_1C5954424()
{
  result = qword_1EDA466D0;
  if (!qword_1EDA466D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC197908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA466D0);
  }

  return result;
}

unint64_t sub_1C5954488()
{
  result = qword_1EDA4E170;
  if (!qword_1EDA4E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E170);
  }

  return result;
}

uint64_t sub_1C5954504@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C5BC8284();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1C5BC8CD4();
  (*(v3 + 104))(v6, *MEMORY[0x1E697DBA8], v2);
  v9 = sub_1C5BC8274();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    result = sub_1C5BCA494();
  }

  else
  {
    result = sub_1C5BCA474();
  }

  *a1 = result;
  return result;
}

unint64_t sub_1C5954684()
{
  result = qword_1EDA46360;
  if (!qword_1EDA46360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46360);
  }

  return result;
}

uint64_t sub_1C59546D8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = sub_1C5BC8F34();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195650);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195658);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v39 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195660);
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v39 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195668);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v39 - v12;
  sub_1C5BC9564();
  *&v7[*(v5 + 44)] = sub_1C5BC93F4();
  v14 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  v15 = *(v14 + 20);
  v45 = v1;
  v16 = v1 + v15;
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    sub_1C5BCB4E4();
    v18 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v19 = v39;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v17, 0);
    (*(v40 + 8))(v19, v41);
    LOBYTE(v17) = v61[0];
  }

  if (v17)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.5;
  }

  sub_1C59E7D34(v7, v9, &qword_1EC195650);
  *&v9[*(v42 + 36)] = v20;
  if (sub_1C5BC9574())
  {
    v21 = *(v45 + *(v14 + 28)) * 0.8;
  }

  else
  {
    v21 = *(v45 + *(v14 + 28));
  }

  sub_1C5BCABD4();
  v23 = v22;
  v25 = v24;
  sub_1C59E7D34(v9, v11, &qword_1EC195658);
  v26 = &v11[*(v43 + 36)];
  *v26 = v21;
  *(v26 + 1) = v21;
  *(v26 + 2) = v23;
  *(v26 + 3) = v25;
  sub_1C5BC9574();
  v27 = sub_1C5BCAB34();
  v28 = sub_1C5BC9574();
  sub_1C59E7D34(v11, v13, &qword_1EC195660);
  v29 = &v13[*(v44 + 36)];
  *v29 = v27;
  v29[8] = v28 & 1;
  v30 = sub_1C5BCAA54();
  v32 = v31;
  sub_1C5954BC8(&v48);
  v56 = v50;
  v57 = v51;
  v58 = v52;
  v54 = v48;
  v55 = v49;
  *&v59 = v53;
  *(&v59 + 1) = v30;
  v60 = v32;
  v33 = v46;
  sub_1C59E7D34(v13, v46, &qword_1EC195668);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195670) + 36);
  v35 = v59;
  *(v34 + 64) = v58;
  *(v34 + 80) = v35;
  *(v34 + 96) = v60;
  v36 = v55;
  *v34 = v54;
  *(v34 + 16) = v36;
  v37 = v57;
  *(v34 + 32) = v56;
  *(v34 + 48) = v37;
  v61[0] = v48;
  v61[1] = v49;
  v61[3] = v51;
  v61[4] = v52;
  v61[2] = v50;
  v62 = v53;
  v63 = v30;
  v64 = v32;
  sub_1C59400B0(&v54, &v47, &qword_1EC195678);
  return sub_1C5924EF4(v61, &qword_1EC195678);
}

double sub_1C5954BC8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5BC8284();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7];
  sub_1C5BC9574();
  sub_1C59421E4(v8);
  (*(v3 + 104))(v6, *MEMORY[0x1E697DBA8], v2);
  v9 = sub_1C5BC8274();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    sub_1C5BCA494();
  }

  else
  {
    sub_1C5BCA474();
  }

  v11 = sub_1C5BCA4B4();

  sub_1C5A6C004();
  sub_1C5A6C004();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v18[6] = v19;
  *&v18[22] = v20;
  *&v18[38] = v21;
  if (sub_1C5BC9574())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = sub_1C5BCAB34();
  v14 = sub_1C5BC9574();
  v15 = *&v18[16];
  *(a1 + 10) = *v18;
  *a1 = v11;
  *(a1 + 8) = 256;
  *(a1 + 26) = v15;
  result = *&v18[32];
  *(a1 + 42) = *&v18[32];
  *(a1 + 56) = *&v18[46];
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14 & 1;
  return result;
}

uint64_t sub_1C5954E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v40 = v6;
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v5 + 16);
  sub_1C5BC92D4();
  v52 = *(a1 + 32);
  v61 = v52;
  swift_getWitnessTable();
  v8 = sub_1C5BCA7F4();
  v44 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - v9;
  v45 = sub_1C5BC8AB4();
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v51 = &v38 - v10;
  v47 = sub_1C5BC8AB4();
  v49 = *(v47 - 8);
  v11 = MEMORY[0x1EEE9AC00](v47);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v38 - v13;
  v54 = v53;
  v55 = v52;
  v42 = v2;
  v56 = v2;
  sub_1C5BCAA54();
  sub_1C5BCA7E4();
  v41 = *(v4 + 16);
  v38 = v7;
  v14 = v2;
  v15 = a1;
  v41(v7, v14, a1);
  v16 = v4;
  v17 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v19 = v52;
  *(v18 + 16) = v53;
  *(v18 + 32) = v19;
  v20 = *(v16 + 32);
  v21 = v15;
  v20(v18 + v17, v7, v15);
  v22 = v8;
  WitnessTable = swift_getWitnessTable();
  v24 = v39;
  sub_1C5BCA324();

  (*(v44 + 8))(v24, v22);
  v25 = v38;
  v41(v38, v42, v21);
  v26 = swift_allocObject();
  v27 = v52;
  *(v26 + 16) = v53;
  *(v26 + 32) = v27;
  v20(v26 + v17, v25, v21);
  v28 = MEMORY[0x1E69805D0];
  v59 = WitnessTable;
  v60 = MEMORY[0x1E69805D0];
  v29 = v45;
  v30 = swift_getWitnessTable();
  v31 = v43;
  v32 = v51;
  sub_1C5BC9E34();

  (*(v48 + 8))(v32, v29);
  v57 = v30;
  v58 = v28;
  v33 = v47;
  v34 = swift_getWitnessTable();
  v35 = v46;
  sub_1C593EDC0(v31, v33, v34);
  v36 = *(v49 + 8);
  v36(v31, v33);
  sub_1C593EDC0(v35, v33, v34);
  return (v36)(v35, v33);
}

uint64_t sub_1C5955414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a6;
  v42 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v40 = &v38 - v14;
  v39 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  v21 = sub_1C5BC92D4();
  v43 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  v50 = a2;
  v51 = a3;
  v46 = a4;
  v52 = a4;
  v53 = a5;
  v44 = a5;
  v24 = type metadata accessor for ShownWhenAppeared();
  v25 = (a1 + *(v24 + 56));
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v50) = v26;
  v51 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  if (v49 == 1)
  {
    v28 = a1;
    v29 = v46;
    sub_1C593EDC0(v28, a2, v46);
    sub_1C593EDC0(v20, a2, v29);
    v30 = v44;
    sub_1C5950E54(v18, a2);
    v31 = *(v39 + 8);
    v31(v18, a2);
    v31(v20, a2);
  }

  else
  {
    v32 = a1 + *(v24 + 52);
    v33 = v40;
    v30 = v44;
    sub_1C593EDC0(v32, a3, v44);
    v34 = v41;
    sub_1C593EDC0(v33, a3, v30);
    sub_1C5941738(v34, a2, a3);
    v35 = *(v42 + 8);
    v35(v34, a3);
    v35(v33, a3);
  }

  v47 = v46;
  v48 = v30;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v23, v21, WitnessTable);
  return (*(v43 + 8))(v23, v21);
}

uint64_t sub_1C59557E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C5955820@<X0>(uint64_t *a1@<X8>)
{
  _s18MiniPlayerMetadataCMa();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C595586C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

double sub_1C59558B4@<D0>(_OWORD *a1@<X8>)
{
  sub_1C5955914();
  sub_1C5BC8F44();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C5955914()
{
  result = qword_1EDA463E0;
  if (!qword_1EDA463E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA463E0);
  }

  return result;
}

uint64_t sub_1C595597C(uint64_t a1)
{
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CF8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v4 = sub_1C5BCA714();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-v9];
  v15 = *(a1 + 16);
  v16 = v3;
  v17 = *(a1 + 32);
  v18 = v1;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v8, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v8, v4);
  sub_1C593EDC0(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

unint64_t sub_1C5955B88()
{
  result = qword_1EDA4A358[0];
  if (!qword_1EDA4A358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4A358);
  }

  return result;
}

uint64_t sub_1C5955BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D00);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195080);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v46 - v15;
  v16 = sub_1C5BC8F34();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CF8);
  v20 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v55 = &v46 - v23;
  v57 = *(a3 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v56 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v52 = &v46 - v26;
  sub_1C593EDC0(a1, a3, a5);
  *&v63 = a2;
  *(&v63 + 1) = a3;
  v64 = a4;
  v65 = a5;
  v51 = a5;
  v27 = a1 + *(type metadata accessor for Marquee.ContentWithBadge() + 52);
  v28 = *v27;
  v29 = *(v27 + 8);
  v31 = *(v27 + 16);
  v30 = *(v27 + 24);
  if (*(v27 + 32) != 1)
  {

    sub_1C5BCB4E4();
    v38 = sub_1C5BC9844();
    v46 = a3;
    v39 = v38;
    sub_1C5BC7C54();

    a3 = v46;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5B5E48C(v28, v29, v31, v30, 0);
    (*(v17 + 8))(v19, v16);
    v29 = *(&v63 + 1);
    v31 = v64;
    v30 = v65;
    if (*(&v63 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v37 = 1;
    v36 = v55;
    goto LABEL_6;
  }

  sub_1C5957038(v28, v29);
  if (!v29)
  {
    goto LABEL_5;
  }

LABEL_3:
  v63 = xmmword_1C5BED3B0;
  LOBYTE(v64) = 0;
  v65 = MEMORY[0x1E69E7CC0];
  v32 = v47;
  sub_1C5BCA094();
  v33 = v48;
  sub_1C59400B0(v32, v48, &qword_1EC195080);
  v34 = v49;
  sub_1C59400B0(v33, v49, &qword_1EC195080);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D08) + 48));
  *v35 = v29;
  v35[1] = v31;
  v35[2] = v30;

  sub_1C5924EF4(v32, &qword_1EC195080);

  sub_1C5924EF4(v33, &qword_1EC195080);
  v36 = v55;
  sub_1C59E7D34(v34, v55, &qword_1EC198D00);
  v37 = 0;
LABEL_6:
  (*(v50 + 56))(v36, v37, 1, v53);
  v41 = v56;
  v40 = v57;
  v42 = v52;
  (*(v57 + 16))(v56, v52, a3);
  *&v63 = v41;
  v43 = v59;
  sub_1C59400B0(v36, v59, &qword_1EC198CF8);
  *(&v63 + 1) = v43;
  v62[0] = a3;
  v62[1] = v54;
  v60 = v51;
  v61 = sub_1C5B5E7C4();
  sub_1C594226C(&v63, 2uLL, v62);
  sub_1C5924EF4(v36, &qword_1EC198CF8);
  v44 = *(v40 + 8);
  v44(v42, a3);
  sub_1C5924EF4(v43, &qword_1EC198CF8);
  return (v44)(v41, a3);
}

uint64_t sub_1C59561E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s21MiniPlayerContentViewV7ArtworkVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v61 = v4;
  v62 = v3;
  _s22MiniPlayerMetadataViewVMa();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC92D4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1C5BCA714();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v47 - v7;
  v8 = sub_1C5BC8AB4();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v47 - v9;
  v59 = v10;
  v11 = sub_1C5BC8AB4();
  v60 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v47 - v14;
  v15 = sub_1C5BC8F34();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v2;
  v49 = v2[1];
  v50 = v23;
  v24 = v2[2];
  v51 = *(v2 + 24);
  if (v51 == 1)
  {
    v25 = v24;
  }

  else
  {
    v48 = v20;
    sub_1C5950E48(v24, 0);
    sub_1C5BCB4E4();
    v26 = sub_1C5BC9844();
    v47 = v15;
    v27 = v26;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v24, 0);
    (*(v16 + 8))(v18, v47);
    v20 = v48;
    v25 = v67;
  }

  if (v25 != 3 && v25)
  {
    v28 = v6;
    if (qword_1EC1906C8 != -1)
    {
      v46 = v20;
      swift_once();
      v20 = v46;
    }

    v29 = qword_1EC1A6AC8;
  }

  else
  {
    v28 = v6;
    if (qword_1EDA47CC0 != -1)
    {
      v45 = v20;
      swift_once();
      v20 = v45;
    }

    v29 = qword_1EDA5DAE8;
  }

  v30 = __swift_project_value_buffer(v20, v29);
  v31 = sub_1C5948550(v30, v22);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v61;
  *(&v47 - 6) = v62;
  *(&v47 - 5) = v32;
  v33 = v49;
  *(&v47 - 4) = v50;
  *(&v47 - 3) = v33;
  *(&v47 - 2) = v24;
  *(&v47 - 8) = v51;
  sub_1C5BC8FC4();
  v34 = v53;
  sub_1C5BCA704();
  sub_1C5BC98A4();
  v35 = swift_getWitnessTable();
  v36 = v54;
  sub_1C5BCA2F4();
  (*(v28 + 8))(v34, v5);
  sub_1C5BC98B4();
  v37 = MEMORY[0x1E697E5D8];
  v65 = v35;
  v66 = MEMORY[0x1E697E5D8];
  v38 = v59;
  v39 = swift_getWitnessTable();
  v40 = v56;
  sub_1C5BCA2F4();
  (*(v58 + 8))(v36, v38);
  sub_1C594A4A4(v22);
  v63 = v39;
  v64 = v37;
  v41 = swift_getWitnessTable();
  v42 = v57;
  sub_1C593EDC0(v40, v11, v41);
  v43 = *(v60 + 8);
  v43(v40, v11);
  sub_1C593EDC0(v42, v11, v41);
  return (v43)(v42, v11);
}

uint64_t sub_1C5956940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a4;
  v53 = a3;
  v52 = a2;
  v51 = a1;
  v56 = a7;
  _s22MiniPlayerMetadataViewVMa();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v47 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C5BCA714();
  v48 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v39 - v13;
  v54 = sub_1C5BC92D4();
  v50 = *(v54 - 8);
  v14 = MEMORY[0x1EEE9AC00](v54);
  v49 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v39 - v16;
  v39 = a6;
  _s21MiniPlayerContentViewV7ArtworkVMa();
  v17 = sub_1C5BC8AB4();
  v40 = *(v17 - 8);
  v18 = v40;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v41 = &v39 - v22;
  sub_1C5A35928(&v73);
  v69 = v73;
  LOBYTE(v70) = v74;
  v71 = v75;
  v72 = v76;
  v23 = swift_getWitnessTable();
  sub_1C5BCA184();
  v24 = v71;
  v25 = v72;

  sub_1C5942458(v24, v25);
  v26 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v67 = v23;
  v68 = v26;
  v42 = swift_getWitnessTable();
  sub_1C593EDC0(v21, v17, v42);
  v43 = *(v18 + 8);
  v43(v21, v17);
  v27 = v39;
  _s21MiniPlayerContentViewV10CenterViewVMa();
  v57 = a5;
  v58 = v27;
  v59 = v51;
  v60 = v52;
  v61 = v53;
  v62 = v55 & 1;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  v28 = swift_getWitnessTable();
  v29 = v45;
  sub_1C593EDC0(v12, v9, v28);
  v30 = *(v48 + 8);
  v30(v12, v9);
  sub_1C593EDC0(v29, v9, v28);
  v31 = v44;
  sub_1C5950E54(v12, v9);
  v30(v12, v9);
  v30(v29, v9);
  v32 = v41;
  (*(v40 + 16))(v21, v41, v17);
  v73 = v21;
  v33 = v50;
  v34 = v49;
  v35 = v54;
  (*(v50 + 16))(v49, v31, v54);
  v74 = v34;
  v69 = v17;
  v70 = v35;
  v65 = v42;
  v63 = v28;
  v64 = MEMORY[0x1E6981838];
  v66 = swift_getWitnessTable();
  sub_1C594226C(&v73, 2uLL, &v69);
  v36 = *(v33 + 8);
  v36(v31, v35);
  v37 = v43;
  v43(v32, v17);
  v36(v34, v35);
  return v37(v21, v17);
}

uint64_t sub_1C5957038(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C5957088()
{
  v0 = _s22MiniPlayerMetadataViewVMa();
  sub_1C5BC97C4();
  v1 = sub_1C5BC8AB4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  _s21MiniPlayerContentViewV10CenterViewVMa();

  sub_1C59573A8(v19);
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA184();
  (*(*(v0 - 8) + 8))(v19, v0);
  v9 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v17 = WitnessTable;
  v18 = v9;
  v10 = swift_getWitnessTable();
  sub_1C593EDC0(v5, v1, v10);
  v11 = *(v2 + 8);
  v11(v5, v1);
  (*(v2 + 16))(v5, v7, v1);
  v15 = 0;
  v16 = 1;
  v19[0] = v5;
  v19[1] = &v15;
  v14[0] = v1;
  v14[1] = MEMORY[0x1E6981840];
  v13[0] = v10;
  v13[1] = MEMORY[0x1E6981838];
  sub_1C594226C(v19, 2uLL, v14);
  v11(v7, v1);
  return (v11)(v5, v1);
}

uint64_t sub_1C5957354@<X0>(uint64_t *a1@<X8>)
{
  _s14DefaultArtworkCMa();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C59573A8@<X0>(uint64_t a1@<X8>)
{
  _s18MiniPlayerMetadataCMa();
  sub_1C59576B4(qword_1EDA4A4D8, v2, _s18MiniPlayerMetadataCMa);
  *a1 = sub_1C5BC88C4();
  *(a1 + 8) = v3;
  *(a1 + 16) = sub_1C5BC8C84();
  *(a1 + 24) = v4;
  type metadata accessor for NowPlayingRouteObserver();
  sub_1C59576B4(&qword_1EDA48458, 255, type metadata accessor for NowPlayingRouteObserver);
  *(a1 + 32) = sub_1C5BC8C84();
  *(a1 + 40) = v5;
  _s12PresentationCMa();
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  *(a1 + 48) = sub_1C5BC8324();
  *(a1 + 56) = v6 & 1;
  *(a1 + 64) = swift_getKeyPath();
  *(a1 + 104) = 0;
  *(a1 + 112) = swift_getKeyPath();
  *(a1 + 120) = 0;
  type metadata accessor for WindowProperties();
  sub_1C59576B4(&qword_1EDA4B960, 255, type metadata accessor for WindowProperties);
  result = sub_1C5BC8324();
  *(a1 + 128) = result;
  *(a1 + 136) = v8 & 1;
  return result;
}

uint64_t sub_1C59575AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C5BC9044();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C595763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C5BC9044();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C59576B4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C59576FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v76 = a2;
  v3 = sub_1C5BC8F34();
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArtworkCornerModifier(0);
  v66 = *(v5 - 8);
  v6 = *(v66 + 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DF8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v62 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E00);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v62 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E08);
  v68 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v77 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E10);
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v62 - v15;
  KeyPath = swift_getKeyPath();
  v17 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E18) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8);
  v18 = v6;
  sub_1C5BCA694();
  *v17 = KeyPath;
  v19 = v2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196E20);
  (*(*(v20 - 8) + 16))(v10, v78, v20);
  sub_1C5945830(v2, v7, type metadata accessor for ArtworkCornerModifier);
  v21 = v66[80];
  v22 = (v21 + 16) & ~v21;
  v23 = swift_allocObject();
  sub_1C5958174(v7, v23 + v22);
  v24 = v8;
  v25 = *(v8 + 36);
  v66 = v10;
  v26 = &v10[v25];
  *v26 = sub_1C5972A08;
  *(v26 + 1) = v23;
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = *(v19 + 64);
  v28 = v19;
  if (*(v19 + 72) == 1)
  {
    LOBYTE(v81) = *(v19 + 64);
  }

  else
  {

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    v22 = (v21 + 16) & ~v21;
    sub_1C5BC7C54();

    v30 = v69;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v27, 0);
    (*(v70 + 8))(v30, v71);
    LOBYTE(v27) = v81;
  }

  v62 = v12;
  v79 = v27;
  v31 = v28;
  sub_1C5945830(v28, v7, type metadata accessor for ArtworkCornerModifier);
  v32 = swift_allocObject();
  v78 = v18;
  sub_1C5958174(v7, v32 + v22);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193C10);
  v34 = sub_1C5AC4570();
  v35 = sub_1C5945CDC();
  v36 = v7;
  v37 = v21;
  v38 = v66;
  sub_1C5BCA344();

  sub_1C5924EF4(v38, &qword_1EC196DF8);
  v39 = *(v31 + 96);
  if (v39)
  {
    v79 = *(v39 + 16);
    sub_1C5945830(v31, v36, type metadata accessor for ArtworkCornerModifier);
    v66 = v37;
    v40 = swift_allocObject();
    sub_1C5958174(v36, v40 + v22);
    v81 = v24;
    v82 = v33;
    v83 = v34;
    v84 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v42 = sub_1C593A9AC();
    v43 = v67;
    v64 = OpaqueTypeConformance2;
    v63 = v42;
    v44 = v62;
    sub_1C5BCA344();

    (*(v65 + 8))(v44, v43);
    v45 = *v31;
    v46 = v36;
    if (*(v31 + 8))
    {
      v79 = *v31;
    }

    else
    {

      sub_1C5BCB4E4();
      v47 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v48 = v69;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v45, 0);
      (*(v70 + 8))(v48, v71);
      LOBYTE(v45) = v79;
    }

    v80 = v45;
    sub_1C5945830(v31, v36, type metadata accessor for ArtworkCornerModifier);
    v49 = v31;
    v50 = swift_allocObject();
    sub_1C5958174(v36, v50 + v22);
    v81 = v43;
    v82 = &type metadata for NowPlayingViewModel.Lifecycle.TransitionPhase;
    v83 = v64;
    v84 = v63;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = sub_1C592D124();
    v54 = v72;
    v53 = v73;
    v55 = v77;
    sub_1C5BCA334();

    (*(v68 + 8))(v55, v54);
    v56 = *(v49 + 80);
    if (v56)
    {
      swift_beginAccess();
      v80 = *(v56 + 16);
      sub_1C5945830(v49, v46, type metadata accessor for ArtworkCornerModifier);
      v57 = swift_allocObject();
      sub_1C5958174(v46, v57 + v22);
      v81 = v54;
      v82 = &type metadata for NowPlayingArtwork.Placement;
      v83 = v51;
      v84 = v52;
      swift_getOpaqueTypeConformance2();
      v58 = v75;
      sub_1C5BCA344();

      return (*(v74 + 8))(v53, v58);
    }

    _s14DefaultArtworkCMa();
    v60 = qword_1EDA49E00;
    v61 = _s14DefaultArtworkCMa;
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.Lifecycle();
    v60 = &qword_1EDA497D0;
    v61 = type metadata accessor for NowPlayingViewModel.Lifecycle;
  }

  sub_1C5AC3CD8(v60, v61);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5958174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkCornerModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

unint64_t sub_1C595820C()
{
  result = qword_1EDA48DA0;
  if (!qword_1EDA48DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48DA0);
  }

  return result;
}

unint64_t sub_1C5958260()
{
  result = qword_1EC192C68;
  if (!qword_1EC192C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C70);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192C68);
  }

  return result;
}

uint64_t sub_1C5958318@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDA48DB0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ArtworkCornerStyle(0);
  v3 = __swift_project_value_buffer(v2, qword_1EDA48DB8);
  return sub_1C5945830(v3, a1, type metadata accessor for ArtworkCornerStyle);
}

uint64_t sub_1C5958398()
{
  v0 = type metadata accessor for ArtworkCornerStyle(0);
  __swift_allocate_value_buffer(v0, qword_1EDA48DB8);
  v1 = __swift_project_value_buffer(v0, qword_1EDA48DB8);
  *v1 = 0;
  v2 = *(v0 + 20);
  v3 = *MEMORY[0x1E697F480];
  v4 = sub_1C5BC9044();
  v5 = *(*(v4 - 8) + 104);

  return v5(&v1[v2], v3, v4);
}

uint64_t sub_1C5958444(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkCornerStyle(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1C5945830(a1, &v9 - v6, type metadata accessor for ArtworkCornerStyle);
  sub_1C5945830(v7, v5, type metadata accessor for ArtworkCornerStyle);
  sub_1C595820C();
  sub_1C5BC8F54();
  return sub_1C5945898(v7, type metadata accessor for ArtworkCornerStyle);
}

uint64_t sub_1C5958564()
{
  sub_1C5BCAF04();
}

uint64_t sub_1C59585F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5958648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC199E00);
  v3 = *(a1 + 24);
  v21 = *(a1 + 16);
  _s9VideoViewVMa();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  v4 = sub_1C5BC8AB4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v42 = sub_1C5946D98();
  v20[3] = MEMORY[0x1E697E858];
  v5 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C5BC8AB4();
  v6 = sub_1C5BC92D4();
  v39 = swift_getWitnessTable();
  v40 = sub_1C5946DEC();
  v37 = swift_getWitnessTable();
  v38 = sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
  v7 = swift_getWitnessTable();
  v30 = v4;
  v31 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v38;
  v33 = v7;
  v34 = swift_getWitnessTable();
  v20[0] = v6;
  v20[1] = swift_getWitnessTable();
  v20[2] = sub_1C5BC8BE4();
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - v13;
  v30 = sub_1C5BCA484();
  v31 = 0;
  v32 = 1;
  v25 = v21;
  v26 = v3;
  v27 = v23;
  sub_1C5BCAA54();
  v15 = sub_1C5946E40(&qword_1EDA46558, &unk_1EC199E00);
  sub_1C5BCA2C4();

  v16 = swift_getWitnessTable();
  v28 = v15;
  v29 = v16;
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v8, v17);
  v18 = *(v9 + 8);
  v18(v12, v8);
  sub_1C593EDC0(v14, v8, v17);
  return (v18)(v14, v8);
}

uint64_t sub_1C5958B78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C5958C08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192998);
  _s22MiniPlayerMetadataViewV5TitleVMa();
  swift_getWitnessTable();
  sub_1C59E7054();
  sub_1C5BCA724();
  _s22MiniPlayerMetadataViewV8SubtitleVMa();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929A0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929A8);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C59E70A8();
  swift_getWitnessTable();
  sub_1C5958FE8();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46050, &qword_1EC1929A0);
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46048, &qword_1EC1929A8);
  swift_getWitnessTable();
  sub_1C5939F34();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0);
  swift_getOpaqueTypeConformance2();
  sub_1C59591C0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
  swift_getOpaqueTypeConformance2();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5958FE8()
{
  result = qword_1EDA47CD8;
  if (!qword_1EDA47CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47CD8);
  }

  return result;
}

uint64_t sub_1C595903C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

unint64_t sub_1C59591C0()
{
  result = qword_1EDA45D30;
  if (!qword_1EDA45D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA45D30);
  }

  return result;
}

uint64_t static ViewProvider.with<A, B>(source:transform:)@<X0>(void (*a1)(void *)@<X1>, uint64_t a2@<X6>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v17 = a3;
  v6 = type metadata accessor for NowPlayingViewProviderProxy();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C59595D8();
  swift_unknownObjectRetain();
  sub_1C5959644(&v19, v18);
  v16(v18);
  v10 = type metadata accessor for NowPlayingViewProviderProxy();
  (*(*(v10 - 8) + 8))(v18, v10);
  v11 = *(v6 + 44);
  v12 = sub_1C5950C90();
  v18[0] = &type metadata for NowPlayingLookupID;
  v18[1] = a2;
  v18[2] = v12;
  v18[3] = a5;
  v13 = type metadata accessor for ViewProvider();
  (*(*(v13 - 8) + 16))(v17, &v9[v11], v13);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1C5959454()
{
  result = qword_1EDA46620;
  if (!qword_1EDA46620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198D30);
    sub_1C5924F54(&qword_1EDA46290, &qword_1EC198D28);
    sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46620);
  }

  return result;
}

uint64_t sub_1C5959538()
{
  sub_1C5950C90();
  result = type metadata accessor for ViewProvider();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C59595D8()
{
  result = qword_1EDA4BBF8[0];
  if (!qword_1EDA4BBF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4BBF8);
  }

  return result;
}

uint64_t sub_1C5959644@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  v4 = *(type metadata accessor for NowPlayingViewProviderProxy() + 44);
  sub_1C5950C90();
  v5 = type metadata accessor for ViewProvider();
  return (*(*(v5 - 8) + 32))(a2 + v4, a1, v5);
}

void sub_1C595973C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C595A0F8(319, &qword_1EDA45FE0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C593377C(319, &qword_1EDA46718, &qword_1EC198CB8);
      if (v2 <= 0x3F)
      {
        sub_1C593377C(319, &qword_1EDA467A8, &qword_1EC198CC0);
        if (v3 <= 0x3F)
        {
          sub_1C595A0F8(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C593377C(319, &qword_1EDA46728, &qword_1EC198CC8);
            if (v5 <= 0x3F)
            {
              sub_1C595A0F8(319, &qword_1EDA46AC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
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

uint64_t NowPlayingViewProviderProxy.register<A>(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a4;
  v41 = a1;
  v42 = a5;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  v44 = v38;
  v45 = v12;
  v46 = v14;
  v47 = v13;
  v15 = type metadata accessor for _ViewLookupNode();
  v40 = v15;
  v16 = sub_1C5950C90();
  v34 = v16;
  WitnessTable = swift_getWitnessTable();
  v44 = &type metadata for NowPlayingLookupID;
  v45 = v15;
  v46 = v16;
  v47 = WitnessTable;
  v17 = type metadata accessor for ViewProvider();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v35 = &v28 - v18;
  v19 = *a2;
  v30 = a2[1];
  v31 = v19;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = *(a3 + 44);
  (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v20 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v32 = *(a3 + 16);
  *(v22 + 2) = v32;
  *(v22 + 3) = v12;
  v24 = v37;
  v23 = v38;
  *(v22 + 4) = v38;
  *(v22 + 5) = v13;
  *(v22 + 6) = v24;
  (*(v8 + 32))(&v22[v20], v29, a3);
  *&v22[v21] = v41;
  v43[0] = v31;
  v43[1] = v30;

  v44 = &type metadata for NowPlayingLookupID;
  v45 = v12;
  v46 = v34;
  v47 = v13;
  v25 = type metadata accessor for ViewProvider();
  v26 = v35;
  sub_1C5959D1C(sub_1C595DE70, v22, v43, v25, v23, v24, v35);

  return sub_1C5959644(v26, v42);
}

uint64_t sub_1C5959BD0()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for NowPlayingViewProviderProxy() - 8);
  v3 = v0 + ((*(*v2 + 80) + 56) & ~*(*v2 + 80));
  swift_unknownObjectUnownedDestroy();
  v4 = v3 + v2[13];

  sub_1C5950C90();
  v5 = type metadata accessor for ViewProvider();
  (*(*(v1 - 8) + 8))(v4 + *(v5 + 52), v1);

  return swift_deallocObject();
}

uint64_t sub_1C5959D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v37 = a6;
  v40 = a1;
  v41 = a2;
  v43 = a7;
  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 40);
  v44 = v15;
  v45 = v10;
  v46 = v16;
  v47 = v14;
  v39 = type metadata accessor for _ViewLookupNode();
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = (v35 - v17);
  v18 = *(a4 + 16);
  sub_1C595A084(v18, v18);
  v19 = *(v18 - 8);
  swift_allocObject();
  sub_1C5BCB074();
  (*(v19 + 16))(v20, a3, v18);
  sub_1C5BCB144();
  v35[0] = sub_1C5BCB0A4();

  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v10;
  v22 = *(a4 + 32);
  v21[4] = a5;
  v21[5] = v22;
  v23 = v14;
  v21[6] = v14;
  v24 = v37;
  v25 = v40;
  v26 = v41;
  v21[7] = v37;
  v21[8] = v25;
  v21[9] = v26;
  v27 = v35[1] + *(a4 + 52);
  v28 = v38;
  (*(v11 + 16))(v38, v27, v10);

  v29 = v36;
  sub_1C595A148(sub_1C595DF34, v21, v28, 1, a5, v10, v24, v23, v36);
  v30 = v39;
  WitnessTable = swift_getWitnessTable();
  v32 = v43;
  *v43 = v35[0];
  v44 = v18;
  v45 = v30;
  v46 = v22;
  v47 = WitnessTable;
  v33 = type metadata accessor for ViewProvider();
  return (*(v42 + 32))(&v32[*(v33 + 52)], v29, v30);
}

uint64_t sub_1C595A04C()
{

  return swift_deallocObject();
}

uint64_t sub_1C595A084(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

void sub_1C595A0F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C595A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>)
{
  if (a4)
  {
    v17 = sub_1C595DE60;
  }

  else
  {
    v17 = sub_1C595E27C;
  }

  v18 = swift_allocObject();
  *(v18 + 2) = a5;
  *(v18 + 3) = a6;
  *(v18 + 4) = a7;
  *(v18 + 5) = a8;
  *(v18 + 6) = a1;
  *(v18 + 7) = a2;
  *a9 = v17;
  a9[1] = v18;
  v19 = type metadata accessor for _ViewLookupNode();
  return (*(*(a6 - 8) + 32))(a9 + *(v19 + 52), a3, a6);
}

uint64_t sub_1C595A254()
{

  return swift_deallocObject();
}

uint64_t sub_1C595A3B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1C595A40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0);
  v9 = *(a1 + 16);
  v58 = *(a1 + 24);
  v59 = v9;
  _s18ArtworkPlaceholderVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v10 = sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v60 = v10;
  v57 = v11;
  v61 = sub_1C5BC8BE4();
  v62 = v8;
  v12 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v63 = v12;
  v13 = sub_1C5BC8AB4();
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v53[-v14];
  v68 = v15;
  v16 = sub_1C5BC8AB4();
  v69 = *(v16 - 8);
  v70 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v65 = &v53[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v53[-v19];
  v20 = sub_1C5BC8F34();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v53[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for NowPlayingMiniPlayerSpecs();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = *v2;
  v54 = *(v2 + 8);
  v27 = v2[2];
  v28 = *(v2 + 24);
  if (v28 == 1)
  {
    v29 = v2[2];
  }

  else
  {
    sub_1C5950E48(v2[2], 0);
    sub_1C5BCB4E4();
    v30 = v26;
    v31 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v26 = v30;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v27, 0);
    (*(v21 + 8))(v23, v20);
    LOBYTE(v29) = v96;
  }

  if (v29 != 3 && v29)
  {
    if (qword_1EC1906C8 != -1)
    {
      swift_once();
    }

    v32 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      swift_once();
    }

    v32 = qword_1EDA5DAE8;
  }

  v33 = __swift_project_value_buffer(v24, v32);
  sub_1C5948550(v33, v26);
  v34 = sub_1C5BCA484();
  sub_1C5BCAA54();
  v35 = sub_1C5BC85D4();
  *&v96 = v34;
  *(&v96 + 1) = v101;
  LOBYTE(v97) = v102;
  *(&v97 + 1) = v103;
  LOBYTE(v98[0]) = v104;
  *(v98 + 8) = v105;
  MEMORY[0x1EEE9AC00](v35);
  v56 = v26;
  v36 = v58;
  *&v53[-48] = v59;
  *&v53[-40] = v36;
  *&v53[-32] = v55;
  v53[-24] = v54;
  *&v53[-16] = v27;
  v53[-8] = v28;
  sub_1C5BCAA54();
  v37 = sub_1C594C97C();
  sub_1C5BCA2C4();

  v84 = v92;
  v85 = v93;
  v86 = v94;
  v87 = v95;
  v80 = v88;
  v81 = v89;
  v82 = v90;
  v83 = v91;
  v38 = swift_getWitnessTable();
  v78 = v37;
  v79 = v38;
  v39 = v63;
  v40 = swift_getWitnessTable();
  v41 = v64;
  sub_1C595BB1C(0xD000000000000012, 0x80000001C5BF81B0);
  v98[2] = v84;
  v98[3] = v85;
  v98[4] = v86;
  v99 = v87;
  v96 = v80;
  v97 = v81;
  v98[0] = v82;
  v98[1] = v83;
  (*(*(v39 - 8) + 8))(&v96, v39);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  *&v88 = sub_1C5BCAE94();
  *(&v88 + 1) = v43;
  v44 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v76 = v40;
  v77 = v44;
  v45 = v68;
  v46 = swift_getWitnessTable();
  sub_1C594A23C();
  v47 = v65;
  sub_1C5BCA034();

  (*(v67 + 8))(v41, v45);
  sub_1C594A4A4(v56);
  v74 = v46;
  v75 = v44;
  v48 = v70;
  v49 = swift_getWitnessTable();
  v50 = v66;
  sub_1C593EDC0(v47, v48, v49);
  v51 = *(v69 + 8);
  v51(v47, v48);
  sub_1C593EDC0(v50, v48, v49);
  return (v51)(v50, v48);
}

uint64_t sub_1C595AD00()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C5BC7BB4();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1C595ADF4(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v59;
  }

  swift_getKeyPath();
  *&v59 = a1;
  sub_1C5937E88(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v9 = *(a1 + 17);

  if (v9)
  {
    v55 = 0uLL;
    *&v56 = 255;
    _s18ArtworkPlaceholderVMa();
    *(&v56 + 1) = 0;
    v57 = 0;
    v58 = 0;
    swift_getTupleTypeMetadata2();
    sub_1C5BCAB74();
    swift_getWitnessTable();
    sub_1C5941600(&v55, &v59);
    v10 = v59;
    v11 = v60;
    v12 = v61;
    v13 = v62;
  }

  else
  {
    v14 = sub_1C595B4FC(0);
    v16 = v15;
    LOBYTE(v59) = v14;
    *(&v59 + 1) = v15;
    v18 = v17 & 1;
    LOBYTE(v60) = v17 & 1;
    v19 = _s18ArtworkPlaceholderVMa();
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(&v59, v19, WitnessTable);
    sub_1C5942458(v16, v18);
    v21 = sub_1C595B4FC(1);
    v23 = v22;
    LOBYTE(v59) = v21;
    *(&v59 + 1) = v22;
    v25 = v24 & 1;
    LOBYTE(v60) = v24 & 1;
    sub_1C593EDC0(&v59, v19, WitnessTable);
    sub_1C5942458(v23, v25);
    v26 = v52;
    v27 = v53;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v28 = v49;
    v29 = v50;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v47[0] = &v44;
    v47[1] = &v41;
    sub_1C5950E48(v52, v53);
    sub_1C5950E48(v28, v29);
    v40[0] = v19;
    v40[1] = v19;
    v38 = WitnessTable;
    v39 = WitnessTable;
    sub_1C594226C(v47, 2uLL, v40);
    sub_1C5942458(v28, v29);
    sub_1C5942458(v26, v27);
    sub_1C5942458(v42, v43);
    sub_1C5942458(v45, v46);
    v30 = *(&v59 + 1);
    LOBYTE(v26) = v60;
    v31 = v61;
    LOBYTE(v28) = v62;
    v36[0] = v59;
    v36[1] = *(&v59 + 1);
    v36[2] = v60;
    v36[3] = BYTE8(v60);
    v36[4] = v61;
    v37 = v62;
    swift_getTupleTypeMetadata2();
    sub_1C5BCAB74();
    swift_getWitnessTable();
    sub_1C5941600(v36, &v55);
    sub_1C5942458(v30, v26);
    sub_1C5942458(v31, v28);
    v10 = v55;
    v11 = v56;
    v12 = v57;
    v13 = v58;
  }

  v34 = v10;
  v35 = v11;
  v59 = v10;
  v60 = v11;
  v61 = v12;
  v62 = v13;
  _s18ArtworkPlaceholderVMa();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v32 = sub_1C5BCB804();
  v54 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  sub_1C593EDC0(&v59, v32, v33);
  sub_1C595BAC4(v34, *(&v34 + 1), v35, *(&v35 + 1), v12, v13);
}

uint64_t NowPlayingViewProviderProxy.register<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15[0] = a3;
  v15[1] = a4;
  v16 = a1;
  v17 = a5;
  swift_getAssociatedTypeWitness();
  v6 = *(a2 + 24);
  swift_getAssociatedConformanceWitness();
  v7 = *(a2 + 32);
  v8 = type metadata accessor for _ViewLookupNode();
  v9 = sub_1C5950C90();
  v18 = &type metadata for NowPlayingLookupID;
  v19 = v8;
  v20 = v9;
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for ViewProvider();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (v15 - v11);
  swift_unknownObjectUnownedLoadStrong();
  v18 = &type metadata for NowPlayingLookupID;
  v19 = v6;
  v20 = v9;
  WitnessTable = v7;
  v13 = type metadata accessor for ViewProvider();
  sub_1C595B618(v16, v13, v12);
  return sub_1C5959644(v12, v17);
}

uint64_t sub_1C595B564()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _ViewLookupNode.OutputGroup();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  return swift_getWitnessTable();
}

uint64_t sub_1C595B618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a1;
  v48 = a3;
  v4 = *(a2 + 24);
  v35 = v4;
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v45 = *(v6 + 32);
  v49 = v7;
  v50 = v8;
  v9 = v7;
  v37 = v8;
  v51 = v45;
  v52 = v10;
  v39 = v10;
  v40 = type metadata accessor for ViewProvider();
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = v33 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(a2 + 40);
  v49 = AssociatedTypeWitness;
  v50 = v4;
  v51 = AssociatedConformanceWitness;
  v52 = v15;
  v16 = type metadata accessor for _ViewLookupNode();
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v36 = (v33 - v17);
  v18 = v44;
  v34 = v9;
  v38 = sub_1C5BCB0A4();
  v19 = v13;
  v20 = v40;
  (*(v11 + 16))(v13, v18, v40);
  v21 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 2) = v9;
  *(v22 + 3) = v23;
  v24 = v45;
  *(v22 + 4) = v37;
  *(v22 + 5) = v24;
  v25 = v39;
  *(v22 + 6) = v15;
  *(v22 + 7) = v25;
  (*(v11 + 32))(&v22[v21], v19, v20);
  v26 = *(a2 + 52);
  v27 = v46;
  (*(v47 + 16))(v46, v33[1] + v26, v23);
  v28 = v36;
  sub_1C595A148(sub_1C595E304, v22, v27, 0, v42, v23, AssociatedConformanceWitness, v15, v36);
  WitnessTable = swift_getWitnessTable();
  v30 = v48;
  *v48 = v38;
  v49 = v34;
  v50 = v16;
  v51 = v24;
  v52 = WitnessTable;
  v31 = type metadata accessor for ViewProvider();
  return (*(v43 + 32))(v30 + *(v31 + 52), v28, v16);
}

uint64_t sub_1C595B9C4()
{
  v4 = *(v0 + 32);
  v1 = (type metadata accessor for ViewProvider() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);

  (*(*(v4 - 8) + 8))(v0 + v2 + v1[15]);
  return swift_deallocObject();
}

void sub_1C595BAC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 != -1)
  {
    sub_1C5942458(a2, a3 & 1);

    sub_1C5942458(a5, a6 & 1);
  }
}

uint64_t sub_1C595BB1C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  sub_1C5949F2C();

  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](a1, a2);
  sub_1C5BCA164();
}

uint64_t sub_1C595BC00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingRouteObserver();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
}

uint64_t sub_1C595BC40(void *a1, void *a2)
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

uint64_t sub_1C595BC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a1;
  v28 = a3;
  v5 = *(a2 + 40);
  v25 = *(a2 + 24);
  v26 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - v11;
  v13 = sub_1C5BCB804();
  v27 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - v17;
  v24[0] = v3;
  v30 = *v3;
  sub_1C5BCB144();
  swift_getWitnessTable();
  sub_1C5BCB464();
  if (v32)
  {
    (*(v7 + 56))(v16, 1, 1, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  }

  else
  {
    (*(v26 + 48))(v31, v25, v26);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C593EDC0(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
    v20 = *(v7 + 8);
    v20(v10, AssociatedTypeWitness);
    sub_1C593EDC0(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
    v20(v12, AssociatedTypeWitness);
    (*(v7 + 32))(v16, v10, AssociatedTypeWitness);
    (*(v7 + 56))(v16, 0, 1, AssociatedTypeWitness);
  }

  sub_1C5941600(v16, v18);
  v21 = *(v27 + 8);
  v21(v16, v13);
  v29 = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v18, v13, WitnessTable);
  return (v21)(v18, v13);
}

uint64_t _ViewLookupNode.view(atIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v4 = *(a2 + 40);
  v24 = *(a2 + 16);
  v20 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v25 = v20;
  v26 = v4;
  type metadata accessor for _ViewLookupNode.OutputGroup();
  swift_getTupleTypeMetadata2();
  v5 = sub_1C5BCAB74();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = sub_1C5BCA944();
  *&v20 = v8;
  WitnessTable = swift_getWitnessTable();
  v24 = v5;
  *&v25 = v8;
  *(&v25 + 1) = WitnessTable;
  v26 = MEMORY[0x1E6981A58];
  sub_1C5BC93E4();
  v10 = sub_1C5BCA584();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  _ViewLookupNode.storage.getter(a2, v7);
  *(swift_allocObject() + 16) = v21;
  sub_1C5BCA564();
  v23 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  sub_1C593EDC0(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_1C593EDC0(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t _ViewLookupNode.storage.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = *(a1 + 40);
  v36 = *(a1 + 16);
  v32 = *(a1 + 24);
  v37 = v32;
  v38 = v3;
  v4 = type metadata accessor for _ViewLookupNode.OutputGroup();
  v30 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v24 - v7;
  v8 = v32;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v10 = v25;
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  *&v32 = &v24 - v14;
  (*(v3 + 40))(v8, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C593EDC0(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  v27 = *(v10 + 8);
  v15 = v27(v13, AssociatedTypeWitness);
  v16 = v28;
  (*v2)(v15);
  v17 = v4;
  WitnessTable = swift_getWitnessTable();
  v19 = v29;
  sub_1C593EDC0(v16, v17, WitnessTable);
  v20 = v30;
  v21 = *(v30 + 8);
  v21(v16, v17);
  (*(v25 + 16))(v13, v32, AssociatedTypeWitness);
  v36 = v13;
  (*(v20 + 16))(v16, v19, v17);
  *&v37 = v16;
  v35[0] = AssociatedTypeWitness;
  v35[1] = v17;
  v33 = AssociatedConformanceWitness;
  v34 = WitnessTable;
  sub_1C594226C(&v36, 2uLL, v35);
  v21(v19, v17);
  v22 = v27;
  v27(v32, AssociatedTypeWitness);
  v21(v16, v17);
  return v22(v13, AssociatedTypeWitness);
}

uint64_t sub_1C595C690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v113 - v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192998);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v156 = a1;
  v6 = _s22MiniPlayerMetadataViewV5TitleVMa();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1C59E7054();
  *&v164 = v6;
  *(&v164 + 1) = &type metadata for NowPlayingMiniPlayerPosition;
  *&v165 = WitnessTable;
  *(&v165 + 1) = v8;
  sub_1C5BCA724();
  v160 = v5;
  v161 = v4;
  _s22MiniPlayerMetadataViewV8SubtitleVMa();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata3();
  v9 = sub_1C5BCAB74();
  v133 = swift_getWitnessTable();
  v134 = v9;
  v10 = sub_1C5BCA7D4();
  v11 = sub_1C5BC8AB4();
  v12 = type metadata accessor for MCUINamespace();
  v137 = *(v12 - 8);
  v138 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v113 - v13;
  v14 = type metadata accessor for MCUINamespace();
  v131 = *(v14 - 8);
  v132 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v130 = &v113 - v16;
  v126 = *(v10 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v124 = &v113 - v18;
  v128 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v125 = &v113 - v19;
  v20 = sub_1C5BC8AB4();
  v142 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v140 = &v113 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929A0);
  v22 = sub_1C5BC8AB4();
  v141 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v113 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929A8);
  v24 = sub_1C5BC8AB4();
  v154 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v159 = &v113 - v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1C59E70A8();
  v122 = v26;
  v178 = v26;
  v179 = v27;
  v136 = v11;
  v28 = swift_getWitnessTable();
  v29 = sub_1C5958FE8();
  v123 = v28;
  v176 = v28;
  v177 = v29;
  v144 = v20;
  v30 = swift_getWitnessTable();
  v31 = sub_1C5924F54(&qword_1EDA46050, &qword_1EC1929A0);
  v127 = v30;
  v174 = v30;
  v175 = v31;
  v143 = v22;
  v32 = swift_getWitnessTable();
  v33 = sub_1C5924F54(&qword_1EDA46048, &qword_1EC1929A8);
  v129 = v32;
  v172 = v32;
  v173 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_1C5939F34();
  *&v164 = v24;
  *(&v164 + 1) = &type metadata for NowPlayingViewModel.PlayerStyle;
  *&v165 = v34;
  *(&v165 + 1) = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v151 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v150 = &v113 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B0);
  v155 = v24;
  *&v164 = v24;
  *(&v164 + 1) = &type metadata for NowPlayingViewModel.PlayerStyle;
  v145 = v35;
  v146 = v34;
  *&v165 = v34;
  *(&v165 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = sub_1C59591C0();
  *&v164 = OpaqueTypeMetadata2;
  *(&v164 + 1) = v38;
  *&v165 = OpaqueTypeConformance2;
  *(&v165 + 1) = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v119 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v152 = OpaqueTypeMetadata2;
  v153 = &v113 - v42;
  *&v164 = OpaqueTypeMetadata2;
  *(&v164 + 1) = v38;
  v148 = OpaqueTypeConformance2;
  v149 = v38;
  *&v165 = OpaqueTypeConformance2;
  *(&v165 + 1) = v40;
  v147 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  v120 = v41;
  *&v164 = v41;
  *(&v164 + 1) = v158;
  v115 = v44;
  v116 = v43;
  *&v165 = v43;
  *(&v165 + 1) = v44;
  v45 = swift_getOpaqueTypeMetadata2();
  v117 = *(v45 - 8);
  v118 = v45;
  v46 = MEMORY[0x1EEE9AC00](v45);
  v113 = &v113 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v114 = &v113 - v48;
  v49 = sub_1C5BC8F34();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v113 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v162 + 112);
  if (*(v162 + 120) == 1)
  {
    v54 = *(v162 + 112);
  }

  else
  {

    sub_1C5BCB4E4();
    v55 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v53, 0);
    (*(v50 + 8))(v52, v49);
    v54 = v164;
  }

  if (v54 == 3)
  {
    LOBYTE(v54) = 0;
  }

  LOBYTE(v164) = v54;
  sub_1C595D950(&v164, &type metadata for NowPlayingMetadataViewSpecs.MiniPlayer, &off_1F451C840);
  v56 = sub_1C5BC9144();
  MEMORY[0x1EEE9AC00](v56);
  v57 = v160;
  *(&v113 - 4) = v161;
  *(&v113 - 3) = v57;
  *(&v113 - 2) = v162;
  *(&v113 - 1) = v180;
  v58 = v124;
  sub_1C5BCA7C4();
  v59 = v130;
  v60 = v122;
  View.mcui.getter(v10, v130);
  (*(v126 + 8))(v58, v10);
  v61 = v125;
  v62 = v132;
  MCUINamespace<A>.coordinatedMarquees()(v132, v60);
  (*(v131 + 8))(v59, v62);
  v64 = v135;
  v63 = v136;
  v65 = v123;
  View.mcui.getter(v136, v135);
  (*(v128 + 8))(v61, v63);
  v66 = v140;
  v67 = v138;
  MCUINamespace<A>.marqueeFeathering(_:_:)(1, v180[7], 0, v138, v65);
  (*(v137 + 8))(v64, v67);
  swift_getKeyPath();
  if (_UISolariumEnabled())
  {
    goto LABEL_12;
  }

  v68 = *(v162 + 112);
  if (*(v162 + 120) == 1)
  {
    v69 = *(v162 + 112);
    if (v69 == 3)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v70 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v68, 0);
    (*(v50 + 8))(v52, v49);
    v69 = v164;
    if (v164 == 3)
    {
LABEL_12:
      v71 = v49;
      v72 = sub_1C595E4FC(&unk_1F45138A8);
      goto LABEL_13;
    }
  }

  if (v69)
  {
    goto LABEL_12;
  }

  v71 = v49;
  v72 = MEMORY[0x1E69E7CD0];
LABEL_13:
  *&v164 = v72;
  v73 = v139;
  v74 = v144;
  sub_1C5BC9DF4();

  (*(v142 + 8))(v66, v74);
  swift_getKeyPath();
  *&v164 = 1;
  v75 = v143;
  sub_1C5BC9DF4();

  (*(v141 + 8))(v73, v75);
  v76 = *(v162 + 48);
  v77 = *(v162 + 56);

  if ((v77 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v78 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v50 + 8))(v52, v71);
    v76 = v164;
  }

  swift_getKeyPath();
  *&v164 = v76;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa);
  sub_1C5BC7B74();

  v79 = *(v76 + 17);

  v163[0] = v79;
  v80 = v156;
  v81 = *(v156 - 8);
  v143 = *(v81 + 16);
  v144 = v81 + 16;
  v82 = v162;
  v143(&v164, v162, v156);
  v83 = swift_allocObject();
  v85 = v160;
  v84 = v161;
  *(v83 + 16) = v161;
  *(v83 + 24) = v85;
  v86 = v171[0];
  *(v83 + 128) = v170;
  *(v83 + 144) = v86;
  *(v83 + 153) = *(v171 + 9);
  v87 = v167;
  *(v83 + 64) = v166;
  *(v83 + 80) = v87;
  v88 = v169;
  *(v83 + 96) = v168;
  *(v83 + 112) = v88;
  v89 = v165;
  *(v83 + 32) = v164;
  *(v83 + 48) = v89;
  v90 = v150;
  v91 = v155;
  v92 = v159;
  sub_1C5BCA344();

  (*(v154 + 8))(v92, v91);
  sub_1C59458F8(v163);
  v143(&v164, v82, v80);
  v93 = swift_allocObject();
  *(v93 + 16) = v84;
  *(v93 + 24) = v85;
  v94 = v171[0];
  *(v93 + 128) = v170;
  *(v93 + 144) = v94;
  *(v93 + 153) = *(v171 + 9);
  v95 = v167;
  *(v93 + 64) = v166;
  *(v93 + 80) = v95;
  v96 = v169;
  *(v93 + 96) = v168;
  *(v93 + 112) = v96;
  v97 = v165;
  *(v93 + 32) = v164;
  *(v93 + 48) = v97;
  v98 = v152;
  v99 = v153;
  sub_1C5BCA334();

  sub_1C5924EF4(v163, &qword_1EC1929B0);
  (*(v151 + 8))(v90, v98);
  v100 = *MEMORY[0x1E697E6E8];
  v101 = sub_1C5BC89B4();
  v102 = v157;
  (*(*(v101 - 8) + 104))(v157, v100, v101);
  sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v104 = v113;
    v105 = v120;
    v106 = v158;
    v108 = v115;
    v107 = v116;
    sub_1C5BC9F54();
    sub_1C595E8B8(v180);
    sub_1C5924EF4(v102, &qword_1EC192838);
    (*(v119 + 8))(v99, v105);
    *&v164 = v105;
    *(&v164 + 1) = v106;
    *&v165 = v107;
    *(&v165 + 1) = v108;
    v109 = swift_getOpaqueTypeConformance2();
    v110 = v114;
    v111 = v118;
    sub_1C593EDC0(v104, v118, v109);
    v112 = *(v117 + 8);
    v112(v104, v111);
    sub_1C593EDC0(v110, v111, v109);
    return (v112)(v110, v111);
  }

  else
  {
    __break(1u);
  }

  return result;
}