unint64_t sub_24F617388()
{
  result = qword_27F24A970;
  if (!qword_27F24A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A970);
  }

  return result;
}

unint64_t sub_24F6173DC()
{
  result = qword_27F24A980;
  if (!qword_27F24A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A980);
  }

  return result;
}

unint64_t sub_24F617430()
{
  result = qword_27F24A990;
  if (!qword_27F24A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A990);
  }

  return result;
}

unint64_t sub_24F617484()
{
  result = qword_27F24A9B8;
  if (!qword_27F24A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A9B8);
  }

  return result;
}

unint64_t sub_24F6174D8()
{
  result = qword_27F24A9C0;
  if (!qword_27F24A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A9C0);
  }

  return result;
}

uint64_t sub_24F61752C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialSuggestionsDataIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F617590(uint64_t a1)
{
  v2 = type metadata accessor for SocialSuggestionsDataIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F6175EC()
{
  result = qword_27F24A9D0;
  if (!qword_27F24A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A9D0);
  }

  return result;
}

unint64_t sub_24F617684()
{
  result = qword_27F24A9D8;
  if (!qword_27F24A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A9D8);
  }

  return result;
}

unint64_t sub_24F6176DC()
{
  result = qword_27F24A9E0;
  if (!qword_27F24A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A9E0);
  }

  return result;
}

unint64_t sub_24F617734()
{
  result = qword_27F24A9E8;
  if (!qword_27F24A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A9E8);
  }

  return result;
}

unint64_t sub_24F61778C()
{
  result = qword_27F24A9F0;
  if (!qword_27F24A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A9F0);
  }

  return result;
}

unint64_t sub_24F6177E4()
{
  result = qword_27F24A9F8;
  if (!qword_27F24A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24A9F8);
  }

  return result;
}

unint64_t sub_24F61783C()
{
  result = qword_27F24AA00;
  if (!qword_27F24AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA00);
  }

  return result;
}

unint64_t sub_24F617894()
{
  result = qword_27F24AA08;
  if (!qword_27F24AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA08);
  }

  return result;
}

unint64_t sub_24F6178EC()
{
  result = qword_27F24AA10;
  if (!qword_27F24AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA10);
  }

  return result;
}

unint64_t sub_24F617944()
{
  result = qword_27F24AA18;
  if (!qword_27F24AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA18);
  }

  return result;
}

unint64_t sub_24F61799C()
{
  result = qword_27F24AA20;
  if (!qword_27F24AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA20);
  }

  return result;
}

unint64_t sub_24F6179F4()
{
  result = qword_27F24AA28;
  if (!qword_27F24AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA28);
  }

  return result;
}

unint64_t sub_24F617A4C()
{
  result = qword_27F24AA30;
  if (!qword_27F24AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA30);
  }

  return result;
}

uint64_t sub_24F617AA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000024FA77550 == a2;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6147746E65636572 && a2 == 0xEE006C6C6143656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA77570 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xED0000656D614765 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA77590 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73646E65697266 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6143746E65636572 && a2 == 0xEA00000000006C6CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F617D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6147656D6173 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xEC000000656D6147 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C6C6174736E69 && a2 == 0xEF656D6147656C62 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA775B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6147796E61 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x707041796E61 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F617F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646E65697266 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79646F62796E61 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65697246746F6ELL && a2 == 0xEA00000000007364)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t OverlayHighlightsShelfIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x4449656C646E7562;
  *(inited + 96) = 0xE800000000000000;
  v7 = v1[2];
  v6 = v1[3];
  v8 = MEMORY[0x277D222B0];
  *(inited + 128) = MEMORY[0x277D222B8];
  *(inited + 136) = v8;
  v9 = swift_allocObject();
  *(inited + 104) = v9;
  v9[5] = MEMORY[0x277D837D0];
  v9[6] = v5;
  v9[2] = v7;
  v9[3] = v6;
  *(inited + 144) = 0x726579616C70;
  *(inited + 152) = 0xE600000000000000;
  v10 = *(type metadata accessor for OverlayHighlightsShelfIntent() + 24);
  *(inited + 184) = MEMORY[0x277D222B8];
  *(inited + 192) = v8;
  v11 = swift_allocObject();
  *(inited + 160) = v11;
  v11[5] = type metadata accessor for Player(0);
  v11[6] = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  sub_24F6187C8(v1 + v10, boxed_opaque_existential_1, type metadata accessor for Player);

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24F6182D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t type metadata accessor for OverlayHighlightsShelfIntent()
{
  result = qword_27F24AA48;
  if (!qword_27F24AA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F61835C(uint64_t a1)
{
  v2 = sub_24F618774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F618398(uint64_t a1)
{
  v2 = sub_24F618774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OverlayHighlightsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v22);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AA38);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for OverlayHighlightsShelfIntent();
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F618774();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a1;
  v13 = v23;
  v12 = v24;
  v27 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v14;
  v26 = 1;
  v11[2] = sub_24F92CC28();
  v11[3] = v15;
  v25 = 2;
  sub_24E61C064(&qword_27F213E38);
  v19 = v11;
  sub_24F92CC68();
  (*(v13 + 8))(v8, v12);
  v16 = *(v9 + 24);
  v17 = v19;
  sub_24E61C0A8(v5, v19 + v16);
  sub_24F6187C8(v17, v21, type metadata accessor for OverlayHighlightsShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_24F618830(v17);
}

unint64_t sub_24F618774()
{
  result = qword_27F24AA40;
  if (!qword_27F24AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA40);
  }

  return result;
}

uint64_t sub_24F6187C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F618830(uint64_t a1)
{
  v2 = type metadata accessor for OverlayHighlightsShelfIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F6188A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F618960(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F618A18()
{
  result = qword_27F24AA58;
  if (!qword_27F24AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA58);
  }

  return result;
}

unint64_t sub_24F618A70()
{
  result = qword_27F24AA60;
  if (!qword_27F24AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA60);
  }

  return result;
}

unint64_t sub_24F618AC8()
{
  result = qword_27F24AA68;
  if (!qword_27F24AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AA68);
  }

  return result;
}

void sub_24F618B3C()
{
  sub_24F618BB0();
  if (v0 <= 0x3F)
  {
    sub_24F618C30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24F618BB0()
{
  if (!qword_27F24AA80)
  {
    type metadata accessor for GSKShelf();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AA88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F24AA80);
    }
  }
}

void sub_24F618C30()
{
  if (!qword_27F24AA90)
  {
    sub_24F618C78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24AA90);
    }
  }
}

void sub_24F618C78()
{
  if (!qword_27F225CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225CB0);
    sub_24E602068(&qword_27F225CB8, &qword_27F225CB0);
    v0 = sub_24F9280E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F225CA8);
    }
  }
}

void sub_24F618D6C()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    sub_24E659BE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F618E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAA8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F618EE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAA8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24F618FCC()
{
  sub_24F6190B0(319, &qword_27F24AAC0, type metadata accessor for GamesHeroCarousel, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24F6190B0(319, &qword_27F24AAC8, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F6190B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F619114@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24F61AD74(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F61AE24(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for PlayNowFeedShelvesPlaceholderIntent(0);
  v7 = 0x676F742D79616C70;
  if (!*(v2 + *(v6 + 20)))
  {
    v7 = 1701670760;
  }

  v8 = 0xED00007265687465;
  if (!*(v2 + *(v6 + 20)))
  {
    v8 = 0xE400000000000000;
  }

  v9 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v9;
  *(inited + 104) = v7;
  *(inited + 112) = v8;
  v10 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v11 = sub_24E80FFAC(v10);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_24F6192EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB38);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PlayNowFeedShelvesIntent.ReturnType(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F61AE8C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v13 = v12;
  v14 = v21;
  type metadata accessor for GamesHeroCarousel();
  v25 = 0;
  sub_24F61AD74(&qword_27F225860, type metadata accessor for GamesHeroCarousel);
  v15 = v22;
  sub_24F92CC18();
  sub_24E6009C8(v6, v13, &qword_27F24AAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB48);
  v24 = 1;
  sub_24F61AEE0();
  sub_24F92CC68();
  (*(v14 + 8))(v9, v15);
  v16 = v20;
  *(v13 + *(v19 + 20)) = v23;
  sub_24F61AE24(v13, v16, type metadata accessor for PlayNowFeedShelvesIntent.ReturnType);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F61AF94(v13, type metadata accessor for PlayNowFeedShelvesIntent.ReturnType);
}

uint64_t sub_24F619634(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB10);
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB18);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AA88);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v28 - v9;
  v28 = type metadata accessor for GSKShelf();
  MEMORY[0x28223BE20](v28);
  v35 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB20);
  v14 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F61AC78();
  sub_24F92D128();
  sub_24F61AE24(v34, v13, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v13 + 1);
    v38[0] = *v13;
    v38[1] = v17;
    v39 = *(v13 + 4);
    v40 = 1;
    sub_24F61ACCC();
    v18 = v37;
    sub_24F92CC98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D38);
    sub_24E602068(&qword_27F24AB28, &qword_27F225D38);
    v19 = v30;
    sub_24F92CD48();
    (*(v29 + 8))(v4, v19);
    sub_24E601704(v38, &qword_27F225D38);
    return (*(v14 + 8))(v16, v18);
  }

  else
  {
    v21 = v14;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB00) + 48);
    sub_24F61ADBC(v13, v35, type metadata accessor for GSKShelf);
    v23 = &v13[v22];
    v24 = v31;
    sub_24E6009C8(v23, v31, &qword_27F24AA88);
    LOBYTE(v38[0]) = 0;
    sub_24F61AD20();
    v25 = v37;
    sub_24F92CC98();
    LOBYTE(v38[0]) = 0;
    sub_24F61AD74(&qword_27F216618, type metadata accessor for GSKShelf);
    v26 = v33;
    v27 = v36;
    sub_24F92CD48();
    if (!v27)
    {
      LOBYTE(v38[0]) = 1;
      type metadata accessor for PlayNowFeedHydrationShelfIntent();
      sub_24F61AD74(&qword_27F24AB30, type metadata accessor for PlayNowFeedHydrationShelfIntent);
      sub_24F92CCF8();
    }

    (*(v32 + 8))(v7, v26);
    sub_24E601704(v24, &qword_27F24AA88);
    sub_24F61AF94(v35, type metadata accessor for GSKShelf);
    return (*(v21 + 8))(v16, v25);
  }
}

uint64_t sub_24F619C8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAD0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAD8);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAE0);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = &v40 - v8;
  v10 = type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F61AC78();
  v20 = v50;
  sub_24F92D108();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v40 = v12;
  v41 = v15;
  v22 = v45;
  v21 = v46;
  v50 = v10;
  v23 = v47;
  v24 = v48;
  v25 = sub_24F92CC78();
  v26 = (2 * *(v25 + 16)) | 1;
  v52 = v25;
  v53 = v25 + 32;
  v54 = 0;
  v55 = v26;
  v27 = sub_24E643430();
  if (v27 == 2 || v54 != v55 >> 1)
  {
    v32 = sub_24F92C918();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v34 = v50;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v49 + 8))(v9, v21);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if ((v27 & 1) == 0)
  {
    v56 = 0;
    sub_24F61AD20();
    sub_24F92CBA8();
    v31 = v18;
    type metadata accessor for GSKShelf();
    v56 = 0;
    sub_24F61AD74(&qword_27F2165F8, type metadata accessor for GSKShelf);
    sub_24F92CC68();
    v36 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB00);
    type metadata accessor for PlayNowFeedHydrationShelfIntent();
    v47 = 0;
    v56 = 1;
    sub_24F61AD74(&qword_27F24AB08, type metadata accessor for PlayNowFeedHydrationShelfIntent);
    v37 = v41;
    v38 = v47;
    sub_24F92CC18();
    if (!v38)
    {
      (*(v44 + 8))(v7, v22);
      (*(v36 + 8))(v9, v21);
      swift_unknownObjectRelease();
      v39 = v41;
      swift_storeEnumTagMultiPayload();
      v30 = v39;
      goto LABEL_11;
    }

    (*(v44 + 8))(v7, v22);
    (*(v36 + 8))(v9, v21);
    swift_unknownObjectRelease();
    sub_24F61AF94(v37, type metadata accessor for GSKShelf);
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v56 = 1;
  sub_24F61ACCC();
  sub_24F92CBA8();
  v45 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D38);
  sub_24E602068(&qword_27F225D40, &qword_27F225D38);
  v28 = v40;
  v29 = v43;
  sub_24F92CC68();
  (*(v42 + 8))(v23, v29);
  (*(v49 + 8))(v9, v21);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v30 = v28;
  v31 = v45;
LABEL_11:
  sub_24F61ADBC(v30, v31, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
  sub_24F61ADBC(v31, v24, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_24F61A444()
{
  if (*v0)
  {
    return 0x7365766C656873;
  }

  else
  {
    return 0x6F7261436F726568;
  }
}

uint64_t sub_24F61A488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F7261436F726568 && a2 == 0xEC0000006C657375;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365766C656873 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F61A568(uint64_t a1)
{
  v2 = sub_24F61AE8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F61A5A4(uint64_t a1)
{
  v2 = sub_24F61AE8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F61A5F8()
{
  if (*v0)
  {
    return 0x72656B72616DLL;
  }

  else
  {
    return 0x666C656873;
  }
}

uint64_t sub_24F61A62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666C656873 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656B72616DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F61A700(uint64_t a1)
{
  v2 = sub_24F61AC78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F61A73C(uint64_t a1)
{
  v2 = sub_24F61AC78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F61A778(uint64_t a1)
{
  v2 = sub_24F61ACCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F61A7B4(uint64_t a1)
{
  v2 = sub_24F61ACCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F61A7F0()
{
  if (*v0)
  {
    return 0x6F69746172647968;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

uint64_t sub_24F61A838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746172647968 && a2 == 0xEF746E65746E496ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F61A91C(uint64_t a1)
{
  v2 = sub_24F61AD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F61A958(uint64_t a1)
{
  v2 = sub_24F61AD20();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F61A9C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24F61AD74(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F61AE24(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v6 = type metadata accessor for PlayNowFeedShelvesIntent(0);
  v7 = v6;
  v8 = 0x676F742D79616C70;
  if (!*(v2 + *(v6 + 20)))
  {
    v8 = 1701670760;
  }

  v9 = 0xED00007265687465;
  if (!*(v2 + *(v6 + 20)))
  {
    v9 = 0xE400000000000000;
  }

  v10 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v10;
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 144) = 0x6F43657372617073;
  *(inited + 152) = 0xEB00000000746E75;
  v11 = v2 + *(v6 + 24);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
  *(inited + 184) = v14;
  v15 = sub_24E658F98();
  *(inited + 160) = v12;
  *(inited + 168) = v13;
  *(inited + 192) = v15;
  strcpy((inited + 200), "contentLimit");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v16 = v2 + *(v7 + 28);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *(inited + 240) = v14;
  *(inited + 248) = v15;
  *(inited + 216) = v17;
  *(inited + 224) = v16;
  v18 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18);
  swift_arrayDestroy();
  v19 = sub_24E80FFAC(v18);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

unint64_t sub_24F61AC78()
{
  result = qword_27F24AAE8;
  if (!qword_27F24AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AAE8);
  }

  return result;
}

unint64_t sub_24F61ACCC()
{
  result = qword_27F24AAF0;
  if (!qword_27F24AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AAF0);
  }

  return result;
}

unint64_t sub_24F61AD20()
{
  result = qword_27F24AAF8;
  if (!qword_27F24AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AAF8);
  }

  return result;
}

uint64_t sub_24F61AD74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F61ADBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F61AE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F61AE8C()
{
  result = qword_27F24AB40;
  if (!qword_27F24AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB40);
  }

  return result;
}

unint64_t sub_24F61AEE0()
{
  result = qword_27F24AB50;
  if (!qword_27F24AB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AB48);
    sub_24F61AD74(&qword_27F24AB58, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB50);
  }

  return result;
}

uint64_t sub_24F61AF94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_9(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_24F61B1AC()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F61B264()
{
  result = qword_27F24AB70;
  if (!qword_27F24AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB70);
  }

  return result;
}

unint64_t sub_24F61B2BC()
{
  result = qword_27F24AB78;
  if (!qword_27F24AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB78);
  }

  return result;
}

unint64_t sub_24F61B314()
{
  result = qword_27F24AB80;
  if (!qword_27F24AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB80);
  }

  return result;
}

unint64_t sub_24F61B36C()
{
  result = qword_27F24AB88;
  if (!qword_27F24AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB88);
  }

  return result;
}

unint64_t sub_24F61B3C4()
{
  result = qword_27F24AB90;
  if (!qword_27F24AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB90);
  }

  return result;
}

unint64_t sub_24F61B41C()
{
  result = qword_27F24AB98;
  if (!qword_27F24AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AB98);
  }

  return result;
}

unint64_t sub_24F61B474()
{
  result = qword_27F24ABA0;
  if (!qword_27F24ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABA0);
  }

  return result;
}

unint64_t sub_24F61B4CC()
{
  result = qword_27F24ABA8;
  if (!qword_27F24ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABA8);
  }

  return result;
}

unint64_t sub_24F61B524()
{
  result = qword_27F24ABB0;
  if (!qword_27F24ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABB0);
  }

  return result;
}

unint64_t sub_24F61B57C()
{
  result = qword_27F24ABB8;
  if (!qword_27F24ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABB8);
  }

  return result;
}

unint64_t sub_24F61B5D4()
{
  result = qword_27F24ABC0;
  if (!qword_27F24ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABC0);
  }

  return result;
}

unint64_t sub_24F61B62C()
{
  result = qword_27F24ABC8;
  if (!qword_27F24ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABC8);
  }

  return result;
}

uint64_t JSColor.init(red:green:blue:alpha:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x646E696B24;
  v18 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 6449010;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = v18;
  *(inited + 80) = 6579570;
  *(inited + 88) = 0xE300000000000000;
  v19 = MEMORY[0x277D85048];
  *(inited + 96) = a2;
  *(inited + 120) = v19;
  *(inited + 128) = 0x6E65657267;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = a3;
  *(inited + 168) = v19;
  *(inited + 176) = 1702194274;
  *(inited + 184) = 0xE400000000000000;
  *(inited + 192) = a4;
  *(inited + 216) = v19;
  *(inited + 224) = 0x6168706C61;
  *(inited + 232) = 0xE500000000000000;
  *(inited + 264) = v19;
  *(inited + 240) = a5;
  v20 = sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  v22[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  v22[34] = v20;
  sub_24F928378();
  (*(v11 + 16))(v13, v16, v10);
  JSColor.init(base:)(v13, a1);
  return (*(v11 + 8))(v16, v10);
}

uint64_t JSColor.init(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSColor();
  v9 = v8[5];
  *(a2 + v9) = 0;
  v16 = v8[6];
  *(a2 + v16) = 0;
  *(a2 + v8[7]) = 0;
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a2, a1, v10);
  sub_24E77ACC8();
  sub_24F9285A8();
  v12 = sub_24F92C378();
  (*(v5 + 8))(v7, v4);
  *(a2 + v9) = v12;
  v13 = v12;
  v14 = sub_24F926BF8();
  result = (*(v11 + 8))(a1, v10);
  *(a2 + v16) = v14;
  return result;
}

uint64_t JSColor.init(hexColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-v11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
  inited = swift_initStackObject();
  *(inited + 32) = 0x646E696B24;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 1819112552;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 64) = 0x65756C6176;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  v14 = sub_24E6086DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90);
  swift_arrayDestroy();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
  v17 = v14;
  sub_24F928378();
  (*(v7 + 16))(v9, v12, v6);
  JSColor.init(base:)(v9, a3);
  return (*(v7 + 8))(v12, v6);
}

uint64_t JSColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_24F926C08();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSColor();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13[7];
  *&v12[v14] = 0;
  v15 = v13[8];
  *&v12[v15] = 0;
  v16 = v13[9];
  *&v12[v16] = 0;
  sub_24E615E00(a1, &v42);
  v17 = v41;
  sub_24F928298();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v14;
  v29 = v15;
  v30 = v16;
  v32 = v5;
  v33 = v7;
  (*(v40 + 16))(v12, v9, v7);
  v19 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F92D0E8();
  v20 = v39;
  sub_24F928598();
  sub_24E77ACC8();
  v21 = sub_24F92C378();
  v31 = 0;
  v22 = v21;
  UIColor.rgbaComponents.getter(&v42);
  LOBYTE(v19) = v43;
  *&v12[v28] = v22;
  v23 = v22;
  *&v12[v29] = sub_24F926BF8();
  v24 = v32;
  v25 = v37;
  if (v19)
  {
    (*(v37 + 8))(v20, v32);
    (*(v40 + 8))(v9, v33);
    *&v12[v30] = 0;
  }

  else
  {
    (*(v35 + 104))(v34, *MEMORY[0x277CE0EE8], v36);
    v26 = sub_24F926D48();
    (*(v25 + 8))(v20, v24);
    (*(v40 + 8))(v9, v33);
    *&v12[v30] = v26;
  }

  v27 = v41;
  sub_24E98745C(v12, v38);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_24E9874C0(v12);
}

unint64_t JSColor.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_24F928368();
  v4 = v14;
  if (v14)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_24F92CDE8();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_opt_self() valueWithObject:v10 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v11;
  return result;
}

uint64_t type metadata accessor for JSColor()
{
  result = qword_27F24ABD0;
  if (!qword_27F24ABD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F61C5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F61C690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F928388();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_24F61C748()
{
  sub_24F928388();
  if (v0 <= 0x3F)
  {
    sub_24F61C7E4();
    if (v1 <= 0x3F)
    {
      sub_24F61C83C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F61C7E4()
{
  if (!qword_27F24ABE0)
  {
    sub_24E77ACC8();
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F24ABE0);
    }
  }
}

void sub_24F61C83C()
{
  if (!qword_27F220EC0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F220EC0);
    }
  }
}

uint64_t LaunchGameAction.init(adamID:bundleID:miniGamesDeepLink:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  v10 = *(type metadata accessor for LaunchGameAction() + 28);
  v11 = sub_24F928AD8();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a7, v11);
}

uint64_t type metadata accessor for LaunchGameAction()
{
  result = qword_27F24AC00;
  if (!qword_27F24AC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LaunchGameAction.adamID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LaunchGameAction.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LaunchGameAction.miniGamesDeepLink.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LaunchGameAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LaunchGameAction() + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_24F61CA70()
{
  v1 = 0x44496D616461;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x4449656C646E7562;
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

uint64_t sub_24F61CAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F61D5A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F61CB20(uint64_t a1)
{
  v2 = sub_24F61CDC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F61CB5C(uint64_t a1)
{
  v2 = sub_24F61CDC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchGameAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ABE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F61CDC0();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CCA8();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CCA8();
    type metadata accessor for LaunchGameAction();
    v8[12] = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F61CDC0()
{
  result = qword_27F24ABF0;
  if (!qword_27F24ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ABF0);
  }

  return result;
}

uint64_t LaunchGameAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_24F928AD8();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ABF8);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for LaunchGameAction();
  MEMORY[0x28223BE20](v9);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F61CDC0();
  v27 = v8;
  v12 = v28;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v5;
  v15 = v25;
  v16 = v26;
  v28 = v3;
  v32 = 0;
  *v11 = sub_24F92CBC8();
  v11[1] = v17;
  v31 = 1;
  v11[2] = sub_24F92CC28();
  v11[3] = v18;
  v30 = 2;
  v22[1] = 0;
  v11[4] = sub_24F92CBC8();
  v11[5] = v19;
  v29 = 3;
  sub_24E674184(&qword_27F254CB0);
  v22[0] = v14;
  v20 = v28;
  sub_24F92CC68();
  (*(v15 + 8))(v27, v16);
  (*(v23 + 32))(v11 + *(v9 + 28), v22[0], v20);
  sub_24F56F41C(v11, v24);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24F61D1F0(v11);
}

uint64_t sub_24F61D1F0(uint64_t a1)
{
  v2 = type metadata accessor for LaunchGameAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F61D290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F61D350(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F61D3F4()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24F928AD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F61D49C()
{
  result = qword_27F24AC10;
  if (!qword_27F24AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC10);
  }

  return result;
}

unint64_t sub_24F61D4F4()
{
  result = qword_27F24AC18;
  if (!qword_27F24AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC18);
  }

  return result;
}

unint64_t sub_24F61D54C()
{
  result = qword_27F24AC20;
  if (!qword_27F24AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC20);
  }

  return result;
}

uint64_t sub_24F61D5A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA47950 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F61D768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v64 = a3;
  v50 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v45 - v7;
  v8 = type metadata accessor for LeaderboardEntriesShelfIntent();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC28);
  v48 = *(v62 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v62);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v61 = &v45 - v18;
  v45 = *(a2 + 24);
  v58 = *(v11 + 16);
  v59 = v11 + 16;
  v47 = v14;
  v58(v14, a1, v10, v17);
  v57 = type metadata accessor for LeaderboardEntriesShelfIntent;
  sub_24F621470(v64, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeaderboardEntriesShelfIntent);
  v19 = *(v11 + 80);
  v20 = (v19 + 24) & ~v19;
  v55 = *(v56 + 80);
  v56 = v12 + v55;
  v21 = (v12 + v55 + v20) & ~v55;
  v51 = v9 + 7;
  v52 = v19 | v55;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  v23 = *(v11 + 32);
  v53 = v11 + 32;
  v54 = v23;
  v24 = v14;
  v25 = v10;
  v23((v22 + v20), v24, v10);
  v26 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F620B04(v26, v22 + v21);
  *(v22 + ((v9 + 7 + v21) & 0xFFFFFFFFFFFFFFF8)) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC30);
  sub_24E602068(&qword_27F24AC38, &qword_27F24AC30);
  v27 = a2;

  sub_24F9288B8();
  v28 = v61;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v65);
  v29 = v48;
  v30 = v46;
  v31 = v62;
  (*(v48 + 16))(v46, v28, v62);
  v32 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v27;
  *(v33 + 16) = v27;
  (*(v29 + 32))(v33 + v32, v30, v31);

  v35 = v25;
  v36 = v50;
  sub_24F92B898();
  v37 = sub_24F92B858();
  v38 = v60;
  (*(*(v37 - 8) + 56))(v60, 1, 1, v37);
  v39 = v47;
  (v58)(v47, v36, v35);
  sub_24F621470(v64, v26, v57);
  v40 = (v19 + 40) & ~v19;
  v41 = (v56 + v40) & ~v55;
  v42 = (v51 + v41) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 2) = 0;
  *(v43 + 3) = 0;
  *(v43 + 4) = v34;
  v54(&v43[v40], v39, v35);
  sub_24F620B04(v26, &v43[v41]);
  *&v43[v42] = v63;

  sub_24F1D3DA4(0, 0, v38, &unk_24FA14758, v43);

  return (*(v29 + 8))(v61, v62);
}

uint64_t sub_24F61DD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  type metadata accessor for Game();
  v4[30] = swift_task_alloc();
  type metadata accessor for Player(0);
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for LeaderboardEntriesShelfConstructionIntent();
  v4[33] = swift_task_alloc();
  v4[34] = type metadata accessor for LeaderboardEntriesResponse(0);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F61DF78, 0, 0);
}

uint64_t sub_24F61DF78()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 288);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = sub_24F92B858();
  *(v0 + 312) = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  *(v0 + 320) = v8;
  *(v0 + 328) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v6);
  *(v0 + 336) = sub_24F92B7F8();

  v9 = sub_24F92B7E8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v4;
  sub_24EA998B8(0, 0, v1, &unk_24FA14778, v10);

  *(v0 + 344) = *v5;
  v12 = type metadata accessor for LeaderboardEntriesShelfIntent();
  *(v0 + 352) = v12;
  v13 = v12[5];
  *(v0 + 496) = v13;
  sub_24F621470(v5 + v13, v2 + v3[5], type metadata accessor for Game);
  v14 = v12[6];
  *(v0 + 500) = v14;
  sub_24F621470(v5 + v14, v2 + v3[6], type metadata accessor for Leaderboard);
  v15 = v12[8];
  *(v0 + 504) = v15;
  sub_24F621470(v5 + v15, v2 + v3[7], type metadata accessor for Player);
  *(v0 + 360) = sub_24F92B7E8();
  v17 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61E184, v17, v16);
}

uint64_t sub_24F61E184()
{
  v1 = *(v0 + 184);

  swift_getKeyPath();
  *(v0 + 368) = OBJC_IVAR____TtC12GameStoreKit30LeaderboardEntryOptionProvider___observationRegistrar;
  *(v0 + 136) = v1;
  *(v0 + 376) = sub_24F621428(&qword_27F241DC0, type metadata accessor for LeaderboardEntryOptionProvider);
  sub_24F91FD88();

  *(v0 + 508) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24F61E278, 0, 0);
}

uint64_t sub_24F61E278()
{
  *(v0 + 384) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61E304, v2, v1);
}

uint64_t sub_24F61E304()
{
  v1 = *(v0 + 508);
  v2 = *(v0 + 344);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 184);

  swift_getKeyPath();
  *(v0 + 144) = v5;
  sub_24F91FD88();

  v6 = *(v5 + 17);
  *v3 = v2;
  *(v3 + v4[8]) = v1;
  *(v3 + v4[9]) = v6;
  v7 = v3 + v4[10];
  *v7 = 0;
  v7[8] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  *(v0 + 392) = v8;
  v9 = swift_task_alloc();
  *(v0 + 400) = v9;
  *v9 = v0;
  v9[1] = sub_24F61E454;

  return MEMORY[0x28217F228](v0 + 16, v8, v8);
}

uint64_t sub_24F61E454()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_24F61E778;
  }

  else
  {
    v2 = sub_24F61E568;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F61E568()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[52] = v3;
  v4 = sub_24F621428(&qword_27F21C800, type metadata accessor for LeaderboardEntriesDataIntent);
  *v3 = v0;
  v3[1] = sub_24F61E664;
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[22];

  return MEMORY[0x28217F4B0](v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_24F61E664()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_24F61EEF0;
  }

  else
  {
    v2 = sub_24F61E900;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F61E778()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[23];
  sub_24F6214D8(v0[37], type metadata accessor for LeaderboardEntriesDataIntent);
  v2(v3, 1, 1, v1);

  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_24EA998B8(0, 0, v3, &unk_24FA147E0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F61E900()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 168) + *(v0 + 500);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  *(v0 + 432) = *v1;
  v4 = *(v3 + *(type metadata accessor for Leaderboard(0) + 48));
  if (*(v1 + *(v2 + 24)) > v4)
  {
    v4 = *(v1 + *(v2 + 24));
  }

  *(v0 + 440) = v4;

  *(v0 + 448) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61E9E8, v6, v5);
}

uint64_t sub_24F61E9E8()
{
  v1 = *(v0 + 184);

  swift_getKeyPath();
  *(v0 + 152) = v1;
  sub_24F91FD88();

  *(v0 + 509) = *(v1 + 16);

  return MEMORY[0x2822009F8](sub_24F61EA98, 0, 0);
}

uint64_t sub_24F61EA98()
{
  *(v0 + 456) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61EB24, v2, v1);
}

uint64_t sub_24F61EB24()
{
  v1 = *(v0 + 184);

  swift_getKeyPath();
  *(v0 + 160) = v1;
  sub_24F91FD88();

  *(v0 + 510) = *(v1 + 17);

  return MEMORY[0x2822009F8](sub_24F61EBD4, 0, 0);
}

uint64_t sub_24F61EBD4()
{
  v18 = *(v0 + 509);
  v19 = *(v0 + 510);
  v16 = *(v0 + 432);
  v17 = *(v0 + 440);
  v1 = *(v0 + 496);
  v2 = *(v0 + 352);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 168);
  sub_24F621470(v7 + *(v0 + 504), v6, type metadata accessor for Player);
  sub_24F621470(v7 + v1, v5, type metadata accessor for Game);
  v8 = (v7 + *(v2 + 28));
  v10 = *v8;
  v9 = v8[1];
  *v3 = v16;
  *(v3 + 8) = v17;
  *(v3 + 16) = v18;
  *(v3 + 17) = v19;
  sub_24F621470(v6, v3 + v4[8], type metadata accessor for Player);
  sub_24F621470(v5, v3 + v4[9], type metadata accessor for Game);
  v11 = (v3 + v4[10]);
  *v11 = v10;
  v11[1] = v9;
  *(v0 + 80) = &_s14descr2861AC041O5GamesON;
  *(v0 + 88) = sub_24EDA569C();
  *(v0 + 56) = 0;

  v12 = sub_24F91FE68();
  sub_24F6214D8(v5, type metadata accessor for Game);
  sub_24F6214D8(v6, type metadata accessor for Player);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  *(v3 + v4[11]) = v12 & 1;
  v13 = swift_task_alloc();
  *(v0 + 464) = v13;
  *v13 = v0;
  v13[1] = sub_24F61EDDC;
  v14 = *(v0 + 392);

  return MEMORY[0x28217F228](v0 + 96, v14, v14);
}

uint64_t sub_24F61EDDC()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_24F61F290;
  }

  else
  {
    v2 = sub_24F61F080;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F61EEF0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  v4 = v0[23];
  sub_24F6214D8(v0[37], type metadata accessor for LeaderboardEntriesDataIntent);
  v2(v3, 1, 1, v1);

  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  sub_24EA998B8(0, 0, v3, &unk_24FA147E0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F61F080()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[60] = v3;
  v4 = sub_24F621428(&qword_27F21D588, type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24F61F17C;
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v8 = v0[22];

  return MEMORY[0x28217F4B0](v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_24F61F17C()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_24F61F6B0;
  }

  else
  {
    v2 = sub_24F61F458;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F61F290()
{
  v1 = v0[35];
  sub_24F6214D8(v0[33], type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  sub_24F6214D8(v1, type metadata accessor for LeaderboardEntriesResponse);
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[23];
  sub_24F6214D8(v0[37], type metadata accessor for LeaderboardEntriesDataIntent);
  v3(v4, 1, 1, v2);

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_24EA998B8(0, 0, v4, &unk_24FA147E8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24F61F458()
{
  v16 = v0[39];
  v17 = v0[40];
  v1 = v0[38];
  v14 = v0[35];
  v15 = v0[37];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[23];
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  sub_24F621470(v4, v3, type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  (*(v6 + 8))(v5, v7);
  sub_24F6214D8(v4, type metadata accessor for GSKShelf);
  sub_24F6214D8(v2, type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  sub_24F6214D8(v14, type metadata accessor for LeaderboardEntriesResponse);
  sub_24F6214D8(v15, type metadata accessor for LeaderboardEntriesDataIntent);
  v17(v1, 1, 1, v16);

  v9 = sub_24F92B7E8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_24EA998B8(0, 0, v1, &unk_24FA147F0, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24F61F6B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 12));
  v1 = v0[35];
  sub_24F6214D8(v0[33], type metadata accessor for LeaderboardEntriesShelfConstructionIntent);
  sub_24F6214D8(v1, type metadata accessor for LeaderboardEntriesResponse);
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[23];
  sub_24F6214D8(v0[37], type metadata accessor for LeaderboardEntriesDataIntent);
  v3(v4, 1, 1, v2);

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_24EA998B8(0, 0, v4, &unk_24FA147E8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24F61F880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_24F92B7F8();
  *(v4 + 32) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F61F918, v6, v5);
}

uint64_t sub_24F61F918()
{
  v1 = v0[3];

  if (*(v1 + 32) == 1)
  {
    *(v1 + 32) = 1;
  }

  else
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_24F621428(&qword_27F241DC0, type metadata accessor for LeaderboardEntryOptionProvider);
    sub_24F91FD78();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F61FA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v8 = type metadata accessor for LeaderboardEntriesShelfIntent();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a3, v10);
  sub_24F621470(a4, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeaderboardEntriesShelfIntent);
  v19 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v20 = (v12 + *(v23 + 80) + v19) & ~*(v23 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  (*(v11 + 32))(&v21[v19], v14, v10);
  sub_24F620B04(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &v21[v20]);
  *&v21[(v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v24;

  sub_24F1D3DA4(0, 0, v17, &unk_24FA14828, v21);
}

uint64_t sub_24F61FD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_24E614970;

  return sub_24F61DD50(a6, a7, a4, a5);
}

uint64_t sub_24F61FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_24E6541E4;

  return sub_24F61DD50(a6, a7, a4, a5);
}

uint64_t sub_24F61FE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v3;
  v4[11] = v7;
  v4[12] = v8;

  return MEMORY[0x2822009F8](sub_24F61FFD8, 0, 0);
}

uint64_t sub_24F61FFD8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v14 = *(v0 + 16);
  v9 = swift_task_alloc();
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v10;
  type metadata accessor for GSKShelf();
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v8);
  sub_24F92B928();

  (*(v4 + 16))(v3, v1, v6);
  sub_24E602068(&qword_27F22D120, &qword_27F213760);
  sub_24F9280F8();
  (*(v4 + 8))(v1, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v11 - 8) + 56))(v14, 0, 1, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F6201D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for LeaderboardEntriesShelfIntent();
  v7 = *(*(v6 - 1) + 80);

  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + ((v4 + v5 + v7) & ~v7);
  v9 = v8 + v6[5];

  v10 = type metadata accessor for Game();
  v11 = v10[18];
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v45 = *(v13 + 8);
  v45(v9 + v11, v12);
  v14 = v10[19];
  v42 = *(v13 + 48);
  if (!v42(v9 + v14, 1, v12))
  {
    v45(v9 + v14, v12);
  }

  v15 = v10[21];
  v16 = sub_24F920818();
  v41 = *(v16 - 8);
  v44 = v16;
  v43 = *(v41 + 48);
  if (!v43(v9 + v15, 1))
  {
    (*(v41 + 8))(v9 + v15, v44);
  }

  v17 = v8 + v6[6];

  v18 = type metadata accessor for Leaderboard(0);
  v19 = *(v18 + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
  if (!(*(*(v20 - 8) + 48))(v17 + v19, 1, v20))
  {
    v21 = sub_24F91F648();
    (*(*(v21 - 8) + 8))(v17 + v19, v21);
  }

  v22 = *(v18 + 72);
  if (!(v43)(v17 + v22, 1, v44))
  {
    (*(v41 + 8))(v17 + v22, v44);
  }

  v23 = v8 + v6[8];

  v24 = type metadata accessor for Player(0);
  v45(v23 + v24[6], v12);

  if (*(v23 + v24[9] + 8) != 1)
  {
  }

  v25 = v23 + v24[13];
  v26 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = type metadata accessor for CallProviderConversationHandle();
    v28 = *(*(v27 - 8) + 48);
    if (!v28(v25, 1, v27))
    {

      v29 = *(type metadata accessor for CallProvider() + 24);
      if (!v42(v25 + v29, 1, v12))
      {
        v45(v25 + v29, v12);
      }
    }

    v30 = v25 + *(v26 + 20);
    if (!v28(v30, 1, v27))
    {

      v31 = *(type metadata accessor for CallProvider() + 24);
      if (!v42(v30 + v31, 1, v12))
      {
        v45(v30 + v31, v12);
      }
    }
  }

  if (*(v23 + v24[15] + 8))
  {
  }

  v32 = v23 + v24[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v32, 1, PlayedTogetherInfo))
  {

    v45(v32 + v10[18], v12);
    v34 = v10[19];
    if (!v42(v32 + v34, 1, v12))
    {
      v45(v32 + v34, v12);
    }

    v35 = v10[21];
    if (!(v43)(v32 + v35, 1, v44))
    {
      (*(v41 + 8))(v32 + v35, v44);
    }
  }

  v36 = v23 + v24[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v36, 1, ChallengeInfo))
  {

    v45(v36 + v10[18], v12);
    v38 = v10[19];
    if (!v42(v36 + v38, 1, v12))
    {
      v45(v36 + v38, v12);
    }

    v39 = v10[21];
    if (!(v43)(v36 + v39, 1, v44))
    {
      (*(v41 + 8))(v36 + v39, v44);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F620B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardEntriesShelfIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F620B68(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LeaderboardEntriesShelfIntent() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v1 + 16);

  return sub_24F61FA58(a1, v9, v1 + v4, v1 + v7, v8);
}

uint64_t sub_24F620C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC28);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F620DBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LeaderboardEntriesShelfIntent() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F61FDDC(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_24F620F5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F61F880(a1, v4, v5, v6);
}

uint64_t sub_24F621020@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F621428(&qword_27F241DC0, type metadata accessor for LeaderboardEntryOptionProvider);
  sub_24F91FD88();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_24F6210F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  sub_24F92B7F8();
  *(v4 + 32) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F621188, v6, v5);
}

uint64_t sub_24F621188()
{
  v1 = v0[3];

  if (*(v1 + 32))
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    sub_24F621428(&qword_27F241DC0, type metadata accessor for LeaderboardEntryOptionProvider);
    sub_24F91FD78();
  }

  else
  {
    *(v1 + 32) = 0;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F6212C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F6210F0(a1, v4, v5, v6);
}

uint64_t sub_24F621374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F6210F0(a1, v4, v5, v6);
}

uint64_t sub_24F621428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F621470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6214D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_5Tm_3()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for LeaderboardEntriesShelfIntent();
  v7 = *(*(v6 - 1) + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);
  v8 = v1 + ((v4 + v5 + v7) & ~v7);
  v9 = v8 + v6[5];

  v10 = type metadata accessor for Game();
  v11 = v10[18];
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v45 = *(v13 + 8);
  v45(v9 + v11, v12);
  v14 = v10[19];
  v42 = *(v13 + 48);
  if (!v42(v9 + v14, 1, v12))
  {
    v45(v9 + v14, v12);
  }

  v15 = v10[21];
  v16 = sub_24F920818();
  v41 = *(v16 - 8);
  v44 = v16;
  v43 = *(v41 + 48);
  if (!v43(v9 + v15, 1))
  {
    (*(v41 + 8))(v9 + v15, v44);
  }

  v17 = v8 + v6[6];

  v18 = type metadata accessor for Leaderboard(0);
  v19 = *(v18 + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
  if (!(*(*(v20 - 8) + 48))(v17 + v19, 1, v20))
  {
    v21 = sub_24F91F648();
    (*(*(v21 - 8) + 8))(v17 + v19, v21);
  }

  v22 = *(v18 + 72);
  if (!(v43)(v17 + v22, 1, v44))
  {
    (*(v41 + 8))(v17 + v22, v44);
  }

  v23 = v8 + v6[8];

  v24 = type metadata accessor for Player(0);
  v45(v23 + v24[6], v12);

  if (*(v23 + v24[9] + 8) != 1)
  {
  }

  v25 = v23 + v24[13];
  v26 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = type metadata accessor for CallProviderConversationHandle();
    v28 = *(*(v27 - 8) + 48);
    if (!v28(v25, 1, v27))
    {

      v29 = *(type metadata accessor for CallProvider() + 24);
      if (!v42(v25 + v29, 1, v12))
      {
        v45(v25 + v29, v12);
      }
    }

    v30 = v25 + *(v26 + 20);
    if (!v28(v30, 1, v27))
    {

      v31 = *(type metadata accessor for CallProvider() + 24);
      if (!v42(v30 + v31, 1, v12))
      {
        v45(v30 + v31, v12);
      }
    }
  }

  if (*(v23 + v24[15] + 8))
  {
  }

  v32 = v23 + v24[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v32, 1, PlayedTogetherInfo))
  {

    v45(v32 + v10[18], v12);
    v34 = v10[19];
    if (!v42(v32 + v34, 1, v12))
    {
      v45(v32 + v34, v12);
    }

    v35 = v10[21];
    if (!(v43)(v32 + v35, 1, v44))
    {
      (*(v41 + 8))(v32 + v35, v44);
    }
  }

  v36 = v23 + v24[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v36, 1, ChallengeInfo))
  {

    v45(v36 + v10[18], v12);
    v38 = v10[19];
    if (!v42(v36 + v38, 1, v12))
    {
      v45(v36 + v38, v12);
    }

    v39 = v10[21];
    if (!(v43)(v36 + v39, 1, v44))
    {
      (*(v41 + 8))(v36 + v39, v44);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F621EC4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for LeaderboardEntriesShelfIntent() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E614970;

  return sub_24F61FD28(a1, v10, v11, v12, v1 + v6, v1 + v9, v13);
}

uint64_t sub_24F6220A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = type metadata accessor for Game();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_24F6221EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Game();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for AccessPointDataIntent()
{
  result = qword_27F24AC40;
  if (!qword_27F24AC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F622364()
{
  sub_24E637694();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Game();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F622400(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F622C20();
  sub_24F92D128();
  v10[15] = *v3;
  v10[14] = 0;
  sub_24E636B10();
  sub_24F92CD48();
  if (!v2)
  {
    v10[13] = 1;
    sub_24F92CD18();
    type metadata accessor for AccessPointDataIntent();
    v10[12] = 2;
    type metadata accessor for Player(0);
    sub_24E637000(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CCF8();
    v10[11] = 3;
    type metadata accessor for Game();
    sub_24E637000(&qword_27F214950, type metadata accessor for Game);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F6226AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC50);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AccessPointDataIntent();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F622C20();
  v14 = v25;
  sub_24F92D108();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v25 = v7;
  v15 = v22;
  v30 = 0;
  sub_24E636FAC();
  sub_24F92CC68();
  *v12 = v31;
  v29 = 1;
  v16 = v15;
  v12[1] = sub_24F92CC38() & 1;
  type metadata accessor for Player(0);
  v28 = 2;
  sub_24E637000(&qword_27F213E38, type metadata accessor for Player);
  v17 = v25;
  sub_24F92CC18();
  sub_24E6365D4(v17, &v12[*(v10 + 24)]);
  v27 = 3;
  sub_24E637000(&qword_27F214968, type metadata accessor for Game);
  v18 = v4;
  v19 = v24;
  sub_24F92CC68();
  (*(v16 + 8))(v9, v19);
  sub_24E636644(v18, &v12[*(v10 + 28)]);
  sub_24F622C74(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24F622CD8(v12);
}

uint64_t sub_24F622AB4()
{
  v1 = 0x65736143657375;
  v2 = 0x726579616C70;
  if (*v0 != 2)
  {
    v2 = 1701667175;
  }

  if (*v0)
  {
    v1 = 0x6867694864616F6CLL;
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

uint64_t sub_24F622B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F622E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F622B58(uint64_t a1)
{
  v2 = sub_24F622C20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F622B94(uint64_t a1)
{
  v2 = sub_24F622C20();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F622C20()
{
  result = qword_27F24AC58;
  if (!qword_27F24AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC58);
  }

  return result;
}

uint64_t sub_24F622C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessPointDataIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F622CD8(uint64_t a1)
{
  v2 = type metadata accessor for AccessPointDataIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F622D48()
{
  result = qword_27F24AC68;
  if (!qword_27F24AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC68);
  }

  return result;
}

unint64_t sub_24F622DA0()
{
  result = qword_27F24AC70;
  if (!qword_27F24AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC70);
  }

  return result;
}

unint64_t sub_24F622DF8()
{
  result = qword_27F24AC78;
  if (!qword_27F24AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC78);
  }

  return result;
}

uint64_t sub_24F622E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867694864616F6CLL && a2 == 0xEE0073746867696CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ChallengesAllGamesShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F62300C(uint64_t a1)
{
  v2 = sub_24F623218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F623048(uint64_t a1)
{
  v2 = sub_24F623218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesAllGamesShelfIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC80);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F623218();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_24E607F0C();
    sub_24F92CD48();
  }

  return (*(v9 + 8))(v6, v4);
}

unint64_t sub_24F623218()
{
  result = qword_27F24AC88;
  if (!qword_27F24AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC88);
  }

  return result;
}

uint64_t ChallengesAllGamesShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F623218();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_24E60802C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F6234D4()
{
  result = qword_27F24AC98;
  if (!qword_27F24AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AC98);
  }

  return result;
}

unint64_t sub_24F62352C()
{
  result = qword_27F24ACA0;
  if (!qword_27F24ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACA0);
  }

  return result;
}

unint64_t sub_24F623584()
{
  result = qword_27F24ACA8;
  if (!qword_27F24ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACA8);
  }

  return result;
}

uint64_t PageContainer.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageContainer.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PageContainer.pages.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_24F6236B4()
{
  if (*v0)
  {
    return 0x7365676170;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24F6236E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365676170 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F6237B0(uint64_t a1)
{
  v2 = sub_24F6239EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6237EC(uint64_t a1)
{
  v2 = sub_24F6239EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageContainer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ACB0);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6239EC();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ACC0);
    sub_24F623C80(&qword_27F24ACC8);
    sub_24F92CD48();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_24F6239EC()
{
  result = qword_27F24ACB8;
  if (!qword_27F24ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACB8);
  }

  return result;
}

uint64_t PageContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ACD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6239EC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ACC0);
  v16 = 1;
  sub_24F623C80(&qword_27F24ACD8);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F623C80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F623D0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

unint64_t sub_24F623D74()
{
  result = qword_27F24ACE0;
  if (!qword_27F24ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACE0);
  }

  return result;
}

unint64_t sub_24F623DCC()
{
  result = qword_27F24ACE8;
  if (!qword_27F24ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACE8);
  }

  return result;
}

unint64_t sub_24F623E24()
{
  result = qword_27F24ACF0;
  if (!qword_27F24ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ACF0);
  }

  return result;
}

uint64_t sub_24F623E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F623FEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ClampingComponentGrid()
{
  result = qword_27F24ACF8;
  if (!qword_27F24ACF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F624174()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
      if (v2 <= 0x3F)
      {
        sub_24E61C938();
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F6242A0(void *a1, uint64_t a2, char a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ADC8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F626C78();
  sub_24F92D128();
  v16 = a4;
  v18 = 0;
  sub_24E620F7C();
  sub_24F92CD48();
  if (!v5)
  {
    v16 = *&a2;
    v17 = a3 & 1;
    v18 = 1;
    sub_24F92CCF8();
    v16 = a5;
    v18 = 2;
    sub_24F92CD48();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24F62449C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6264F4();
  sub_24F92D128();
  *&v11[0] = *v3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050);
  sub_24F626548(&qword_27F24AD70);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v11[0]) = 1;
    sub_24F92CD38();
    v10 = *(v3 + 32);
    v11[0] = *(v3 + 16);
    v11[1] = v10;
    v12 = 2;
    sub_24ECF1A40();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F6246CC()
{
  v1 = 0x6C61656469;
  if (*v0 != 1)
  {
    v1 = 7889261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_24F624714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F626838(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F62473C(uint64_t a1)
{
  v2 = sub_24F626C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F624778(uint64_t a1)
{
  v2 = sub_24F626C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6247B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24F626038(a1);
  if (!v2)
  {
    *a2 = v6;
    *(a2 + 8) = result;
    *(a2 + 16) = v5 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_24F624820()
{
  v1 = 1937207154;
  if (*v0 != 1)
  {
    v1 = 0x746469576D657469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24F62487C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F62694C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F6248A4(uint64_t a1)
{
  v2 = sub_24F6264F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6248E0(uint64_t a1)
{
  v2 = sub_24F6264F4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F62491C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24F626264(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_24F624978(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F625E98();
  sub_24F92D128();
  LOBYTE(v18) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v9 = type metadata accessor for ClampingComponentGrid();
    LOBYTE(v18) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    LOBYTE(v18) = 3;
    sub_24F929608();
    sub_24F625F9C(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v18 = *(v3 + *(v9 + 32));
    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    sub_24ECF153C(&qword_27F21F8A8, &qword_27F21F8B0);
    sub_24F92CD48();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = *(v10 + 32);
    v15 = v10[5];
    v18 = *v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = 5;
    sub_24F625FE4();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F624D50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD28);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ClampingComponentGrid();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v45 = v12 + 40;
  sub_24E61DA68(&v46, (v12 + 40), qword_27F21B590);
  v13 = *(v10 + 24);
  v14 = sub_24F92A6D8();
  v15 = *(*(v14 - 8) + 56);
  v43 = v13;
  v15(&v12[v13], 1, 1, v14);
  v41 = v10;
  v16 = *(v10 + 28);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(&v12[v16], 1, 1, v17);
  v19 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F625E98();
  v38 = v9;
  v20 = v40;
  sub_24F92D108();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
    v22 = v42;
    v23 = v43;
    sub_24E601704(v45, qword_27F24EC90);
    sub_24E601704(&v12[v23], &qword_27F215440);
    return sub_24E601704(&v12[v22], &qword_27F213E68);
  }

  else
  {
    v40 = v5;
    v21 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v24 = v47;
    *v12 = v46;
    *(v12 + 1) = v24;
    *(v12 + 4) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v50 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    v25 = v41;
    v26 = v21;
    sub_24E61DA68(&v46, v45, qword_27F24EC90);
    LOBYTE(v46) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v12[v43], &qword_27F215440);
    LOBYTE(v46) = 3;
    sub_24F625F9C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v27 = v36;
    sub_24F92CC18();
    sub_24E61DA68(v27, &v12[v42], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    v50 = 4;
    sub_24ECF153C(&qword_27F21F8D0, &qword_27F21F8D8);
    sub_24F92CC68();
    *&v12[*(v25 + 32)] = v46;
    v50 = 5;
    sub_24F625EEC();
    sub_24F92CC68();
    (*(v26 + 8))(v38, v39);
    v28 = *(&v46 + 1);
    v29 = v47;
    v30 = v48;
    v31 = v49;
    v32 = &v12[*(v25 + 36)];
    *v32 = v46;
    *(v32 + 1) = v28;
    *(v32 + 1) = v29;
    v32[32] = v30;
    *(v32 + 5) = v31;
    sub_24F625AFC(v12, v35);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24F625F40(v12);
  }
}

unint64_t sub_24F62548C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x736D657469;
  if (v1 != 4)
  {
    v4 = 0x6369666963657073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0x4D747865746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F62554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F626A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F625574(uint64_t a1)
{
  v2 = sub_24F625E98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6255B0(uint64_t a1)
{
  v2 = sub_24F625E98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6255EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F62571C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ClampingComponentGrid();
  v7 = a2 + *(v6 + 36);
  v8 = *(v7 + 8);
  v9 = *(a2 + *(v6 + 32));
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  *a3 = v5;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
}

uint64_t sub_24F62579C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for ClampingComponentGrid();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  *a2 = sub_24F9257B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD18);
  v11[1] = *(a1 + *(v5 + 44));
  swift_getKeyPath();
  sub_24F625AFC(a1, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_24F625D60(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050);
  sub_24E602068(&qword_27F218058, &qword_27F218050);
  sub_24F625E44();
  return sub_24F927228();
}

uint64_t sub_24F62596C()
{
  sub_24F47D88C();

  return sub_24F9218E8();
}

unint64_t sub_24F6259FC()
{
  result = qword_27F24AD10;
  if (!qword_27F24AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD10);
  }

  return result;
}

uint64_t sub_24F625AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClampingComponentGrid();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F625B60()
{
  v1 = type metadata accessor for ClampingComponentGrid();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  }

  v3 = *(v1 + 24);
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 28);
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F625D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClampingComponentGrid();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F625DC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClampingComponentGrid() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F62571C(a1, v6, a2);
}

unint64_t sub_24F625E44()
{
  result = qword_27F24AD20;
  if (!qword_27F24AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD20);
  }

  return result;
}

unint64_t sub_24F625E98()
{
  result = qword_27F24AD30;
  if (!qword_27F24AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD30);
  }

  return result;
}

unint64_t sub_24F625EEC()
{
  result = qword_27F24AD38;
  if (!qword_27F24AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD38);
  }

  return result;
}

uint64_t sub_24F625F40(uint64_t a1)
{
  v2 = type metadata accessor for ClampingComponentGrid();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F625F9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F625FE4()
{
  result = qword_27F24AD48;
  if (!qword_27F24AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD48);
  }

  return result;
}

uint64_t sub_24F626038(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ADB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F626C78();
  sub_24F92D108();
  v9 = 0;
  sub_24E620E90();
  sub_24F92CC68();
  v9 = 1;
  sub_24F92CC18();
  v7 = v8;
  v9 = 2;
  sub_24F92CC68();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_24F626264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AD50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6264F4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050);
  v19 = 0;
  sub_24F626548(&qword_27F24AD60);
  sub_24F92CC68();
  v9 = v16[0];
  LOBYTE(v16[0]) = 1;
  v10 = sub_24F92CC58();
  v19 = 2;
  sub_24ECF19EC();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v11 = v16[0];
  v12 = v16[1];
  v13 = v17;
  v14 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_24F6264F4()
{
  result = qword_27F24AD58;
  if (!qword_27F24AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD58);
  }

  return result;
}

uint64_t sub_24F626548(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218050);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F62662C()
{
  result = qword_27F24AD88;
  if (!qword_27F24AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD88);
  }

  return result;
}

unint64_t sub_24F626684()
{
  result = qword_27F24AD90;
  if (!qword_27F24AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD90);
  }

  return result;
}

unint64_t sub_24F6266DC()
{
  result = qword_27F24AD98;
  if (!qword_27F24AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AD98);
  }

  return result;
}

unint64_t sub_24F626734()
{
  result = qword_27F24ADA0;
  if (!qword_27F24ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADA0);
  }

  return result;
}

unint64_t sub_24F62678C()
{
  result = qword_27F24ADA8;
  if (!qword_27F24ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADA8);
  }

  return result;
}

unint64_t sub_24F6267E4()
{
  result = qword_27F24ADB0;
  if (!qword_27F24ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADB0);
  }

  return result;
}

uint64_t sub_24F626838(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61656469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F62694C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA77610 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746469576D657469 && a2 == 0xE900000000000068)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F626A78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xED00006E6F697461)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_24F626C78()
{
  result = qword_27F24ADC0;
  if (!qword_27F24ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADC0);
  }

  return result;
}

unint64_t sub_24F626CE0()
{
  result = qword_27F24ADD0;
  if (!qword_27F24ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADD0);
  }

  return result;
}

unint64_t sub_24F626D38()
{
  result = qword_27F24ADD8;
  if (!qword_27F24ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADD8);
  }

  return result;
}

unint64_t sub_24F626D90()
{
  result = qword_27F24ADE0;
  if (!qword_27F24ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADE0);
  }

  return result;
}

uint64_t sub_24F626DF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = swift_task_alloc();
  *(v3 + 24) = v9;
  *v9 = v3;
  v9[1] = sub_24E67D244;

  return sub_24F626ECC(v5, v6, v7, v8, a3);
}

uint64_t sub_24F626ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24F626EF4, 0, 0);
}

uint64_t sub_24F626EF4()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_24F93DE60;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_24F627000;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];

  return sub_24E64BA5C(v3, v7, v5, v6);
}

uint64_t sub_24F627000(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_24F6271D8;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_24F62713C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F62713C()
{
  sub_24ECD0AF8(*(v0 + 80));
  v2 = v1;
  v4 = v3;

  if (v2)
  {
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_24F6271D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AccessPointHighlight.cornerRadii(highlight:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_24E60169C(a1, v4, &qword_27F21C090);
  v8 = type metadata accessor for AccessPointHighlight(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_24E601704(v4, &qword_27F21C090);
    v9 = type metadata accessor for AccessPointIconType(0);
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  else
  {
    sub_24E60169C(&v4[*(v8 + 32)], v7, &qword_27F21C0A0);
    sub_24F634DF4(v4, type metadata accessor for AccessPointHighlight);
    v10 = type metadata accessor for AccessPointIconType(0);
    (*(*(v10 - 8) + 48))(v7, 1, v10);
  }

  sub_24E601704(v7, &qword_27F21C0A0);
  return sub_24F924EE8();
}

double AccessPointHighlight.id.getter@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t AccessPointHighlight.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AccessPointHighlight.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t AccessPointHighlight.subtitle.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AccessPointHighlight.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t AccessPointHighlight.duration.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for AccessPointHighlight(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t AccessPointHighlight.shouldAnimate.setter(char a1)
{
  result = type metadata accessor for AccessPointHighlight(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AccessPointHighlight.shouldSizeToFit.setter(char a1)
{
  result = type metadata accessor for AccessPointHighlight(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t AccessPointHighlight.prefersCustomShape.setter(char a1)
{
  result = type metadata accessor for AccessPointHighlight(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

double AccessPointHighlight.segue.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AccessPointHighlight(0);
  sub_24E60169C(v1 + *(v3 + 52), v6, qword_27F24EC90);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_24F627D3C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6575676573;
    v7 = 0x7274654D65676170;
    if (a1 != 10)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6E41646C756F6873;
    if (a1 == 7)
    {
      v9 = 0x6953646C756F6873;
    }

    else
    {
      v9 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x49676E696461656CLL;
    v3 = 0x676E696C69617274;
    if (a1 != 4)
    {
      v3 = 0x6E6F697461727564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656C746974;
    if (a1 != 1)
    {
      v4 = 0x656C746974627573;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F627ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F633CA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F627F00(uint64_t a1)
{
  v2 = sub_24F628428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F627F3C(uint64_t a1)
{
  v2 = sub_24F628428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AccessPointHighlight.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24ADE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F628428();
  sub_24F92D128();
  v8[31] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v1)
  {
    v8[30] = 1;
    sub_24F92CCA8();
    v8[29] = 2;
    sub_24F92CCA8();
    type metadata accessor for AccessPointHighlight(0);
    v8[28] = 3;
    type metadata accessor for AccessPointIconType(0);
    sub_24F62847C(&qword_27F24ADF8, type metadata accessor for AccessPointIconType);
    sub_24F92CCF8();
    v8[27] = 4;
    sub_24F92CCF8();
    v8[26] = 5;
    sub_24F92CCC8();
    v8[25] = 6;
    sub_24F92CCB8();
    v8[24] = 7;
    sub_24F92CCB8();
    v8[15] = 8;
    sub_24F92CCB8();
    v8[14] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v8[13] = 10;
    sub_24F928818();
    sub_24F62847C(&qword_27F21F898, MEMORY[0x277D21BF8]);
    sub_24F92CCF8();
    v8[12] = 11;
    sub_24F929608();
    sub_24F62847C(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F628428()
{
  result = qword_27F24ADF0;
  if (!qword_27F24ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24ADF0);
  }

  return result;
}

uint64_t sub_24F62847C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AccessPointHighlight.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = v51 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE00);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v12 = v51 - v11;
  v13 = type metadata accessor for AccessPointHighlight(0);
  MEMORY[0x28223BE20](v13);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 28);
  v18 = type metadata accessor for AccessPointIconType(0);
  v19 = *(*(v18 - 8) + 56);
  v67 = v17;
  v19(&v15[v17], 1, 1, v18);
  v66 = v13[8];
  v19(&v15[v66], 1, 1, v18);
  v20 = &v15[v13[13]];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v64 = v20;
  sub_24E61DA68(&v68, v20, qword_27F21B590);
  v21 = v13[14];
  v22 = sub_24F928818();
  v23 = *(*(v22 - 8) + 56);
  v63 = v21;
  v23(&v15[v21], 1, 1, v22);
  v24 = v13[15];
  v25 = sub_24F929608();
  v26 = *(*(v25 - 8) + 56);
  v61 = v24;
  v65 = v15;
  v26(&v15[v24], 1, 1, v25);
  v27 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_24F628428();
  v58 = v12;
  v28 = v60;
  sub_24F92D108();
  if (v28)
  {
    v30 = v66;
    v29 = v67;
    __swift_destroy_boxed_opaque_existential_1(v62);

    v32 = v65;

    sub_24E601704(v32 + v29, &qword_27F21C0A0);
    sub_24E601704(v32 + v30, &qword_27F21C0A0);
    sub_24E601704(v64, qword_27F24EC90);
    sub_24E601704(v32 + v63, &qword_27F2157F0);
    return sub_24E601704(v32 + v61, &qword_27F213E68);
  }

  else
  {
    v60 = v18;
    v51[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v71 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v31 = v66;
    v34 = v69;
    v35 = v65;
    *v65 = v68;
    v35[1] = v34;
    *(v35 + 4) = v70;
    LOBYTE(v68) = 1;
    v36 = sub_24F92CBC8();
    v37 = v67;
    v39 = v38;
    *(v35 + 5) = v36;
    *(v35 + 6) = v38;
    LOBYTE(v68) = 2;
    v40 = sub_24F92CBC8();
    v51[2] = v39;
    *(v35 + 7) = v40;
    *(v35 + 8) = v41;
    v51[1] = v41;
    LOBYTE(v68) = 3;
    v42 = sub_24F62847C(&qword_27F24AE08, type metadata accessor for AccessPointIconType);
    v43 = v56;
    v51[0] = v42;
    sub_24F92CC18();
    sub_24E61DA68(v43, v35 + v37, &qword_27F21C0A0);
    LOBYTE(v68) = 4;
    v44 = v55;
    sub_24F92CC18();
    sub_24E61DA68(v44, v35 + v31, &qword_27F21C0A0);
    LOBYTE(v68) = 5;
    v45 = sub_24F92CBE8();
    v46 = v35 + v13[9];
    *v46 = v45;
    v46[8] = v47 & 1;
    LOBYTE(v68) = 6;
    *(v35 + v13[10]) = sub_24F92CBD8();
    LOBYTE(v68) = 7;
    *(v35 + v13[11]) = sub_24F92CBD8();
    LOBYTE(v68) = 8;
    *(v35 + v13[12]) = sub_24F92CBD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v71 = 9;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v68, v64, qword_27F24EC90);
    LOBYTE(v68) = 10;
    sub_24F62847C(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
    sub_24F92CC18();
    v48 = v65;
    sub_24E61DA68(v54, v65 + v63, &qword_27F2157F0);
    LOBYTE(v68) = 11;
    sub_24F62847C(&qword_27F213F48, MEMORY[0x277D21F70]);
    v50 = v58;
    v49 = v59;
    sub_24F92CC18();
    (*(v57 + 8))(v50, v49);
    sub_24E61DA68(v53, v48 + v61, &qword_27F213E68);
    sub_24F62CFF8(v48, v52, type metadata accessor for AccessPointHighlight);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return sub_24F634DF4(v48, type metadata accessor for AccessPointHighlight);
  }
}

uint64_t sub_24F628F40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController);
  sub_24F91FD88();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24F629024()
{
  swift_getKeyPath();
  sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_24F629124(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F62923C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 16) = v1;
  return result;
}

void (*sub_24F62928C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  v4[5] = OBJC_IVAR____TtC12GameStoreKit21APAnimationController___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24E632DD8();
  return sub_24F6293C4;
}

void sub_24F6293C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

uint64_t APAnimationController.__allocating_init(highlightIndex:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24F91FDB8();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t APAnimationController.init(highlightIndex:)(uint64_t a1)
{
  sub_24F91FDB8();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_24F6294F4@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v67 = sub_24F924848();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for APHighlightTitle(0);
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v90 = v4;
  v91 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9234D8();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v79 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  v10 = sub_24F927748();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F924918();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B038);
  MEMORY[0x28223BE20](v78);
  v20 = &v64 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B040);
  MEMORY[0x28223BE20](v80);
  v86 = &v64 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B048);
  MEMORY[0x28223BE20](v88);
  v89 = &v64 - v22;
  v23 = (v1 + *(v3 + 32));
  v24 = v23[1];
  v95 = *v23;
  v96 = v24;
  sub_24E600AEC();

  v77 = sub_24F925E18();
  v76 = v25;
  LOBYTE(v24) = v26;
  v75 = v27;
  KeyPath = swift_getKeyPath();
  v74 = sub_24F925A18();
  v72 = swift_getKeyPath();
  v70 = v24 & 1;
  LOBYTE(v95) = v24 & 1;
  LOBYTE(v94) = 0;
  v71 = sub_24F9251C8();
  sub_24F924908();
  (*(v13 + 16))(v15, v18, v12);
  sub_24F62847C(&qword_27F229180, MEMORY[0x277CE0068]);
  v28 = v1;
  v69 = sub_24F923958();
  (*(v13 + 8))(v18, v12);
  v93 = v3;
  v29 = v1 + *(v3 + 28);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v95) = v30;
  v68 = v31;
  v96 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v32 = 1.0;
  if ((v94 & 1) == 0)
  {
    if (*(v1 + *(v93 + 36)))
    {
      v32 = 0.75;
    }

    else
    {
      v32 = 1.0;
    }
  }

  sub_24F9278B8();
  v34 = v33;
  v36 = v35;
  sub_24F76A034(v9);
  v37 = v82;
  v38 = v83;
  v39 = v79;
  (*(v82 + 104))(v79, *MEMORY[0x277CDF3D0], v83);
  v40 = sub_24F9234C8();
  v41 = *(v37 + 8);
  v41(v39, v38);
  v41(v9, v38);
  v42 = v84;
  v43 = MEMORY[0x277CE13B0];
  if ((v40 & 1) == 0)
  {
    v43 = MEMORY[0x277CE13B8];
  }

  v44 = v81;
  v45 = v85;
  (*(v84 + 104))(v81, *v43, v85);
  (*(v42 + 32))(&v20[*(v78 + 36)], v44, v45);
  v46 = v76;
  *v20 = v77;
  *(v20 + 1) = v46;
  v20[16] = v70;
  v47 = KeyPath;
  *(v20 + 3) = v75;
  *(v20 + 4) = v47;
  *(v20 + 5) = 1;
  v20[48] = 0;
  v48 = v74;
  *(v20 + 7) = v72;
  *(v20 + 8) = v48;
  *(v20 + 18) = v71;
  *(v20 + 10) = v69;
  *(v20 + 11) = v32;
  *(v20 + 12) = v32;
  *(v20 + 13) = v34;
  *(v20 + 14) = v36;
  LOBYTE(v95) = v30;
  v96 = v68;
  sub_24F926F38();
  v49 = 0.0;
  if ((v94 & 1) == 0)
  {
    if (*(v28 + *(v93 + 36)))
    {
      v49 = 4.0;
    }

    else
    {
      v49 = 0.0;
    }
  }

  v50 = v86;
  sub_24E6009C8(v20, v86, &qword_27F24B038);
  v51 = v50 + *(v80 + 36);
  *v51 = v49;
  *(v51 + 8) = 0;
  v52 = v91;
  sub_24F62CFF8(v28, v91, type metadata accessor for APHighlightTitle);
  v53 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v54 = swift_allocObject();
  sub_24F630CD4(v52, v54 + v53, type metadata accessor for APHighlightTitle);
  v55 = v89;
  sub_24E6009C8(v50, v89, &qword_27F24B040);
  v56 = (v55 + *(v88 + 36));
  *v56 = sub_24F634634;
  v56[1] = v54;
  v56[2] = 0;
  v56[3] = 0;
  v57 = v28 + *(v93 + 24);
  v58 = *v57;
  LOBYTE(v54) = *(v57 + 8);

  if ((v54 & 1) == 0)
  {
    sub_24F92BDC8();
    v59 = sub_24F9257A8();
    sub_24F921FD8();

    v60 = v65;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v66 + 8))(v60, v67);
    v58 = v95;
  }

  swift_getKeyPath();
  v95 = v58;
  sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController);
  sub_24F91FD88();

  swift_beginAccess();
  v61 = *(v58 + 16);

  v94 = v61;
  sub_24F62CFF8(v28, v52, type metadata accessor for APHighlightTitle);
  v62 = swift_allocObject();
  sub_24F630CD4(v52, v62 + v53, type metadata accessor for APHighlightTitle);
  sub_24F6348C4();
  sub_24F926AB8();

  return sub_24E601704(v55, &qword_27F24B048);
}

uint64_t sub_24F629F50(uint64_t a1)
{
  result = type metadata accessor for APHighlightTitle(0);
  if (*(a1 + *(result + 36)) == 1)
  {
    v3 = sub_24F927678();
    MEMORY[0x28223BE20](v3);
    sub_24F923B18();
  }

  return result;
}

uint64_t sub_24F62A014()
{
  type metadata accessor for APHighlightTitle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t sub_24F62A09C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v43 = sub_24F924848();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for APHighlightSubtitle(0);
  v51 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v53 = v4;
  v54 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AFF0);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v57 = &v40 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AFF8);
  MEMORY[0x28223BE20](v47);
  v50 = &v40 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B000);
  MEMORY[0x28223BE20](v58);
  v52 = &v40 - v7;
  v8 = (v1 + v3[7]);
  v9 = v8[1];
  *&v67[0] = *v8;
  *(&v67[0] + 1) = v9;
  sub_24E600AEC();

  v46 = sub_24F925E18();
  v45 = v10;
  v12 = v11;
  v44 = v13;
  KeyPath = swift_getKeyPath();
  v15 = sub_24F925898();
  v16 = swift_getKeyPath();
  v69 = v12 & 1;
  v68 = 0;
  v17 = (v1 + v3[6]);
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v67[0]) = *v17;
  *(&v67[0] + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  v20 = 1.0;
  v21 = 1.0;
  if ((v60 & 1) == 0)
  {
    if (*(v1 + v3[8]))
    {
      v21 = 0.0;
    }

    else
    {
      v21 = 1.0;
    }
  }

  v56 = v1;
  LOBYTE(v67[0]) = v18;
  *(&v67[0] + 1) = v19;
  sub_24F926F38();
  if ((v60 & 1) == 0)
  {
    if (*(v56 + v3[8]))
    {
      v20 = 0.75;
    }

    else
    {
      v20 = 1.0;
    }
  }

  sub_24F9278B8();
  *&v60 = v46;
  *(&v60 + 1) = v45;
  LOBYTE(v61) = v12 & 1;
  *(&v61 + 1) = v44;
  *&v62 = KeyPath;
  *(&v62 + 1) = 2;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = v16;
  *&v64 = v15;
  *(&v64 + 1) = v21;
  *&v65 = v20;
  *(&v65 + 1) = v20;
  *&v66 = v22;
  *(&v66 + 1) = v23;
  sub_24F925918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B008);
  sub_24F634094();
  sub_24F9260C8();
  v67[3] = v63;
  v67[4] = v64;
  v67[5] = v65;
  v67[6] = v66;
  v67[0] = v60;
  v67[1] = v61;
  v67[2] = v62;
  sub_24E601704(v67, &qword_27F24B008);
  LOBYTE(v60) = v18;
  *(&v60 + 1) = v19;
  sub_24F926F38();
  v24 = 0.0;
  v25 = v56;
  if ((v59 & 1) == 0)
  {
    if (*(v56 + v3[8]))
    {
      v24 = 4.0;
    }

    else
    {
      v24 = 0.0;
    }
  }

  v26 = v50;
  (*(v48 + 32))(v50, v57, v49);
  v27 = v26 + *(v47 + 36);
  *v27 = v24;
  *(v27 + 8) = 0;
  v28 = v54;
  sub_24F62CFF8(v25, v54, type metadata accessor for APHighlightSubtitle);
  v29 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v30 = swift_allocObject();
  sub_24F630CD4(v28, v30 + v29, type metadata accessor for APHighlightSubtitle);
  v31 = v52;
  sub_24F634258(v26, v52);
  v32 = (v31 + *(v58 + 36));
  *v32 = sub_24F6341B0;
  v32[1] = v30;
  v32[2] = 0;
  v32[3] = 0;
  v33 = v25 + v3[5];
  v34 = *v33;
  LOBYTE(v26) = *(v33 + 8);

  if ((v26 & 1) == 0)
  {
    sub_24F92BDC8();
    v35 = sub_24F9257A8();
    sub_24F921FD8();

    v36 = v41;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v42 + 8))(v36, v43);
    v34 = v60;
  }

  swift_getKeyPath();
  *&v60 = v34;
  sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController);
  sub_24F91FD88();

  swift_beginAccess();
  v37 = *(v34 + 16);

  v59 = v37;
  sub_24F62CFF8(v25, v28, type metadata accessor for APHighlightSubtitle);
  v38 = swift_allocObject();
  sub_24F630CD4(v28, v38 + v29, type metadata accessor for APHighlightSubtitle);
  sub_24F634434();
  sub_24F926AB8();

  return sub_24F634588(v31);
}

uint64_t sub_24F62A904(uint64_t a1)
{
  result = type metadata accessor for APHighlightSubtitle(0);
  if (*(a1 + *(result + 32)) == 1)
  {
    sub_24F927678();
    sub_24F927698();

    MEMORY[0x28223BE20](v3);
    sub_24F923B18();
  }

  return result;
}

uint64_t sub_24F62A9E4()
{
  MEMORY[0x25304D060](0.2, 0.7, 0.0);
  sub_24F923B18();
}

uint64_t sub_24F62AA60()
{
  type metadata accessor for APHighlightSubtitle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

uint64_t static APHighlightIcon.artworkHeight(for:)(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  result = (*(v3 + 88))(v6, v2);
  if (result != *MEMORY[0x277CDF9F0] && result != *MEMORY[0x277CDFA00] && result != *MEMORY[0x277CDFA10])
  {
    _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_24F62AC70()
{
  v1 = sub_24F924848();
  v18 = *(v1 - 8);
  v19 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = sub_24F923E98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_24E60169C(v0, v6, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v18 + 8))(v3, v19);
  }

  (*(v8 + 16))(v10, v13, v7);
  v15 = (*(v8 + 88))(v10, v7);
  if (v15 == *MEMORY[0x277CDF9F0] || v15 == *MEMORY[0x277CDFA00] || v15 == *MEMORY[0x277CDFA10])
  {
    return (*(v8 + 8))(v13, v7);
  }

  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v17 = *(v8 + 8);
  v17(v13, v7);
  return (v17)(v10, v7);
}

uint64_t sub_24F62B030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v131 = sub_24F9289E8();
  v120 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v148 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v147 = &v117 - v5;
  v6 = type metadata accessor for Player(0);
  v117 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B110);
  MEMORY[0x28223BE20](v128);
  v129 = &v117 - v8;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE90);
  MEMORY[0x28223BE20](v137);
  v130 = &v117 - v9;
  v10 = sub_24F927748();
  v126 = *(v10 - 8);
  v127 = v10;
  MEMORY[0x28223BE20](v10);
  v125 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for PlayerGroupView();
  MEMORY[0x28223BE20](v132);
  v124 = (&v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v121 = &v117 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v15 - 8);
  v145 = &v117 - v16;
  v144 = type metadata accessor for PlayerAvatar(0);
  v142 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v118 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v117 - v19);
  v146 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v146);
  v119 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B118);
  MEMORY[0x28223BE20](v139);
  v23 = (&v117 - v22);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B120);
  MEMORY[0x28223BE20](v133);
  v135 = &v117 - v24;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B128);
  MEMORY[0x28223BE20](v122);
  v123 = &v117 - v25;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE70);
  MEMORY[0x28223BE20](v134);
  v141 = &v117 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE60);
  MEMORY[0x28223BE20](v27);
  v136 = &v117 - v28;
  v29 = sub_24F926E08();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AccessPointIconType(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for APHighlightIcon(0);
  sub_24F62CFF8(a1 + *(v36 + 24), v35, type metadata accessor for AccessPointIconType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v120 = v23;
    if (EnumCaseMultiPayload)
    {
      v138 = v27;
      if (EnumCaseMultiPayload == 1)
      {
        v38 = *v35;
        v39 = *(v35 + 1);
        v40 = type metadata accessor for PlayerAvatar.Overlay(0);
        v41 = *(*(v40 - 8) + 56);
        v42 = v145;
        v41(v145, 1, 1, v40);
        *&v155 = 0;
        v153 = 0u;
        v154 = 0u;
        v43 = v144;
        v44 = *(v144 + 20);
        v41(v20 + v44, 1, 1, v40);
        v45 = v20 + *(v43 + 24);
        *&v151 = 0;
        v149 = 0u;
        v150 = 0u;
        *v45 = 0u;
        *(v45 + 16) = 0u;
        *(v45 + 32) = 0;
        sub_24E61DA68(&v149, v45, qword_27F21B590);
        *v20 = v38;
        v20[1] = v39;
        sub_24E61DA68(v42, v20 + v44, &qword_27F22DF80);
        sub_24E61DA68(&v153, v45, qword_27F21B590);
        LOBYTE(v153) = 7;
        v46 = v119;
        sub_24F8319B8(v20, &v153, v119);
        sub_24F62CFF8(v46, v123, type metadata accessor for PlayerAvatarView);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE80);
        sub_24F62D58C();
        sub_24F62847C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
        v47 = v141;
        sub_24F924E28();
        sub_24E60169C(v47, v135, &qword_27F24AE70);
        swift_storeEnumTagMultiPayload();
        sub_24F62D4D0();
        sub_24F62D644();
        v48 = v136;
        sub_24F924E28();
        sub_24E601704(v47, &qword_27F24AE70);
        sub_24E60169C(v48, v120, &qword_27F24AE60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0);
        sub_24F62D444();
        sub_24F62D730();
        sub_24F924E28();
        sub_24E601704(v48, &qword_27F24AE60);
        v49 = type metadata accessor for PlayerAvatarView;
      }

      else
      {
        v78 = *v35;
        sub_24F926C88();
        v79 = sub_24F926D08();

        (*(v126 + 104))(v125, *MEMORY[0x277CE13D8], v127);
        v80 = v132;
        v81 = v124;
        *(v124 + *(v132 + 28)) = vdupq_n_s64(0x4052000000000000uLL);
        *(v81 + *(v80 + 32)) = 7;
        v82 = *(v78 + 16);
        if (v82)
        {
          v123 = v79;
          *&v161 = MEMORY[0x277D84F90];
          sub_24F457BF8(0, v82, 0);
          v83 = v161;
          v84 = v118;
          v85 = *(v117 + 80);
          v122 = v78;
          v86 = v78 + ((v85 + 32) & ~v85);
          v141 = *(v117 + 72);
          v87 = v144;
          do
          {
            v148 = v82;
            v88 = v143;
            sub_24F62CFF8(v86, v143, type metadata accessor for Player);
            v89 = *(v88 + 16);
            v146 = *(v88 + 24);
            v147 = v89;

            sub_24F634DF4(v88, type metadata accessor for Player);
            v90 = type metadata accessor for PlayerAvatar.Overlay(0);
            v91 = *(*(v90 - 8) + 56);
            v92 = v145;
            v91(v145, 1, 1, v90);
            *&v155 = 0;
            v153 = 0u;
            v154 = 0u;
            v93 = v83;
            v94 = *(v87 + 20);
            v91(&v84[v94], 1, 1, v90);
            v95 = &v84[*(v87 + 24)];
            *&v151 = 0;
            v149 = 0u;
            v150 = 0u;
            *v95 = 0u;
            *(v95 + 16) = 0u;
            *(v95 + 32) = 0;
            sub_24E61DA68(&v149, v95, qword_27F21B590);
            v96 = v146;
            *v84 = v147;
            *(v84 + 1) = v96;
            v97 = &v84[v94];
            v83 = v93;
            sub_24E61DA68(v92, v97, &qword_27F22DF80);
            sub_24E61DA68(&v153, v95, qword_27F21B590);
            *&v161 = v93;
            v99 = *(v93 + 16);
            v98 = *(v93 + 24);
            if (v99 >= v98 >> 1)
            {
              sub_24F457BF8(v98 > 1, v99 + 1, 1);
              v83 = v161;
            }

            *(v83 + 16) = v99 + 1;
            sub_24F630CD4(v84, v83 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v99, type metadata accessor for PlayerAvatar);
            v86 += v141;
            v82 = v148 - 1;
          }

          while (v148 != 1);

          v79 = v123;
        }

        else
        {

          v83 = MEMORY[0x277D84F90];
        }

        v107 = v124;
        v106 = v125;
        *v124 = v83;
        *(v107 + 8) = v79;
        (*(v126 + 32))(v107 + *(v132 + 24), v106, v127);
        v46 = v121;
        sub_24F630CD4(v107, v121, type metadata accessor for PlayerGroupView);
        sub_24F62CFF8(v46, v129, type metadata accessor for PlayerGroupView);
        swift_storeEnumTagMultiPayload();
        sub_24F62847C(&qword_27F240F40, type metadata accessor for PlayerGroupView);
        sub_24F62847C(&qword_27F214C28, MEMORY[0x277D21C48]);
        v108 = v130;
        sub_24F924E28();
        sub_24E60169C(v108, v135, &qword_27F24AE90);
        swift_storeEnumTagMultiPayload();
        sub_24F62D4D0();
        sub_24F62D644();
        v109 = v136;
        sub_24F924E28();
        sub_24E601704(v108, &qword_27F24AE90);
        sub_24E60169C(v109, v120, &qword_27F24AE60);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0);
        sub_24F62D444();
        sub_24F62D730();
        sub_24F924E28();
        sub_24E601704(v109, &qword_27F24AE60);
        v49 = type metadata accessor for PlayerGroupView;
      }

      return sub_24F634DF4(v46, v49);
    }

    else
    {
      sub_24F926E48();
      (*(v30 + 104))(v32, *MEMORY[0x277CE0FE0], v29);
      v55 = sub_24F926E88();

      (*(v30 + 8))(v32, v29);
      v56 = sub_24F925808();
      sub_24F923318();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      LOBYTE(v153) = 1;
      LOBYTE(v149) = 0;
      sub_24F926C88();
      v65 = sub_24F926D08();

      v66 = sub_24F925808();
      v153 = v55;
      LOWORD(v154) = 257;
      BYTE8(v154) = v56;
      *&v155 = v58;
      *(&v155 + 1) = v60;
      *&v156[0] = v62;
      *(&v156[0] + 1) = v64;
      LOBYTE(v156[1]) = 0;
      *(&v156[1] + 1) = v149;
      DWORD1(v156[1]) = *(&v149 + 3);
      *(&v156[1] + 1) = v65;
      v157 = v66;
      v67 = v156[0];
      v68 = v123;
      *(v123 + 32) = v155;
      *(v68 + 48) = v67;
      *(v68 + 64) = v156[1];
      *(v68 + 80) = v66;
      v69 = v154;
      *v68 = v153;
      *(v68 + 16) = v69;
      swift_storeEnumTagMultiPayload();
      sub_24E60169C(&v153, &v149, &qword_27F24AE80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE80);
      sub_24F62D58C();
      sub_24F62847C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
      v70 = v141;
      sub_24F924E28();
      sub_24E60169C(v70, v135, &qword_27F24AE70);
      swift_storeEnumTagMultiPayload();
      sub_24F62D4D0();
      sub_24F62D644();
      v71 = v136;
      sub_24F924E28();
      sub_24E601704(v70, &qword_27F24AE70);
      sub_24E60169C(v71, v120, &qword_27F24AE60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0);
      sub_24F62D444();
      sub_24F62D730();
      sub_24F924E28();
      sub_24E601704(&v153, &qword_27F24AE80);
      return sub_24E601704(v71, &qword_27F24AE60);
    }
  }

  v138 = v27;
  if (EnumCaseMultiPayload == 3)
  {
    v72 = v120;
    v73 = v131;
    v120[4](v147, v35, v131);
    sub_24F62AC70();
    sub_24F62AC70();
    v74 = v148;
    sub_24F9289C8();
    (*(v72 + 16))(v129, v74, v73);
    swift_storeEnumTagMultiPayload();
    sub_24F62847C(&qword_27F240F40, type metadata accessor for PlayerGroupView);
    sub_24F62847C(&qword_27F214C28, MEMORY[0x277D21C48]);
    v75 = v130;
    sub_24F924E28();
    sub_24E60169C(v75, v135, &qword_27F24AE90);
    swift_storeEnumTagMultiPayload();
    sub_24F62D4D0();
    sub_24F62D644();
    v76 = v136;
    sub_24F924E28();
    sub_24E601704(v75, &qword_27F24AE90);
    sub_24E60169C(v76, v23, &qword_27F24AE60);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0);
    sub_24F62D444();
    sub_24F62D730();
    sub_24F924E28();
    sub_24E601704(v76, &qword_27F24AE60);
    v77 = *(v72 + 8);
    v77(v148, v73);
    return (v77)(v147, v73);
  }

  if (EnumCaseMultiPayload != 4)
  {
    v101 = *v35;
    v100 = *(v35 + 1);
    v147 = v100;
    v148 = v101;
    if (v100 >> 60 != 15)
    {
      sub_24E71CBC0(v101, v100);
      v102 = sub_24F62C92C();
      if (v102)
      {
        v103 = v23;
        v104 = v102;
        sub_24F926DD8();
        (*(v30 + 104))(v32, *MEMORY[0x277CE0FE0], v29);
        v105 = sub_24F926E88();

        (*(v30 + 8))(v32, v29);
        v149 = v105;
        LOWORD(v150) = 1;
        BYTE2(v150) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
        sub_24E6E97A8();
        sub_24F924E28();
        sub_24E71CBAC(v101, v100);

LABEL_26:
        v110 = v154;
        v111 = BYTE2(v154);
        v159[0] = BYTE2(v154);
        LOBYTE(v163) = 1;
        BYTE8(v156[1]) = 1;
        v112 = v153;
        sub_24F634E5C(v153, *(&v153 + 1), v154, SBYTE2(v154));
        sub_24F634E5C(v112, *(&v112 + 1), v110, v111);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEB0);
        sub_24EFC1714();
        sub_24F62D7BC();
        sub_24F924E28();
        v113 = v152[0];
        v155 = v151;
        v156[0] = v152[0];
        v114 = *(v152 + 9);
        *(v156 + 9) = *(v152 + 9);
        v116 = v149;
        v115 = v150;
        v153 = v149;
        v154 = v150;
        v103[2] = v151;
        v103[3] = v113;
        *(v103 + 57) = v114;
        *v103 = v116;
        v103[1] = v115;
        swift_storeEnumTagMultiPayload();
        sub_24E60169C(&v153, &v161, &qword_27F24AEA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0);
        sub_24F62D444();
        sub_24F62D730();
        sub_24F924E28();
        sub_24F634E68(v112, *(&v112 + 1), v110, v111);
        sub_24E601704(&v153, &qword_27F24AEA0);
        sub_24E71CBAC(v148, v147);
        return sub_24F634E68(v112, *(&v112 + 1), v110, v111);
      }

      sub_24E71CBAC(v101, v100);
    }

    v103 = v23;
    v149 = 0uLL;
    LOWORD(v150) = 0;
    BYTE2(v150) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B00);
    sub_24E6E97A8();
    sub_24F924E28();
    goto LABEL_26;
  }

  v50 = *(v35 + 2);
  sub_24F926E98();
  (*(v30 + 104))(v32, *MEMORY[0x277CE0FE0], v29);
  v51 = sub_24F926E88();

  (*(v30 + 8))(v32, v29);
  if (v50 <= 0.0)
  {
    sub_24F62AC70();
    sub_24F62AC70();
  }

  sub_24F927618();
  sub_24F9238C8();
  v160 = 1;
  *&v159[6] = v163;
  *&v159[22] = v164;
  *&v159[38] = v165;
  v161 = v51;
  *v162 = 1;
  *&v162[2] = *v159;
  *&v162[18] = *&v159[16];
  *&v162[34] = *&v159[32];
  *&v162[48] = *(&v165 + 1);
  v149 = v51;
  v150 = *v162;
  v151 = *&v162[16];
  v152[0] = *&v162[32];
  *&v152[1] = *(&v165 + 1);
  v158 = 0;
  BYTE8(v152[1]) = 0;
  sub_24E60169C(&v161, &v153, &qword_27F235A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEB0);
  sub_24EFC1714();
  sub_24F62D7BC();
  sub_24F924E28();
  v52 = v156[0];
  v23[2] = v155;
  v23[3] = v52;
  *(v23 + 57) = *(v156 + 9);
  v53 = v154;
  *v23 = v153;
  v23[1] = v53;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEA0);
  sub_24F62D444();
  sub_24F62D730();
  sub_24F924E28();
  return sub_24E601704(&v161, &qword_27F235A20);
}

uint64_t sub_24F62C92C()
{
  sub_24E69A5C4(0, &qword_27F21E318);
  sub_24E69A5C4(0, &qword_27F2283A0);
  result = sub_24F92BE38();
  if (!result)
  {
    if (qword_27F211398 != -1)
    {
      swift_once();
    }

    v1 = sub_24F9220D8();
    __swift_project_value_buffer(v1, qword_27F39E718);
    v2 = sub_24F9220B8();
    v3 = sub_24F92BDB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "banner image could not be deserialized", v4, 2u);
      MEMORY[0x2530542D0](v4, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t APHighlightIcon.body.getter()
{
  v1 = type metadata accessor for APHighlightIcon(0);
  v16 = *(v1 - 1);
  v2 = *(v16 + 64);
  MEMORY[0x28223BE20](v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE20);
  MEMORY[0x28223BE20](v3);
  v5 = (&v16 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AE28);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = v0 + v1[5];
  v10 = *v9;
  v11 = *(v9 + 8);
  v18 = v10;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (v17 == 1)
  {
    sub_24F62B030(v0, v8);
    *&v8[*(v6 + 36)] = *(v0 + v1[7]);
    sub_24E60169C(v8, v5, &qword_27F24AE28);
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80);
    sub_24F62D27C();
    sub_24E9ED7E0();
    sub_24F924E28();
    return sub_24E601704(v8, &qword_27F24AE28);
  }

  else
  {
    if (*(v0 + v1[8]) == 1)
    {
      sub_24F926C88();
      v13 = sub_24F926D08();
    }

    else
    {
      v13 = sub_24F926C98();
    }

    sub_24F62CFF8(v0, &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for APHighlightIcon);
    v14 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v15 = swift_allocObject();
    sub_24F630CD4(&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for APHighlightIcon);
    *v5 = v13;
    v5[1] = sub_24F62D250;
    v5[2] = v15;
    v5[3] = 0;
    v5[4] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224B80);
    sub_24F62D27C();
    sub_24E9ED7E0();
    return sub_24F924E28();
  }
}

uint64_t sub_24F62CF34()
{
  MEMORY[0x25304D060](0.5, 0.8, 0.0);
  type metadata accessor for APHighlightIcon(0);
  sub_24F927698();

  sub_24F923B18();
}

uint64_t sub_24F62CFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F62D060()
{
  v1 = type metadata accessor for APHighlightIcon(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = (v0 + v2 + *(v1 + 24));
  type metadata accessor for AccessPointIconType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v8 = sub_24F9289E8();
      (*(*(v8 - 8) + 8))(v4, v8);
      break;
    case 4:
LABEL_12:

      break;
    case 5:
      v6 = v4[1];
      if (v6 >> 60 != 15)
      {
        sub_24E627880(*v4, v6);
      }

      break;
  }

LABEL_13:

  return swift_deallocObject();
}

unint64_t sub_24F62D27C()
{
  result = qword_27F24AE30;
  if (!qword_27F24AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE28);
    sub_24F62D334();
    sub_24E602068(&qword_27F224B60, &qword_27F224B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE30);
  }

  return result;
}

unint64_t sub_24F62D334()
{
  result = qword_27F24AE38;
  if (!qword_27F24AE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE40);
    sub_24F62D3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE38);
  }

  return result;
}

unint64_t sub_24F62D3B8()
{
  result = qword_27F24AE48;
  if (!qword_27F24AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE50);
    sub_24F62D444();
    sub_24F62D730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE48);
  }

  return result;
}

unint64_t sub_24F62D444()
{
  result = qword_27F24AE58;
  if (!qword_27F24AE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE60);
    sub_24F62D4D0();
    sub_24F62D644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE58);
  }

  return result;
}

unint64_t sub_24F62D4D0()
{
  result = qword_27F24AE68;
  if (!qword_27F24AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE70);
    sub_24F62D58C();
    sub_24F62847C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE68);
  }

  return result;
}

unint64_t sub_24F62D58C()
{
  result = qword_27F24AE78;
  if (!qword_27F24AE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE80);
    sub_24E746E8C();
    sub_24E602068(&qword_27F216518, &qword_27F216520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE78);
  }

  return result;
}

unint64_t sub_24F62D644()
{
  result = qword_27F24AE88;
  if (!qword_27F24AE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AE90);
    sub_24F62847C(&qword_27F240F40, type metadata accessor for PlayerGroupView);
    sub_24F62847C(&qword_27F214C28, MEMORY[0x277D21C48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE88);
  }

  return result;
}

unint64_t sub_24F62D730()
{
  result = qword_27F24AE98;
  if (!qword_27F24AE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AEA0);
    sub_24EFC1714();
    sub_24F62D7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AE98);
  }

  return result;
}

unint64_t sub_24F62D7BC()
{
  result = qword_27F24AEA8;
  if (!qword_27F24AEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AEB0);
    sub_24E6E97A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AEA8);
  }

  return result;
}

uint64_t sub_24F62D848()
{
  type metadata accessor for APHighlightIcon(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  return sub_24F926F48();
}

double static AccessPointHighlightComponent.accessPointHeight(for:)(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x277CDF9F0])
  {
    v8 = 43.0;
  }

  else if (v7 == *MEMORY[0x277CDFA00])
  {
    v8 = 45.0;
  }

  else if (v7 == *MEMORY[0x277CDFA10])
  {
    v8 = 48.0;
  }

  else
  {
    if (_s12GameStoreKit15PageEnvironmentV4isAXSbvg_0())
    {
      v8 = 50.0;
    }

    else
    {
      v8 = 40.0;
    }

    (*(v3 + 8))(v5, v2);
  }

  v9 = 12.0;
  if (v6)
  {
    v9 = 14.0;
  }

  return v9 + v8;
}

uint64_t AccessPointHighlightComponent.GestureHandler.didSwipeUp.getter()
{
  swift_getKeyPath();
  sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler);
  sub_24F91FD88();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_24F62DB3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler);
  sub_24F91FD88();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t AccessPointHighlightComponent.GestureHandler.didSwipeUp.setter(char a1)
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
    MEMORY[0x28223BE20](KeyPath);
    sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler);
    sub_24F91FD78();
  }

  return result;
}

void (*AccessPointHighlightComponent.GestureHandler.didSwipeUp.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtCV12GameStoreKit29AccessPointHighlightComponent14GestureHandler___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F62DED0;
}

void sub_24F62DED0(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

uint64_t AccessPointHighlightComponent.GestureHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_24F91FDB8();
  return v0;
}

uint64_t AccessPointHighlightComponent.GestureHandler.init()()
{
  *(v0 + 16) = 0;
  sub_24F91FDB8();
  return v0;
}

uint64_t sub_24F62DFD4(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t sub_24F62E03C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_24F62E0D4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_24F62E214@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AccessPointHighlightComponent(0);
  sub_24E60169C(v1 + *(v10 + 20), v9, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24F62E41C(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for AccessPointHighlight(0) + 44));
  if (v6 != 2 && (v6 & 1) != 0 && (v7 = *(a1 + 48)) != 0 && ((v7 & 0x2000000000000000) != 0 ? (v8 = HIBYTE(v7) & 0xF) : (v8 = *(a1 + 40) & 0xFFFFFFFFFFFFLL), v8))
  {
    sub_24F62E214(v5);
    v9 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_24F62E53C(uint64_t a1)
{
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + *(type metadata accessor for AccessPointHighlight(0) + 44));
  if (v9 != 2 && (v9 & 1) != 0)
  {
    return 0;
  }

  sub_24F62E214(v8);
  v11 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v12 = *(v3 + 8);
  v12(v8, v2);
  if (v11)
  {
    sub_24F62E214(v5);
    v13 = (*(v3 + 88))(v5, v2);
    if (v13 == *MEMORY[0x277CDF988])
    {
      return 0x4078000000000000;
    }

    if (v13 == *MEMORY[0x277CDF998])
    {
      return 0x407C000000000000;
    }

    if (v13 == *MEMORY[0x277CDF9A8])
    {
      return 0x4080000000000000;
    }

    if (v13 == *MEMORY[0x277CDF9B8])
    {
      return 0x4082000000000000;
    }

    if (v13 == *MEMORY[0x277CDF9D0])
    {
      return 0x4084000000000000;
    }

    v12(v5, v2);
  }

  return 0x4074000000000000;
}

uint64_t sub_24F62E754()
{
  v1 = sub_24F924848();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_24F923E98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for AccessPointHighlightComponent(0);
  sub_24E60169C(v0 + *(v14 + 20), v6, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v13, v6, v7);
  }

  else
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v19 + 8))(v3, v20);
  }

  (*(v8 + 16))(v10, v13, v7);
  v16 = (*(v8 + 88))(v10, v7);
  if (v16 == *MEMORY[0x277CDF9F0] || v16 == *MEMORY[0x277CDFA00] || v16 == *MEMORY[0x277CDFA10])
  {
    return (*(v8 + 8))(v13, v7);
  }

  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v18 = *(v8 + 8);
  v18(v13, v7);
  return (v18)(v10, v7);
}

BOOL sub_24F62EB1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = a1[6];
  if (v5)
  {
    if ((v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : a1[5] & 0xFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  v7 = a1[8];
  if (v7)
  {
    if ((v7 & 0x2000000000000000) != 0 ? HIBYTE(v7) & 0xF : a1[7] & 0xFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  v10 = type metadata accessor for AccessPointHighlight(0);
  sub_24E60169C(a1 + *(v10 + 32), v4, &qword_27F21C0A0);
  v11 = type metadata accessor for AccessPointIconType(0);
  v12 = (*(*(v11 - 8) + 48))(v4, 1, v11) == 1;
  sub_24E601704(v4, &qword_27F21C0A0);
  return v12;
}

uint64_t AccessPointHighlightComponent.content(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v98 = a2;
  v91 = sub_24F924E98();
  MEMORY[0x28223BE20](v91);
  v90 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_24F923568();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v92 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B50);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v73[-v7];
  v78 = type metadata accessor for AccessPointHighlight(0);
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v88 = v9;
  v89 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AccessPointHighlightComponent(0);
  v11 = v10 - 8;
  v84 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v85 = v12;
  v13 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  MEMORY[0x28223BE20](v14 - 8);
  v81 = &v73[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C090);
  MEMORY[0x28223BE20](v16 - 8);
  v75 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v80 = &v73[-v19];
  v79 = sub_24F9251F8();
  MEMORY[0x28223BE20](v79);
  v82 = &v73[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEC0);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v73[-v23];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEC8);
  MEMORY[0x28223BE20](v74);
  v77 = &v73[-v25];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AED0);
  MEMORY[0x28223BE20](v76);
  v83 = &v73[-v26];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AED8);
  MEMORY[0x28223BE20](v86);
  v87 = &v73[-v27];
  *v24 = sub_24F9249A8();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEE0);
  v29 = a1;
  sub_24F62F9B8(a1, v3, &v24[*(v28 + 44)]);
  sub_24F9278A8();
  *&v24[*(v22 + 44)] = sub_24F923908();
  v30 = v3 + *(v11 + 32);
  v31 = *v30;
  v32 = *(v30 + 8);
  v33 = *(v30 + 16);
  *&v99 = v31;
  BYTE8(v99) = v32;
  *&v100 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050);
  sub_24F926F38();
  sub_24F927628();
  sub_24F9242E8();
  v34 = v77;
  sub_24E6009C8(v24, v77, &qword_27F24AEC0);
  v35 = &v34[*(v74 + 36)];
  v36 = v104;
  v35[4] = v103;
  v35[5] = v36;
  v35[6] = v105;
  v37 = v100;
  *v35 = v99;
  v35[1] = v37;
  v38 = v102;
  v35[2] = v101;
  v35[3] = v38;
  v39 = v80;
  sub_24F62CFF8(a1, v80, type metadata accessor for AccessPointHighlight);
  v40 = v78;
  (*(v8 + 56))(v39, 0, 1, v78);
  v41 = v75;
  sub_24E60169C(v39, v75, &qword_27F21C090);
  if ((*(v8 + 48))(v41, 1, v40) == 1)
  {
    sub_24E601704(v41, &qword_27F21C090);
    v42 = type metadata accessor for AccessPointIconType(0);
    v43 = v81;
    (*(*(v42 - 8) + 56))(v81, 1, 1, v42);
  }

  else
  {
    v44 = &v41[*(v40 + 32)];
    v43 = v81;
    sub_24E60169C(v44, v81, &qword_27F21C0A0);
    sub_24F634DF4(v41, type metadata accessor for AccessPointHighlight);
    v45 = type metadata accessor for AccessPointIconType(0);
    (*(*(v45 - 8) + 48))(v43, 1, v45);
  }

  sub_24E601704(v43, &qword_27F21C0A0);
  sub_24F924EE8();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_24E601704(v39, &qword_27F21C090);
  v54 = *(v79 + 20);
  v55 = *MEMORY[0x277CE0118];
  v56 = sub_24F924B38();
  v57 = v82;
  (*(*(v56 - 8) + 104))(&v82[v54], v55, v56);
  *v57 = v47;
  v57[1] = v49;
  v57[2] = v51;
  v57[3] = v53;
  v58 = v83;
  v59 = &v83[*(v76 + 36)];
  sub_24F630CD4(v57, v59, MEMORY[0x277CE0550]);
  *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AEE8) + 36)) = 0;
  sub_24E6009C8(v34, v58, &qword_27F24AEC8);
  sub_24F62CFF8(v3, v13, type metadata accessor for AccessPointHighlightComponent);
  v60 = v89;
  sub_24F62CFF8(v29, v89, type metadata accessor for AccessPointHighlight);
  v61 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v62 = v61 + v85;
  v85 = v3;
  v63 = (v62 + *(v8 + 80)) & ~*(v8 + 80);
  v64 = swift_allocObject();
  sub_24F630CD4(v13, v64 + v61, type metadata accessor for AccessPointHighlightComponent);
  sub_24F630CD4(v60, v64 + v63, type metadata accessor for AccessPointHighlight);
  v65 = v87;
  sub_24E6009C8(v58, v87, &qword_27F24AED0);
  v66 = &v65[*(v86 + 36)];
  *v66 = sub_24F631994;
  v66[1] = v64;
  v66[2] = 0;
  v66[3] = 0;
  sub_24F925228();
  v67 = v92;
  sub_24F923518();
  sub_24F62CFF8(v85, v13, type metadata accessor for AccessPointHighlightComponent);
  v68 = swift_allocObject();
  sub_24F630CD4(v13, v68 + v61, type metadata accessor for AccessPointHighlightComponent);
  sub_24F62847C(&unk_27F236560, MEMORY[0x277CDD730]);
  sub_24F62847C(&qword_27F2180A0, MEMORY[0x277CDD708]);
  v69 = v94;
  v70 = v95;
  sub_24F927278();

  (*(v93 + 8))(v67, v70);
  sub_24F9235A8();
  sub_24F631E00();
  sub_24E602068(&qword_27F218C18, &qword_27F218B50);
  v71 = v97;
  sub_24F9269D8();
  (*(v96 + 8))(v69, v71);
  return sub_24E601704(v65, &qword_27F24AED8);
}

uint64_t sub_24F62F9B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a2;
  v153 = a1;
  v152 = a3;
  v122 = sub_24F924258();
  MEMORY[0x28223BE20](v122);
  v121 = (&v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B088);
  MEMORY[0x28223BE20](v145);
  v147 = (&v119 - v4);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B090);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v124 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = &v119 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B098);
  MEMORY[0x28223BE20](v8 - 8);
  v151 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v150 = &v119 - v11;
  v127 = sub_24F923E98();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v130 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v119 - v14;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0A0);
  MEMORY[0x28223BE20](v125);
  v139 = &v119 - v15;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0A8);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v129 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v128 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0B0);
  MEMORY[0x28223BE20](v19 - 8);
  v146 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v119 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0B8);
  MEMORY[0x28223BE20](v132);
  v25 = (&v119 - v24);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0C0);
  MEMORY[0x28223BE20](v131);
  v27 = &v119 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  MEMORY[0x28223BE20](v28 - 8);
  v138 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v119 - v31;
  v33 = type metadata accessor for AccessPointIconType(0);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v143 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v119 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0C8);
  MEMORY[0x28223BE20](v39 - 8);
  v144 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v119 - v42;
  v140 = type metadata accessor for AccessPointHighlight(0);
  sub_24E60169C(v153 + *(v140 + 28), v32, &qword_27F21C0A0);
  v44 = *(v34 + 48);
  v137 = v33;
  v135 = v34 + 48;
  v134 = v44;
  v45 = v44(v32, 1, v33);
  v154 = v43;
  if (v45 == 1)
  {
    sub_24E601704(v32, &qword_27F21C0A0);
    sub_24F62E754();
    sub_24F62E754();
    sub_24F927618();
    sub_24F9238C8();
    v46 = BYTE8(v156);
    v47 = v157;
    v48 = BYTE8(v157);
    *v27 = v156;
    v27[8] = v46;
    *(v27 + 2) = v47;
    v27[24] = v48;
    *(v27 + 2) = v158;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374B8);
    sub_24F634C78();
    sub_24F02EA44();
    sub_24F924E28();
  }

  else
  {
    v120 = v38;
    sub_24F630CD4(v32, v38, type metadata accessor for AccessPointIconType);
    v49 = type metadata accessor for APHighlightIcon(0);
    sub_24F62CFF8(v38, v25 + v49[6], type metadata accessor for AccessPointIconType);
    v50 = sub_24F923918();
    v51 = sub_24F62EB1C(v153);
    *v25 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v52 = v145;
    v53 = v25 + v49[5];
    LOBYTE(v166) = 0;
    sub_24F926F28();
    v54 = *(&v159 + 1);
    *v53 = v159;
    *(v53 + 1) = v54;
    *(v25 + v49[7]) = v50;
    *(v25 + v49[8]) = 1;
    *(v25 + v49[9]) = !v51;
    sub_24F62E754();
    sub_24F62E754();
    sub_24F927618();
    sub_24F9238C8();
    v55 = (v25 + *(v52 + 36));
    v56 = v157;
    *v55 = v156;
    v55[1] = v56;
    v55[2] = v158;
    *(v25 + *(v132 + 36)) = 256;
    sub_24E60169C(v25, v27, &qword_27F24B0B8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2374B8);
    sub_24F634C78();
    sub_24F02EA44();
    sub_24F924E28();
    sub_24E601704(v25, &qword_27F24B0B8);
    sub_24F634DF4(v120, type metadata accessor for AccessPointIconType);
  }

  v57 = v153;
  v58 = v153[6];
  v59 = v142;
  v60 = v140;
  v61 = v139;
  v62 = v136;
  if (v58 && ((v58 & 0x2000000000000000) != 0 ? (v63 = HIBYTE(v58) & 0xF) : (v63 = v153[5] & 0xFFFFFFFFFFFFLL), v63) || (v64 = v153[8]) != 0 && ((v64 & 0x2000000000000000) != 0 ? (v65 = HIBYTE(v64) & 0xF) : (v65 = v153[7] & 0xFFFFFFFFFFFFLL), v65))
  {
    *v61 = sub_24F924C98();
    *(v61 + 1) = 0;
    v61[16] = 0;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0F0);
    sub_24F630D3C(v57, &v61[*(v66 + 44)]);
    v67 = sub_24F925808();
    v68 = &v61[*(v125 + 36)];
    *v68 = v67;
    *(v68 + 8) = xmmword_24FA15510;
    *(v68 + 24) = xmmword_24F94BC80;
    v68[40] = 0;
    sub_24F62E214(v62);
    v69 = v126;
    v70 = v130;
    v71 = v127;
    (*(v126 + 16))(v130, v62, v127);
    v72 = (*(v69 + 88))(v70, v71);
    if (v72 == *MEMORY[0x277CDF9F0] || v72 == *MEMORY[0x277CDFA00] || v72 == *MEMORY[0x277CDFA10])
    {
      (*(v69 + 8))(v62, v71);
    }

    else
    {
      LODWORD(v133) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
      v74 = *(v69 + 8);
      v74(v62, v71);
      v74(v130, v71);
    }

    sub_24F927618();
    sub_24F9242E8();
    v75 = v61;
    v76 = v129;
    sub_24E6009C8(v75, v129, &qword_27F24B0A0);
    v77 = (v76 + *(v59 + 36));
    v78 = v164;
    v79 = v165;
    v77[4] = v163;
    v77[5] = v78;
    v77[6] = v79;
    v80 = v160;
    *v77 = v159;
    v77[1] = v80;
    v81 = v162;
    v77[2] = v161;
    v77[3] = v81;
    v82 = v76;
    v83 = v128;
    sub_24E6009C8(v82, v128, &qword_27F24B0A8);
    sub_24E6009C8(v83, v23, &qword_27F24B0A8);
    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  v84 = v60;
  v85 = v23;
  (*(v141 + 56))(v23, v73, 1, v59);
  LODWORD(v142) = sub_24F62E41C(v57);
  v86 = v138;
  sub_24E60169C(v57 + *(v84 + 32), v138, &qword_27F21C0A0);
  if (v134(v86, 1, v137) == 1)
  {
    sub_24E601704(v86, &qword_27F21C0A0);
    v87 = 1;
    v88 = v150;
    v89 = v149;
    v90 = v154;
  }

  else
  {
    v91 = v143;
    sub_24F630CD4(v86, v143, type metadata accessor for AccessPointIconType);
    v92 = type metadata accessor for APHighlightIcon(0);
    v93 = v147;
    sub_24F62CFF8(v91, v147 + v92[6], type metadata accessor for AccessPointIconType);
    sub_24F9278A8();
    v94 = sub_24F923908();
    *v93 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v95 = v93 + v92[5];
    v155 = 0;
    sub_24F926F28();
    v96 = *(&v166 + 1);
    *v95 = v166;
    *(v95 + 1) = v96;
    *(v93 + v92[7]) = v94;
    *(v93 + v92[8]) = 0;
    *(v93 + v92[9]) = 1;
    sub_24F62E754();
    sub_24F62E754();
    sub_24F927618();
    sub_24F9238C8();
    v97 = (v93 + *(v145 + 36));
    v98 = v168;
    v97[1] = v167;
    v97[2] = v98;
    *v97 = v166;
    v99 = *(v57 + *(v84 + 48));
    if (v99 == 2 || (v99 & 1) == 0)
    {
      sub_24E63E314();
    }

    else
    {
      sub_24F62E754();
      v101 = v100 * 0.24;
      v102 = *(v122 + 20);
      v103 = *MEMORY[0x277CE0118];
      v104 = sub_24F924B38();
      v105 = v121;
      (*(*(v104 - 8) + 104))(v121 + v102, v103, v104);
      *v105 = v101;
      v105[1] = v101;
      sub_24F62847C(&qword_27F229928, MEMORY[0x277CDFC08]);
    }

    v106 = sub_24F927348();
    v88 = v150;
    v89 = v149;
    v90 = v154;
    sub_24F634DF4(v143, type metadata accessor for AccessPointIconType);
    v107 = v124;
    sub_24E6009C8(v147, v124, &qword_27F24B088);
    v108 = v107 + *(v89 + 36);
    *v108 = v106;
    *(v108 + 8) = 256;
    v109 = v107;
    v110 = v123;
    sub_24E6009C8(v109, v123, &qword_27F24B090);
    sub_24E6009C8(v110, v88, &qword_27F24B090);
    v87 = 0;
  }

  (*(v148 + 56))(v88, v87, 1, v89);
  v111 = v144;
  sub_24E60169C(v90, v144, &qword_27F24B0C8);
  v112 = v85;
  v113 = v146;
  sub_24E60169C(v85, v146, &qword_27F24B0B0);
  v114 = v151;
  sub_24E60169C(v88, v151, &qword_27F24B098);
  v115 = v152;
  sub_24E60169C(v111, v152, &qword_27F24B0C8);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0E8);
  sub_24E60169C(v113, v115 + v116[12], &qword_27F24B0B0);
  v117 = v115 + v116[16];
  *v117 = 0;
  *(v117 + 8) = 0;
  *(v117 + 9) = (v142 & 1) == 0;
  sub_24E60169C(v114, v115 + v116[20], &qword_27F24B098);
  sub_24E601704(v88, &qword_27F24B098);
  sub_24E601704(v112, &qword_27F24B0B0);
  sub_24E601704(v154, &qword_27F24B0C8);
  sub_24E601704(v114, &qword_27F24B098);
  sub_24E601704(v113, &qword_27F24B0B0);
  return sub_24E601704(v111, &qword_27F24B0C8);
}

uint64_t sub_24F630CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F630D3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for APHighlightSubtitle(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v64 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B0F8);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v57 - v13;
  v14 = type metadata accessor for APHighlightTitle(0);
  v65 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v16 = (&v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v63 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B100);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  v25 = a1[6];
  if (!v25)
  {
    goto LABEL_6;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = a1[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v60 = a1[5];
    v27 = *(a1 + *(type metadata accessor for AccessPointHighlight(0) + 40));
    v59 = (v27 == 2) | v27;
    *v16 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
    swift_storeEnumTagMultiPayload();
    v61 = v4;
    v28 = v14[5];
    *(v16 + v28) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v29 = v14[6];
    v62 = a2;
    v58 = (v16 + v29);
    type metadata accessor for APAnimationController(0);
    sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController);

    v30 = sub_24F923598();
    v31 = v58;
    *v58 = v30;
    *(v31 + 8) = v32 & 1;
    a2 = v62;
    v33 = v16 + v14[7];
    v68 = 0;
    sub_24F926F28();
    v34 = v70;
    *v33 = v69;
    *(v33 + 1) = v34;
    v35 = (v16 + v14[8]);
    *v35 = v60;
    v35[1] = v25;
    *(v16 + v14[9]) = v59 & 1;
    v36 = v16;
    v37 = v63;
    sub_24F630CD4(v36, v63, type metadata accessor for APHighlightTitle);
    v4 = v61;
    sub_24F630CD4(v37, v24, type metadata accessor for APHighlightTitle);
    (*(v65 + 56))(v24, 0, 1, v14);
  }

  else
  {
LABEL_6:
    (*(v65 + 56))(&v57 - v23, 1, 1, v14);
  }

  v38 = a1[8];
  if (!v38)
  {
    goto LABEL_12;
  }

  v39 = a1;
  v40 = a1[7];
  v41 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v41 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = *(v39 + *(type metadata accessor for AccessPointHighlight(0) + 40));
    v65 = v5;
    LODWORD(v63) = (v42 == 2) | v42;
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v43 = a2;
    v44 = v7 + v4[5];
    type metadata accessor for APAnimationController(0);
    v45 = v24;
    v46 = v4;
    sub_24F62847C(&qword_27F24AE18, type metadata accessor for APAnimationController);

    *v44 = sub_24F923598();
    v44[8] = v47 & 1;
    a2 = v43;
    v48 = v7 + v4[6];
    v68 = 0;
    sub_24F926F28();
    v49 = v70;
    *v48 = v69;
    *(v48 + 1) = v49;
    v4 = v46;
    v24 = v45;
    v50 = (v7 + v4[7]);
    *v50 = v40;
    v50[1] = v38;
    v51 = v64;
    v5 = v65;
    *(v7 + v4[8]) = v63 & 1;
    sub_24F630CD4(v7, v51, type metadata accessor for APHighlightSubtitle);
    v52 = v66;
    sub_24F630CD4(v51, v66, type metadata accessor for APHighlightSubtitle);
    v53 = 0;
  }

  else
  {
LABEL_12:
    v53 = 1;
    v52 = v66;
  }

  (*(v5 + 56))(v52, v53, 1, v4);
  sub_24E60169C(v24, v21, &qword_27F24B100);
  v54 = v67;
  sub_24E60169C(v52, v67, &qword_27F24B0F8);
  sub_24E60169C(v21, a2, &qword_27F24B100);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B108);
  sub_24E60169C(v54, a2 + *(v55 + 48), &qword_27F24B0F8);
  sub_24E601704(v52, &qword_27F24B0F8);
  sub_24E601704(v24, &qword_27F24B100);
  sub_24E601704(v54, &qword_27F24B0F8);
  return sub_24E601704(v21, &qword_27F24B100);
}

uint64_t sub_24F63144C()
{
  MEMORY[0x25304D060](0.3, 0.9, 0.0);
  sub_24F923B18();
}

uint64_t sub_24F6314D8()
{
  v1 = type metadata accessor for AccessPointHighlightComponent(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for AccessPointHighlight(0);
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v6 = v0 + v2;

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F923E98();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v0 + v5;
  __swift_destroy_boxed_opaque_existential_1(v0 + v5);

  v10 = (v0 + v5 + v4[7]);
  v11 = type metadata accessor for AccessPointIconType(0);
  v12 = *(*(v11 - 8) + 48);
  if (!v12(v10, 1, v11))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload > 2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    switch(EnumCaseMultiPayload)
    {
      case 3:
        v26 = sub_24F9289E8();
        (*(*(v26 - 8) + 8))(v10, v26);
        break;
      case 4:
LABEL_13:

        break;
      case 5:
        v14 = v10[1];
        if (v14 >> 60 != 15)
        {
          sub_24E627880(*v10, v14);
        }

        break;
    }
  }

LABEL_14:
  v15 = (v9 + v4[8]);
  if (v12(v15, 1, v11))
  {
    goto LABEL_24;
  }

  v16 = swift_getEnumCaseMultiPayload();
  if (v16 <= 2)
  {
    if (v16 > 2)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  switch(v16)
  {
    case 3:
      v27 = sub_24F9289E8();
      (*(*(v27 - 8) + 8))(v15, v27);
      break;
    case 4:
LABEL_23:

      break;
    case 5:
      v17 = v15[1];
      if (v17 >> 60 != 15)
      {
        sub_24E627880(*v15, v17);
      }

      break;
  }

LABEL_24:
  v18 = v9 + v4[13];
  if (*(v18 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v19 = v4[14];
  v20 = sub_24F928818();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v9 + v19, 1, v20))
  {
    (*(v21 + 8))(v9 + v19, v20);
  }

  v22 = v4[15];
  v23 = sub_24F929608();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v9 + v22, 1, v23))
  {
    (*(v24 + 8))(v9 + v22, v23);
  }

  return swift_deallocObject();
}

uint64_t sub_24F631994()
{
  type metadata accessor for AccessPointHighlightComponent(0);
  type metadata accessor for AccessPointHighlight(0);

  return sub_24F63144C();
}

uint64_t sub_24F631A60(uint64_t a1, uint64_t a2)
{
  sub_24F62E53C(a2);
  type metadata accessor for AccessPointHighlightComponent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D050);
  return sub_24F926F48();
}

uint64_t sub_24F631B00()
{
  result = sub_24F923528();
  if (v1 < -20.0)
  {
    v2 = sub_24F62E0D4();
    swift_beginAccess();
    if (*(v2 + 16) == 1)
    {
      *(v2 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F62847C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler);
      sub_24F91FD78();
    }
  }

  return result;
}

uint64_t sub_24F631C58()
{
  v1 = type metadata accessor for AccessPointHighlightComponent(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923E98();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F631D90()
{
  type metadata accessor for AccessPointHighlightComponent(0);

  return sub_24F631B00();
}

unint64_t sub_24F631E00()
{
  result = qword_27F24AEF0;
  if (!qword_27F24AEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AED8);
    sub_24F631E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AEF0);
  }

  return result;
}

unint64_t sub_24F631E8C()
{
  result = qword_27F24AEF8;
  if (!qword_27F24AEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AED0);
    sub_24F631F44();
    sub_24E602068(&qword_27F24AF20, &qword_27F24AEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AEF8);
  }

  return result;
}

unint64_t sub_24F631F44()
{
  result = qword_27F24AF00;
  if (!qword_27F24AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AEC8);
    sub_24F631FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AF00);
  }

  return result;
}

unint64_t sub_24F631FD0()
{
  result = qword_27F24AF08;
  if (!qword_27F24AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AEC0);
    sub_24E602068(&qword_27F24AF10, &qword_27F24AF18);
    sub_24E602068(&qword_27F224B60, &qword_27F224B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AF08);
  }

  return result;
}

uint64_t sub_24F632290()
{
  MEMORY[0x28223BE20](v0);
  sub_24F62CFF8(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessPointHighlightComponent);
  sub_24F62847C(&qword_27F2446A8, type metadata accessor for AccessPointHighlightComponent);
  return sub_24F9218E8();
}

double sub_24F632368@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_24F6323C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessPointHighlight(0);
  sub_24E60169C(a1 + *(v4 + 52), v7, qword_27F24EC90);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_24F632428(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AccessPointHighlight(0) + 52);

  return sub_24F634BEC(a1, v3);
}

uint64_t sub_24F632484(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_24F632628(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C0A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

void sub_24F6327B8()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24F632E64(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F6329FC(319, &qword_27F24AF48, type metadata accessor for AccessPointIconType, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24F632E64(319, &qword_27F2191B8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F632E64(319, &qword_27F2169A0, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24F6331AC(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21D28]);
            if (v5 <= 0x3F)
            {
              sub_24F6329FC(319, &qword_27F24AF50, MEMORY[0x277D21BF8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_24F6329FC(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void sub_24F6329FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F632B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AccessPointIconType(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F632C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AccessPointIconType(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F632D64()
{
  sub_24F6329FC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F632E64(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccessPointIconType(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F632E64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24F632EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_24F632FB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = a2;
  }

  return result;
}

void sub_24F633084()
{
  sub_24F6329FC(319, &qword_27F24AF88, type metadata accessor for AccessPointHighlightComponent.GestureHandler, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F6329FC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F6331AC(319, &qword_27F21CFF8, &qword_27F21CFA8, &unk_24F958530, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F6331AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24F633224()
{
  result = sub_24F91FDC8();
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

unint64_t sub_24F6332E8()
{
  result = qword_27F24AFA0;
  if (!qword_27F24AFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AFA8);
    sub_24F62D27C();
    sub_24E9ED7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AFA0);
  }

  return result;
}

uint64_t sub_24F633374()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AED8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218B50);
  sub_24F631E00();
  sub_24E602068(&qword_27F218C18, &qword_27F218B50);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F63344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F63352C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24F633614()
{
  sub_24F6329FC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F6329FC(319, &qword_27F24AFC0, type metadata accessor for APAnimationController, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F632E64(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F63375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F633898(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F6339DC()
{
  sub_24F6329FC(319, &qword_27F222B10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F6329FC(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F6329FC(319, &qword_27F24AFC0, type metadata accessor for APAnimationController, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24F632E64(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F633B6C()
{
  result = qword_27F24AFD8;
  if (!qword_27F24AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AFD8);
  }

  return result;
}

unint64_t sub_24F633BFC()
{
  result = qword_27F24AFE0;
  if (!qword_27F24AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AFE0);
  }

  return result;
}

unint64_t sub_24F633C54()
{
  result = qword_27F24AFE8;
  if (!qword_27F24AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24AFE8);
  }

  return result;
}

uint64_t sub_24F633CA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49676E696461656CLL && a2 == 0xEB000000006E6F63 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xEC0000006E6F6349 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E41646C756F6873 && a2 == 0xED00006574616D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6953646C756F6873 && a2 == 0xEF7469466F54657ALL || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA776C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_24F634094()
{
  result = qword_27F24B010;
  if (!qword_27F24B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B008);
    sub_24F634120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B010);
  }

  return result;
}

unint64_t sub_24F634120()
{
  result = qword_27F24B018;
  if (!qword_27F24B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B020);
    sub_24E6DC2DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B018);
  }

  return result;
}

uint64_t sub_24F6341DC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24F634258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AFF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(type metadata accessor for APHighlightSubtitle(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24F634434()
{
  result = qword_27F24B028;
  if (!qword_27F24B028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B000);
    sub_24F6344C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B028);
  }

  return result;
}

unint64_t sub_24F6344C0()
{
  result = qword_27F24B030;
  if (!qword_27F24B030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24AFF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B008);
    sub_24F634094();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B030);
  }

  return result;
}

uint64_t sub_24F634588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_93Tm()
{
  v1 = type metadata accessor for APHighlightTitle(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F9234D8();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923E98();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24F6348C4()
{
  result = qword_27F24B050;
  if (!qword_27F24B050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B048);
    sub_24F634950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B050);
  }

  return result;
}

unint64_t sub_24F634950()
{
  result = qword_27F24B058;
  if (!qword_27F24B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B040);
    sub_24F6349DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B058);
  }

  return result;
}

unint64_t sub_24F6349DC()
{
  result = qword_27F24B060;
  if (!qword_27F24B060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B038);
    sub_24F634A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B060);
  }

  return result;
}

unint64_t sub_24F634A68()
{
  result = qword_27F24B068;
  if (!qword_27F24B068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B070);
    sub_24F634AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B068);
  }

  return result;
}

unint64_t sub_24F634AF4()
{
  result = qword_27F24B078;
  if (!qword_27F24B078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B080);
    sub_24E6DC224();
    sub_24E602068(&qword_27F224B60, &qword_27F224B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B078);
  }

  return result;
}

uint64_t sub_24F634BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21B590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F634C78()
{
  result = qword_27F24B0D0;
  if (!qword_27F24B0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B0B8);
    sub_24F634D30();
    sub_24E602068(&qword_27F2188E8, &qword_27F2188F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B0D0);
  }

  return result;
}

unint64_t sub_24F634D30()
{
  result = qword_27F24B0D8;
  if (!qword_27F24B0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B088);
    sub_24F62847C(&qword_27F24B0E0, type metadata accessor for APHighlightIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B0D8);
  }

  return result;
}

uint64_t sub_24F634DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F634E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24F634E68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA15ModifiedContentVyAHyAcAE10fontWeightyQrAA4FontV0K0VSgFQOyAHyAHyAHyAHyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGARyAKSgGGAA14_OpacityEffectVGAA06_ScaleS0VG_Qo_AA05_BlurS0VGAA017_AppearanceActionQ0VG_SiQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ArcadeSubscriptionEntitlementRequest.CachePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F635004()
{
  result = qword_27F24B130;
  if (!qword_27F24B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B130);
  }

  return result;
}

uint64_t sub_24F635058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F6350A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F635130()
{
  v1 = v0[10];
  if (!*(v1 + 56))
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *(v2 + 16) = v1;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_24F63536C;
    v4 = sub_24F636150;
    v5 = v0 + 8;
    goto LABEL_5;
  }

  if (*(v1 + 56) == 1)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *(v2 + 16) = v1;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_24F6354EC;
    v4 = sub_24F635ECC;
    v5 = v0 + 4;
LABEL_5:
    v7 = 0x800000024FA77700;
    v8 = 0xD000000000000010;
    goto LABEL_7;
  }

  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_24F635964;
  v4 = sub_24F635EC4;
  v5 = v0 + 2;
  v8 = 0xD000000000000011;
  v7 = 0x800000024FA776E0;
LABEL_7:

  return MEMORY[0x2822008A0](v5, 0, 0, v8, v7, v4, v2, &type metadata for ArcadeSubscriptionEntitlementRequest.EntitlementResponse);
}

uint64_t sub_24F63536C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24F635488;
  }

  else
  {

    v2 = sub_24F635B18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F635488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6354EC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24F63574C;
  }

  else
  {

    v2 = sub_24F635608;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F635608()
{
  v1 = *(v0 + 32);
  if (*(v0 + 41))
  {
    v2 = *(v0 + 80);

    v3 = swift_task_alloc();
    *(v0 + 136) = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_24F6357B0;

    return MEMORY[0x2822008A0](v0 + 48, 0, 0, 0xD000000000000011, 0x800000024FA776E0, sub_24F63614C, v3, &type metadata for ArcadeSubscriptionEntitlementRequest.EntitlementResponse);
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 8);

    return v6(v1, v5);
  }
}

uint64_t sub_24F63574C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6357B0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_24F635900;
  }

  else
  {

    v2 = sub_24F6358CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6358CC()
{
  if (*(v0 + 57))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(*(v0 + 48), v1 | *(v0 + 56));
}

uint64_t sub_24F635900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F635964()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24F635AB4;
  }

  else
  {

    v2 = sub_24F635A80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F635A80()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(*(v0 + 16), v1 | *(v0 + 24));
}

uint64_t sub_24F635AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F635B18()
{
  if (*(v0 + 73))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return (*(v0 + 8))(*(v0 + 64), v1 | *(v0 + 72));
}

uint64_t sub_24F635B4C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v12 + 16))(1, sub_24F635ED8, v10, v11, v12);
}

uint64_t sub_24F635CBC(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);
    return sub_24F92B798();
  }
}

uint64_t sub_24F635D50(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = a2[5];
  v12 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
  (*(v12 + 8))(1, 1, sub_24F636094, v10, v11, v12);
}

uint64_t sub_24F635ED8(int a1, int a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);

  return sub_24F635CBC(a1, a2, a3);
}

uint64_t sub_24F635F6C(int a1, int a2, int a3, id a4)
{
  if (a4)
  {
    v4 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);
    return sub_24F92B798();
  }
}

uint64_t objectdestroyTm_78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F636094(int a1, int a2, int a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B138);

  return sub_24F635F6C(a1, a2, a3, a4);
}

uint64_t ChallengesHistoryFriendsShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ChallengesHistoryFriendsShelfIntent()
{
  result = qword_27F24B158;
  if (!qword_27F24B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ChallengesHistoryFriendsShelfIntent.friendHistories.getter()
{
  type metadata accessor for ChallengesHistoryFriendsShelfIntent();
}

uint64_t ChallengesHistoryFriendsShelfIntent.displayType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ChallengesHistoryFriendsShelfIntent();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ChallengesHistoryFriendsShelfIntent.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ChallengesHistoryFriendsShelfIntent() + 36));

  return v1;
}

unint64_t ChallengesHistoryFriendsShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x616C506C61636F6CLL;
  *(inited + 96) = 0xEB00000000726579;
  v7 = type metadata accessor for ChallengesHistoryFriendsShelfIntent();
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24F637078(&qword_27F215388, type metadata accessor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F6370C0(v1 + v8, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x6948646E65697266;
  *(inited + 152) = 0xEF736569726F7473;
  v10 = *(v1 + v7[6]);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980);
  v11 = sub_24F636FDC(&qword_27F217988, &qword_27F217990);
  *(inited + 160) = v10;
  *(inited + 192) = v11;
  *(inited + 200) = 0x796C6E4F6E6977;
  *(inited + 208) = 0xE700000000000000;
  v12 = *(v1 + v7[7]);
  v13 = MEMORY[0x277D22598];
  *(inited + 240) = MEMORY[0x277D839B0];
  *(inited + 248) = v13;
  *(inited + 216) = v12;
  *(inited + 256) = 0x5479616C70736964;
  *(inited + 264) = 0xEB00000000657079;
  v14 = *(v1 + v7[8]);
  *(inited + 296) = &type metadata for ChallengesShelfDisplayType;
  v15 = sub_24E7C96C0();
  *(inited + 272) = v14;
  *(inited + 304) = v15;
  *(inited + 312) = 0x4449656C646E7562;
  *(inited + 320) = 0xE800000000000000;
  v16 = (v1 + v7[9]);
  v18 = *v16;
  v17 = v16[1];
  *(inited + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  *(inited + 360) = sub_24E605DB4();
  *(inited + 328) = v18;
  *(inited + 336) = v17;

  v19 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_24F636610()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x796C6E4F6E6977;
  v4 = 0x5479616C70736964;
  if (v1 != 4)
  {
    v4 = 0x4449656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616C506C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x6948646E65697266;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F6366E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F637534(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F63670C(uint64_t a1)
{
  v2 = sub_24F636F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F636748(uint64_t a1)
{
  v2 = sub_24F636F88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryFriendsShelfIntent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B140);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F636F88();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for ChallengesHistoryFriendsShelfIntent();
    v13 = 1;
    type metadata accessor for Player(0);
    sub_24F637078(&qword_27F213E28, type metadata accessor for Player);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980);
    sub_24F636FDC(&qword_27F2179C0, &qword_27F2179C8);
    sub_24F92CD48();
    v11[14] = 3;
    sub_24F92CD18();
    v11[13] = *(v3 + *(v9 + 32));
    v11[12] = 4;
    sub_24F3F9670();
    sub_24F92CD48();
    v11[11] = 5;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ChallengesHistoryFriendsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B150);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ChallengesHistoryFriendsShelfIntent();
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F636F88();
  v26 = v8;
  v12 = v27;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v5;
  v14 = v24;
  v15 = v25;
  v35 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v16;
  v34 = 1;
  sub_24F637078(&qword_27F213E38, type metadata accessor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v13, v11 + v9[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217980);
  v33 = 2;
  sub_24F636FDC(&qword_27F2179E8, &qword_27F2179F0);
  sub_24F92CC68();
  v17 = a1;
  *(v11 + v9[6]) = v28;
  v32 = 3;
  *(v11 + v9[7]) = sub_24F92CC38() & 1;
  v30 = 4;
  sub_24F368F98();
  sub_24F92CC68();
  *(v11 + v9[8]) = v31;
  v29 = 5;
  v18 = sub_24F92CBC8();
  v20 = v19;
  (*(v14 + 8))(v26, v15);
  v21 = (v11 + v9[9]);
  *v21 = v18;
  v21[1] = v20;
  sub_24F6370C0(v11, v23, type metadata accessor for ChallengesHistoryFriendsShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_24F637128(v11, type metadata accessor for ChallengesHistoryFriendsShelfIntent);
}

unint64_t sub_24F636F88()
{
  result = qword_27F24B148;
  if (!qword_27F24B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B148);
  }

  return result;
}

uint64_t sub_24F636FDC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217980);
    sub_24F637078(a2, type metadata accessor for ChallengesHistoryData.FriendHistory);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F637078(unint64_t *a1, void (*a2)(uint64_t))
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