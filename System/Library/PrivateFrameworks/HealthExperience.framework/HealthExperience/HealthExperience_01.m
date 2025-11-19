uint64_t sub_1D0F2DF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D0F3060C(0, &qword_1EE06F820, MEMORY[0x1E69A3CD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D0FF4678();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F30670(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D0F30704(v8);
    return (*(v10 + 16))(a3, a2, v9);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    AnchoredChangeSet.aggregated(with:)();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1D0F2E0E4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v55 = a5;
  v56 = a3;
  v57 = a2;
  v72 = a1;
  v73 = a9;
  v71 = sub_1D0FF4678();
  v69 = *(v71 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F30268();
  v15 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = AssociatedTypeWitness;
  v17 = sub_1D0F2F854(&qword_1EE06E6B8, sub_1D0F30268);
  v63 = v17;
  v18 = a8;
  v51 = a8;
  v19 = a7;
  v50 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = v15;
  v75 = AssociatedTypeWitness;
  v20 = v15;
  v52 = v15;
  v76 = v17;
  v77 = AssociatedConformanceWitness;
  v21 = sub_1D0FF4CE8();
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1D0FF4D28();
  v65 = sub_1D0FF4868();
  v64 = swift_getWitnessTable();
  v54 = v22;
  v23 = sub_1D0FF4CA8();
  v24 = *(v23 - 8);
  v66 = v23;
  v67 = v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v60 = &v49 - v26;
  v53 = *(v20 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v21 - 8);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v33 = &v49 - v32;
  v58 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v49 = &v49 - v34;
  v74 = v57(a4, v55, a6);
  v35 = swift_allocObject();
  *(v35 + 16) = v19;
  *(v35 + 24) = v18;
  sub_1D0F30354(0);
  sub_1D0F30530(0);
  sub_1D0F2F854(&qword_1EE06E628, sub_1D0F30354);
  sub_1D0F2F854(&qword_1EE06E5B0, sub_1D0F30530);
  sub_1D0FF50E8();

  v36 = v52;
  sub_1D0FF5178();
  (*(v53 + 8))(v29, v36);
  v37 = v49;
  sub_1D0FF50F8();
  (*(v30 + 8))(v33, v21);
  v39 = v68;
  v38 = v69;
  v40 = v71;
  (*(v69 + 16))(v68, v72, v71);
  v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v42 = swift_allocObject();
  v43 = v51;
  *(v42 + 16) = v50;
  *(v42 + 24) = v43;
  (*(v38 + 32))(v42 + v41, v39, v40);
  v44 = v60;
  v45 = v54;
  sub_1D0FF50A8();

  v46 = v66;
  swift_getWitnessTable();
  v47 = sub_1D0FF5098();
  (*(v67 + 8))(v44, v46);
  result = (*(v58 + 8))(v37, v45);
  *v73 = v47;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_1D0F2E880(uint64_t a1, int a2)
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

uint64_t sub_1D0F2E8A0(uint64_t result, int a2, int a3)
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

uint64_t sub_1D0F2E950(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0F2E970(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1D0F2E998@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D0FF4C18();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_1D0FF4BC8();
  v11 = v10;
  v12 = sub_1D0FF4C08();
  v13 = sub_1D0FF5958();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = a2;
    v28 = v16;
    *v15 = 136315394;
    swift_getMetatypeMetadata();
    v17 = sub_1D0FF5448();
    v19 = sub_1D0F1AE0C(v17, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v27 = v10;
    v20 = v10;
    sub_1D0F1E940();
    v21 = sub_1D0FF5448();
    v23 = sub_1D0F1AE0C(v21, v22, &v28);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_1D0F17000, v12, v13, "[%s]: Received error from date range query that should return a Result: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v16, -1, -1);
    MEMORY[0x1D3882680](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v28 = v10;
  v29 = 1;
  v24 = v10;
  sub_1D0F30388(0);
  return sub_1D0FF4FD8();
}

uint64_t sub_1D0F2EBEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D0FF4C18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D0FF4678();
  MEMORY[0x1EEE9AC00](v12);
  v15 = *a1;
  if (*(a1 + 8))
  {
    sub_1D0FF4BC8();
    v16 = v15;
    v17 = sub_1D0FF4C08();
    v18 = sub_1D0FF5958();
    sub_1D0F30600(v15, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = a4;
      v35 = a3;
      v21 = v20;
      v36 = v20;
      *v19 = 136315394;
      swift_getMetatypeMetadata();
      v22 = sub_1D0FF5448();
      v24 = sub_1D0F1AE0C(v22, v23, &v36);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      v35 = v15;
      v25 = v15;
      sub_1D0F1E940();
      v26 = sub_1D0FF5448();
      v28 = sub_1D0F1AE0C(v26, v27, &v36);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_1D0F17000, v17, v18, "[%s]: Error when query for date ranges for database changes: %s", v19, 0x16u);
      swift_arrayDestroy();
      v29 = v21;
      a4 = v34;
      MEMORY[0x1D3882680](v29, -1, -1);
      MEMORY[0x1D3882680](v19, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v30 = 1;
  }

  else
  {
    (*(v14 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    sub_1D0FF4848();
    v30 = 0;
  }

  v31 = sub_1D0FF4868();
  return (*(*(v31 - 8) + 56))(a4, v30, 1, v31);
}

uint64_t sub_1D0F2F098()
{
  sub_1D0FF6338();
  swift_getWitnessTable();
  sub_1D0FF44E8();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F2F0FC()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

uint64_t sub_1D0F2F170()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

uint64_t sub_1D0F2F1B4(uint64_t a1, id *a2)
{
  result = sub_1D0FF5408();
  *a2 = 0;
  return result;
}

uint64_t sub_1D0F2F22C(uint64_t a1, id *a2)
{
  v3 = sub_1D0FF5418();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D0F2F2AC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D0FF5428();
  v2 = sub_1D0FF53E8();

  *a1 = v2;
  return result;
}

uint64_t sub_1D0F2F300()
{
  sub_1D0F2F854(&qword_1EC5FBFE0, type metadata accessor for HKError);

  return sub_1D0FF4168();
}

uint64_t sub_1D0F2F36C(uint64_t a1)
{
  v2 = sub_1D0F2F854(&qword_1EC5FBFE0, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D0F2F3D8(void *a1, uint64_t a2)
{
  v4 = sub_1D0F2F854(&qword_1EC5FBFE0, type metadata accessor for HKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D0F2F48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D0F2F854(&qword_1EC5FBFE0, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D0F2F508()
{
  sub_1D0FF6338();
  sub_1D0FF5378();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F2F568()
{
  swift_getWitnessTable();

  return sub_1D0FF44D8();
}

uint64_t sub_1D0F2F5D4()
{
  swift_getWitnessTable();

  return sub_1D0FF44D8();
}

uint64_t sub_1D0F2F640(uint64_t a1)
{
  v2 = sub_1D0F2F854(&qword_1EC5FBFA8, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D0F2F6AC(uint64_t a1)
{
  v2 = sub_1D0F2F854(&qword_1EC5FBFA8, type metadata accessor for HKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D0F2F71C(uint64_t a1)
{
  v2 = sub_1D0F2F854(&qword_1EC5FBFE0, type metadata accessor for HKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D0F2F788()
{
  sub_1D0F2F854(&qword_1EC5FBFE0, type metadata accessor for HKError);

  return sub_1D0FF4148();
}

uint64_t sub_1D0F2F854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0F2F89C(uint64_t a1)
{
  v2 = sub_1D0F2F854(&qword_1EC5FC008, type metadata accessor for AVMediaType);
  v3 = sub_1D0F2F854(&qword_1EC5FC010, type metadata accessor for AVMediaType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D0F2F9E8(uint64_t a1)
{
  v2 = sub_1D0F2F854(&qword_1EC5FBFF8, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1D0F2F854(&qword_1EC5FC000, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D0F2FAA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D0FF53E8();

  *a1 = v2;
  return result;
}

uint64_t sub_1D0F2FAEC(uint64_t a1)
{
  v2 = sub_1D0F2F854(&qword_1EE06E318, type metadata accessor for HKCharacteristicTypeIdentifier);
  v3 = sub_1D0F2F854(&qword_1EC5FBFF0, type metadata accessor for HKCharacteristicTypeIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D0F2FBA8()
{
  v0 = sub_1D0FF5428();
  v1 = MEMORY[0x1D3880B10](v0);

  return v1;
}

uint64_t sub_1D0F2FBE4()
{
  sub_1D0FF5428();
  sub_1D0FF5488();
}

uint64_t sub_1D0F2FC38()
{
  sub_1D0FF5428();
  sub_1D0FF6338();
  sub_1D0FF5488();
  v0 = sub_1D0FF6378();

  return v0;
}

uint64_t sub_1D0F2FCAC()
{
  v0 = sub_1D0FF5428();
  v2 = v1;
  if (v0 == sub_1D0FF5428() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D0FF6278();
  }

  return v5 & 1;
}

unint64_t sub_1D0F30184()
{
  result = qword_1EC5FBFD0;
  if (!qword_1EC5FBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FBFD0);
  }

  return result;
}

void sub_1D0F30268()
{
  if (!qword_1EE06E6A8)
  {
    sub_1D0F30354(255);
    sub_1D0F30530(255);
    sub_1D0F2F854(&qword_1EE06E628, sub_1D0F30354);
    sub_1D0F2F854(&qword_1EE06E5B0, sub_1D0F30530);
    v0 = sub_1D0FF4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E6A8);
    }
  }
}

void sub_1D0F303BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_1D0F1E940();
    v9 = a4(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D0F30438()
{
  if (!qword_1EE070BA0)
  {
    sub_1D0F304E4();
    sub_1D0FF3EA8();
    sub_1D0F2F854(&qword_1EE070B40, sub_1D0F304E4);
    v0 = sub_1D0FF5358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070BA0);
    }
  }
}

unint64_t sub_1D0F304E4()
{
  result = qword_1EE070B50;
  if (!qword_1EE070B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE070B50);
  }

  return result;
}

uint64_t sub_1D0F3056C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(sub_1D0FF4678() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_1D0F2EBEC(a1, v7, v5, a2);
}

void sub_1D0F30600(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1D0F3060C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D0F30670(uint64_t a1, uint64_t a2)
{
  sub_1D0F3060C(0, &qword_1EE06F820, MEMORY[0x1E69A3CD8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0F30704(uint64_t a1)
{
  sub_1D0F3060C(0, &qword_1EE06F820, MEMORY[0x1E69A3CD8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall SharingEntryProfileInformation.localizedFullNameOrAccountIdentifier(shouldDisplaySuggestedName:newlineBetweenNames:)(Swift::Bool shouldDisplaySuggestedName, Swift::Bool newlineBetweenNames)
{
  v2 = sub_1D0F30920(shouldDisplaySuggestedName, newlineBetweenNames, MEMORY[0x1E69A2CA0]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::Bool __swiftcall SharingEntryProfileInformation.isContact()()
{
  v1 = (v0 + *(type metadata accessor for SharingEntryProfileInformation() + 28));
  v2 = v1[1];
  result = 0;
  if (v2)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0 ? HIBYTE(v2) & 0xF : v3)
    {
      return 1;
    }
  }

  return result;
}

Swift::String __swiftcall SharingEntryProfileInformation.localizedShortNameOrAccountIdentifier(shouldDisplaySuggestedName:newlineBetweenNames:)(Swift::Bool shouldDisplaySuggestedName, Swift::Bool newlineBetweenNames)
{
  v2 = sub_1D0F30920(shouldDisplaySuggestedName, newlineBetweenNames, MEMORY[0x1E69A2CA8]);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_1D0F30920(char a1, char a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, _BOOL8, void, void, void, _BYTE))
{
  v7 = type metadata accessor for SharingEntryProfileInformation();
  v8 = (v3 + v7[8]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (v3 + v7[9]);
  v12 = *v11;
  v13 = v11[1];
  v14 = (v3 + v7[7]);
  v15 = v14[1];
  v18 = 0;
  if (v15)
  {
    v16 = *v14 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0 ? HIBYTE(v15) & 0xF : v16)
    {
      v18 = 1;
    }
  }

  sub_1D0FF4998();
  return a3(v9, v10, v12, v13, v18, *(v3 + v7[6]), *(v3 + v7[6] + 8), a1 & 1, a2 & 1);
}

BOOL SharingEntryProfileInformation.isIncomingAccepted.getter()
{
  v1 = type metadata accessor for SharingEntryProfileInformation();
  v2 = v0 + *(v1 + 80);
  if (*(v2 + 8))
  {
    return 0;
  }

  if (*v2 != 1)
  {
    return 0;
  }

  v3 = v0 + *(v1 + 76);
  return (*(v3 + 8) & 1) == 0 && *v3 == 1;
}

BOOL SharingEntryProfileInformation.isIncomingDeclined.getter()
{
  v1 = type metadata accessor for SharingEntryProfileInformation();
  v2 = v0 + *(v1 + 80);
  if (*(v2 + 8))
  {
    return 0;
  }

  if (*v2 != 1)
  {
    return 0;
  }

  v3 = v0 + *(v1 + 76);
  return (*(v3 + 8) & 1) == 0 && *v3 == 2;
}

BOOL SharingEntryProfileInformation.isIncomingInvite.getter()
{
  v1 = type metadata accessor for SharingEntryProfileInformation();
  v2 = v0 + *(v1 + 80);
  if (*(v2 + 8))
  {
    return 0;
  }

  if (*v2 != 1)
  {
    return 0;
  }

  v3 = v0 + *(v1 + 76);
  return (*(v3 + 8) & 1) == 0 && *v3 == 0;
}

BOOL SharingEntryProfileInformation.isOutgoingAccepted.getter()
{
  v1 = type metadata accessor for SharingEntryProfileInformation();
  v2 = v0 + *(v1 + 80);
  if (*(v2 + 8))
  {
    return 0;
  }

  if (*v2)
  {
    return 0;
  }

  v3 = v0 + *(v1 + 76);
  return (*(v3 + 8) & 1) == 0 && *v3 == 1;
}

BOOL SharingEntryProfileInformation.isOutgoingPending.getter()
{
  v1 = type metadata accessor for SharingEntryProfileInformation();
  v2 = v0 + *(v1 + 80);
  if (*(v2 + 8))
  {
    return 0;
  }

  if (*v2)
  {
    return 0;
  }

  v3 = v0 + *(v1 + 76);
  return (*(v3 + 8) & 1) == 0 && *v3 == 0;
}

unint64_t SharingEntryProfileInformation.notificationIdentifier.getter()
{
  v1 = type metadata accessor for SharingEntryProfileInformation();
  v2 = v0 + *(v1 + 80);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = v0 + *(v1 + 20);

  return sub_1D0F30C2C(v5, v3, v4);
}

unint64_t sub_1D0F30C2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = HKStringForMessageDirection();
    v4 = sub_1D0FF5428();
    v3 = v6;
  }

  sub_1D0FF5DE8();

  v7 = sub_1D0FF4358();
  MEMORY[0x1D3880AC0](v7);

  MEMORY[0x1D3880AC0](95, 0xE100000000000000);
  MEMORY[0x1D3880AC0](v4, v3);

  return 0xD000000000000019;
}

uint64_t HKSample.dateInterval.getter()
{
  v1 = sub_1D0FF4348();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = [v0 startDate];
  sub_1D0FF4328();

  v4 = [v0 endDate];
  sub_1D0FF4328();

  return sub_1D0FF3E88();
}

uint64_t sub_1D0F30E1C()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D0F30E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D0FF6278() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1003580 == a2)
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

uint64_t sub_1D0F30F44(uint64_t a1)
{
  v2 = sub_1D0F229AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F30F80(uint64_t a1)
{
  v2 = sub_1D0F229AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F30FBC(uint64_t a1)
{
  v2 = sub_1D0F22AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F30FF8(uint64_t a1)
{
  v2 = sub_1D0F22AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F31034()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

uint64_t sub_1D0F3107C()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

uint64_t sub_1D0F310C0()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0x4968637461577369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965707974;
  }
}

uint64_t sub_1D0F3111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D0F35934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D0F31144(uint64_t a1)
{
  v2 = sub_1D0F34EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F31180(uint64_t a1)
{
  v2 = sub_1D0F34EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F311BC()
{
  if (*v0)
  {
    return 0x656C616373;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1D0F311EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D0FF6278() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
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

uint64_t sub_1D0F312C4(uint64_t a1)
{
  v2 = sub_1D0F227A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F31300(uint64_t a1)
{
  v2 = sub_1D0F227A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D0F3133C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D0FF6278() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
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

uint64_t sub_1D0F31420(uint64_t a1)
{
  v2 = sub_1D0F228A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D0F3145C(uint64_t a1)
{
  v2 = sub_1D0F228A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageRepresentation.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1D0F350EC(0, &qword_1EC5FC1D0, sub_1D0F34EE0, &type metadata for ImageRepresentation.IconFileCodingKeys, MEMORY[0x1E69E6F58]);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v48 - v4;
  sub_1D0F350EC(0, &qword_1EE06E138, sub_1D0F227A4, &type metadata for ImageRepresentation.PngDataCodingKeys, v2);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v48 - v6;
  sub_1D0F350EC(0, &qword_1EE06E140, sub_1D0F228A8, &type metadata for ImageRepresentation.SymbolCodingKeys, v2);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v48 - v8;
  sub_1D0F21730();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F350EC(0, &qword_1EE06E148, sub_1D0F229AC, &type metadata for ImageRepresentation.BundleCodingKeys, v2);
  v12 = v11;
  v48 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F350EC(0, &qword_1EE06E150, sub_1D0F22AB0, &type metadata for ImageRepresentation.CodingKeys, v2);
  v19 = *(v18 - 8);
  v61 = v18;
  v62 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D0F22AB0();
  v63 = v21;
  sub_1D0FF6438();
  sub_1D0F35030(v59, v17, type metadata accessor for ImageRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *v17;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = *(v17 + 1);
      LOBYTE(v64) = 2;
      sub_1D0F227A4();
      v29 = v50;
      v30 = v61;
      v31 = v63;
      sub_1D0FF6178();
      v64 = v23;
      v65 = v28;
      v66 = 0;
      sub_1D0F34F88();
      v32 = v55;
      v33 = v60;
      sub_1D0FF6208();
      if (v33)
      {
        (*(v54 + 8))(v29, v32);
        (*(v62 + 8))(v31, v30);
        return sub_1D0F34FDC(v23, v28);
      }

      else
      {
        LOBYTE(v64) = 1;
        sub_1D0FF61F8();
        sub_1D0F34FDC(v23, v28);
        (*(v54 + 8))(v29, v32);
        return (*(v62 + 8))(v31, v30);
      }
    }

    else
    {
      v59 = *(v17 + 2);
      v41 = v17[24];
      v42 = v17[25];
      LOBYTE(v64) = 3;
      sub_1D0F34EE0();
      v43 = v56;
      v44 = v61;
      v45 = v63;
      sub_1D0FF6178();
      LOBYTE(v64) = 0;
      v46 = v58;
      v47 = v60;
      sub_1D0FF61C8();
      if (v47)
      {
      }

      else
      {
        LODWORD(v60) = v42;

        v64 = v59;
        LOBYTE(v65) = v41;
        v66 = 1;
        sub_1D0F34F34();
        sub_1D0FF61B8();
        LOBYTE(v64) = 2;
        sub_1D0FF61D8();
      }

      (*(v57 + 8))(v43, v46);
      return (*(v62 + 8))(v45, v44);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D0F21788();
    v35 = v51;
    sub_1D0F22FD4(&v17[*(v34 + 48)], v51, sub_1D0F21730);
    LOBYTE(v64) = 1;
    sub_1D0F228A8();
    v36 = v49;
    v37 = v61;
    v38 = v63;
    sub_1D0FF6178();
    LOBYTE(v64) = 0;
    v39 = v53;
    v40 = v60;
    sub_1D0FF61C8();

    if (!v40)
    {
      LOBYTE(v64) = 1;
      sub_1D0F217F4();
      sub_1D0F22EF4(&qword_1EE06E4C0, sub_1D0F217F4);
      sub_1D0FF61B8();
    }

    (*(v52 + 8))(v36, v39);
    sub_1D0F352B8(v35, sub_1D0F21730);
    return (*(v62 + 8))(v38, v37);
  }

  else
  {
    v59 = *(v17 + 2);
    LOBYTE(v64) = 0;
    sub_1D0F229AC();
    v24 = v61;
    v25 = v63;
    sub_1D0FF6178();
    LOBYTE(v64) = 0;
    v26 = v60;
    sub_1D0FF61C8();

    if (v26)
    {

      (*(v48 + 8))(v14, v12);
      return (*(v62 + 8))(v25, v24);
    }

    else
    {
      LOBYTE(v64) = 1;
      sub_1D0FF61C8();

      (*(v48 + 8))(v14, v12);
      return (*(v62 + 8))(v63, v24);
    }
  }
}

uint64_t ImageRepresentation.hash(into:)()
{
  sub_1D0F217F4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F21730();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F35030(v0, v14, type metadata accessor for ImageRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v16 = *v14;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = *(v14 + 1);
      v19 = *(v14 + 2);
      MEMORY[0x1D3881950](2);
      sub_1D0FF4298();
      MEMORY[0x1D3881950](v19);
      return sub_1D0F34FDC(v16, v18);
    }

    else
    {
      v21 = *(v14 + 2);
      v22 = v14[24];
      MEMORY[0x1D3881950](3);
      sub_1D0FF5488();

      if (v22 == 1)
      {
        sub_1D0FF6358();
      }

      else
      {
        sub_1D0FF6358();
        if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0;
        }

        MEMORY[0x1D3881970](v23);
      }

      return sub_1D0FF6358();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D0F21788();
    sub_1D0F22FD4(&v14[*(v20 + 48)], v11, sub_1D0F21730);
    MEMORY[0x1D3881950](1);
    sub_1D0FF5488();

    sub_1D0F35030(v11, v9, sub_1D0F21730);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      sub_1D0FF6358();
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      sub_1D0FF6358();
      sub_1D0F35B54(&qword_1EC5FC1E0, &qword_1EC5FC1E8);
      sub_1D0FF5378();
      (*(v3 + 8))(v5, v2);
    }

    return sub_1D0F352B8(v11, sub_1D0F21730);
  }

  else
  {
    MEMORY[0x1D3881950](0);
    sub_1D0FF5488();

    sub_1D0FF5488();
  }
}

uint64_t ImageRepresentation.hashValue.getter()
{
  sub_1D0FF6338();
  ImageRepresentation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F321F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F32228()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F3225C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F32290()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D0F322E0()
{
  sub_1D0FF6338();
  ImageRepresentation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t sub_1D0F32324()
{
  sub_1D0FF6338();
  ImageRepresentation.hash(into:)();
  return sub_1D0FF6378();
}

uint64_t ImageRepresentation.init(assetName:bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  type metadata accessor for ImageRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ImageRepresentation.init(assetName:bundle:)@<X0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v8 = [a1 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D0FF5428();
    v12 = v11;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v10;
    a4[3] = v12;
    type metadata accessor for ImageRepresentation();

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D0FF5DE8();

    v14 = a1;
    v15 = [v14 description];
    v16 = sub_1D0FF5428();
    v18 = v17;

    MEMORY[0x1D3880AC0](v16, v18);

    result = sub_1D0FF5F98();
    __break(1u);
  }

  return result;
}

uint64_t ImageRepresentation.init(symbolName:imageConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1D0F21730();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  sub_1D0F217F4();
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v16(v13, 1, 1, v14);
  if (a3)
  {
    sub_1D0F1ACD4(0, &qword_1EE06F9C0);
    sub_1D0FF52F8();
    sub_1D0F352B8(v13, sub_1D0F21730);
    v16(v11, 0, 1, v15);
    sub_1D0F22FD4(v11, v13, sub_1D0F21730);
  }

  sub_1D0F21788();
  v18 = *(v17 + 48);
  *a4 = a1;
  a4[1] = a2;
  sub_1D0F22FD4(v13, a4 + v18, sub_1D0F21730);
  type metadata accessor for ImageRepresentation();
  return swift_storeEnumTagMultiPayload();
}

void ImageRepresentation.init(image:)(UIImage *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ImageRepresentation();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = UIImagePNGRepresentation(a1);
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D0FF4288();
    v11 = v10;

    [(UIImage *)a1 scale];
    v13 = v12;
    v14 = v12;

    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        *v6 = v9;
        v6[1] = v11;
        v6[2] = v13;
        swift_storeEnumTagMultiPayload();
        sub_1D0F22FD4(v6, a2, type metadata accessor for ImageRepresentation);
        (*(v17 + 56))(a2, 0, 1, v4);
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v15 = *(v17 + 56);

  v15(a2, 1, 1, v4);
}

uint64_t ImageRepresentation.init(iconTypeID:scale:isWatchIcon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 25) = a5;
  type metadata accessor for ImageRepresentation();

  return swift_storeEnumTagMultiPayload();
}

UIImage_optional __swiftcall ImageRepresentation.makeImage()()
{
  v1 = v0;
  sub_1D0F21730();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - v6;
  v8 = sub_1D0FF4C18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D0F35030(v1, v17, type metadata accessor for ImageRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = *v17;
      v28 = v17[1];
      v29 = v17[2];
      v30 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v31 = sub_1D0FF4278();
      v25 = [v30 initWithData:v31 scale:v29];

      sub_1D0F34FDC(v27, v28);
      goto LABEL_19;
    }

    sub_1D0F352B8(v17, type metadata accessor for ImageRepresentation);
    sub_1D0FF4BA8();
    v37 = sub_1D0FF4C08();
    v38 = sub_1D0FF5958();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1D0F1AE0C(0xD000000000000013, 0x80000001D0FF8580, &v54);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1D3882680](v40, -1, -1);
      MEMORY[0x1D3882680](v39, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    goto LABEL_18;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = v17[2];
    v19 = v17[3];
    v21 = sub_1D0FF53E8();
    v22 = [objc_opt_self() bundleWithIdentifier_];

    if (v22)
    {

      v23 = v22;
      v24 = sub_1D0FF53E8();

      v25 = [objc_opt_self() imageNamed:v24 inBundle:v23 withConfiguration:0];

      goto LABEL_19;
    }

    sub_1D0FF4BC8();

    v42 = sub_1D0FF4C08();
    v43 = sub_1D0FF5958();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v15;
      v54 = v52;
      *v44 = 136315394;
      sub_1D0F35318();
      v45 = sub_1D0FF5448();
      v47 = sub_1D0F1AE0C(v45, v46, &v54);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v48 = sub_1D0F1AE0C(v20, v19, &v54);

      *(v44 + 14) = v48;
      _os_log_impl(&dword_1D0F17000, v42, v43, "[%s: Unable to get bundle with identifier %s]", v44, 0x16u);
      v49 = v52;
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v49, -1, -1);
      MEMORY[0x1D3882680](v44, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v14, v8);
LABEL_18:
    v25 = 0;
    goto LABEL_19;
  }

  sub_1D0F21788();
  sub_1D0F22FD4(v17 + *(v32 + 48), v7, sub_1D0F21730);
  sub_1D0F35030(v7, v5, sub_1D0F21730);
  sub_1D0F217F4();
  v34 = v33;
  v35 = *(v33 - 8);
  if ((*(v35 + 48))(v5, 1, v33) == 1)
  {
    sub_1D0F352B8(v5, sub_1D0F21730);
    v36 = 0;
  }

  else
  {
    v36 = sub_1D0FF52B8();
    (*(v35 + 8))(v5, v34);
  }

  v41 = sub_1D0FF53E8();

  v25 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  sub_1D0F352B8(v7, sub_1D0F21730);
LABEL_19:
  v50 = v25;
  result.value.super.isa = v50;
  result.is_nil = v26;
  return result;
}

void ImageRepresentation.image.getter()
{
  v1 = v0;
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - v7;
  sub_1D0F21730();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - v13;
  v15 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D0F35030(v1, v17, type metadata accessor for ImageRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = *v17;
      v22 = v17[1];
      v23 = v17[2];
      v24 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1D0F35360(v21, v22);
      v25 = sub_1D0FF4278();
      v26 = [v24 initWithData:v25 scale:v23];

      sub_1D0F34FDC(v21, v22);
      if (v26 && (v27 = [v26 imageWithRenderingMode_], v26, v27))
      {
        sub_1D0FF51F8();
      }

      else
      {
        sub_1D0FF4BA8();
        v37 = sub_1D0FF4C08();
        v38 = sub_1D0FF5958();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v46 = v40;
          *v39 = 136315138;
          *(v39 + 4) = sub_1D0F1AE0C(0xD000000000000013, 0x80000001D0FF8580, &v46);
          _os_log_impl(&dword_1D0F17000, v37, v38, "[%s]: Unable to resolve image from data", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          MEMORY[0x1D3882680](v40, -1, -1);
          MEMORY[0x1D3882680](v39, -1, -1);
        }

        (*(v3 + 8))(v8, v2);
        sub_1D0FF5208();
      }

      sub_1D0F34FDC(v21, v22);
    }

    else
    {
      sub_1D0F352B8(v17, type metadata accessor for ImageRepresentation);
      sub_1D0FF4BA8();
      v33 = sub_1D0FF4C08();
      v34 = sub_1D0FF5958();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v46 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_1D0F1AE0C(0xD000000000000013, 0x80000001D0FF8580, &v46);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1D3882680](v36, -1, -1);
        MEMORY[0x1D3882680](v35, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      sub_1D0FF5208();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = sub_1D0FF53E8();

      v20 = [objc_opt_self() bundleWithIdentifier_];

      sub_1D0FF5228();
      return;
    }

    sub_1D0F21788();
    sub_1D0F22FD4(v17 + *(v28 + 48), v14, sub_1D0F21730);
    sub_1D0F217F4();
    v30 = v29;
    v31 = *(v29 - 8);
    v32 = *(v31 + 48);
    if (v32(v14, 1, v29) == 1)
    {
      sub_1D0FF5218();
LABEL_22:
      sub_1D0F352B8(v14, sub_1D0F21730);
      return;
    }

    sub_1D0F35030(v14, v12, sub_1D0F21730);
    if (v32(v12, 1, v30) == 1)
    {
      sub_1D0F352B8(v12, sub_1D0F21730);
      v41 = 0;
    }

    else
    {
      v41 = sub_1D0FF52B8();
      (*(v31 + 8))(v12, v30);
    }

    v42 = sub_1D0FF53E8();
    v43 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    if (v43)
    {

      v44 = [v43 imageWithRenderingMode_];

      sub_1D0FF51F8();
      goto LABEL_22;
    }

    __break(1u);
  }
}

uint64_t ImageRepresentation.makeUIImageFromIcon(imageDescriptor:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D0FF4C18();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for ImageRepresentation();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0F33788, 0, 0);
}

uint64_t sub_1D0F33788()
{
  v17 = v0;
  sub_1D0F35030(v0[3], v0[8], type metadata accessor for ImageRepresentation);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v1 = v0[8];
    v3 = *v1;
    v2 = v1[1];
    v0[9] = v2;
    sub_1D0F1ACD4(0, &qword_1EC5FC210);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_1D0F33A00;
    v5 = v0[2];

    return MEMORY[0x1EEE0FA78](v3, v2, v5);
  }

  else
  {
    sub_1D0F352B8(v0[8], type metadata accessor for ImageRepresentation);
    sub_1D0FF4BA8();
    v6 = sub_1D0FF4C08();
    v7 = sub_1D0FF5958();
    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1D0F1AE0C(0xD000000000000013, 0x80000001D0FF8580, &v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1D3882680](v13, -1, -1);
      MEMORY[0x1D3882680](v12, -1, -1);
    }

    (*(v10 + 8))(v9, v11);

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_1D0F33A00(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ImageRepresentation.makeImageFromIcon(imageDescriptor:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageRepresentation();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F35030(v2, v10, type metadata accessor for ImageRepresentation);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D0F1ACD4(0, &qword_1EC5FC210);
    sub_1D0FF5B78();

    v11 = 0;
  }

  else
  {
    sub_1D0F352B8(v10, type metadata accessor for ImageRepresentation);
    sub_1D0FF4BA8();
    v12 = sub_1D0FF4C08();
    v13 = sub_1D0FF5958();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D0F1AE0C(0xD000000000000013, 0x80000001D0FF8580, &v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1D3882680](v15, -1, -1);
      MEMORY[0x1D3882680](v14, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v11 = 1;
  }

  sub_1D0F353B4();
  return (*(*(v16 - 8) + 56))(a1, v11, 1, v16);
}

char *sub_1D0F33E24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D0F35A48(0, &qword_1EE071018, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1D0F33F30@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D0FF3F78();
    if (v10)
    {
      v11 = sub_1D0FF3FA8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D0FF3F98();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D0FF3F78();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D0FF3FA8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D0FF3F98();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D0F34160(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D0F342F0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D0F34FDC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D0F33F30(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D0F34FDC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1D0F342F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D0FF3F78();
  v11 = result;
  if (result)
  {
    result = sub_1D0FF3FA8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D0FF3F98();
  sub_1D0F33F30(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D0F343A8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D0F35360(a3, a4);
          return sub_1D0F34160(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s16HealthExperience19ImageRepresentationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D0F217F4();
  v84 = v4;
  v87 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F35A98(0, &qword_1EE06FA70, sub_1D0F21730);
  v83 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v88 = &v81 - v7;
  sub_1D0F21730();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v81 - v13;
  v14 = type metadata accessor for ImageRepresentation();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v81 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v81 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v81 - v24);
  sub_1D0F35A98(0, qword_1EE070268, type metadata accessor for ImageRepresentation);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v81 - v28;
  v30 = &v81 + *(v27 + 56) - v28;
  sub_1D0F35030(a1, &v81 - v28, type metadata accessor for ImageRepresentation);
  sub_1D0F35030(a2, v30, type metadata accessor for ImageRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D0F35030(v29, v25, type metadata accessor for ImageRepresentation);
      v33 = *v25;
      v32 = v25[1];
      v35 = v25[2];
      v34 = v25[3];
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_24:

        goto LABEL_25;
      }

      v66 = *(v30 + 2);
      v65 = *(v30 + 3);
      if (v33 == *v30 && v32 == *(v30 + 1))
      {
      }

      else
      {
        v68 = sub_1D0FF6278();

        if ((v68 & 1) == 0)
        {

          goto LABEL_54;
        }
      }

      if (v35 == v66 && v34 == v65)
      {
      }

      else
      {
        v75 = sub_1D0FF6278();

        if ((v75 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

LABEL_53:
      sub_1D0F352B8(v29, type metadata accessor for ImageRepresentation);
      return 1;
    }

    sub_1D0F35030(v29, v23, type metadata accessor for ImageRepresentation);
    v45 = *v23;
    v44 = v23[1];
    sub_1D0F21788();
    v47 = *(v46 + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D0F352B8(v23 + v47, sub_1D0F21730);
      goto LABEL_24;
    }

    v49 = *v30;
    v48 = *(v30 + 1);
    v50 = v86;
    sub_1D0F22FD4(v23 + v47, v86, sub_1D0F21730);
    v51 = &v30[v47];
    v52 = v85;
    sub_1D0F22FD4(v51, v85, sub_1D0F21730);
    if (v45 == v49 && v44 == v48)
    {

      v54 = v87;
      v53 = v88;
    }

    else
    {
      v69 = sub_1D0FF6278();

      v54 = v87;
      v53 = v88;
      if ((v69 & 1) == 0)
      {
        sub_1D0F352B8(v52, sub_1D0F21730);
        sub_1D0F352B8(v50, sub_1D0F21730);
        goto LABEL_54;
      }
    }

    v70 = *(v83 + 48);
    sub_1D0F35030(v50, v53, sub_1D0F21730);
    sub_1D0F35030(v52, v53 + v70, sub_1D0F21730);
    v71 = *(v54 + 48);
    v72 = v84;
    if (v71(v53, 1, v84) == 1)
    {
      sub_1D0F352B8(v52, sub_1D0F21730);
      sub_1D0F352B8(v50, sub_1D0F21730);
      if (v71(v53 + v70, 1, v72) == 1)
      {
        sub_1D0F352B8(v53, sub_1D0F21730);
        goto LABEL_53;
      }
    }

    else
    {
      v74 = v82;
      sub_1D0F35030(v53, v82, sub_1D0F21730);
      if (v71(v53 + v70, 1, v72) != 1)
      {
        v76 = v53 + v70;
        v77 = v81;
        (*(v54 + 32))(v81, v76, v72);
        sub_1D0F35B54(&qword_1EE06E4B8, &qword_1EE06E320);
        v78 = v74;
        v79 = sub_1D0FF53D8();
        v80 = *(v54 + 8);
        v80(v77, v72);
        sub_1D0F352B8(v52, sub_1D0F21730);
        sub_1D0F352B8(v50, sub_1D0F21730);
        v80(v78, v72);
        sub_1D0F352B8(v53, sub_1D0F21730);
        if ((v79 & 1) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      sub_1D0F352B8(v52, sub_1D0F21730);
      sub_1D0F352B8(v50, sub_1D0F21730);
      (*(v54 + 8))(v74, v72);
    }

    sub_1D0F35AF8(v53, &qword_1EE06FA70, sub_1D0F21730);
    goto LABEL_54;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1D0F35030(v29, v17, type metadata accessor for ImageRepresentation);
    v56 = *v17;
    v55 = *(v17 + 1);
    v57 = *(v17 + 2);
    v58 = v17[24];
    v59 = v17[25];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_24;
    }

    v60 = *(v30 + 2);
    v61 = v30[24];
    v62 = v30[25];
    if (v56 == *v30 && v55 == *(v30 + 1))
    {

      if (v58)
      {
LABEL_20:
        if (!v61)
        {
          goto LABEL_54;
        }

LABEL_41:
        sub_1D0F352B8(v29, type metadata accessor for ImageRepresentation);
        return v59 ^ v62 ^ 1u;
      }
    }

    else
    {
      v64 = sub_1D0FF6278();

      if ((v64 & 1) == 0)
      {
LABEL_54:
        sub_1D0F352B8(v29, type metadata accessor for ImageRepresentation);
        return 0;
      }

      if (v58)
      {
        goto LABEL_20;
      }
    }

    if (v57 == v60)
    {
      v73 = v61;
    }

    else
    {
      v73 = 1;
    }

    if (v73)
    {
      goto LABEL_54;
    }

    goto LABEL_41;
  }

  sub_1D0F35030(v29, v20, type metadata accessor for ImageRepresentation);
  v36 = *v20;
  v37 = v20[1];
  v38 = v20[2];
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v39 = *v30;
    v40 = *(v30 + 1);
    v41 = *(v30 + 2);
    v42 = sub_1D0F343A8(v36, v37, *v30, v40);
    sub_1D0F34FDC(v39, v40);
    sub_1D0F34FDC(v36, v37);
    if (v42)
    {
      sub_1D0F352B8(v29, type metadata accessor for ImageRepresentation);
      return v38 == v41;
    }

    goto LABEL_54;
  }

  sub_1D0F34FDC(v36, v37);
LABEL_25:
  sub_1D0F35AF8(v29, qword_1EE070268, type metadata accessor for ImageRepresentation);
  return 0;
}

unint64_t sub_1D0F34EE0()
{
  result = qword_1EC5FC1D8;
  if (!qword_1EC5FC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC1D8);
  }

  return result;
}

unint64_t sub_1D0F34F34()
{
  result = qword_1EE06F858;
  if (!qword_1EE06F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE06F858);
  }

  return result;
}

unint64_t sub_1D0F34F88()
{
  result = qword_1EE070DA0;
  if (!qword_1EE070DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070DA0);
  }

  return result;
}

uint64_t sub_1D0F34FDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D0F35030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D0F35098(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F1ACD4(255, &qword_1EE06F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D0F350EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D0F35154()
{
  if (!qword_1EC5FC1F8)
  {
    sub_1D0F351C4();
    sub_1D0FF5E28();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5FC1F8);
    }
  }
}

unint64_t sub_1D0F351C4()
{
  result = qword_1EC5FC200;
  if (!qword_1EC5FC200)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC5FC200);
  }

  return result;
}

unint64_t sub_1D0F35210()
{
  result = qword_1EE070A40;
  if (!qword_1EE070A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE070A40);
  }

  return result;
}

unint64_t sub_1D0F35264()
{
  result = qword_1EE071268;
  if (!qword_1EE071268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE071268);
  }

  return result;
}

uint64_t sub_1D0F352B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D0F35318()
{
  result = qword_1EC5FC208;
  if (!qword_1EC5FC208)
  {
    type metadata accessor for ImageRepresentation();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC5FC208);
  }

  return result;
}

uint64_t sub_1D0F35360(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1D0F353B4()
{
  if (!qword_1EC5FC218)
  {
    v0 = sub_1D0FF4AD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC218);
    }
  }
}

void sub_1D0F354A4()
{
  if (!qword_1EC5FC228)
  {
    sub_1D0F35A48(255, &qword_1EE06F850, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC5FC228);
    }
  }
}

uint64_t getEnumTagSinglePayload for ImageRepresentation.IconFileCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImageRepresentation.IconFileCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D0F356D0()
{
  result = qword_1EC5FC230;
  if (!qword_1EC5FC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC230);
  }

  return result;
}

unint64_t sub_1D0F35728()
{
  result = qword_1EC5FC238;
  if (!qword_1EC5FC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC238);
  }

  return result;
}

unint64_t sub_1D0F35780()
{
  result = qword_1EC5FC240;
  if (!qword_1EC5FC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC240);
  }

  return result;
}

unint64_t sub_1D0F357D8()
{
  result = qword_1EC5FC248;
  if (!qword_1EC5FC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC248);
  }

  return result;
}

unint64_t sub_1D0F35830()
{
  result = qword_1EC5FC250;
  if (!qword_1EC5FC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC250);
  }

  return result;
}

unint64_t sub_1D0F35888()
{
  result = qword_1EC5FC258;
  if (!qword_1EC5FC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC258);
  }

  return result;
}

unint64_t sub_1D0F358E0()
{
  result = qword_1EC5FC260;
  if (!qword_1EC5FC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC260);
  }

  return result;
}

uint64_t sub_1D0F35934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965707974 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D0FF6278() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1D0FF6278() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4968637461577369 && a2 == 0xEB000000006E6F63)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D0FF6278();

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

void sub_1D0F35A48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D0F35A98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D0F35AF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D0F35A98(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D0F35B54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D0F217F4();
    sub_1D0F35098(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DataTypeContentConfiguration.hkType.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = v2;
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_1D0FF5DE8();

    v8[0] = 0xD000000000000022;
    v8[1] = 0x80000001D10035E0;
    v7 = sub_1D0FF6468();
    v3 = v8;
    MEMORY[0x1D3880AC0](v7);

    sub_1D0FF5F98();
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1D0FF5D18();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v5 = MEMORY[0x1D3881410](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = v5;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t Collection<>.hkTypes.getter()
{
  sub_1D0F35EA4();
  sub_1D0F36570(&qword_1EE070B70, sub_1D0F35EA4);
  v0 = sub_1D0FF5568();
  v1 = sub_1D0F36130(v0);

  v2 = sub_1D0F35FD0(v1);

  return v2;
}

uint64_t sub_1D0F35E1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v4(AssociatedTypeWitness, v3);
  *a1 = result;
  return result;
}

void sub_1D0F35EA4()
{
  if (!qword_1EE070B78)
  {
    sub_1D0F304E4();
    v0 = sub_1D0FF56E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070B78);
    }
  }
}

uint64_t DataTypeContentConfigurationContext.anchoredTypeState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D0FF46B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DataTypeContentConfigurationContext.init(anchoredTypeState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D0FF46B8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D0F35FD0(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1D0FF5D18();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D0FCA5B0(v2, 0);

    v1 = sub_1D0FC9764(&v5, (v3 + 32), v2, v1);
    sub_1D0F36568();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1D0F36080(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1D0FF5D18();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D0FCA5B0(v2, 0);

    v1 = sub_1D0FC9990(&v5, (v3 + 32), v2, v1);
    sub_1D0F36568();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1D0F36130(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D0FF5D18())
  {
    v4 = sub_1D0F304E4();
    v5 = sub_1D0F36570(&qword_1EE070B40, sub_1D0F304E4);
    result = MEMORY[0x1D3880E20](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3881410](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1D0F68380(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1D0FF5D18();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t type metadata accessor for DataTypeContentConfigurationContext()
{
  result = qword_1EE070C68;
  if (!qword_1EE070C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0F3637C()
{
  result = sub_1D0FF46B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D0F363FC(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1D0FF5D18();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for AdvertisableFeatureModel();
  v5 = sub_1D0F36570(&qword_1EC5FC268, type metadata accessor for AdvertisableFeatureModel);
  result = MEMORY[0x1D3880E20](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3881410](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1D0F68B7C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1D0FF5D18();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D0F36570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Publisher.aggregate(aggregationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4);
  (*(v9 + 32))(a4, v11, a3);
  v12 = (a4 + *(type metadata accessor for Publishers.BufferWithAggregator() + 36));
  *v12 = a1;
  v12[1] = a2;
}

uint64_t Publishers.BufferWithAggregator.init(upstream:aggregationHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for Publishers.BufferWithAggregator();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t Publishers.BufferWithAggregator.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v19[0] = *(v11 + 16);
  v19[1] = v13;
  v19[2] = v12;
  v19[3] = v14;
  _s20BufferWithAggregatorV5InnerCMa();
  (*(v8 + 16))(v10, a1, a3);
  v15 = (v4 + *(a2 + 36));
  v16 = *v15;
  v17 = v15[1];
  swift_allocObject();

  v19[0] = sub_1D0F369AC(v10, v16, v17);
  swift_getWitnessTable();
  sub_1D0FF5168();
}

uint64_t *sub_1D0F369AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  v3[6] = 0;
  *(v3 + 56) = 2;
  sub_1D0FF4548();
  swift_allocObject();
  v3[8] = sub_1D0FF4538();
  v8 = *(*v3 + 136);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = sub_1D0FF4DE8();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = *(*v3 + 152);
  *(v3 + v10) = sub_1D0FF4E38();
  v11 = *(*v3 + 160);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v3 + v11, 1, 1, AssociatedTypeWitness);
  (*(*(*(v7 + 88) - 8) + 32))(v3 + *(*v3 + 144), a1);
  v3[9] = a2;
  v3[10] = a3;
  return v3;
}

uint64_t sub_1D0F36BDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4518();
  swift_beginAccess();
  sub_1D0F395E4(v1 + 16, v27);
  sub_1D0FF4E08();
  sub_1D0F39640(v27);
  if (v26)
  {
    sub_1D0F25C68(&v25, v28);
    v8 = *(*v1 + 152);
    swift_beginAccess();
    v9 = *(v1 + v8);
    sub_1D0FF4E48();
    if (sub_1D0FF4E28())
    {
LABEL_14:
      swift_endAccess();
      sub_1D0F36F38();
      sub_1D0FF4528();
      __swift_project_boxed_opaque_existential_1(v28, v28[3]);
      sub_1D0FF4E48();
      sub_1D0FF4E68();
      return __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    sub_1D0FF4E48();
    v10 = sub_1D0FF4E28();
    v11 = sub_1D0FF4E48();
    if ((v10 & 1) == 0)
    {
      result = sub_1D0FF4E28();
      if ((result & 1) == 0)
      {
        if ((v9 | a1) < 0)
        {
          __break(1u);
          goto LABEL_17;
        }

        v11 = v9 + a1;
        if (!__OFADD__(v9, a1))
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_13;
          }

LABEL_17:
          __break(1u);
          return result;
        }
      }

      v11 = sub_1D0FF4E48();
    }

LABEL_13:
    *(v2 + v8) = v11;
    goto LABEL_14;
  }

  sub_1D0F39754(&v25);
  sub_1D0FF4BC8();
  v13 = sub_1D0FF4C08();
  v14 = sub_1D0FF5958();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27[0] = v24;
    *v15 = 136315394;
    v16 = sub_1D0FF6468();
    v18 = sub_1D0F1AE0C(v16, v17, v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = sub_1D0FF4E18();
    v21 = sub_1D0F1AE0C(v19, v20, v27);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1D0F17000, v13, v14, "[%s]: Unexpected demand for nonactive stream: %s", v15, 0x16u);
    v22 = v24;
    swift_arrayDestroy();
    MEMORY[0x1D3882680](v22, -1, -1);
    MEMORY[0x1D3882680](v15, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return sub_1D0FF4528();
}

uint64_t sub_1D0F36F38()
{
  v1 = v0;
  v109 = *v0;
  v2 = v109;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v88 = AssociatedTypeWitness;
  v4 = sub_1D0FF4DE8();
  v94 = sub_1D0FF5C38();
  v92 = *(v94 - 8);
  v5 = MEMORY[0x1EEE9AC00](v94);
  v91 = &v86 - v6;
  v96 = v4;
  v95 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v86 - v7;
  v102 = sub_1D0FF4C18();
  v101 = *(v102 - 8);
  v8 = MEMORY[0x1EEE9AC00](v102);
  v103 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v2 + 88);
  v110 = *(v111 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v90 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v86 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v14 = sub_1D0FF5C38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v106 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v99 = &v86 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v86 - v21;
  v23 = *(v13 - 8);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v89 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v100 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v86 - v28;
  v107 = *(v0 + 8);
  sub_1D0FF4508();
  v30 = v23;
  v31 = *(*v1 + 160);
  swift_beginAccess();
  v105 = *(v15 + 2);
  v105(v22, &v1[v31], v14);
  v104 = *(v30 + 48);
  if (v104(v22, 1, v13) != 1)
  {
    v97 = v30;
    v33 = *(v30 + 32);
    v98 = v29;
    v33(v29, v22, v13);
    v34 = *(*v1 + 152);
    swift_beginAccess();
    v35 = *&v1[v34];
    sub_1D0FF4E48();
    result = sub_1D0FF4E28();
    if ((result & 1) == 0)
    {
      if (v35 < 0)
      {
        __break(1u);
        goto LABEL_40;
      }

      if (!v35)
      {
        v103 = v15;
        (*(v97 + 8))(v98, v13);
        goto LABEL_3;
      }
    }

    swift_beginAccess();
    sub_1D0F395E4((v1 + 16), &v112);
    v37 = sub_1D0FF4DF8();
    sub_1D0F39640(&v112);
    v87 = v34;
    if ((v37 & 1) == 0)
    {
      v40 = v103;
      sub_1D0FF4BC8();
      v41 = v97;
      v42 = *(v97 + 16);
      v43 = v100;
      v44 = v98;
      v42(v100, v98, v13);

      v45 = sub_1D0FF4C08();
      v46 = sub_1D0FF5958();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        LODWORD(v110) = v46;
        v48 = v47;
        v111 = swift_slowAlloc();
        v112 = v111;
        *v48 = 136315650;
        v49 = sub_1D0FF6468();
        v51 = v43;
        v52 = sub_1D0F1AE0C(v49, v50, &v112);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = sub_1D0FF4E18();
        v55 = sub_1D0F1AE0C(v53, v54, &v112);

        *(v48 + 14) = v55;
        *(v48 + 22) = 2080;
        v42(v89, v51, v13);
        v56 = sub_1D0FF5448();
        v58 = v57;
        v59 = *(v41 + 8);
        v59(v51, v13);
        v60 = sub_1D0F1AE0C(v56, v58, &v112);

        *(v48 + 24) = v60;
        _os_log_impl(&dword_1D0F17000, v45, v110, "[%s]: Unexpected value remains for nonactive stream: demand=%s, pendingOutput=%s", v48, 0x20u);
        v61 = v111;
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v61, -1, -1);
        MEMORY[0x1D3882680](v48, -1, -1);

        (*(v101 + 8))(v103, v102);
        v62 = v98;
      }

      else
      {

        v59 = *(v41 + 8);
        v59(v43, v13);
        (*(v101 + 8))(v40, v102);
        v62 = v44;
      }

      return (v59)(v62, v13);
    }

    swift_beginAccess();
    v38 = *&v1[v34];
    sub_1D0FF4E48();
    if (sub_1D0FF4E28())
    {
      goto LABEL_20;
    }

    sub_1D0FF4E48();
    result = sub_1D0FF4E28();
    if (result)
    {
      v39 = sub_1D0FF4E48();
LABEL_19:
      *&v1[v34] = v39;
LABEL_20:
      swift_endAccess();
      v63 = *(v97 + 56);
      v64 = v99;
      v102 = v13;
      v63(v99, 1, 1, v13);
      swift_beginAccess();
      v103 = v15;
      (*(v15 + 5))(&v1[v31], v64, v14);
      swift_endAccess();
      (*(v110 + 16))(v108, &v1[*(*v1 + 144)], v111);
      sub_1D0FF4528();
      v65 = v98;
      v66 = sub_1D0FF4DC8();
      v67 = v87;
      sub_1D0FF4518();
      swift_beginAccess();
      v68 = *&v1[v67];
      v69 = v65;
      sub_1D0FF4E48();
      if (sub_1D0FF4E28())
      {
LABEL_30:
        swift_endAccess();
        v32 = v111;
        (*(v110 + 8))(v108, v111);
        v13 = v102;
        (*(v97 + 8))(v69, v102);
        goto LABEL_31;
      }

      sub_1D0FF4E48();
      v70 = sub_1D0FF4E28();
      v71 = sub_1D0FF4E48();
      if (v70)
      {
        v69 = v98;
        v72 = v87;
LABEL_29:
        *&v1[v72] = v71;
        goto LABEL_30;
      }

      result = sub_1D0FF4E28();
      v69 = v98;
      v72 = v87;
      if (result)
      {
        goto LABEL_27;
      }

      if (((v68 | v66) & 0x8000000000000000) == 0)
      {
        v71 = v68 + v66;
        if (!__OFADD__(v68, v66))
        {
          if ((v71 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_43:
          __break(1u);
          return result;
        }

LABEL_27:
        v71 = sub_1D0FF4E48();
        goto LABEL_29;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ((v38 & 0x8000000000000000) == 0)
    {
      if (v38)
      {
        v39 = v38 - 1;
        goto LABEL_19;
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v103 = v15;
  (*(v15 + 1))(v22, v14);
LABEL_3:
  v32 = v111;
LABEL_31:
  swift_beginAccess();
  sub_1D0F395E4((v1 + 16), &v112);
  v73 = v115;
  result = sub_1D0F39640(&v112);
  if (v73 == 1)
  {
    v74 = v106;
    v105(v106, &v1[v31], v14);
    v75 = v104(v74, 1, v13);
    result = (*(v103 + 1))(v74, v14);
    if (v75 == 1)
    {
      v76 = v90;
      v77 = v32;
      (*(v110 + 16))(v90, &v1[*(*v1 + 144)], v32);
      v112 = 1;
      v113 = 0u;
      v114 = 0u;
      v115 = 2;
      swift_beginAccess();
      sub_1D0F396F8(&v112, (v1 + 16));
      swift_endAccess();
      v78 = *(*v1 + 136);
      swift_beginAccess();
      v79 = v92;
      v80 = v91;
      v81 = v94;
      (*(v92 + 16))(v91, &v1[v78], v94);
      v82 = v95;
      v83 = *(v95 + 48);
      v84 = v96;
      if (v83(v80, 1, v96) == 1)
      {
        v85 = v93;
        (*(*(v88 - 8) + 56))(v93, 1, 1);
        if (v83(v80, 1, v84) != 1)
        {
          (*(v79 + 8))(v80, v81);
        }
      }

      else
      {
        v85 = v93;
        (*(v82 + 32))(v93, v80, v84);
      }

      sub_1D0FF4528();
      sub_1D0FF4DA8();
      sub_1D0FF4518();
      (*(v82 + 8))(v85, v84);
      return (*(v110 + 8))(v76, v77);
    }
  }

  return result;
}

uint64_t sub_1D0F37DA4()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1D0FF5C38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  sub_1D0FF4518();
  swift_beginAccess();
  sub_1D0F395E4(v0 + 16, &v12);
  sub_1D0FF4E08();
  sub_1D0F39640(&v12);
  if (v11)
  {
    sub_1D0F25C68(&v10, v16);
    v12 = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 2;
    swift_beginAccess();
    sub_1D0F396F8(&v12, v0 + 16);
    swift_endAccess();
    (*(*(AssociatedTypeWitness - 8) + 56))(v6, 1, 1, AssociatedTypeWitness);
    v7 = *(*v0 + 160);
    swift_beginAccess();
    (*(v4 + 40))(v1 + v7, v6, v3);
    swift_endAccess();
    sub_1D0FF4528();
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_1D0FF4DD8();
    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    sub_1D0F39754(&v10);
    return sub_1D0FF4528();
  }
}

uint64_t sub_1D0F38004(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10[-v6];
  sub_1D0FF4518();
  swift_beginAccess();
  sub_1D0F395E4((v1 + 2), &v11);
  if (v14 == 2 && (v8 = vorrq_s8(v12, v13), !(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v11)))
  {
    sub_1D0F39640(&v11);
    sub_1D0F39694(a1, &v11);
    v14 = 0;
    swift_beginAccess();
    sub_1D0F396F8(&v11, (v1 + 2));
    swift_endAccess();
    sub_1D0FF4528();
    (*(v5 + 16))(v7, v1 + *(*v1 + 144), v4);
    v13.i64[0] = v3;
    v13.i64[1] = swift_getWitnessTable();
    v11 = v1;

    sub_1D0FF4DB8();
    (*(v5 + 8))(v7, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }

  else
  {
    sub_1D0F39640(&v11);
    sub_1D0FF4528();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_1D0FF4DD8();
  }
}

uint64_t sub_1D0F38254(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1D0FF5C38();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  sub_1D0FF4518();
  swift_beginAccess();
  sub_1D0F395E4((v1 + 16), v17);
  v12 = v17[40];
  sub_1D0F39640(v17);
  if (v12)
  {
    sub_1D0FF4528();
    return sub_1D0FF4E38();
  }

  else
  {
    v16 = *(v2 + 9);
    v14 = *(*v2 + 160);
    swift_beginAccess();
    (*(v6 + 16))(v9, &v2[v14], v5);
    v16(v9, a1);
    (*(v6 + 8))(v9, v5);
    (*(*(AssociatedTypeWitness - 8) + 56))(v11, 0, 1, AssociatedTypeWitness);
    swift_beginAccess();
    (*(v6 + 40))(&v2[v14], v11, v5);
    swift_endAccess();
    sub_1D0F36F38();
    sub_1D0FF4528();
    return sub_1D0FF4E48();
  }
}

uint64_t sub_1D0F384D8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1D0FF4DE8();
  v4 = sub_1D0FF5C38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6 + 16;
  sub_1D0FF4518();
  swift_beginAccess();
  sub_1D0F395E4(v1 + 16, v12);
  if (v13)
  {
    sub_1D0F39640(v12);
    return sub_1D0FF4528();
  }

  else
  {
    sub_1D0F25C68(v12, v14);
    sub_1D0F39694(v14, v12);
    v13 = 1;
    swift_beginAccess();
    sub_1D0F396F8(v12, v1 + 16);
    swift_endAccess();
    v9 = *(v3 - 8);
    (*(v9 + 16))(v7, a1, v3);
    (*(v9 + 56))(v7, 0, 1, v3);
    v10 = *(*v1 + 136);
    swift_beginAccess();
    (*(v5 + 40))(v1 + v10, v7, v4);
    swift_endAccess();
    sub_1D0F36F38();
    sub_1D0FF4528();
    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t *sub_1D0F38774()
{
  v1 = *v0;
  sub_1D0F39640((v0 + 2));

  v2 = *(*v0 + 136);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D0FF4DE8();
  v3 = sub_1D0FF5C38();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 144));
  v4 = *(*v0 + 160);
  swift_getAssociatedTypeWitness();
  v5 = sub_1D0FF5C38();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1D0F38954()
{
  sub_1D0F38774();

  return swift_deallocClassInstance();
}

unint64_t sub_1D0F38A94()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D0F28E50();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0F38B1C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1D0F38C58(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D0F38E10()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D0FF4DE8();
  result = sub_1D0FF5C38();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_1D0FF5C38();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D0F38FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = *v1;
  v21[2] = a1;
  v21[0] = sub_1D0FF63B8();
  v3 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F39844(0, &qword_1EC5FC270, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  sub_1D0FF4518();
  v22 = v1;
  sub_1D0F39844(0, &qword_1EC5FC278, sub_1D0F398A8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D0FF8D00;
  *(v9 + 32) = 0xD000000000000017;
  *(v9 + 40) = 0x80000001D1003670;
  v10 = *(*v2 + 160);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v11 = sub_1D0FF5C38();
  *(v9 + 72) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, &v2[v10], v11);
  *(v9 + 80) = 0x6574617473;
  *(v9 + 88) = 0xE500000000000000;
  swift_beginAccess();
  *(v9 + 120) = MEMORY[0x1E69A3DD8];
  v13 = swift_allocObject();
  *(v9 + 96) = v13;
  sub_1D0F395E4((v2 + 16), v13 + 16);
  strcpy((v9 + 128), "pendingDemand");
  *(v9 + 142) = -4864;
  v14 = *(*v2 + 152);
  swift_beginAccess();
  v15 = MEMORY[0x1E695BEC8];
  *(v9 + 144) = *&v2[v14];
  *(v9 + 168) = v15;
  *(v9 + 176) = 0xD000000000000012;
  *(v9 + 184) = 0x80000001D1003640;
  v16 = *(*v2 + 136);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D0FF4DE8();
  v17 = sub_1D0FF5C38();
  *(v9 + 216) = v17;
  v18 = __swift_allocate_boxed_opaque_existential_0((v9 + 192));
  (*(*(v17 - 8) + 16))(v18, &v2[v16], v17);
  v19 = sub_1D0FF63A8();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v21[0]);

  sub_1D0FF63E8();
  return sub_1D0FF4528();
}

uint64_t sub_1D0F394A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E75D8];
  v3 = sub_1D0FF63B8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_1D0F39518(void *a1@<X8>)
{
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = 0xD000000000000022;
  a1[1] = 0x80000001D1003690;
}

uint64_t sub_1D0F39694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D0F39754(uint64_t a1)
{
  sub_1D0F39844(0, &qword_1EE06E5F0, sub_1D0F397E0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D0F397E0()
{
  result = qword_1EE070BD0;
  if (!qword_1EE070BD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE070BD0);
  }

  return result;
}

void sub_1D0F39844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D0F398A8()
{
  if (!qword_1EE06E490)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06E490);
    }
  }
}

uint64_t Publisher.bindDaemonTransaction(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4);
  (*(v9 + 32))(a4, v11, a3);
  v12 = (a4 + *(type metadata accessor for Publishers.BindDaemonTransaction() + 36));
  *v12 = a1;
  v12[1] = a2;
}

uint64_t Publishers.BindDaemonTransaction.init(_:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for Publishers.BindDaemonTransaction();
  v9 = (a5 + *(result + 36));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t Publishers.BindDaemonTransaction.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v19[0] = *(v11 + 16);
  v19[1] = v13;
  v19[2] = v12;
  v19[3] = v14;
  _s21BindDaemonTransactionV5InnerCMa();
  (*(v8 + 16))(v10, a1, a3);
  v15 = (v4 + *(a2 + 36));
  v16 = *v15;
  v17 = v15[1];
  swift_allocObject();

  v19[0] = sub_1D0F3A0F4(v10, v16, v17);
  swift_getWitnessTable();
  sub_1D0FF5168();
}

uint64_t sub_1D0F39CC8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D0F39D40(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1D0F39E7C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D0F3A034()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1D0F3A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  *(v3 + *(*v3 + 128)) = 0;
  v9 = *(*v3 + 136);
  sub_1D0FF4548();
  swift_allocObject();
  *(v3 + v9) = sub_1D0FF4538();
  v10 = v4 + *(*v4 + 144);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 40) = 2;
  (*(*(*(v8 + 88) - 8) + 32))(v4 + *(*v4 + 112), a1);
  v11 = (v4 + *(*v4 + 120));
  *v11 = a2;
  v11[1] = a3;
  return v3;
}

uint64_t sub_1D0F3A22C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D0FF4C18();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27.i8[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D0FF4518();
  v9 = *(*v1 + 144);
  swift_beginAccess();
  sub_1D0F395E4(v2 + v9, &v28);
  if (v31 == 2 && (v10 = vorrq_s8(v29, v30), !(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | v28)))
  {
    sub_1D0F39640(&v28);
    sub_1D0F39694(a1, &v28);
    v31 = 0;
    swift_beginAccess();
    sub_1D0F396F8(&v28, v2 + v9);
    swift_endAccess();
    v12 = (v2 + *(*v2 + 120));
    v13 = *v12;
    v14 = v12[1];
    v15 = sub_1D0FF53E8();
    v16 = [objc_opt_self() transactionWithName_];

    v17 = *(*v2 + 128);
    v18 = *(v2 + v17);
    *(v2 + v17) = v16;

    sub_1D0FF4BC8();

    v19 = sub_1D0FF4C08();
    v20 = sub_1D0FF5978();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v27.i64[0] = v14;
      v22 = v21;
      v23 = swift_slowAlloc();
      v24 = v13;
      v25 = v23;
      v28 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1D0F1AE0C(v24, v27.u64[0], &v28);
      _os_log_impl(&dword_1D0F17000, v19, v20, "[BindDaemonTransaction] Received subscription, created daemon transaction with name: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1D3882680](v25, -1, -1);
      MEMORY[0x1D3882680](v22, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    sub_1D0FF4528();
    v26 = *(v4 + 104);
    v28 = *(v4 + 80);
    v27 = *(v4 + 88);
    v29 = v27;
    v30.i64[0] = v26;
    v30.i64[0] = _s21BindDaemonTransactionV5InnerCMa();
    v30.i64[1] = swift_getWitnessTable();
    v28 = v2;

    sub_1D0FF4DB8();
    return __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  }

  else
  {
    sub_1D0F39640(&v28);
    sub_1D0FF4528();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_1D0FF4DD8();
  }
}

uint64_t sub_1D0F3A674()
{
  v1 = v0;
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4518();
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 2;
  v6 = *(*v0 + 144);
  swift_beginAccess();
  sub_1D0F396F8(&v14, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + *(*v1 + 128));
  sub_1D0FF4528();
  sub_1D0FF4DA8();
  sub_1D0FF4518();
  [v7 invalidate];
  sub_1D0FF4528();
  sub_1D0FF4BC8();

  v8 = sub_1D0FF4C08();
  v9 = sub_1D0FF5978();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1D0F1AE0C(*(v1 + *(*v1 + 120)), *(v1 + *(*v1 + 120) + 8), &v14);
    _os_log_impl(&dword_1D0F17000, v8, v9, "[BindDaemonTransaction] Stream completed, invalidated daemon transaction with name: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D3882680](v11, -1, -1);
    MEMORY[0x1D3882680](v10, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D0F3A94C()
{
  v1 = v0;
  sub_1D0FF4518();
  v2 = *(*v0 + 144);
  swift_beginAccess();
  sub_1D0F395E4(v1 + v2, v4);
  sub_1D0FF4E08();
  sub_1D0F39640(v4);
  sub_1D0FF4528();
  sub_1D0F3AF50(v6, v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_1D0FF4E68();
    sub_1D0F39754(v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1D0F39754(v6);
    return sub_1D0F39754(v4);
  }
}

uint64_t sub_1D0F3AA4C()
{
  v1 = v0;
  v2 = sub_1D0FF4C18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4518();
  v6 = *(*v0 + 144);
  swift_beginAccess();
  sub_1D0F395E4(v0 + v6, &v14);
  sub_1D0FF4E08();
  sub_1D0F39640(&v14);
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 2;
  swift_beginAccess();
  sub_1D0F396F8(&v14, v0 + v6);
  swift_endAccess();
  v7 = *(v1 + *(*v1 + 128));
  sub_1D0FF4528();
  sub_1D0F3AF50(v18, &v14);
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    sub_1D0FF4DD8();
    __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  }

  else
  {
    sub_1D0F39754(&v14);
  }

  sub_1D0FF4518();
  [v7 invalidate];
  sub_1D0FF4528();
  sub_1D0FF4BC8();

  v8 = sub_1D0FF4C08();
  v9 = sub_1D0FF5978();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1D0F1AE0C(*(v1 + *(*v1 + 120)), *(v1 + *(*v1 + 120) + 8), &v14);
    _os_log_impl(&dword_1D0F17000, v8, v9, "[BindDaemonTransaction] Stream cancelled, invalidated daemon transaction with name: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D3882680](v11, -1, -1);
    MEMORY[0x1D3882680](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_1D0F39754(v18);
}

uint64_t sub_1D0F3AD48()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  sub_1D0F39640(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_1D0F3AE2C()
{
  sub_1D0F3AD48();

  return swift_deallocClassInstance();
}

uint64_t sub_1D0F3AF50(uint64_t a1, uint64_t a2)
{
  sub_1D0F3AFB4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D0F3AFB4()
{
  if (!qword_1EE06E5F0)
  {
    sub_1D0F397E0();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06E5F0);
    }
  }
}

id NotificationContactPhoto.sourceProfile.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t NotificationContactPhoto.fileName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t type metadata accessor for NotificationContactPhoto()
{
  result = qword_1EC5FC288;
  if (!qword_1EC5FC288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D0F3B100()
{
  if (!qword_1EE070DA8)
  {
    sub_1D0FF4238();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070DA8);
    }
  }
}

id NotificationContactPhoto.fileManager.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotificationContactPhoto() + 32));

  return v1;
}

uint64_t NotificationContactPhoto.extensionType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationContactPhoto() + 36);
  v4 = sub_1D0FF4B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationContactPhoto.init(sourceProfile:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D0FF4238();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3B100();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = v39 - v9;
  v10 = sub_1D0FF3E48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v39 - v15;
  v17 = sub_1D0FF4C18();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = type metadata accessor for NotificationContactPhoto();
  v19 = v18[7];
  v41 = v19;
  sub_1D0FF4638();
  static StorageLocations.notificationProfileImageDirectory.getter(a2 + v19);
  v20 = v18[8];
  *(a2 + v20) = [objc_opt_self() defaultManager];
  v39[1] = v18[9];
  sub_1D0FF4AF8();
  *(a2 + v18[10]) = 0x4062C00000000000;
  sub_1D0FF4B88();
  sub_1D0FF4B48();
  *a2 = a1;
  v21 = a1;
  v22 = sub_1D0FF45B8();
  v24 = v23;

  v46 = v22;
  v47 = v24;
  sub_1D0FF3E08();
  sub_1D0FF3E38();
  v25 = *(v11 + 8);
  v25(v16, v10);
  sub_1D0F1A194();
  v26 = sub_1D0FF5C58();
  v27 = v14;
  v28 = v42;
  v25(v27, v10);
  v30 = v43;
  v29 = v44;

  v46 = v26;
  sub_1D0F3B6EC();
  sub_1D0F3D204(&qword_1EE070B80, sub_1D0F3B6EC);
  v31 = sub_1D0FF5388();
  v33 = v32;

  a2[1] = v31;
  a2[2] = v33;
  sub_1D0F3D104(a2 + v41, v28, sub_1D0F3B100);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_1D0F3D24C(v28, sub_1D0F3B100);
    v34 = 1;
    v35 = v45;
  }

  else
  {
    v36 = v40;
    sub_1D0FF41E8();
    v37 = *(v30 + 8);
    v37(v28, v29);
    v35 = v45;
    sub_1D0FF41C8();
    v37(v36, v29);
    v34 = 0;
  }

  (*(v30 + 56))(v35, v34, 1, v29);
  return sub_1D0F3B73C(v35, a2 + v18[6]);
}

void sub_1D0F3B6EC()
{
  if (!qword_1EE070E18)
  {
    v0 = sub_1D0FF56E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE070E18);
    }
  }
}

uint64_t sub_1D0F3B73C(uint64_t a1, uint64_t a2)
{
  sub_1D0F3B100();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CGImageRef sub_1D0F3B7A0(void *a1, double a2, double a3)
{
  v5 = v3;
  v9 = type metadata accessor for NotificationContactPhoto();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - v13;
  v15 = sub_1D0FF4C18();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  v22 = [a1 thumbnailImageData];
  if (!v22)
  {
    sub_1D0FF4BC8();
    sub_1D0F3D104(v5, v12, type metadata accessor for NotificationContactPhoto);
    v37 = sub_1D0FF4C08();
    v38 = sub_1D0FF5978();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = v55;
      *v39 = 136315138;
      v40 = sub_1D0FF45B8();
      v56 = v15;
      v57 = v4;
      v41 = v40;
      v43 = v42;
      sub_1D0F3D24C(v12, type metadata accessor for NotificationContactPhoto);
      v44 = sub_1D0F1AE0C(v41, v43, &v58);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1D0F17000, v37, v38, "[Contact Photo] Using photoOrMonogram method for %s", v39, 0xCu);
      v45 = v55;
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1D3882680](v45, -1, -1);
      MEMORY[0x1D3882680](v39, -1, -1);

      (*(v16 + 8))(v19, v56);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
      sub_1D0F3D24C(v12, type metadata accessor for NotificationContactPhoto);
    }

    isa = CNContact.photoOrMonogram(size:)(__PAIR128__(*&a3, *&a2)).super.isa;
    v49 = [(objc_class *)isa CGImage];

    if (!v49)
    {
      sub_1D0F3D0B0();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
      return v49;
    }

    goto LABEL_14;
  }

  v57 = v4;
  v23 = v22;
  v24 = sub_1D0FF4288();
  v26 = v25;

  sub_1D0FF4BC8();
  sub_1D0F3D104(v5, v14, type metadata accessor for NotificationContactPhoto);
  v27 = sub_1D0FF4C08();
  v28 = sub_1D0FF5978();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v56 = v15;
    v31 = v30;
    v58 = v30;
    *v29 = 136315138;
    v32 = sub_1D0FF45B8();
    v54 = v26;
    v55 = v24;
    v33 = v32;
    v35 = v34;
    sub_1D0F3D24C(v14, type metadata accessor for NotificationContactPhoto);
    v36 = sub_1D0F1AE0C(v33, v35, &v58);
    v26 = v54;

    *(v29 + 4) = v36;
    v24 = v55;
    _os_log_impl(&dword_1D0F17000, v27, v28, "[Contact Photo] Using thumbnailImageData method for %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1D3882680](v31, -1, -1);
    MEMORY[0x1D3882680](v29, -1, -1);

    (*(v16 + 8))(v21, v56);
  }

  else
  {

    (*(v16 + 8))(v21, v15);
    sub_1D0F3D24C(v14, type metadata accessor for NotificationContactPhoto);
  }

  if (a2 > a3)
  {
    v46 = a2;
  }

  else
  {
    v46 = a3;
  }

  v47 = v57;
  sub_1D0FC17E4(v46, v46);
  v49 = v48;
  sub_1D0F34FDC(v24, v26);
  if (!v47)
  {
LABEL_14:
    v51 = v49;
    v49 = CGImageRef.circularCrop()();
  }

  return v49;
}

uint64_t NotificationContactPhoto.generateAndSaveImage(for:size:)@<X0>(void *a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v36 = a3;
  LODWORD(v32) = a4;
  v33 = a2;
  v34 = a1;
  v31 = a5;
  sub_1D0F3B100();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v10;
  v39 = sub_1D0FF4B38();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D0FF4B68();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NotificationContactPhoto();
  v18 = *(v14 + 16);
  v19 = v5 + *(v17 + 44);
  v35 = v13;
  v18(v16, v19, v13);
  sub_1D0FF4B28();
  v20 = swift_slowAlloc();
  *v20 = 0;
  v21 = sub_1D0FF4B58();
  LOBYTE(v13) = sub_1D0FF5B68();
  v22 = sub_1D0FF4B18();
  _os_signpost_emit_with_name_impl(&dword_1D0F17000, v21, v13, v22, "NotificationContactPhotoSaveImage", "", v20, 2u);
  v23 = v32 & 1;
  v32 = v9;
  v24 = v37;
  sub_1D0F3C00C(v5, v33, v36, v23, v34, v9);
  if (v24)
  {
  }

  else
  {
    v25 = sub_1D0FF5B58();
    v26 = sub_1D0FF4B18();
    _os_signpost_emit_with_name_impl(&dword_1D0F17000, v21, v25, v26, "NotificationContactPhotoSaveImage", "", v20, 2u);

    v27 = v30;
    sub_1D0F3B73C(v32, v30);
    MEMORY[0x1D3882680](v20, -1, -1);
    sub_1D0F3B73C(v27, v31);
  }

  (*(v38 + 8))(v12, v39);
  return (*(v14 + 8))(v16, v35);
}

void sub_1D0F3C00C(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v61 = *&a3;
  v59 = a6;
  v60 = a2;
  v9 = type metadata accessor for NotificationContactPhoto();
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D0FF4C18();
  v57 = *(v11 - 8);
  v58 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3B100();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D0FF4238();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3D104(a1 + *(v9 + 24), v15, sub_1D0F3B100);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D0F3D24C(v15, sub_1D0F3B100);
    sub_1D0F3D0B0();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    return;
  }

  v21 = *(v17 + 32);
  v54 = v19;
  v22 = v15;
  v23 = v21;
  v21(v19, v22, v16);
  if (a4)
  {
    v24 = *(a1 + *(v9 + 40));
    v25 = v24;
  }

  else
  {
    v24 = v60;
    v25 = v61;
  }

  v26 = v62;
  v27 = sub_1D0F3B7A0(a5, v24, v25);
  if (v26)
  {
    (*(v17 + 8))(v54, v16);
    return;
  }

  v28 = v27;
  *&v29 = COERCE_DOUBLE(sub_1D0F3C668());
  if (v30)
  {
    v61 = *&v29;
    v31 = v28;
    v32 = CGImageRef.circularCrop()();
    if (v33)
    {
      (*(v17 + 8))(v54, v16);

      return;
    }

    v48 = v32;
    v62 = v31;
    v49 = v54;
    CGImageRef.write(to:imageType:)(v54);
    v63 = v61;
    MEMORY[0x1EEE9AC00](v50);
    *(&v53 - 4) = &v63;
    *(&v53 - 3) = 0xD000000000000011;
    *(&v53 - 2) = v51;
    sub_1D0FF4208();

    v52 = v59;
    v23(v59, v49, v16);
    v47 = v52;
    v46 = 0;
  }

  else
  {
    v62 = v28;
    v34 = v56;
    sub_1D0FF4BC8();
    v35 = v55;
    sub_1D0F3D104(a1, v55, type metadata accessor for NotificationContactPhoto);
    v36 = sub_1D0FF4C08();
    v37 = sub_1D0FF5978();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v61 = COERCE_DOUBLE(swift_slowAlloc());
      v63 = v61;
      *v38 = 136315138;
      v39 = sub_1D0FF45B8();
      v40 = v35;
      v41 = v39;
      v43 = v42;
      sub_1D0F3D24C(v40, type metadata accessor for NotificationContactPhoto);
      v44 = sub_1D0F1AE0C(v41, v43, &v63);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_1D0F17000, v36, v37, "[Contact Photo] Omitting image processing and file write: fetched contact image is identical to existing image for %s", v38, 0xCu);
      v45 = *&v61;
      __swift_destroy_boxed_opaque_existential_1Tm(*&v61);
      MEMORY[0x1D3882680](v45, -1, -1);
      MEMORY[0x1D3882680](v38, -1, -1);

      (*(v57 + 8))(v34, v58);
      (*(v17 + 8))(v54, v16);
    }

    else
    {

      (*(v57 + 8))(v34, v58);
      (*(v17 + 8))(v54, v16);
      sub_1D0F3D24C(v35, type metadata accessor for NotificationContactPhoto);
    }

    v46 = 1;
    v47 = v59;
  }

  (*(v17 + 56))(v47, v46, 1, v16);
}

uint64_t sub_1D0F3C668()
{
  v1 = v0;
  v2 = sub_1D0FF4C18();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v40 - v6;
  v8 = type metadata accessor for NSFileManager.ExtendedAttributeError();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D0F3B100();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D0FF4238();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hash = CGImageGetHash();
  v19 = type metadata accessor for NotificationContactPhoto();
  sub_1D0F3D104(v1 + *(v19 + 24), v13, sub_1D0F3B100);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v40[1] = v5;
    v22 = (*(v15 + 32))(v17, v13, v14);
    MEMORY[0x1EEE9AC00](v22);
    v40[-2] = 0xD000000000000011;
    v40[-1] = v23;
    sub_1D0FF4208();
    (*(v15 + 8))(v17, v14);
    sub_1D0F34FDC(v43[0], v43[1]);
    return Hash;
  }

  sub_1D0F3D24C(v13, sub_1D0F3B100);
  sub_1D0F3D0B0();
  v20 = swift_allocError();
  *v21 = 1;
  swift_willThrow();
  v43[0] = v20;
  v24 = v20;
  sub_1D0F1E940();
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D0F3D24C(v10, type metadata accessor for NSFileManager.ExtendedAttributeError);
LABEL_7:

    sub_1D0FF4BC8();
    v26 = v20;
    v27 = sub_1D0FF4C08();
    v28 = sub_1D0FF5958();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43[0] = v30;
      *v29 = 136315138;
      v43[2] = v20;
      v31 = v20;
      v32 = sub_1D0FF5458();
      v34 = sub_1D0F1AE0C(v32, v33, v43);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1D0F17000, v27, v28, "[Contact Photo] Unexpected error accessing image hash attribute: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1D3882680](v30, -1, -1);
      MEMORY[0x1D3882680](v29, -1, -1);
    }

    else
    {
    }

    (*(v41 + 8))(v5, v42);
    return Hash;
  }

  if (*v10 == 0xD000000000000011 && 0x80000001D1003740 == v10[1])
  {
  }

  else
  {
    v36 = sub_1D0FF6278();

    if ((v36 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_1D0FF4BC8();
  v37 = sub_1D0FF4C08();
  v38 = sub_1D0FF5978();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D0F17000, v37, v38, "[Contact Photo] Unable to find existing image hash attribute", v39, 2u);
    MEMORY[0x1D3882680](v39, -1, -1);
  }

  else
  {
  }

  (*(v41 + 8))(v7, v42);

  return Hash;
}

uint64_t NotificationContactPhoto.ContactPhotoError.hashValue.getter()
{
  v1 = *v0;
  sub_1D0FF6338();
  MEMORY[0x1D3881950](v1);
  return sub_1D0FF6378();
}

uint64_t sub_1D0F3CD34(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = a2;
  v7 = sub_1D0FF5468();
  v8 = setxattr(a1, (v7 + 32), v13, 8uLL, 0, 0);

  if (v8 < 0)
  {
    type metadata accessor for NSFileManager.ExtendedAttributeError();
    sub_1D0F3D204(&qword_1EC5FC2A8, type metadata accessor for NSFileManager.ExtendedAttributeError);
    swift_allocError();
    *v10 = a3;
    v10[1] = a4;
    v10[2] = v8;

    MEMORY[0x1D3880250](v11);
    result = sub_1D0FF4C28();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v12 = result;
      sub_1D0F3D190();
      sub_1D0FF3D48();
      LODWORD(v13[0]) = v12;
      sub_1D0FA8B64(MEMORY[0x1E69E7CC0]);
      sub_1D0F3D204(&qword_1EC5FC2B8, MEMORY[0x1E6967EB8]);
      sub_1D0FF4178();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_1D0F3CF04()
{
  result = qword_1EC5FC280;
  if (!qword_1EC5FC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC280);
  }

  return result;
}

void sub_1D0F3CF80()
{
  sub_1D0F3B100();
  if (v0 <= 0x3F)
  {
    sub_1D0F3D054();
    if (v1 <= 0x3F)
    {
      sub_1D0FF4B08();
      if (v2 <= 0x3F)
      {
        sub_1D0FF4B68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D0F3D054()
{
  result = qword_1EC5FC298;
  if (!qword_1EC5FC298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC5FC298);
  }

  return result;
}

unint64_t sub_1D0F3D0B0()
{
  result = qword_1EC5FC2A0;
  if (!qword_1EC5FC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC2A0);
  }

  return result;
}

uint64_t sub_1D0F3D104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D0F3D190()
{
  if (!qword_1EC5FC2B0)
  {
    sub_1D0FF3D48();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC5FC2B0);
    }
  }
}

uint64_t sub_1D0F3D204(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D0F3D24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PluginSharableModel.createSourceCalendar(with:)(void *a1)
{
  sub_1D0F3D5CC(0, &qword_1EE06F860, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D0F3D5CC(0, &qword_1EE070A48, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1D0FF44B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v21 = v1;
  sub_1D0FF47E8();
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    sub_1D0FF44A8();
    if (v14(v6, 1, v7) != 1)
    {
      sub_1D0F3D620(v6);
    }

    if (a1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v18 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
    sub_1D0FF43F8();

    (*(v8 + 16))(v11, v13, v7);
    sub_1D0FF4458();
    goto LABEL_8;
  }

  (*(v8 + 32))(v13, v6, v7);
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = a1;
  v16 = sub_1D0FF4488();
  v17 = [v15 calendarForTimeZone_];

  sub_1D0FF43F8();
LABEL_8:
  sub_1D0FF47D8();
  sub_1D0FF4438();
  return (*(v8 + 8))(v13, v7);
}

void sub_1D0F3D5CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D0F3D620(uint64_t a1)
{
  sub_1D0F3D5CC(0, &qword_1EE070A48, MEMORY[0x1E6969BC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HKKeyValueDomainObject.key.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t HKKeyValueDomainObject.init(keyValueDomain:key:fallbackValue:isAppleInternalOnly:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v11 = type metadata accessor for HKKeyValueDomainObject();
  result = (*(*(a6 - 8) + 32))(&a7[*(v11 + 32)], a4, a6);
  a7[*(v11 + 36)] = a5;
  return result;
}

uint64_t sub_1D0F3D77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = a1 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v3 = sub_1D0FF4C18();
  v22[6] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22[7] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(v2 + 24);
  if (swift_dynamicCastMetatype() || (sub_1D0F3FA28(0, &qword_1EE06E458), swift_dynamicCastMetatype()))
  {
    LOBYTE(v24) = sub_1D0FF5A38();
    v7 = &qword_1EE06E458;
LABEL_4:
    sub_1D0F3FA28(0, v7);
LABEL_5:
    v8 = v23;
    v9 = swift_dynamicCast();
    v10 = *(*(v6 - 8) + 56);
    v11 = v9 ^ 1u;
    v12 = v8;
    return v10(v12, v11, 1, v6);
  }

  if (swift_dynamicCastMetatype() || (sub_1D0F3FA28(0, &qword_1EE070D98), swift_dynamicCastMetatype()))
  {
    v24 = sub_1D0FF5A48();
    v25 = v14;
    v7 = &qword_1EE070D98;
    goto LABEL_4;
  }

  sub_1D0FF4348();
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    sub_1D0FF5A58();
    v15 = v23;
    v16 = swift_dynamicCast();
    v10 = *(*(v6 - 8) + 56);
    if (v16)
    {
      v12 = v15;
      v11 = 0;
    }

    else
    {
      v12 = v15;
      v11 = 1;
    }

    return v10(v12, v11, 1, v6);
  }

  if (swift_dynamicCastMetatype() || (sub_1D0F3FA28(0, &qword_1EE070E10), swift_dynamicCastMetatype()))
  {
    v24 = sub_1D0FF5A88();
    LOBYTE(v25) = v17 & 1;
    v7 = &qword_1EE070E10;
    goto LABEL_4;
  }

  sub_1D0F1ACD4(0, &qword_1EE070DF0);
  if (swift_dynamicCastMetatype() || (sub_1D0F3F95C(0, &qword_1EC5FC2C0, &qword_1EE070DF0), swift_dynamicCastMetatype()))
  {
    v24 = sub_1D0FF5A68();
    sub_1D0F3F95C(0, &qword_1EC5FC2C0, &qword_1EE070DF0);
    goto LABEL_5;
  }

  if (swift_dynamicCastMetatype() || (sub_1D0F3FA28(0, &qword_1EE070E20), swift_dynamicCastMetatype()))
  {
    v24 = sub_1D0FF5A78();
    v25 = v18;
    v19 = &qword_1EE070E20;
  }

  else
  {
    sub_1D0FF5A08();
    v19 = &qword_1EE071000;
  }

  sub_1D0F3FA28(0, v19);
  v20 = v23;
  v21 = swift_dynamicCast();
  return (*(*(v6 - 8) + 56))(v20, v21 ^ 1u, 1, v6);
}

uint64_t sub_1D0F3DF64(char *a1, uint64_t a2)
{
  v137[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1D0FF4C18();
  v132 = *(v5 - 8);
  v133 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3F904();
  v135 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v127 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a2;
  v9 = *(a2 + 16);
  v10 = sub_1D0FF5C38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v128 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v134 = &v123 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v125 = &v123 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v126 = (&v123 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v123 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v123 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v123 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v123 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v123 - v32;
  if (swift_dynamicCastMetatype() || (sub_1D0F3FA28(0, &qword_1EE06E458), swift_dynamicCastMetatype()))
  {
    v135 = *(v11 + 16);
    v135(v33, a1, v10);
    if ((*(*(v9 - 8) + 48))(v33, 1, v9) == 1)
    {
      (*(v11 + 8))(v33, v10);
    }

    else
    {
      swift_dynamicCast();
    }

    v127 = *(v2 + 8);
    sub_1D0FF5AA8();
    return (*(v11 + 8))(a1, v10);
  }

  v123 = v2;
  v124 = a1;
  v130 = v10;
  v131 = v11;
  if (swift_dynamicCastMetatype() || (sub_1D0F3FA28(0, &qword_1EE070D98), swift_dynamicCastMetatype()))
  {
    v57 = v123;
    v58 = v124;
    v59 = *v123;
    v60 = v130;
    v61 = v131;
    v62 = *(v131 + 16);
    v126 = (v131 + 16);
    v135 = v62;
    v62(v31, v124, v130);
    if ((*(*(v9 - 8) + 48))(v31, 1, v9) == 1)
    {
      (*(v61 + 8))(v31, v60);
      v63 = 0;
      v64 = v136;
      v65 = v134;
    }

    else
    {
      v66 = swift_dynamicCast();
      v65 = v134;
      if (v66)
      {
        v67 = v137[0];
        v68 = v137[1];
        v63 = sub_1D0FF4278();
        v69 = v68;
        v57 = v123;
        sub_1D0F34FDC(v67, v69);
      }

      else
      {
        v63 = 0;
      }

      v64 = v136;
    }

    v70 = *(v57 + 8);
    v71 = *(v57 + 16);
    v72 = sub_1D0FF53E8();
    v137[0] = 0;
    v73 = [v59 setData:v63 forKey:v72 error:v137];
LABEL_20:
    v74 = v73;

    v75 = v137[0];
    if (v74)
    {
LABEL_21:
      v76 = *(v131 + 8);
      v77 = v75;
      v78 = v58;
      return v76(v78, v130);
    }

    goto LABEL_45;
  }

  v79 = sub_1D0FF4348();
  v80 = swift_dynamicCastMetatype();
  v81 = v123;
  if (v80 || swift_dynamicCastMetatype())
  {
    v82 = *v81;
    v83 = v130;
    v84 = v131;
    v85 = *(v131 + 16);
    v58 = v124;
    v126 = (v131 + 16);
    v135 = v85;
    v85(v28, v124, v130);
    v86 = (*(*(v9 - 8) + 48))(v28, 1, v9);
    v64 = v136;
    if (v86 == 1)
    {
      (*(v84 + 8))(v28, v83);
      (*(*(v79 - 8) + 56))(v127, 1, 1, v79);
      v63 = 0;
    }

    else
    {
      v87 = v127;
      v88 = swift_dynamicCast();
      v89 = *(v79 - 8);
      (*(v89 + 56))(v87, v88 ^ 1u, 1, v79);
      if ((*(v89 + 48))(v87, 1, v79) == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = sub_1D0FF42E8();
        (*(v89 + 8))(v87, v79);
      }
    }

    v65 = v134;
    v70 = *(v81 + 8);
    v71 = *(v81 + 16);
    v72 = sub_1D0FF53E8();
    v137[0] = 0;
    v73 = [v82 setDate:v63 forKey:v72 error:v137];
    goto LABEL_20;
  }

  v90 = swift_dynamicCastMetatype();
  v64 = v136;
  v65 = v134;
  if (!v90)
  {
    sub_1D0F3FA28(0, &qword_1EE070E10);
    if (!swift_dynamicCastMetatype())
    {
      sub_1D0F1ACD4(0, &qword_1EE070DF0);
      if (swift_dynamicCastMetatype() || (sub_1D0F3F95C(0, &qword_1EC5FC2C0, &qword_1EE070DF0), swift_dynamicCastMetatype()))
      {
        v95 = *v123;
        v96 = v130;
        v97 = v131;
        v98 = *(v131 + 16);
        v126 = (v131 + 16);
        v135 = v98;
        v98(v22, v124, v130);
        if ((*(*(v9 - 8) + 48))(v22, 1, v9) == 1)
        {
          (*(v97 + 8))(v22, v96);
          v99 = 0;
        }

        else if (swift_dynamicCast())
        {
          v99 = v137[0];
        }

        else
        {
          v99 = 0;
        }

        v70 = *(v123 + 8);
        v71 = *(v123 + 16);
        v100 = sub_1D0FF53E8();
        v137[0] = 0;
        v101 = [v95 setNumber:v99 forKey:v100 error:v137];

        v75 = v137[0];
        v58 = v124;
        if (v101)
        {
          goto LABEL_21;
        }

LABEL_45:
        v127 = v70;
        v102 = v75;
        v103 = sub_1D0FF4198();

        swift_willThrow();
        v34 = v135;
LABEL_7:
        sub_1D0FF4BC8();
        v35 = v130;
        v34(v65, v58, v130);

        v36 = v103;
        v37 = sub_1D0FF4C08();
        v38 = sub_1D0FF5958();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v135 = v34;
          v124 = v58;
          v40 = v39;
          v126 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v137[0] = v134;
          *v40 = 136315906;
          v41 = sub_1D0FF6468();
          v43 = sub_1D0F1AE0C(v41, v42, v137);

          *(v40 + 4) = v43;
          *(v40 + 12) = 2080;
          *(v40 + 14) = sub_1D0F1AE0C(v127, v71, v137);
          *(v40 + 22) = 2080;
          v135(v128, v65, v35);
          v44 = sub_1D0FF5448();
          v46 = v45;
          v47 = *(v131 + 8);
          v47(v65, v35);
          v48 = sub_1D0F1AE0C(v44, v46, v137);

          *(v40 + 24) = v48;
          *(v40 + 32) = 2112;
          v49 = v103;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 34) = v50;
          v51 = v126;
          *v126 = v50;
          _os_log_impl(&dword_1D0F17000, v37, v38, "%s Failed to set value for key=%s, value=%s, error: %@", v40, 0x2Au);
          sub_1D0F3F9B4(v51);
          MEMORY[0x1D3882680](v51, -1, -1);
          v52 = v134;
          swift_arrayDestroy();
          MEMORY[0x1D3882680](v52, -1, -1);
          MEMORY[0x1D3882680](v40, -1, -1);

          v47(v124, v35);
          v53 = *(v132 + 8);
          v54 = v136;
        }

        else
        {

          v56 = *(v131 + 8);
          v56(v58, v35);
          v56(v65, v35);
          v53 = *(v132 + 8);
          v54 = v64;
        }

        return v53(v54, v133);
      }

      v104 = v123;
      if (!swift_dynamicCastMetatype())
      {
        sub_1D0F3FA28(0, &qword_1EE070E20);
        if (!swift_dynamicCastMetatype())
        {
          v114 = *v104;
          v115 = v125;
          v107 = *(v131 + 16);
          v107(v125, v124, v130);
          v116 = *(v9 - 8);
          if ((*(v116 + 48))(v115, 1, v9) == 1)
          {
            v117 = 0;
          }

          else
          {
            v118 = v125;
            v117 = sub_1D0FF6268();
            (*(v116 + 8))(v118, v9);
          }

          v119 = *(v104 + 16);
          v127 = *(v104 + 8);
          v71 = v119;
          v120 = sub_1D0FF53E8();
          v137[0] = 0;
          v121 = [v114 setPropertyListValue:v117 forKey:v120 error:v137];
          swift_unknownObjectRelease();

          v112 = v137[0];
          if (v121)
          {
            goto LABEL_54;
          }

          goto LABEL_59;
        }
      }

      v105 = *v104;
      v106 = v126;
      v107 = *(v131 + 16);
      v107(v126, v124, v130);
      if ((*(*(v9 - 8) + 48))(v106, 1, v9) == 1)
      {
        (*(v131 + 8))(v126, v130);
      }

      else if (swift_dynamicCast())
      {
        v108 = sub_1D0FF53E8();

        goto LABEL_53;
      }

      v108 = 0;
LABEL_53:
      v109 = *(v104 + 16);
      v127 = *(v104 + 8);
      v71 = v109;
      v110 = sub_1D0FF53E8();
      v137[0] = 0;
      v111 = [v105 setString:v108 forKey:v110 error:v137];

      v112 = v137[0];
      if (v111)
      {
LABEL_54:
        v76 = *(v131 + 8);
        v113 = v112;
        v78 = v124;
        return v76(v78, v130);
      }

LABEL_59:
      v122 = v112;
      v103 = sub_1D0FF4198();

      swift_willThrow();
      v64 = v136;
      v65 = v134;
      v34 = v107;
      v58 = v124;
      goto LABEL_7;
    }
  }

  v92 = v130;
  v91 = v131;
  v93 = *(v131 + 16);
  v94 = v124;
  v126 = (v131 + 16);
  v93(v25, v124, v130);
  if ((*(*(v9 - 8) + 48))(v25, 1, v9) == 1)
  {
    (*(v91 + 8))(v25, v92);
  }

  else
  {
    swift_dynamicCast();
  }

  v127 = *(v123 + 8);
  sub_1D0FF5A28();
  return (*(v131 + 8))(v94, v130);
}

uint64_t HKKeyValueDomainObject.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1D0FF5C38();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  if (*(v2 + *(a1 + 36)) == 1 && ([objc_opt_self() isAppleInternalInstall] & 1) == 0)
  {
    v13 = *(*(v5 - 8) + 16);
    v14 = v2 + *(a1 + 32);

    return v13(a2, v14, v5);
  }

  else
  {
    sub_1D0F3D77C(a1, v9);
    v10 = *(v5 - 8);
    v11 = *(v10 + 48);
    if (v11(v9, 1, v5) == 1)
    {
      (*(v10 + 16))(a2, v2 + *(a1 + 32), v5);
      result = v11(v9, 1, v5);
      if (result != 1)
      {
        return (*(v7 + 8))(v9, v6);
      }
    }

    else
    {
      return (*(v10 + 32))(a2, v9, v5);
    }
  }

  return result;
}

uint64_t HKKeyValueDomainObject.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1D0F3F37C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*HKKeyValueDomainObject.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  HKKeyValueDomainObject.wrappedValue.getter(a2, v11);
  return sub_1D0F3F290;
}

void sub_1D0F3F290(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1D0F3F37C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1D0F3F37C((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D0F3F37C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1D0FF5C38();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = *(v4 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v4);
  (*(v8 + 56))(v7, 0, 1, v4);
  return sub_1D0F3DF64(v7, a2);
}

uint64_t sub_1D0F3F470()
{
  result = sub_1D0F1ACD4(319, &qword_1EE06F9F0);
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

uint64_t sub_1D0F3F518(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 24) & ~v6) + 1;
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
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
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

void sub_1D0F3F6A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 24) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_1D0F3F904()
{
  if (!qword_1EE071260)
  {
    sub_1D0FF4348();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE071260);
    }
  }
}

void sub_1D0F3F95C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D0F1ACD4(255, a3);
    v4 = sub_1D0FF5C38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D0F3F9B4(uint64_t a1)
{
  sub_1D0F3F95C(0, &qword_1EE06F990, &qword_1EE071060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D0F3FA28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D0FF5C38();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t AggregatedDataTypeChangesPublisher.init(upstream:hkType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for AggregatedDataTypeChangesPublisher();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t AggregatedDataTypeChangesPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v29 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v23 = *(v9 + 16);
  v26 = sub_1D0FF46B8();
  v10 = *(a2 + 24);
  v11 = sub_1D0FF4CA8();
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for Publishers.BufferWithAggregator();
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v15 = &v22 - v14;
  (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v19 = v30;
  v18 = v31;
  *(v17 + 2) = v23;
  *(v17 + 3) = v19;
  *(v17 + 4) = v10;
  *(v17 + 5) = v18;
  (*(v7 + 32))(&v17[v16], &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_1D0FF50A8();

  Publisher.aggregate(aggregationHandler:)(sub_1D0F40560, 0, v11, v15);
  (*(v28 + 8))(v13, v11);
  v20 = v25;
  swift_getWitnessTable();
  sub_1D0FF5168();
  return (*(v27 + 8))(v15, v20);
}

uint64_t sub_1D0F3FE84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v38 = a4;
  sub_1D0F40DB8(0, &qword_1EE070DB0, MEMORY[0x1E6968130]);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v31 - v10;
  v37 = sub_1D0FF4678();
  v11 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F40DB8(0, &qword_1EE070D78, MEMORY[0x1E69A3D28]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = sub_1D0FF48B8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v32 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31 - v21;
  sub_1D0FF4858();
  v23 = *(a1 + *(type metadata accessor for AggregatedDataTypeChangesPublisher() + 36));
  v33 = a2;
  v35 = a3;
  sub_1D0F40350(v23, v16);
  (*(v11 + 8))(v13, v37);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D0F40E0C(v16, &qword_1EE070D78, MEMORY[0x1E69A3D28]);
    v24 = 1;
    v25 = v38;
  }

  else
  {
    (*(v18 + 32))(v22, v16, v17);
    v26 = sub_1D0FF4838();
    v27 = v34;
    sub_1D0F40424(v26, v23, v34);

    (*(v18 + 16))(v32, v22, v17);
    v28 = MEMORY[0x1E6968130];
    sub_1D0F40E68(v27, v36, &qword_1EE070DB0, MEMORY[0x1E6968130]);
    v25 = v38;
    sub_1D0FF4688();
    sub_1D0F40E0C(v27, &qword_1EE070DB0, v28);
    (*(v18 + 8))(v22, v17);
    v24 = 0;
  }

  v29 = sub_1D0FF46B8();
  return (*(*(v29 - 8) + 56))(v25, v24, 1, v29);
}

uint64_t sub_1D0F402A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(type metadata accessor for AggregatedDataTypeChangesPublisher() - 8);
  v6 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1D0F3FE84(v6, v3, v4, a1);
}

uint64_t sub_1D0F40350@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1D0FF4658();
  v5 = sub_1D0FA1BA8(a1, v4);

  if (v5 | sub_1D0FF4668())
  {
    v7 = a1;
    sub_1D0FF4878();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = sub_1D0FF48B8();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v6, 1, v8);
}

uint64_t sub_1D0F40424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v5 = sub_1D0FA2670(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = sub_1D0FF3EA8();
    v16 = *(v9 - 8);
    (*(v16 + 16))(a3, v8 + *(v16 + 72) * v7, v9);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = sub_1D0FF3EA8();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t sub_1D0F40560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v31 = a1;
  sub_1D0F40DB8(0, &qword_1EE070DB0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v29 - v4;
  v6 = sub_1D0FF48B8();
  v30 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v29 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v29 - v13;
  v15 = MEMORY[0x1E69A3CE0];
  sub_1D0F40DB8(0, &qword_1EE070D80, MEMORY[0x1E69A3CE0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v29 - v17;
  v19 = sub_1D0FF46B8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v15;
  v25 = v24;
  sub_1D0F40E68(v31, v18, &qword_1EE070D80, v23);
  if ((*(v20 + 48))(v18, 1, v25) == 1)
  {
    sub_1D0F40E0C(v18, &qword_1EE070D80, MEMORY[0x1E69A3CE0]);
    return (*(v20 + 16))(v32, v33, v25);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v25);
    v31 = v25;
    sub_1D0FF4698();
    v29[1] = v5;
    v27 = v30;
    sub_1D0FF4698();
    AnchoredTypeChangeSet.aggregated(with:)();
    v28 = *(v27 + 8);
    v28(v9, v6);
    v28(v12, v6);
    (*(v27 + 16))(v12, v14, v6);
    sub_1D0FF46A8();
    sub_1D0FF4688();
    v28(v14, v6);
    return (*(v20 + 8))(v22, v31);
  }
}

id Publisher<>.aggregatedChangesPublisher(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a1;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3, a2);
  (*(v6 + 32))(a3, v8, a2);
  v9 = *(type metadata accessor for AggregatedDataTypeChangesPublisher() + 36);
  v10 = v13;
  *(a3 + v9) = v13;

  return v10;
}

unint64_t sub_1D0F40A40()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D0F304E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0F40AC8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1D0F40C04(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1D0F40DB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D0F40E0C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D0F40DB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D0F40E68(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D0F40DB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t NumericValidationParseResult.isAtLeastPartiallyValid.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (v2)
  {
    if (v2 != 1)
    {
      v5 = *v0;
      v6 = v2;
      v7 = v3;

      v8 = v4;
      v3 = v7;
      v2 = v6;
      v1 = v5;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  sub_1D0F40F60(v1, v2, v3, v4);
  sub_1D0F40F60(0, 0, 0, 0);
  return v9;
}

void sub_1D0F40F60(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a2 >= 2)
  {
  }
}

BOOL sub_1D0F41010(void *a1, uint64_t *a2)
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

void *sub_1D0F41040@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1D0F4106C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1D0F41148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id NumericValidationProvider.disallowedCharacterSet.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D0FF3E48();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = (*(a2 + 16))(a1, a2);
  result = [v16 decimalSeparator];
  if (result)
  {
    v18 = result;
    sub_1D0FF5428();

    sub_1D0FF3DE8();

    sub_1D0FF3DF8();
    sub_1D0FF3E28();
    v19 = *(v7 + 8);
    v19(v10, v6);
    v19(v13, v6);
    sub_1D0FF3E38();

    v19(v15, v6);
    return (*(v7 + 56))(a3, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void NumericValidationProvider.localizedFormattedResult(from:options:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v98 = a4;
  v87 = a3;
  sub_1D0F41D1C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v91 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D0FF3E48();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v88 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v93 = v85 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v95 = v85 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v85 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v96 = v85 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v94 = v85 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v85 - v29;
  v103 = a1;
  v104 = a2;
  sub_1D0FF3E18();
  v100 = sub_1D0F1A194();
  v31 = sub_1D0FF5C78();
  v33 = v32;
  v90 = v15;
  v34 = *(v15 + 8);
  v97 = v14;
  v99 = v34;
  v34(v30, v14);
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    goto LABEL_13;
  }

  v89 = a6;
  v36 = *(a5 + 16);
  v85[1] = v7;
  v86 = a5;
  v37 = v36(v98, a5);
  v92 = v31;
  v103 = v31;
  v104 = v33;
  v38 = v37;
  v39 = [v37 plusSign];
  if (!v39)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = v39;
  v41 = sub_1D0FF5428();
  v43 = v42;

  v101 = v41;
  v102 = v43;
  LOBYTE(v40) = sub_1D0FF5C88();

  if (v40)
  {
    v44 = [v38 plusSign];
    [v38 setPositivePrefix_];
  }

  v45 = [v38 decimalSeparator];
  if (!v45)
  {
    goto LABEL_30;
  }

  v46 = v45;
  sub_1D0FF5428();

  sub_1D0FF3DE8();

  v47 = [v38 plusSign];
  if (!v47)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v48 = v47;
  sub_1D0FF5428();

  v49 = v95;
  sub_1D0FF3DE8();

  v50 = v96;
  sub_1D0FF3E28();
  v51 = v97;
  v52 = v99;
  v99(v49, v97);
  v53 = v24;
  v54 = v51;
  v52(v53, v51);
  v55 = [v38 minusSign];
  v95 = v38;
  if (v55)
  {
    v56 = v55;
    sub_1D0FF5428();

    v57 = v93;
    sub_1D0FF3DE8();

    v58 = v94;
    sub_1D0FF3E28();
    v52(v57, v51);
    v52(v50, v51);
    v103 = v92;
    v104 = v33;
    sub_1D0FF3E38();
    sub_1D0FF5C78();
    v52(v30, v51);
    v59 = sub_1D0FF5498();

    v60 = sub_1D0FF5498();
    v61 = v52;
    a6 = v89;
    if (v59 == v60)
    {
      v61(v58, v54);

LABEL_13:
      *a6 = xmmword_1D0FF9300;
      *(a6 + 16) = 0;
      *(a6 + 24) = 0;
      return;
    }

    v62 = v91;
    (*(v86 + 8))(v98);
    v63 = v90;
    if ((*(v90 + 48))(v62, 1, v54) == 1)
    {
      sub_1D0F41D74(v62);
    }

    else
    {
      v64 = v88;
      (*(v63 + 32))(v88, v62, v54);
      v103 = v92;
      v104 = v33;
      sub_1D0FF3E38();
      sub_1D0FF5C78();
      v65 = v30;
      v66 = v99;
      v99(v65, v54);
      v67 = sub_1D0FF5498();

      v66(v64, v54);
      if (v67 >= 1)
      {
        v99(v58, v54);

LABEL_28:
        *a6 = 0u;
        *(a6 + 16) = 0u;
        return;
      }
    }

    v68 = sub_1D0FF53E8();

    v69 = v95;
    v70 = [v95 numberFromString_];

    if (v70)
    {
      v71 = *(v87 + 16);
      v72 = (v87 + 32);
      while (v71)
      {
        v73 = *v72++;
        --v71;
        if (v73 == 1)
        {
          v74 = [v69 plusSign];
          [v69 setPositivePrefix_];

          break;
        }
      }

      v75 = [v69 stringFromNumber_];
      if (v75)
      {
        v76 = v75;
        v77 = v58;
        v78 = sub_1D0FF5428();
        v79 = v54;
        v80 = v69;
        v82 = v81;

        [v70 doubleValue];
        v84 = v83;

        v99(v77, v79);
        *a6 = v78;
        *(a6 + 8) = v82;
        *(a6 + 16) = v84;
        *(a6 + 24) = v80;
        return;
      }

      v99(v58, v54);
    }

    else
    {
      v99(v58, v54);
    }

    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
}

uint64_t _s16HealthExperience28NumericValidationParseResultO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (!v3)
  {
    if (!v7)
    {
      v3 = 0;
      v10 = 1;
      goto LABEL_16;
    }

LABEL_15:
    sub_1D0F420C4(v6, v7, v8, v9);
    sub_1D0F420C4(v2, v3, v4, v5);
    v10 = 0;
    goto LABEL_16;
  }

  if (v3 != 1)
  {
    if (v7 >= 2)
    {
      v11 = v2 == v6 && v3 == v7;
      if (v11 || (sub_1D0FF6278()) && *&v4 == *&v8)
      {
        sub_1D0F4210C();
        sub_1D0F420C4(v6, v7, v8, v9);
        sub_1D0F420C4(v2, v3, v4, v5);
        v10 = sub_1D0FF5BF8();
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  if (v7 != 1)
  {
    goto LABEL_15;
  }

  v3 = 1;
  v10 = 1;
LABEL_16:
  sub_1D0F40F60(v2, v3, v4, v5);
  sub_1D0F40F60(v6, v7, v8, v9);
  return v10 & 1;
}

void sub_1D0F41D1C()
{
  if (!qword_1EC5FC2C8)
  {
    sub_1D0FF3E48();
    v0 = sub_1D0FF5C38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC5FC2C8);
    }
  }
}

uint64_t sub_1D0F41D74(uint64_t a1)
{
  sub_1D0F41D1C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D0F41DD4()
{
  result = qword_1EC5FC2D0;
  if (!qword_1EC5FC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC2D0);
  }

  return result;
}

unint64_t sub_1D0F41E2C()
{
  result = qword_1EC5FC2D8;
  if (!qword_1EC5FC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC2D8);
  }

  return result;
}

unint64_t sub_1D0F41E84()
{
  result = qword_1EC5FC2E0;
  if (!qword_1EC5FC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC2E0);
  }

  return result;
}

unint64_t sub_1D0F41EDC()
{
  result = qword_1EC5FC2E8;
  if (!qword_1EC5FC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC2E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16HealthExperience28NumericValidationParseResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D0F41F48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D0F41F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D0F41FFC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumericValidationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NumericValidationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_1D0F420C4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a2 >= 2)
  {

    v5 = a4;
  }
}

unint64_t sub_1D0F4210C()
{
  result = qword_1EE071060;
  if (!qword_1EE071060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE071060);
  }

  return result;
}

Swift::Void __swiftcall URL.openSensitiveURL()()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1D0FF41B8();
    [v1 openSensitiveURL:v2 withOptions:0];
  }
}

Swift::Void __swiftcall String.openSensitiveURL()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1D0FF4C18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F3B100();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D0FF4238();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4228();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D0F42558(v10);
    sub_1D0FF4BC8();

    v15 = sub_1D0FF4C08();
    v16 = sub_1D0FF5958();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_1D0F1AE0C(0x676E69727453, 0xE600000000000000, &v23);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1D0F1AE0C(v3, v2, &v23);
      _os_log_impl(&dword_1D0F17000, v15, v16, "%s Invalid URL: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v18, -1, -1);
      MEMORY[0x1D3882680](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v19 = [objc_opt_self() defaultWorkspace];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D0FF41B8();
      [v20 openSensitiveURL:v21 withOptions:0];
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1D0F42558(uint64_t a1)
{
  sub_1D0F3B100();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HKProfileStore.ProfileIdentifiersPublisher.receive<A>(subscriber:)(uint64_t a1)
{
  v3 = *v1;
  v4 = _s27ProfileIdentifiersPublisherV5InnerCMa();
  v5 = v3;
  v6 = sub_1D0F43E70(a1, v5);

  v8[3] = v4;
  v8[4] = swift_getWitnessTable();
  v8[0] = v6;
  sub_1D0FF4DB8();
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1D0F426C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v4 = sub_1D0FF4AC8();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1D0F4279C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  v4 = sub_1D0FF4AC8();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_1D0F428FC()
{
  v1 = sub_1D0FF4C18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D0FF49B8();
  sub_1D0FF4BC8();
  v7 = v0;
  v8 = sub_1D0FF4C08();
  v9 = sub_1D0FF5978();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    v23 = v20;
    *v11 = 136446210;
    v12 = [v7 description];
    v13 = sub_1D0FF5428();
    v21 = v1;
    v14 = v13;
    v16 = v15;

    v17 = sub_1D0F1AE0C(v14, v16, &v23);
    v5 = MEMORY[0x1E69E7D40];

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1D0F17000, v8, v9, "[%{public}s]: Received cancellation, stopping observing for profile list updates", v11, 0xCu);
    v18 = v20;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1D3882680](v18, -1, -1);
    MEMORY[0x1D3882680](v11, -1, -1);

    (*(v22 + 8))(v4, v21);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  [*(v7 + *((*v5 & *v7) + 0x70)) removeObserver_];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  return sub_1D0FF49C8();
}

uint64_t sub_1D0F42BA4()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  v4[2] = *((v2 & v1) + 0x50);
  v4[3] = *((v2 & v1) + 0x58);
  v4[4] = v3;

  sub_1D0F42D58(sub_1D0F44084, v4);
}

void sub_1D0F42C8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x70)) addObserver:Strong completion:0];
  }
}

void sub_1D0F42D58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x70));
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = *((v7 & v6) + 0x50);
  v10[3] = *((v7 & v6) + 0x58);
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v12[4] = sub_1D0F44074;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D0F42F5C;
  v12[3] = &block_descriptor;
  v11 = _Block_copy(v12);
  sub_1D0F1C500(a1);

  [v8 fetchAllProfilesWithCompletion_];
  _Block_release(v11);
}

void sub_1D0F42ECC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D0F43000(a1, a2);
  }

  if (a4)
  {
    a4();
  }
}

uint64_t sub_1D0F42F5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D0F1ACD4(0, &qword_1EE071070);
    v4 = sub_1D0FF5608();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1D0F43000(uint64_t a1, void *a2)
{
  v70 = a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  sub_1D0FF4AA8();
  swift_getWitnessTable();
  v6 = sub_1D0FF6418();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - v8;
  v10 = sub_1D0FF4C18();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  if (a2)
  {
    v19 = a2;
    sub_1D0FF4BC8();
    v20 = a2;
    v21 = v2;
    v22 = sub_1D0FF4C08();
    v23 = sub_1D0FF5958();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v74 = v25;
      *v24 = 136446466;
      v26 = [v21 description];
      v27 = sub_1D0FF5428();
      v29 = v28;

      v30 = sub_1D0F1AE0C(v27, v29, &v74);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2082;
      v73 = a2;
      v31 = a2;
      sub_1D0F1E940();
      v32 = sub_1D0FF5448();
      v34 = sub_1D0F1AE0C(v32, v33, &v74);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_1D0F17000, v22, v23, "[%{public}s]: Failed to fetch profiles: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3882680](v25, -1, -1);
      MEMORY[0x1D3882680](v24, -1, -1);
    }

    else
    {
    }

    return (*(v71 + 8))(v18, v72);
  }

  else
  {
    v67 = v6;
    v68 = v9;
    v65 = v4;
    v66 = v5;
    v69 = v7;
    v35 = v70;
    if (v70)
    {
      sub_1D0FF4BC8();
      v36 = v2;

      v37 = sub_1D0FF4C08();
      v38 = sub_1D0FF5978();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v74 = v40;
        *v39 = 136446466;
        v41 = [v36 description];
        v42 = sub_1D0FF5428();
        v43 = v35;
        v45 = v44;

        v46 = sub_1D0F1AE0C(v42, v45, &v74);
        v35 = v43;

        *(v39 + 4) = v46;
        *(v39 + 12) = 2082;
        v47 = sub_1D0F1ACD4(0, &qword_1EE071070);
        v48 = MEMORY[0x1D3880C20](v43, v47);
        v50 = sub_1D0F1AE0C(v48, v49, &v74);

        *(v39 + 14) = v50;
        _os_log_impl(&dword_1D0F17000, v37, v38, "[%{public}s]: Received new profiles: %{public}s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3882680](v40, -1, -1);
        MEMORY[0x1D3882680](v39, -1, -1);
      }

      (*(v71 + 8))(v16, v72);
      v52 = v68;
      v51 = v69;
      v53 = v67;
      v74 = v35;
      _s27ProfileIdentifiersPublisherV5InnerCMa();
      swift_getWitnessTable();
      sub_1D0FF4A68();
      return (*(v51 + 8))(v52, v53);
    }

    else
    {
      sub_1D0FF4BC8();
      v55 = v2;
      v56 = sub_1D0FF4C08();
      v57 = sub_1D0FF5968();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v74 = v59;
        *v58 = 136446210;
        v60 = [v55 description];
        v61 = sub_1D0FF5428();
        v63 = v62;

        v64 = sub_1D0F1AE0C(v61, v63, &v74);

        *(v58 + 4) = v64;
        _os_log_impl(&dword_1D0F17000, v56, v57, "[%{public}s]: No error and nil profileIdentifiers received", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x1D3882680](v59, -1, -1);
        MEMORY[0x1D3882680](v58, -1, -1);
      }

      return (*(v71 + 8))(v13, v72);
    }
  }
}

void sub_1D0F436B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D0F44090();
}

id sub_1D0F43718(void *a1)
{
  v1 = a1;
  sub_1D0F43780();

  v2 = sub_1D0FF53E8();

  return v2;
}

uint64_t sub_1D0F43780()
{
  MEMORY[0x1D3880AC0](60, 0xE100000000000000);
  sub_1D0F1ACD4(0, &unk_1EE070B30);
  v0 = sub_1D0FF6468();
  MEMORY[0x1D3880AC0](v0);

  MEMORY[0x1D3880AC0](46, 0xE100000000000000);
  v1 = sub_1D0FF6468();
  MEMORY[0x1D3880AC0](v1);

  MEMORY[0x1D3880AC0](32, 0xE100000000000000);
  sub_1D0FF5F38();
  MEMORY[0x1D3880AC0](62, 0xE100000000000000);
  return 0;
}

id sub_1D0F438BC()
{
  v2.receiver = v0;
  v2.super_class = _s27ProfileIdentifiersPublisherV5InnerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D0F4392C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  __swift_destroy_boxed_opaque_existential_1Tm(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  v3 = *((*v2 & *a1) + 0x78);
  v4 = sub_1D0FF4AC8();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

void (*sub_1D0F43A90(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1D0F42878();
  return sub_1D0F43B00;
}

void sub_1D0F43B00(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1D0F43B48()
{
  _s27ProfileIdentifiersPublisherV5InnerCMa();

  return sub_1D0FF4A68();
}

uint64_t sub_1D0F43BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s27ProfileIdentifiersPublisherV5InnerCMa();

  return MEMORY[0x1EEE0EB78](a1, v5, a3);
}

id sub_1D0F43C60(uint64_t a1, void *a2)
{
  v3 = v2;
  v19[1] = a1;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1D0FF4AC8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  v11 = &v3[*((v6 & v5) + 0x60)];
  v12 = sub_1D0FF4548();
  swift_allocObject();
  v13 = sub_1D0FF4538();
  v11[3] = v12;
  v11[4] = sub_1D0F1A1E8();
  *v11 = v13;
  v14 = MEMORY[0x1E69E7D40];
  v15 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
  *&v3[v15] = sub_1D0FF4E38();
  *&v3[*((*v14 & *v3) + 0x70)] = a2;
  v16 = a2;
  sub_1D0FF4AB8();
  (*(v8 + 32))(&v3[*((*v14 & *v3) + 0x78)], v10, v7);
  v17 = _s27ProfileIdentifiersPublisherV5InnerCMa();
  v20.receiver = v3;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1D0F43EC8(uint64_t *a1, int a2)
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

uint64_t sub_1D0F43F10(uint64_t result, int a2, int a3)
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

uint64_t sub_1D0F43F5C()
{
  result = sub_1D0FF4AC8();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1D0F44090()
{
  v1 = sub_1D0FF4C18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0FF4BC8();
  v5 = v0;
  v6 = sub_1D0FF4C08();
  v7 = sub_1D0FF5978();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = [v5 description];
    v12 = sub_1D0FF5428();
    v14 = v13;

    v15 = sub_1D0F1AE0C(v12, v14, &v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D0F17000, v6, v7, "[%{public}s]: Received profile list did update, fetching profiles", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1D3882680](v10, -1, -1);
    MEMORY[0x1D3882680](v9, -1, -1);

    (*(v2 + 8))(v4, v16);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_1D0F42D58(0, 0);
}

id DefaultMedicalIDAvailabilityProvider.isSupported.getter()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 isMedicalIDAvailable];

  return v1;
}

id sub_1D0F4431C()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 isMedicalIDAvailable];

  return v1;
}

uint64_t sub_1D0F44464()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D0F444D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

char *sub_1D0F44614(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
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

uint64_t sub_1D0F44834()
{
  v1 = *(v0 + OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_protectedAutoFinishesOnCancel);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

void sub_1D0F44874(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_protectedAutoFinishesOnCancel);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = a1;

  os_unfair_lock_unlock((v3 + 20));
}

void (*sub_1D0F448C0(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_protectedAutoFinishesOnCancel);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *(a1 + 8) = v4;
  return sub_1D0F4492C;
}

void sub_1D0F4492C(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 5);
  LOBYTE(v1[4]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 5);
}

uint64_t AsynchronousOperation.ExecutionState.rawValue.getter()
{
  v1 = 0x6E69747563657865;
  if (*v0 != 1)
  {
    v1 = 0x64656873696E6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964616572;
  }
}

HealthExperience::AsynchronousOperation::ExecutionState_optional __swiftcall AsynchronousOperation.ExecutionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D0FF6088();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D0F44A28(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E69747563657865;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7964616572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6E69747563657865;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x64656873696E6966;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7964616572;
  }

  if (*a2)
  {
    v10 = v8;
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
    v11 = sub_1D0FF6278();
  }

  return v11 & 1;
}

uint64_t sub_1D0F44B30()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

uint64_t sub_1D0F44BD4()
{
  sub_1D0FF5488();
}

uint64_t sub_1D0F44C64()
{
  sub_1D0FF6338();
  sub_1D0FF5488();

  return sub_1D0FF6378();
}

void sub_1D0F44D10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E69747563657865;
  if (v2 != 1)
  {
    v5 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7964616572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D0F44D70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D0FF4908();
  *a1 = v3;
  return result;
}

void (*sub_1D0F44DB4(uint64_t a1))()
{
  *a1 = v1;
  sub_1D0FF4908();
  *(a1 + 12) = *(a1 + 11);
  return sub_1D0F44E10;
}

uint64_t sub_1D0F44E60()
{
  sub_1D0FF4548();
  sub_1D0F1A1E8();

  sub_1D0FF49E8();
}

uint64_t sub_1D0F44EE8()
{
  sub_1D0FF4548();
  sub_1D0F1A1E8();

  sub_1D0FF49E8();
}

void sub_1D0F44F80(void *a1)
{
  if ([a1 isFinished] & 1) != 0 || (objc_msgSend(a1, sel_isCancelled))
  {
    v5.receiver = a1;
    v5.super_class = type metadata accessor for AsynchronousOperation();
    objc_msgSendSuper2(&v5, sel_cancel);
  }

  else
  {
    sub_1D0FF4918();
    sub_1D0FF4908();
    if (v7 == 1 && (v8 & 1) == 0)
    {
      v2 = sub_1D0FF4918();
      (*((*MEMORY[0x1E69E7D40] & *a1) + 0xB8))(v2);
    }

    v6.receiver = a1;
    v6.super_class = type metadata accessor for AsynchronousOperation();
    objc_msgSendSuper2(&v6, sel_cancel);
    if ([a1 isExecuting])
    {
      v3 = *(a1 + OBJC_IVAR____TtC16HealthExperience21AsynchronousOperation_protectedAutoFinishesOnCancel);
      os_unfair_lock_lock((v3 + 20));
      v4 = *(v3 + 16);
      os_unfair_lock_unlock((v3 + 20));
      if (v4 == 1)
      {
        sub_1D0F1CC18();
      }
    }
  }
}

_BYTE *sub_1D0F450E4(_BYTE *result)
{
  v1 = result[1];
  v2 = result[2];
  *result = 1;
  result[1] = v1;
  result[2] = v2;
  return result;
}

uint64_t sub_1D0F45278()
{
  MEMORY[0x1D3880AC0](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1D0F45340();
  v0 = sub_1D0FF5448();
  MEMORY[0x1D3880AC0](v0);

  MEMORY[0x1D3880AC0](32, 0xE100000000000000);
  sub_1D0FF5F38();
  MEMORY[0x1D3880AC0](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1D0F45340()
{
  result = qword_1EE0710E8;
  if (!qword_1EE0710E8)
  {
    type metadata accessor for AsynchronousOperation();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EE0710E8);
  }

  return result;
}

id AsynchronousOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsynchronousOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsynchronousOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D0F453F0()
{
  result = qword_1EC5FC3E8;
  if (!qword_1EC5FC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5FC3E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsynchronousOperation.OperationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
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

uint64_t storeEnumTagSinglePayload for AsynchronousOperation.OperationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t static FeedItemContext.makeProfileDisplayNamePublisher(healthStore:summarySharingEntryStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 profileIdentifier];
  v8 = [v7 type];

  if (v8 == 2)
  {

    return sub_1D0F45D50(a1);
  }

  else if (v8 == 1)
  {

    return sub_1D0F4580C(a1, a3, a4);
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696C340]) initWithHealthStore_];
    v11 = sub_1D0F45F20(v10);

    return v11;
  }
}

uint64_t sub_1D0F4580C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  sub_1D0F461C8();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F464F4(0, &unk_1EE06E6E8, sub_1D0F46304);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  sub_1D0F46404();
  v13 = v12;
  v38 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  sub_1D0F464D4(0);
  v20 = *(v19 - 8);
  v39 = v19;
  v40 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];
  *(swift_allocObject() + 16) = v23;
  sub_1D0F4625C();
  sub_1D0F463BC(&qword_1EE06E530, sub_1D0F4625C);
  v24 = v23;
  sub_1D0FF5008();
  sub_1D0F46304();
  sub_1D0F463BC(&qword_1EE06E4F0, sub_1D0F461C8);
  v25 = v34;
  sub_1D0FF50C8();
  (*(v35 + 8))(v7, v25);
  sub_1D0F239C0(0, &qword_1EE070E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v26 = v36;
  sub_1D0FF4CF8();
  (*(v37 + 8))(v11, v26);
  v27 = swift_allocObject();
  v28 = v42;
  *(v27 + 16) = v41;
  *(v27 + 24) = v28;
  sub_1D0FF4CF8();

  v29 = *(v38 + 8);
  v29(v16, v13);
  sub_1D0FF47C8();
  sub_1D0FF4CF8();
  v29(v18, v13);
  sub_1D0F463BC(qword_1EE06E700, sub_1D0F464D4);
  v30 = v39;
  v31 = sub_1D0FF5098();

  (*(v40 + 8))(v22, v30);
  return v31;
}

uint64_t sub_1D0F45D50(void *a1)
{
  sub_1D0F46D50();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 profileIdentifier];
  v8 = HKSummarySharingEntryStore.fetchIncomingAcceptedEntryProfileInformation(for:)(v7);

  v11[1] = v8;
  sub_1D0F46DFC(0, &qword_1EC5FC400, type metadata accessor for SharingEntryProfileInformation, MEMORY[0x1E695BED0]);
  sub_1D0FF47C8();
  sub_1D0F46E88();
  sub_1D0FF50C8();

  sub_1D0F463BC(&unk_1EC5FC410, sub_1D0F46D50);
  v9 = sub_1D0FF5098();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1D0F45F20(void *a1)
{
  sub_1D0F4732C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0F474D4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = a1;
  sub_1D0F46DFC(0, &qword_1EC5FC428, sub_1D0F473C0, MEMORY[0x1E695C028]);
  sub_1D0F4744C();
  v12 = a1;
  sub_1D0FF5008();
  sub_1D0FF47C8();
  sub_1D0F463BC(&qword_1EC5FC448, sub_1D0F4732C);
  sub_1D0FF50C8();
  (*(v4 + 8))(v6, v3);
  sub_1D0F463BC(&unk_1EC5FC450, sub_1D0F474D4);
  v13 = sub_1D0FF5098();
  (*(v9 + 8))(v11, v8);
  return v13;
}