unint64_t sub_1B7FCF568()
{
  result = qword_1EBA672C8;
  if (!qword_1EBA672C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA672C8);
  }

  return result;
}

char *sub_1B7FCF5BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
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

uint64_t getEnumTagSinglePayload for LegacyRefreshSchedule(unsigned __int8 *a1, unsigned int a2)
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

uint64_t Handle.init(withID:qualifiedIdentifier:serverID:idsStatus:dsid:expiresByGroupId:trackingTimestamp:hashedDSID:favoriteOrder:reachable:pushIdentifiers:prettyName:contactIdentifier:siblingIdentifiers:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, char *a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v28 = *a5;
  v29 = sub_1B80C90FC();
  v49 = v30;

  if (a2)
  {
    a1 = sub_1B80C90FC();
    v48 = v31;
  }

  else
  {
    v48 = 0;
  }

  v32 = *(a21 + 16);
  if (v32)
  {
    v44 = v29;
    v45 = v28;
    v46 = a3;
    v47 = a4;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v32, 0);
    v33 = v50;
    v34 = (a21 + 40);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      v37 = sub_1B80C90FC();
      v39 = v38;
      v41 = *(v50 + 16);
      v40 = *(v50 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1B7FCF988((v40 > 1), v41 + 1, 1);
      }

      *(v50 + 16) = v41 + 1;
      v42 = v50 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v34 += 2;
      --v32;
    }

    while (v32);

    a3 = v46;
    a4 = v47;
    v28 = v45;
    v29 = v44;
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  *a7 = v29;
  *(a7 + 8) = v49;
  *(a7 + 16) = a1;
  *(a7 + 24) = v48;
  *(a7 + 32) = v28;
  *(a7 + 40) = a6;
  *(a7 + 48) = a9;
  *(a7 + 56) = a10;
  *(a7 + 64) = a8;
  *(a7 + 72) = a11;
  *(a7 + 80) = a12;
  *(a7 + 88) = a13;
  *(a7 + 96) = a14;
  *(a7 + 104) = a15;
  *(a7 + 112) = a16;
  *(a7 + 120) = a17;
  *(a7 + 128) = a18;
  *(a7 + 136) = a19;
  *(a7 + 144) = a20;
  *(a7 + 152) = v33;
  *(a7 + 160) = a3;
  *(a7 + 168) = a4;
  return result;
}

char *sub_1B7FCF988(char *a1, int64_t a2, char a3)
{
  result = sub_1B7FCF5BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for LegacyRefreshSchedule(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B7FCFA58()
{
  result = qword_1ED8DBBC8;
  if (!qword_1ED8DBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBC8);
  }

  return result;
}

unint64_t sub_1B7FCFAAC()
{
  result = qword_1ED8DCA30;
  if (!qword_1ED8DCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA30);
  }

  return result;
}

unint64_t sub_1B7FCFB00()
{
  result = qword_1ED8DBBC0;
  if (!qword_1ED8DBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBC0);
  }

  return result;
}

uint64_t sub_1B7FCFB68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

FindMyLocate::LocatePriority_optional __swiftcall LocatePriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B7FCFC2C()
{
  sub_1B80C993C();
  Friend.hash(into:)();
  return sub_1B80C997C();
}

unint64_t sub_1B7FCFC68()
{
  result = qword_1ED8DBBD0;
  if (!qword_1ED8DBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBD0);
  }

  return result;
}

uint64_t Friend.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C90FC();
  sub_1B80C911C();

  *(v0 + 176);
  *(v0 + 176);
  *(v0 + 176);
  sub_1B80C911C();
}

unint64_t sub_1B7FCFDE8()
{
  result = qword_1ED8DBB90;
  if (!qword_1ED8DBB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67100, &unk_1B80DA058);
    sub_1B809339C();
    sub_1B7FBADF0(&qword_1ED8DBBD8, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBB90);
  }

  return result;
}

FindMyLocate::IDSStatus_optional __swiftcall IDSStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if ((rawValue + 1) < 4)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s12FindMyLocate6FriendV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  v28[8] = *(a1 + 128);
  v28[9] = v4;
  v28[10] = *(a1 + 160);
  v5 = *(a1 + 80);
  v28[4] = *(a1 + 64);
  v28[5] = v5;
  v6 = *(a1 + 112);
  v28[6] = *(a1 + 96);
  v28[7] = v6;
  v7 = *(a1 + 16);
  v28[0] = *a1;
  v28[1] = v7;
  v8 = *(a1 + 48);
  v28[2] = *(a1 + 32);
  v28[3] = v8;
  v9 = *(a2 + 144);
  v29[8] = *(a2 + 128);
  v29[9] = v9;
  v29[10] = *(a2 + 160);
  v10 = *(a2 + 80);
  v29[4] = *(a2 + 64);
  v29[5] = v10;
  v11 = *(a2 + 112);
  v29[6] = *(a2 + 96);
  v29[7] = v11;
  v12 = *(a2 + 16);
  v29[0] = *a2;
  v29[1] = v12;
  v13 = *(a2 + 48);
  v29[2] = *(a2 + 32);
  v29[3] = v13;
  v14 = sub_1B80C90FC();
  v16 = v15;
  if (v14 == sub_1B80C90FC() && v16 == v17)
  {
    sub_1B7FC8DA4(v28, v27);
    sub_1B7FC8DA4(v29, v27);

    sub_1B7FCAD28(v29);
    sub_1B7FCAD28(v28);
    goto LABEL_5;
  }

  v18 = sub_1B80C981C();
  sub_1B7FC8DA4(v28, v27);
  sub_1B7FC8DA4(v29, v27);

  sub_1B7FCAD28(v29);
  sub_1B7FCAD28(v28);
  v19 = 0;
  if (v18)
  {
LABEL_5:
    v20 = 0xE900000000000072;
    v21 = 0x65776F6C6C6F662ELL;
    v22 = *(a1 + 176);
    if (v22 <= 1)
    {
      v23 = 0x65776F6C6C6F662ELL;
      v24 = 0xE900000000000072;
      if (v22)
      {
        v23 = 0x69776F6C6C6F662ELL;
        v24 = 0xEA0000000000676ELL;
      }
    }

    else if (v22 == 2)
    {
      v23 = 0x466572757475662ELL;
      v24 = 0xEF7265776F6C6C6FLL;
    }

    else if (v22 == 3)
    {
      v23 = 0xD000000000000010;
      v24 = 0x80000001B80CBD30;
    }

    else
    {
      v23 = 0x676E69646E65702ELL;
      v24 = 0xED0000726566664FLL;
    }

    v25 = *(a2 + 176);
    if (v25 <= 1)
    {
      if (*(a2 + 176))
      {
        v20 = 0xEA0000000000676ELL;
        if (v23 != 0x69776F6C6C6F662ELL)
        {
          goto LABEL_26;
        }

LABEL_23:
        if (v24 == v20)
        {
          v19 = 1;
LABEL_27:

          return v19 & 1;
        }

LABEL_26:
        v19 = sub_1B80C981C();
        goto LABEL_27;
      }
    }

    else
    {
      if (v25 != 2)
      {
        if (v25 == 3)
        {
          v20 = 0x80000001B80CBD30;
          if (v23 != 0xD000000000000010)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v20 = 0xED0000726566664FLL;
          if (v23 != 0x676E69646E65702ELL)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_23;
      }

      v21 = 0x466572757475662ELL;
      v20 = 0xEF7265776F6C6C6FLL;
    }

    if (v23 != v21)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  return v19 & 1;
}

unint64_t sub_1B7FD01E0()
{
  result = qword_1ED8DC480;
  if (!qword_1ED8DC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC480);
  }

  return result;
}

uint64_t sub_1B7FD0238(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7041794D646E6966 && a2 == 0xE900000000000070;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xEB00000000707041 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B7FD0358()
{
  result = qword_1ED8DBB98;
  if (!qword_1ED8DBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBB98);
  }

  return result;
}

unint64_t sub_1B7FD03B0()
{
  result = qword_1ED8DC3F8;
  if (!qword_1ED8DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3F8);
  }

  return result;
}

uint64_t sub_1B7FD0434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6516856 && a2 == 0xE300000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

unint64_t sub_1B7FD0518()
{
  result = qword_1ED8DBBB0;
  if (!qword_1ED8DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LegacyRefreshCommandReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1B7FD0628()
{
  result = qword_1ED8DC3A0;
  if (!qword_1ED8DC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3A0);
  }

  return result;
}

uint64_t ClientID.connectionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ClientID();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1B7FD06B4(uint64_t a1)
{
  v2 = type metadata accessor for ClientID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7FD0710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FD0774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t HandleType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670C8, &qword_1B80DA010);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670D0, &qword_1B80DA018);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670D8, &qword_1B80DA020);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670E0, &qword_1B80DA028);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670E8, &qword_1B80DA030);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA670F0, &qword_1B80DA038);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1B7FD1604();
  v26 = v69;
  sub_1B80C99BC();
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
  v32 = sub_1B80C973C();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_1B7FD12C4();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_1B80C955C();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
    *v41 = &type metadata for HandleType;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
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
      sub_1B7FD1270();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_1B80C968C();
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
      sub_1B7FD121C();
      v45 = v54;
      sub_1B80C968C();
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
    sub_1B80931E4();
    v46 = v31;
    v47 = v54;
    sub_1B80C968C();
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
    sub_1B809313C();
    v49 = v64;
    v50 = v54;
    sub_1B80C968C();
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
    return __swift_destroy_boxed_opaque_existential_0(v43);
  }

  v75 = 3;
  sub_1B8093190();
  v38 = v54;
  sub_1B80C968C();
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
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

unint64_t sub_1B7FD10A0()
{
  v1 = 0x776F6C6C6168732ELL;
  v2 = 0x6576696C2ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1B7FD112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7FD1388(a1, a2);
  *a3 = result;
  return result;
}

FindMyLocate::GroupID_optional __swiftcall GroupID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B7FD11C8()
{
  result = qword_1EBA67318;
  if (!qword_1EBA67318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67318);
  }

  return result;
}

unint64_t sub_1B7FD121C()
{
  result = qword_1ED8DCD80;
  if (!qword_1ED8DCD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCD80);
  }

  return result;
}

unint64_t sub_1B7FD1270()
{
  result = qword_1ED8DCD78;
  if (!qword_1ED8DCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCD78);
  }

  return result;
}

uint64_t sub_1B7FD12C4()
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

uint64_t getEnumTagSinglePayload for DarwinNotifications(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B7FD1388(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265776F6C6C6F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69776F6C6C6F66 && a2 == 0xE900000000000067 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F46657275747566 && a2 == 0xEE007265776F6C6CLL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F46657275747566 && a2 == 0xEF676E69776F6C6CLL || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F676E69646E6570 && a2 == 0xEC00000072656666)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t storeEnumTagSinglePayload for DarwinNotifications(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B7FD1604()
{
  result = qword_1ED8DD4B0;
  if (!qword_1ED8DD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4B0);
  }

  return result;
}

uint64_t sub_1B7FD1658()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t _s12FindMyLocate8ClientIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676F8, &unk_1B80DEC90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = type metadata accessor for ClientID();
  v18 = *(v17 + 20);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if ((v19 & 1) == 0)
  {
    if ((v20 & 1) == 0)
    {
      v22 = *(v17 + 28);
      v23 = *(v13 + 48);
      sub_1B7FCB390(a1 + v22, v16);
      sub_1B7FCB390(a2 + v22, &v16[v23]);
      v24 = *(v5 + 48);
      if (v24(v16, 1, v4) == 1)
      {
        if (v24(&v16[v23], 1, v4) == 1)
        {
          sub_1B7FB86D4(v16, &qword_1EBA667B0, &qword_1B80D68E8);
          v25 = 1;
          return v25 & 1;
        }
      }

      else
      {
        sub_1B7FCB390(v16, v12);
        if (v24(&v16[v23], 1, v4) != 1)
        {
          (*(v5 + 32))(v8, &v16[v23], v4);
          sub_1B7FCE654(&qword_1EBA65DB0, MEMORY[0x1E69695A8]);
          v25 = sub_1B80C908C();
          v26 = *(v5 + 8);
          v26(v8, v4);
          v26(v12, v4);
          sub_1B7FB86D4(v16, &qword_1EBA667B0, &qword_1B80D68E8);
          return v25 & 1;
        }

        (*(v5 + 8))(v12, v4);
      }

      sub_1B7FB86D4(v16, &qword_1EBA676F8, &unk_1B80DEC90);
    }

LABEL_13:
    v25 = 0;
    return v25 & 1;
  }

  if (!v20)
  {
    goto LABEL_13;
  }

  return _s12FindMyLocate5FenceV2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t ClientID.xpcConnectionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ClientID() + 28);

  return sub_1B7FCB390(v3, a1);
}

uint64_t ClientID.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v17 - v3;
  v18 = 0x4449746E65696C43;
  v19 = 0xE800000000000000;
  v5 = type metadata accessor for ClientID();
  v6 = (v0 + v5[6]);
  if (v6[1])
  {
    v7 = *v6;
    v17[0] = 40;
    v17[1] = 0xE100000000000000;
    MEMORY[0x1B8CB7A40](v7);
    MEMORY[0x1B8CB7A40](v17[0], v17[1]);
  }

  v8 = MEMORY[0x1B8CB7A40](8250, 0xE200000000000000);
  if (*(v0 + v5[5]))
  {
    strcpy(v17, "[Background ");
    BYTE5(v17[1]) = 0;
    HIWORD(v17[1]) = -5120;
    v9 = MEMORY[0x1B8CB7760](v8);
    MEMORY[0x1B8CB7A40](v9);
  }

  else
  {
    v17[0] = 0x204350585BLL;
    v17[1] = 0xE500000000000000;
    sub_1B7FCB390(v0 + v5[7], v4);
    v10 = sub_1B80C8E9C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v4, 1, v10) == 1)
    {
      sub_1B7FB86D4(v4, &qword_1EBA667B0, &qword_1B80D68E8);
      v12 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    else
    {
      v14 = MEMORY[0x1B8CB7760]();
      v12 = v15;
      (*(v11 + 8))(v4, v10);
      v13 = v14;
    }

    MEMORY[0x1B8CB7A40](v13, v12);
  }

  MEMORY[0x1B8CB7A40](93, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](v17[0], v17[1]);

  return v18;
}

uint64_t ClientID.hash(into:)()
{
  v1 = sub_1B80C8E9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  v10 = type metadata accessor for ClientID();
  if (*(v0 + *(v10 + 20)))
  {
    sub_1B7FCE654(&qword_1EBA65A68, MEMORY[0x1E69695A8]);

    return sub_1B80C905C();
  }

  else
  {
    sub_1B7FCB390(v0 + *(v10 + 28), v9);
    if ((*(v2 + 48))(v9, 1, v1) == 1)
    {
      return sub_1B80C995C();
    }

    else
    {
      (*(v2 + 32))(v5, v9, v1);
      sub_1B80C995C();
      sub_1B7FCE654(&qword_1EBA65A68, MEMORY[0x1E69695A8]);
      sub_1B80C905C();
      return (*(v2 + 8))(v5, v1);
    }
  }
}

uint64_t sub_1B7FD1F7C()
{
  sub_1B80C993C();
  ClientID.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B7FD1FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B80C8E9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B7FD2138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B80C8E9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t Handle.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B7FD22A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  sub_1B80C90FC();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B7FD230C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1B80C90FC();
  v8 = v7;
  if (v6 == sub_1B80C90FC() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

uint64_t sub_1B7FD23B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD23F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD24A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7FD2534()
{
  v1 = type metadata accessor for ReverseGeocodingRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v0 + v3 + *(v1 + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for Location();
  v11 = (v8 + *(v10 + 20));
  if (v11[1] != 1)
  {

    v12 = v11[3];

    v13 = v11[5];

    v14 = v11[7];

    v15 = v11[9];

    v16 = v11[11];

    v17 = v11[12];

    v18 = v11[13];

    v19 = v11[15];

    v20 = v11[17];

    v21 = v11[19];

    v22 = v11[21];

    v23 = v11[23];
  }

  v24 = *(v8 + *(v10 + 36));

  v25 = *(v1 + 24);
  v26 = sub_1B80C8EDC();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v6 + v25, 1, v26))
  {
    (*(v27 + 8))(v6 + v25, v26);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B7FD274C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Location();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B7FD287C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Location();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7FD29BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FenceResponse(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7FD2A28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FenceResponse(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B7FD2AA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD2AE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD2B28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B7FD2C14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7FD2CEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD2D3C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD2D78()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  v10 = v0[21];

  v11 = v0[22];

  v12 = v0[24];

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_1B7FD2E0C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD2E48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[25];

  v14 = v0[27];

  v15 = v0[29];

  return MEMORY[0x1EEE6BDD0](v0, 248, 7);
}

uint64_t sub_1B7FD2EF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[25];

  v14 = v0[27];

  v15 = v0[29];

  v16 = v0[31];

  v17 = v0[34];

  v18 = v0[35];

  v19 = v0[38];

  v20 = v0[40];

  v21 = v0[42];

  v22 = v0[44];

  v23 = v0[46];

  v24 = v0[47];

  v25 = v0[49];

  return MEMORY[0x1EEE6BDD0](v0, 408, 7);
}

uint64_t sub_1B7FD2FE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[25];

  v14 = v0[27];

  v15 = v0[31];

  return MEMORY[0x1EEE6BDD0](v0, 272, 7);
}

uint64_t sub_1B7FD3090()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7FD30E0()
{
  v1 = type metadata accessor for FriendshipRequest();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[5]);

  v9 = (v0 + v3 + v1[6]);
  if (v9[1])
  {

    v10 = v9[3];

    v11 = v9[6];

    v12 = v9[7];

    v13 = v9[10];

    v14 = v9[12];

    v15 = v9[14];

    v16 = v9[16];

    v17 = v9[18];

    v18 = v9[19];

    v19 = v9[21];
  }

  v20 = v1[7];
  v21 = sub_1B80C8E2C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v6 + v20, 1, v21))
  {
    (*(v22 + 8))(v6 + v20, v21);
  }

  v23 = *(v6 + v1[10] + 24);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FD3300()
{
  sub_1B7FC3CCC(v0[2], v0[3]);
  v1 = v0[4];

  v2 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD3348()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD3438()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD3470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  v7 = (type metadata accessor for ClientID() - 8);
  v8 = *(*v7 + 80);
  v9 = (v6 + v8 + 32) & ~v8;
  v19 = *(*v7 + 64);
  v10 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = *(v0 + v6 + 24);

  v13 = sub_1B80C8E9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v0 + v9, v13);
  v16 = *(v0 + v9 + v7[8] + 8);

  v17 = v7[9];
  if (!(*(v14 + 48))(v0 + v9 + v17, 1, v13))
  {
    v15(v0 + v9 + v17, v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v19 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v8 | 7);
}

uint64_t sub_1B7FD3690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B7FD3784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ClientID() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v16 = *(*v6 + 64);
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_1B80C8E9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v0 + v8, v10);
  v13 = *(v0 + v8 + v6[8] + 8);

  v14 = v6[9];
  if (!(*(v11 + 48))(v0 + v8 + v14, 1, v10))
  {
    v12(v0 + v8 + v14, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v16 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1B7FD397C()
{
  v1 = (type metadata accessor for ClientID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_1B80C8E9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3, v6);
  v9 = *(v0 + v3 + v1[8] + 8);

  v10 = v1[9];
  if (!(*(v7 + 48))(v0 + v3 + v10, 1, v6))
  {
    v8(v0 + v3 + v10, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FD3ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for ClientID() - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 9) & ~v7;
  v17 = *(*v6 + 64);
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = sub_1B80C8E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v0 + v8, v11);
  v14 = *(v0 + v8 + v6[8] + 8);

  v15 = v6[9];
  if (!(*(v12 + 48))(v0 + v8 + v15, 1, v11))
  {
    v13(v0 + v8 + v15, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v17 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_1B7FD3CE8()
{
  v1 = (type metadata accessor for ClientID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = sub_1B80C8E9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3, v7);
  v10 = *(v0 + v3 + v1[8] + 8);

  v11 = v1[9];
  if (!(*(v8 + 48))(v0 + v3 + v11, 1, v7))
  {
    v9(v0 + v3 + v11, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B7FD3E44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (type metadata accessor for ClientID() - 8);
  v9 = *(*v8 + 80);
  v10 = (v7 + v9 + 33) & ~v9;
  v20 = *(*v8 + 64);
  v11 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v6);

  v13 = *(v0 + v7 + 24);

  v14 = sub_1B80C8E9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 8);
  v16(v0 + v10, v14);
  v17 = *(v0 + v10 + v8[8] + 8);

  v18 = v8[9];
  if (!(*(v15 + 48))(v0 + v10 + v18, 1, v14))
  {
    v16(v0 + v10 + v18, v14);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v20 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v9 | 7);
}

uint64_t sub_1B7FD4068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 24);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B7FD4160()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 77, 7);
}

uint64_t sub_1B7FD41A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (type metadata accessor for ClientID() - 8);
  v8 = *(*v7 + 80);
  v9 = (v6 + v8 + 11) & ~v8;
  v19 = *(*v7 + 64);
  v10 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5 + 24);

  v12 = *(v0 + v6);

  v13 = sub_1B80C8E9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(v0 + v9, v13);
  v16 = *(v0 + v9 + v7[8] + 8);

  v17 = v7[9];
  if (!(*(v14 + 48))(v0 + v9 + v17, 1, v13))
  {
    v15(v0 + v9 + v17, v13);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v19 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v8 | 7);
}

uint64_t sub_1B7FD43C8()
{
  v1 = type metadata accessor for Location();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 216) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 8);

  v9 = *(v0 + 11);

  v10 = *(v0 + 12);

  v11 = *(v0 + 15);

  v12 = *(v0 + 17);

  v13 = *(v0 + 19);

  v14 = *(v0 + 21);

  v15 = *(v0 + 23);

  v16 = *(v0 + 24);

  v17 = *(v0 + 26);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v18 - 8) + 8))(&v0[v3], v18);
  v19 = &v0[v3 + *(v1 + 20)];
  if (*(v19 + 1) != 1)
  {

    v20 = *(v19 + 3);

    v21 = *(v19 + 5);

    v22 = *(v19 + 7);

    v23 = *(v19 + 9);

    v24 = *(v19 + 11);

    v25 = *(v19 + 12);

    v26 = *(v19 + 13);

    v27 = *(v19 + 15);

    v28 = *(v19 + 17);

    v29 = *(v19 + 19);

    v30 = *(v19 + 21);

    v31 = *(v19 + 23);
  }

  v32 = *&v0[v3 + *(v1 + 36)];

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B7FD45A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD46C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD46FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B7FD474C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD4788()
{
  v1 = (type metadata accessor for ClientID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(&v0[v3], v9);
  v12 = *&v0[v3 + 8 + v1[8]];

  v13 = v1[9];
  if (!(*(v10 + 48))(&v0[v3 + v13], 1, v9))
  {
    v11(&v0[v3 + v13], v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1B7FD48FC()
{
  sub_1B7FC3CCC(v0[2], v0[3]);
  v1 = v0[5];

  v2 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD4948()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD4980()
{
  v1 = (type metadata accessor for ClientID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(&v0[v3], v9);
  v12 = *&v0[v3 + 8 + v1[8]];

  v13 = v1[9];
  if (!(*(v10 + 48))(&v0[v3 + v13], 1, v9))
  {
    v11(&v0[v3 + v13], v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FD4AF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7FD4B48()
{
  v1 = (type metadata accessor for ClientID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 101) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 11);

  v10 = sub_1B80C8E9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(&v0[v3], v10);
  v13 = *&v0[v3 + 8 + v1[8]];

  v14 = v1[9];
  if (!(*(v11 + 48))(&v0[v3 + v14], 1, v10))
  {
    v12(&v0[v3 + v14], v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FD4DA8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD4DE8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD4E20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B7FD4EA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD4ED8()
{
  v1 = v0[4];

  sub_1B7FC3CCC(v0[5], v0[6]);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD4F18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD4F50()
{
  v1 = v0[4];

  v2 = v0[6];
  if (v2 >> 60 != 15)
  {
    sub_1B7FC3CCC(v0[5], v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7FD4FA0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FD5070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B7FD51AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66020, &qword_1B80D2A10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B7FD52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FriendshipRequest();
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

uint64_t sub_1B7FD53B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FriendshipRequest();
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

uint64_t sub_1B7FD54FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1B80C8FCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B7FD5574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1B80C8FCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B7FD5618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Fence.Schedule(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1B80C8F9C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B7FD5708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Fence.Schedule(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1B80C8F9C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B7FD5840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
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

uint64_t sub_1B7FD5908(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
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

uint64_t sub_1B7FD59CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7FD5A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B7FD5AC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7FD5B54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FD5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Location();
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
      v13 = sub_1B80C8E2C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B7FD5CC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Location();
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
      v13 = sub_1B80C8E2C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7FD5DE4()
{
  v1 = type metadata accessor for ReverseGeocodingRequest();
  v2 = *(*(v1 - 8) + 80);
  v32 = *(*(v1 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v31 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = v0 + ((v2 + 24) & ~v2);
  v8 = *(v7 + 8);

  v9 = v7 + *(v1 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = type metadata accessor for Location();
  v12 = (v9 + *(v11 + 20));
  if (v12[1] != 1)
  {

    v13 = v12[3];

    v14 = v12[5];

    v15 = v12[7];

    v16 = v12[9];

    v17 = v12[11];

    v18 = v12[12];

    v19 = v12[13];

    v20 = v12[15];

    v21 = v12[17];

    v22 = v12[19];

    v23 = v12[21];

    v24 = v12[23];
  }

  v25 = *(v9 + *(v11 + 36));

  v26 = *(v1 + 24);
  v27 = sub_1B80C8EDC();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v7 + v26, 1, v27))
  {
    (*(v28 + 8))(v7 + v26, v27);
  }

  v29 = (((v2 + 24) & ~v2) + v32 + v5) & ~v5;
  (*(v4 + 8))(v0 + v29, v3);

  return MEMORY[0x1EEE6BDD0](v0, v29 + v31, v2 | v5 | 7);
}

uint64_t sub_1B7FD60A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD60E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7FD615C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67498, qword_1B80DD250);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7FD61D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67498, qword_1B80DD250);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B7FD6294()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  __swift_allocate_value_buffer(v0, qword_1EBA65A78);
  v1 = __swift_project_value_buffer(v0, qword_1EBA65A78);
  v2 = sub_1B80C8E2C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static Date.testSetNow(date:)(uint64_t a1)
{
  if (MEMORY[0x1B8CB72B0]())
  {
    if (qword_1EBA65A70 != -1)
    {
      swift_once();
    }

    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v3 = __swift_project_value_buffer(v2, qword_1EBA65A78);
    swift_beginAccess();
    sub_1B7FD6470(a1, v3);
    return swift_endAccess();
  }

  else
  {
    result = sub_1B80C962C();
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B7FD6470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t static Date.trustedNow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-v5];
  if (MEMORY[0x1B8CB72B0](v4))
  {
    if (qword_1EBA65A70 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_1EBA65A78);
    swift_beginAccess();
    sub_1B7FD6818(v7, v6);
    v8 = sub_1B80C8E2C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) != 1)
    {
      return (*(v9 + 32))(a1, v6, v8);
    }

    sub_1B7FB86D4(v6, &unk_1EBA65FD0, &unk_1B80D1920);
  }

  else
  {
    sub_1B80C8B3C();
    if (v17)
    {
      if ((swift_dynamicCast() & 1) != 0 && v15[15] == 1)
      {
        return sub_1B80C8FDC();
      }
    }

    else
    {
      sub_1B7FB86D4(v16, &qword_1EBA65AE0, &unk_1B80D39E0);
    }

    if (qword_1ED8DBC60 != -1)
    {
      swift_once();
    }

    v11 = sub_1B80C900C();
    __swift_project_value_buffer(v11, qword_1ED8DDE18);
    v12 = sub_1B80C8FEC();
    v13 = sub_1B80C93EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B7FB5000, v12, v13, "Queried trustedNow but falling back to normal Date()", v14, 2u);
      MEMORY[0x1B8CB8970](v14, -1, -1);
    }
  }

  return sub_1B80C8E1C();
}

uint64_t sub_1B7FD67A8()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDE18);
  __swift_project_value_buffer(v0, qword_1ED8DDE18);
  return sub_1B80C8FFC();
}

uint64_t sub_1B7FD6818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Fence.TimeOfDay(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Fence.TimeOfDay(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7FD68FC(uint64_t a1, int a2)
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

uint64_t sub_1B7FD691C(uint64_t result, int a2, int a3)
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

FindMyLocate::DarwinNotifications_optional __swiftcall DarwinNotifications.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DarwinNotifications.rawValue.getter()
{
  v1 = 0xD00000000000001DLL;
  v2 = *v0;
  v3 = 0xD000000000000020;
  v4 = 0xD000000000000023;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_1B7FD6A3C()
{
  result = qword_1EBA65D30;
  if (!qword_1EBA65D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65D30);
  }

  return result;
}

uint64_t sub_1B7FD6A90()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B7FD6B60()
{
  *v0;
  *v0;
  *v0;
  sub_1B80C911C();
}

uint64_t sub_1B7FD6C1C()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B7FD6CF4(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = *v1;
  v4 = &off_1B80CB290;
  v5 = "FMLFollowersChangedNotification";
  v6 = 0xD000000000000020;
  v7 = "ngedNotification";
  v8 = 0xD000000000000023;
  if (v3 != 3)
  {
    v8 = 0xD00000000000001ELL;
    v7 = "ializedNotification";
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
    v4 = "FMLDevicesChangedNotification";
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v2 = v6;
    v9 = v5;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t KoreaFeatureFlag.hashValue.getter()
{
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](0);
  return sub_1B80C997C();
}

uint64_t sub_1B7FD6E38()
{
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](0);
  return sub_1B80C997C();
}

uint64_t sub_1B7FD6E7C()
{
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](0);
  return sub_1B80C997C();
}

unint64_t sub_1B7FD6EC0()
{
  result = qword_1EBA65D38;
  if (!qword_1EBA65D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65D38);
  }

  return result;
}

uint64_t sub_1B7FD6FA4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, a3, a4);
  return sub_1B80C943C();
}

void *NINearbyObject.dataRepresentation.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1B7FD7074();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B7FD7074()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_1B80C8D3C();
  }

  else
  {
    v3 = v2;
    sub_1B80C8D0C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void *NIDiscoveryToken.dataRepresentation.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  result = NINearbyObject.dataRepresentation.getter();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7FD7198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B80C901C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + OBJC_IVAR____TtC12FindMyLocate15LocationShifter_shifter);
  v12 = a1 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location;
  v13 = type metadata accessor for Location();
  v14 = *(v12 + v13[10]);
  v15 = *(v12 + v13[11]);
  v16 = *(v12 + v13[8]);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v28 = sub_1B7FD7880;
  v29 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1B7FD788C;
  v27 = &block_descriptor;
  v18 = _Block_copy(&aBlock);

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v28 = sub_1B7FD7B2C;
  v29 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1B7FCE114;
  v27 = &block_descriptor_6;
  v20 = _Block_copy(&aBlock);

  sub_1B7FD7B34();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E7F98], v7);
  v21 = sub_1B80C944C();
  (*(v8 + 8))(v11, v7);
  [v23 shiftCoordinate:v18 accuracy:0 withCompletionHandler:v20 mustGoToNetworkCallback:v21 errorHandler:v14 callbackQueue:{v15, v16}];

  _Block_release(v20);
  _Block_release(v18);
}

uint64_t sub_1B7FD7464(uint64_t a1, void (*a2)(char *, void), double a3, double a4, double a5)
{
  v56 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for Location();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v19 - 8) + 16))(v17, v18, v19);
  v20 = (v18 + v13[5]);
  v21 = v20[1];
  v22 = v20[3];
  v59 = v20[2];
  v23 = v59;
  v60 = v22;
  v24 = v20[5];
  v25 = v20[7];
  v63 = v20[6];
  v26 = v63;
  v64 = v25;
  v27 = v20[5];
  v29 = v20[3];
  v61 = v20[4];
  v28 = v61;
  v62 = v27;
  v30 = v20[9];
  v31 = v20[11];
  v67 = v20[10];
  v32 = v67;
  v68 = v31;
  v33 = v20[9];
  v34 = v20[7];
  v65 = v20[8];
  v66 = v33;
  v35 = v20[1];
  v58[0] = *v20;
  v36 = v58[0];
  v58[1] = v35;
  *&v33 = *(v18 + v13[6]);
  v37 = v13[7];
  v38 = v13[9];
  *&v35 = *(v18 + v13[12]);
  v39 = *(v18 + v13[13]);
  v40 = v13[14];
  v41 = v13[15];
  v42 = v13[16];
  v43 = &v17[v13[5]];
  *(v43 + 8) = v65;
  *(v43 + 9) = v30;
  v44 = v20[11];
  *(v43 + 10) = v32;
  *(v43 + 11) = v44;
  *&v44 = *(v18 + v40);
  *(v43 + 4) = v28;
  *(v43 + 5) = v24;
  v45 = *(v18 + v37);
  v46 = *(v18 + v38);
  *(v43 + 6) = v26;
  *(v43 + 7) = v34;
  LOBYTE(v37) = *(v18 + v41);
  LOBYTE(v38) = *(v18 + v42);
  *v43 = v36;
  *(v43 + 1) = v21;
  *(v43 + 2) = v23;
  *(v43 + 3) = v29;
  *&v17[v13[6]] = v33;
  *&v17[v13[7]] = v45;
  *&v17[v13[8]] = a5;
  *&v17[v13[9]] = v46;
  *&v17[v13[10]] = a3;
  *&v17[v13[11]] = a4;
  *&v17[v13[12]] = v35;
  *&v17[v13[13]] = v39;
  *&v17[v13[14]] = v44;
  v17[v13[15]] = v37;
  v17[v13[16]] = v38;
  sub_1B7FD7BE8(v58, v57);
  v47 = qword_1EBA65AB0;

  if (v47 != -1)
  {
    swift_once();
  }

  v48 = sub_1B80C900C();
  __swift_project_value_buffer(v48, qword_1EBA7ACD8);

  v49 = sub_1B80C8FEC();
  v50 = sub_1B80C941C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v14;
    v53 = v52;
    v57[0] = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1B7FB84FC(*(a1 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier), *(a1 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier + 8), v57);
    _os_log_impl(&dword_1B7FB5000, v49, v50, "LocationShifter: shifting completed %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    v14 = v55;
    MEMORY[0x1B8CB8970](v53, -1, -1);
    MEMORY[0x1B8CB8970](v51, -1, -1);
  }

  sub_1B7FD7C58(v17, v12);
  (*(v14 + 56))(v12, 0, 1, v13);
  v56(v12, 0);
  sub_1B7FD7B80(v12);
  return sub_1B7FD7CBC(v17);
}

uint64_t sub_1B7FD788C(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

uint64_t sub_1B7FD78F8(void *a1, void (*a2)(char *, void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  if (qword_1EBA65AB0 != -1)
  {
    swift_once();
  }

  v8 = sub_1B80C900C();
  __swift_project_value_buffer(v8, qword_1EBA7ACD8);
  v9 = a1;
  v10 = sub_1B80C8FEC();
  v11 = sub_1B80C93FC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = a1;
    v21 = v13;
    *v12 = 136446210;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D68, &qword_1B80D1BA8);
    v15 = sub_1B80C90EC();
    v17 = sub_1B7FB84FC(v15, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1B7FB5000, v10, v11, "LocationShifter: shifting error %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B8CB8970](v13, -1, -1);
    MEMORY[0x1B8CB8970](v12, -1, -1);
  }

  v18 = type metadata accessor for Location();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  a2(v7, a1);
  return sub_1B7FD7B80(v7);
}

unint64_t sub_1B7FD7B34()
{
  result = qword_1EBA65D58;
  if (!qword_1EBA65D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA65D58);
  }

  return result;
}

uint64_t sub_1B7FD7B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7FD7BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D70, &qword_1B80D1BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FD7C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FD7CBC(uint64_t a1)
{
  v2 = type metadata accessor for Location();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall Account.dsidBase64EncodedString()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1B80C909C();
  v5 = v4;
  sub_1B80C8D2C();
  sub_1B7FC3CCC(v3, v5);
  sub_1B7FB6CB8();
  v6 = sub_1B80C948C();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

void __swiftcall Device.init()(FindMyLocate::Device *__return_ptr retstr)
{
  retstr->identifier._countAndFlagsBits = 0;
  retstr->identifier._object = 0xE000000000000000;
  retstr->deviceName._countAndFlagsBits = 0;
  retstr->deviceName._object = 0xE000000000000000;
  retstr->idsDeviceId._countAndFlagsBits = 0;
  retstr->idsDeviceId._object = 0xE000000000000000;
  *&retstr->isActive = 0;
}

uint64_t Friend.init(handle:type:expiry:createdAt:origin:secureLocationsCapable:shallowOrLiveSecureLocationsCapable:fallbackToLegacyAllowed:fallbackToLegacy:optedNotToShare:ownerHandle:)@<X0>(_OWORD *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, _OWORD *a12)
{
  v16 = *a2;
  v17 = *a5;
  v18 = type metadata accessor for Friend();
  *(a9 + v18[11]) = 2;
  v19 = a1[9];
  *(a9 + 128) = a1[8];
  *(a9 + 144) = v19;
  *(a9 + 160) = a1[10];
  v20 = a1[5];
  *(a9 + 64) = a1[4];
  *(a9 + 80) = v20;
  v21 = a1[7];
  *(a9 + 96) = a1[6];
  *(a9 + 112) = v21;
  v22 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v22;
  v23 = a1[3];
  *(a9 + 32) = a1[2];
  *(a9 + 48) = v23;
  *(a9 + 176) = v16;
  sub_1B7FC8F2C(a3, a9 + v18[10], &unk_1EBA65FD0, &unk_1B80D1920);
  *(a9 + v18[14]) = v17;
  *(a9 + 177) = a6;
  *(a9 + 178) = a7;
  *(a9 + 179) = a8;
  *(a9 + 180) = a10;
  *(a9 + v18[15]) = a11;
  v24 = (a9 + v18[13]);
  v25 = a12[9];
  v24[8] = a12[8];
  v24[9] = v25;
  v24[10] = a12[10];
  v26 = a12[5];
  v24[4] = a12[4];
  v24[5] = v26;
  v27 = a12[7];
  v24[6] = a12[6];
  v24[7] = v27;
  v28 = a12[1];
  *v24 = *a12;
  v24[1] = v28;
  v29 = a12[3];
  v24[2] = a12[2];
  v24[3] = v29;
  return sub_1B7FC8F2C(a4, a9 + v18[12], &unk_1EBA65FD0, &unk_1B80D1920);
}

uint64_t Friend.ownerHandle.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Friend() + 52));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28 = v5;
  v6 = v3[9];
  v29 = v3[10];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v3[4];
  v9 = v23;
  v24 = v8;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v7;
  return sub_1B7FB8448(v20, &v19, &qword_1EBA65D78, &qword_1B80D2640);
}

uint64_t Friend.friendshipOrigin.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Friend();
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t Friend.isLegacyLocationCapable.getter()
{
  if (*(v0 + 178))
  {
    return 0;
  }

  else
  {
    return *(v0 + 179);
  }
}

uint64_t Friend.originatedFromTheSameClient.getter()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = sub_1B80C90BC();
  v5 = v4;

  v6 = type metadata accessor for Friend();
  if (*(v0 + *(v6 + 56)) != 1)
  {

    swift_arrayDestroy();
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v10[0] = v3;
  v10[1] = v5;
  MEMORY[0x1EEE9AC00](v6);
  v9[2] = v10;
  v7 = sub_1B7FBBC20(sub_1B7FBBCCC, v9, &unk_1F2FF93A0);
  swift_arrayDestroy();

  return v7 & 1;
}

uint64_t Friend.expireDate(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 56);
  if (*(v4 + 16))
  {
    v5 = sub_1B7FDA32C(*a1);
    if (v6)
    {
      v7 = v5;
      v8 = *(v4 + 56);
      v9 = sub_1B80C8E2C();
      v17 = *(v9 - 8);
      (*(v17 + 16))(a2, v8 + *(v17 + 72) * v7, v9);
      v10 = *(v17 + 56);
      v11 = a2;
      v12 = 0;
      v13 = v9;
    }

    else
    {
      v15 = sub_1B80C8E2C();
      v10 = *(*(v15 - 8) + 56);
      v13 = v15;
      v11 = a2;
      v12 = 1;
    }
  }

  else
  {
    sub_1B80C8D6C();
    v14 = sub_1B80C8E2C();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 0;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t Friend.updatedFriend(with:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[9];
  v42[8] = a1[8];
  v42[9] = v5;
  v42[10] = a1[10];
  v6 = a1[5];
  v42[4] = a1[4];
  v42[5] = v6;
  v7 = a1[7];
  v42[6] = a1[6];
  v42[7] = v7;
  v8 = a1[1];
  v42[0] = *a1;
  v42[1] = v8;
  v9 = a1[3];
  v42[2] = a1[2];
  v42[3] = v9;
  v10 = v2[176];
  v11 = type metadata accessor for Friend();
  sub_1B7FB8448(&v2[v11[10]], a2 + v11[10], &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B7FB8448(&v2[v11[12]], a2 + v11[12], &unk_1EBA65FD0, &unk_1B80D1920);
  v13 = v11[14];
  v12 = v11[15];
  v14 = &v2[v11[13]];
  v15 = v14[3];
  v17 = v14[5];
  v46 = v14[4];
  v16 = v46;
  v47 = v17;
  v19 = v14[10];
  v20 = v14[7];
  v21 = v14[8];
  v22 = v21;
  v51 = v14[9];
  v18 = v51;
  v52 = v19;
  v50 = v21;
  v23 = v14[5];
  v25 = v14[7];
  v48 = v14[6];
  v24 = v48;
  v49 = v25;
  v26 = v14[1];
  v27 = v14[3];
  v44 = v14[2];
  v28 = v44;
  v45 = v27;
  v29 = v14[1];
  v43[0] = *v14;
  v30 = v43[0];
  v43[1] = v29;
  *(a2 + v11[11]) = 2;
  v31 = a1[9];
  *(a2 + 128) = a1[8];
  *(a2 + 144) = v31;
  *(a2 + 160) = a1[10];
  v32 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v32;
  v33 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v33;
  v34 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v34;
  v35 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v35;
  LOBYTE(v13) = v2[v13];
  v36 = v2[177];
  v37 = v2[178];
  v38 = v2[179];
  LOBYTE(v12) = v2[v12];
  *(a2 + 176) = v10;
  *(a2 + v11[14]) = v13;
  *(a2 + 177) = v36;
  *(a2 + 178) = v37;
  *(a2 + 179) = v38;
  *(a2 + v11[15]) = v12;
  v39 = (a2 + v11[13]);
  v39[8] = v22;
  v39[9] = v18;
  v39[10] = v14[10];
  v39[4] = v16;
  v39[5] = v23;
  v39[6] = v24;
  v39[7] = v20;
  *v39 = v30;
  v39[1] = v26;
  v39[2] = v28;
  v39[3] = v15;
  sub_1B7FC8DA4(v42, v41);
  return sub_1B7FB8448(v43, v41, &qword_1EBA65D78, &qword_1B80D2640);
}

uint64_t Friend.checkFriendUpdateNeeded(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B80C8E2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D80, &unk_1B80DC400);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v81 - v15;
  if (_s12FindMyLocate6FriendV2eeoiySbAC_ACtFZ_0(v2, a1))
  {
    v83 = v8;
    v82 = type metadata accessor for Friend();
    v17 = v82[12];
    v18 = v2;
    v19 = *(v13 + 48);
    v84 = v18;
    sub_1B7FB8448(v18 + v17, v16, &unk_1EBA65FD0, &unk_1B80D1920);
    v20 = a1 + v17;
    v21 = a1;
    sub_1B7FB8448(v20, &v16[v19], &unk_1EBA65FD0, &unk_1B80D1920);
    v22 = *(v5 + 48);
    if (v22(v16, 1, v4) == 1)
    {
      if (v22(&v16[v19], 1, v4) == 1)
      {
        sub_1B7FB86D4(v16, &unk_1EBA65FD0, &unk_1B80D1920);
LABEL_11:
        v31 = v84;
        if ((sub_1B7FD9E3C(*(v84 + 56), *(v21 + 56)) & 1) == 0)
        {
          goto LABEL_29;
        }

        if (*(v31 + 176) > 1u)
        {
          goto LABEL_25;
        }

        v32 = (v31 + v82[13]);
        v33 = v32[3];
        v34 = v32[4];
        v35 = v34;
        v121[5] = v32[5];
        v121[4] = v34;
        v36 = v32[9];
        v126 = v32[10];
        v37 = v32[7];
        v38 = v32[8];
        v39 = v38;
        v125 = v32[9];
        v124 = v38;
        v40 = v32[5];
        v41 = v32[7];
        v122 = v32[6];
        v123 = v41;
        v42 = v32[1];
        v121[0] = *v32;
        v121[1] = v42;
        v43 = v32[2];
        v44 = *v32;
        v45 = v32[1];
        v46 = v43;
        v121[3] = v32[3];
        v121[2] = v43;
        v47 = (v21 + v82[13]);
        v48 = v47[7];
        v49 = v47[9];
        v132 = v47[8];
        v133 = v49;
        v50 = v47[9];
        v134 = v47[10];
        v51 = v47[3];
        v52 = v47[5];
        v128 = v47[4];
        v129 = v52;
        v54 = v47[5];
        v53 = v47[6];
        v55 = v53;
        v131 = v47[7];
        v130 = v53;
        v56 = v47[1];
        v127[0] = *v47;
        v127[1] = v56;
        v57 = v47[2];
        v59 = *v47;
        v58 = v47[1];
        v60 = v57;
        v127[3] = v47[3];
        v127[2] = v57;
        v61 = v32[7];
        v62 = v32[9];
        v120[8] = v32[8];
        v120[9] = v62;
        v63 = v32[3];
        v64 = v32[5];
        v120[4] = v32[4];
        v120[5] = v64;
        v65 = v32[6];
        v120[7] = v61;
        v120[6] = v65;
        v66 = v32[1];
        v120[0] = *v32;
        v120[1] = v66;
        v67 = v32[2];
        v120[3] = v63;
        v120[2] = v67;
        v120[18] = v48;
        v120[19] = v132;
        v68 = v47[10];
        v120[20] = v50;
        v120[21] = v68;
        v120[14] = v51;
        v120[15] = v128;
        v120[16] = v54;
        v120[17] = v55;
        v120[10] = v32[10];
        v120[11] = v59;
        v120[12] = v58;
        v120[13] = v60;
        v135[8] = v39;
        v135[9] = v36;
        v135[10] = v32[10];
        v135[4] = v35;
        v135[5] = v40;
        v135[7] = v37;
        v135[6] = v122;
        v135[0] = v44;
        v135[1] = v45;
        v135[3] = v33;
        v135[2] = v46;
        if (sub_1B7FDAA2C(v135) == 1)
        {
          v108[8] = v120[19];
          v108[9] = v120[20];
          v108[10] = v120[21];
          v108[4] = v120[15];
          v108[5] = v120[16];
          v108[6] = v120[17];
          v108[7] = v120[18];
          v108[0] = v120[11];
          v108[1] = v120[12];
          v108[2] = v120[13];
          v108[3] = v120[14];
          if (sub_1B7FDAA2C(v108) == 1)
          {
            v117 = v120[8];
            v118 = v120[9];
            v119 = v120[10];
            v113 = v120[4];
            v114 = v120[5];
            v116 = v120[7];
            v115 = v120[6];
            v109 = v120[0];
            v110 = v120[1];
            v112 = v120[3];
            v111 = v120[2];
            sub_1B7FB8448(v121, &v97, &qword_1EBA65D78, &qword_1B80D2640);
            sub_1B7FB8448(v127, &v97, &qword_1EBA65D78, &qword_1B80D2640);
            sub_1B7FB86D4(&v109, &qword_1EBA65D78, &qword_1B80D2640);
LABEL_25:
            if (*(v31 + 177) != *(v21 + 177) || *(v31 + 178) != *(v21 + 178) || *(v31 + 179) != *(v21 + 179) || *(v31 + 180) != *(v21 + 180))
            {
              goto LABEL_29;
            }

            v76 = *(v31 + 96);
            v77 = *(v21 + 96);
            if (v76)
            {
              if (!v77 || (*(v31 + 88) != *(v21 + 88) || v76 != v77) && (sub_1B80C981C() & 1) == 0)
              {
                goto LABEL_29;
              }

LABEL_38:
              v78 = v82[15];
              v79 = *(v31 + v78);
              v80 = *(v21 + v78);
              if (v79 == 2)
              {
                v23 = v80 != 2;
                return v23 & 1;
              }

              if (v80 != 2)
              {
                v23 = v79 ^ v80;
                return v23 & 1;
              }

              goto LABEL_29;
            }

            if (!v77)
            {
              goto LABEL_38;
            }

LABEL_29:
            v23 = 1;
            return v23 & 1;
          }

          sub_1B7FB8448(v121, &v109, &qword_1EBA65D78, &qword_1B80D2640);
          sub_1B7FB8448(v127, &v109, &qword_1EBA65D78, &qword_1B80D2640);
        }

        else
        {
          v117 = v120[8];
          v118 = v120[9];
          v119 = v120[10];
          v113 = v120[4];
          v114 = v120[5];
          v116 = v120[7];
          v115 = v120[6];
          v109 = v120[0];
          v110 = v120[1];
          v112 = v120[3];
          v111 = v120[2];
          v93 = v120[7];
          v94 = v120[8];
          v95 = v120[9];
          v96 = v120[10];
          v89 = v120[3];
          v90 = v120[4];
          v91 = v120[5];
          v92 = v120[6];
          v69 = v120[0];
          v87 = v120[1];
          v88 = v120[2];
          v108[8] = v120[19];
          v108[9] = v120[20];
          v108[10] = v120[21];
          v108[4] = v120[15];
          v108[5] = v120[16];
          v108[6] = v120[17];
          v108[7] = v120[18];
          v108[0] = v120[11];
          v108[1] = v120[12];
          v108[2] = v120[13];
          v108[3] = v120[14];
          if (sub_1B7FDAA2C(v108) != 1)
          {
            v105 = v120[19];
            v106 = v120[20];
            v107 = v120[21];
            v101 = v120[15];
            v102 = v120[16];
            v103 = v120[17];
            v104 = v120[18];
            v97 = v120[11];
            v98 = v120[12];
            v99 = v120[13];
            v100 = v120[14];
            v70 = sub_1B80C90FC();
            v72 = v71;
            if (v70 == sub_1B80C90FC() && v72 == v73)
            {
              v74 = 1;
            }

            else
            {
              v74 = sub_1B80C981C();
            }

            sub_1B7FB8448(v121, v86, &qword_1EBA65D78, &qword_1B80D2640);
            sub_1B7FB8448(v127, v86, &qword_1EBA65D78, &qword_1B80D2640);
            sub_1B7FB8448(&v109, v86, &qword_1EBA65D78, &qword_1B80D2640);

            sub_1B7FB86D4(&v97, &qword_1EBA65D78, &qword_1B80D2640);
            v85[0] = v69;
            v85[7] = v93;
            v85[8] = v94;
            v85[9] = v95;
            v85[10] = v96;
            v85[3] = v89;
            v85[4] = v90;
            v85[5] = v91;
            v85[6] = v92;
            v85[1] = v87;
            v85[2] = v88;
            sub_1B7FCAD28(v85);
            v86[8] = v120[8];
            v86[9] = v120[9];
            v86[10] = v120[10];
            v86[4] = v120[4];
            v86[5] = v120[5];
            v86[6] = v120[6];
            v86[7] = v120[7];
            v86[0] = v120[0];
            v86[1] = v120[1];
            v86[2] = v120[2];
            v86[3] = v120[3];
            sub_1B7FB86D4(v86, &qword_1EBA65D78, &qword_1B80D2640);
            if ((v74 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_25;
          }

          v97 = v69;
          v104 = v120[7];
          v105 = v120[8];
          v106 = v120[9];
          v107 = v120[10];
          v100 = v120[3];
          v101 = v120[4];
          v102 = v120[5];
          v103 = v120[6];
          v98 = v120[1];
          v99 = v120[2];
          sub_1B7FB8448(v121, v86, &qword_1EBA65D78, &qword_1B80D2640);
          sub_1B7FB8448(v127, v86, &qword_1EBA65D78, &qword_1B80D2640);
          sub_1B7FB8448(&v109, v86, &qword_1EBA65D78, &qword_1B80D2640);
          sub_1B7FCAD28(&v97);
        }

        memcpy(v108, v120, sizeof(v108));
        v24 = &unk_1EBA65D88;
        v25 = &unk_1B80D1BB8;
        v26 = v108;
LABEL_9:
        sub_1B7FB86D4(v26, v24, v25);
        goto LABEL_29;
      }
    }

    else
    {
      sub_1B7FB8448(v16, v12, &unk_1EBA65FD0, &unk_1B80D1920);
      if (v22(&v16[v19], 1, v4) != 1)
      {
        v27 = &v16[v19];
        v28 = v83;
        (*(v5 + 32))(v83, v27, v4);
        sub_1B7FDAA98(&qword_1EBA65D90, MEMORY[0x1E6969530]);
        v29 = sub_1B80C908C();
        v30 = *(v5 + 8);
        v30(v28, v4);
        v30(v12, v4);
        sub_1B7FB86D4(v16, &unk_1EBA65FD0, &unk_1B80D1920);
        if ((v29 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_11;
      }

      (*(v5 + 8))(v12, v4);
    }

    v24 = &qword_1EBA65D80;
    v25 = &unk_1B80DC400;
    v26 = v16;
    goto LABEL_9;
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t Friend.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  *&v50 = 0;
  *(&v50 + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v61 = v50;
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x646E65697246, 0xE600000000000000);
  MEMORY[0x1B8CB7A40](0x6168202020200A3ALL, 0xEE00203A656C646ELL);
  v9 = v0[9];
  v58 = v0[8];
  v59 = v9;
  v60 = v0[10];
  v10 = v0[5];
  v54 = v0[4];
  v55 = v10;
  v11 = v0[7];
  v56 = v0[6];
  v57 = v11;
  v12 = v0[1];
  v50 = *v0;
  v51 = v12;
  v13 = v0[3];
  v52 = v0[2];
  v53 = v13;
  v14 = Handle.debugDescription.getter();
  MEMORY[0x1B8CB7A40](v14);

  MEMORY[0x1B8CB7A40](0x707974202020200ALL, 0xEB00000000203A65);
  v15 = *(v0 + 176);
  v16 = 0xE900000000000072;
  v17 = 0x65776F6C6C6F662ELL;
  v18 = 0xEF7265776F6C6C6FLL;
  v19 = 0x466572757475662ELL;
  v20 = 0x80000001B80CBD30;
  v21 = 0x676E69646E65702ELL;
  if (v15 == 3)
  {
    v21 = 0xD000000000000010;
  }

  else
  {
    v20 = 0xED0000726566664FLL;
  }

  if (v15 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (*(v0 + 176))
  {
    v17 = 0x69776F6C6C6F662ELL;
    v16 = 0xEA0000000000676ELL;
  }

  if (*(v0 + 176) <= 1u)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  if (*(v0 + 176) <= 1u)
  {
    v23 = v16;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x1B8CB7A40](v22, v23);

  MEMORY[0x1B8CB7A40](0x707865202020200ALL, 0xED0000203A797269);
  v24 = type metadata accessor for Friend();
  sub_1B7FB8448(v0 + v24[10], v8, &unk_1EBA65FD0, &unk_1B80D1920);
  v25 = sub_1B80C8E2C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  if (v27(v8, 1, v25) == 1)
  {
    sub_1B7FB86D4(v8, &unk_1EBA65FD0, &unk_1B80D1920);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_1B80C8D4C();
    v29 = v30;
    (*(v26 + 8))(v8, v25);
  }

  *&v50 = v28;
  *(&v50 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v31 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v31);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CBCD0);
  sub_1B7FB8448(v1 + v24[12], v6, &unk_1EBA65FD0, &unk_1B80D1920);
  if (v27(v6, 1, v25) == 1)
  {
    sub_1B7FB86D4(v6, &unk_1EBA65FD0, &unk_1B80D1920);
    v32 = 0;
    v33 = 0xE000000000000000;
  }

  else
  {
    v34 = sub_1B80C8D4C();
    v33 = v35;
    (*(v26 + 8))(v6, v25);
    v32 = v34;
  }

  MEMORY[0x1B8CB7A40](v32, v33);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CBCF0);
  v36 = (v1 + v24[13]);
  v37 = v36[9];
  v58 = v36[8];
  v59 = v37;
  v60 = v36[10];
  v38 = v36[5];
  v54 = v36[4];
  v55 = v38;
  v39 = v36[7];
  v56 = v36[6];
  v57 = v39;
  v40 = v36[1];
  v50 = *v36;
  v51 = v40;
  v41 = v36[3];
  v52 = v36[2];
  v53 = v41;
  if (sub_1B7FDAA2C(&v50) == 1)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  else
  {
    v43 = *(&v50 + 1);
    v42 = v50;
  }

  MEMORY[0x1B8CB7A40](v42, v43);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CBD10);
  v44 = *(v1 + v24[15]);
  v45 = 1702195828;
  if ((v44 & 1) == 0)
  {
    v45 = 0x65736C6166;
  }

  v46 = 0xE500000000000000;
  if (v44)
  {
    v46 = 0xE400000000000000;
  }

  if (v44 == 2)
  {
    v47 = 7104878;
  }

  else
  {
    v47 = v45;
  }

  if (v44 == 2)
  {
    v48 = 0xE300000000000000;
  }

  else
  {
    v48 = v46;
  }

  MEMORY[0x1B8CB7A40](v47, v48);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return v61;
}

uint64_t Friend.debugDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v56 - v7;
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v67 = v56;
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x646E65697246, 0xE600000000000000);
  MEMORY[0x1B8CB7A40](0x6168202020200A3ALL, 0xEE00203A656C646ELL);
  v9 = v0[9];
  v64 = v0[8];
  v65 = v9;
  v66 = v0[10];
  v10 = v0[5];
  v60 = v0[4];
  v61 = v10;
  v11 = v0[7];
  v62 = v0[6];
  v63 = v11;
  v12 = v0[1];
  v56 = *v0;
  v57 = v12;
  v13 = v0[3];
  v58 = v0[2];
  v59 = v13;
  v14 = Handle.debugDescription.getter();
  MEMORY[0x1B8CB7A40](v14);

  MEMORY[0x1B8CB7A40](0x707974202020200ALL, 0xEB00000000203A65);
  v15 = *(v0 + 176);
  v16 = 0xE900000000000072;
  v17 = 0x65776F6C6C6F662ELL;
  v18 = 0xEF7265776F6C6C6FLL;
  v19 = 0x466572757475662ELL;
  v20 = 0x80000001B80CBD30;
  v21 = 0x676E69646E65702ELL;
  if (v15 == 3)
  {
    v21 = 0xD000000000000010;
  }

  else
  {
    v20 = 0xED0000726566664FLL;
  }

  if (v15 != 2)
  {
    v19 = v21;
    v18 = v20;
  }

  if (*(v0 + 176))
  {
    v17 = 0x69776F6C6C6F662ELL;
    v16 = 0xEA0000000000676ELL;
  }

  if (*(v0 + 176) <= 1u)
  {
    v22 = v17;
  }

  else
  {
    v22 = v19;
  }

  if (*(v0 + 176) <= 1u)
  {
    v23 = v16;
  }

  else
  {
    v23 = v18;
  }

  MEMORY[0x1B8CB7A40](v22, v23);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CBDF0);
  v24 = type metadata accessor for Friend();
  if (*(v0 + v24[14]))
  {
    if (*(v0 + v24[14]) == 1)
    {
      v25 = 0xEC00000070704173;
      v26 = 0x6567617373656D2ELL;
    }

    else
    {
      v25 = 0xE600000000000000;
      v26 = 0x726568746F2ELL;
    }
  }

  else
  {
    v25 = 0xEA00000000007070;
    v26 = 0x41794D646E69662ELL;
  }

  MEMORY[0x1B8CB7A40](v26, v25);

  MEMORY[0x1B8CB7A40](0x707865202020200ALL, 0xED0000203A797269);
  sub_1B7FB8448(v0 + v24[10], v8, &unk_1EBA65FD0, &unk_1B80D1920);
  v27 = sub_1B80C8E2C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v8, 1, v27) == 1)
  {
    sub_1B7FB86D4(v8, &unk_1EBA65FD0, &unk_1B80D1920);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = sub_1B80C8D4C();
    v31 = v32;
    (*(v28 + 8))(v8, v27);
  }

  *&v56 = v30;
  *(&v56 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v33 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v33);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CBCD0);
  sub_1B7FB8448(v1 + v24[12], v6, &unk_1EBA65FD0, &unk_1B80D1920);
  if (v29(v6, 1, v27) == 1)
  {
    sub_1B7FB86D4(v6, &unk_1EBA65FD0, &unk_1B80D1920);
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  else
  {
    v36 = sub_1B80C8D4C();
    v35 = v37;
    (*(v28 + 8))(v6, v27);
    v34 = v36;
  }

  MEMORY[0x1B8CB7A40](v34, v35);

  MEMORY[0x1B8CB7A40](0xD000000000000022, 0x80000001B80CBE10);
  v38 = Friend.originatedFromTheSameClient.getter();
  v39 = (v38 & 1) == 0;
  if (v38)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v39)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = 0xE400000000000000;
  }

  MEMORY[0x1B8CB7A40](v40, v41);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CBCF0);
  v42 = (v1 + v24[13]);
  v43 = v42[9];
  v64 = v42[8];
  v65 = v43;
  v66 = v42[10];
  v44 = v42[5];
  v60 = v42[4];
  v61 = v44;
  v45 = v42[7];
  v62 = v42[6];
  v63 = v45;
  v46 = v42[1];
  v56 = *v42;
  v57 = v46;
  v47 = v42[3];
  v58 = v42[2];
  v59 = v47;
  if (sub_1B7FDAA2C(&v56) == 1)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
  }

  else
  {
    v49 = *(&v56 + 1);
    v48 = v56;
  }

  MEMORY[0x1B8CB7A40](v48, v49);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CBD10);
  v50 = *(v1 + v24[15]);
  if (v50)
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (v50)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  if (v50 == 2)
  {
    v53 = 7104878;
  }

  else
  {
    v53 = v51;
  }

  if (v50 == 2)
  {
    v54 = 0xE300000000000000;
  }

  else
  {
    v54 = v52;
  }

  MEMORY[0x1B8CB7A40](v53, v54);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return v67;
}

uint64_t Handle.serverID.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t Handle.isPhoneNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return _s12FindMyLocate6HandleV13isPhoneNumberySbSSFZ_0();
}

uint64_t Handle.peerID.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 168))
  {
    v3 = *(v1 + 160);

    v4 = sub_1B80C909C();
    v6 = v5;

    sub_1B7FDAA44();
    sub_1B80C8BBC();
    sub_1B7FC3CCC(v4, v6);
    v7 = sub_1B80C8E9C();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = sub_1B80C8E9C();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

uint64_t Handle.updateWithdifferentExpiresByGroupID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[6];
  v19 = v2[5];
  v9 = v2[8];
  v10 = v2[10];
  v22 = v2[11];
  v23 = v2[9];
  v28 = v2[12];
  v20 = *(v2 + 32);
  v21 = *(v2 + 104);
  v25 = *(v2 + 7);
  v26 = *(v2 + 8);
  v11 = v2[18];
  v12 = v2[21];
  v24 = v2[20];
  v13 = sub_1B80C90FC();
  v15 = v14;
  if (v7)
  {
    v6 = sub_1B80C90FC();
  }

  else
  {
    v16 = 0;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v6;
  *(a2 + 24) = v16;
  *(a2 + 32) = v20;
  *(a2 + 40) = v19;
  *(a2 + 48) = v8;
  *(a2 + 56) = a1;
  *(a2 + 64) = v9;
  *(a2 + 72) = v23;
  *(a2 + 80) = v10;
  *(a2 + 88) = v22;
  *(a2 + 96) = v28;
  *(a2 + 104) = v21;
  *(a2 + 112) = v25;
  *(a2 + 128) = v26;
  v17 = MEMORY[0x1E69E7CC0];
  *(a2 + 144) = v11;
  *(a2 + 152) = v17;
  *(a2 + 160) = v24;
  *(a2 + 168) = v12;
}

uint64_t sub_1B7FD9E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E2C();
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DB8, &unk_1B80D1C20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v50 = &v47 - v13;
  v51 = v14;
  v15 = 0;
  v48 = a1;
  v16 = *(a1 + 64);
  v47 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v52 = v56 + 16;
  v53 = (v56 + 32);
  v49 = (v56 + 8);
  while (1)
  {
    v21 = v51;
    if (!v19)
    {
      break;
    }

    v54 = (v19 - 1) & v19;
    v22 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_16:
    v27 = *(*(v48 + 48) + v22);
    v29 = v55;
    v28 = v56;
    (*(v56 + 16))(v55, *(v48 + 56) + *(v56 + 72) * v22, v4);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DC0, &qword_1B80D2660);
    v31 = *(v30 + 48);
    *v21 = v27;
    (*(v28 + 32))(&v21[v31], v29, v4);
    (*(*(v30 - 8) + 56))(v21, 0, 1, v30);
LABEL_17:
    v32 = v21;
    v33 = v50;
    sub_1B7FC8F2C(v32, v50, &qword_1EBA65DB8, &unk_1B80D1C20);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DC0, &qword_1B80D2660);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v38 = *v33;
    (*v53)(v57, &v33[v37], v4);
    v39 = sub_1B7FDA32C(v38);
    if ((v40 & 1) == 0)
    {
      (*v49)(v57, v4);
      return 0;
    }

    v41 = v55;
    v42 = v56;
    (*(v56 + 16))(v55, *(v58 + 56) + *(v56 + 72) * v39, v4);
    sub_1B7FDAA98(&qword_1EBA65D90, MEMORY[0x1E6969530]);
    v43 = v57;
    v44 = sub_1B80C908C();
    v45 = *(v42 + 8);
    v45(v41, v4);
    result = (v45)(v43, v4);
    v19 = v54;
    if ((v44 & 1) == 0)
    {
      return v36;
    }
  }

  if (v20 <= v15 + 1)
  {
    v23 = v15 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  while (1)
  {
    v25 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DC0, &qword_1B80D2660);
      (*(*(v46 - 8) + 56))(v21, 1, 1, v46);
      v54 = 0;
      v15 = v24;
      goto LABEL_17;
    }

    v26 = *(v47 + 8 * v25);
    ++v15;
    if (v26)
    {
      v54 = (v26 - 1) & v26;
      v22 = __clz(__rbit64(v26)) | (v25 << 6);
      v15 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7FDA32C(char a1)
{
  v3 = *(v1 + 40);
  sub_1B80C993C();
  sub_1B80C911C();

  v4 = sub_1B80C997C();

  return sub_1B7FDA5DC(a1, v4);
}

unint64_t sub_1B7FDA404(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B80C993C();
  sub_1B80C911C();
  v6 = sub_1B80C997C();

  return sub_1B7FDA78C(a1, a2, v6);
}

unint64_t sub_1B7FDA47C(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1B80C993C();
  v4 = *a1;
  v5 = a1[1];
  sub_1B80C90FC();
  sub_1B80C911C();

  v6 = sub_1B80C997C();

  return sub_1B7FDA844(a1, v6);
}

unint64_t sub_1B7FDA504(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](a1);
  v4 = sub_1B80C997C();

  return sub_1B7FDA9BC(a1, v4);
}

unint64_t sub_1B7FDA570(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B80C993C();
  sub_1B80C995C();
  v4 = sub_1B80C997C();

  return sub_1B7FDA9BC(a1, v4);
}

unint64_t sub_1B7FDA5DC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000013;
          v7 = 0x80000001B80CB3E0;
        }

        else
        {
          v6 = 0xD000000000000010;
          v7 = 0x80000001B80CB400;
        }
      }

      else
      {
        v6 = 0x46746C7561666564;
        v7 = 0xEA0000000000464DLL;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD000000000000013;
        }

        else
        {
          v8 = 0xD000000000000010;
        }

        if (a1 == 1)
        {
          v9 = 0x80000001B80CB3E0;
        }

        else
        {
          v9 = 0x80000001B80CB400;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xEA0000000000464DLL;
        if (v6 != 0x46746C7561666564)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = sub_1B80C981C();

      if ((v10 & 1) == 0)
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

unint64_t sub_1B7FDA78C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B80C981C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B7FDA844(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = (*(v2 + 48) + 176 * v4);
      v9 = v7[1];
      v8 = v7[2];
      v25[0] = *v7;
      v25[1] = v9;
      v25[2] = v8;
      v10 = v7[6];
      v12 = v7[3];
      v11 = v7[4];
      v25[5] = v7[5];
      v25[6] = v10;
      v25[3] = v12;
      v25[4] = v11;
      v13 = v7[10];
      v15 = v7[7];
      v14 = v7[8];
      v25[9] = v7[9];
      v25[10] = v13;
      v25[7] = v15;
      v25[8] = v14;
      v16 = *a1;
      v17 = a1[1];
      v18 = sub_1B80C90FC();
      v20 = v19;
      if (v18 == sub_1B80C90FC() && v20 == v21)
      {
        break;
      }

      v22 = sub_1B80C981C();
      sub_1B7FC8DA4(v25, v24);

      sub_1B7FCAD28(v25);
      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    sub_1B7FC8DA4(v25, v24);

    sub_1B7FCAD28(v25);
  }

  return v4;
}

unint64_t sub_1B7FDA9BC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1B7FDAA2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1B7FDAA44()
{
  result = qword_1ED8DC398;
  if (!qword_1ED8DC398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC398);
  }

  return result;
}

uint64_t sub_1B7FDAA98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LegacyRefreshSchedule.rawValue.getter()
{
  v1 = 0x726F697250776F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6F69725068676968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465686353746F6ELL;
  }
}

uint64_t sub_1B7FDAB54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x726F697250776F6CLL;
  v4 = 0xEB00000000797469;
  if (v2 != 1)
  {
    v3 = 0x6F69725068676968;
    v4 = 0xEC00000079746972;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6465686353746F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000064656C75;
  }

  v7 = 0x726F697250776F6CLL;
  v8 = 0xEB00000000797469;
  if (*a2 != 1)
  {
    v7 = 0x6F69725068676968;
    v8 = 0xEC00000079746972;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6465686353746F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000064656C75;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

uint64_t sub_1B7FDAC7C()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B7FDAD38()
{
  *v0;
  *v0;
  sub_1B80C911C();
}

uint64_t sub_1B7FDADE0()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B7FDAE98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064656C75;
  v4 = 0xEB00000000797469;
  v5 = 0x726F697250776F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6F69725068676968;
    v4 = 0xEC00000079746972;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465686353746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t LegacyRefreshCommandReason.reason.getter()
{
  result = 7364980;
  switch(*v0)
  {
    case 1:
      result = 0x646563726F66;
      break;
    case 2:
      result = 0x72656D6974;
      break;
    case 3:
      result = 0x6144657461647075;
      break;
    case 4:
      result = 0x61636F4C72657375;
      break;
    case 5:
      result = 0x6E656B6F54737061;
      break;
    case 6:
      result = 0x6165627472616568;
      break;
    case 7:
      result = 0x6C6E757473726966;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 7496034;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t LegacyRefreshCommandReason.description.getter()
{
  result = 7364980;
  switch(*v0)
  {
    case 1:
      result = 0x646563726F66;
      break;
    case 2:
      result = 0x72656D6974;
      break;
    case 3:
      result = 0x68736572666572;
      break;
    case 4:
      result = 0x61636F4C70656564;
      break;
    case 5:
      result = 0x6E656B6F54737061;
      break;
    case 6:
      result = 0x6165627472616568;
      break;
    case 7:
      result = 0x6C6E557473726966;
      break;
    case 8:
      result = 0x50676E697070616DLL;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0xD000000000000016;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B7FDB2D0()
{
  result = qword_1EBA65DC8;
  if (!qword_1EBA65DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65DC8);
  }

  return result;
}

unint64_t sub_1B7FDB328()
{
  result = qword_1EBA65DD0;
  if (!qword_1EBA65DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65DD0);
  }

  return result;
}

uint64_t _s12FindMyLocate5FenceV13MonitorRegionV6SourceO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t sub_1B7FDB3C4()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t storeEnumTagSinglePayload for LegacyRefreshCommandReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Location.init(latitude:longitude:horizontalAccuracy:verticalAccuracy:speed:altitude:floor:timestamp:placemark:locationType:motionActivityState:customLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, double a14@<D5>)
{
  v28 = sub_1B80C8E9C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v44 = a3[8];
  v45 = a3[9];
  v46 = a3[10];
  v47 = a3[11];
  v40 = a3[4];
  v41 = a3[5];
  v42 = a3[6];
  v43 = a3[7];
  v36 = *a3;
  v37 = a3[1];
  v38 = a3[2];
  v39 = a3[3];
  LOBYTE(a3) = *a4;
  LOBYTE(a4) = *a5;
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v30 = type metadata accessor for Location();
  sub_1B80C899C();
  v31 = (a8 + v30[5]);
  v31[8] = v44;
  v31[9] = v45;
  v31[10] = v46;
  v31[11] = v47;
  v31[4] = v40;
  v31[5] = v41;
  v31[6] = v42;
  v31[7] = v43;
  *v31 = v36;
  v31[1] = v37;
  v31[2] = v38;
  v31[3] = v39;
  *(a8 + v30[10]) = a9;
  *(a8 + v30[11]) = a10;
  *(a8 + v30[7]) = a1;
  *(a8 + v30[8]) = a11;
  *(a8 + v30[14]) = a12;
  *(a8 + v30[12]) = a13;
  *(a8 + v30[6]) = a14;
  sub_1B80C8DDC();
  *(a8 + v30[13]) = v32;
  *(a8 + v30[15]) = a3;
  *(a8 + v30[16]) = a4;
  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1B80D1EB0;
    *(v33 + 32) = a6;
    *(v33 + 40) = a7;
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = sub_1B80C8E2C();
  result = (*(*(v34 - 8) + 8))(a2, v34);
  *(a8 + v30[9]) = v33;
  return result;
}

uint64_t LocationRequest.toHandles.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t LocationRequest.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

uint64_t LocationRequest.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[5];
  v24 = *(v0 + 49);
  v7 = *(v0 + 50);
  v22 = *(v0 + 48);
  v23 = *(v0 + 51);
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x6E6F697461636F4CLL, 0xEF74736575716552);
  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CBF20);
  v8 = MEMORY[0x1B8CB7B30](v1, &type metadata for Handle);
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0x697270202020200ALL, 0xEE003A797469726FLL);
  v9 = 0xE800000000000000;
  v10 = 0x776F6C6C6168732ELL;
  v11 = 0x6576696C2ELL;
  v12 = 0x80000001B80CBF40;
  if (v2 == 2)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xD000000000000014;
  }

  if (!v2)
  {
    v10 = 0xD000000000000015;
    v9 = 0x80000001B80CBFD0;
  }

  if (v2 <= 1)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v2 <= 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  MEMORY[0x1B8CB7A40](v13, v14);

  MEMORY[0x1B8CB7A40](0x69726F202020200ALL, 0xEC0000003A6E6967);
  v15 = RequestOrigin.description.getter();
  MEMORY[0x1B8CB7A40](v15);

  MEMORY[0x1B8CB7A40](0xD00000000000002ELL, 0x80000001B80CBF60);
  refreshed = LegacyRefreshCommandReason.description.getter();
  MEMORY[0x1B8CB7A40](refreshed);

  MEMORY[0x1B8CB7A40](0xD000000000000019, 0x80000001B80CBF90);
  if (v22)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v22)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v17, v18);

  MEMORY[0x1B8CB7A40](0x707974202020200ALL, 0xEB00000000203A65);
  sub_1B80C95FC();
  MEMORY[0x1B8CB7A40](0xD00000000000001ELL, 0x80000001B80CBFB0);
  if (v23)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v23)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v19, v20);

  MEMORY[0x1B8CB7A40](0x437369202020200ALL, 0xEF203A6465686361);
  sub_1B80C95FC();
  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B7FDBCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7FDC648(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7FDBD34(uint64_t a1)
{
  v2 = sub_1B7FDC188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7FDBD70(uint64_t a1)
{
  v2 = sub_1B7FDC188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE0, &qword_1B80D1EC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  v9 = *v1;
  v29 = *(v1 + 8);
  v24 = *(v1 + 16);
  v10 = v1[3];
  v22 = v1[4];
  v23 = v10;
  v21 = v1[5];
  LODWORD(v10) = *(v1 + 48);
  v19 = *(v1 + 49);
  v20 = v10;
  LODWORD(v10) = *(v1 + 50);
  v17[4] = *(v1 + 51);
  v18 = v10;
  v17[3] = *(v1 + 52);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FDC188();

  v12 = v4;
  sub_1B80C99DC();
  v25 = v9;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224);
  sub_1B80C97DC();
  if (v2)
  {
  }

  else
  {
    v13 = v22;
    v14 = v23;
    v15 = v24;

    LOBYTE(v25) = v29;
    v30 = 1;
    sub_1B7FDC278();
    sub_1B80C97DC();
    LOBYTE(v25) = v15;
    v26 = v14;
    v27 = v13;
    v28 = v21;
    v30 = 2;
    sub_1B7FDC2CC();

    sub_1B80C97DC();

    LOBYTE(v25) = 3;
    sub_1B80C979C();
    LOBYTE(v25) = v19;
    v30 = 4;
    sub_1B7FDC320();
    sub_1B80C97DC();
    LOBYTE(v25) = v18;
    v30 = 5;
    sub_1B7FDC374();
    sub_1B80C97DC();
    LOBYTE(v25) = 6;
    sub_1B80C979C();
    LOBYTE(v25) = 7;
    sub_1B80C979C();
  }

  return (*(v5 + 8))(v8, v12);
}

unint64_t sub_1B7FDC188()
{
  result = qword_1ED8DC460;
  if (!qword_1ED8DC460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC460);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B7FDC224()
{
  result = qword_1ED8DC420;
  if (!qword_1ED8DC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC420);
  }

  return result;
}

unint64_t sub_1B7FDC278()
{
  result = qword_1ED8DC378;
  if (!qword_1ED8DC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC378);
  }

  return result;
}

unint64_t sub_1B7FDC2CC()
{
  result = qword_1ED8DC468;
  if (!qword_1ED8DC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC468);
  }

  return result;
}

unint64_t sub_1B7FDC320()
{
  result = qword_1ED8DC010;
  if (!qword_1ED8DC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC010);
  }

  return result;
}

unint64_t sub_1B7FDC374()
{
  result = qword_1ED8DC008;
  if (!qword_1ED8DC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC008);
  }

  return result;
}

uint64_t sub_1B7FDC3C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65DE8, &qword_1B80D3A20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7FDC440()
{
  result = qword_1ED8DC408;
  if (!qword_1ED8DC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC408);
  }

  return result;
}

uint64_t sub_1B7FDC494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_1B7FDC4DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7FDC544()
{
  result = qword_1EBA65DF8;
  if (!qword_1EBA65DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65DF8);
  }

  return result;
}

unint64_t sub_1B7FDC59C()
{
  result = qword_1ED8DC450;
  if (!qword_1ED8DC450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC450);
  }

  return result;
}

unint64_t sub_1B7FDC5F4()
{
  result = qword_1ED8DC458;
  if (!qword_1ED8DC458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC458);
  }

  return result;
}

uint64_t sub_1B7FDC648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E61486F74 && a2 == 0xE900000000000073;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696769726FLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CBFF0 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5268736572666572 && a2 == 0xED00006E6F736165 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B80CC010 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465686361437369 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B7FDC8F4(uint64_t a1, uint64_t a2)
{
  v3[72] = v2;
  v3[71] = a2;
  v3[70] = a1;
  v4 = sub_1B80C8E2C();
  v3[73] = v4;
  v5 = *(v4 - 8);
  v3[74] = v5;
  v6 = *(v5 + 64) + 15;
  v3[75] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160) - 8) + 64) + 15;
  v3[76] = swift_task_alloc();
  v8 = sub_1B80C8EDC();
  v3[77] = v8;
  v9 = *(v8 - 8);
  v3[78] = v9;
  v10 = *(v9 + 64) + 15;
  v3[79] = swift_task_alloc();
  v11 = type metadata accessor for ReverseGeocodingRequest();
  v3[80] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[81] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FDCA80, v2, 0);
}

uint64_t sub_1B7FDCA80()
{
  v53 = v0;
  if (qword_1ED8DD980 != -1)
  {
    swift_once();
  }

  v1 = v0[81];
  v2 = v0[72];
  v3 = v0[71];
  v4 = sub_1B80C900C();
  v0[82] = __swift_project_value_buffer(v4, qword_1ED8DE010);
  sub_1B7FDFF4C(v3, v1, type metadata accessor for ReverseGeocodingRequest);

  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C941C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[81];
  if (v7)
  {
    v9 = v0[72];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v52[0] = v11;
    *v10 = 136315394;
    v12 = *v9;
    v13 = sub_1B80C9A3C();
    v15 = sub_1B7FB84FC(v13, v14, v52);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = ReverseGeocodingRequest.debugDescription.getter();
    v18 = v17;
    sub_1B7FDFFB4(v8, type metadata accessor for ReverseGeocodingRequest);
    v19 = sub_1B7FB84FC(v16, v18, v52);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "%s: Loading new address for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v11, -1, -1);
    MEMORY[0x1B8CB8970](v10, -1, -1);
  }

  else
  {

    sub_1B7FDFFB4(v8, type metadata accessor for ReverseGeocodingRequest);
  }

  v20 = v0[80];
  v21 = v0[78];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[71];
  v25 = objc_opt_self();
  v26 = [v25 sharedService];
  v27 = [v26 defaultTraits];
  v0[83] = v27;

  v28 = v24 + *(v20 + 20);
  v29 = type metadata accessor for Location();
  v30 = [objc_allocWithZone(MEMORY[0x1E69A1E70]) initWithLatitude:*(v28 + *(v29 + 40)) longitude:*(v28 + *(v29 + 44))];
  v0[84] = v30;
  sub_1B7FDFDC8(v24 + *(v20 + 24), v23);
  if ((*(v21 + 48))(v23, 1, v22) == 1)
  {
    sub_1B7FB86D4(v0[76], &qword_1EBA65E00, &qword_1B80D2160);
  }

  else
  {
    (*(v0[78] + 32))(v0[79], v0[76], v0[77]);
    sub_1B80C8EAC();
    sub_1B80C8ECC();

    [v27 clearDeviceDisplayLanguages];
    v31 = v0[79];
    v32 = v0[78];
    v33 = v0[77];
    if (v27)
    {
      v34 = v27;
      v35 = sub_1B80C90AC();

      [v34 addDeviceDisplayLanguage_];

      (*(v32 + 8))(v31, v33);
    }

    else
    {
      (*(v32 + 8))(v0[79], v0[77]);
    }
  }

  if (*(v0[71] + *(v0[80] + 28)) == 1 && v30)
  {
    [v30 setHorizontalAccuracy_];
  }

  v36 = [v25 sharedService];
  if (v36 && (v37 = v36, v38 = [v36 ticketForReverseGeocodeLocation:v30 traits:v27], v0[85] = v38, v37, v38))
  {
    v39 = v0[72];
    v40 = v0[71];
    v41 = sub_1B7FDFE8C();
    v42 = swift_task_alloc();
    v0[86] = v42;
    v42[2] = v39;
    v42[3] = v38;
    v42[4] = v40;
    v43 = *(MEMORY[0x1E69E8920] + 4);
    v44 = swift_task_alloc();
    v0[87] = v44;
    *v44 = v0;
    v44[1] = sub_1B7FDD0A0;

    return MEMORY[0x1EEE6DE38](v0 + 2, v39, v41, 0xD00000000000001CLL, 0x80000001B80CC030, sub_1B7FDFEE4, v42, &type metadata for Address);
  }

  else
  {
    sub_1B7FDFE38();
    swift_allocError();
    *v45 = 3;
    swift_willThrow();

    v46 = v0[81];
    v47 = v0[79];
    v48 = v0[76];
    v49 = v0[75];

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_1B7FDD0A0()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v7 = *v1;
  *(*v1 + 704) = v0;

  v4 = *(v2 + 576);
  if (v0)
  {
    v5 = sub_1B7FDD5DC;
  }

  else
  {
    v5 = sub_1B7FDD1B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FDD1B8()
{
  v53 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  memcpy((v0 + 288), (v0 + 16), 0x110uLL);
  memcpy(__dst, (v0 + 16), 0x110uLL);
  sub_1B80C8E1C();
  sub_1B7FDDA74(v5, __dst, v1);
  result = (*(v2 + 8))(v1, v3);
  v7 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_processedOperationsCount;
  v8 = *(v4 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_processedOperationsCount);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v0 + 656);
    v12 = *(v0 + 576);
    *(v4 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_processedOperationsCount) = v10;
    swift_retain_n();
    v13 = sub_1B80C8FEC();
    v14 = sub_1B80C941C();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 576);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      __dst[0] = v18;
      *v17 = 136315394;
      v19 = *v16;
      v20 = sub_1B80C9A3C();
      v22 = sub_1B7FB84FC(v20, v21, __dst);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2048;
      v23 = *(v4 + v7);

      *(v17 + 14) = v23;

      _os_log_impl(&dword_1B7FB5000, v13, v14, "%s: Total operations processed: %ld.", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CB8970](v18, -1, -1);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    else
    {
      v24 = *(v0 + 576);
    }

    v25 = *(v4 + v7);
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v25 + 0x1999999999999998, 1) <= 0x1999999999999998uLL)
    {
      v28 = *(v0 + 656);
      v29 = *(v0 + 576);
      sub_1B80C8DBC();
      v31 = v30;

      v32 = sub_1B80C8FEC();
      v33 = sub_1B80C941C();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 680);
      v36 = *(v0 + 672);
      v37 = *(v0 + 664);
      if (v34)
      {
        v38 = *(v0 + 576);
        v39 = v25 / fabs(v31);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        __dst[0] = v41;
        *v40 = 136315394;
        v42 = *v38;
        v43 = sub_1B80C9A3C();
        v45 = sub_1B7FB84FC(v43, v44, __dst);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2048;
        *(v40 + 14) = v39;
        _os_log_impl(&dword_1B7FB5000, v32, v33, "%s: Current throughput: %f requests per second.", v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x1B8CB8970](v41, -1, -1);
        MEMORY[0x1B8CB8970](v40, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v26 = *(v0 + 680);
      v27 = *(v0 + 672);

      swift_unknownObjectRelease();
    }

    v46 = *(v0 + 688);
    v47 = *(v0 + 648);
    v48 = *(v0 + 632);
    v49 = *(v0 + 608);
    v50 = *(v0 + 600);
    memcpy(*(v0 + 560), (v0 + 288), 0x110uLL);

    v51 = *(v0 + 8);

    return v51();
  }

  return result;
}

uint64_t sub_1B7FDD5DC()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);

  swift_unknownObjectRelease();

  v4 = *(v0 + 704);
  v5 = *(v0 + 648);
  v6 = *(v0 + 632);
  v7 = *(v0 + 608);
  v8 = *(v0 + 600);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B7FDD694(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v21 = a3;
  v6 = type metadata accessor for ReverseGeocodingRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  (*(v10 + 16))(&v20 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_1B7FDFF4C(a4, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReverseGeocodingRequest);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B7FE0014;
  *(v17 + 24) = v15;
  sub_1B7FE01BC(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ReverseGeocodingRequest);
  aBlock[4] = sub_1B7FE00A0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7FDE45C;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  [v21 submitWithHandler:v18 timeout:25 networkActivity:0];
  _Block_release(v18);
}

uint64_t sub_1B7FDD954(void *__src, id a2)
{
  if (a2)
  {
    __dst[0] = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
    return sub_1B80C927C();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1B7FE01A4(__dst) == 1)
    {
      sub_1B7FDFE38();
      v5 = swift_allocError();
      *v6 = 2;
      v9[0] = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
      return sub_1B80C927C();
    }

    else
    {
      memcpy(v8, __dst, sizeof(v8));
      memcpy(v9, __src, sizeof(v9));
      sub_1B7FDFEF0(v9, &v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
      return sub_1B80C928C();
    }
  }
}

uint64_t sub_1B7FDDA74(uint64_t *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E18, &qword_1B80D2108);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44 - v8;
  v10 = type metadata accessor for ReverseGeocodingRequest();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v47, a2, 0x110uLL);
  sub_1B7FDFF4C(a1, v14, type metadata accessor for ReverseGeocodingRequest);
  v20 = v15[7];
  v21 = sub_1B80C8E2C();
  (*(*(v21 - 8) + 16))(&v19[v20], a3, v21);
  v22 = v14[1];
  *v19 = *v14;
  *(v19 + 1) = v22;
  v23 = *(v11 + 28);
  sub_1B7FDFEF0(v47, &v46);

  *(v19 + 2) = sub_1B7FE0764();
  *(v19 + 3) = v24;
  sub_1B7FDFF4C(v14 + v23, &v19[v15[6]], type metadata accessor for Location);
  sub_1B7FDFFB4(v14, type metadata accessor for ReverseGeocodingRequest);
  memcpy(&v19[v15[8]], v47, 0x110uLL);
  v25 = a1 + *(v11 + 28);
  if (*(a1 + *(v11 + 36)) == 1)
  {
    v26 = type metadata accessor for Location();
    v27 = round(*&v25[*(v26 + 40)] * 100.0) / 100.0;
    v28 = round(*&v25[*(v26 + 44)] * 100.0) / 100.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1B80D20F0;
    v30 = MEMORY[0x1E69E63B0];
    v31 = MEMORY[0x1E69E6438];
    *(v29 + 56) = MEMORY[0x1E69E63B0];
    *(v29 + 64) = v31;
    *(v29 + 32) = v27;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 72) = v28;
    v32 = sub_1B80C90DC();
    v34 = v33;
    sub_1B7FDFF4C(v19, v9, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    (*(v16 + 56))(v9, 0, 1, v15);
    swift_beginAccess();
    v35 = v9;
    v36 = v32;
    v37 = v34;
  }

  else
  {
    v38 = sub_1B7FE0764();
    v44 = v39;
    v45 = v38;
    sub_1B7FDFF4C(v19, v9, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v40 = *(v16 + 56);
    v40(v9, 0, 1, v15);
    swift_beginAccess();
    sub_1B8014938(v9, v45, v44);
    swift_endAccess();
    v41 = *a1;
    v42 = a1[1];
    v45 = v41;
    sub_1B7FDFF4C(v19, v9, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v40(v9, 0, 1, v15);
    swift_beginAccess();

    v35 = v9;
    v36 = v45;
    v37 = v42;
  }

  sub_1B8014938(v35, v36, v37);
  swift_endAccess();
  return sub_1B7FDFFB4(v19, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
}

void sub_1B7FDDF2C(unint64_t a1, void *a2, void (*a3)(_BYTE *, void *), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ReverseGeocodingRequest();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (a2)
  {
    v13 = a2;
    if (qword_1ED8DD980 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DE010);
    v15 = a2;
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v43[0] = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = sub_1B80C98CC();
      v22 = sub_1B7FB84FC(v20, v21, v43);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "ReverseGeocoder: reverse geocoding completed with error: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B7FE0124(v43);
    memcpy(v42, v43, sizeof(v42));
    v23 = a2;
    a3(v42, a2);

    goto LABEL_21;
  }

  if (!a1)
  {
    goto LABEL_20;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_20:
    sub_1B7FE0124(v43);
    memcpy(v42, v43, sizeof(v42));
    sub_1B7FDFE38();
    a2 = swift_allocError();
    *v38 = 0;
    a3(v42, a2);
LABEL_21:

    return;
  }

  if (!sub_1B80C963C())
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B8CB7E40](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v24 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  v25 = swift_unknownObjectRetain();
  Address.init(mapItem:)(v25, v43);
  if (qword_1ED8DD980 != -1)
  {
    swift_once();
  }

  v26 = sub_1B80C900C();
  __swift_project_value_buffer(v26, qword_1ED8DE010);
  sub_1B7FDFF4C(a5, v12, type metadata accessor for ReverseGeocodingRequest);
  sub_1B7FDFEF0(v43, v42);
  v27 = sub_1B80C8FEC();
  v28 = sub_1B80C941C();
  sub_1B7FE0150(v43);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41[0] = v39;
    *v29 = 136315394;
    v30 = ReverseGeocodingRequest.debugDescription.getter();
    v32 = v31;
    sub_1B7FDFFB4(v12, type metadata accessor for ReverseGeocodingRequest);
    v33 = sub_1B7FB84FC(v30, v32, v41);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    memcpy(v42, v43, sizeof(v42));
    v34 = Address.description.getter();
    v36 = sub_1B7FB84FC(v34, v35, v41);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_1B7FB5000, v27, v28, "ReverseGeocoder: address received for request: %s - %s", v29, 0x16u);
    v37 = v39;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v37, -1, -1);
    MEMORY[0x1B8CB8970](v29, -1, -1);
  }

  else
  {

    sub_1B7FDFFB4(v12, type metadata accessor for ReverseGeocodingRequest);
  }

  memcpy(v41, v43, sizeof(v41));
  nullsub_1(v41);
  memcpy(v40, v41, sizeof(v40));
  a3(v40, 0);
  swift_unknownObjectRelease();
  memcpy(v42, v40, sizeof(v42));
  sub_1B7FB86D4(v42, &unk_1EBA65E40, &qword_1B80D2128);
}

uint64_t sub_1B7FDE45C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E38, &qword_1B80D2120);
    v4 = sub_1B80C921C();
  }

  v7 = a3;
  v6(v4, a3);
}

void *sub_1B7FDE4FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v254 = a2;
  v5 = sub_1B80C8E2C();
  v241 = *(v5 - 8);
  v242 = v5;
  v6 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v240 = &v232 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E18, &qword_1B80D2108);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v245 = &v232 - v10;
  v11 = type metadata accessor for ReverseGeocodingRequest();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v247 = (&v232 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v236 = &v232 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v235 = (&v232 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v244 = (&v232 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v243 = &v232 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v232 - v23);
  v250 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext(0);
  v252 = *(v250 - 8);
  v25 = *(v252 + 64);
  v26 = MEMORY[0x1EEE9AC00](v250);
  v233 = &v232 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v249 = &v232 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v234 = (&v232 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v239 = &v232 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v246 = &v232 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v237 = &v232 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v232 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v238 = &v232 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  *&v248 = &v232 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v232 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v232 - v48;
  v253 = v11;
  v50 = *(v11 + 20);
  v256 = a1;
  v251 = a1 + v50;
  v51 = sub_1B7FE0764();
  v53 = v52;
  v54 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerGeoHash;
  swift_beginAccess();
  v255 = v3;
  v55 = *(v3 + v54);
  if (*(v55 + 16))
  {
    v56 = *(v3 + v54);

    v57 = sub_1B7FDA404(v51, v53);
    v59 = v58;

    if (v59)
    {
      sub_1B7FDFF4C(*(v55 + 56) + *(v252 + 72) * v57, v47, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

      v60 = v49;
      sub_1B7FE01BC(v47, v49, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      v61 = v253;
      if (qword_1ED8DD980 != -1)
      {
        swift_once();
      }

      v62 = sub_1B80C900C();
      __swift_project_value_buffer(v62, qword_1ED8DE010);
      v63 = v256;
      sub_1B7FDFF4C(v256, v24, type metadata accessor for ReverseGeocodingRequest);
      v64 = v243;
      sub_1B7FDFF4C(v63, v243, type metadata accessor for ReverseGeocodingRequest);
      v65 = v248;
      sub_1B7FDFF4C(v60, v248, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      v66 = v255;

      v67 = sub_1B80C8FEC();
      v68 = sub_1B80C941C();

      v69 = os_log_type_enabled(v67, v68);
      v70 = v250;
      if (v69)
      {
        v71 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v258[0] = v247;
        *v71 = 136316163;
        v72 = *v66;
        v73 = sub_1B80C9A3C();
        LODWORD(v246) = v68;
        v75 = sub_1B7FB84FC(v73, v74, v258);
        v249 = v60;
        v76 = v61;
        v77 = v75;

        *(v71 + 4) = v77;
        *(v71 + 12) = 2160;
        *(v71 + 14) = 1752392040;
        *(v71 + 22) = 2081;
        v78 = *v24;
        v79 = v24[1];

        sub_1B7FDFFB4(v24, type metadata accessor for ReverseGeocodingRequest);
        v80 = sub_1B7FB84FC(v78, v79, v258);

        *(v71 + 24) = v80;
        *(v71 + 32) = 2080;
        v81 = v64 + *(v76 + 20);
        v82 = sub_1B7FE0764();
        v84 = v83;
        sub_1B7FDFFB4(v64, type metadata accessor for ReverseGeocodingRequest);
        v85 = sub_1B7FB84FC(v82, v84, v258);

        *(v71 + 34) = v85;
        *(v71 + 42) = 2080;
        v61 = v76;
        v60 = v249;
        v86 = v248;
        memcpy(v259, (v248 + v70[8]), sizeof(v259));
        v87 = Address.description.getter();
        v89 = v88;
        sub_1B7FDFFB4(v86, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
        v90 = sub_1B7FB84FC(v87, v89, v258);

        *(v71 + 44) = v90;
        _os_log_impl(&dword_1B7FB5000, v67, v246, "%s: Using cached request %{private,mask.hash}s based on geoHash %s -> %s.", v71, 0x34u);
        v91 = v247;
        swift_arrayDestroy();
        MEMORY[0x1B8CB8970](v91, -1, -1);
        MEMORY[0x1B8CB8970](v71, -1, -1);
      }

      else
      {

        sub_1B7FDFFB4(v64, type metadata accessor for ReverseGeocodingRequest);
        sub_1B7FDFFB4(v24, type metadata accessor for ReverseGeocodingRequest);
        sub_1B7FDFFB4(v65, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      }

      v146 = v256[1];
      v255 = *v256;
      v147 = v244;
      sub_1B7FDFF4C(v256, v244, type metadata accessor for ReverseGeocodingRequest);
      v148 = v70[8];
      memcpy(v257, (v60 + v148), sizeof(v257));
      v149 = *&v251[*(type metadata accessor for Location() + 52)];
      v150 = v70[7];

      sub_1B7FDFEF0(v257, v259);
      v151 = v60;
      v152 = v245;
      sub_1B80C8DCC();
      v153 = v147[1];
      *v152 = *v147;
      v152[1] = v153;
      v154 = *(v61 + 20);

      v152[2] = sub_1B7FE0764();
      v152[3] = v155;
      sub_1B7FDFF4C(v147 + v154, v152 + v70[6], type metadata accessor for Location);
      sub_1B7FDFFB4(v147, type metadata accessor for ReverseGeocodingRequest);
      memcpy(v152 + v70[8], v257, 0x110uLL);
      (*(v252 + 56))(v152, 0, 1, v70);
      swift_beginAccess();
      sub_1B8014938(v152, v255, v146);
      swift_endAccess();
      memcpy(v258, (v151 + v148), sizeof(v258));
      sub_1B7FDFEF0(v258, v259);
      sub_1B7FDFFB4(v151, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
      memcpy(v259, v258, sizeof(v259));
      nullsub_1(v259);
      v156 = v254;
      return memcpy(v156, v259, 0x110uLL);
    }
  }

  v92 = v254;
  v93 = v256;
  if (*(v256 + *(v253 + 28)) != 1)
  {
LABEL_19:
    v157 = *v93;
    v158 = v93[1];
    v159 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerIdentifier;
    v160 = v255;
    swift_beginAccess();
    v161 = *(v160 + v159);
    v162 = v249;
    if (*(v161 + 16))
    {

      v163 = sub_1B7FDA404(v157, v158);
      if (v164)
      {
        v165 = v239;
        sub_1B7FDFF4C(*(v161 + 56) + *(v252 + 72) * v163, v239, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

        v166 = v246;
        sub_1B7FE01BC(v165, v246, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
        v167 = v240;
        sub_1B80C8DFC();
        v168 = v250;
        v169 = *(v250 + 28);
        sub_1B80C8D7C();
        v171 = v170;
        (*(v241 + 8))(v167, v242);
        if (v171 > 30.0)
        {
          if (qword_1ED8DD980 != -1)
          {
            swift_once();
          }

          v172 = sub_1B80C900C();
          __swift_project_value_buffer(v172, qword_1ED8DE010);
          v173 = v234;
          sub_1B7FDFF4C(v166, v234, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

          v174 = sub_1B80C8FEC();
          v175 = sub_1B80C941C();

          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            *&v259[0] = v177;
            *v176 = 136315907;
            v178 = *v160;
            v179 = sub_1B80C9A3C();
            v181 = sub_1B7FB84FC(v179, v180, v259);

            *(v176 + 4) = v181;
            *(v176 + 12) = 2160;
            *(v176 + 14) = 1752392040;
            *(v176 + 22) = 2081;
            v182 = *v173;
            v183 = v173[1];

            sub_1B7FDFFB4(v173, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v184 = sub_1B7FB84FC(v182, v183, v259);

            *(v176 + 24) = v184;
            *(v176 + 32) = 2048;
            *(v176 + 34) = 0x403E000000000000;
            _os_log_impl(&dword_1B7FB5000, v174, v175, "%s: Cached request for %{private,mask.hash}s is older than %f s.", v176, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x1B8CB8970](v177, -1, -1);
            MEMORY[0x1B8CB8970](v176, -1, -1);

            v185 = v246;
          }

          else
          {

            sub_1B7FDFFB4(v173, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v185 = v166;
          }

          v186 = type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext;
          goto LABEL_33;
        }

        v201 = v166 + *(v168 + 24);
        v202 = type metadata accessor for Location();
        v203 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v201 + v202[10]) longitude:*(v201 + v202[11])];
        v204 = v251;
        v205 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v251[v202[10]] longitude:*&v251[v202[11]]];
        [v203 distanceFromLocation_];
        v207 = v206;
        if (v204[v202[15]] == 2)
        {
          v208 = 250.0;
        }

        else
        {
          v208 = 50.0;
        }

        if (v206 < v208)
        {
          if (qword_1ED8DD980 != -1)
          {
            swift_once();
          }

          v209 = sub_1B80C900C();
          __swift_project_value_buffer(v209, qword_1ED8DE010);
          v210 = v246;
          sub_1B7FDFF4C(v246, v162, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
          v211 = v233;
          sub_1B7FDFF4C(v210, v233, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

          v212 = sub_1B80C8FEC();
          v213 = v160;
          v214 = sub_1B80C941C();

          if (os_log_type_enabled(v212, v214))
          {
            v215 = swift_slowAlloc();
            LODWORD(v253) = v214;
            v216 = v215;
            v256 = swift_slowAlloc();
            v258[0] = v256;
            *v216 = 136316419;
            v217 = *v213;
            v218 = sub_1B80C9A3C();
            v220 = v162;
            v221 = sub_1B7FB84FC(v218, v219, v258);

            *(v216 + 4) = v221;
            *(v216 + 12) = 2160;
            *(v216 + 14) = 1752392040;
            *(v216 + 22) = 2081;
            v222 = *v220;
            v223 = v220[1];

            sub_1B7FDFFB4(v220, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v224 = sub_1B7FB84FC(v222, v223, v258);

            *(v216 + 24) = v224;
            *(v216 + 32) = 2048;
            *(v216 + 34) = v207;
            *(v216 + 42) = 2048;
            *(v216 + 44) = v208;
            *(v216 + 52) = 2080;
            v225 = v250;
            memcpy(v259, (v211 + *(v250 + 32)), sizeof(v259));
            v226 = Address.description.getter();
            v228 = v227;
            v92 = v254;
            sub_1B7FDFFB4(v211, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v229 = sub_1B7FB84FC(v226, v228, v258);

            *(v216 + 54) = v229;
            _os_log_impl(&dword_1B7FB5000, v212, v253, "%s: Using cached request for %{private,mask.hash}s due to location distance throttling - distance: %f, limit: %f -> %s.", v216, 0x3Eu);
            v230 = v256;
            swift_arrayDestroy();
            MEMORY[0x1B8CB8970](v230, -1, -1);
            MEMORY[0x1B8CB8970](v216, -1, -1);
          }

          else
          {

            sub_1B7FDFFB4(v162, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            sub_1B7FDFFB4(v211, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
            v225 = v250;
          }

          v231 = v246;
          memcpy(v258, (v246 + *(v225 + 32)), sizeof(v258));
          sub_1B7FDFEF0(v258, v259);
          sub_1B7FDFFB4(v231, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
          memcpy(v259, v258, sizeof(v259));
          nullsub_1(v259);
          goto LABEL_35;
        }

        sub_1B7FDFFB4(v166, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

        goto LABEL_34;
      }
    }

    if (qword_1ED8DD980 != -1)
    {
      swift_once();
    }

    v187 = sub_1B80C900C();
    __swift_project_value_buffer(v187, qword_1ED8DE010);
    v188 = v247;
    sub_1B7FDFF4C(v93, v247, type metadata accessor for ReverseGeocodingRequest);

    v189 = sub_1B80C8FEC();
    v190 = sub_1B80C941C();

    if (!os_log_type_enabled(v189, v190))
    {

      v186 = type metadata accessor for ReverseGeocodingRequest;
      v185 = v188;
LABEL_33:
      sub_1B7FDFFB4(v185, v186);
      goto LABEL_34;
    }

    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    *&v259[0] = v192;
    *v191 = 136315651;
    v193 = *v160;
    v194 = sub_1B80C9A3C();
    v196 = sub_1B7FB84FC(v194, v195, v259);

    *(v191 + 4) = v196;
    *(v191 + 12) = 2160;
    *(v191 + 14) = 1752392040;
    *(v191 + 22) = 2081;
    v197 = *v188;
    v198 = v188[1];

    sub_1B7FDFFB4(v188, type metadata accessor for ReverseGeocodingRequest);
    v199 = sub_1B7FB84FC(v197, v198, v259);

    *(v191 + 24) = v199;
    _os_log_impl(&dword_1B7FB5000, v189, v190, "%s: No cached request for %{private,mask.hash}s.", v191, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v192, -1, -1);
    MEMORY[0x1B8CB8970](v191, -1, -1);

LABEL_34:
    sub_1B7FE0124(v259);
LABEL_35:
    v156 = v92;
    return memcpy(v156, v259, 0x110uLL);
  }

  v94 = type metadata accessor for Location();
  v95 = round(*&v251[*(v94 + 40)] * 100.0) / 100.0;
  v96 = round(*&v251[*(v94 + 44)] * 100.0) / 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v97 = swift_allocObject();
  v248 = xmmword_1B80D20F0;
  *(v97 + 16) = xmmword_1B80D20F0;
  v98 = MEMORY[0x1E69E63B0];
  v99 = MEMORY[0x1E69E6438];
  *(v97 + 56) = MEMORY[0x1E69E63B0];
  *(v97 + 64) = v99;
  *(v97 + 32) = v95;
  *(v97 + 96) = v98;
  *(v97 + 104) = v99;
  *(v97 + 72) = v96;
  v100 = sub_1B80C90DC();
  v102 = v101;
  v103 = *(v255 + v54);
  if (!*(v103 + 16))
  {

LABEL_18:
    v93 = v256;
    goto LABEL_19;
  }

  v104 = v100;
  v105 = *(v255 + v54);

  v106 = sub_1B7FDA404(v104, v102);
  v108 = v107;

  if ((v108 & 1) == 0)
  {

    v92 = v254;
    goto LABEL_18;
  }

  sub_1B7FDFF4C(*(v103 + 56) + *(v252 + 72) * v106, v40, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);

  v109 = v238;
  sub_1B7FE01BC(v40, v238, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
  if (qword_1ED8DD980 != -1)
  {
    swift_once();
  }

  v110 = sub_1B80C900C();
  __swift_project_value_buffer(v110, qword_1ED8DE010);
  v111 = v256;
  v112 = v235;
  sub_1B7FDFF4C(v256, v235, type metadata accessor for ReverseGeocodingRequest);
  v113 = v236;
  sub_1B7FDFF4C(v111, v236, type metadata accessor for ReverseGeocodingRequest);
  v114 = v237;
  sub_1B7FDFF4C(v109, v237, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
  v115 = v255;

  v116 = sub_1B80C8FEC();
  v117 = sub_1B80C941C();

  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v256 = swift_slowAlloc();
    v258[0] = v256;
    *v118 = 136316163;
    v119 = *v115;
    v120 = sub_1B80C9A3C();
    LODWORD(v255) = v117;
    v122 = v113;
    v123 = sub_1B7FB84FC(v120, v121, v258);

    *(v118 + 4) = v123;
    *(v118 + 12) = 2160;
    *(v118 + 14) = 1752392040;
    *(v118 + 22) = 2081;
    v125 = *v112;
    v124 = v112[1];

    sub_1B7FDFFB4(v112, type metadata accessor for ReverseGeocodingRequest);
    v126 = sub_1B7FB84FC(v125, v124, v258);

    *(v118 + 24) = v126;
    *(v118 + 32) = 2080;
    v127 = v122 + *(v253 + 20);
    v128 = round(*(v127 + *(v94 + 40)) * 100.0) / 100.0;
    v129 = round(*(v127 + *(v94 + 44)) * 100.0) / 100.0;
    v130 = swift_allocObject();
    *(v130 + 16) = v248;
    v131 = MEMORY[0x1E69E63B0];
    *(v130 + 56) = MEMORY[0x1E69E63B0];
    v132 = MEMORY[0x1E69E6438];
    *(v130 + 64) = MEMORY[0x1E69E6438];
    *(v130 + 32) = v128;
    *(v130 + 96) = v131;
    *(v130 + 104) = v132;
    *(v130 + 72) = v129;
    v133 = sub_1B80C90DC();
    v135 = v134;
    sub_1B7FDFFB4(v122, type metadata accessor for ReverseGeocodingRequest);
    v136 = sub_1B7FB84FC(v133, v135, v258);

    *(v118 + 34) = v136;
    *(v118 + 42) = 2080;
    v137 = v250;
    v138 = v237;
    memcpy(v259, (v237 + *(v250 + 32)), sizeof(v259));
    v139 = Address.description.getter();
    v141 = v140;
    sub_1B7FDFFB4(v138, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v142 = sub_1B7FB84FC(v139, v141, v258);

    *(v118 + 44) = v142;
    _os_log_impl(&dword_1B7FB5000, v116, v255, "%s: Using coarse cached request %{private,mask.hash}s based on coarseGeoHash %s -> %s.", v118, 0x34u);
    v143 = v256;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v143, -1, -1);
    v144 = v118;
    v109 = v238;
    MEMORY[0x1B8CB8970](v144, -1, -1);

    v145 = v254;
  }

  else
  {

    sub_1B7FDFFB4(v113, type metadata accessor for ReverseGeocodingRequest);
    sub_1B7FDFFB4(v112, type metadata accessor for ReverseGeocodingRequest);
    sub_1B7FDFFB4(v114, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
    v145 = v254;
    v137 = v250;
  }

  memcpy(v258, (v109 + *(v137 + 32)), sizeof(v258));
  sub_1B7FDFEF0(v258, v259);
  sub_1B7FDFFB4(v109, type metadata accessor for ReverseGeocoder.ReverseGeocodingCacheContext);
  memcpy(v259, v258, sizeof(v259));
  nullsub_1(v259);
  v156 = v145;
  return memcpy(v156, v259, 0x110uLL);
}

uint64_t sub_1B7FDFDC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7FDFE38()
{
  result = qword_1EBA65E08;
  if (!qword_1EBA65E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65E08);
  }

  return result;
}

unint64_t sub_1B7FDFE8C()
{
  result = qword_1EBA65E10;
  if (!qword_1EBA65E10)
  {
    type metadata accessor for ReverseGeocoder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65E10);
  }

  return result;
}

uint64_t sub_1B7FDFF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7FDFFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7FE0014(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0) - 8) + 80);

  return sub_1B7FDD954(a1, a2);
}

void sub_1B7FE00A0(unint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ReverseGeocodingRequest() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1B7FDDF2C(a1, a2, v6, v7, v8);
}

double sub_1B7FE0124(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1B7FE01A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7FE01BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ReverseGeocodingRequest.debugDescription.getter()
{
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0xD000000000000017, 0x80000001B80D2120);
  MEMORY[0x1B8CB7A40](0x69746E6564690A3ALL, 0xEE00203A72656966);
  MEMORY[0x1B8CB7A40](*v0, v0[1]);
  MEMORY[0x1B8CB7A40](0x203A687361680ALL, 0xE700000000000000);
  v1 = type metadata accessor for ReverseGeocodingRequest();
  v2 = v0 + *(v1 + 20);
  v3 = sub_1B7FE0764();
  MEMORY[0x1B8CB7A40](v3);

  MEMORY[0x1B8CB7A40](0x203A74616C0ALL, 0xE600000000000000);
  v4 = type metadata accessor for Location();
  v5 = *&v2[v4[10]];
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x203A676E6F6C0ALL, 0xE700000000000000);
  v6 = *&v2[v4[11]];
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x3A7375696461720ALL, 0xE900000000000020);
  v7 = *&v2[v4[8]];
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x3A74656B6375620ALL, 0xE900000000000020);
  v8 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CC070);
  if (*(v0 + *(v1 + 28)))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v9, v10);

  return 0;
}

uint64_t type metadata accessor for ReverseGeocodingRequest()
{
  result = qword_1EBA65E60;
  if (!qword_1EBA65E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReverseGeocodingRequest.coarseGeoHash.getter()
{
  v1 = v0 + *(type metadata accessor for ReverseGeocodingRequest() + 20);
  v2 = type metadata accessor for Location();
  v3 = round(*(v1 + *(v2 + 40)) * 100.0) / 100.0;
  v4 = round(*(v1 + *(v2 + 44)) * 100.0) / 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E63B0];
  v7 = MEMORY[0x1E69E6438];
  *(v5 + 16) = xmmword_1B80D20F0;
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v4;

  return sub_1B80C90DC();
}

uint64_t ReverseGeocodingRequest.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReverseGeocodingRequest.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReverseGeocodingRequest() + 20);

  return sub_1B7FD7C58(v3, a1);
}

uint64_t ReverseGeocodingRequest.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReverseGeocodingRequest() + 24);

  return sub_1B7FDFDC8(v3, a1);
}

uint64_t sub_1B7FE0764()
{
  v1 = type metadata accessor for Location();
  v2 = round(*(v0 + v1[10]) * 10000.0) / 10000.0;
  v3 = round(*(v0 + v1[11]) * 10000.0) / 10000.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E63B0];
  v6 = MEMORY[0x1E69E6438];
  *(v4 + 16) = xmmword_1B80D2130;
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v3;
  v7 = *(v0 + v1[8]);
  if (v7 >= 5.0)
  {
    if (v7 >= 10.0)
    {
      if (v7 >= 25.0)
      {
        if (v7 >= 50.0)
        {
          if (v7 >= 100.0)
          {
            v8 = 1000;
            if (v7 < 250.0)
            {
              v8 = 250;
            }
          }

          else
          {
            v8 = 100;
          }
        }

        else
        {
          v8 = 50;
        }
      }

      else
      {
        v8 = 25;
      }
    }

    else
    {
      v8 = 10;
    }
  }

  else
  {
    v8 = 5;
  }

  v9 = MEMORY[0x1E69E65A8];
  *(v4 + 136) = MEMORY[0x1E69E6530];
  *(v4 + 144) = v9;
  *(v4 + 112) = v8;

  return sub_1B80C90DC();
}

uint64_t ReverseGeocodingRequest.hash(into:)()
{
  v1 = v0;
  v2 = sub_1B80C8EDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = *v0;
  v12 = v0[1];
  sub_1B80C911C();
  v13 = type metadata accessor for ReverseGeocodingRequest();
  v14 = v0 + v13[5];
  Location.hash(into:)();
  sub_1B7FDFDC8(v1 + v13[6], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1B80C995C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1B80C995C();
    sub_1B7FE1038(&qword_1EBA65E50, MEMORY[0x1E6969770]);
    sub_1B80C905C();
    (*(v3 + 8))(v6, v2);
  }

  v15 = *(v1 + v13[7]);
  return sub_1B80C995C();
}

uint64_t ReverseGeocodingRequest.hashValue.getter()
{
  sub_1B80C993C();
  ReverseGeocodingRequest.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B7FE0B40()
{
  sub_1B80C993C();
  ReverseGeocodingRequest.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B7FE0B84()
{
  sub_1B80C993C();
  ReverseGeocodingRequest.hash(into:)();
  return sub_1B80C997C();
}

uint64_t _s12FindMyLocate23ReverseGeocodingRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B80C8EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E70, &qword_1B80D2218);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B80C981C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for ReverseGeocodingRequest();
  if (!_s12FindMyLocate8LocationV2eeoiySbAC_ACtFZ_0(a1 + v17[5], a2 + v17[5]))
  {
    goto LABEL_11;
  }

  v18 = v17[6];
  v19 = *(v13 + 48);
  sub_1B7FDFDC8(a1 + v18, v16);
  sub_1B7FDFDC8(a2 + v18, &v16[v19]);
  v27 = v5;
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_1B7FB86D4(v16, &qword_1EBA65E00, &qword_1B80D2160);
LABEL_14:
      v21 = *(a1 + v17[7]) ^ *(a2 + v17[7]) ^ 1;
      return v21 & 1;
    }

    goto LABEL_10;
  }

  sub_1B7FDFDC8(v16, v12);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    (*(v27 + 8))(v12, v4);
LABEL_10:
    sub_1B7FB86D4(v16, &qword_1EBA65E70, &qword_1B80D2218);
    goto LABEL_11;
  }

  v23 = v27;
  (*(v27 + 32))(v8, &v16[v19], v4);
  sub_1B7FE1038(&qword_1EBA65E78, MEMORY[0x1E6969770]);
  v24 = sub_1B80C908C();
  v25 = *(v23 + 8);
  v25(v8, v4);
  v25(v12, v4);
  sub_1B7FB86D4(v16, &qword_1EBA65E00, &qword_1B80D2160);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

void sub_1B7FE0F9C()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_1B7FB7A44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B7FE1038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7FE1080()
{
  v1 = v0;
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF88);
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Session FenceConnection deinit", v5, 2u);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_serviceDescription, &qword_1EBA65EA0, &qword_1B80D23B0);
  v6 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler + 8);
  sub_1B7FBE244(*(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler));
  swift_weakDestroy();
  v7 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_session);

  v8 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1B7FE11CC()
{
  sub_1B7FE1080();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B7FE1200()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1B80C92CC();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;

    sub_1B80A202C(0, 0, v3, &unk_1B80D2460, v7);

    sub_1B7FE16AC();
  }

  return result;
}

uint64_t sub_1B7FE1340(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B7FE1384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FE13A4, a4, 0);
}

uint64_t sub_1B7FE13A4()
{
  v1 = (v0[3] + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler);
  v2 = *v1;
  v0[4] = *v1;
  v0[5] = v1[1];
  sub_1B7FBE254(v2);

  return MEMORY[0x1EEE6DFA0](sub_1B7FE1428, 0, 0);
}

uint64_t sub_1B7FE1428()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 32);
    v8 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 48) = v5;
    *v5 = v0;
    v5[1] = sub_1B7FE1554;

    return v8();
  }

  else
  {
    **(v0 + 16) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B7FE1554()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v5 = *v0;

  sub_1B7FBE244(v3);

  return MEMORY[0x1EEE6DFA0](sub_1B7FE1684, 0, 0);
}

void sub_1B7FE16AC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = *(*(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager) + 16);
  os_unfair_lock_lock((v6 + 32));
  v7 = *(*(v6 + 16) + 16);
  os_unfair_lock_unlock((v6 + 32));
  if (v7)
  {
    v8 = sub_1B80C92CC();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v0;
    v9[5] = v1;

    sub_1B80A1D3C(0, 0, v5, &unk_1B80D2470, v9);
  }
}

uint64_t sub_1B7FE1810()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 32));
  sub_1B7FE1880((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v2 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7FE1880(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - v5;
  v17[0] = a1;
  v7 = *a1;
  v8 = *a1 + 64;
  v9 = 1 << *(*a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(*a1 + 64);
  v12 = (v9 + 63) >> 6;
  v17[3] = v3 + 16;

  for (i = 0; v11; result = (*(v3 + 8))(v6, v2))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v3 + 16))(v6, *(v7 + 56) + *(v3 + 72) * (v16 | (v15 << 6)), v2);
    sub_1B80C92FC();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      *v17[0] = MEMORY[0x1E69E7CC8];
      return result;
    }

    v11 = *(v8 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7FE1A50(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA8, &qword_1B80D23B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  sub_1B7FE1BFC(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1B7FB86D4(v6, &qword_1EBA65EA8, &qword_1B80D23B8);
  }

  (*(v8 + 32))(v11, v6, v7);
  sub_1B80C92FC();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B7FE1BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B7FBEB64(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B8091CFC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1B80C8E9C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1B8013DDC(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1B7FE1DC4()
{
  v19 = v0;
  v1 = v0[7];

  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF88);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0x75716552656B616DLL, 0xEF293A5F28747365, v18);
    *(v8 + 12) = 2082;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, v18);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v14 = v0[9];
  swift_willThrow();
  v15 = v0[1];
  v16 = v0[9];

  return v15();
}

uint64_t sub_1B7FE1FD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for FenceClientRequest(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for FenceResponse(0);
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE20D4, v2, 0);
}

uint64_t sub_1B7FE20D4()
{
  v1 = v0[5];
  sub_1B7FC0784(v0[3], v0[6], type metadata accessor for Fence);
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FE21A4;
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[4];

  return sub_1B7FBFF48(v3, v4);
}

uint64_t sub_1B7FE21A4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 96) = v0;

  sub_1B7FC730C(v4, type metadata accessor for FenceClientRequest);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1B7FE5BC4;
  }

  else
  {
    v7 = sub_1B7FE5BC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B7FE2300(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for FenceClientRequest(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for FenceResponse(0);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE23FC, v1, 0);
}

uint64_t sub_1B7FE23FC()
{
  v1 = v0[4];
  sub_1B7FC0784(v0[2], v0[5], type metadata accessor for Fence.ID);
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FE24CC;
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[3];

  return sub_1B7FBFF48(v3, v4);
}

uint64_t sub_1B7FE24CC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 88) = v0;

  sub_1B7FC730C(v4, type metadata accessor for FenceClientRequest);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B7FE281C;
  }

  else
  {
    v7 = sub_1B7FE2628;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B7FE2628()
{
  v1 = v0[6];
  sub_1B7FC0784(v0[9], v0[8], type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[8];
  v3 = v0[9];
  if (EnumCaseMultiPayload == 3)
  {
    v5 = v0[5];
    sub_1B7FC730C(v0[9], type metadata accessor for FenceResponse);
    sub_1B7FC730C(v4, type metadata accessor for FenceResponse);
  }

  else
  {
    v7 = v0[6];
    v8 = v0[7];
    sub_1B7FC730C(v0[8], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa);
    swift_allocError();
    v10 = v9;
    sub_1B7FC0784(v3, v9, type metadata accessor for FenceResponse);
    (*(v8 + 56))(v10, 0, 1, v7);
    swift_willThrow();
    sub_1B7FC730C(v3, type metadata accessor for FenceResponse);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[5];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7FE281C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FE289C()
{
  v1[2] = v0;
  v2 = type metadata accessor for FenceClientRequest(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for FenceResponse(0);
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE2998, v0, 0);
}

uint64_t sub_1B7FE2998()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B7FE2A40;
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[2];

  return sub_1B7FBFF48(v4, v5);
}

uint64_t sub_1B7FE2A40()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 80) = v0;

  sub_1B7FC730C(v4, type metadata accessor for FenceClientRequest);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1B7FE2DB8;
  }

  else
  {
    v7 = sub_1B7FE2B9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B7FE2B9C()
{
  v1 = v0[5];
  sub_1B7FC0784(v0[8], v0[7], type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[7];
  v3 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = v0[4];
    sub_1B7FC730C(v0[8], type metadata accessor for FenceResponse);
    v6 = *v4;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v9 = v0[5];
    v10 = v0[6];
    sub_1B7FC730C(v0[7], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa);
    swift_allocError();
    v12 = v11;
    sub_1B7FC0784(v3, v11, type metadata accessor for FenceResponse);
    (*(v10 + 56))(v12, 0, 1, v9);
    swift_willThrow();
    sub_1B7FC730C(v3, type metadata accessor for FenceResponse);
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[4];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1B7FE2DB8()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FE2E38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for FenceClientRequest(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for FenceResponse(0);
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE2F38, v2, 0);
}

uint64_t sub_1B7FE2F38()
{
  v1 = v0[5];
  sub_1B7FC0784(v0[3], v0[6], type metadata accessor for Fence.ID);
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FE3008;
  v3 = v0[10];
  v4 = v0[6];
  v5 = v0[4];

  return sub_1B7FBFF48(v3, v4);
}

uint64_t sub_1B7FE3008()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 96) = v0;

  sub_1B7FC730C(v4, type metadata accessor for FenceClientRequest);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_1B7FE3368;
  }

  else
  {
    v7 = sub_1B7FE3164;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B7FE3164()
{
  v1 = v0[7];
  sub_1B7FC0784(v0[10], v0[9], type metadata accessor for FenceResponse);
  if (swift_getEnumCaseMultiPayload())
  {
    v2 = v0[10];
    v3 = v0[7];
    v4 = v0[8];
    sub_1B7FC730C(v0[9], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa);
    swift_allocError();
    v6 = v5;
    sub_1B7FC0784(v2, v5, type metadata accessor for FenceResponse);
    (*(v4 + 56))(v6, 0, 1, v3);
    swift_willThrow();
    sub_1B7FC730C(v2, type metadata accessor for FenceResponse);
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[6];
  }

  else
  {
    v11 = v0[9];
    v12 = v0[6];
    v13 = v0[2];
    sub_1B7FC730C(v0[10], type metadata accessor for FenceResponse);
    sub_1B7FC07EC(v11, v13, type metadata accessor for Fence);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B7FE3368()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FE33E8(uint64_t *a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v5 = type metadata accessor for FenceClientRequest(0);
  v3[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v7 = type metadata accessor for FenceResponse(0);
  v3[6] = v7;
  v8 = *(v7 - 8);
  v3[7] = v8;
  v9 = *(v8 + 64) + 15;
  v3[8] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a1;
  v12 = a1[1];
  v3[9] = v10;
  v3[10] = v11;
  v3[11] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1B7FE34F8, v2, 0);
}

uint64_t sub_1B7FE34F8()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC8, &unk_1B80D2400) + 48);
  *v3 = v2;
  v3[1] = v1;
  sub_1B7FD6818(v5, v3 + v6);
  swift_storeEnumTagMultiPayload();

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1B7FE35F4;
  v8 = v0[9];
  v9 = v0[5];
  v10 = v0[3];

  return sub_1B7FBFF48(v8, v9);
}

uint64_t sub_1B7FE35F4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 104) = v0;

  sub_1B7FC730C(v4, type metadata accessor for FenceClientRequest);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1B7FE3750;
  }

  else
  {
    v7 = sub_1B7FE2628;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B7FE3750()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FE37D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for FenceClientRequest(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for FenceResponse(0);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE38D0, v3, 0);
}

uint64_t sub_1B7FE38D0()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB8, &unk_1B80DEEA0) + 48);
  sub_1B7FC0784(v4, v2, type metadata accessor for Fence.ID);
  sub_1B7FC0784(v3, v2 + v5, type metadata accessor for Fence.TriggerPosition);
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FE39EC;
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[5];

  return sub_1B7FBFF48(v7, v8);
}

uint64_t sub_1B7FE39EC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 104) = v0;

  sub_1B7FC730C(v4, type metadata accessor for FenceClientRequest);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1B7FE3D3C;
  }

  else
  {
    v7 = sub_1B7FE3B48;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B7FE3B48()
{
  v1 = v0[8];
  sub_1B7FC0784(v0[11], v0[10], type metadata accessor for FenceResponse);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = v0[10];
    v3 = v0[7];
    v4 = v0[2];
    sub_1B7FC730C(v0[11], type metadata accessor for FenceResponse);
    sub_1B7FE5880(v2, v4);
  }

  else
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    sub_1B7FC730C(v0[10], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa);
    swift_allocError();
    v10 = v9;
    sub_1B7FC0784(v6, v9, type metadata accessor for FenceResponse);
    (*(v8 + 56))(v10, 0, 1, v7);
    swift_willThrow();
    sub_1B7FC730C(v6, type metadata accessor for FenceResponse);
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[7];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FE3D3C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7FE3DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1B80C929C();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for FenceClientRequest(0);
  v4[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v10 = type metadata accessor for FenceResponse(0);
  v4[15] = v10;
  v11 = *(v10 - 8);
  v4[16] = v11;
  v12 = *(v11 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v13 = sub_1B80C95CC();
  v4[19] = v13;
  v14 = *(v13 - 8);
  v4[20] = v14;
  v15 = *(v14 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v16 = sub_1B80C95DC();
  v4[23] = v16;
  v17 = *(v16 - 8);
  v4[24] = v17;
  v18 = *(v17 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE3FD8, 0, 0);
}

uint64_t sub_1B7FE3FD8()
{
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  *(v0 + 208) = __swift_project_value_buffer(v1, qword_1ED8DDF88);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "FenceConnection will try restart streaming", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager;
  *(v0 + 216) = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager;
  *(v0 + 240) = 500000000000000000;
  *(v0 + 224) = xmmword_1B80D2230;
  v6 = *(*(*(v0 + 72) + v5) + 16);
  os_unfair_lock_lock((v6 + 32));
  v7 = *(*(v6 + 16) + 16);
  os_unfair_lock_unlock((v6 + 32));
  if (v7)
  {
    v8 = *(v0 + 200);
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    sub_1B80C989C();
    *(v0 + 40) = xmmword_1B80D2240;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v14 = sub_1B7FC0854(&qword_1EBA65920, MEMORY[0x1E69E8820]);
    sub_1B80C987C();
    sub_1B7FC0854(&qword_1EBA65928, MEMORY[0x1E69E87E8]);
    sub_1B80C95EC();
    v15 = *(v12 + 8);
    *(v0 + 248) = v15;
    *(v0 + 256) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v11, v13);
    v16 = *(MEMORY[0x1E69E8938] + 4);
    v17 = swift_task_alloc();
    *(v0 + 264) = v17;
    *v17 = v0;
    v17[1] = sub_1B7FE4390;
    v18 = *(v0 + 200);
    v20 = *(v0 + 176);
    v19 = *(v0 + 184);

    return MEMORY[0x1EEE6DE58](v20, v0 + 16, v19, v14);
  }

  else
  {
    v21 = *(v0 + 208);
    v22 = sub_1B80C8FEC();
    v23 = sub_1B80C941C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1B7FB5000, v22, v23, "FenceConnection - no more subscribers - will abort restarting", v24, 2u);
      MEMORY[0x1B8CB8970](v24, -1, -1);
    }

    v25 = *(v0 + 200);
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 112);
    v31 = *(v0 + 96);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1B7FE4390()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v16 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);
    (*(v2 + 248))(*(v2 + 176), *(v2 + 152));
    v5 = sub_1B7FE46F8;
    v6 = 0;
  }

  else
  {
    v8 = *(v2 + 248);
    v7 = *(v2 + 256);
    v10 = *(v2 + 192);
    v9 = *(v2 + 200);
    v11 = *(v2 + 176);
    v12 = *(v2 + 184);
    v13 = *(v2 + 152);
    v14 = *(v2 + 72);
    v8(v11, v13);
    (*(v10 + 8))(v9, v12);
    v5 = sub_1B7FE44F4;
    v6 = v14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1B7FE44F4()
{
  v2 = v0[13];
  v1 = v0[14];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_1B7FE459C;
  v4 = v0[18];
  v5 = v0[14];
  v6 = v0[9];

  return sub_1B7FBFF48(v4, v5);
}

uint64_t sub_1B7FE459C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 72);
  sub_1B7FC730C(v5, type metadata accessor for FenceClientRequest);
  if (v0)
  {
    v7 = sub_1B7FE4E68;
  }

  else
  {
    v7 = sub_1B7FE4CA4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B7FE46F8()
{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v1 = *(v0 + 272);
  *(v0 + 56) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);

    (*(v6 + 8))(v5, v7);
LABEL_3:
    v8 = *(v0 + 200);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 112);
    v14 = *(v0 + 96);

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 232);
  v18 = *(v0 + 240);
  v19 = *(v0 + 224);
  v20 = *(v0 + 208);

  v21 = v19 - 1;
  *(v0 + 64) = 2;
  sub_1B7FE5AE8();
  v22 = sub_1B80C9A0C();
  v24 = v23;
  v25 = sub_1B80C99FC();
  if (v25)
  {
    v26 = 0x8AC7230489E80000;
  }

  else
  {
    v26 = v22;
  }

  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  v28 = v1;
  v29 = sub_1B80C8FEC();
  v30 = sub_1B80C941C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543618;
    v33 = v1;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    *(v31 + 12) = 2050;
    *(v31 + 14) = v21;
    _os_log_impl(&dword_1B7FB5000, v29, v30, "FenceConnection failed to restart streaming with error: %{public}@. Will try %{public}ld more times", v31, 0x16u);
    sub_1B7FB86D4(v32, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v32, -1, -1);
    MEMORY[0x1B8CB8970](v31, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 224) <= 1uLL)
  {
    v49 = *(v0 + 208);
    v50 = sub_1B80C8FEC();
    v51 = sub_1B80C941C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1B7FB5000, v50, v51, "FenceConnection failed all streaming restart attempts", v52, 2u);
      MEMORY[0x1B8CB8970](v52, -1, -1);
    }

    v53 = *(v0 + 216);
    v54 = *(v0 + 72);

    v55 = *(*(v54 + v53) + 16);
    os_unfair_lock_lock((v55 + 32));
    sub_1B7FE1880((v55 + 16));
    os_unfair_lock_unlock((v55 + 32));
    goto LABEL_3;
  }

  *(v0 + 232) = v27;
  *(v0 + 240) = v26;
  *(v0 + 224) = v21;
  v35 = *(*(*(v0 + 72) + *(v0 + 216)) + 16);
  os_unfair_lock_lock((v35 + 32));
  v36 = *(*(v35 + 16) + 16);
  os_unfair_lock_unlock((v35 + 32));
  if (!v36)
  {
    v56 = *(v0 + 208);
    v57 = sub_1B80C8FEC();
    v58 = sub_1B80C941C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1B7FB5000, v57, v58, "FenceConnection - no more subscribers - will abort restarting", v59, 2u);
      MEMORY[0x1B8CB8970](v59, -1, -1);
    }

    goto LABEL_3;
  }

  v37 = *(v0 + 200);
  v38 = *(v0 + 184);
  v60 = *(v0 + 176);
  v40 = *(v0 + 160);
  v39 = *(v0 + 168);
  v41 = *(v0 + 152);
  sub_1B80C989C();
  *(v0 + 40) = v26;
  *(v0 + 48) = v27;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v42 = sub_1B7FC0854(&qword_1EBA65920, MEMORY[0x1E69E8820]);
  sub_1B80C987C();
  sub_1B7FC0854(&qword_1EBA65928, MEMORY[0x1E69E87E8]);
  sub_1B80C95EC();
  v43 = *(v40 + 8);
  *(v0 + 248) = v43;
  *(v0 + 256) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v39, v41);
  v44 = *(MEMORY[0x1E69E8938] + 4);
  v45 = swift_task_alloc();
  *(v0 + 264) = v45;
  *v45 = v0;
  v45[1] = sub_1B7FE4390;
  v46 = *(v0 + 200);
  v48 = *(v0 + 176);
  v47 = *(v0 + 184);

  return MEMORY[0x1EEE6DE58](v48, v0 + 16, v47, v42);
}

uint64_t sub_1B7FE4CA4()
{
  v1 = v0[15];
  sub_1B7FC0784(v0[18], v0[17], type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[17];
  v3 = v0[18];
  if (EnumCaseMultiPayload == 3)
  {
    sub_1B7FC730C(v0[18], type metadata accessor for FenceResponse);
    sub_1B7FC730C(v4, type metadata accessor for FenceResponse);
    v5 = sub_1B7FE4E8C;
  }

  else
  {
    v6 = v0[15];
    v7 = v0[16];
    sub_1B7FC730C(v0[17], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa);
    v8 = swift_allocError();
    v10 = v9;
    sub_1B7FC0784(v3, v9, type metadata accessor for FenceResponse);
    (*(v7 + 56))(v10, 0, 1, v6);
    swift_willThrow();
    sub_1B7FC730C(v3, type metadata accessor for FenceResponse);
    v0[37] = v8;
    v5 = sub_1B7FE4FAC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B7FE4E8C()
{
  v1 = v0[26];
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "FenceConnection restarted streaming successfully", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[14];
  v11 = v0[12];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B7FE4FAC()
{
  v1 = *(v0 + 296);
  *(v0 + 56) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v0 + 80);

    (*(v6 + 8))(v5, v7);
LABEL_3:
    v8 = *(v0 + 200);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 112);
    v14 = *(v0 + 96);

    v15 = *(v0 + 8);

    return v15();
  }

  v17 = *(v0 + 232);
  v18 = *(v0 + 240);
  v19 = *(v0 + 224);
  v20 = *(v0 + 208);

  v21 = v19 - 1;
  *(v0 + 64) = 2;
  sub_1B7FE5AE8();
  v22 = sub_1B80C9A0C();
  v24 = v23;
  v25 = sub_1B80C99FC();
  if (v25)
  {
    v26 = 0x8AC7230489E80000;
  }

  else
  {
    v26 = v22;
  }

  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  v28 = v1;
  v29 = sub_1B80C8FEC();
  v30 = sub_1B80C941C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543618;
    v33 = v1;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    *(v31 + 12) = 2050;
    *(v31 + 14) = v21;
    _os_log_impl(&dword_1B7FB5000, v29, v30, "FenceConnection failed to restart streaming with error: %{public}@. Will try %{public}ld more times", v31, 0x16u);
    sub_1B7FB86D4(v32, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v32, -1, -1);
    MEMORY[0x1B8CB8970](v31, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 224) <= 1uLL)
  {
    v49 = *(v0 + 208);
    v50 = sub_1B80C8FEC();
    v51 = sub_1B80C941C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1B7FB5000, v50, v51, "FenceConnection failed all streaming restart attempts", v52, 2u);
      MEMORY[0x1B8CB8970](v52, -1, -1);
    }

    v53 = *(v0 + 216);
    v54 = *(v0 + 72);

    v55 = *(*(v54 + v53) + 16);
    os_unfair_lock_lock((v55 + 32));
    sub_1B7FE1880((v55 + 16));
    os_unfair_lock_unlock((v55 + 32));
    goto LABEL_3;
  }

  *(v0 + 232) = v27;
  *(v0 + 240) = v26;
  *(v0 + 224) = v21;
  v35 = *(*(*(v0 + 72) + *(v0 + 216)) + 16);
  os_unfair_lock_lock((v35 + 32));
  v36 = *(*(v35 + 16) + 16);
  os_unfair_lock_unlock((v35 + 32));
  if (!v36)
  {
    v56 = *(v0 + 208);
    v57 = sub_1B80C8FEC();
    v58 = sub_1B80C941C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1B7FB5000, v57, v58, "FenceConnection - no more subscribers - will abort restarting", v59, 2u);
      MEMORY[0x1B8CB8970](v59, -1, -1);
    }

    goto LABEL_3;
  }

  v37 = *(v0 + 200);
  v38 = *(v0 + 184);
  v60 = *(v0 + 176);
  v39 = *(v0 + 160);
  v40 = *(v0 + 168);
  v41 = *(v0 + 152);
  sub_1B80C989C();
  *(v0 + 40) = v26;
  *(v0 + 48) = v27;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v42 = sub_1B7FC0854(&qword_1EBA65920, MEMORY[0x1E69E8820]);
  sub_1B80C987C();
  sub_1B7FC0854(&qword_1EBA65928, MEMORY[0x1E69E87E8]);
  sub_1B80C95EC();
  v43 = *(v39 + 8);
  *(v0 + 248) = v43;
  *(v0 + 256) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v40, v41);
  v44 = *(MEMORY[0x1E69E8938] + 4);
  v45 = swift_task_alloc();
  *(v0 + 264) = v45;
  *v45 = v0;
  v45[1] = sub_1B7FE4390;
  v46 = *(v0 + 200);
  v48 = *(v0 + 176);
  v47 = *(v0 + 184);

  return MEMORY[0x1EEE6DE58](v48, v0 + 16, v47, v42);
}

uint64_t sub_1B7FE554C()
{
  v17 = v0;
  v1 = v0[12];

  v2 = v0[16];
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF88);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0x75716552656B616DLL, 0xEF293A5F28747365, &v16);
    *(v7 + 12) = 2082;
    v0[10] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v10 = sub_1B80C90EC();
    v12 = sub_1B7FB84FC(v10, v11, &v16);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v13 = v0[12];
  v0[9] = v2;
  sub_1B80C8ACC();

  v14 = v0[1];

  return v14();
}

id sub_1B7FE5794()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7FE57DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B7FE5824(uint64_t result, int a2, int a3)
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

uint64_t sub_1B7FE5880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC0, &qword_1B80D23F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7FE5918()
{
  result = qword_1EBA65ED0;
  if (!qword_1EBA65ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65ED0);
  }

  return result;
}

uint64_t sub_1B7FE5974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return sub_1B7FE1384(a1, v4, v5, v6);
}

uint64_t sub_1B7FE5A28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B7FBA3EC;

  return sub_1B7FE3DBC(a1, v4, v5, v7);
}

unint64_t sub_1B7FE5AE8()
{
  result = qword_1EBA65EE0;
  if (!qword_1EBA65EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65EE0);
  }

  return result;
}

uint64_t sub_1B7FE5B64()
{
  v0 = type metadata accessor for FenceResponse(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

id sub_1B7FE5BCC()
{
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection____lazy_storage___sharedContactStore;
  v2 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection____lazy_storage___sharedContactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection____lazy_storage___sharedContactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1B7FE5CA4()
{
  v1 = v0;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Session FriendshipConnection deinit", v5, 2u);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_serviceDescription, &qword_1EBA65EA0, &qword_1B80D23B0);
  v6 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_session);

  v7 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler + 8);
  sub_1B7FBE244(*(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler));
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation, &unk_1EBA65FF0, &qword_1B80D2620);
  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation, &qword_1EBA65F20, &qword_1B80D2628);
  v8 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations);

  swift_weakDestroy();
  v9 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName);

  sub_1B7FB86D4(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation, &unk_1EBA65FF0, &qword_1B80D2620);
  v10 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers);

  v11 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings);

  v12 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowers);

  v13 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowings);

  v14 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_pendingOffers);

  swift_defaultActor_destroy();
  return v1;
}