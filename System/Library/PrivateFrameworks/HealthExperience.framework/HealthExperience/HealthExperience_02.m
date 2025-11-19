void sub_1D0F461C8()
{
  if (!qword_1EE06E4E0)
  {
    sub_1D0F4625C();
    sub_1D0F463BC(&qword_1EE06E530, sub_1D0F4625C);
    v0 = sub_1D0FF5018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E4E0);
    }
  }
}

void sub_1D0F4625C()
{
  if (!qword_1EE06E528)
  {
    sub_1D0F239C0(255, &qword_1EE071000, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    sub_1D0F25ECC(255, &qword_1EE071010);
    v0 = sub_1D0FF4FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E528);
    }
  }
}

void sub_1D0F46304()
{
  if (!qword_1EE06E4A0)
  {
    sub_1D0F4635C();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E4A0);
    }
  }
}

void sub_1D0F4635C()
{
  if (!qword_1EE06E4A8)
  {
    v0 = sub_1D0FF5358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E4A8);
    }
  }
}

uint64_t sub_1D0F463BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0F46404()
{
  if (!qword_1EE06E6D8)
  {
    sub_1D0F461C8();
    sub_1D0F239C0(255, &qword_1EE070E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D0F463BC(&qword_1EE06E4F0, sub_1D0F461C8);
    v0 = sub_1D0FF4D08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E6D8);
    }
  }
}

void sub_1D0F464F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D0F461C8();
    a3(255);
    sub_1D0F463BC(&qword_1EE06E4F0, sub_1D0F461C8);
    v5 = sub_1D0FF4D08();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D0F465A0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D0FF5428();
  v2 = sub_1D0FF59B8();

  *a1 = v2;
  return result;
}

uint64_t sub_1D0F465FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D0F23A60(a1, v4);
  if (!v4[3])
  {
    result = sub_1D0F23B7C(v4);
    goto LABEL_5;
  }

  sub_1D0F4635C();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1D0F46670@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    goto LABEL_7;
  }

  v4 = sub_1D0FF5428();
  if (!*(v3 + 16))
  {

LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v6 = sub_1D0F23568(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1D0F46CF4(*(v3 + 56) + 40 * v6, v9);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D0F4672C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a1;
    v5 = v3;
  }

  else
  {
    v4 = sub_1D0F46798();
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1D0F46798()
{
  v29[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1D0FF4C18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_1D0F239C0(0, &qword_1EE06F8C8, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D0FF9980;
  v6 = *MEMORY[0x1E695C240];
  *(v5 + 32) = *MEMORY[0x1E695C240];
  sub_1D0F27BD4();
  v7 = v6;
  v8 = sub_1D0FF55F8();

  v29[0] = 0;
  v9 = [v4 _ios_meContactWithKeysToFetch_error_];

  if (v9)
  {
    v10 = v29[0];
    v11 = [v9 givenName];
    v12 = sub_1D0FF5428();
  }

  else
  {
    v13 = v29[0];
    v14 = sub_1D0FF4198();

    swift_willThrow();
    sub_1D0FF4BC8();
    v15 = v14;
    v16 = sub_1D0FF4C08();
    v17 = sub_1D0FF5958();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29[0] = v19;
      *v18 = 136446466;
      v20 = sub_1D0FF6468();
      v22 = sub_1D0F1AE0C(v20, v21, v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v28 = v14;
      v23 = v14;
      sub_1D0F25ECC(0, &qword_1EE071010);
      v24 = sub_1D0FF5448();
      v26 = sub_1D0F1AE0C(v24, v25, v29);

      *(v18 + 14) = v26;
      _os_log_impl(&dword_1D0F17000, v16, v17, "[%{public}s] Failed to get me contact: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v19, -1, -1);
      MEMORY[0x1D3882680](v18, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v12;
}

uint64_t sub_1D0F46B38(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    v4 = v2;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = MEMORY[0x1E69E7CC0];

  return MEMORY[0x1EEE0F298](v3, v4, v5);
}

uint64_t sub_1D0F46BA8(uint64_t a1)
{
  v2 = type metadata accessor for SharingEntryProfileInformation();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06FA20 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE06FA30;
  sub_1D0F239C0(0, &qword_1EE06F8C8, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D0FF9980;
  v7 = *MEMORY[0x1E695C1C0];
  *(v6 + 32) = *MEMORY[0x1E695C1C0];
  v8 = v7;
  v9 = sub_1D0F46F10(a1, v6, v5);

  sub_1D0F472C8(a1, v4);
  return ProfileDisplayName.init(sharingEntry:contact:)(v4, v9);
}

void sub_1D0F46D50()
{
  if (!qword_1EC5FC3F8)
  {
    sub_1D0F46DFC(255, &qword_1EC5FC400, type metadata accessor for SharingEntryProfileInformation, MEMORY[0x1E695BED0]);
    sub_1D0FF47C8();
    sub_1D0F46E88();
    v0 = sub_1D0FF4D08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC3F8);
    }
  }
}

void sub_1D0F46DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1D0F25ECC(255, &qword_1EE071010);
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D0F46E88()
{
  result = qword_1EC5FC408;
  if (!qword_1EC5FC408)
  {
    sub_1D0F46DFC(255, &qword_1EC5FC400, type metadata accessor for SharingEntryProfileInformation, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC408);
  }

  return result;
}

id sub_1D0F46F10(uint64_t a1, uint64_t a2, void *a3)
{
  v38[5] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v5 = sub_1D0FF4C18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharingEntryProfileInformation();
  v38[3] = v9;
  v38[4] = &protocol witness table for SharingEntryProfileInformation;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  sub_1D0F472C8(a1, boxed_opaque_existential_0);
  if (!*(boxed_opaque_existential_0 + *(v9 + 28) + 8))
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v11 = sub_1D0FF53E8();
  sub_1D0F27BD4();
  v12 = sub_1D0FF55F8();
  v37[0] = 0;
  v13 = [a3 unifiedContactWithIdentifier:v11 keysToFetch:v12 error:v37];

  v14 = v37[0];
  if (!v13)
  {
    v15 = v14;
    v16 = sub_1D0FF4198();

    swift_willThrow();
    sub_1D0FF4BC8();
    sub_1D0F39694(v38, v37);
    v17 = v16;
    v18 = sub_1D0FF4C08();
    v19 = sub_1D0FF5958();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315651;
      v22 = sub_1D0FCCA08();
      v24 = sub_1D0F1AE0C(v22, v23, &v36);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2081;
      sub_1D0F39694(v37, &v35);
      sub_1D0F25ECC(0, &qword_1EC5FD3E0);
      v25 = sub_1D0FF5448();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v28 = sub_1D0F1AE0C(v25, v27, &v36);

      *(v20 + 14) = v28;
      *(v20 + 22) = 2080;
      v35 = v16;
      v29 = v16;
      sub_1D0F25ECC(0, &qword_1EE071010);
      v30 = sub_1D0FF5458();
      v32 = sub_1D0F1AE0C(v30, v31, &v36);

      *(v20 + 24) = v32;
      _os_log_impl(&dword_1D0F17000, v18, v19, "[%s] Could not fetch CNContact data for '%{private}s': %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v21, -1, -1);
      MEMORY[0x1D3882680](v20, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v37);
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_7;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return v13;
}

uint64_t sub_1D0F472C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingEntryProfileInformation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D0F4732C()
{
  if (!qword_1EC5FC420)
  {
    sub_1D0F46DFC(255, &qword_1EC5FC428, sub_1D0F473C0, MEMORY[0x1E695C028]);
    sub_1D0F4744C();
    v0 = sub_1D0FF5018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC420);
    }
  }
}

void sub_1D0F473C0()
{
  if (!qword_1EC5FC430)
  {
    sub_1D0F239C0(255, &qword_1EE070E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FC430);
    }
  }
}

unint64_t sub_1D0F4744C()
{
  result = qword_1EC5FC438;
  if (!qword_1EC5FC438)
  {
    sub_1D0F46DFC(255, &qword_1EC5FC428, sub_1D0F473C0, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC438);
  }

  return result;
}

void sub_1D0F474D4()
{
  if (!qword_1EC5FC440)
  {
    sub_1D0F4732C();
    sub_1D0FF47C8();
    sub_1D0F463BC(&qword_1EC5FC448, sub_1D0F4732C);
    v0 = sub_1D0FF4D08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC440);
    }
  }
}

uint64_t sub_1D0F47580@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D0FF5988();
  *a1 = result;
  return result;
}

id sub_1D0F475E4(uint64_t a1)
{
  v2 = [objc_opt_self() currentTraitCollection];
  [v2 displayScale];
  v4 = v3;

  v5 = [objc_opt_self() imageDescriptorNamed_];
  [v5 setScale_];
  v6 = [objc_opt_self() genericApplicationIcon];
  v7 = [v6 imageForDescriptor_];
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  result = [v7 CGImage];
  if (result)
  {
    v10 = result;
    v11 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:result scale:0 orientation:v4];

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t SharingEntryProfileInformation.reuseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SharingEntryProfileInformation.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t SharingEntryProfileInformation.uniqueIdentifier.getter()
{
  type metadata accessor for SharingEntryProfileInformation();
  v0 = sub_1D0FF4358();
  MEMORY[0x1D3880AC0](v0);

  return 0xD00000000000001FLL;
}

uint64_t SharingEntryProfileInformation.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharingEntryProfileInformation() + 20);
  v4 = sub_1D0FF43A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SharingEntryProfileInformation.uuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SharingEntryProfileInformation() + 20);
  v4 = sub_1D0FF43A8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SharingEntryProfileInformation.accountIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SharingEntryProfileInformation() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SharingEntryProfileInformation.contactIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharingEntryProfileInformation() + 28));

  return v1;
}

uint64_t SharingEntryProfileInformation.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SharingEntryProfileInformation() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SharingEntryProfileInformation.firstName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharingEntryProfileInformation() + 32));

  return v1;
}

uint64_t SharingEntryProfileInformation.firstName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SharingEntryProfileInformation() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SharingEntryProfileInformation.lastName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharingEntryProfileInformation() + 36));

  return v1;
}

uint64_t SharingEntryProfileInformation.lastName.setter(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SharingEntryProfileInformation() + 36));

  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {

      a1 = 0;
      a2 = 0;
    }
  }

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*SharingEntryProfileInformation.lastName.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(type metadata accessor for SharingEntryProfileInformation() + 36);
  return sub_1D0F47D3C;
}

uint64_t sub_1D0F47D3C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = (*result + *(result + 8));
    v5 = *v3;
    v4 = v3[1];
    if (v4)
    {
      v6 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v6 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    *v3 = v5;
    v3[1] = v6;
  }

  return result;
}

uint64_t _s16HealthExperience30SharingEntryProfileInformationV17accountIdentifierSSvg_0()
{
  v1 = *(v0 + *(type metadata accessor for SharingEntryProfileInformation() + 24));

  return v1;
}

uint64_t SharingEntryProfileInformation.showSyncActivity.setter(char a1)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t SharingEntryProfileInformation.isPaused.setter(char a1)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SharingEntryProfileInformation.numTopicsSharing.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

__n128 SharingEntryProfileInformation.endSharingRelationshipState.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SharingEntryProfileInformation() + 64));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t SharingEntryProfileInformation.endSharingRelationshipState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = v1 + *(result + 64);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t sub_1D0F483D8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D0F48444(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D0F48444(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D0FF5C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D0F48498()
{
  if (!qword_1EE06FAA8)
  {
    sub_1D0F1ACD4(255, &qword_1EE071070);
    v0 = sub_1D0FF52E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06FAA8);
    }
  }
}

uint64_t sub_1D0F48554(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D0F48444(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id SharingEntryProfileInformation.profileType.getter()
{
  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for SharingEntryProfileInformation();
  sub_1D0F483D8(v0 + *(v4 + 68), v3, &qword_1EE06FAA0, sub_1D0F48498);
  sub_1D0F48498();
  v6 = v5;
  v7 = *(v5 - 8);
  if ((*(v7 + 48))(v3, 1, v5) == 1)
  {
    sub_1D0F49C9C(v3, &qword_1EE06FAA0, sub_1D0F48498);
    return 0;
  }

  else
  {
    v9 = sub_1D0FF52B8();
    (*(v7 + 8))(v3, v6);
    v10 = [v9 type];

    return v10;
  }
}

Class SharingEntryProfileInformation.image.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  isa = CNContact.photoOrMonogram(size:)(__PAIR128__(0x4062C00000000000, 0x4062C00000000000)).super.isa;

  return isa;
}

uint64_t SharingEntryProfileInformation.sharingType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = v2 + *(result + 72);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SharingEntryProfileInformation.sharingStatus.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = v2 + *(result + 76);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SharingEntryProfileInformation.sharingMessageDirection.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SharingEntryProfileInformation.notificationStatus.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SharingEntryProfileInformation.wheelchairUse.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SharingEntryProfileInformation();
  v6 = v2 + *(result + 88);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t static SharingEntryProfileInformation.pluginFeedItemUniqueIdentifier(for:uuid:)()
{
  strcpy(v2, "SharingEntry_");
  MEMORY[0x1D3880AC0]();
  MEMORY[0x1D3880AC0](95, 0xE100000000000000);
  v0 = sub_1D0FF4358();
  MEMORY[0x1D3880AC0](v0);

  return v2[0];
}

uint64_t static SharingEntryProfileInformation.decode(from:)()
{
  sub_1D0FF3DA8();
  swift_allocObject();
  sub_1D0FF3D98();
  type metadata accessor for SharingEntryProfileInformation();
  sub_1D0F4F354(&qword_1EC5FC460, type metadata accessor for SharingEntryProfileInformation);
  sub_1D0FF3D88();
}

uint64_t SharingEntryProfileInformation.encode()()
{
  sub_1D0FF3DD8();
  swift_allocObject();
  sub_1D0FF3DC8();
  type metadata accessor for SharingEntryProfileInformation();
  sub_1D0F4F354(&qword_1EC5FC468, type metadata accessor for SharingEntryProfileInformation);
  v0 = sub_1D0FF3DB8();

  return v0;
}

uint64_t SharingEntryProfileInformation.init(sharingEntry:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v65 - v5;
  sub_1D0F48444(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - v9;
  *a2 = 0x4E656C69666F7250;
  *(a2 + 1) = 0xEF6C6C6543656D61;
  v11 = type metadata accessor for SharingEntryProfileInformation();
  v12 = v11[10];
  v13 = sub_1D0FF4348();
  v14 = *(*(v13 - 8) + 56);
  v14(&a2[v12], 1, 1, v13);
  a2[v11[11]] = 0;
  v67 = v11[13];
  v14(&a2[v67], 1, 1, v13);
  v66 = v11[14];
  v14(&a2[v66], 1, 1, v13);
  v15 = &a2[v11[15]];
  *v15 = 0;
  v15[8] = 1;
  v16 = &a2[v11[16]];
  *v16 = xmmword_1D0FF99D0;
  v16[16] = 0;
  v17 = v11[17];
  sub_1D0F48498();
  v19 = *(*(v18 - 8) + 56);
  v69 = v17;
  v19(&a2[v17], 1, 1, v18);
  v20 = [a1 UUID];
  sub_1D0FF4388();

  v21 = [a1 primaryContactIdentifier];
  v22 = sub_1D0FF5428();
  v24 = v23;

  v25 = &a2[v11[6]];
  *v25 = v22;
  v25[1] = v24;
  v26 = [a1 CNContactIdentifier];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D0FF5428();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = &a2[v11[7]];
  *v31 = v28;
  v31[1] = v30;
  v32 = [a1 type];
  v33 = &a2[v11[18]];
  *v33 = v32;
  v33[8] = 0;
  v34 = [a1 status];
  v35 = &a2[v11[19]];
  *v35 = v34;
  v35[8] = 0;
  v36 = [a1 direction];
  v37 = &a2[v11[20]];
  *v37 = v36;
  v37[8] = 0;
  v38 = [a1 notificationStatus];
  v39 = &a2[v11[21]];
  *v39 = v38;
  v39[8] = 0;
  v40 = [a1 userWheelchairMode];
  v41 = &a2[v11[22]];
  *v41 = v40;
  v41[8] = 0;
  v42 = [a1 dateAccepted];
  if (v42)
  {
    v43 = v42;
    sub_1D0FF4328();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = 1;
  v14(v10, v44, 1, v13);
  sub_1D0F48554(v10, &a2[v66], &qword_1EE071260, MEMORY[0x1E6969530]);
  v46 = [a1 dateInvited];
  if (v46)
  {
    v47 = v68;
    v48 = v46;
    sub_1D0FF4328();

    v49 = v47;
    v45 = 0;
  }

  else
  {
    v49 = v68;
  }

  v14(v49, v45, 1, v13);
  sub_1D0F48554(v49, &a2[v67], &qword_1EE071260, MEMORY[0x1E6969530]);
  v50 = [a1 firstName];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1D0FF5428();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0xE000000000000000;
  }

  v55 = &a2[v11[8]];
  *v55 = v52;
  v55[1] = v54;
  v56 = [a1 lastName];
  if (v56)
  {
    v57 = v56;
    v58 = sub_1D0FF5428();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v61 = &a2[v11[9]];
  v62 = v11[12];
  *v61 = v58;
  v61[1] = v60;
  a2[v62] = [a1 isPaused];
  v63 = v70;
  sub_1D0F49334(v36, 0, v34, 0, a1, v70);

  return sub_1D0F48554(v63, &a2[v69], &qword_1EE06FAA0, sub_1D0F48498);
}

uint64_t sub_1D0F49334@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1D0FF4C18();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) != 0 || a1 != 1 || (a4 & 1) != 0 || a3 != 1)
  {
    sub_1D0F48498();
    v19 = *(*(v23 - 8) + 56);
    v20 = v23;
    v21 = a6;
    v22 = 1;
    goto LABEL_8;
  }

  v17 = v14;
  if ([a5 profileIdentifier])
  {
    sub_1D0F1ACD4(0, &qword_1EE071070);
    sub_1D0FF52F8();
    sub_1D0F48498();
    v19 = *(*(v18 - 8) + 56);
    v20 = v18;
    v21 = a6;
    v22 = 0;
LABEL_8:

    return v19(v21, v22, 1, v20);
  }

  sub_1D0FF4B88();
  v25 = a5;
  v26 = sub_1D0FF4C08();
  v27 = sub_1D0FF5968();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v28 = 136315394;
    v42 = type metadata accessor for SharingEntryProfileInformation();
    sub_1D0F4F418();
    v29 = sub_1D0FF5448();
    v40 = v13;
    v31 = sub_1D0F1AE0C(v29, v30, &v43);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v32 = v25;
    v33 = [v32 description];
    v34 = sub_1D0FF5428();
    v36 = v35;

    v37 = sub_1D0F1AE0C(v34, v36, &v43);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1D0F17000, v26, v27, "[%s]: Received accepted sharing entry without associated profile identifier: %s", v28, 0x16u);
    v38 = v41;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v38, -1, -1);
    MEMORY[0x1D3882680](v28, -1, -1);

    (*(v40 + 8))(v16, v17);
  }

  else
  {

    (*(v13 + 8))(v16, v17);
  }

  sub_1D0F48498();
  return (*(*(v39 - 8) + 56))(a6, 1, 1, v39);
}

uint64_t SharingEntryProfileInformation.init(uuid:accountIdentifier:firstName:lastName:sharingType:sharingStatus:sharingMessageDirection:dateInviteAccepted:dateInviteSent:wheelchairUse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v80 = a6;
  v81 = a7;
  v78 = a4;
  v79 = a5;
  v64 = a2;
  v82 = a1;
  v73 = a16;
  v71 = a15;
  v69 = a8;
  v70 = a17;
  v67 = a3;
  v68 = a13;
  v63 = a10;
  v72 = a14;
  v65 = a12;
  v66 = a14 & 1;
  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v62 = &v61 - v19;
  *a9 = 0x4E656C69666F7250;
  *(a9 + 1) = 0xEF6C6C6543656D61;
  v20 = type metadata accessor for SharingEntryProfileInformation();
  v21 = &a9[v20[7]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = v20[10];
  v23 = sub_1D0FF4348();
  v24 = *(*(v23 - 8) + 56);
  v24(&a9[v22], 1, 1, v23);
  a9[v20[11]] = 0;
  a9[v20[12]] = 0;
  v25 = v20[13];
  v24(&a9[v25], 1, 1, v23);
  v26 = v20[14];
  v24(&a9[v26], 1, 1, v23);
  v27 = &a9[v20[15]];
  *v27 = 0;
  v27[8] = 1;
  v28 = &a9[v20[16]];
  *v28 = xmmword_1D0FF99D0;
  v28[16] = 0;
  v29 = v20[17];
  sub_1D0F48498();
  v31 = *(v30 - 8);
  v76 = *(v31 + 56);
  v77 = v29;
  v74 = v30;
  v75 = v31 + 56;
  v76(&a9[v29], 1, 1);
  v32 = v20[5];
  v33 = sub_1D0FF43A8();
  v34 = *(v33 - 8);
  (*(v34 + 16))(&a9[v32], v82, v33);
  v35 = &a9[v20[6]];
  v36 = v67;
  *v35 = v64;
  *(v35 + 1) = v36;
  v37 = &a9[v20[18]];
  *v37 = v69;
  v37[8] = v63 & 1;
  v38 = &a9[v20[19]];
  *v38 = a11;
  v39 = v65;
  v38[8] = v65 & 1;
  v40 = &a9[v20[20]];
  v41 = v68;
  *v40 = v68;
  v40[8] = v66;
  v42 = &a9[v20[21]];
  *v42 = 0;
  v42[8] = 0;
  v43 = &a9[v20[22]];
  *v43 = v70;
  v43[8] = 0;
  v44 = &a9[v26];
  v45 = v71;
  sub_1D0F49C1C(v71, v44);
  v46 = v73;
  sub_1D0F49C1C(v73, &a9[v25]);
  if ((v72 & 1) != 0 || v41 != 1 || (v39 & 1) != 0 || a11 != 1)
  {
    v55 = MEMORY[0x1E6969530];
    sub_1D0F49C9C(v46, &qword_1EE071260, MEMORY[0x1E6969530]);
    sub_1D0F49C9C(v45, &qword_1EE071260, v55);
    (*(v34 + 8))(v82, v33);
    v56 = v77;
    sub_1D0F49C9C(&a9[v77], &qword_1EE06FAA0, sub_1D0F48498);
    result = (v76)(&a9[v56], 1, 1, v74);
  }

  else
  {
    v47 = objc_opt_self();
    v48 = v45;
    v49 = v82;
    v50 = sub_1D0FF4368();
    v51 = [v47 _profileWithUUID_type_];

    sub_1D0F1ACD4(0, &qword_1EE071070);
    v52 = v62;
    sub_1D0FF52F8();
    v53 = MEMORY[0x1E6969530];
    sub_1D0F49C9C(v46, &qword_1EE071260, MEMORY[0x1E6969530]);
    sub_1D0F49C9C(v48, &qword_1EE071260, v53);
    (*(v34 + 8))(v49, v33);
    (v76)(v52, 0, 1, v74);
    result = sub_1D0F48554(v52, &a9[v77], &qword_1EE06FAA0, sub_1D0F48498);
  }

  v57 = &a9[v20[9]];
  v58 = &a9[v20[8]];
  v59 = v79;
  *v58 = v78;
  *(v58 + 1) = v59;
  v60 = v81;
  *v57 = v80;
  *(v57 + 1) = v60;
  return result;
}

uint64_t sub_1D0F49C1C(uint64_t a1, uint64_t a2)
{
  sub_1D0F48444(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F49C9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D0F48444(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D0F49CF8(char a1)
{
  result = 0x6564496573756572;
  switch(a1)
  {
    case 1:
      result = 1684632949;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6D614E7473726966;
      break;
    case 5:
      result = 0x656D614E7473616CLL;
      break;
    case 6:
      result = 0x6164705565746164;
      break;
    case 7:
    case 11:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6465737561507369;
      break;
    case 9:
      result = 0x69766E4965746164;
      break;
    case 10:
    case 17:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x54676E6972616873;
      break;
    case 15:
      result = 0x53676E6972616873;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    case 18:
      result = 0x6168636C65656877;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D0F49F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0F4EC7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0F49F64(uint64_t a1)
{
  v2 = sub_1D0F4D378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F49FA0(uint64_t a1)
{
  v2 = sub_1D0F4D378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingEntryProfileInformation.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D0F4D790(0, &qword_1EC5FC470, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F4D378();
  sub_1D0FF6438();
  LOBYTE(v24) = 0;
  sub_1D0FF61C8();
  if (!v2)
  {
    v10 = type metadata accessor for SharingEntryProfileInformation();
    LOBYTE(v24) = 1;
    sub_1D0FF43A8();
    sub_1D0F4F354(&qword_1EC5FC480, MEMORY[0x1E69695A8]);
    sub_1D0FF6208();
    LOBYTE(v24) = 2;
    sub_1D0FF61C8();
    LOBYTE(v24) = 3;
    sub_1D0FF6188();
    LOBYTE(v24) = 4;
    sub_1D0FF61C8();
    LOBYTE(v24) = 5;
    sub_1D0FF6188();
    LOBYTE(v24) = 6;
    sub_1D0FF4348();
    sub_1D0F4F354(&qword_1EC5FC488, MEMORY[0x1E6969530]);
    sub_1D0FF61B8();
    LOBYTE(v24) = 7;
    sub_1D0FF61D8();
    LOBYTE(v24) = 8;
    sub_1D0FF61D8();
    LOBYTE(v24) = 9;
    sub_1D0FF61B8();
    LOBYTE(v24) = 10;
    sub_1D0FF61B8();
    LOBYTE(v24) = 11;
    sub_1D0FF61A8();
    v11 = (v3 + v10[16]);
    v12 = *(v11 + 16);
    v24 = *v11;
    v25 = v12;
    v26 = 12;
    sub_1D0F4D3CC();
    sub_1D0FF61B8();
    LOBYTE(v24) = 13;
    sub_1D0F48498();
    sub_1D0F4F354(&qword_1EE06E4D0, sub_1D0F48498);
    sub_1D0FF61B8();
    v13 = (v3 + v10[18]);
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 8);
    *&v24 = v14;
    BYTE8(v24) = v13;
    v26 = 14;
    sub_1D0F4D420();
    sub_1D0F4F354(&qword_1EC5FC490, sub_1D0F4D420);
    sub_1D0FF6208();
    v15 = (v3 + v10[19]);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    *&v24 = v16;
    BYTE8(v24) = v15;
    v26 = 15;
    sub_1D0F4D4D0();
    sub_1D0F4F354(&qword_1EC5FC498, sub_1D0F4D4D0);
    sub_1D0FF6208();
    v17 = (v3 + v10[20]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    *&v24 = v18;
    BYTE8(v24) = v17;
    v26 = 16;
    sub_1D0F4D580();
    sub_1D0F4F354(&qword_1EC5FC4A0, sub_1D0F4D580);
    sub_1D0FF6208();
    v19 = (v3 + v10[21]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    *&v24 = v20;
    BYTE8(v24) = v19;
    v26 = 17;
    sub_1D0F4D630();
    sub_1D0F4F354(&qword_1EC5FC4A8, sub_1D0F4D630);
    sub_1D0FF6208();
    v21 = (v3 + v10[22]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 8);
    *&v24 = v22;
    BYTE8(v24) = v21;
    v26 = 18;
    sub_1D0F4D6E0();
    sub_1D0F4F354(&qword_1EC5FC4B0, sub_1D0F4D6E0);
    sub_1D0FF6208();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SharingEntryProfileInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v91 = &v87 - v4;
  sub_1D0F48444(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v92 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v93 = &v87 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v87 - v10;
  v100 = sub_1D0FF43A8();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v94 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F4D790(0, &qword_1EC5FC4B8, MEMORY[0x1E69E6F48]);
  v97 = v12;
  v95 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v87 - v13;
  v15 = type metadata accessor for SharingEntryProfileInformation();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v16 + 40);
  v20 = sub_1D0FF4348();
  v21 = *(*(v20 - 8) + 56);
  v107 = v19;
  v21(v18 + v19, 1, 1, v20);
  v104 = v15[13];
  v21(v18 + v104, 1, 1, v20);
  v103 = v15[14];
  v21(v18 + v103, 1, 1, v20);
  v22 = v18 + v15[16];
  *v22 = xmmword_1D0FF99D0;
  v22[16] = 0;
  v105 = v15;
  v23 = v15[17];
  sub_1D0F48498();
  v25 = v24;
  v26 = *(*(v24 - 8) + 56);
  v102 = v23;
  v106 = v18;
  v26(v18 + v23, 1, 1, v24);
  v27 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D0F4D378();
  v99 = v14;
  v28 = v108;
  sub_1D0FF6428();
  if (!v28)
  {
    v29 = v94;
    v88 = v22;
    v89 = v25;
    LOBYTE(v109) = 0;
    v30 = v97;
    v31 = sub_1D0FF6108();
    v108 = 0;
    v37 = v106;
    *v106 = v31;
    v37[1] = v32;
    LOBYTE(v109) = 1;
    sub_1D0F4F354(&qword_1EC5FC4C0, MEMORY[0x1E69695A8]);
    v40 = v100;
    v41 = v108;
    sub_1D0FF6148();
    v108 = v41;
    v36 = v105;
    if (v41)
    {
      (*(v95 + 8))(v99, v30);
      v33 = 0;
      v34 = 0;
      v35 = 0;
      goto LABEL_5;
    }

    (*(v98 + 32))(v37 + v105[5], v29, v40);
    LOBYTE(v109) = 2;
    v42 = v108;
    v43 = sub_1D0FF6108();
    if (v42)
    {
      v108 = v42;
      (*(v95 + 8))(v99, v30);
      v34 = 0;
      v35 = 0;
      v33 = 1;
      goto LABEL_5;
    }

    v45 = (v37 + v36[6]);
    *v45 = v43;
    v45[1] = v44;
    LOBYTE(v109) = 3;
    v46 = sub_1D0FF60C8();
    v47 = v95;
    v48 = (v37 + v36[7]);
    *v48 = v46;
    v48[1] = v49;
    LOBYTE(v109) = 4;
    v50 = sub_1D0FF6108();
    v51 = (v37 + v36[8]);
    *v51 = v50;
    v51[1] = v52;
    LOBYTE(v109) = 5;
    v53 = sub_1D0FF60C8();
    v108 = 0;
    v54 = (v37 + v36[9]);
    *v54 = v53;
    v54[1] = v55;
    v94 = v55;
    LOBYTE(v109) = 6;
    v56 = sub_1D0F4F354(&qword_1EC5FC4C8, MEMORY[0x1E6969530]);
    v57 = v108;
    sub_1D0FF60F8();
    v108 = v57;
    if (!v57)
    {
      v87 = v56;
      sub_1D0F48554(v96, v37 + v107, &qword_1EE071260, MEMORY[0x1E6969530]);
      LOBYTE(v109) = 7;
      v58 = v108;
      v59 = sub_1D0FF6118();
      if (!v58)
      {
        *(v37 + v36[11]) = v59 & 1;
        LOBYTE(v109) = 8;
        v60 = sub_1D0FF6118();
        v108 = 0;
        *(v37 + v36[12]) = v60 & 1;
        LOBYTE(v109) = 9;
        v61 = v108;
        sub_1D0FF60F8();
        v108 = v61;
        if (!v61)
        {
          sub_1D0F48554(v93, v106 + v104, &qword_1EE071260, MEMORY[0x1E6969530]);
          LOBYTE(v109) = 10;
          v62 = v108;
          sub_1D0FF60F8();
          v108 = v62;
          if (!v62)
          {
            sub_1D0F48554(v92, v106 + v103, &qword_1EE071260, MEMORY[0x1E6969530]);
            LOBYTE(v109) = 11;
            v63 = v108;
            v64 = sub_1D0FF60E8();
            v108 = v63;
            if (!v63)
            {
              v66 = v106 + v105[15];
              *v66 = v64;
              v66[8] = v65 & 1;
              v111 = 12;
              sub_1D0F4D7F4();
              v67 = v108;
              sub_1D0FF60F8();
              v108 = v67;
              if (!v67)
              {
                v68 = v110;
                v69 = v88;
                *v88 = v109;
                v69[16] = v68;
                LOBYTE(v109) = 13;
                sub_1D0F4F354(&qword_1EE06FAB0, sub_1D0F48498);
                v70 = v108;
                sub_1D0FF60F8();
                v108 = v70;
                if (!v70)
                {
                  sub_1D0F48554(v91, v106 + v102, &qword_1EE06FAA0, sub_1D0F48498);
                  sub_1D0F4D420();
                  v111 = 14;
                  sub_1D0F4F354(&qword_1EC5FC4D0, sub_1D0F4D420);
                  v71 = v108;
                  sub_1D0FF6148();
                  v108 = v71;
                  if (!v71)
                  {
                    v72 = BYTE8(v109);
                    v73 = v106 + v105[18];
                    *v73 = v109;
                    v73[8] = v72;
                    sub_1D0F4D4D0();
                    v111 = 15;
                    sub_1D0F4F354(&qword_1EC5FC4D8, sub_1D0F4D4D0);
                    v74 = v108;
                    sub_1D0FF6148();
                    v108 = v74;
                    if (!v74)
                    {
                      v75 = BYTE8(v109);
                      v76 = v106 + v105[19];
                      *v76 = v109;
                      v76[8] = v75;
                      sub_1D0F4D580();
                      v111 = 16;
                      sub_1D0F4F354(&qword_1EC5FC4E0, sub_1D0F4D580);
                      v77 = v108;
                      sub_1D0FF6148();
                      v108 = v77;
                      if (!v77)
                      {
                        v78 = BYTE8(v109);
                        v79 = v106 + v105[20];
                        *v79 = v109;
                        v79[8] = v78;
                        sub_1D0F4D630();
                        v111 = 17;
                        sub_1D0F4F354(&qword_1EC5FC4E8, sub_1D0F4D630);
                        v80 = v108;
                        sub_1D0FF6148();
                        v108 = v80;
                        if (!v80)
                        {
                          v81 = BYTE8(v109);
                          v82 = v106 + v105[21];
                          *v82 = v109;
                          v82[8] = v81;
                          sub_1D0F4D6E0();
                          v111 = 18;
                          sub_1D0F4F354(&qword_1EC5FC4F0, sub_1D0F4D6E0);
                          v83 = v108;
                          sub_1D0FF6148();
                          v108 = v83;
                          if (!v83)
                          {
                            (*(v95 + 8))(v99, v97);
                            v84 = BYTE8(v109);
                            v85 = v106;
                            v86 = v106 + v105[22];
                            *v86 = v109;
                            v86[8] = v84;
                            sub_1D0F472C8(v85, v90);
                            __swift_destroy_boxed_opaque_existential_1Tm(v101);
                            return sub_1D0F4D848(v85);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        (*(v95 + 8))(v99, v97);
        v33 = 1;
        v34 = 1;
        v35 = 1;
        v36 = v105;
        goto LABEL_4;
      }

      v108 = v58;
    }

    (*(v47 + 8))(v99, v97);
    v33 = 1;
    v34 = 1;
    v35 = 1;
    goto LABEL_5;
  }

  v108 = v28;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = v105;
LABEL_4:
  v37 = v106;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1Tm(v101);

  if (v33)
  {
    (*(v98 + 8))(v37 + v36[5], v100);
  }

  if (v34)
  {
  }

  if (v35)
  {
  }

  v38 = MEMORY[0x1E6969530];
  sub_1D0F49C9C(v37 + v107, &qword_1EE071260, MEMORY[0x1E6969530]);
  sub_1D0F49C9C(v37 + v104, &qword_1EE071260, v38);
  sub_1D0F49C9C(v37 + v103, &qword_1EE071260, v38);
  return sub_1D0F49C9C(v37 + v102, &qword_1EE06FAA0, sub_1D0F48498);
}

uint64_t sub_1D0F4B574(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_1D0F4B5AC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

Class sub_1D0F4B5E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  isa = CNContact.photoOrMonogram(size:)(__PAIR128__(0x4062C00000000000, 0x4062C00000000000)).super.isa;

  return isa;
}

uint64_t sub_1D0F4B63C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D0F4B69C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_1D0F4B6D4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

__n128 sub_1D0F4B70C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

unint64_t sub_1D0F4B73C()
{
  v0 = sub_1D0FF4358();
  MEMORY[0x1D3880AC0](v0);

  return 0xD00000000000001FLL;
}

id sub_1D0F4B7EC(uint64_t a1)
{
  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  sub_1D0F483D8(v1 + *(a1 + 68), &v12 - v4, &qword_1EE06FAA0, sub_1D0F48498);
  sub_1D0F48498();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_1D0F49C9C(v5, &qword_1EE06FAA0, sub_1D0F48498);
    return 0;
  }

  else
  {
    v10 = sub_1D0FF52B8();
    (*(v8 + 8))(v5, v7);
    v11 = [v10 type];

    return v11;
  }
}

uint64_t SharingEntryProfileInformation.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D0FF4348();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F48444(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v48 - v11;
  sub_1D0F48498();
  v13 = v12;
  v52 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v48 - v16;
  v17 = type metadata accessor for SharingEntryProfileInformation();
  sub_1D0FF43A8();
  sub_1D0F4F354(&qword_1EE071250, MEMORY[0x1E69695A8]);
  sub_1D0FF5378();
  sub_1D0FF5488();
  if (*(v0 + v17[7] + 8))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  sub_1D0FF5488();
  if (*(v0 + v17[9] + 8))
  {
    sub_1D0FF6358();
    sub_1D0FF5488();
  }

  else
  {
    sub_1D0FF6358();
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  isa = CNContact.photoOrMonogram(size:)(__PAIR128__(0x4062C00000000000, 0x4062C00000000000)).super.isa;

  sub_1D0FF6358();
  v20 = isa;
  sub_1D0FF5C08();

  v21 = (v1 + v17[18]);
  if (*(v21 + 8) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v22 = *v21;
    sub_1D0FF6358();
    MEMORY[0x1D3881950](v22);
  }

  v23 = (v1 + v17[19]);
  if (*(v23 + 8) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v24 = *v23;
    sub_1D0FF6358();
    MEMORY[0x1D3881950](v24);
  }

  v25 = (v1 + v17[16]);
  v26 = *v25;
  if (v26 == 2)
  {
    sub_1D0FF6358();
  }

  else
  {
    v27 = v2;
    v28 = v13;
    v29 = v5;
    v30 = v3;
    v49 = *(v25 + 1);
    v31 = v25[16];
    sub_1D0FF6358();
    MEMORY[0x1D3881950](v26 & 1);
    sub_1D0FF6358();
    if ((v31 & 1) == 0)
    {
      MEMORY[0x1D3881950](v49);
    }

    v3 = v30;
    v5 = v29;
    v13 = v28;
    v2 = v27;
  }

  v32 = (v1 + v17[20]);
  if (v32[1])
  {
    sub_1D0FF6358();
  }

  else
  {
    v33 = *v32;
    sub_1D0FF6358();
    MEMORY[0x1D3881950](v33);
  }

  v34 = (v1 + v17[21]);
  if (*(v34 + 8) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v35 = *v34;
    sub_1D0FF6358();
    MEMORY[0x1D3881950](v35);
  }

  v36 = v51;
  v37 = v52;
  sub_1D0F483D8(v1 + v17[17], v51, &qword_1EE06FAA0, sub_1D0F48498);
  if ((*(v37 + 48))(v36, 1, v13) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v38 = v50;
    (*(v37 + 32))(v50, v36, v13);
    sub_1D0FF6358();
    sub_1D0F4F39C(&qword_1EC5FC4F8, &qword_1EC5FC500);
    sub_1D0FF5378();
    (*(v37 + 8))(v38, v13);
  }

  v39 = v53;
  sub_1D0F483D8(v1 + v17[10], v53, &qword_1EE071260, MEMORY[0x1E6969530]);
  v40 = *(v3 + 48);
  if (v40(v39, 1, v2) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    (*(v3 + 32))(v5, v39, v2);
    sub_1D0FF6358();
    sub_1D0F4F354(&qword_1EC5FC508, MEMORY[0x1E6969530]);
    sub_1D0FF5378();
    (*(v3 + 8))(v5, v2);
  }

  sub_1D0FF6358();
  v41 = v54;
  sub_1D0F483D8(v1 + v17[14], v54, &qword_1EE071260, MEMORY[0x1E6969530]);
  if (v40(v41, 1, v2) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    (*(v3 + 32))(v5, v41, v2);
    sub_1D0FF6358();
    sub_1D0F4F354(&qword_1EC5FC508, MEMORY[0x1E6969530]);
    sub_1D0FF5378();
    (*(v3 + 8))(v5, v2);
  }

  v42 = v55;
  sub_1D0F483D8(v1 + v17[13], v55, &qword_1EE071260, MEMORY[0x1E6969530]);
  if (v40(v42, 1, v2) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    (*(v3 + 32))(v5, v42, v2);
    sub_1D0FF6358();
    sub_1D0F4F354(&qword_1EC5FC508, MEMORY[0x1E6969530]);
    sub_1D0FF5378();
    (*(v3 + 8))(v5, v2);
  }

  v43 = (v1 + v17[15]);
  if (*(v43 + 8) == 1)
  {
    sub_1D0FF6358();
  }

  else
  {
    v44 = *v43;
    sub_1D0FF6358();
    MEMORY[0x1D3881950](v44);
  }

  sub_1D0FF6358();
  v45 = (v1 + v17[22]);
  if (*(v45 + 8) == 1)
  {
    return sub_1D0FF6358();
  }

  v47 = *v45;
  sub_1D0FF6358();
  return MEMORY[0x1D3881950](v47);
}

uint64_t SharingEntryProfileInformation.hashValue.getter()
{
  sub_1D0FF6338();
  SharingEntryProfileInformation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F4C350()
{
  sub_1D0FF6338();
  SharingEntryProfileInformation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F4C394()
{
  sub_1D0FF6338();
  SharingEntryProfileInformation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t SharingEntryProfileInformation.description.getter()
{
  v1 = v0;
  sub_1D0F48444(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v135 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v133 = &v116 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v132 = &v116 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v116 - v9;
  v10 = sub_1D0FF4348();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v120 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v119 = &v116 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v118 = &v116 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v137 = &v116 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v116 - v20;
  v21 = sub_1D0FF43A8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v116 - v26;
  v28 = type metadata accessor for SharingEntryProfileInformation();
  v29 = 0;
  v136 = 0;
  if ((*(v1 + v28[18] + 8) & 1) == 0)
  {
    v30 = HKStringForSharingType();
    v29 = sub_1D0FF5428();
    v136 = v31;
  }

  if (*(v1 + v28[19] + 8))
  {
    v122 = 0;
    v127 = 0;
  }

  else
  {
    v32 = HKStringForSharingStatus();
    v122 = sub_1D0FF5428();
    v127 = v33;
  }

  if (*(v1 + v28[20] + 8))
  {
    v124 = 0;
    v128 = 0;
  }

  else
  {
    v34 = HKStringForMessageDirection();
    v124 = sub_1D0FF5428();
    v128 = v35;
  }

  v36 = *(v1 + v28[21] + 8);
  v123 = v29;
  if (v36)
  {
    v125 = 0;
    v129 = 0;
  }

  else
  {
    v37 = HKStringForNotificationStatus();
    v125 = sub_1D0FF5428();
    v129 = v38;
  }

  sub_1D0F483D8(v1 + v28[17], v27, &qword_1EE06FAA0, sub_1D0F48498);
  sub_1D0F48498();
  v40 = v39;
  v41 = *(v39 - 8);
  v42 = (*(v41 + 48))(v27, 1, v39);
  v134 = v11;
  if (v42 == 1)
  {
    sub_1D0F49C9C(v27, &qword_1EE06FAA0, sub_1D0F48498);
    v121 = 0;
    v43 = 0;
  }

  else
  {
    v44 = sub_1D0FF52B8();
    (*(v41 + 8))(v27, v40);
    v45 = [v44 identifier];

    v11 = v134;
    sub_1D0FF4388();

    v121 = sub_1D0FF4358();
    v43 = v46;
    (*(v22 + 8))(v24, v21);
  }

  v47 = (v1 + v28[16]);
  v48 = *v47;
  if (v48 == 2)
  {
    v126 = 0;
    v131 = 0;
  }

  else
  {
    v49 = v47[16];
    v50 = *(v47 + 1);
    LOBYTE(v138) = v48 & 1;
    v139 = v50;
    v140 = v49 & 1;
    v126 = EndSharingRelationshipState.description.getter();
    v131 = v51;
  }

  v138 = 0;
  v139 = 0xE000000000000000;
  sub_1D0FF5DE8();
  MEMORY[0x1D3880AC0](0xD00000000000001ELL, 0x80000001D0FF99C0);
  MEMORY[0x1D3880AC0](0x203A6469757520, 0xE700000000000000);
  v52 = sub_1D0FF4358();
  MEMORY[0x1D3880AC0](v52);

  MEMORY[0x1D3880AC0](0xD000000000000014, 0x80000001D10039C0);
  MEMORY[0x1D3880AC0](*(v1 + v28[6]), *(v1 + v28[6] + 8));
  MEMORY[0x1D3880AC0](0xD000000000000014, 0x80000001D10039E0);
  v53 = (v1 + v28[7]);
  v54 = v53[1];
  if (v54)
  {
    v141 = *v53;
    v142 = v54;

    v55 = sub_1D0FF5448();
    v57 = v56;
  }

  else
  {
    v57 = 0xE300000000000000;
    v55 = 7104878;
  }

  MEMORY[0x1D3880AC0](v55, v57);

  MEMORY[0x1D3880AC0](0x614E747372696620, 0xEC000000203A656DLL);
  MEMORY[0x1D3880AC0](*(v1 + v28[8]), *(v1 + v28[8] + 8));
  MEMORY[0x1D3880AC0](0x6D614E7473616C20, 0xEB00000000203A65);
  v58 = (v1 + v28[9]);
  v59 = v58[1];
  if (v59)
  {
    v141 = *v58;
    v142 = v59;

    v60 = sub_1D0FF5448();
    v62 = v61;
  }

  else
  {
    v62 = 0xE300000000000000;
    v60 = 7104878;
  }

  MEMORY[0x1D3880AC0](v60, v62);

  MEMORY[0x1D3880AC0](0x203A6570797420, 0xE700000000000000);
  if (v136)
  {
    v141 = v123;
    v142 = v136;
    v63 = sub_1D0FF5448();
    v65 = v64;
  }

  else
  {
    v65 = 0xE300000000000000;
    v63 = 7104878;
  }

  MEMORY[0x1D3880AC0](v63, v65);

  MEMORY[0x1D3880AC0](0x3A73757461747320, 0xE900000000000020);
  if (v127)
  {
    v141 = v122;
    v142 = v127;
    v66 = sub_1D0FF5448();
    v68 = v67;
  }

  else
  {
    v68 = 0xE300000000000000;
    v66 = 7104878;
  }

  MEMORY[0x1D3880AC0](v66, v68);

  MEMORY[0x1D3880AC0](0x6974636572696420, 0xEC000000203A6E6FLL);
  if (v128)
  {
    v141 = v124;
    v142 = v128;
    v69 = sub_1D0FF5448();
    v71 = v70;
  }

  else
  {
    v71 = 0xE300000000000000;
    v69 = 7104878;
  }

  MEMORY[0x1D3880AC0](v69, v71);

  MEMORY[0x1D3880AC0](0x63696669746F6E20, 0xEF203A6E6F697461);
  if (v129)
  {
    v141 = v125;
    v142 = v129;
    v72 = sub_1D0FF5448();
    v74 = v73;
  }

  else
  {
    v74 = 0xE300000000000000;
    v72 = 7104878;
  }

  MEMORY[0x1D3880AC0](v72, v74);

  MEMORY[0x1D3880AC0](0xD000000000000013, 0x80000001D1003A00);
  if (v43)
  {
    v141 = v121;
    v142 = v43;
    v75 = sub_1D0FF5448();
    v77 = v76;
  }

  else
  {
    v77 = 0xE300000000000000;
    v75 = 7104878;
  }

  MEMORY[0x1D3880AC0](v75, v77);

  MEMORY[0x1D3880AC0](0xD000000000000011, 0x80000001D1003A20);
  v78 = v130;
  sub_1D0F483D8(v1 + v28[13], v130, &qword_1EE071260, MEMORY[0x1E6969530]);
  v79 = *(v11 + 48);
  if (v79(v78, 1, v10) == 1)
  {
    sub_1D0F49C9C(v78, &qword_1EE071260, MEMORY[0x1E6969530]);
    v80 = 0xE300000000000000;
    v81 = 7104878;
  }

  else
  {
    v82 = v117;
    (*(v11 + 32))(v117, v78, v10);
    (*(v11 + 16))(v137, v82, v10);
    v83 = sub_1D0FF5448();
    v80 = v84;
    (*(v11 + 8))(v82, v10);
    v81 = v83;
  }

  MEMORY[0x1D3880AC0](v81, v80);

  MEMORY[0x1D3880AC0](0xD000000000000015, 0x80000001D1003A40);
  v85 = v132;
  sub_1D0F483D8(v1 + v28[14], v132, &qword_1EE071260, MEMORY[0x1E6969530]);
  if (v79(v85, 1, v10) == 1)
  {
    sub_1D0F49C9C(v85, &qword_1EE071260, MEMORY[0x1E6969530]);
    v86 = 0xE300000000000000;
    v87 = 7104878;
  }

  else
  {
    v88 = v118;
    (*(v11 + 32))(v118, v85, v10);
    (*(v11 + 16))(v137, v88, v10);
    v89 = sub_1D0FF5448();
    v86 = v90;
    (*(v11 + 8))(v88, v10);
    v87 = v89;
  }

  MEMORY[0x1D3880AC0](v87, v86);

  MEMORY[0x1D3880AC0](0x6470556574616420, 0xEE00203A64657461);
  v91 = v28[10];
  v92 = v133;
  sub_1D0F483D8(v1 + v91, v133, &qword_1EE071260, MEMORY[0x1E6969530]);
  if (v79(v92, 1, v10) == 1)
  {
    sub_1D0F49C9C(v92, &qword_1EE071260, MEMORY[0x1E6969530]);
    v93 = 0xE300000000000000;
    v94 = 7104878;
  }

  else
  {
    v95 = v119;
    (*(v11 + 32))(v119, v92, v10);
    (*(v11 + 16))(v137, v95, v10);
    v96 = sub_1D0FF5448();
    v93 = v97;
    (*(v11 + 8))(v95, v10);
    v94 = v96;
  }

  MEMORY[0x1D3880AC0](v94, v93);

  MEMORY[0x1D3880AC0](0xD000000000000013, 0x80000001D1003A60);
  if (*(v1 + v28[11]))
  {
    v98 = 1702195828;
  }

  else
  {
    v98 = 0x65736C6166;
  }

  if (*(v1 + v28[11]))
  {
    v99 = 0xE400000000000000;
  }

  else
  {
    v99 = 0xE500000000000000;
  }

  MEMORY[0x1D3880AC0](v98, v99);

  MEMORY[0x1D3880AC0](0xD000000000000013, 0x80000001D1003A80);
  v100 = v135;
  sub_1D0F483D8(v1 + v91, v135, &qword_1EE071260, MEMORY[0x1E6969530]);
  if (v79(v100, 1, v10) == 1)
  {
    sub_1D0F49C9C(v100, &qword_1EE071260, MEMORY[0x1E6969530]);
    v101 = 0xE300000000000000;
    v102 = 7104878;
  }

  else
  {
    v103 = v134;
    v104 = v120;
    (*(v134 + 32))(v120, v100, v10);
    (*(v103 + 16))(v137, v104, v10);
    v105 = sub_1D0FF5448();
    v101 = v106;
    (*(v103 + 8))(v104, v10);
    v102 = v105;
  }

  MEMORY[0x1D3880AC0](v102, v101);

  MEMORY[0x1D3880AC0](0x6573756150736920, 0xEB00000000203A64);
  if (*(v1 + v28[12]))
  {
    v107 = 1702195828;
  }

  else
  {
    v107 = 0x65736C6166;
  }

  if (*(v1 + v28[12]))
  {
    v108 = 0xE400000000000000;
  }

  else
  {
    v108 = 0xE500000000000000;
  }

  MEMORY[0x1D3880AC0](v107, v108);

  MEMORY[0x1D3880AC0](0xD00000000000001ELL, 0x80000001D1003AA0);
  if (v131)
  {
    v141 = v126;
    v142 = v131;
    v109 = sub_1D0FF5448();
    v111 = v110;
  }

  else
  {
    v111 = 0xE300000000000000;
    v109 = 7104878;
  }

  MEMORY[0x1D3880AC0](v109, v111);

  MEMORY[0x1D3880AC0](0x203A6567616D6920, 0xE800000000000000);
  v112 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  isa = CNContact.photoOrMonogram(size:)(__PAIR128__(0x4062C00000000000, 0x4062C00000000000)).super.isa;

  v141 = isa;
  sub_1D0F1ACD4(0, &qword_1EE06F9A0);
  v114 = sub_1D0FF5448();
  MEMORY[0x1D3880AC0](v114);

  return v138;
}

unint64_t sub_1D0F4D378()
{
  result = qword_1EC5FC478;
  if (!qword_1EC5FC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC478);
  }

  return result;
}

unint64_t sub_1D0F4D3CC()
{
  result = qword_1EE06ED58[0];
  if (!qword_1EE06ED58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE06ED58);
  }

  return result;
}

void sub_1D0F4D420()
{
  if (!qword_1EE070160[0])
  {
    type metadata accessor for HKSharingType(255);
    sub_1D0F4F354(&qword_1EE06FA40, type metadata accessor for HKSharingType);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, qword_1EE070160);
    }
  }
}

void sub_1D0F4D4D0()
{
  if (!qword_1EE070158)
  {
    type metadata accessor for HKSharingStatus(255);
    sub_1D0F4F354(&qword_1EE06FA18, type metadata accessor for HKSharingStatus);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070158);
    }
  }
}

void sub_1D0F4D580()
{
  if (!qword_1EE070148)
  {
    type metadata accessor for HKSharingMessageDirection(255);
    sub_1D0F4F354(&qword_1EE06F9D0, type metadata accessor for HKSharingMessageDirection);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070148);
    }
  }
}

void sub_1D0F4D630()
{
  if (!qword_1EE070140)
  {
    type metadata accessor for HKSharingNotificationStatus(255);
    sub_1D0F4F354(&qword_1EE06F9B8, type metadata accessor for HKSharingNotificationStatus);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070140);
    }
  }
}

void sub_1D0F4D6E0()
{
  if (!qword_1EE070150)
  {
    type metadata accessor for HKWheelchairUse(255);
    sub_1D0F4F354(&unk_1EE06FA00, type metadata accessor for HKWheelchairUse);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070150);
    }
  }
}

void sub_1D0F4D790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0F4D378();
    v7 = a3(a1, &type metadata for SharingEntryProfileInformation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D0F4D7F4()
{
  result = qword_1EE06FEB8[0];
  if (!qword_1EE06FEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE06FEB8);
  }

  return result;
}

uint64_t sub_1D0F4D848(uint64_t a1)
{
  v2 = type metadata accessor for SharingEntryProfileInformation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D0F4D8A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F1ACD4(255, &qword_1EE071070);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s16HealthExperience30SharingEntryProfileInformationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4348();
  v5 = *(v4 - 8);
  v137 = v4;
  v138 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v134 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969530];
  sub_1D0F48444(0, &qword_1EE071260, MEMORY[0x1E6969530]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v133 = &v128 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v128 - v13;
  sub_1D0F4F294(0, &qword_1EC5FC530, &qword_1EE071260, v7);
  v136 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v132 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v135 = &v128 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v128 - v20;
  sub_1D0F48498();
  v23 = v22;
  v139 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F48444(0, &qword_1EE06FAA0, sub_1D0F48498);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v128 - v27;
  sub_1D0F4F294(0, &qword_1EC5FC538, &qword_1EE06FAA0, sub_1D0F48498);
  v30 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v128 - v31;
  v33 = type metadata accessor for SharingEntryProfileInformation();
  if ((sub_1D0FF4378() & 1) == 0)
  {
    return 0;
  }

  v34 = v33[6];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (sub_1D0FF6278() & 1) == 0)
  {
    return 0;
  }

  v38 = v33[7];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = v33[8];
  v44 = *(a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  if ((v44 != *v46 || v45 != v46[1]) && (sub_1D0FF6278() & 1) == 0)
  {
    return 0;
  }

  v47 = v33[9];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1D0FF6278() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v51)
  {
    return 0;
  }

  v52 = v33[18];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 8);
  v55 = (a2 + v52);
  v56 = *(a2 + v52 + 8);
  if (v54)
  {
    if (!v56)
    {
      return 0;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  v57 = v33[19];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8);
  v60 = (a2 + v57);
  v61 = *(a2 + v57 + 8);
  if (v59)
  {
    if (!v61)
    {
      return 0;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    if (v61)
    {
      return 0;
    }
  }

  v62 = v33[16];
  v63 = a1 + v62;
  v64 = *(a1 + v62);
  v65 = a2 + v62;
  if (v64 == 2)
  {
    if (*v65 != 2)
    {
      return 0;
    }

LABEL_36:
    v66 = v33[20];
    v67 = (a1 + v66);
    v68 = *(a1 + v66 + 8);
    v69 = (a2 + v66);
    v70 = *(a2 + v66 + 8);
    if (v68)
    {
      if (!v70)
      {
        return 0;
      }
    }

    else
    {
      if (*v67 != *v69)
      {
        LOBYTE(v70) = 1;
      }

      if (v70)
      {
        return 0;
      }
    }

    v71 = v33[21];
    v72 = (a1 + v71);
    v73 = *(a1 + v71 + 8);
    v74 = (a2 + v71);
    v75 = *(a2 + v71 + 8);
    if (v73)
    {
      if (!v75)
      {
        return 0;
      }
    }

    else
    {
      if (*v72 != *v74)
      {
        LOBYTE(v75) = 1;
      }

      if (v75)
      {
        return 0;
      }
    }

    v76 = *(v30 + 48);
    v129 = v33[17];
    v130 = v76;
    sub_1D0F483D8(v129 + a1, v32, &qword_1EE06FAA0, sub_1D0F48498);
    sub_1D0F483D8(v129 + a2, &v130[v32], &qword_1EE06FAA0, sub_1D0F48498);
    v129 = *(v139 + 48);
    if (v129(v32, 1, v23) == 1)
    {
      if (v129(&v130[v32], 1, v23) == 1)
      {
        sub_1D0F49C9C(v32, &qword_1EE06FAA0, sub_1D0F48498);
        goto LABEL_63;
      }
    }

    else
    {
      sub_1D0F483D8(v32, v28, &qword_1EE06FAA0, sub_1D0F48498);
      if (v129(&v130[v32], 1, v23) != 1)
      {
        v82 = v139;
        (*(v139 + 32))(v25, &v130[v32], v23);
        sub_1D0F4F39C(&qword_1EC5FC548, &qword_1EC5FC550);
        LODWORD(v130) = sub_1D0FF53D8();
        v83 = *(v82 + 8);
        v83(v25, v23);
        v83(v28, v23);
        sub_1D0F49C9C(v32, &qword_1EE06FAA0, sub_1D0F48498);
        if ((v130 & 1) == 0)
        {
          return 0;
        }

LABEL_63:
        v84 = v33[10];
        v85 = *(v136 + 48);
        v86 = MEMORY[0x1E6969530];
        sub_1D0F483D8(a1 + v84, v21, &qword_1EE071260, MEMORY[0x1E6969530]);
        sub_1D0F483D8(a2 + v84, &v21[v85], &qword_1EE071260, v86);
        v87 = v137;
        v88 = v138 + 48;
        v89 = *(v138 + 48);
        if ((v89)(v21, 1, v137) == 1)
        {
          if ((v89)(&v21[v85], 1, v87) == 1)
          {
            v130 = v89;
            v139 = v88;
            sub_1D0F49C9C(v21, &qword_1EE071260, MEMORY[0x1E6969530]);
            goto LABEL_73;
          }
        }

        else
        {
          sub_1D0F483D8(v21, v14, &qword_1EE071260, MEMORY[0x1E6969530]);
          v139 = v88;
          v130 = v89;
          if ((v89)(&v21[v85], 1, v87) != 1)
          {
            v90 = v134;
            (*(v138 + 32))(v134, &v21[v85], v87);
            sub_1D0F4F354(&qword_1EC5FC540, MEMORY[0x1E6969530]);
            v91 = sub_1D0FF53D8();
            v92 = *(v138 + 8);
            v92(v90, v87);
            v92(v14, v87);
            sub_1D0F49C9C(v21, &qword_1EE071260, MEMORY[0x1E6969530]);
            if ((v91 & 1) == 0)
            {
              return 0;
            }

LABEL_73:
            if (*(a1 + v33[11]) != *(a2 + v33[11]))
            {
              return 0;
            }

            v93 = v33[14];
            v94 = v135;
            v95 = *(v136 + 48);
            v96 = MEMORY[0x1E6969530];
            sub_1D0F483D8(a1 + v93, v135, &qword_1EE071260, MEMORY[0x1E6969530]);
            sub_1D0F483D8(a2 + v93, v94 + v95, &qword_1EE071260, v96);
            v97 = v137;
            v98 = v130;
            if ((v130)(v94, 1, v137) == 1)
            {
              if (v98(v94 + v95, 1, v97) == 1)
              {
                sub_1D0F49C9C(v135, &qword_1EE071260, MEMORY[0x1E6969530]);
LABEL_81:
                v106 = v33[15];
                v107 = (a1 + v106);
                v108 = *(a1 + v106 + 8);
                v109 = (a2 + v106);
                v110 = *(a2 + v106 + 8);
                if (v108)
                {
                  if (!v110)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (*v107 != *v109)
                  {
                    LOBYTE(v110) = 1;
                  }

                  if (v110)
                  {
                    return 0;
                  }
                }

                v111 = v33[13];
                v112 = *(v136 + 48);
                v113 = MEMORY[0x1E6969530];
                v114 = v132;
                sub_1D0F483D8(a1 + v111, v132, &qword_1EE071260, MEMORY[0x1E6969530]);
                sub_1D0F483D8(a2 + v111, v114 + v112, &qword_1EE071260, v113);
                if ((v130)(v114, 1, v137) == 1)
                {
                  if ((v130)(v132 + v112, 1, v137) == 1)
                  {
                    sub_1D0F49C9C(v132, &qword_1EE071260, MEMORY[0x1E6969530]);
LABEL_94:
                    if (*(a1 + v33[12]) == *(a2 + v33[12]))
                    {
                      v124 = v33[22];
                      v125 = (a1 + v124);
                      v126 = *(a1 + v124 + 8);
                      v127 = a2 + v124;
                      result = *(v127 + 8);
                      if ((v126 & 1) == 0)
                      {
                        return (*v125 == *v127) & ~result;
                      }

                      return result;
                    }

                    return 0;
                  }
                }

                else
                {
                  v115 = v132;
                  sub_1D0F483D8(v132, v131, &qword_1EE071260, MEMORY[0x1E6969530]);
                  if ((v130)(v115 + v112, 1, v137) != 1)
                  {
                    v116 = v138;
                    v117 = v132;
                    v118 = v132 + v112;
                    v119 = v134;
                    v120 = v137;
                    (*(v138 + 32))(v134, v118, v137);
                    sub_1D0F4F354(&qword_1EC5FC540, MEMORY[0x1E6969530]);
                    v121 = v131;
                    v122 = sub_1D0FF53D8();
                    v123 = *(v116 + 8);
                    v123(v119, v120);
                    v123(v121, v120);
                    sub_1D0F49C9C(v117, &qword_1EE071260, MEMORY[0x1E6969530]);
                    if ((v122 & 1) == 0)
                    {
                      return 0;
                    }

                    goto LABEL_94;
                  }

                  (*(v138 + 8))(v131, v137);
                }

                v78 = &qword_1EC5FC530;
                v79 = &qword_1EE071260;
                v80 = MEMORY[0x1E6969530];
                v81 = v132;
LABEL_69:
                sub_1D0F4F2F8(v81, v78, v79, v80);
                return 0;
              }
            }

            else
            {
              sub_1D0F483D8(v94, v133, &qword_1EE071260, MEMORY[0x1E6969530]);
              if (v98(v94 + v95, 1, v97) != 1)
              {
                v100 = v137;
                v99 = v138;
                v101 = v134;
                v102 = v135;
                (*(v138 + 32))(v134, v135 + v95, v137);
                sub_1D0F4F354(&qword_1EC5FC540, MEMORY[0x1E6969530]);
                v103 = v133;
                v104 = sub_1D0FF53D8();
                v105 = *(v99 + 8);
                v105(v101, v100);
                v105(v103, v100);
                sub_1D0F49C9C(v102, &qword_1EE071260, MEMORY[0x1E6969530]);
                if ((v104 & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_81;
              }

              (*(v138 + 8))(v133, v137);
            }

            v78 = &qword_1EC5FC530;
            v79 = &qword_1EE071260;
            v80 = MEMORY[0x1E6969530];
            v81 = v135;
            goto LABEL_69;
          }

          (*(v138 + 8))(v14, v87);
        }

        v78 = &qword_1EC5FC530;
        v79 = &qword_1EE071260;
        v80 = MEMORY[0x1E6969530];
        v81 = v21;
        goto LABEL_69;
      }

      (*(v139 + 8))(v28, v23);
    }

    v78 = &qword_1EC5FC538;
    v79 = &qword_1EE06FAA0;
    v80 = sub_1D0F48498;
    v81 = v32;
    goto LABEL_69;
  }

  if (*v65 == 2 || ((v64 ^ *v65) & 1) != 0)
  {
    return 0;
  }

  if (*(v63 + 16))
  {
    if ((*(v65 + 16) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_36;
  }

  result = 0;
  if ((*(v65 + 16) & 1) == 0 && *(v63 + 8) == *(v65 + 8))
  {
    goto LABEL_36;
  }

  return result;
}

void sub_1D0F4E834()
{
  sub_1D0FF43A8();
  if (v0 <= 0x3F)
  {
    sub_1D0F3FA28(319, &qword_1EE070E20);
    if (v1 <= 0x3F)
    {
      sub_1D0F48444(319, &qword_1EE071260, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1D0F3FA28(319, &qword_1EE070E10);
        if (v3 <= 0x3F)
        {
          sub_1D0F3FA28(319, &qword_1EE06FEB0);
          if (v4 <= 0x3F)
          {
            sub_1D0F48444(319, &qword_1EE06FAA0, sub_1D0F48498);
            if (v5 <= 0x3F)
            {
              sub_1D0F4D420();
              if (v6 <= 0x3F)
              {
                sub_1D0F4D4D0();
                if (v7 <= 0x3F)
                {
                  sub_1D0F4D580();
                  if (v8 <= 0x3F)
                  {
                    sub_1D0F4D630();
                    if (v9 <= 0x3F)
                    {
                      sub_1D0F4D6E0();
                      if (v10 <= 0x3F)
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
    }
  }
}

uint64_t getEnumTagSinglePayload for SharingEntryProfileInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingEntryProfileInformation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D0F4EB78()
{
  result = qword_1EC5FC518;
  if (!qword_1EC5FC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC518);
  }

  return result;
}

unint64_t sub_1D0F4EBD0()
{
  result = qword_1EC5FC520;
  if (!qword_1EC5FC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC520);
  }

  return result;
}

unint64_t sub_1D0F4EC28()
{
  result = qword_1EC5FC528;
  if (!qword_1EC5FC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC528);
  }

  return result;
}

uint64_t sub_1D0F4EC7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496573756572 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1003AC0 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1003AE0 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065 || (sub_1D0FF6278() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6164705565746164 && a2 == 0xEB00000000646574 || (sub_1D0FF6278() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1003B00 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6465737561507369 && a2 == 0xE800000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69766E4965746164 && a2 == 0xEE00746E65536574 || (sub_1D0FF6278() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1003B20 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1003B40 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1003B60 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1003B80 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x54676E6972616873 && a2 == 0xEB00000000657079 || (sub_1D0FF6278() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x53676E6972616873 && a2 == 0xED00007375746174 || (sub_1D0FF6278() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1003BA0 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1003BC0 == a2 || (sub_1D0FF6278() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6168636C65656877 && a2 == 0xED00006573557269)
  {

    return 18;
  }

  else
  {
    v6 = sub_1D0FF6278();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

void sub_1D0F4F294(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D0F48444(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D0F4F2F8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D0F4F294(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D0F4F354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0F4F39C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F48498();
    sub_1D0F4D8A4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D0F4F418()
{
  result = qword_1EC5FC558;
  if (!qword_1EC5FC558)
  {
    type metadata accessor for SharingEntryProfileInformation();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC5FC558);
  }

  return result;
}

uint64_t static FeatureStatusSupport.keyword(from:)(_BYTE *a1)
{
  if (*a1 <= 1u)
  {
    if (*a1)
    {
      return MEMORY[0x1EEE0F0D8]();
    }

    else
    {
      return MEMORY[0x1EEE0F0D0]();
    }
  }

  else if (*a1 - 2 >= 2)
  {
    return MEMORY[0x1EEE0F0C0]();
  }

  else
  {
    return MEMORY[0x1EEE0F0C8]();
  }
}

uint64_t FeatureStatusSupport.FeatureStatusDomain.sortHintValue.getter()
{
  v1 = sub_1D0F4F4F0(&unk_1F4CF3D80, *v0, sub_1D0F50AB0);
  result = 100 * v1;
  if ((v1 * 100) >> 64 != (100 * v1) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1D0F4F4F0(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(uint64_t)))(uint64_t)
{

  v6 = sub_1D0F500A4(v5, a3);
  v7 = *(v6 + 16);
  if (v7)
  {
    a3 = 0;
    while (*(a3 + v6 + 32) != a2)
    {
      a3 = (a3 + 1);
      if (v7 == a3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  return a3;
}

uint64_t (*sub_1D0F4F55C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t)))(uint64_t)
{

  v6 = sub_1D0F4FFDC(v5, a3);
  v7 = *(v6 + 16);
  if (v7)
  {
    a3 = 0;
    while (*(a3 + v6 + 32) != (a2 & 1))
    {
      a3 = (a3 + 1);
      if (v7 == a3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  return a3;
}

unint64_t FeatureStatusSupport.FeatureStatusDomain.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D0F4F628()
{
  v1 = sub_1D0F4F4F0(&unk_1F4CF3D80, *v0, sub_1D0F50AB0);
  result = 100 * v1;
  if ((v1 * 100) >> 64 != (100 * v1) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*FeatureStatusSupport.Safety.sortHintValue.getter())(uint64_t)
{
  v1 = *v0;
  result = sub_1D0F4F4F0(&unk_1F4CF3DD0, 0, sub_1D0F50AB0);
  v3 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = sub_1D0F4F4F0(&unk_1F4CF3DF8, v1, sub_1D0F50AE8);
  v5 = __OFADD__(v3, v4);
  result = (v4 + v3);
  if (v5)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t FeatureStatusSupport.Safety.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t (*sub_1D0F4F73C())(uint64_t)
{
  v1 = *v0;
  result = sub_1D0F4F4F0(&unk_1F4CF3DD0, 0, sub_1D0F50AB0);
  v3 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = sub_1D0F4F4F0(&unk_1F4CF3DF8, v1, sub_1D0F50AE8);
  v5 = __OFADD__(v3, v4);
  result = (v4 + v3);
  if (v5)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void FeatureStatusSupport.Heart.orderedElements.getter()
{
  if (qword_1F4CF3E58)
  {
    v0 = 0;
    while (*(&unk_1F4CF3E48 + v0 + 32))
    {
      if (qword_1F4CF3E58 == ++v0)
      {
        goto LABEL_5;
      }
    }

    v4 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
    }

    else if (v4 <= 6)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D0F501A0(isUniquelyReferenced_nonNull_native, 7, 1, &unk_1F4CF3E48, &qword_1EC5FC638);
        sub_1D0F50CA8(v4, v4, 1, 6);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

LABEL_5:
  v1 = &unk_1F4CF3E48;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D0F501A0(0, 7, 1, &unk_1F4CF3E48, &qword_1EC5FC638);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1D0F501A0((v2 > 1), v3 + 1, 1, v1, &qword_1EC5FC638);
  }

  *(v1 + 2) = v3 + 1;
  v1[v3 + 32] = 6;
}

uint64_t (*FeatureStatusSupport.Heart.sortHintValue.getter())(uint64_t)
{
  v1 = *v0;
  result = sub_1D0F4F4F0(&unk_1F4CF3E70, 1u, sub_1D0F50AB0);
  v3 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  FeatureStatusSupport.Heart.orderedElements.getter();
  v5 = sub_1D0F4F4F0(v4, v1, sub_1D0F50B20);

  result = (v5 + v3);
  if (__OFADD__(v3, v5))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t FeatureStatusSupport.Heart.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t (*sub_1D0F4FA04())(uint64_t)
{
  v1 = *v0;
  result = sub_1D0F4F4F0(&unk_1F4CF3E70, 1u, sub_1D0F50AB0);
  v3 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  FeatureStatusSupport.Heart.orderedElements.getter();
  v5 = sub_1D0F4F4F0(v4, v1, sub_1D0F50B20);

  result = (v5 + v3);
  if (__OFADD__(v3, v5))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F4FB6C(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1D0F4F4F0(a1, a2, sub_1D0F50AB0);
  v7 = 100 * result;
  if ((result * 100) >> 64 == (100 * result) >> 63)
  {
    v8 = *(sub_1D0F4FF34(a3, a4) + 16);

    if (v8)
    {
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0F4FBF0()
{
  sub_1D0FF6338();
  MEMORY[0x1D3881950](0);
  return sub_1D0FF6378();
}

uint64_t sub_1D0F4FC34()
{
  sub_1D0FF6338();
  MEMORY[0x1D3881950](0);
  return sub_1D0FF6378();
}

uint64_t sub_1D0F4FCAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  result = sub_1D0F4F4F0(a3, a4, sub_1D0F50AB0);
  v9 = 100 * result;
  if ((result * 100) >> 64 == (100 * result) >> 63)
  {
    v10 = *(sub_1D0F4FF34(a5, a6) + 16);

    if (v10)
    {
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FeatureStatusSupport.DuringSleep.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t (*sub_1D0F4FDFC(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t (*a4)(uint64_t)))(uint64_t)
{
  v7 = *v4;
  result = sub_1D0F4F4F0(a1, a2, sub_1D0F50AB0);
  v9 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v10 = sub_1D0F4F55C(a3, v7, a4);
  v11 = __OFADD__(v9, v10);
  result = (v10 + v9);
  if (v11)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1D0F4FEB0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t (*a6)(uint64_t)))(uint64_t)
{
  v9 = *v6;
  result = sub_1D0F4F4F0(a3, a4, sub_1D0F50AB0);
  v11 = 100 * result;
  if ((result * 100) >> 64 != (100 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = sub_1D0F4F55C(a5, v9, a6);
  v13 = __OFADD__(v11, v12);
  result = (v12 + v11);
  if (v13)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F4FF34(uint64_t result, uint64_t (*a2)(uint64_t))
{
  v2 = result;
  v3 = *(result + 16);
  if (v3 < 2)
  {
    return v2;
  }

  v5 = 0;
  v6 = v3 >> 1;
  for (i = v3 - 1; ; --i)
  {
    if (v5 == i)
    {
      goto LABEL_4;
    }

    v8 = *(v2 + 16);
    if (v5 >= v8)
    {
      break;
    }

    if (i >= v8)
    {
      goto LABEL_11;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = a2(v2);
      v2 = result;
    }

LABEL_4:
    if (v6 == ++v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D0F4FFDC(uint64_t result, uint64_t (*a2)(uint64_t))
{
  v2 = result;
  v3 = *(result + 16);
  if (v3 < 2)
  {
    return v2;
  }

  v5 = v3 >> 1;
  v6 = v3 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v6)
    {
      goto LABEL_5;
    }

    v8 = *(v2 + 16);
    if (i - 32 >= v8)
    {
      break;
    }

    if (v6 - 32 >= v8)
    {
      goto LABEL_12;
    }

    v9 = *(v2 + i);
    v10 = *(v2 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = a2(v2);
      v2 = result;
    }

    *(v2 + i) = v10;
    *(v2 + v6) = v9;
LABEL_5:
    --v6;
    if (!--v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D0F500A4(uint64_t result, uint64_t (*a2)(uint64_t))
{
  v2 = result;
  v3 = *(result + 16);
  if (v3 < 2)
  {
    return v2;
  }

  v5 = v3 >> 1;
  v6 = v3 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v6)
    {
      goto LABEL_5;
    }

    v8 = *(v2 + 16);
    if (i - 32 >= v8)
    {
      break;
    }

    if (v6 - 32 >= v8)
    {
      goto LABEL_12;
    }

    v9 = *(v2 + i);
    v10 = *(v2 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = a2(v2);
      v2 = result;
    }

    *(v2 + i) = v10;
    *(v2 + v6) = v9;
LABEL_5:
    --v6;
    if (!--v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

char *sub_1D0F501A0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1D0F51918(0, a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1D0F50290(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D0F51918(0, &qword_1EE071020);
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

char *sub_1D0F503A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D0F518C4(0, &qword_1EC5FC5C0, sub_1D0F51678);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D0F50508(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D0F518C4(0, &qword_1EC5FC600, sub_1D0F517A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D0F517A0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D0F50674(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D0F518C4(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1D0F50854(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D0F518C4(0, &qword_1EC5FC5D8, sub_1D0F516D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D0F516D0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D0F509A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D0F51918(0, &qword_1EE070AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D0F50CA8(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1D0F50D68()
{
  result = qword_1EC5FC560;
  if (!qword_1EC5FC560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC560);
  }

  return result;
}

unint64_t sub_1D0F50DE8()
{
  result = qword_1EC5FC568;
  if (!qword_1EC5FC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC568);
  }

  return result;
}

unint64_t sub_1D0F50E40()
{
  result = qword_1EC5FC570;
  if (!qword_1EC5FC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC570);
  }

  return result;
}

unint64_t sub_1D0F50EC0()
{
  result = qword_1EC5FC578;
  if (!qword_1EC5FC578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC578);
  }

  return result;
}

unint64_t sub_1D0F50F18()
{
  result = qword_1EC5FC580;
  if (!qword_1EC5FC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC580);
  }

  return result;
}

unint64_t sub_1D0F50F98()
{
  result = qword_1EC5FC588;
  if (!qword_1EC5FC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC588);
  }

  return result;
}

unint64_t sub_1D0F50FF0()
{
  result = qword_1EC5FC590;
  if (!qword_1EC5FC590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC590);
  }

  return result;
}

unint64_t sub_1D0F51070()
{
  result = qword_1EC5FC598;
  if (!qword_1EC5FC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC598);
  }

  return result;
}

unint64_t sub_1D0F510C8()
{
  result = qword_1EE06EFE8;
  if (!qword_1EE06EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06EFE8);
  }

  return result;
}

unint64_t sub_1D0F51148()
{
  result = qword_1EE06EFE0;
  if (!qword_1EE06EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06EFE0);
  }

  return result;
}

unint64_t sub_1D0F511A0()
{
  result = qword_1EC5FC5A0;
  if (!qword_1EC5FC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC5A0);
  }

  return result;
}

unint64_t sub_1D0F51220()
{
  result = qword_1EC5FC5A8;
  if (!qword_1EC5FC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC5A8);
  }

  return result;
}

unint64_t sub_1D0F51278()
{
  result = qword_1EC5FC5B0;
  if (!qword_1EC5FC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC5B0);
  }

  return result;
}

uint64_t sub_1D0F512F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D0F51334()
{
  result = qword_1EC5FC5B8;
  if (!qword_1EC5FC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC5B8);
  }

  return result;
}

uint64_t _s14descr1F4CF37E9V19FeatureStatusDomainOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F4CF37E9V19FeatureStatusDomainOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr1F4CF37E9V5HeartOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F4CF37E9V5HeartOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D0F51678()
{
  if (!qword_1EC5FC5C8)
  {
    v0 = sub_1D0FF58F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC5C8);
    }
  }
}

void sub_1D0F516D0()
{
  if (!qword_1EC5FC5E0)
  {
    sub_1D0F51740();
    type metadata accessor for AdvertisableFeatureModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FC5E0);
    }
  }
}

unint64_t sub_1D0F51740()
{
  result = qword_1EC5FC5E8;
  if (!qword_1EC5FC5E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC5FC5E8);
  }

  return result;
}

void sub_1D0F517A0()
{
  if (!qword_1EC5FC608)
  {
    sub_1D0F51808();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FC608);
    }
  }
}

void sub_1D0F51808()
{
  if (!qword_1EC5FC610)
  {
    sub_1D0F51870();
    v0 = sub_1D0FF6418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC610);
    }
  }
}

unint64_t sub_1D0F51870()
{
  result = qword_1EC5FC618;
  if (!qword_1EC5FC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC618);
  }

  return result;
}

void sub_1D0F518C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D0FF6248();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D0F51918(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D0FF6248();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D0F519C4()
{

  v1 = *(v0 + OBJC_IVAR____TtC16HealthExperience23MedicalIDFetchOperation_medicalIDStore);
}

id sub_1D0F51A04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalIDFetchOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D0F51A84(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1D0F51AE0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D0F51B40()
{
  result = sub_1D0FF53E8();
  qword_1EE070E08 = result;
  return result;
}

uint64_t sub_1D0F51B9C()
{
  result = sub_1D0FF53E8();
  qword_1EE06E340 = result;
  return result;
}

uint64_t sub_1D0F51BF8()
{
  result = sub_1D0FF53E8();
  qword_1EE06E358 = result;
  return result;
}

uint64_t sub_1D0F51C54()
{
  result = sub_1D0FF53E8();
  qword_1EE06E370 = result;
  return result;
}

id sub_1D0F51CB0(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t static UIApplication.languageForHealthApp.getter()
{
  v0 = [objc_opt_self() preferredLanguages];
  v1 = sub_1D0FF5608();

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL _sSo13UIApplicationC16HealthExperienceE031userInterfaceLayoutDirectionForB3AppSo06UIUserefG0VvgZ_0()
{
  v0 = [objc_opt_self() preferredLanguages];
  v1 = sub_1D0FF5608();

  if (*(v1 + 16))
  {

    v2 = sub_1D0FF53E8();
  }

  else
  {

    v2 = 0;
  }

  v3 = [objc_opt_self() defaultWritingDirectionForLanguage_];

  return v3 == 1;
}

id CSSearchableItemAttributeSet.objectTypeCode.getter()
{
  swift_beginAccess();

  v1 = sub_1D0FF53E8();

  v2 = [v0 attributeForKey_];

  if (v2)
  {
    sub_1D0FF5CA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_1D0F51FF0();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_1D0F23B7C(v8);
  }

  return 0;
}

void sub_1D0F51F9C()
{
  if (!qword_1EE071000)
  {
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE071000);
    }
  }
}

unint64_t sub_1D0F51FF0()
{
  result = qword_1EE070DF0;
  if (!qword_1EE070DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE070DF0);
  }

  return result;
}

void CSSearchableItemAttributeSet.objectTypeCode.setter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    swift_beginAccess();
    v4 = objc_allocWithZone(MEMORY[0x1E6964E00]);

    v5 = sub_1D0FF53E8();

    v6 = [v4 initWithKeyName_];

    if (v6)
    {
      [v2 setValue:v3 forCustomKey:v6];
    }

    else
    {
      sub_1D0FF5F98();
      __break(1u);
    }
  }
}

uint64_t static CSCustomAttributeKey.objectTypeCodeAttributeKey.getter()
{
  swift_beginAccess();
  v0 = objc_allocWithZone(MEMORY[0x1E6964E00]);

  v1 = sub_1D0FF53E8();

  v2 = [v0 initWithKeyName_];

  if (v2)
  {
    return v2;
  }

  result = sub_1D0FF5F98();
  __break(1u);
  return result;
}

void (*CSSearchableItemAttributeSet.objectTypeCode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 64) = v1;
  *(v3 + 48) = CSSearchableItemAttributeSet.objectTypeCode.getter();
  *(v4 + 56) = v5 & 1;
  return sub_1D0F522E0;
}

void sub_1D0F522E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (*(*a1 + 56))
    {
      goto LABEL_7;
    }
  }

  else if (*(*a1 + 56))
  {
    goto LABEL_7;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_beginAccess();
  v4 = objc_allocWithZone(MEMORY[0x1E6964E00]);

  v5 = sub_1D0FF53E8();

  v6 = [v4 initWithKeyName_];

  if (!v6)
  {
    sub_1D0FF5F98();
    __break(1u);
    return;
  }

  [*(v2 + 64) setValue:v3 forCustomKey:v6];

LABEL_7:

  free(v2);
}

uint64_t static CSCustomAttributeKey.objectTypeCodeAttributeKeyName.getter()
{
  swift_beginAccess();
  v0 = qword_1EC5FC650;

  return v0;
}

uint64_t static CSCustomAttributeKey.objectTypeCodeAttributeKeyName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_1EC5FC650 = a1;
  off_1EC5FC658 = a2;
}

uint64_t executeIfViewLoggingEnabled(_:)(uint64_t (*a1)(void))
{
  result = HAFeatureFlagViewLoggingEnabled();
  if (result)
  {
    return a1();
  }

  return result;
}

id static NSNotificationName.HAMedicalIDCacheHasUpdate.getter()
{
  if (qword_1EE071080 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE071090;

  return v1;
}

unint64_t MedicalIDDataResult.hasSimilarCase(as:)(unint64_t result, uint64_t a2)
{
  if (a2 == 2)
  {
    return result == 2;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      return !result;
    }

    return result > 2;
  }

  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t static MedicalIDDataResult.== infix(_:_:)(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  sub_1D0F1ACD4(0, &qword_1EE071060);
  return sub_1D0FF5BF8() & 1;
}

uint64_t sub_1D0F526FC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 < 3)
  {
    return 0;
  }

  sub_1D0F1ACD4(0, &qword_1EE071060);
  return sub_1D0FF5BF8() & 1;
}

uint64_t sub_1D0F527D8()
{
  sub_1D0F52FF4();
  sub_1D0F53EF0(&qword_1EE06E5D8, sub_1D0F52FF4);
  return sub_1D0FF5098();
}

void *sub_1D0F5285C()
{
  sub_1D0FF4F28();
  result = v1;
  if (v1 <= 2)
  {
    sub_1D0F53054(v1);
    return 0;
  }

  return result;
}

void sub_1D0F528B8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDFetchQueue;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1D0F52918()
{
  v1 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDFetchQueue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D0F5296C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16HealthExperience14MedicalIDCache_medicalIDFetchQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MedicalIDCache.__allocating_init(healthStore:)(void *a1)
{
  v3 = (*(v1 + 208))([objc_allocWithZone(MEMORY[0x1E696C248]) initWithHealthStore_]);

  return v3;
}

uint64_t sub_1D0F52AB4()
{
  v0 = sub_1D0FF4C18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4B78();
  v4 = sub_1D0FF4C08();
  v5 = sub_1D0FF5978();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D0F17000, v4, v5, "refreshMedicalID()", v6, 2u);
    MEMORY[0x1D3882680](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  sub_1D0FF4918();
  return sub_1D0F1C0E4();
}

void sub_1D0F52C24(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    sub_1D0FF4908();
    if (v4 <= 1u)
    {
      v3 = sub_1D0FF6278();

      if (v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    if (v4 != 2)
    {
LABEL_7:
      [v2 cancel];
LABEL_8:

      goto LABEL_9;
    }

    swift_bridgeObjectRelease_n();
  }

LABEL_9:
  *a1 = 0;
}

id MedicalIDCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalIDCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalIDCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D0F52EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D0F54264();
    v3 = sub_1D0FF6028();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D0F54304(v4, &v11, sub_1D0F5436C);
      v5 = v11;
      result = sub_1D0FA26C0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D0F54254(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_1D0F52FF4()
{
  if (!qword_1EE06FAD0)
  {
    v0 = sub_1D0FF4F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06FAD0);
    }
  }
}

void sub_1D0F53054(id a1)
{
  if (a1 >= 3)
  {
  }
}

void sub_1D0F53064()
{
  if (!qword_1EE06E0B8)
  {
    sub_1D0F541F0(255, &qword_1EE06E2D0);
    v0 = sub_1D0FF6248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E0B8);
    }
  }
}

unint64_t sub_1D0F530CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D0F54130(0, &qword_1EE06E278);
    v3 = sub_1D0FF6028();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D0F54184(v4, v13, &qword_1EE06E2D0);
      result = sub_1D0FA2774(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D0F54254(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1D0F5321C(uint64_t a1)
{
  sub_1D0F541F0(0, &qword_1EE06E2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D0F53288(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0F532E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D0F53334(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1D0F53524(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D0F54130(0, &qword_1EE06E298);
    v3 = sub_1D0FF6028();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D0F54184(v4, &v13, &qword_1EE06E490);
      v5 = v13;
      v6 = v14;
      result = sub_1D0F23568(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D0F54254(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void *sub_1D0F53668(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D0F54130(0, &qword_1EE06E290);
  v3 = sub_1D0FF6028();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1D0FA27B8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D0FA27B8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D0F53790(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D0F540CC();
    v3 = sub_1D0FF6028();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D0FA27FC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t sub_1D0F53870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D0F53958();
    v3 = sub_1D0FF6028();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1D0FA27FC(v5);
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

void sub_1D0F53958()
{
  if (!qword_1EC5FC6D0)
  {
    type metadata accessor for AdvertisableFeatureModel();
    sub_1D0F539C4();
    v0 = sub_1D0FF6038();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC6D0);
    }
  }
}

unint64_t sub_1D0F539C4()
{
  result = qword_1EC5FC6D8;
  if (!qword_1EC5FC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC6D8);
  }

  return result;
}

id sub_1D0F53A18(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

unint64_t sub_1D0F53A28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D0F54054();
    v3 = sub_1D0FF6028();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D0F23568(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1D0F53B20(uint64_t a1)
{
  sub_1D0F53F38();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D0F53FA8();
    v8 = sub_1D0FF6028();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D0F54304(v10, v6, sub_1D0F53F38);
      result = sub_1D0F1B60C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D0FF43A8();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1D0FF4348();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1D0F53D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D0F53E18();
    v3 = sub_1D0FF6028();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D0FA5A40(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

void sub_1D0F53E18()
{
  if (!qword_1EE06E280)
  {
    type metadata accessor for HKCharacteristicTypeIdentifier(255);
    sub_1D0F1E8D8(255, &qword_1EE070B78, &qword_1EE070B50, 0x1E696C3D0, MEMORY[0x1E69E62F8]);
    sub_1D0F53EF0(&qword_1EE06E318, type metadata accessor for HKCharacteristicTypeIdentifier);
    v0 = sub_1D0FF6038();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E280);
    }
  }
}

uint64_t sub_1D0F53EF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D0F53F38()
{
  if (!qword_1EC5FC6E0)
  {
    sub_1D0FF43A8();
    sub_1D0FF4348();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FC6E0);
    }
  }
}

void sub_1D0F53FA8()
{
  if (!qword_1EC5FC6E8)
  {
    sub_1D0FF43A8();
    sub_1D0FF4348();
    sub_1D0F53EF0(&qword_1EE071250, MEMORY[0x1E69695A8]);
    v0 = sub_1D0FF6038();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC6E8);
    }
  }
}

void sub_1D0F54054()
{
  if (!qword_1EE06E2A8)
  {
    sub_1D0F1ACD4(255, &qword_1EE070DF0);
    v0 = sub_1D0FF6038();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E2A8);
    }
  }
}

void sub_1D0F540CC()
{
  if (!qword_1EC5FC6F8)
  {
    sub_1D0F539C4();
    v0 = sub_1D0FF6038();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC6F8);
    }
  }
}

void sub_1D0F54130(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D0FF6038();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D0F54184(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1D0F541F0(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D0F541F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

_OWORD *sub_1D0F54254(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1D0F54264()
{
  if (!qword_1EC5FC708)
  {
    type metadata accessor for CFString(255);
    sub_1D0F53EF0(&qword_1EC5FC710, type metadata accessor for CFString);
    v0 = sub_1D0FF6038();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC708);
    }
  }
}

uint64_t sub_1D0F54304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D0F5436C()
{
  if (!qword_1EC5FC718)
  {
    type metadata accessor for CFString(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FC718);
    }
  }
}

UIImage __swiftcall UIImage.withCircularCrop(adjustedSize:)(CGSize_optional adjustedSize)
{
  if (v2)
  {
    [v3 size];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *&adjustedSize.is_nil;
    v7 = v1;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v5;
  v21.size.height = v7;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v5;
  v22.size.height = v7;
  MidY = CGRectGetMidY(v22);
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v5;
  v23.size.height = v7;
  v11 = CGRectGetMidX(v23);
  v12 = [objc_opt_self() bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v11 clockwise:{0.0, 6.28318531}];
  v13 = swift_allocObject();
  *(v13 + 2) = v12;
  *(v13 + 3) = v3;
  v13[4] = 0.0;
  v13[5] = 0.0;
  v13[6] = v5;
  v13[7] = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D0F54648;
  *(v14 + 24) = v13;
  v20[4] = sub_1D0F546E0;
  v20[5] = v14;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1D0F54708;
  v20[3] = &block_descriptor_2;
  v15 = _Block_copy(v20);
  v16 = v12;
  v17 = v3;

  v18 = [v8 imageWithActions_];

  _Block_release(v15);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return v18;
  }

  __break(1u);
  return result;
}

id sub_1D0F54648()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  [*(v0 + 16) addClip];

  return [v1 drawInRect_];
}

void sub_1D0F54708(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id CodableImage.wrappedValue.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1D0F547EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D0FF6278();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D0F5487C(uint64_t a1)
{
  v2 = sub_1D0F54AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F548B8(uint64_t a1)
{
  v2 = sub_1D0F54AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableImage.encode(to:)(void *a1)
{
  sub_1D0F54DE8(0, &qword_1EE070B00, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F54AA0();
  sub_1D0FF6438();
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = UIImagePNGRepresentation(v8);
  if (!v9)
  {
    v8 = 0;
LABEL_5:
    v12 = 0xF000000000000000;
    goto LABEL_6;
  }

  v10 = v9;
  v8 = sub_1D0FF4288();
  v12 = v11;

LABEL_6:
  v14[0] = v8;
  v14[1] = v12;
  sub_1D0F54AF4();
  sub_1D0F54B44();
  sub_1D0FF6208();
  (*(v5 + 8))(v7, v4);
  return sub_1D0F54BBC(v8, v12);
}

unint64_t sub_1D0F54AA0()
{
  result = qword_1EE071190[0];
  if (!qword_1EE071190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE071190);
  }

  return result;
}

void sub_1D0F54AF4()
{
  if (!qword_1EE070D98)
  {
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070D98);
    }
  }
}

unint64_t sub_1D0F54B44()
{
  result = qword_1EE070D90;
  if (!qword_1EE070D90)
  {
    sub_1D0F54AF4();
    sub_1D0F34F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070D90);
  }

  return result;
}

uint64_t sub_1D0F54BBC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D0F34FDC(a1, a2);
  }

  return a1;
}

uint64_t CodableImage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D0F54DE8(0, &qword_1EE071038, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F54AA0();
  sub_1D0FF6428();
  if (!v2)
  {
    sub_1D0F35264();
    sub_1D0FF60F8();
    v10 = v16;
    if (v16 >> 60 == 15)
    {
      (*(v7 + 8))(v9, v6);
      *a2 = 0;
    }

    else
    {
      v17 = v15;
      v11 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v12 = sub_1D0FF4278();
      v13 = [v11 initWithData_];

      sub_1D0F54BBC(v17, v10);
      (*(v7 + 8))(v9, v6);
      *a2 = v13;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_1D0F54DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0F54AA0();
    v7 = a3(a1, &type metadata for CodableImage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D0F54E7C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1D0F54ED8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D0F54F4C()
{
  result = qword_1EC5FC720;
  if (!qword_1EC5FC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC720);
  }

  return result;
}

unint64_t sub_1D0F54FA4()
{
  result = qword_1EE071180;
  if (!qword_1EE071180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071180);
  }

  return result;
}

unint64_t sub_1D0F54FFC()
{
  result = qword_1EE071188;
  if (!qword_1EE071188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071188);
  }

  return result;
}

unint64_t EndSharingRelationshipState.description.getter()
{
  v1 = *v0;
  sub_1D0FF5DE8();

  if (v1)
  {
    v2 = 0x64656C696146;
  }

  else
  {
    v2 = 0x72676F7250206E49;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xEB00000000737365;
  }

  MEMORY[0x1D3880AC0](v2, v3);

  MEMORY[0x1D3880AC0](0x6320726F72726520, 0xED0000203A65646FLL);
  sub_1D0F551A8();
  v4 = sub_1D0FF5448();
  MEMORY[0x1D3880AC0](v4);

  return 0xD000000000000024;
}

uint64_t EndSharingRelationshipStatus.description.getter()
{
  if (*v0)
  {
    return 0x64656C696146;
  }

  else
  {
    return 0x72676F7250206E49;
  }
}

void sub_1D0F551A8()
{
  if (!qword_1EE070E10)
  {
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070E10);
    }
  }
}

HealthExperience::EndSharingRelationshipStatus_optional __swiftcall EndSharingRelationshipStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D0F552CC()
{
  if (*v0)
  {
    return 0x64656C696146;
  }

  else
  {
    return 0x72676F7250206E49;
  }
}

void EndSharingRelationshipState.init(status:error:)(id a1@<X1>, char *a2@<X0>, uint64_t a3@<X8>)
{
  v9 = *a2;
  if (!a1)
  {
    goto LABEL_5;
  }

  v5 = a1;
  sub_1D0F1E940();
  type metadata accessor for HKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_5:
    v6 = 0;
    v7 = 1;
    goto LABEL_6;
  }

  sub_1D0F55400();
  v6 = sub_1D0FF4168();

  v7 = 0;
LABEL_6:
  *a3 = v9;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
}

unint64_t sub_1D0F55400()
{
  result = qword_1EC5FBFE0;
  if (!qword_1EC5FBFE0)
  {
    type metadata accessor for HKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FBFE0);
  }

  return result;
}

uint64_t sub_1D0F55458()
{
  if (*v0)
  {
    return 0x646F43726F727265;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_1D0F55494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D0FF6278() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D0FF6278();

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

uint64_t sub_1D0F55574(uint64_t a1)
{
  v2 = sub_1D0F557D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F555B0(uint64_t a1)
{
  v2 = sub_1D0F557D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static EndSharingRelationshipState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[16];
  if (a1[16])
  {
    return (a2[16] & 1) != 0;
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }
}

uint64_t EndSharingRelationshipState.encode(to:)(void *a1)
{
  sub_1D0F55D24(0, &qword_1EC5FC728, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = *v1;
  v11[1] = *(v1 + 1);
  v12 = v1[16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F557D8();
  sub_1D0FF6438();
  v15 = v9;
  v14 = 0;
  sub_1D0F5582C();
  sub_1D0FF6208();
  if (!v2)
  {
    v13 = 1;
    sub_1D0FF61A8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D0F557D8()
{
  result = qword_1EC5FC730;
  if (!qword_1EC5FC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC730);
  }

  return result;
}

unint64_t sub_1D0F5582C()
{
  result = qword_1EC5FC738;
  if (!qword_1EC5FC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC738);
  }

  return result;
}

uint64_t EndSharingRelationshipState.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  MEMORY[0x1D3881950](*v0);
  if (v2 == 1)
  {
    return sub_1D0FF6358();
  }

  sub_1D0FF6358();
  return MEMORY[0x1D3881950](v1);
}

uint64_t EndSharingRelationshipState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  sub_1D0FF6358();
  if (v3 != 1)
  {
    MEMORY[0x1D3881950](v2);
  }

  return sub_1D0FF6378();
}

uint64_t EndSharingRelationshipState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D0F55D24(0, &qword_1EC5FC740, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F557D8();
  sub_1D0FF6428();
  if (!v2)
  {
    v17 = 0;
    sub_1D0F55D88();
    sub_1D0FF6148();
    v15 = v18;
    v16 = 1;
    v11 = sub_1D0FF60E8();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    *a2 = v15;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D0F55B44(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[16];
  if (a1[16])
  {
    if (a2[16])
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D0F55BC0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  sub_1D0FF6358();
  if (v3 != 1)
  {
    MEMORY[0x1D3881950](v2);
  }

  return sub_1D0FF6378();
}

uint64_t sub_1D0F55C44()
{
  v1 = *(v0 + 1);
  v2 = v0[16];
  MEMORY[0x1D3881950](*v0);
  if (v2 == 1)
  {
    return sub_1D0FF6358();
  }

  sub_1D0FF6358();
  return MEMORY[0x1D3881950](v1);
}

uint64_t sub_1D0F55CA4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  sub_1D0FF6358();
  if (v3 != 1)
  {
    MEMORY[0x1D3881950](v2);
  }

  return sub_1D0FF6378();
}

void sub_1D0F55D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D0F557D8();
    v7 = a3(a1, &type metadata for EndSharingRelationshipState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D0F55D88()
{
  result = qword_1EC5FC748;
  if (!qword_1EC5FC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC748);
  }

  return result;
}

unint64_t sub_1D0F55DE0()
{
  result = qword_1EC5FC750;
  if (!qword_1EC5FC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC750);
  }

  return result;
}

unint64_t sub_1D0F55E38()
{
  result = qword_1EC5FC758;
  if (!qword_1EC5FC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC758);
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

uint64_t getEnumTagSinglePayload for EndSharingRelationshipState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EndSharingRelationshipState(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D0F55F70()
{
  result = qword_1EC5FC760;
  if (!qword_1EC5FC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC760);
  }

  return result;
}

unint64_t sub_1D0F55FC8()
{
  result = qword_1EC5FC768;
  if (!qword_1EC5FC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC768);
  }

  return result;
}

unint64_t sub_1D0F56020()
{
  result = qword_1EC5FC770;
  if (!qword_1EC5FC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC770);
  }

  return result;
}

unint64_t sub_1D0F56074()
{
  result = qword_1EC5FC778;
  if (!qword_1EC5FC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC778);
  }

  return result;
}

uint64_t AdvertisableFeatureConfiguration.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AdvertisableFeatureConfiguration.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AdvertisableFeatureConfiguration.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AdvertisableFeatureConfiguration.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *AdvertisableFeatureConfiguration.accessoryImage.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void __swiftcall AdvertisableFeatureConfiguration.init(title:description:accessoryImage:)(HealthExperience::AdvertisableFeatureConfiguration *__return_ptr retstr, Swift::String title, Swift::String description, UIImage_optional accessoryImage)
{
  retstr->title = title;
  retstr->description = description;
  retstr->accessoryImage.value.super.isa = accessoryImage.value.super.isa;
}

void AdvertisableFeatureConfiguration.hash(into:)()
{
  v1 = *(v0 + 32);
  sub_1D0FF5488();
  sub_1D0FF5488();
  if (v1)
  {
    sub_1D0FF6358();
    v2 = v1;
    sub_1D0FF5C08();
  }

  else
  {
    sub_1D0FF6358();
  }
}

uint64_t AdvertisableFeatureConfiguration.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1D0FF6338();
  sub_1D0FF5488();
  sub_1D0FF5488();
  sub_1D0FF6358();
  if (v1)
  {
    v2 = v1;
    sub_1D0FF5C08();
  }

  return sub_1D0FF6378();
}

void sub_1D0F563C8()
{
  v1 = *(v0 + 32);
  sub_1D0FF5488();
  sub_1D0FF5488();
  if (v1)
  {
    sub_1D0FF6358();
    v2 = v1;
    sub_1D0FF5C08();
  }

  else
  {
    sub_1D0FF6358();
  }
}

uint64_t sub_1D0F56480()
{
  v1 = *(v0 + 32);
  sub_1D0FF6338();
  sub_1D0FF5488();
  sub_1D0FF5488();
  sub_1D0FF6358();
  if (v1)
  {
    v2 = v1;
    sub_1D0FF5C08();
  }

  return sub_1D0FF6378();
}

uint64_t AdvertisableFeature.Location.hashValue.getter()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

HealthExperience::AdvertisableFeature::Identifier_optional __swiftcall AdvertisableFeature.Identifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D0FF6088();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AdvertisableFeature.Identifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  if (v1 != 4)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD000000000000018;
  if (v1 == 1)
  {
    v3 = 0xD000000000000019;
  }

  if (!*v0)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void sub_1D0F566F8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "ready";
  v4 = "lowHeartRateNotification";
  v5 = "trendNotification";
  v6 = 0xD00000000000001DLL;
  if (v2 != 4)
  {
    v6 = 0xD00000000000001ELL;
    v5 = "walkingSteadinessNotification";
  }

  if (v2 == 3)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v4 = v5;
  }

  v7 = "lowCardioFitnessNotification";
  v8 = 0xD000000000000018;
  if (v2 == 1)
  {
    v8 = 0xD000000000000019;
  }

  else
  {
    v7 = "highHeartRateNotification";
  }

  if (*v1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0xD00000000000001CLL;
  }

  if (*v1 <= 2u)
  {
    v9 = v3;
  }

  else
  {
    v8 = v6;
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t sub_1D0F567B0()
{
  sub_1D0FF5488();
}

uint64_t AdvertisableFeatureError.internalDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AdvertisableFeatureError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D0FF6278();
  }
}

uint64_t sub_1D0F56928(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D0FF6278();
  }
}

uint64_t _s16HealthExperience32AdvertisableFeatureConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1D0FF6278() & 1) != 0)
  {
    v9 = v2 == v5 && v3 == v6;
    if (v9 || (sub_1D0FF6278() & 1) != 0)
    {
      if (v4)
      {
        if (v7)
        {
          sub_1D0F57018();
          v10 = v7;
          v11 = v4;
          v12 = sub_1D0FF5BF8();

          if (v12)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s16HealthExperience37AdvertisableFeaturePostCommitWorkItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0FF4238();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F57064();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 56);
  sub_1D0F570C8(a1, v14);
  sub_1D0F570C8(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    v17 = 1;
    v18 = v16(&v14[v15], 1, v4);
    v19 = type metadata accessor for AdvertisableFeaturePostCommitWorkItem;
    if (v18 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D0F570C8(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = sub_1D0FF41F8();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      v19 = type metadata accessor for AdvertisableFeaturePostCommitWorkItem;
      goto LABEL_8;
    }

    (*(v5 + 8))(v10, v4);
  }

  v17 = 0;
  v19 = sub_1D0F57064;
LABEL_8:
  sub_1D0F5712C(v14, v19);
  return v17 & 1;
}

unint64_t sub_1D0F56CD0()
{
  result = qword_1EC5FC780;
  if (!qword_1EC5FC780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC780);
  }

  return result;
}

unint64_t sub_1D0F56D28()
{
  result = qword_1EC5FC788;
  if (!qword_1EC5FC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC788);
  }

  return result;
}

unint64_t sub_1D0F56D80()
{
  result = qword_1EC5FC790;
  if (!qword_1EC5FC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC790);
  }

  return result;
}

uint64_t type metadata accessor for AdvertisableFeaturePostCommitWorkItem()
{
  result = qword_1EC5FC798;
  if (!qword_1EC5FC798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0F56E48()
{
  v0 = sub_1D0FF4238();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D0F56EB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D0F56EFC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D0F56F84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D0F56FCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D0F57018()
{
  result = qword_1EE06F9A0;
  if (!qword_1EE06F9A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06F9A0);
  }

  return result;
}

void sub_1D0F57064()
{
  if (!qword_1EC5FC7A8)
  {
    type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FC7A8);
    }
  }
}

uint64_t sub_1D0F570C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdvertisableFeaturePostCommitWorkItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F5712C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

UIImage __swiftcall CNContact.photoOrMonogram(size:)(CGSize size)
{
  height = size.height;
  width = size.width;
  v4 = [objc_allocWithZone(MEMORY[0x1E695D098]) init];
  v5 = objc_opt_self();
  v6 = [v5 scopeWithPointSize:_sSo13UIApplicationC16HealthExperienceE031userInterfaceLayoutDirectionForB3AppSo06UIUserefG0VvgZ_0() scale:0 rightToLeft:width style:{height, 3.0}];
  sub_1D0F1E9E0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D0FF9980;
  *(v7 + 32) = v1;
  sub_1D0F1ACD4(0, &qword_1EE070DE0);
  v8 = v1;
  v9 = sub_1D0FF55F8();

  v10 = [v4 avatarImageForContacts:v9 scope:v6];

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1D0F572F4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1D0FF4998();
  v3 = [v1 givenName];
  v4 = sub_1D0FF5428();
  v6 = v5;

  v7 = [v1 familyName];
  v8 = sub_1D0FF5428();
  v10 = v9;

  v11 = a1(v4, v6, v8, v10);

  return v11;
}

uint64_t CNContact.contactPhotoPublisherIfExistsElseMonogram()()
{
  sub_1D0F57DE4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  sub_1D0F580A4(0, &qword_1EC5FC7B8, &qword_1EE06F9A0);
  sub_1D0F57E60();
  v6 = v0;
  sub_1D0FF5008();
  sub_1D0F57F3C(&qword_1EC5FC7C8, sub_1D0F57DE4);
  v7 = sub_1D0FF5098();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1D0F57554(void *a1)
{
  sub_1D0F580A4(0, &qword_1EC5FC7F0, &qword_1EE070DE0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - v5;
  v9[1] = a1;
  sub_1D0F1ACD4(0, &qword_1EE070DE0);
  v7 = a1;
  sub_1D0FF4FD8();
  sub_1D0F1ACD4(0, &qword_1EE06F9A0);
  sub_1D0FF4FA8();
  return (*(v4 + 8))(v6, v3);
}

UIImage sub_1D0F576B4@<X0>(UIImage *a1@<X8>)
{
  result.super.isa = CNContact.photoOrMonogram(size:)(__PAIR128__(0x4062C00000000000, 0x4062C00000000000)).super.isa;
  a1->super.isa = result.super.isa;
  return result;
}

id CNContact.termsOfAddressOptions.getter()
{
  sub_1D0FF40E8();
  result = [v0 isKeyAvailable_];
  if (result)
  {
    v2 = [v0 termsOfAddress];
    sub_1D0F1ACD4(0, &qword_1EC5FC7D0);
    sub_1D0FF5608();

    v3 = sub_1D0F5788C();

    sub_1D0F57ED8(0, &qword_1EC5FC7D8, MEMORY[0x1E6968888], MEMORY[0x1E69E6F90]);
    v4 = sub_1D0FF40F8();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D0FFA320;
    *(v7 + v6) = v3;
    (*(v5 + 104))(v7 + v6, *MEMORY[0x1E6968880], v4);
    return sub_1D0FF40D8();
  }

  return result;
}

size_t sub_1D0F5788C()
{
  sub_1D0F57ED8(0, &qword_1EC5FC7E0, MEMORY[0x1E6968198], MEMORY[0x1E69E6720]);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v1);
  v48 = (&v45 - v5);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  v11 = sub_1D0FF3ED8();
  v50 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v15;
  if (v16 >> 62)
  {
    v42 = &v45 - v15;
    v43 = v16;
    v44 = sub_1D0FF5D18();
    v16 = v43;
    v17 = v42;
    v18 = v44;
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
    return v19;
  }

  v49 = v17;
  v47 = v3;
  v20 = v16;
  v52 = MEMORY[0x1E69E7CC0];
  result = sub_1D0FD0C4C(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    __break(1u);
  }

  else
  {
    v51 = v18;
    v19 = v52;
    v22 = v20;
    if ((v20 & 0xC000000000000001) == 0)
    {
      v31 = (v20 + 32);
      v32 = *(v50 + 56);
      v45 = (v50 + 48);
      v46 = v32;
      v49 = (v50 + 56);
      v33 = (v50 + 32);
      while (1)
      {
        v34 = *v31;
        v35 = v48;
        (v46)(v48, 1, 1, v11);
        sub_1D0F57F3C(&qword_1EC5FC7E8, MEMORY[0x1E6968198]);
        v36 = v34;
        sub_1D0FF6068();
        v37 = v47;
        sub_1D0F57F84(v35, v47);
        result = (*v45)(v37, 1, v11);
        if (result == 1)
        {
          break;
        }

        sub_1D0F58018(v35);
        v38 = *v33;
        (*v33)(v14, v37, v11);

        v52 = v19;
        v40 = *(v19 + 16);
        v39 = *(v19 + 24);
        v41 = v51;
        if (v40 >= v39 >> 1)
        {
          sub_1D0FD0C4C(v39 > 1, v40 + 1, 1);
          v19 = v52;
        }

        *(v19 + 16) = v40 + 1;
        v38((v19 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40), v14, v11);
        ++v31;
        v51 = v41 - 1;
        if (v41 == 1)
        {
          return v19;
        }
      }

      goto LABEL_21;
    }

    v23 = 0;
    v47 = (v50 + 48);
    v48 = (v50 + 56);
    v24 = (v50 + 32);
    v46 = v10;
    while (1)
    {
      v25 = v22;
      MEMORY[0x1D3881410](v23);
      (*v48)(v10, 1, 1, v11);
      sub_1D0F57F3C(&qword_1EC5FC7E8, MEMORY[0x1E6968198]);
      sub_1D0FF6068();
      sub_1D0F57F84(v10, v8);
      result = (*v47)(v8, 1, v11);
      if (result == 1)
      {
        break;
      }

      sub_1D0F58018(v10);
      v26 = *v24;
      v27 = v49;
      v28 = v8;
      (*v24)(v49, v8, v11);
      swift_unknownObjectRelease();
      v52 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D0FD0C4C(v29 > 1, v30 + 1, 1);
        v27 = v49;
        v19 = v52;
      }

      ++v23;
      *(v19 + 16) = v30 + 1;
      v26((v19 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v30), v27, v11);
      v22 = v25;
      v8 = v28;
      v10 = v46;
      if (v51 == v23)
      {
        return v19;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1D0F57DE4()
{
  if (!qword_1EC5FC7B0)
  {
    sub_1D0F580A4(255, &qword_1EC5FC7B8, &qword_1EE06F9A0);
    sub_1D0F57E60();
    v0 = sub_1D0FF5018();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC7B0);
    }
  }
}

unint64_t sub_1D0F57E60()
{
  result = qword_1EC5FC7C0;
  if (!qword_1EC5FC7C0)
  {
    sub_1D0F580A4(255, &qword_1EC5FC7B8, &qword_1EE06F9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC7C0);
  }

  return result;
}

void sub_1D0F57ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D0F57F3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0F57F84(uint64_t a1, uint64_t a2)
{
  sub_1D0F57ED8(0, &qword_1EC5FC7E0, MEMORY[0x1E6968198], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F58018(uint64_t a1)
{
  sub_1D0F57ED8(0, &qword_1EC5FC7E0, MEMORY[0x1E6968198], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D0F580A4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D0F1ACD4(255, a3);
    v4 = sub_1D0FF4FC8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Publisher.ignoreFailureResult<A, B>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t Publishers.IgnoreFailureResult.receive<A>(subscriber:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a1;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[5];
  v10 = sub_1D0FF4CA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = a2[4];
  v14[5] = a3;
  v15 = a2[6];
  v14[6] = v9;
  v14[7] = v15;
  v14[8] = a4;
  sub_1D0FF50A8();

  swift_getWitnessTable();
  sub_1D0FF5168();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1D0F583D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1D0FF6418();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  (*(v7 + 16))(&v14 - v8, a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(a2 - 8);
  v12 = v11;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v11 + 56))(a3, 1, 1, a2);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v11 + 32))(a3, v9, a2);
    return (*(v12 + 56))(a3, 0, 1, a2);
  }
}

uint64_t sub_1D0F5859C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1D0F58658()
{
  type metadata accessor for HealthExperienceWithTestsClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE079590 = result;
  return result;
}

uint64_t static DateInterval.allTimeInterval.getter()
{
  v0 = sub_1D0FF4348();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D0FF42B8();
  sub_1D0FF42C8();
  return sub_1D0FF3E88();
}

uint64_t static DateInterval.halfYearBack(from:calendar:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v25 = a3;
  v4 = sub_1D0FF4468();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - v9;
  v11 = sub_1D0FF4348();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v23 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v23 - v19;
  (*(v5 + 104))(v7, *MEMORY[0x1E6969A10], v4);
  v24 = a1;
  sub_1D0FF4418();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D0F58BBC(v10);
    result = sub_1D0FF5F98();
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    v21 = *(v12 + 16);
    v21(v18, v20, v11);
    v21(v15, v24, v11);
    sub_1D0FF3E88();
    return (*(v12 + 8))(v20, v11);
  }

  return result;
}

uint64_t Date.twentySixWeeksAgo(for:)()
{
  v0 = sub_1D0FF4468();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A10], v0);
  sub_1D0FF4418();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D0F58BBC(uint64_t a1)
{
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DateInterval.entireDayInterval(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v39 = sub_1D0FF4468();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v34 - v7;
  v8 = sub_1D0FF4478();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D0FF4348();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v42 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v41 = &v34 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v38 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  sub_1D0FF4448();
  v35 = a1;
  sub_1D0FF43C8();
  v22 = *(v9 + 8);
  v36 = v9 + 8;
  v23 = v8;
  v22(v11, v8);
  sub_1D0FF4448();
  v24 = v39;
  (*(v3 + 104))(v5, *MEMORY[0x1E6969A48], v39);
  v25 = v37;
  v40 = v21;
  sub_1D0FF4418();
  (*(v3 + 8))(v5, v24);
  v22(v11, v23);
  v26 = *(v13 + 48);
  if (v26(v25, 1, v12) == 1)
  {
    v27 = *(v13 + 16);
    v28 = v38;
    v27(v38, v35, v12);
    v29 = v26(v25, 1, v12);
    v30 = v28;
    if (v29 != 1)
    {
      sub_1D0F58BBC(v25);
    }
  }

  else
  {
    v30 = v38;
    (*(v13 + 32))(v38, v25, v12);
    v27 = *(v13 + 16);
  }

  v31 = v40;
  v27(v41, v40, v12);
  v27(v42, v30, v12);
  sub_1D0FF3E88();
  v32 = *(v13 + 8);
  v32(v30, v12);
  return (v32)(v31, v12);
}

uint64_t Date.tomorrow.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = v25 - v2;
  v33 = sub_1D0FF4478();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF4098();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4448();
  sub_1D0F5C19C(0, &qword_1EE071028, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v9 = sub_1D0FF4468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D0FFAD40;
  v14 = *(v10 + 104);
  v14(v13 + v12, *MEMORY[0x1E6969A50], v9);
  v14(v13 + v12 + v11, *MEMORY[0x1E6969A68], v9);
  v14(v13 + v12 + 2 * v11, *MEMORY[0x1E6969A78], v9);
  v14(v13 + v12 + 3 * v11, *MEMORY[0x1E6969A48], v9);
  v14(v13 + v12 + 4 * v11, *MEMORY[0x1E6969A58], v9);
  v14(v13 + v12 + 5 * v11, *MEMORY[0x1E6969A88], v9);
  v14(v13 + v12 + 6 * v11, *MEMORY[0x1E6969A98], v9);
  sub_1D0F5BE88(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FF43D8();

  v26 = *(v3 + 8);
  v27 = v5;
  v32 = v3 + 8;
  v26(v5, v33);
  v15 = sub_1D0FF4018();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  sub_1D0FF4038();
  v18 = sub_1D0FF3FC8();
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v25[1] = sub_1D0FF3FF8();
  sub_1D0FF4058();
  sub_1D0FF4078();
  sub_1D0FF4028();
  sub_1D0FF4048();
  if (__OFADD__(v20, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1D0FF3FD8();
    sub_1D0FF4008();
    sub_1D0FF4068();
    sub_1D0FF4088();
    v21 = v27;
    sub_1D0FF4448();
    v17 = v30;
    sub_1D0FF4408();
    v26(v21, v33);
    v22 = sub_1D0FF4348();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) != 1)
    {
      (*(v28 + 8))(v8, v29);
      return (*(v23 + 32))(v31, v17, v22);
    }
  }

  sub_1D0F58BBC(v17);
  result = sub_1D0FF5F98();
  __break(1u);
  return result;
}

uint64_t Date.adjustedBy(years:months:days:hours:minutes:seconds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a2;
  v49 = a6;
  v50 = a5;
  v51 = a4;
  v52 = a3;
  v55 = a1;
  v48 = a7;
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v43 - v8;
  v56 = sub_1D0FF4478();
  v9 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D0FF4098();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4448();
  sub_1D0F5C19C(0, &qword_1EE071028, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v15 = sub_1D0FF4468();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D0FFAD40;
  v20 = *(v16 + 104);
  v20(v19 + v18, *MEMORY[0x1E6969A50], v15);
  v20(v19 + v18 + v17, *MEMORY[0x1E6969A68], v15);
  v20(v19 + v18 + 2 * v17, *MEMORY[0x1E6969A78], v15);
  v20(v19 + v18 + 3 * v17, *MEMORY[0x1E6969A48], v15);
  v20(v19 + v18 + 4 * v17, *MEMORY[0x1E6969A58], v15);
  v20(v19 + v18 + 5 * v17, *MEMORY[0x1E6969A88], v15);
  v20(v19 + v18 + 6 * v17, *MEMORY[0x1E6969A98], v15);
  sub_1D0F5BE88(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FF43D8();

  v21 = *(v9 + 8);
  v54 = v9 + 8;
  v44 = v21;
  v21(v11, v56);
  v22 = sub_1D0FF4018();
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = sub_1D0FF4038();
  v27 = v26;
  v28 = sub_1D0FF3FC8();
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  v31 = sub_1D0FF3FF8();
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  v34 = sub_1D0FF4058();
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  v37 = sub_1D0FF4078();
  if (v38)
  {
    v39 = 0;
  }

  else
  {
    v39 = v37;
  }

  if (__OFADD__(v24, v55))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v27)
  {
    v25 = 0;
  }

  sub_1D0FF4028();
  if (__OFADD__(v25, v53))
  {
    goto LABEL_27;
  }

  sub_1D0FF4048();
  if (__OFADD__(v30, v52))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1D0FF3FD8();
  if (__OFADD__(v33, v51))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_1D0FF4008();
  if (__OFADD__(v36, v50))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_1D0FF4068();
  if (__OFADD__(v39, v49))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_1D0FF4088();
  sub_1D0FF4448();
  v33 = v47;
  sub_1D0FF4408();
  v44(v11, v56);
  v40 = sub_1D0FF4348();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v33, 1, v40) != 1)
  {
    (*(v45 + 8))(v14, v46);
    return (*(v41 + 32))(v48, v33, v40);
  }

LABEL_32:
  sub_1D0F58BBC(v33);
  result = sub_1D0FF5F98();
  __break(1u);
  return result;
}

uint64_t Date.oneWeekAgo.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = v25 - v2;
  v33 = sub_1D0FF4478();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF4098();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4448();
  sub_1D0F5C19C(0, &qword_1EE071028, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v9 = sub_1D0FF4468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D0FFAD40;
  v14 = *(v10 + 104);
  v14(v13 + v12, *MEMORY[0x1E6969A50], v9);
  v14(v13 + v12 + v11, *MEMORY[0x1E6969A68], v9);
  v14(v13 + v12 + 2 * v11, *MEMORY[0x1E6969A78], v9);
  v14(v13 + v12 + 3 * v11, *MEMORY[0x1E6969A48], v9);
  v14(v13 + v12 + 4 * v11, *MEMORY[0x1E6969A58], v9);
  v14(v13 + v12 + 5 * v11, *MEMORY[0x1E6969A88], v9);
  v14(v13 + v12 + 6 * v11, *MEMORY[0x1E6969A98], v9);
  sub_1D0F5BE88(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FF43D8();

  v26 = *(v3 + 8);
  v27 = v5;
  v32 = v3 + 8;
  v26(v5, v33);
  v15 = sub_1D0FF4018();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  sub_1D0FF4038();
  v18 = sub_1D0FF3FC8();
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  v25[1] = sub_1D0FF3FF8();
  sub_1D0FF4058();
  sub_1D0FF4078();
  sub_1D0FF4028();
  sub_1D0FF4048();
  if (__OFSUB__(v20, 7))
  {
    __break(1u);
  }

  else
  {
    sub_1D0FF3FD8();
    sub_1D0FF4008();
    sub_1D0FF4068();
    sub_1D0FF4088();
    v21 = v27;
    sub_1D0FF4448();
    v17 = v30;
    sub_1D0FF4408();
    v26(v21, v33);
    v22 = sub_1D0FF4348();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) != 1)
    {
      (*(v28 + 8))(v8, v29);
      return (*(v23 + 32))(v31, v17, v22);
    }
  }

  sub_1D0F58BBC(v17);
  result = sub_1D0FF5F98();
  __break(1u);
  return result;
}

uint64_t Date.oneMonthAgo.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = v24 - v2;
  v33 = sub_1D0FF4478();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF4098();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4448();
  sub_1D0F5C19C(0, &qword_1EE071028, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v9 = sub_1D0FF4468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D0FFAD40;
  v14 = *(v10 + 104);
  v14(v13 + v12, *MEMORY[0x1E6969A50], v9);
  v14(v13 + v12 + v11, *MEMORY[0x1E6969A68], v9);
  v14(v13 + v12 + 2 * v11, *MEMORY[0x1E6969A78], v9);
  v14(v13 + v12 + 3 * v11, *MEMORY[0x1E6969A48], v9);
  v14(v13 + v12 + 4 * v11, *MEMORY[0x1E6969A58], v9);
  v14(v13 + v12 + 5 * v11, *MEMORY[0x1E6969A88], v9);
  v14(v13 + v12 + 6 * v11, *MEMORY[0x1E6969A98], v9);
  sub_1D0F5BE88(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FF43D8();

  v26 = *(v3 + 8);
  v27 = v5;
  v32 = v3 + 8;
  v26(v5, v33);
  sub_1D0FF4018();
  v15 = sub_1D0FF4038();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v25 = sub_1D0FF3FC8();
  v24[1] = v18;
  sub_1D0FF3FF8();
  sub_1D0FF4058();
  v19 = sub_1D0FF4078();
  sub_1D0FF4028();
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1D0FF4048();
    sub_1D0FF3FD8();
    sub_1D0FF4008();
    sub_1D0FF4068();
    sub_1D0FF4088();
    v20 = v27;
    sub_1D0FF4448();
    v19 = v30;
    sub_1D0FF4408();
    v26(v20, v33);
    v21 = sub_1D0FF4348();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v19, 1, v21) != 1)
    {
      (*(v28 + 8))(v8, v29);
      return (*(v22 + 32))(v31, v19, v21);
    }
  }

  sub_1D0F58BBC(v19);
  result = sub_1D0FF5F98();
  __break(1u);
  return result;
}

uint64_t Date.oneYearAgo.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = v23 - v2;
  v31 = sub_1D0FF4478();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF4098();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4448();
  sub_1D0F5C19C(0, &qword_1EE071028, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v9 = sub_1D0FF4468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D0FFAD40;
  v14 = *(v10 + 104);
  v14(v13 + v12, *MEMORY[0x1E6969A50], v9);
  v14(v13 + v12 + v11, *MEMORY[0x1E6969A68], v9);
  v14(v13 + v12 + 2 * v11, *MEMORY[0x1E6969A78], v9);
  v14(v13 + v12 + 3 * v11, *MEMORY[0x1E6969A48], v9);
  v14(v13 + v12 + 4 * v11, *MEMORY[0x1E6969A58], v9);
  v14(v13 + v12 + 5 * v11, *MEMORY[0x1E6969A88], v9);
  v14(v13 + v12 + 6 * v11, *MEMORY[0x1E6969A98], v9);
  sub_1D0F5BE88(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FF43D8();

  v24 = *(v3 + 8);
  v25 = v5;
  v30 = v3 + 8;
  v24(v5, v31);
  v15 = sub_1D0FF4018();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v23[1] = sub_1D0FF4038();
  sub_1D0FF3FC8();
  sub_1D0FF3FF8();
  v18 = sub_1D0FF4058();
  sub_1D0FF4078();
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1D0FF4028();
    sub_1D0FF4048();
    sub_1D0FF3FD8();
    sub_1D0FF4008();
    sub_1D0FF4068();
    sub_1D0FF4088();
    v19 = v25;
    sub_1D0FF4448();
    v18 = v28;
    sub_1D0FF4408();
    v24(v19, v31);
    v20 = sub_1D0FF4348();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v18, 1, v20) != 1)
    {
      (*(v26 + 8))(v8, v27);
      return (*(v21 + 32))(v29, v18, v20);
    }
  }

  sub_1D0F58BBC(v18);
  result = sub_1D0FF5F98();
  __break(1u);
  return result;
}

uint64_t Date.oneYearAfter.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = v23 - v2;
  v31 = sub_1D0FF4478();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF4098();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4448();
  sub_1D0F5C19C(0, &qword_1EE071028, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v9 = sub_1D0FF4468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D0FFAD40;
  v14 = *(v10 + 104);
  v14(v13 + v12, *MEMORY[0x1E6969A50], v9);
  v14(v13 + v12 + v11, *MEMORY[0x1E6969A68], v9);
  v14(v13 + v12 + 2 * v11, *MEMORY[0x1E6969A78], v9);
  v14(v13 + v12 + 3 * v11, *MEMORY[0x1E6969A48], v9);
  v14(v13 + v12 + 4 * v11, *MEMORY[0x1E6969A58], v9);
  v14(v13 + v12 + 5 * v11, *MEMORY[0x1E6969A88], v9);
  v14(v13 + v12 + 6 * v11, *MEMORY[0x1E6969A98], v9);
  sub_1D0F5BE88(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FF43D8();

  v24 = *(v3 + 8);
  v25 = v5;
  v30 = v3 + 8;
  v24(v5, v31);
  v15 = sub_1D0FF4018();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v23[1] = sub_1D0FF4038();
  sub_1D0FF3FC8();
  sub_1D0FF3FF8();
  v18 = sub_1D0FF4058();
  sub_1D0FF4078();
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1D0FF4028();
    sub_1D0FF4048();
    sub_1D0FF3FD8();
    sub_1D0FF4008();
    sub_1D0FF4068();
    sub_1D0FF4088();
    v19 = v25;
    sub_1D0FF4448();
    v18 = v28;
    sub_1D0FF4408();
    v24(v19, v31);
    v20 = sub_1D0FF4348();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v18, 1, v20) != 1)
    {
      (*(v26 + 8))(v8, v27);
      return (*(v21 + 32))(v29, v18, v20);
    }
  }

  sub_1D0F58BBC(v18);
  result = sub_1D0FF5F98();
  __break(1u);
  return result;
}

uint64_t Date.fiveYearsAgo.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_1D0F5C19C(0, &qword_1EE071260, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = v23 - v2;
  v31 = sub_1D0FF4478();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D0FF4098();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4448();
  sub_1D0F5C19C(0, &qword_1EE071028, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v9 = sub_1D0FF4468();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D0FFAD40;
  v14 = *(v10 + 104);
  v14(v13 + v12, *MEMORY[0x1E6969A50], v9);
  v14(v13 + v12 + v11, *MEMORY[0x1E6969A68], v9);
  v14(v13 + v12 + 2 * v11, *MEMORY[0x1E6969A78], v9);
  v14(v13 + v12 + 3 * v11, *MEMORY[0x1E6969A48], v9);
  v14(v13 + v12 + 4 * v11, *MEMORY[0x1E6969A58], v9);
  v14(v13 + v12 + 5 * v11, *MEMORY[0x1E6969A88], v9);
  v14(v13 + v12 + 6 * v11, *MEMORY[0x1E6969A98], v9);
  sub_1D0F5BE88(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FF43D8();

  v24 = *(v3 + 8);
  v25 = v5;
  v30 = v3 + 8;
  v24(v5, v31);
  v15 = sub_1D0FF4018();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v23[1] = sub_1D0FF4038();
  sub_1D0FF3FC8();
  sub_1D0FF3FF8();
  v18 = sub_1D0FF4058();
  sub_1D0FF4078();
  if (__OFSUB__(v17, 5))
  {
    __break(1u);
  }

  else
  {
    sub_1D0FF4028();
    sub_1D0FF4048();
    sub_1D0FF3FD8();
    sub_1D0FF4008();
    sub_1D0FF4068();
    sub_1D0FF4088();
    v19 = v25;
    sub_1D0FF4448();
    v18 = v28;
    sub_1D0FF4408();
    v24(v19, v31);
    v20 = sub_1D0FF4348();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v18, 1, v20) != 1)
    {
      (*(v26 + 8))(v8, v27);
      return (*(v21 + 32))(v29, v18, v20);
    }
  }

  sub_1D0F58BBC(v18);
  result = sub_1D0FF5F98();
  __break(1u);
  return result;
}

uint64_t Date.startOfWeek(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[2] = a1;
  v14[3] = a2;
  v2 = sub_1D0FF4098();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F5C19C(0, &qword_1EE071028, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v6 = sub_1D0FF4468();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D0FFAD50;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x1E6969AB8], v6);
  v12(v11 + v8, *MEMORY[0x1E6969A38], v6);
  v12(v11 + 2 * v8, *MEMORY[0x1E6969A10], v6);
  sub_1D0F5BE88(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0FF43D8();

  sub_1D0FF3FE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Date.isInSameMonth(date:)()
{
  v0 = sub_1D0FF4468();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D0FF4478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4448();
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A78], v0);
  v8 = sub_1D0FF4428();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

void Date.dateFrom(sourceTimeZone:)(uint64_t a1)
{
  sub_1D0F5C19C(0, &qword_1EE070A48, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D0FF42E8();
  sub_1D0F5C200(a1, v4);
  v6 = sub_1D0FF44B8();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v8 = sub_1D0FF4488();
    (*(v7 + 8))(v4, v6);
  }

  v9 = [v5 hk:v8 dateFromSourceTimeZone:?];

  sub_1D0FF4328();
}

uint64_t sub_1D0F5BE88(uint64_t a1)
{
  v2 = sub_1D0FF4468();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D0F5C5E8();
    v9 = sub_1D0FF5DB8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D0F5C67C(&qword_1EE071240, MEMORY[0x1E6969AD0]);
      v16 = sub_1D0FF5368();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D0F5C67C(&qword_1EE071238, MEMORY[0x1E6969AD0]);
          v23 = sub_1D0FF53D8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1D0F5C19C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D0F5C200(uint64_t a1, uint64_t a2)
{
  sub_1D0F5C19C(0, &qword_1EE070A48, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D0F5C294(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D0FF5D18())
    {
LABEL_3:
      sub_1D0F5C554();
      v3 = sub_1D0FF5DB8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D0FF5D18();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D3881410](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D0FF5BE8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1D0F304E4();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D0FF5BF8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1D0FF5BE8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1D0F304E4();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D0FF5BF8();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}