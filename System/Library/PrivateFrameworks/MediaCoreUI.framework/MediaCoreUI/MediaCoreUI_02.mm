uint64_t sub_1C595D8AC@<X0>(void *a1@<X8>)
{
  sub_1C59E71A8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C595D950(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return (*(a3 + 16))(a2, a3);
  }

  else
  {
    return (*(a3 + 24))(a2, a3);
  }
}

uint64_t sub_1C595D9E4@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDA47A28 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDA5DAB8;
  v7[0] = xmmword_1EDA5DAA8;
  v7[1] = unk_1EDA5DAB8;
  v2 = xmmword_1EDA5DAC8;
  v3 = unk_1EDA5DAD8;
  v7[2] = xmmword_1EDA5DAC8;
  v7[3] = unk_1EDA5DAD8;
  *a1 = xmmword_1EDA5DAA8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1C595DE28(v7, &v6);
}

uint64_t sub_1C595DA6C()
{
  v0 = sub_1C5BC99F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    sub_1C5BC9A14();
    v4 = *MEMORY[0x1E6980EA8];
    v5 = *(v1 + 104);
    v5(v3, v4, v0);
    v18 = sub_1C5BC9A24();

    v6 = *(v1 + 8);
    v6(v3, v0);
    *&v20[0] = sub_1C5BCA4C4();
    v17 = sub_1C5BC85E4();
    sub_1C5BC9A44();
    sub_1C5BC9994();
    sub_1C5BC99E4();

    v5(v3, v4, v0);
    v7 = sub_1C5BC9A24();

    v6(v3, v0);
    *&v20[0] = sub_1C5BCA4C4();
    v8 = sub_1C5BC85E4();
    sub_1C5BC9A14();
    v5(v3, v4, v0);
    v9 = v18;
    v10 = sub_1C5BC9A24();

    v11 = v3;
    v12 = v17;
    v6(v11, v0);
    *&v20[0] = sub_1C5BCA4C4();
    result = sub_1C5BC85E4();
    v14 = result;
    v15 = 20.0;
    v16 = 1.0;
  }

  else
  {
    if (qword_1EC190568 != -1)
    {
      swift_once();
    }

    v20[2] = xmmword_1EC192730;
    v20[3] = *&qword_1EC192740;
    v20[0] = xmmword_1EC192710;
    v20[1] = *&qword_1EC192720;
    v15 = unk_1EC192748;
    v10 = *(&xmmword_1EC192730 + 1);
    v14 = qword_1EC192740;
    v7 = unk_1EC192728;
    v8 = xmmword_1EC192730;
    v9 = *(&xmmword_1EC192710 + 1);
    v12 = qword_1EC192720;
    v16 = *&xmmword_1EC192710;
    result = sub_1C595DE28(v20, v19);
  }

  *&xmmword_1EDA5DAA8 = v16;
  *(&xmmword_1EDA5DAA8 + 1) = v9;
  unk_1EDA5DAB8 = v12;
  qword_1EDA5DAC0 = v7;
  *&xmmword_1EDA5DAC8 = v8;
  *(&xmmword_1EDA5DAC8 + 1) = v10;
  unk_1EDA5DAD8 = v14;
  qword_1EDA5DAE0 = *&v15;
  return result;
}

uint64_t sub_1C595DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v10();
  sub_1C5BC8FE4();
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  type metadata accessor for _ViewLookupNode.OutputGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C595DE70()
{
  type metadata accessor for NowPlayingViewProviderProxy();
  swift_unknownObjectUnownedLoadStrong();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C595DF5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C595DFC4()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1C595E004(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_1C595E060(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C595E0EC()
{
  result = qword_1EDA464A0;
  if (!qword_1EDA464A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929B8);
    sub_1C595E1AC();
    sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464A0);
  }

  return result;
}

unint64_t sub_1C595E1AC()
{
  result = qword_1EDA465A0;
  if (!qword_1EDA465A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1964C0);
    sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465A0);
  }

  return result;
}

uint64_t NowPlayingButtonID.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1C595E27C()
{
  (*(v0 + 48))();
  type metadata accessor for _ViewLookupNode.OutputGroup();
  return swift_storeEnumTagMultiPayload();
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C595E304()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  type metadata accessor for ViewProvider();
  type metadata accessor for ViewProvider();
  return (*(v2 + 40))(v1, v2);
}

double static NowPlayingButtonID.queue.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6575657571;
  *a1 = xmmword_1C5BE0B80;
  *(a1 + 16) = 0;
  return result;
}

uint64_t MCUINamespace<A>.marqueeFeathering(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v12 = 0;
  v13 = a1 & 1;
  v14 = a2;
  v15 = a3 & 1;
  MEMORY[0x1C694E550](&KeyPath, *(a4 + 16), &type metadata for MarqueeFeatheringModifier, a5);
}

uint64_t sub_1C595E4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC194E80);
    v3 = sub_1C5BCBA64();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      sub_1C5BCBF54();
      sub_1C5BC8884();
      sub_1C5BCBF74();
      result = sub_1C5BCBF94();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = sub_1C5BC8884();
        result = sub_1C5BC8884();
        if (v15 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t NowPlayingHostedContentToggleButton.init(_:presenting:label:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v20[1] = a4;
  v7 = *(*v4 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v20 - v9;
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v17 = *v15;
  v16 = v15[1];
  *(v5 + 56) = 1;
  v18 = sub_1C5BC7BA4();
  *(v5 + 16) = v12;
  *(v5 + 24) = v13;
  *(v5 + 32) = v14;
  *(v5 + 40) = v17;
  *(v5 + 48) = v16;
  a3(v18);
  (*(v8 + 32))(v5 + *(*v5 + 120), v10, v7);
  return v5;
}

uint64_t sub_1C595E78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - v7;
  v9 = *(v2 + 6);
  v13[0] = *(v2 + 5);
  v13[1] = v9;
  (*(v10 + 16))(v13 - v7, &v2[*(v4 + 120)], v5, v6);

  v11 = sub_1C595E9AC();
  return sub_1C595EB68(v13, v8, v11 & 1, v5, a2);
}

void sub_1C595E90C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EDA467A8, &qword_1EC198CC0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C595E9AC()
{
  swift_getKeyPath();
  sub_1C595EABC();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_1C595EA34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C595E9AC();
  *a1 = result & 1;
  return result;
}

__n128 sub_1C595EA98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C595EB68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  *a5 = swift_getKeyPath();
  _s13HostedContentCMa();
  sub_1C595EDD0(&qword_1EDA4AE80, _s13HostedContentCMa);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 8) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = sub_1C5BC8324();
  *(a5 + 48) = v11 & 1;
  *(a5 + 56) = v9;
  *(a5 + 64) = v10;
  v12 = type metadata accessor for ToggleButton();
  result = (*(*(a4 - 8) + 32))(a5 + *(v12 + 44), a2, a4);
  *(a5 + *(v12 + 48)) = a3;
  return result;
}

void sub_1C595EC8C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C595A0F8(319, &qword_1EDA45FA0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1C593377C(319, &qword_1EDA467A8, &qword_1EC198CC0);
      if (v2 <= 0x3F)
      {
        sub_1C593377C(319, &qword_1EDA46718, &qword_1EC198CB8);
        if (v3 <= 0x3F)
        {
          sub_1C593377C(319, &qword_1EDA46728, &qword_1EC198CC8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C595EDD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C595EE20(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v23 = 0;
  v5 = swift_getKeyPath();
  v24 = 0;
  _s12PresentationCMa();
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa);
  v6 = sub_1C5BC8324();
  v22 = v7 & 1;
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa);
  v8 = sub_1C5BC8324();
  v21 = v9 & 1;
  _s14DefaultArtworkCMa();
  sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa);
  *&v12 = KeyPath;
  BYTE8(v12) = 0;
  *&v13 = v5;
  BYTE9(v17) = 0;
  *&v18 = v6;
  BYTE8(v18) = v22;
  *&v19 = v8;
  BYTE8(v19) = v21;
  *&v20 = sub_1C5BC8C84();
  *(&v20 + 1) = v10;
  MEMORY[0x1C694E550](&v12, a1, &type metadata for ArtworkStyleModifier, a2);
  v25[6] = v18;
  v25[7] = v19;
  v25[8] = v20;
  v25[2] = v14;
  v25[3] = v15;
  v25[4] = v16;
  v25[5] = v17;
  v25[0] = v12;
  v25[1] = v13;
  return sub_1C595F124(v25);
}

void sub_1C595F030()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C595A0F8(319, &qword_1EDA4E188, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1C595F198(float64x2_t *a1)
{
  v8.val[0] = *a1;
  v8.val[1] = *a1;
  v1 = v7;
  vst2q_f64(v1, v8);
  type metadata accessor for Marquee.ContentWithBadge();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  type metadata accessor for Marquee.MarqueeingContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CB0);
  sub_1C5BC8AB4();
  v2 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0);
  sub_1C5BC8AB4();
  v3 = sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0);
  swift_getWitnessTable();
  sub_1C5953670();
  v5 = swift_getWitnessTable();
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = WitnessTable;
  v7[3] = v5;
  type metadata accessor for ShownWhenAppeared();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BC85B4();
  return swift_getWitnessTable();
}

uint64_t sub_1C595F46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BCAA54();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199930) + 36);
  sub_1C595F54C(v7);
  v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199938) + 36));
  *v8 = v4;
  v8[1] = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199940);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_1C595F54C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199948);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C5BD4D40;
  *(v6 + 32) = sub_1C5BCA484();
  sub_1C5BCA474();
  v7 = sub_1C5BCA4B4();

  *(v6 + 40) = v7;
  MEMORY[0x1C694EBE0](v6);
  sub_1C5BC88B4();
  v8 = *(v3 + 44);
  v9 = *MEMORY[0x1E6981DC0];
  v10 = sub_1C5BCAB54();
  (*(*(v10 - 8) + 104))(&v5[v8], v9, v10);
  v11 = v14;
  *v5 = *&v13[8];
  *(v5 + 1) = v11;
  *(v5 + 4) = v15;
  sub_1C595F8FC(v5, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199950);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C595F728()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CF8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();

  return swift_getWitnessTable();
}

uint64_t sub_1C595F7F0()
{
  sub_1C5BC92D4();
  swift_getWitnessTable();
  sub_1C5BCA7F4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C595F8FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199948);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C595F9B8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C595FA40@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

unint64_t sub_1C595FABC()
{
  result = qword_1EDA46638;
  if (!qword_1EDA46638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D58);
    sub_1C5924F54(&qword_1EDA462A8, &qword_1EC196D60);
    sub_1C5924F54(qword_1EDA49248, &qword_1EC196D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46638);
  }

  return result;
}

uint64_t sub_1C595FBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5();

  return sub_1C5BC8F54();
}

void sub_1C595FC5C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C594284C(319, &qword_1EDA467B0, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t keypath_getTm@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

uint64_t keypath_getTm_0@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

uint64_t keypath_getTm_1@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

uint64_t keypath_getTm_2@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

uint64_t keypath_getTm_3@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

uint64_t keypath_getTm_4@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1C5BC8F44();
  *a2 = v4;
  return result;
}

void sub_1C595FF50()
{
  sub_1C594284C(319, &qword_1EDA467B0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1C596002C()
{
  type metadata accessor for ArtworkStyleModifier.AppliedArtworkStyle();
  swift_getWitnessTable();
  sub_1C5BC9394();
  sub_1C5BC8AB4();
  type metadata accessor for ArtworkClipShape(255);
  sub_1C5BC8AB4();
  type metadata accessor for ArtworkInnerStrokeModifier();
  sub_1C5BC8AB4();
  type metadata accessor for ArtworkShadowModifier(255);
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  sub_1C5960238();
  swift_getWitnessTable();
  sub_1C5AC3CD8(&qword_1EDA4BBF0, type metadata accessor for ArtworkClipShape);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5AC3CD8(&qword_1EDA48D90, type metadata accessor for ArtworkShadowModifier);
  return swift_getWitnessTable();
}

unint64_t sub_1C5960238()
{
  result = qword_1EDA48D98;
  if (!qword_1EDA48D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA48D98);
  }

  return result;
}

uint64_t sub_1C596028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1C59602E0(a1, *v2, v3 | *(v2 + 8), *(v2 + 16), *(v2 + 24), a2);
}

uint64_t sub_1C59602E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a3;
  LOWORD(v12) = a3 & 0x100;
  v13 = sub_1C5BC8F34();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (v8)
    {

      v17 = a2;
    }

    else
    {

      sub_1C5BCB4E4();
      v18 = sub_1C5BC9844();
      v32 = a6;
      v19 = v12;
      v12 = a4;
      v20 = a1;
      v21 = v18;
      sub_1C5BC7C54();

      a1 = v20;
      a4 = v12;
      LOBYTE(v12) = v19;
      a6 = v32;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5B5E4E8(a2, 0);
      (*(v14 + 8))(v16, v13);
      v17 = v34;
    }

    v22 = v8 & 1;
    sub_1C5B5F07C(a2, v22);
    LOBYTE(v34) = v22;
    v33 = 1;
    v23 = sub_1C5B5EE3C(v17, a2, v12 | v22, a4, 1);
    sub_1C5B5E4E8(a2, v22);
  }

  else
  {
    if (v8)
    {
    }

    else
    {

      sub_1C5BCB4E4();
      v24 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5B5E4E8(a2, 0);
      (*(v14 + 8))(v16, v13);
      a2 = v34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198CA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C5BCFF00;
    *(inited + 32) = BYTE1(v12);
    *(inited + 40) = a4;
    v26 = sub_1C5960930(inited);
    swift_setDeallocating();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = a2;
    sub_1C5960DD4(v26, sub_1C5960FFC, 0, isUniquelyReferenced_nonNull_native, &v34);
    v23 = v34;
  }

  KeyPath = swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D28);
  (*(*(v29 - 8) + 16))(a6, a1, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198D30);
  v31 = (a6 + *(result + 36));
  *v31 = KeyPath;
  v31[1] = v23;
  return result;
}

unint64_t sub_1C5960664()
{
  result = qword_1EDA46628;
  if (!qword_1EDA46628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196DA8);
    sub_1C5924F54(&qword_1EDA46298, &qword_1EC196DB8);
    sub_1C5924F54(&qword_1EDA46318, &qword_1EC196DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46628);
  }

  return result;
}

uint64_t sub_1C596078C()
{
  type metadata accessor for ArtworkInnerStrokeModifier();
  swift_getWitnessTable();
  sub_1C5BC9394();
  sub_1C5BC8B84();
  sub_1C5AC3CD8(&qword_1EDA4E6A8, MEMORY[0x1E697EAF0]);
  sub_1C5BC8B04();
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1C5960930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191868);
    v3 = sub_1C5BCBC74();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1C5960A1C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1C5960A1C(char a1)
{
  sub_1C5BCBF54();
  sub_1C5BC8884();
  sub_1C5BCBF74();
  v2 = sub_1C5BCBF94();

  return sub_1C5960B70(a1 & 1, v2);
}

unint64_t sub_1C5960A8C()
{
  result = qword_1EDA465F0;
  if (!qword_1EDA465F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D98);
    sub_1C5924F54(&qword_1EDA46260, &qword_1EC196DA0);
    sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465F0);
  }

  return result;
}

unint64_t sub_1C5960B70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = sub_1C5BC8884();
      if (v6 == sub_1C5BC8884())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C5960C34()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D80);
  sub_1C5924F54(&qword_1EDA46250, &qword_1EC196D78);
  sub_1C5960CF0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C5960CF0()
{
  result = qword_1EDA46650;
  if (!qword_1EDA46650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC196D80);
    sub_1C5924F54(&qword_1EDA46228, &qword_1EC196D88);
    sub_1C5924F54(&qword_1EDA46408, &qword_1EC196D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46650);
  }

  return result;
}

uint64_t sub_1C5960DD4(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3, char a4, void *a5)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v15 = *(*(a1 + 56) + 8 * v14);
    v35[0] = *(*(a1 + 48) + v14);
    v36 = v15;
    a2(v34, v35);
    v16 = v34[0];
    v17 = v34[1];
    v18 = *a5;
    v19 = sub_1C5960A1C(v34[0]);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v18[3] >= v24)
    {
      if ((a4 & 1) == 0)
      {
        v31 = v19;
        sub_1C5AF62DC();
        v19 = v31;
      }
    }

    else
    {
      sub_1C59615B8(v24, a4 & 1);
      v19 = sub_1C5960A1C(v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }
    }

    v10 &= v10 - 1;
    v27 = *a5;
    if (v25)
    {
      *(v27[7] + 8 * v19) = v17;
    }

    else
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      *(v27[6] + v19) = v16;
      *(v27[7] + 8 * v19) = v17;
      v28 = v27[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v27[2] = v29;
    }

    a4 = 1;
    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

double sub_1C5960FFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1C5961028()
{
  sub_1C5BC8FD4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59610C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = *(a1 + 16);
  v43 = *(v4 - 8);
  v44 = v2;
  v5 = MEMORY[0x1EEE9AC00](a1);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v40 = &v39 - v10;
  v47 = *(v9 + 32);
  v11 = sub_1C5BC8FD4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v39 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v39 - v20;
  v22 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C5BC92D4();
  v45 = *(v25 - 8);
  v46 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  (*(v22 + 16))(v24, v44, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v43;
    v29 = v40;
    (*(v43 + 32))(v40, v24, v4);
    v30 = v41;
    v31 = v47;
    sub_1C593EDC0(v29, v4, v47);
    v32 = v42;
    sub_1C593EDC0(v30, v4, v31);
    swift_getWitnessTable();
    sub_1C5941738(v32, v11, v4);
    v33 = *(v28 + 8);
    v33(v32, v4);
    v33(v30, v4);
    v33(v29, v4);
  }

  else
  {
    (*(v12 + 32))(v21, v24, v11);
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(v21, v11, WitnessTable);
    sub_1C593EDC0(v18, v11, WitnessTable);
    v31 = v47;
    sub_1C5950E54(v15, v11);
    v35 = *(v12 + 8);
    v35(v15, v11);
    v35(v18, v11);
    v35(v21, v11);
  }

  v49 = swift_getWitnessTable();
  v50 = v31;
  v36 = v46;
  v37 = swift_getWitnessTable();
  sub_1C593EDC0(v27, v36, v37);
  return (*(v45 + 8))(v27, v36);
}

uint64_t sub_1C59615B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191868);
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1C5BCBF54();
      sub_1C5BC8884();
      sub_1C5BCBF74();
      result = sub_1C5BCBF94();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5961840@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v52 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929D0);
  MEMORY[0x1EEE9AC00](v56);
  v5 = &v52 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929D8);
  v6 = MEMORY[0x1EEE9AC00](v55);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - v9;
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[1];
  v75 = *v1;
  v76 = v14;
  v77 = v1[2];
  v78 = *(v1 + 48);
  v84 = *(v1 + 48);
  v15 = *(v1 + 5);
  v83 = v15;
  if (v84 == 1)
  {
    v16 = v15;
    v70 = v15;
  }

  else
  {
    sub_1C59400B0(&v83, &v79, &qword_1EC1929E0);
    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v83, &qword_1EC1929E0);
    (*(v11 + 8))(v13, v10);
    v16 = v70;
  }

  if (v16 == 3)
  {
    LOBYTE(v16) = 0;
  }

  LOBYTE(v79) = v16;
  sub_1C595D950(&v79, &type metadata for NowPlayingMetadataViewSpecs.MiniPlayer, &off_1F451C840);
  v79 = v71;
  v80 = v72;
  v81 = v73;
  v82 = v74;
  v18 = v76;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929E8);
  v20 = &v5[v19[10]];
  *&v58 = 0;
  sub_1C5BCA684();
  v21 = *(&v61 + 1);
  *v20 = v61;
  *(v20 + 1) = v21;
  v22 = &v5[v19[11]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v5[v19[12]];
  *v23 = swift_getKeyPath();
  *(v23 + 1) = 0;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v23[32] = 0;
  v24 = &v5[v19[13]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &v5[v19[14]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v65 = 1;
  v26 = &v5[v19[9]];
  *v26 = xmmword_1C5BD5090;
  *(v26 + 2) = 0x4008000000000000;
  v26[24] = v18;
  *(v26 + 28) = 0;
  *(v26 + 9) = 0;
  v26[40] = 1;
  *(v26 + 6) = 0xD000000000000010;
  *(v26 + 7) = 0x80000001C5BF69A0;
  sub_1C59E22A8(&v75, &v79, v5);
  v27 = &v5[v19[15]];
  *v27 = 0;
  v27[8] = 1;
  v28 = *(&v80 + 1);
  KeyPath = swift_getKeyPath();
  v30 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929F0) + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v31 = swift_getKeyPath();
  v32 = BYTE1(v76);
  type metadata accessor for TapExcludedGeometries();
  sub_1C59576B4(qword_1EDA488D8, 255, type metadata accessor for TapExcludedGeometries);

  v33 = sub_1C5BC8324();
  v35 = v34;
  v58 = 0u;
  v59 = 0u;
  v60 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929F8);
  sub_1C5BCA684();
  v36 = v63;
  v37 = v64;
  v38 = v61;
  v39 = v62;
  v69 = v35 & 1;
  v67 = v63;
  v40 = &v5[*(v56 + 36)];
  *v40 = v31;
  v40[8] = v32;
  *(v40 + 9) = v58;
  *(v40 + 3) = *(&v58 + 3);
  *(v40 + 2) = v33;
  v40[24] = v35 & 1;
  *(v40 + 25) = *v68;
  *(v40 + 7) = *&v68[3];
  *(v40 + 2) = v38;
  *(v40 + 3) = v39;
  v40[64] = v36;
  v41 = *v66;
  *(v40 + 17) = *&v66[3];
  *(v40 + 65) = v41;
  *(v40 + 9) = v37;
  v61 = v75;
  sub_1C59E745C();
  sub_1C594A23C();
  sub_1C5BCA034();
  sub_1C5924EF4(v5, &qword_1EC1929D0);
  v42 = v54;
  sub_1C5BC8AA4();
  sub_1C5924EF4(v8, &qword_1EC1929D8);
  v43 = v42;
  v44 = v57;
  sub_1C59E7D34(v43, v57, &qword_1EC1929D8);
  v45 = sub_1C5BCAE44();
  v46 = [v45 _isNaturallyRTL];
  sub_1C595E8B8(&v79);

  v47 = swift_getKeyPath();
  v48 = v44;
  v49 = v53;
  sub_1C59E7D34(v48, v53, &qword_1EC1929D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A00);
  v51 = v49 + *(result + 36);
  *v51 = v47;
  *(v51 + 8) = v46;
  return result;
}

uint64_t sub_1C5961FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkCornerStyle(0);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v19 - v9);
  sub_1C59621C8(&v19 - v9);
  v11 = *v10;
  sub_1C5945898(v10, type metadata accessor for ArtworkCornerStyle);
  sub_1C59621C8(v8);
  v12 = *(v5 + 28);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D98) + 36));
  v14 = *(sub_1C5BC8B84() + 20);
  v15 = sub_1C5BC9044();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], &v8[v12], v15);
  *v13 = v11;
  *(v13 + 1) = v11;
  (*(v16 + 8))(&v8[v12], v15);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190FC8) + 36)] = 256;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DA0);
  return (*(*(v17 - 8) + 16))(a2, a1, v17);
}

uint64_t sub_1C59621F0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C59622E4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C59622E4(char *result, int64_t a2, char a3, char *a4)
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

uint64_t sub_1C59623F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_1C5BC8F34();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D58);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v34 - v6;
  v8 = *v2;
  v65 = *(v2 + 8);
  v9 = *(v2 + 57);
  v62 = *(v2 + 41);
  v63 = v9;
  *v64 = *(v2 + 73);
  *&v64[15] = *(v2 + 88);
  v10 = *(v2 + 25);
  v60 = *(v2 + 9);
  v61 = v10;
  v11 = *(v2 + 104);
  v12 = *(v2 + 105);
  v13 = *(v2 + 121);
  *(v59 + 15) = *(v2 + 136);
  v58 = v12;
  v59[0] = v13;
  v45 = v8;
  v46 = v65;
  v49 = *(v2 + 41);
  v50 = *(v2 + 57);
  *v51 = *(v2 + 73);
  v14 = *(v2 + 88);
  v15 = *(v2 + 96);
  v47 = *(v2 + 9);
  v48 = *(v2 + 25);
  *&v51[15] = v14;
  v52 = v15;
  v53 = v11;
  v16 = *(v2 + 105);
  v17 = *(v2 + 121);
  *&v55[15] = *(v2 + 136);
  *v55 = v17;
  v54 = v16;
  v37 = sub_1C5AC33F8();

  v18 = v15;
  v36 = v11;
  if ((v11 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v35 + 8))(v5, v3);
    v18 = *&v56[0];
  }

  v20 = v3;
  swift_getKeyPath();
  *&v56[0] = v18;
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v21 = *(v18 + 17);

  if (v65 == 1)
  {
    v44 = v8;
    v22 = v8;
  }

  else
  {
    sub_1C5950E48(v8, 0);
    sub_1C5BCB4E4();
    v23 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v8, 0);
    (*(v35 + 8))(v5, v20);
    v22 = v44;
  }

  v24 = 0.0;
  if (v22 <= 1u)
  {
    if (!v22)
    {
      v25 = [objc_opt_self() currentTraitCollection];
      [v25 displayScale];
      v27 = v26;

      v28 = 1.0;
      if (v27 >= 1.0)
      {
        v28 = v27;
        if ((~*&v27 & 0x7FF0000000000000) == 0)
        {
          v28 = 1.0;
          if ((*&v27 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v28 = v27;
          }
        }
      }

      v24 = 1.0 / v28;
    }
  }

  else if (v22 != 3)
  {
    v24 = 0.5;
  }

  v49 = v62;
  v50 = v63;
  *v51 = *v64;
  v47 = v60;
  v48 = v61;
  v54 = v58;
  v29 = v37 & 1;
  v45 = v8;
  v46 = v65;
  *&v51[15] = *&v64[15];
  v52 = v15;
  v53 = v36;
  *v55 = v59[0];
  *&v55[15] = *(v59 + 15);
  sub_1C5962928(v56);
  v41 = v56[0];
  v42 = v56[1];
  v43 = v57;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D60);
  (*(*(v30 - 8) + 16))(v7, v39, v30);
  v31 = &v7[*(v38 + 36)];
  *v31 = v29;
  v31[1] = v21;
  *(v31 + 1) = v24;
  v32 = v42;
  *(v31 + 1) = v41;
  *(v31 + 2) = v32;
  *(v31 + 6) = v43;
  sub_1C59E7D34(v7, v40, &qword_1EC196D58);
  return sub_1C5962ED4(v56, &v45);
}

uint64_t sub_1C5962928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[7];
  v32 = v1[6];
  v33 = v8;
  v34 = v1[8];
  v9 = v1[3];
  v29 = v1[2];
  v30 = v9;
  v10 = v1[5];
  v31[0] = v1[4];
  v31[1] = v10;
  v11 = v1[1];
  v27 = *v1;
  v28 = v11;
  v12 = v27;
  if (BYTE8(v27) == 1)
  {
    v26 = v27;
    v13 = v27;
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1C5950E48(v27, 0);
    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v12, 0);
    result = (*(v4 + 8))(v7, v3);
    v13 = v26;
    if (v26)
    {
LABEL_3:
      if (v13 == 4)
      {
        v22[6] = v32;
        v22[7] = v33;
        v22[8] = v34;
        v22[2] = v29;
        v22[3] = v30;
        v22[4] = v31[0];
        v22[5] = v31[1];
        v22[0] = v27;
        v22[1] = v28;
        result = sub_1C5AC33F8();
        if (result)
        {
          if (qword_1EC190808 != -1)
          {
            result = swift_once();
          }

          v14 = &qword_1EC1A6CA8;
          goto LABEL_28;
        }
      }

      else if (v13 == 2)
      {
        if (qword_1EC1907D8 != -1)
        {
          result = swift_once();
        }

        v14 = &qword_1EC1A6BE0;
LABEL_28:
        v19 = v14[3];
        v18 = v14[4];
        v20 = *(v14 + 1);
        *a1 = *v14;
        *(a1 + 8) = v20;
        *(a1 + 24) = v19;
        *(a1 + 32) = v18;
        return result;
      }

      if (qword_1EDA4DAD0 != -1)
      {
        result = swift_once();
      }

      v14 = &xmmword_1EDA5DB28;
      goto LABEL_28;
    }
  }

  if (BYTE9(v31[1]))
  {
    v24 = v30;
    *v25 = v31[0];
    *&v25[9] = *(v31 + 9);
    v22[9] = v28;
    v23 = v29;
  }

  else
  {
    sub_1C59400B0(&v28, v22, &qword_1EC191B58);
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v28, &qword_1EC191B58);
    (*(v4 + 8))(v7, v3);
  }

  if (BYTE1(v23))
  {
    v17 = v34;
    if (v34)
    {
      result = swift_beginAccess();
      if (*(v17 + 16))
      {
        if (qword_1EC1907E0 != -1)
        {
          result = swift_once();
        }

        v14 = &qword_1EC1A6C08;
      }

      else
      {
        if (qword_1EC1907E8 != -1)
        {
          result = swift_once();
        }

        v14 = &qword_1EC1A6C30;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v21 = v34;
    if (v34)
    {
      result = swift_beginAccess();
      if (*(v21 + 16))
      {
        if (qword_1EC1907F0 != -1)
        {
          result = swift_once();
        }

        v14 = &qword_1EC1A6C58;
      }

      else
      {
        if (qword_1EC1907F8 != -1)
        {
          result = swift_once();
        }

        v14 = &qword_1EC1A6C80;
      }

      goto LABEL_28;
    }
  }

  _s14DefaultArtworkCMa();
  sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5962E48@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5B5F0B8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

double sub_1C5962E98()
{
  *&xmmword_1EDA5DB28 = sub_1C5BCA484();
  result = 0.0;
  *(&xmmword_1EDA5DB28 + 8) = 0u;
  *&qword_1EDA5DB40 = 0u;
  return result;
}

uint64_t sub_1C5962F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a1;
  v77 = a3;
  v59 = type metadata accessor for ArtworkShadowModifier(0);
  v4 = MEMORY[0x1EEE9AC00](v59);
  v65 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = *(a2 + 16);
  v73 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a2 + 24);
  v60 = a2;
  v58 = type metadata accessor for ArtworkInnerStrokeModifier();
  v75 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v66 = &v55 - v7;
  v8 = type metadata accessor for ArtworkClipShape(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getWitnessTable();
  v11 = sub_1C5BC9394();
  v12 = sub_1C5BC8AB4();
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = sub_1C5BC8AB4();
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v55 - v16;
  v64 = sub_1C5BC8AB4();
  v70 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v56 = &v55 - v17;
  v72 = sub_1C5BC8AB4();
  v74 = *(v72 - 8);
  v18 = MEMORY[0x1EEE9AC00](v72);
  v62 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v55 - v20;
  _s7ArtworkC20MiniPlayerAppearanceCMa(0);
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa);
  v21 = sub_1C5BC8324();
  v23 = v22;
  _s12PresentationCMa();
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa);
  v24 = sub_1C5BC8324();
  v86 = v21;
  v87 = v23 & 1;
  v88 = v24;
  v89 = v25 & 1;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C694E550](&v86, v11, &type metadata for ArtworkMacHoverEffect, WitnessTable);

  *v10 = swift_getKeyPath();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E10);
  swift_storeEnumTagMultiPayload();
  v27 = sub_1C5960238();
  v84 = WitnessTable;
  v85 = v27;
  v28 = swift_getWitnessTable();
  v29 = v55;
  MEMORY[0x1C694E550](v10, v12, v8, v28);
  sub_1C5945898(v10, type metadata accessor for ArtworkClipShape);
  (*(v57 + 8))(v14, v12);
  v30 = v69;
  v31 = v76;
  v32 = v68;
  (*(v73 + 16))(v69, v76, v68);
  v33 = v60;
  v34 = *(v31 + *(v60 + 36));
  v35 = v31;
  v36 = v66;
  sub_1C596388C(v30, v32, v66, v34);
  v37 = sub_1C5AC3CD8(&qword_1EDA4BBF0, type metadata accessor for ArtworkClipShape);
  v82 = v28;
  v83 = v37;
  v38 = swift_getWitnessTable();
  v39 = v56;
  v40 = v58;
  MEMORY[0x1C694E550](v36, v15, v58, v38);
  (*(v75 + 8))(v36, v40);
  (*(v63 + 8))(v29, v15);
  v41 = v35 + *(v33 + 40);
  v42 = v65;
  *v65 = *v41;
  *(v42 + 8) = *(v41 + 8);
  *(v42 + 24) = *(v41 + 24);
  v43 = v59;
  v44 = *(v59 + 20);
  *(v42 + v44) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();

  v45 = swift_getWitnessTable();
  v80 = v38;
  v81 = v45;
  v46 = v64;
  v47 = swift_getWitnessTable();
  v48 = v62;
  MEMORY[0x1C694E550](v42, v46, v43, v47);
  sub_1C5945898(v42, type metadata accessor for ArtworkShadowModifier);
  (*(v70 + 8))(v39, v46);
  v49 = sub_1C5AC3CD8(&qword_1EDA48D90, type metadata accessor for ArtworkShadowModifier);
  v78 = v47;
  v79 = v49;
  v50 = v72;
  v51 = swift_getWitnessTable();
  v52 = v67;
  sub_1C593EDC0(v48, v50, v51);
  v53 = *(v74 + 8);
  v53(v48, v50);
  sub_1C593EDC0(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t sub_1C596388C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v6 = type metadata accessor for ArtworkInnerStrokeModifier();
  *(a3 + *(v6 + 36)) = a4;
  v7 = *(v6 + 40);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194E10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C596399C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BCAA54();
  v7 = v6;
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DA8) + 36);
  sub_1C5963AC8(v2, v8);
  v9 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DB0) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DB8);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1C5963A78@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5B5CDD4();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5963AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1C5BC9014();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DC0);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *(a1 + 8);
  v35 = *(a1 + 24);
  v36 = v16;
  if (qword_1EDA4DAD0 != -1)
  {
    swift_once();
  }

  v31 = *&qword_1EDA5DB40;
  v32 = *(&xmmword_1EDA5DB28 + 8);
  if ((sub_1C5BCA454() & 1) == 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v36, v32), vceqq_f64(v35, v31)), xmmword_1C5BE50B0)) & 0xF) != 0)
  {
    type metadata accessor for ArtworkShadowModifier(0);
    sub_1C59621C8(v12);
    v20 = *v12;
    v21 = *(v10 + 20);
    v22 = *(sub_1C5BC8B84() + 20);
    v23 = sub_1C5BC9044();
    (*(*(v23 - 8) + 32))(&v15[v22], &v12[v21], v23);
    *v15 = v20;
    *(v15 + 1) = v20;
    *&v15[*(sub_1C5BC8B74() + 20)] = 0x3FF0000000000000;
    v24 = sub_1C5BCA494();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DC8);
    *&v15[*(v25 + 52)] = v24;
    *&v15[*(v25 + 56)] = 256;
    v26 = sub_1C5BCA4B4();
    v27 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DD0) + 36)];
    *v27 = v26;
    v28 = *&v35.i64[1];
    *(v27 + 8) = vextq_s8(v36, v35, 8uLL);
    *(v27 + 3) = v28;
    sub_1C5BC9004();
    (*(v4 + 16))(v7, v9, v3);
    sub_1C5AC3CD8(&qword_1EC196DD8, MEMORY[0x1E697F400]);
    v29 = sub_1C5BC8674();
    (*(v4 + 8))(v9, v3);
    *&v15[*(v13 + 36)] = v29;
    v30 = v34;
    sub_1C59E7D34(v15, v34, &qword_1EC196DC0);
    return (*(v33 + 56))(v30, 0, 1, v13);
  }

  else
  {
    v17 = v34;
    v18 = *(v33 + 56);

    return v18(v17, 1, 1, v13);
  }
}

uint64_t sub_1C5963F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[2] = a1;
  v21[3] = a3;
  swift_getWitnessTable();
  sub_1C5BC9394();
  v5 = sub_1C5BC8B84();
  v6 = *(a2 + 16);
  v7 = sub_1C5AC3CD8(&qword_1EDA4E6A8, MEMORY[0x1E697EAF0]);
  v8 = *(a2 + 24);
  v25 = v5;
  v26 = v6;
  v27 = MEMORY[0x1E6981E70];
  v28 = v7;
  v29 = v8;
  v30 = MEMORY[0x1E6981E60];
  sub_1C5BC8B04();
  swift_getWitnessTable();
  v21[1] = sub_1C5BC8BE4();
  v9 = sub_1C5BC8AB4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v21[6] = v6;
  v21[7] = v8;
  v22 = v3;
  sub_1C5BCAA54();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2C4();
  v17 = swift_getWitnessTable();
  v23 = WitnessTable;
  v24 = v17;
  v18 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v9, v18);
  v19 = *(v10 + 8);
  v19(v13, v9);
  sub_1C593EDC0(v15, v9, v18);
  return (v19)(v15, v9);
}

uint64_t sub_1C5964214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = type metadata accessor for ArtworkCornerStyle(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C5BC8B84();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C5AC3CD8(&qword_1EDA4E6A8, MEMORY[0x1E697EAF0]);
  v33 = v11;
  v34 = a2;
  v28 = a2;
  v35 = MEMORY[0x1E6981E70];
  v36 = v30;
  v37 = a3;
  v38 = MEMORY[0x1E6981E60];
  v29 = a3;
  v14 = sub_1C5BC8B04();
  v31 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  type metadata accessor for ArtworkInnerStrokeModifier();
  sub_1C59621C8(v10);
  v20 = *v10;
  v21 = *(v8 + 28);
  v22 = *(v11 + 20);
  v23 = sub_1C5BC9044();
  (*(*(v23 - 8) + 32))(&v13[v22], &v10[v21], v23);
  *v13 = v20;
  *(v13 + 1) = v20;
  sub_1C5964B48(a1, 1, v11, v28, v30, v29, v17);
  sub_1C5945898(v13, MEMORY[0x1E697EAF0]);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v17, v14, WitnessTable);
  v25 = *(v31 + 8);
  v25(v17, v14);
  sub_1C593EDC0(v19, v14, WitnessTable);
  return (v25)(v19, v14);
}

uint64_t Marquee.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  v40.val[0] = *(a1 + 16);
  v40.val[1] = v40.val[0];
  v25 = v40.val[0];
  v26 = v40.val[0];
  v2 = v39;
  vst2q_f64(v2, v40);
  type metadata accessor for Marquee.ContentWithBadge();
  sub_1C5BC8AB4();
  v21 = sub_1C5BC8AB4();
  type metadata accessor for Marquee.MarqueeingContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC198CB0);
  sub_1C5BC8AB4();
  v3 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0);
  sub_1C5BC8AB4();
  v4 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v38 = sub_1C5924F54(&qword_1EDA46078, &qword_1EC198CB0);
  v35 = swift_getWitnessTable();
  v36 = MEMORY[0x1E69805D0];
  v5 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v34 = sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0);
  v31 = swift_getWitnessTable();
  v32 = sub_1C5953670();
  v6 = swift_getWitnessTable();
  v39[0] = v3;
  v39[1] = v4;
  v39[2] = v5;
  v39[3] = v6;
  type metadata accessor for ShownWhenAppeared();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v7 = sub_1C5BC85B4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = v23;
  v15 = v23 + *(v22 + 36);
  v16 = *(v15 + 48);
  v17 = *(v15 + 56);
  sub_1C5BC9854();
  v27 = v25;
  v28 = v14;
  v29 = v16;
  v30 = v17;
  sub_1C5BC85A4();
  v18 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v7, v18);
  v19 = *(v8 + 8);
  v19(v11, v7);
  sub_1C593EDC0(v13, v7, v18);
  return (v19)(v13, v7);
}

uint64_t sub_1C5964988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a3;
  v15 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20, v23, v22);
  (*(v15 + 16))(v18, a1, a5);

  return sub_1C5964BEC(v20, v18, a2, v27, v24, a4, a5, MEMORY[0x1E6981E70], a8, a6, a7, MEMORY[0x1E6981E60]);
}

uint64_t sub_1C5964B48@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1C5BC83C4();
  sub_1C5964988(a1, v15, a2, a3, a4, a5, a6, a7);
  return sub_1C59650C0(v15);
}

uint64_t sub_1C5964BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a5;
  v41 = a4;
  v36 = a3;
  v37 = a8;
  v39 = a2;
  v46 = a9;
  v47 = a1;
  v32[1] = a10;
  v40 = *(a8 - 8);
  v44 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v38 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1C5BC92A4();
  v15 = MEMORY[0x1EEE9AC00](v45);
  v42 = v32 - v16;
  v35 = *(a7 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a6 - 8);
  v20 = v33;
  MEMORY[0x1EEE9AC00](v17);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1C5BC87A4();
  MEMORY[0x1EEE9AC00](v23);
  WitnessTable = swift_getWitnessTable();
  v48 = v23;
  v49 = a7;
  v50 = WitnessTable;
  v51 = a11;
  v34 = sub_1C5BC8264();
  MEMORY[0x1EEE9AC00](v34);
  v25 = *(v20 + 16);
  v32[0] = a6;
  v25(v22, v47, a6);
  sub_1C5BC8794();
  v26 = v35;
  v27 = v39;
  (*(v35 + 16))(v19, v39, a7);
  sub_1C5BC8254();
  v28 = v40;
  v29 = v37;
  v30 = v43;
  (*(v40 + 16))(v38, v43, v37);
  sub_1C5BCAA54();
  (*(v28 + 8))(v30, v29);
  (*(v26 + 8))(v27, a7);
  (*(v33 + 8))(v47, v32[0]);
  sub_1C5BC9294();
  return sub_1C5BC89F4();
}

uint64_t sub_1C596500C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  v4 = a3 + *(type metadata accessor for Marquee.ContentWithBadge() + 52);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  return result;
}

uint64_t _s17ViewConfigurationVwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

BOOL sub_1C59651B8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1C5BCBF54();
  sub_1C5BC8884();
  sub_1C5BCBF74();
  v3 = sub_1C5BCBF94();
  v4 = -1 << *(a2 + 32);
  v5 = v3 & ~v4;
  if (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  do
  {
    v7 = sub_1C5BC8884();
    v8 = v7 == sub_1C5BC8884();
    result = v8;
    if (v8)
    {
      break;
    }

    v5 = (v5 + 1) & v6;
  }

  while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  return result;
}

uint64_t sub_1C59652A0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, char a3@<W4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v7 = a5 + *(type metadata accessor for ShownWhenAppeared() + 56);
  v8 = sub_1C5BCA684();
  *v7 = a3;
  *(v7 + 8) = a4;
  v9 = a1(v8);
  return a2(v9);
}

uint64_t sub_1C5965358@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C5BC8284();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v22 - v11);
  if (*v1 == 1)
  {
    sub_1C5BCA494();
    v13 = sub_1C5BCA4B4();

    v14 = *(v10 + 36);
    v15 = *MEMORY[0x1E6981DB8];
    v16 = sub_1C5BCAB54();
    (*(*(v16 - 8) + 104))(v12 + v14, v15, v16);
    *v12 = v13;
    sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);
  }

  else
  {
    v17 = v1[1];
    sub_1C5BC8CD4();
    (*(v4 + 104))(v7, *MEMORY[0x1E697DBA8], v3);
    v18 = sub_1C5BC8274();
    v19 = *(v4 + 8);
    v19(v7, v3);
    v19(v9, v3);
    if (v18 & 1) == 0 || (v17)
    {
      sub_1C5BCA474();
    }

    else
    {
      sub_1C5BCA494();
    }

    v20 = sub_1C5BCA4B4();

    v22[1] = v20;
  }

  result = sub_1C5BC85E4();
  *a1 = result;
  return result;
}

uint64_t sub_1C5965644(uint64_t a1)
{
  if (qword_1EDA45F90 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D80);
  sub_1C5924F54(&qword_1EDA46250, &qword_1EC196D78);
  sub_1C5960CF0();
  sub_1C5BCA374();
}

uint64_t sub_1C59657AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    a1 = v24;
  }

  swift_getKeyPath();
  v24 = a1;
  sub_1C5AC3CD8(&unk_1EDA49D30, _s7ArtworkC20MiniPlayerAppearanceCMa);
  sub_1C5BC7B74();

  v15 = *(a1 + 18);

  if (v15 != 1)
  {
    goto LABEL_7;
  }

  if ((a4 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    a3 = v24;
  }

  swift_getKeyPath();
  v24 = a3;
  sub_1C5AC3CD8(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v17 = *(a3 + 17);

  if ((v17 & 1) == 0)
  {
    sub_1C5BCA474();
    v18 = sub_1C5BCA4B4();

    v19 = sub_1C5BCA5A4();
    sub_1C5BC99C4();
    sub_1C5BC9974();
    v21 = sub_1C5BC99E4();

    KeyPath = swift_getKeyPath();
    result = sub_1C5BCA494();
  }

  else
  {
LABEL_7:
    v18 = 0;
    v19 = 0;
    KeyPath = 0;
    v21 = 0;
    result = 0;
  }

  *a5 = v18;
  a5[1] = v19;
  a5[2] = KeyPath;
  a5[3] = v21;
  a5[4] = result;
  return result;
}

double sub_1C5965B5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196118);
  sub_1C5BCA6B4();
  return v1;
}

uint64_t sub_1C5965BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_1C5BCAA54();
  v14 = v13;
  LOBYTE(v23[0]) = a3 & 1;
  sub_1C59657AC(a2, a3 & 1, a4, a5 & 1, v23);
  v15 = v23[0];
  v16 = v23[1];
  v17 = v23[2];
  v18 = v23[3];
  v19 = v23[4];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D88);
  (*(*(v20 - 8) + 16))(a6, a1, v20);
  v21 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196D80) + 36));
  *v21 = v15;
  v21[1] = v16;
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = v12;
  v21[6] = v14;
  sub_1C5965D28(v15);

  return sub_1C5965D98(v15);
}

uint64_t sub_1C5965D28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5965D98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5965E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997D0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997D8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = swift_allocObject();
  v12 = *(v3 + 48);
  v11[3] = *(v3 + 32);
  v11[4] = v12;
  v11[5] = *(v3 + 64);
  v13 = *(v3 + 16);
  v11[1] = *v3;
  v11[2] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997E0);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = sub_1C5966344;
  *(v15 + 1) = 0;
  *(v15 + 2) = sub_1C59717F8;
  *(v15 + 3) = v11;
  v16 = *(v3 + 48);
  v31 = *(v3 + 32);
  v32 = v16;
  v33 = *(v3 + 64);
  sub_1C596625C(v3, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997E8);
  sub_1C5BCA694();
  v31 = v29[0];
  v32 = v29[1];
  LOBYTE(v33) = v30;
  v17 = swift_allocObject();
  v18 = *(v3 + 48);
  v17[3] = *(v3 + 32);
  v17[4] = v18;
  v17[5] = *(v3 + 64);
  v19 = *(v3 + 16);
  v17[1] = *v3;
  v17[2] = v19;
  sub_1C596625C(v3, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929F8);
  sub_1C594664C();
  sub_1C5946730();
  sub_1C5BCA344();

  sub_1C5924EF4(v7, &qword_1EC1997D0);
  v20 = swift_allocObject();
  v21 = *(v3 + 48);
  v20[3] = *(v3 + 32);
  v20[4] = v21;
  v20[5] = *(v3 + 64);
  v22 = *(v3 + 16);
  v20[1] = *v3;
  v20[2] = v22;
  v23 = &v10[*(v8 + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_1C5B8579C;
  *(v23 + 3) = v20;
  LOBYTE(v31) = *(v3 + 8);
  v24 = swift_allocObject();
  v25 = *(v3 + 48);
  v24[3] = *(v3 + 32);
  v24[4] = v25;
  v24[5] = *(v3 + 64);
  v26 = *(v3 + 16);
  v24[1] = *v3;
  v24[2] = v26;
  sub_1C596625C(v3, v29);
  sub_1C596625C(v3, v29);
  sub_1C5946558();
  sub_1C5BCA344();

  return sub_1C59661A4(v10);
}

uint64_t sub_1C59661A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5966294@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC86C4();
  for (i = 0; ; ++i)
  {
    if (!byte_1F45189D8[i + 32])
    {
      if (v3 > 0.0)
      {
        LOBYTE(i) = 0;
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (byte_1F45189D8[i + 32] != 1)
    {
      break;
    }

    if (v3 > 594.0)
    {
      LOBYTE(i) = 1;
      goto LABEL_16;
    }

LABEL_12:
    if (i == 2)
    {
      goto LABEL_16;
    }

LABEL_6:
    ;
  }

  if (v3 <= 690.0 && i != 2)
  {
    goto LABEL_6;
  }

  LOBYTE(i) = 2;
LABEL_16:
  *a1 = i;
  return result;
}

uint64_t sub_1C5966344@<X0>(void *a1@<X8>)
{
  v2 = sub_1C5BC9314();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0xD000000000000037;
  v15[1] = 0x80000001C5BFD680;
  sub_1C5BC9494();
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

uint64_t sub_1C5966488(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C59664F0()
{
  result = qword_1EDA46540;
  if (!qword_1EDA46540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC194E68);
    sub_1C5924F54(&qword_1EDA46218, &qword_1EC194DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46540);
  }

  return result;
}

uint64_t sub_1C59665C8@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C5BCA484();
  if ((a3 & 1) == 0)
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(a2, 0);
    (*(v9 + 8))(v11, v8);
    a2 = v18[1];
  }

  v14 = sub_1C5BC9664();
  result = sub_1C5BCABD4();
  *a4 = v12;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = v14;
  *(a4 + 32) = v16;
  *(a4 + 40) = v17;
  *(a4 + 48) = 1;
  return result;
}

uint64_t sub_1C5966770(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x756F72676B636162;
  v4 = 0xEA0000000000646ELL;
  if (v2 != 1)
  {
    v3 = 0x726564616568;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x756F72676B636162;
  v8 = 0xEA0000000000646ELL;
  if (*a2 != 1)
  {
    v7 = 0x726564616568;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
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

uint64_t sub_1C5966874(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewState();
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  return v4;
}

uint64_t sub_1C59668E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewState();
  result = sub_1C5BC7F24();
  *a1 = result;
  return result;
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

uint64_t sub_1C596693C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59669AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v12 = *(v1 + 16);
  sub_1C596693C(&v12, &v11);
  type metadata accessor for ViewState();
  sub_1C5954190(&qword_1EDA46C30, type metadata accessor for ViewState);
  sub_1C5BC83A4();
  v5 = type metadata accessor for _CAPackageView();
  v6 = v5[6];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[7];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v5[8];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  swift_storeEnumTagMultiPayload();
  *a1 = v12;

  *(a1 + 16) = sub_1C5BC88C4();
  *(a1 + 24) = v9;
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  sub_1C5966BDC(v3, v4);
}

uint64_t sub_1C5966B7C@<X0>(void *a1@<X8>)
{
  sub_1C59676E0();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

void sub_1C5966BDC(uint64_t a1, unint64_t a2)
{
  if (!v2[7])
  {
    v3 = v2;
    v6 = sub_1C5966E14();
    v7 = v2[7];
    v3[7] = v6;
    v8 = v6;

    sub_1C596721C();
    v3[2] = a1;
    v3[3] = a2;

    v9 = v3[5];
    if (v9)
    {
      v10 = v3[4];
      v11 = qword_1EDA46990;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = sub_1C5BC7D64();
      __swift_project_value_buffer(v12, qword_1EDA5DA60);

      oslog = sub_1C5BC7D44();
      v13 = sub_1C5BCB4F4();

      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18 = v15;
        *v14 = 136446466;
        v16 = sub_1C592ADA8(v10, v9, &v18);

        *(v14 + 4) = v16;
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_1C592ADA8(a1, a2, &v18);
        _os_log_impl(&dword_1C5922000, oslog, v13, "%{public}s: %{public}s ViewState loaded package ", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C69510F0](v15, -1, -1);
        MEMORY[0x1C69510F0](v14, -1, -1);
      }

      else
      {
      }
    }
  }
}

id sub_1C5966E14()
{
  v1 = v0;
  v2 = sub_1C5BC7A24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19[-v10];
  v12 = sub_1C5BCAE44();
  v13 = sub_1C5BCAE44();
  v14 = [v1 URLForResource:v12 withExtension:v13];

  if (!v14)
  {
    return 0;
  }

  sub_1C5BC79E4();

  (*(v3 + 32))(v11, v9, v2);
  sub_1C592535C(0, &qword_1EDA45D50);
  (*(v3 + 16))(v6, v11, v2);
  v15 = sub_1C5BCAE74();
  v18 = sub_1C5967054(v6, v15, v16, 0);
  (*(v3 + 8))(v11, v2);
  result = v18;
  if (!v18)
  {
    return 0;
  }

  return result;
}

id sub_1C5967054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C5BC7994();
  v7 = sub_1C5BCAE44();

  if (a4)
  {
    v8 = sub_1C5BCACA4();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1C5BC7A24();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1C5BC7914();

    swift_willThrow();
    v15 = sub_1C5BC7A24();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

void sub_1C596721C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];
      v5 = v0[6];
      v0[6] = v4;

      v6 = v0[7];
      if (!v6 || (v7 = [v6 rootLayer]) == 0 || (v8 = v7, v9 = objc_msgSend(v7, sel_states), v8, !v9) || (v10 = sub_1C5BCB054(), v9, v11 = sub_1C59673D0(v10), , !v11))
      {

        v11 = MEMORY[0x1E69E7CC0];
      }

      if (v11 >> 62)
      {
        if (sub_1C5BCB984())
        {
          goto LABEL_10;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1C694FD20](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        goto LABEL_17;
      }

      v13 = 0;
LABEL_17:
      v16 = v0[8];
      v0[8] = v13;
      v15 = v13;
      sub_1C59674DC(v16);

      v14 = v16;
      goto LABEL_18;
    }
  }

  v14 = v0[6];
  v0[6] = 0;
LABEL_18:
}

uint64_t sub_1C59673D0(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1C5BCBB44();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1C592B32C(i, v5);
    sub_1C592535C(0, &qword_1EDA45DA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1C5BCBB24();
    sub_1C5BCBB54();
    sub_1C5BCBB64();
    sub_1C5BCBB34();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_1C59674DC(void *a1)
{
  v2 = v1;
  v4 = v2[8];
  if (v4)
  {
    if (a1)
    {
      sub_1C592535C(0, &qword_1EDA45DA8);
      v5 = v4;
      v6 = a1;
      v7 = sub_1C5BCB744();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v2[6];
  if (v8)
  {
    v9 = v2[8];
    if (v9)
    {
      v10 = v2[7];
      if (v10)
      {
        v11 = v9;
        v18 = v8;
        v12 = [v10 rootLayer];
        if (v12)
        {
          v13 = v12;
          v14 = objc_opt_self();
          v15 = v11;
          v11 = v13;
          v16 = [v14 areAnimationsEnabled];
          v17 = 0.0;
          if (v16)
          {
            *&v17 = 1.0;
          }

          [v18 setState:v15 ofLayer:v11 transitionSpeed:v17];

          v18 = v11;
        }
      }
    }
  }
}

uint64_t sub_1C596765C()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA5DA60);
  __swift_project_value_buffer(v0, qword_1EDA5DA60);
  return sub_1C5BC7D54();
}

unint64_t sub_1C59676E0()
{
  result = qword_1EDA475A0;
  if (!qword_1EDA475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA475A0);
  }

  return result;
}

uint64_t sub_1C5967734@<X0>(void *a1@<X8>)
{
  if (qword_1EDA475A8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EDA475B0;
}

uint64_t sub_1C59677A4()
{
  result = sub_1C5BCA4C4();
  qword_1EDA475B0 = result;
  return result;
}

uint64_t sub_1C59677C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v40 = sub_1C5BC81D4();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _CAPackageView();
  v5 = *(v4 - 8);
  v36 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v6;
  v8 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1978F8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC197900);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v32 - v14;
  type metadata accessor for CAPackageViewLayer();
  sub_1C5967CB0(v2, v8);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1C5967D14(v8, v16 + v15);
  sub_1C5BC85C4();
  sub_1C5967CB0(v2, v8);
  v35 = v7;
  v17 = swift_allocObject();
  sub_1C5967D14(v8, v17 + v15);
  v18 = &v11[*(v9 + 36)];
  *v18 = sub_1C5971B88;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v34 = v2;
  v19 = v2[1];
  v44 = *v2;
  v45 = v19;
  sub_1C5967CB0(v2, v8);
  v20 = swift_allocObject();
  sub_1C5967D14(v8, v20 + v15);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192880);
  v22 = sub_1C5954398();
  v23 = sub_1C5954488();
  v24 = v33;
  sub_1C5BCA334();

  sub_1C5924EF4(v11, &qword_1EC1978F8);
  v25 = v37;
  v26 = v34;
  sub_1C594C72C(v37);
  sub_1C5967CB0(v26, v8);
  v27 = swift_allocObject();
  sub_1C5967D14(v8, v27 + v15);
  v44 = v24;
  v45 = v21;
  v46 = v22;
  v47 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1C5954190(&qword_1EDA467E8, MEMORY[0x1E697BE48]);
  v28 = v40;
  v29 = v38;
  v30 = v43;
  sub_1C5BCA344();

  (*(v42 + 8))(v25, v28);
  return (*(v39 + 8))(v30, v29);
}

uint64_t sub_1C5967CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _CAPackageView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5967D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _CAPackageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5967DF8()
{
  v0 = _s25BackdropConditionObserverVMa();
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  sub_1C5967E58(v2, v0);
  return sub_1C5924EF4(v2, &qword_1EC1999A8);
}

uint64_t sub_1C5967E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v150 - v7;
  v162 = sub_1C5BC90F4();
  v161 = *(v162 - 8);
  v9 = MEMORY[0x1EEE9AC00](v162);
  v160 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v159 = &v150 - v11;
  v170 = sub_1C5BC81D4();
  v168 = *(v170 - 8);
  v12 = MEMORY[0x1EEE9AC00](v170);
  v167 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v169 = &v150 - v15;
  v16 = *(a2 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v156 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v163 = &v150 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v165 = &v150 - v22;
  v155 = v23;
  MEMORY[0x1EEE9AC00](v21);
  v173 = &v150 - v24;
  v25 = sub_1C5BC7D64();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v154 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v153 = &v150 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v157 = &v150 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v158 = &v150 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v164 = &v150 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v166 = &v150 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v150 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v171 = &v150 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v150 - v44;
  v46 = sub_1C5BC8F34();
  v175 = *(v46 - 8);
  v176 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v174 = &v150 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5969DFC(a1, &v178);
  v172 = v41;
  if (v180)
  {
    sub_1C596A0A8(&v178, &v181);
  }

  else
  {
    sub_1C59416B4(&v181);
    if (v180)
    {
      sub_1C5924EF4(&v178, &qword_1EC1999A8);
    }
  }

  v48 = *(v3 + 72);
  v49 = *(v3 + 80);

  if ((v49 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v50 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v51 = v174;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v175 + 1))(v51, v176);
    v48 = v178;
  }

  swift_getKeyPath();
  *&v178 = v48;
  sub_1C592F30C(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  v52 = *(v48 + 48);

  if ((v52 & 1) == 0)
  {
    v59 = *(v3 + 88);
    v58 = *(v3 + 96);
    v61 = *(v3 + 104);
    v60 = *(v3 + 112);
    v62 = *(v3 + 120) == 1;
    v151 = v8;
    if (v62)
    {
      *&v178 = v59;
      *(&v178 + 1) = v58;
      v179 = v61;
      v180 = v60;
      sub_1C593E7D8(v59, v58);
    }

    else
    {

      sub_1C5BCB4E4();
      v152 = v16;
      v63 = sub_1C5BC9844();
      v16 = v152;
      sub_1C5BC7C54();

      v64 = v174;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C596AC4C(v59, v58, v61, v60, 0);
      (*(v175 + 1))(v64, v176);
    }

    if (*(&v178 + 1) != 1)
    {
      sub_1C593E820(v178, *(&v178 + 1));
      sub_1C5969E6C();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1C5BC8034();

      if ((v178 & 1) == 0)
      {
        if (qword_1EDA46998 != -1)
        {
          swift_once();
        }

        v80 = __swift_project_value_buffer(v25, qword_1EDA469A0);
        v45 = v171;
        (*(v26 + 2))(v171, v80, v25);
        v54 = sub_1C5BC7D44();
        v55 = sub_1C5BCB4F4();
        if (!os_log_type_enabled(v54, v55))
        {
          goto LABEL_33;
        }

        v56 = swift_slowAlloc();
        *v56 = 0;
        v57 = "Pausing backdrop during queue transition";
        goto LABEL_32;
      }

      return __swift_destroy_boxed_opaque_existential_0(&v181);
    }

    v65 = *(sub_1C594C688() + 16);
    if (v65 <= 4 && v65 != 2)
    {
      sub_1C5969E6C();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1C5BC8034();

      if ((v178 & 1) == 0)
      {
        if (qword_1EDA46998 != -1)
        {
          swift_once();
        }

        v66 = __swift_project_value_buffer(v25, qword_1EDA469A0);
        v67 = v172;
        (*(v26 + 2))(v172, v66, v25);
        v68 = v173;
        (*(v16 + 16))(v173, v3, a2);
        v69 = sub_1C5BC7D44();
        v70 = sub_1C5BCB4F4();
        if (os_log_type_enabled(v69, v70))
        {
          v176 = v25;
          v71 = v26;
          v72 = 0xE900000000000064;
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v75 = a2;
          v76 = v74;
          *&v178 = v74;
          *v73 = 136446210;
          v77 = v75;
          v78 = *(sub_1C594C688() + 16);
          if (v78 > 2)
          {
            if (v78 == 3)
            {
              v79 = 0xD000000000000017;
              v72 = 0x80000001C5BF5790;
            }

            else if (v78 == 4)
            {
              v79 = 0x697370616C6C6F63;
              v72 = 0xEA0000000000676ELL;
            }

            else
            {
              v79 = 0x657370616C6C6F63;
            }
          }

          else if (v78)
          {
            if (v78 == 1)
            {
              v72 = 0x80000001C5BF5760;
              v79 = 0xD000000000000020;
            }

            else
            {
              v72 = 0xE800000000000000;
              v79 = 0x6465646E61707865;
            }
          }

          else
          {
            v79 = 0x6E69646E61707865;
            v72 = 0xE900000000000067;
          }

          (*(v16 + 8))(v173, v77);
          v116 = sub_1C592ADA8(v79, v72, &v178);

          *(v73 + 4) = v116;
          _os_log_impl(&dword_1C5922000, v69, v70, "Pausing backdrop during transition phase: %{public}s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x1C69510F0](v76, -1, -1);
          MEMORY[0x1C69510F0](v73, -1, -1);

          (*(v71 + 1))(v172, v176);
        }

        else
        {

          (*(v16 + 8))(v68, a2);
          (*(v26 + 1))(v67, v25);
        }

        goto LABEL_34;
      }

      return __swift_destroy_boxed_opaque_existential_0(&v181);
    }

    v152 = v16;
    v82 = v169;
    sub_1C594C72C(v169);
    v83 = v168;
    v84 = v167;
    v85 = v170;
    (*(v168 + 104))(v167, *MEMORY[0x1E697BE38], v170);
    sub_1C592F30C(&qword_1EDA467E8, MEMORY[0x1E697BE48]);
    v86 = sub_1C5BCADB4();
    v87 = *(v83 + 8);
    v87(v84, v85);
    v87(v82, v85);
    if ((v86 & 1) == 0)
    {
      sub_1C5969E6C();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1C5BC8034();

      v91 = v152;
      if (v178)
      {
        return __swift_destroy_boxed_opaque_existential_0(&v181);
      }

      if (qword_1EDA46998 != -1)
      {
        swift_once();
      }

      v92 = __swift_project_value_buffer(v25, qword_1EDA469A0);
      v93 = v166;
      (*(v26 + 2))(v166, v92, v25);
      v94 = v165;
      (*(v91 + 16))(v165, v3, a2);
      v95 = sub_1C5BC7D44();
      v96 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v175 = v97;
        v176 = swift_slowAlloc();
        *&v178 = v176;
        *v97 = 136446210;
        v98 = v94;
        sub_1C594C72C(v169);
        v99 = sub_1C5BCAEA4();
        v100 = v25;
        v101 = a2;
        v103 = v102;
        (*(v91 + 8))(v98, v101);
        v104 = sub_1C592ADA8(v99, v103, &v178);

        v105 = v175;
        *(v175 + 1) = v104;
        _os_log_impl(&dword_1C5922000, v95, v96, "Pausing backdrop for scenePhase: %{public}s", v105, 0xCu);
        v106 = v176;
        __swift_destroy_boxed_opaque_existential_0(v176);
        MEMORY[0x1C69510F0](v106, -1, -1);
        MEMORY[0x1C69510F0](v105, -1, -1);

        (*(v26 + 1))(v166, v100);
      }

      else
      {

        (*(v91 + 8))(v94, a2);
        (*(v26 + 1))(v93, v25);
      }

      goto LABEL_34;
    }

    v173 = v26;
    type metadata accessor for EnvironmentMonitor();
    sub_1C592F30C(qword_1EDA4B360, type metadata accessor for EnvironmentMonitor);
    v88 = sub_1C5BC83A4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C5BC8034();

    v89 = v152;
    if (v178 >= 0x14)
    {
      sub_1C5969E6C();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1C5BC8034();

      v107 = v173;
      if (v178)
      {
        return __swift_destroy_boxed_opaque_existential_0(&v181);
      }

      if (qword_1EDA46998 != -1)
      {
        swift_once();
      }

      v108 = __swift_project_value_buffer(v25, qword_1EDA469A0);
      v109 = v164;
      (*(v107 + 2))(v164, v108, v25);
      v110 = v163;
      (*(v89 + 16))(v163, v3, a2);
      v111 = sub_1C5BC7D44();
      v112 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 67240192;
        v114 = sub_1C5BC83A4();
        swift_getKeyPath();
        swift_getKeyPath();
        LODWORD(v176) = v112;
        sub_1C5BC8034();

        LODWORD(v114) = v178;
        (*(v89 + 8))(v110, a2);
        *(v113 + 4) = v114;
        _os_log_impl(&dword_1C5922000, v111, v176, "Pausing backdrop for thermal pressure: %{public}u", v113, 8u);
        v115 = v113;
        v109 = v164;
        MEMORY[0x1C69510F0](v115, -1, -1);
      }

      else
      {
        (*(v89 + 8))(v110, a2);
      }

      v117 = v173;
      goto LABEL_64;
    }

    v90 = *(sub_1C594C688() + 16);
    if (v90 > 2)
    {
      v26 = v173;
    }

    else
    {
      v26 = v173;
      if (v90 > 1)
      {

LABEL_67:
        v119 = v182;
        __swift_project_boxed_opaque_existential_0(&v181, v182);
        if (sub_1C596CB78(v119))
        {
          sub_1C5969E6C();
          swift_getKeyPath();
          swift_getKeyPath();

          sub_1C5BC8034();

          if (v178)
          {
            return __swift_destroy_boxed_opaque_existential_0(&v181);
          }

          if (qword_1EDA46998 != -1)
          {
            swift_once();
          }

          v120 = __swift_project_value_buffer(v25, qword_1EDA469A0);
          v45 = v157;
          (*(v26 + 2))(v157, v120, v25);
          v54 = sub_1C5BC7D44();
          v55 = sub_1C5BCB4F4();
          if (!os_log_type_enabled(v54, v55))
          {
            goto LABEL_33;
          }

          v56 = swift_slowAlloc();
          *v56 = 0;
          v57 = "Pausing backdrop because current treatment is video";
          goto LABEL_32;
        }

        sub_1C59318C8(&v181, &v178);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
        if (swift_dynamicCast())
        {
          v122 = v177;

          v123 = *(v3 + 176);
          if (*(v3 + 184) == 1)
          {
            v124 = *(v3 + 176);
          }

          else
          {

            sub_1C5BCB4E4();
            v125 = sub_1C5BC9844();
            sub_1C5BC7C54();

            v126 = v174;
            sub_1C5BC8F24();
            swift_getAtKeyPath();
            sub_1C5950E44(v123, 0);
            (*(v175 + 1))(v126, v176);
            v124 = v178;
          }

          if (!v124)
          {
            v127 = v3 + *(a2 + 68);
            v129 = *v127;
            v128 = *(v127 + 8);
            if (*(v127 + 16) == 1)
            {
              *&v178 = *v127;
              *(&v178 + 1) = v128;
            }

            else
            {

              sub_1C5BCB4E4();
              v130 = sub_1C5BC9844();
              sub_1C5BC7C54();

              v26 = v173;
              v131 = v174;
              sub_1C5BC8F24();
              swift_getAtKeyPath();
              sub_1C596AC58(v129, v128, 0);
              (*(v175 + 1))(v131, v176);
              v128 = *(&v178 + 1);
            }

            if (!v128)
            {
              sub_1C5969E6C();
              swift_getKeyPath();
              swift_getKeyPath();

              sub_1C5BC8034();

              if (v178)
              {
                return __swift_destroy_boxed_opaque_existential_0(&v181);
              }

              if (qword_1EDA46998 != -1)
              {
                swift_once();
              }

              v149 = __swift_project_value_buffer(v25, qword_1EDA469A0);
              v45 = v153;
              (*(v26 + 2))(v153, v149, v25);
              v54 = sub_1C5BC7D44();
              v55 = sub_1C5BCB4F4();
              if (!os_log_type_enabled(v54, v55))
              {
                goto LABEL_33;
              }

              v56 = swift_slowAlloc();
              *v56 = 0;
              v57 = "Pausing backdrop because full bleed art is showing";
              goto LABEL_32;
            }
          }
        }

        v132 = v159;
        sub_1C594C704(v159);
        v133 = v161;
        v134 = v160;
        v135 = v162;
        (*(v161 + 104))(v160, *MEMORY[0x1E697F600], v162);
        sub_1C592F30C(&qword_1EDA46328, MEMORY[0x1E697F610]);
        v136 = sub_1C5BCADB4();
        v137 = *(v133 + 8);
        v137(v134, v135);
        v137(v132, v135);
        sub_1C5969E6C();
        swift_getKeyPath();
        swift_getKeyPath();
        if (v136)
        {

          sub_1C5BC8034();

          if (v178 == 1)
          {
            v138 = sub_1C5BCB214();
            v139 = v151;
            (*(*(v138 - 8) + 56))(v151, 1, 1, v138);
            v140 = v156;
            (*(v89 + 16))(v156, v3, a2);
            sub_1C5BCB1E4();
            v141 = sub_1C5BCB1D4();
            v142 = (*(v89 + 80) + 48) & ~*(v89 + 80);
            v143 = swift_allocObject();
            v144 = MEMORY[0x1E69E85E0];
            *(v143 + 16) = v141;
            *(v143 + 24) = v144;
            *(v143 + 32) = *(a2 + 16);
            (*(v89 + 32))(v143 + v142, v140, a2);
            sub_1C5AD0FB8(0, 0, v139, &unk_1C5BF1D48, v143);
          }

          return __swift_destroy_boxed_opaque_existential_0(&v181);
        }

        sub_1C5BC8034();

        v117 = v173;
        if (v178)
        {
          return __swift_destroy_boxed_opaque_existential_0(&v181);
        }

        if (qword_1EDA46998 != -1)
        {
          swift_once();
        }

        v145 = __swift_project_value_buffer(v25, qword_1EDA469A0);
        v109 = v154;
        (*(v117 + 2))(v154, v145, v25);
        v146 = sub_1C5BC7D44();
        v147 = sub_1C5BCB4F4();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&dword_1C5922000, v146, v147, "Pausing backdrop because increase contrast mode is enabled", v148, 2u);
          MEMORY[0x1C69510F0](v148, -1, -1);
        }

LABEL_64:
        (*(v117 + 1))(v109, v25);
        goto LABEL_34;
      }
    }

    v118 = sub_1C5BCBDE4();

    if ((v118 & 1) == 0)
    {
      sub_1C5969E6C();
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1C5BC8034();

      if (v178)
      {
        return __swift_destroy_boxed_opaque_existential_0(&v181);
      }

      if (qword_1EDA46998 != -1)
      {
        swift_once();
      }

      v121 = __swift_project_value_buffer(v25, qword_1EDA469A0);
      v45 = v158;
      (*(v26 + 2))(v158, v121, v25);
      v54 = sub_1C5BC7D44();
      v55 = sub_1C5BCB4F4();
      if (!os_log_type_enabled(v54, v55))
      {
        goto LABEL_33;
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = "Pausing backdrop because player is not not expanded";
      goto LABEL_32;
    }

    goto LABEL_67;
  }

  sub_1C5969E6C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C5BC8034();

  if ((v178 & 1) == 0)
  {
    if (qword_1EDA46998 != -1)
    {
      swift_once();
    }

    v53 = __swift_project_value_buffer(v25, qword_1EDA469A0);
    (*(v26 + 2))(v45, v53, v25);
    v54 = sub_1C5BC7D44();
    v55 = sub_1C5BCB4F4();
    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_33;
    }

    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = "Pausing backdrop during view transition";
LABEL_32:
    _os_log_impl(&dword_1C5922000, v54, v55, v57, v56, 2u);
    MEMORY[0x1C69510F0](v56, -1, -1);
LABEL_33:

    (*(v26 + 1))(v45, v25);
LABEL_34:
    sub_1C5969E6C();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v178) = 1;

    sub_1C5BC8044();
  }

  return __swift_destroy_boxed_opaque_existential_0(&v181);
}

uint64_t sub_1C5969BE8()
{
  v1 = _s25BackdropConditionObserverVMa();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  sub_1C596AC3C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16));

  swift_unknownObjectRelease();

  sub_1C596AC4C(*(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120));
  if (*(v0 + v2 + 168))
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 128);
  }

  else
  {
  }

  sub_1C5950E44(*(v3 + 176), *(v3 + 184));
  v4 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1C5BC81D4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1C596AC58(*(v3 + v1[17]), *(v3 + v1[17] + 8), *(v3 + v1[17] + 16));
  v6 = v1[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C5BC90F4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C5969DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1999A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5969E6C()
{
  result = *(v0 + 24);
  if (!result)
  {
    _s8BackdropCMa();
    sub_1C592F30C(&qword_1EDA49930, _s8BackdropCMa);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5969EE8()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA469A0);
  __swift_project_value_buffer(v0, qword_1EDA469A0);
  return sub_1C5BC7D54();
}

uint64_t sub_1C5969F68(uint64_t a1)
{
  sub_1C59318C8(a1, v4);
  v2 = _s25BackdropConditionObserverVMa();
  sub_1C5967E58(v4, v2);
  sub_1C5924EF4(v4, &qword_1EC1999A8);
  sub_1C59318C8(a1, v4);
  sub_1C596A0AC(v4, v2);
  return sub_1C5924EF4(v4, &qword_1EC1999A8);
}

uint64_t sub_1C596A01C(uint64_t a1)
{
  _s25BackdropConditionObserverVMa();

  return sub_1C5969F68(a1);
}

uint64_t sub_1C596A0AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5969DFC(a1, &v21);
  if (v22)
  {
    sub_1C596A0A8(&v21, v23);
  }

  else
  {
    sub_1C59416B4(v23);
    if (v22)
    {
      sub_1C5924EF4(&v21, &qword_1EC1999A8);
    }
  }

  sub_1C59318C8(v23, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460);
  if (swift_dynamicCast())
  {
    v10 = v20[1];

    v11 = *(v3 + 176);
    if (*(v3 + 184) == 1)
    {
      v12 = *(v3 + 176);
    }

    else
    {

      sub_1C5BCB4E4();
      v13 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5950E44(v11, 0);
      (*(v7 + 8))(v9, v6);
      v12 = v21;
    }

    sub_1C5969E6C();
    if (!v12)
    {

      v18 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    sub_1C5969E6C();
  }

  v14 = v3 + *(a2 + 68);
  v16 = *v14;
  v15 = *(v14 + 8);
  if (*(v14 + 16) == 1)
  {
    *&v21 = *v14;
    *(&v21 + 1) = v15;

    sub_1C5A059A0(v16, v15, 1);
  }

  else
  {

    sub_1C5A059A0(v16, v15, 0);
    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v16, v15, 0);
    (*(v7 + 8))(v9, v6);
    v15 = *(&v21 + 1);
  }

  v18 = v15 != 0;
  if (v15)
  {
  }

LABEL_17:
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v21) = v18;
  sub_1C5BC8044();
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(_s25ExpandsNowPlayingModifierVMa() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997C0);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997C8);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C596A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C596A5F0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C596A5F0()
{
  result = qword_1EDA4DA18;
  if (!qword_1EDA4DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DA18);
  }

  return result;
}

uint64_t sub_1C596A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C593B5AC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1C596A6DC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_1C5BC8744();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C5BC88A4();
  v13[8] = a2 & 1;
  v13[0] = a4 & 1;
  sub_1C5BC8714();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_1C596A87C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v14 = sub_1C5BC8744();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C5BC88A4();
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMidX(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMidY(v21);
  sub_1C5BCABD4();
  v19[8] = a6 & 1;
  v19[0] = a8 & 1;
  sub_1C5BC8724();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1C596AA3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0xE900000000000067;
  v4 = a1;
  v5 = 0x697370616C6C6F63;
  v6 = 0xEA0000000000676ELL;
  if (a1 != 4)
  {
    v5 = 0x657370616C6C6F63;
    v6 = 0xE900000000000064;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000017;
    v6 = 0x80000001C5BF5790;
  }

  v7 = 0x80000001C5BF5760;
  v8 = 0xD000000000000020;
  if (a1 != 1)
  {
    v8 = 0x6465646E61707865;
    v7 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x6E69646E61707865;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001C5BF5790;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA0000000000676ELL;
      if (v9 != 0x697370616C6C6F63)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x657370616C6C6F63)
    {
LABEL_34:
      v11 = sub_1C5BCBDE4();
      goto LABEL_35;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x80000001C5BF5760;
      if (v9 != 0xD000000000000020)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x6465646E61707865)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v2 = 0xE900000000000067;
    if (v9 != 0x6E69646E61707865)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v2)
  {
    goto LABEL_34;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_1C596AC3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1EEE66BB8]();
  }

  else
  {
  }
}

uint64_t sub_1C596AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    return sub_1C593E820(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1C596AC58(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C596AC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  if ((a11 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for MaterialView() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  sub_1C59B5190(*v3, *(v3 + 8), *(v3 + 16));
  (*(*(v1 - 8) + 8))(v3 + v2[11], v1);

  j__swift_release();
  sub_1C5942458(*(v3 + v2[14]), *(v3 + v2[14] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = (_s33HeadlessTimeControlSliderModifierVMa() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC81D4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for MotionPlayerView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193430);
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193438);

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191ED8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for MotionAsset();
    if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v7 = sub_1C5BC7A24();
        (*(*(v7 - 8) + 8))(v2 + v4, v7);
      }
    }
  }

  else
  {
  }

  sub_1C596AC58(*(v2 + *(v1 + 24)), *(v2 + *(v1 + 24) + 8), *(v2 + *(v1 + 24) + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_110Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for ParallaxEffectViewModifier();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8F34();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NowPlayingArtworkBackground();
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v0 + v3;
  v5 = sub_1C5BC7A24();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  (*(*(v1 - 8) + 8))(v4 + v2[10], v1);
  v7 = v4 + v2[12];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195740);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195748);

  sub_1C5950E44(*(v4 + v2[13]), *(v4 + v2[13] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Scrubber();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));

  j__swift_release();
  v4 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1C5BC90F4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1C5942458(*(v3 + v2[11]), *(v3 + v2[11] + 8));
  sub_1C5942458(*(v3 + v2[12]), *(v3 + v2[12] + 8));

  (*(*(v1 - 8) + 8))(v3 + v2[17], v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for NowPlayingQueue() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  v4 = v3 + v2[11];
  sub_1C596AC80(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 73));
  v5 = v3 + v2[12];
  sub_1C596AC4C(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for ArtworkCornerModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1C5942458(*v2, *(v2 + 8));
  if (*(v2 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
  }

  else
  {
  }

  sub_1C5942458(*(v2 + 64), *(v2 + 72));

  v3 = v2 + *(v1 + 36);
  v4 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
  v5 = sub_1C5BC9044();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ToastView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);
  if (*(v3 + *(v2 + 36)))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  sub_1C5950E44(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = *(v0 + 32);
  v3 = (type metadata accessor for ParallaxHeader() - 8);
  v4 = v0 + ((*(*v3 + 80) + 64) & ~*(*v3 + 80));

  (*(*(v1 - 8) + 8))(v4 + v3[19], v1);
  (*(*(v2 - 8) + 8))(v4 + v3[20], v2);
  (*(*(v6 - 8) + 8))(v4 + v3[21]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = sub_1C5BC9624();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NowPlayingHostedContentToggleButtonStyle(0);
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C5BC90F4();
    (*(*(v8 - 8) + 8))(v0 + v6 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_36Tm()
{

  return swift_deallocObject();
}

void sub_1C596C058()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C5938344();
  }
}

void sub_1C596C0AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1C596C120(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1C5BCB214();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1C5BCB1E4();
  v8 = a1;

  v9 = sub_1C5BCB1D4();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = a1;
  sub_1C5AD0FB8(0, 0, v6, &unk_1C5BEA3E0, v10);
}

uint64_t sub_1C596C24C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1C596C294(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1C5BCB5F4();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A440);
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  v13 = v27;
  if (v27)
  {
    if (a1)
    {
      sub_1C592535C(0, &qword_1EDA45D48);
      v14 = a1;
      v15 = sub_1C5BCB744();

      if (v15)
      {
        return;
      }
    }

    else
    {
    }

LABEL_8:
    v16 = [objc_opt_self() defaultCenter];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C5BC8034();

    v17 = v27;
    sub_1C5BCB604();

    sub_1C592535C(0, &qword_1EDA4E620);
    v18 = sub_1C5BCB5A4();
    v27 = v18;
    v19 = sub_1C5BCB594();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_1C59315F8(&unk_1EDA4E0E0, MEMORY[0x1E6969F20]);
    sub_1C5931640();
    sub_1C5BC80D4();
    sub_1C59316A8(v6);

    (*(v25 + 8))(v9, v7);
    swift_allocObject();
    swift_weakInit();
    sub_1C5931710();
    v20 = sub_1C5BC8114();

    (*(v26 + 8))(v12, v10);
    *(v2 + OBJC_IVAR____TtC11MediaCoreUI23NowPlayingRouteObserver_routeDidChange) = v20;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C5BC8034();

    v21 = v27;
    v22 = [objc_allocWithZone(MEMORY[0x1E6970A20]) initWithGroupRoute:v27 outputDeviceRoute:0];
    v23 = [objc_opt_self() sharedController];
    [v23 setActiveDataSource_];

    return;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1C596C788()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1C596C8BC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_1EDA48120);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = *&v5[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image];
      *&v5[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_image] = v1;
      v7 = v1;

      sub_1C5B35FB4();
    }
  }
}

void sub_1C596C98C(unsigned __int8 *a1, void *a2)
{
  v4 = sub_1C5BC7DC4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = qword_1EDA48128;
    v9 = *(Strong + qword_1EDA48128);
    v10 = a2[3];
    __swift_project_boxed_opaque_existential_0(a2, v10);
    v11 = v9;
    v11[qword_1EDA481C8] = sub_1C596CB78(v10) & 1;
    sub_1C5932CD4();

    v12 = *&v7[v8];
    v12[qword_1EDA481C0] = v5;
    v13 = v12;
    sub_1C5932CD4();

    v14 = a2[3];
    __swift_project_boxed_opaque_existential_0(a2, v14);
    v15 = sub_1C596CB78(v14);
    v16 = *&v7[qword_1EDA480F0];
    if ((v15 & 1) != 0 && v5)
    {
      sub_1C5BCB6A4();
      sub_1C5BC7D94();
      sub_1C5BCB6B4();
    }

    else
    {
      sub_1C5BC7E04();
      v17 = v16;
      sub_1C5BCB6A4();
      sub_1C5BC7DB4();
      sub_1C5BCB6B4();
    }
  }
}

uint64_t sub_1C596CB78(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v6[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199CD0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = result;
    __swift_destroy_boxed_opaque_existential_0(v6);
    return v4;
  }

  return result;
}

void sub_1C596CC74(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1EDA48100);

    [v4 setHidden_];
  }
}

void sub_1C596CD08(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + qword_1EDA48120);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused;
      v5[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_isPaused] = v1;
      v7 = *&v5[OBJC_IVAR____TtC11MediaCoreUI16BackdropHostView_contentView];
      if (v7)
      {
        v8 = v7;
        if ([v8 isPaused] != v5[v6])
        {
          [v8 setPaused_];
          [v8 setEnableSetNeedsDisplay_];
        }
      }
    }
  }
}

uint64_t sub_1C596CDE8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *(result + 1);
  v4 = v3 << 8;
  v5 = v3 & 1;
  if (v4 == 512)
  {
    v5 = 2;
  }

  if (*a2)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v5 | v6;
  return result;
}

void sub_1C596CE64(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 2 || ((a1 ^ a2) & 1) != 0)
  {
    v8 = 0.0;
    if (a2)
    {
      v18 = &type metadata for Features;
      v9 = a1;
      v19 = sub_1C5A2E158();
      v10 = swift_allocObject();
      v17[0] = v10;
      *(v10 + 16) = "MediaCoreUI";
      *(v10 + 24) = 11;
      *(v10 + 32) = 2;
      *(v10 + 40) = "BackdropLUT";
      *(v10 + 48) = 11;
      *(v10 + 56) = 2;
      v11 = sub_1C5BC7C14();
      __swift_destroy_boxed_opaque_existential_0(v17);
      LOBYTE(a1) = v9;
      if (v11)
      {
        v12 = 0.1;
      }

      else
      {
        v12 = 0.4;
      }

      if (v11)
      {
        v13 = 0.5;
      }

      else
      {
        v13 = 0.7;
      }
    }

    else
    {
      v13 = 0.4;
      v12 = 0.0;
    }

    if (a1 != 2)
    {
      v8 = 0.2;
    }

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    *(v15 + 24) = a5;
    *(v15 + 32) = a3;
    *(v15 + 40) = v12;
    *(v15 + 48) = v13;
    v19 = sub_1C596D0E0;
    v20 = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C596D09C;
    v18 = &block_descriptor_25;
    v16 = _Block_copy(v17);

    [v14 animateWithDuration:v16 animations:v8];
    _Block_release(v16);
  }
}

uint64_t sub_1C596D054()
{

  return swift_deallocObject();
}

uint64_t sub_1C596D09C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C596D0F0(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_1EDA48108);

    v7 = sub_1C59343CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C5BD4D40;
    v9 = objc_opt_self();
    v10 = [v9 blackColor];
    v11 = [v10 colorWithAlphaComponent_];

    v12 = [v11 CGColor];
    type metadata accessor for CGColor(0);
    v14 = v13;
    *(v8 + 56) = v13;
    *(v8 + 32) = v12;
    v15 = [v9 blackColor];
    v16 = [v15 colorWithAlphaComponent_];

    v17 = [v16 CGColor];
    *(v8 + 88) = v14;
    *(v8 + 64) = v17;
    v18 = sub_1C5BCB044();

    [v7 setColors_];
  }
}

uint64_t sub_1C596D2EC(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_1C5BCADB4();
  if (v4)
  {
    result = swift_beginAccess();
    *(v2 + 56) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C596D460();
  }

  return result;
}

uint64_t sub_1C596D544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_1C596D5D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C596D648(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[0] = *a1;
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  sub_1C596D6D0(v10);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  return result;
}

uint64_t sub_1C596D6D0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 48);
  result = swift_beginAccess();
  v10 = *(v1 + 72);
  if (v10 == 2)
  {
    if (v8 == 2)
    {
      return result;
    }

LABEL_6:
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C592C1AC(&qword_1EDA4A740, v12, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  v11 = *(v1 + 40);
  v18[0] = *(v1 + 24);
  v18[1] = v11;
  v18[2] = *(v1 + 56);
  v19 = v10;
  if (v8 == 2)
  {
    goto LABEL_6;
  }

  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v5;
  v14 = v4 & 1;
  v15 = v6;
  v16 = v7;
  v17 = v8 & 1;
  result = _s11MediaCoreUI19NowPlayingViewModelC16DurationSnapshotV2eeoiySbAE_AEtFZ_0(v18, v13);
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_1C596D7EC(char a1)
{
  v2 = v1;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C5BC7D64();
  __swift_project_value_buffer(v4, qword_1EDA5DA78);

  v5 = sub_1C5BC7D44();
  v6 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 1024;
    swift_beginAccess();
    *(v7 + 10) = *(v2 + 177);

    _os_log_impl(&dword_1C5922000, v5, v6, "ViewModel.isPlaying was changed from %{BOOL}d to %{BOOL}d", v7, 0xEu);
    MEMORY[0x1C69510F0](v7, -1, -1);
  }

  else
  {
  }

  v8 = sub_1C5BCAB14();
  sub_1C596D96C(v8, 1);

  sub_1C596DD10();
}

uint64_t sub_1C596D96C(uint64_t a1, char a2)
{

  sub_1C5BC8424();
  if (qword_1EDA48E80 != -1)
  {
    swift_once();
  }

  MEMORY[0x1C694C640](qword_1EDA48E88, 0);
  MEMORY[0x1C694C620](((a2 & 1u) + 1) | 0x290000);
  sub_1C5BC8B14();
}

double sub_1C596DA60()
{
  UIAnimationDragCoefficient();
  result = (0.0083333 / v0);
  qword_1EDA48E88 = *&result;
  return result;
}

uint64_t sub_1C596DAB0(uint64_t a1)
{
  v1 = a1;
  v2 = *(*(a1 + 72) + 120);
  swift_beginAccess();
  LOBYTE(v1) = *(v1 + 177);
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();

  return sub_1C596DB84(v1, v2, KeyPath, v4);
}

uint64_t sub_1C596DBCC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v15[0] = a2;
  v11 = a1 & 1;

  swift_getAtKeyPath();

  if (v16 == v11)
  {
  }

  else
  {
    a5(0);
    sub_1C5B3F1D8(a6, a7);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v16 = a2;

    v12 = swift_modifyAtReferenceWritableKeyPath();
    *v13 = v11;
    v12(v15, 0);
  }
}

void sub_1C596DD10()
{
  swift_beginAccess();
  v1 = *(v0 + 177);
  swift_beginAccess();
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 104);
    if (v2)
    {
      swift_beginAccess();
      v4 = *(v3 + 33);
      swift_getKeyPath();
      swift_getKeyPath();

      v5 = 2;
    }

    else
    {
      swift_beginAccess();
      v4 = *(v3 + 33);
      swift_getKeyPath();
      swift_getKeyPath();

      v5 = 1;
    }
  }

  else
  {
    v3 = *(v0 + 104);
    swift_beginAccess();
    v4 = *(v3 + 33);
    swift_getKeyPath();
    swift_getKeyPath();

    v5 = 0;
  }

  sub_1C596DEA4(v5, v3);
  sub_1C596E0BC(v4);
}

uint64_t sub_1C596DE58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_1C596DEA4(char a1, uint64_t a2)
{
  v14[0] = a2;

  swift_getAtKeyPath();

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6573756170;
    }

    else
    {
      v4 = 1886352499;
    }

    if (a1 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 2036427888;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6573756170;
  if (v15 != 1)
  {
    v7 = 1886352499;
    v6 = 0xE400000000000000;
  }

  if (v15)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2036427888;
  }

  if (v15)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
  }

  else
  {
    v10 = sub_1C5BCBDE4();

    if ((v10 & 1) == 0)
    {
      _s17TransportControlsCMa();
      sub_1C5B3F1D8(&qword_1EDA4A620, _s17TransportControlsCMa);
      sub_1C5BC7F14();
      sub_1C5BC7FA4();

      v15 = a2;

      v11 = swift_modifyAtReferenceWritableKeyPath();
      *v12 = a1;
      v11(v14, 0);
    }
  }
}

void sub_1C596E0BC(char a1)
{
  swift_beginAccess();
  v3 = 0xE500000000000000;
  v4 = 0x6573756170;
  if (*(v1 + 33) != 1)
  {
    v4 = 1886352499;
    v3 = 0xE400000000000000;
  }

  if (*(v1 + 33))
  {
    v5 = v4;
  }

  else
  {
    v5 = 2036427888;
  }

  if (*(v1 + 33))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x6573756170;
    }

    else
    {
      v7 = 1886352499;
    }

    if (a1 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0xE400000000000000;
    if (v5 != 2036427888)
    {
      goto LABEL_21;
    }
  }

  if (v6 == v8)
  {

    return;
  }

LABEL_21:
  v9 = sub_1C5BCBDE4();

  if ((v9 & 1) == 0)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C5BC7D64();
    __swift_project_value_buffer(v10, qword_1EDA5DA78);

    v11 = v1;
    v12 = sub_1C5BC7D44();
    v13 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446466;
      if (a1)
      {
        if (a1 == 1)
        {
          v16 = 0x6573756170;
        }

        else
        {
          v16 = 1886352499;
        }

        if (a1 == 1)
        {
          v17 = 0xE500000000000000;
        }

        else
        {
          v17 = 0xE400000000000000;
        }
      }

      else
      {
        v17 = 0xE400000000000000;
        v16 = 2036427888;
      }

      v18 = sub_1C592ADA8(v16, v17, &v24);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = 0xE500000000000000;
      v20 = 0x6573756170;
      if (*(v11 + 33) != 1)
      {
        v20 = 1886352499;
        v19 = 0xE400000000000000;
      }

      if (*(v11 + 33))
      {
        v21 = v20;
      }

      else
      {
        v21 = 2036427888;
      }

      if (*(v11 + 33))
      {
        v22 = v19;
      }

      else
      {
        v22 = 0xE400000000000000;
      }

      v23 = sub_1C592ADA8(v21, v22, &v24);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1C5922000, v12, v13, "TransportControls.center button changed from %{public}s to %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v15, -1, -1);
      MEMORY[0x1C69510F0](v14, -1, -1);
    }
  }
}

uint64_t static NowPlayingArtworkTreatment<>.standard.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C592CFE4(&unk_1F45138D0);
  *a1 = result;
  return result;
}

uint64_t sub_1C596E404@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5BC8034();

  *a1 = v3;
  return result;
}

uint64_t sub_1C596E488(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1C5BC8044();
}

double static NowPlayingViewModel.LeadingTransportButtonConfiguration.seekBackward15.getter@<D0>(uint64_t a1@<X8>)
{
  result = 3.29257015e161;
  *a1 = xmmword_1C5BEF370;
  *(a1 + 16) = 0;
  return result;
}

double static NowPlayingViewModel.TrailingTransportButtonConfiguration.seekForward30.getter@<D0>(uint64_t a1@<X8>)
{
  result = 9.31739788e242;
  *a1 = xmmword_1C5BEF3D0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1C596E5D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(v4 + 104);
  v8 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();

  return a4(v5, v6, v8, v7, KeyPath, v10);
}

uint64_t sub_1C596E698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), void (*a8)(uint64_t, uint64_t, uint64_t))
{
  v31 = a4;
  v14 = ~a3;

  swift_getAtKeyPath();

  if (!v14)
  {
    if (v30 == 255)
    {
      a7(v28, v29, 255);
      a7(a1, a2, 255);
      v23 = a1;
      v24 = a2;
      v25 = 255;
      goto LABEL_19;
    }

    a7(v28, v29, v30);
    a7(a1, a2, 255);
LABEL_10:
    a8(a1, a2, a3);
    v15 = v28;
    v16 = v29;
    v17 = v30;
    goto LABEL_11;
  }

  if (v30 == 255)
  {
    a7(v28, v29, 255);
    a7(a1, a2, a3);
    a7(a1, a2, a3);
    sub_1C5950CE4();
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (v30)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v30)
  {
LABEL_13:
    if (v28 == a1 && v29 == a2)
    {
      a7(a1, a2, v30);
      a7(a1, a2, a3);
      a7(a1, a2, a3);
      a8(a1, a2, v30);
    }

    else
    {
      v26 = sub_1C5BCBDE4();
      a7(v28, v29, v30);
      a7(a1, a2, a3);
      a7(a1, a2, a3);
      a8(v28, v29, v30);
      if ((v26 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    sub_1C5950CE4();
    v23 = a1;
    v24 = a2;
    v25 = a3;
LABEL_19:
    a8(v23, v24, v25);
    a8(v28, v29, v30);
    a8(a1, a2, a3);
  }

LABEL_5:
  a7(v28, v29, v30);
  a7(a1, a2, a3);
  a7(a1, a2, a3);
  a8(v28, v29, v30);
LABEL_6:
  sub_1C5950CE4();
  v15 = a1;
  v16 = a2;
  v17 = a3;
LABEL_11:
  a8(v15, v16, v17);
  a8(v28, v29, v30);
  _s17TransportControlsCMa();
  sub_1C5B3F1D8(&qword_1EDA4A620, _s17TransportControlsCMa);
  sub_1C5BC7F14();
  sub_1C5BC7FA4();

  v31 = a4;

  v18 = swift_modifyAtReferenceWritableKeyPath();
  v20 = *v19;
  v21 = v19[1];
  *v19 = a1;
  v19[1] = a2;
  v22 = *(v19 + 16);
  *(v19 + 16) = a3;
  a8(v20, v21, v22);
  v18(&v28, 0);
}

uint64_t sub_1C596EAC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C5950CE4();
  }

  return result;
}

uint64_t sub_1C596EBE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int64_t a5)
{
  v7 = v5;
  swift_getKeyPath();
  v70 = v5;
  sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa);
  sub_1C5BC7B74();

  v10 = *(v5 + 16);
  if (v10 >> 62)
  {
    v11 = sub_1C5BCB984();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v67 = a5;
  v68 = a1;
  if (v11)
  {
    v70 = MEMORY[0x1E69E7CC0];

    sub_1C5B8F088(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_56:
      swift_once();
      goto LABEL_23;
    }

    v13 = 0;
    v12 = v70;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1C694FD20](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      swift_beginAccess();
      v16 = v14[2];
      v15 = v14[3];
      v17 = v14[4];
      v18 = v14[5];

      v70 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C5B8F088((v19 > 1), v20 + 1, 1);
        v12 = v70;
      }

      ++v13;
      *(v12 + 16) = v20 + 1;
      v21 = (v12 + 32 * v20);
      v21[4] = v16;
      v21[5] = v15;
      v21[6] = v17;
      v21[7] = v18;
    }

    while (v11 != v13);

    a5 = v67;
    a1 = v68;
  }

  v22 = sub_1C5A4A200(a1, v12);

  swift_getKeyPath();
  v70 = v7;
  sub_1C5BC7B74();

  v24 = *(v7 + 48);
  LOBYTE(v11) = v24 == 0;
  if (a5)
  {
    v25 = 1702195828;
    if (v24)
    {
      v26 = *(v7 + 24);
      v27 = *(v7 + 32);
      v28 = *(v7 + 40);
      sub_1C59AEE34(v26, v27, *(v7 + 40) & 1);

      LOBYTE(v70) = a4 & 1;
      LODWORD(v11) = sub_1C5BC9C04();
      sub_1C5953BD8(v26, v27, v28 & 1);

      if (v22 & v11)
      {
        return result;
      }

      v65 = v22;
      LOBYTE(v11) = (v22 ^ 1) & v11;
    }

    else
    {
      v65 = v22;
      LOBYTE(v11) = 0;
    }

    v29 = 0xE400000000000000;
  }

  else
  {
    if (((v24 == 0) & v22) != 0)
    {
      return result;
    }

    v65 = v22;
    v25 = 0x65736C6166;
    v29 = 0xE500000000000000;
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD00000000000001BLL, 0x80000001C5BF8860);
  v73 = *(a1 + 16);
  a5 = v73;
  v30 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v30);

  MEMORY[0x1C694F170](0xD000000000000019, 0x80000001C5BF8880);
  MEMORY[0x1C694F170](v25, v29);

  MEMORY[0x1C694F170](46, 0xE100000000000000);
  a1 = 0;
  v6 = 0xE000000000000000;
  if (!v73)
  {
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v46 = sub_1C5BC7D64();
    __swift_project_value_buffer(v46, qword_1EDA5DA78);

    v47 = sub_1C5BC7D44();
    v48 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136446210;
      v51 = sub_1C592ADA8(0, 0xE000000000000000, &v70);

      *(v49 + 4) = v51;
      _os_log_impl(&dword_1C5922000, v47, v48, "%{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1C69510F0](v50, -1, -1);
      MEMORY[0x1C69510F0](v49, -1, -1);
    }

    else
    {
    }

    v56 = v68;
    goto LABEL_36;
  }

  if (qword_1EDA469E0 != -1)
  {
    goto LABEL_56;
  }

LABEL_23:
  v31 = sub_1C5BC7D64();
  __swift_project_value_buffer(v31, qword_1EDA5DA78);

  v32 = sub_1C5BC7D44();
  v33 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v32, v33))
  {
    v63 = v33;
    v64 = v11;
    v34 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v73 = v62;
    *v34 = 136446466;
    v35 = sub_1C592ADA8(a1, v6, &v73);

    *(v34 + 4) = v35;
    *(v34 + 12) = 2082;
    v69 = MEMORY[0x1E69E7CC0];
    sub_1C594A39C(0, a5, 0);
    v36 = v69;
    v37 = (v68 + 48);
    v38 = a5;
    do
    {
      v39 = *(v37 - 1);
      v70 = *(v37 - 2);
      v71 = v39;
      v72 = *v37;
      v40 = sub_1C5A58314();
      v69 = v36;
      v43 = *(v36 + 16);
      v42 = *(v36 + 24);
      if (v43 >= v42 >> 1)
      {
        v61 = v40;
        v45 = v41;
        sub_1C594A39C((v42 > 1), v43 + 1, 1);
        v41 = v45;
        v40 = v61;
        v36 = v69;
      }

      *(v36 + 16) = v43 + 1;
      v44 = v36 + 16 * v43;
      *(v44 + 32) = v40;
      *(v44 + 40) = v41;
      v37 += 2;
      --v38;
    }

    while (v38);
    v70 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192888);
    sub_1C5924F54(&qword_1EDA45EB0, &qword_1EC192888);
    v52 = sub_1C5BCAD74();
    v54 = v53;

    v55 = sub_1C592ADA8(v52, v54, &v73);

    *(v34 + 14) = v55;
    _os_log_impl(&dword_1C5922000, v32, v63, "%{public}s\n\n%{public}s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v62, -1, -1);
    MEMORY[0x1C69510F0](v34, -1, -1);

    v56 = v68;
    LOBYTE(v11) = v64;
  }

  else
  {

    v56 = v68;
  }

LABEL_36:
  swift_getKeyPath();
  v70 = v7;
  sub_1C5BC7B74();

  if (*(v7 + 56) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v70 = v7;
    sub_1C5BC7B64();
  }

  if ((v65 & 1) == 0)
  {
    v73 = MEMORY[0x1E69E7CC0];
    if (a5)
    {
      v58 = (v56 + 48);
      do
      {
        v59 = *(v58 - 1);
        v70 = *(v58 - 2);
        v71 = v59;
        v72 = *v58;

        sub_1C5A585F8(&v70, &v69);

        if (v69)
        {
          MEMORY[0x1C694F270](v60);
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C5BCB094();
          }

          sub_1C5BCB0E4();
        }

        v58 += 2;
        --a5;
      }

      while (a5);
    }

    if (qword_1EC1906F0 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EC194EB0);
    sub_1C5BC87F4();
  }

  if ((v11 & 1) == 0)
  {
    if (qword_1EC1906F0 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EC194EB0);
    return sub_1C5BC87F4();
  }

  return result;
}

uint64_t sub_1C596F708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  v12 = v4[5];
  v11 = v4[6];
  if (!v11)
  {
    if (!a4)
    {
      v14 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937938(qword_1EDA4AB40, _s13TrackSectionsCMa);
    sub_1C5BC7B64();
    sub_1C596F908(a1, a2, a3, a4);
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  sub_1C59AEE34(v4[3], v4[4], v12 & 1);

  v13 = sub_1C5BC9C04();
  sub_1C596F908(v9, v10, v12, v11);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = v4[3];
  v10 = v4[4];
  v12 = v4[5];
  v14 = v4[6];
LABEL_8:
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;

  return sub_1C596F908(v9, v10, v12, v14);
}

uint64_t sub_1C596F908(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C5953BD8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C596F94C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C59AEE34(result, a2, a3 & 1);
  }

  return result;
}

uint64_t NowPlayingViewModel.Metrics.on(_:for:handler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v9 + 16);
  *(v9 + 16) = 0x8000000000000000;
  v14 = sub_1C596FBD8(v8, v7);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(a3) = v13;
  if (v12[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v9 + 16) = v12;
      if ((v13 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_8:

LABEL_13:
      v25 = v12[7];
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v25 + 8 * v14);
      *(v25 + 8 * v14) = 0x8000000000000000;
      sub_1C5970A48(sub_1C5B3D038, v10, v26);
      *(v25 + 8 * v14) = v28;
      return swift_endAccess();
    }

LABEL_10:
    sub_1C5AF616C();
    *(v9 + 16) = v12;
    if ((a3 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  sub_1C596FCA0(v17, isUniquelyReferenced_nonNull_native);
  v18 = sub_1C596FBD8(v8, v7);
  if ((a3 & 1) != (v19 & 1))
  {
    goto LABEL_15;
  }

  v14 = v18;
  *(v9 + 16) = v12;
  if (a3)
  {
    goto LABEL_8;
  }

LABEL_11:
  v20 = sub_1C5970708(MEMORY[0x1E69E7CC0]);
  v12[(v14 >> 6) + 8] |= 1 << v14;
  v21 = (v12[6] + 16 * v14);
  *v21 = v8;
  v21[1] = v7;
  *(v12[7] + 8 * v14) = v20;
  v22 = v12[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    v12[2] = v24;
    goto LABEL_13;
  }

  __break(1u);
LABEL_15:
  result = sub_1C5BCBE84();
  __break(1u);
  return result;
}

uint64_t sub_1C596FB90()
{

  return swift_deallocObject();
}

uint64_t sub_1C596FC1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  v5 = sub_1C5BCBF94();

  return a3(a1, a2, v5);
}

uint64_t sub_1C596FCA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191828);
  v34 = a2;
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      sub_1C5BCAF04();
      result = sub_1C5BCBF94();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1C596FF48(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 177);
  *(v1 + 177) = a1;
  sub_1C596D7EC(v3);
}

unint64_t sub_1C596FFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C5BCBDE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C5970074()
{
  v1 = v0;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C5BC7D64();
  __swift_project_value_buffer(v2, qword_1EDA5DA78);
  v3 = sub_1C5BC7D44();
  v4 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5922000, v3, v4, "NowPlayingViewModel clearing current item", v5, 2u);
    MEMORY[0x1C69510F0](v5, -1, -1);
  }

  sub_1C59704F4();
  sub_1C5971548();
  v6 = v1[13];
  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();

  sub_1C5971FE0(0, v6, KeyPath, v8);
  v9 = v1[11];
  if (*(v9 + 16))
  {
    v10 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v10);
    *&v15[0] = v9;
    sub_1C5B906C0(&qword_1EDA4B230, _s11ContextMenuCMa);
    sub_1C5BC7B64();
  }

  else
  {
    *(v9 + 16) = 0;
  }

  v11 = v1[9];
  v12 = sub_1C592CFE4(&unk_1F4518BD0);
  sub_1C5972918(v12, v11);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C5BC8044();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C5BC8044();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C592CB84(v15, v14);

  sub_1C5BC8044();
  return sub_1C5924EF4(v15, &qword_1EC1929B0);
}

uint64_t sub_1C5970398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 57);
  return result;
}

uint64_t sub_1C59704F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C59707FC(0, 0, v0);
  if (qword_1EDA4AEA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDA5DB08;
  v2 = unk_1EDA5DB10;
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();

  sub_1C59709E4(v1, v2, v0, KeyPath, v4);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C5971010(MEMORY[0x1E69E7CC0], v0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1C59707FC(0, 0, v0);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C59713E8(0, v0);
}

unint64_t sub_1C59706B4()
{
  result = qword_1EDA49A40;
  if (!qword_1EDA49A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA49A40);
  }

  return result;
}

unint64_t sub_1C5970708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191830);
  v3 = sub_1C5BCBC74();
  v13 = *(a1 + 32);
  result = sub_1C5970D3C();
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v3 + 56) + 16 * result) = v13;
    v8 = *(v3 + 16);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    *(v3 + 16) = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_1C5970D3C();
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C59707FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = a3;

  swift_getAtKeyPath();

  if (!a2)
  {
    if (!v11)
    {
    }

    goto LABEL_11;
  }

  if (!v11)
  {
LABEL_11:
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C5B3F1D8(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v12 = a3;

    v7 = swift_modifyAtReferenceWritableKeyPath();
    *v8 = a1;
    v8[1] = a2;

    v7(&v10, 0);
  }

  if (v10 != a1 || v11 != a2)
  {
    v6 = sub_1C5BCBDE4();

    if (v6)
    {

      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_10:
}

unint64_t sub_1C5970A48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1C5970D3C();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1C5970D94(v14, a3 & 1);
      result = sub_1C5970D3C();
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1C5BCBE84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1C5AF6014();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    *(v19 + 8 * (result >> 6) + 64) |= 1 << result;
    v21 = (*(v19 + 56) + 16 * result);
    *v21 = a1;
    v21[1] = a2;
    v22 = *(v19 + 16);
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      *(v19 + 16) = v23;
      return result;
    }

    goto LABEL_15;
  }

  v20 = (*(v19 + 56) + 16 * result);
  *v20 = a1;
  v20[1] = a2;
}

uint64_t sub_1C5970B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), unint64_t *a7, void (*a8)(uint64_t))
{
  v20 = a3;

  swift_getAtKeyPath();

  if (v19[0] == a1 && v19[1] == a2)
  {
  }

  v15 = sub_1C5BCBDE4();

  if (v15)
  {
  }

  a6(0);
  sub_1C5B3F1D8(a7, a8);
  sub_1C5BC7F14();
  sub_1C5BC7FA4();

  v20 = a3;

  v17 = swift_modifyAtReferenceWritableKeyPath();
  *v18 = a1;
  v18[1] = a2;

  v17(v19, 0);
}

uint64_t sub_1C5970D3C()
{
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](0);
  v0 = sub_1C5BCBF94();

  return sub_1C5971338(v0);
}

uint64_t sub_1C5970D94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191830);
  result = sub_1C5BCBC64();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v27 = *(*(v5 + 56) + 16 * (v16 | (v8 << 6)));
      if ((a2 & 1) == 0)
      {
      }

      sub_1C5BCBF54();
      MEMORY[0x1C69501A0](0);
      result = sub_1C5BCBF94();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v14 + 8 * v21);
          if (v25 != -1)
          {
            v15 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 56) + 16 * v15) = v27;
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
      v26 = 1 << *(v5 + 32);
      if (v26 >= 64)
      {
        bzero((v5 + 64), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v26;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1C5971010(uint64_t a1, uint64_t a2)
{
  v8[0] = a2;

  swift_getAtKeyPath();

  v4 = sub_1C597118C(a1, v9);

  if (v4)
  {
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C5B3F1D8(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v9 = a2;

    v6 = swift_modifyAtReferenceWritableKeyPath();
    *v7 = a1;

    v6(v8, 0);
  }
}

uint64_t sub_1C597118C(uint64_t result, uint64_t a2)
{
  v10 = result;
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    v4 = *(v10 + v3 + 56);
    v5 = *(v10 + v3 + 64);
    v7 = *(a2 + v3 + 48);
    v6 = *(a2 + v3 + 56);
    v8 = *(a2 + v3 + 64);
    v14 = *(v10 + v3 + 48);
    v9 = *(v10 + v3 + 32) == *(a2 + v3 + 32) && *(v10 + v3 + 40) == *(a2 + v3 + 40);
    if (!v9 && (sub_1C5BCBDE4() & 1) == 0)
    {
      return 0;
    }

    v12 = v2;

    sub_1C59AEE34(v14, v4, v5);

    sub_1C59AEE34(v7, v6, v8);

    v13 = sub_1C5BC9C04();

    sub_1C5953BD8(v7, v6, v8);

    sub_1C5953BD8(v14, v4, v5);

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    v3 += 48;
    --v2;
    if (v12 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5971364(char *a1, uint64_t a2)
{
  v2 = *a1;
  v6 = *(a2 + 32);
  v5 = *(a2 + 32);
  v4[23] = v2;
  sub_1C59400B0(&v6, v4, &qword_1EC198EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EC0);
  sub_1C5BCA6A4();
}

uint64_t sub_1C59713E8(char a1, uint64_t a2)
{
  v7[0] = a2;

  swift_getAtKeyPath();

  if (v8 == (a1 & 1))
  {
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C5B3F1D8(qword_1EDA4A8C8, type metadata accessor for NowPlayingViewModel.PrimaryMetadata);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v8 = a2;

    v4 = swift_modifyAtReferenceWritableKeyPath();
    *v5 = a1 & 1;
    v4(v7, 0);
  }
}

uint64_t sub_1C5971548()
{
  if (qword_1EDA4AEA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDA5DB08;
  v2 = unk_1EDA5DB10;
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();

  sub_1C5971730(v1, v2, v0, KeyPath, v4);
  memset(v7, 0, sizeof(v7));
  v8 = -1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C59400B0(v7, v6, &qword_1EC192770);

  sub_1C5971800(v6, v0);
  sub_1C5924EF4(v7, &qword_1EC192770);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C5971E8C(0, v0);
}

uint64_t sub_1C59716C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1C59400B0(v3 + 40, a2, &qword_1EC192770);
}

uint64_t sub_1C5971800(uint64_t a1, uint64_t a2)
{
  v15[7] = a2;

  swift_getAtKeyPath();

  sub_1C5971B18(a1, v11);
  sub_1C5971B18(v15, v13);
  if (v12 == 255)
  {
    if (v14 == 255)
    {
      sub_1C5924EF4(v11, &qword_1EC192770);
      sub_1C5924EF4(v15, &qword_1EC192770);
      goto LABEL_7;
    }

LABEL_9:
    sub_1C5924EF4(v11, &qword_1EC1988A0);
    sub_1C5924EF4(v15, &qword_1EC192770);
LABEL_10:
    _s18MiniPlayerMetadataCMa();
    sub_1C5B3F1D8(qword_1EDA4A4D8, _s18MiniPlayerMetadataCMa);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v15[0] = a2;

    v5 = swift_modifyAtReferenceWritableKeyPath();
    sub_1C5B3F168(a1, v6);
    v5(v11, 0);

    sub_1C5924EF4(a1, &qword_1EC192770);
  }

  sub_1C5971B18(v11, v10);
  if (v14 == 255)
  {
    sub_1C59E6580(v10);
    goto LABEL_9;
  }

  v8[0] = v13[0];
  v8[1] = v13[1];
  v8[2] = v13[2];
  v9 = v14;
  v4 = sub_1C59E5CF8(v10, v8);
  sub_1C59E6580(v8);
  sub_1C59E6580(v10);
  sub_1C5924EF4(v11, &qword_1EC192770);
  sub_1C5924EF4(v15, &qword_1EC192770);
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_1C5924EF4(a1, &qword_1EC192770);
}

uint64_t sub_1C5971AA4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _CAPackageView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1C5971B18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C5971BA0(uint64_t *a1)
{
  v2 = type metadata accessor for _CAPackageView();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = a1[3];
  v9 = *(v8 + 40);
  if (!v9)
  {
LABEL_8:
    v21 = a1[1];
    if (!v21)
    {
      return;
    }

    goto LABEL_9;
  }

  v10 = *(v8 + 32);
  v11 = qword_1EDA46990;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1C5BC7D64();
  __swift_project_value_buffer(v12, qword_1EDA5DA60);
  sub_1C5967CB0(a1, v7);
  sub_1C5967CB0(a1, v5);

  v13 = sub_1C5BC7D44();
  v14 = sub_1C5BCB4F4();

  if (!os_log_type_enabled(v13, v14))
  {

    sub_1C5972028(v5);
    sub_1C5972028(v7);
    goto LABEL_8;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v27 = v16;
  *v15 = 136446722;
  v17 = sub_1C592ADA8(v10, v9, &v27);

  *(v15 + 4) = v17;
  *(v15 + 12) = 2082;
  v18 = *(v7 + 3);
  if (*(v18 + 24))
  {
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
  }

  else
  {
    v19 = 7104878;
    v20 = 0xE300000000000000;
  }

  sub_1C5972028(v7);
  v22 = sub_1C592ADA8(v19, v20, &v27);

  *(v15 + 14) = v22;
  *(v15 + 22) = 2082;
  if (v5[1])
  {
    v23 = *v5;
    v24 = v5[1];
  }

  else
  {
    v23 = 7104878;
    v24 = 0xE300000000000000;
  }

  sub_1C5972028(v5);
  v25 = sub_1C592ADA8(v23, v24, &v27);

  *(v15 + 24) = v25;
  _os_log_impl(&dword_1C5922000, v13, v14, "%{public}s: %{public}s CAPackageView appeared, updating state to %{public}s", v15, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1C69510F0](v16, -1, -1);
  MEMORY[0x1C69510F0](v15, -1, -1);

  v21 = a1[1];
  if (v21)
  {
LABEL_9:
    sub_1C5972084(*a1, v21);
  }
}

uint64_t sub_1C5971E8C(unsigned __int8 a1, uint64_t a2)
{
  v7[0] = a2;

  swift_getAtKeyPath();

  if (v8 == a1)
  {
  }

  else
  {
    _s18MiniPlayerMetadataCMa();
    sub_1C5B3F1D8(qword_1EDA4A4D8, _s18MiniPlayerMetadataCMa);
    sub_1C5BC7F14();
    sub_1C5BC7FA4();

    v8 = a2;

    v4 = swift_modifyAtReferenceWritableKeyPath();
    *v5 = a1;
    v4(v7, 0);
  }
}

uint64_t sub_1C5972028(uint64_t a1)
{
  v2 = type metadata accessor for _CAPackageView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5972084(uint64_t a1, unint64_t a2)
{
  v3 = v2[6];
  if (!v3)
  {
    return;
  }

  v4 = v2[7];
  if (!v4)
  {
    return;
  }

  v45 = v3;
  v44 = [v4 rootLayer];
  if (v44)
  {
    v7 = sub_1C5BCAE44();
    v8 = [v44 stateWithName_];

    if (v8)
    {
      v44 = v44;
      v9 = [v45 stateOfLayer_];
      if (v9)
      {
        v10 = v9;
        sub_1C592535C(0, &qword_1EDA45DA8);
        v11 = v8;
        v12 = v2;
        v13 = sub_1C5BCB744();

        if (v13)
        {

          v14 = v2[5];
          if (v14)
          {
            v15 = v2[4];
            v16 = qword_1EDA46990;

            if (v16 != -1)
            {
              swift_once();
            }

            v17 = sub_1C5BC7D64();
            __swift_project_value_buffer(v17, qword_1EDA5DA60);

            v18 = sub_1C5BC7D44();
            v19 = sub_1C5BCB4F4();

            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              v21 = swift_slowAlloc();
              v46 = v21;
              *v20 = 136446722;
              v22 = sub_1C592ADA8(v15, v14, &v46);

              *(v20 + 4) = v22;
              *(v20 + 12) = 2082;
              if (v12[3])
              {
                v23 = v12[2];
                v24 = v12[3];
              }

              else
              {
                v23 = 7104878;
                v24 = 0xE300000000000000;
              }

              v43 = sub_1C592ADA8(v23, v24, &v46);

              *(v20 + 14) = v43;
              *(v20 + 22) = 2082;
              *(v20 + 24) = sub_1C592ADA8(a1, a2, &v46);
              _os_log_impl(&dword_1C5922000, v18, v19, "%{public}s: %{public}s ViewState ignoring update to %{public}s: state already set", v20, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1C69510F0](v21, -1, -1);
              MEMORY[0x1C69510F0](v20, -1, -1);

              return;
            }
          }

          goto LABEL_24;
        }
      }

      else
      {
        v26 = v8;
      }

      v27 = v2[5];
      if (v27)
      {
        v28 = v2[4];
        v29 = qword_1EDA46990;

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = sub_1C5BC7D64();
        __swift_project_value_buffer(v30, qword_1EDA5DA60);

        v31 = v2;
        v32 = sub_1C5BC7D44();
        v33 = sub_1C5BCB4F4();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v46 = v35;
          *v34 = 136446722;
          v36 = sub_1C592ADA8(v28, v27, &v46);

          *(v34 + 4) = v36;
          *(v34 + 12) = 2082;
          if (v31[3])
          {
            v37 = v31[2];
            v38 = v31[3];
          }

          else
          {
            v37 = 7104878;
            v38 = 0xE300000000000000;
          }

          v40 = sub_1C592ADA8(v37, v38, &v46);

          *(v34 + 14) = v40;
          *(v34 + 22) = 2082;
          *(v34 + 24) = sub_1C592ADA8(a1, a2, &v46);
          _os_log_impl(&dword_1C5922000, v32, v33, "%{public}s: %{public}s ViewState updating stateController to %{public}s", v34, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v35, -1, -1);
          MEMORY[0x1C69510F0](v34, -1, -1);
        }

        else
        {
        }
      }

      v41 = [objc_opt_self() areAnimationsEnabled];
      v42 = 0.0;
      if (v41)
      {
        *&v42 = 1.0;
      }

      [v45 setState:v8 ofLayer:v44 transitionSpeed:v42];

      v25 = v44;
    }

    else
    {
      v25 = v45;
    }

    v39 = v44;
    goto LABEL_32;
  }

LABEL_24:
  v39 = v45;
LABEL_32:
}

uint64_t sub_1C597262C(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ArtworkCornerStyle(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-v10];
  v12 = *a1;
  if (*(a1 + 8) == 1)
  {
    v21 = *a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v12, 0);
    (*(v3 + 8))(v5, v2);
    LOBYTE(v12) = v21;
  }

  v20 = v12;
  v14 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    v19 = *(a1 + 64);
  }

  else
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v14, 0);
    (*(v3 + 8))(v5, v2);
    LOBYTE(v14) = v19;
  }

  v18 = v14;
  sub_1C5972A60(&v20, &v18, v11);
  type metadata accessor for ArtworkCornerModifier(0);
  sub_1C5945830(v11, v9, type metadata accessor for ArtworkCornerStyle);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC196DE8);
  sub_1C5BCA6A4();
  return sub_1C5945898(v11, type metadata accessor for ArtworkCornerStyle);
}

uint64_t sub_1C5972918(uint64_t a1, uint64_t a2)
{
  v9 = &type metadata for NowPlayingStandardArtworkTreatment;
  v10 = sub_1C5928464();
  *&v8 = a1;
  swift_beginAccess();
  sub_1C59318C8(a2 + 16, v6);
  v4 = v7;
  __swift_project_boxed_opaque_existential_0(v6, v7);
  LOBYTE(v4) = NowPlayingArtworkTreatment.isEqual(_:)(&v8, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  if ((v4 & 1) == 0)
  {
    sub_1C5B8FC18(v8, *(a2 + 56), a2);
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(a2 + 16);
  sub_1C596A0A8(&v8, a2 + 16);
  return swift_endAccess();
}

uint64_t sub_1C5972A60@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      v10 = v3;
      sub_1C59416B4(v24);
      v11 = v25;
      __swift_project_boxed_opaque_existential_0(v24, v25);
      if (sub_1C596CB78(v11))
      {
        v12 = *(v10 + 80);
        if (!v12)
        {
          _s14DefaultArtworkCMa();
          sub_1C5AC3CD8(qword_1EDA49E00, _s14DefaultArtworkCMa);
          result = sub_1C5BC8C74();
          __break(1u);
          return result;
        }

        swift_beginAccess();
        v13 = *(v12 + 16);
        __swift_destroy_boxed_opaque_existential_0(v24);
        if (v13)
        {
          if (qword_1EC190818 != -1)
          {
            swift_once();
          }

          v14 = type metadata accessor for ArtworkCornerStyle(0);
          v15 = qword_1EC1A6CE8;
LABEL_18:
          v20 = __swift_project_value_buffer(v14, v15);
          return sub_1C5945830(v20, a3, type metadata accessor for ArtworkCornerStyle);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v24);
      }

      v21 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
      v22 = *MEMORY[0x1E697F480];
      v23 = sub_1C5BC9044();
      result = (*(*(v23 - 8) + 104))(a3 + v21, v22, v23);
      v9 = 0x4024000000000000;
      goto LABEL_21;
    }

    if (qword_1EC190810 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for ArtworkCornerStyle(0);
    v15 = qword_1EC1A6CD0;
    goto LABEL_18;
  }

  if (*a1 - 2 < 2)
  {
    v5 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
    v6 = *MEMORY[0x1E697F468];
    v7 = sub_1C5BC9044();
    result = (*(*(v7 - 8) + 104))(a3 + v5, v6, v7);
    v9 = 0x401A000000000000;
LABEL_21:
    *a3 = v9;
    return result;
  }

  if (*a2)
  {
    v16 = 7.0;
  }

  else
  {
    v16 = 5.0;
  }

  v17 = *(type metadata accessor for ArtworkCornerStyle(0) + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1C5BC9044();
  result = (*(*(v19 - 8) + 104))(a3 + v17, v18, v19);
  *a3 = v16;
  return result;
}

uint64_t sub_1C5972D4C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(_s25ExpandsNowPlayingModifierVMa() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1C5972DFC(uint64_t a1)
{
  v1 = *(a1 + *(_s25ExpandsNowPlayingModifierVMa() + 40));
  type metadata accessor for NowPlayingViewControllerProxy();
  swift_getWitnessTable();
  sub_1C59498C4(v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997A8);
  sub_1C5BC81A4();
  v4 = type metadata accessor for TapExcludedGeometries();
  v5 = &off_1F452A510;
  sub_1C5972EE4(v3);
}

uint64_t sub_1C5972EE4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C59400B0(a1, v5, &qword_1EC19A180);
    sub_1C5972FA4(v5);
  }

  return sub_1C5924EF4(a1, &qword_1EC19A180);
}

uint64_t sub_1C5972F7C(double *a1, double *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return MEMORY[0x1EEDE0BF8](a1 + *(a3 + 20), a2 + *(a3 + 20), *a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5972FA4(uint64_t a1)
{
  v3 = qword_1EDA47F40;
  swift_beginAccess();
  sub_1C5973004(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1C5973004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC19A180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C5973080(char a1, uint64_t a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7D64();
  __swift_project_value_buffer(v8, qword_1EDA5DA78);
  sub_1C594AAD8(a2, v37);
  v9 = sub_1C5BC7D44();
  v10 = sub_1C5BCB4F4();
  sub_1C59735B8(a2);
  if (os_log_type_enabled(v9, v10))
  {
    v34 = v5;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v36 = v12;
    *v11 = 136446978;
    if (a1)
    {
      if (a1 == 1)
      {
        v13 = 0x6D756964656DLL;
      }

      else
      {
        v13 = 0x7274736E6F636E75;
      }

      if (a1 == 1)
      {
        v14 = 0xE600000000000000;
      }

      else
      {
        v14 = 0xED000064656E6961;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      v13 = 0x6C6C616D73;
    }

    v15 = sub_1C592ADA8(v13, v14, &v36);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v39 = *(a2 + 8);
    v16 = *a2;
    v38 = *a2;
    if (v39 == 1)
    {
      LOBYTE(v37[0]) = v16;
    }

    else
    {
      sub_1C59400B0(&v38, v37, &qword_1EC1929E0);
      sub_1C5BCB4E4();
      v17 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v38, &qword_1EC1929E0);
      (*(v34 + 8))(v7, v4);
      LOBYTE(v16) = v37[0];
    }

    LOBYTE(v35) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193C10);
    v18 = sub_1C5BCAEA4();
    v20 = sub_1C592ADA8(v18, v19, &v36);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2082;
    v37[0] = *(a2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC198EC0);
    sub_1C5BCA694();
    v21 = 0xE600000000000000;
    v22 = 0x6D756964656DLL;
    if (v35 != 1)
    {
      v22 = 0x7274736E6F636E75;
      v21 = 0xED000064656E6961;
    }

    if (v35)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0x6C6C616D73;
    }

    if (v35)
    {
      v24 = v21;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    v25 = sub_1C592ADA8(v23, v24, &v36);

    *(v11 + 24) = v25;
    *(v11 + 32) = 2082;
    v26 = *(a2 + 16);
    *&v37[0] = v26;
    BYTE8(v37[0]) = *(a2 + 24);
    v27 = BYTE8(v37[0]);

    if ((v27 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v28 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(v37, &qword_1EC194408);
      (*(v34 + 8))(v7, v4);
      v26 = v35;
    }

    swift_getKeyPath();
    v35 = v26;
    sub_1C594AA80();
    sub_1C5BC7B74();

    v29 = *(v26 + 49);

    LOBYTE(v35) = v29;
    v30 = sub_1C5BCAEA4();
    v32 = sub_1C592ADA8(v30, v31, &v36);

    *(v11 + 34) = v32;
    _os_log_impl(&dword_1C5922000, v9, v10, "Mini player width constraint changed to %{public}s (layout=%{public}s, regularConstraint=%{public}s, miniPlayerPosition=%{public}s)", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v12, -1, -1);
    MEMORY[0x1C69510F0](v11, -1, -1);
  }
}

uint64_t sub_1C59735E8()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 0x4572616C75676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_1C5973650(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 24);
  v6 = *(a1 + 16);
  v21 = v6;
  v7 = v22;

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v21, &qword_1EC1997F0);
    (*(v3 + 8))(v5, v2);
    v6 = v16;
  }

  v20 = v6;
  swift_getAtKeyPath();

  v9 = v19;
  v10 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = v10;
  v18 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1997E8);
  sub_1C5BCA694();
  v11 = v15;
  v12 = v14[1];
  *(v9 + 16) = v14[0];
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
}

uint64_t sub_1C5973824(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  v6 = *(a1 + 16);
  v12 = v6;
  v7 = v13;

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v12, &qword_1EC1997F0);
    (*(v3 + 8))(v5, v2);
    v6 = v11;
  }

  v11 = v6;
  swift_getAtKeyPath();

  *(v10 + 49) = *(a1 + 8);
}

uint64_t sub_1C59739BC()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EDA46950);
  __swift_project_value_buffer(v0, qword_1EDA46950);
  return sub_1C5BC7D54();
}

unint64_t sub_1C5973A34()
{
  result = qword_1EDA4A218;
  if (!qword_1EDA4A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A218);
  }

  return result;
}

unint64_t sub_1C5973A88(uint64_t a1)
{
  result = sub_1C5973AB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C5973AB0()
{
  result = qword_1EDA4A220;
  if (!qword_1EDA4A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4A220);
  }

  return result;
}

uint64_t sub_1C5973B04@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C5931F84(a1, a5);
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = swift_getKeyPath();
  *(a5 + 72) = 0;
  result = sub_1C5BC8C84();
  *(a5 + 80) = result;
  *(a5 + 88) = v10;
  return result;
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

uint64_t sub_1C5973BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = sub_1C5BC89B4();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = type metadata accessor for NowPlayingTransportButtonStyle(0);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195648);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v48[-v7];
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = type metadata accessor for MiniPlayerTransportSpecs(0);
  MEMORY[0x1EEE9AC00](v60);
  v13 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v2 + 64);
  if (*(v2 + 72) != 1)
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v14, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v14) = v64[0];
  }

  if (v14 != 3 && v14)
  {
    if (qword_1EDA482A0 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDA482A8;
  }

  else
  {
    if (qword_1EDA482C8 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDA482D0;
  }

  v17 = __swift_project_value_buffer(v60, v16);
  v50 = v13;
  sub_1C59534C8(v17, v13);
  sub_1C59318C8(v2, v64);
  v49 = *(v2 + 40);
  v18 = *(*(a1 - 8) + 16);
  v18(v63, v2, a1);
  v19 = swift_allocObject();
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  *(v19 + 16) = v21;
  *(v19 + 24) = v20;
  v22 = v63[3];
  *(v19 + 64) = v63[2];
  *(v19 + 80) = v22;
  v23 = v63[5];
  *(v19 + 96) = v63[4];
  *(v19 + 112) = v23;
  v24 = v63[1];
  *(v19 + 32) = v63[0];
  *(v19 + 48) = v24;
  v18(v62, v2, a1);
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v20;
  v26 = v62[3];
  *(v25 + 64) = v62[2];
  *(v25 + 80) = v26;
  v27 = v62[5];
  *(v25 + 96) = v62[4];
  *(v25 + 112) = v27;
  v28 = v62[1];
  *(v25 + 32) = v62[0];
  *(v25 + 48) = v28;
  v18(v61, v2, a1);
  v29 = swift_allocObject();
  *(v29 + 16) = v21;
  *(v29 + 24) = v20;
  v30 = v61[3];
  *(v29 + 64) = v61[2];
  *(v29 + 80) = v30;
  v31 = v61[5];
  *(v29 + 96) = v61[4];
  *(v29 + 112) = v31;
  v32 = v61[1];
  *(v29 + 32) = v61[0];
  *(v29 + 48) = v32;
  v65 = v49;
  v66 = sub_1C5A6CFB0;
  v67 = v19;
  v68 = sub_1C5A6CFDC;
  v69 = v25;
  v70 = sub_1C5A6D05C;
  v71 = v29;
  v72 = 0x3FF0000000000000;
  v73 = 0;
  v33 = *&v13[*(v60 + 24)];
  KeyPath = swift_getKeyPath();
  v75 = v33;
  v34 = swift_getKeyPath();
  v35 = v51;
  *v51 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  swift_storeEnumTagMultiPayload();
  v36 = v53;
  v37 = v35 + *(v53 + 20);
  *v37 = swift_getKeyPath();
  *(v37 + 8) = 0;
  v38 = v35 + *(v36 + 24);
  *v38 = swift_getKeyPath();
  *(v38 + 8) = 0;
  *(v35 + *(v36 + 28)) = 0x3FF0000000000000;

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195610);
  v40 = sub_1C5951214();
  v41 = sub_1C5950DFC(qword_1EDA47650, 255, type metadata accessor for NowPlayingTransportButtonStyle);
  v42 = v52;
  sub_1C5BC9DB4();
  sub_1C595391C(v35, type metadata accessor for NowPlayingTransportButtonStyle);
  sub_1C5924EF4(v64, &qword_1EC195610);
  v44 = v56;
  v43 = v57;
  v45 = v59;
  (*(v57 + 104))(v56, *MEMORY[0x1E697E6E8], v59);
  v64[0] = v39;
  v64[1] = v36;
  v64[2] = v40;
  v64[3] = v41;
  swift_getOpaqueTypeConformance2();
  v46 = v55;
  sub_1C5BC9F44();
  (*(v43 + 8))(v44, v45);
  (*(v54 + 8))(v42, v46);
  return sub_1C595391C(v50, type metadata accessor for MiniPlayerTransportSpecs);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1C5974324@<D0>(uint64_t a1@<X8>)
{
  sub_1C5974444(v1, v11);
  v3 = *(v1 + 40);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = (v3 & 1) == 0;
  v6 = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 96) = v16;
  v7 = v17;
  v8 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v10;
  *(a1 + 112) = v7;
  *(a1 + 120) = KeyPath;
  *(a1 + 128) = sub_1C596A6BC;
  *(a1 + 136) = v5;
  return result;
}

uint64_t sub_1C59743DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8EC4();
  *a1 = result & 1;
  return result;
}

double sub_1C5974444@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = a1[8];
    v8 = a1[9];
    v9 = a1[10];
    v10 = a1[11];
    sub_1C5974664(a1[6], a1[7]);
    sub_1C5974664(v7, v8);
    sub_1C5974664(v9, v10);
    sub_1C5BCA684();
    sub_1C59318C8(a1, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956B0);
    if (swift_dynamicCast())
    {
      sub_1C5950CE4();
    }

    sub_1C5BCABD4();
  }

  else
  {
    v11 = a1[6];
    v12 = a1[7];
    v13 = a1[8];
    v14 = a1[9];
    v15 = a1[10];
    v16 = a1[11];
    v21[0] = 0;
    sub_1C5974664(v11, v12);
    sub_1C5974664(v13, v14);
    sub_1C5974664(v15, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956B8);
  sub_1C59514A4();
  sub_1C5A6D330();
  sub_1C5BC92C4();
  v17 = v27;
  *(a2 + 64) = v26;
  *(a2 + 80) = v17;
  *(a2 + 96) = v28;
  *(a2 + 112) = v29;
  v18 = v23;
  *a2 = v22;
  *(a2 + 16) = v18;
  result = *&v24;
  v20 = v25;
  *(a2 + 32) = v24;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_1C5974668(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5974678()
{
  v1 = *v0;
  sub_1C5951550();
  return v1;
}

unint64_t sub_1C59746DC()
{
  result = qword_1EDA489C8;
  if (!qword_1EDA489C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA489C8);
  }

  return result;
}

unint64_t sub_1C5974750()
{
  result = qword_1EDA466A8;
  if (!qword_1EDA466A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC195710);
    sub_1C5924F54(&qword_1EDA466E8, &qword_1EC195718);
    sub_1C5924F54(&qword_1EDA45F48, &qword_1EC195720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA466A8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C5974854@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;

  v5 = sub_1C5BCA5A4();
  sub_1C59748D0(v5, v7, a1);
}

uint64_t sub_1C59748D0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956E8);
  v6 = v5 - 8;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  v28 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);
  v24 = *(a2 + 7);
  v25 = v16;
  v17 = swift_allocObject();
  v18 = a2[1];
  v17[1] = *a2;
  v17[2] = v18;
  v19 = a2[3];
  v17[3] = a2[2];
  v17[4] = v19;

  sub_1C5974B5C(&v28, v27);
  sub_1C5974664(v12, v13);
  sub_1C5974664(v14, v15);
  sub_1C5974664(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194FA8);
  sub_1C5974BB8();
  sub_1C5BCA6E4();
  v11[*(v6 + 44)] = 0;
  sub_1C59400B0(v11, v9, &qword_1EC1956E8);
  v20 = v26;
  *v26 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1956F0);
  sub_1C59400B0(v9, v20 + *(v21 + 48), &qword_1EC1956E8);

  sub_1C5924EF4(v11, &qword_1EC1956E8);
  sub_1C5924EF4(v9, &qword_1EC1956E8);
}

uint64_t sub_1C5974AF4()
{

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1C5974BB8()
{
  result = qword_1EDA46520;
  if (!qword_1EDA46520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46520);
  }

  return result;
}

uint64_t sub_1C5974C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC9894();
  sub_1C5BC8174();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
}

uint64_t objectdestroy_71Tm()
{
  v1 = type metadata accessor for _CAPackageView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1C5BC8284();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC191B88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C5BC81D4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_1C5974EB0(char *a1, uint64_t a2)
{
  v4 = sub_1C5BC8284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC8F34();
  v62 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for _CAPackageView();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 24);
  result = v16[7];
  if (result)
  {
    result = [result rootLayer];
    if (result)
    {
      v18 = result;
      v61 = v7;
      v19 = v16[5];
      if (v19)
      {
        v56 = v16[4];
        v20 = v16[6];

        if (v20)
        {
          v60 = [v20 stateOfLayer_];
        }

        else
        {
          v60 = 0;
        }

        v58 = v12;
        v59 = v10;
        if (qword_1EDA46990 != -1)
        {
          swift_once();
        }

        v21 = sub_1C5BC7D64();
        __swift_project_value_buffer(v21, qword_1EDA5DA60);
        sub_1C5967CB0(a2, v15);
        v22 = v60;

        v23 = sub_1C5BC7D44();
        v24 = sub_1C5BCB4F4();

        v57 = v24;
        if (os_log_type_enabled(v23, v24))
        {
          v54 = v23;
          v55 = v18;
          v25 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v63 = v53;
          *v25 = 136446722;
          v26 = sub_1C592ADA8(v56, v19, &v63);

          *(v25 + 4) = v26;
          *(v25 + 12) = 2082;
          v27 = *(v15 + 3);
          v12 = v58;
          if (*(v27 + 24))
          {
            v28 = *(v27 + 16);
            v29 = *(v27 + 24);
          }

          else
          {
            v29 = 0xE300000000000000;
            v28 = 7104878;
          }

          sub_1C5972028(v15);
          v30 = sub_1C592ADA8(v28, v29, &v63);

          *(v25 + 14) = v30;
          *(v25 + 22) = 2082;
          if (v60)
          {
            v31 = v22;
            v32 = [v22 name];
            v33 = 7104878;
            if (v32)
            {
              v34 = v32;
              v35 = sub_1C5BCAE74();
              v37 = v36;

              v33 = v35;
            }

            else
            {
              v37 = 0xE300000000000000;
            }

            v10 = v59;
          }

          else
          {
            v37 = 0xE300000000000000;
            v31 = v22;
            v10 = v59;
            v33 = 7104878;
          }

          v38 = sub_1C592ADA8(v33, v37, &v63);

          *(v25 + 24) = v38;
          v39 = v54;
          _os_log_impl(&dword_1C5922000, v54, v57, "%{public}s: %{public}s CAPackageView _CALayerView update closure called with state %{public}s", v25, 0x20u);
          v40 = v53;
          swift_arrayDestroy();
          MEMORY[0x1C69510F0](v40, -1, -1);
          MEMORY[0x1C69510F0](v25, -1, -1);

          v18 = v55;
        }

        else
        {

          sub_1C5972028(v15);
          v12 = v58;
          v10 = v59;
        }
      }

      sub_1C5BC8F24();
      sub_1C59421E4(v6);
      sub_1C5BC8CE4();
      v41 = *(a2 + *(v13 + 28) + 8);

      v42 = v62;
      if ((v41 & 1) == 0)
      {
        sub_1C5BCB4E4();
        v43 = v18;
        v44 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v18 = v43;
        sub_1C5BC8F24();
        swift_getAtKeyPath();

        (*(v42 + 8))(v10, v61);
      }

      sub_1C5BCA4D4();

      v45 = sub_1C5BCA4E4();
      v46 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

      v47 = *&a1[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor];
      *&a1[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor] = v46;
      v48 = v46;

      sub_1C5975698();
      v49 = OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer;
      v50 = *&a1[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer];
      *&a1[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer] = v18;
      v51 = v18;
      [v50 removeFromSuperlayer];
      if (*&a1[v49])
      {
        [a1 addSublayer_];
      }

      sub_1C5975698();

      return (*(v42 + 8))(v12, v61);
    }
  }

  return result;
}

id sub_1C59754E8(char *a1)
{
  v3 = *(type metadata accessor for _CAPackageView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C5974EB0(a1, v4);
}

uint64_t sub_1C5975558(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

id sub_1C5975698()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_foregroundColor);
  if (v2)
  {
    v3 = *MEMORY[0x1E6979888];
    v4 = objc_allocWithZone(MEMORY[0x1E6979378]);
    v5 = v2;
    v6 = [v4 initWithType_];
    v7 = sub_1C5BCB394();
    [v6 setValue:v7 forKey:*MEMORY[0x1E69799C8]];

    v8 = sub_1C5BCB394();
    [v6 setValue:v8 forKey:*MEMORY[0x1E6979990]];

    v9 = [v5 CGColor];
    [v6 setValue:v9 forKey:*MEMORY[0x1E6979AA0]];

    v10 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer);
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C5BCFF00;
      *(v11 + 56) = sub_1C592535C(0, &qword_1EDA45D80);
      *(v11 + 32) = v6;
      v12 = v10;
      v13 = v6;
      v14 = sub_1C5BCB044();

      [v12 setFilters_];
    }
  }

  else
  {
    v15 = *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer);
    if (!v15)
    {
      goto LABEL_7;
    }

    v6 = v15;
    v5 = sub_1C5BCB044();
    [v6 setFilters_];
  }

LABEL_7:

  return [v1 commit];
}

void sub_1C597594C()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v33, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_F4C8615D44A19A30266CA641FD3263FC18CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v34.origin.x = v4;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    Width = CGRectGetWidth(v34);
    v28 = v4;
    v35.origin.x = v4;
    v35.origin.y = v6;
    v29 = v10;
    v35.size.width = v8;
    v35.size.height = v10;
    v19 = Width / CGRectGetHeight(v35);
    v36.origin.x = v12;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    v20 = CGRectGetWidth(v36);
    v37.origin.x = v12;
    v37.origin.y = v14;
    v37.size.width = v16;
    v37.size.height = v18;
    if (v19 >= v20 / CGRectGetHeight(v37))
    {
      v40.origin.x = v28;
      v40.origin.y = v6;
      v40.size.width = v8;
      v40.size.height = v29;
      Height = CGRectGetHeight(v40);
      v41.origin.x = v12;
      v41.origin.y = v14;
      v41.size.width = v16;
      v41.size.height = v18;
      v22 = CGRectGetHeight(v41);
    }

    else
    {
      v38.origin.x = v28;
      v38.origin.y = v6;
      v38.size.width = v8;
      v38.size.height = v29;
      Height = CGRectGetWidth(v38);
      v39.origin.x = v12;
      v39.origin.y = v14;
      v39.size.width = v16;
      v39.size.height = v18;
      v22 = CGRectGetWidth(v39);
    }

    CGAffineTransformMakeScale(&v31, Height / v22, Height / v22);
    *&m.a = *&v31.m11;
    *&m.c = *&v31.m13;
    *&m.tx = *&v31.m21;
    CATransform3DMakeAffineTransform(&v31, &m);
    [v2 setTransform_];
    [v0 bounds];
    x = v42.origin.x;
    y = v42.origin.y;
    v25 = v42.size.width;
    v26 = v42.size.height;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = v25;
    v43.size.height = v26;
    [v2 setPosition_];
  }
}

uint64_t sub_1C5975B64(uint64_t a1)
{
  v2 = sub_1C5BC77E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1C5BC77D4();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C5975C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C599EF70();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5975CBC()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1C5BC8974();
  }

  else
  {
    sub_1C5BC87B4();
  }

  return sub_1C5BC8AB4();
}

uint64_t sub_1C5975D24()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1C5BC8974();
    sub_1C5BC8AB4();
    sub_1C599C1FC();
  }

  else
  {
    sub_1C5BC87B4();
    sub_1C5BC8AB4();
    sub_1C599D80C(&qword_1EC190A00, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1C5975E18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190A08);
  sub_1C5BC8AB4();
  sub_1C5924F54(&unk_1EC190A10, &qword_1EC190A08);
  return swift_getWitnessTable();
}

uint64_t sub_1C5975EC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for WaveformSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WaveformSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void *sub_1C5975F40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1C5975F78(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1C5976008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BCAE74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1C5976068@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C5976094@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C5976150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C599E00C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1C5976234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C59A2270();
  *a1 = result & 1;
  return result;
}

__n128 sub_1C5976298(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C59762A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C59A2418();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C5976308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C59A25C0();
  *a1 = result;
  return result;
}

id sub_1C597636C@<X0>(void *a1@<X8>)
{
  v2 = sub_1C59A3DBC();
  *a1 = v2;

  return v2;
}

void sub_1C59763A8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C59A3E3C(v1);
}

void sub_1C5976404(uint64_t a1@<X8>)
{
  *a1 = sub_1C59A2CB0();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_1C5976484()
{
  type metadata accessor for PopoverViewModifier();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5976518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C59765E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1913A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C59766B0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C5976738()
{

  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C59767B8()
{

  return swift_deallocObject();
}

uint64_t sub_1C5976800()
{
  type metadata accessor for PopoverViewModifier();
  swift_getWitnessTable();
  sub_1C5BC9394();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC191168);
  sub_1C5BC8AB4();
  sub_1C5924F54(qword_1EC191318, &qword_1EC191168);
  swift_getWitnessTable();
  type metadata accessor for Popover();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC92A4();
  sub_1C5BC8AB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C59769D8()
{
  sub_1C5BC81E4();
  sub_1C5BC92D4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C5976B34()
{
  sub_1C5BC8AB4();
  sub_1C59A5AEC();
  return swift_getWitnessTable();
}

uint64_t sub_1C5976B98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190A08);
  sub_1C5BC8AB4();
  sub_1C5924F54(&unk_1EC190A10, &qword_1EC190A08);
  return swift_getWitnessTable();
}

uint64_t sub_1C5976C48@<X0>(_BYTE *a1@<X8>)
{
  sub_1C599DCB8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5976D24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916F8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1C5976DC0()
{
  v1 = (type metadata accessor for FittedTextStack(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = sub_1C5BC9BB4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1C5976EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C5BC9BB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C5976F6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C5BC9BB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C5977018()
{

  return swift_deallocObject();
}

__n128 sub_1C5977090(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C59770AC()
{
  sub_1C5942458(*(v0 + 16), *(v0 + 24));
  sub_1C5942458(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

id sub_1C59770F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer);
  *a2 = v2;
  return v2;
}

void sub_1C597710C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_firstBlurLayer) = *a1;
  v3 = v2;
}

id sub_1C597715C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer);
  *a2 = v2;
  return v2;
}

void sub_1C5977174(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_secondBlurLayer) = *a1;
  v3 = v2;
}

id sub_1C59771C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer);
  *a2 = v2;
  return v2;
}

void sub_1C59771DC(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer);
  *(*a2 + OBJC_IVAR____TtCV11MediaCoreUI34LockScreenSquareAssetOverlayEffectP33_6BA38F362B28F7680B5FF2DD700C670A11EffectLayer_colorAdjustmentsLayer) = *a1;
  v3 = v2;
}