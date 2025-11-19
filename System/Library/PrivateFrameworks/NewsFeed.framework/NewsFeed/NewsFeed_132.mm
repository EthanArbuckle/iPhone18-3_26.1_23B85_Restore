uint64_t sub_1D6760C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x68)
  {
    *result = a2 - 105;
    if (a3 >= 0x69)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x69)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatContentSizeCategoryValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatContentSizeCategoryValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6760E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614D726574736F72 && a2 == 0xE900000000000070)
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

uint64_t sub_1D6760EF0(uint64_t a1)
{
  v2 = sub_1D67610E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6760F2C(uint64_t a1)
{
  v2 = sub_1D67610E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEventRoster.encode(to:)(void *a1)
{
  sub_1D67613D8(0, &qword_1EC88B018, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67610E0();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D6761134();
  sub_1D676119C();
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D67610E0()
{
  result = qword_1EC88B020;
  if (!qword_1EC88B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B020);
  }

  return result;
}

void sub_1D6761134()
{
  if (!qword_1EDF05788)
  {
    type metadata accessor for SportsRoster();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05788);
    }
  }
}

unint64_t sub_1D676119C()
{
  result = qword_1EDF05780;
  if (!qword_1EDF05780)
  {
    sub_1D6761134();
    sub_1D67614D8(&qword_1EDF11FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05780);
  }

  return result;
}

uint64_t SportsEventRoster.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D67613D8(0, &qword_1EC88B028, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67610E0();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D6761134();
    sub_1D676143C();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D67613D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67610E0();
    v7 = a3(a1, &type metadata for SportsEventRoster.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D676143C()
{
  result = qword_1EDF05770;
  if (!qword_1EDF05770)
  {
    sub_1D6761134();
    sub_1D67614D8(&qword_1EDF11FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05770);
  }

  return result;
}

uint64_t sub_1D67614D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsRoster();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6761570()
{
  result = qword_1EC88B030;
  if (!qword_1EC88B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B030);
  }

  return result;
}

unint64_t sub_1D67615C8()
{
  result = qword_1EC88B038;
  if (!qword_1EC88B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B038);
  }

  return result;
}

unint64_t sub_1D6761620()
{
  result = qword_1EC88B040;
  if (!qword_1EC88B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B040);
  }

  return result;
}

uint64_t sub_1D6761674()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *ShareAttributionViewItem.shareAttributionView.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t ShareAttributionViewItem.reuseIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareAttributionViewItem.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

Swift::Void __swiftcall ShareAttributionViewItem.prepareForReuse()()
{
  MEMORY[0x1DA6F6CF0]();
  v0 = sub_1D725F64C();
}

uint64_t ShareAttributionViewItem.deinit()
{

  return v0;
}

uint64_t ShareAttributionViewItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D67618C8()
{
  MEMORY[0x1DA6F6CF0]();
  v0 = sub_1D725F64C();
}

uint64_t sub_1D6761908()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1D6761958(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
}

void sub_1D6761A04()
{
  sub_1D67627E0(&qword_1EC88B060, type metadata accessor for ShareAttributionViewItem);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t ShareAttributionViewReuseFactory.set(item:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6761C6C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v14 = sub_1D726308C();
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v15 = sub_1D7261BBC();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    sub_1D6761CC4(a1, v9);
    v17 = type metadata accessor for SharedItem();
    (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
    swift_beginAccess();

    sub_1D6D61448(v9, a2, a3);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D6761C6C()
{
  if (!qword_1EDF343E0)
  {
    type metadata accessor for SharedItem();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF343E0);
    }
  }
}

uint64_t sub_1D6761CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall ShareAttributionViewReuseFactory.resetItem(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_1D6761C6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7261B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v11 = sub_1D726308C();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1D7261BBC();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    swift_beginAccess();
    sub_1D607EA44(countAndFlagsBits, object, v6);
    swift_endAccess();
    sub_1D5D2067C(v6, sub_1D6761C6C);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ShareAttributionViewReuseFactory.create(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SharedItem();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  v15 = sub_1D7261B9C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v19 = sub_1D726308C();
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v20 = sub_1D7261BBC();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    swift_beginAccess();
    v21 = v3[7];
    if (*(v21 + 16))
    {
      v22 = sub_1D5B69D90(a1, a2);
      if (v23)
      {
        sub_1D6761CC4(*(v21 + 56) + *(v7 + 72) * v22, v10);
        sub_1D5F2676C(v10, v14);
        swift_endAccess();
        v24 = v3[5];
        v25 = v3[6];
        __swift_project_boxed_opaque_existential_1(v3 + 2, v24);
        v26 = (*(v25 + 48))(v14, v24, v25);
        v28 = v27;
        type metadata accessor for ShareAttributionViewItem();
        v29 = swift_allocObject();
        sub_1D5BFDBB4();
        v29[5] = 0;
        v29[4] = 0;
        v31 = [objc_allocWithZone(v30) init];
        sub_1D5D2067C(v14, type metadata accessor for SharedItem);
        v29[6] = v31;
        v29[2] = v26;
        v29[3] = v28;
        swift_beginAccess();
        v29[4] = a1;
        v29[5] = a2;

        return v29;
      }
    }
  }

  else
  {
    __break(1u);
  }

  swift_endAccess();
  result = sub_1D726402C();
  __break(1u);
  return result;
}

uint64_t ShareAttributionViewReuseFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t ShareAttributionViewReuseFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6762280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ShareAttributionViewReuseFactory.create(for:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t SingletonShareAttributionViewReuseManager.__allocating_init(objectFactory:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = a1;
  sub_1D67625F8();
  swift_allocObject();

  *(v2 + 16) = sub_1D725E43C();
  return v2;
}

uint64_t SingletonShareAttributionViewReuseManager.init(objectFactory:)(uint64_t a1)
{
  *(v1 + 24) = a1;
  sub_1D67625F8();
  swift_allocObject();

  *(v1 + 16) = sub_1D725E43C();
  return v1;
}

uint64_t SingletonShareAttributionViewReuseManager.dequeue(for:item:owner:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D6761C6C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  ShareAttributionViewReuseFactory.set(item:for:)(a3, a1, a2);
  sub_1D725E45C();
  v15 = v17[1];
  sub_1D5B5DA7C();
  *v14 = sub_1D726308C();
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  LOBYTE(a3) = sub_1D7261BBC();
  result = (*(v11 + 8))(v14, v10);
  if (a3)
  {
    swift_beginAccess();
    sub_1D607EA44(a1, a2, v9);
    swift_endAccess();
    sub_1D5D2067C(v9, sub_1D6761C6C);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SingletonShareAttributionViewReuseManager.deinit()
{

  return v0;
}

void sub_1D67625F8()
{
  if (!qword_1EDF17040)
  {
    type metadata accessor for ShareAttributionViewReuseFactory();
    sub_1D67627E0(qword_1EDF1EAE8, type metadata accessor for ShareAttributionViewReuseFactory);
    v0 = sub_1D725E46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17040);
    }
  }
}

uint64_t sub_1D67627E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LayeredMediaLoader.identifier.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t LayeredMediaLoader.load()()
{
  sub_1D6762A08();
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D67628E0(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5[5];
  v7 = a5[6];
  __swift_project_boxed_opaque_existential_1(a5 + 2, v6);
  (*(v7 + 16))(&v13, v6, v7);
  v11[4] = v17;
  v11[5] = v18;
  v12 = v19;
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  v9[4] = v17;
  v9[5] = v18;
  v10 = v19;
  v9[0] = v13;
  v9[1] = v14;
  v9[2] = v15;
  v9[3] = v16;
  a1(v9);
  return sub_1D6762EA0(v11);
}

void sub_1D6762A08()
{
  if (!qword_1EDF17A60)
  {
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17A60);
    }
  }
}

uint64_t LayeredMediaLoader.syncLoad()()
{
  v1 = v0;
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v7 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = v1[5];
    v10 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
    return (*(v10 + 16))(v9, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LayeredMediaLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6762C0C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D6762C64()
{
  sub_1D6762A08();
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D6762CB8()
{
  v1 = sub_1D7261B9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  sub_1D5B5DA7C();
  *v5 = sub_1D726308C();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8018], v1);
  v7 = sub_1D7261BBC();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    v9 = v6[5];
    v10 = v6[6];
    __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
    return (*(v10 + 16))(v9, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

NewsFeed::BundleSessionFamilyStatus_optional __swiftcall BundleSessionFamilyStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D6762F1C(uint64_t a1)
{
  v2 = sub_1D6763184();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D6762F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6763184();
  v5 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D6762FCC(uint64_t a1)
{
  v2 = sub_1D6763184();
  v3 = MEMORY[0x1E69D6F28];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t BundleSessionFamilyStatus.description.getter()
{
  v1 = 0x656C626967696C45;
  v2 = 0x7265626D654DLL;
  if (*v0 != 2)
  {
    v2 = 0x657A696E6167724FLL;
  }

  if (*v0)
  {
    v1 = 0x626967696C656E49;
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

unint64_t sub_1D67630A0()
{
  result = qword_1EC88B068;
  if (!qword_1EC88B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B068);
  }

  return result;
}

uint64_t sub_1D67630F4()
{
  v1 = 0x656C626967696C45;
  v2 = 0x7265626D654DLL;
  if (*v0 != 2)
  {
    v2 = 0x657A696E6167724FLL;
  }

  if (*v0)
  {
    v1 = 0x626967696C656E49;
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

unint64_t sub_1D6763184()
{
  result = qword_1EC88B070;
  if (!qword_1EC88B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B070);
  }

  return result;
}

uint64_t sub_1D67631EC(void *a1)
{
  v3 = v1;
  sub_1D6767F40(0, &qword_1EC88B128, sub_1D6767EEC, &type metadata for A12_V25.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6767EEC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6767FA8(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6763434(uint64_t a1)
{
  v2 = sub_1D6767EEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6763470(uint64_t a1)
{
  v2 = sub_1D6767EEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D67634AC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6767C4C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D676350C()
{
  sub_1D67678AC();

  return sub_1D725A24C();
}

uint64_t sub_1D6763588@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6767F40(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6763644@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v118 = a2;
  v135 = a1;
  v107 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v119 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v122 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v117 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v123 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v120 = &v106 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for GroupLayoutContext();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v23);
  v116 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v106 - v27;
  v112 = &v106 - v27;
  v121 = type metadata accessor for GroupLayoutBindingContext();
  v29 = *(v121 - 1);
  MEMORY[0x1EEE9AC00](v121, v30);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v111 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v135, v32, type metadata accessor for GroupLayoutBindingContext);
  v113 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v118, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v110 = sub_1D725893C();
  v109 = v35;
  (*(v19 + 8))(v22, v18);
  v133 = &type metadata for A12_V25;
  v36 = sub_1D5ECE67C();
  v134 = v36;
  LOBYTE(v131) = v33;
  *(&v131 + 1) = v34;
  v132 = v5;
  type metadata accessor for GroupLayoutKey();
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v124[0] = sub_1D7264C5C();
  v124[1] = v39;
  v129 = 95;
  v130 = 0xE100000000000000;
  v127 = 45;
  v128 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v116;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v109;
  *v44 = v110;
  v44[1] = v45;
  sub_1D5B68374(&v131, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v121);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v112, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v114 + 56);
  v114 = v37;
  v48(v37 + v47, 0, 1, v115);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v133 = &type metadata for A12_V25;
  v134 = v36;
  LOBYTE(v131) = v111;
  v49 = v38;
  *(&v131 + 1) = v38;
  v132 = v5;
  sub_1D5BE3ED8(v118, v43, v113);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v118 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v115 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v121[14];
    v59 = v135;
    v60 = *&v135[v56];
    if (v60[2] && (v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v62 & 1) != 0) && (v60 = *&v60[7][8 * v61], v63 = , v57 = sub_1D5C14D80(v63), , v57))
    {
      v113 = v56;
      v52 = *(v57 + 2);
      if (v52)
      {
        v43 = 0;
        v56 = MEMORY[0x1E69E7CC0];
        v53 = v119;
        v54 = v120;
        while (1)
        {
          v55 = *(v57 + 2);
          if (v43 >= v55)
          {
            break;
          }

          v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
          v64 = *(v53 + 72);
          sub_1D5BE3ED8(&v57[v36 + v64 * v43], v54, type metadata accessor for FeedHeadline);
          if ((*(v54 + 32) & 4) != 0)
          {
            sub_1D5BDA904(v54, v123, type metadata accessor for FeedHeadline);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v124[0] = v56;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
              v53 = v119;
              v56 = v124[0];
            }

            v37 = *(v56 + 16);
            v66 = *(v56 + 24);
            if (v37 >= v66 >> 1)
            {
              sub_1D5C0F91C(v66 > 1, v37 + 1, 1);
              v53 = v119;
              v56 = v124[0];
            }

            *(v56 + 16) = v37 + 1;
            sub_1D5BDA904(v123, v56 + v36 + v37 * v64, type metadata accessor for FeedHeadline);
            v54 = v120;
          }

          else
          {
            sub_1D5BE792C(v54, type metadata accessor for FeedHeadline);
          }

          if (v52 == ++v43)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

      v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v59 = v135;
      if ((*v135 & 1) == 0)
      {

        v70 = sub_1D62F071C(v56);

        v56 = v70;
      }

      v43 = v116;
      v52 = MEMORY[0x1E69E7CC0];
      v71 = *&v59[v121[18]];
      v72 = *&v59[v121[19]];
      if (__OFSUB__(v71, v72))
      {
        __break(1u);
        goto LABEL_72;
      }

      v73 = sub_1D5C0FAD4(v56, v71 - v72);
      v36 = sub_1D5C11E10(&unk_1F5113DC8, v73, v57);

      if (v36)
      {
      }

      else
      {
        v36 = sub_1D5C11E10(&unk_1F5113DC8, v56, v57);

        if (!v36)
        {
          v124[0] = &unk_1F5113DC8;
          v4 = v108;
          sub_1D5E239F4(v124);
          if (v4)
          {
            goto LABEL_76;
          }

          if (!*(v124[0] + 2))
          {
            goto LABEL_74;
          }

          v102 = *(v124[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v103, "FeedHeadline");
          v103[13] = 0;
          *(v103 + 7) = -5120;
          *(v103 + 2) = 0;
          *(v103 + 3) = 0;
          *(v103 + 4) = 4;
          *(v103 + 5) = v102;
          *(v103 + 6) = 0;
          *(v103 + 7) = 0;
          v103[64] = 0;
          swift_willThrow();
          goto LABEL_65;
        }
      }

      strcpy(v124, "FeedHeadline");
      BYTE5(v124[1]) = 0;
      HIWORD(v124[1]) = -5120;
      v125 = 0;
      v126 = 0;

      v75 = sub_1D5C107C4(v74);

      sub_1D5BDACA8(v124, v75);
      swift_setDeallocating();

      v56 = v113;
    }

    else
    {
      if (qword_1F5113DE8)
      {
        v124[0] = &unk_1F5113DC8;
        v4 = v108;
        sub_1D5E239F4(v124);
        if (v4)
        {
          goto LABEL_76;
        }

        v67 = *(v124[0] + 2);
        if (v67)
        {
          v68 = *(v124[0] + 4);

          sub_1D5ED8048();
          swift_allocError();
          strcpy(v69, "FeedHeadline");
          v69[13] = 0;
          *(v69 + 7) = -5120;
          *(v69 + 2) = 0;
          *(v69 + 3) = 0;
          *(v69 + 4) = 4;
          *(v69 + 5) = v68;
          *(v69 + 6) = 0;
          *(v69 + 7) = 0;
          v69[64] = 0;
          swift_willThrow();
LABEL_47:

          sub_1D5BE792C(v43, type metadata accessor for GroupLayoutContext);
          return __swift_destroy_boxed_opaque_existential_1(&v131);
        }

        __break(1u);
LABEL_70:
        v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
        goto LABEL_30;
      }

      v36 = MEMORY[0x1E69E7CC0];
    }

    v76 = swift_initStackObject();
    v123 = v76;
    *(v76 + 16) = v52;
    v60 = (v76 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_70;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v77 = &v57[16 * v54];
    *(v77 + 4) = sub_1D63106DC;
    *(v77 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16))
    {
      break;
    }

    sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
    if ((v78 & 1) == 0)
    {
      break;
    }

    v37 = sub_1D5C14D80(v79);

    if (!v37)
    {
      break;
    }

    v120 = v36;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_50:
      if ((*v59 & 1) == 0)
      {

        v88 = sub_1D62F071C(v57);

        v57 = v88;
      }

      v36 = v120;
      v89 = *&v59[v121[18]];
      v90 = *&v59[v121[19]];
      if (__OFSUB__(v89, v90))
      {
        goto LABEL_73;
      }

      v91 = sub_1D5C0FAD4(v57, v89 - v90);
      v92 = sub_1D5C11E10(&unk_1F5113DF0, v91, v37);

      if (v92)
      {

        strcpy(v124, "FeedHeadline");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v125 = 0;
        v126 = 0;

        v94 = sub_1D5C107C4(v93);

        sub_1D5BDACA8(v124, v94);
        swift_setDeallocating();

        v87 = v92;
LABEL_57:
        v43 = v116;
        goto LABEL_58;
      }

      v95 = sub_1D5C11E10(&unk_1F5113DF0, v57, v37);

      if (v95)
      {
        strcpy(v124, "FeedHeadline");
        BYTE5(v124[1]) = 0;
        HIWORD(v124[1]) = -5120;
        v125 = 0;
        v126 = 0;

        v97 = sub_1D5C107C4(v96);

        sub_1D5BDACA8(v124, v97);
        swift_setDeallocating();

        v87 = v95;
        goto LABEL_57;
      }

      v124[0] = &unk_1F5113DF0;
      v4 = v108;
      sub_1D5E239F4(v124);
      if (v4)
      {
        goto LABEL_76;
      }

      v43 = v116;
      if (!*(v124[0] + 2))
      {
        goto LABEL_75;
      }

      v104 = *(v124[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v105, "FeedHeadline");
      v105[13] = 0;
      *(v105 + 7) = -5120;
      *(v105 + 2) = 0;
      *(v105 + 3) = 0;
      *(v105 + 4) = 0;
      *(v105 + 5) = v104;
      *(v105 + 6) = 0;
      *(v105 + 7) = 0;
      v105[64] = 0;
      swift_willThrow();
LABEL_65:
      swift_setDeallocating();
      goto LABEL_47;
    }

    v36 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v119;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v36 >= v55)
      {
        break;
      }

      v80 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v81 = v117;
      sub_1D5BE3ED8(v37 + v80 + v52 * v36, v117, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v81, v122, type metadata accessor for FeedHeadline);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v57;
      if ((v82 & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v119;
        v57 = v124[0];
      }

      v54 = *(v57 + 2);
      v83 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v83 >> 1)
      {
        sub_1D5C0F91C(v83 > 1, v54 + 1, 1);
        v53 = v119;
        v57 = v124[0];
      }

      ++v36;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v122, &v57[v80 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v135;
      if (v43 == v36)
      {
        goto LABEL_50;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  if (!qword_1F5113E10 || !qword_1F5113E18)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_58:
    v124[0] = v36;
    sub_1D5C122E4(v87);
    v98 = v124[0];
    v99 = type metadata accessor for A12_V25.Bound();
    v100 = v107;
    v107[3] = v99;
    v100[4] = sub_1D6767FA8(&qword_1EC88B088, type metadata accessor for A12_V25.Bound);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
    *boxed_opaque_existential_1 = v114;
    sub_1D5B63F14(&v131, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v99 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v99 + 28)) = v98;
    return result;
  }

  v124[0] = &unk_1F5113DF0;
  v4 = v108;
  sub_1D5E239F4(v124);
  if (!v4)
  {

    if (*(v124[0] + 2))
    {
      v84 = *(v124[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v85, "FeedHeadline");
      v85[13] = 0;
      *(v85 + 7) = -5120;
      *(v85 + 2) = 0;
      *(v85 + 3) = 0;
      *(v85 + 4) = 0;
      *(v85 + 5) = v84;
      *(v85 + 6) = 0;
      *(v85 + 7) = 0;
      v85[64] = 0;
      swift_willThrow();
      goto LABEL_47;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

LABEL_76:

  __break(1u);
  return result;
}

uint64_t sub_1D6764880@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  *&v46 = sub_1D725A36C();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V25.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(v10 + 40);
  v12 = v9;
  v47 = v9;
  v13 = *(v9 + v11);
  v14 = *(v13 + 16);
  v15 = *(v12 + *(v10 + 32));
  sub_1D5B68374(v14 + 16, v59);
  sub_1D5B68374(v14 + 56, v58);
  v16 = v15 * *(v14 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v17 = swift_initStackObject();
  sub_1D5B63F14(v59, v17 + 16);
  sub_1D5B63F14(v58, v17 + 56);
  *(v17 + 96) = v16;
  LOBYTE(v57[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v57, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v17 + 16);
  __swift_destroy_boxed_opaque_existential_1(v17 + 56);
  v61 = inited;
  v18 = *(v13 + 16);
  sub_1D5B68374(v18 + 16, v58);
  sub_1D5B68374(v18 + 56, v57);
  v19 = v15 * *(v18 + 96);
  v20 = swift_initStackObject();
  sub_1D5B63F14(v58, v20 + 16);
  sub_1D5B63F14(v57, v20 + 56);
  *(v20 + 96) = v19;
  v56[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v56, v59);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v20 + 16);
  __swift_destroy_boxed_opaque_existential_1(v20 + 56);
  sub_1D5B49474(0, &qword_1EDF27C08);
  v21 = sub_1D726276C();
  v21[2] = 2;
  sub_1D5B68374(v59, (v21 + 4));
  sub_1D5B63F14(v59, (v21 + 9));
  sub_1D698609C(v21);
  v22 = *(v13 + 16);
  sub_1D5B68374(v22 + 16, v58);
  sub_1D5B68374(v22 + 56, v57);
  v23 = v15 * *(v22 + 96);
  v24 = swift_initStackObject();
  sub_1D5B63F14(v58, v24 + 16);
  sub_1D5B63F14(v57, v24 + 56);
  *(v24 + 96) = v23;
  v56[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v56, v59);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v24 + 16);
  __swift_destroy_boxed_opaque_existential_1(v24 + 56);
  v25 = *(v2 + *(v8 + 28));
  v26 = sub_1D6F50B74(v59, *(v25 + 16) - 3);
  sub_1D698609C(v26);
  v27 = v61;
  v48 = v2;
  v55[2] = v2;

  v28 = sub_1D6310828(v25, v27, sub_1D6767838, v55);

  v29 = *(v28 + 16);
  if (v29 >= 3)
  {
    v30 = 3;
  }

  else
  {
    v30 = *(v28 + 16);
  }

  v31 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v32 = v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v33 = (2 * v29) | 1;
  v34 = *MEMORY[0x1E69D7130];
  v35 = sub_1D7259D1C();
  (*(*(v35 - 8) + 104))(v6, v34, v35);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v46);
  v50 = v28;
  v51 = v28;
  v52 = v32;
  v53 = v30;
  v54 = v33;
  sub_1D676797C(0, &qword_1EC88B0A8, MEMORY[0x1E69D73B8]);
  swift_allocObject();

  v47 = sub_1D725A4CC();
  sub_1D725A4DC();

  v36 = v60;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D5BD48FC();
  v37 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v45 = v59[1];
  v46 = v59[0];
  *&v59[0] = v28;
  *&v58[0] = v36;
  MEMORY[0x1EEE9AC00](v37, v38);

  v39 = sub_1D725C00C();

  v40 = v49;
  *v49 = 0;
  v41 = v46;
  *(v40 + 24) = v45;
  *(v40 + 8) = v41;
  *&v59[0] = v39;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v42 = sub_1D72623BC();

  v44 = MEMORY[0x1E69E7CC0];
  *(v40 + 5) = v42;
  *(v40 + 6) = v44;
  return result;
}

uint64_t sub_1D6764F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6764FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D6767F40(0, &qword_1EC88B0C0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v21[-v16];
  v27 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 12;
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7490], v13);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D676797C(0, &qword_1EC88B0C8, MEMORY[0x1E69D7150]);
  sub_1D6767938(&qword_1EC88B0D0, &qword_1EC88B0C8, v19);
  sub_1D7259A2C();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1D676520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a6;
  v63 = a5;
  v62 = a4;
  v61 = a3;
  v74 = a2;
  v60 = sub_1D6767858;
  sub_1D6767F40(0, &qword_1EC88B0C0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D74B0]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v49 - v11);
  v81 = a1;
  v13 = sub_1D725994C();
  v69 = v13;
  v14 = swift_allocBox();
  v72 = *MEMORY[0x1E69D6F50];
  v15 = *(v13 - 8);
  v71 = *(v15 + 104);
  v73 = v15 + 104;
  v71(v16);
  *v12 = v14;
  v70 = *MEMORY[0x1E69D73C0];
  v68 = *(v9 + 104);
  v68(v12);
  v67 = v9 + 104;
  v17 = MEMORY[0x1E69D6F38];
  sub_1D676797C(0, &qword_1EC88B0D8, MEMORY[0x1E69D6F38]);
  v65 = v18;
  v19 = sub_1D6767938(&qword_1EC88B0E0, &qword_1EC88B0D8, v17);
  sub_1D7259A9C();
  v20 = *(v9 + 8);
  v66 = v9 + 8;
  v20(v12, v8);
  v21 = v20;
  v81 = a1;
  sub_1D60DF7C0();
  v23 = v22;
  v24 = swift_allocBox();
  v26 = v25;
  v27 = *(v23 + 48);
  *v25 = 7;
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v12 = v24;
  v30 = v68;
  (v68)(v12, *MEMORY[0x1E69D73E0], v8);
  v80 = v74;
  v31 = v19;
  sub_1D72599EC();
  v51 = v21;
  v21(v12, v8);
  v81 = a1;
  v32 = v69;
  v33 = swift_allocBox();
  (v71)(v34, v72, v32);
  *v12 = v33;
  (v30)(v12, v70, v8);
  v49[1] = v31;
  sub_1D7259A9C();
  v21(v12, v8);
  v81 = a1;
  v59 = *MEMORY[0x1E69D74A8];
  v30(v12);
  sub_1D6767A08();
  v58 = v35;
  sub_1D6767F40(0, &qword_1EC88B0F0, v60, &type metadata for A12_V25.Layout, MEMORY[0x1E69D70D8]);
  v54 = v36;
  v37 = *(v36 - 8);
  v60 = *(v37 + 72);
  v38 = v37;
  v57 = *(v37 + 80);
  v39 = (v57 + 32) & ~v57;
  v50 = v39;
  v40 = swift_allocObject();
  v56 = xmmword_1D7273AE0;
  *(v40 + 16) = xmmword_1D7273AE0;
  v53 = *MEMORY[0x1E69D7098];
  v52 = *(v38 + 104);
  v55 = v38 + 104;
  v52(v40 + v39);
  v79 = v74;
  sub_1D72599EC();

  v41 = v51;
  v51(v12, v8);
  v81 = a1;
  v42 = v69;
  v43 = swift_allocBox();
  (v71)(v44, v72, v42);
  *v12 = v43;
  v45 = v68;
  (v68)(v12, v70, v8);
  sub_1D7259A9C();
  v41(v12, v8);
  v81 = a1;
  (v45)(v12, v59, v8);
  v46 = v50;
  v47 = swift_allocObject();
  *(v47 + 16) = v56;
  (v52)(v47 + v46, v53, v54);
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v78 = v64;
  sub_1D72599EC();

  return (v41)(v12, v8);
}

uint64_t sub_1D67659A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeadlineViewLayout.Context(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6767F40(0, &qword_1EC88B0C0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v27 - v17;
  v27[1] = a1;
  swift_getKeyPath();
  result = (*(v15 + 104))(v18, *MEMORY[0x1E69D7460], v14);
  if (*(a2 + 16))
  {
    sub_1D5BE3ED8(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v12, type metadata accessor for HeadlineViewLayout.Context);
    v27[0] = v14;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v23 + 56))(&v7[v20], 0, 1, v22);
    v24 = *MEMORY[0x1E69DDC70];
    *v7 = 1;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v24;
    v25 = v24;
    sub_1D61F750C(v12, v7);
    sub_1D5BE792C(v7, type metadata accessor for HeadlineViewLayout.Options);
    sub_1D5BE792C(v12, type metadata accessor for HeadlineViewLayout.Context);
    v26 = MEMORY[0x1E69D6F38];
    sub_1D676797C(0, &qword_1EC88B0D8, MEMORY[0x1E69D6F38]);
    sub_1D6767938(&qword_1EC88B0E0, &qword_1EC88B0D8, v26);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v15 + 8))(v18, v27[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6765D7C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6767F40(0, &qword_1EC88B0C0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D676797C(0, &qword_1EC88B0D8, MEMORY[0x1E69D6F38]);
  sub_1D6767938(&qword_1EC88B0E0, &qword_1EC88B0D8, v13);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6766020(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6767F40(0, &qword_1EC88B0C0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D676797C(0, &qword_1EC88B0D8, MEMORY[0x1E69D6F38]);
  sub_1D6767938(&qword_1EC88B0E0, &qword_1EC88B0D8, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D67665FC(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6767F40(0, &qword_1EC88B0C0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D74A8], v20);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + 2 * *(v15 + 72), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE792C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D676797C(0, &qword_1EC88B0D8, MEMORY[0x1E69D6F38]);
  sub_1D6767938(&qword_1EC88B0E0, &qword_1EC88B0D8, v36);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

void sub_1D6766BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v39 = a3;
  sub_1D6767F40(0, &qword_1EC88B0C0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (&v30 - v13);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = a5 >> 1;
  v20 = __OFSUB__(a5 >> 1, a4);
  v21 = (a5 >> 1) - a4;
  if (v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v21 != 3)
  {
    return;
  }

  if (v19 <= a4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v22 = *(v17 + 72);
  v35 = *MEMORY[0x1E69D7490];
  v33 = (v11 + 8);
  v34 = (v11 + 104);
  v36 = v22;
  v37 = a2;
  v23 = v39 + v22 * a4;
  v31 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v38 = v10;
  v24 = v31;
  do
  {
    sub_1D5BE3ED8(v23, v24, type metadata accessor for HeadlineViewLayout.Context);
    v41 = a1;
    v25 = swift_allocObject();
    *(v25 + 16) = 4;
    *v14 = v25;
    v26 = (*v34)(v14, v35, v10);
    v40 = &v30;
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v30 - 6) = v24;
    *(&v30 - 5) = a2;
    *(&v30 - 4) = v39;
    *(&v30 - 3) = a4;
    v28 = MEMORY[0x1E69D6F38];
    sub_1D676797C(0, &qword_1EC88B0D8, MEMORY[0x1E69D6F38]);
    v29 = sub_1D6767938(&qword_1EC88B0E0, &qword_1EC88B0D8, v28);
    a1 = v32;
    a2 = v37;
    v10 = v38;
    sub_1D7259A2C();
    (*v33)(v14, v10);
    sub_1D5BE792C(v24, type metadata accessor for HeadlineViewLayout.Context);
    v23 += v36;
    --v21;
  }

  while (v21);
}

uint64_t sub_1D6766F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v57 = a2;
  v62 = a1;
  v58 = sub_1D725A36C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v9);
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D725A19C();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v11);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeadlineViewLayout.Context(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v51, v18);
  v20 = (&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6767F40(0, &qword_1EC88B0C0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D74B0]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v50 - v25;
  v63 = v62;
  KeyPath = swift_getKeyPath();
  v27 = *MEMORY[0x1E69D74A8];
  v55 = v23;
  v28 = *(v23 + 104);
  v53 = v26;
  v62 = v22;
  v28(v26, v27, v22);
  if (a5 <= (a6 >> 1))
  {
    v29 = a6 >> 1;
  }

  else
  {
    v29 = a5;
  }

  while (a6 >> 1 != a5)
  {
    if (v29 == a5)
    {
      __break(1u);
      goto LABEL_12;
    }

    sub_1D5BE3ED8(a4 + *(v14 + 72) * a5++, v17, type metadata accessor for HeadlineViewLayout.Context);
    v30 = *&v17[*(v13 + 20) + 32];
    sub_1D5BE792C(v17, type metadata accessor for HeadlineViewLayout.Context);
    if ((v30 & 4) == 0)
    {
      v31 = 2;
      goto LABEL_9;
    }
  }

  v31 = 0;
LABEL_9:
  v32 = v51;
  v33 = *(v51 + 20);
  v34 = *MEMORY[0x1E69D7348];
  v35 = sub_1D725A34C();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v20 + v33, v34, v35);
  (*(v36 + 56))(v20 + v33, 0, 1, v35);
  v37 = MEMORY[0x1E69DDC70];
  *v20 = v31;
  *(v20 + *(v32 + 24)) = 0;
  v38 = *v37;
  *(v20 + *(v32 + 28)) = v38;
  v39 = qword_1EDF386E8;
  v40 = v38;
  if (v39 == -1)
  {
    goto LABEL_10;
  }

LABEL_12:
  swift_once();
LABEL_10:

  v41 = v54;
  sub_1D725972C();

  v44 = MEMORY[0x1EEE9AC00](v42, v43);
  v45 = v56;
  *(&v50 - 4) = v57;
  *(&v50 - 3) = v20;
  v49 = v41;
  (*(v45 + 104))(v60, *MEMORY[0x1E69D7378], v58, v44);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v59 + 8))(v41, v61);
  sub_1D5BE792C(v20, type metadata accessor for HeadlineViewLayout.Options);
  v46 = MEMORY[0x1E69D6F38];
  sub_1D676797C(0, &qword_1EC88B0D8, MEMORY[0x1E69D6F38]);
  sub_1D6767938(&qword_1EC88B0E0, &qword_1EC88B0D8, v46);
  v49 = sub_1D5BE8850();
  v47 = v53;
  sub_1D7259A4C();

  return (*(v55 + 8))(v47, v62);
}

uint64_t sub_1D6767580@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V25.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6767694(uint64_t a1)
{
  *(a1 + 8) = sub_1D67676C4();
  result = sub_1D6767718();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D67676C4()
{
  result = qword_1EC88B078;
  if (!qword_1EC88B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B078);
  }

  return result;
}

unint64_t sub_1D6767718()
{
  result = qword_1EC88B080;
  if (!qword_1EC88B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B080);
  }

  return result;
}

uint64_t type metadata accessor for A12_V25.Bound()
{
  result = qword_1EC88B090;
  if (!qword_1EC88B090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67677E0(uint64_t a1)
{
  result = sub_1D6767FA8(&qword_1EC88B0A0, type metadata accessor for A12_V25.Bound);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6767858()
{
  result = qword_1EC88B0B0;
  if (!qword_1EC88B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B0B0);
  }

  return result;
}

unint64_t sub_1D67678AC()
{
  result = qword_1EC88B0B8;
  if (!qword_1EC88B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B0B8);
  }

  return result;
}

uint64_t sub_1D6767938(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D676797C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D676797C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V25.Layout;
    v8[1] = &type metadata for A12_V25.Layout.Attributes;
    v8[2] = sub_1D6767858();
    v8[3] = sub_1D67678AC();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6767A08()
{
  if (!qword_1EC88B0E8)
  {
    sub_1D6767F40(255, &qword_1EC88B0F0, sub_1D6767858, &type metadata for A12_V25.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88B0E8);
    }
  }
}

unint64_t sub_1D6767AF0()
{
  result = qword_1EC88B0F8;
  if (!qword_1EC88B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B0F8);
  }

  return result;
}

unint64_t sub_1D6767B48()
{
  result = qword_1EC88B100;
  if (!qword_1EC88B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B100);
  }

  return result;
}

unint64_t sub_1D6767BA0()
{
  result = qword_1EC88B108;
  if (!qword_1EC88B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B108);
  }

  return result;
}

unint64_t sub_1D6767BF8()
{
  result = qword_1EC88B110;
  if (!qword_1EC88B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B110);
  }

  return result;
}

uint64_t sub_1D6767C4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6767F40(0, &qword_1EC88B118, sub_1D6767EEC, &type metadata for A12_V25.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6767EEC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6767FA8(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6767EEC()
{
  result = qword_1EC88B120;
  if (!qword_1EC88B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B120);
  }

  return result;
}

void sub_1D6767F40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6767FA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6768004()
{
  result = qword_1EC88B130;
  if (!qword_1EC88B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B130);
  }

  return result;
}

unint64_t sub_1D676805C()
{
  result = qword_1EC88B138;
  if (!qword_1EC88B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B138);
  }

  return result;
}

unint64_t sub_1D67680B4()
{
  result = qword_1EC88B140;
  if (!qword_1EC88B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B140);
  }

  return result;
}

char *sub_1D6768150(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  ObjectType = swift_getObjectType();
  sub_1D725DC4C();
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetWidth(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetHeight(v20);
  *&v4[qword_1EC88B148] = sub_1D725DBFC();
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = qword_1EC88B148;
  v12 = *&v10[qword_1EC88B148];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 clearColor];
  [v15 setBackgroundColor_];

  [v14 addSubview_];
  return v14;
}

uint64_t sub_1D67683A0(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, char a6)
{
  sub_1D6768780();
  sub_1D67687CC();
  v10 = sub_1D7262B0C();
  v11 = a4;
  v12 = a1;
  sub_1D6768448(v10, a4, a5, a6);
}

id sub_1D6768448(uint64_t a1, uint64_t a2, SEL *a3, char a4)
{
  ObjectType = swift_getObjectType();
  sub_1D6768780();
  sub_1D67687CC();
  v9 = sub_1D7262AFC();
  v12.receiver = v4;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a3, v9, a2);

  v10 = *&v4[qword_1EC88B148];
  [v10 setSelected_];
  return [v10 setHighlighted_];
}

uint64_t sub_1D6768580(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47BD8](a1, a2, ObjectType);
}

uint64_t sub_1D67685D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47BC8](a1, a2, ObjectType);
}

uint64_t sub_1D6768630()
{
  swift_getObjectType();

  return sub_1D725F03C();
}

uint64_t sub_1D6768688()
{
  swift_getObjectType();

  return sub_1D725F05C();
}

uint64_t sub_1D67686E0()
{
  swift_getObjectType();

  return sub_1D725F08C();
}

uint64_t sub_1D6768730()
{
  swift_getObjectType();

  return sub_1D725F09C();
}

unint64_t sub_1D6768780()
{
  result = qword_1EC88B1D0;
  if (!qword_1EC88B1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88B1D0);
  }

  return result;
}

unint64_t sub_1D67687CC()
{
  result = qword_1EC88B1D8;
  if (!qword_1EC88B1D8)
  {
    sub_1D6768780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B1D8);
  }

  return result;
}

double sub_1D6768880(void *a1)
{
  v5 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if (v9)
  {
    v12 = *(v11 + 32);
    v13 = sub_1D5EE5AA4();
    v12(v43, &type metadata for FeedIssue, &type metadata for FeedIssue, v13, v10, v11);
    if (!v2)
    {
      v41 = v43[6];
      v42[0] = v44[0];
      *(v42 + 9) = *(v44 + 9);
      v35 = v43[0];
      v36 = v43[1];
      v37 = v43[2];
      v38 = v43[3];
      v39 = v43[4];
      v40 = v43[5];
      v14 = *&v43[0];
      v15 = [*&v43[0] layeredCoverJSON];
      if (v15)
      {
        v16 = v15;
        sub_1D726207C();

        [v14 layeredCoverAspectRatio];
        v3 = v17;
        sub_1D5ECF320(&v35);
      }

      else
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B571E0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v25 = v24;
        v33 = 0;
        v34 = 0xE000000000000000;
        v31[6] = v41;
        v32[0] = v42[0];
        *(v32 + 9) = *(v42 + 9);
        v31[2] = v37;
        v31[3] = v38;
        v31[4] = v39;
        v31[5] = v40;
        v31[0] = v35;
        v31[1] = v36;
        sub_1D7263F9C();
        v26 = v34;
        *v25 = v33;
        v25[1] = v26;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D5ECF320(&v35);
      }
    }
  }

  else
  {
    v18 = *(v11 + 32);
    v19 = sub_1D5B571E0(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
    v18(v5, v5, v19, v10, v11);
    if (!v2)
    {
      v20 = *(v8 + 5);
      if ([v20 respondsToSelector_])
      {
        v21 = [v20 layeredThumbnailJSON];
        if (v21)
        {
          v22 = v21;
          sub_1D726207C();

          if ([v20 respondsToSelector_])
          {
            [v20 layeredThumbnailAspectRatio];
            v3 = v23;
            sub_1D5C10040(v8);

            return v3;
          }
        }
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5B571E0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      v28 = v27;
      *&v43[0] = 0;
      *(&v43[0] + 1) = 0xE000000000000000;
      sub_1D7263F9C();
      v29 = *(&v43[0] + 1);
      *v28 = *&v43[0];
      v28[1] = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5C10040(v8);
    }
  }

  return v3;
}

uint64_t static FormatLayeredMediaRatioBinding.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
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

unint64_t sub_1D6768CB8(uint64_t a1)
{
  result = sub_1D6768CE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6768CE0()
{
  result = qword_1EC88B1E0;
  if (!qword_1EC88B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B1E0);
  }

  return result;
}

unint64_t sub_1D6768D34(void *a1)
{
  a1[1] = sub_1D669F4F4();
  a1[2] = sub_1D669F6EC();
  result = sub_1D6768D6C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6768D6C()
{
  result = qword_1EC88B1E8;
  if (!qword_1EC88B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B1E8);
  }

  return result;
}

void static FormatCodingBooleanFalseStrategy.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t static FormatCodingBooleanFalseStrategy.shouldEncode(wrappedValue:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (v3)
  {

    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = *a1;
  }

  sub_1D5D2F2C4(v1, v2, v3);
  sub_1D5D2F2C4(0, 0, 0);
  return v4 & 1;
}

void sub_1D6768E74(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1D6768E80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  if (v3)
  {

    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = *a1;
  }

  sub_1D5D2F2C4(v1, v2, v3);
  sub_1D5D2F2C4(0, 0, 0);
  return v4 & 1;
}

double static FormatCodingBooleanTrueStrategy.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1D728CF30;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static FormatCodingBooleanTrueStrategy.shouldEncode(wrappedValue:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (a1[2])
  {

    v3 = 1;
    sub_1D5D2F2C4(v1, v2, 1);
    sub_1D5D2F2C4(1, 0, 0);
  }

  else
  {
    sub_1D5D2F2C4(*a1, v2, 0);
    sub_1D5D2F2C4(1, 0, 0);
    v3 = v1 ^ 1;
  }

  return v3 & 1;
}

double sub_1D6768F84@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1D728CF30;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1D6768F98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (a1[2])
  {

    v3 = 1;
    sub_1D5D2F2C4(v1, v2, 1);
    sub_1D5D2F2C4(1, 0, 0);
  }

  else
  {
    sub_1D5D2F2C4(*a1, v2, 0);
    sub_1D5D2F2C4(1, 0, 0);
    v3 = v1 ^ 1;
  }

  return v3 & 1;
}

void static FormatCodingSelectorBooleanFalseStrategy.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

void sub_1D676903C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
}

double static FormatCodingSelectorBooleanTrueStrategy.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1D728CF30;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

double sub_1D676907C@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1D728CF30;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t _s8NewsFeed39FormatCodingSelectorBooleanTrueStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleL0VyAA0cF0OG_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  if (a1[2])
  {
    v2 = a1[1];

    sub_1D5D2F2C4(v1, v2, 1);
    sub_1D5D2F2C4(1, 0, 0);
LABEL_6:
    sub_1D5D2F2C4(1, 0, 0);

    return 1;
  }

  v3 = a1[3];
  sub_1D5D2F2C4(*a1, a1[1], 0);
  sub_1D5D2F2C4(1, 0, 0);
  if ((v1 & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = MEMORY[0x1E69E7CC0];

  v5 = sub_1D634D390(v3, v4);

  sub_1D5D2F2C4(1, 0, 0);

  result = 0;
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t _s8NewsFeed40FormatCodingSelectorBooleanFalseStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleL0VyAA0cF0OG_tFZ_0(uint64_t *a1)
{
  v1 = *a1;
  if (a1[2])
  {
    v2 = a1[1];

    v3 = 1;
    sub_1D5D2F2C4(v1, v2, 1);
    sub_1D5D2F2C4(0, 0, 0);
    sub_1D5D2F2C4(0, 0, 0);
  }

  else
  {
    v4 = a1[3];
    sub_1D5D2F2C4(*a1, a1[1], 0);
    sub_1D5D2F2C4(0, 0, 0);
    if (v1)
    {
      sub_1D5D2F2C4(0, 0, 0);

      v3 = 1;
    }

    else
    {

      v5 = MEMORY[0x1E69E7CC0];

      v6 = sub_1D634D390(v4, v5);

      sub_1D5D2F2C4(0, 0, 0);

      v3 = v6 ^ 1;
    }
  }

  return v3 & 1;
}

unint64_t sub_1D67692C0(uint64_t a1)
{
  result = sub_1D67692E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67692E8()
{
  result = qword_1EC88B1F0;
  if (!qword_1EC88B1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B1F0);
  }

  return result;
}

unint64_t sub_1D676933C(uint64_t a1)
{
  result = sub_1D6769364();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6769364()
{
  result = qword_1EC88B1F8;
  if (!qword_1EC88B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B1F8);
  }

  return result;
}

unint64_t sub_1D67693B8(uint64_t a1)
{
  result = sub_1D67693E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67693E0()
{
  result = qword_1EC88B200;
  if (!qword_1EC88B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B200);
  }

  return result;
}

void sub_1D6769434()
{
  if (!qword_1EC886290)
  {
    sub_1D5FBA208();
    v0 = type metadata accessor for FormatSelectorSimpleValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886290);
    }
  }
}

uint64_t sub_1D6769490(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D6769434();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67694D4(uint64_t a1)
{
  result = sub_1D67694FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67694FC()
{
  result = qword_1EC88B208;
  if (!qword_1EC88B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B208);
  }

  return result;
}

uint64_t FormatPluginData.init<A>(formatContent:feedContext:feedGroup:feedDescriptor:feedKind:dataProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a5;
  sub_1D5CEB820(a1, a9, type metadata accessor for FormatContent.Resolved);
  v17 = type metadata accessor for FormatPluginData();
  v39 = a2;
  sub_1D5CEB820(a2, a9 + v17[5], type metadata accessor for FeedContext);
  v18 = (a9 + v17[6]);
  v19 = *(a8 + 8);
  v18[3] = a7;
  v18[4] = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  v21 = *(a7 - 8);
  (*(v21 + 16))(boxed_opaque_existential_1, a3, a7);
  *(a9 + v17[8]) = a4;
  *(a9 + v17[7]) = v16;
  v38 = a3;
  *(a9 + v17[9]) = (*(a8 + 72))(a7, a8);
  sub_1D676993C(a6, v43 + 1);
  v22 = v44;
  if (v44)
  {
    v23 = v45;
    __swift_project_boxed_opaque_existential_1((v43 + 1), v44);
    (*(v23 + 8))(&v41, v22, v23);
    v24 = v41;
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_1(v43 + 1);
  }

  else
  {
    sub_1D67699B8(v43 + 1);
    v24 = 0;
    v25 = 5;
  }

  v26 = a9 + v17[10];
  *v26 = v24;
  *(v26 + 8) = v25;
  v27 = *(a1 + *(type metadata accessor for FormatContent.Resolved() + 36));
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = (v27 + 64);
    while (1)
    {
      v31 = *v29;
      v29 += 10;
      v30 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        v32 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
        swift_beginAccess();
        v33 = *(v30 + v32);
        if (v33 != 4)
        {
          break;
        }
      }

      if (!--v28)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    LOBYTE(v33) = 3;
  }

  *(a9 + v17[11]) = v33;
  sub_1D676993C(a6, v43 + 1);
  v34 = v44;
  if (v44)
  {
    v35 = v45;
    __swift_project_boxed_opaque_existential_1((v43 + 1), v44);
    (*(v35 + 16))(v43, v34, v35);
    sub_1D67699B8(a6);
    (*(v21 + 8))(v38, a7);
    sub_1D5CECA00(v39, type metadata accessor for FeedContext);
    sub_1D5CECA00(a1, type metadata accessor for FormatContent.Resolved);
    v36 = v43[0];
    result = __swift_destroy_boxed_opaque_existential_1(v43 + 1);
  }

  else
  {
    sub_1D67699B8(a6);
    (*(v21 + 8))(v38, a7);
    sub_1D5CECA00(v39, type metadata accessor for FeedContext);
    sub_1D5CECA00(a1, type metadata accessor for FormatContent.Resolved);
    result = sub_1D67699B8(v43 + 1);
    v36 = 1;
  }

  *(a9 + v17[12]) = v36;
  return result;
}

uint64_t type metadata accessor for FormatPluginData()
{
  result = qword_1EDF112A8;
  if (!qword_1EDF112A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D676993C(uint64_t a1, uint64_t a2)
{
  sub_1D5BFB8A8(0, &qword_1EDF0BFE8, &qword_1EDF0BFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67699B8(uint64_t a1)
{
  sub_1D5BFB8A8(0, &qword_1EDF0BFE8, &qword_1EDF0BFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6769A60()
{
  type metadata accessor for FormatContent.Resolved();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FeedContext();
    if (v1 <= 0x3F)
    {
      sub_1D5BFB8A8(319, &unk_1EDF38310, qword_1EDF38320);
      if (v2 <= 0x3F)
      {
        sub_1D6769BA4();
        if (v3 <= 0x3F)
        {
          sub_1D5B7EBB4();
          if (v4 <= 0x3F)
          {
            sub_1D5B49CBC(319, &qword_1EDF0EDF0);
            if (v5 <= 0x3F)
            {
              sub_1D5B49CBC(319, &qword_1EDF0D090);
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

void sub_1D6769BA4()
{
  if (!qword_1EDF04570)
  {
    sub_1D6769BFC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04570);
    }
  }
}

unint64_t sub_1D6769BFC()
{
  result = qword_1EDF04580;
  if (!qword_1EDF04580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF04580);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceCanvasSection()
{
  result = qword_1EC88B210;
  if (!qword_1EC88B210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6769CBC()
{
  type metadata accessor for DebugFormatWorkspaceGroup();
  if (v0 <= 0x3F)
  {
    sub_1D7259F5C();
    if (v1 <= 0x3F)
    {
      sub_1D7259CFC();
      if (v2 <= 0x3F)
      {
        sub_1D676A8F0(319, &qword_1EC88B220, type metadata accessor for DebugFormatWorkspaceCanvasItem, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_1D6769DC8()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  v2 = v0 + *(type metadata accessor for DebugFormatWorkspaceCanvasSection() + 28);
  v3 = *(v2 + *(type metadata accessor for DebugFormatWorkspaceGroup() + 20));
  if (v3)
  {
    swift_beginAccess();
    sub_1D676A8F0(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v19 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v41 = objc_opt_self();
    v42 = v19;

    v20 = [v41 systemFontOfSize_];
    v40 = sub_1D5B5A498(0, &qword_1EDF1A720);
    *(inited + 40) = v20;
    v21 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v40;
    *(inited + 72) = v21;
    v38 = objc_opt_self();
    v39 = v21;
    v22 = [v38 labelColor];
    v23 = sub_1D5B5A498(0, qword_1EDF1A6A0);
    *(inited + 104) = v23;
    *(inited + 80) = v22;
    sub_1D5C09CEC(inited);
    swift_setDeallocating();
    sub_1D5C09DD4();
    swift_arrayDestroy();
    v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v25 = sub_1D726203C();

    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v26 = sub_1D7261D2C();

    v27 = [v24 initWithString:v25 attributes:v26];

    [v1 appendAttributedString_];
    v28 = *(v3 + 16);
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);

    MEMORY[0x1DA6F9910](v29, v30);

    v31 = swift_initStackObject();
    *(v31 + 32) = v42;
    *(v31 + 16) = xmmword_1D7270C10;
    *(v31 + 40) = [v41 monospacedSystemFontOfSize:13.0 weight:*MEMORY[0x1E69DB978]];
    *(v31 + 64) = v40;
    *(v31 + 72) = v39;
    v32 = [v38 secondaryLabelColor];
    *(v31 + 104) = v23;
    *(v31 + 80) = v32;
    sub_1D5C09CEC(v31);
    swift_setDeallocating();
    swift_arrayDestroy();
    v33 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v34 = sub_1D726203C();

    v35 = sub_1D7261D2C();

    v36 = [v33 initWithString:v34 attributes:v35];

    [v1 appendAttributedString_];
  }

  else
  {
    sub_1D676A8F0(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1D7270C10;
    v5 = *MEMORY[0x1E69DB648];
    *(v4 + 32) = *MEMORY[0x1E69DB648];
    v6 = objc_opt_self();
    v7 = *MEMORY[0x1E69DB978];
    v8 = v5;
    v9 = [v6 monospacedSystemFontOfSize:13.0 weight:v7];
    v10 = sub_1D5B5A498(0, &qword_1EDF1A720);
    *(v4 + 40) = v9;
    v11 = *MEMORY[0x1E69DB650];
    *(v4 + 64) = v10;
    *(v4 + 72) = v11;
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 secondaryLabelColor];
    *(v4 + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
    *(v4 + 80) = v14;
    sub_1D5C09CEC(v4);
    swift_setDeallocating();
    sub_1D5C09DD4();
    swift_arrayDestroy();
    v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v16 = sub_1D726203C();
    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v17 = sub_1D7261D2C();

    v36 = [v15 initWithString:v16 attributes:v17];

    [v1 appendAttributedString_];
  }

  return v1;
}

BOOL sub_1D676A418(uint64_t a1)
{
  v1 = *(a1 + 80);

  v2 = sub_1D7259CCC();
  if (*(v1 + 16) && (v3 = v2, v4 = sub_1D72649FC(), v5 = -1 << *(v1 + 32), v6 = v4 & ~v5, ((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(v1 + 48) + 8 * v6);
      v9 = v8 == v3;
      if (v8 == v3)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1D676A4E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D676A4EC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v42 = a4;
  v40 = a2;
  v41 = a5;
  v7 = type metadata accessor for DebugFormatWorkspaceGroup();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugFormatWorkspace();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725895C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[9];
  v52 = a1[8];
  v53 = v19;
  v54 = *(a1 + 20);
  v20 = a1[5];
  v48 = a1[4];
  v49 = v20;
  v21 = a1[7];
  v50 = a1[6];
  v51 = v21;
  v22 = a1[1];
  v44 = *a1;
  v45 = v22;
  v23 = a1[3];
  v46 = a1[2];
  v47 = v23;
  sub_1D725894C();
  v38 = sub_1D725893C();
  v25 = v24;
  (*(v15 + 8))(v18, v14);
  sub_1D676A820(v40, v13, type metadata accessor for DebugFormatWorkspace);
  v26 = a3;
  v27 = v39;
  sub_1D676A820(v26, v39, type metadata accessor for DebugFormatWorkspaceGroup);
  type metadata accessor for DebugFormatWorkspaceCanvasItem();
  v28 = swift_allocObject();
  sub_1D676A8F0(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  swift_storeEnumTagMultiPayload();
  *(v28 + 16) = v38;
  *(v28 + 24) = v25;
  sub_1D676A888(v13, v28 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_workspace, type metadata accessor for DebugFormatWorkspace);
  sub_1D676A888(v27, v28 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group, type metadata accessor for DebugFormatWorkspaceGroup);
  v29 = v28 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
  v30 = v49;
  *(v29 + 64) = v48;
  *(v29 + 80) = v30;
  *(v29 + 160) = v54;
  v31 = v53;
  *(v29 + 128) = v52;
  *(v29 + 144) = v31;
  v32 = v51;
  *(v29 + 96) = v50;
  *(v29 + 112) = v32;
  v33 = v45;
  *v29 = v44;
  *(v29 + 16) = v33;
  v34 = v47;
  *(v29 + 32) = v46;
  *(v29 + 48) = v34;
  v35 = (v28 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_device);
  v36 = BYTE1(v42);
  *v35 = v42;
  v35[1] = v36 & 1;
  *v41 = v28;
  return sub_1D5ECF030(&v44, &v43);
}

uint64_t sub_1D676A820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D676A888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D676A8F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D676A954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = a2;
  v39 = a4;
  v8 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725895C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[3] = 0;
  sub_1D725894C();
  v17 = sub_1D725893C();
  v19 = v18;
  v20 = v12;
  v21 = a1;
  v22 = v39;
  (*(v13 + 8))(v16, v20);
  v23 = v38;
  v5[7] = v17;
  v5[8] = v19;
  v5[4] = v21;
  v5[5] = a3;
  v37 = a3;
  v5[6] = v22;
  v24 = *(v23 + 16);
  if (!v24)
  {

    v28 = 0;
    goto LABEL_12;
  }

  v25 = *(v8 + 40);
  v26 = v23 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v27 = *(v36 + 72);

  v28 = 0;
  while (1)
  {
    sub_1D676B094(v26, v11);
    v29 = *&v11[v25];
    if (v29 >> 62)
    {
      break;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = __OFADD__(v28, v30);
    v28 += v30;
    if (v31)
    {
      goto LABEL_9;
    }

LABEL_5:
    sub_1D676B0F8(v11);
    v26 += v27;
    if (!--v24)
    {
      goto LABEL_10;
    }
  }

  v32 = sub_1D7263BFC();
  v31 = __OFADD__(v28, v32);
  v28 += v32;
  if (!v31)
  {
    goto LABEL_5;
  }

LABEL_9:
  __break(1u);
LABEL_10:

LABEL_12:
  v5[2] = v28;
  v33 = *(v5[4] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v34 = v5[8];
  *(v33 + 48) = v5[7];
  *(v33 + 56) = v34;

  v40 = v37;
  v41 = v22;

  sub_1D725B32C();

  LODWORD(v40) = 0;

  sub_1D725B32C();

  return v5;
}

void *sub_1D676AC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1D725895C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[3] = 0;
  sub_1D725894C();
  v15 = sub_1D725893C();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v5[7] = v15;
  v5[8] = v17;
  v5[4] = a1;
  v5[5] = a3;
  v5[6] = a4;
  v5[2] = a2;
  v18 = *(a1 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  *(v18 + 48) = v15;
  *(v18 + 56) = v17;

  v20[0] = a3;
  v20[1] = a4;

  sub_1D725B32C();

  LODWORD(v20[0]) = 0;

  sub_1D725B32C();

  return v5;
}

void sub_1D676AE48()
{
  v1 = v0[3];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v0[3] = v2;
  v3 = *(v0[4] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = *(v3 + 56);
  if (v4)
  {
    v5 = *(v3 + 48) == v0[7] && v4 == v0[8];
    if (v5 || (sub_1D72646CC() & 1) != 0)
    {
      v6 = v0[2];
      if (v6 == v2)
      {

        sub_1D725B32C();

LABEL_12:

        sub_1D725B32C();

        return;
      }

      sub_1D725B32C();

      MEMORY[0x1DA6F9910](32, 0xE100000000000000);
      if (!__OFSUB__(v6, v0[3]))
      {
        v7 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v7);

        MEMORY[0x1DA6F9910](0x696E69616D657220, 0xEA0000000000676ELL);
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

uint64_t sub_1D676B028()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D676B094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D676B0F8(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D676B154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D676B178, 0, 0);
}

uint64_t sub_1D676B178()
{
  v12 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 24);
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v3[2].i64[0] = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1D60CEB68((v2 + 16), &v11);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v11;
  *(v0 + 48) = v11;

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = type metadata accessor for DebugFormatCanvasBindResult();
  v7 = sub_1D5BA6EF4();
  *v5 = v0;
  v5[1] = sub_1D5D0CE5C;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8, v4, v6, v7, v9);
}

uint64_t sub_1D676B2BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v7 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  sub_1D5B6C0A0(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - v12;
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_1D5B69D90(*(a2 + 16), *(a2 + 24)), (v18 & 1) != 0))
  {
    *v28 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v20 = sub_1D726294C();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    sub_1D676CBD4(v26, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v21 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = a2;
    sub_1D676CA40(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    *(v22 + ((v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;

    v23 = sub_1D6737220(0, 0, v13, &unk_1D72E8FE8, v22);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    sub_1D6D7AF6C(v23, v15, v14, isUniquelyReferenced_nonNull_native);

    *a1 = v29;
    *v28 = v23;
  }

  return result;
}

uint64_t sub_1D676B574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[112] = a6;
  v6[111] = a5;
  v6[110] = a4;
  v6[109] = a1;
  v6[113] = type metadata accessor for DebugFormatCanvasBindRequest();
  v6[114] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D676B614, 0, 0);
}

uint64_t sub_1D676B614()
{
  v0[115] = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
  sub_1D725B77C();
  v1 = v0[107];
  v0[116] = v1;
  v2 = swift_task_alloc();
  v0[117] = v2;
  v3 = type metadata accessor for DebugFormatBindingResult();
  v4 = sub_1D5BA6EF4();
  *v2 = v0;
  v2[1] = sub_1D676B704;
  v5 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 108, v1, v3, v4, v5);
}

uint64_t sub_1D676B704()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_1D676BFA4;
  }

  else
  {
    v2 = sub_1D676B828;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D676B828()
{
  v1 = *(v0 + 912);
  v71 = *(v0 + 896);
  v67 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = v2 + *(v0 + 920);
  v61 = *(v0 + 864);
  v62 = *(v0 + 904);
  *(v0 + 952) = v61;
  v4 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v63 = *(v4 + 32);
  v70 = *(v4 + 36);
  v5 = v2 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_workspace;
  v6 = type metadata accessor for DebugFormatWorkspace();
  v7 = (v5 + *(v6 + 20));
  v68 = v7[1];
  v69 = *v7;
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = *(v7 + 1);
  *(v0 + 200) = *v7;
  *(v0 + 216) = v10;
  *(v0 + 232) = v9;
  *(v0 + 248) = v8;
  v11 = *(v7 + 175);
  v12 = *(v7 + 10);
  v13 = *(v7 + 8);
  *(v0 + 344) = *(v7 + 9);
  *(v0 + 360) = v12;
  *(v0 + 375) = v11;
  *(v0 + 328) = v13;
  v14 = *(v7 + 7);
  v15 = *(v7 + 4);
  v16 = *(v7 + 5);
  *(v0 + 296) = *(v7 + 6);
  *(v0 + 312) = v14;
  *(v0 + 264) = v15;
  *(v0 + 280) = v16;
  v64 = *(v2 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_device + 1);
  v65 = *(v2 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_device);
  v66 = *(v5 + *(v6 + 32));
  sub_1D5B6C0A0(0, &qword_1EC88EE90, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6F90]);
  v17 = (type metadata accessor for DebugFormatEditorWorkspaceGroup() - 8);
  v18 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7273AE0;
  v20 = v19 + v18;
  v21 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group;
  v22 = *(v3 + 16);
  v23 = *(v3 + 104);
  v24 = *(v3 + 152);
  v25 = *(v3 + 120);
  *(v0 + 680) = *(v3 + 136);
  *(v0 + 696) = v24;
  *(v0 + 648) = v23;
  *(v0 + 664) = v25;
  v26 = *(v3 + 40);
  v27 = *(v3 + 88);
  v28 = *(v3 + 56);
  *(v0 + 616) = *(v3 + 72);
  *(v0 + 632) = v27;
  *(v0 + 584) = v26;
  *(v0 + 600) = v28;
  *(v0 + 568) = *(v3 + 24);
  sub_1D676CBD4(v2 + v21, v20, type metadata accessor for FormatWorkspaceGroup);
  *(v20 + v17[7]) = v61;
  *(v20 + v17[8]) = v22;
  v29 = (v20 + v17[9]);
  v30 = *(v0 + 680);
  v29[6] = *(v0 + 664);
  v29[7] = v30;
  v29[8] = *(v0 + 696);
  v31 = *(v0 + 616);
  v29[2] = *(v0 + 600);
  v29[3] = v31;
  v32 = *(v0 + 648);
  v29[4] = *(v0 + 632);
  v29[5] = v32;
  v33 = *(v0 + 584);
  *v29 = *(v0 + 568);
  v29[1] = v33;
  v34 = *(v0 + 344);
  *(v0 + 144) = *(v0 + 328);
  *(v0 + 160) = v34;
  *(v0 + 176) = *(v0 + 360);
  *(v0 + 191) = *(v0 + 375);
  v35 = *(v0 + 280);
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = v35;
  v36 = *(v0 + 312);
  *(v0 + 112) = *(v0 + 296);
  *(v0 + 128) = v36;
  v37 = *(v0 + 216);
  *(v0 + 16) = *(v0 + 200);
  *(v0 + 32) = v37;
  v38 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v38;
  *v1 = 1;
  v39 = v62[5];
  v40 = sub_1D7259F5C();
  (*(*(v40 - 8) + 16))(&v1[v39], v67 + v63, v40);
  v41 = v62[6];
  v42 = sub_1D7259CFC();
  (*(*(v42 - 8) + 16))(&v1[v41], v67 + v70, v42);
  v43 = &v1[v62[7]];
  *v43 = v69;
  *(v43 + 1) = v68;
  v44 = *(v0 + 16);
  v45 = *(v0 + 32);
  v46 = *(v0 + 64);
  *(v43 + 3) = *(v0 + 48);
  *(v43 + 4) = v46;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  v47 = *(v0 + 80);
  v48 = *(v0 + 96);
  v49 = *(v0 + 128);
  *(v43 + 7) = *(v0 + 112);
  *(v43 + 8) = v49;
  *(v43 + 5) = v47;
  *(v43 + 6) = v48;
  v50 = *(v0 + 144);
  v51 = *(v0 + 191);
  v52 = *(v0 + 176);
  *(v43 + 10) = *(v0 + 160);
  *(v43 + 11) = v52;
  *(v43 + 191) = v51;
  *(v43 + 9) = v50;
  v43[195] = v65;
  v43[196] = v64;
  LOWORD(v51) = *(v0 + 195);
  v43[199] = *(v0 + 197);
  *(v43 + 197) = v51;
  *(v43 + 25) = v66;
  *(v43 + 26) = v19;
  v53 = *(v71 + 16);
  type metadata accessor for DebugFormatCanvasTracer();
  v54 = swift_allocObject();
  *(v0 + 960) = v54;
  sub_1D61F55EC();
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  *(v55 + 16) = MEMORY[0x1E69E7CC0];
  *(v54 + 16) = v55;

  sub_1D5ECF1C0(v0 + 200, v0 + 384);

  sub_1D5D65D5C(v0 + 568, v0 + 712);
  v56 = swift_task_alloc();
  *(v0 + 968) = v56;
  v56[2] = v53;
  v56[3] = v1;
  v56[4] = v54;
  v57 = swift_task_alloc();
  *(v0 + 976) = v57;
  v58 = type metadata accessor for DebugFormatCanvasBindResult();
  *v57 = v0;
  v57[1] = sub_1D676BD44;
  v59 = *(v0 + 872);

  return MEMORY[0x1EEE6DE38](v59, 0, 0, 0xD000000000000017, 0x80000001D73CECD0, sub_1D61F5678, v56, v58);
}

uint64_t sub_1D676BD44()
{
  *(*v1 + 984) = v0;

  if (v0)
  {
    v2 = sub_1D676BEF8;
  }

  else
  {

    v2 = sub_1D676BE6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D676BE6C()
{
  v1 = *(v0 + 912);

  sub_1D676CD8C(v1, type metadata accessor for DebugFormatCanvasBindRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D676BEF8()
{
  v1 = *(v0 + 912);

  sub_1D676CD8C(v1, type metadata accessor for DebugFormatCanvasBindRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D676BFA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D676C008(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D676C02C, 0, 0);
}

uint64_t sub_1D676C02C()
{
  v13 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v3;
  os_unfair_lock_lock((v4 + 24));
  sub_1D676CC3C((v4 + 16), &v12);
  os_unfair_lock_unlock((v4 + 24));
  v6 = v12;
  v0[6] = v12;

  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = type metadata accessor for DebugFormatCanvasViewResult();
  v9 = sub_1D5BA6EF4();
  *v7 = v0;
  v7[1] = sub_1D676C178;
  v10 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 2, v6, v8, v9, v10);
}

uint64_t sub_1D676C178()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D5E792F8;
  }

  else
  {
    v2 = sub_1D676C28C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D676C28C()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D676C2F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a4;
  v27 = a3;
  v28 = a5;
  v7 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  sub_1D5B6C0A0(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - v12;
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *a1;
  if (*(*a1 + 16) && (v17 = sub_1D5B69D90(*(a2 + 16), *(a2 + 24)), (v18 & 1) != 0))
  {
    *v28 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v20 = sub_1D726294C();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    sub_1D676CBD4(v26, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v21 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v25 = v15;
    v22[4] = v27;
    sub_1D676CA40(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    *(v22 + ((v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

    v23 = sub_1D6737538(0, 0, v13, &unk_1D72E9008, v22);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a1;
    sub_1D6D7AF94(v23, v25, v14, isUniquelyReferenced_nonNull_native);

    *a1 = v29;
    *v28 = v23;
  }

  return result;
}

uint64_t sub_1D676C5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a4;
  type metadata accessor for DebugFormatCanvasBindResult();
  v9 = swift_task_alloc();
  v6[4] = v9;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1D676C698;

  return sub_1D676B154(v9, a5, a6);
}

uint64_t sub_1D676C698()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D676C9B8;
  }

  else
  {
    v2 = sub_1D676C7AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D676C7AC()
{
  v0[7] = *(v0[3] + 16);
  type metadata accessor for DebugFormatCanvasTracer();
  v1 = swift_allocObject();
  v0[8] = v1;
  sub_1D61F55EC();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  sub_1D726290C();
  v0[9] = sub_1D72628FC();
  v4 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D676C890, v4, v3);
}

uint64_t sub_1D676C890()
{
  v1 = v0[8];
  v2 = v0[4];

  v0[10] = sub_1D5F2882C(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1D676C920, 0, 0);
}

uint64_t sub_1D676C920()
{
  v1 = v0[10];
  v2 = v0[2];
  sub_1D676CD8C(v0[4], type metadata accessor for DebugFormatCanvasBindResult);
  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D676C9B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D676CA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D676CAA4(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspaceCanvasSection() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D676B574(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D676CBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D676CC5C(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspaceCanvasSection() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D676C5B0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D676CD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D676CDFC()
{
  if (*v0)
  {
    return 0xD00000000000002BLL;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

unint64_t sub_1D676CE38(uint64_t a1)
{
  result = sub_1D60CEC74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D676CE64()
{
  result = qword_1EC88B228;
  if (!qword_1EC88B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B228);
  }

  return result;
}

char *sub_1D676CEB8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_onServerTap;
  sub_1D5BFDBB4();
  *&v1[v4] = [objc_allocWithZone(v5) init];
  v6 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverButton;
  *&v1[v6] = [objc_opt_self() buttonWithType_];
  *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_maxWidth] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_statusLabel;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v8 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_progressView;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x1E69DCE48]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverReloadQueueLabel;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_editor] = a1;
  v52.receiver = v1;
  v52.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v11 = sub_1D7261A3C();
  v12 = objc_opt_self();
  v13 = &selRef_tertiarySystemBackgroundColor;
  if (v11)
  {
    v13 = &selRef_clearColor;
  }

  v14 = [v12 *v13];
  [v10 setBackgroundColor_];

  [v10 setClipsToBounds_];
  v15 = [v10 layer];

  v16 = sub_1D7261A3C();
  v17 = 4.0;
  if (v16)
  {
    v17 = 0.0;
  }

  [v15 setCornerRadius_];

  v18 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_statusLabel;
  v19 = *&v10[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_statusLabel];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 secondaryLabelColor];
  [v21 setTextColor_];

  v23 = *&v10[v18];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 systemFontOfSize_];
  [v25 setFont_];

  [v10 addSubview_];
  v27 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverButton;
  v28 = *&v10[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverButton];
  v29 = [v20 secondaryLabelColor];
  [v28 setTintColor_];

  v30 = *&v10[v27];
  v31 = sub_1D726203C();
  v32 = [objc_opt_self() systemImageNamed_];

  [v30 setImage:v32 forState:0];
  [*&v10[v27] setPointerInteractionEnabled_];
  [v10 addSubview_];
  v33 = *&v10[v27];
  v34 = *&v10[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_onServerTap];
  v35 = v33;
  sub_1D725F67C();

  v36 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverReloadQueueLabel;
  [*&v10[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverReloadQueueLabel] setUserInteractionEnabled_];
  v37 = *&v10[v36];
  v38 = [v24 systemFontOfSize_];
  [v37 setFont_];

  v39 = *&v10[v36];
  v40 = [v20 whiteColor];
  [v39 setTextColor_];

  v41 = *&v10[v36];
  v42 = [v20 systemBlueColor];
  [v41 setBackgroundColor_];

  [*&v10[v36] setFrame_];
  v43 = [*&v10[v36] layer];
  [v43 setCornerRadius_];

  v44 = [*&v10[v36] layer];
  [v44 setCornerCurve_];

  v45 = [*&v10[v36] layer];
  [v45 setMasksToBounds_];

  [*&v10[v36] setTextAlignment_];
  [*&v10[v36] setAdjustsFontSizeToFitWidth_];
  [v10 addSubview_];
  v46 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_progressView;
  [*&v10[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_progressView] setProgress_];
  v47 = *&v10[v46];
  v48 = [v20 systemBlueColor];
  [v47 setProgressTintColor_];

  v49 = *&v10[v46];
  v50 = [v20 clearColor];
  [v49 setTrackTintColor_];

  [v10 addSubview_];

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D676D738();

  return v10;
}

void sub_1D676D738()
{

  sub_1D725B31C();

  v1 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v1 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {

    sub_1D725B31C();

    v2 = v19;
    v3 = v20;
  }

  else
  {
    v3 = 0xE500000000000000;
    v2 = 0x7964616552;
  }

  sub_1D676DEEC(v0, v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_statusLabel);
  sub_1D676E1E0(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v6 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemFontOfSize_];
  v10 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 secondaryLabelColor];
  *(inited + 104) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v14;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v17 = sub_1D7261D2C();

  v18 = [v15 initWithString:v16 attributes:v17];

  [v4 setAttributedText_];
}

void sub_1D676DA4C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverButton);
  v5 = objc_opt_self();
  if (v3)
  {
    v6 = &selRef_systemBlueColor;
  }

  else
  {
    v6 = &selRef_systemRedColor;
  }

  v7 = [v5 *v6];
  [v4 setTintColor_];

  v8 = *(a1 + OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverReloadQueueLabel);
  v9 = [objc_opt_self() *v6];
  [v8 setBackgroundColor_];
}

void sub_1D676DB34(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverReloadQueueLabel);
  [v2 setHidden_];
  sub_1D72644BC();
  v3 = sub_1D726203C();

  [v2 setText_];
}

void sub_1D676DBF8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  if (sub_1D7261A3C())
  {
    v1 = 8.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverButton];
  [v0 bounds];
  Width = CGRectGetWidth(v17);
  [v0 bounds];
  v4 = Width - CGRectGetHeight(v18) - v1;
  [v0 bounds];
  Height = CGRectGetHeight(v19);
  [v0 bounds];
  [v2 setFrame_];
  v6 = *&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_statusLabel];
  [v0 bounds];
  [v0 bounds];
  CGRectGetHeight(v21);
  sub_1D72632AC();
  [v6 setFrame_];
  v8 = *&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_progressView];
  [v0 bounds];
  v9 = CGRectGetHeight(v22) + -3.0;
  [v0 bounds];
  [v8 setFrame_];
  v10 = *&v0[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverReloadQueueLabel];
  [v2 frame];
  MaxX = CGRectGetMaxX(v24);
  [v10 frame];
  v12 = MaxX - CGRectGetWidth(v25);
  [v2 frame];
  MinY = CGRectGetMinY(v26);
  [v10 frame];
  v14 = CGRectGetWidth(v27);
  [v10 frame];
  [v10 setFrame_];
  v15 = [v10 layer];
  [v10 frame];
  [v15 setCornerRadius_];
}

uint64_t sub_1D676DEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D676E1E0(0, &unk_1EC885080, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v17 - v7;
  v9 = type metadata accessor for DebugFormatWorkspace();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D725B31C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D676E244(v8);
  }

  else
  {
    sub_1D676E2D0(v8, v13);
    v14 = &v13[*(v9 + 20)];
    v15 = *(v14 + 3);
    v17[0] = *(v14 + 2);
    v17[1] = v15;

    MEMORY[0x1DA6F9910](2128928, 0xE300000000000000);
    MEMORY[0x1DA6F9910](a2, a3);
    a2 = v17[0];
    sub_1D5EF0664(v13);
  }

  return a2;
}

void sub_1D676E1E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D676E244(uint64_t a1)
{
  sub_1D676E1E0(0, &unk_1EC885080, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D676E2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspace();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D676E350()
{
  v1 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_onServerTap;
  sub_1D5BFDBB4();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverButton;
  *(v0 + v3) = [objc_opt_self() buttonWithType_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_maxWidth) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_statusLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_progressView;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCE48]) initWithFrame_];
  v6 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasStatusView_serverReloadQueueLabel;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D676E4A4@<X0>(char *a1@<X8>)
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

void sub_1D676E504(uint64_t *a1@<X8>)
{
  v2 = 0x6567616B636170;
  if (*v1)
  {
    v2 = 0x6F5374756F79616CLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEC0000007265766CLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D676E55C(uint64_t a1)
{
  v2 = sub_1D677156C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1D676E5B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D677156C();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1D676E60C(uint64_t a1)
{
  v2 = sub_1D677156C();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1D676E710()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D676E79C()
{
  sub_1D72621EC();
}

uint64_t sub_1D676E814()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D676E89C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F5374756F79616CLL;
  }

  else
  {
    v3 = 0x6567616B636170;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEC0000007265766CLL;
  }

  if (*a2)
  {
    v5 = 0x6F5374756F79616CLL;
  }

  else
  {
    v5 = 0x6567616B636170;
  }

  if (*a2)
  {
    v6 = 0xEC0000007265766CLL;
  }

  else
  {
    v6 = 0xE700000000000000;
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

void sub_1D676E94C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem);
  if (v2)
  {
    goto LABEL_7;
  }

  v3 = v0;

  sub_1D725972C();

  if (v11)
  {
    v4 = sub_1D726203C();
    v5 = [objc_opt_self() systemImageNamed_];

    if (v5)
    {
LABEL_6:
      v7 = v3;
      type metadata accessor for DebugFormatBarButtonItem();
      v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v5 style:0 target:v3 action:sel_doCanvasSortWithSender_];

      v9 = *(v7 + v1);
      *(v7 + v1) = v8;
      v8;

      v2 = 0;
LABEL_7:
      v10 = v2;
      return;
    }

    __break(1u);
  }

  v6 = sub_1D726203C();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D676EAF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v35 = *(a1 + v32[10]);
  sub_1D6771DBC(0, &qword_1EC88B220, type metadata accessor for DebugFormatWorkspaceCanvasItem, MEMORY[0x1E69E62F8]);
  sub_1D6771D48(&qword_1EC88B298);

  v2 = sub_1D72623DC();

  sub_1D67715C0();
  result = sub_1D72640FC();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v34 = result + 64;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v5 << 6);
      v14 = *(*(v2 + 48) + 8 * v13);
      type metadata accessor for DebugFormatWorkspaceCanvasItem();

      v15 = sub_1D72626AC();

      *(v34 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v4[6] + 8 * v13) = v14;
      *(v4[7] + 8 * v13) = v15;
      v16 = v4[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        break;
      }

      v4[2] = v18;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v5 >= v9)
      {
        break;
      }

      v12 = *(v2 + 64 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    v19 = v4[2];
    if (v19)
    {
      v20 = sub_1D5C104B8(v4[2], 0);
      v21 = sub_1D5E2A8C4(&v35, v20 + 4, v19, v4);

      sub_1D5B87E38();
      if (v21 != v19)
      {
        __break(1u);
      }
    }

    v22 = sub_1D72626AC();

    v23 = sub_1D6771A28(v22, v4);

    v24 = *a1;
    v25 = a1[1];
    LOBYTE(v22) = *(a1 + 17);
    v26 = *(a1 + 18);
    sub_1D6771F40(a1 + v32[7], a2 + v32[7], type metadata accessor for DebugFormatWorkspaceGroup);
    v27 = v32[8];
    v28 = sub_1D7259F5C();
    (*(*(v28 - 8) + 16))(a2 + v27, a1 + v27, v28);
    v29 = v32[9];
    v30 = sub_1D7259CFC();
    (*(*(v30 - 8) + 16))(a2 + v29, a1 + v29, v30);
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 16) = 1;
    *(a2 + 17) = v22;
    *(a2 + 18) = v26;
    *(a2 + v32[10]) = v23;
  }

  return result;
}

uint64_t sub_1D676EF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v77 - v11;
  sub_1D6772008();
  v88 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v86 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v85 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v84 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (&v77 - v28);

  sub_1D725972C();

  if ((v89 & 1) == 0)
  {
  }

  v82 = v16;
  v83 = v8;
  v77 = v5;
  v78 = a2;
  v81 = *(a1 + 16);
  if (!v81)
  {
    v32 = MEMORY[0x1E69E7CC8];
LABEL_22:
    v60 = *(v78 + 16);
    if (v60)
    {
      v87 = v32;
      v89 = MEMORY[0x1E69E7CC0];
      v61 = v78;
      sub_1D6998AC8(0, v60, 0);
      v62 = 0;
      v63 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v64 = v61 + v63;
      v65 = v89;
      v84 = *(v77 + 72);
      v85 = v63;
      v66 = v83;
      do
      {
        v67 = v60;
        v68 = v88;
        v69 = *(v88 + 48);
        v70 = v86;
        sub_1D6771F40(v64, &v86[v69], type metadata accessor for DebugFormatWorkspaceCanvasSection);
        v71 = v82;
        *v82 = v62;
        sub_1D67720D8(&v70[v69], v71 + *(v68 + 48), type metadata accessor for DebugFormatWorkspaceCanvasSection);
        sub_1D676F588(v71, v87, v66);
        sub_1D6771FA8(v71, sub_1D6772008);
        v72 = v65;
        v89 = v65;
        v74 = v65[2];
        v73 = v65[3];
        v60 = v67;
        if (v74 >= v73 >> 1)
        {
          sub_1D6998AC8(v73 > 1, v74 + 1, 1);
          v72 = v89;
        }

        ++v62;
        v72[2] = v74 + 1;
        v65 = v72;
        v75 = v84;
        v76 = v72 + v85 + v74 * v84;
        v66 = v83;
        sub_1D67720D8(v83, v76, type metadata accessor for DebugFormatWorkspaceCanvasSection);
        v64 += v75;
      }

      while (v67 != v62);

      return v65;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  v30 = 0;
  v31 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v32 = MEMORY[0x1E69E7CC8];
  v79 = *(v5 + 72);
  v80 = v29;
  while (1)
  {
    v35 = v88;
    v36 = *(v88 + 48);
    *v29 = v30;
    v87 = v31;
    sub_1D6771F40(v31, v29 + v36, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v37 = v84;
    sub_1D6771F40(v29, v84, sub_1D6772008);
    v38 = v37 + *(v35 + 48);
    v39 = *(v38 + 17);
    v40 = *(v38 + 18);
    sub_1D6771FA8(v38, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v41 = v85;
    sub_1D6771F40(v29, v85, sub_1D6772008);
    v42 = v12;
    sub_1D67720D8(v41 + *(v35 + 48), v12, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v32;
    v44 = v40 ? 256 : 0;
    v45 = v32;
    v47 = sub_1D6D63248(v44 | v39, v30);
    v48 = v32[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      break;
    }

    v51 = v46;
    if (v32[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v89;
        if (v46)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v45 = &v89;
        sub_1D6D8376C();
        v32 = v89;
        if (v51)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D6D6FF50(v50, isUniquelyReferenced_nonNull_native);
      v45 = v89;
      v52 = sub_1D6D63248(v44 | v39, v30);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_31;
      }

      v47 = v52;
      v32 = v89;
      if (v51)
      {
LABEL_4:
        v33 = v79;
        v34 = v32[7] + v47 * v79;
        v12 = v42;
        sub_1D6772074(v42, v34);
        v29 = v80;
        sub_1D6771FA8(v80, sub_1D6772008);
        goto LABEL_5;
      }
    }

    v32[(v47 >> 6) + 8] |= 1 << v47;
    v54 = v32[6] + 16 * v47;
    *v54 = v39;
    *(v54 + 1) = v40;
    *(v54 + 8) = v30;
    v33 = v79;
    v55 = v32[7] + v47 * v79;
    v12 = v42;
    sub_1D67720D8(v42, v55, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v29 = v80;
    sub_1D6771FA8(v80, sub_1D6772008);
    v56 = v32[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_30;
    }

    v32[2] = v58;
LABEL_5:
    ++v30;
    v31 = v87 + v33;
    if (v81 == v30)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  sub_1D6771FA8(v45, sub_1D6772008);

  __break(1u);
LABEL_31:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D676F588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v148 = a3;
  v5 = sub_1D7259CFC();
  v145 = *(v5 - 8);
  v146 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v144 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7259F5C();
  v142 = *(v8 - 8);
  v143 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v141 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DebugFormatWorkspaceGroup();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v140 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v14 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v15);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v147 = (&v133 - v20);
  sub_1D6772008();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v139 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v138 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v137 = &v133 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v136 = &v133 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v133 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v133 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v133 - v44;
  sub_1D6771F40(a1, &v133 - v44, sub_1D6772008);
  v150 = v22;
  v46 = &v45[*(v22 + 48)];
  v47 = *(v46 + 17);
  v48 = *(v46 + 18);
  sub_1D6771FA8(v46, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  if (!*(a2 + 16) || (!v48 ? (v49 = 0) : (v49 = 256), v50 = sub_1D6D63248(v49 | v47, *a1), (v51 & 1) == 0))
  {
    sub_1D6771F40(a1, v45, sub_1D6772008);
    v68 = &v45[*(v150 + 48)];
    return sub_1D67720D8(v68, v148, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  }

  v135 = a1;
  sub_1D6771F40(*(a2 + 56) + *(v14 + 72) * v50, v17, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  v52 = v17;
  v53 = v147;
  sub_1D67720D8(v52, v147, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  v54 = *(v53 + *(v149 + 40));
  v134 = v54 >> 62;
  if (v54 >> 62)
  {
    v55 = sub_1D7263BFC();
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v156 = v54;
  v56 = MEMORY[0x1E69E7CC0];
  v155 = v37;
  if (v55)
  {
    v153 = v41;
    v57 = v45;
    v157 = MEMORY[0x1E69E7CC0];
    v58 = &v157;
    sub_1D5BFC364(0, v55 & ~(v55 >> 63), 0);
    if (v55 < 0)
    {
      goto LABEL_63;
    }

    v59 = 0;
    v60 = v157;
    v61 = v156 & 0xC000000000000001;
    do
    {
      if (v61)
      {
        v62 = MEMORY[0x1DA6FB460](v59, v156);
      }

      else
      {
        v62 = *(v156 + 8 * v59 + 32);
      }

      v63 = *(v62 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 24);
      v64 = *(v62 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32);

      v157 = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1D5BFC364((v65 > 1), v66 + 1, 1);
        v60 = v157;
      }

      ++v59;
      *(v60 + 16) = v66 + 1;
      v67 = v60 + 16 * v66;
      *(v67 + 32) = v63;
      *(v67 + 40) = v64;
    }

    while (v55 != v59);
    v56 = MEMORY[0x1E69E7CC0];
    v45 = v57;
    v41 = v153;
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
  }

  v154 = v45;
  v70 = sub_1D5B86020(v60);

  v71 = v135;
  sub_1D6771F40(v135, v41, sub_1D6772008);
  v72 = &v41[*(v150 + 48)];
  v73 = *(v72 + *(v149 + 40));

  sub_1D6771FA8(v72, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  v153 = v70;
  if (v73 >> 62)
  {
    v74 = sub_1D7263BFC();
    if (v74)
    {
      goto LABEL_23;
    }

LABEL_34:

    v76 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v74)
  {
    goto LABEL_34;
  }

LABEL_23:
  v157 = v56;
  v58 = &v157;
  sub_1D5BFC364(0, v74 & ~(v74 >> 63), 0);
  if (v74 < 0)
  {
    goto LABEL_64;
  }

  v75 = 0;
  v76 = v157;
  do
  {
    if ((v73 & 0xC000000000000001) != 0)
    {
      v77 = MEMORY[0x1DA6FB460](v75, v73);
    }

    else
    {
      v77 = *(v73 + 8 * v75 + 32);
    }

    v78 = *(v77 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 24);
    v79 = *(v77 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32);

    v157 = v76;
    v81 = *(v76 + 16);
    v80 = *(v76 + 24);
    if (v81 >= v80 >> 1)
    {
      sub_1D5BFC364((v80 > 1), v81 + 1, 1);
      v76 = v157;
    }

    ++v75;
    *(v76 + 16) = v81 + 1;
    v82 = v76 + 16 * v81;
    *(v82 + 32) = v78;
    *(v82 + 40) = v79;
  }

  while (v74 != v75);

  v71 = v135;
LABEL_35:
  v83 = sub_1D5B86020(v76);

  v84 = sub_1D5BFC390(v153, v83);

  v85 = v154;
  v86 = v155;
  if ((v84 & 1) == 0)
  {
    sub_1D6771FA8(v147, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    sub_1D6771F40(v71, v85, sub_1D6772008);
    v68 = v85 + *(v150 + 48);
    return sub_1D67720D8(v68, v148, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  }

  sub_1D6771F40(v71, v155, sub_1D6772008);
  v87 = v86 + *(v150 + 48);
  v58 = *(v87 + *(v149 + 40));

  sub_1D6771FA8(v87, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  if (v58 >> 62)
  {
    goto LABEL_65;
  }

  v88 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v88)
  {
LABEL_66:
    v90 = MEMORY[0x1E69E7CC8];
LABEL_67:

    v108 = v147[1];
    v155 = *v147;
    LODWORD(v153) = *(v147 + 16);
    v109 = v135;
    v110 = v136;
    sub_1D6771F40(v135, v136, sub_1D6772008);
    v111 = v150;
    v112 = v110 + *(v150 + 48);
    LODWORD(v152) = *(v112 + 17);
    LODWORD(v151) = *(v112 + 18);
    v154 = v108;

    sub_1D6771FA8(v112, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v113 = v137;
    sub_1D6771F40(v109, v137, sub_1D6772008);
    v114 = v113 + *(v111 + 48);
    v115 = v149;
    sub_1D6771F40(v114 + *(v149 + 28), v140, type metadata accessor for DebugFormatWorkspaceGroup);
    sub_1D6771FA8(v114, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v116 = v138;
    sub_1D6771F40(v109, v138, sub_1D6772008);
    v117 = v116 + *(v111 + 48);
    (*(v142 + 16))(v141, v117 + *(v115 + 32), v143);
    sub_1D6771FA8(v117, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v118 = v139;
    sub_1D6771F40(v109, v139, sub_1D6772008);
    v119 = v118 + *(v111 + 48);
    (*(v145 + 16))(v144, v119 + *(v115 + 36), v146);
    sub_1D6771FA8(v119, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v157 = MEMORY[0x1E69E7CC0];
    if (v134)
    {
      v120 = v156;
      v121 = v156 & 0xFFFFFFFFFFFFFF8;
      v122 = sub_1D7263BFC();
      if (v122)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v120 = v156;
      v121 = v156 & 0xFFFFFFFFFFFFFF8;
      v122 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v122)
      {
LABEL_69:
        v123 = 0;
        v124 = v120 & 0xC000000000000001;
        v125 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v126 = v123;
          while (1)
          {
            if (v124)
            {
              v127 = MEMORY[0x1DA6FB460](v126, v120);
              v123 = v126 + 1;
              if (__OFADD__(v126, 1))
              {
                goto LABEL_89;
              }
            }

            else
            {
              if (v126 >= *(v121 + 16))
              {
                goto LABEL_90;
              }

              v127 = *(v120 + 8 * v126 + 32);

              v123 = v126 + 1;
              if (__OFADD__(v126, 1))
              {
LABEL_89:
                __break(1u);
LABEL_90:
                __break(1u);
                goto LABEL_91;
              }
            }

            if (v90[2])
            {
              break;
            }

LABEL_72:
            ++v126;
            if (v123 == v122)
            {
              goto LABEL_88;
            }
          }

          sub_1D5B69D90(*(v127 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 24), *(v127 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32));
          if ((v128 & 1) == 0)
          {
            break;
          }

          MEMORY[0x1DA6F9CE0](v129);
          if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v125 = v157;
          v120 = v156;
          if (v123 == v122)
          {
LABEL_88:

            sub_1D6771FA8(v147, type metadata accessor for DebugFormatWorkspaceCanvasSection);
            v130 = v148;
            v131 = v154;
            *v148 = v155;
            v130[1] = v131;
            *(v130 + 16) = v153;
            *(v130 + 17) = v152;
            *(v130 + 18) = v151;
            v132 = v149;
            sub_1D67720D8(v140, v130 + *(v149 + 28), type metadata accessor for DebugFormatWorkspaceGroup);
            (*(v142 + 32))(v130 + v132[8], v141, v143);
            result = (*(v145 + 32))(v130 + v132[9], v144, v146);
            *(v130 + v132[10]) = v125;
            return result;
          }
        }

        v120 = v156;
        goto LABEL_72;
      }
    }

    v125 = MEMORY[0x1E69E7CC0];
    goto LABEL_88;
  }

LABEL_38:
  v89 = 0;
  v153 = (v58 & 0xFFFFFFFFFFFFFF8);
  v154 = v58 & 0xC000000000000001;
  v90 = MEMORY[0x1E69E7CC8];
  v151 = v88;
  v152 = v58;
  while (1)
  {
    if (v154)
    {
      v91 = MEMORY[0x1DA6FB460](v89, v58);
      v92 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v89 >= *(v153 + 2))
      {
        goto LABEL_60;
      }

      v91 = *(v58 + 8 * v89 + 32);

      v92 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v88 = sub_1D7263BFC();
        if (!v88)
        {
          goto LABEL_66;
        }

        goto LABEL_38;
      }
    }

    v155 = v92;
    v94 = *(v91 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 24);
    v93 = *(v91 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = v90;
    v58 = v90;
    v97 = sub_1D5B69D90(v94, v93);
    v98 = v90[2];
    v99 = (v96 & 1) == 0;
    v100 = v98 + v99;
    if (__OFADD__(v98, v99))
    {
      goto LABEL_61;
    }

    v101 = v96;
    if (v90[3] < v100)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v96)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v58 = &v157;
      sub_1D6D83A04();
      if (v101)
      {
LABEL_39:

        v90 = v157;
        *(*(v157 + 56) + 8 * v97) = v91;

        goto LABEL_40;
      }
    }

LABEL_51:
    v90 = v157;
    *(v157 + 8 * (v97 >> 6) + 64) |= 1 << v97;
    v104 = (v90[6] + 16 * v97);
    *v104 = v94;
    v104[1] = v93;
    *(v90[7] + 8 * v97) = v91;

    v105 = v90[2];
    v106 = __OFADD__(v105, 1);
    v107 = v105 + 1;
    if (v106)
    {
      goto LABEL_62;
    }

    v90[2] = v107;
LABEL_40:
    ++v89;
    v58 = v152;
    if (v155 == v151)
    {
      goto LABEL_67;
    }
  }

  sub_1D6D7036C(v100, isUniquelyReferenced_nonNull_native);
  v58 = v157;
  v102 = sub_1D5B69D90(v94, v93);
  if ((v101 & 1) == (v103 & 1))
  {
    v97 = v102;
    if (v101)
    {
      goto LABEL_39;
    }

    goto LABEL_51;
  }

LABEL_91:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D6770360()
{
  sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D72816D0;
  v1 = sub_1D726203C();
  v2 = objc_opt_self();
  v3 = [v2 systemImageNamed_];

  if (!v3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  sub_1D725972C();

  if (v11)
  {
    v4 = sub_1D72646CC();

    v5 = v4 & 1;
  }

  else
  {

    v5 = 1;
  }

  sub_1D5B5A498(0, &qword_1EDF04350);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v6;
  *(v0 + 32) = sub_1D726375C();
  v7 = sub_1D726203C();
  v8 = [v2 systemImageNamed_];

  if (!v8)
  {
    goto LABEL_10;
  }

  sub_1D725972C();

  if (v10 != 1)
  {
    sub_1D72646CC();
  }

  sub_1D5B5A498(0, &qword_1EC885090);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 40) = sub_1D726375C();
  sub_1D726340C();
}

void sub_1D677075C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    sub_1D725973C();

    sub_1D676E94C();
    v7 = v6;

    sub_1D725972C();

    if (a3)
    {
      v8 = sub_1D726203C();
      v9 = [objc_opt_self() systemImageNamed_];

      if (v9)
      {
LABEL_6:
        [v7 setImage_];

        return;
      }

      __break(1u);
    }

    v10 = sub_1D726203C();
    v9 = [objc_opt_self() systemImageNamed_];

    if (!v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_6;
  }
}

uint64_t sub_1D6770924@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FormatGroupLayoutFactory.Bound();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DebugFormatCanvasBindResult();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6771DBC(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v30[-v18];
  v20 = *a1;
  v21 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D6771E20(v20 + v21, v19);
  sub_1D6771E20(v19, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6771EB4(v19);
      result = sub_1D6771EB4(v15);
      v24 = 1;
    }

    else
    {
      result = sub_1D6771EB4(v19);
      v24 = 0;
    }

    goto LABEL_14;
  }

  result = sub_1D67720D8(v15, v11, type metadata accessor for DebugFormatCanvasBindResult);
  v25 = *&v11[*(v8 + 20)];
  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1D6771EB4(v19);
    v29 = 0;
    goto LABEL_13;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1DA6FB460](0, v25);
    goto LABEL_9;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v25 + 32);

LABEL_9:
    sub_1D6771F40(v26 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory, v7, type metadata accessor for FormatGroupLayoutFactory.Bound);

    v27 = v7[4];
    v28 = v7[5];
    __swift_project_boxed_opaque_existential_1(v7 + 1, v27);
    (*(v28 + 32))(&v31, v27, v28);
    sub_1D6771EB4(v19);
    sub_1D6771FA8(v7, type metadata accessor for FormatGroupLayoutFactory.Bound);
    v29 = v31;
LABEL_13:
    v24 = -v29;
    result = sub_1D6771FA8(v11, type metadata accessor for DebugFormatCanvasBindResult);
LABEL_14:
    *a2 = v24;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6770C64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FormatGroupLayoutFactory.Bound();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugFormatCanvasBindResult();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6771DBC(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  v20 = *a1;
  v21 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D6771E20(v20 + v21, v19);
  sub_1D6771E20(v19, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D6771EB4(v19);
      result = sub_1D6771EB4(v15);
      v24 = 1;
    }

    else
    {
      result = sub_1D6771EB4(v19);
      v24 = 0;
    }

    goto LABEL_14;
  }

  result = sub_1D67720D8(v15, v11, type metadata accessor for DebugFormatCanvasBindResult);
  v25 = *&v11[*(v8 + 20)];
  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:
    sub_1D6771EB4(v19);
    v28 = 0;
    goto LABEL_13;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1DA6FB460](0, v25);
    goto LABEL_9;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v25 + 32);

LABEL_9:
    sub_1D6771EB4(v19);
    sub_1D6771F40(v26 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory, v7, type metadata accessor for FormatGroupLayoutFactory.Bound);

    v27 = *&v7[*(v4 + 64)];

    sub_1D6771FA8(v7, type metadata accessor for FormatGroupLayoutFactory.Bound);
    v28 = *(v27 + 16);

LABEL_13:
    v24 = -v28;
    result = sub_1D6771FA8(v11, type metadata accessor for DebugFormatCanvasBindResult);
LABEL_14:
    *a2 = v24;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1D6770F90(void *a1)
{

  sub_1D725972C();

  if (v13)
  {

    sub_1D725972C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }

    v2 = sub_1D72646CC();

    if (v2)
    {
      return;
    }

    sub_1D725973C();

    sub_1D725972C();

    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }

    v3 = sub_1D726203C();
    v4 = [objc_opt_self() systemImageNamed_];

    if (v4)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  sub_1D725972C();

  if (v10 == 1)
  {
LABEL_8:

    return;
  }

  v5 = sub_1D72646CC();

  if ((v5 & 1) == 0)
  {

    sub_1D725973C();

    sub_1D725972C();

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    v6 = sub_1D726203C();
    v4 = [objc_opt_self() systemImageNamed_];

    if (v4)
    {
LABEL_17:
      [a1 setImage_];

      return;
    }

    __break(1u);
LABEL_14:
    v7 = sub_1D726203C();
    v4 = [objc_opt_self() systemImageNamed_];

    if (!v4)
    {
      __break(1u);
LABEL_16:
      v8 = sub_1D726203C();
      v4 = [objc_opt_self() systemImageNamed_];

      if (!v4)
      {
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

    goto LABEL_17;
  }
}

unint64_t sub_1D6771498()
{
  result = qword_1EC88B278;
  if (!qword_1EC88B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B278);
  }

  return result;
}

unint64_t sub_1D67714F0()
{
  result = qword_1EC88B280;
  if (!qword_1EC88B280)
  {
    sub_1D5B58150(255, &qword_1EC88B288, &type metadata for DebugFormatWorkspaceCanvasSort, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B280);
  }

  return result;
}

unint64_t sub_1D677156C()
{
  result = qword_1EC88B290;
  if (!qword_1EC88B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B290);
  }

  return result;
}

void sub_1D67715C0()
{
  if (!qword_1EC88B2A0)
  {
    sub_1D6771DBC(255, &qword_1EC88B220, type metadata accessor for DebugFormatWorkspaceCanvasItem, MEMORY[0x1E69E62F8]);
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88B2A0);
    }
  }
}

uint64_t sub_1D6771658()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  sub_1D7264A0C();
  sub_1D6E23ADC(v2);
  sub_1D72621EC();

  sub_1D72621EC();

  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6771724()
{
  v1 = *(v0 + 8);
  sub_1D6E23ADC(*v0);
  sub_1D72621EC();

  sub_1D72621EC();

  return MEMORY[0x1DA6FC0B0](v1);
}

uint64_t sub_1D67717D4()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  sub_1D7264A0C();
  sub_1D6E23ADC(v2);
  sub_1D72621EC();

  sub_1D72621EC();

  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

BOOL sub_1D677189C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D67718D8(v2 | *a1, *(a1 + 1), v3 | *a2, *(a2 + 1));
}

BOOL sub_1D67718D8(__int16 a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = sub_1D6E23ADC(a1);
  v10 = v9;
  if (v8 == sub_1D6E23ADC(a3) && v10 == v11)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1 & 0x100) != 0)
  {
    v13 = 0x70616373646E616CLL;
  }

  else
  {
    v13 = 0x7469617274726F70;
  }

  if ((a1 & 0x100) != 0)
  {
    v14 = 0xE900000000000065;
  }

  else
  {
    v14 = 0xE800000000000000;
  }

  if ((a3 & 0x100) != 0)
  {
    v15 = 0x70616373646E616CLL;
  }

  else
  {
    v15 = 0x7469617274726F70;
  }

  if ((a3 & 0x100) != 0)
  {
    v16 = 0xE900000000000065;
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  if (v13 == v15 && v14 == v16)
  {

    return a2 == a4;
  }

  v17 = sub_1D72646CC();

  if (v17)
  {
    return a2 == a4;
  }

  return 0;
}

uint64_t sub_1D6771A28(uint64_t a1, uint64_t a2)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a2;
  v3 = 0;
  v29 = a1 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (*(v2 + 16) && (v6 = sub_1D5C5E034(*(v29 + 8 * v3)), (v7 & 1) != 0))
    {
      v8 = *(*(v2 + 56) + 8 * v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v9 = v8 >> 62;
    if (v8 >> 62)
    {
      v10 = sub_1D7263BFC();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v27 = sub_1D7263BFC();
      v13 = v27 + v10;
      if (__OFADD__(v27, v10))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v35 = v10;
    if (result)
    {
      if (!v11)
      {
        v14 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_1D7263BFC();
      goto LABEL_19;
    }

    if (v11)
    {
      goto LABEL_18;
    }

LABEL_19:
    result = sub_1D7263DDC();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_24:
    if (((v16 >> 1) - v15) < v35)
    {
      goto LABEL_40;
    }

    v32 = v4;
    v33 = v3;
    v19 = v14 + 8 * v15 + 32;
    v30 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_42;
      }

      sub_1D6771DBC(0, &qword_1EC88B220, type metadata accessor for DebugFormatWorkspaceCanvasItem, MEMORY[0x1E69E62F8]);
      sub_1D6771D48(&qword_1EC88B2A8);
      for (i = 0; i != v17; ++i)
      {
        v21 = sub_1D6D876E0(v34, i, v8);
        v23 = *v22;

        (v21)(v34, 0);
        *(v19 + 8 * i) = v23;
      }
    }

    else
    {
      type metadata accessor for DebugFormatWorkspaceCanvasItem();
      swift_arrayInitWithCopy();
    }

    v2 = a2;
    v4 = v32;
    v3 = v33;
    if (v35 >= 1)
    {
      v24 = *(v30 + 16);
      v25 = __OFADD__(v24, v35);
      v26 = v24 + v35;
      if (v25)
      {
        goto LABEL_41;
      }

      *(v30 + 16) = v26;
    }

LABEL_4:
    if (++v3 == v31)
    {
      return v4;
    }
  }

  v18 = v14;
  result = sub_1D7263BFC();
  v14 = v18;
  v17 = result;
  if (result)
  {
    goto LABEL_24;
  }

LABEL_3:

  if (v35 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D6771D48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D6771DBC(255, &qword_1EC88B220, type metadata accessor for DebugFormatWorkspaceCanvasItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6771DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6771E20(uint64_t a1, uint64_t a2)
{
  sub_1D6771DBC(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6771EB4(uint64_t a1)
{
  sub_1D6771DBC(0, &qword_1EC88B4D0, type metadata accessor for DebugFormatCanvasBindResult, type metadata accessor for DebugFormatWorkspaceCanvasItemState);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6771F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6771FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6772008()
{
  if (!qword_1EC88B2B0)
  {
    type metadata accessor for DebugFormatWorkspaceCanvasSection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88B2B0);
    }
  }
}

uint64_t sub_1D6772074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67720D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DebugFormatWorkspaceCanvasSectionKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugFormatWorkspaceCanvasSectionKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D6772218()
{
  result = qword_1EC88B2B8;
  if (!qword_1EC88B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88B2B8);
  }

  return result;
}

uint64_t sub_1D6772270()
{

  sub_1D6772548(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_workspace, type metadata accessor for DebugFormatWorkspace);
  sub_1D6772548(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group, type metadata accessor for DebugFormatWorkspaceGroup);
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 144);
  v7[8] = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 128);
  v7[9] = v1;
  v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 160);
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 80);
  v7[4] = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 64);
  v7[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 112);
  v7[6] = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 96);
  v7[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 16);
  v7[0] = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas);
  v7[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 48);
  v7[2] = *(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32);
  v7[3] = v5;
  sub_1D5ECF08C(v7);
  sub_1D6772548(v0 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state, sub_1D67724F0);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatWorkspaceCanvasItem()
{
  result = qword_1EC88B2C0;
  if (!qword_1EC88B2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D67723CC()
{
  type metadata accessor for DebugFormatWorkspace();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DebugFormatWorkspaceGroup();
    if (v1 <= 0x3F)
    {
      sub_1D67724F0();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D67724F0()
{
  if (!qword_1EC88B4D0)
  {
    type metadata accessor for DebugFormatCanvasBindResult();
    v0 = type metadata accessor for DebugFormatWorkspaceCanvasItemState();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88B4D0);
    }
  }
}

uint64_t sub_1D6772548(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D67725A8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___navigationItemManager;
  if (*&v0[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___navigationItemManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___navigationItemManager];
  }

  else
  {
    v3 = sub_1D677264C();
    type metadata accessor for DebugFormatNavigationItemManager();
    v4 = swift_allocObject();
    v5 = v0;
    v2 = sub_1D6A13474(v5, v3, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

char *sub_1D677264C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___statusView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___statusView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___statusView);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceCanvasStatusView());

    v5 = v0;
    v6 = sub_1D676CEB8(v4);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_1D67726D8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___generator;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___generator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___generator);
  }

  else
  {
    type metadata accessor for DebugFormatWorkspaceCanvasLayoutGenerator();
    v2 = swift_allocObject();
    sub_1D677DDFC(0, &unk_1EC88B480, &qword_1EC883500, &unk_1EC88B490, type metadata accessor for DebugFormatCanvasBindResult);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    v4 = MEMORY[0x1E69E7CC8];
    *(v3 + 16) = MEMORY[0x1E69E7CC8];
    v2[3] = v3;
    sub_1D677DDFC(0, &unk_1EC88B4A0, &qword_1EC883508, &qword_1EC88B4B0, type metadata accessor for DebugFormatCanvasViewResult);
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    *(v5 + 16) = v4;
    v2[4] = v5;
    type metadata accessor for DebugFormatCanvasGenerator();
    swift_allocObject();

    v2[2] = sub_1D5F26CE8(v6);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_1D6772830()
{
  v1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___exporter;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___exporter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___exporter);
  }

  else
  {
    type metadata accessor for DebugFormatWorkspaceSnapshotExporter();
    swift_allocObject();

    v2 = sub_1D678E4D0(v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1D67728D8()
{
  v1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___sorter;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___sorter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___sorter);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor);
    v5 = type metadata accessor for DebugFormatWorkspaceCanvasSorter();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter____lazy_storage___sortBarButtonItem] = 0;
    *&v6[OBJC_IVAR____TtC8NewsFeed32DebugFormatWorkspaceCanvasSorter_editor] = v4;
    v11.receiver = v6;
    v11.super_class = v5;

    v7 = objc_msgSendSuper2(&v11, sel_init);
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1D6772990(uint64_t *a1, uint64_t a2, uint64_t (*a3)(), void *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();

    v10 = v4;
    sub_1D725972C();

    v11 = a3();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v11 style:0 target:v10 action:*a4];

    v13 = *(v10 + v5);
    *(v10 + v5) = v12;
    v7 = v12;

    v6 = 0;
  }

  v14 = v6;
  return v7;
}

id sub_1D6772A90()
{
  v1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___activateBarButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___activateBarButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___activateBarButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v18[3] = ObjectType;
    v18[0] = v0;
    v5 = v0;
    v6 = sub_1D726203C();
    if (ObjectType)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v18, ObjectType);
      v8 = *(ObjectType - 8);
      v9 = MEMORY[0x1EEE9AC00](v7, v7);
      v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_1D72646AC();
      (*(v8 + 8))(v11, ObjectType);
      __swift_destroy_boxed_opaque_existential_1(v18);
    }

    else
    {
      v12 = 0;
    }

    type metadata accessor for DebugFormatBarButtonItem();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = [v13 initWithTitle:v6 style:0 target:v12 action:{sel_doActivateWithSender_, v18[0]}];

    swift_unknownObjectRelease();
    v15 = *&v0[v1];
    *&v0[v1] = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_1D6772C58()
{
  v1 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem);
  }

  else
  {
    v4 = sub_1D6772CB8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D6772CB8()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(sub_1D725E86C());
  v3 = sub_1D725E85C();
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  [v5 setTintColor_];

  return v5;
}

void sub_1D6772DD4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    goto LABEL_4;
  }

  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v9 style:0 target:v4 action:*a4];

    v11 = *(v4 + v5);
    *(v4 + v5) = v10;
    v10;

    v6 = 0;
LABEL_4:
    v12 = v6;
    return;
  }

  __break(1u);
}

void sub_1D6772EB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask);
  v2 = sub_1D6772C58();
  v3 = v2;
  if (v1)
  {
    [v2 setSecondaryActionsArePrimary_];

    v4 = (v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem);
    v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem);
    sub_1D5B5A498(0, &qword_1EDF04350);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v5;
    v8 = sub_1D726375C();
    [v7 setPrimaryAction_];

    v9 = *v4;
    v10 = sub_1D726203C();
    v11 = &selRef_systemBlueColor;
  }

  else
  {
    [v2 setSecondaryActionsArePrimary_];

    v4 = (v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem);
    [*(v0 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem) setPrimaryAction_];
    v9 = *v4;
    v10 = sub_1D726203C();
    v11 = &selRef_secondaryLabelColor;
  }

  v12 = [objc_opt_self() systemImageNamed_];

  [v9 setImage_];
  v13 = *v4;
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 *v11];
  [v15 setTintColor_];
}

void sub_1D6773104()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask])
    {

      sub_1D5BA6EF4();
      sub_1D726296C();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask) = 0;

    sub_1D6772EB4(v4);
  }
}

uint64_t sub_1D67731E8(uint64_t a1)
{
  v2 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D677A398(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1D677E3E4(a1, &v17 - v13, sub_1D677A398);

  sub_1D725B32C();

  v14 = sub_1D6772A90();

  sub_1D725B31C();

  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1D677DBBC(v10, sub_1D677A398);
    v15 = 0;
  }

  else
  {
    sub_1D677E3E4(v10, v6, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
    sub_1D677DBBC(v10, sub_1D677A398);
    v15 = sub_1D6A3B24C();
    sub_1D677DBBC(v6, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
  }

  [v14 setEnabled_];

  return sub_1D677DBBC(a1, sub_1D677A398);
}

void sub_1D6773458()
{
  v1 = v0;
  v2 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v68 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D677A398(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v69 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v67 = v64 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v64 - v13;
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DebugFormatWorkspace();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v64 - v26;
  v28 = sub_1D67726D8();
  v29 = v28[3];
  os_unfair_lock_lock((v29 + 24));

  v30 = MEMORY[0x1E69E7CC8];
  *(v29 + 16) = MEMORY[0x1E69E7CC8];
  os_unfair_lock_unlock((v29 + 24));
  v31 = v28[4];
  os_unfair_lock_lock((v31 + 24));

  *(v31 + 16) = v30;
  os_unfair_lock_unlock((v31 + 24));

  if (*&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_prewarmTask])
  {
    sub_1D5BA6EF4();

    sub_1D726296C();
  }

  v32 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  sub_1D677E3E4(&v1[v32], v18, sub_1D60CB67C);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D677DBBC(v18, sub_1D60CB67C);
    goto LABEL_7;
  }

  sub_1D677E2B8(v18, v27, type metadata accessor for DebugFormatWorkspace);
  v33 = *&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor];

  sub_1D725B31C();

  v34 = aBlock[0];
  if ((aBlock[0] & 0xFF00) != 0x200)
  {
    v44 = &v27[*(v19 + 20)];
    v45 = *(v44 + 1);
    v65 = *v44;
    v66 = v33;
    v46 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController__selection;

    sub_1D725B31C();

    v47 = *(v70 + 48);
    if (v47(v14, 1, v71))
    {
      sub_1D677DBBC(v14, sub_1D677A398);

      v48 = v71;
    }

    else
    {
      v64[0] = v47;
      v64[1] = v46;
      v49 = v68;
      sub_1D677E3E4(v14, v68, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
      sub_1D677DBBC(v14, sub_1D677A398);
      sub_1D677E3E4(v49, v23, type metadata accessor for DebugFormatWorkspace);
      sub_1D677DBBC(v49, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
      v50 = &v23[*(v19 + 20)];
      v52 = *v50;
      v51 = *(v50 + 1);

      sub_1D677DBBC(v23, type metadata accessor for DebugFormatWorkspace);
      if (v65 == v52 && v45 == v51)
      {

        v48 = v71;
      }

      else
      {
        v53 = sub_1D72646CC();

        v48 = v71;
        if ((v53 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v54 = v67;
      sub_1D725B31C();

      if ((v64[0])(v54, 1, v48))
      {
        sub_1D677DBBC(v54, sub_1D677A398);
      }

      else
      {
        v55 = v68;
        sub_1D677E3E4(v54, v68, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
        sub_1D677DBBC(v54, sub_1D677A398);
        v56 = (v55 + *(v48 + 20));
        v57 = *v56;
        v58 = v56[1];
        sub_1D677DBBC(v55, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
        if (v58)
        {
          v59 = 256;
        }

        else
        {
          v59 = 0;
        }

        v60 = sub_1D67F7A4C(v34 & 0x1FF, v59 | v57);
        v61 = v34 & 0x1FF;
        if (v60)
        {
LABEL_23:
          sub_1D6773D6C(v27, v61);
          sub_1D677DBBC(v27, type metadata accessor for DebugFormatWorkspace);
          v42 = sub_1D6772C58();

          sub_1D725B31C();

          if (LOBYTE(aBlock[0]) == 1)
          {
            v43 = *&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections];
            goto LABEL_25;
          }

LABEL_26:
          v63 = 0;
          goto LABEL_27;
        }
      }
    }

LABEL_22:
    v62 = v69;
    (*(v70 + 56))(v69, 1, 1, v48);
    sub_1D67731E8(v62);
    v61 = v34 & 0x1FF;
    goto LABEL_23;
  }

  sub_1D677DBBC(v27, type metadata accessor for DebugFormatWorkspace);
LABEL_7:
  v35 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections;
  *&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections] = MEMORY[0x1E69E7CC0];

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 16) = v1;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D677E160;
  *(v38 + 24) = v37;
  aBlock[4] = sub_1D5DF8E8C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D69C9704;
  aBlock[3] = &block_descriptor_30;
  v39 = _Block_copy(aBlock);
  v40 = v1;

  [v36 performWithoutAnimation_];
  _Block_release(v39);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if ((v36 & 1) == 0)
  {
    v41 = v69;
    (*(v70 + 56))(v69, 1, 1, v71);
    sub_1D67731E8(v41);
    [*&v40[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView] reloadData];
    v42 = sub_1D6772C58();

    sub_1D725B31C();

    if (LOBYTE(aBlock[0]) == 1)
    {
      v43 = *&v1[v35];
LABEL_25:
      v63 = *(v43 + 16) != 0;
LABEL_27:
      [v42 setEnabled_];

      return;
    }

    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_1D6773D6C(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DebugFormatWorkspace();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v43 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D677A3CC(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38[-v11];
  v44 = a2;
  v41 = a1;
  v13 = sub_1D677A430(a1, a2 & 0x1FF);
  v14 = sub_1D67728D8();
  v15 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections;

  v40 = v13;
  v17 = sub_1D676EF1C(v16, v13);

  *&v3[v15] = v17;

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D677E6A0;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1D677E6A4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D69C9704;
  aBlock[3] = &block_descriptor_41;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  [v18 performWithoutAnimation_];
  _Block_release(v21);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v24 = *&v22[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor];
    v25 = v44;
    v39 = (v44 >> 8) & 1;
    v26 = *&v3[v15];
    type metadata accessor for DebugFormatWorkspaceCanvasStatusProgress();
    swift_allocObject();

    v27 = sub_1D676A954(v24, v26, 0xD000000000000015, 0x80000001D73D4250);
    v28 = sub_1D726294C();
    v29 = v12;
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    v30 = v43;
    sub_1D677E3E4(v41, v43, type metadata accessor for DebugFormatWorkspace);
    sub_1D726290C();
    v31 = v22;

    v32 = sub_1D72628FC();
    v33 = (*(v42 + 80) + 56) & ~*(v42 + 80);
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    v34[2] = v32;
    v34[3] = v35;
    v34[4] = v40;
    v34[5] = v31;
    v34[6] = v27;
    sub_1D677E2B8(v30, v34 + v33, type metadata accessor for DebugFormatWorkspace);
    v36 = v34 + v33 + v7;
    *v36 = v25;
    v36[1] = v39;
    v37 = sub_1D6736BD4(0, 0, v29, &unk_1D72E94A0, v34);

    *&v31[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_prewarmTask] = v37;
  }

  return result;
}

id sub_1D67741EC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1D677A398(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___navigationItemManager] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___generator] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___exporter] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___sorter] = 0;
  v13 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v2[v13] = v14;
  v15 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  aBlock[4] = sub_1D70DF728;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D677C898;
  aBlock[3] = &block_descriptor_42;
  v17 = _Block_copy(aBlock);
  v18 = [v16 initWithSectionProvider_];
  _Block_release(v17);

  v19 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v18 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v2[v15] = v19;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___devicesBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___userInterfaceBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___interfaceLayoutDirectionBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___activateBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___dimissBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___statusView] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_prewarmTask] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask] = 0;
  v20 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController__selection;
  v21 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_1D677E3E4(v12, v8, sub_1D677A398);
  sub_1D677A3CC(0, &unk_1EC88B450, sub_1D677A398, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v22 = sub_1D725B2FC();
  sub_1D677DBBC(v12, sub_1D677A398);
  *&v2[v20] = v22;
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections] = MEMORY[0x1E69E7CC0];
  v23 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  v24 = type metadata accessor for DebugFormatWorkspace();
  (*(*(v24 - 8) + 56))(&v2[v23], 1, 1, v24);
  *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor] = a1;
  v26.receiver = v2;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D67745C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D725EF8C();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[1] = ObjectType;
  v44.receiver = v1;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_viewDidLoad, v6);
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 systemBackgroundColor];
  [v10 setBackgroundColor_];

  v13 = *&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView];
  v14 = [v11 systemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = [v1 navigationItem];
  v43[0] = v11;
  v16 = [v11 secondarySystemBackgroundColor];
  sub_1D71CD7DC(v15, v16);

  sub_1D677DC1C();
  sub_1D7262FAC();
  type metadata accessor for DebugFormatWorkspaceCanvasHeaderView();
  v17 = *MEMORY[0x1E69D8478];
  v18 = *(v4 + 104);
  v18(v8, v17, v3);
  sub_1D7262F9C();
  v19 = *(v4 + 8);
  v19(v8, v3);
  sub_1D5B5A498(0, &qword_1EC88B4B8);
  v18(v8, v17, v3);
  sub_1D7262F9C();
  v19(v8, v3);
  [v13 setDataSource_];
  [v13 setDelegate_];
  [v13 _setHiddenPocketEdges_];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = v20;
  [v20 addSubview_];

  v22 = [v1 navigationItem];
  sub_1D5B5A498(0, &qword_1EC88B4C0);
  v23 = sub_1D6774F6C();
  sub_1D677E594(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D728AF30;
  v25 = sub_1D67728D8();
  sub_1D676E94C();
  v27 = v26;

  *(v24 + 32) = v27;
  *(v24 + 40) = sub_1D6772C58();
  sub_1D6772DD4(&OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___dimissBarButtonItem, 0x6B72616D78, 0xE500000000000000, &selRef_doDismiss);
  *(v24 + 48) = v28;
  v29 = sub_1D726317C();

  [v22 setPinnedTrailingGroup_];

  v30 = sub_1D6772A90();
  v31 = [v43[0] systemBlueColor];
  [v30 setTintColor_];

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D72849C0;
  sub_1D6772DD4(&OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___devicesBarButtonItem, 0x672E656E6F687069, 0xEB00000000336E65, &selRef_doDevicesWithSender_);
  *(v32 + 32) = v33;
  *(v32 + 40) = sub_1D6772990(&OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___userInterfaceBarButtonItem, &OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__userInterfaceStyle, sub_1D69FDB6C, &selRef_doLightDarkModeWithSender_);
  *(v32 + 48) = sub_1D6772990(&OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___interfaceLayoutDirectionBarButtonItem, &OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__interfaceLayoutDirection, sub_1D69FDCA8, &selRef_doInterfaceLayoutDirectionWithSender_);
  v34 = objc_opt_self();
  v35 = sub_1D726203C();
  v36 = [v34 ts:v35 internalSystemImageNamed:?];

  if (v36)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = [objc_allocWithZone(ObjCClassFromMetadata) initWithImage:v36 style:0 target:v1 action:sel_doAccessibilityWithSender_];

    *(v32 + 56) = v38;
    v39 = [objc_allocWithZone(ObjCClassFromMetadata) initWithBarButtonSystemItem:5 target:0 action:0];
    v40 = *&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___activateBarButtonItem];
    *(v32 + 64) = v39;
    *(v32 + 72) = v40;
    sub_1D5B5A498(0, &qword_1EDF04590);
    v41 = v40;
    v42 = sub_1D726265C();

    [v1 setToolbarItems_];

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725974C();

    sub_1D725975C();

    sub_1D725B33C();

    sub_1D725B35C();

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1D6774F6C()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(sub_1D725E86C());
  v3 = sub_1D725E85C();
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondaryLabelColor];
  [v5 setTintColor_];

  return v5;
}

uint64_t sub_1D6775084(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D677E3E4(a2, v7, sub_1D60CB67C);
  v8 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  sub_1D677E0FC(v7, a1 + v8);
  swift_endAccess();
  sub_1D6773458();
  return sub_1D677DBBC(v7, sub_1D60CB67C);
}

uint64_t sub_1D677516C(uint64_t a1)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  sub_1D677E3E4(a1 + v6, v5, sub_1D60CB67C);
  swift_beginAccess();
  sub_1D677E0FC(v5, a1 + v6);
  swift_endAccess();
  sub_1D6773458();
  return sub_1D677DBBC(v5, sub_1D60CB67C);
}

uint64_t sub_1D6775264(uint64_t a1, unint64_t *a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a2;
  v9 = sub_1D6772990(&OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___userInterfaceBarButtonItem, &OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__userInterfaceStyle, sub_1D69FDB6C, &selRef_doLightDarkModeWithSender_);
  sub_1D69FDB6C(v8);
  v11 = v10;
  [v9 setImage_];

  v12 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  sub_1D677E3E4(a1 + v12, v7, sub_1D60CB67C);
  swift_beginAccess();
  sub_1D677E0FC(v7, a1 + v12);
  swift_endAccess();
  sub_1D6773458();
  return sub_1D677DBBC(v7, sub_1D60CB67C);
}

uint64_t sub_1D67753C0(uint64_t a1, uint64_t *a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a2;
  v9 = sub_1D6772990(&OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___interfaceLayoutDirectionBarButtonItem, &OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__interfaceLayoutDirection, sub_1D69FDCA8, &selRef_doInterfaceLayoutDirectionWithSender_);
  sub_1D69FDCA8(v8);
  v11 = v10;
  [v9 setImage_];

  v12 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  sub_1D677E3E4(a1 + v12, v7, sub_1D60CB67C);
  swift_beginAccess();
  sub_1D677E0FC(v7, a1 + v12);
  swift_endAccess();
  sub_1D6773458();
  return sub_1D677DBBC(v7, sub_1D60CB67C);
}

void sub_1D677551C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = sub_1D6772C58();
  v6 = v4;
  if (v3 == 1)
  {
    [v4 setEnabled_];
  }

  else
  {
    [v4 setEnabled_];

    v5 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask;
    if (*(a1 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask))
    {
      sub_1D5BA6EF4();

      sub_1D726296C();
    }

    *(a1 + v5) = 0;

    sub_1D6772EB4();
  }
}

uint64_t sub_1D6775744(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v4, sel_viewDidDisappear_, a1 & 1);
  if (*&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_prewarmTask])
  {
    sub_1D5BA6EF4();

    sub_1D726296C();
  }

  if (*&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask])
  {
    sub_1D5BA6EF4();

    sub_1D726296C();
  }

  return result;
}

void sub_1D6775974(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();

  sub_1D725B31C();

  v4 = sub_1D62DCC68(*&v44[0]);

  v43 = v4;

  sub_1D725B31C();

  v44[10] = v39;
  v44[11] = v40;
  v44[12] = v41;
  v45 = v42;
  v44[6] = v35;
  v44[7] = v36;
  v44[8] = v37;
  v44[9] = v38;
  v44[2] = v31;
  v44[3] = v32;
  v44[4] = v33;
  v44[5] = v34;
  v44[0] = v29;
  v44[1] = v30;
  if (sub_1D5DEA380(v44) == 1)
  {
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v15 = v29;
    v16 = v30;
    sub_1D5F0B7F0(&v15);
  }

  else
  {
    v5 = BYTE3(v41);
    v6 = BYTE4(v41);
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v15 = v29;
    v16 = v30;
    sub_1D5F0B7F0(&v15);
    if (v6)
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    sub_1D5FEEEB0(v14, v7 | v5);
    v4 = v43;
  }

  v8 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceDeviceViewController());

  v10 = sub_1D6F93CBC(v9, v4, 0, 1);

  v11 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  [v11 setModalPresentationStyle_];
  v12 = [v11 popoverPresentationController];
  if (v12)
  {
    v13 = v12;
    [v12 setBarButtonItem_];
  }

  [v2 presentViewController:v11 animated:1 completion:0];
}

void sub_1D6775CA0(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor];
  v4 = type metadata accessor for DebugFormatAccessibilityViewController();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_tableView;
  v7 = objc_allocWithZone(MEMORY[0x1E69DD020]);

  *&v5[v6] = [v7 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_contentSizeObserver] = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_editor] = v3;
  *&v5[OBJC_IVAR____TtC8NewsFeed38DebugFormatAccessibilityViewController_sections] = &unk_1F5118D08;
  v12.receiver = v5;
  v12.super_class = v4;
  v8 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
  v9 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
  [v9 setModalPresentationStyle_];
  v10 = [v9 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 setBarButtonItem_];
  }

  [v1 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_1D6775F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[211] = a6;
  v6[210] = a5;
  v6[209] = a4;
  v7 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v6[212] = v7;
  v6[213] = *(v7 - 8);
  v6[214] = swift_task_alloc();
  v8 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v6[215] = v8;
  v6[216] = *(v8 - 8);
  v6[217] = swift_task_alloc();
  sub_1D726290C();
  v6[218] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v6[219] = v10;
  v6[220] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D67760A0, v10, v9);
}

uint64_t sub_1D67760A0()
{
  v87 = v0;
  v1 = *(*(v0 + 1672) + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);
  *(v0 + 1768) = v1;
  v2 = *(v1 + 16);
  *(v0 + 1776) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
LABEL_27:

    if (*(v3 + 16))
    {
      v32 = *(v0 + 1688);
      v33 = *(v0 + 1680);
      v84 = *(v0 + 1672);
      v34 = type metadata accessor for DebugFormatWorkspace();
      v35 = v32 + *(v34 + 20);
      v36 = *(v35 + 175);
      v38 = *(v35 + 144);
      v37 = *(v35 + 160);
      *(v0 + 944) = *(v35 + 128);
      *(v0 + 960) = v38;
      *(v0 + 976) = v37;
      *(v0 + 991) = v36;
      v40 = *(v35 + 96);
      v39 = *(v35 + 112);
      v41 = *(v35 + 80);
      *(v0 + 880) = *(v35 + 64);
      *(v0 + 896) = v41;
      *(v0 + 912) = v40;
      *(v0 + 928) = v39;
      v43 = *(v35 + 32);
      v42 = *(v35 + 48);
      v44 = *(v35 + 16);
      *(v0 + 816) = *v35;
      *(v0 + 832) = v44;
      *(v0 + 848) = v43;
      *(v0 + 864) = v42;
      v83 = *(v0 + 816);
      v45 = v3;
      v46 = *(v0 + 824);
      strcpy((v0 + 632), "builtin:editor");
      *(v0 + 647) = -18;
      v47 = *(v35 + 32);
      *(v0 + 648) = *(v35 + 16);
      *(v0 + 664) = v47;
      *(v0 + 680) = 0;
      *(v0 + 681) = *(v35 + 49);
      v48 = *(v35 + 81);
      v49 = *(v35 + 113);
      v50 = *(v35 + 65);
      *(v0 + 729) = *(v35 + 97);
      *(v0 + 745) = v49;
      *(v0 + 697) = v50;
      *(v0 + 713) = v48;
      v51 = *(v35 + 145);
      v52 = *(v35 + 161);
      v53 = *(v35 + 129);
      *(v0 + 809) = *(v35 + 177);
      *(v0 + 777) = v51;
      *(v0 + 793) = v52;
      *(v0 + 761) = v53;
      v54 = (v33 + *(type metadata accessor for DebugFormatWorkspaceCanvasSelection() + 20));
      v55 = *v54;
      LOBYTE(v54) = v54[1];
      v56 = *(v32 + *(v34 + 32));
      v57 = *(v0 + 776);
      *(v0 + 160) = *(v0 + 760);
      *(v0 + 176) = v57;
      *(v0 + 192) = *(v0 + 792);
      *(v0 + 207) = *(v0 + 807);
      v58 = *(v0 + 712);
      *(v0 + 96) = *(v0 + 696);
      *(v0 + 112) = v58;
      v59 = *(v0 + 744);
      *(v0 + 128) = *(v0 + 728);
      *(v0 + 144) = v59;
      v60 = *(v0 + 648);
      *(v0 + 32) = *(v0 + 632);
      *(v0 + 48) = v60;
      v61 = *(v0 + 680);
      *(v0 + 64) = *(v0 + 664);
      *(v0 + 80) = v61;
      *(v0 + 16) = v83;
      *(v0 + 24) = v46;
      *(v0 + 211) = v55;
      *(v0 + 212) = v54;
      *(v0 + 216) = v56;
      *(v0 + 224) = v45;
      nullsub_1();
      v62 = *(v0 + 192);
      v85[10] = *(v0 + 176);
      v85[11] = v62;
      v85[12] = *(v0 + 208);
      v86 = *(v0 + 224);
      v63 = *(v0 + 128);
      v85[6] = *(v0 + 112);
      v85[7] = v63;
      v64 = *(v0 + 160);
      v85[8] = *(v0 + 144);
      v85[9] = v64;
      v65 = *(v0 + 64);
      v85[2] = *(v0 + 48);
      v85[3] = v65;
      v66 = *(v0 + 96);
      v85[4] = *(v0 + 80);
      v85[5] = v66;
      v67 = *(v0 + 32);
      v85[0] = *(v0 + 16);
      v85[1] = v67;
      sub_1D5ECF1C0(v0 + 816, v0 + 1000);
      sub_1D5ECF1C0(v0 + 632, v0 + 1184);

      sub_1D6AA103C(v85);
      v68 = *(v0 + 192);
      *(v0 + 392) = *(v0 + 176);
      *(v0 + 408) = v68;
      *(v0 + 424) = *(v0 + 208);
      *(v0 + 440) = *(v0 + 224);
      v69 = *(v0 + 128);
      *(v0 + 328) = *(v0 + 112);
      *(v0 + 344) = v69;
      v70 = *(v0 + 160);
      *(v0 + 360) = *(v0 + 144);
      *(v0 + 376) = v70;
      v71 = *(v0 + 64);
      *(v0 + 264) = *(v0 + 48);
      *(v0 + 280) = v71;
      v72 = *(v0 + 96);
      *(v0 + 296) = *(v0 + 80);
      *(v0 + 312) = v72;
      v73 = *(v0 + 32);
      *(v0 + 232) = *(v0 + 16);
      *(v0 + 248) = v73;

      sub_1D725B32C();

      sub_1D6AA1610();
      [v84 dismissViewControllerAnimated:1 completion:0];
      strcpy((v0 + 448), "builtin:editor");
      *(v0 + 463) = -18;
      v74 = *(v35 + 32);
      *(v0 + 464) = *(v35 + 16);
      *(v0 + 480) = v74;
      *(v0 + 496) = 0;
      *(v0 + 497) = *(v35 + 49);
      v75 = *(v35 + 65);
      v76 = *(v35 + 81);
      v77 = *(v35 + 113);
      *(v0 + 545) = *(v35 + 97);
      *(v0 + 561) = v77;
      *(v0 + 513) = v75;
      *(v0 + 529) = v76;
      v78 = *(v35 + 129);
      v79 = *(v35 + 145);
      v80 = *(v35 + 161);
      *(v0 + 625) = *(v35 + 177);
      *(v0 + 593) = v79;
      *(v0 + 609) = v80;
      *(v0 + 577) = v78;
      sub_1D5ECF21C(v0 + 448);
    }

    else
    {
    }

    v81 = *(v0 + 8);

    return v81();
  }

  v4 = *(v0 + 1728);
  *(v0 + 628) = *(*(v0 + 1720) + 40);
  *(v0 + 812) = *(v4 + 80);

  v10 = 0;
  while (1)
  {
    *(v0 + 1792) = v3;
    *(v0 + 1784) = v10;
    v11 = *(v0 + 1768);
    if (v10 >= *(v11 + 16))
    {
LABEL_36:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v5, v6, v7, v8, v9);
    }

    v12 = *(v0 + 628);
    v13 = *(v0 + 1736);
    sub_1D677E3E4(v11 + ((*(v0 + 812) + 32) & ~*(v0 + 812)) + *(*(v0 + 1728) + 72) * v10, v13, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v14 = *(v13 + v12);

    sub_1D677DBBC(v13, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v14 >> 62)
    {
      break;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_3:

    v10 = *(v0 + 1784) + 1;
    v3 = MEMORY[0x1E69E7CC0];
    if (v10 == *(v0 + 1776))
    {

      goto LABEL_27;
    }
  }

  v15 = sub_1D7263BFC();
  if (!v15)
  {
    goto LABEL_3;
  }

LABEL_7:
  v16 = *(v0 + 1680);
  v5 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
  v17 = 0;
  v18 = *(v16 + *(v5 + 24));
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6FB460](v17, v14);
      v19 = v5;
    }

    else
    {
      if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v19 = *(v14 + 8 * v17 + 32);
    }

    *(v0 + 1800) = v19;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v21 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group;
    *(v0 + 1808) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group;
    if (*(v18 + 16))
    {
      v22 = sub_1D5B69D90(*(v19 + v21), *(v19 + v21 + 8));
      if (v23)
      {
        v24 = (*(v18 + 56) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
        *(v0 + 1816) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
        v28 = *(v19 + v27 + 24) == v25 && *(v19 + v27 + 32) == v26;
        if (v28 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }
      }
    }

    ++v17;
    if (v20 == v15)
    {
      goto LABEL_3;
    }
  }

  sub_1D725B77C();
  v29 = *(v0 + 1656);
  *(v0 + 1824) = v29;
  v30 = swift_task_alloc();
  *(v0 + 1832) = v30;
  v31 = type metadata accessor for DebugFormatBindingResult();
  v8 = sub_1D5BA6EF4();
  *v30 = v0;
  v30[1] = sub_1D6776720;
  v9 = MEMORY[0x1E69E7288];
  v5 = v0 + 1664;
  v6 = v29;
  v7 = v31;

  return MEMORY[0x1EEE6DA10](v5, v6, v7, v8, v9);
}

uint64_t sub_1D6776720()
{
  v2 = *v1;
  *(*v1 + 1840) = v0;

  if (v0)
  {

    v3 = *(v2 + 1760);
    v4 = *(v2 + 1752);
    v5 = sub_1D6777024;
  }

  else
  {

    v3 = *(v2 + 1760);
    v4 = *(v2 + 1752);
    v5 = sub_1D677686C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D677686C()
{
  v105 = v0;
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1712);
  v3 = *(v0 + 1696);
  v4 = v1 + *(v0 + 1816);
  v5 = *(v0 + 1664);
  sub_1D677E3E4(v1 + *(v0 + 1808), v2, type metadata accessor for FormatWorkspaceGroup);
  v6 = *(v4 + 16);
  v7 = *(v4 + 152);
  v8 = *(v4 + 136);
  v9 = *(v4 + 120);
  *(v0 + 1448) = *(v4 + 104);
  *(v0 + 1464) = v9;
  *(v0 + 1480) = v8;
  *(v0 + 1496) = v7;
  v10 = *(v4 + 88);
  v11 = *(v4 + 72);
  v12 = *(v4 + 56);
  *(v0 + 1384) = *(v4 + 40);
  *(v0 + 1400) = v12;
  *(v0 + 1416) = v11;
  *(v0 + 1432) = v10;
  *(v0 + 1368) = *(v4 + 24);
  *(v2 + v3[5]) = v5;
  *(v2 + v3[6]) = v6;
  v13 = (v2 + v3[7]);
  *v13 = *(v0 + 1368);
  v14 = *(v0 + 1448);
  v15 = *(v0 + 1464);
  v16 = *(v0 + 1496);
  v13[7] = *(v0 + 1480);
  v13[8] = v16;
  v13[5] = v14;
  v13[6] = v15;
  v17 = *(v0 + 1384);
  v18 = *(v0 + 1400);
  v19 = *(v0 + 1432);
  v13[3] = *(v0 + 1416);
  v13[4] = v19;
  v13[1] = v17;
  v13[2] = v18;

  sub_1D5D65D5C(v0 + 1368, v0 + 1512);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + 1792);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_39:
    v21 = sub_1D699164C(0, *(v21 + 16) + 1, 1, v21);
  }

  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D699164C(v22 > 1, v23 + 1, 1, v21);
  }

  v24 = *(v0 + 1712);
  v25 = *(v0 + 1704);

  *(v21 + 16) = v23 + 1;
  sub_1D677E2B8(v24, v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  v26 = *(v0 + 1784) + 1;
  if (v26 == *(v0 + 1776))
  {
LABEL_5:

    if (*(v21 + 16))
    {
      v27 = *(v0 + 1688);
      v28 = *(v0 + 1680);
      v102 = *(v0 + 1672);
      v29 = type metadata accessor for DebugFormatWorkspace();
      v30 = v27 + *(v29 + 20);
      v31 = *(v30 + 175);
      v33 = *(v30 + 144);
      v32 = *(v30 + 160);
      *(v0 + 944) = *(v30 + 128);
      *(v0 + 960) = v33;
      *(v0 + 976) = v32;
      *(v0 + 991) = v31;
      v35 = *(v30 + 96);
      v34 = *(v30 + 112);
      v36 = *(v30 + 80);
      *(v0 + 880) = *(v30 + 64);
      *(v0 + 896) = v36;
      *(v0 + 912) = v35;
      *(v0 + 928) = v34;
      v38 = *(v30 + 32);
      v37 = *(v30 + 48);
      v39 = *(v30 + 16);
      *(v0 + 816) = *v30;
      *(v0 + 832) = v39;
      *(v0 + 848) = v38;
      *(v0 + 864) = v37;
      v100 = v21;
      v40 = *(v0 + 816);
      v41 = *(v0 + 824);
      strcpy((v0 + 632), "builtin:editor");
      *(v0 + 647) = -18;
      v42 = *(v30 + 32);
      *(v0 + 648) = *(v30 + 16);
      *(v0 + 664) = v42;
      *(v0 + 680) = 0;
      *(v0 + 681) = *(v30 + 49);
      v43 = *(v30 + 81);
      v44 = *(v30 + 113);
      v45 = *(v30 + 65);
      *(v0 + 729) = *(v30 + 97);
      *(v0 + 745) = v44;
      *(v0 + 697) = v45;
      *(v0 + 713) = v43;
      v46 = *(v30 + 145);
      v47 = *(v30 + 161);
      v48 = *(v30 + 129);
      *(v0 + 809) = *(v30 + 177);
      *(v0 + 777) = v46;
      *(v0 + 793) = v47;
      *(v0 + 761) = v48;
      v49 = (v28 + *(type metadata accessor for DebugFormatWorkspaceCanvasSelection() + 20));
      v50 = *v49;
      LOBYTE(v49) = v49[1];
      v51 = *(v27 + *(v29 + 32));
      v52 = *(v0 + 776);
      *(v0 + 160) = *(v0 + 760);
      *(v0 + 176) = v52;
      *(v0 + 192) = *(v0 + 792);
      *(v0 + 207) = *(v0 + 807);
      v53 = *(v0 + 712);
      *(v0 + 96) = *(v0 + 696);
      *(v0 + 112) = v53;
      v54 = *(v0 + 744);
      *(v0 + 128) = *(v0 + 728);
      *(v0 + 144) = v54;
      v55 = *(v0 + 648);
      *(v0 + 32) = *(v0 + 632);
      *(v0 + 48) = v55;
      v56 = *(v0 + 680);
      *(v0 + 64) = *(v0 + 664);
      *(v0 + 80) = v56;
      *(v0 + 16) = v40;
      *(v0 + 24) = v41;
      *(v0 + 211) = v50;
      *(v0 + 212) = v49;
      *(v0 + 216) = v51;
      *(v0 + 224) = v100;
      nullsub_1();
      v57 = *(v0 + 192);
      v103[10] = *(v0 + 176);
      v103[11] = v57;
      v103[12] = *(v0 + 208);
      v104 = *(v0 + 224);
      v58 = *(v0 + 128);
      v103[6] = *(v0 + 112);
      v103[7] = v58;
      v59 = *(v0 + 160);
      v103[8] = *(v0 + 144);
      v103[9] = v59;
      v60 = *(v0 + 64);
      v103[2] = *(v0 + 48);
      v103[3] = v60;
      v61 = *(v0 + 96);
      v103[4] = *(v0 + 80);
      v103[5] = v61;
      v62 = *(v0 + 32);
      v103[0] = *(v0 + 16);
      v103[1] = v62;
      sub_1D5ECF1C0(v0 + 816, v0 + 1000);
      sub_1D5ECF1C0(v0 + 632, v0 + 1184);

      sub_1D6AA103C(v103);
      v63 = *(v0 + 192);
      *(v0 + 392) = *(v0 + 176);
      *(v0 + 408) = v63;
      *(v0 + 424) = *(v0 + 208);
      *(v0 + 440) = *(v0 + 224);
      v64 = *(v0 + 128);
      *(v0 + 328) = *(v0 + 112);
      *(v0 + 344) = v64;
      v65 = *(v0 + 160);
      *(v0 + 360) = *(v0 + 144);
      *(v0 + 376) = v65;
      v66 = *(v0 + 64);
      *(v0 + 264) = *(v0 + 48);
      *(v0 + 280) = v66;
      v67 = *(v0 + 96);
      *(v0 + 296) = *(v0 + 80);
      *(v0 + 312) = v67;
      v68 = *(v0 + 32);
      *(v0 + 232) = *(v0 + 16);
      *(v0 + 248) = v68;

      sub_1D725B32C();

      sub_1D6AA1610();
      [v102 dismissViewControllerAnimated:1 completion:0];
      strcpy((v0 + 448), "builtin:editor");
      *(v0 + 463) = -18;
      v69 = *(v30 + 32);
      *(v0 + 464) = *(v30 + 16);
      *(v0 + 480) = v69;
      *(v0 + 496) = 0;
      *(v0 + 497) = *(v30 + 49);
      v70 = *(v30 + 65);
      v71 = *(v30 + 81);
      v72 = *(v30 + 113);
      *(v0 + 545) = *(v30 + 97);
      *(v0 + 561) = v72;
      *(v0 + 513) = v70;
      *(v0 + 529) = v71;
      v73 = *(v30 + 129);
      v74 = *(v30 + 145);
      v75 = *(v30 + 161);
      *(v0 + 625) = *(v30 + 177);
      *(v0 + 593) = v74;
      *(v0 + 609) = v75;
      *(v0 + 577) = v73;
      sub_1D5ECF21C(v0 + 448);
    }

    else
    {
    }

    v98 = *(v0 + 8);

    return v98();
  }

  v101 = v21;
  while (1)
  {
    *(v0 + 1792) = v21;
    *(v0 + 1784) = v26;
    v76 = *(v0 + 1768);
    if (v26 >= *(v76 + 16))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v77 = *(v0 + 628);
    v78 = *(v0 + 1736);
    sub_1D677E3E4(v76 + ((*(v0 + 812) + 32) & ~*(v0 + 812)) + *(*(v0 + 1728) + 72) * v26, v78, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v79 = *(v78 + v77);

    sub_1D677DBBC(v78, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v79 >> 62)
    {
      break;
    }

    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v80)
    {
      goto LABEL_12;
    }

LABEL_8:

    v26 = *(v0 + 1784) + 1;
    v21 = v101;
    if (v26 == *(v0 + 1776))
    {
      goto LABEL_5;
    }
  }

  v80 = sub_1D7263BFC();
  if (!v80)
  {
    goto LABEL_8;
  }

LABEL_12:
  v81 = *(v0 + 1680);
  v21 = 0;
  v82 = *(v81 + *(type metadata accessor for DebugFormatWorkspaceCanvasSelection() + 24));
  while (1)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v83 = MEMORY[0x1DA6FB460](v21, v79);
    }

    else
    {
      if (v21 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v83 = *(v79 + 8 * v21 + 32);
    }

    *(v0 + 1800) = v83;
    v84 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v85 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group;
    *(v0 + 1808) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group;
    if (*(v82 + 16))
    {
      v86 = sub_1D5B69D90(*(v83 + v85), *(v83 + v85 + 8));
      if (v87)
      {
        v88 = (*(v82 + 56) + 16 * v86);
        v89 = *v88;
        v90 = v88[1];
        v91 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
        *(v0 + 1816) = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;
        v92 = *(v83 + v91 + 24) == v89 && *(v83 + v91 + 32) == v90;
        if (v92 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }
      }
    }

    ++v21;
    if (v84 == v80)
    {
      goto LABEL_8;
    }
  }

  sub_1D725B77C();
  v93 = *(v0 + 1656);
  *(v0 + 1824) = v93;
  v94 = swift_task_alloc();
  *(v0 + 1832) = v94;
  v95 = type metadata accessor for DebugFormatBindingResult();
  v96 = sub_1D5BA6EF4();
  *v94 = v0;
  v94[1] = sub_1D6776720;
  v97 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 1664, v93, v95, v96, v97);
}

uint64_t sub_1D6777024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6777114()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1D5B5A498(0, &qword_1EC885090);
  if (!Strong)
  {
    return sub_1D72633FC();
  }

  sub_1D677E594(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D72816D0;
  sub_1D5B5A498(0, &qword_1EDF04350);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v1 + 32) = sub_1D726375C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v1 + 40) = sub_1D726375C();
  v2 = sub_1D726340C();

  return v2;
}

uint64_t sub_1D6777334()
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DebugFormatWorkspace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
    swift_beginAccess();
    sub_1D677E3E4(v10 + v11, v3, sub_1D60CB67C);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      v12 = sub_1D60CB67C;
      v13 = v3;
    }

    else
    {
      v24 = v8;
      sub_1D677E2B8(v3, v8, type metadata accessor for DebugFormatWorkspace);
      v27 = MEMORY[0x1E69E7CC0];
      sub_1D6999498(0, 12, 0);
      v14 = 0;
      v15 = v27;
      do
      {
        v25 = byte_1F50F5608[v14 + 32];

        sub_1D725972C();

        v16 = v26;

        sub_1D725972C();

        v17 = v26;
        v18 = v10;

        sub_1D725972C();

        v19 = v26;
        v27 = v15;
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D6999498((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        v22 = v15 + 24 * v21;
        *(v22 + 32) = v25;
        ++v14;
        *(v22 + 40) = v16;
        *(v22 + 48) = v17;
        *(v22 + 49) = v19;
        v10 = v18;
      }

      while (v14 != 12);
      v23 = v24;
      sub_1D6777670(v24, v15);

      v12 = type metadata accessor for DebugFormatWorkspace;
      v13 = v23;
    }

    return sub_1D677DBBC(v13, v12);
  }

  return result;
}

uint64_t sub_1D6777670(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DebugFormatWorkspace();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  sub_1D677A3CC(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask;
  if (*(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask))
  {
    sub_1D5BA6EF4();

    sub_1D726296C();
  }

  v14 = sub_1D726294C();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D677E3E4(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
  sub_1D726290C();

  v16 = v2;
  v17 = sub_1D72628FC();
  v18 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v17;
  v19[3] = v20;
  v19[4] = v15;
  sub_1D677E2B8(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for DebugFormatWorkspace);
  *(v19 + ((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  *(v16 + v13) = sub_1D6736BD4(0, 0, v12, &unk_1D72E94B0, v19);

  sub_1D6772EB4();
}

uint64_t sub_1D677794C()
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for DebugFormatWorkspace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
    swift_beginAccess();
    sub_1D677E3E4(v10 + v11, v3, sub_1D60CB67C);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      v12 = sub_1D60CB67C;
      v13 = v3;
    }

    else
    {
      sub_1D677E2B8(v3, v8, type metadata accessor for DebugFormatWorkspace);
      sub_1D677E594(0, &qword_1EC88B4E0, &type metadata for DebugFormatWorkspaceSnapshotSettings, MEMORY[0x1E69E6F90]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D7273AE0;

      *(v14 + 32) = sub_1D71D6314();
      *(v14 + 40) = v15;
      *(v14 + 48) = v16 & 1;
      *(v14 + 49) = v17 & 1;
      sub_1D6777670(v8, v14);

      v12 = type metadata accessor for DebugFormatWorkspace;
      v13 = v8;
    }

    return sub_1D677DBBC(v13, v12);
  }

  return result;
}

uint64_t sub_1D6777BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  v7 = sub_1D72585BC();
  v6[36] = v7;
  v8 = *(v7 - 8);
  v6[37] = v8;
  v6[38] = *(v8 + 64);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  sub_1D726290C();
  v6[41] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v6[42] = v10;
  v6[43] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6777CB8, v10, v9);
}

id sub_1D6777CB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1D6772830();
    v4 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor;
    v0[45] = v3;
    v0[46] = v4;
    swift_beginAccess();

    sub_1D725B31C();

    v5 = v0[32];
    if (!v5[2])
    {

      v5 = &unk_1F5111568;
    }

    v0[47] = v5;

    result = [v2 view];
    v0[48] = result;
    if (result)
    {
      v7 = result;
      v8 = *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView];
      v0[49] = v8;
      v9 = v8;
      v10 = swift_task_alloc();
      v0[50] = v10;
      *v10 = v0;
      v10[1] = sub_1D6777F04;
      v11 = v0[40];
      v12 = v0[34];
      v13 = v0[35];

      return sub_1D677FAD0(v11, v12, v5, v13, v7, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      *(v14 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask) = 0;

      sub_1D6772EB4();
    }

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_1D6777F04()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_1D6778354;
  }

  else
  {
    v6 = *(v2 + 384);

    v3 = *(v2 + 336);
    v4 = *(v2 + 344);
    v5 = sub_1D6778044;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D6778044()
{
  aBlock = v0 + 11;
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37];

  sub_1D677E594(0, &qword_1EDF3C5D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 56) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  v6 = *(v3 + 16);
  v6(boxed_opaque_existential_1, v1, v2);
  v7 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v8 = sub_1D726265C();

  v9 = [v7 initWithActivityItems:v8 applicationActivities:0];

  v10 = [v9 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D6772C58();
    [v11 setSourceItem_];
  }

  v13 = v0[44];
  v15 = v0[39];
  v14 = v0[40];
  v16 = v0[37];
  v17 = v0[36];
  v6(v15, v14, v17);
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v19 = swift_allocObject();
  (*(v16 + 32))(v19 + v18, v15, v17);
  v0[15] = sub_1D677E5E4;
  v0[16] = v19;
  v0[11] = MEMORY[0x1E69E9820];
  v0[12] = 1107296256;
  v0[13] = sub_1D67C58F8;
  v0[14] = &block_descriptor_75;
  v20 = _Block_copy(aBlock);

  [v9 setCompletionWithItemsHandler_];
  _Block_release(v20);
  [v13 presentViewController:v9 animated:1 completion:0];

  (*(v16 + 8))(v14, v17);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    *(Strong + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask) = 0;

    sub_1D6772EB4();
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D6778354()
{
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);

  v3 = sub_1D726299C();
  v4 = *(v0 + 408);
  if (v3)
  {
    v5 = *(v0 + 352);
  }

  else
  {
    v6 = v4;
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 408);
    v8 = *(v0 + 368);
    v9 = *(v0 + 352);
    sub_1D5F5EBA0(v4, 0, 0, 0xD000000000000016, 0x80000001D73D4290);

    *(v0 + 16) = 0;
    *(v0 + 24) = 0xD000000000000016;
    *(v0 + 32) = 0x80000001D73D4290;
    *(v0 + 40) = 0xD000000000000017;
    *(v0 + 48) = 0x80000001D73D42B0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    v10 = *(v9 + v8);
    v11 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
    swift_beginAccess();
    v12 = *(v0 + 408);
    v5 = *(v0 + 352);
    if (*(v10 + v11))
    {

      sub_1D6AD3108(v0 + 16);
    }

    else
    {
    }

    sub_1D5F181F4(v0 + 16);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    *(Strong + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask) = 0;

    sub_1D6772EB4();
  }

  v15 = *(v0 + 8);

  return v15();
}

void sub_1D677859C(uint64_t a1, char a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 1) != 0 || !a1)
  {
    v2 = [objc_opt_self() defaultManager];
    v3 = sub_1D725844C();
    v9[0] = 0;
    v4 = [v2 removeItemAtURL:v3 error:v9];

    v5 = v9[0];
    if (v4)
    {

      v6 = v5;
    }

    else
    {
      v7 = v9[0];
      v8 = sub_1D725829C();

      swift_willThrow();
    }
  }
}

void sub_1D67786C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v22 = MEMORY[0x1E69E7CC0];
    v2 = sub_1D67728D8();
    sub_1D6770360();

    MEMORY[0x1DA6F9CE0]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    sub_1D5B5A498(0, &qword_1EC885090);
    v3 = sub_1D726203C();
    v4 = objc_opt_self();
    v5 = [v4 systemImageNamed_];

    sub_1D677E594(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D72816D0;
    sub_1D5B5A498(0, &qword_1EDF04350);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v6 + 32) = sub_1D726375C();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v6 + 40) = sub_1D726375C();
    v8 = sub_1D726340C();
    MEMORY[0x1DA6F9CE0](v8, v9, v10, v11, v12);
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D72816C0;
    v14 = sub_1D726203C();
    v15 = [v4 systemImageNamed_];

    if (v15)
    {
      swift_allocObject();
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      *(v13 + 32) = sub_1D726375C();
      v17 = sub_1D726340C();
      MEMORY[0x1DA6F9CE0](v17, v18, v19, v20, v21);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      sub_1D72633FC();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D5B5A498(0, &qword_1EC885090);
    sub_1D72633FC();
  }
}

void sub_1D6778BBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t type metadata accessor for DebugFormatWorkspaceCanvasViewController()
{
  result = qword_1EC88B370;
  if (!qword_1EC88B370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6778E08()
{
  sub_1D60CB67C(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D67790EC()
{
  v2 = v0;
  sub_1D677A3CC(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v68 - v5;
  v6 = type metadata accessor for DebugFormatWorkspaceCanvasSection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v77 = &v68 - v12;
  v13 = sub_1D7258DAC();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *&v0[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections];
  if (v13 >= *(v14 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v1 = *(v7 + 80);
  v15 = v14 + ((v1 + 32) & ~v1) + *(v7 + 72) * v13;
  v16 = v77;
  sub_1D677E3E4(v15, v77, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  v17 = *(v16 + *(v6 + 40));
  result = sub_1D7258D9C();
  v74 = v8;
  v75 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v19 = MEMORY[0x1DA6FB460]();
    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v19 = *(v17 + 8 * result + 32);

LABEL_7:
  v73 = ~v1;
  sub_1D677DC1C();
  v20 = sub_1D7262F8C();
  v72 = v1;
  v21 = v20;
  v22 = sub_1D725DBEC();
  v23 = *&v22[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_feedView];

  v24 = *&v2[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor];
  if (*(v19 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_device + 1))
  {
    v25 = 256;
  }

  else
  {
    v25 = 0;
  }

  sub_1D67F6CC8(0, 1, 0, 0, 2u, v25 | *(v19 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_device), v93);
  sub_1D705E280(v93);

  v26 = sub_1D725DBEC();
  v27 = *&v26[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_feedView];

  v28 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_workspace;
  v29 = v19 + v28 + *(type metadata accessor for DebugFormatWorkspace() + 20);
  v30 = *(v29 + 175);
  v32 = *(v29 + 144);
  v31 = *(v29 + 160);
  v89[8] = *(v29 + 128);
  v89[9] = v32;
  v90[0] = v31;
  *(v90 + 15) = v30;
  v34 = *(v29 + 96);
  v33 = *(v29 + 112);
  v35 = *(v29 + 80);
  v89[4] = *(v29 + 64);
  v89[5] = v35;
  v89[6] = v34;
  v89[7] = v33;
  v36 = *(v29 + 48);
  v37 = *v29;
  v38 = *(v29 + 16);
  v89[2] = *(v29 + 32);
  v89[3] = v36;
  v89[0] = v37;
  v89[1] = v38;
  v86 = *(v29 + 128);
  v87 = *(v29 + 144);
  v88[0] = *(v29 + 160);
  *(v88 + 15) = *(v29 + 175);
  v82 = *(v29 + 64);
  v83 = *(v29 + 80);
  v84 = *(v29 + 96);
  v85 = *(v29 + 112);
  v78 = *v29;
  v79 = *(v29 + 16);
  v80 = *(v29 + 32);
  v81 = *(v29 + 48);
  sub_1D5ECF1C0(v89, v91);
  v39 = sub_1D62D78BC(v24);
  v91[8] = v86;
  v91[9] = v87;
  *v92 = v88[0];
  *&v92[15] = *(v88 + 15);
  v91[4] = v82;
  v91[5] = v83;
  v91[6] = v84;
  v91[7] = v85;
  v91[0] = v78;
  v91[1] = v79;
  v91[2] = v80;
  v91[3] = v81;
  sub_1D5ECF21C(v91);
  [v27 setBackgroundColor_];

  v40 = sub_1D725DBEC();
  v41 = *&v40[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_label];

  v42 = v19 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas;

  v43 = sub_1D726203C();

  [v41 setText_];

  v44 = sub_1D725DBEC();
  v45 = *&v44[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_priorityView];

  v45[OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasPriorityView_priority] = *(v42 + 72);
  sub_1D700FE14();

  v46 = sub_1D725DBEC();
  sub_1D717DD6C(0, 2);

  v47 = sub_1D725DBEC();
  v48 = *(v19 + 24);
  v49 = &v47[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier];
  *v49 = *(v19 + 16);
  *(v49 + 1) = v48;

  sub_1D725B33C();

  v50 = sub_1D725DC0C();
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  v71 = v2;
  *(v52 + 16) = v51;
  *(v52 + 24) = v19;
  sub_1D5B5A498(0, &qword_1EDF1A650);
  v53 = v21;
  v69 = v19;

  sub_1D725B2EC();

  sub_1D725972C();

  LOBYTE(v42) = v78;
  v54 = sub_1D725DBEC();
  v55 = *&v54[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_bindLabel];

  [v55 setHidden_];
  v56 = sub_1D725DBEC();
  v57 = *&v56[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_priorityView];

  [v57 setHidden_];
  v58 = sub_1D726294C();
  v59 = v76;
  (*(*(v58 - 8) + 56))(v76, 1, 1, v58);
  v60 = swift_allocObject();
  v70 = v53;
  swift_unknownObjectWeakInit();

  v61 = v75;
  sub_1D677E3E4(v77, v75, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  sub_1D726290C();

  v62 = v71;

  v63 = sub_1D72628FC();
  v64 = (v72 + 40) & v73;
  v65 = (v74 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = MEMORY[0x1E69E85E0];
  v66[2] = v63;
  v66[3] = v67;
  v66[4] = v62;
  sub_1D677E2B8(v61, v66 + v64, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  *(v66 + v65) = v69;
  *(v66 + ((v65 + 15) & 0xFFFFFFFFFFFFFFF8)) = v60;

  sub_1D6BD1334(0, 0, v59, &unk_1D72E9480, v66);

  sub_1D677DBBC(v77, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  return v70;
}

void sub_1D6779970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D677A398(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1D677E3E4(a2, v9, sub_1D677A398);
    v12 = type metadata accessor for DebugFormatWorkspaceCanvasSelection();
    v13 = (*(*(v12 - 8) + 48))(v9, 1, v12);
    v14 = sub_1D677A398;
    if (v13 == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_1D6A3B45C(a4);
      v14 = type metadata accessor for DebugFormatWorkspaceCanvasSelection;
    }

    sub_1D677DBBC(v9, v14);
    v16 = sub_1D725DBEC();
    v17 = [v16 layer];

    v18 = objc_opt_self();
    if (v15)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = &selRef_systemBlueColor;
    if ((v15 & 1) == 0)
    {
      v20 = &selRef_clearColor;
    }

    v21 = [v18 *v20];
    v22 = [v21 CGColor];

    [v17 setBorderColor_];
    v23 = sub_1D725DBEC();
    v24 = [v23 layer];

    [v24 setBorderWidth_];
  }
}

uint64_t sub_1D6779BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_1D726290C();
  v7[12] = sub_1D72628FC();
  v9 = sub_1D726285C();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D6779C44, v9, v8);
}

uint64_t sub_1D6779C44()
{
  v0[15] = sub_1D67726D8();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1D6779CE8;
  v3 = v0[9];
  v2 = v0[10];

  return sub_1D676C008(v3, v2);
}

uint64_t sub_1D6779CE8(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = v3[13];
    v5 = v3[14];
    v6 = sub_1D6779F50;
  }

  else
  {

    v4 = v3[13];
    v5 = v3[14];
    v6 = sub_1D6779E04;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1D6779E04()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_13;
  }

  v2 = Strong;
  v3 = *(v0 + 80);
  v4 = sub_1D725DBEC();
  v6 = *&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier];
  v5 = *&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier + 8];

  if (!v5)
  {
    goto LABEL_8;
  }

  if (v6 == *(v3 + 16) && v5 == *(v3 + 24))
  {

    goto LABEL_11;
  }

  v8 = sub_1D72646CC();

  if (v8)
  {
LABEL_11:
    v9 = sub_1D725DBEC();

    sub_1D717DD6C(v10, 0);

    goto LABEL_12;
  }

LABEL_8:

LABEL_12:

LABEL_13:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D6779F50()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_19;
  }

  v2 = Strong;
  v3 = *(v0 + 80);
  v4 = sub_1D725DBEC();
  v6 = *&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier];
  v5 = *&v4[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_identifier + 8];

  if (!v5)
  {
    goto LABEL_8;
  }

  if (v6 == *(v3 + 16) && v5 == *(v3 + 24))
  {

    goto LABEL_11;
  }

  v8 = sub_1D72646CC();

  if (v8)
  {
LABEL_11:
    v9 = *(v0 + 144);
    v10 = sub_1D725DBEC();
    v11 = &v10[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_state];
    v12 = *(v0 + 144);
    if (v10[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_state + 8])
    {
      v13 = v12;
    }

    else
    {
      v14 = *v11;
      v15 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
      v16 = *(*v11 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView);
      v17 = v12;
      sub_1D61F55B4(v14, 0);
      v18 = [v16 superview];
      if (v18)
      {
        v19 = *&v10[OBJC_IVAR____TtC8NewsFeed21DebugFormatCanvasView_canvasView];
        v20 = v18;

        if (v20 == v19)
        {
          [*&v14[v15] removeFromSuperview];
        }
      }

      sub_1D61F55D0(v14, 0);
    }

    v21 = *(v0 + 144);
    v22 = *v11;
    *v11 = v9;
    v23 = v11[8];
    v11[8] = 1;
    v24 = v21;
    v25 = v21;
    sub_1D61F55D0(v22, v23);

    [v10 setNeedsLayout];
    goto LABEL_18;
  }

LABEL_8:

LABEL_18:
LABEL_19:
  v26 = *(v0 + 8);

  return v26();
}

void sub_1D677A3CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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