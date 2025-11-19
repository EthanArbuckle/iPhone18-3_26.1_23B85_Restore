unint64_t sub_1D67494CC()
{
  result = qword_1EC88AE48;
  if (!qword_1EC88AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE48);
  }

  return result;
}

uint64_t sub_1D6749520()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D674956C()
{
  result = qword_1EC88AE50;
  if (!qword_1EC88AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE50);
  }

  return result;
}

unint64_t sub_1D67495EC()
{
  result = qword_1EC88AE58;
  if (!qword_1EC88AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE58);
  }

  return result;
}

unint64_t sub_1D6749644()
{
  result = qword_1EC8902A0;
  if (!qword_1EC8902A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8902A0);
  }

  return result;
}

void sub_1D67496AC(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

unint64_t sub_1D67496C8()
{
  result = qword_1EC88AE60;
  if (!qword_1EC88AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE60);
  }

  return result;
}

void GapOfflineViewRenderer.render(for:with:in:)(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel);
  [v4 setFrame_];
  v5 = *(a1 + 112);
  v6 = __swift_project_boxed_opaque_existential_1((a1 + 88), v5);
  v9[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  v8 = sub_1D5BF9C38(v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  [v4 setAttributedText_];
}

void sub_1D6749810(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel);
  [v4 setFrame_];
  v5 = *(a1 + 112);
  v6 = __swift_project_boxed_opaque_existential_1((a1 + 88), v5);
  v9[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  v8 = sub_1D5BF9C38(v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  [v4 setAttributedText_];
}

void PuzzleColorTheme.init(puzzleType:)(void *a1@<X0>, NSObject **a2@<X8>)
{
  v4 = [a1 puzzlePrimaryColor];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 ne_color];

    v7 = [a1 darkStylePuzzlePrimaryColor];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 ne_color];
      swift_unknownObjectRelease();

      *a2 = v6;
      a2[1] = v9;
      return;
    }

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v13 = sub_1D725C42C();
    __swift_project_value_buffer(v13, qword_1EDFFCFA8);
    v14 = sub_1D725C3FC();
    v15 = sub_1D7262EBC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D5B42000, v14, v15, "PuzzleColorTheme: invalid darkStylePrimaryColor", v16, 2u);
      MEMORY[0x1DA6FD500](v16, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v10 = sub_1D725C42C();
    __swift_project_value_buffer(v10, qword_1EDFFCFA8);
    v6 = sub_1D725C3FC();
    v11 = sub_1D7262EBC();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D5B42000, v6, v11, "PuzzleColorTheme: invalid puzzlePrimaryColor", v12, 2u);
      MEMORY[0x1DA6FD500](v12, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t FormatArrangementComponentSubgroup.slots.getter()
{
  sub_1D674AAE4();
}

uint64_t FormatArrangementComponentSubgroup.properties.getter()
{
  sub_1D5B8EF68();
}

uint64_t FormatArrangementComponentSubgroup.selectors.getter()
{
  sub_1D5B8EF70();
}

uint64_t FormatArrangementComponentSubgroup.identifier.getter()
{
  v0 = sub_1D5F90834();

  return v0;
}

uint64_t FormatArrangementComponentSubgroup.properties.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t FormatArrangementComponentSubgroup.selectors.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1D6749CFC@<X0>(uint64_t (*a1)(uint64_t)@<X3>, void *a2@<X8>)
{
  v4 = type metadata accessor for FormatArrangementComponentSubgroup();
  *a2 = a1(v4);
}

uint64_t FormatArrangementComponentSubgroup.slots.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t static FormatArrangementComponentSubgroup.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D72646CC()) && (sub_1D6339F3C(v2, v5) & 1) != 0 && (sub_1D5BFC390(v3, v4))
  {
    type metadata accessor for FormatArrangementComponentSubgroupSlot();

    swift_getWitnessTable();
    swift_getWitnessTable();
    type metadata accessor for FormatCodingEmptyArrayStrategy();
    swift_getWitnessTable();
    sub_1D72627FC();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v7 = static FormatCodingDefault<>.== infix(_:_:)();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D6749FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D674A120(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x726F7463656C6573;
  if (a1 != 2)
  {
    v2 = 0x73746F6C73;
  }

  if (a1)
  {
    v1 = 0x69747265706F7270;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D674A1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6749FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D674A1DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D674A230(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangementComponentSubgroup.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v30 = *(a2 + 16);
  v26[1] = v4;
  type metadata accessor for FormatArrangementComponentSubgroup.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v26 - v8;
  v10 = *v2;
  v31 = v2[1];
  v32 = v10;
  v11 = v2[2];
  v28 = v2[3];
  v29 = v11;
  v27 = v2[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v5;
  sub_1D7264B5C();
  LOBYTE(v35) = 0;
  v13 = v33;
  sub_1D72643FC();
  if (v13)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v16 = v27;
  v15 = v28;
  v17 = v6;
  v35 = v29;
  v34 = 1;
  sub_1D674AB04();
  v19 = v18;
  v20 = sub_1D674AB6C(&qword_1EDF20940, sub_1D674AB04);

  KeyedEncodingContainer.encode<A>(_:forKey:)(&v35, &v34, v12, v19, v20);

  v35 = v15;
  v34 = 2;
  sub_1D5B55A8C();
  v22 = v21;
  v23 = sub_1D674AB6C(&qword_1EDF21B00, sub_1D5B55A8C);

  KeyedEncodingContainer.encode<A>(_:forKey:)(&v35, &v34, v12, v22, v23);

  v35 = v16;
  v34 = 3;
  type metadata accessor for FormatArrangementComponentSubgroupSlot();

  swift_getWitnessTable();
  swift_getWitnessTable();
  v24 = type metadata accessor for FormatCodingEmptyArrayStrategy();
  WitnessTable = swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v35, &v34, v12, v24, WitnessTable);

  return (*(v17 + 8))(v9, v12);
}

uint64_t FormatArrangementComponentSubgroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a4;
  type metadata accessor for FormatArrangementComponentSubgroup.CodingKeys();
  swift_getWitnessTable();
  v38 = sub_1D726435C();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v39;
  sub_1D7264B0C();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = a2;
  v39 = a3;
  v12 = v36;
  v11 = v37;
  LOBYTE(v41) = 0;
  v13 = sub_1D72642BC();
  v15 = v14;
  v16 = v13;
  v40 = 1;
  sub_1D674AB04();
  v18 = v17;
  v19 = sub_1D674AB6C(&qword_1EDF20940, sub_1D674AB04);
  KeyedDecodingContainer.decode<A>(_:forKey:)(v18, v19, &v41);
  v33 = v16;
  v34 = v41;
  v40 = 2;
  sub_1D5B55A8C();
  v21 = v20;
  v22 = sub_1D674AB6C(&qword_1EDF21B00, sub_1D5B55A8C);
  KeyedDecodingContainer.decode<A>(_:forKey:)(v21, v22, &v41);
  v23 = v15;
  v32 = v41;
  v40 = 3;
  type metadata accessor for FormatArrangementComponentSubgroupSlot();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v24 = type metadata accessor for FormatCodingEmptyArrayStrategy();
  WitnessTable = swift_getWitnessTable();
  v26 = v38;
  KeyedDecodingContainer.decode<A>(_:forKey:)(v24, WitnessTable, &v41);
  (*(v12 + 8))(v9, v26);
  v28 = v41;
  v29 = v34;
  *v11 = v33;
  v11[1] = v23;
  v30 = v32;
  v11[2] = v29;
  v11[3] = v30;
  v11[4] = v28;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D674AAAC()
{
  v0 = sub_1D5F90834();

  return v0;
}

void sub_1D674AB04()
{
  if (!qword_1EDF44180)
  {
    sub_1D5B59CD8();
    sub_1D5B59D2C();
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF44180);
    }
  }
}

uint64_t sub_1D674AB6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D674ABB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D674AC84(uint64_t a1)
{
  result = sub_1D674ACAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D674ACAC()
{
  result = qword_1EC88AE68;
  if (!qword_1EC88AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE68);
  }

  return result;
}

uint64_t FollowingCommandContext.init(tag:shouldAutoEnableNotifications:shouldShowChannelUpsell:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 9) = a3;
  return result;
}

{
  if (a3)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFE | a2 & 1;
  if (!result)
  {
    v5 = 0;
  }

  *a4 = result;
  *(a4 + 8) = v5;
  return result;
}

NewsFeed::FollowingCommandState_optional __swiftcall FollowingCommandState.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D72641CC();

  if (v1 == 1)
  {
    v2.value = NewsFeed_FollowingCommandState_notFollowing;
  }

  else
  {
    v2.value = NewsFeed_FollowingCommandState_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t FollowingCommandState.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F6C6C6F46746F6ELL;
  }

  else
  {
    return 0x6E69776F6C6C6F66;
  }
}

uint64_t sub_1D674ADE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6C6C6F46746F6ELL;
  }

  else
  {
    v3 = 0x6E69776F6C6C6F66;
  }

  if (v2)
  {
    v4 = 0xE900000000000067;
  }

  else
  {
    v4 = 0xEC000000676E6977;
  }

  if (*a2)
  {
    v5 = 0x6F6C6C6F46746F6ELL;
  }

  else
  {
    v5 = 0x6E69776F6C6C6F66;
  }

  if (*a2)
  {
    v6 = 0xEC000000676E6977;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D674AE9C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D674AF2C()
{
  sub_1D72621EC();
}

uint64_t sub_1D674AFA8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D674B034@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D674B094(uint64_t *a1@<X8>)
{
  v2 = 0x6E69776F6C6C6F66;
  if (*v1)
  {
    v2 = 0x6F6C6C6F46746F6ELL;
  }

  v3 = 0xE900000000000067;
  if (*v1)
  {
    v3 = 0xEC000000676E6977;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D674B0E0(uint64_t a1)
{
  v2 = sub_1D674C134();

  return MEMORY[0x1EEE48380](a1, v2);
}

uint64_t static FollowingNotificationContext.Result.== infix(_:_:)(int a1, int a2)
{
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      if (a2 != 4)
      {
        return 0;
      }
    }

    else
    {
      if (a1 != 5)
      {
LABEL_10:
        if ((a2 - 2) >= 4u)
        {
          return (a2 ^ a1 ^ 1) & 1;
        }

        return 0;
      }

      if (a2 != 5)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 != 3)
  {
    goto LABEL_10;
  }

  return a2 == 3;
}

BOOL sub_1D674B1D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

LABEL_10:
      if ((v3 - 2) >= 4u)
      {
        return (v3 ^ v2 ^ 1) & 1;
      }

      return 0;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FollowingNotificationContext.isEligibleForTipPresentation.getter()
{
  v1 = *(v0 + 8);
  if ([*v0 isPuzzleType])
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = 7u >> ((v1 - 2) & 0xF);
    if ((v1 - 2) >= 4u)
    {
      LOBYTE(v2) = v1;
    }
  }

  return v2 & 1;
}

uint64_t sub_1D674B2FC(char *a1, void *a2)
{
  v3 = *a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  if (v3)
  {
    v12 = 0x80000001D73D3570;
  }

  else
  {
    v12 = 0x80000001D73D35A0;
  }

  v6 = 0xE000000000000000;
  sub_1D725811C();

  sub_1D5C384A0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  swift_getObjectType();
  if ([a2 isPuzzleType])
  {
    v8 = 0;
  }

  else
  {
    v8 = FCTagProviding.localizedTagType.getter();
    v6 = v9;
  }

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D5B7E2C0();
  *(v7 + 32) = v8;
  *(v7 + 40) = v6;
  v10 = sub_1D72620BC();

  return v10;
}

id sub_1D674B4C4(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF05BD0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDF05BD8;
  }

  else
  {
    if (qword_1EC87DAA0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC895138;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_1D674B56C@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  if (v5)
  {
    v16 = 0x80000001D73D3570;
  }

  else
  {
    v16 = 0x80000001D73D35A0;
  }

  v8 = 0xE000000000000000;
  sub_1D725811C();

  sub_1D5C384A0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7273AE0;
  swift_getObjectType();
  if ([a2 isPuzzleType])
  {
    v10 = 0;
  }

  else
  {
    v10 = FCTagProviding.localizedTagType.getter();
    v8 = v11;
  }

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D5B7E2C0();
  *(v9 + 32) = v10;
  *(v9 + 40) = v8;
  v12 = sub_1D72620BC();
  v14 = v13;

  *a3 = v12;
  a3[1] = v14;
  return result;
}

uint64_t sub_1D674B73C(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDF05BD0 != -1)
    {
      swift_once();
    }

    v1 = qword_1EDF05BD8;
  }

  else
  {
    if (qword_1EC87DAA0 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC895138;
  }

  return sub_1D725DFDC();
}

uint64_t static KeyCommandItem.follow(tag:)(uint64_t a1)
{
  sub_1D5B61200(0, &qword_1EDF17100, &type metadata for FollowingCommandState, MEMORY[0x1E69E6158], MEMORY[0x1E69D7AF0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  if (qword_1EDF3AB00 != -1)
  {
    swift_once();
  }

  *(swift_allocObject() + 16) = a1;
  sub_1D5B61274();
  swift_unknownObjectRetain_n();

  sub_1D725DAFC();
  return sub_1D725D14C();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(uint64_t a1)
{
  sub_1D674C214(0, &unk_1EDF17090, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D674C214(0, &unk_1EDF171A0, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D674C214(0, &unk_1EDF17170, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  if (!a1)
  {
    return 0;
  }

  v8 = qword_1EDF3AB00;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = 256;
  sub_1D5B61274();
  swift_unknownObjectRetain_n();

  sub_1D725DADC();
  sub_1D725DABC();
  sub_1D725DF0C();
  sub_1D725D3DC();
  swift_allocObject();
  v10 = sub_1D725D3BC();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE6follow3tagACSgSo14FCTagProviding_pSg_tFZ_0(uint64_t a1)
{
  sub_1D674C188();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D5B61200(0, &qword_1EDF17100, &type metadata for FollowingCommandState, MEMORY[0x1E69E6158], MEMORY[0x1E69D7AF0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  if (!a1)
  {
    return 0;
  }

  v6 = qword_1EDF3AB00;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  sub_1D726203C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = 256;
  sub_1D5B61274();
  swift_unknownObjectRetain();
  sub_1D725DAFC();
  sub_1D725DFEC();
  sub_1D725DAFC();
  sub_1D725D5DC();
  swift_allocObject();
  v8 = sub_1D725D5BC();
  swift_unknownObjectRelease();
  return v8;
}

unint64_t sub_1D674BF04()
{
  result = qword_1EDF0E5F0;
  if (!qword_1EDF0E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E5F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FollowingNotificationContext.Result(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for FollowingNotificationContext.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_1D674C0EC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1D674C134()
{
  result = qword_1EDF0E5E8;
  if (!qword_1EDF0E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E5E8);
  }

  return result;
}

void sub_1D674C188()
{
  if (!qword_1EDF17108)
  {
    sub_1D725DFEC();
    sub_1D5B61274();
    v0 = sub_1D725DB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17108);
    }
  }
}

void sub_1D674C214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B61274();
    v7 = a3(a1, &type metadata for FollowingCommandState, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static FormatAbsoluteURL.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D72584CC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for FormatAbsoluteURL() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_1D633A250(v5, v6);
}

uint64_t FormatAbsoluteURL.parameters.getter()
{
  type metadata accessor for FormatAbsoluteURL();
}

uint64_t FormatAbsoluteURL.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D674C394(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for FormatAbsoluteURL() + 20);

  *(a2 + v4) = v3;
  return result;
}

uint64_t FormatAbsoluteURL.parameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FormatAbsoluteURL() + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D674C46C(uint64_t a1)
{
  result = sub_1D5C68434(&qword_1EC88AE70, type metadata accessor for FormatAbsoluteURL);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D674C4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D72584CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1D633A250(v7, v8);
}

uint64_t sub_1D674C52C(void *a1)
{
  a1[1] = sub_1D5C68434(&qword_1EDF2F900, type metadata accessor for FormatAbsoluteURL);
  a1[2] = sub_1D5C68434(qword_1EDF10E68, type metadata accessor for FormatAbsoluteURL);
  result = sub_1D5C68434(&qword_1EC88AE78, type metadata accessor for FormatAbsoluteURL);
  a1[3] = result;
  return result;
}

uint64_t FormatNodeCache.deinit()
{

  return v0;
}

uint64_t FormatNodeCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static FormatCustomItem.Action.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D674C810();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1D674C874(a1, v7);
  sub_1D674C874(a2, &v7[v9]);
  LOBYTE(a2) = sub_1D72584CC();
  v10 = sub_1D72585BC();
  v11 = *(*(v10 - 8) + 8);
  v11(&v7[v9], v10);
  v11(v7, v10);
  return a2 & 1;
}

void sub_1D674C810()
{
  if (!qword_1EDF114E0)
  {
    type metadata accessor for FormatCustomItem.Action();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF114E0);
    }
  }
}

uint64_t sub_1D674C874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCustomItem.Action();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D674C8D8(uint64_t a1, uint64_t a2)
{
  sub_1D674C810();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1D674C874(a1, v7);
  sub_1D674C874(a2, &v7[v9]);
  LOBYTE(a2) = sub_1D72584CC();
  v10 = sub_1D72585BC();
  v11 = *(*(v10 - 8) + 8);
  v11(&v7[v9], v10);
  v11(v7, v10);
  return a2 & 1;
}

uint64_t FormatCustomItem.Action.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1D5C5039C();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v14 = a1;
  sub_1D7264B0C();
  if (!v2)
  {
    v29 = v7;
    v30 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v17 = v13;
    if (v16)
    {
      v18 = sub_1D726433C();
      v19 = (v18 + 40);
      v20 = *(v18 + 16) + 1;
      v14 = a1;
      while (--v20)
      {
        v21 = v19 + 2;
        v22 = *v19;
        v19 += 2;
        if (v22 >= 4)
        {
          v23 = *(v21 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v24 = v23;
          *(v24 + 8) = v22;
          *(v24 + 16) = &unk_1F5118730;
          *(v24 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v30 + 8))(v17, v9);
          return __swift_destroy_boxed_opaque_existential_1(v14);
        }
      }
    }

    sub_1D674D53C();
    v32 = 0uLL;
    sub_1D726431C();
    v32 = xmmword_1D7279980;
    sub_1D5B4CDA4(qword_1EDF419B8, sub_1D5C5039C);
    v25 = v29;
    sub_1D726431C();
    v14 = a1;
    (*(v30 + 8))(v17, v9);
    v26 = sub_1D72585BC();
    (*(*(v26 - 8) + 32))(v31, v25, v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t FormatCustomItem.Action.encode(to:)(void *a1)
{
  sub_1D5C5039C();
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D72585BC();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatCustomItem.Action();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v25 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v19 = v8;
  sub_1D7264B5C();
  sub_1D674C874(v28, v12);
  v20 = v8;
  v21 = v27;
  (*(v5 + 32))(v20, v12, v27);
  sub_1D674D590();
  v29 = 0uLL;
  v22 = v30;
  sub_1D726443C();
  if (!v22)
  {
    v23 = v26;
    (*(v5 + 16))(v26, v19, v21);
    v29 = xmmword_1D7279980;
    sub_1D5B4CDA4(&qword_1EDF127D0, sub_1D5C5039C);
    sub_1D726443C();
    sub_1D674D5E4(v23, sub_1D5C5039C);
  }

  (*(v5 + 8))(v19, v21);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1D674D0D0()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D674D13C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D674D18C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D72641CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t FormatCustomItem.Action.perform(with:)()
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatCustomItem.Action();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D674C874(v0, v13);
  (*(v6 + 32))(v9, v13, v5);
  swift_getObjectType();
  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v4, v9, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_1D725D97C();
  sub_1D674D5E4(v4, sub_1D5B4D3E0);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D674D53C()
{
  result = qword_1EDF30738;
  if (!qword_1EDF30738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30738);
  }

  return result;
}

unint64_t sub_1D674D590()
{
  result = qword_1EDF114F8;
  if (!qword_1EDF114F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF114F8);
  }

  return result;
}

uint64_t sub_1D674D5E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D674D644(void *a1)
{
  a1[1] = sub_1D5B4CDA4(&qword_1EDF30730, type metadata accessor for FormatCustomItem.Action);
  a1[2] = sub_1D5B4CDA4(&qword_1EDF114F0, type metadata accessor for FormatCustomItem.Action);
  result = sub_1D5B4CDA4(&qword_1EC88AE80, type metadata accessor for FormatCustomItem.Action);
  a1[3] = result;
  return result;
}

uint64_t sub_1D674D6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D674D75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D72585BC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

unint64_t sub_1D674D7EC()
{
  result = qword_1EC88AE88;
  if (!qword_1EC88AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE88);
  }

  return result;
}

unint64_t sub_1D674D840()
{
  result = qword_1EDF30740;
  if (!qword_1EDF30740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30740);
  }

  return result;
}

uint64_t sub_1D674D894(void (*a1)(uint64_t *__return_ptr, char *))
{
  v15 = a1;
  v3 = sub_1D725BD1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69D6B38];
  sub_1D674F3C4(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v14 - v11;
  sub_1D674F278(v1, &v14 - v11, &qword_1EDF45AC0, v8);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v7, v12, v3);
  v15(&v16, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v16;
  }

  return result;
}

uint64_t FormatContentSubgroupCollection.init(from:)@<X0>(void *a1@<X0>, size_t *a2@<X8>)
{
  v98 = a2;
  v111 = type metadata accessor for FormatContentSubgroupCollection.MetadataContainer();
  MEMORY[0x1EEE9AC00](v111, v3);
  v118 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1D674F3C4(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v110 = &v87 - v8;
  sub_1D674F3C4(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v5);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v109 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v102 = &v87 - v14;
  v113 = sub_1D725BD1C();
  v96 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v15);
  v108 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v117 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v105 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v101 = &v87 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v106 = &v87 - v28;
  sub_1D5B5C688(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v103 = &v87 - v31;
  v112 = type metadata accessor for FormatMetadata();
  v115 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v32);
  v120 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v114 = &v87 - v36;
  sub_1D674F3C4(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], v5);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v104 = &v87 - v39;
  v40 = sub_1D7263FCC();
  v93 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v87 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FormatContentSubgroup();
  v92 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v87 - v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v119;
  sub_1D7264ADC();
  v53 = a1;
  if (v52)
  {
    return __swift_destroy_boxed_opaque_existential_1(v53);
  }

  v54 = v115;
  v119 = v51;
  v89 = v47;
  v116 = v44;
  v94 = v43;
  v55 = v53;
  v95 = v40;
  __swift_project_boxed_opaque_existential_1(&v122, v123);
  if (sub_1D72644FC())
  {
    v56 = MEMORY[0x1E69E7CC0];
    v57 = v55;
    goto LABEL_27;
  }

  v100 = v54 + 6;
  v107 = (v96 + 48);
  v97 = (v96 + 32);
  v115 = (v96 + 8);
  v91 = (v93 + 6);
  v90 = (v93 + 4);
  ++v93;
  v56 = MEMORY[0x1E69E7CC0];
  v58 = v112;
  v59 = v113;
  v57 = v55;
  v99 = v55;
  do
  {
    v88 = v56;
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v122, v123);
      sub_1D674F89C(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup);
      sub_1D72644EC();
      v60 = v57;
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      v61 = sub_1D7264AFC();
      v62 = v104;
      sub_1D7263FBC();
      v63 = v95;
      result = (*v91)(v62, 1, v95);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v65 = v94;
      (*v90)(v94, v62, v63);
      v66 = v103;
      v67 = v114;
      if (!*(v61 + 16) || (v68 = sub_1D5B7C598(v65), (v69 & 1) == 0))
      {

        (*v93)(v65, v63);
LABEL_14:
        v57 = v60;
        v70 = v119;
        goto LABEL_15;
      }

      sub_1D5B76B10(*(v61 + 56) + 32 * v68, v121);
      (*v93)(v65, v63);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v57 = v60;
      v70 = v119;
      if (v124)
      {
        break;
      }

LABEL_15:
      sub_1D5D3A074(v70 + *(v116 + 40), v66);
      sub_1D674F35C(v66, v67, type metadata accessor for FormatMetadata);
      __swift_project_boxed_opaque_existential_1(v57, v57[3]);
      v71 = sub_1D7264AFC();
      v72 = v106;
      Dictionary<>.appVersion.getter(v71, v106);

      v73 = v114;
      v74 = sub_1D7264AFC();
      v75 = v101;
      Dictionary<>.formatVersion.getter(v74, v101);

      v76 = v102;
      sub_1D674F278(v73 + *(v58 + 28), v102, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v77 = 1;
      if ((*v107)(v76, 1, v59) != 1)
      {
        v78 = v105;
        (*v97)(v105, v76, v59);
        v77 = sub_1D725B9FC();
        v79 = v78;
        v72 = v106;
        (*v115)(v79, v59);
      }

      LODWORD(v96) = v77;
      sub_1D674F89C(&qword_1EDF415C8, type metadata accessor for FormatMetadata);
      v80 = sub_1D725A94C();
      v81 = v72;
      v82 = *v115;
      (*v115)(v81, v59);
      sub_1D674F218(v73, type metadata accessor for FormatMetadata);
      v82(v75, v59);
      v70 = v119;
      if (v80 & 1) != 0 && (v96)
      {
        break;
      }

      sub_1D674F218(v119, type metadata accessor for FormatContentSubgroup);
      __swift_project_boxed_opaque_existential_1(&v122, v123);
      if (sub_1D72644FC())
      {
        v56 = v88;
        goto LABEL_27;
      }
    }

    sub_1D674F2F8(v70, v89);
    v83 = v88;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_1D6991D38(0, v83[2] + 1, 1, v83);
    }

    v84 = v92;
    v86 = v83[2];
    v85 = v83[3];
    v56 = v83;
    if (v86 >= v85 >> 1)
    {
      v56 = sub_1D6991D38(v85 > 1, v86 + 1, 1, v83);
    }

    sub_1D674F218(v119, type metadata accessor for FormatContentSubgroup);
    *(v56 + 16) = v86 + 1;
    sub_1D674F35C(v89, v56 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v86, type metadata accessor for FormatContentSubgroup);
    __swift_project_boxed_opaque_existential_1(&v122, v123);
  }

  while ((sub_1D72644FC() & 1) == 0);
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(&v122);
  *v98 = v56;
  v53 = v57;
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t FormatContentSubgroupCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D674F3C4(0, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
  sub_1D674F428();
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D674EB44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D674F3C4(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v21 = &v20 - v5;
  sub_1D5B5C688(0, &qword_1EDF3C618, sub_1D674F7B4, &type metadata for FormatContentSubgroupCollection.MetadataContainer.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for FormatContentSubgroupCollection.MetadataContainer();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D674F7B4();
  v16 = v22;
  sub_1D7264B0C();
  if (!v16)
  {
    v17 = v20;
    type metadata accessor for FormatMetadata();
    sub_1D674F89C(&qword_1EDF415C0, type metadata accessor for FormatMetadata);
    v18 = v21;
    sub_1D726427C();
    (*(v8 + 8))(v11, v7);
    sub_1D674F808(v18, v15);
    sub_1D674F35C(v15, v17, type metadata accessor for FormatContentSubgroupCollection.MetadataContainer);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D674EE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D674EEB8(uint64_t a1)
{
  v2 = sub_1D674F7B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D674EEF4(uint64_t a1)
{
  v2 = sub_1D674F7B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D674EF48(void *a1)
{
  sub_1D5B5C688(0, &qword_1EC88AEB0, sub_1D674F7B4, &type metadata for FormatContentSubgroupCollection.MetadataContainer.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D674F7B4();
  sub_1D7264B5C();
  type metadata accessor for FormatMetadata();
  sub_1D674F89C(&qword_1EDF11B70, type metadata accessor for FormatMetadata);
  sub_1D72643BC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t type metadata accessor for FormatContentSubgroupCollection.MetadataContainer()
{
  result = qword_1EDF3DA10;
  if (!qword_1EDF3DA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D674F18C(uint64_t a1)
{
  sub_1D674F3C4(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D674F218(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D674F278(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D674F3C4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D674F2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatContentSubgroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D674F35C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D674F3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D674F428()
{
  result = qword_1EDF04E00;
  if (!qword_1EDF04E00)
  {
    sub_1D674F3C4(255, &qword_1EDF43BC0, type metadata accessor for FormatContentSubgroup, MEMORY[0x1E69E62F8]);
    sub_1D674F89C(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04E00);
  }

  return result;
}

unint64_t sub_1D674F500(void *a1)
{
  a1[1] = sub_1D674F538();
  a1[2] = sub_1D674F58C();
  result = sub_1D674F5E0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D674F538()
{
  result = qword_1EDF3D9B0[0];
  if (!qword_1EDF3D9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3D9B0);
  }

  return result;
}

unint64_t sub_1D674F58C()
{
  result = qword_1EC88AE90;
  if (!qword_1EC88AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE90);
  }

  return result;
}

unint64_t sub_1D674F5E0()
{
  result = qword_1EC88AE98;
  if (!qword_1EC88AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AE98);
  }

  return result;
}

void sub_1D674F66C()
{
  sub_1D674F3C4(319, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D674F708(void *a1)
{
  a1[1] = sub_1D674F89C(&qword_1EDF3DA48, type metadata accessor for FormatContentSubgroupCollection.MetadataContainer);
  a1[2] = sub_1D674F89C(&qword_1EC88AEA0, type metadata accessor for FormatContentSubgroupCollection.MetadataContainer);
  result = sub_1D674F89C(&qword_1EC88AEA8, type metadata accessor for FormatContentSubgroupCollection.MetadataContainer);
  a1[3] = result;
  return result;
}

unint64_t sub_1D674F7B4()
{
  result = qword_1EDF3DA60;
  if (!qword_1EDF3DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3DA60);
  }

  return result;
}

uint64_t sub_1D674F808(uint64_t a1, uint64_t a2)
{
  sub_1D674F3C4(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D674F89C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1D674F8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMetadata();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D674F3C4(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v22 - v11);
  sub_1D674FBD0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_1D674F278(a1, v16, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  sub_1D674F278(a2, &v16[v18], &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1D674F278(v16, v12, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_1D674F35C(&v16[v18], v8, type metadata accessor for FormatMetadata);
      v21 = static FormatMetadata.== infix(_:_:)(v12, v8);
      sub_1D674F218(v8, type metadata accessor for FormatMetadata);
      sub_1D674F218(v12, type metadata accessor for FormatMetadata);
      sub_1D674F18C(v16);
      return (v21 & 1) != 0;
    }

    sub_1D674F218(v12, type metadata accessor for FormatMetadata);
LABEL_6:
    sub_1D674F218(v16, sub_1D674FBD0);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D674F18C(v16);
  return 1;
}

void sub_1D674FBD0()
{
  if (!qword_1EC88AEB8)
  {
    sub_1D674F3C4(255, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88AEB8);
    }
  }
}

unint64_t sub_1D674FC78()
{
  result = qword_1EC88AEC0;
  if (!qword_1EC88AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AEC0);
  }

  return result;
}

unint64_t sub_1D674FCD0()
{
  result = qword_1EDF3DA50;
  if (!qword_1EDF3DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3DA50);
  }

  return result;
}

unint64_t sub_1D674FD28()
{
  result = qword_1EDF3DA58;
  if (!qword_1EDF3DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3DA58);
  }

  return result;
}

void FormatGroupBinding.SourceItemTip.tipSource(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  v15 = v14 >> 5;
  if (v14 >> 5 > 1)
  {
    if (v15 == 2)
    {
      sub_1D6752174(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v13);
      if (v3)
      {
        return;
      }

      LOBYTE(v43) = v14 & 1;
      FormatHeadlineBinding.SourceItemTip.tipSource(from:)(v13, a2);
      v24 = type metadata accessor for FeedHeadline;
      v25 = v13;
    }

    else
    {
      if (v15 == 3)
      {
        sub_1D6750B04(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v43);
        if (!v3)
        {
          v16 = v43;
          v17 = v44;
          if (v14)
          {
            if (qword_1EDF168F0 != -1)
            {
              swift_once();
            }

            v18 = sub_1D725FC7C();
            v19 = __swift_project_value_buffer(v18, qword_1EDF168F8);
            (*(*(v18 - 8) + 16))(a2, v19, v18);
            swift_unknownObjectRelease();
          }

          else
          {
            v43 = 0x3A3A776F6C6C6F66;
            v44 = 0xE800000000000000;
            v30 = [v16 identifier];
            v31 = sub_1D726207C();
            v33 = v32;

            MEMORY[0x1DA6F9910](v31, v33);

            sub_1D725FC6C();
            swift_unknownObjectRelease();
          }
        }

        return;
      }

      sub_1D6751840(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v9);
      if (v3)
      {
        return;
      }

      FormatWebEmbedBinding.SourceItemTip.tipSource(from:)(v9, a2);
      v24 = type metadata accessor for FeedWebEmbed;
      v25 = v9;
    }

    sub_1D67527C0(v25, v24);
    return;
  }

  if (v15)
  {
    sub_1D67505CC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v43);
    if (!v3)
    {
      v26 = v43;
      v27 = [objc_msgSend(v43 backingTag)];
      swift_unknownObjectRelease();
      if (v27)
      {
        if (v14)
        {
          if (qword_1EDF168F0 != -1)
          {
            swift_once();
          }

          v28 = sub_1D725FC7C();
          v29 = __swift_project_value_buffer(v28, qword_1EDF168F8);
          (*(*(v28 - 8) + 16))(a2, v29, v28);
        }

        else
        {
          v43 = 0x3A3A776F6C6C6F66;
          v44 = 0xE800000000000000;
          v38 = [v27 identifier];
          v39 = sub_1D726207C();
          v41 = v40;

          MEMORY[0x1DA6F9910](v39, v41);

          sub_1D725FC6C();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1D67505CC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), &v43);
    if (!v3)
    {
      v20 = v43;
      v21 = FCFeedDescriptor.feedTag.getter();
      if (v14)
      {
        if (qword_1EDF168F0 != -1)
        {
          swift_once();
        }

        v22 = sub_1D725FC7C();
        v23 = __swift_project_value_buffer(v22, qword_1EDF168F8);
        (*(*(v22 - 8) + 16))(a2, v23, v22);
      }

      else
      {
        v43 = 0x3A3A776F6C6C6F66;
        v44 = 0xE800000000000000;
        v34 = [v21 identifier];
        v35 = sub_1D726207C();
        v37 = v36;

        MEMORY[0x1DA6F9910](v35, v37);

        sub_1D725FC6C();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D6750380@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x726F705364656546, 0xEF746E6576457374), (v5 & 1) == 0))
  {
    sub_1D6752B3C();
    v7 = swift_allocError();
    v9 = v8;
    v10 = *(a1 + 16);
    if (v10)
    {
      v20[6] = v7;
      v11 = sub_1D5B9A6D8(v10, 0);
      v12 = sub_1D5E2A8BC(v20, v11 + 4, v10, a1);

      result = sub_1D5B87E38();
      if (v12 != v10)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    *v9 = 0x726F705364656546;
    *(v9 + 8) = 0xEF746E6576457374;
    *(v9 + 16) = v11;
    *(v9 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v4, v20);
  sub_1D5B68374(v20, v19);
  sub_1D5B7EFE8();
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18 & 1;
  }

  else
  {
    sub_1D5F5885C(0, 0);
    sub_1D6752B3C();
    swift_allocError();
    v14 = v13;
    *v13 = 0x726F705364656546;
    v13[1] = 0xEF746E6576457374;
    sub_1D5B68374(v20, (v13 + 2));
    *(v14 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

uint64_t sub_1D67505CC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v5 & 1) == 0))
  {
    sub_1D6752B3C();
    swift_allocError();
    v8 = v7;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = sub_1D5B9A6D8(v9, 0);
      v11 = sub_1D5E2A8BC(v15, v10 + 4, v9, a1);

      result = sub_1D5B87E38();
      if (v11 != v9)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v8, "FeedDescriptor");
    *(v8 + 15) = -18;
    *(v8 + 16) = v10;
    *(v8 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v4, v15);
  sub_1D5B68374(v15, v14);
  sub_1D5B7EFE8();
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v15[6];
  }

  else
  {
    sub_1D6752B3C();
    swift_allocError();
    v13 = v12;
    strcpy(v12, "FeedDescriptor");
    v12[15] = -18;
    sub_1D5B68374(v15, (v12 + 16));
    v13[56] = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t sub_1D67507D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D6752BF0(0, qword_1EDF12C58, type metadata accessor for FeedWeather);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-v6];
  if (!*(a1 + 16) || (v8 = sub_1D5B69D90(0x7461655764656546, 0xEB00000000726568), (v9 & 1) == 0))
  {
    sub_1D6752B3C();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(a1 + 16);
    if (v15)
    {
      v21[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC(v21, v16 + 4, v15, a1);

      result = sub_1D5B87E38();
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    *v14 = 0x7461655764656546;
    *(v14 + 8) = 0xEB00000000726568;
    *(v14 + 16) = v16;
    *(v14 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v8, v21);
  sub_1D5B68374(v21, v20);
  sub_1D5B7EFE8();
  v10 = type metadata accessor for FeedWeather(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    return sub_1D6752C44(v7, a2, type metadata accessor for FeedWeather);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1D6752B90(v7, qword_1EDF12C58, type metadata accessor for FeedWeather, sub_1D6752BF0);
    sub_1D6752B3C();
    swift_allocError();
    v19 = v18;
    *v18 = 0x7461655764656546;
    v18[1] = 0xEB00000000726568;
    sub_1D5B68374(v21, (v18 + 2));
    *(v19 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_1D6750B04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (v5 & 1) == 0))
  {
    sub_1D6752B3C();
    v7 = swift_allocError();
    v9 = v8;
    v10 = *(a1 + 16);
    if (v10)
    {
      v19[6] = v7;
      v11 = sub_1D5B9A6D8(v10, 0);
      v12 = sub_1D5E2A8BC(v19, v11 + 4, v10, a1);

      result = sub_1D5B87E38();
      if (v12 != v10)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v9, "FeedGroupTag");
    *(v9 + 13) = 0;
    *(v9 + 14) = -5120;
    *(v9 + 16) = v11;
    *(v9 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v4, v19);
  sub_1D5B68374(v19, v18);
  sub_1D5B7EFE8();
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
  }

  else
  {
    sub_1D5F587AC(0, 0);
    sub_1D6752B3C();
    swift_allocError();
    v14 = v13;
    strcpy(v13, "FeedGroupTag");
    *(v13 + 13) = 0;
    *(v13 + 14) = -5120;
    sub_1D5B68374(v19, v13 + 16);
    *(v14 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

uint64_t sub_1D6750D28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D6752BF0(0, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-v6];
  if (!*(a1 + 16) || (v8 = sub_1D5B69D90(0x6963655264656546, 0xEA00000000006570), (v9 & 1) == 0))
  {
    sub_1D6752B3C();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(a1 + 16);
    if (v15)
    {
      v21[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC(v21, v16 + 4, v15, a1);

      result = sub_1D5B87E38();
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    *v14 = 0x6963655264656546;
    *(v14 + 8) = 0xEA00000000006570;
    *(v14 + 16) = v16;
    *(v14 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v8, v21);
  sub_1D5B68374(v21, v20);
  sub_1D5B7EFE8();
  v10 = type metadata accessor for FeedRecipe();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    return sub_1D6752C44(v7, a2, type metadata accessor for FeedRecipe);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1D6752B90(v7, qword_1EDF34D20, type metadata accessor for FeedRecipe, sub_1D6752BF0);
    sub_1D6752B3C();
    swift_allocError();
    v19 = v18;
    *v18 = 0x6963655264656546;
    v18[1] = 0xEA00000000006570;
    sub_1D5B68374(v21, (v18 + 2));
    *(v19 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_1D6751050@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D6752BF0(0, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = 0x80000001D73C3770;
  if (!*(a1 + 16) || (v9 = sub_1D5B69D90(0xD000000000000013, 0x80000001D73C3770), (v10 & 1) == 0))
  {
    sub_1D6752B3C();
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(a1 + 16);
    if (v16)
    {
      v22 = 0x80000001D73C3770;
      v24[6] = v13;
      v17 = sub_1D5B9A6D8(v16, 0);
      v18 = sub_1D5E2A8BC(v24, v17 + 4, v16, a1);

      result = sub_1D5B87E38();
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }

      v8 = v22;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    *v15 = 0xD000000000000013;
    *(v15 + 8) = v8;
    *(v15 + 16) = v17;
    *(v15 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v9, v24);
  sub_1D5B68374(v24, v23);
  sub_1D5B7EFE8();
  v11 = type metadata accessor for FeedPuzzleStatistic();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    return sub_1D6752C44(v7, a2, type metadata accessor for FeedPuzzleStatistic);
  }

  else
  {
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_1D6752B90(v7, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, sub_1D6752BF0);
    sub_1D6752B3C();
    swift_allocError();
    v20 = v19;
    *v19 = 0xD000000000000013;
    v19[1] = 0x80000001D73C3770;
    sub_1D5B68374(v24, (v19 + 2));
    *(v20 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }
}

uint64_t sub_1D6751370@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x7A7A755064656546, 0xEE0065707954656CLL), (v5 & 1) == 0))
  {
    sub_1D6752B3C();
    v9 = swift_allocError();
    v11 = v10;
    v12 = *(a1 + 16);
    if (v12)
    {
      v24 = v9;
      v13 = sub_1D5B9A6D8(v12, 0);
      v14 = sub_1D5E2A8BC(&v18, v13 + 4, v12, a1);

      result = sub_1D5B87E38();
      if (v14 != v12)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v11, "FeedPuzzleType");
    *(v11 + 15) = -18;
    *(v11 + 16) = v13;
    *(v11 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v4, v23);
  sub_1D5B68374(v23, v22);
  sub_1D5B7EFE8();
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    v7 = v19;
    *a2 = v18;
    a2[1] = v7;
    v8 = v21;
    a2[2] = v20;
    a2[3] = v8;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    memset(v17, 0, sizeof(v17));
    sub_1D6752B90(v17, &unk_1EDF154F0, &type metadata for FeedPuzzleType, sub_1D5B49CBC);
    sub_1D6752B3C();
    swift_allocError();
    v16 = v15;
    strcpy(v15, "FeedPuzzleType");
    v15[15] = -18;
    sub_1D5B68374(v23, (v15 + 16));
    v16[56] = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_1D67515C4@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x7A7A755064656546, 0xEA0000000000656CLL), (v5 & 1) == 0))
  {
    sub_1D6752B3C();
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(a1 + 16);
    if (v16)
    {
      v36 = v13;
      v17 = sub_1D5B9A6D8(v16, 0);
      v18 = sub_1D5E2A8BC(&v21, v17 + 4, v16, a1);

      result = sub_1D5B87E38();
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    *v15 = 0x7A7A755064656546;
    *(v15 + 8) = 0xEA0000000000656CLL;
    *(v15 + 16) = v17;
    *(v15 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v4, v35);
  sub_1D5B68374(v35, v34);
  sub_1D5B7EFE8();
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v7 = v32;
    a2[10] = v31;
    a2[11] = v7;
    a2[12] = v33;
    v8 = v28;
    a2[6] = v27;
    a2[7] = v8;
    v9 = v30;
    a2[8] = v29;
    a2[9] = v9;
    v10 = v24;
    a2[2] = v23;
    a2[3] = v10;
    v11 = v26;
    a2[4] = v25;
    a2[5] = v11;
    v12 = v22;
    *a2 = v21;
    a2[1] = v12;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    sub_1D6752B90(&v21, &qword_1EDF12E30, &type metadata for FeedPuzzle, sub_1D5B49CBC);
    sub_1D6752B3C();
    swift_allocError();
    v20 = v19;
    *v19 = 0x7A7A755064656546;
    v19[1] = 0xEA0000000000656CLL;
    sub_1D5B68374(v35, (v19 + 2));
    *(v20 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  return result;
}

uint64_t sub_1D6751840@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D6752BF0(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-v6];
  if (!*(a1 + 16) || (v8 = sub_1D5B69D90(0x4562655764656546, 0xEC0000006465626DLL), (v9 & 1) == 0))
  {
    sub_1D6752B3C();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(a1 + 16);
    if (v15)
    {
      v21[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC(v21, v16 + 4, v15, a1);

      result = sub_1D5B87E38();
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v14, "FeedWebEmbed");
    *(v14 + 13) = 0;
    *(v14 + 14) = -5120;
    *(v14 + 16) = v16;
    *(v14 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v8, v21);
  sub_1D5B68374(v21, v20);
  sub_1D5B7EFE8();
  v10 = type metadata accessor for FeedWebEmbed();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    return sub_1D6752C44(v7, a2, type metadata accessor for FeedWebEmbed);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1D6752B90(v7, qword_1EDF34968, type metadata accessor for FeedWebEmbed, sub_1D6752BF0);
    sub_1D6752B3C();
    swift_allocError();
    v19 = v18;
    strcpy(v18, "FeedWebEmbed");
    *(v18 + 13) = 0;
    *(v18 + 14) = -5120;
    sub_1D5B68374(v21, v18 + 16);
    *(v19 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_1D6751B6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v5 & 1) == 0))
  {
    sub_1D6752B3C();
    v14 = swift_allocError();
    v16 = v15;
    v17 = *(a1 + 16);
    if (v17)
    {
      v58 = v14;
      v18 = sub_1D5B9A6D8(v17, 0);
      v19 = sub_1D5E2A8BC(&v40, v18 + 4, v17, a1);

      result = sub_1D5B87E38();
      if (v19 != v17)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    *v16 = 0x7779615064656546;
    *(v16 + 8) = 0xEB000000006C6C61;
    *(v16 + 16) = v18;
    *(v16 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v4, v57);
  sub_1D5B68374(v57, v56);
  sub_1D5B7EFE8();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
    result = nullsub_1(&v40);
    v7 = v53;
    *(a2 + 192) = v52;
    *(a2 + 208) = v7;
    *(a2 + 224) = v54;
    *(a2 + 240) = v55;
    v8 = v49;
    *(a2 + 128) = v48;
    *(a2 + 144) = v8;
    v9 = v51;
    *(a2 + 160) = v50;
    *(a2 + 176) = v9;
    v10 = v45;
    *(a2 + 64) = v44;
    *(a2 + 80) = v10;
    v11 = v47;
    *(a2 + 96) = v46;
    *(a2 + 112) = v11;
    v12 = v41;
    *a2 = v40;
    *(a2 + 16) = v12;
    v13 = v43;
    *(a2 + 32) = v42;
    *(a2 + 48) = v13;
  }

  else
  {
    sub_1D5F588A0(&v22);
    v52 = v34;
    v53 = v35;
    v54 = v36;
    v48 = v30;
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v47 = v29;
    v40 = v22;
    v41 = v23;
    v42 = v24;
    v43 = v25;
    v38[12] = v34;
    v38[13] = v35;
    v38[14] = v36;
    v38[8] = v30;
    v38[9] = v31;
    v38[10] = v32;
    v38[11] = v33;
    v38[4] = v26;
    v38[5] = v27;
    v38[6] = v28;
    v38[7] = v29;
    v38[0] = v22;
    v38[1] = v23;
    v55 = v37;
    v39 = v37;
    v38[2] = v24;
    v38[3] = v25;
    sub_1D6752B90(v38, &qword_1EDF34BC0, &type metadata for FeedPaywall, sub_1D5B49CBC);
    sub_1D6752B3C();
    swift_allocError();
    v21 = v20;
    *v20 = 0x7779615064656546;
    v20[1] = 0xEB000000006C6C61;
    sub_1D5B68374(v57, (v20 + 2));
    *(v21 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  return result;
}

uint64_t sub_1D6751EC0@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v5 & 1) == 0))
  {
    sub_1D6752B3C();
    v11 = swift_allocError();
    v13 = v12;
    v14 = *(a1 + 16);
    if (v14)
    {
      v39 = v11;
      v15 = sub_1D5B9A6D8(v14, 0);
      v16 = sub_1D5E2A8BC(&v29, v15 + 4, v14, a1);

      result = sub_1D5B87E38();
      if (v16 != v14)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    *v13 = 0x7573734964656546;
    *(v13 + 8) = 0xE900000000000065;
    *(v13 + 16) = v15;
    *(v13 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v4, v38);
  sub_1D5B68374(v38, v37);
  sub_1D5B7EFE8();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    result = nullsub_1(&v29);
    v7 = v36[0];
    a2[6] = v35;
    a2[7] = v7;
    *(a2 + 121) = *(v36 + 9);
    v8 = v32;
    a2[2] = v31;
    a2[3] = v8;
    v9 = v34;
    a2[4] = v33;
    a2[5] = v9;
    v10 = v30;
    *a2 = v29;
    a2[1] = v10;
  }

  else
  {
    sub_1D5D62850(&v19);
    v35 = v25;
    v36[0] = v26[0];
    *(v36 + 9) = *(v26 + 9);
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v29 = v19;
    v30 = v20;
    v27[6] = v25;
    v28[0] = v26[0];
    *(v28 + 9) = *(v26 + 9);
    v27[2] = v21;
    v27[3] = v22;
    v27[4] = v23;
    v27[5] = v24;
    v27[0] = v19;
    v27[1] = v20;
    sub_1D6752B90(v27, &qword_1EDF34E30, &type metadata for FeedIssue, sub_1D5B49CBC);
    sub_1D6752B3C();
    swift_allocError();
    v18 = v17;
    *v17 = 0x7573734964656546;
    v17[1] = 0xE900000000000065;
    sub_1D5B68374(v38, (v17 + 2));
    *(v18 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return result;
}

uint64_t sub_1D6752174@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D6752BF0(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-v6];
  if (!*(a1 + 16) || (v8 = sub_1D5B69D90(0x6461654864656546, 0xEC000000656E696CLL), (v9 & 1) == 0))
  {
    sub_1D6752B3C();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(a1 + 16);
    if (v15)
    {
      v21[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC(v21, v16 + 4, v15, a1);

      result = sub_1D5B87E38();
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v14, "FeedHeadline");
    *(v14 + 13) = 0;
    *(v14 + 14) = -5120;
    *(v14 + 16) = v16;
    *(v14 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v8, v21);
  sub_1D5B68374(v21, v20);
  sub_1D5B7EFE8();
  v10 = type metadata accessor for FeedHeadline(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    return sub_1D6752C44(v7, a2, type metadata accessor for FeedHeadline);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1D6752B90(v7, qword_1EDF42030, type metadata accessor for FeedHeadline, sub_1D6752BF0);
    sub_1D6752B3C();
    swift_allocError();
    v19 = v18;
    strcpy(v18, "FeedHeadline");
    *(v18 + 13) = 0;
    *(v18 + 14) = -5120;
    sub_1D5B68374(v21, v18 + 16);
    *(v19 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_1D67524A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D6752BF0(0, &qword_1EDF36578, type metadata accessor for FeedSponsorshipBannerAd);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = 0x80000001D73D3690;
  if (!*(a1 + 16) || (v9 = sub_1D5B69D90(0xD000000000000017, 0x80000001D73D3690), (v10 & 1) == 0))
  {
    sub_1D6752B3C();
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(a1 + 16);
    if (v16)
    {
      v22 = 0x80000001D73D3690;
      v24[6] = v13;
      v17 = sub_1D5B9A6D8(v16, 0);
      v18 = sub_1D5E2A8BC(v24, v17 + 4, v16, a1);

      result = sub_1D5B87E38();
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }

      v8 = v22;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    *v15 = 0xD000000000000017;
    *(v15 + 8) = v8;
    *(v15 + 16) = v17;
    *(v15 + 56) = 3;
    return swift_willThrow();
  }

  sub_1D5B68374(*(a1 + 56) + 40 * v9, v24);
  sub_1D5B68374(v24, v23);
  sub_1D5B7EFE8();
  v11 = type metadata accessor for FeedSponsorshipBannerAd();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    return sub_1D6752C44(v7, a2, type metadata accessor for FeedSponsorshipBannerAd);
  }

  else
  {
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_1D6752B90(v7, &qword_1EDF36578, type metadata accessor for FeedSponsorshipBannerAd, sub_1D6752BF0);
    sub_1D6752B3C();
    swift_allocError();
    v20 = v19;
    *v19 = 0xD000000000000017;
    v19[1] = 0x80000001D73D3690;
    sub_1D5B68374(v24, (v19 + 2));
    *(v20 + 56) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }
}

uint64_t sub_1D67527C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s8NewsFeed18FormatGroupBindingV13SourceItemTipO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 1)
  {
    if (v4)
    {
      if ((v3 & 0xE0) != 0x20)
      {
        return 0;
      }
    }

    else if (v3 >= 0x20)
    {
      return 0;
    }

    return ((v3 ^ v2) & 1) == 0;
  }

  if (v4 == 2)
  {
    if ((v3 & 0xE0) != 0x40)
    {
      return 0;
    }

    return ((v3 ^ v2) & 1) == 0;
  }

  if (v4 != 3)
  {
    return (v3 & 0xE0) == 0x80;
  }

  if ((v3 & 0xE0) == 0x60)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return 0;
}

unint64_t sub_1D67528AC(uint64_t a1)
{
  result = sub_1D67528D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67528D4()
{
  result = qword_1EC88AEC8;
  if (!qword_1EC88AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AEC8);
  }

  return result;
}

unint64_t sub_1D6752928(void *a1)
{
  a1[1] = sub_1D66BA2C0();
  a1[2] = sub_1D66F8118();
  result = sub_1D6752960();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6752960()
{
  result = qword_1EC88AED0;
  if (!qword_1EC88AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AED0);
  }

  return result;
}

uint64_t _s13SourceItemTipOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7C)
  {
    goto LABEL_17;
  }

  if (a2 + 132 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 132) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 132;
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

      return (*a1 | (v4 << 8)) - 132;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 132;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x7B)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s13SourceItemTipOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 132 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 132) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7C)
  {
    v4 = 0;
  }

  if (a2 > 0x7B)
  {
    v5 = ((a2 - 124) >> 8) + 1;
    *result = a2 - 124;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D6752B3C()
{
  result = qword_1EDF2E560;
  if (!qword_1EDF2E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E560);
  }

  return result;
}

uint64_t sub_1D6752B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6752BF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6752C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FormatPuzzleEmbedData.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPuzzleEmbedData.deinit()
{

  sub_1D5F2DF58(v0 + 32);

  return v0;
}

uint64_t FormatPuzzleEmbedData.__deallocating_deinit()
{

  sub_1D5F2DF58(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6752DBC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v37 = a4;
  sub_1D5D504A0(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D211DC();
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v20);
  v22 = sub_1D726045C();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7270C10;
  *(v23 + 32) = a2;
  *(v23 + 40) = a3;

  v24 = v36;
  v25 = [v36 identifier];
  v26 = sub_1D726207C();
  v28 = v27;

  *(v23 + 48) = v26;
  *(v23 + 56) = v28;
  v38 = v23;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v29 = sub_1D7261F3C();
  v31 = v30;

  sub_1D5D1FA14(v29, v31, v24, v19, v10, v15);

  sub_1D5BC8154(v10, sub_1D5D504A0);
  sub_1D5C25D20(v19, &v15[v12[15]]);
  v32 = &v15[v12[16]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v15[v12[18]];
  *v33 = sub_1D5C00104;
  v33[1] = 0;
  sub_1D67540E4(v15, v37, type metadata accessor for FeedHeadline);
  return sub_1D5BC8154(v15, sub_1D5D211DC);
}

__n128 sub_1D67530D0@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41[0] = a2;
  sub_1D6754064();
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v17);
  v41[1] = *(v4 + 16);
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  *(v19 + 32) = v41[0];
  *(v19 + 40) = a3;

  v20 = [a1 identifier];
  v21 = sub_1D726207C();
  v23 = v22;

  *(v19 + 48) = v21;
  *(v19 + 56) = v23;
  v45.n128_u64[0] = v19;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v24 = sub_1D7261F3C();
  v26 = v25;

  v45.n128_u64[0] = 0;
  v45.n128_u8[8] = 1;
  sub_1D71CCC34(v24, v26, a1, v16, &v45, v43);

  sub_1D5C25D20(v16, v12 + v9[15]);
  *(v12 + 121) = *(v44 + 9);
  v27 = v44[0];
  v12[6] = v43[6];
  v12[7] = v27;
  v28 = v43[5];
  v12[4] = v43[4];
  v12[5] = v28;
  v29 = v43[3];
  v12[2] = v43[2];
  v12[3] = v29;
  v30 = v43[1];
  *v12 = v43[0];
  v12[1] = v30;
  v31 = (v12 + v9[16]);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v12 + v9[18]);
  *v32 = sub_1D5C00104;
  v32[1] = 0;
  v33 = v12[7];
  v51 = v12[6];
  v52[0] = v33;
  *(v52 + 9) = *(v12 + 121);
  v34 = v12[3];
  v47 = v12[2];
  v48 = v34;
  v35 = v12[5];
  v49 = v12[4];
  v50 = v35;
  v36 = *(v12 + 1);
  v45 = *v12;
  v46 = v36;
  sub_1D5ECF2C4(&v45, &v42);
  sub_1D5BC8154(v12, sub_1D6754064);
  v37 = v52[0];
  *(a4 + 96) = v51;
  *(a4 + 112) = v37;
  *(a4 + 121) = *(v52 + 9);
  v38 = v48;
  *(a4 + 32) = v47;
  *(a4 + 48) = v38;
  v39 = v50;
  *(a4 + 64) = v49;
  *(a4 + 80) = v39;
  result = v46;
  *a4 = v45;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_1D67533CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[0] = a4;
  sub_1D5FC4710();
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = (v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v17);
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  v20 = a1[1];
  *(v19 + 48) = *a1;
  *(v19 + 56) = v20;
  v27[1] = v19;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v21 = sub_1D7261F3C();
  v23 = v22;

  sub_1D6BC7B84(v21, v23, a1, v16, v12);

  sub_1D5C25D20(v16, v12 + v9[15]);
  v24 = (v12 + v9[16]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v12 + v9[18]);
  *v25 = sub_1D5C00104;
  v25[1] = 0;
  sub_1D67540E4(v12, v27[0], type metadata accessor for FeedWebEmbed);
  return sub_1D5BC8154(v12, sub_1D5FC4710);
}

uint64_t sub_1D6753620@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D5FC4C70();
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v18);
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7270C10;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;

  v21 = [a1 identifier];
  v22 = sub_1D726207C();
  v24 = v23;

  *(v20 + 48) = v22;
  *(v20 + 56) = v24;
  v31[1] = v20;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v25 = sub_1D7261F3C();
  v27 = v26;

  sub_1D67A22E4(v25, v27, a1, v17, v13);

  sub_1D5C25D20(v17, &v13[v10[15]]);
  v28 = &v13[v10[16]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v13[v10[18]];
  *v29 = sub_1D5C00104;
  v29[1] = 0;
  sub_1D67540E4(v13, a4, type metadata accessor for FeedRecipe);
  return sub_1D5BC8154(v13, sub_1D5FC4C70);
}

uint64_t sub_1D6753890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a2;
  v46 = a1;
  v49 = a4;
  v48 = type metadata accessor for PuzzleStatisticCategory(0);
  MEMORY[0x1EEE9AC00](v48, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for PuzzleStatistic();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FC4B90();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  v47 = v26;
  FeedContextFactoryType.createFeedContext()(ObjectType, v27);
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7270C10;
  *(v29 + 32) = v45;
  *(v29 + 40) = a3;

  v30 = v46;
  *(v29 + 48) = PuzzleStatistic.identifier.getter();
  *(v29 + 56) = v31;
  v50 = v29;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v32 = sub_1D7261F3C();
  v34 = v33;

  sub_1D67540E4(v30, v17, type metadata accessor for PuzzleStatistic);
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  *(v22 + 24) = xmmword_1D728A8F0;
  *(v22 + 5) = v32;
  *(v22 + 6) = v34;
  v35 = type metadata accessor for FeedPuzzleStatistic();
  sub_1D67540E4(v17, &v22[*(v35 + 32)], type metadata accessor for PuzzleStatistic);
  v36 = *(v14 + 28);
  sub_1D67540E4(&v17[v36], v12, type metadata accessor for PuzzleStatisticCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D5BC8154(v12, type metadata accessor for PuzzleStatisticCategory);
LABEL_3:
    v38 = 0x100000000000;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    swift_getObjectType();
    v39 = FCPuzzleTypeProviding.puzzleTypeTraits.getter();
    sub_1D5BC8154(v12, type metadata accessor for PuzzleStatisticCategory);
    if ((v39 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D5BC8154(v12, type metadata accessor for PuzzleStatisticCategory);
  }

  v38 = 0x80000000000;
LABEL_8:
  sub_1D67540E4(&v17[v36], v8, type metadata accessor for PuzzleStatisticCategory);
  v40 = swift_getEnumCaseMultiPayload();
  sub_1D5BC8154(v8, type metadata accessor for PuzzleStatisticCategory);
  if (v40 == 2)
  {
    v41 = v38 | 0x1000000000000;
  }

  else
  {
    v41 = v38;
  }

  sub_1D5BC8154(v17, type metadata accessor for PuzzleStatistic);
  *v22 = v41;
  sub_1D5C25D20(v47, &v22[v19[13]]);
  v42 = &v22[v19[14]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &v22[v19[16]];
  *v43 = sub_1D5C00104;
  v43[1] = 0;
  sub_1D67540E4(v22, v49, type metadata accessor for FeedPuzzleStatistic);
  return sub_1D5BC8154(v22, sub_1D5FC4B90);
}

uint64_t sub_1D6753D08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v8 = type metadata accessor for FeedCustomItem();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5FC47F0();
  v14 = (v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v36 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v21);
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7270C10;
  *(v23 + 32) = a2;
  *(v23 + 40) = a3;
  v24 = a1[1];
  *(v23 + 48) = *a1;
  *(v23 + 56) = v24;
  v38 = v23;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v25 = sub_1D7261F3C();
  v27 = v26;

  sub_1D67540E4(a1, v12 + *(v9 + 28), type metadata accessor for FormatCustomItem.Resolved);
  v28 = (a1 + *(type metadata accessor for FormatCustomItem.Resolved() + 32));
  v29 = *v28;
  v30 = v28[1];
  v31 = (v12 + *(v9 + 32));
  *v12 = v25;
  v12[1] = v27;
  *v31 = v29;
  v31[1] = v30;
  sub_1D67540E4(v12, v17, type metadata accessor for FeedCustomItem);
  sub_1D5C25D20(v36, &v17[v14[15]]);
  v32 = &v17[v14[16]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = &v17[v14[18]];
  *v33 = sub_1D5C00104;
  v33[1] = 0;

  sub_1D5BC8154(v12, type metadata accessor for FeedCustomItem);
  sub_1D67540E4(v17, v37, type metadata accessor for FeedCustomItem);
  return sub_1D5BC8154(v17, sub_1D5FC47F0);
}

uint64_t sub_1D6754000()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D6754064()
{
  if (!qword_1EC881DB8)
  {
    sub_1D5FC45A4();
    sub_1D5FC45F8();
    v0 = type metadata accessor for FeedModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881DB8);
    }
  }
}

uint64_t sub_1D67540E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SportsRosterPlayer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v75 = v69 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v77 = v69 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v69 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v69 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v69 - v22;
  sub_1D67552E0(0, &qword_1EDF03A50, MEMORY[0x1E69E6F48]);
  v79 = v24;
  v76 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v69 - v26;
  v28 = type metadata accessor for SportsRosterPlayer();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D6754A10();
  v78 = v27;
  v33 = v80;
  sub_1D7264B0C();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v34 = v19;
  v72 = v15;
  v35 = v76;
  v36 = v77;
  v80 = v28;
  v37 = v31;
  LOBYTE(v82) = 0;
  v38 = v78;
  v39 = v79;
  v41 = v37;
  *v37 = sub_1D72642BC();
  v37[1] = v42;
  LOBYTE(v82) = 1;
  v37[2] = sub_1D726422C();
  v37[3] = v43;
  LOBYTE(v82) = 2;
  v70 = 0;
  v37[4] = sub_1D72642BC();
  v37[5] = v44;
  LOBYTE(v82) = 3;
  v45 = sub_1D726422C();
  v71 = 0;
  v37[6] = v45;
  v37[7] = v46;
  v69[1] = sub_1D72585BC();
  LOBYTE(v82) = 4;
  v69[0] = sub_1D5B6AC44(&unk_1EDF45B50);
  v47 = v71;
  sub_1D726427C();
  v71 = v47;
  if (v47)
  {
    (*(v35 + 8))(v38, v39);
    v48 = 0;
    v49 = 0;
LABEL_10:
    v52 = v80;
    v53 = v70;
    __swift_destroy_boxed_opaque_existential_1(v81);

    if (!v53)
    {
    }

    if (v48)
    {
      result = sub_1D5B6F01C(v41 + v52[8], sub_1D5B4D3E0);
      if ((v49 & 1) == 0)
      {
        return result;
      }
    }

    else if (!v49)
    {
      return result;
    }

    v54 = v52[9];
    goto LABEL_18;
  }

  sub_1D5EB8540(v23, v37 + v80[8]);
  LOBYTE(v82) = 5;
  v50 = v71;
  sub_1D726427C();
  v71 = v50;
  if (v50)
  {
    (*(v35 + 8))(v38, v39);
    v49 = 0;
    v48 = 1;
    goto LABEL_10;
  }

  sub_1D5EB8540(v34, v37 + v80[9]);
  LOBYTE(v82) = 6;
  v51 = v71;
  sub_1D726427C();
  v71 = v51;
  if (v51)
  {
    (*(v35 + 8))(v38, v39);
    v48 = 1;
    v49 = 1;
    goto LABEL_10;
  }

  sub_1D5EB8540(v72, v37 + v80[10]);
  LOBYTE(v82) = 7;
  v57 = v71;
  sub_1D726427C();
  v58 = v57;
  if (v57)
  {
    (*(v35 + 8))(v38, v79);
    v59 = 0;
    v60 = 0;
    v71 = v57;
  }

  else
  {
    sub_1D5EB8540(v36, v37 + v80[11]);
    LOBYTE(v82) = 8;
    v61 = v75;
    sub_1D726427C();
    v71 = 0;
    sub_1D5EB8540(v61, v37 + v80[12]);
    LOBYTE(v82) = 9;
    v62 = v71;
    sub_1D726427C();
    v71 = v62;
    if (v62)
    {
      (*(v35 + 8))(v78, v79);
      v60 = 0;
      v59 = 1;
    }

    else
    {
      sub_1D5EB8540(v74, v37 + v80[13]);
      v84 = 10;
      sub_1D6754AB0();
      v63 = v71;
      sub_1D726427C();
      v71 = v63;
      if (!v63)
      {
        (*(v35 + 8))(v78, v79);
        v66 = v82;
        v67 = v83;
        if (v83 == 4)
        {
          v66 = 0;
          v67 = 0;
        }

        v68 = (v37 + v80[14]);
        *v68 = v66;
        v68[1] = v67;
        sub_1D6754B04(v37, v73);
        __swift_destroy_boxed_opaque_existential_1(v81);
        v55 = type metadata accessor for SportsRosterPlayer;
        v56 = v37;
        return sub_1D5B6F01C(v56, v55);
      }

      (*(v35 + 8))(v78, v79);
      v59 = 1;
      v60 = 1;
    }

    v41 = v37;
  }

  __swift_destroy_boxed_opaque_existential_1(v81);

  v64 = v80;
  sub_1D5B6F01C(v41 + v80[8], sub_1D5B4D3E0);
  sub_1D5B6F01C(v41 + v64[9], sub_1D5B4D3E0);
  result = sub_1D5B6F01C(v41 + v64[10], sub_1D5B4D3E0);
  if (v58)
  {
    if (v59)
    {
      goto LABEL_30;
    }
  }

  else
  {
    result = sub_1D5B6F01C(v41 + v80[11], sub_1D5B4D3E0);
    if (v59)
    {
LABEL_30:
      v65 = v80;
      result = sub_1D5B6F01C(v41 + v80[12], sub_1D5B4D3E0);
      if (v60)
      {
        goto LABEL_34;
      }

      return result;
    }
  }

  v65 = v80;
  if (v60)
  {
LABEL_34:
    v54 = v65[13];
LABEL_18:
    v55 = sub_1D5B4D3E0;
    v56 = v41 + v54;
    return sub_1D5B6F01C(v56, v55);
  }

  return result;
}

unint64_t sub_1D6754A10()
{
  result = qword_1EDF0FDB8;
  if (!qword_1EDF0FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FDB8);
  }

  return result;
}

uint64_t type metadata accessor for SportsRosterPlayer()
{
  result = qword_1EDF0FD80;
  if (!qword_1EDF0FD80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D6754AB0()
{
  result = qword_1EDF0B2B8;
  if (!qword_1EDF0B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B2B8);
  }

  return result;
}

uint64_t sub_1D6754B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRosterPlayer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6754B68(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x6E6F6E6143636D75;
    v5 = 0x656D614E6C6C7566;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0x4449676174;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v1 = 0xD00000000000001ELL;
      v2 = 0xD000000000000014;
      if (a1 == 9)
      {
        v2 = 0xD00000000000001CLL;
      }

      v3 = a1 == 8;
    }

    else
    {
      v1 = 0xD000000000000017;
      v2 = 0xD000000000000012;
      if (a1 == 6)
      {
        v2 = 0xD000000000000015;
      }

      v3 = a1 == 5;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6754CE0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D6754B68(*a1);
  v5 = v4;
  if (v3 == sub_1D6754B68(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6754D68()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6754B68(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6754DCC()
{
  sub_1D6754B68(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6754E20()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6754B68(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6754E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D67555C0();
  *a1 = result;
  return result;
}

uint64_t sub_1D6754EB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6754B68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6754EF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D67555C0();
  *a1 = result;
  return result;
}

uint64_t sub_1D6754F20(uint64_t a1)
{
  v2 = sub_1D6754A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6754F5C(uint64_t a1)
{
  v2 = sub_1D6754A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsRosterPlayer.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D67552E0(0, &qword_1EC88AED8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6754A10();
  sub_1D7264B5C();
  LOBYTE(v13) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1D726437C();
    LOBYTE(v13) = 2;
    sub_1D72643FC();
    LOBYTE(v13) = 3;
    sub_1D726437C();
    v12 = type metadata accessor for SportsRosterPlayer();
    LOBYTE(v13) = 4;
    sub_1D72585BC();
    sub_1D5B6AC44(&unk_1EDF45B70);
    sub_1D72643BC();
    LOBYTE(v13) = 5;
    sub_1D72643BC();
    LOBYTE(v13) = 6;
    sub_1D72643BC();
    LOBYTE(v13) = 7;
    sub_1D72643BC();
    LOBYTE(v13) = 8;
    sub_1D72643BC();
    LOBYTE(v13) = 9;
    sub_1D72643BC();
    v13 = *(v3 + *(v12 + 56));
    v14 = 10;
    sub_1D6755344();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_1D67552E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6754A10();
    v7 = a3(a1, &type metadata for SportsRosterPlayer.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6755344()
{
  result = qword_1EC88AEE0;
  if (!qword_1EC88AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AEE0);
  }

  return result;
}

void sub_1D67553F0()
{
  sub_1D5B58D88();
  if (v0 <= 0x3F)
  {
    sub_1D5B4D3E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D67554BC()
{
  result = qword_1EC88AEE8;
  if (!qword_1EC88AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AEE8);
  }

  return result;
}

unint64_t sub_1D6755514()
{
  result = qword_1EDF0FDA8;
  if (!qword_1EDF0FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FDA8);
  }

  return result;
}

unint64_t sub_1D675556C()
{
  result = qword_1EDF0FDB0;
  if (!qword_1EDF0FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FDB0);
  }

  return result;
}

uint64_t sub_1D67555C0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t FormatPuzzleEmbedNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

unint64_t FormatPuzzleEmbedNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatPuzzleEmbedNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatPuzzleEmbedNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatPuzzleEmbedNode.contentFrameIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t sub_1D6755860(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  sub_1D5C82CD8(v2);
  *(v3 + 48) = v2;
  return sub_1D5C92A8C(v4);
}

unint64_t FormatPuzzleEmbedNode.size.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  return sub_1D5C92A8C(v3);
}

uint64_t FormatPuzzleEmbedNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t FormatPuzzleEmbedNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t FormatPuzzleEmbedNode.style.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[7];
  v8[0] = v1[6];
  v8[1] = v3;
  v5 = v1[9];
  v9 = v1[8];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D6755B04(v8, v7);
}

uint64_t sub_1D6755B04(uint64_t a1, uint64_t a2)
{
  sub_1D6755B68();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6755B68()
{
  if (!qword_1EDF0B498)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0B498);
    }
  }
}

uint64_t FormatPuzzleEmbedNode.style.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[7];
  v8[0] = v1[6];
  v8[1] = v3;
  v4 = v1[9];
  v8[2] = v1[8];
  v8[3] = v4;
  v5 = a1[1];
  v1[6] = *a1;
  v1[7] = v5;
  v6 = a1[3];
  v1[8] = a1[2];
  v1[9] = v6;
  return sub_1D6755C1C(v8);
}

uint64_t sub_1D6755C1C(uint64_t a1)
{
  sub_1D6755B68();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6755CC8(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 160);
  sub_1D5EB1500(v2);
  *(v3 + 160) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatPuzzleEmbedNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(v1 + 160) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t sub_1D6755DC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 168) = v2;
}

uint64_t FormatPuzzleEmbedNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

void FormatPuzzleEmbedNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
}

uint64_t FormatPuzzleEmbedNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 192);

  return v1;
}

uint64_t FormatPuzzleEmbedNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
}

uint64_t FormatPuzzleEmbedNode.location.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t FormatPuzzleEmbedNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[33];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatPuzzleEmbedNode.__allocating_init(identifier:contentFrameIdentifier:size:resize:adjustments:content:config:zIndex:style:visibility:selectors:accessibilityRole:name:location:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, _OWORD *a11, uint64_t *a12, uint64_t a13, uint64_t *a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v21 = swift_allocObject();
  v22 = *a5;
  v23 = *a6;
  v24 = *a8;
  v25 = *a12;
  v26 = *(a14 + 8);
  v42 = *(a18 + 32);
  v40 = *a14;
  v41 = *(a18 + 40);
  *(v21 + 112) = 0u;
  *(v21 + 128) = 0u;
  *(v21 + 144) = 0u;
  *(v21 + 96) = 0u;
  *(v21 + 200) = 0;
  *(v21 + 192) = 0;
  swift_beginAccess();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  swift_beginAccess();
  *(v21 + 48) = v22;
  *(v21 + 56) = v23;
  swift_beginAccess();
  *(v21 + 64) = a7;
  *(v21 + 72) = v24;
  *(v21 + 80) = a9;
  swift_beginAccess();
  *(v21 + 88) = a10;
  swift_beginAccess();
  v27 = *(v21 + 112);
  v28 = *(v21 + 128);
  v43[0] = *(v21 + 96);
  v43[1] = v27;
  v29 = *(v21 + 144);
  v43[2] = v28;
  v43[3] = v29;
  v30 = a11[1];
  *(v21 + 96) = *a11;
  v31 = a11[2];
  v32 = a11[3];
  *(v21 + 112) = v30;
  *(v21 + 128) = v31;
  *(v21 + 144) = v32;
  sub_1D6755C1C(v43);
  swift_beginAccess();
  *(v21 + 160) = v25;
  swift_beginAccess();
  *(v21 + 168) = a13;
  *(v21 + 176) = v40;
  *(v21 + 184) = v26;
  swift_beginAccess();
  *(v21 + 192) = a15;
  *(v21 + 208) = a16;
  *(v21 + 216) = a17;
  v33 = *(a18 + 16);
  *(v21 + 224) = *a18;
  *(v21 + 240) = v33;
  *(v21 + 256) = v42;
  *(v21 + 264) = v41;
  return v21;
}

uint64_t FormatPuzzleEmbedNode.init(identifier:contentFrameIdentifier:size:resize:adjustments:content:config:zIndex:style:visibility:selectors:accessibilityRole:name:location:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, _OWORD *a11, uint64_t *a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = *a5;
  v24 = *a6;
  v34 = *a8;
  v36 = *a12;
  v38 = *a14;
  v37 = *(a14 + 8);
  v39 = *(a19 + 40);
  v40 = *(a19 + 32);
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 144) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 200) = 0;
  *(v19 + 192) = 0;
  swift_beginAccess();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  swift_beginAccess();
  *(v19 + 48) = v23;
  *(v19 + 56) = v24;
  swift_beginAccess();
  *(v19 + 64) = a7;
  *(v19 + 72) = v34;
  *(v19 + 80) = a9;
  swift_beginAccess();
  *(v19 + 88) = a10;
  swift_beginAccess();
  v25 = *(v19 + 112);
  v26 = *(v19 + 128);
  v41[0] = *(v19 + 96);
  v41[1] = v25;
  v27 = *(v19 + 144);
  v41[2] = v26;
  v41[3] = v27;
  v28 = a11[1];
  *(v19 + 96) = *a11;
  v29 = a11[2];
  v30 = a11[3];
  *(v19 + 112) = v28;
  *(v19 + 128) = v29;
  *(v19 + 144) = v30;
  sub_1D6755C1C(v41);
  swift_beginAccess();
  *(v19 + 160) = v36;
  swift_beginAccess();
  *(v19 + 168) = a13;
  *(v19 + 176) = v38;
  *(v19 + 184) = v37;
  swift_beginAccess();
  *(v19 + 192) = a15;
  *(v19 + 200) = a16;

  *(v19 + 208) = a17;
  *(v19 + 216) = a18;
  v31 = *(a19 + 16);
  *(v19 + 224) = *a19;
  *(v19 + 240) = v31;
  *(v19 + 256) = v40;
  *(v19 + 264) = v39;
  return v19;
}

void *FormatPuzzleEmbedNode.deinit()
{

  sub_1D5C92A8C(v0[6]);

  sub_1D67564F0(v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18]);
  sub_1D5EB15C4(v0[20]);

  sub_1D5EB2398(v0[28], v0[29], v0[30], v0[31], v0[32]);
  return v0;
}

uint64_t sub_1D67564F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a2)
  {

    sub_1D5ED348C(a5, a6, a7);
  }

  return result;
}

uint64_t FormatPuzzleEmbedNode.__deallocating_deinit()
{
  FormatPuzzleEmbedNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D67565A0(uint64_t a1)
{
  result = sub_1D6756734(&qword_1EC88AEF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6756608(void *a1)
{
  a1[1] = sub_1D6756734(&qword_1EDF0E098);
  a1[2] = sub_1D6756734(&qword_1EDF0E0A0);
  result = sub_1D6756734(&qword_1EC88AEF8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6756694@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66AF154(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D67566F0(uint64_t a1)
{
  result = sub_1D6756734(&qword_1EC88AF00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6756734(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatPuzzleEmbedNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6756774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v18 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v19 = *(a4 + 16);
  v20 = *(a4 + 24);
  v21 = *(v18 + 40);
  if (v21)
  {
    v48[0] = *(v18 + 32);
    v48[1] = v21;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v19, v20);

    v22 = v21;
    v41 = v48[0];
    v19 = *(a4 + 16);
    v20 = *(a4 + 24);
  }

  else
  {

    v41 = v19;
    v22 = v20;
  }

  v23 = *(a4 + 56);
  v44 = v19;
  if (v23 && (v24 = *(v23 + 16), swift_beginAccess(), *(*(v24 + 16) + 16)))
  {
    v39 = v24;
  }

  else
  {
    v39 = 0;
  }

  v40 = swift_allocObject();
  swift_beginAccess();
  v38 = *(a4 + 88);
  swift_beginAccess();
  v25 = *(a4 + 160);

  sub_1D6755B04(a5, v48);
  sub_1D5EB1500(v25);
  sub_1D615B4A8(a3, &v49);
  sub_1D5EB15C4(v25);
  v26 = *(a4 + 40);
  v35 = *(a4 + 32);
  v36 = v49;
  v37 = *(a6 + 72);
  v43 = *(a6 + 80);
  v34 = *(a4 + 176);
  v27 = *(a4 + 184);
  swift_beginAccess();

  LOBYTE(v25) = sub_1D71E8230();
  v28 = *(a4 + 208);
  v29 = *(a4 + 216);
  type metadata accessor for FormatPuzzleEmbedNodeLayoutAttributes();
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = v41;
  *(v30 + 40) = v22;
  *(v30 + 48) = v44;
  *(v30 + 56) = v20;
  *(v30 + 64) = a8;
  *(v30 + 72) = a9;
  *(v30 + 80) = a10;
  *(v30 + 88) = a11;
  v31 = a5[1];
  *(v30 + 96) = *a5;
  *(v30 + 112) = v31;
  v32 = a5[3];
  *(v30 + 128) = a5[2];
  *(v30 + 144) = v32;
  *(v30 + 160) = v39;
  *(v30 + 168) = v38;
  *(v30 + 176) = v36;
  *(v30 + 184) = v35;
  *(v30 + 192) = v26;
  *(v30 + 200) = v34;
  *(v30 + 208) = v27;
  *(v30 + 209) = v25 & 1;
  *(v30 + 216) = v28;
  *(v30 + 224) = v29;

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  result = MEMORY[0x1DA6F9910](v37, v43);
  *(v30 + 232) = v41;
  *(v30 + 240) = v22;
  *(v30 + 248) = MEMORY[0x1E69E7CD0];
  *(v40 + 16) = v30;
  *a7 = v40 | 0x9000000000000004;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24FormatLayoutViewPoolSizeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6756AFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6756B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D6756BBC(unint64_t a1)
{
  while (a1 >= 4)
  {
    v1 = *(a1 + 16);
    v2 = *(a1 + 24);
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    a1 = v2;
    if (v4)
    {
      v5 = sub_1D726207C();
      v7 = v6;

      if (v5 == 0x6C7070612E6D6F63 && v7 == 0xEE007377656E2E65)
      {

        a1 = v1;
      }

      else
      {
        v9 = sub_1D72646CC();

        a1 = v1;
        if ((v9 & 1) == 0)
        {
          a1 = v2;
        }
      }
    }
  }

  return qword_1D72E7200[a1];
}

uint64_t sub_1D6756CDC(unint64_t a1)
{
  while (a1 >= 4)
  {
    v1 = *(a1 + 16);
    v2 = *(a1 + 24);
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    a1 = v2;
    if (v4)
    {
      v5 = sub_1D726207C();
      v7 = v6;

      if (v5 == 0x6C7070612E6D6F63 && v7 == 0xEE007377656E2E65)
      {

        a1 = v1;
      }

      else
      {
        v9 = sub_1D72646CC();

        a1 = v1;
        if ((v9 & 1) == 0)
        {
          a1 = v2;
        }
      }
    }
  }

  return qword_1D72E7220[a1];
}

uint64_t sub_1D6756E08(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result != 2)
    {
      return 0;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 2)
    {
      return 0;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](1, v1);
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(v1 + 40);
    swift_unknownObjectRetain();
  }

  v4 = [v3 asSports];
  result = swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA6FB460](0, v1);
LABEL_11:
    v6 = [v5 asSports];
    swift_unknownObjectRelease();
    if (v6)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D5C384A0();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7270C10;
      v10 = FormatScoreMatchupFormatName.name(tag:)(v6);
      v12 = v11;
      v13 = MEMORY[0x1E69E6158];
      *(v9 + 56) = MEMORY[0x1E69E6158];
      v14 = sub_1D5B7E2C0();
      *(v9 + 64) = v14;
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      v15 = FormatScoreMatchupFormatName.name(tag:)(v4);
      *(v9 + 96) = v13;
      *(v9 + 104) = v14;
      *(v9 + 72) = v15;
      *(v9 + 80) = v16;
      v17 = sub_1D72620BC();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v17;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v1 + 32);
    swift_unknownObjectRetain();
    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t FormatScoreMatchupFormatName.name(tag:)(id a1)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v3 = [a1 sportsFullName];
      if (!v3)
      {
        v3 = [a1 sportsPrimaryName];
        if (!v3)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v3 = [a1 sportsNickname];
      if (!v3)
      {
        v3 = [a1 sportsPrimaryName];
        if (!v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else if (*v1)
  {
    v3 = [a1 sportsPrimaryName];
    if (!v3)
    {
LABEL_14:
      v3 = [a1 name];
    }
  }

  else
  {
    v3 = [a1 sportsNameAbbreviation];
    if (!v3)
    {
      v3 = [a1 sportsPrimaryName];
      if (!v3)
      {
        goto LABEL_14;
      }
    }
  }

  v4 = v3;
  v5 = sub_1D726207C();

  return v5;
}

uint64_t FormatScoreMatchupFormatName.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D67573C4(uint64_t a1)
{
  result = sub_1D67573EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67573EC()
{
  result = qword_1EC88AF08;
  if (!qword_1EC88AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF08);
  }

  return result;
}

unint64_t sub_1D6757480()
{
  result = qword_1EC88AF10;
  if (!qword_1EC88AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF10);
  }

  return result;
}

unint64_t sub_1D67574D8()
{
  result = qword_1EC88AF18;
  if (!qword_1EC88AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF18);
  }

  return result;
}

unint64_t sub_1D675752C(uint64_t a1)
{
  result = sub_1D6757554();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6757554()
{
  result = qword_1EC88AF20;
  if (!qword_1EC88AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF20);
  }

  return result;
}

uint64_t sub_1D67575E8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatScoreMatchupFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FormatScoreMatchupFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Bool __swiftcall ShortcutManager.canAddShortcut(identifier:)(Swift::String identifier)
{
  v2 = v1;
  v3 = sub_1D725832C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v63 - v10;
  v12 = v1[2];
  v13 = sub_1D726203C();
  v14 = [v12 containsShortcut_];

  if (v14)
  {
    if (qword_1EC87DC30 != -1)
    {
      swift_once();
    }

    v15 = sub_1D725C42C();
    __swift_project_value_buffer(v15, qword_1EC9BAD48);
    v16 = sub_1D725C3FC();
    v17 = sub_1D7262EBC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D5B42000, v16, v17, "ShortcutManager unable to add shortcut that is already in the list", v18, 2u);
      MEMORY[0x1DA6FD500](v18, -1, -1);
    }

LABEL_7:
    LOBYTE(v19) = 0;
    return v19;
  }

  v71 = v4;
  v20 = sub_1D6758090(v2);
  v21 = [v12 orderedShortcuts];
  v22 = [v21 count];

  if (v22 < v20)
  {
    LOBYTE(v19) = 1;
    return v19;
  }

  if (qword_1EC87DC30 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725C42C();
  __swift_project_value_buffer(v23, qword_1EC9BAD48);

  v24 = sub_1D725C3FC();
  v25 = sub_1D7262EBC();

  v26 = os_log_type_enabled(v24, v25);
  v69 = v20;
  if (v26)
  {
    v66 = v25;
    v67 = v24;
    v27 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v74 = v64;
    *v27 = 134218242;
    *(v27 + 4) = v20;
    v65 = v27;
    *(v27 + 12) = 2080;
    v68 = v12;
    v63 = [v12 orderedShortcuts];
    sub_1D7262DCC();
    sub_1D67586CC();
    sub_1D72639DC();
    if (v78)
    {
      v28 = MEMORY[0x1E69E7CC0];
      v72 = v2;
      do
      {
        sub_1D5B7C390(&v77, v76);
        sub_1D5B76B10(v76, v75);
        sub_1D6758778();
        if (swift_dynamicCast())
        {
          v29 = v73;
          v30 = [v73 identifier];

          v31 = sub_1D726207C();
          v33 = v32;

          __swift_destroy_boxed_opaque_existential_1(v76);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1D5B858EC(0, *(v28 + 2) + 1, 1, v28);
          }

          v35 = *(v28 + 2);
          v34 = *(v28 + 3);
          if (v35 >= v34 >> 1)
          {
            v28 = sub_1D5B858EC((v34 > 1), v35 + 1, 1, v28);
          }

          *(v28 + 2) = v35 + 1;
          v36 = &v28[16 * v35];
          *(v36 + 4) = v31;
          *(v36 + 5) = v33;
          v2 = v72;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v76);
        }

        sub_1D72639DC();
      }

      while (v78);
    }

    else
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    (*(v71 + 8))(v11, v3);
    v37 = MEMORY[0x1DA6F9D20](v28, MEMORY[0x1E69E6158]);
    v39 = v38;

    v40 = sub_1D5BC5100(v37, v39, &v74);

    v41 = v65;
    *(v65 + 14) = v40;
    v42 = v67;
    _os_log_impl(&dword_1D5B42000, v67, v66, "ShortcutManager failed to add shortcut due to max shortcut count: %ld, with shortcuts: %s", v41, 0x16u);
    v43 = v64;
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1DA6FD500](v43, -1, -1);
    MEMORY[0x1DA6FD500](v41, -1, -1);

    v12 = v68;
  }

  else
  {
  }

  v72 = [v12 orderedShortcuts];
  sub_1D7262DCC();
  sub_1D67586CC();
  sub_1D72639DC();
  if (v78)
  {
    v44 = MEMORY[0x1E69E7CA0];
    v45 = &selRef_accountStore;
    v70 = v3;
    do
    {
      sub_1D5B7C390(&v77, v76);
      sub_1D5B76B10(v76, v75);
      sub_1D6758778();
      if (swift_dynamicCast())
      {
        v46 = v74;
        v47 = v2[11];
        v48 = [v74 v45[31]];
        if (!v48)
        {
          sub_1D726207C();
          v48 = sub_1D726203C();
        }

        v49 = [v47 fastCachedTagForID_];

        v50 = v49;
        if (!v49)
        {
          v51 = v2;
          v52 = v7;
          v53 = v44;
          v54 = v45;
          v55 = [v46 v45[31]];
          if (!v55)
          {
            sub_1D726207C();
            v55 = sub_1D726203C();
          }

          v50 = [v47 slowCachedTagForID_];

          if (!v50)
          {
            __swift_destroy_boxed_opaque_existential_1(v76);

            v45 = v54;
            v44 = v53;
            v7 = v52;
            v2 = v51;
            v3 = v70;
            goto LABEL_29;
          }

          swift_unknownObjectRetain();
          v45 = v54;
          v44 = v53;
          v7 = v52;
          v2 = v51;
          v3 = v70;
        }

        v56 = objc_opt_self();
        swift_unknownObjectRetain();
        LOBYTE(v56) = [v56 isTagAllowedForNewsVersion_];
        swift_unknownObjectRelease_n();

        __swift_destroy_boxed_opaque_existential_1(v76);
        if ((v56 & 1) == 0)
        {

          (*(v71 + 8))(v7, v3);
          v60 = 0;
          v61 = 1;
          goto LABEL_42;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v76);
      }

LABEL_29:
      sub_1D72639DC();
    }

    while (v78);
  }

  (*(v71 + 8))(v7, v3);
  v61 = 0;
  v60 = v69;
LABEL_42:
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  v19 = sub_1D725DA4C();
  if (v19)
  {
    v57 = v19;
    v58 = [v19 rootViewController];

    if (v58)
    {
      v59 = sub_1D7262FCC();

      v78 = &type metadata for AlertShortcutsLimitReached;
      v79 = sub_1D6758724();
      *&v77 = v60;
      BYTE8(v77) = v61;
      sub_1D725F60C();
      swift_allocObject();
      sub_1D725F5CC();
      sub_1D725F5DC();
    }

    goto LABEL_7;
  }

  return v19;
}

uint64_t sub_1D6758090(uint64_t a1)
{
  result = [*(a1 + 80) configuration];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v2 shortcutsMaxCount];
      swift_unknownObjectRelease();
      return v3;
    }

    else
    {
      swift_unknownObjectRelease();
      if (qword_1EC87DC30 != -1)
      {
        swift_once();
      }

      v4 = sub_1D725C42C();
      __swift_project_value_buffer(v4, qword_1EC9BAD48);
      v5 = sub_1D725C3FC();
      v6 = sub_1D7262EBC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1D5B42000, v5, v6, "ShortcutManager unable to get shortcutMaxCount from configuration, using default value: 8", v7, 2u);
        MEMORY[0x1DA6FD500](v7, -1, -1);
      }

      return 8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ShortcutManager.addShortcut(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  if (ShortcutManager.canAddShortcut(identifier:)(v10))
  {
    v11 = *(v1 + 24);
    v12 = sub_1D726203C();
    v13 = [v11 hasSubscriptionForTagID_];

    if ((v13 & 1) == 0)
    {
      v14 = sub_1D726203C();
      [v11 addSubscriptionForTagID:v14 type:0];
    }

    v15 = *(v2 + 16);
    sub_1D725890C();
    v16 = [v15 orderedShortcuts];
    v17 = [v16 count];

    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v19 = objc_allocWithZone(MEMORY[0x1E69B55C8]);
    v20 = sub_1D726203C();
    v21 = sub_1D725881C();
    v22 = [v19 initWithIdentifier:v20 dateAdded:v21 order:v18 shortcutType:0];

    (*(v6 + 8))(v9, v5);
    [v15 addShortcut_];

    v23 = *(v2 + 32);
    if ([v23 shortcutsOnboardingState] != 2)
    {
      [v23 setShortcutsOnboardingState_];
    }
  }
}

Swift::Void __swiftcall ShortcutManager.removeShortcut(identifier:)(Swift::String identifier)
{
  v2 = *(v1 + 16);
  v3 = sub_1D726203C();
  [v2 removeShortcutWithIdentifier_];

  v4 = *(v1 + 32);
  if ([v4 shortcutsOnboardingState] != 2)
  {

    [v4 setShortcutsOnboardingState_];
  }
}

Swift::Bool __swiftcall ShortcutManager.hasShortcut(identifier:)(Swift::String identifier)
{
  v2 = *(v1 + 16);
  v3 = sub_1D726203C();
  LOBYTE(v2) = [v2 containsShortcut_];

  return v2;
}

id *ShortcutManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 5));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ShortcutManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 5));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D67585EC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = sub_1D726203C();
  [v2 removeShortcutWithIdentifier_];

  result = [*(v1 + 32) shortcutsOnboardingState];
  if (result != 2)
  {
    v5 = *(v1 + 32);

    return [v5 setShortcutsOnboardingState_];
  }

  return result;
}

id sub_1D6758680()
{
  v1 = *(*v0 + 16);
  v2 = sub_1D726203C();
  v3 = [v1 containsShortcut_];

  return v3;
}

unint64_t sub_1D67586CC()
{
  result = qword_1EDF18AD0;
  if (!qword_1EDF18AD0)
  {
    sub_1D725832C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF18AD0);
  }

  return result;
}

unint64_t sub_1D6758724()
{
  result = qword_1EC88AF28;
  if (!qword_1EC88AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF28);
  }

  return result;
}

unint64_t sub_1D6758778()
{
  result = qword_1EC88AF30;
  if (!qword_1EC88AF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88AF30);
  }

  return result;
}

char *sub_1D675882C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_selections] = MEMORY[0x1E69E7CC0];
  v44 = v5;
  sub_1D7263ECC();
  type metadata accessor for DebugFormatRulerIndicatorView.Component();
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v6 + 24) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v6 + 32) = 0;
  sub_1D7263E9C();
  sub_1D7263EDC();
  sub_1D7263EEC();
  sub_1D7263EAC();
  v7 = swift_allocObject();
  *(v7 + 16) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v7 + 24) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v7 + 32) = 0;
  sub_1D7263E9C();
  sub_1D7263EDC();
  sub_1D7263EEC();
  sub_1D7263EAC();
  *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_lines] = v44;
  v8 = OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_fill;
  v9 = swift_allocObject();
  *(v9 + 16) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v9 + 24) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v9 + 32) = 0;
  *&v2[v8] = v9;
  v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_direction] = a1 & 1;
  v43.receiver = v2;
  v43.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v43, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_fill;
  v12 = *(*&v10[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_fill] + 16);
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 systemRedColor];
  v17 = [v16 colorWithAlphaComponent_];

  [v15 setBackgroundColor_];
  [v14 addSubview_];
  v18 = *(*&v10[v11] + 24);
  v19 = objc_opt_self();
  v20 = v18;
  v41 = v19;
  v21 = [v19 systemFontOfSize_];
  [v20 setFont_];

  v22 = *(*&v10[v11] + 24);
  v23 = [v13 whiteColor];
  [v22 setTextColor_];

  [*(*&v10[v11] + 24) setTextAlignment_];
  v24 = *(*&v10[v11] + 24);
  v25 = [v13 systemRedColor];
  [v24 setBackgroundColor_];

  result = [v14 addSubview_];
  v27 = *&v14[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_lines];
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_3;
    }

LABEL_11:

    return v14;
  }

  result = sub_1D7263BFC();
  v28 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v28 >= 1)
  {
    v42 = v14;
    v40 = v27 & 0xC000000000000001;

    v29 = 0;
    v30 = v27;
    do
    {
      if (v40)
      {
        v31 = MEMORY[0x1DA6FB460](v29, v27);
      }

      else
      {
        v31 = *(v27 + 8 * v29 + 32);
      }

      ++v29;
      v32 = *(v31 + 16);
      v33 = [v13 systemRedColor];
      [v32 setBackgroundColor_];

      [v42 addSubview_];
      v34 = *(v31 + 24);
      v35 = [v41 systemFontOfSize_];
      [v34 setFont_];

      v36 = *(v31 + 24);
      v37 = [v13 whiteColor];
      [v36 setTextColor_];

      v38 = *(v31 + 24);
      v39 = [v13 systemRedColor];
      [v38 setBackgroundColor_];

      [v42 addSubview_];

      v27 = v30;
    }

    while (v28 != v29);
    v14 = v42;

    return v14;
  }

  __break(1u);
  return result;
}

void sub_1D6758E6C()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_lines];
  if (v2 >> 62)
  {
    v3 = sub_1D7263BFC();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6FB460](v4, v2);
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    ++v4;
    *(v5 + 32) = 1;
    [*(v5 + 16) setHidden_];
    [*(v5 + 24) setHidden_];
  }

  while (v3 != v4);
LABEL_10:
  v44 = OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_selections;
  v6 = *(*&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_selections] + 16);
  v46 = OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_direction;
  v47 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_selections];

  v45 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = (v47 + 48);
    while (v7 < *(v47 + 16))
    {
      v13 = *(v8 - 2);
      v15 = *(v8 - 1);
      v14 = *v8;
      if (v2 >> 62)
      {
        if (v7 >= sub_1D7263BFC())
        {
LABEL_31:

          return;
        }
      }

      else if (v7 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA6FB460](v7, v2);
      }

      else
      {
        if (v7 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(v2 + 8 * v7 + 32);
      }

      *(v16 + 32) = 0;
      [*(v16 + 16) setHidden_];
      [*(v16 + 24) setHidden_];
      v17 = *(v16 + 24);
      *&v48.a = 32;
      v48.b = -1.7573882e159;
      v49 = v13;
      v18 = v17;
      v19 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v19);

      MEMORY[0x1DA6F9910](32, 0xE100000000000000);
      v20 = sub_1D726203C();

      [v18 setText_];

      [*(v16 + 24) sizeToFit];
      LOBYTE(v20) = v1[v46];
      v21 = *(v16 + 16);
      [v1 bounds];
      [v21 setFrame_];

      v22 = *(v16 + 24);
      if (v20)
      {
        v48.b = 0.0;
        v48.c = 0.0;
        v48.a = 1.0;
        v48.d = 1.0;
        v48.tx = 0.0;
        v48.ty = 0.0;
        [v22 setTransform_];
        v9 = *(v16 + 24);
        [v1 bounds];
        Height = CGRectGetHeight(v51);
        [*(v16 + 24) bounds];
        [v9 setFrame_];

        v11 = [*(v16 + 24) layer];
        [v11 setAnchorPoint_];

        v12 = *(v16 + 24);
        CGAffineTransformMakeRotation(&v48, 3.14159265);
        [v12 setTransform_];
      }

      else
      {
        v23 = v22;
        [v23 bounds];
        [v23 setFrame_];
      }

      ++v7;
      v8 += 3;
      if (v45 == v7)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_25:

  if (*(*&v1[v44] + 16) != 2)
  {
    v41 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_fill];
    *(v41 + 32) = 1;
    [*(v41 + 16) setHidden_];
    [*(v41 + 24) setHidden_];
    return;
  }

  sub_1D675970C();

  v24 = sub_1D72626EC();

  v25 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_fill];
  *(v25 + 32) = 0;
  [*(v25 + 16) setHidden_];
  [*(v25 + 24) setHidden_];
  v26 = *(v25 + 24);
  *&v48.a = 32;
  v48.b = -1.7573882e159;
  if (*(v24 + 16) < 2uLL)
  {
    goto LABEL_36;
  }

  v27 = *(v24 + 56);
  v28 = *(v24 + 32);
  v29 = __OFSUB__(v27, v28);
  v30 = v27 - v28;
  if (v29)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v49 = v30;
  v31 = v26;
  v32 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v32);

  MEMORY[0x1DA6F9910](32, 0xE100000000000000);
  v33 = sub_1D726203C();

  [v31 setText_];

  [*(v25 + 24) sizeToFit];
  v34 = *(v24 + 40);
  v35 = *(v24 + 64);
  v36 = *(v25 + 16);

  [v1 bounds];
  [v36 setFrame_];

  v37 = *(v25 + 24);
  if (v1[v46])
  {
    v48.a = 1.0;
    v48.b = 0.0;
    v48.c = 0.0;
    v48.d = 1.0;
    v48.tx = 0.0;
    v48.ty = 0.0;
    [v37 setTransform_];
    v38 = *(v25 + 16);
    v39 = *(v25 + 24);
    [v38 center];
    [v39 setCenter_];

    v40 = *(v25 + 24);
    CGAffineTransformMakeRotation(&v48, -1.57079633);
    [v40 setTransform_];
  }

  else
  {
    v42 = *(v25 + 16);
    v43 = v37;
    [v42 center];
    [v43 setCenter_];
  }
}

double sub_1D6759594@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_1D67595E8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D675970C()
{
  result = qword_1EC88AF58;
  if (!qword_1EC88AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF58);
  }

  return result;
}

void sub_1D6759760()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_selections) = MEMORY[0x1E69E7CC0];
  v7 = v2;
  sub_1D7263ECC();
  type metadata accessor for DebugFormatRulerIndicatorView.Component();
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v3 + 24) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v3 + 32) = 0;
  sub_1D7263E9C();
  sub_1D7263EDC();
  sub_1D7263EEC();
  sub_1D7263EAC();
  v4 = swift_allocObject();
  *(v4 + 16) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v4 + 24) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v4 + 32) = 0;
  sub_1D7263E9C();
  sub_1D7263EDC();
  sub_1D7263EEC();
  sub_1D7263EAC();
  *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_lines) = v7;
  v5 = OBJC_IVAR____TtC8NewsFeed29DebugFormatRulerIndicatorView_fill;
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v6 + 24) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *(v6 + 32) = 0;
  *(v1 + v5) = v6;
  sub_1D726402C();
  __break(1u);
}

uint64_t FeedGroupConfigType.rules<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FeedGroupEmitterRule();
  sub_1D72644CC();
  v6 = *(*(v5 - 8) + 72);
  swift_allocObject();
  v7 = sub_1D726270C();
  v9 = v8;
  (*(a3 + 64))(a1, a3);
  swift_storeEnumTagMultiPayload();
  (*(a3 + 72))(a1, a3);
  swift_storeEnumTagMultiPayload();
  *(v9 + 2 * v6) = (*(a3 + 80))(a1, a3);
  swift_storeEnumTagMultiPayload();
  *(v9 + 3 * v6) = (*(a3 + 88))(a1, a3);
  swift_storeEnumTagMultiPayload();
  *(v9 + 4 * v6) = (*(a3 + 96))(a1, a3);
  swift_storeEnumTagMultiPayload();
  *(v9 + 5 * v6) = (*(a3 + 104))(a1, a3);
  swift_storeEnumTagMultiPayload();
  sub_1D72627FC();
  return v7;
}

uint64_t sub_1D6759BE0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D725BD1C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t static FeedGroupConfigType.== infix(_:_:)()
{
  v0 = sub_1D725AA4C();
  v2 = v1;
  if (v0 == sub_1D725AA4C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t FeedGroupConfig.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedGroupConfig.kindIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FeedGroupConfig.init(type:identifier:kindIdentifier:slots:paidVisibility:minNewsVersion:maxNewsVersion:allowedSegmentSetIds:blockedSegmentSetIds:allowedPlatforms:blockedPlatforms:priority:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18)
{
  v19 = *a8;
  v20 = *a16;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v19;
  v21 = type metadata accessor for FeedGroupConfig();
  sub_1D5C7F144(a10, a9 + v21[15]);
  sub_1D5C7F144(a11, a9 + v21[16]);
  *(a9 + v21[17]) = a12;
  *(a9 + v21[18]) = a13;
  *(a9 + v21[19]) = a14;
  *(a9 + v21[20]) = a15;
  *(a9 + v21[21]) = v20;
  v22 = *(*(a18 - 8) + 32);
  v23 = a9 + v21[22];

  return v22(v23, a17, a18);
}

uint64_t FeedGroupConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = &v55 - v10;
  v11 = sub_1D725895C();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeedGroupConfig.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1D726435C();
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v67 = &v55 - v16;
  v69 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeedGroupConfig();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = (&v55 - v24);
  sub_1D5B68374(a1, v71);
  v26 = v70;
  sub_1D7262ADC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = *(v21 + 88);
  v29 = *(v69 + 32);
  v70 = v25;
  v57 = v22;
  v58 = v28;
  v29(v25 + v28, v20, a2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v67;
  sub_1D7264B0C();
  v56 = v21;
  WitnessTable = a1;
  LOBYTE(v71[0]) = 0;
  v31 = sub_1D72642BC();
  v32 = v70;
  *v70 = v31;
  v32[1] = v33;
  v55 = v33;
  LOBYTE(v71[0]) = 1;
  v34 = sub_1D726422C();
  if (!v35)
  {
    v36 = v62;
    sub_1D725894C();
    v37 = sub_1D725893C();
    v39 = v38;
    (*(v63 + 8))(v36, v64);
    v35 = v39;
    v34 = v37;
  }

  v40 = v70;
  v70[2] = v34;
  v40[3] = v35;
  LOBYTE(v71[0]) = 2;
  v40[4] = sub_1D726422C();
  v40[5] = v41;
  v72 = 3;
  sub_1D675C4E4();
  sub_1D726427C();
  v42 = v71[0];
  if (v71[0] == 1)
  {
    v42 = 0;
  }

  v40[6] = v42;
  v72 = 4;
  sub_1D5CEB648();
  sub_1D726427C();
  v43 = v71[0];
  if (LOBYTE(v71[0]) == 4)
  {
    v43 = 2;
  }

  *(v40 + 56) = v43;
  sub_1D725BD1C();
  LOBYTE(v71[0]) = 6;
  v44 = sub_1D61EF968(&qword_1EDF43A48);
  v45 = v61;
  v64 = v44;
  sub_1D726427C();
  sub_1D5C7F144(v45, v40 + v56[15]);
  LOBYTE(v71[0]) = 5;
  v46 = v60;
  sub_1D726427C();
  sub_1D5C7F144(v46, v70 + v56[16]);
  sub_1D5B59B28();
  v72 = 7;
  sub_1D5C7F02C(&qword_1EDF3C7C8, sub_1D5B59B28);
  sub_1D726427C();
  v47 = v71[0];
  v48 = MEMORY[0x1E69E7CD0];
  if (!v71[0])
  {
    v47 = MEMORY[0x1E69E7CD0];
  }

  *(v70 + v56[17]) = v47;
  v72 = 8;
  sub_1D726427C();
  v49 = v71[0];
  if (!v71[0])
  {
    v49 = v48;
  }

  *(v70 + v56[18]) = v49;
  sub_1D5B5A0D4();
  v72 = 9;
  sub_1D5C505B8(&qword_1EDF3C7E0, sub_1D5C7F0F0);
  sub_1D726427C();
  v50 = v71[0];
  if (!v71[0])
  {
    v50 = v48;
  }

  *(v70 + v56[19]) = v50;
  v72 = 10;
  sub_1D726427C();
  v51 = v71[0];
  if (!v71[0])
  {
    v51 = v48;
  }

  *(v70 + v56[20]) = v51;
  v72 = 11;
  sub_1D675C538();
  sub_1D726427C();
  (*(v65 + 8))(v30, v66);
  v52 = v56;
  v53 = v57;
  v54 = v70;
  *(v70 + v56[21]) = (LOBYTE(v71[0]) == 2) | v71[0] & 1;
  (*(v53 + 16))(v59, v54, v52);
  __swift_destroy_boxed_opaque_existential_1(WitnessTable);
  return (*(v53 + 8))(v54, v52);
}

uint64_t FeedGroupConfig.encode(to:)(void *a1, int *a2)
{
  type metadata accessor for FeedGroupConfig.CodingKeys();
  swift_getWitnessTable();
  v12 = sub_1D726446C();
  v6 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v7);
  v13 = v2;
  v14 = &v11 - v8;
  result = sub_1D7261E6C();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B5C();
    v10 = v13;
    LOBYTE(v15) = 0;
    sub_1D72643FC();
    LOBYTE(v15) = 1;
    sub_1D72643FC();
    v15 = *(v10 + 32);
    v16 = 2;
    sub_1D5B58D88();
    sub_1D5C7F02C(&qword_1EDF054F0, sub_1D5B58D88);
    sub_1D726443C();
    *&v15 = *(v10 + 48);
    v16 = 3;
    sub_1D675C58C();
    sub_1D726443C();
    LOBYTE(v15) = *(v10 + 56);
    v16 = 4;
    sub_1D675C5E0();
    sub_1D726443C();
    LOBYTE(v15) = 5;
    sub_1D5B5C268(0);
    sub_1D675C634();
    sub_1D726443C();
    LOBYTE(v15) = 6;
    sub_1D726443C();
    *&v15 = *(v13 + a2[17]);
    v16 = 7;
    sub_1D5B59B28();
    sub_1D5C7F02C(&qword_1EDF047B0, sub_1D5B59B28);
    sub_1D726443C();
    *&v15 = *(v13 + a2[18]);
    v16 = 8;
    sub_1D726443C();
    *&v15 = *(v13 + a2[19]);
    v16 = 9;
    sub_1D5B5A0D4();
    sub_1D5C505B8(&qword_1EDF04840, sub_1D6118344);
    sub_1D726443C();
    *&v15 = *(v13 + a2[20]);
    v16 = 10;
    sub_1D726443C();
    LOBYTE(v15) = *(v13 + a2[21]);
    v16 = 11;
    sub_1D675C6C8();
    sub_1D726443C();
    return (*(v6 + 8))(v14, v12);
  }

  return result;
}

uint64_t sub_1D675B134()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D675B184(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000010;
    v7 = 0x797469726F697270;
    if (a1 == 10)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000014;
    if (a1 == 6)
    {
      v8 = 0x567377654E6E696DLL;
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
    v1 = 1701869940;
    v2 = 0x73746F6C73;
    v3 = 0x6973695664696170;
    if (a1 != 4)
    {
      v3 = 0x567377654E78616DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x696669746E656469;
    if (a1 != 1)
    {
      v4 = 0xD000000000000013;
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

uint64_t sub_1D675B32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D675B3A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D675B40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D675B47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D675B4EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D675B134();
  *a1 = result;
  return result;
}

unint64_t sub_1D675B528@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D675B184(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D675B56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1D675B180(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_1D675B5A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D675CEE0();
  *a1 = result;
  return result;
}

uint64_t sub_1D675B5D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D675B628(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D675B6B8()
{
  v0 = sub_1D5C036AC();

  return v0;
}

uint64_t static FeedGroupConfig<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v58 = a6;
  v59 = a5;
  v60 = a3;
  v8 = sub_1D725BD1C();
  v61 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v53[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53[-v18];
  sub_1D5D3A7E0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v53[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v53[-v27];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_55;
  }

  v29 = *(a1 + 40);
  v30 = *(a2 + 40);
  if (v29)
  {
    if (!v30 || (*(a1 + 32) != *(a2 + 32) || v29 != v30) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v30)
  {
    goto LABEL_55;
  }

  v31 = *(a1 + 48);
  v32 = *(a2 + 48);
  if (v31)
  {
    if (!v32 || (sub_1D6360974(v31, v32) & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v32)
  {
    goto LABEL_55;
  }

  if ((sub_1D6DE4D64(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_55;
  }

  v56 = type metadata accessor for FeedGroupConfig();
  v59 = *(v56 + 60);
  v33 = *(v21 + 48);
  sub_1D5D3A874(v59 + a1, v28);
  v57 = v33;
  sub_1D5D3A874(v59 + a2, &v33[v28]);
  v34 = v61 + 48;
  v59 = *(v61 + 48);
  if (v59(v28, 1, v8) == 1)
  {
    if (v59(&v57[v28], 1, v8) == 1)
    {
      v55 = v34;
      sub_1D5BFC674(v28, sub_1D5B5C268);
      goto LABEL_27;
    }

LABEL_25:
    sub_1D5BFC674(v28, sub_1D5D3A7E0);
    goto LABEL_55;
  }

  sub_1D5D3A874(v28, v19);
  if (v59(&v57[v28], 1, v8) == 1)
  {
    (*(v61 + 8))(v19, v8);
    goto LABEL_25;
  }

  v55 = v34;
  v35 = v61;
  (*(v61 + 32))(v11, &v57[v28], v8);
  sub_1D61EF968(&qword_1EDF178B8);
  v54 = sub_1D7261FBC();
  v57 = *(v35 + 8);
  (v57)(v11, v8);
  (v57)(v19, v8);
  sub_1D5BFC674(v28, sub_1D5B5C268);
  if ((v54 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_27:
  v36 = v56;
  v37 = *(v56 + 64);
  v38 = *(v21 + 48);
  sub_1D5D3A874(a1 + v37, v24);
  sub_1D5D3A874(a2 + v37, &v24[v38]);
  v39 = v59;
  if (v59(v24, 1, v8) == 1)
  {
    if (v39(&v24[v38], 1, v8) == 1)
    {
      sub_1D5BFC674(v24, sub_1D5B5C268);
      goto LABEL_34;
    }

LABEL_32:
    sub_1D5BFC674(v24, sub_1D5D3A7E0);
    goto LABEL_55;
  }

  sub_1D5D3A874(v24, v15);
  if (v39(&v24[v38], 1, v8) == 1)
  {
    (*(v61 + 8))(v15, v8);
    goto LABEL_32;
  }

  v40 = v61;
  (*(v61 + 32))(v11, &v24[v38], v8);
  sub_1D61EF968(&qword_1EDF178B8);
  v41 = sub_1D7261FBC();
  v42 = *(v40 + 8);
  v42(v11, v8);
  v42(v15, v8);
  v36 = v56;
  sub_1D5BFC674(v24, sub_1D5B5C268);
  if ((v41 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_34:
  if ((sub_1D5C15FFC(*(a1 + v36[17]), *(a2 + v36[17])) & 1) == 0 || (sub_1D5C15FFC(*(a1 + v36[18]), *(a2 + v36[18])) & 1) == 0 || (sub_1D5D3A964(*(a1 + v36[19]), *(a2 + v36[19])) & 1) == 0 || (sub_1D5D3A964(*(a1 + v36[20]), *(a2 + v36[20])) & 1) == 0)
  {
    goto LABEL_55;
  }

  v43 = v36[21];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  if (v44)
  {
    v46 = 0x6C616D726F6ELL;
  }

  else
  {
    v46 = 7827308;
  }

  if (v44)
  {
    v47 = 0xE600000000000000;
  }

  else
  {
    v47 = 0xE300000000000000;
  }

  if (v45)
  {
    v48 = 0x6C616D726F6ELL;
  }

  else
  {
    v48 = 7827308;
  }

  if (v45)
  {
    v49 = 0xE600000000000000;
  }

  else
  {
    v49 = 0xE300000000000000;
  }

  if (v46 != v48 || v47 != v49)
  {
    v50 = sub_1D72646CC();

    if (v50)
    {
      goto LABEL_54;
    }

LABEL_55:
    v51 = 0;
    return v51 & 1;
  }

LABEL_54:
  v51 = sub_1D7261FBC();
  return v51 & 1;
}

uint64_t FeedGroupConfig.replacing(type:identifier:slots:paidVisibility:minNewsVersion:maxNewsVersion:allowedSegmentSetIds:blockedSegmentSetIds:allowedPlatforms:blockedPlatforms:priority:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 *a14, uint64_t a15, uint64_t a16)
{
  v68 = a8;
  v82 = a1;
  v83 = a4;
  v76 = a9;
  v87 = a16;
  v22 = *(a16 + 16);
  v23 = sub_1D726393C();
  v78 = *(v23 - 8);
  v79 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v74 = &v68 - v25;
  v81 = v22;
  v70 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v80 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v86 = &v68 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v68 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v85 = &v68 - v42;
  v43 = *a6;
  v44 = *a14;
  if (a2)
  {
    v75 = a2;
    v45 = v83;
    if (v83)
    {
LABEL_3:
      v73 = v45;
      goto LABEL_6;
    }
  }

  else
  {
    v46 = *(v16 + 8);
    v82 = *v16;
    v75 = v46;

    v45 = v83;
    if (v83)
    {
      goto LABEL_3;
    }
  }

  a3 = *(v16 + 16);
  v73 = *(v16 + 24);

LABEL_6:
  v47 = *(v16 + 40);
  v72 = *(v16 + 32);
  v84 = v47;
  v48 = a5;
  if (a5 == 1)
  {
  }

  v69 = v44;
  v71 = v48;
  v77 = a3;
  if (v43 == 4)
  {
    LOBYTE(v43) = *(v16 + 56);
  }

  v89[0] = v43;
  sub_1D5D3A874(a7, v39);
  v49 = sub_1D725BD1C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  if (v51(v39, 1, v49) == 1)
  {
    sub_1D5D3A874(v16 + v87[15], v85);
    v52 = v51(v39, 1, v49);

    sub_1D5B71354(a5);
    if (v52 != 1)
    {
      sub_1D5BFC674(v39, sub_1D5B5C268);
    }
  }

  else
  {
    v53 = v85;
    (*(v50 + 32))(v85, v39, v49);
    (*(v50 + 56))(v53, 0, 1, v49);

    sub_1D5B71354(a5);
  }

  sub_1D5D3A874(v68, v32);
  if (v51(v32, 1, v49) == 1)
  {
    sub_1D5D3A874(v16 + v87[16], v86);
    v54 = v51(v32, 1, v49);
    v55 = v74;
    v56 = v70;
    if (v54 != 1)
    {
      sub_1D5BFC674(v32, sub_1D5B5C268);
    }
  }

  else
  {
    v57 = v86;
    (*(v50 + 32))(v86, v32, v49);
    (*(v50 + 56))(v57, 0, 1, v49);
    v55 = v74;
    v56 = v70;
  }

  v58 = v69;
  if (a10)
  {
    v83 = a10;
    v59 = a12;
    if (a11)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v83 = *(v16 + v87[17]);

    v59 = a12;
    if (a11)
    {
LABEL_20:
      v74 = a11;
      v60 = a13;
      if (v59)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }
  }

  v74 = *(v16 + v87[18]);

  v60 = a13;
  if (v59)
  {
LABEL_21:
    v70 = v59;
    v61 = a15;
    if (v60)
    {
      goto LABEL_22;
    }

    goto LABEL_33;
  }

LABEL_32:
  v70 = *(v16 + v87[19]);

  v61 = a15;
  if (v60)
  {
LABEL_22:
    v68 = v60;
    if (v58 != 2)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  v68 = *(v16 + v87[20]);

  if (v58 == 2)
  {
LABEL_23:
    LOBYTE(v58) = *(v16 + v87[21]);
  }

LABEL_24:
  v88 = v58 & 1;
  (*(v78 + 16))(v55, v61, v79);
  v62 = *(v56 + 48);
  v63 = v81;
  if (v62(v55, 1, v81) != 1)
  {
    v65 = v80;
    (*(v56 + 32))(v80, v55, v63);
    goto LABEL_28;
  }

  v64 = v16 + v87[22];
  v65 = v80;
  (*(v56 + 16))(v80, v64, v63);
  if (v62(v55, 1, v63) == 1)
  {
LABEL_28:

    return FeedGroupConfig.init(type:identifier:kindIdentifier:slots:paidVisibility:minNewsVersion:maxNewsVersion:allowedSegmentSetIds:blockedSegmentSetIds:allowedPlatforms:blockedPlatforms:priority:data:)(v82, v75, v77, v73, v72, v84, v71, v89, v76, v85, v86, v83, v74, v70, v68, &v88, v65, v63);
  }

  v66 = *(v78 + 8);

  v66(v55, v79);
  v65 = v80;
  v63 = v81;
  return FeedGroupConfig.init(type:identifier:kindIdentifier:slots:paidVisibility:minNewsVersion:maxNewsVersion:allowedSegmentSetIds:blockedSegmentSetIds:allowedPlatforms:blockedPlatforms:priority:data:)(v82, v75, v77, v73, v72, v84, v71, v89, v76, v85, v86, v83, v74, v70, v68, &v88, v65, v63);
}

unint64_t sub_1D675C4E4()
{
  result = qword_1EDF435A8;
  if (!qword_1EDF435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF435A8);
  }

  return result;
}

unint64_t sub_1D675C538()
{
  result = qword_1EDF42908;
  if (!qword_1EDF42908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF42908);
  }

  return result;
}

unint64_t sub_1D675C58C()
{
  result = qword_1EDF156F0;
  if (!qword_1EDF156F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF156F0);
  }

  return result;
}

unint64_t sub_1D675C5E0()
{
  result = qword_1EDF13E00;
  if (!qword_1EDF13E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13E00);
  }

  return result;
}

unint64_t sub_1D675C634()
{
  result = qword_1EDF178A8;
  if (!qword_1EDF178A8)
  {
    sub_1D5B5C268(255);
    sub_1D61EF968(&qword_1EDF178C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF178A8);
  }

  return result;
}

unint64_t sub_1D675C6C8()
{
  result = qword_1EDF13CE0;
  if (!qword_1EDF13CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13CE0);
  }

  return result;
}

uint64_t sub_1D675C7E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D725BD1C() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + v12;
  v19 = v17 + 7;
  v20 = v14 + 9;
  if (a2 > v16)
  {
    v21 = ((v20 + ((((((((v19 + ((v18 + ((v12 + 57) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v10 + 64);
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_16;
    }

    v24 = ((a2 - v16 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (v23)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v24 <= 0xFF)
      {
        if (v24 < 2)
        {
          goto LABEL_36;
        }

LABEL_16:
        v23 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_36;
        }

LABEL_23:
        v25 = (v23 - 1) << v22;
        if (v21 > 3)
        {
          v25 = 0;
        }

        if (v21)
        {
          if (v21 <= 3)
          {
            v26 = ((v20 + ((((((((v19 + ((v18 + ((v12 + 57) & ~v12)) & ~v12)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v14) + *(v10 + 64);
          }

          else
          {
            v26 = 4;
          }

          if (v26 > 2)
          {
            if (v26 == 3)
            {
              v27 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v27 = *a1;
            }
          }

          else if (v26 == 1)
          {
            v27 = *a1;
          }

          else
          {
            v27 = *a1;
          }
        }

        else
        {
          v27 = 0;
        }

        return v16 + (v27 | v25) + 1;
      }

      v23 = *(a1 + v21);
      if (*(a1 + v21))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) == 0)
  {
    v28 = *(a1 + 1);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }

  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v31 = (*(v7 + 48))((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(v10 + 48);

  return v30((v20 + ((((((((v19 + ((v18 + ((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
}

void sub_1D675CAE4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1D725BD1C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  if (v12 <= v14)
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = v12;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v11)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = ((v17 + 9 + ((((((((v20 + 7 + ((v20 + v15 + ((v15 + 57) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  if (a3 <= v19)
  {
    goto LABEL_24;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v19 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v8 = 4;
      if (v19 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v8 = v23;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v19 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v19 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v21] = 0;
    }

    else if (v8)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if ((v18 & 0x80000000) != 0)
    {
      if (v12 == v19)
      {
        if (v11 >= 2)
        {
          v27 = *(v10 + 56);

          v27((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15, (a2 + 1));
        }
      }

      else
      {
        v28 = *(v13 + 56);

        v28((v17 + 9 + ((((((((v20 + 7 + ((v20 + v15 + ((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 9) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2, v14);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

LABEL_25:
  v24 = ~v19 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_56:
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_56;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v8 > 1)
    {
LABEL_60:
      if (v8 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v8 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v8)
  {
    a1[v21] = v25;
  }
}

uint64_t AdFeedGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AdFeedGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

unint64_t sub_1D675CFBC(uint64_t a1)
{
  *(a1 + 16) = sub_1D675CFEC();
  result = sub_1D675D040();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1D675CFEC()
{
  result = qword_1EC88AF60;
  if (!qword_1EC88AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF60);
  }

  return result;
}

unint64_t sub_1D675D040()
{
  result = qword_1EC88AF68;
  if (!qword_1EC88AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF68);
  }

  return result;
}

uint64_t static FormatActivityItemsConfiguration.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1D675D0C8(uint64_t a1)
{
  result = sub_1D675D0F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D675D0F0()
{
  result = qword_1EC88AF70;
  if (!qword_1EC88AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF70);
  }

  return result;
}

unint64_t sub_1D675D144(void *a1)
{
  a1[1] = sub_1D5C88A64();
  a1[2] = sub_1D675D17C();
  result = sub_1D675D1D0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D675D17C()
{
  result = qword_1EDF085B0;
  if (!qword_1EDF085B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF085B0);
  }

  return result;
}

unint64_t sub_1D675D1D0()
{
  result = qword_1EC88AF78;
  if (!qword_1EC88AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88AF78);
  }

  return result;
}

uint64_t _s8NewsFeed26LayeredMediaLayerProcessorC7processySo7UIImageCSg5TeaUI25ProcessedImageRequestType_pF_0(uint64_t a1)
{
  v2 = sub_1D726369C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5B68374(a1, v15);
  sub_1D61BA350();
  type metadata accessor for LayeredMediaLayerProcessorRequest();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v14 + 64), *(v14 + 88));
  result = sub_1D725D2CC();
  if (v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v10 = sub_1D726203C();

    v11 = [v9 initWithContentsOfFile_];

    if (v11)
    {
      (*(v3 + 104))(v6, *MEMORY[0x1E69D88B0], v2);
      v12 = v11;
      v13 = sub_1D726368C();

      (*(v3 + 8))(v6, v2);
      return v13;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D675D4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatItemNodeAction();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D675DD4C(v4, v14);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result == 6)
      {
        *a2 = 3;
        *(a2 + 8) = 3;
        return result;
      }

      sub_1D725A7EC();
      v26 = v39;
      v27 = *(*(v39 + 40) + 16);
      swift_beginAccess();
      if (*(*(v27 + 16) + 16))
      {
        v47 = *(v26 + 56);

        v29 = sub_1D6F622E0(v28);
        sub_1D5B886D0(v29);

        v30 = v47;
      }

      else
      {
        v30 = sub_1D6E46E28();
      }

      v31 = MEMORY[0x1E69E7CD0];
      v48 = MEMORY[0x1E69E7CD0];
      swift_beginAccess();
      v32 = qword_1EC893B38;
      v33 = off_1EC893B40;

      v34 = sub_1D5BE240C(v32, v33, v30);

      if (v34)
      {
        result = sub_1D5FEA1F0();
        v31 = v48;
      }

      *a2 = v31;
      v24 = 2;
      goto LABEL_24;
    }

    if (result == 4)
    {
      *a2 = 1;
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_17;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      *a2 = *v14;
      v24 = 1;
LABEL_24:
      *(a2 + 8) = v24;
      return result;
    }

    *a2 = 0;
LABEL_17:
    v24 = 3;
    goto LABEL_24;
  }

  if (result)
  {
    sub_1D675DDB0(v14, v10);
    v25 = sub_1D5F852A0(a1);
    result = sub_1D675DF30(v10, type metadata accessor for FormatCommandOpenURL);
    if (!v3)
    {
      *a2 = v25;
      *(a2 + 8) = 0;
    }
  }

  else
  {
    v16 = *v14;
    v17 = *(v14 + 1);
    v18 = *(v14 + 2);
    v19 = *(v14 + 3);
    v20 = *(v14 + 5);
    v37 = *(v14 + 4);
    v38 = v16;
    v36 = v20;
    v21 = v14[50];
    LOBYTE(v47) = v21;
    v22 = *(v14 + 24);
    v39 = v16;
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v43 = v37;
    v44 = v20;
    v45 = v22;
    v46 = v21;
    v23 = sub_1D688DD04(a1);
    result = sub_1D675DE14(v38, v17, v18, v19, v37, v36, v22, v21);
    if (!v3)
    {
      *a2 = v23;
      *(a2 + 8) = 0;
    }
  }

  return result;
}

uint64_t _s8NewsFeed20FormatItemNodeActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatItemNodeAction();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v29 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v29 - v18;
  sub_1D675DECC();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 + 56);
  sub_1D675DD4C(a1, v23);
  sub_1D675DD4C(a2, &v23[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_25;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_25;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_25;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D675DD4C(v23, v15);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D675DF30(v15, type metadata accessor for FormatCommandOpenURL);
          goto LABEL_25;
        }

        sub_1D675DDB0(&v23[v25], v7);
        v27 = _s8NewsFeed20FormatCommandOpenURLO2eeoiySbAC_ACtFZ_0(v15, v7);
        sub_1D675DF30(v7, type metadata accessor for FormatCommandOpenURL);
        sub_1D675DF30(v15, type metadata accessor for FormatCommandOpenURL);
      }

      else
      {
        sub_1D675DD4C(v23, v19);
        sub_1D62B5F18(v19, v38);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1D62B5F74(v38);
LABEL_25:
          sub_1D675DF30(v23, sub_1D675DECC);
          v27 = 0;
          return v27 & 1;
        }

        sub_1D62B5F18(&v23[v25], v33);
        sub_1D62B5F18(v38, v34);
        sub_1D62B5F18(v33, v36);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32[0] = *v35;
        *(v32 + 15) = *&v35[15];
        v29[0] = v36[0];
        v29[1] = v36[1];
        v30[0] = *v37;
        *(v30 + 15) = *&v37[15];
        v27 = static FormatCommandBinding.== infix(_:_:)(v31, v29);
        sub_1D62B5F74(v33);
        sub_1D62B5F74(v38);
      }

LABEL_27:
      sub_1D675DF30(v23, type metadata accessor for FormatItemNodeAction);
      return v27 & 1;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1D675DD4C(v23, v11);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_25;
      }

      v27 = *v11 == v23[v25];
      goto LABEL_27;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_25;
    }
  }

  sub_1D675DF30(v23, type metadata accessor for FormatItemNodeAction);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1D675DC38(uint64_t a1)
{
  result = sub_1D675DD08(&qword_1EC88AF80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D675DC7C(void *a1)
{
  a1[1] = sub_1D675DD08(&qword_1EDF2AFC0);
  a1[2] = sub_1D675DD08(&qword_1EDF0EE78);
  result = sub_1D675DD08(&qword_1EC88AF88);
  a1[3] = result;
  return result;
}

uint64_t sub_1D675DD08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatItemNodeAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D675DD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatItemNodeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D675DDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCommandOpenURL();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D675DE14(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8)
{
  if (a8)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFFFFF8 | (a7 >> 11) & 7;
  if (v9 > 5)
  {
    if (v9 == 6)
    {
      return sub_1D675DE9C(result, a2, a3, a4);
    }

    else if (v9 == 7)
    {
      return sub_1D5E1DE98(result, a2, a3, a4, a5, a6, a7 & 0xC7FF);
    }
  }

  else if (v9)
  {
    if (v9 == 3)
    {
      return sub_1D5E1DE10(result, a2, a3);
    }
  }

  else
  {
    return sub_1D675DE60(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D675DE60(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = (a4 >> 3) & 7;
  if (v4 <= 2)
  {
    if (v4 && v4 != 2)
    {
      return result;
    }

    return sub_1D5E1DE10(result, a2, a3);
  }

  if (v4 == 3)
  {
    return sub_1D5E1DE10(result, a2, a3);
  }

  if (v4 == 4)
  {
    return sub_1D675DE9C(result, a2, a3, a4 & 0xC7);
  }

  return result;
}

uint64_t sub_1D675DE9C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) <= 1u)
  {
    return sub_1D5E1DE10(result, a2, a3);
  }

  if (a4 >> 6 == 2)
  {
    return sub_1D5E1DE10(a2, a3, a4 & 0x3F);
  }

  return result;
}

void sub_1D675DECC()
{
  if (!qword_1EC88AF90[0])
  {
    type metadata accessor for FormatItemNodeAction();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EC88AF90);
    }
  }
}

uint64_t sub_1D675DF30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D675DF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = swift_projectBox();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

uint64_t FormatMerge.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v34 = a4;
  v35 = a3;
  v7 = a1;
  v33 = a5;
  v37 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v11 = v10;
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_11:
    v30 = v7;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v15 = v7[3];
  v32 = v7;
  __swift_project_boxed_opaque_existential_1(v7, v15);
  v16 = sub_1D7264AFC();
  LOBYTE(v15) = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v18 = v36;
  v17 = v37;
  if (v15)
  {
    v19 = sub_1D726433C();
    v20 = (v19 + 40);
    v21 = *(v19 + 16) + 1;
    do
    {
      if (!--v21)
      {

        goto LABEL_8;
      }

      v22 = v20 + 2;
      v23 = *v20;
      v20 += 2;
    }

    while (v23 < 4);
    v24 = *(v22 - 3);

    sub_1D5E2D970();
    swift_allocError();
    *v25 = v24;
    *(v25 + 8) = v23;
    *(v25 + 16) = &unk_1F5118780;
    *(v25 + 24) = xmmword_1D72874E0;
    swift_willThrow();
    (*(v18 + 8))(v14, v11);
    v7 = v32;
    goto LABEL_11;
  }

LABEL_8:
  type metadata accessor for FormatMerge.CodingType();
  v38 = 0uLL;
  swift_getWitnessTable();
  sub_1D726431C();
  v26 = v39;
  v38 = xmmword_1D7279980;
  sub_1D726431C();
  (*(v18 + 8))(v14, v11);
  v28 = swift_allocBox();
  (*(v17 + 32))(v29, v9, a2);
  v30 = v32;
  switch(v26)
  {
    case 1:
      v28 |= 4uLL;
      break;
    case 2:
      v28 |= 0x1000000000000000uLL;
      break;
    case 3:
      v31 = 0x1000000000000004;
      goto LABEL_37;
    case 4:
      v28 |= 0x2000000000000000uLL;
      break;
    case 5:
      v31 = 0x2000000000000004;
      goto LABEL_37;
    case 6:
      v28 |= 0x3000000000000000uLL;
      break;
    case 7:
      v31 = 0x3000000000000004;
      goto LABEL_37;
    case 8:
      v28 |= 0x4000000000000000uLL;
      break;
    case 9:
      v31 = 0xB000000000000000;
      goto LABEL_37;
    case 10:
      v31 = 0x4000000000000004;
      goto LABEL_37;
    case 11:
      v31 = 0x5000000000000000;
      goto LABEL_37;
    case 12:
      v31 = 0x5000000000000004;
      goto LABEL_37;
    case 13:
      v28 |= 0x8000000000000000;
      break;
    case 14:
      v31 = 0x8000000000000004;
      goto LABEL_37;
    case 15:
      v31 = 0x9000000000000000;
      goto LABEL_37;
    case 16:
      v31 = 0x9000000000000004;
      goto LABEL_37;
    case 17:
      v31 = 0xA000000000000000;
      goto LABEL_37;
    case 18:
      v31 = 0xA000000000000004;
      goto LABEL_37;
    case 19:
      v28 |= 0x6000000000000000uLL;
      break;
    case 20:
      v31 = 0x6000000000000004;
      goto LABEL_37;
    case 21:
      v28 |= 0x7000000000000000uLL;
      break;
    case 22:
      v31 = 0xB000000000000004;
      goto LABEL_37;
    case 23:
      v31 = 0x7000000000000004;
LABEL_37:
      v28 |= v31;
      break;
    default:
      break;
  }

  *v33 = v28;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t FormatMerge.encode(to:)(void *a1, uint64_t a2)
{
  v147 = a2;
  v149 = *(a2 + 16);
  v150 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v146 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v145 = &v126 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v144 = &v126 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v143 = &v126 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v142 = &v126 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v141 = &v126 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v140 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v139 = &v126 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v138 = &v126 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v137 = &v126 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v136 = &v126 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v135 = &v126 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v134 = &v126 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v133 = &v126 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v132 = &v126 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v131 = &v126 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v130 = &v126 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v129 = &v126 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v128 = &v126 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v127 = &v126 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v126 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v126 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v126 - v72;
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = &v126 - v76;
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v79 = *(v78 - 8);
  v152 = v78;
  v153 = v79;
  MEMORY[0x1EEE9AC00](v78, v80);
  v82 = &v126 - v81;
  v83 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v151 = v82;
  sub_1D7264B5C();
  switch((v83 >> 59) & 0x1E | (v83 >> 2) & 1)
  {
    case 1uLL:
      v107 = swift_projectBox();
      v109 = v149;
      v108 = v150;
      (*(v150 + 16))(v73, v107, v149);
      v155 = 1;
      v154 = 0uLL;
      type metadata accessor for FormatMerge.CodingType();
      swift_getWitnessTable();
      v110 = v152;
      v111 = v151;
      v112 = v148;
      sub_1D726443C();
      if (!v112)
      {
        v154 = xmmword_1D7279980;
        sub_1D726443C();
      }

      (*(v108 + 8))(v73, v109);
      return (*(v153 + 8))(v111, v110);
    case 2uLL:
      v94 = swift_projectBox();
      v96 = v149;
      v95 = v150;
      (*(v150 + 16))(v69, v94, v149);
      v155 = 2;
      v154 = 0uLL;
      type metadata accessor for FormatMerge.CodingType();
      swift_getWitnessTable();
      v97 = v152;
      v98 = v151;
      v99 = v148;
      sub_1D726443C();
      if (!v99)
      {
        v154 = xmmword_1D7279980;
        sub_1D726443C();
      }

      (*(v95 + 8))(v69, v96);
      return (*(v153 + 8))(v98, v97);
    case 3uLL:
      v101 = swift_projectBox();
      v103 = v149;
      v102 = v150;
      (*(v150 + 16))(v65, v101, v149);
      v155 = 3;
      v154 = 0uLL;
      type metadata accessor for FormatMerge.CodingType();
      swift_getWitnessTable();
      v97 = v152;
      v98 = v151;
      v104 = v148;
      sub_1D726443C();
      if (!v104)
      {
        v154 = xmmword_1D7279980;
        sub_1D726443C();
      }

      (*(v102 + 8))(v65, v103);
      return (*(v153 + 8))(v98, v97);
    case 4uLL:
      v91 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v127;
      (*(v150 + 16))(v127, v91, v149);
      v88 = 4;
      goto LABEL_33;
    case 5uLL:
      v115 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v128;
      (*(v150 + 16))(v128, v115, v149);
      v88 = 5;
      goto LABEL_33;
    case 6uLL:
      v118 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v129;
      (*(v150 + 16))(v129, v118, v149);
      v88 = 6;
      goto LABEL_33;
    case 7uLL:
      v106 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v130;
      (*(v150 + 16))(v130, v106, v149);
      v88 = 7;
      goto LABEL_33;
    case 8uLL:
      v121 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v131;
      (*(v150 + 16))(v131, v121, v149);
      v88 = 8;
      goto LABEL_33;
    case 9uLL:
      v93 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v133;
      (*(v150 + 16))(v133, v93, v149);
      v88 = 10;
      goto LABEL_33;
    case 0xAuLL:
      v120 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v134;
      (*(v150 + 16))(v134, v120, v149);
      v88 = 11;
      goto LABEL_33;
    case 0xBuLL:
      v90 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v135;
      (*(v150 + 16))(v135, v90, v149);
      v88 = 12;
      goto LABEL_33;
    case 0xCuLL:
      v92 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v142;
      (*(v150 + 16))(v142, v92, v149);
      v88 = 19;
      goto LABEL_33;
    case 0xDuLL:
      v117 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v143;
      (*(v150 + 16))(v143, v117, v149);
      v88 = 20;
      goto LABEL_33;
    case 0xEuLL:
      v89 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v144;
      (*(v150 + 16))(v144, v89, v149);
      v88 = 21;
      goto LABEL_33;
    case 0xFuLL:
      v100 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v146;
      (*(v150 + 16))(v146, v100, v149);
      v88 = 23;
      goto LABEL_33;
    case 0x10uLL:
      v87 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v136;
      (*(v150 + 16))(v136, v87, v149);
      v88 = 13;
      goto LABEL_33;
    case 0x11uLL:
      v113 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v137;
      (*(v150 + 16))(v137, v113, v149);
      v88 = 14;
      goto LABEL_33;
    case 0x12uLL:
      v119 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v138;
      (*(v150 + 16))(v138, v119, v149);
      v88 = 15;
      goto LABEL_33;
    case 0x13uLL:
      v123 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v139;
      (*(v150 + 16))(v139, v123, v149);
      v88 = 16;
      goto LABEL_33;
    case 0x14uLL:
      v114 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v140;
      (*(v150 + 16))(v140, v114, v149);
      v88 = 17;
      goto LABEL_33;
    case 0x15uLL:
      v116 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v141;
      (*(v150 + 16))(v141, v116, v149);
      v88 = 18;
      goto LABEL_33;
    case 0x16uLL:
      v122 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v132;
      (*(v150 + 16))(v132, v122, v149);
      v88 = 9;
      goto LABEL_33;
    case 0x17uLL:
      v124 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      v77 = v145;
      (*(v150 + 16))(v145, v124, v149);
      v88 = 22;
LABEL_33:
      v155 = v88;
      break;
    default:
      v84 = swift_projectBox();
      v86 = v149;
      v85 = v150;
      (*(v150 + 16))(v77, v84, v149);
      v155 = 0;
      break;
  }

  v154 = 0uLL;
  type metadata accessor for FormatMerge.CodingType();
  swift_getWitnessTable();
  v110 = v152;
  v111 = v151;
  v125 = v148;
  sub_1D726443C();
  if (!v125)
  {
    v154 = xmmword_1D7279980;
    sub_1D726443C();
  }

  (*(v85 + 8))(v77, v86);
  return (*(v153 + 8))(v111, v110);
}

uint64_t sub_1D675F228()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D675F27C(char a1)
{
  result = 0x6E69746C697562;
  switch(a1)
  {
    case 1:
      result = 0x656C626169726176;
      break;
    case 2:
      result = 0x6769666E6F63;
      break;
    case 3:
      result = 0x49746E65746E6F63;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x53746E65746E6F63;
      break;
    case 6:
      result = 0x47746E65746E6F63;
      break;
    case 7:
      result = 0x746E65746E6F63;
      break;
    case 8:
      result = 0x6567616B636170;
      break;
    case 9:
      result = 0x656C797473;
      break;
    case 10:
      v3 = 1835365481;
      goto LABEL_25;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x4E74657070696E73;
      break;
    case 13:
      result = 0x70756F7267;
      break;
    case 14:
      result = 0x697461726F636564;
      break;
    case 15:
      result = 1701080942;
      break;
    case 16:
      result = 1835365481;
      break;
    case 17:
      result = 0x656D656C70707573;
      break;
    case 18:
      result = 0x74657070696E73;
      break;
    case 19:
      v3 = 1953459315;
LABEL_25:
      result = v3 | 0x65646F4E00000000;
      break;
    case 20:
      result = 0x4E736E6F6974706FLL;
      break;
    case 21:
      result = 0x646F4E6B636F6C62;
      break;
    case 22:
      result = 0x6B636F6C62;
      break;
    case 23:
      result = 0x7261696C69787561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D675F4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D675F568(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D675F5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D675F644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D675F6B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D675F228();
  *a1 = result;
  return result;
}

uint64_t sub_1D675F6F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D675F27C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatMerge.order.getter()
{
  v1 = (*v0 >> 59) & 0x1E | (*v0 >> 2) & 1;
  if (v1 > 0x12)
  {
    return 10;
  }

  else
  {
    return qword_1D72E7FF8[v1];
  }
}

uint64_t static FormatMerge<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v237 = *(a3 - 8);
  v238 = a3;
  MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v3, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v236 = &v204 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v235 = &v204 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v234 = &v204 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v233 = &v204 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v232 = &v204 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v231 = &v204 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v230 = &v204 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v229 = &v204 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v228 = &v204 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v227 = &v204 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v226 = &v204 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v225 = &v204 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v224 = &v204 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v223 = &v204 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v222 = &v204 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v221 = &v204 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v220 = &v204 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v219 = &v204 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v218 = &v204 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v217 = &v204 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v216 = &v204 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v215 = &v204 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v214 = &v204 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v213 = &v204 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  v212 = &v204 - v91;
  MEMORY[0x1EEE9AC00](v92, v93);
  v211 = &v204 - v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v210 = &v204 - v97;
  MEMORY[0x1EEE9AC00](v98, v99);
  v209 = &v204 - v100;
  MEMORY[0x1EEE9AC00](v101, v102);
  v208 = &v204 - v103;
  MEMORY[0x1EEE9AC00](v104, v105);
  v207 = &v204 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v206 = &v204 - v109;
  MEMORY[0x1EEE9AC00](v110, v111);
  v205 = &v204 - v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  v116 = &v204 - v115;
  MEMORY[0x1EEE9AC00](v117, v118);
  v120 = &v204 - v119;
  MEMORY[0x1EEE9AC00](v121, v122);
  v124 = &v204 - v123;
  MEMORY[0x1EEE9AC00](v125, v126);
  v128 = &v204 - v127;
  MEMORY[0x1EEE9AC00](v129, v130);
  v132 = &v204 - v131;
  MEMORY[0x1EEE9AC00](v133, v134);
  v136 = &v204 - v135;
  MEMORY[0x1EEE9AC00](v137, v138);
  v140 = &v204 - v139;
  MEMORY[0x1EEE9AC00](v141, v142);
  v153 = &v204 - v152;
  v156 = (*v155 >> 59) & 0x1E | (*v155 >> 2) & 1;
  switch((*v154 >> 59) & 0x1E | (*v154 >> 2) & 1)
  {
    case 1:
      if (v156 != 1)
      {
        goto LABEL_54;
      }

      v236 = v146;
      v185 = swift_projectBox();
      v186 = swift_projectBox();
      v187 = v237;
      v164 = v238;
      v188 = *(v237 + 16);
      v188(v136, v185, v238);
      v188(v132, v186, v164);

      v165 = sub_1D7261FBC();
      v116 = v132;
      v159 = v187;
      v153 = v136;
      goto LABEL_46;
    case 2:
      if (v156 != 2)
      {
        goto LABEL_54;
      }

      v236 = v146;
      v177 = swift_projectBox();
      v178 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v179 = *(v237 + 16);
      v179(v128, v177, v238);
      v179(v124, v178, v164);

      v165 = sub_1D7261FBC();
      v116 = v124;
      v153 = v128;
      goto LABEL_46;
    case 3:
      if (v156 != 3)
      {
        goto LABEL_54;
      }

      v236 = v146;
      v181 = swift_projectBox();
      v182 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v183 = *(v237 + 16);
      v183(v120, v181, v238);
      v183(v116, v182, v164);

      v165 = sub_1D7261FBC();
      v153 = v120;
      goto LABEL_46;
    case 4:
      if (v156 != 4)
      {
        goto LABEL_54;
      }

      v173 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v205;
      v168(v205, v173, v238);
      v174 = &v238;
      goto LABEL_44;
    case 5:
      if (v156 != 5)
      {
        goto LABEL_54;
      }

      v192 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v207;
      v168(v207, v192, v238);
      v174 = &v239;
      goto LABEL_44;
    case 6:
      if (v156 != 6)
      {
        goto LABEL_54;
      }

      v194 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v209;
      v168(v209, v194, v238);
      v174 = &v240;
      goto LABEL_44;
    case 7:
      if (v156 != 7)
      {
        goto LABEL_54;
      }

      v184 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v211;
      v168(v211, v184, v238);
      v174 = &v241;
      goto LABEL_44;
    case 8:
      if (v156 != 8)
      {
        goto LABEL_54;
      }

      v197 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v213;
      v168(v213, v197, v238);
      v174 = &v242;
      goto LABEL_44;
    case 9:
      if (v156 != 9)
      {
        goto LABEL_54;
      }

      v176 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v215;
      v168(v215, v176, v238);
      v174 = &v243;
LABEL_44:
      v170 = *(v174 - 32);
      goto LABEL_45;
    case 0xALL:
      if (v156 != 10)
      {
        goto LABEL_54;
      }

      v196 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v217;
      v168(v217, v196, v238);
      v170 = v218;
      goto LABEL_45;
    case 0xBLL:
      if (v156 != 11)
      {
        goto LABEL_54;
      }

      v172 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v219;
      v168(v219, v172, v238);
      v170 = v220;
      goto LABEL_45;
    case 0xCLL:
      if (v156 != 12)
      {
        goto LABEL_54;
      }

      v175 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v221;
      v168(v221, v175, v238);
      v170 = v222;
      goto LABEL_45;
    case 0xDLL:
      if (v156 != 13)
      {
        goto LABEL_54;
      }

      v193 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v223;
      v168(v223, v193, v238);
      v170 = v224;
      goto LABEL_45;
    case 0xELL:
      if (v156 != 14)
      {
        goto LABEL_54;
      }

      v171 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v225;
      v168(v225, v171, v238);
      v170 = v226;
      goto LABEL_45;
    case 0xFLL:
      if (v156 != 15)
      {
        goto LABEL_54;
      }

      v180 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v227;
      v168(v227, v180, v238);
      v170 = v228;
      goto LABEL_45;
    case 0x10:
      if (v156 != 16)
      {
        goto LABEL_54;
      }

      v166 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v229;
      v168(v229, v166, v238);
      v170 = v230;
      goto LABEL_45;
    case 0x11:
      if (v156 != 17)
      {
        goto LABEL_54;
      }

      v189 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v231;
      v168(v231, v189, v238);
      v170 = v232;
      goto LABEL_45;
    case 0x12:
      if (v156 != 18)
      {
        goto LABEL_54;
      }

      v195 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v233;
      v168(v233, v195, v238);
      v170 = v234;
      goto LABEL_45;
    case 0x13:
      if (v156 != 19)
      {
        goto LABEL_54;
      }

      v199 = swift_projectBox();
      v167 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v168 = *(v237 + 16);
      v169 = v235;
      v168(v235, v199, v238);
      v170 = v236;
LABEL_45:
      v168(v170, v167, v164);

      v165 = sub_1D7261FBC();
      v116 = v170;
      v153 = v169;
      goto LABEL_46;
    case 0x14:
      if (v156 != 20)
      {
        goto LABEL_54;
      }

      v236 = v146;
      v190 = v147;
      v191 = v148;
      goto LABEL_53;
    case 0x15:
      if (v156 != 21)
      {
        goto LABEL_54;
      }

      v236 = v146;
      v190 = v144;
      v191 = v145;
      goto LABEL_53;
    case 0x16:
      if (v156 != 22)
      {
        goto LABEL_54;
      }

      v236 = v146;
      v190 = v151;
      v191 = v143;
      goto LABEL_53;
    case 0x17:
      if (v156 != 23)
      {
        goto LABEL_54;
      }

      v236 = v146;
      v190 = v149;
      v191 = v150;
LABEL_53:
      v200 = swift_projectBox();
      v201 = swift_projectBox();
      v159 = v237;
      v164 = v238;
      v202 = *(v237 + 16);
      v202(v191, v200, v238);
      v202(v190, v201, v164);

      v165 = sub_1D7261FBC();
      v116 = v190;
      v153 = v191;
      goto LABEL_46;
    default:
      if (v156)
      {
LABEL_54:
        v165 = 0;
      }

      else
      {
        v236 = v146;
        v157 = swift_projectBox();
        v158 = swift_projectBox();
        v159 = v237;
        v160 = *(v237 + 16);
        v161 = v157;
        v162 = v238;
        v160(v153, v161, v238);
        v163 = v158;
        v116 = v140;
        v160(v140, v163, v162);
        v164 = v162;

        v165 = sub_1D7261FBC();
LABEL_46:
        v198 = *(v159 + 8);
        v198(v116, v164);
        v198(v153, v164);
      }

      return v165 & 1;
  }
}

uint64_t FormatMerge<>.identifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v2;
  sub_1D675DF90(v7, v6);
  v8 = sub_1D725AA4C();
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_1D6760C18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x69 && *(a1 + 8))
  {
    return (*a1 + 105);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x68)
  {
    v3 = -1;
  }

  return v3 + 1;
}