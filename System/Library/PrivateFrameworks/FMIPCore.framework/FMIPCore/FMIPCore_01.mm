unint64_t sub_24A68ADE8()
{
  result = qword_27EF5F288;
  if (!qword_27EF5F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F288);
  }

  return result;
}

uint64_t FMIPDeviceConnectedStateType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = sub_24A6BBA94(&qword_27EF5F6B0, &qword_24A840430);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v53 - v4;
  v5 = sub_24A6BBA94(&qword_27EF5F6B8, &qword_24A840438);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v53 - v8;
  v59 = sub_24A6BBA94(&qword_27EF5F6C0, &qword_24A840440);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v53 - v10;
  v11 = sub_24A6BBA94(&qword_27EF5F6C8, &qword_24A840448);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = sub_24A6BBA94(&qword_27EF5F6D0, &qword_24A840450);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = sub_24A6BBA94(&qword_27EF5F6D8, &unk_24A840458);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  sub_24A67DF6C(a1, v25);
  sub_24A68BAD0();
  v26 = v69;
  sub_24A82DD64();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_24A82DAA4();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_24A68BDB4();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_24A82D8A4();
    swift_allocError();
    v41 = v40;
    v42 = *(sub_24A6BBA94(&qword_27EF5F258, &qword_24A83DF00) + 48);
    *v41 = &type metadata for FMIPDeviceConnectedStateType;
    sub_24A82D9E4();
    sub_24A82D894();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_24A8112F4();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_24A82D9D4();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_24A68BDE8();
      v45 = v54;
      sub_24A82D9D4();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_24A8112A0();
    v46 = v31;
    v47 = v54;
    sub_24A82D9D4();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_24A8111F8();
    v49 = v64;
    v50 = v54;
    sub_24A82D9D4();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return sub_24A6876E8(v43);
  }

  v75 = 3;
  sub_24A81124C();
  v38 = v54;
  sub_24A82D9D4();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return sub_24A6876E8(v43);
}

unint64_t sub_24A68B664()
{
  result = qword_27EF5F838;
  if (!qword_27EF5F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F838);
  }

  return result;
}

unint64_t sub_24A68B6BC()
{
  result = qword_27EF5F840;
  if (!qword_27EF5F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F840);
  }

  return result;
}

unint64_t sub_24A68B724()
{
  result = qword_27EF5F828;
  if (!qword_27EF5F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F828);
  }

  return result;
}

unint64_t sub_24A68B77C()
{
  result = qword_27EF5F830;
  if (!qword_27EF5F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F830);
  }

  return result;
}

unint64_t sub_24A68B7E4()
{
  result = qword_27EF5F818;
  if (!qword_27EF5F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F818);
  }

  return result;
}

unint64_t sub_24A68B83C()
{
  result = qword_27EF5F820;
  if (!qword_27EF5F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F820);
  }

  return result;
}

unint64_t sub_24A68B8A4()
{
  result = qword_27EF5F808;
  if (!qword_27EF5F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F808);
  }

  return result;
}

unint64_t sub_24A68B8FC()
{
  result = qword_27EF5F810;
  if (!qword_27EF5F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F810);
  }

  return result;
}

unint64_t sub_24A68B964()
{
  result = qword_27EF5F7F8;
  if (!qword_27EF5F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F7F8);
  }

  return result;
}

unint64_t sub_24A68B9BC()
{
  result = qword_27EF5F800;
  if (!qword_27EF5F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F800);
  }

  return result;
}

unint64_t sub_24A68BA24()
{
  result = qword_27EF5F848;
  if (!qword_27EF5F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F848);
  }

  return result;
}

unint64_t sub_24A68BA7C()
{
  result = qword_27EF5F850;
  if (!qword_27EF5F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F850);
  }

  return result;
}

unint64_t sub_24A68BAD0()
{
  result = qword_27EF5F680;
  if (!qword_27EF5F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F680);
  }

  return result;
}

uint64_t sub_24A68BB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24A68BB4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24A68BB4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6E6F63736964 && a2 == 0xEC00000064657463;
  if (v4 || (sub_24A82DC04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064 || (sub_24A82DC04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465686361747461 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465686361746564 && a2 == 0xE800000000000000 || (sub_24A82DC04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465746365746564 && a2 == 0xEE0079627261654ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_24A82DC04();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t getEnumTagSinglePayload for FMIPPartType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_24A68BDB4()
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

unint64_t sub_24A68BDE8()
{
  result = qword_27EF5F6A8;
  if (!qword_27EF5F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F6A8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FMIPPartType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t FMIPItemGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v47 = sub_24A6BBA94(&qword_27EF5DBD0, &qword_24A835EE0);
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v34 - v10;
  v12 = type metadata accessor for FMIPItemGroup();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v48 = a1;
  sub_24A67DF6C(a1, v16);
  sub_24A68C708();
  v46 = v11;
  sub_24A82DD64();
  if (!v2)
  {
    v44 = v15;
    v18 = v8;
    v19 = v45;
    v49 = 0;
    sub_24A70B3A4();
    sub_24A82DA84();
    v20 = v50;
    LOBYTE(v50) = 1;
    v41 = sub_24A82DA44();
    v42 = v20;
    v43 = v21;
    sub_24A6BBA94(&qword_27EF5DA38, &qword_24A8352C8);
    v49 = 2;
    sub_24A70B3F8();
    sub_24A82DA84();
    v40 = v50;
    sub_24A6BBA94(&qword_27EF5DBE8, &qword_24A835EE8);
    v49 = 3;
    sub_24A714D4C(&qword_27EF5DBF0, sub_24A70B4AC);
    sub_24A82DA84();
    v39 = v50;
    sub_24A6BBA94(&qword_27EF5DC00, &qword_24A835EF0);
    v49 = 4;
    sub_24A70B560();
    sub_24A82DA84();
    v38 = v50;
    sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
    v49 = 5;
    sub_24A70B61C();
    sub_24A82DA84();
    v37 = v50;
    sub_24A6BBA94(&qword_27EF5DC28, &qword_24A835EF8);
    v49 = 6;
    sub_24A70B6D0(&qword_27EF5DC30, sub_24A70B748);
    sub_24A82DA84();
    v23 = v50;
    LOBYTE(v50) = 7;
    v34 = sub_24A82DA44();
    v35 = v24;
    v36 = v23;
    LOBYTE(v50) = 8;
    v25 = sub_24A82DA74();
    v26 = v44;
    v27 = v41;
    *v44 = v42;
    v26[1] = v27;
    v26[2] = v43;
    *(v26 + *(v12 + 52)) = v40;
    v28 = v36;
    v26[5] = v37;
    v26[6] = v28;
    v29 = v38;
    v26[8] = v25;
    v26[9] = v29;
    v30 = v35;
    v26[3] = v34;
    v26[4] = v30;
    v26[7] = v39;
    v31 = type metadata accessor for FMIPItemLostModeMetadata();
    LOBYTE(v50) = 9;
    sub_24A67EFC0(&qword_27EF5DC40, type metadata accessor for FMIPItemLostModeMetadata);
    sub_24A82DA84();
    (*(v18 + 8))(v46, v47);
    (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
    v32 = *(v12 + 48);
    v33 = v44;
    sub_24A70B7FC(v7, v44 + v32);
    sub_24A6A2328(v33, v19, type metadata accessor for FMIPItemGroup);
  }

  return sub_24A6876E8(v48);
}

unint64_t sub_24A68C65C()
{
  result = qword_27EF5DCE8;
  if (!qword_27EF5DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DCE8);
  }

  return result;
}

unint64_t sub_24A68C6B4()
{
  result = qword_27EF5DCF0;
  if (!qword_27EF5DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DCF0);
  }

  return result;
}

unint64_t sub_24A68C708()
{
  result = qword_27EF5DBD8;
  if (!qword_27EF5DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5DBD8);
  }

  return result;
}

uint64_t sub_24A68C770(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

FMIPCore::FMIPBatteryStatus_optional __swiftcall FMIPBatteryStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A82D9C4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24A68C87C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24A68C8EC()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  LOBYTE(v0) = [v0 BOOLForKey:v1 inDomain:v2];

  byte_27EF5DEF1 = v0;
}

uint64_t sub_24A68C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CA34();
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
    v12 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_24A68CA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A82CA34();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24A68CB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A82CA34();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_24A68CC0C()
{
  v0 = objc_opt_self();
  v1 = sub_24A82CF94();
  v2 = sub_24A82CF94();
  LOBYTE(v0) = [v0 BOOLForKey:v1 inDomain:v2];

  byte_27EF5DEF2 = v0;
}

uint64_t sub_24A68CCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_24A68CD84()
{
  result = qword_27EF5F290;
  if (!qword_27EF5F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F290);
  }

  return result;
}

unint64_t sub_24A68CE38()
{
  result = qword_27EF5F3B0;
  if (!qword_27EF5F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5F3B0);
  }

  return result;
}

uint64_t sub_24A68CE8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A82D9C4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t FMIPDevice.debugDescription.getter()
{
  v1 = v0;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  v47 = 0xD000000000000019;
  v48 = 0x800000024A849E60;
  v2 = *v0;
  v3 = v1[1];

  v4 = sub_24A68D464(10);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x24C21C960](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x24C21C9E0](v11, v13);

  MEMORY[0x24C21C9E0](0x3A656D616E20, 0xE600000000000000);
  MEMORY[0x24C21C9E0](v1[8], v1[9]);
  MEMORY[0x24C21C9E0](0x6F697461636F6C20, 0xEA00000000003A6ELL);
  *v44 = v1[32];
  *&v44[8] = *(v1 + 33);
  v14 = v1[35];
  v43 = *(v1 + 18);
  v41 = v1[27];
  v42 = v14;
  v15 = *(type metadata accessor for FMIPDevice() + 128);
  v16 = v43;
  v17 = *&v44[8];
  sub_24A7DC368(v44, &v42, (v41 & 0x20) != 0, v1 + v15, &v45);

  *v44 = v45;
  *&v44[16] = v46;
  sub_24A6BBA94(&qword_27EF5EA68, &qword_24A839E10);
  v18 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v18);

  v20 = v47;
  v19 = v48;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  *&v45 = 0x3A6C65646F6DLL;
  *(&v45 + 1) = 0xE600000000000000;
  MEMORY[0x24C21C9E0](v1[15], v1[16]);
  MEMORY[0x24C21C9E0](0x6F6765746163202CLL, 0xEB000000003A7972);
  MEMORY[0x24C21C9E0](v1[13], v1[14]);
  MEMORY[0x24C21C9E0](0xD000000000000013, 0x800000024A849E80);
  MEMORY[0x24C21C9E0](v1[4], v1[5]);
  MEMORY[0x24C21C9E0](8236, 0xE200000000000000);
  v21 = v45;
  *&v45 = v20;
  *(&v45 + 1) = v19;

  MEMORY[0x24C21C9E0](v21, *(&v21 + 1));

  v22 = v45;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  strcpy(&v45, "hasLocation: ");
  HIWORD(v45) = -4864;
  v23 = v1[33];
  if (v23)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v24, v25);

  MEMORY[0x24C21C9E0](0xD00000000000001ALL, 0x800000024A849EA0);
  v26 = v1[36];
  if (v26)
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v26)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v27, v28);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v29 = v45;
  v45 = v22;

  MEMORY[0x24C21C9E0](v29, *(&v29 + 1));

  v30 = v45;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  *&v45 = 0x676E697461636F6CLL;
  *(&v45 + 1) = 0xEA0000000000203ALL;
  if ((v41 & 0x10) != 0)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if ((v41 & 0x10) != 0)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v31, v32);

  MEMORY[0x24C21C9E0](0xD000000000000016, 0x800000024A849EC0);
  if ((v41 & 0x800) != 0)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if ((v41 & 0x800) != 0)
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v33, v34);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);
  v35 = v45;
  v45 = v30;

  MEMORY[0x24C21C9E0](v35, *(&v35 + 1));

  v36 = v45;
  *&v45 = 0;
  *(&v45 + 1) = 0xE000000000000000;
  sub_24A82D854();

  *&v45 = 0xD000000000000015;
  *(&v45 + 1) = 0x800000024A849EE0;
  v37 = v1[31];
  if (v37)
  {
    v37 = *(v37 + 16);
  }

  *v44 = v37;
  v38 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v38);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  v39 = v45;
  v45 = v36;

  MEMORY[0x24C21C9E0](v39, *(&v39 + 1));

  return v45;
}

uint64_t sub_24A68D464(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24A82D0C4();

    return sub_24A82D1A4();
  }

  return result;
}

uint64_t sub_24A68D510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24A68D558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D5C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68D760()
{
  v1 = *v0;
  v2 = 0x6954657461657263;
  v3 = 0x7865547472656C61;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F43737574617473;
  if (v1 != 1)
  {
    v5 = 0x7469547472656C61;
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

uint64_t storeEnumTagSinglePayload for FMIPSafeLocation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FMIPSafeLocation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

FMIPCore::FMIPActionStatus_optional __swiftcall FMIPActionStatus.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 210)
  {
    if (rawValue <= 2199)
    {
      if (rawValue > 229)
      {
        if (rawValue == 230)
        {
          *v1 = 10;
          return rawValue;
        }

        if (rawValue == 501)
        {
          *v1 = 12;
          return rawValue;
        }
      }

      else
      {
        if (rawValue == 211)
        {
          *v1 = 9;
          return rawValue;
        }

        if (rawValue == 220)
        {
          *v1 = 11;
          return rawValue;
        }
      }
    }

    else if (rawValue <= 2203)
    {
      if (rawValue == 2200)
      {
        *v1 = 13;
        return rawValue;
      }

      if (rawValue == 2201)
      {
        *v1 = 14;
        return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 2204:
          *v1 = 15;
          return rawValue;
        case 2403:
          *v1 = 16;
          return rawValue;
        case 2406:
          *v1 = 17;
          return rawValue;
      }
    }

    goto LABEL_43;
  }

  if (rawValue <= 204)
  {
    if (rawValue > 199)
    {
      if (rawValue == 200)
      {
        *v1 = 2;
        return rawValue;
      }

      if (rawValue == 203)
      {
        *v1 = 3;
        return rawValue;
      }
    }

    else
    {
      if (rawValue == -1)
      {
        *v1 = 0;
        return rawValue;
      }

      if (!rawValue)
      {
        *v1 = 1;
        return rawValue;
      }
    }

    goto LABEL_43;
  }

  if (rawValue > 206)
  {
    switch(rawValue)
    {
      case 207:
        *v1 = 6;
        return rawValue;
      case 208:
        *v1 = 7;
        return rawValue;
      case 209:
        *v1 = 8;
        return rawValue;
    }

LABEL_43:
    *v1 = 18;
    return rawValue;
  }

  if (rawValue == 205)
  {
    *v1 = 4;
  }

  else
  {
    *v1 = 5;
  }

  return rawValue;
}

unint64_t FMIPPlaySoundMetadata.debugDescription.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = type metadata accessor for FMIPPlaySoundMetadata();
  v4 = &v0[v3[5]];
  v5 = sub_24A82C994();
  v6 = [v2 localizedStringFromDate:v5 dateStyle:1 timeStyle:4];

  v7 = sub_24A82CFC4();
  v9 = v8;

  sub_24A82D854();

  v18 = *v1;
  v10 = FMIPActionStatus.description.getter();
  MEMORY[0x24C21C9E0](v10);

  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  MEMORY[0x24C21C9E0](v7, v9);

  MEMORY[0x24C21C9E0](0x203A7461203ELL, 0xE600000000000000);
  v11 = &v1[v3[6]];
  v19 = *v11;
  v20 = v11[1];

  sub_24A6BBA94(&qword_27EF5D248, &unk_24A834970);
  v12 = sub_24A82D024();
  MEMORY[0x24C21C9E0](v12);

  MEMORY[0x24C21C9E0](0x203A6D6120, 0xE500000000000000);
  v13 = &v1[v3[7]];
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
  }

  else
  {
    v15 = 0x21656E6F6E21;
  }

  if (v14)
  {
    v16 = v13[1];
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  MEMORY[0x24C21C9E0](v15, v16);

  return 0xD000000000000020;
}

unint64_t FMIPActionStatus.description.getter()
{
  switch(*v0)
  {
    case 1:
    case 2:
    case 4:
      sub_24A82D854();

      v3 = 0xD000000000000013;
      break;
    case 3:
    case 0xD:
      sub_24A82D854();

      v3 = 0xD00000000000001ELL;
      break;
    case 5:
      sub_24A82D854();

      v3 = 0xD000000000000012;
      break;
    case 6:
    case 7:
    case 0xB:
      sub_24A82D854();

      v3 = 0xD00000000000001FLL;
      break;
    case 8:
      sub_24A82D854();

      v3 = 0xD000000000000023;
      break;
    case 9:
    case 0xE:
      sub_24A82D854();

      v3 = 0xD000000000000025;
      break;
    case 0xA:
      sub_24A82D854();

      v3 = 0xD000000000000019;
      break;
    case 0xC:
      sub_24A82D854();

      v3 = 0xD00000000000001ALL;
      break;
    case 0xF:
      sub_24A82D854();

      v3 = 0xD000000000000020;
      break;
    case 0x10:
      sub_24A82D854();

      v3 = 0xD000000000000026;
      break;
    case 0x11:
      sub_24A82D854();

      v3 = 0xD000000000000028;
      break;
    default:
      sub_24A82D854();

      v3 = 0xD000000000000011;
      break;
  }

  v1 = sub_24A82DB84();
  MEMORY[0x24C21C9E0](v1);

  MEMORY[0x24C21C9E0](41, 0xE100000000000000);
  return v3;
}

uint64_t sub_24A68E2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPPlaySoundMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FMIPAudioChannel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5D640, &qword_24A833A60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A68E7A8();
  sub_24A82DD64();
  if (!v2)
  {
    LOBYTE(v36[0]) = 0;
    v11 = sub_24A82DA44();
    v13 = v12;
    v35 = v11;
    LOBYTE(v36[0]) = 1;
    v14 = sub_24A82DA54();
    LOBYTE(v36[0]) = 2;
    v34 = sub_24A82DA74();
    LOBYTE(v36[0]) = 3;
    v15 = sub_24A82DA54();
    v40 = v34 != 0;
    v41 = v15 & 1;
    v42 = v14 & 1;
    v36[0] = v35;
    v36[1] = v13;
    v37 = v34 != 0;
    v38 = v14 & 1;
    v39 = v15 & 1;
    v32 = FMIPAudioChannel.debugDescription.getter();
    v18 = v17;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v19 = sub_24A82CDC4();
    sub_24A6797D0(v19, qword_281518F88);

    v20 = sub_24A82CD94();
    v21 = sub_24A82D4C4();
    v22 = v18;
    v23 = v21;
    v33 = v22;

    v31 = v23;
    v34 = v20;
    if (os_log_type_enabled(v20, v23))
    {
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v24 = 136315138;
      v32 = sub_24A68761C(v32, v33, v36);

      *(v24 + 4) = v32;
      _os_log_impl(&dword_24A675000, v34, v31, "FMIPAudioChannel: Initialized: %s", v24, 0xCu);
      v25 = v30;
      sub_24A6876E8(v30);
      MEMORY[0x24C21E1D0](v25, -1, -1);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    v26 = v40;
    v27 = v42;
    v28 = v41;
    *a2 = v35;
    *(a2 + 8) = v13;
    *(a2 + 16) = v26;
    *(a2 + 17) = v27;
    *(a2 + 18) = v28;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A68E6FC()
{
  result = qword_27EF5D660;
  if (!qword_27EF5D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D660);
  }

  return result;
}

unint64_t sub_24A68E754()
{
  result = qword_27EF5D668;
  if (!qword_27EF5D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D668);
  }

  return result;
}

unint64_t sub_24A68E7A8()
{
  result = qword_27EF5D648;
  if (!qword_27EF5D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF5D648);
  }

  return result;
}

uint64_t sub_24A68E7FC()
{
  v1 = 1701667182;
  v2 = 0x6C62616C69617661;
  if (*v0 != 2)
  {
    v2 = 0x646574756DLL;
  }

  if (*v0)
  {
    v1 = 0x676E6979616C70;
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

uint64_t storeEnumTagSinglePayload for FMIPBatteryStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t FMIPAudioChannel.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  sub_24A82D854();

  MEMORY[0x24C21C9E0](v1, v2);
  MEMORY[0x24C21C9E0](0x62616C6961766120, 0xEB000000003A656CLL);
  if (v3)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v3)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v6, v7);

  MEMORY[0x24C21C9E0](0x676E6979616C7020, 0xE90000000000003ALL);
  if (v4)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v4)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  MEMORY[0x24C21C9E0](0x3A646574756D20, 0xE700000000000000);
  if (v5)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v5)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v10, v11);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000018;
}

__n128 sub_24A68EAA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_24A68EAB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = v10 + 24;
      result = *v10;
      v12 = *v10 == *(v10 + 24) && *(v10 + 8) == *(v10 + 32);
      if (v12 || (result = sub_24A82DC04(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 24);
      v13 = *(v10 + 32);
      v15 = *(v10 + 40);
      v16 = *(v10 + 41);
      v17 = *(v10 + 42);
      v18 = *(v10 + 16);
      *v11 = *v10;
      *v10 = v14;
      *(v10 + 8) = v13;
      *(v10 + 16) = v15;
      *(v10 + 17) = v16;
      *(v10 + 18) = v17;
      v10 -= 24;
      *(v11 + 16) = v18;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A68EBCC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6470556C69616D65;
    v6 = 0x6C69616D65;
    if (a1 != 2)
    {
      v6 = 0x646E756F73;
    }

    if (a1)
    {
      v5 = 0x72624E72656E776FLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1954047348;
    v2 = 0x7478655472657375;
    if (a1 != 7)
    {
      v2 = 0x6954657461657263;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6F43737574617473;
    if (a1 != 4)
    {
      v3 = 0x74736F4C706F7473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t storeEnumTagSinglePayload for FMIPDeviceImageVariant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t FMIPDeviceLostModeMetadata.debugDescription.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = v0 + *(type metadata accessor for FMIPDeviceLostModeMetadata() + 48);
  v4 = sub_24A82C994();
  v5 = [v2 localizedStringFromDate:v4 dateStyle:1 timeStyle:4];

  v6 = sub_24A82CFC4();
  v8 = v7;

  sub_24A82D854();

  v11 = *(v1 + 56);
  v9 = FMIPActionStatus.description.getter();
  MEMORY[0x24C21C9E0](v9);

  MEMORY[0x24C21C9E0](0x617473656D697420, 0xEC000000203A706DLL);
  MEMORY[0x24C21C9E0](v6, v8);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000025;
}

uint64_t sub_24A68EEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPDeviceLostModeMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_24A68F088(uint64_t a1, char *a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = &v85 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v85 - v9;
  v10 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v85 - v12;
  v13 = type metadata accessor for FMIPDevice();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v94 = &v85 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v87 = &v85 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v85 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v85 - v25;
  v27 = *a2;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v28 = sub_24A82CDC4();
  v29 = sub_24A6797D0(v28, qword_281518F88);

  v92 = v29;
  v30 = sub_24A82CD94();
  v31 = sub_24A82D504();
  v32 = os_log_type_enabled(v30, v31);
  v100 = v26;
  v86 = v18;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v112[0] = v34;
    *v33 = 134218242;
    *(v33 + 4) = *(a1 + 16);

    *(v33 + 12) = 2080;
    LOBYTE(v107[0]) = v27;
    v35 = FMIPLocationType.rawValue.getter();
    v37 = sub_24A68761C(v35, v36, v112);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_24A675000, v30, v31, "FMIPDataManager: updateDevicesLocations %ld type %s", v33, 0x16u);
    sub_24A6876E8(v34);
    v38 = v34;
    v18 = v86;
    MEMORY[0x24C21E1D0](v38, -1, -1);
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  else
  {
  }

  v39 = v95;
  v40 = *(a1 + 16);
  v41 = v87;
  if (!v40)
  {
    return MEMORY[0x277D84F90];
  }

  sub_24A68808C(v112);
  v89 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v42 = a1 + v89;
  v88 = *(v14 + 72);
  v43 = MEMORY[0x277D84F90];
  *&v44 = 136315650;
  v85 = v44;
  v45 = v100;
  do
  {
    v98 = v42;
    v99 = v40;
    sub_24A68FE04(v42, v45, type metadata accessor for FMIPDevice);
    v111 = 0uLL;
    v110 = 0;
    v109 = 0uLL;
    v108 = 0;
    v46 = *(v45 + 264);
    if (v46)
    {
      LOBYTE(v105) = 16;
      FMIPLocation.init(location:type:)(v46, &v105, v107);
      v47 = v107[1];
      v48 = v107[2];
      v49 = 256;
      if (!BYTE1(v107[0]))
      {
        v49 = 0;
      }

      v50 = v49 | LOBYTE(v107[0]);
      v51 = 0x10000;
      if (!BYTE2(v107[0]))
      {
        v51 = 0;
      }

      v52 = v50 | v51 | (BYTE3(v107[0]) << 24);
      swift_beginAccess();
      v53 = v111;
      v110 = v52;
      *&v111 = v47;
      *(&v111 + 1) = v48;
      v45 = v100;
    }

    v54 = *(v45 + 288);
    if (v54)
    {
      LOBYTE(v105) = 16;
      FMIPLocation.init(location:type:)(v54, &v105, v107);
      v55 = v107[1];
      v56 = v107[2];
      v57 = 256;
      if (!BYTE1(v107[0]))
      {
        v57 = 0;
      }

      v58 = v57 | LOBYTE(v107[0]);
      v59 = 0x10000;
      if (!BYTE2(v107[0]))
      {
        v59 = 0;
      }

      v60 = v58 | v59 | (BYTE3(v107[0]) << 24);
      swift_beginAccess();
      v61 = v109;
      v108 = v60;
      *&v109 = v55;
      *(&v109 + 1) = v56;
      v45 = v100;
    }

    sub_24A68FE04(v45, v39, type metadata accessor for FMIPDevice);
    v62 = sub_24A82CD94();
    v63 = sub_24A82D504();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v107[0] = v65;
      *v64 = v85;
      v66 = *(v39 + 64);
      v67 = *(v39 + 72);

      sub_24A69004C(v39, type metadata accessor for FMIPDevice);
      v68 = sub_24A68761C(v66, v67, v107);

      *(v64 + 4) = v68;
      v41 = v87;
      *(v64 + 12) = 1024;
      swift_beginAccess();
      *(v64 + 14) = v111 != 0;
      *(v64 + 18) = 1024;
      swift_beginAccess();
      *(v64 + 20) = v109 != 0;
      _os_log_impl(&dword_24A675000, v62, v63, "FMIPDataManager: updateDevicesLocations device %s location: %{BOOL}d, crowdsourcedLocation: %{BOOL}d", v64, 0x18u);
      sub_24A6876E8(v65);
      v69 = v65;
      v18 = v86;
      MEMORY[0x24C21E1D0](v69, -1, -1);
      v45 = v100;
      MEMORY[0x24C21E1D0](v64, -1, -1);
    }

    else
    {

      sub_24A69004C(v39, type metadata accessor for FMIPDevice);
    }

    v70 = v94;
    sub_24A68FE04(v45, v94, type metadata accessor for FMIPDevice);
    memcpy(v107, v112, sizeof(v107));
    swift_beginAccess();
    v105 = v108;
    v97 = v109;
    v106 = v109;
    swift_beginAccess();
    v103 = v110;
    v96 = v111;
    v104 = v111;
    v71 = type metadata accessor for FMIPItemGroup();
    memset(v102, 0, sizeof(v102));
    v72 = v90;
    (*(*(v71 - 8) + 56))(v90, 1, 1, v71);
    v101 = 7;
    v73 = type metadata accessor for FMIPDeviceConnectedState(0);
    v74 = v91;
    (*(*(v73 - 8) + 56))(v91, 1, 1, v73);
    v75 = type metadata accessor for FMIPDeviceLostModeMetadata();
    v76 = v93;
    (*(*(v75 - 8) + 56))(v93, 1, 1, v75);
    v77 = v97;
    v78 = v96;
    v79 = v77;
    FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v70, 0, v107, &v105, &v103, v102, 2, v72, v41, 2u, 2, &v101, v74, v76);
    sub_24A68FE04(v41, v18, type metadata accessor for FMIPDevice);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_24A6924E0(0, v43[2] + 1, 1, v43);
    }

    v39 = v95;
    v81 = v43[2];
    v80 = v43[3];
    if (v81 >= v80 >> 1)
    {
      v82 = sub_24A6924E0(v80 > 1, v81 + 1, 1, v43);
    }

    else
    {
      v82 = v43;
    }

    sub_24A69004C(v41, type metadata accessor for FMIPDevice);
    v45 = v100;
    sub_24A69004C(v100, type metadata accessor for FMIPDevice);
    v43 = v82;
    *(v82 + 16) = v81 + 1;
    v83 = v88;
    sub_24A68D628(v18, v82 + v89 + v81 * v88, type metadata accessor for FMIPDevice);

    v42 = v98 + v83;
    v40 = v99 - 1;
  }

  while (v99 != 1);
  return v43;
}

void sub_24A68FA20()
{
  sub_24A68FA94();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24A68FA94()
{
  if (!qword_27EF5D9C8)
  {
    sub_24A82CAA4();
    v0 = sub_24A82D634();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF5D9C8);
    }
  }
}

unint64_t FMIPLocationType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x756F7364776F7263;
      break;
    case 2:
      result = 5460039;
      break;
    case 3:
      result = 1768319319;
      break;
    case 4:
      result = 0x61636F4C65666173;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x656D69746C616572;
      break;
    case 7:
      result = 0x6F4C646572696170;
      break;
    case 8:
      result = 0x6E6E6F437473616CLL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xB:
      result = 0x656E774F7261656ELL;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0x786F725072656570;
      break;
    case 0xE:
      result = 0x6C627550666C6573;
      break;
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0x646568636163;
      break;
    case 0x11:
      result = 0x6552746E65746E69;
      break;
    case 0x12:
      result = 0xD000000000000014;
      break;
    case 0x13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A68FD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FF3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A68FFA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A68FFEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69004C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6900AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69010C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69016C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A6901E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  return result;
}

uint64_t FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t)@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14)
{
  v315 = a8;
  LODWORD(v298) = a7;
  v324 = a3;
  v325 = a6;
  v311 = a2;
  v303 = a9;
  v322 = a12;
  v17 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v287 = &v278 - v19;
  v20 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v302 = &v278 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v301 = &v278 - v24;
  v25 = type metadata accessor for FMIPItem();
  v280 = *(v25 - 8);
  v26 = *(v280 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v281 = &v278 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v309 = &v278 - v30;
  v31 = sub_24A6BBA94(&unk_27EF5E100, &unk_24A839DB0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v279 = &v278 - v33;
  v34 = sub_24A6BBA94(&qword_27EF5E0E0, &qword_24A836D90);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v314 = &v278 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v296 = &v278 - v38;
  v39 = type metadata accessor for FMIPItemGroup();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v295 = &v278 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v288 = &v278 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v308 = &v278 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v286 = &v278 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v299 = &v278 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v297 = &v278 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v284 = &v278 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v305 = &v278 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v278 - v60;
  MEMORY[0x28223BE20](v59);
  v63 = &v278 - v62;
  v64 = type metadata accessor for FMIPDevice();
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64);
  v307 = &v278 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v66);
  v306 = (&v278 - v69);
  MEMORY[0x28223BE20](v68);
  v71 = &v278 - v70;
  memcpy(v333, v324, 0x120uLL);
  v72 = *a4;
  v73 = a4[1];
  v312 = a4[2];
  v313 = v72;
  v74 = *a5;
  v75 = *(a5 + 8);
  v293 = *(a5 + 16);
  v294 = v74;
  v76 = *(v325 + 1);
  v319 = *v325;
  v320 = v73;
  v324 = v76;
  v77 = *(v325 + 2);
  v317 = v71;
  v318 = v77;
  LODWORD(v310) = *v322;
  v300 = *(v64 + 140);
  *(v300 + v71) = 1;
  sub_24A67E964(v315, v61, &unk_27EF5E0B0, &qword_24A8338B0);
  v78 = *(v40 + 48);
  v79 = v78(v61, 1, v39);
  v322 = (v40 + 48);
  v325 = v78;
  v316 = v64;
  if (v79 == 1)
  {
    sub_24A67E964(a1 + *(v64 + 128), v63, &unk_27EF5E0B0, &qword_24A8338B0);
    if (v78(v61, 1, v39) != 1)
    {
      sub_24A67F378(v61, &unk_27EF5E0B0, &qword_24A8338B0);
    }
  }

  else
  {
    sub_24A7E11A4(v61, v63, type metadata accessor for FMIPItemGroup);
    (*(v40 + 56))(v63, 0, 1, v39);
  }

  v323 = v39;
  v80 = v305;
  if (!v320)
  {
    v81 = *(a1 + 288);
    v313 = *(a1 + 280);
    v312 = *(a1 + 296);
    v320 = v81;
    v82 = v81;
  }

  v83 = v316;
  if (v75)
  {
    v84 = v75;

    if (qword_27EF5CBC8 != -1)
    {
      swift_once();
    }

    v85 = byte_27EF5DEF1;

    v86 = v323;
    if (v85 == 1)
    {

      v318 = 0;
      v319 = 0;
      v324 = 0;
    }

    else
    {
      v318 = v293;
      v319 = v294;
      v324 = v75;
    }

    v87 = v317;
    v88 = v325;
  }

  else
  {
    if (qword_27EF5CBC8 != -1)
    {
      swift_once();
    }

    v87 = v317;
    v86 = v323;
    v88 = v325;
    if (byte_27EF5DEF1 == 1)
    {

      v318 = 0;
      v319 = 0;
      v324 = 0;
    }

    else if (!v324)
    {
      v97 = *(a1 + 264);
      v319 = *(a1 + 256);
      v318 = *(a1 + 272);
      v324 = v97;
      v98 = v97;
    }
  }

  v89 = *(a1 + 64);
  v90 = *(a1 + 72);
  v91 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v91 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (v91)
  {
    v92 = *(a1 + 72);
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  sub_24A67E964(v63, v80, &unk_27EF5E0B0, &qword_24A8338B0);
  v93 = v88(v80, 1, v86);
  v321 = v63;
  if (v93 == 1)
  {
LABEL_28:
    if (v90)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v94 = v295;
  sub_24A7E11A4(v80, v295, type metadata accessor for FMIPItemGroup);
  v89 = *(v94 + 24);
  v95 = *(v94 + 32);

  sub_24A692298(v94, type metadata accessor for FMIPItemGroup);
  v96 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v96 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (v96)
  {

    v90 = v95;
    goto LABEL_28;
  }

LABEL_33:
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v100 = [objc_opt_self() bundleForClass_];
  v89 = sub_24A82C6F4();
  v90 = v101;

LABEL_34:
  v305 = v90;
  LODWORD(v295) = a10;
  v102 = *(a1 + 8);
  *v87 = *a1;
  *(v87 + 8) = v102;
  v294 = v102;
  *(v87 + 16) = *(a1 + 16);
  v292 = *(a1 + 24);
  *(v87 + 24) = v292;
  v103 = *(a1 + 48);
  v104 = *(a1 + 56);
  v291 = *(a1 + 40);
  *(v87 + 40) = v291;
  *(v87 + 48) = v103;
  v293 = v104;
  *(v87 + 56) = v104;
  *(v87 + 64) = v89;
  v285 = v89;
  *(v87 + 72) = v90;
  *(v87 + 80) = *(a1 + 80);
  *(v87 + 88) = *(a1 + 88);
  v290 = *(a1 + 96);
  *(v87 + 96) = v290;
  v105 = *(a1 + 120);
  v289 = *(a1 + 112);
  *(v87 + 112) = v289;
  *(v87 + 120) = v105;
  v106 = *(a1 + 176);
  v107 = *(a1 + 136);
  *(v87 + 128) = *(a1 + 128);
  *(v87 + 136) = v107;
  v108 = *(a1 + 152);
  *(v87 + 144) = *(a1 + 144);
  *(v87 + 152) = v108;
  v109 = *(a1 + 160);
  *(v87 + 168) = *(a1 + 168);
  *(v87 + 176) = v106;
  *(v87 + 160) = v109;
  *(v87 + 184) = *(a1 + 184);
  *(v87 + 192) = *(a1 + 192);
  *(v87 + 200) = *(a1 + 200);
  v110 = v314;
  sub_24A67E964(a1 + v83[39], v314, &qword_27EF5E0E0, &qword_24A836D90);
  v111 = v83;
  v112 = sub_24A82CA34();
  v113 = a1;
  v114 = *(v112 - 8);
  v115 = *(v114 + 48);
  v282 = v114 + 48;
  v283 = v115;
  v116 = v115(v110, 1, v112);
  v304 = v113;
  if (v116 != 1)
  {
    v123 = v296;
    (*(v114 + 32))(v296, v110, v112);
    (*(v114 + 56))(v123, 0, 1, v112);

    v124 = v123;

    v120 = v309;
    v121 = v317;
    v122 = v311;
    v125 = v295;
    goto LABEL_44;
  }

  v278 = v112;
  v117 = v284;
  sub_24A67E964(v113 + v111[32], v284, &unk_27EF5E0B0, &qword_24A8338B0);
  v118 = v323;
  if (v325(v117, 1, v323) == 1)
  {

    sub_24A67F378(v117, &unk_27EF5E0B0, &qword_24A8338B0);
    v119 = 1;
    v120 = v309;
    v121 = v317;
    v122 = v311;
LABEL_40:
    v124 = v296;
    v125 = v295;
    v130 = v278;
    goto LABEL_42;
  }

  v126 = v117 + *(v118 + 48);
  v127 = v279;
  sub_24A67E964(v126, v279, &unk_27EF5E100, &unk_24A839DB0);

  sub_24A692298(v117, type metadata accessor for FMIPItemGroup);
  v128 = type metadata accessor for FMIPItemLostModeMetadata();
  v129 = (*(*(v128 - 8) + 48))(v127, 1, v128);
  v122 = v311;
  if (v129 == 1)
  {
    sub_24A67F378(v127, &unk_27EF5E100, &unk_24A839DB0);
    v119 = 1;
    v120 = v309;
    v121 = v317;
    goto LABEL_40;
  }

  v131 = v127 + *(v128 + 24);
  v124 = v296;
  v130 = v278;
  (*(v114 + 16))(v296, v131, v278);
  sub_24A692298(v127, type metadata accessor for FMIPItemLostModeMetadata);
  v119 = 0;
  v120 = v309;
  v121 = v317;
  v125 = v295;
LABEL_42:
  (*(v114 + 56))(v124, v119, 1, v130);
  v132 = v314;
  if (v283(v314, 1, v130) != 1)
  {
    sub_24A67F378(v132, &qword_27EF5E0E0, &qword_24A836D90);
  }

LABEL_44:
  v311 = a14;
  v133 = v316;
  sub_24A68C87C(v124, v121 + v316[39]);
  v134 = v304;
  sub_24A67E964(v304 + v133[40], v121 + v133[40], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(v134 + v133[41], v121 + v133[41], &qword_27EF5E0E0, &qword_24A836D90);
  sub_24A67E964(v134 + v133[42], v121 + v133[42], &qword_27EF5E0E0, &qword_24A836D90);
  *(v121 + v133[43]) = *(v134 + v133[43]);
  *(v121 + v133[44]) = *(v134 + v133[44]);
  *(v121 + v133[45]) = *(v134 + v133[45]);
  *(v121 + v133[38]) = *(v134 + v133[38]);
  v135 = v134[27];
  v136 = v325;
  if (v125 != 2)
  {
    if (v125)
    {
      v135 |= 0x8000uLL;
    }

    else
    {
      v135 &= ~0x8000uLL;
    }
  }

  if (v298 != 2)
  {
    if (v298)
    {
      v135 |= 0x800uLL;
    }

    else
    {
      v135 &= ~0x800uLL;
    }
  }

  sub_24A67E964(v134 + v133[29], v120, &unk_27EF5E0A0, &unk_24A8367D0);
  v137 = type metadata accessor for FMIPDeviceLostModeMetadata();
  if ((*(*(v137 - 8) + 48))(v311, 1, v137) != 1)
  {
    sub_24A67F378(v120, &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67E964(v311, v120, &unk_27EF5E0A0, &unk_24A8367D0);
  }

  sub_24A67E964(v120, v121 + v133[29], &unk_27EF5E0A0, &unk_24A8367D0);
  v138 = v297;
  sub_24A67E964(v321, v297, &unk_27EF5E0B0, &qword_24A8338B0);
  if (v136(v138, 1, v323) == 1)
  {
    sub_24A67F378(v138, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {
    v139 = v138;
    v140 = *(v138 + 64);
    sub_24A692298(v139, type metadata accessor for FMIPItemGroup);
    v135 |= (v140 >> 2) & 0x40;
  }

  v141 = v320;
  v121[27] = v135;
  v142 = v134[30];
  v143 = v142;
  if (a11 != 2)
  {
    if (a11)
    {
      v143 = v142 | 0x10000000;
    }

    else
    {
      v143 = v142 & 0xFFFFFFFFEFFFFFFFLL;
    }
  }

  v144 = v134[29];
  v121[29] = v144;
  v121[30] = v143;
  v296 = v142;
  v297 = v144;
  if (!v122)
  {
    v122 = v134[31];
  }

  v145 = v319;
  v121[31] = v122;
  v121[32] = v145;
  v146 = v318;
  v121[33] = v324;
  v121[34] = v146;
  memcpy(v332, v333, sizeof(v332));
  v147 = sub_24A6921A8(v332);
  v298 = v135;
  if (v147 == 1)
  {
    memcpy(v330, v134 + 38, sizeof(v330));
    sub_24A67E964(v330, v331, &unk_27EF5E0D0, &qword_24A8319E0);
    v148 = v330;
  }

  else
  {
    v148 = v333;
  }

  memcpy(v331, v148, sizeof(v331));
  v149 = v299;
  v314 = a13;
  memcpy(v121 + 38, v331, 0x120uLL);
  sub_24A67E964(v134 + v133[28], v121 + v133[28], &qword_27EF5D5F8, &qword_24A83DE60);
  sub_24A67E964(v134 + v133[30], v121 + v133[30], &qword_27EF5DE50, &qword_24A83DE40);
  sub_24A67E964(v134 + v133[31], v121 + v133[31], &qword_27EF5DE48, &unk_24A8367C0);
  v150 = v312;
  v121[35] = v313;
  v121[36] = v141;
  v121[37] = v150;
  v121[28] = v134[28];
  v151 = v141;
  v152 = v321;
  sub_24A67E964(v321, v121 + v133[32], &unk_27EF5E0B0, &qword_24A8338B0);
  sub_24A67E964(v152, v149, &unk_27EF5E0B0, &qword_24A8338B0);
  if (v325(v149, 1, v323) == 1)
  {
    v153 = v151;

    v154 = v324;
    sub_24A67F378(v149, &unk_27EF5E0B0, &qword_24A8338B0);
LABEL_75:
    v159 = MEMORY[0x277D84F90];
    goto LABEL_76;
  }

  v155 = *(v149 + 40);
  v156 = v151;

  v157 = v324;
  sub_24A692298(v149, type metadata accessor for FMIPItemGroup);
  v158 = *(v155 + 2);
  if (!v158)
  {

    goto LABEL_75;
  }

  v330[0] = MEMORY[0x277D84F90];
  sub_24A6FC900(0, v158, 0);
  v159 = v330[0];
  v160 = v281;
  v161 = *(v280 + 80);
  v299 = v155;
  v162 = &v155[(v161 + 32) & ~v161];
  v163 = *(v280 + 72);
  do
  {
    sub_24A68FED4(v162, v160, type metadata accessor for FMIPItem);
    v164 = *(v160 + 352);
    v165 = *(v160 + 360);

    sub_24A692298(v160, type metadata accessor for FMIPItem);
    v330[0] = v159;
    v167 = *(v159 + 16);
    v166 = *(v159 + 24);
    if (v167 >= v166 >> 1)
    {
      sub_24A6FC900((v166 > 1), v167 + 1, 1);
      v160 = v281;
      v159 = v330[0];
    }

    *(v159 + 16) = v167 + 1;
    v168 = v159 + 16 * v167;
    *(v168 + 32) = v164;
    *(v168 + 40) = v165;
    v162 += v163;
    --v158;
  }

  while (v158);

  v134 = v304;
  v133 = v316;
  v121 = v317;
LABEL_76:
  v169 = v133[34];
  v170 = v310;
  v171 = v301;
  if (v310 == 7)
  {
    v170 = *(v134 + v169);
  }

  LODWORD(v310) = v170;
  *(v121 + v169) = v170;
  sub_24A67E964(v314, v171, &qword_27EF5DE20, &qword_24A8371A0);
  v172 = type metadata accessor for FMIPDeviceConnectedState(0);
  v173 = *(*(v172 - 8) + 48);
  if (v173(v171, 1, v172) == 1)
  {
    sub_24A67F378(v171, &qword_27EF5DE20, &qword_24A8371A0);
    v174 = v133[36];
    v175 = *(v134 + v174);
  }

  else
  {
    v175 = *(v171 + *(v172 + 20));
    sub_24A692298(v171, type metadata accessor for FMIPDeviceConnectedState);
    v174 = v133[36];
  }

  LODWORD(v301) = v175;
  *(v121 + v174) = v175;
  v176 = v302;
  sub_24A67E964(v314, v302, &qword_27EF5DE20, &qword_24A8371A0);
  if (v173(v176, 1, v172) == 1)
  {
    sub_24A67F378(v176, &qword_27EF5DE20, &qword_24A8371A0);
    v177 = v323;
LABEL_85:
    v182 = v316;
    v183 = v325;
    v184 = v316[37];
    v185 = *(v134 + v184);
    v186 = *(v134 + v184 + 8);

    goto LABEL_87;
  }

  v178 = v287;
  sub_24A67E964(v176, v287, &qword_27EF5D020, &qword_24A830E40);
  sub_24A692298(v176, type metadata accessor for FMIPDeviceConnectedState);
  v179 = sub_24A82CAA4();
  v180 = *(v179 - 8);
  v181 = (*(v180 + 48))(v178, 1, v179);
  v177 = v323;
  if (v181 == 1)
  {
    sub_24A67F378(v178, &qword_27EF5D020, &qword_24A830E40);
    goto LABEL_85;
  }

  v187 = sub_24A82CA54();
  v186 = v188;
  (*(v180 + 8))(v178, v179);
  v185 = v187;
  v182 = v316;
  v184 = v316[37];
  v183 = v325;
LABEL_87:
  v189 = (v121 + v184);
  v302 = v185;
  *v189 = v185;
  v189[1] = v186;
  v190 = v183(v315, 1, v177);
  v316 = v186;
  if (v190 == 1)
  {
    v191 = v286;
    sub_24A67E964(v134 + v182[32], v286, &unk_27EF5E0B0, &qword_24A8338B0);
    v192 = v325(v191, 1, v177);

    sub_24A67F378(v191, &unk_27EF5E0B0, &qword_24A8338B0);
    v193 = (v296 >> 26) & 1;
    if (v310 == 5)
    {
      LODWORD(v193) = 1;
    }

    if (v192 == 1)
    {
      v194 = v193;
    }

    else
    {
      v194 = 1;
    }
  }

  else
  {

    v194 = 1;
  }

  v195 = v320;
  v196 = v321;
  v197 = v182[33];
  LODWORD(v297) = v194;
  *(v121 + v197) = v194;
  v327 = v319;
  v328 = v324;
  v329 = v318;
  v326[0] = v313;
  v326[1] = v195;
  v326[2] = v312;
  v198 = (v298 >> 5) & 1;
  v310 = v324;
  sub_24A7DC368(&v327, v326, v198, v196, v330);

  v199 = v330[1];
  v200 = *(v134 + v182[35]);
  v298 = v330[2];
  v299 = v330[0];
  *(v300 + v121) = v200;
  v201 = v195;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v202 = sub_24A82CDC4();
  sub_24A6797D0(v202, qword_281518F88);
  sub_24A68FED4(v134, v306, type metadata accessor for FMIPDevice);
  sub_24A68FED4(v134, v307, type metadata accessor for FMIPDevice);
  sub_24A67E964(v196, v308, &unk_27EF5E0B0, &qword_24A8338B0);
  v300 = v199;
  v203 = v199;

  v204 = v305;

  v205 = v310;
  v206 = v201;

  v207 = sub_24A82CD94();
  v208 = sub_24A82D504();

  if (os_log_type_enabled(v207, v208))
  {
    v294 = v203;
    LODWORD(v296) = v208;
    v310 = v207;
    v209 = swift_slowAlloc();
    v295 = swift_slowAlloc();
    v327 = v295;
    *v209 = 136317698;
    v210 = v306;
    v211 = *v306;
    v212 = v306[1];

    v213 = sub_24A68D464(10);
    v215 = v214;
    v217 = v216;
    v219 = v218;

    v220 = v217;
    v221 = v307;
    v222 = MEMORY[0x24C21C960](v213, v215, v220, v219);
    v224 = v223;

    sub_24A692298(v210, type metadata accessor for FMIPDevice);
    v225 = sub_24A68761C(v222, v224, &v327);

    *(v209 + 4) = v225;
    *(v209 + 12) = 2080;
    v226 = sub_24A68761C(v285, v204, &v327);

    *(v209 + 14) = v226;
    *(v209 + 22) = 2080;
    if (*(v221 + 24))
    {
      v227 = *(v221 + 16);
      v228 = *(v221 + 24);

      v229 = sub_24A68D464(10);
      v231 = v230;
      v232 = v221;
      v234 = v233;
      v236 = v235;
    }

    else
    {
      v229 = sub_24A82D654();
      v231 = v238;
      v232 = v221;
      v234 = v239;
      v236 = v240;
    }

    v241 = v288;
    v242 = MEMORY[0x24C21C960](v229, v231, v234, v236);
    v244 = v243;

    sub_24A692298(v232, type metadata accessor for FMIPDevice);
    v245 = sub_24A68761C(v242, v244, &v327);

    *(v209 + 24) = v245;
    *(v209 + 32) = 1024;
    *(v209 + 34) = v297;
    *(v209 + 38) = 2080;
    v330[0] = v319;
    v330[1] = v324;
    v330[2] = v318;
    sub_24A6BBA94(&qword_27EF5EA68, &qword_24A839E10);
    v246 = sub_24A82D024();
    v248 = sub_24A68761C(v246, v247, &v327);

    *(v209 + 40) = v248;
    *(v209 + 48) = 2080;
    v330[0] = v313;
    v330[1] = v320;
    v330[2] = v312;
    v249 = sub_24A82D024();
    v251 = sub_24A68761C(v249, v250, &v327);

    *(v209 + 50) = v251;
    *(v209 + 58) = 2080;
    v330[0] = v299;
    v330[1] = v300;
    v330[2] = v298;
    v252 = v294;
    v253 = sub_24A82D024();
    v255 = sub_24A68761C(v253, v254, &v327);

    *(v209 + 60) = v255;
    *(v209 + 68) = 2080;
    v256 = v308;
    sub_24A67E964(v308, v241, &unk_27EF5E0B0, &qword_24A8338B0);
    v257 = v241;
    v258 = v325(v241, 1, v323);
    v134 = v304;
    v324 = v252;
    if (v258 == 1)
    {
      sub_24A67F378(v257, &unk_27EF5E0B0, &qword_24A8338B0);
      v259 = 0;
      v260 = 0xE000000000000000;
    }

    else
    {
      v259 = *(v257 + 8);
      v260 = *(v257 + 16);

      sub_24A692298(v257, type metadata accessor for FMIPItemGroup);
    }

    v261 = v309;
    sub_24A67F378(v256, &unk_27EF5E0B0, &qword_24A8338B0);
    v262 = sub_24A68761C(v259, v260, &v327);

    *(v209 + 70) = v262;
    *(v209 + 78) = 2080;
    v263 = MEMORY[0x24C21CB60](v159, MEMORY[0x277D837D0]);
    v265 = v264;

    v266 = sub_24A68761C(v263, v265, &v327);

    *(v209 + 80) = v266;
    *(v209 + 88) = 2080;
    if (v301 <= 1)
    {
      v237 = v303;
      v267 = v321;
      v268 = v316;
      v269 = v295;
      if (v301)
      {
        v270 = 0xE900000000000064;
        v271 = 0x657463656E6E6F63;
      }

      else
      {
        v270 = 0xEC00000064657463;
        v271 = 0x656E6E6F63736964;
      }
    }

    else
    {
      v237 = v303;
      v267 = v321;
      v268 = v316;
      v269 = v295;
      if (v301 == 2)
      {
        v271 = 0x6465686361747461;
        v270 = 0xE800000000000000;
      }

      else if (v301 == 3)
      {
        v270 = 0xE800000000000000;
        v271 = 0x6465686361746564;
      }

      else
      {
        v270 = 0xEE0079627261654ELL;
        v271 = 0x6465746365746564;
      }
    }

    v272 = sub_24A68761C(v271, v270, &v327);

    *(v209 + 90) = v272;
    *(v209 + 98) = 2080;
    if (v268)
    {
      v273 = v302;
    }

    else
    {
      v273 = 0;
    }

    if (v268)
    {
      v274 = v268;
    }

    else
    {
      v274 = 0xE000000000000000;
    }

    v275 = sub_24A68761C(v273, v274, &v327);

    *(v209 + 100) = v275;
    v276 = v310;
    _os_log_impl(&dword_24A675000, v310, v296, "FMIPDevice:\n    -- id: %s,\n    -- name: %s,\n    -- baId: %s\n    -- isAccessory: %{BOOL}d\n    -- onlineLocation: %s\n    -- offlineLocation: %s\n    -- bestLocation: %s\n    -- itemGroup: %s\n    -- itemGroupItemsId: %s\n    -- deviceConnectedType: %s\n    -- deviceAssociatedWithBeacon: %s", v209, 0x6Cu);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v269, -1, -1);
    MEMORY[0x24C21E1D0](v209, -1, -1);

    sub_24A67F378(v314, &qword_27EF5DE20, &qword_24A8371A0);
    sub_24A67F378(v261, &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67F378(v267, &unk_27EF5E0B0, &qword_24A8338B0);
  }

  else
  {

    sub_24A67F378(v314, &qword_27EF5DE20, &qword_24A8371A0);
    sub_24A67F378(v308, &unk_27EF5E0B0, &qword_24A8338B0);
    sub_24A692298(v307, type metadata accessor for FMIPDevice);
    sub_24A692298(v306, type metadata accessor for FMIPDevice);
    sub_24A67F378(v309, &unk_27EF5E0A0, &unk_24A8367D0);
    sub_24A67F378(v321, &unk_27EF5E0B0, &qword_24A8338B0);
    v237 = v303;
  }

  sub_24A67F378(v311, &unk_27EF5E0A0, &unk_24A8367D0);
  sub_24A67F378(v315, &unk_27EF5E0B0, &qword_24A8338B0);
  sub_24A7E11A4(v317, v237, type metadata accessor for FMIPDevice);
  return sub_24A692298(v134, type metadata accessor for FMIPDevice);
}

uint64_t sub_24A6921A8(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24A6921D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24A692298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_24A692304(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_24A6BBA94(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_24A692508(char *result, int64_t a2, char a3, char *a4)
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
    sub_24A6BBA94(&qword_27EF5D5A8, &unk_24A8334E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_24A69262C(void *a1, __int128 *a2)
{
  v86 = a2;
  v3 = sub_24A82CC54();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82CCD4();
  v85 = *(v7 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v7);
  v87 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A6BBA94(&qword_27EF5E238, &qword_24A837830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v76 - v12;
  v90 = sub_24A6BBA94(&qword_27EF5E240, &qword_24A837838);
  v88 = *(v90 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v15 = &v76 - v14;
  v16 = sub_24A82C8B4();
  v93 = *(v16 - 8);
  v94 = v16;
  v17 = *(v93 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v82 = v6;
  v91 = v7;
  v92 = v15;
  v20 = sub_24A82CDC4();
  v95 = sub_24A6797D0(v20, qword_281518F88);
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24A675000, v21, v22, "FMDiskIO: read from disk", v23, 2u);
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  v24 = [objc_opt_self() defaultManager];
  v26 = a1[3];
  v25 = a1[4];
  v28 = a1[5];
  v27 = a1[6];
  *&v102 = v26;
  *(&v102 + 1) = v25;

  MEMORY[0x24C21C9E0](v28, v27);
  v29 = sub_24A82CF94();

  v30 = [v24 fileExistsAtPath_];

  if (v30)
  {
    v81 = a1;
    *&v102 = v26;
    *(&v102 + 1) = v25;

    MEMORY[0x24C21C9E0](v28, v27);
    sub_24A82C824();

    v31 = sub_24A82C8C4();
    v39 = v28;
    v40 = v26;
    v77 = v25;
    v78 = v27;
    v41 = v31;
    v43 = v42;
    (*(v93 + 8))(v19, v94);

    sub_24A681458(v41, v43);
    v44 = sub_24A82CD94();
    v45 = sub_24A82D504();

    sub_24A67E0F0(v41, v43);
    v46 = os_log_type_enabled(v44, v45);
    v76 = v40;
    v79 = v41;
    v80 = v43;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v96 = v94;
      *v47 = 136315394;
      *&v102 = v40;
      *(&v102 + 1) = v77;

      LODWORD(v93) = v45;
      MEMORY[0x24C21C9E0](v39, v78);
      v48 = sub_24A68761C(v102, *(&v102 + 1), &v96);

      *(v47 + 4) = v48;
      *(v47 + 12) = 2080;
      v49 = sub_24A82C8D4();
      v51 = sub_24A68761C(v49, v50, &v96);

      *(v47 + 14) = v51;
      _os_log_impl(&dword_24A675000, v44, v93, "FMDiskIO: file: %s data: %s", v47, 0x16u);
      v52 = v94;
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v52, -1, -1);
      MEMORY[0x24C21E1D0](v47, -1, -1);
    }

    v53 = v91;
    v54 = sub_24A82C724();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    sub_24A82C714();
    v57 = v89;
    sub_24A67E964(v81 + *(*v81 + 128), v89, &qword_27EF5E238, &qword_24A837830);
    v58 = v90;
    if ((*(v88 + 48))(v57, 1, v90) == 1)
    {
      sub_24A67F378(v57, &qword_27EF5E238, &qword_24A837830);
      sub_24A693350();
      v60 = v79;
      v59 = v80;
      sub_24A82C704();
      sub_24A67E0F0(v60, v59);

      v61 = v86;
      v62 = v86[3];
      v98 = v86[2];
      v99 = v62;
      v100 = v86[4];
      v101 = *(v86 + 10);
      v63 = v86[1];
      v96 = *v86;
      v97 = v63;
      v64 = v105;
      v86[2] = v104;
      v61[3] = v64;
      v61[4] = v106;
      *(v61 + 10) = v107;
      v65 = v103;
      *v61 = v102;
      v61[1] = v65;
    }

    else
    {
      sub_24A67E8FC(v57, v92, &qword_27EF5E240, &qword_24A837838);
      sub_24A67F008(&unk_27EF5E280, MEMORY[0x277D08F20]);
      sub_24A82C704();
      v66 = *(v58 + 44);
      v67 = v82;
      sub_24A82CC64();
      v68 = sub_24A82CCC4();
      v70 = v69;
      (*(v83 + 8))(v67, v84);
      sub_24A693350();
      sub_24A82C704();

      sub_24A67E0F0(v68, v70);
      sub_24A67E0F0(v79, v80);
      (*(v85 + 8))(v87, v53);
      sub_24A67F378(v92, &qword_27EF5E240, &qword_24A837838);
      v71 = v86;
      v72 = v86[3];
      v98 = v86[2];
      v99 = v72;
      v100 = v86[4];
      v101 = *(v86 + 10);
      v73 = v86[1];
      v96 = *v86;
      v97 = v73;
      v74 = v103;
      *v86 = v102;
      v71[1] = v74;
      v75 = v105;
      v71[2] = v104;
      v71[3] = v75;
      v71[4] = v106;
      *(v71 + 10) = v107;
    }

    sub_24A67F378(&v96, &qword_27EF5DEF8, &unk_24A836D40);
  }

  else
  {
    v32 = v26;
    v33 = v25;

    v95 = sub_24A82CD94();
    v34 = sub_24A82D4E4();

    if (os_log_type_enabled(v95, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v96 = v36;
      *v35 = 136315138;
      *&v102 = v32;
      *(&v102 + 1) = v33;

      MEMORY[0x24C21C9E0](v28, v27);
      v37 = sub_24A68761C(v102, *(&v102 + 1), &v96);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_24A675000, v95, v34, "FMDiskIO: Disk archive does not exist at: %s", v35, 0xCu);
      sub_24A6876E8(v36);
      MEMORY[0x24C21E1D0](v36, -1, -1);
      MEMORY[0x24C21E1D0](v35, -1, -1);
    }

    else
    {
      v38 = v95;
    }
  }
}

unint64_t sub_24A693350()
{
  result = qword_281514608;
  if (!qword_281514608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514608);
  }

  return result;
}

uint64_t FMIPPerson.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A6BBA94(&qword_27EF5F5E8, &qword_24A83FEB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = a1[4];
  sub_24A67DF6C(a1, a1[3]);
  sub_24A693B6C();
  sub_24A82DD64();
  if (!v2)
  {
    LOBYTE(v67[0]) = 4;
    v11 = sub_24A82DA44();
    v13 = v12;
    v78 = v11;
    LOBYTE(v67[0]) = 5;
    v63 = sub_24A82DA44();
    v65 = v14;
    LOBYTE(v67[0]) = 6;
    v64 = sub_24A82DA44();
    v66 = v15;
    LOBYTE(v67[0]) = 1;
    sub_24A82DA44();
    v16 = sub_24A82D9C4();

    v62 = v16 != 0;
    LOBYTE(v67[0]) = 3;
    v61 = sub_24A82DA54();
    LOBYTE(v67[0]) = 2;
    LOBYTE(v16) = sub_24A82DA54();
    LOBYTE(v67[0]) = 0;
    v58 = sub_24A82DA74();
    LOBYTE(v67[0]) = 7;
    v55 = sub_24A82DA44();
    v56 = v17;
    LOBYTE(v67[0]) = 8;
    v18 = sub_24A82DA44();
    v20 = v78;
    v21 = v58 == 1;
    v22 = v16 & 1;
    v23 = v61 & 1;
    v24 = v66;
    v59 = v19;
    v60 = v18;
    v57 = v22;
    LODWORD(v58) = v58 == 1;
    v61 &= 1u;
    if (v66)
    {
      v25 = v64;
    }

    else
    {
      v26 = [objc_opt_self() sharedInstance];
      v27 = [v26 ownerAccount];

      v28 = v27;
      v29 = [v27 username];

      if (v29)
      {
        v25 = sub_24A82CFC4();
        v66 = v30;

        v24 = v66;
      }

      else
      {
        v24 = 0xE700000000000000;
        v25 = 0x6E776F6E6B6E75;
      }

      v20 = v78;
      v19 = v59;
      v18 = v60;
      LOBYTE(v22) = v57;
      v21 = v58;
      v23 = v61;
    }

    v31 = v56;
    v32 = 0x72656E776FLL;
    if (v56)
    {
      v32 = v55;
    }

    v67[0] = v20;
    v67[1] = v13;
    v53 = v13;
    if (!v56)
    {
      v31 = 0xE500000000000000;
    }

    v67[2] = v63;
    v67[3] = v65;
    v68 = v22;
    v69 = v62;
    v70 = v21;
    v71 = v23;
    v64 = v25;
    v72 = v25;
    v73 = v24;
    v66 = v24;
    v55 = v32;
    v74 = v32;
    v75 = v31;
    v54 = v31;
    v76 = v18;
    v77 = v19;
    v52 = FMIPPerson.debugDescription.getter();
    v34 = v33;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v35 = sub_24A82CDC4();
    sub_24A6797D0(v35, qword_281518F88);

    v36 = sub_24A82CD94();
    v37 = sub_24A82D4C4();

    v51 = v37;
    v56 = v36;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v67[0] = v50;
      *v38 = 136315138;
      v39 = sub_24A68761C(v52, v34, v67);

      v40 = v38;
      *(v38 + 4) = v39;
      v41 = v56;
      v42 = v40;
      _os_log_impl(&dword_24A675000, v56, v51, "FMIPPerson: Initialized: %s", v40, 0xCu);
      v43 = v50;
      sub_24A6876E8(v50);
      MEMORY[0x24C21E1D0](v43, -1, -1);
      MEMORY[0x24C21E1D0](v42, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v9, v5);
    v44 = v53;
    *a2 = v78;
    *(a2 + 8) = v44;
    v45 = v65;
    *(a2 + 16) = v63;
    *(a2 + 24) = v45;
    *(a2 + 32) = v57;
    *(a2 + 33) = v62;
    *(a2 + 34) = v58;
    *(a2 + 35) = v61;
    v46 = v66;
    *(a2 + 40) = v64;
    *(a2 + 48) = v46;
    v47 = v54;
    *(a2 + 56) = v55;
    *(a2 + 64) = v47;
    v48 = v59;
    *(a2 + 72) = v60;
    *(a2 + 80) = v48;
  }

  return sub_24A6876E8(a1);
}

unint64_t sub_24A693AC0()
{
  result = qword_281514610;
  if (!qword_281514610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514610);
  }

  return result;
}

unint64_t sub_24A693B18()
{
  result = qword_281514618;
  if (!qword_281514618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514618);
  }

  return result;
}

unint64_t sub_24A693B6C()
{
  result = qword_281514620;
  if (!qword_281514620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281514620);
  }

  return result;
}

unint64_t sub_24A693BDC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65626D654D736168;
    if (a1 != 2)
    {
      v5 = 0x4153487369;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6449656C707061;
    v2 = 0x696669746E656469;
    if (a1 != 7)
    {
      v2 = 0x6D754E656E6F6870;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D614E7473726966;
    if (a1 != 4)
    {
      v3 = 0x656D614E7473616CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t getEnumTagSinglePayload for FMIPDeviceImageVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t FMIPPerson.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[7];
  v7 = v0[8];
  sub_24A82D854();

  MEMORY[0x24C21C9E0](v6, v7);
  MEMORY[0x24C21C9E0](0x3A656D616E20, 0xE600000000000000);

  MEMORY[0x24C21C9E0](32, 0xE100000000000000);

  MEMORY[0x24C21C9E0](v3, v4);

  MEMORY[0x24C21C9E0](v2, v1);

  MEMORY[0x24C21C9E0](0xD000000000000012, 0x800000024A84A8D0);
  if (v5)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v5)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C21C9E0](v8, v9);

  MEMORY[0x24C21C9E0](62, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t sub_24A693F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24A693F60()
{
  v1 = v0;
  v8 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A694E80;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC7700;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

void sub_24A6940D0(void *a1, uint64_t *a2)
{
  v74 = a2;
  v72 = sub_24A82CC54();
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24A82CCD4();
  v73 = *(v80 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v80);
  v7 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A6BBA94(&qword_27EF5E250, &qword_24A837840);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = v67 - v10;
  v77 = sub_24A6BBA94(&qword_27EF5E258, &qword_24A837848);
  v75 = *(v77 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v78 = v67 - v12;
  v81 = sub_24A82C8B4();
  v13 = *(v81 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v81);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v79 = v7;
  v17 = sub_24A82CDC4();
  v82 = sub_24A6797D0(v17, qword_281518F88);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A675000, v18, v19, "FMDiskIO: read from disk", v20, 2u);
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  v21 = [objc_opt_self() defaultManager];
  v23 = a1[3];
  v22 = a1[4];
  v25 = a1[5];
  v24 = a1[6];
  v84 = v23;
  v85 = v22;

  MEMORY[0x24C21C9E0](v25, v24);
  v26 = sub_24A82CF94();

  v27 = [v21 fileExistsAtPath_];

  if (v27)
  {
    v69 = a1;
    v84 = v23;
    v85 = v22;

    MEMORY[0x24C21C9E0](v25, v24);
    sub_24A82C824();

    v35 = sub_24A82C8C4();
    v37 = v36;
    v38 = v24;
    (*(v13 + 8))(v16, v81);

    sub_24A681458(v35, v37);
    v39 = sub_24A82CD94();
    v40 = sub_24A82D504();

    sub_24A67E0F0(v35, v37);
    LODWORD(v81) = v40;
    v41 = os_log_type_enabled(v39, v40);
    v67[3] = v38;
    v67[2] = v23;
    v67[1] = v22;
    v68 = v37;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v67[0] = swift_slowAlloc();
      v83 = v67[0];
      v84 = v23;
      *v42 = 136315394;
      v85 = v22;

      v43 = v35;
      MEMORY[0x24C21C9E0](v25, v38);
      v44 = sub_24A68761C(v84, v85, &v83);

      *(v42 + 4) = v44;
      *(v42 + 12) = 2080;
      v45 = sub_24A82C8D4();
      v47 = sub_24A68761C(v45, v46, &v83);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_24A675000, v39, v81, "FMDiskIO: file: %s data: %s", v42, 0x16u);
      v48 = v67[0];
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v48, -1, -1);
      MEMORY[0x24C21E1D0](v42, -1, -1);

      v49 = v80;
      v50 = v43;
    }

    else
    {

      v49 = v80;
      v50 = v35;
    }

    v51 = v77;
    v52 = sub_24A82C724();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    sub_24A82C714();
    v55 = v76;
    sub_24A67E964(v69 + *(*v69 + 128), v76, &qword_27EF5E250, &qword_24A837840);
    v56 = (*(v75 + 48))(v55, 1, v51);
    v58 = v78;
    v57 = v79;
    if (v56 == 1)
    {
      sub_24A67F378(v55, &qword_27EF5E250, &qword_24A837840);
      sub_24A6BBA94(&qword_27EF5E260, &qword_24A837850);
      sub_24A76F57C(&unk_27EF5E270, sub_24A693350);
      v59 = v68;
      sub_24A82C704();
      sub_24A67E0F0(v50, v59);
    }

    else
    {
      sub_24A67E8FC(v55, v78, &qword_27EF5E258, &qword_24A837848);
      sub_24A67F008(&unk_27EF5E280, MEMORY[0x277D08F20]);
      sub_24A82C704();
      v81 = v50;
      v61 = *(v51 + 44);
      v62 = v70;
      sub_24A82CC64();
      v63 = sub_24A82CCC4();
      v65 = v64;
      (*(v71 + 8))(v62, v72);
      sub_24A6BBA94(&qword_27EF5E260, &qword_24A837850);
      sub_24A76F57C(&unk_27EF5E270, sub_24A693350);
      sub_24A82C704();
      v66 = (v73 + 8);

      sub_24A67E0F0(v63, v65);
      sub_24A67E0F0(v81, v68);
      (*v66)(v57, v49);
      sub_24A67F378(v58, &qword_27EF5E258, &qword_24A837848);
    }

    v60 = *v74;
    *v74 = v84;
  }

  else
  {
    v28 = v22;
    v29 = v24;

    v82 = sub_24A82CD94();
    v30 = sub_24A82D4E4();

    if (os_log_type_enabled(v82, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v83 = v32;
      v84 = v23;
      *v31 = 136315138;
      v85 = v28;

      MEMORY[0x24C21C9E0](v25, v29);
      v33 = sub_24A68761C(v84, v85, &v83);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_24A675000, v82, v30, "FMDiskIO: Disk archive does not exist at: %s", v31, 0xCu);
      sub_24A6876E8(v32);
      MEMORY[0x24C21E1D0](v32, -1, -1);
      MEMORY[0x24C21E1D0](v31, -1, -1);
    }

    else
    {
      v34 = v82;
    }
  }
}

uint64_t sub_24A694E90()
{
  v1 = v0;
  v8 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = &v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_24A694FFC;
  *(v4 + 24) = v3;
  aBlock[4] = sub_24A680674;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A6805E4;
  aBlock[3] = &unk_285DC77F0;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

unint64_t sub_24A695068(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_24A82D0C4();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_24A82D1A4();
}

uint64_t sub_24A695148()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  v2 = MEMORY[0x277D84FA0];
  v3 = MEMORY[0x277D84F90];
  *(v0 + 128) = MEMORY[0x277D84FA0];
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;
  *(v0 + 160) = 0;
  swift_unknownObjectWeakInit();
  if (qword_281512DE0 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518D70);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPBeaconSharingController: init", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D49690]) init];
  v9 = [v8 beaconSharingSession];

  *(v1 + 112) = v9;
  return v1;
}

uint64_t sub_24A695298()
{
  v0 = sub_24A82CDC4();
  sub_24A67976C(v0, qword_281518D70);
  sub_24A6797D0(v0, qword_281518D70);
  return sub_24A82CDA4();
}

uint64_t FMLocationShifter.init()()
{
  v16 = sub_24A82D554();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v16);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24A82D534();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_24A82CE54();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v15[0] = sub_24A67B054();
  v17 = "v24@?0q8@NSError16";
  sub_24A82CE44();
  v19 = MEMORY[0x277D84F90];
  v15[3] = sub_24A695668(&qword_2815146D0, MEMORY[0x277D85230]);
  v15[2] = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v8 = *MEMORY[0x277D85260];
  v9 = v0 + 104;
  v10 = *(v0 + 104);
  v15[1] = v9;
  v11 = v16;
  v10(v3, v8, v16);
  *(v18 + 24) = sub_24A82D594();
  sub_24A82CE44();
  v19 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v10(v3, v8, v11);
  v12 = sub_24A82D594();
  v13 = v18;
  *(v18 + 32) = v12;
  *(v13 + 16) = [objc_allocWithZone(MEMORY[0x277D0EB88]) init];
  return v13;
}

uint64_t sub_24A695668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A6956B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A6956F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24A695740(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_24A6957D0()
{
  v1 = v0;
  v24 = sub_24A82D554();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82D534();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_24A82CE54();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *&v0[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationUpdatingQueue;
  v10 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v22[1] = "Queue";
  v22[2] = v10;
  sub_24A82CE24();
  v26 = MEMORY[0x277D84F90];
  sub_24A695668(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v24);
  *&v0[v23] = sub_24A82D594();
  v11 = &v0[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_currentLocation];
  v11[1] = 0;
  v11[2] = 0;
  *v11 = 0;
  v12 = objc_opt_self();
  v13 = sub_24A82CF94();
  v14 = sub_24A82CF94();
  LOBYTE(v12) = [v12 BOOLForKey:v13 inDomain:v14];

  v1[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_limitedPrecision] = v12;
  v15 = [objc_allocWithZone(MEMORY[0x277CBFC10]) init];
  *&v1[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager] = v15;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationShifter] = FMLocationShifter.init()();
  v16 = type metadata accessor for FMIPLocationController();
  v25.receiver = v1;
  v25.super_class = v16;
  v17 = objc_msgSendSuper2(&v25, sel_init);
  v18 = OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager;
  v19 = *&v17[OBJC_IVAR____TtC8FMIPCore22FMIPLocationController_locationManager];
  v20 = v17;
  [v19 setDelegate_];
  [*&v17[v18] setDesiredAccuracy_];

  return v20;
}

uint64_t sub_24A695B98@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4 + 24;
  v6 = sub_24A82CB94();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for FMIPServerInteractionController(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = sub_24A696054(v5);
  v11 = result;
  if (qword_281514478 != -1)
  {
    result = swift_once();
  }

  if (byte_281514481 == 1)
  {
    v18[3] = v7;
    v18[4] = &off_285DCA4D0;
    v18[0] = v11;

    v12 = sub_24A7FD120(v18);
    sub_24A6876E8(v18);
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v13 = sub_24A82CDC4();
    sub_24A6797D0(v13, qword_281518F88);
    v14 = sub_24A82CD94();
    v15 = sub_24A82D504();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24A675000, v14, v15, "FMIPManager: Entering Demo Mode", v16, 2u);
      MEMORY[0x24C21E1D0](v16, -1, -1);
    }

    a1[3] = type metadata accessor for FMIPDemoInteractionController();
    a1[4] = &off_285DCE908;

    v11 = v12;
  }

  else
  {
    a1[3] = v7;
    a1[4] = &off_285DCA4D0;
  }

  *a1 = v11;
  return result;
}

uint64_t sub_24A695F64()
{
  result = sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_24A696054(uint64_t a1)
{
  v62 = a1;
  v2 = (*(*(sub_24A6BBA94(&qword_27EF5E458, &unk_24A83CCD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v61 = v52 - v3;
  v60 = sub_24A82D554();
  v63 = *(v60 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20]();
  v59 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_24A82D534() - 8) + 64);
  MEMORY[0x28223BE20]();
  v57 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_24A82CE54() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_24A82CAA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v1 + qword_281512FE8);
  v56 = v1;
  sub_24A82CA94();
  v15 = sub_24A82CA54();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  *v14 = v15;
  v14[1] = v17;
  v18 = qword_2815147C8;
  v58 = qword_2815147C8;
  v19 = sub_24A82CBB4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v1 + v18) = sub_24A82CBA4();
  v55 = qword_2815147D8;
  v22 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v53 = ".fipcore.globalConfigStore";
  v54 = v22;
  sub_24A82CE24();
  v64 = MEMORY[0x277D84F90];
  v52[2] = sub_24A67A06C(&qword_2815146D0, MEMORY[0x277D85230]);
  v52[1] = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  v52[3] = sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v23 = *MEMORY[0x277D85260];
  v24 = *(v63 + 104);
  v63 += 104;
  v26 = v59;
  v25 = v60;
  v24(v59, v23, v60);
  v27 = sub_24A82D594();
  v28 = v56;
  *(v56 + v55) = v27;
  v55 = qword_281512FE0;
  v53 = ".fmipcore.serverinteraction";
  sub_24A82CE24();
  v64 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v24(v26, v23, v25);
  *(v28 + v55) = sub_24A82D594();
  *(v28 + qword_2815147C0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + qword_2815147D0) = 0;
  sub_24A82CA24();
  *(v28 + qword_281518F28) = 0;
  *(v28 + qword_281518D88) = MEMORY[0x277D84F98];
  v29 = v28 + qword_27EF5EE50;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0;
  v30 = *(v28 + v58);
  sub_24A67E964(v62, v61, &qword_27EF5E458, &unk_24A83CCD0);

  v31 = sub_24A82CC24();
  v32 = qword_281515DC8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = sub_24A82CDC4();
  sub_24A6797D0(v33, qword_281518F88);
  v34 = sub_24A82CD94();
  v35 = sub_24A82D504();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v64 = v37;
    *v36 = 136315138;
    v38 = *(v31 + qword_281512FE8);
    v39 = *(v31 + qword_281512FE8 + 8);

    v40 = sub_24A695068(0xCuLL, v38, v39);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = MEMORY[0x24C21C960](v40, v42, v44, v46);
    v49 = v48;

    v50 = sub_24A68761C(v47, v49, &v64);

    *(v36 + 4) = v50;
    _os_log_impl(&dword_24A675000, v34, v35, "FMIPServerInteractionController<%s>.init", v36, 0xCu);
    sub_24A6876E8(v37);
    MEMORY[0x24C21E1D0](v37, -1, -1);
    MEMORY[0x24C21E1D0](v36, -1, -1);
  }

  sub_24A67F378(v62, &qword_27EF5E458, &unk_24A83CCD0);
  return v31;
}

void sub_24A69671C()
{
  type metadata accessor for FMDemoManager();
  v4 = 1;
  if (static FMDemoManager.hasDemoModeAsset(for:)(&v4))
  {
    v0 = objc_opt_self();
    v1 = sub_24A82CF94();
    v2 = sub_24A82CF94();
    v3 = [v0 BOOLForKey:v1 inDomain:v2];
  }

  else
  {
    v3 = 0;
  }

  byte_281514481 = v3;
}

id static FMDemoManager.hasDemoModeAsset(for:)(unsigned __int8 *a1)
{
  v2 = sub_24A82C8B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  static FMDemoManager.assetURL(for:)(&v12);
  if (qword_2815144B0 != -1)
  {
    swift_once();
  }

  v7 = qword_281515A98;
  sub_24A82C894();
  v8 = sub_24A82CF94();

  v9 = [v7 fileExistsAtPath_];

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t static FMDemoManager.assetURL(for:)(unsigned __int8 *a1)
{
  v2 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = sub_24A82C8B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  if (qword_281514488 != -1)
  {
    swift_once();
  }

  v11 = sub_24A6797D0(v2, qword_281514490);
  sub_24A696E10(v11, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24A6D3E54(v5);
    sub_24A754394();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_24A82C864();

    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_24A696BAC()
{
  v0 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20]();
  v4 = &v12 - v3;
  sub_24A67976C(v2, qword_281514490);
  v5 = sub_24A6797D0(v0, qword_281514490);
  if (qword_2815144B0 != -1)
  {
    swift_once();
  }

  v6 = qword_281515A98;
  v7 = sub_24A82CF94();
  v8 = [v6 containerURLForSecurityApplicationGroupIdentifier_];

  if (v8)
  {
    sub_24A82C884();

    v9 = sub_24A82C8B4();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  }

  else
  {
    v10 = sub_24A82C8B4();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  return sub_24A696DA0(v4, v5);
}

id sub_24A696D6C()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  qword_281515A98 = result;
  return result;
}

uint64_t sub_24A696DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A696E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5CCB8, &qword_24A82FDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A696E80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_24A696E98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_snapshotHandlers);
  if (v3)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 32);
    result = sub_24A696F50(MEMORY[0x277D84F90]);
    v7 = 3;
    if (v5)
    {
      v7 = 1;
    }

    v8 = 2;
    if (v5)
    {
      v8 = 3;
    }

    if (v4)
    {
      v7 = v8;
    }
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
    result = sub_24A696F50(MEMORY[0x277D84F90]);
    v7 = 3;
    if (v9 == 1)
    {
      v7 = 1;
    }

    if (v9 == 2)
    {
      v7 = 2;
    }
  }

  *a1 = v3 != 0;
  v10 = MEMORY[0x277D84FA0];
  *(a1 + 8) = v7;
  *(a1 + 16) = v10;
  *(a1 + 24) = result;
  *(a1 + 32) = v3 != 0;
  return result;
}

unint64_t sub_24A696F74(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_24A6BBA94(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_24A6BBA94(a4, a5);
    v15 = sub_24A82D974();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_24A67E964(v17, v13, a2, v28);
      result = sub_24A77EDF8(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_24A82CAA4();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24A697174()
{
  result = sub_24A82CAA4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24A82CA34();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24A6972BC(void *a1, __int128 *a2)
{
  v3 = v2;
  v80 = a1;
  v81 = a2;
  v4 = sub_24A82D554();
  v5 = *(v4 - 8);
  v82 = v4;
  v83 = v5;
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82D534();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_24A82CE54();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_24A82CA94();
  v79 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue;
  v13 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v77 = "v16@?0@NSData8";
  v78 = v13;
  sub_24A82CE24();
  *&v85 = MEMORY[0x277D84F90];
  v76 = sub_24A697DF4(&qword_2815146D0, MEMORY[0x277D85230]);
  v75 = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A68795C(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v14 = *MEMORY[0x277D85260];
  v15 = v83[13];
  v83 += 13;
  v74 = v8;
  v15(v8, v14, v82);
  *(v2 + v79) = sub_24A82D594();
  v79 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_filterQueue;
  sub_24A82CE24();
  *&v85 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v15(v74, v14, v82);
  *(v2 + v79) = sub_24A82D594();
  v16 = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_spBeacons) = MEMORY[0x277D84F90];
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_appBeacons) = v16;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_unknownBeacons) = v16;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_itemGroups) = v16;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_currentlyRefreshing) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_nextRefreshQueued) = 0;
  sub_24A82C964();
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_24A82CA24();
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_callbackInterval) = 0x40CD4C0000000000;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_defaultCallbackInterval) = 0x40DD4C0000000000;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_initialCallbackInterval) = 0x40CD4C0000000000;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshTimer) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_utAlertState) = 1;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_separationMonitoringState) = 7;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_clientConfiguration) = 2;
  v17 = v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
  v18 = sub_24A696F50(v16);
  *v17 = 0;
  v19 = MEMORY[0x277D84FA0];
  *(v17 + 8) = 3;
  *(v17 + 16) = v19;
  *(v17 + 24) = v18;
  *(v17 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottledOverride) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isThrottled) = 0;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_isRefreshing) = 0;
  v20 = v80;
  v21 = v81;
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_ownerSession) = v80;
  v22 = *(v21 + 2);
  v88 = *(v21 + 3);
  v89[0] = v22;
  v23 = v21[1];
  *v17 = *v21;
  *(v17 + 16) = v23;
  *(v17 + 32) = *(v21 + 32);
  v83 = v20;
  sub_24A67E964(v89, &v85, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v88, &v85, &qword_27EF5F878, &qword_24A8415A8);

  v24 = sub_24A82C514();
  *(&v86 + 1) = v24;
  v87 = sub_24A697DF4(&unk_281514680, MEMORY[0x277D08A28]);
  v25 = sub_24A697E3C(&v85);
  (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D08A00], v24);
  LOBYTE(v24) = sub_24A82C4D4();
  sub_24A6876E8(&v85);
  if ((v24 & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) = 0;
    v26 = v3;
    goto LABEL_27;
  }

  v26 = v3;
  v27 = objc_opt_self();
  v28 = [v27 mainBundle];
  v29 = [v28 bundleIdentifier];

  if (v29)
  {
    v30 = sub_24A82CFC4();
    v32 = v31;

    if (v30 == 0xD000000000000010 && 0x800000024A8438E0 == v32)
    {
      LODWORD(v29) = 1;
    }

    else
    {
      LODWORD(v29) = sub_24A82DC04();
    }
  }

  v33 = [v27 mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = sub_24A82CFC4();
    v37 = v36;

    if (v35 == 0xD00000000000001ALL && 0x800000024A843920 == v37)
    {
      goto LABEL_17;
    }

    v38 = sub_24A82DC04();

    if (v38)
    {
      goto LABEL_19;
    }
  }

  v39 = [v27 mainBundle];
  v40 = [v39 bundleIdentifier];

  if (!v40)
  {
    if ((v29 & 1) == 0)
    {
LABEL_21:
      v44 = 0;
      goto LABEL_22;
    }

LABEL_19:
    v44 = 1;
    goto LABEL_22;
  }

  v41 = sub_24A82CFC4();
  v43 = v42;

  if (v41 != 0xD00000000000001CLL || 0x800000024A843900 != v43)
  {
    v45 = sub_24A82DC04();

    if (((v29 | v45) & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_17:

  v44 = 1;
LABEL_22:
  *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) = v44;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v46 = sub_24A82CDC4();
  sub_24A6797D0(v46, qword_281518F88);

  v47 = sub_24A82CD94();
  v48 = sub_24A82D504();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 67109120;
    *(v49 + 4) = *(v3 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI);

    _os_log_impl(&dword_24A675000, v47, v48, "FMIPBeaconRefreshingController: shouldUseBeaconsOptimizationSPI: %{BOOL}d", v49, 8u);
    MEMORY[0x24C21E1D0](v49, -1, -1);
  }

  else
  {
  }

LABEL_27:
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v50 = sub_24A82CDC4();
  sub_24A6797D0(v50, qword_281518F88);
  sub_24A67E964(v89, &v85, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67E964(&v88, &v85, &qword_27EF5F878, &qword_24A8415A8);

  v51 = sub_24A82CD94();
  v52 = sub_24A82D504();

  sub_24A67F378(v89, &qword_27EF5DA28, &qword_24A8415A0);
  sub_24A67F378(&v88, &qword_27EF5F878, &qword_24A8415A8);
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v84 = v54;
    *v53 = 136315394;
    v55 = sub_24A82CA54();
    v57 = sub_24A695068(0xCuLL, v55, v56);
    v59 = v58;
    v61 = v60;
    v63 = v62;

    v64 = MEMORY[0x24C21C960](v57, v59, v61, v63);
    v66 = v65;

    v67 = sub_24A68761C(v64, v66, &v84);

    *(v53 + 4) = v67;
    *(v53 + 12) = 2080;
    v68 = v81[1];
    v85 = *v81;
    v86 = v68;
    LOBYTE(v87) = *(v81 + 32);
    v69 = sub_24A82D024();
    v71 = sub_24A68761C(v69, v70, &v84);

    *(v53 + 14) = v71;
    _os_log_impl(&dword_24A675000, v51, v52, "FMIPBeaconRefreshingController<%s>.init %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v54, -1, -1);
    MEMORY[0x24C21E1D0](v53, -1, -1);
  }

  else
  {

    sub_24A67F378(v89, &qword_27EF5DA28, &qword_24A8415A0);
    sub_24A67F378(&v88, &qword_27EF5F878, &qword_24A8415A8);
  }

  return v26;
}

uint64_t sub_24A697DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_24A697E3C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_24A697EF4(uint64_t a1, void *a2)
{
  v26 = a1;
  v27 = sub_24A82D554();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82D534();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_24A82CE54();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  a2[3] = 0;
  swift_unknownObjectWeakInit();
  a2[4] = MEMORY[0x277D84FA0];
  v20 = a2;
  v11 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v24 = "wn Item location shifting";
  v25 = v11;
  sub_24A82CE24();
  v28 = MEMORY[0x277D84F90];
  v23 = sub_24A679FDC(&qword_2815146D0, MEMORY[0x277D85230]);
  v22 = sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  v12 = *MEMORY[0x277D85260];
  v13 = v3 + 104;
  v14 = *(v3 + 104);
  v21 = v13;
  v14(v6, v12, v27);
  a2[5] = sub_24A82D594();
  sub_24A82CE24();
  v28 = MEMORY[0x277D84F90];
  sub_24A82D6B4();
  v14(v6, v12, v27);
  v15 = sub_24A82D594();
  v16 = v20;
  v17 = v26;
  v20[6] = v15;
  v16[7] = v17;
  return v16;
}

uint64_t sub_24A698230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A6982B8(uint64_t *a1)
{
  v2 = v1;
  sub_24A698230(a1, v1 + 16);
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_24A82CDC4();
  sub_24A6797D0(v4, qword_281518F88);
  v5 = sub_24A82CD94();
  v6 = sub_24A82D504();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24A675000, v5, v6, "FMIPURLHandler: initialized", v7, 2u);
    MEMORY[0x24C21E1D0](v7, -1, -1);
  }

  sub_24A6876E8(a1);
  return v2;
}

void *sub_24A6983D8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24A82CAA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_24A82CA94();
  v15 = sub_24A82CA54();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v5[2] = v15;
  v5[3] = v17;
  v5[5] = 0;
  type metadata accessor for FMIPDeviceActionsController.CommandFutures();
  v18 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v18 + 112) = MEMORY[0x277D84F90];
  v5[21] = v18;
  v5[4] = a1;
  sub_24A698230(a2, (v5 + 6));
  sub_24A67E964(a3, (v5 + 11), &qword_27EF5D608, &qword_24A837E90);
  sub_24A67E964(a4, (v5 + 16), &qword_27EF5D610, &qword_24A8339A0);
  sub_24A67E964((v5 + 16), v29, &qword_27EF5D610, &qword_24A8339A0);
  v19 = v30;
  v20 = a1;
  sub_24A67F378(v29, &qword_27EF5D610, &qword_24A8339A0);
  if (v19)
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v21 = sub_24A82CDC4();
    sub_24A6797D0(v21, qword_27EF78C40);
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "FMIPDeviceActionsController: initialized for testing";
LABEL_10:
      _os_log_impl(&dword_24A675000, v22, v23, v25, v24, 2u);
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }
  }

  else
  {
    if (qword_27EF5CB98 != -1)
    {
      swift_once();
    }

    v26 = sub_24A82CDC4();
    sub_24A6797D0(v26, qword_27EF78C40);
    v22 = sub_24A82CD94();
    v23 = sub_24A82D504();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "FMIPDeviceActionsController: initialized";
      goto LABEL_10;
    }
  }

  sub_24A67F378(a4, &qword_27EF5D610, &qword_24A8339A0);
  sub_24A67F378(a3, &qword_27EF5D608, &qword_24A837E90);
  sub_24A6876E8(a2);
  return v5;
}

uint64_t sub_24A698728(uint64_t a1, uint64_t *a2)
{
  v3 = sub_24A82CDC4();
  sub_24A67976C(v3, a2);
  sub_24A6797D0(v3, a2);
  return sub_24A82CDA4();
}

void *sub_24A6987EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_allocWithZone(type metadata accessor for FMAPSConnectionHandler());

  return sub_24A698874(a1, a2, a3, a4, a5, v15, a7, a8);
}

void *sub_24A698874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v72 = a8;
  v73 = a5;
  v68 = a4;
  v69 = a1;
  v70 = a2;
  v71 = a3;
  v9 = sub_24A82CDF4();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v9);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_24A82D554();
  v12 = *(v67 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v67);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A82D534();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v60 = sub_24A82CE54();
  v59 = *(v60 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v66 = OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connectionQueue;
  v21 = sub_24A67B054();
  v64 = "v40@0:8@16@24@32";
  v65 = v21;
  sub_24A82CE24();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v12 + 104))(v15, *MEMORY[0x277D85260], v67);
  v22 = v68;
  *&a6[v66] = sub_24A82D594();
  v23 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic];
  v27 = v70;
  *v26 = v69;
  *(v26 + 1) = v27;
  v28 = &a6[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_preferencesStore];
  v29 = v72;
  *v28 = v71;
  *(v28 + 1) = v29;
  v30 = v73;
  *v23 = v22;
  *(v23 + 1) = v30;
  v31 = type metadata accessor for FMAPSConnectionHandler();
  v76.receiver = a6;
  v76.super_class = v31;
  swift_unknownObjectRetain();
  v32 = objc_msgSendSuper2(&v76, sel_init);
  v33 = v32;
  if (v22)
  {
    v34 = &v32[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection];
    if (*&v32[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection])
    {
      v35 = *(v34 + 1);
      v36 = *v34;
      ObjectType = swift_getObjectType();
      v38 = *(v35 + 16);
      v39 = v33;
      swift_unknownObjectRetain();
      v38(v33, ObjectType, v35);
      swift_unknownObjectRelease();
    }

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v40 = sub_24A82CDC4();
    sub_24A6797D0(v40, qword_281518F88);
    v41 = v33;
    v42 = sub_24A82CD94();
    v43 = sub_24A82D504();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315138;
      v46 = &v41[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic];
      v47 = *&v41[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic];
      v48 = *(v46 + 1);

      v49 = sub_24A68761C(v47, v48, aBlock);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_24A675000, v42, v43, "FMAPSConnectionHandler: initialized with topic %s", v44, 0xCu);
      sub_24A6876E8(v45);
      MEMORY[0x24C21E1D0](v45, -1, -1);
      MEMORY[0x24C21E1D0](v44, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v50 = *&v32[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connectionQueue];
    v51 = swift_allocObject();
    *(v51 + 16) = v33;
    aBlock[4] = sub_24A699B98;
    aBlock[5] = v51;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC8778;
    v52 = _Block_copy(aBlock);
    v53 = v50;
    v54 = v33;
    sub_24A82CE24();
    v74 = MEMORY[0x277D84F90];
    sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    v55 = v61;
    v56 = v63;
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v20, v55, v52);
    _Block_release(v52);

    (*(v62 + 8))(v55, v56);
    (*(v59 + 8))(v20, v60);
  }

  return v33;
}

uint64_t type metadata accessor for FMIPRefreshingController()
{
  result = qword_281513C68;
  if (!qword_281513C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A698FD8()
{
  sub_24A699150(319, qword_281515CC8, type metadata accessor for FMIPDevice);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24A699150(319, &qword_281515DB8, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24A699150(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24A82D634();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_24A6991A4(uint64_t *a1, char *a2)
{
  v3 = v2;
  v53 = a2;
  v54 = a1;
  v4 = sub_24A82D554();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24A82D534();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_24A82CE54();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_24A82CAA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24A82CA94();
  v16 = sub_24A82CA54();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  *(v3 + 2) = v16;
  *(v3 + 3) = v18;
  *(v3 + 5) = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_selectedDevice;
  v20 = type metadata accessor for FMIPDevice();
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  v21 = &v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  v21[48] = 1;
  v49 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshQueue;
  sub_24A67B054();
  sub_24A82CE24();
  v55[1] = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v51 + 104))(v50, *MEMORY[0x277D85260], v52);
  *&v3[v49] = sub_24A82D594();
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_tapContexts] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_callbackInterval] = 0x40DD4C0000000000;
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_minCallbackInterval] = 0x40B3880000000000;
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_maxCallbackInterval] = 0x40ED4C0000000000;
  v22 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_lastRefreshTime;
  v23 = sub_24A82CA34();
  (*(*(v23 - 8) + 56))(&v3[v22], 1, 1, v23);
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_refreshTimer] = 0;
  v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isInitializing] = 0;
  v24 = &v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber];
  *v24 = 0;
  *(v24 + 1) = 0;
  v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isRefreshing] = 0;
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_rangingParameters] = 0x4034000000000000;
  v26 = v53;
  v25 = v54;
  *&v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_apsConnectionHandler] = v53;
  sub_24A698230(v25, &v3[OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController]);
  v27 = &v26[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate];
  swift_beginAccess();
  *(v27 + 1) = &off_285DCABD0;
  swift_unknownObjectWeakAssign();
  v28 = qword_281515DC8;
  v29 = v26;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_24A82CDC4();
  sub_24A6797D0(v30, qword_281518F88);

  v31 = sub_24A82CD94();
  v32 = sub_24A82D504();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v55[0] = v34;
    *v33 = 136315138;
    v53 = v29;
    v35 = *(v3 + 2);
    v36 = *(v3 + 3);

    v37 = sub_24A695068(0xCuLL, v35, v36);
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = MEMORY[0x24C21C960](v37, v39, v41, v43);
    v46 = v45;

    v47 = sub_24A68761C(v44, v46, v55);

    *(v33 + 4) = v47;
    _os_log_impl(&dword_24A675000, v31, v32, "FMIPRefreshingController<%s>.init", v33, 0xCu);
    sub_24A6876E8(v34);
    MEMORY[0x24C21E1D0](v34, -1, -1);
    MEMORY[0x24C21E1D0](v33, -1, -1);
  }

  else
  {
  }

  sub_24A6876E8(v54);
  return v3;
}

void *sub_24A699828(void *a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v25 = a1;
  v23 = sub_24A82D554();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v23);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A82D534();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24A82CE54();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v2[2] = [objc_allocWithZone(MEMORY[0x277D49638]) init];
  v2[5] = 0;
  v12 = sub_24A679170(0, &qword_2815146C0, 0x277D85C78);
  v22[0] = "tSafeLocationKey";
  v22[1] = v12;
  sub_24A82CE24();
  v26 = MEMORY[0x277D84F90];
  sub_24A6956B0(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v23);
  v13 = v24;
  v2[6] = sub_24A82D594();
  v2[7] = MEMORY[0x277D84F90];
  v14 = v25;
  v2[3] = v25;
  v2[4] = v13;
  v15 = qword_281515DC8;
  v16 = v14;

  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_24A82CDC4();
  sub_24A6797D0(v17, qword_281518F88);
  v18 = sub_24A82CD94();
  v19 = sub_24A82D504();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_24A675000, v18, v19, "FMIPItemActionsController: initialized", v20, 2u);
    MEMORY[0x24C21E1D0](v20, -1, -1);
  }

  return v3;
}

uint64_t sub_24A699BA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_24A699BE4(char *a1)
{
  v29 = a1;
  v30 = sub_24A82D554();
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v30);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24A82D534();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_24A82CE54();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = *MEMORY[0x277CEE9F0];
  v10 = *MEMORY[0x277CEE9D8];
  v11 = sub_24A67B054();
  v27[0] = ".fmapsconnectionhandler.serial";
  v27[1] = v11;
  v28 = v9;
  v12 = v10;
  sub_24A82CE24();
  v31 = MEMORY[0x277D84F90];
  sub_24A67A024(&qword_2815146D0, MEMORY[0x277D85230]);
  sub_24A6BBA94(&unk_27EF5EF50, &unk_24A836510);
  v13 = v29;
  sub_24A679544(&qword_2815146E0, &unk_27EF5EF50, &unk_24A836510);
  sub_24A82D6B4();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v30);
  v14 = sub_24A82D594();
  v15 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v16 = v28;
  v17 = [v15 initWithEnvironmentName:v28 namedDelegatePort:v12 queue:v14];

  v18 = &off_285DC85E0;
  v19 = &v13[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection];
  v20 = *&v13[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connection];
  if (!v17)
  {
    v18 = 0;
  }

  *v19 = v17;
  *(v19 + 1) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v17)
  {
    swift_unknownObjectRetain();
    [v17 setDelegate_];

    swift_unknownObjectRelease();
  }

  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A82CDC4();
  sub_24A6797D0(v21, qword_281518F88);
  v22 = v13;
  v23 = sub_24A82CD94();
  v24 = sub_24A82D504();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_24A68761C(*&v22[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic], *&v22[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topic + 8], &v31);
    _os_log_impl(&dword_24A675000, v23, v24, "FMAPSConnectionHandler: initialized with default connection for topic %s", v25, 0xCu);
    sub_24A6876E8(v26);
    MEMORY[0x24C21E1D0](v26, -1, -1);
    MEMORY[0x24C21E1D0](v25, -1, -1);
  }
}

void sub_24A69A02C()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPDeviceConnectionStateProvider: accesoriesConnectionStateChanged notification received", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedInstance];
  v8[4] = sub_24A6A1370;
  v8[5] = v1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_24A6A1240;
  v8[3] = &unk_285DC87F0;
  v7 = _Block_copy(v8);

  [v6 getConnectedAccessoriesDiscoveryIds_];
  _Block_release(v7);
}

void sub_24A69A1CC()
{
  v1 = v0;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_24A82CDC4();
  sub_24A6797D0(v2, qword_281518F88);
  v3 = sub_24A82CD94();
  v4 = sub_24A82D504();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24A675000, v3, v4, "FMIPDeviceConnectionStateProvider: registering for notifications", v5, 2u);
    MEMORY[0x24C21E1D0](v5, -1, -1);
  }

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_24A82CF94();
  CFNotificationCenterAddObserver(v6, v1, sub_24A793B6C, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_24A82CF94();
  [v8 addObserver:v1 selector:sel_handleDeviceStateChanged name:v9 object:0];
}

uint64_t sub_24A69A398()
{
  v1 = sub_24A82CDF4();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24A82CE54();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 72);
  aBlock[4] = sub_24A69BF2C;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC7908;
  v10 = _Block_copy(aBlock);
  v11 = v9;

  sub_24A82CE24();
  v16 = MEMORY[0x277D84F90];
  sub_24A67F008(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v8, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);
}

uint64_t sub_24A69A688()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A69A6C4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_24A69A7CC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_24A82CDF4();
  v6 = *(v5 - 8);
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24A82CE54();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v16 = sub_24A82CDC4();
    sub_24A6797D0(v16, qword_281518F88);
    v38 = sub_24A82CD94();
    v17 = sub_24A82D4E4();
    if (os_log_type_enabled(v38, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v38, v17, "FMAPSConnectionHandler: Public APS Token was nil.", v18, 2u);
      MEMORY[0x24C21E1D0](v18, -1, -1);
    }

    v19 = v38;
  }

  else
  {
    v36 = v13;
    v37 = v12;
    v38 = v6;
    v20 = sub_24A82C8E4();
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v21 = sub_24A82CDC4();
    sub_24A6797D0(v21, qword_281518F88);
    v22 = v20;
    v23 = sub_24A82CD94();
    v24 = sub_24A82D504();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_24A675000, v23, v24, "FMAPSConnectionHandler: Public APS Token received %@.", v25, 0xCu);
      sub_24A67CDA4(v26);
      MEMORY[0x24C21E1D0](v26, -1, -1);
      MEMORY[0x24C21E1D0](v25, -1, -1);
    }

    v28 = [v22 fm_hexString];
    v29 = sub_24A82CFC4();
    v31 = v30;

    v32 = *&v3[OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_connectionQueue];
    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = v29;
    v33[4] = v31;
    aBlock[4] = sub_24A69AD30;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC8728;
    v34 = _Block_copy(aBlock);
    v35 = v3;
    sub_24A82CE24();
    v39 = MEMORY[0x277D84F90];
    sub_24A67A024(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v15, v9, v34);
    _Block_release(v34);

    (v38[1].isa)(v9, v5);
    (*(v36 + 8))(v15, v37);
  }
}

uint64_t sub_24A69ACD4(uint64_t a1, uint64_t a2)
{
  *(*v2 + qword_2815147C0 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t FMIPManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  FMIPManager.initialize()();
  return swift_unknownObjectRelease();
}

uint64_t sub_24A69ADDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v6 = (a1 + *a4);
  v7 = v6[1];
  *v6 = a2;
  v6[1] = a3;

  return a5(v8);
}

Swift::Void __swiftcall FMIPManager.initialize()()
{
  v1 = v0;
  v2 = sub_24A82CDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24A82CE54();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  v10 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems;
  v11 = *(v9 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems);
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = *(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
  if (!v12)
  {
    goto LABEL_8;
  }

  v33 = v6;
  v34 = v3;
  v35 = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24A6A0BC8;
  *(v13 + 24) = v12;
  v46 = sub_24A6806A0;
  v47 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_24A6805E4;
  v45 = &unk_285DC5698;
  v37 = _Block_copy(&aBlock);
  v14 = _Block_copy(v37);
  v15 = qword_281513E40;
  swift_retain_n();

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = _os_activity_create(&dword_24A675000, "FMIPRefreshingController.initialize", qword_281513E48, OS_ACTIVITY_FLAG_DEFAULT);
  v17 = _Block_copy(v14);
  v18 = swift_allocObject();
  v36 = v14;
  v19 = v18;
  *(v18 + 16) = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_24A6A0BC0;
  *(v20 + 24) = v19;
  v41[4] = sub_24A680674;
  v41[5] = v20;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 1107296256;
  v41[2] = sub_24A6805E4;
  v41[3] = &unk_285DC5710;
  v21 = _Block_copy(v41);

  os_activity_apply(v16, v21);
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v37);
  _Block_release(v36);
  swift_unknownObjectRelease();
  if (v21)
  {
    __break(1u);
    goto LABEL_15;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v2 = v35;
  v3 = v34;
  v6 = v33;
  if (isEscapingClosureAtFileLocation)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v11 = *(v9 + v10);
LABEL_8:
  if ((v11 & 3) != 0)
  {
    v23 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController;
    v24 = *(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
    v25 = swift_allocObject();
    swift_weakInit();

    sub_24A6A7024(sub_24A6AC5B8, v25);

    v26 = *(v1 + v23);

    sub_24A6A7448(0, 0);
  }

  if (*(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager) + 64) == 1)
  {
    v27 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_initializedSubsystems;
    swift_beginAccess();
    if (*(v1 + v27) != *(v9 + v10))
    {
      v28 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
      v46 = sub_24A74DCE4;
      v47 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_24A699BA0;
      v45 = &unk_285DC5620;
      v29 = _Block_copy(&aBlock);

      v30 = v38;
      sub_24A82CE24();
      v41[6] = MEMORY[0x277D84F90];
      sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
      v31 = v6;
      sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
      sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
      v32 = v40;
      sub_24A82D6B4();
      MEMORY[0x24C21CE90](0, v30, v32, v29);
      _Block_release(v29);
      (*(v3 + 8))(v32, v2);
      (*(v39 + 8))(v30, v31);
    }
  }
}

uint64_t sub_24A69B4B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A69B4F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24A69B544()
{
  v1 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_preferencesStore + 8);
  v2 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_preferencesStore);
  ObjectType = swift_getObjectType();
  v4 = (v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken);
  v5 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken);
  v6 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_publicAPSToken + 8);
  v7 = *(v1 + 40);

  v7(v5, v6, ObjectType, v1);
  v8 = v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    v11 = swift_getObjectType();
    v12 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken);
    v13 = *(v0 + OBJC_IVAR____TtC8FMIPCore22FMAPSConnectionHandler_topicAPSToken + 8);
    v14 = *v4;
    v15 = v4[1];
    v16 = *(v10 + 8);

    v16(v0, v12, v13, v14, v15, v11, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A69B68C()
{
  qword_281513E48 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_24A69B700(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24A6CADE0;

  return sub_24A69B884(a1, v5);
}

void sub_24A69B7B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_24A82CF94();
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_opt_self();
  v4 = sub_24A82CF94();
  v5 = sub_24A82CF94();
  [v3 setString:v2 forKey:v4 inDomain:v5];
}

uint64_t sub_24A69B884(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24A69BE34;

  return v7(a1);
}

uint64_t sub_24A69B990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24A69BD40;

  return sub_24A69BC38(a1, v4, v5, v7, v6);
}

void sub_24A69BA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A82CDC4();
  sub_24A6797D0(v6, qword_281518F88);

  oslog = sub_24A82CD94();
  v7 = sub_24A82D504();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    if (a2)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (a2)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_24A68761C(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    if (a4)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a4)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = sub_24A68761C(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_24A675000, oslog, v7, "FMIPRefreshingController: connectionHandler didReceive topicToken: %s publicToken: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C21E1D0](v9, -1, -1);
    MEMORY[0x24C21E1D0](v8, -1, -1);
  }
}

uint64_t sub_24A69BC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24A69BCA4, 0, 0);
}

uint64_t sub_24A69BC64()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A69BCA4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconSharingController);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24A69BCD0, v1, 0);
}

uint64_t sub_24A69BCD0()
{
  v1 = v0[3];
  *(v0[4] + 160) = &off_285DC5EA0;
  swift_unknownObjectWeakAssign();
  v2 = v0[1];

  return v2();
}

uint64_t sub_24A69BD40()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24A69BE34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24A69BF34(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    v2 = *(a1 + 280);

    sub_24A69BFF8(a1);

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v4 = *(a1 + 80);

    sub_24A69C358(a1, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A69BFF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems) & 2) != 0)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v15 = sub_24A82CDC4();
    sub_24A6797D0(v15, qword_281518F88);
    v16 = sub_24A82CD94();
    v17 = sub_24A82D504();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29 = v10;
      v19 = v9;
      v20 = v5;
      v21 = v4;
      v22 = a1;
      v23 = v18;
      *v18 = 0;
      _os_log_impl(&dword_24A675000, v16, v17, "FMIPManager: dataManager updated items", v18, 2u);
      v24 = v23;
      a1 = v22;
      v4 = v21;
      v5 = v20;
      v9 = v19;
      v10 = v29;
      MEMORY[0x24C21E1D0](v24, -1, -1);
    }

    v25 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A82CDE4();
    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    *(v26 + 24) = v2;
    aBlock[4] = sub_24A69C6F4;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC64E8;
    v27 = _Block_copy(aBlock);

    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v8, v14, v27);
    _Block_release(v27);
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_24A69C358(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24A82CE54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A82CDF4();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration) + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems))
  {
    v31 = v14;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);
    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = a2;
      v21 = v11;
      v22 = v7;
      v23 = v6;
      v24 = a1;
      v25 = v20;
      *v20 = 0;
      _os_log_impl(&dword_24A675000, v18, v19, "FMIPManager: dataManager updated device", v20, 2u);
      v26 = v25;
      a1 = v24;
      v6 = v23;
      v7 = v22;
      v11 = v21;
      a2 = v30;
      MEMORY[0x24C21E1D0](v26, -1, -1);
    }

    v27 = *(v3 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A82CDE4();
    v28 = swift_allocObject();
    v28[2] = v3;
    v28[3] = a2;
    v28[4] = a1;
    aBlock[4] = sub_24A6A0194;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DC6470;
    v29 = _Block_copy(aBlock);

    sub_24A82CE24();
    MEMORY[0x24C21CE90](0, v10, v16, v29);
    _Block_release(v29);
    (*(v7 + 8))(v10, v6);
    (*(v31 + 8))(v16, v11);
  }

  return result;
}

uint64_t sub_24A69C6A4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24A69C6FC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24A82CDF4();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24A82CE54();
  v19 = *(v21 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 280);
  v18[1] = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  aBlock[4] = sub_24A6A04A0;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6510;
  v12 = _Block_copy(aBlock);

  sub_24A82CE24();
  v23 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v10, v7, v12);
  _Block_release(v12);
  (*(v22 + 8))(v7, v4);
  (*(v19 + 8))(v10, v21);

  v13 = *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts);
  *(a2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts) = v11;

  sub_24A69CA60();
  v14 = v20;
  swift_beginAccess();
  v15 = *(v14 + 80);
  v16 = *(v14 + 288);

  sub_24A69D570(v15, v11, v16);
}

uint64_t sub_24A69CA60()
{
  v1 = type metadata accessor for FMIPProductType();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v88 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v87 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v87 - v8;
  v10 = type metadata accessor for FMIPItem();
  v99 = *(v10 - 1);
  v11 = *(v99 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v90 = &v87 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v87 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v87 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v87 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v95 = &v87 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v87 - v25;
  v91 = v0;
  v89 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts;
  result = *(v0 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_itemCounts);
  if (!result)
  {
    v40 = 0;
    v30 = 0;
    goto LABEL_79;
  }

  v28 = *(result + 16);
  v98 = result;

  v94 = v1;
  v96 = v10;
  v97 = v28;
  if (!v28)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_21:

    v41 = *(v91 + v89);
    if (v41)
    {
      v42 = *(v41 + 16);
      v43 = *(v91 + v89);

      v97 = v30;
      if (v42)
      {
        v44 = 0;
        v98 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v44 >= *(v41 + 16))
          {
            goto LABEL_84;
          }

          v45 = (*(v99 + 80) + 32) & ~*(v99 + 80);
          v46 = *(v99 + 72);
          sub_24A69F134(v41 + v45 + v46 * v44, v22, type metadata accessor for FMIPItem);
          sub_24A69F134(&v22[v10[24]], v7, type metadata accessor for FMIPProductType);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            sub_24A67F378(v7, &qword_27EF5D360, &unk_24A836200);
            if ((v22[v10[22]] & 1) == 0)
            {
              v47 = &v22[v10[15]];
              v48 = *v47 == 0x6F6C4072656E776FLL && *(v47 + 1) == 0xEF74736F686C6163;
              if (v48 || (sub_24A82DC04() & 1) != 0)
              {
                sub_24A6A2390(v22, v92, type metadata accessor for FMIPItem);
                v49 = v98;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v51 = v49;
                v100 = v49;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_24A6FCB30(0, *(v49 + 16) + 1, 1);
                  v30 = v97;
                  v51 = v100;
                }

                v52 = v51;
                v54 = *(v51 + 16);
                v53 = *(v51 + 24);
                if (v54 >= v53 >> 1)
                {
                  sub_24A6FCB30(v53 > 1, v54 + 1, 1);
                  v30 = v97;
                  v52 = v100;
                }

                *(v52 + 16) = v54 + 1;
                v98 = v52;
                result = sub_24A6A2390(v92, v52 + v45 + v54 * v46, type metadata accessor for FMIPItem);
                v10 = v96;
                goto LABEL_26;
              }
            }
          }

          else
          {
            sub_24A69F2C4(v7, type metadata accessor for FMIPProductType);
          }

          result = sub_24A69F2C4(v22, type metadata accessor for FMIPItem);
LABEL_26:
          if (v42 == ++v44)
          {
            goto LABEL_43;
          }
        }
      }

      v98 = MEMORY[0x277D84F90];
LABEL_43:

      v57 = *(v91 + v89);
      if (v57)
      {
        v58 = *(v57 + 16);
        v59 = *(v91 + v89);

        v60 = MEMORY[0x277D84F90];
        if (v58)
        {
          v61 = 0;
          v62 = v88;
          do
          {
            if (v61 >= *(v57 + 16))
            {
              goto LABEL_85;
            }

            v63 = (*(v99 + 80) + 32) & ~*(v99 + 80);
            v64 = *(v99 + 72);
            v65 = v93;
            sub_24A69F134(v57 + v63 + v64 * v61, v93, type metadata accessor for FMIPItem);
            v66 = v96;
            sub_24A69F134(v65 + v96[24], v62, type metadata accessor for FMIPProductType);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              sub_24A67F378(v62, &qword_27EF5D360, &unk_24A836200);
              if (*(v65 + v66[22]))
              {
                v67 = (v65 + v96[15]);
                v68 = *v67 == 0x6F6C4072656E776FLL && v67[1] == 0xEF74736F686C6163;
                if (v68 || (v69 = sub_24A82DC04(), v65 = v93, (v69 & 1) != 0))
                {
                  sub_24A6A2390(v65, v90, type metadata accessor for FMIPItem);
                  v70 = swift_isUniquelyReferenced_nonNull_native();
                  v100 = v60;
                  if ((v70 & 1) == 0)
                  {
                    sub_24A6FCB30(0, *(v60 + 16) + 1, 1);
                    v62 = v88;
                    v60 = v100;
                  }

                  v72 = *(v60 + 16);
                  v71 = *(v60 + 24);
                  if (v72 >= v71 >> 1)
                  {
                    sub_24A6FCB30(v71 > 1, v72 + 1, 1);
                    v62 = v88;
                    v60 = v100;
                  }

                  *(v60 + 16) = v72 + 1;
                  result = sub_24A6A2390(v90, v60 + v63 + v72 * v64, type metadata accessor for FMIPItem);
                  goto LABEL_48;
                }
              }
            }

            else
            {
              sub_24A69F2C4(v62, type metadata accessor for FMIPProductType);
            }

            result = sub_24A69F2C4(v65, type metadata accessor for FMIPItem);
LABEL_48:
            ++v61;
          }

          while (v58 != v61);
        }

        v73 = *(v60 + 16);
        if (v73)
        {
          v100 = MEMORY[0x277D84F90];
          sub_24A6FC900(0, v73, 0);
          v74 = v100;
          v75 = v60 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
          v76 = *(v99 + 72);
          v77 = v87;
          do
          {
            sub_24A69F134(v75, v77, type metadata accessor for FMIPItem);
            if (v77[43])
            {
              v78 = v77[42];
              v79 = v77[43];
            }

            else
            {
              v78 = v77[44];
              v79 = v77[45];
            }

            sub_24A69F2C4(v77, type metadata accessor for FMIPItem);
            v100 = v74;
            v81 = *(v74 + 16);
            v80 = *(v74 + 24);
            if (v81 >= v80 >> 1)
            {
              sub_24A6FC900((v80 > 1), v81 + 1, 1);
              v74 = v100;
            }

            *(v74 + 16) = v81 + 1;
            v82 = v74 + 16 * v81;
            *(v82 + 32) = v78;
            *(v82 + 40) = v79;
            v75 += v76;
            --v73;
          }

          while (v73);
        }

        v56 = sub_24A82D214();

        v30 = v97;
        v55 = v98;
        if (v97)
        {
          goto LABEL_74;
        }

LABEL_75:
        if (v55)
        {
          v40 = *(v55 + 16);

          if (v56)
          {
LABEL_77:
            v84 = *(v56 + 16);

            goto LABEL_80;
          }
        }

        else
        {
          v40 = 0;
          if (v56)
          {
            goto LABEL_77;
          }
        }

LABEL_79:
        v84 = 0;
LABEL_80:
        v85 = *(v91 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_refreshingController);
        if (v85)
        {
          v86 = v85 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts;
          *v86 = v30;
          *(v86 + 8) = 0;
          *(v86 + 16) = v40;
          *(v86 + 24) = 0;
          *(v86 + 32) = v84;
          *(v86 + 40) = 0;
          *(v86 + 48) = 0;
        }

        return result;
      }

      v56 = 0;
      v55 = v98;
      if (!v30)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v55 = 0;
      v56 = 0;
      if (!v30)
      {
        goto LABEL_75;
      }
    }

LABEL_74:
    v30 = *(v30 + 16);
    v83 = v55;

    v55 = v83;
    goto LABEL_75;
  }

  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  result = v98;
  while (v29 < *(result + 16))
  {
    v31 = v22;
    v32 = v7;
    v33 = (*(v99 + 80) + 32) & ~*(v99 + 80);
    v34 = *(v99 + 72);
    sub_24A69F134(result + v33 + v34 * v29, v26, type metadata accessor for FMIPItem);
    sub_24A69F134(&v26[v10[24]], v9, type metadata accessor for FMIPProductType);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      sub_24A67F378(v9, &qword_27EF5D360, &unk_24A836200);
    }

    else
    {
      sub_24A69F2C4(v9, type metadata accessor for FMIPProductType);
      v35 = &v26[v10[15]];
      v36 = *v35 == 0x6F6C4072656E776FLL && *(v35 + 1) == 0xEF74736F686C6163;
      if (v36 || (sub_24A82DC04() & 1) != 0)
      {
        sub_24A6A2390(v26, v95, type metadata accessor for FMIPItem);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v30;
        if ((v37 & 1) == 0)
        {
          sub_24A6FCB30(0, *(v30 + 16) + 1, 1);
          v30 = v100;
        }

        v39 = *(v30 + 16);
        v38 = *(v30 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_24A6FCB30(v38 > 1, v39 + 1, 1);
          v30 = v100;
        }

        *(v30 + 16) = v39 + 1;
        sub_24A6A2390(v95, v30 + v33 + v39 * v34, type metadata accessor for FMIPItem);
        v10 = v96;
        goto LABEL_6;
      }
    }

    sub_24A69F2C4(v26, type metadata accessor for FMIPItem);
LABEL_6:
    ++v29;
    result = v98;
    v7 = v32;
    v22 = v31;
    if (v97 == v29)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

void sub_24A69D570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v245 = a3;
  v246 = a2;
  v6 = type metadata accessor for FMIPItemGroup();
  v244 = *(v6 - 8);
  v7 = *(v244 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v262 = &v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for FMIPItem();
  v254 = *(v253 - 8);
  v9 = *(v254 + 64);
  MEMORY[0x28223BE20](v253);
  v268 = (&v239 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_24A6BBA94(&qword_27EF5D020, &qword_24A830E40);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v239 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v239 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v239 - v20;
  MEMORY[0x28223BE20](v19);
  v273 = (&v239 - v22);
  v23 = sub_24A82CAA4();
  v271 = *(v23 - 8);
  v24 = *(v271 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v265 = &v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v239 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v263 = &v239 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v250 = &v239 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v266 = &v239 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v255 = &v239 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v269 = (&v239 - v39);
  MEMORY[0x28223BE20](v38);
  v264 = &v239 - v40;
  v41 = type metadata accessor for FMIPDevice();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41 - 8);
  v260 = (&v239 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = MEMORY[0x28223BE20](v44);
  v252 = &v239 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v239 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v239 - v51;
  v261 = sub_24A82CA34();
  v249 = *(v261 - 8);
  v53 = *(v249 + 64);
  v54 = MEMORY[0x28223BE20](v261);
  v248 = &v239 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v257 = &v239 - v57;
  MEMORY[0x28223BE20](v56);
  v256 = &v239 - v58;
  v59 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_configuration);
  if (*(v59 + OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems))
  {
    v241 = OBJC_IVAR____TtC8FMIPCore24FMIPManagerConfiguration_enabledSubsystems;
    v242 = v59;
    v259 = v18;
    v267 = v29;
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v64 = sub_24A82CDC4();
    sub_24A6797D0(v64, qword_281518F88);

    v65 = sub_24A82CD94();
    v66 = sub_24A82D504();
    v67 = os_log_type_enabled(v65, v66);
    v251 = v15;
    if (v67)
    {
      v68 = swift_slowAlloc();
      *v68 = 134217984;
      *(v68 + 4) = *(a1 + 16);

      _os_log_impl(&dword_24A675000, v65, v66, "FMIPManager: updating locating devices lastOnlineLocationInfo: %ld", v68, 0xCu);
      v69 = v68;
      v15 = v251;
      MEMORY[0x24C21E1D0](v69, -1, -1);
    }

    else
    {
    }

    v70 = sub_24A82C514();
    v275 = v70;
    v276 = sub_24A679FDC(&unk_281514680, MEMORY[0x277D08A28]);
    v71 = sub_24A697E3C(v274);
    (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D08A00], v70);
    LOBYTE(v70) = sub_24A82C4D4();
    sub_24A6876E8(v274);
    v272 = v23;
    v247 = v4;
    if (v70)
    {
      v72 = *(v4 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
      if (*(v72 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_shouldUseBeaconsOptimizationSPI) == 1)
      {
        v259 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController;
        v73 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
        v262 = *(v72 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy + 16);

LABEL_111:
        v178 = *(v72 + v73 + 24);

        sub_24A82CA24();
        v179 = *(a1 + 16);
        if (!v179)
        {
LABEL_141:
          v234 = *(v247 + v259) + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
          v235 = *(v234 + 8);
          v236 = *(v234 + 16);
          v237 = *(v234 + 24);
          v238 = *(v234 + 32);
          LOBYTE(v274[0]) = *v234;
          v274[1] = v235;
          v274[2] = v236;
          v275 = v237;
          LOBYTE(v276) = v238;
          *v234 = v274[0];
          *(v234 + 16) = v262;
          *(v234 + 24) = v178;
          *(v234 + 32) = 0;

          sub_24A69F444(v274);

          (*(v249 + 8))(v257, v261);

          return;
        }

        v180 = a1 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v181 = v42;
        v182 = (v271 + 48);
        v183 = *(v181 + 72);
        v269 = (v271 + 32);
        v266 = (v249 + 8);
        v268 = (v271 + 8);
        v264 = (v271 + 16);
        v184 = v267;
        v185 = v260;
        v258 = v271 + 48;
        while (1)
        {
          sub_24A69F134(v180, v185, type metadata accessor for FMIPDevice);
          if (!v185[3])
          {
            goto LABEL_140;
          }

          v186 = v185[2];
          sub_24A82CA44();
          if ((*v182)(v15, 1, v23) == 1)
          {
            sub_24A69F2C4(v185, type metadata accessor for FMIPDevice);
            sub_24A67F378(v15, &qword_27EF5D020, &qword_24A830E40);
          }

          else
          {
            (*v269)(v184, v15, v23);
            v187 = v185[33];
            if (!v187)
            {
              v224 = sub_24A77EDF8(v184);
              if (v225)
              {
                v226 = v224;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v274[0] = v178;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  sub_24A786A60();
                  v178 = v274[0];
                }

                v228 = *(v271 + 8);
                v228(v178[6] + *(v271 + 72) * v226, v23);

                sub_24A7C4C44(v226, v178);
                v229 = v267;
                v228(v267, v23);
                v184 = v229;
              }

              else
              {
                (*v268)(v184, v23);
              }

              goto LABEL_139;
            }

            v270 = v187;
            v188 = [v270 timestamp];
            v189 = v256;
            sub_24A82C9F4();

            v190 = objc_allocWithZone(MEMORY[0x277D49678]);
            v191 = sub_24A82C994();
            v192 = sub_24A82C994();
            v273 = [v190 initWithDate:v191 updatedOn:v192];

            v193 = *v266;
            (*v266)(v189, v261);
            if (!v178[2])
            {
              goto LABEL_123;
            }

            v195 = sub_24A77EDF8(v267);
            if ((v196 & 1) == 0)
            {
              goto LABEL_123;
            }

            v197 = *(v178[7] + 8 * v195);
            v263 = v197;
            v198 = [v273 timestamp];
            v199 = v256;
            sub_24A82C9F4();

            sub_24A82C9D4();
            v201 = v200;
            v202 = v199;
            v203 = v261;
            v193(v202, v261);
            v204 = [v197 timestamp];
            v205 = v183;
            v206 = v204;
            v207 = v248;
            sub_24A82C9F4();

            v183 = v205;
            sub_24A82C9D4();
            v209 = v208;

            v193(v207, v203);
            v182 = v258;
            v194.n128_f64[0] = v201 - v209;
            if (v201 - v209 >= 180.0)
            {
LABEL_123:
              v210 = v23;
              v211 = v265;
              v212 = *v264;
              (*v264)(v265, v267, v210, v194);
              v213 = swift_isUniquelyReferenced_nonNull_native();
              v274[0] = v178;
              v214 = sub_24A77EDF8(v211);
              v216 = v178[2];
              v217 = (v215 & 1) == 0;
              v153 = __OFADD__(v216, v217);
              v218 = v216 + v217;
              if (v153)
              {
                goto LABEL_148;
              }

              v219 = v215;
              if (v178[3] >= v218)
              {
                v184 = v267;
                if ((v213 & 1) == 0)
                {
                  v233 = v214;
                  sub_24A786A60();
                  v184 = v267;
                  v214 = v233;
                }

                v15 = v251;
                v178 = v274[0];
                if ((v219 & 1) == 0)
                {
                  goto LABEL_127;
                }
              }

              else
              {
                sub_24A78238C(v218, v213);
                v214 = sub_24A77EDF8(v265);
                if ((v219 & 1) != (v220 & 1))
                {
                  sub_24A82DC44();
                  __break(1u);
                  return;
                }

                v15 = v251;
                v184 = v267;
                v178 = v274[0];
                if ((v219 & 1) == 0)
                {
LABEL_127:
                  v178[(v214 >> 6) + 8] |= 1 << v214;
                  v221 = v214;
                  v212(v178[6] + *(v271 + 72) * v214, v265, v272);
                  *(v178[7] + 8 * v221) = v273;
                  v222 = v178[2];
                  v153 = __OFADD__(v222, 1);
                  v223 = v222 + 1;
                  if (v153)
                  {
                    goto LABEL_150;
                  }

                  v178[2] = v223;
LABEL_137:
                  v232 = *v268;
                  v23 = v272;
                  (*v268)(v265, v272);

                  (v232)(v184, v23);
LABEL_139:
                  v185 = v260;
LABEL_140:
                  sub_24A69F2C4(v185, type metadata accessor for FMIPDevice);
                  goto LABEL_114;
                }
              }

              v230 = v178[7];
              v231 = *(v230 + 8 * v214);
              *(v230 + 8 * v214) = v273;

              goto LABEL_137;
            }

            v184 = v267;
            (*v268)(v267, v23, v194.n128_f64[0]);

            v185 = v260;
            sub_24A69F2C4(v260, type metadata accessor for FMIPDevice);
            v15 = v251;
          }

LABEL_114:
          v180 += v183;
          if (!--v179)
          {
            goto LABEL_141;
          }
        }
      }
    }

    v74 = v256;
    sub_24A82CA24();
    sub_24A82C9D4();
    v76 = v75;
    (*(v249 + 8))(v74, v261);
    v77 = *(a1 + 16);
    v270 = v21;
    v240 = a1;
    v243 = v42;
    if (v77)
    {
      v78 = *(v42 + 72);
      v258 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v79 = a1 + v258;
      v80 = MEMORY[0x277D84F90];
      v81 = v273;
      v82 = v252;
      do
      {
        sub_24A69F134(v79, v52, type metadata accessor for FMIPDevice);
        if (sub_24A74A594(v52, v76))
        {
          sub_24A6A2390(v52, v82, type metadata accessor for FMIPDevice);
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v274[0] = v80;
          if ((v83 & 1) == 0)
          {
            sub_24A6FCBB8(0, *(v80 + 16) + 1, 1);
            v82 = v252;
            v80 = v274[0];
          }

          v85 = *(v80 + 16);
          v84 = *(v80 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_24A6FCBB8(v84 > 1, v85 + 1, 1);
            v82 = v252;
            v80 = v274[0];
          }

          *(v80 + 16) = v85 + 1;
          sub_24A6A2390(v82, v80 + v258 + v85 * v78, type metadata accessor for FMIPDevice);
          v81 = v273;
        }

        else
        {
          sub_24A69F2C4(v52, type metadata accessor for FMIPDevice);
        }

        v79 += v78;
        --v77;
      }

      while (v77);
    }

    else
    {
      v80 = MEMORY[0x277D84F90];
      v81 = v273;
    }

    v86 = *(v80 + 16);
    if (v86)
    {
      v87 = v80 + ((*(v243 + 80) + 32) & ~*(v243 + 80));
      v88 = *(v243 + 72);
      v89 = MEMORY[0x277D84F90];
      do
      {
        sub_24A69F134(v87, v50, type metadata accessor for FMIPDevice);
        v92 = *(v50 + 2);
        v91 = *(v50 + 3);

        sub_24A69F2C4(v50, type metadata accessor for FMIPDevice);
        if (v91)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = sub_24A780414(0, *(v89 + 2) + 1, 1, v89);
          }

          v94 = *(v89 + 2);
          v93 = *(v89 + 3);
          if (v94 >= v93 >> 1)
          {
            v89 = sub_24A780414((v93 > 1), v94 + 1, 1, v89);
          }

          *(v89 + 2) = v94 + 1;
          v90 = &v89[16 * v94];
          *(v90 + 4) = v92;
          *(v90 + 5) = v91;
          v81 = v273;
        }

        v87 += v88;
        --v86;
      }

      while (v86);
    }

    else
    {

      v89 = MEMORY[0x277D84F90];
    }

    v95 = *(v89 + 2);
    v23 = v272;
    if (v95)
    {
      v96 = 0;
      v97 = (v271 + 48);
      v98 = (v271 + 32);
      v99 = (v89 + 40);
      v273 = MEMORY[0x277D84F90];
      while (v96 < *(v89 + 2))
      {
        v101 = *(v99 - 1);
        v100 = *v99;

        sub_24A82CA44();

        if ((*v97)(v81, 1, v23) == 1)
        {
          sub_24A67F378(v81, &qword_27EF5D020, &qword_24A830E40);
        }

        else
        {
          v102 = v23;
          v103 = *v98;
          v104 = v264;
          (*v98)(v264, v81, v102);
          v103(v269, v104, v102);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v273 = sub_24A78029C(0, v273[2].isa + 1, 1, v273);
          }

          isa = v273[2].isa;
          v105 = v273[3].isa;
          if (isa >= v105 >> 1)
          {
            v273 = sub_24A78029C(v105 > 1, isa + 1, 1, v273);
          }

          v107 = v273;
          v273[2].isa = (isa + 1);
          v108 = v272;
          v103(v107 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * isa, v269, v272);
          v23 = v108;
        }

        ++v96;
        v99 += 2;
        if (v95 == v96)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v273 = MEMORY[0x277D84F90];
LABEL_50:

    v109 = *(v242 + v241);
    v110 = MEMORY[0x277D84F90];
    if ((v109 & 2) == 0)
    {
      goto LABEL_70;
    }

    v111 = v246;
    v112 = *(v246 + 16);
    if (v112)
    {
      v274[0] = MEMORY[0x277D84F90];
      sub_24A6FC900(0, v112, 0);
      v110 = v274[0];
      v113 = v111 + ((*(v254 + 80) + 32) & ~*(v254 + 80));
      v114 = *(v254 + 72);
      do
      {
        v115 = v268;
        sub_24A69F134(v113, v268, type metadata accessor for FMIPItem);
        v116 = v115[44];
        v117 = v115[45];

        sub_24A69F2C4(v115, type metadata accessor for FMIPItem);
        v274[0] = v110;
        v119 = *(v110 + 16);
        v118 = *(v110 + 24);
        v120 = v119 + 1;
        if (v119 >= v118 >> 1)
        {
          sub_24A6FC900((v118 > 1), v119 + 1, 1);
          v120 = v119 + 1;
          v110 = v274[0];
        }

        *(v110 + 16) = v120;
        v121 = v110 + 16 * v119;
        *(v121 + 32) = v116;
        *(v121 + 40) = v117;
        v113 += v114;
        --v112;
      }

      while (v112);
      v23 = v272;
    }

    else
    {
      v120 = *(MEMORY[0x277D84F90] + 16);
      v122 = MEMORY[0x277D84F90];
      if (!v120)
      {
LABEL_69:

        v110 = v122;
LABEL_70:
        if ((v109 & 1) == 0)
        {
          v137 = MEMORY[0x277D84F90];
          goto LABEL_110;
        }

        v138 = *(v245 + 16);
        v139 = MEMORY[0x277D84F90];
        if (!v138)
        {
          v142 = MEMORY[0x277D84F90];
LABEL_90:
          v155 = v142[2];
          if (v155)
          {
            v274[0] = v139;
            sub_24A6FC900(0, v155, 0);
            v156 = v274[0];
            v157 = v142 + ((*(v254 + 80) + 32) & ~*(v254 + 80));
            v158 = *(v254 + 72);
            do
            {
              v159 = v268;
              sub_24A69F134(v157, v268, type metadata accessor for FMIPItem);
              v160 = v159[44];
              v161 = v159[45];

              sub_24A69F2C4(v159, type metadata accessor for FMIPItem);
              v274[0] = v156;
              v163 = *(v156 + 16);
              v162 = *(v156 + 24);
              if (v163 >= v162 >> 1)
              {
                sub_24A6FC900((v162 > 1), v163 + 1, 1);
                v156 = v274[0];
              }

              *(v156 + 16) = v163 + 1;
              v164 = v156 + 16 * v163;
              *(v164 + 32) = v160;
              *(v164 + 40) = v161;
              v157 += v158;
              --v155;
            }

            while (v155);
          }

          else
          {

            v156 = MEMORY[0x277D84F90];
          }

          v23 = v272;
          v270 = *(v156 + 16);
          if (v270)
          {
            v165 = 0;
            v269 = (v271 + 48);
            v166 = (v271 + 32);
            v167 = (v156 + 40);
            v137 = MEMORY[0x277D84F90];
            while (v165 < *(v156 + 16))
            {
              v168 = v110;
              v170 = *(v167 - 1);
              v169 = *v167;

              v171 = v259;
              sub_24A82CA44();

              if ((*v269)(v171, 1, v23) == 1)
              {
                sub_24A67F378(v171, &qword_27EF5D020, &qword_24A830E40);
                v110 = v168;
              }

              else
              {
                v172 = v23;
                v173 = *v166;
                v174 = v250;
                (*v166)(v250, v171, v172);
                v173(v263, v174, v172);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v137 = sub_24A78029C(0, *(v137 + 2) + 1, 1, v137);
                }

                v110 = v168;
                v176 = *(v137 + 2);
                v175 = *(v137 + 3);
                if (v176 >= v175 >> 1)
                {
                  v137 = sub_24A78029C(v175 > 1, v176 + 1, 1, v137);
                }

                *(v137 + 2) = v176 + 1;
                v177 = v272;
                v173(&v137[((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v176], v263, v272);
                v23 = v177;
              }

              ++v165;
              v167 += 2;
              if (v270 == v165)
              {
                goto LABEL_109;
              }
            }

LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          v137 = MEMORY[0x277D84F90];
LABEL_109:

LABEL_110:
          a1 = v240;
          v42 = v243;
          v274[0] = v273;
          sub_24A77EB08(v110);
          sub_24A77EB08(v137);
          v262 = sub_24A713EE8(v274[0]);

          v259 = OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController;
          v72 = *(v247 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_beaconRefreshingController);
          v73 = OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
          v15 = v251;
          goto LABEL_111;
        }

        v140 = v245 + ((*(v244 + 80) + 32) & ~*(v244 + 80));
        v141 = *(v244 + 72);
        v142 = MEMORY[0x277D84F90];
        while (1)
        {
          v143 = v262;
          sub_24A69F134(v140, v262, type metadata accessor for FMIPItemGroup);
          v144 = *(v143 + 40);

          sub_24A69F2C4(v143, type metadata accessor for FMIPItemGroup);
          v145 = *(v144 + 16);
          v146 = v142[2];
          v147 = v146 + v145;
          if (__OFADD__(v146, v145))
          {
            goto LABEL_145;
          }

          v148 = swift_isUniquelyReferenced_nonNull_native();
          if (v148 && v147 <= v142[3] >> 1)
          {
            if (!*(v144 + 16))
            {
              goto LABEL_74;
            }
          }

          else
          {
            if (v146 <= v147)
            {
              v149 = v146 + v145;
            }

            else
            {
              v149 = v146;
            }

            v142 = sub_24A7802C4(v148, v149, 1, v142);
            if (!*(v144 + 16))
            {
LABEL_74:

              if (v145)
              {
                goto LABEL_146;
              }

              goto LABEL_75;
            }
          }

          if ((v142[3] >> 1) - v142[2] < v145)
          {
            goto LABEL_147;
          }

          v150 = (*(v254 + 80) + 32) & ~*(v254 + 80);
          v151 = *(v254 + 72);
          swift_arrayInitWithCopy();

          if (v145)
          {
            v152 = v142[2];
            v153 = __OFADD__(v152, v145);
            v154 = v152 + v145;
            if (v153)
            {
              goto LABEL_149;
            }

            v142[2] = v154;
          }

LABEL_75:
          v140 += v141;
          if (!--v138)
          {
            goto LABEL_90;
          }
        }
      }
    }

    v258 = v109;
    v123 = 0;
    v124 = (v271 + 48);
    v269 = (v271 + 32);
    v125 = (v110 + 40);
    v122 = MEMORY[0x277D84F90];
    v264 = (v271 + 48);
    do
    {
      if (v123 >= *(v110 + 16))
      {
        goto LABEL_143;
      }

      v126 = v120;
      v128 = *(v125 - 1);
      v127 = *v125;

      v129 = v270;
      sub_24A82CA44();

      if ((*v124)(v129, 1, v23) == 1)
      {
        sub_24A67F378(v129, &qword_27EF5D020, &qword_24A830E40);
      }

      else
      {
        v130 = v110;
        v131 = v23;
        v132 = *v269;
        v133 = v255;
        (*v269)(v255, v129, v131);
        v132(v266, v133, v131);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_24A78029C(0, v122[2] + 1, 1, v122);
        }

        v135 = v122[2];
        v134 = v122[3];
        v110 = v130;
        if (v135 >= v134 >> 1)
        {
          v122 = sub_24A78029C(v134 > 1, v135 + 1, 1, v122);
        }

        v124 = v264;
        v122[2] = v135 + 1;
        v136 = v272;
        v132(v122 + ((*(v271 + 80) + 32) & ~*(v271 + 80)) + *(v271 + 72) * v135, v266, v272);
        v23 = v136;
      }

      ++v123;
      v125 += 2;
      v120 = v126;
    }

    while (v126 != v123);
    LOBYTE(v109) = v258;
    goto LABEL_69;
  }

  if (qword_281515DC8 != -1)
  {
LABEL_151:
    swift_once();
  }

  v60 = sub_24A82CDC4();
  sub_24A6797D0(v60, qword_281518F88);
  v273 = sub_24A82CD94();
  v61 = sub_24A82D4D4();
  if (os_log_type_enabled(v273, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_24A675000, v273, v61, "FMIPManager: not calling updating locating devices", v62, 2u);
    MEMORY[0x24C21E1D0](v62, -1, -1);
  }

  v63 = v273;
}

uint64_t sub_24A69F064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A69F0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A69F134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A69F19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A69F204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F2C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24A69F3E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24A69F444(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24A82CE54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = v2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy;
  v16 = &unk_281518000;
  if (*(v2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshingPolicy) == *a1 && *(a1 + 1) == *(v15 + 8))
  {
    v34 = v12;
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v32 = a1[32];
    LODWORD(v33) = v19;
    v22 = a1 + 16;
    v20 = *(a1 + 2);
    v21 = *(v22 + 1);

    if (sub_24A69F944(v20, v17))
    {
      sub_24A69FCF4(v21, v18);
      v24 = v23;

      v12 = v34;
      v16 = &unk_281518000;
      if ((v24 & 1) != 0 && ((v33 ^ v32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v12 = v34;
      v16 = &unk_281518000;
    }
  }

  if (*(v2 + v16[488]) == 1)
  {
    v33 = *(v2 + OBJC_IVAR____TtC8FMIPCore30FMIPBeaconRefreshingController_refreshQueue);
    aBlock[4] = sub_24A814344;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A699BA0;
    aBlock[3] = &unk_285DCDB88;
    v34 = v12;
    v25 = _Block_copy(aBlock);

    sub_24A82CE24();
    v35 = MEMORY[0x277D84F90];
    sub_24A697DF4(&qword_281515DB0, MEMORY[0x277D85198]);
    sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
    sub_24A68795C(qword_281514700, &unk_27EF5D708, qword_24A833F40);
    sub_24A82D6B4();
    MEMORY[0x24C21CE90](0, v14, v8, v25);
    _Block_release(v25);
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v34);

    return;
  }

LABEL_10:
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v26 = sub_24A82CDC4();
  sub_24A6797D0(v26, qword_281518F88);

  v27 = sub_24A82CD94();
  v28 = sub_24A82D4D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_24A68761C(0xD000000000000010, 0x800000024A84AAD0, aBlock);
    *(v29 + 12) = 1024;
    *(v29 + 14) = *(v2 + v16[488]);

    _os_log_impl(&dword_24A675000, v27, v28, "FMIPBeaconRefreshingController: %s - Won't update: isRefreshing: %{BOOL}d", v29, 0x12u);
    sub_24A6876E8(v30);
    MEMORY[0x24C21E1D0](v30, -1, -1);
    MEMORY[0x24C21E1D0](v29, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24A69F944(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A82CAA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_24A7B8564(&qword_281514670, MEMORY[0x277CC95F0]);
      v28 = sub_24A82CF54();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_24A7B8564(&qword_27EF5DC48, MEMORY[0x277CC95F0]);
        v33 = sub_24A82CF84();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_24A69FCF4(uint64_t a1, uint64_t a2)
{
  v60 = sub_24A82CAA4();
  v55 = *(v60 - 8);
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v60);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v54 = &v47 - v7;
  v8 = sub_24A6BBA94(&qword_27EF5ED00, &qword_24A83BA28);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v52 = a2;
    v53 = v12;
    v14 = 0;
    v50 = a1;
    v17 = *(a1 + 64);
    v16 = a1 + 64;
    v15 = v17;
    v18 = 1 << *(v16 - 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v15;
    v47 = (v18 + 63) >> 6;
    v48 = v16;
    v49 = v55 + 16;
    v57 = &v47 - v11;
    v58 = (v55 + 32);
    v51 = (v55 + 8);
    while (v20)
    {
      v59 = (v20 - 1) & v20;
      v21 = __clz(__rbit64(v20)) | (v14 << 6);
      v22 = v53;
LABEL_16:
      v27 = v50;
      v28 = v54;
      v29 = v55;
      v30 = v60;
      (*(v55 + 16))(v54, *(v50 + 48) + *(v55 + 72) * v21, v60);
      v31 = *(*(v27 + 56) + 8 * v21);
      v32 = sub_24A6BBA94(&qword_27EF5ED08, &qword_24A83BA30);
      v33 = *(v32 + 48);
      (*(v29 + 32))(v22, v28, v30);
      *(v22 + v33) = v31;
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
      v34 = v31;
      v13 = v57;
LABEL_17:
      sub_24A67E8FC(v22, v13, &qword_27EF5ED00, &qword_24A83BA28);
      v35 = sub_24A6BBA94(&qword_27EF5ED08, &qword_24A83BA30);
      if ((*(*(v35 - 8) + 48))(v13, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v56;
      v38 = v60;
      (*v58)(v56, v13, v60);
      v39 = *&v13[v36];
      v40 = v52;
      v41 = sub_24A77EDF8(v37);
      v43 = v42;
      (*v51)(v37, v38);
      if ((v43 & 1) == 0)
      {

        return;
      }

      sub_24A679170(0, &qword_27EF5ED10, 0x277D49678);
      v44 = *(*(v40 + 56) + 8 * v41);
      v45 = sub_24A82D5E4();

      v13 = v57;
      v20 = v59;
      if ((v45 & 1) == 0)
      {
        return;
      }
    }

    if (v47 <= v14 + 1)
    {
      v23 = v14 + 1;
    }

    else
    {
      v23 = v47;
    }

    v24 = v23 - 1;
    v22 = v53;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v47)
      {
        v46 = sub_24A6BBA94(&qword_27EF5ED08, &qword_24A83BA30);
        (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
        v59 = 0;
        v14 = v24;
        goto LABEL_17;
      }

      v26 = *(v48 + 8 * v25);
      ++v14;
      if (v26)
      {
        v59 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24A6A01A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v21 = a2;
  v4 = sub_24A82CDF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A82CE54();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegateQueue);
  v18[1] = a1;
  aBlock[4] = sub_24A6A09FC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6498;
  v13 = _Block_copy(aBlock);

  sub_24A82CE24();
  v22 = MEMORY[0x277D84F90];
  sub_24A679FDC(&qword_281515DB0, MEMORY[0x277D85198]);
  sub_24A6BBA94(&unk_27EF5D708, qword_24A833F40);
  sub_24A679544(qword_281514700, &unk_27EF5D708, qword_24A833F40);
  sub_24A82D6B4();
  MEMORY[0x24C21CE90](0, v12, v8, v13);
  _Block_release(v13);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v19);

  v14 = v20;
  swift_beginAccess();
  v15 = *(v14 + 280);
  v16 = *(v14 + 288);

  sub_24A69D570(v21, v15, v16);
}

uint64_t sub_24A6A04D0(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A6BBA94(&qword_27EF5DC18, &qword_24A836D50);
    sub_24A82D574();
    (*(v4 + 112))(a1, v7, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A6A0624(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v17 = *(v3 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v16 - v5;
  v18 = v4;
  sub_24A82D314();

  swift_getWitnessTable();
  v7 = sub_24A82D8C4();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A82CDC4();
  sub_24A6797D0(v8, qword_281518F88);

  v9 = sub_24A82CD94();
  v10 = sub_24A82D504();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = sub_24A82D2D4();

    _os_log_impl(&dword_24A675000, v9, v10, "FMImageCache: Preloading data for %ld requests.", v11, 0xCu);
    MEMORY[0x24C21E1D0](v11, -1, -1);
  }

  else
  {
  }

  if (!sub_24A82D2D4())
  {
  }

  for (i = 0; ; ++i)
  {
    v13 = sub_24A82D2B4();
    sub_24A82D264();
    if (v13)
    {
      (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * i, v2);
      v14 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    result = sub_24A82D864();
    if (v17 != 8)
    {
      break;
    }

    v18 = result;
    (*(v3 + 16))(v6, &v18, v2);
    swift_unknownObjectRelease();
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_15:
      __break(1u);
    }

LABEL_10:
    sub_24A77530C(v6, 0, 0);
    (*(v3 + 8))(v6, v2);
    if (v14 == sub_24A82D2D4())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A6A0968(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24A6A09B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A6A0A2C(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
    sub_24A6BBA94(&unk_27EF5E220, &unk_24A8343D0);
    sub_24A82D574();
    (*(v4 + 32))(a1, v7, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24A6A0B38@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  *a1 = *(v3 + 80);
}

void sub_24A6A0BD0(uint64_t *a1)
{
  v2 = MEMORY[0x24C21D990]();
  sub_24A6A0C28(a1);

  objc_autoreleasePoolPop(v2);
}

void sub_24A6A0C28(uint64_t *a1)
{
  v1 = OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isInitializing;
  if ((*(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_isInitializing) & 1) == 0)
  {
    v3 = a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts;
    v4 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 32);
    v5 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 40);
    v6 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_itemCounts + 48);
    v7 = type metadata accessor for FMIPInitClientRequest();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject() + qword_27EF78DF8;
    v11 = *(v3 + 1);
    *v10 = *v3;
    *(v10 + 16) = v11;
    *(v10 + 32) = v4;
    *(v10 + 40) = v5;
    *(v10 + 48) = v6;
    v12 = sub_24A6A183C(0x65696C4374696E69, 0xEA0000000000746ELL, 0, 0, 1);
    *(a1 + v1) = 1;
    v13 = sub_24A6A6450();
    v14 = (a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber);
    v15 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_ownerPhoneNumber + 8);
    *v14 = v13;
    v14[1] = v16;

    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v17 = sub_24A82CDC4();
    sub_24A6797D0(v17, qword_281518F88);

    v18 = sub_24A82CD94();
    v19 = sub_24A82D504();

    v49 = v12;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v50[0] = v21;
      *v20 = 136446210;
      v52 = *a1;
      sub_24A6BBA94(&qword_27EF5F108, &unk_24A83D580);
      v22 = sub_24A82D024();
      v24 = sub_24A68761C(v22, v23, v50);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_24A675000, v18, v19, "%{public}s: sending initClient request…", v20, 0xCu);
      sub_24A6876E8(v21);
      MEMORY[0x24C21E1D0](v21, -1, -1);
      MEMORY[0x24C21E1D0](v20, -1, -1);
    }

    v25 = sub_24A82CD94();
    v26 = sub_24A82D504();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = v28;
      *v27 = 136446466;
      *&v50[0] = *a1;
      sub_24A6BBA94(&qword_27EF5F108, &unk_24A83D580);
      v29 = sub_24A82D024();
      v31 = sub_24A68761C(v29, v30, &v52);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = v3[48];
      v33 = *(v3 + 1);
      v50[0] = *v3;
      v50[1] = v33;
      v50[2] = *(v3 + 2);
      v51 = v32;
      sub_24A6BBA94(&qword_27EF5F100, &qword_24A83D578);
      v34 = sub_24A82D624();
      v36 = sub_24A68761C(v34, v35, &v52);

      *(v27 + 14) = v36;
      _os_log_impl(&dword_24A675000, v25, v26, "%{public}s: initClient request itemCounts: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C21E1D0](v28, -1, -1);
      MEMORY[0x24C21E1D0](v27, -1, -1);
    }

    v37 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 24);
    v38 = *(a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController + 32);
    sub_24A67DF6C((a1 + OBJC_IVAR____TtC8FMIPCore24FMIPRefreshingController_interactionController), v37);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = *(v38 + 56);
    v41 = type metadata accessor for FMIPInitClientResponse();
    v40(v49, sub_24A7CE30C, v39, v41, v37, v38);

    v42 = sub_24A82CD94();
    v43 = sub_24A82D504();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v50[0] = v45;
      *v44 = 136446210;
      v52 = *a1;
      sub_24A6BBA94(&qword_27EF5F108, &unk_24A83D580);
      v46 = sub_24A82D024();
      v48 = sub_24A68761C(v46, v47, v50);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_24A675000, v42, v43, "%{public}s: received snapshot initClient response", v44, 0xCu);
      sub_24A6876E8(v45);
      MEMORY[0x24C21E1D0](v45, -1, -1);
      MEMORY[0x24C21E1D0](v44, -1, -1);
    }
  }
}

uint64_t sub_24A6A11BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for FMIPInitClientRequest()
{
  result = qword_281513FB0;
  if (!qword_281513FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A6A1240(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_24A82D244();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t type metadata accessor for FMIPBaseRequest()
{
  result = qword_281514380;
  if (!qword_281514380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A6A1378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_281515DC8 != -1)
    {
      swift_once();
    }

    v3 = sub_24A82CDC4();
    sub_24A6797D0(v3, qword_281518F88);
    oslog = sub_24A82CD94();
    v4 = sub_24A82D504();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24A675000, oslog, v4, "FMIPDeviceConnectionStateProvider: unable to get connected devices with error", v5, 2u);
      MEMORY[0x24C21E1D0](v5, -1, -1);
    }
  }

  else
  {
    v6 = *(a3 + 16);
    *(a3 + 16) = a1;

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (a1)
      {
        v8 = a1;
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }

      sub_24A6A15C8(v8);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24A6A14FC()
{
  result = sub_24A82CA34();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24A6A15C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24A82CE54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A82CDF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataManager);
  swift_beginAccess();
  v15 = *(v14 + 80);

  v17 = sub_24A6A1BA4(v16, a1);

  v18 = *(v2 + OBJC_IVAR____TtC8FMIPCore11FMIPManager_dataQueue);
  sub_24A82CDE4();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v17;
  aBlock[4] = sub_24A6A2B88;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A699BA0;
  aBlock[3] = &unk_285DC6EC0;
  v20 = _Block_copy(aBlock);

  sub_24A82CE24();
  MEMORY[0x24C21CE90](0, v8, v13, v20);
  _Block_release(v20);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

void *sub_24A6A183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v35 = a5;
  v34 = a4;
  v36 = a1;
  v9 = sub_24A82CB44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_27EF5D920;
  sub_24A6BBA94(&qword_27EF5D938, &qword_24A834CA0);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F98];
  *(v15 + 24) = 0;
  *(v15 + 16) = v16;
  *(v6 + v14) = v15;
  v17 = qword_27EF5D928;
  sub_24A6BBA94(&qword_27EF5D940, &qword_24A834CA8);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v16;
  *(v6 + v17) = v18;
  v19 = (v6 + qword_2815143B0);
  *v19 = 0;
  v19[1] = 0;
  *(v6 + qword_2815143A8) = v16;
  *(v6 + qword_2815143A0) = v16;
  sub_24A82C954();
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v20 = sub_24A82CDC4();
  sub_24A6797D0(v20, qword_281518F88);
  v21 = sub_24A82CD94();
  v22 = sub_24A82D504();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24A675000, v21, v22, "FMIPBaseEndpoint: initialized", v23, 2u);
    MEMORY[0x24C21E1D0](v23, -1, -1);
  }

  v24 = v19[1];
  v25 = v34;
  *v19 = a3;
  v19[1] = v25;

  v26 = 0xD000000000000017;
  v27 = "fmipmobile.icloud.com";
  if ((v35 & 1) == 0)
  {
    v26 = 0xD000000000000014;
    v27 = "X-Apple-Test-Application";
  }

  v28 = v27 | 0x8000000000000000;
  v29 = (v6 + qword_281514398);
  *v29 = v26;
  v29[1] = v28;
  v37 = v26;
  v38 = v28;

  MEMORY[0x24C21C9E0](v36, a2);

  v30 = sub_24A82CB64();
  (*(v10 + 104))(v13, *MEMORY[0x277D07CF0], v9);

  sub_24A82CB54();
  sub_24A6A2460();
  v31 = sub_24A6A43B8();
  (*(*v30 + qword_281518EC0 + 304))(v31);

  return v30;
}

void *sub_24A6A1BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A6BBA94(&unk_27EF5E0A0, &unk_24A8367D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v62 - v6;
  v7 = sub_24A6BBA94(&qword_27EF5DE20, &qword_24A8371A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v62 - v9;
  v10 = sub_24A6BBA94(&unk_27EF5E0B0, &qword_24A8338B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v62 - v12;
  v13 = type metadata accessor for FMIPDevice();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v68 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v62 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v62 = &v62 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  if (qword_281515DC8 != -1)
  {
    swift_once();
  }

  v27 = sub_24A82CDC4();
  sub_24A6797D0(v27, qword_281518F88);

  v28 = sub_24A82CD94();
  v29 = sub_24A82D504();

  v30 = os_log_type_enabled(v28, v29);
  v67 = a2;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v71 = v14;
    v32 = a1;
    v33 = v31;
    v34 = swift_slowAlloc();
    *&v77[0] = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x24C21CB60](a2, MEMORY[0x277D837D0]);
    v37 = sub_24A68761C(v35, v36, v77);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_24A675000, v28, v29, "FMIPRefreshingController: updating devices with discoverIds :%s", v33, 0xCu);
    sub_24A6876E8(v34);
    MEMORY[0x24C21E1D0](v34, -1, -1);
    v38 = v33;
    a1 = v32;
    v14 = v71;
    MEMORY[0x24C21E1D0](v38, -1, -1);
  }

  v39 = *(a1 + 16);
  v40 = v68;
  if (!v39)
  {
    return MEMORY[0x277D84F90];
  }

  v69 = 0;
  v41 = MEMORY[0x277D84F90];
  v71 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v42 = a1 + v71;
  v70 = *(v14 + 72);
  do
  {
    sub_24A69F134(v42, v26, type metadata accessor for FMIPDevice);
    v43 = sub_24A69F134(v26, v24, type metadata accessor for FMIPDevice);
    if ((v26[243] & 2) != 0)
    {
      v44 = *(v26 + 7);
      if (v44)
      {
        *&v77[0] = *(v26 + 6);
        *(&v77[0] + 1) = v44;
        MEMORY[0x28223BE20](v43);
        v61 = v77;
        v45 = v69;
        v46 = sub_24A7FD8A8(sub_24A753BC8, &v60, v67);
        v69 = v45;
        if (((v46 ^ ((v26[217] & 0x80) == 0)) & 1) == 0)
        {
          v47 = v46;
          sub_24A69F134(v26, v66, type metadata accessor for FMIPDevice);
          sub_24A68808C(v77);
          memcpy(v76, v77, sizeof(v76));
          memset(v75, 0, sizeof(v75));
          memset(v74, 0, sizeof(v74));
          v48 = type metadata accessor for FMIPItemGroup();
          memset(v73, 0, sizeof(v73));
          v49 = v63;
          (*(*(v48 - 8) + 56))(v63, 1, 1, v48);
          v50 = v47 & 1;
          v72 = 7;
          v51 = type metadata accessor for FMIPDeviceConnectedState(0);
          v52 = v64;
          (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
          v53 = type metadata accessor for FMIPDeviceLostModeMetadata();
          v54 = v65;
          (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
          v60 = v50;
          v55 = v62;
          FMIPDevice.init(device:historicalLocations:address:crowdSourcedLocation:location:shiftedLocation:crowdSourcedLocating:itemGroup:deviceWithYou:findingCapable:beaconType:deviceConnectedState:lostModeMetadata:)(v66, 0, v76, v75, v74, v73, 2, v49, v62, v60, 2, &v72, v52, v54);
          sub_24A69F2C4(v24, type metadata accessor for FMIPDevice);
          sub_24A6A2390(v55, v24, type metadata accessor for FMIPDevice);
        }

        v40 = v68;
      }
    }

    sub_24A69F134(v24, v40, type metadata accessor for FMIPDevice);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24A6924E0(0, v41[2] + 1, 1, v41);
    }

    v57 = v41[2];
    v56 = v41[3];
    if (v57 >= v56 >> 1)
    {
      v41 = sub_24A6924E0(v56 > 1, v57 + 1, 1, v41);
    }

    sub_24A69F2C4(v24, type metadata accessor for FMIPDevice);
    sub_24A69F2C4(v26, type metadata accessor for FMIPDevice);
    v41[2] = v57 + 1;
    v58 = v70;
    sub_24A6A2390(v40, v41 + v71 + v57 * v70, type metadata accessor for FMIPDevice);
    v42 += v58;
    --v39;
  }

  while (v39);
  return v41;
}

void sub_24A6A22D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24A6A2328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6A2390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A6A23F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24A6A2460()
{
  v1 = v0;
  v2 = qword_27EF5D928;
  v3 = *(v0 + qword_27EF5D928);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A2BC0(3157553, 0xE300000000000000, 0xD000000000000015, 0x800000024A845AE0, isUniquelyReferenced_nonNull_native);
  v6 = *(v1 + v2);

  os_unfair_lock_lock((v6 + 24));
  sub_24A6A3BBC((v6 + 16));
  os_unfair_lock_unlock((v6 + 24));

  v7 = *(v1 + v2);

  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));

  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A2BC0(3157555, 0xE300000000000000, 0xD000000000000014, 0x800000024A845B00, v9);
  v10 = *(v1 + v2);

  os_unfair_lock_lock((v10 + 24));
  sub_24A6A3BBC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));

  v11 = *(v1 + v2);

  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);

  os_unfair_lock_unlock((v11 + 24));

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A6A2BC0(0x72657665726F46, 0xE700000000000000, 0xD000000000000012, 0x800000024A845B20, v13);
  v14 = *(v1 + v2);

  os_unfair_lock_lock((v14 + 24));
  sub_24A6A3BBC((v14 + 16));
  os_unfair_lock_unlock((v14 + 24));

  v15 = [objc_opt_self() currentDevice];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 serverFriendlyDescription];

    if (v17)
    {
      v18 = sub_24A82CFC4();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = *(v1 + v2);

    os_unfair_lock_lock((v21 + 24));
    v22 = *(v21 + 16);

    os_unfair_lock_unlock((v21 + 24));

    v23 = sub_24A6A4184(v18, v20, 0xD000000000000011, 0x800000024A845B40);
    v24 = *(v1 + v2);
    MEMORY[0x28223BE20](v23);

    os_unfair_lock_lock((v24 + 24));
    sub_24A6A3BBC((v24 + 16));
    os_unfair_lock_unlock((v24 + 24));

    v25 = [objc_opt_self() sharedInstance];
    v26 = [v25 isInternalBuild];

    if (v26)
    {
      v27 = objc_opt_self();
      v28 = [v27 standardUserDefaults];
      v29 = sub_24A82CF94();
      v30 = [v28 BOOLForKey_];

      if (v30)
      {
        v31 = *(v1 + v2);

        os_unfair_lock_lock((v31 + 24));
        v32 = *(v31 + 16);

        os_unfair_lock_unlock((v31 + 24));

        v33 = swift_isUniquelyReferenced_nonNull_native();
        v34 = sub_24A6A2BC0(1702195828, 0xE400000000000000, 0xD000000000000018, 0x800000024A845BE0, v33);
        v35 = *(v1 + v2);
        MEMORY[0x28223BE20](v34);

        os_unfair_lock_lock((v35 + 24));
        sub_24A6A3BBC((v35 + 16));
        os_unfair_lock_unlock((v35 + 24));
      }

      v36 = [v27 standardUserDefaults];
      v37 = sub_24A82CF94();
      v38 = [v36 BOOLForKey_];

      if (v38)
      {
        v39 = *(v1 + v2);

        os_unfair_lock_lock((v39 + 24));
        v40 = *(v39 + 16);

        os_unfair_lock_unlock((v39 + 24));

        v41 = swift_isUniquelyReferenced_nonNull_native();
        v42 = sub_24A6A2BC0(1702195828, 0xE400000000000000, 0xD00000000000001ALL, 0x800000024A845BC0, v41);
        v43 = *(v1 + v2);
        MEMORY[0x28223BE20](v42);

        os_unfair_lock_lock((v43 + 24));
        sub_24A6A3BBC((v43 + 16));
        os_unfair_lock_unlock((v43 + 24));
      }
    }

    v44 = *(v1 + qword_2815143B0 + 8);
    if (v44)
    {
      v45 = *(v1 + qword_2815143B0);
      v46 = *(v1 + v2);
      v47 = *(v1 + qword_2815143B0 + 8);

      os_unfair_lock_lock((v46 + 24));
      v48 = *(v46 + 16);

      os_unfair_lock_unlock((v46 + 24));

      v49 = sub_24A6A4184(v45, v44, 0xD000000000000019, 0x800000024A845B60);
      v50 = *(v1 + v2);
      MEMORY[0x28223BE20](v49);

      os_unfair_lock_lock((v50 + 24));
      sub_24A6A3BBC((v50 + 16));
      os_unfair_lock_unlock((v50 + 24));
    }
  }

  else
  {
    __break(1u);
  }
}