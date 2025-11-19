void sub_1B71477F8()
{
  sub_1B715DB20();
  if (v0 <= 0x3F)
  {
    sub_1B714788C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B714788C()
{
  if (!qword_1EB984328)
  {
    v0 = sub_1B715E3A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB984328);
    }
  }
}

uint64_t sub_1B71478DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B7147924(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1B7147A08()
{
  result = qword_1EB984330;
  if (!qword_1EB984330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984330);
  }

  return result;
}

unint64_t sub_1B7147A60()
{
  result = qword_1EB984338;
  if (!qword_1EB984338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984338);
  }

  return result;
}

unint64_t sub_1B7147AB8()
{
  result = qword_1EB984340;
  if (!qword_1EB984340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984340);
  }

  return result;
}

unint64_t sub_1B7147B10()
{
  result = qword_1EB984348;
  if (!qword_1EB984348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984348);
  }

  return result;
}

unint64_t sub_1B7147B68()
{
  result = qword_1EB984350;
  if (!qword_1EB984350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984350);
  }

  return result;
}

unint64_t sub_1B7147BC0()
{
  result = qword_1EB984358;
  if (!qword_1EB984358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984358);
  }

  return result;
}

unint64_t sub_1B7147C18()
{
  result = qword_1EB984360;
  if (!qword_1EB984360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984360);
  }

  return result;
}

unint64_t sub_1B7147C70()
{
  result = qword_1EB984368;
  if (!qword_1EB984368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984368);
  }

  return result;
}

unint64_t sub_1B7147CC8()
{
  result = qword_1EB984370;
  if (!qword_1EB984370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984370);
  }

  return result;
}

unint64_t sub_1B7147D20()
{
  result = qword_1EB984378;
  if (!qword_1EB984378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984378);
  }

  return result;
}

unint64_t sub_1B7147D78()
{
  result = qword_1EB984380;
  if (!qword_1EB984380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984380);
  }

  return result;
}

unint64_t sub_1B7147DD0()
{
  result = qword_1EB984388;
  if (!qword_1EB984388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984388);
  }

  return result;
}

unint64_t sub_1B7147E28()
{
  result = qword_1EB984390;
  if (!qword_1EB984390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984390);
  }

  return result;
}

unint64_t sub_1B7147E80()
{
  result = qword_1EB984398;
  if (!qword_1EB984398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984398);
  }

  return result;
}

unint64_t sub_1B7147ED8()
{
  result = qword_1EB9843A0;
  if (!qword_1EB9843A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843A0);
  }

  return result;
}

unint64_t sub_1B7147F30()
{
  result = qword_1EB9843A8;
  if (!qword_1EB9843A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843A8);
  }

  return result;
}

unint64_t sub_1B7147F88()
{
  result = qword_1EB9843B0;
  if (!qword_1EB9843B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843B0);
  }

  return result;
}

unint64_t sub_1B7147FE0()
{
  result = qword_1EB9843B8;
  if (!qword_1EB9843B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843B8);
  }

  return result;
}

unint64_t sub_1B7148038()
{
  result = qword_1EB9843C0;
  if (!qword_1EB9843C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843C0);
  }

  return result;
}

uint64_t sub_1B714808C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5A64726F636572 && a2 == 0xEC0000004449656ELL;
  if (v4 || (sub_1B715EB10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556572616873 && a2 == 0xE800000000000000 || (sub_1B715EB10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B715EB10();

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

uint64_t sub_1B71481D8(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 0x616664326C68636DLL;
    }

    else
    {
      a1 = 0x346438626C68636DLL;
    }

    if (v2 == 2)
    {
      v3 = 0xEC00000065323937;
    }

    else
    {
      v3 = 0xEC00000064333038;
    }
  }

  else
  {
    if (a1)
    {
      a1 = 0x636566316C68636DLL;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v3 = 0xEC00000030313834;
    }

    else
    {
      v3 = 0xE000000000000000;
    }
  }

  v4 = a2;
  v5 = 0xE000000000000000;
  v6 = 0x616664326C68636DLL;
  v7 = 0xEC00000065323937;
  if (a2 != 2)
  {
    v6 = 0x346438626C68636DLL;
    v7 = 0xEC00000064333038;
  }

  if (a2)
  {
    v4 = 0x636566316C68636DLL;
    v5 = 0xEC00000030313834;
  }

  if (a2 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (a1 == v8 && v3 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B715EB10();
  }

  return v10 & 1;
}

uint64_t sub_1B7148344(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v9 = 0xD000000000000014;
      }

      else
      {
        v9 = 0xD000000000000010;
      }

      if (v2 == 5)
      {
        v10 = 0x80000001B716E160;
      }

      else
      {
        v10 = 0x80000001B716E180;
      }
    }

    else
    {
      v11 = 0x80000001B716E1C0;
      v12 = 0xD000000000000016;
      if (a1 == 8)
      {
        v12 = 0xD000000000000015;
      }

      else
      {
        v11 = 0x80000001B716E1E0;
      }

      if (a1 == 7)
      {
        v9 = 0xD000000000000013;
      }

      else
      {
        v9 = v12;
      }

      if (v2 == 7)
      {
        v10 = 0x80000001B716E1A0;
      }

      else
      {
        v10 = v11;
      }
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x5255657469766E69;
    v5 = 0xEC00000079654B4CLL;
    v6 = 0x6F43657469766E69;
    v7 = 0xED000079654B6564;
    if (a1 != 3)
    {
      v6 = 0x4B4C52556E6F6369;
      v7 = 0xEA00000000007965;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x656C746974627573;
    if (a1)
    {
      v3 = 0xEB0000000079654BLL;
    }

    else
    {
      v8 = 0x79654B656C746974;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v13 = 0x80000001B716E160;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v13 = 0x80000001B716E180;
        if (v9 != 0xD000000000000010)
        {
LABEL_61:
          v14 = sub_1B715EB10();
          goto LABEL_62;
        }
      }
    }

    else if (a2 == 7)
    {
      v13 = 0x80000001B716E1A0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_61;
      }
    }

    else if (a2 == 8)
    {
      v13 = 0x80000001B716E1C0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v13 = 0x80000001B716E1E0;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_61;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = 0xEB0000000079654BLL;
      if (v9 != 0x656C746974627573)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v9 != 0x79654B656C746974)
      {
        goto LABEL_61;
      }
    }
  }

  else if (a2 == 2)
  {
    v13 = 0xEC00000079654B4CLL;
    if (v9 != 0x5255657469766E69)
    {
      goto LABEL_61;
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xED000079654B6564;
    if (v9 != 0x6F43657469766E69)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v13 = 0xEA00000000007965;
    if (v9 != 0x4B4C52556E6F6369)
    {
      goto LABEL_61;
    }
  }

  if (v10 != v13)
  {
    goto LABEL_61;
  }

  v14 = 1;
LABEL_62:

  return v14 & 1;
}

uint64_t sub_1B71486CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v2)
    {
      v6 = 0x80000001B716E270;
    }

    else
    {
      v6 = 0x80000001B716E250;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xD000000000000014;
    if (a1 == 3)
    {
      v3 = 0x80000001B716E2B0;
    }

    else
    {
      v4 = 0x68736572666572;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0x80000001B716E290;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    if (a2)
    {
      v7 = 0x80000001B716E270;
    }

    else
    {
      v7 = 0x80000001B716E250;
    }

    if (v5 != v8)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 2)
  {
    v7 = 0x80000001B716E290;
    if (v5 != 0xD000000000000018)
    {
      goto LABEL_35;
    }
  }

  else if (a2 == 3)
  {
    v7 = 0x80000001B716E2B0;
    if (v5 != 0xD000000000000014)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x68736572666572)
    {
LABEL_35:
      v9 = sub_1B715EB10();
      goto LABEL_36;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_35;
  }

  v9 = 1;
LABEL_36:

  return v9 & 1;
}

uint64_t sub_1B7148860(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F697463616161;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEC000000736C6961;
    v4 = 0xE900000000000065;
    if (a1 == 2)
    {
      v6 = 0x746544746E657665;
    }

    else
    {
      v6 = 0x707954746E657665;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xEC0000006E6F6974;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6341796C696D6166;
    }

    else
    {
      v6 = 0x6E6F697463616161;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE800000000000000;
  v9 = 0x746544746E657665;
  v10 = 0xEC000000736C6961;
  if (a2 != 2)
  {
    v9 = 0x707954746E657665;
    v10 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x6341796C696D6166;
    v8 = 0xEC0000006E6F6974;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B715EB10();
  }

  return v13 & 1;
}

uint64_t sub_1B71489C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1B7155E7C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1B70E747C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1B70F7698();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1B7140D10(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1B7148AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B70E74F4(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1B7155FCC(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1B711E824(a1);
    sub_1B7140AC8(a2, a3, v10);

    return sub_1B711E824(v10);
  }

  return result;
}

FamilyCircle::URLParameter_optional __swiftcall URLParameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B715E970();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t URLParameter.rawValue.getter()
{
  v1 = 0x6E6F697463616161;
  v2 = 0x746544746E657665;
  if (*v0 != 2)
  {
    v2 = 0x707954746E657665;
  }

  if (*v0)
  {
    v1 = 0x6341796C696D6166;
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

uint64_t sub_1B7148C70()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

uint64_t sub_1B7148D48()
{
  *v0;
  *v0;
  *v0;
  sub_1B715E160();
}

uint64_t sub_1B7148E0C()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

void sub_1B7148EEC(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E6F697463616161;
  v4 = 0xEC000000736C6961;
  v5 = 0x746544746E657665;
  if (*v1 != 2)
  {
    v5 = 0x707954746E657665;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 0x6341796C696D6166;
    v2 = 0xEC0000006E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

FamilyCircle::AppleAccountAction_optional __swiftcall AppleAccountAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B715E970();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppleAccountAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x68736572666572;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000018;
  }

  v3 = 0xD000000000000011;
  if (*v0)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7149090()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

uint64_t sub_1B7149180()
{
  *v0;
  *v0;
  sub_1B715E160();
}

uint64_t sub_1B714925C()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

void sub_1B7149354(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x68736572666572;
  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001B716E2B0;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000018;
    v3 = 0x80000001B716E290;
  }

  v5 = 0x80000001B716E250;
  v6 = 0xD000000000000011;
  if (*v1)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001B716E270;
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FamilyAction.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B715E970();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B7149474()
{
  sub_1B715EC60();
  sub_1B715E160();
  return sub_1B715EC90();
}

uint64_t sub_1B71494E8()
{
  sub_1B715EC60();
  sub_1B715E160();
  return sub_1B715EC90();
}

uint64_t sub_1B714953C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B715E970();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1B71495B0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_1B715E6D0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = v23 - v13;
  v15 = 0x6E6F697463616161;
  v16 = 0xEC000000736C6961;
  v17 = 0x746544746E657665;
  if (*a1 != 2)
  {
    v17 = 0x707954746E657665;
    v16 = 0xE900000000000065;
  }

  v18 = 0xEC0000006E6F6974;
  if (*a1)
  {
    v15 = 0x6341796C696D6166;
  }

  else
  {
    v18 = 0xE800000000000000;
  }

  if (*a1 <= 1u)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  if (*a1 <= 1u)
  {
    v20 = v18;
  }

  else
  {
    v20 = v16;
  }

  v23[0] = v19;
  v23[1] = v20;
  sub_1B715DFF0();

  if ((*(*(a2 - 8) + 48))(v14, 1, a2) == 1)
  {
    (*(v11 + 8))(v14, v10);
  }

  else if (swift_dynamicCast())
  {
    v21 = *(a4 + 8);
    return sub_1B715E270();
  }

  return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
}

uint64_t Dictionary<>.subscript.getter@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = *a1;
  return sub_1B71495B0(&v5, MEMORY[0x1E69E6158], a2, a3, a4);
}

{
  v5 = *a1;
  return sub_1B71495B0(&v5, MEMORY[0x1E69E7CA0] + 8, a2, a3, a4);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1B7149FD4(a1, a2, a3, a4, a5, &qword_1EB983ED8, &unk_1B7169BE0);
}

{
  return sub_1B7149FD4(a1, a2, a3, a4, a5, &qword_1EB983428, "ڼ");
}

void (*Dictionary<>.subscript.modify(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a3;
  v12[1] = a4;
  v14 = sub_1B715E6D0();
  v13[4] = v14;
  v15 = *(v14 - 8);
  v13[5] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[6] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[6] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[7] = v17;
  v18 = *a2;
  *(v13 + 64) = *a2;
  v19 = *v5;
  v21 = v18;
  sub_1B71495B0(&v21, MEMORY[0x1E69E6158], a4, a5, v17);
  return sub_1B71499C0;
}

{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a3;
  v12[1] = a4;
  v14 = sub_1B715E6D0();
  v13[4] = v14;
  v15 = *(v14 - 8);
  v13[5] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[6] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[6] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[7] = v17;
  v18 = *a2;
  *(v13 + 64) = *a2;
  v19 = *v5;
  v21 = v18;
  sub_1B71495B0(&v21, MEMORY[0x1E69E7CA0] + 8, a4, a5, v17);
  return sub_1B714A1B0;
}

uint64_t Dictionary<>.subscript.getter@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  return sub_1B71495B0(&v5, MEMORY[0x1E69E6158], a2, a3, a4);
}

{
  v5 = *a1;
  return sub_1B71495B0(&v5, MEMORY[0x1E69E7CA0] + 8, a2, a3, a4);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  return sub_1B714A370(a1, a2, a3, a4, &qword_1EB983ED8, &unk_1B7169BE0);
}

{
  return sub_1B714A370(a1, a2, a3, a4, &qword_1EB983428, "ڼ");
}

void (*Dictionary<>.subscript.modify(void *a1, char *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1B715E6D0();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[6] = v15;
  v16 = *a2;
  *(v11 + 56) = *a2;
  v17 = *v4;
  v19 = v16;
  sub_1B71495B0(&v19, MEMORY[0x1E69E6158], a3, a4, v15);
  return sub_1B7149B80;
}

{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1B715E6D0();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[6] = v15;
  v16 = *a2;
  *(v11 + 56) = *a2;
  v17 = *v4;
  v19 = v16;
  sub_1B71495B0(&v19, MEMORY[0x1E69E7CA0] + 8, a3, a4, v15);
  return sub_1B714A540;
}

uint64_t Dictionary<>.subscript.getter(_BYTE *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F697463616161;
  v5 = 0xEC000000736C6961;
  v6 = 0x746544746E657665;
  if (v2 != 2)
  {
    v6 = 0x707954746E657665;
    v5 = 0xE900000000000065;
  }

  if (*a1)
  {
    v4 = 0x6341796C696D6166;
    v3 = 0xEC0000006E6F6974;
  }

  if (*a1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*(a2 + 16))
  {
    v10 = sub_1B70E747C(v7, v8);
    v12 = v11;

    if (v12)
    {
      v13 = (*(a2 + 56) + 16 * v10);
      v15 = *v13;
      v14 = v13[1];

      return v15;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1B7149C98(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v3 = 0xE800000000000000;
  v4 = *a1;
  v5 = a1[1];
  v6 = 0x6E6F697463616161;
  v7 = 0xEC000000736C6961;
  v8 = 0x746544746E657665;
  if (*a3 != 2)
  {
    v8 = 0x707954746E657665;
    v7 = 0xE900000000000065;
  }

  if (*a3)
  {
    v6 = 0x6341796C696D6166;
    v3 = 0xEC0000006E6F6974;
  }

  if (*a3 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (*a3 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  v11 = a1[1];

  return sub_1B71489C8(v4, v5, v9, v10);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *a3;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697463616161;
  v6 = 0xEC000000736C6961;
  v7 = 0x746544746E657665;
  if (v3 != 2)
  {
    v7 = 0x707954746E657665;
    v6 = 0xE900000000000065;
  }

  if (*a3)
  {
    v5 = 0x6341796C696D6166;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a3 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  return sub_1B71489C8(a1, a2, v8, v9);
}

uint64_t (*Dictionary<>.subscript.modify(uint64_t a1, _BYTE *a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = *a2;
  *a1 = Dictionary<>.subscript.getter(a2, *v2);
  *(a1 + 8) = v4;
  return sub_1B7149E60;
}

uint64_t sub_1B7149E60(uint64_t a1, char a2)
{
  v2 = 0x6E6F697463616161;
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = 0xE800000000000000;
  v6 = 0x746544746E657665;
  v7 = 0xEC000000736C6961;
  if (*(a1 + 24) != 2)
  {
    v6 = 0x707954746E657665;
    v7 = 0xE900000000000065;
  }

  if (*(a1 + 24))
  {
    v2 = 0x6341796C696D6166;
    v5 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    if (*(a1 + 24) <= 1u)
    {
      v8 = v2;
    }

    else
    {
      v8 = v6;
    }

    if (*(a1 + 24) <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 8);

    sub_1B71489C8(v4, v3, v8, v9);
  }

  else
  {
    if (*(a1 + 24) <= 1u)
    {
      v13 = v2;
    }

    else
    {
      v13 = v6;
    }

    if (*(a1 + 24) <= 1u)
    {
      v14 = v5;
    }

    else
    {
      v14 = v7;
    }

    v15 = *(a1 + 16);
    return sub_1B71489C8(*a1, v3, v13, v14);
  }
}

uint64_t sub_1B7149FD4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  sub_1B714AEAC(a1, a2, a3, a4, a5, a6, a7);
  v8 = sub_1B715E6D0();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void sub_1B714A1C4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 64);
  v8 = (*a1)[6];
  v9 = (*a1)[7];
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v17 = (*a1)[2];
  v18 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    (*(v11 + 16))(v8, v9, v10);
    v19 = v7;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B714ABC4(v8, &v19, v13, v14, v12, v17);
    v15 = *(v11 + 8);
    v15(v8, v10);
    v15(v9, v10);
  }

  else
  {
    v20 = *(*a1 + 64);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B714ABC4(v9, &v20, v13, v16, v12, v17);
    (*(v11 + 8))(v9, v10);
  }

  free(v9);
  free(v8);

  free(v6);
}

uint64_t sub_1B714A370(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1B714AF20(a1, a2, a3, a4, a5, a6);
  v7 = sub_1B715E6D0();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void sub_1B714A554(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 56);
  v8 = (*a1)[5];
  v9 = (*a1)[6];
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v17 = (*a1)[2];
  v13 = **a1;
  if (a2)
  {
    (*(v11 + 16))(v8, v9, v10);
    v18 = v7;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B714ABC4(v8, &v18, v13, v14, v13, v12);
    v15 = *(v11 + 8);
    v15(v8, v10);
    v15(v9, v10);
  }

  else
  {
    v19 = *(*a1 + 56);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B714ABC4(v9, &v19, v13, v16, v13, v12);
    (*(v11 + 8))(v9, v10);
  }

  free(v9);
  free(v8);

  free(v6);
}

double Dictionary<>.subscript.getter@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697463616161;
  v7 = 0xEC000000736C6961;
  v8 = 0x746544746E657665;
  if (v4 != 2)
  {
    v8 = 0x707954746E657665;
    v7 = 0xE900000000000065;
  }

  if (*a1)
  {
    v6 = 0x6341796C696D6166;
    v5 = 0xEC0000006E6F6974;
  }

  if (*a1 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (!*(a2 + 16))
  {

    goto LABEL_17;
  }

  v12 = sub_1B70E747C(v9, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_17:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v15 = *(a2 + 56) + 32 * v12;

  sub_1B70B46E8(v15, a3);
  return result;
}

uint64_t sub_1B714A7D0(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  sub_1B712C5F0(a1, v15);
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697463616161;
  v6 = 0xEC000000736C6961;
  v7 = 0x746544746E657665;
  if (v3 != 2)
  {
    v7 = 0x707954746E657665;
    v6 = 0xE900000000000065;
  }

  if (v3)
  {
    v5 = 0x6341796C696D6166;
    v4 = 0xEC0000006E6F6974;
  }

  v10 = __OFSUB__(v3, 1);
  v8 = v3 == 1;
  v9 = v3 - 1 < 0;
  if (v3 <= 1)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (v9 ^ v10 | v8)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  sub_1B712C5F0(v15, v14);
  sub_1B7148AD0(v14, v11, v12);
  return sub_1B711E824(v15);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, _BYTE *a2)
{
  v2 = 0xE800000000000000;
  v3 = 0x6E6F697463616161;
  v4 = 0xEC000000736C6961;
  v5 = 0x746544746E657665;
  if (*a2 != 2)
  {
    v5 = 0x707954746E657665;
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v3 = 0x6341796C696D6166;
    v2 = 0xEC0000006E6F6974;
  }

  if (*a2 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*a2 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  sub_1B712C5F0(a1, v10);
  sub_1B7148AD0(v10, v6, v7);
  return sub_1B711E824(a1);
}

void (*Dictionary<>.subscript.modify(uint64_t *a1, _BYTE *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x70uLL);
  }

  *a1 = v5;
  *(v5 + 96) = v2;
  *(v5 + 104) = *a2;
  Dictionary<>.subscript.getter(a2, *v2, v5);
  return sub_1B714AA20;
}

void sub_1B714AA20(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    sub_1B712C5F0(*a1, (v2 + 4));
    v4 = 0xE800000000000000;
    v5 = 0x746544746E657665;
    v6 = 0xEC000000736C6961;
    if (v3 != 2)
    {
      v5 = 0x707954746E657665;
      v6 = 0xE900000000000065;
    }

    v7 = 0x6341796C696D6166;
    if (v3)
    {
      v4 = 0xEC0000006E6F6974;
    }

    else
    {
      v7 = 0x6E6F697463616161;
    }

    if (v3 <= 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    v10 = v2[12];
    sub_1B712C5F0((v2 + 4), (v2 + 8));
    sub_1B7148AD0((v2 + 8), v8, v9);
    sub_1B711E824((v2 + 4));
  }

  else
  {
    v11 = 0xE800000000000000;
    v12 = 0x746544746E657665;
    v13 = 0xEC000000736C6961;
    if (v3 != 2)
    {
      v12 = 0x707954746E657665;
      v13 = 0xE900000000000065;
    }

    v14 = 0x6341796C696D6166;
    if (*(*a1 + 104))
    {
      v11 = 0xEC0000006E6F6974;
    }

    else
    {
      v14 = 0x6E6F697463616161;
    }

    if (*(*a1 + 104) <= 1u)
    {
      v15 = v14;
    }

    else
    {
      v15 = v12;
    }

    if (*(*a1 + 104) <= 1u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = v2[12];
    sub_1B712C5F0(*a1, (v2 + 4));
    sub_1B7148AD0((v2 + 4), v15, v16);
  }

  sub_1B711E824(v2);

  free(v2);
}

uint64_t sub_1B714ABC4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[0] = a6;
  v26[1] = a4;
  v9 = *(a4 + 24);
  v10 = (*(*(sub_1B715E6D0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = v26 - v11;
  v13 = sub_1B715E6D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v17 = v26 - v16;
  if (*a2 > 1u)
  {
    if (*a2 == 2)
    {
      v18 = 0xEC000000736C6961;
      v19 = 0x746544746E657665;
    }

    else
    {
      v18 = 0xE900000000000065;
      v19 = 0x707954746E657665;
    }
  }

  else if (*a2)
  {
    v18 = 0xEC0000006E6F6974;
    v19 = 0x6341796C696D6166;
  }

  else
  {
    v18 = 0xE800000000000000;
    v19 = 0x6E6F697463616161;
  }

  (*(v14 + 16))(v17, a1, v13);
  v20 = *(a5 - 8);
  if ((*(v20 + 48))(v17, 1, a5) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v23 = *(v26[0] + 8);
    sub_1B715E260();
    v21 = v27;
    v22 = v28;
    (*(v20 + 8))(v17, a5);
  }

  v27 = v21;
  v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983B10, &qword_1B7167700);
  v24 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v12, v24 ^ 1u, 1, v9);
  v26[2] = v19;
  v26[3] = v18;
  return sub_1B715E000();
}

uint64_t sub_1B714AEAC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = *a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  return sub_1B714ABC4(a1, &v13, a3, v11, a4, a5);
}

uint64_t sub_1B714AF20(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_1B714ABC4(a1, &v11, a3, v9, a3, a4);
}

unint64_t sub_1B714AF8C()
{
  result = qword_1EB9843C8;
  if (!qword_1EB9843C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843C8);
  }

  return result;
}

unint64_t sub_1B714AFE4()
{
  result = qword_1EB9843D0;
  if (!qword_1EB9843D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843D0);
  }

  return result;
}

unint64_t sub_1B714B038(uint64_t a1)
{
  result = sub_1B714B060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B714B060()
{
  result = qword_1EB9843D8;
  if (!qword_1EB9843D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843D8);
  }

  return result;
}

unint64_t sub_1B714B0B8()
{
  result = qword_1EB9843E0;
  if (!qword_1EB9843E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843E0);
  }

  return result;
}

unint64_t sub_1B714B10C(uint64_t a1)
{
  result = sub_1B714B134();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B714B134()
{
  result = qword_1EB9843E8;
  if (!qword_1EB9843E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843E8);
  }

  return result;
}

uint64_t keypath_getTm(uint64_t *a1, char *a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = &a2[a3];
  v6 = *&a2[a3 - 16];
  v7 = *(v5 - 1);
  v8 = *a1;
  v10 = *a2;
  return a4(&v10, v8, v6, v7);
}

uint64_t keypath_setTm(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *&a3[a4 - 16];
  v6 = *&a3[a4 - 8];
  v9 = *a3;
  return sub_1B714AF20(a1, &v9, v7, v6, a5, a6);
}

void *static FamilySettings.current.getter()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0 && (v1 = v0, v2 = [v0 aa_primaryAppleAccount], v1, v2))
  {
    v3 = [v2 aa_altDSID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1B715E0A0();
      v7 = v6;

      type metadata accessor for FamilySettings();
      v1 = swift_allocObject();
      sub_1B714B450(v5, v7, sub_1B714B5C0, 0);
    }

    else
    {
      sub_1B71501E4();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FAError(0);
    v1 = v8;
    sub_1B7141070(MEMORY[0x1E69E7CC0]);
    sub_1B71505FC(&qword_1EB983258, type metadata accessor for FAError);
    sub_1B715DA80();
    swift_willThrow();
  }

  return v1;
}

uint64_t FamilySettings.__allocating_init(altDSID:)(uint64_t a1, unint64_t a2)
{
  type metadata accessor for FamilySettings();
  v4 = swift_allocObject();
  sub_1B714B450(a1, a2, sub_1B714B5C0, 0);
  return v4;
}

void *sub_1B714B450(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_1ED7CFAD8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B715DEE0();
  __swift_project_value_buffer(v10, qword_1ED7CFAE0);

  v11 = sub_1B715DEC0();
  v12 = sub_1B715E570();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B70B461C(a1, a2, &v16);
    _os_log_impl(&dword_1B70B0000, v11, v12, "Initialized FamilySettings with altDSID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B8CA2750](v14, -1, -1);
    MEMORY[0x1B8CA2750](v13, -1, -1);
  }

  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return v5;
}

uint64_t FamilySettings.__allocating_init(for:)(void *a1)
{
  v3 = [a1 altDSID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B715E0A0();
    v7 = v6;

    type metadata accessor for FamilySettings();
    v1 = swift_allocObject();
    sub_1B714B450(v5, v7, sub_1B714B5C0, 0);
  }

  else
  {
    sub_1B71501E4();
    swift_allocError();
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1B714B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 72) = a2;
  *(v4 + 96) = *a1;
  *(v4 + 65) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1B714B714, 0, 0);
}

uint64_t sub_1B714B714()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 40);
  *(v0 + 112) = (*(v1 + 32))();
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = v6;
  *(v0 + 32) = v8;
  *(v0 + 40) = v7;
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  v9 = *(v0 + 65);
  *(v0 + 64) = v9;

  sub_1B71333C4(v4, v3, v9);
  v10 = *(MEMORY[0x1E6985E68] + 4);
  v13 = (*MEMORY[0x1E6985E68] + MEMORY[0x1E6985E68]);

  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  sub_1B715025C();
  *v11 = v0;
  v11[1] = sub_1B714B890;

  return v13();
}

uint64_t sub_1B714B890()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v18 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 24);
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
    v8 = *(v2 + 56);
    v9 = *(v2 + 64);

    sub_1B71337CC(v7, v8, v9);

    v10 = sub_1B714BA24;
  }

  else
  {
    v11 = *(v2 + 112);
    v12 = *(v2 + 24);
    v13 = *(v2 + 40);
    v14 = *(v2 + 48);
    v15 = *(v2 + 56);
    v16 = *(v2 + 64);

    sub_1B71337CC(v14, v15, v16);

    v10 = sub_1B70E6EAC;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1B714BA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(*(type metadata accessor for FamilySettings.XPC.ReadValueResponse() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984040, &qword_1B7167C70) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B714BB08, 0, 0);
}

uint64_t sub_1B714BB08()
{
  v1 = v0[9];
  v2 = *(v1 + 40);
  v0[12] = (*(v1 + 32))();
  v4 = v0[8];
  v3 = v0[9];
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v0[2] = v0[7];
  v0[3] = v4;
  v0[4] = v6;
  v0[5] = v5;
  v7 = *(MEMORY[0x1E6985E68] + 4);
  v12 = (*MEMORY[0x1E6985E68] + MEMORY[0x1E6985E68]);

  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = sub_1B71502B0();
  *v8 = v0;
  v8[1] = sub_1B714BC6C;
  v10 = v0[10];

  return v12(v10, v0 + 2, &type metadata for FamilySettings.XPC.ReadValueMessage, v9);
}

uint64_t sub_1B714BC6C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v12 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[12];
    v5 = v2[3];
    v6 = v2[5];

    v7 = sub_1B714BF00;
  }

  else
  {
    v8 = v2[12];
    v9 = v2[3];
    v10 = v2[5];

    v7 = sub_1B714BDC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B714BDC0()
{
  v1 = v0[11];
  sub_1B71506A8(v0[10], v1, &qword_1EB984040, &qword_1B7167C70);
  v2 = type metadata accessor for FamilySettings.ValueWithMetadata();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[11];
  if (v3 == 1)
  {
    sub_1B70B4B7C(v0[11], &qword_1EB984040, &qword_1B7167C70);
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    sub_1B71333D8(*v4, v6, v7);
    sub_1B7150350(v4, type metadata accessor for FamilySettings.ValueWithMetadata);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[6];
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B714BF00()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B714BF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(*(type metadata accessor for FamilySettings.XPC.ReadValueResponse() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B714C000, 0, 0);
}

uint64_t sub_1B714C000()
{
  v1 = v0[9];
  v2 = *(v1 + 40);
  v0[11] = (*(v1 + 32))();
  v4 = v0[8];
  v3 = v0[9];
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v0[2] = v0[7];
  v0[3] = v4;
  v0[4] = v6;
  v0[5] = v5;
  v7 = *(MEMORY[0x1E6985E68] + 4);
  v12 = (*MEMORY[0x1E6985E68] + MEMORY[0x1E6985E68]);

  v8 = swift_task_alloc();
  v0[12] = v8;
  v9 = sub_1B71502B0();
  *v8 = v0;
  v8[1] = sub_1B714C15C;
  v10 = v0[10];

  return v12(v10, v0 + 2, &type metadata for FamilySettings.XPC.ReadValueMessage, v9);
}

uint64_t sub_1B714C15C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v12 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[11];
    v5 = v2[3];
    v6 = v2[5];

    v7 = sub_1B714C334;
  }

  else
  {
    v8 = v2[11];
    v9 = v2[3];
    v10 = v2[5];

    v7 = sub_1B714C2B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B714C2B0()
{
  sub_1B71506A8(v0[10], v0[6], &qword_1EB984040, &qword_1B7167C70);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B714C334()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B714C398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_1B714C454;

  return sub_1B714B6E0(v3 + 16, a2, a3);
}

uint64_t sub_1B714C454()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1B71337CC(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B71522C0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t FamilySettings.Value.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1B714C5A4(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1 & 1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_1B714C660;

  return sub_1B714B6E0(v3 + 16, a2, a3);
}

uint64_t sub_1B714C660()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1B71337CC(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B714C7A0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B714C7C8(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  *v6 = v3;
  v6[1] = sub_1B714C454;

  return sub_1B714B6E0(v3 + 16, a1, a2);
}

void FamilySettings.Value.init(_:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

uint64_t sub_1B714C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B714C8C0, 0, 0);
}

uint64_t sub_1B714C8C0()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 24) = v1;
  *(v0 + 32) = 3;

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1B714C980;
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);

  return sub_1B714B6E0(v0 + 16, v5, v3);
}

uint64_t sub_1B714C980()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1B71337CC(*(v3 + 16), *(v3 + 24), *(v3 + 32));
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B714CAC0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t FamilySettings.Value.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
  return result;
}

uint64_t sub_1B714CAE8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_1B714CB94;

  return sub_1B714BA3C(v2 + 16, a1, a2);
}

uint64_t sub_1B714CB94()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B714C7A0;
  }

  else
  {
    v3 = sub_1B714CCA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B714CCA8()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    if (!*(v0 + 32))
    {
      v2 = *(v0 + 16) & 1;
      goto LABEL_6;
    }

    sub_1B71337CC(*(v0 + 16), *(v0 + 24), v1);
  }

  v2 = 2;
LABEL_6:
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t FamilySettings.Value.BOOLValue.getter()
{
  if (v0[16])
  {
    return 2;
  }

  else
  {
    return *v0 & 1;
  }
}

uint64_t sub_1B714CD4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_1B714CDF8;

  return sub_1B714BA3C(v2 + 16, a1, a2);
}

uint64_t sub_1B714CDF8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B714C7A0;
  }

  else
  {
    v3 = sub_1B714CF0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B714CF0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 == 1)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 255)
    {
      sub_1B71337CC(v1, *(v0 + 24), v2);
    }

    v1 = 0;
    v3 = 1;
  }

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t FamilySettings.Value.intValue.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B714CFB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_1B714D060;

  return sub_1B714BA3C(v2 + 16, a1, a2);
}

uint64_t sub_1B714D060()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B71522C0;
  }

  else
  {
    v3 = sub_1B714D174;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B714D174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 != 255)
  {
    if (v2 == 2)
    {
      v3 = 0;
      goto LABEL_6;
    }

    sub_1B71337CC(v1, *(v0 + 24), v2);
  }

  v1 = 0;
  v3 = 1;
LABEL_6:
  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t FamilySettings.Value.doubleValue.getter()
{
  if (v0[16] == 2)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B714D21C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_1B714D2C8;

  return sub_1B714BA3C(v2 + 16, a1, a2);
}

uint64_t sub_1B714D2C8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B714C7A0;
  }

  else
  {
    v3 = sub_1B714D3DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B714D3DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2 != 255)
  {
    v3 = *(v0 + 24);
    if (v2 == 3)
    {
      goto LABEL_5;
    }

    sub_1B71337CC(v1, v3, v2);
  }

  v1 = 0;
  v3 = 0;
LABEL_5:
  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t FamilySettings.Value.stringValue.getter()
{
  if (*(v0 + 16) != 3)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t sub_1B714D4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984040, &qword_1B7167C70) - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1B714D5B0;

  return sub_1B714BF6C(v7, a2, a3);
}

uint64_t sub_1B714D5B0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1B714D984;
  }

  else
  {
    v3 = sub_1B714D6C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B714D6C4()
{
  v1 = v0[4];
  sub_1B70B45B4(v0[5], v1, &qword_1EB984040, &qword_1B7167C70);
  v2 = type metadata accessor for FamilySettings.ValueWithMetadata();
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = v0[4];
  if (v4 == 1)
  {
    sub_1B70B4B7C(v0[4], &qword_1EB984040, &qword_1B7167C70);
  }

  else
  {
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    sub_1B71333D8(*v5, v6, *(v5 + 16));
    sub_1B7150350(v5, type metadata accessor for FamilySettings.ValueWithMetadata);
    if (v8 == 1)
    {
      v9 = 0;
      goto LABEL_7;
    }

    sub_1B71337E0(v7, v6, v8);
  }

  v7 = 0;
  v9 = 1;
LABEL_7:
  v10 = v0[3];
  sub_1B71506A8(v0[5], v10, &qword_1EB984040, &qword_1B7167C70);
  v11 = v3(v10, 1, v2);
  v12 = v0[3];
  if (v11 == 1)
  {
    sub_1B70B4B7C(v0[3], &qword_1EB984040, &qword_1B7167C70);
    v13 = sub_1B715DC80();
    v14 = *(v13 - 8);
    v15 = 1;
  }

  else
  {
    v16 = v0[2];
    v17 = *(v2 + 20);
    v13 = sub_1B715DC80();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v16, v12 + v17, v13);
    sub_1B7150350(v12, type metadata accessor for FamilySettings.ValueWithMetadata);
    v15 = 0;
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = v0[3];
  (*(v14 + 56))(v0[2], v15, 1, v13);

  v21 = v0[1];

  return v21(v7, v9);
}

uint64_t sub_1B714D984()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v0[1];
  v5 = v0[7];

  return v4();
}

uint64_t sub_1B714D9FC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  v6 = *(*(type metadata accessor for SharingCenter.ShareDescriptor() - 8) + 64) + 15;
  v7 = swift_task_alloc();
  *(v4 + 88) = v7;
  v8 = *a3;
  *(v4 + 137) = v8;
  type metadata accessor for SharingCenter();
  swift_initStaticObject();
  if (v8)
  {
    v9 = 0xD000000000000023;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (v8)
  {
    v10 = "osupdate.activity";
  }

  else
  {
    v10 = ".shareWithGuardians";
  }

  *(v4 + 136) = v8;
  v11 = swift_task_alloc();
  *(v4 + 96) = v11;
  *v11 = v4;
  v11[1] = sub_1B714DB44;

  return sub_1B70FDE44(v7, v9, v10 | 0x8000000000000000, (v4 + 136));
}

uint64_t sub_1B714DB44()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = v0;

  *(v2 + 137);

  if (v0)
  {
    v4 = sub_1B714DE34;
  }

  else
  {
    v4 = sub_1B714DCB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B714DCB0()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = *(v2 + 40);
  v0[14] = (*(v2 + 32))();
  if (v1)
  {
    sub_1B7150350(v0[11], type metadata accessor for SharingCenter.ShareDescriptor);
    v4 = v0[11];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    v12 = *v7;
    v13 = v7[1];
    v0[2] = v0[8];
    v0[3] = v9;
    v0[4] = v11;
    v0[5] = v10;
    v0[6] = v12;
    v0[7] = v13;
    v14 = *(MEMORY[0x1E6985E68] + 4);
    v16 = (*MEMORY[0x1E6985E68] + MEMORY[0x1E6985E68]);

    v15 = swift_task_alloc();
    v0[15] = v15;
    sub_1B71503B0();
    *v15 = v0;
    v15[1] = sub_1B714DE98;

    return v16();
  }
}

uint64_t sub_1B714DE34()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B714DE98()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v14 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[3];
    v6 = v2[5];
    v7 = v2[7];

    v8 = sub_1B714E090;
  }

  else
  {
    v9 = v2[14];
    v10 = v2[3];
    v11 = v2[5];
    v12 = v2[7];

    v8 = sub_1B714E00C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B714E00C()
{
  sub_1B7150350(*(v0 + 88), type metadata accessor for SharingCenter.ShareDescriptor);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B714E090()
{
  sub_1B7150350(v0[11], type metadata accessor for SharingCenter.ShareDescriptor);
  v1 = v0[16];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B714E110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B714E138, 0, 0);
}

uint64_t sub_1B714E138()
{
  v1 = v0[12];
  v2 = *(v1 + 40);
  v0[13] = (*(v1 + 32))();
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v0[2] = v0[8];
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v7;
  v0[6] = v5;
  v0[7] = v4;
  v9 = *(MEMORY[0x1E6985E68] + 4);
  v12 = (*MEMORY[0x1E6985E68] + MEMORY[0x1E6985E68]);

  v10 = swift_task_alloc();
  v0[14] = v10;
  sub_1B71503B0();
  *v10 = v0;
  v10[1] = sub_1B714E298;

  return v12();
}

uint64_t sub_1B714E298()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v14 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[3];
    v6 = v2[5];
    v7 = v2[7];

    v8 = sub_1B714E40C;
  }

  else
  {
    v9 = v2[13];
    v10 = v2[3];
    v11 = v2[5];
    v12 = v2[7];

    v8 = sub_1B70E8CE0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t FamilySettings.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t FamilySettings.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B714E498(uint64_t a1)
{
  v2 = sub_1B7150554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714E4D4(uint64_t a1)
{
  v2 = sub_1B7150554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B714E510()
{
  v1 = 1819242338;
  v2 = 0x656C62756F64;
  if (*v0 != 2)
  {
    v2 = 0x676E69727473;
  }

  if (*v0)
  {
    v1 = 7630441;
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

uint64_t sub_1B714E574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7152164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B714E5A8(uint64_t a1)
{
  v2 = sub_1B7150404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714E5E4(uint64_t a1)
{
  v2 = sub_1B7150404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B714E620(uint64_t a1)
{
  v2 = sub_1B71504AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714E65C(uint64_t a1)
{
  v2 = sub_1B71504AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B714E698(uint64_t a1)
{
  v2 = sub_1B7150500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714E6D4(uint64_t a1)
{
  v2 = sub_1B7150500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B714E710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B715EB10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B714E790(uint64_t a1)
{
  v2 = sub_1B7150458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714E7CC(uint64_t a1)
{
  v2 = sub_1B7150458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984410, &qword_1B7169C68);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984418, &qword_1B7169C70);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984420, &qword_1B7169C78);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984428, &qword_1B7169C80);
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984430, &qword_1B7169C88);
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v32 - v19;
  v21 = v1[1];
  v42 = *v1;
  v32[1] = v21;
  v22 = *(v1 + 16);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7150404();
  sub_1B715ECE0();
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v47 = 2;
      sub_1B71504AC();
      v27 = v36;
      v24 = v44;
      sub_1B715EA30();
      v28 = v38;
      sub_1B715EA80();
      v29 = v37;
    }

    else
    {
      v48 = 3;
      sub_1B7150458();
      v27 = v39;
      v24 = v44;
      sub_1B715EA30();
      v28 = v41;
      sub_1B715EA60();
      v29 = v40;
    }

    v25 = *(v29 + 8);
    v26 = v27;
    v30 = v28;
  }

  else
  {
    if (v22)
    {
      v46 = 1;
      sub_1B7150500();
      v24 = v44;
      sub_1B715EA30();
      v13 = v35;
      sub_1B715EA90();
      v25 = *(v34 + 8);
      v26 = v12;
    }

    else
    {
      v45 = 0;
      sub_1B7150554();
      v24 = v44;
      sub_1B715EA30();
      sub_1B715EA70();
      v25 = *(v33 + 8);
      v26 = v16;
    }

    v30 = v13;
  }

  v25(v26, v30);
  return (*(v43 + 8))(v20, v24);
}

uint64_t FamilySettings.Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984460, &qword_1B7169C90);
  v63 = *(v61 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v66 = &v53[-v4];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984468, &qword_1B7169C98);
  v62 = *(v60 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v65 = &v53[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984470, &qword_1B7169CA0);
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984478, &qword_1B7169CA8);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984480, &qword_1B7169CB0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v53[-v19];
  v21 = a1[3];
  v22 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B7150404();
  v23 = v67;
  sub_1B715ECC0();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v55 = v12;
  v56 = v20;
  v24 = v65;
  v25 = v66;
  v67 = v17;
  v26 = sub_1B715EA20();
  v27 = *(v26 + 16);
  if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 4) : (v29 = 1), v29))
  {
    v30 = sub_1B715E850();
    swift_allocError();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984488, &qword_1B7169CB8) + 48);
    *v32 = &type metadata for FamilySettings.Value;
    v34 = v56;
    sub_1B715E990();
    sub_1B715E840();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v67 + 8))(v34, v16);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v68);
  }

  if (*(v26 + 32) > 1u)
  {
    v54 = *(v26 + 32);
    v29 = v28 == 2;
    v37 = v67;
    if (v29)
    {
      v71 = 2;
      sub_1B71504AC();
      v38 = v56;
      sub_1B715E980();
      v45 = v60;
      sub_1B715E9E0();
      v50 = v49;
      (*(v62 + 8))(v24, v45);
      (*(v37 + 8))(v38, v16);
      swift_unknownObjectRelease();
      v43 = 0;
      v44 = v50;
    }

    else
    {
      v72 = 3;
      sub_1B7150458();
      v40 = v56;
      sub_1B715E980();
      v47 = v61;
      v44 = sub_1B715E9C0();
      v43 = v51;
      (*(v63 + 8))(v25, v47);
      (*(v37 + 8))(v40, v16);
      swift_unknownObjectRelease();
    }
  }

  else if (*(v26 + 32))
  {
    v54 = *(v26 + 32);
    v70 = 1;
    sub_1B7150500();
    v39 = v56;
    sub_1B715E980();
    v46 = v58;
    v44 = sub_1B715E9F0();
    v43 = 0;
    (*(v59 + 8))(v11, v46);
    (*(v67 + 8))(v39, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0;
    sub_1B7150554();
    v35 = v15;
    v36 = v56;
    sub_1B715E980();
    v54 = 0;
    v41 = v55;
    v42 = sub_1B715E9D0();
    (*(v57 + 8))(v35, v41);
    (*(v67 + 8))(v36, v16);
    swift_unknownObjectRelease();
    v43 = 0;
    v44 = v42 & 1;
  }

  v52 = v64;
  *v64 = v44;
  v52[1] = v43;
  *(v52 + 16) = v54;
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t FamilySettings.ValueWithMetadata.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B71333D8(v2, v3, v4);
}

uint64_t FamilySettings.ValueWithMetadata.updatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FamilySettings.ValueWithMetadata() + 20);
  v4 = sub_1B715DC80();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B714F5A4()
{
  if (*v0)
  {
    result = 0x4164657461647075;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_1B714F5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B715EB10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164657461647075 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B715EB10();

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

uint64_t sub_1B714F6C0(uint64_t a1)
{
  v2 = sub_1B71505A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714F6FC(uint64_t a1)
{
  v2 = sub_1B71505A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.ValueWithMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984490, &qword_1B7169CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B71505A8();
  sub_1B715ECE0();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v16 = *v3;
  v17 = v11;
  v18 = v12;
  v15[7] = 0;
  sub_1B71333D8(v16, v11, v12);
  sub_1B7133778();
  sub_1B715EAA0();
  sub_1B71337E0(v16, v17, v18);
  if (!v2)
  {
    v13 = *(type metadata accessor for FamilySettings.ValueWithMetadata() + 20);
    LOBYTE(v16) = 1;
    sub_1B715DC80();
    sub_1B71505FC(&qword_1EB983B40, MEMORY[0x1E6969530]);
    sub_1B715EAA0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FamilySettings.ValueWithMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1B715DC80();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9844A0, &unk_1B7169CC8);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for FamilySettings.ValueWithMetadata();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B71505A8();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v16 = v24;
  v15 = v25;
  v17 = v13;
  v29 = 0;
  sub_1B7133AA0();
  v18 = v26;
  sub_1B715EA00();
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  LOBYTE(v27) = 1;
  sub_1B71505FC(qword_1EB983B50, MEMORY[0x1E6969530]);
  sub_1B715EA00();
  (*(v16 + 8))(v9, v18);
  (*(v22 + 32))(v17 + *(v21 + 20), v6, v15);
  sub_1B7150644(v17, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7150350(v17, type metadata accessor for FamilySettings.ValueWithMetadata);
}

void FamilySettings.Value.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = [a1 BOOLValue];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 BOOLValue];

    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  v7 = [a1 intValue];
  if (!v7)
  {
    v11 = [a1 doubleValue];
    if (v11)
    {
      v12 = v11;
      [v11 doubleValue];
      v14 = v13;

      *a2 = v14;
      *(a2 + 8) = 0;
      v10 = 2;
      goto LABEL_10;
    }

LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
    v10 = -1;
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 integerValue];

  *a2 = v9;
  *(a2 + 8) = 0;
  v10 = 1;
LABEL_10:
  *(a2 + 16) = v10;
}

uint64_t FamilySettings.ValueWithMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983928, &qword_1B71662D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = sub_1B715DC80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FamilySettings.ValueWithMetadata();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v39 = v18;
    v21 = [a1 BOOLValue];
    v38 = a2;
    if (v21)
    {
      v22 = v21;
      v23 = [v21 BOOLValue];

      v24 = 0;
      *v20 = v23;
LABEL_8:
      *(v20 + 1) = 0;
      v20[16] = v24;
      v32 = [a1 updatedAt];
      if (v32)
      {
        v33 = v32;
        sub_1B715DC40();

        (*(v12 + 56))(v8, 0, 1, v11);
      }

      else
      {
        (*(v12 + 56))(v8, 1, 1, v11);
      }

      v34 = v38;
      sub_1B71506A8(v8, v10, &qword_1EB983928, &qword_1B71662D0);
      v35 = *(v12 + 48);
      if (v35(v10, 1, v11) == 1)
      {
        sub_1B715DC50();

        if (v35(v10, 1, v11) != 1)
        {
          sub_1B70B4B7C(v10, &qword_1EB983928, &qword_1B71662D0);
        }
      }

      else
      {

        (*(v12 + 32))(v15, v10, v11);
      }

      (*(v12 + 32))(&v20[*(v16 + 20)], v15, v11);
      sub_1B7150710(v20, v34);
      return (*(v39 + 56))(v34, 0, 1, v16);
    }

    v25 = [a1 doubleValue];
    if (v25)
    {
      v26 = v25;
      [v25 doubleValue];
      v28 = v27;

      *v20 = v28;
      v24 = 2;
      goto LABEL_8;
    }

    v29 = [a1 intValue];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 integerValue];

      *v20 = v31;
      v24 = 1;
      goto LABEL_8;
    }

    v18 = v39;
  }

  v37 = *(v18 + 56);

  return v37(a2, 1, 1, v16);
}

unint64_t sub_1B71501E4()
{
  result = qword_1EB9843F0;
  if (!qword_1EB9843F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843F0);
  }

  return result;
}

unint64_t sub_1B715025C()
{
  result = qword_1EB9843F8;
  if (!qword_1EB9843F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9843F8);
  }

  return result;
}

unint64_t sub_1B71502B0()
{
  result = qword_1EB984400;
  if (!qword_1EB984400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984400);
  }

  return result;
}

uint64_t type metadata accessor for FamilySettings.ValueWithMetadata()
{
  result = qword_1EB9844A8;
  if (!qword_1EB9844A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7150350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B71503B0()
{
  result = qword_1EB984408;
  if (!qword_1EB984408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984408);
  }

  return result;
}

unint64_t sub_1B7150404()
{
  result = qword_1EB984438;
  if (!qword_1EB984438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984438);
  }

  return result;
}

unint64_t sub_1B7150458()
{
  result = qword_1EB984440;
  if (!qword_1EB984440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984440);
  }

  return result;
}

unint64_t sub_1B71504AC()
{
  result = qword_1EB984448;
  if (!qword_1EB984448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984448);
  }

  return result;
}

unint64_t sub_1B7150500()
{
  result = qword_1EB984450;
  if (!qword_1EB984450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984450);
  }

  return result;
}

unint64_t sub_1B7150554()
{
  result = qword_1EB984458;
  if (!qword_1EB984458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984458);
  }

  return result;
}

unint64_t sub_1B71505A8()
{
  result = qword_1EB984498;
  if (!qword_1EB984498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984498);
  }

  return result;
}

uint64_t sub_1B71505FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7150644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilySettings.ValueWithMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B71506A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7150710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilySettings.ValueWithMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of FamilySettings.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B70E54FC;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B70E54FC;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 136);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B70E54FC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of FamilySettings.value(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B70E54FC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of FamilySettings.valueWithMetadata(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B70E5228;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of FamilySettings.set(_:forKey:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *(*v3 + 144);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B70E54FC;
  v11.n128_f64[0] = a3;

  return v13(a1, a2, v11);
}

uint64_t dispatch thunk of FamilySettings.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 152);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B70E54FC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FamilySettings.BOOL(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B70E7674;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FamilySettings.int(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B71522C8;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FamilySettings.double(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B71522C8;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FamilySettings.string(forKey:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B7137D50;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FamilySettings.intWithUpdatedAt(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B7151600;

  return v12(a1, a2, a3);
}

uint64_t sub_1B7151600(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t dispatch thunk of FamilySettings.share(key:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B70E54FC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of FamilySettings.share(key:withShareIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 208);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B70E54FC;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1B7151984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B71519CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1B7151A48()
{
  result = sub_1B715DC80();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B7151B38()
{
  result = qword_1EB9844B8;
  if (!qword_1EB9844B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844B8);
  }

  return result;
}

unint64_t sub_1B7151B90()
{
  result = qword_1EB9844C0;
  if (!qword_1EB9844C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844C0);
  }

  return result;
}

unint64_t sub_1B7151BE8()
{
  result = qword_1EB9844C8;
  if (!qword_1EB9844C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844C8);
  }

  return result;
}

unint64_t sub_1B7151C40()
{
  result = qword_1EB9844D0;
  if (!qword_1EB9844D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844D0);
  }

  return result;
}

unint64_t sub_1B7151C98()
{
  result = qword_1EB9844D8;
  if (!qword_1EB9844D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844D8);
  }

  return result;
}

unint64_t sub_1B7151CF0()
{
  result = qword_1EB9844E0;
  if (!qword_1EB9844E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844E0);
  }

  return result;
}

unint64_t sub_1B7151D48()
{
  result = qword_1EB9844E8;
  if (!qword_1EB9844E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844E8);
  }

  return result;
}

unint64_t sub_1B7151DA0()
{
  result = qword_1EB9844F0;
  if (!qword_1EB9844F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844F0);
  }

  return result;
}

unint64_t sub_1B7151DF8()
{
  result = qword_1EB9844F8;
  if (!qword_1EB9844F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9844F8);
  }

  return result;
}

unint64_t sub_1B7151E50()
{
  result = qword_1EB984500;
  if (!qword_1EB984500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984500);
  }

  return result;
}

unint64_t sub_1B7151EA8()
{
  result = qword_1EB984508;
  if (!qword_1EB984508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984508);
  }

  return result;
}

unint64_t sub_1B7151F00()
{
  result = qword_1EB984510;
  if (!qword_1EB984510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984510);
  }

  return result;
}

unint64_t sub_1B7151F58()
{
  result = qword_1EB984518;
  if (!qword_1EB984518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984518);
  }

  return result;
}

unint64_t sub_1B7151FB0()
{
  result = qword_1EB984520;
  if (!qword_1EB984520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984520);
  }

  return result;
}

unint64_t sub_1B7152008()
{
  result = qword_1EB984528;
  if (!qword_1EB984528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984528);
  }

  return result;
}

unint64_t sub_1B7152060()
{
  result = qword_1EB984530;
  if (!qword_1EB984530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984530);
  }

  return result;
}

unint64_t sub_1B71520B8()
{
  result = qword_1EB984538;
  if (!qword_1EB984538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984538);
  }

  return result;
}

unint64_t sub_1B7152110()
{
  result = qword_1EB984540;
  if (!qword_1EB984540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984540);
  }

  return result;
}

uint64_t sub_1B7152164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B715EB10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1B715EB10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1B715EB10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B715EB10();

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

uint64_t (*sub_1B7152340())(uint64_t a1)
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = *(v1 + 88);
  v4[4] = v3;
  v4[5] = v2;

  return sub_1B71528C0;
}

uint64_t sub_1B71523E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9833F8, &qword_1B7164C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_1B715E450();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, a1, a4);
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = a2;
  *(v19 + 7) = a3;
  (*(v10 + 32))(&v19[v18], v12, a4);

  sub_1B71219AC(0, 0, v16, &unk_1B716A6D0, v19);
}

uint64_t sub_1B71525D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1B71526C0;

  return v12();
}

uint64_t sub_1B71526C0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B71527F0, 0, 0);
  }
}

uint64_t sub_1B71527F0()
{
  v1 = v0[2];
  (*(v0[4] + 16))(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B71528CC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B70E5228;

  return sub_1B71525D0(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t sub_1B71529DC()
{
  result = sub_1B715E070();
  qword_1EB984548 = result;
  return result;
}

uint64_t static ServerFlags.overridenServerFlags.getter()
{
  if (qword_1EB9830C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t (*static ServerFlags.overridenServerFlags.modify())()
{
  if (qword_1EB9830C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B7152B60@<X0>(void *a1@<X8>)
{
  if (qword_1EB9830C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB984550;
}

uint64_t sub_1B7152BE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB9830C8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB984550 = v1;
}

void *sub_1B7152C68()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1B715DFE0();
  type metadata accessor for RuntimeEnvironment();
  swift_allocObject();
  result = RuntimeEnvironment.init(environment:)(v2);
  off_1EB984558 = result;
  return result;
}

uint64_t static ServerFlags.environment.getter()
{
  if (qword_1EB9830D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t (*static ServerFlags.environment.modify())()
{
  if (qword_1EB9830D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B7152E48@<X0>(void *a1@<X8>)
{
  if (qword_1EB9830D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EB984558;
}

uint64_t sub_1B7152EC8(void **a1)
{
  v1 = *a1;
  v2 = qword_1EB9830D0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EB984558 = v1;
}

uint64_t static ServerFlags.isRUIPageEnabled(ruiPage:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B715308C();
  sub_1B715E7A0();
  if (v4[2] && (v5 = sub_1B70E7D68(v11), (v6 & 1) != 0))
  {
    sub_1B70B46E8(v4[7] + 32 * v5, v12);
    sub_1B70E8A38(v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983608, &qword_1B71657C8);
    if (swift_dynamicCast())
    {
      if (MEMORY[0x6C62616E45697582])
      {
        v7 = sub_1B70E747C(a1, a2);
        if (v8)
        {
          v9 = *(MEMORY[0x6C62616E456975AA] + v7);

          return v9;
        }
      }
    }
  }

  else
  {

    sub_1B70E8A38(v11);
  }

  return 0;
}

id sub_1B715308C()
{
  if (qword_1EB9830D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EB984558;
  swift_beginAccess();
  if (v0[16] == 1)
  {
    if (qword_1EB9830C8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v2 = sub_1B7156E4C(v1);

    return v2;
  }

  else
  {
    v4 = [objc_opt_self() defaultStore];
    if (v4 && (v5 = v4, v6 = [v4 aa_primaryAppleAccount], v5, v6))
    {
      if (qword_1EB9830C0 != -1)
      {
        swift_once();
      }

      result = [v6 propertiesForDataclass_];
      if (result)
      {
        v7 = result;
        v8 = sub_1B715DFE0();

        return v8;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_1ED7CFAD8 != -1)
      {
        swift_once();
      }

      v9 = sub_1B715DEE0();
      __swift_project_value_buffer(v9, qword_1ED7CFAE0);
      v10 = sub_1B715DEC0();
      v11 = sub_1B715E560();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_1B70B461C(0x6C46726576726573, 0xEB00000000736761, &v14);
        _os_log_impl(&dword_1B70B0000, v10, v11, "%s unable to retrieve primary Apple account", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1B8CA2750](v13, -1, -1);
        MEMORY[0x1B8CA2750](v12, -1, -1);
      }

      return sub_1B71412B4(MEMORY[0x1E69E7CC0]);
    }
  }

  return result;
}

uint64_t AIDAAccountManager.enableICloudSync(for:)(uint64_t a1)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B71533BC, 0, 0);
}

uint64_t sub_1B71533BC()
{
  v56 = v0;
  v1 = [*(v0 + 328) accounts];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v1);
  }

  v2 = v1;
  type metadata accessor for AIDAServiceType(0);
  sub_1B70F8CF0(0, &qword_1EB983998, 0x1E6959A28);
  sub_1B71544D4(&qword_1EB983270, type metadata accessor for AIDAServiceType);
  v3 = sub_1B715DFE0();

  if (!*(v3 + 16) || (v4 = sub_1B70E8CF8(*MEMORY[0x1E698C218]), (v5 & 1) == 0))
  {

    if (qword_1ED7CFAD8 != -1)
    {
      swift_once();
    }

    v31 = sub_1B715DEE0();
    __swift_project_value_buffer(v31, qword_1ED7CFAE0);
    v32 = sub_1B715DEC0();
    v33 = sub_1B715E570();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v55[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1B70B461C(0xD000000000000016, 0x80000001B7170930, v55);
      _os_log_impl(&dword_1B70B0000, v32, v33, "%s unable to get iCloud account", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1B8CA2750](v35, -1, -1);
      MEMORY[0x1B8CA2750](v34, -1, -1);
    }

    sub_1B7154478();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    goto LABEL_22;
  }

  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v8 = *(*(v3 + 56) + 8 * v4);
  *(v0 + 336) = v8;
  v9 = v8;

  [v9 setEnabled:1 forDataclass:v7];
  v10 = [v6 accountStore];
  v11 = v9;
  v12 = [v10 dataclassActionsForAccountSave_];

  if (!v12)
  {
LABEL_26:
    if (qword_1ED7CFAD8 != -1)
    {
      swift_once();
    }

    v39 = sub_1B715DEE0();
    __swift_project_value_buffer(v39, qword_1ED7CFAE0);
    v40 = sub_1B715DEC0();
    v41 = sub_1B715E570();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1B70B461C(0xD000000000000016, 0x80000001B7170930, v55);
      _os_log_impl(&dword_1B70B0000, v40, v41, "%s No dataclass actions returned", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1B8CA2750](v43, -1, -1);
      MEMORY[0x1B8CA2750](v42, -1, -1);
    }

    v23 = (v0 + 16);
    v44 = [*(v0 + 328) accountStore];
    *(v0 + 376) = v44;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 392;
    *(v0 + 24) = sub_1B7154008;
    v45 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984568, &qword_1B716A700);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1B71543AC;
    *(v0 + 168) = &block_descriptor_14;
    *(v0 + 176) = v45;
    [v44 saveAccount:v11 withDataclassActions:0 doVerify:1 completion:?];
    goto LABEL_31;
  }

  type metadata accessor for Dataclass(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984570, &qword_1B716A708);
  sub_1B71544D4(&qword_1EB983260, type metadata accessor for Dataclass);
  v13 = sub_1B715DFE0();

  if (!v13[2])
  {
    goto LABEL_25;
  }

  v14 = sub_1B70E8CF8(*(v0 + 320));
  if ((v15 & 1) == 0)
  {
    goto LABEL_25;
  }

  v16 = *(v13[7] + 8 * v14);

  if (v16 >> 62)
  {
    if (sub_1B715E920())
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_9:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1B8CA14D0](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_45;
    }

    v17 = *(v16 + 32);
  }

  v13 = v17;
  *(v0 + 344) = v17;

  if ([v13 type])
  {
    if (qword_1ED7CFAD8 == -1)
    {
LABEL_14:
      v18 = sub_1B715DEE0();
      __swift_project_value_buffer(v18, qword_1ED7CFAE0);
      v19 = sub_1B715DEC0();
      v20 = sub_1B715E570();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v55[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1B70B461C(0xD000000000000016, 0x80000001B7170930, v55);
        _os_log_impl(&dword_1B70B0000, v19, v20, "%s Using first data class as desired action and saving account", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x1B8CA2750](v22, -1, -1);
        MEMORY[0x1B8CA2750](v21, -1, -1);
      }

      v23 = (v0 + 80);
      v24 = *(v0 + 320);
      v25 = [*(v0 + 328) accountStore];
      *(v0 + 352) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984578, &qword_1B716A710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7164C50;
      *(inited + 32) = v24;
      *(inited + 40) = v13;
      v27 = v24;
      v28 = v13;
      sub_1B7141504(inited);
      swift_setDeallocating();
      sub_1B715451C(inited + 32);
      sub_1B70F8CF0(0, &qword_1EB984588, 0x1E6959A58);
      v29 = sub_1B715DFD0();
      *(v0 + 360) = v29;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 393;
      *(v0 + 88) = sub_1B7153E78;
      v30 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984568, &qword_1B716A700);
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1B71543AC;
      *(v0 + 232) = &block_descriptor_4;
      *(v0 + 240) = v30;
      [v25 saveAccount:v11 withDataclassActions:v29 doVerify:1 completion:?];
LABEL_31:
      v1 = v23;

      return MEMORY[0x1EEE6DEC8](v1);
    }

LABEL_45:
    swift_once();
    goto LABEL_14;
  }

  if (qword_1ED7CFAD8 != -1)
  {
    swift_once();
  }

  v46 = sub_1B715DEE0();
  __swift_project_value_buffer(v46, qword_1ED7CFAE0);
  v47 = sub_1B715DEC0();
  v48 = sub_1B715E570();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55[0] = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1B70B461C(0xD000000000000016, 0x80000001B7170930, v55);
    _os_log_impl(&dword_1B70B0000, v47, v48, "%s dataclass actions is preventing to enable iCloud sync", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    MEMORY[0x1B8CA2750](v50, -1, -1);
    MEMORY[0x1B8CA2750](v49, -1, -1);
  }

  sub_1B7154478();
  v51 = swift_allocError();
  *v52 = 1;
  swift_willThrow();

  if (qword_1ED7CFAD8 != -1)
  {
    swift_once();
  }

  v53 = *(v0 + 336);
  __swift_project_value_buffer(v46, qword_1ED7CFAE0);
  v54 = v51;
  sub_1B7157F10(v51);

  swift_willThrow();
LABEL_22:
  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1B7153E78()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_1B7154188;
  }

  else
  {
    v3 = sub_1B7153F88;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7153F88()
{
  v1 = v0[44];
  v2 = v0[45];
  v4 = v0[42];
  v3 = v0[43];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B7154008()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = sub_1B71542A0;
  }

  else
  {
    v3 = sub_1B7154118;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7154118()
{
  v1 = v0[47];
  v2 = v0[42];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B7154188()
{
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[42];
  swift_willThrow();

  v6 = v0[46];
  if (qword_1ED7CFAD8 != -1)
  {
    swift_once();
  }

  v7 = v0[42];
  v8 = sub_1B715DEE0();
  __swift_project_value_buffer(v8, qword_1ED7CFAE0);
  v9 = v6;
  sub_1B7157F10(v6);

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_1B71542A0()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[42];
  swift_willThrow();

  v4 = v0[48];
  if (qword_1ED7CFAD8 != -1)
  {
    swift_once();
  }

  v5 = v0[42];
  v6 = sub_1B715DEE0();
  __swift_project_value_buffer(v6, qword_1ED7CFAE0);
  v7 = v4;
  sub_1B7157F10(v4);

  swift_willThrow();
  v8 = v0[1];

  return v8();
}

uint64_t sub_1B71543AC(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9833E8, &qword_1B7167690);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

unint64_t sub_1B7154478()
{
  result = qword_1EB984560;
  if (!qword_1EB984560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984560);
  }

  return result;
}

uint64_t sub_1B71544D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B715451C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984580, &unk_1B716A718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7154598()
{
  result = qword_1EB984590;
  if (!qword_1EB984590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984590);
  }

  return result;
}

id MemberPhotoRequest404Cache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MemberPhotoRequest404Cache.init()()
{
  v1 = OBJC_IVAR___FAMemberPhotoRequest404Cache_encoder;
  v2 = sub_1B715D850();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_1B715D840();
  v5 = OBJC_IVAR___FAMemberPhotoRequest404Cache_decoder;
  v6 = sub_1B715D820();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v0[v5] = sub_1B715D810();
  v9 = [objc_opt_self() standardUserDefaults];
  *&v0[OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence] = v9;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MemberPhotoRequest404Cache();
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_1B71547D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B715DC80();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B71556C4();
  sub_1B715DC50();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v8;
  sub_1B715611C(v7, a1, a2, isUniquelyReferenced_nonNull_native);
  sub_1B71557C4(v16);

  if (qword_1EB982788 != -1)
  {
    swift_once();
  }

  v10 = sub_1B715DEE0();
  __swift_project_value_buffer(v10, qword_1EB982790);

  v11 = sub_1B715DEC0();
  v12 = sub_1B715E570();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B70B461C(a1, a2, &v16);
    _os_log_impl(&dword_1B70B0000, v11, v12, "MemberPhotoRequest404Cache: saved 404 response for %s)", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1B8CA2750](v14, -1, -1);
    MEMORY[0x1B8CA2750](v13, -1, -1);
  }
}

uint64_t sub_1B7154A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B71556C4();
  if (*(v6 + 16) && (v7 = sub_1B70E747C(a1, a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_1B715DC80();
    v18 = *(v11 - 8);
    (*(v18 + 16))(a3, v10 + *(v18 + 72) * v9, v11);

    v12 = *(v18 + 56);
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {

    v16 = sub_1B715DC80();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1B7154CC8(uint64_t a1, uint64_t a2, void *a3)
{
  v79 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9839A0, &unk_1B716A7F0);
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v86 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v80 = &v77 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v77 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983928, &qword_1B71662D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v77 - v15;
  v17 = sub_1B715DC80();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v85 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v84 = &v77 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v77 - v27;
  sub_1B7154A18(a1, a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1B71107EC(v16);
    if (qword_1EB982788 != -1)
    {
      swift_once();
    }

    v29 = sub_1B715DEE0();
    __swift_project_value_buffer(v29, qword_1EB982790);
    v30 = sub_1B715DEC0();
    v31 = sub_1B715E570();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v88 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1B70B461C(0xD000000000000026, 0x80000001B71709C0, &v88);
      _os_log_impl(&dword_1B70B0000, v30, v31, "MemberPhotoRequest404Cache: %s no 404 cache for member, allow request", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1B8CA2750](v33, -1, -1);
      MEMORY[0x1B8CA2750](v32, -1, -1);
    }

    v34 = 1;
  }

  else
  {
    (*(v18 + 32))(v28, v16, v17);
    if (qword_1EB982788 != -1)
    {
      swift_once();
    }

    v35 = sub_1B715DEE0();
    v36 = __swift_project_value_buffer(v35, qword_1EB982790);
    (*(v18 + 16))(v26, v28, v17);
    v81 = v36;
    v37 = sub_1B715DEC0();
    v38 = sub_1B715E570();
    v39 = os_log_type_enabled(v37, v38);
    v78 = v12;
    v87 = v28;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v88 = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_1B70B461C(0xD000000000000026, 0x80000001B71709C0, &v88);
      *(v40 + 12) = 2080;
      sub_1B710C884(&qword_1EB982908);
      v42 = sub_1B715EAE0();
      v43 = v5;
      v45 = v44;
      v82 = *(v18 + 8);
      v82(v26, v17);
      v46 = sub_1B70B461C(v42, v45, &v88);
      v5 = v43;

      *(v40 + 14) = v46;
      _os_log_impl(&dword_1B70B0000, v37, v38, "MemberPhotoRequest404Cache: %s getLast404Response %s", v40, 0x16u);
      swift_arrayDestroy();
      v47 = v41;
      v12 = v78;
      MEMORY[0x1B8CA2750](v47, -1, -1);
      MEMORY[0x1B8CA2750](v40, -1, -1);
    }

    else
    {

      v82 = *(v18 + 8);
      v82(v26, v17);
    }

    v48 = objc_opt_self();
    v49 = [v48 hours];
    sub_1B71332D8();
    sub_1B715D860();
    v50 = v83;
    v51 = v80;
    (*(v83 + 16))(v80, v12, v5);
    v52 = sub_1B715DEC0();
    v53 = sub_1B715E570();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v79 = v48;
      v55 = v54;
      v56 = swift_slowAlloc();
      v88 = v56;
      *v55 = 136315138;
      sub_1B715629C();
      v57 = sub_1B715EAE0();
      v58 = v51;
      v59 = v5;
      v61 = v60;
      v83 = *(v50 + 8);
      (v83)(v58, v59);
      v62 = sub_1B70B461C(v57, v61, &v88);
      v5 = v59;

      *(v55 + 4) = v62;
      _os_log_impl(&dword_1B70B0000, v52, v53, "MemberPhotoRequest404Cache: cacheMeasurementDuration: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      v63 = v56;
      v12 = v78;
      MEMORY[0x1B8CA2750](v63, -1, -1);
      v64 = v55;
      v48 = v79;
      MEMORY[0x1B8CA2750](v64, -1, -1);
    }

    else
    {

      v83 = *(v50 + 8);
      (v83)(v51, v5);
    }

    v65 = [v48 seconds];
    v66 = v86;
    sub_1B715D880();

    sub_1B715D870();
    (v83)(v66, v5);
    v67 = v84;
    sub_1B715DBD0();
    v68 = v85;
    sub_1B715DC50();
    sub_1B710C884(&qword_1EB983930);
    v69 = sub_1B715E030();
    v70 = v82;
    v82(v68, v17);
    v70(v67, v17);
    v34 = v69 ^ 1;
    v71 = sub_1B715DEC0();
    v72 = sub_1B715E570();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v82 = v70;
      v75 = v74;
      v88 = v74;
      *v73 = 136315394;
      *(v73 + 4) = sub_1B70B461C(0xD000000000000026, 0x80000001B71709C0, &v88);
      *(v73 + 12) = 1024;
      *(v73 + 14) = v34 & 1;
      _os_log_impl(&dword_1B70B0000, v71, v72, "MemberPhotoRequest404Cache: %s %{BOOL}d", v73, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1B8CA2750](v75, -1, -1);
      MEMORY[0x1B8CA2750](v73, -1, -1);

      (v83)(v12, v5);
      v82(v87, v17);
    }

    else
    {

      (v83)(v12, v5);
      v70(v87, v17);
    }
  }

  return v34 & 1;
}

unint64_t sub_1B71556C4()
{
  v1 = *(v0 + OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence);
  v2 = sub_1B715E070();
  v3 = [v1 dataForKey_];

  if (!v3)
  {
    return sub_1B71415FC(MEMORY[0x1E69E7CC0]);
  }

  v4 = sub_1B715DB50();
  v6 = v5;

  v7 = *(v0 + OBJC_IVAR___FAMemberPhotoRequest404Cache_decoder);
  sub_1B7156408();
  sub_1B715D800();
  sub_1B70FFFB0(v4, v6);
  return v9;
}

uint64_t sub_1B71557C4(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___FAMemberPhotoRequest404Cache_encoder);
  v12 = a1;
  sub_1B71563B4();
  v4 = sub_1B715D830();
  v5 = *(v2 + OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence);
  v6 = v4;
  v8 = v7;
  v9 = sub_1B715DB30();
  v10 = sub_1B715E070();
  [v5 setValue:v9 forKey:v10];

  return sub_1B70FFFB0(v6, v8);
}

id MemberPhotoRequest404Cache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MemberPhotoRequest404Cache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7155A78(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9845C8, &qword_1B716A8C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B715646C();
  sub_1B715ECE0();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9845D8, &qword_1B716A8D0);
  sub_1B71564C0();
  sub_1B715EAA0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B7155BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x523430347473616CLL && a2 == 0xEF65736E6F707365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B715EB10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B7155C88(uint64_t a1)
{
  v2 = sub_1B715646C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7155CC4(uint64_t a1)
{
  v2 = sub_1B715646C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B7155D00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B7156568(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B7155D48(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1B70E747C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1B70F738C();
      result = v19;
      goto LABEL_8;
    }

    sub_1B70F6640(v16, a4 & 1);
    v20 = *v5;
    result = sub_1B70E747C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1B715EBA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    sub_1B70F71D8(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

uint64_t sub_1B7155E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B70E747C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1B70F7698();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1B70F68E0(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1B70E747C(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1B715EBA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_1B70F7220(v13, a3, a4, a1, a2, v24);
  }
}

_OWORD *sub_1B7155FCC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B70E747C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B70F7810();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B70F6BA0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B70E747C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B715EBA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1B70E74F4(a1, v23);
  }

  else
  {
    sub_1B70F7270(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1B715611C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B70E747C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1B70F79B4();
      goto LABEL_7;
    }

    sub_1B70F6E58(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1B70E747C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1B715EBA0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1B715DC80();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1B70F72DC(v12, a2, a3, a1, v18);
}

unint64_t sub_1B715629C()
{
  result = qword_1EB9845B0;
  if (!qword_1EB9845B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9839A0, &unk_1B716A7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9845B0);
  }

  return result;
}

unint64_t sub_1B71563B4()
{
  result = qword_1EB9845B8;
  if (!qword_1EB9845B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9845B8);
  }

  return result;
}

unint64_t sub_1B7156408()
{
  result = qword_1EB9845C0;
  if (!qword_1EB9845C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9845C0);
  }

  return result;
}

unint64_t sub_1B715646C()
{
  result = qword_1EB9845D0;
  if (!qword_1EB9845D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9845D0);
  }

  return result;
}

unint64_t sub_1B71564C0()
{
  result = qword_1EB9845E0;
  if (!qword_1EB9845E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9845D8, &qword_1B716A8D0);
    sub_1B710C884(&qword_1EB983B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9845E0);
  }

  return result;
}

void *sub_1B7156568(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9845E8, &qword_1B716A8D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B715646C();
  sub_1B715ECC0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9845D8, &qword_1B716A8D0);
    sub_1B71566EC();
    sub_1B715EA00();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1B71566EC()
{
  result = qword_1EB9845F0;
  if (!qword_1EB9845F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9845D8, &qword_1B716A8D0);
    sub_1B710C884(qword_1EB983B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9845F0);
  }

  return result;
}

unint64_t sub_1B71567A8()
{
  result = qword_1EB9845F8;
  if (!qword_1EB9845F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9845F8);
  }

  return result;
}

unint64_t sub_1B7156800()
{
  result = qword_1EB984600;
  if (!qword_1EB984600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984600);
  }

  return result;
}

unint64_t sub_1B7156858()
{
  result = qword_1EB984608;
  if (!qword_1EB984608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984608);
  }

  return result;
}

id FAFamilyInvite.clientSignalDateForInvite()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B715DC80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983928, &qword_1B71662D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v37 = *(v5 + 56);
  v37(&v35 - v16, 1, 1, v4);
  v18 = [v2 inviteStatus];
  if (!v18)
  {
    return sub_1B710C938(v17, a1);
  }

  v35 = v2;
  v36 = v4;
  v19 = v5;
  v20 = a1;
  v21 = v18;
  v22 = sub_1B715E0A0();
  v24 = v23;

  if (v22 == 0x676E69646E6550 && v24 == 0xE700000000000000)
  {

    a1 = v20;
    v25 = v19;
    v26 = v15;
    v28 = v35;
    v27 = v36;
  }

  else
  {
    v29 = sub_1B715EB10();

    a1 = v20;
    v25 = v19;
    v26 = v15;
    v28 = v35;
    v27 = v36;
    if ((v29 & 1) == 0)
    {
      return sub_1B710C938(v17, a1);
    }
  }

  v30 = [v28 inviteDate];
  if (!v30)
  {
    return sub_1B710C938(v17, a1);
  }

  v31 = v38;
  v32 = v30;
  sub_1B715DC40();

  (*(v25 + 32))(v10, v31, v27);
  result = [v28 badgeAfter];
  if (result)
  {
    v34 = result;
    [result doubleValue];

    sub_1B715DC10();
    (*(v25 + 8))(v10, v27);
    sub_1B70B4B7C(v17, &qword_1EB983928, &qword_1B71662D0);
    v37(v26, 0, 1, v27);
    sub_1B710C938(v26, v17);
    return sub_1B710C938(v17, a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7156BF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983648, &qword_1B71657F0);
    v2 = sub_1B715E950();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1B70E74F4(&v27, v29);
        sub_1B70E74F4(v29, v30);
        sub_1B70E74F4(v30, &v28);
        result = sub_1B70E747C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1B70E74F4(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1B70E74F4(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B7156E4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983650, &qword_1B71657F8);
    v2 = sub_1B715E950();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B70B46E8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1B70E74F4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1B70E74F4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1B70E74F4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1B715E780();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1B70E74F4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B7157114(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983650, &qword_1B71657F8);
    v2 = sub_1B715E950();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1B70E74F4(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1B70E74F4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1B715E780();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1B70E74F4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id FAFamilyInvite.inviteAsFamilyMember.getter()
{
  v1 = v0;
  v36 = sub_1B715DC80();
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983948, &qword_1B7166370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B716AA00;
  *(inited + 32) = 0x642D7265626D656DLL;
  *(inited + 40) = 0xEB00000000646973;
  v7 = [v1 organizerDSID];
  v8 = MEMORY[0x1E69E6158];
  if (v7)
  {
    v9 = v7;
    v38 = sub_1B7157EC4();
    *&v37 = v9;
    sub_1B70E74F4(&v37, (inited + 48));
  }

  else
  {
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
  }

  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000001B716F510;
  v10 = [v1 organizerFirstName];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1B715E0A0();
    v14 = v13;

    v8 = MEMORY[0x1E69E6158];
    v15 = (inited + 96);
    *(inited + 120) = MEMORY[0x1E69E6158];
    if (v14)
    {
      *v15 = v12;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = (inited + 96);
    *(inited + 120) = v8;
  }

  *v15 = 0;
  v14 = 0xE000000000000000;
LABEL_9:
  *(inited + 104) = v14;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000001B7170A90;
  v16 = [v1 organizerLastName];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B715E0A0();
    v20 = v19;

    v8 = MEMORY[0x1E69E6158];
    v21 = (inited + 144);
    *(inited + 168) = MEMORY[0x1E69E6158];
    if (v20)
    {
      *v21 = v18;
      goto LABEL_14;
    }
  }

  else
  {
    v21 = (inited + 144);
    *(inited + 168) = v8;
  }

  *v21 = 0;
  v20 = 0xE000000000000000;
LABEL_14:
  *(inited + 152) = v20;
  *(inited + 176) = 0x612D7265626D656DLL;
  *(inited + 184) = 0xEF64692D656C7070;
  v22 = [v1 organizerEmail];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1B715E0A0();
    v26 = v25;

    v8 = MEMORY[0x1E69E6158];
    v27 = (inited + 192);
    *(inited + 216) = MEMORY[0x1E69E6158];
    if (v26)
    {
      *v27 = v24;
      goto LABEL_19;
    }
  }

  else
  {
    v27 = (inited + 192);
    *(inited + 216) = v8;
  }

  *v27 = 0;
  v26 = 0xE000000000000000;
LABEL_19:
  *(inited + 200) = v26;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = 0x80000001B7170AB0;
  *(inited + 240) = 0;
  *(inited + 248) = 0xE000000000000000;
  *(inited + 264) = v8;
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x80000001B7170AD0;
  result = [v1 inviteDate];
  if (result)
  {
    v29 = result;
    sub_1B715DC40();

    sub_1B715DC30();
    v31 = v30;
    (*(v2 + 8))(v5, v36);
    *(inited + 312) = MEMORY[0x1E69E63B0];
    *(inited + 288) = v31 * 1000.0;
    v32 = sub_1B7141070(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983950, &qword_1B7166378);
    swift_arrayDestroy();
    sub_1B7156E4C(v32);

    v33 = objc_allocWithZone(FAFamilyMember);
    v34 = sub_1B715DFD0();

    v35 = [v33 initWithDictionaryRepresentation_];

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall FAFamilyInvite.getInviteURL()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983448, &qword_1B7164B40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v36 - v3;
  v5 = sub_1B715DB20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v37 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B715D930();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B715D920();
  sub_1B715D910();
  MEMORY[0x1B8CA05A0](0xD000000000000010, 0x80000001B71706F0);
  MEMORY[0x1B8CA05B0](0xD000000000000023, 0x80000001B7170710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9835B8, &qword_1B7165508);
  v13 = *(sub_1B715D8C0() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7166670;
  v17 = v16 + v15;
  sub_1B715D8B0();
  v18 = [v0 code];
  if (v18)
  {
    v36[1] = v17;
    v19 = v12;
    v20 = v4;
    v21 = v6;
    v22 = v5;
    v23 = v9;
    v24 = v18;
    sub_1B715E0A0();

    v9 = v23;
    v5 = v22;
    v6 = v21;
    v4 = v20;
    v12 = v19;
  }

  sub_1B715D8B0();

  sub_1B715D8D0();
  sub_1B715D8E0();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B70B4B7C(v4, &qword_1EB983448, &qword_1B7164B40);
    if (qword_1ED7CFAD8 != -1)
    {
      swift_once();
    }

    v25 = sub_1B715DEE0();
    __swift_project_value_buffer(v25, qword_1ED7CFAE0);
    v26 = sub_1B715DEC0();
    v27 = sub_1B715E560();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1B70B0000, v26, v27, "URL does not exist for getInviteURL", v28, 2u);
      MEMORY[0x1B8CA2750](v28, -1, -1);
    }

    (*(v38 + 8))(v12, v9);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v31 = v37;
    (*(v6 + 32))(v37, v4, v5);
    v32 = sub_1B715DAB0();
    v34 = v33;
    (*(v6 + 8))(v31, v5);
    (*(v38 + 8))(v12, v9);
    v30 = v34;
    v29 = v32;
  }

  result.value._object = v30;
  result.value._countAndFlagsBits = v29;
  return result;
}

Swift::String __swiftcall FAFamilyInvite.localizedName()()
{
  v1 = v0;
  v2 = sub_1B715D9C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B715D9B0();
  v7 = [v1 organizerFirstName];
  if (v7)
  {
    v8 = v7;
    sub_1B715E0A0();
  }

  sub_1B715D980();
  v9 = [v1 organizerLastName];
  if (v9)
  {
    v10 = v9;
    sub_1B715E0A0();
  }

  sub_1B715D990();
  v11 = objc_opt_self();
  v12 = sub_1B715D9A0();
  v13 = [v11 localizedStringFromPersonNameComponents:v12 style:0 options:0];

  v14 = sub_1B715E0A0();
  v16 = v15;

  (*(v3 + 8))(v6, v2);
  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

unint64_t sub_1B7157EC4()
{
  result = qword_1EB983790;
  if (!qword_1EB983790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB983790);
  }

  return result;
}

void sub_1B7157F10(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983478, &qword_1B7164D10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B7164C50;
    swift_getErrorValue();
    v3 = a1;
    v4 = sub_1B715EC00();
    v6 = v5;
    *(v2 + 56) = MEMORY[0x1E69E6158];
    *(v2 + 64) = sub_1B70EC68C();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    v7 = sub_1B715E0C0();
    v9 = v8;
    v10 = sub_1B715DEC0();
    v11 = sub_1B715E560();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      v14 = sub_1B70B461C(v7, v9, &v15);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_1B70B0000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1B8CA2750](v13, -1, -1);
      MEMORY[0x1B8CA2750](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B71580DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9839A0, &unk_1B716A7F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v10 - v4;
  __swift_allocate_value_buffer(v3, qword_1EB98E4D8);
  __swift_project_value_buffer(v0, qword_1EB98E4D8);
  v6 = objc_opt_self();
  v7 = [v6 hours];
  sub_1B71332D8();
  sub_1B715D860();
  v8 = [v6 seconds];
  sub_1B715D880();

  return (*(v1 + 8))(v5, v0);
}

void static CoreFollowupSender.clearInviteCFU()()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v0 = objc_allocWithZone(MEMORY[0x1E6997AC8]);
  v1 = sub_1B715E070();
  v2 = [v0 initWithClientIdentifier_];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983940, qword_1B716AA20);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1B7164C50;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 32) = 0x6E49796C696D6146;
    *(v3 + 40) = 0xEF55464365746976;
    v4 = sub_1B715E310();

    v18[0] = 0;
    v5 = [v2 clearPendingFollowUpItemsWithUniqueIdentifiers:v4 error:v18];

    if (v5)
    {
      v6 = qword_1EB982800;
      v7 = v18[0];
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = sub_1B715DEE0();
      __swift_project_value_buffer(v8, qword_1EB982808);
      v9 = sub_1B715DEC0();
      v10 = sub_1B715E570();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18[0] = v12;
        *v11 = 136315394;
        *(v11 + 4) = sub_1B70B461C(0xD000000000000010, 0x80000001B7170B60, v18);
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_1B70B461C(0x6E49796C696D6146, 0xEF55464365746976, v18);
        _os_log_impl(&dword_1B70B0000, v9, v10, "%s cleared %s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA2750](v12, -1, -1);
        MEMORY[0x1B8CA2750](v11, -1, -1);
      }

      goto LABEL_13;
    }

    v14 = v18[0];
    v13 = sub_1B715DAA0();

    swift_willThrow();
  }

  else
  {
    v13 = _s12FamilyCircle0A5ErrorO06createC0_6domain4codes0C0_pSS_SSSitFZ_0(0xD000000000000027, 0x80000001B7170B10, 0xD000000000000010, 0x80000001B716E8E0, 500);
    swift_willThrow();
  }

  if (qword_1EB982800 != -1)
  {
    swift_once();
  }

  v15 = sub_1B715DEE0();
  __swift_project_value_buffer(v15, qword_1EB982808);
  v16 = v13;
  sub_1B7157F10(v13);

LABEL_13:
  v17 = *MEMORY[0x1E69E9840];
}

void _s12FamilyCircle18CoreFollowupSenderO13sendInviteCFU14invitationDatey10Foundation0J0VSg_tFZ_0(uint64_t a1)
{
  v62 = a1;
  v67 = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9839A0, &unk_1B716A7F0);
  v61 = *(v1 - 8);
  v2 = *(v61 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983928, &qword_1B71662D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v59 - v9;
  v11 = sub_1B715DC80();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v59 - v20;
  v22 = objc_allocWithZone(MEMORY[0x1E6997AC8]);
  v23 = sub_1B715E070();
  v63 = [v22 initWithClientIdentifier_];

  v24 = [objc_allocWithZone(MEMORY[0x1E6997AD0]) init];
  sub_1B710C8C8(v62, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B70B4B7C(v10, &qword_1EB983928, &qword_1B71662D0);
    sub_1B715DC70();
    v25 = objc_opt_self();
    v26 = [v25 hours];
    sub_1B71332D8();
    sub_1B715D860();
    v27 = [v25 seconds];
    v28 = v60;
    sub_1B715D880();

    v29 = *(v61 + 8);
    v29(v5, v1);
    sub_1B715D870();
    v29(v28, v1);
    sub_1B715DC10();
    v30 = *(v12 + 8);
    v30(v16, v11);
    v31 = sub_1B715DBE0();
    v30(v19, v11);
    [v24 setExpirationDate_];
  }

  else
  {
    (*(v12 + 32))(v21, v10, v11);
    if (qword_1EB9830D8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v1, qword_1EB98E4D8);
    sub_1B715D870();
    sub_1B715DC10();
    v32 = sub_1B715DBE0();
    v33 = *(v12 + 8);
    v33(v19, v11);
    [v24 setExpirationDate_];

    v33(v21, v11);
  }

  v65 = 0;
  v66 = 0xE000000000000000;
  v64 = *MEMORY[0x1E6997A90];
  type metadata accessor for FLItemGroup(0);
  sub_1B715E900();
  v34 = sub_1B715E070();

  [v24 setGroupIdentifier_];

  [v24 setDisplayStyle_];
  v35 = sub_1B715E070();
  [v24 setTitle_];

  v36 = [v24 title];
  [v24 setInformativeText_];

  v65 = 0;
  v66 = 0xE000000000000000;
  v64 = *MEMORY[0x1E6997AA8];
  type metadata accessor for FLItemCollection(0);
  sub_1B715E900();
  v37 = sub_1B715E070();

  [v24 setCollectionIdentifier_];

  v38 = sub_1B715E070();
  [v24 setCategoryIdentifier_];

  v39 = sub_1B715E070();
  [v24 setUniqueIdentifier_];

  if (qword_1EB982800 != -1)
  {
    swift_once();
  }

  v40 = sub_1B715DEE0();
  __swift_project_value_buffer(v40, qword_1EB982808);
  v41 = v24;
  v42 = sub_1B715DEC0();
  v43 = sub_1B715E550();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v65 = v46;
    *v44 = 136315394;
    *(v44 + 4) = sub_1B70B461C(0xD00000000000001ELL, 0x80000001B7170C40, &v65);
    *(v44 + 12) = 2112;
    *(v44 + 14) = v41;
    *v45 = v41;
    v47 = v41;
    _os_log_impl(&dword_1B70B0000, v42, v43, "%s about to post %@", v44, 0x16u);
    sub_1B70B4B7C(v45, &qword_1EB9838E8, &qword_1B71660D0);
    MEMORY[0x1B8CA2750](v45, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1B8CA2750](v46, -1, -1);
    MEMORY[0x1B8CA2750](v44, -1, -1);
  }

  v48 = v63;
  if (!v63)
  {
    v55 = _s12FamilyCircle0A5ErrorO06createC0_6domain4codes0C0_pSS_SSSitFZ_0(0xD000000000000035, 0x80000001B7170BC0, 0xD000000000000010, 0x80000001B716E8E0, 500);
    swift_willThrow();
LABEL_17:
    v57 = v55;
    sub_1B7157F10(v55);

    goto LABEL_18;
  }

  v65 = 0;
  v49 = v63;
  if (![v49 postFollowUpItem:v41 error:&v65])
  {
    v56 = v65;
    v55 = sub_1B715DAA0();

    swift_willThrow();
    goto LABEL_17;
  }

  v50 = v65;

  v51 = sub_1B715DEC0();
  v52 = sub_1B715E570();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v65 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_1B70B461C(0xD00000000000001ELL, 0x80000001B7170C40, &v65);
    _os_log_impl(&dword_1B70B0000, v51, v52, "%s Posted CFU", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1B8CA2750](v54, -1, -1);
    MEMORY[0x1B8CA2750](v53, -1, -1);
  }

LABEL_18:
  v58 = *MEMORY[0x1E69E9840];
}

id FARequestEphemeralSigner.init(ephemeralAuthResults:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B715DFD0();

  v2 = [v0 initWithEphemeralAuthResults_];

  return v2;
}

id FARequestEphemeralSigner.init(ephemeralAuthResults:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___FARequestEphemeralSigner_ephemeralAuthResults) = a1;
  v3.super_class = FARequestEphemeralSigner;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_1B715919C()
{
  v1 = v0;
  v2 = *MEMORY[0x1E698DB98];
  v3 = sub_1B715E0A0();
  v5 = v4;
  v6 = [v1 ephemeralAuthResults];
  v7 = sub_1B715DFE0();

  if (!*(v7 + 16))
  {

    goto LABEL_6;
  }

  v8 = sub_1B70E747C(v3, v5);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_6:

    return sub_1B7141070(MEMORY[0x1E69E7CC0]);
  }

  sub_1B70B46E8(*(v7 + 56) + 32 * v8, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983428, "ڼ");
  if (swift_dynamicCast())
  {
    return v12;
  }

  return sub_1B7141070(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B71592D0()
{
  v0 = sub_1B715919C();
  v1 = *MEMORY[0x1E698B7B8];
  v2 = sub_1B715E0A0();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v4 = sub_1B70E747C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  sub_1B70B46E8(*(v0 + 56) + 32 * v4, v9);

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71593AC()
{
  v1 = v0;
  v2 = *MEMORY[0x1E698DB68];
  v3 = sub_1B715E0A0();
  v5 = v4;
  v6 = [v1 ephemeralAuthResults];
  v7 = sub_1B715DFE0();

  if (!*(v7 + 16))
  {

    goto LABEL_6;
  }

  v8 = sub_1B70E747C(v3, v5);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_1B70B46E8(*(v7 + 56) + 32 * v8, v21);

  if (swift_dynamicCast())
  {
    v21[0] = v20;
    return sub_1B715EAE0();
  }

LABEL_7:
  v12 = sub_1B715E0A0();
  v14 = v13;
  v15 = [v1 ephemeralAuthResults];
  v16 = sub_1B715DFE0();

  if (!*(v16 + 16))
  {

    goto LABEL_13;
  }

  v17 = sub_1B70E747C(v12, v14);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  sub_1B70B46E8(*(v16 + 56) + 32 * v17, v21);

  if (swift_dynamicCast())
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B71595C4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = sub_1B715E0A0();
  v6 = v5;
  v7 = [v2 ephemeralAuthResults];
  v8 = sub_1B715DFE0();

  if (!*(v8 + 16))
  {

    goto LABEL_8;
  }

  v9 = sub_1B70E747C(v4, v6);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  sub_1B70B46E8(*(v8 + 56) + 32 * v9, v14);

  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void sub_1B71596E4(void *a1)
{
  if (qword_1ED7CFAD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B715DEE0();
  __swift_project_value_buffer(v2, qword_1ED7CFAE0);
  v3 = sub_1B715DEC0();
  v4 = sub_1B715E550();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B70B0000, v3, v4, "FARequestEphemeralSigner.sign signing request", v5, 2u);
    MEMORY[0x1B8CA2750](v5, -1, -1);
  }

  v6 = sub_1B71595C4(MEMORY[0x1E698DB40]);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = *MEMORY[0x1E698B7B8];
    v11 = sub_1B715E0A0();
    sub_1B7159B4C(v8, v9, v11, v12);
    v14 = v13;

    if (v14)
    {
      v15 = sub_1B715E070();
    }

    else
    {
      v15 = 0;
    }

    [a1 setValue:v15 forHTTPHeaderField:*MEMORY[0x1E698B780]];

    sub_1B7159B4C(v8, v9, 0xD000000000000021, 0x80000001B7170D40);
    if (v29)
    {
      v30 = sub_1B715E070();
    }

    else
    {
      v30 = 0;
    }

    v31 = sub_1B715E070();
    [a1 setValue:v30 forHTTPHeaderField:v31];

    v32 = sub_1B715E070();

    v33 = sub_1B715E070();
    [a1 setValue:v32 forHTTPHeaderField:v33];
  }

  else
  {
    v16 = sub_1B71593AC();
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      v20 = sub_1B715DEC0();
      v21 = sub_1B715E560();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1B70B0000, v20, v21, "FARequestEphemeralSigner.sign altdsid is nil falling back to dsid", v22, 2u);
        MEMORY[0x1B8CA2750](v22, -1, -1);
      }

      v23 = *MEMORY[0x1E698B7C0];
      v24 = sub_1B715E0A0();
      sub_1B7159B4C(v18, v19, v24, v25);
      v27 = v26;

      if (v27)
      {
        v28 = sub_1B715E070();
      }

      else
      {
        v28 = 0;
      }

      v33 = sub_1B715E070();
      [a1 setValue:v28 forHTTPHeaderField:v33];
    }

    else
    {
      v33 = sub_1B715DEC0();
      v34 = sub_1B715E560();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1B70B0000, v33, v34, "FARequestEphemeralSigner.sign altdsid is nil", v35, 2u);
        MEMORY[0x1B8CA2750](v35, -1, -1);
      }
    }
  }

  sub_1B71593AC();
  if (v36)
  {
    v37 = sub_1B715E070();
  }

  else
  {
    v37 = 0;
  }

  [a1 aa:v37 addDeviceProvisioningInfoHeadersWithDSID:?];
}

uint64_t sub_1B7159B4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1B715E0E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B715919C();
  if (*(v13 + 16) && (v14 = sub_1B70E747C(a3, a4), (v15 & 1) != 0))
  {
    sub_1B70B46E8(*(v13 + 56) + 32 * v14, v27);

    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    MEMORY[0x1B8CA0E30](a1, a2);
    MEMORY[0x1B8CA0E30](58, 0xE100000000000000);
    sub_1B715E900();
    sub_1B715E0D0();
    v16 = sub_1B715E0B0();
    v18 = v17;

    (*(v9 + 8))(v12, v8);
    v19 = 0;
    if (v18 >> 60 != 15)
    {
      v19 = sub_1B715DB40();
      sub_1B70FFF9C(v16, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v27);
    return v19;
  }

  else
  {

    if (qword_1ED7CFAD8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B715DEE0();
    __swift_project_value_buffer(v21, qword_1ED7CFAE0);

    v22 = sub_1B715DEC0();
    v23 = sub_1B715E550();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1B70B461C(a3, a4, v27);
      _os_log_impl(&dword_1B70B0000, v22, v23, "FARequestEphemeralSigner.headerValue %s is nil", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1B8CA2750](v25, -1, -1);
      MEMORY[0x1B8CA2750](v24, -1, -1);
    }

    return 0;
  }
}

id FARequestEphemeralSigner.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id FARequestEphemeralSigner.account.getter()
{
  v1 = [v0 ephemeralAuthResults];
  v2 = sub_1B715DFE0();

  v3 = _sSo9ACAccountC12FamilyCircleE10fa_account4withABSgSDySSypG_tFZ_0(v2);

  return v3;
}

unint64_t FARequestEphemeralSigner.accountInfoPayload()()
{
  v0 = sub_1B71411A0(MEMORY[0x1E69E7CC0]);
  v34 = v0;
  v1 = sub_1B71595C4(MEMORY[0x1E698DBF0]);
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = *MEMORY[0x1E698BA88];
      v5 = v1;
      v6 = v2;
      v7 = sub_1B715E0A0();
      v9 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1B7155E7C(v5, v6, v7, v9, isUniquelyReferenced_nonNull_native);

      v34 = v0;
    }

    else
    {
    }
  }

  v11 = sub_1B71593AC();
  if (v12)
  {
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = *MEMORY[0x1E698BA90];
      v15 = v11;
      v16 = v12;
      v17 = sub_1B715E0A0();
      v19 = v18;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_1B7155E7C(v15, v16, v17, v19, v20);

      v34 = v0;
    }

    else
    {
    }
  }

  v21 = sub_1B71595C4(MEMORY[0x1E698DB40]);
  if (v22)
  {
    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v24 = *MEMORY[0x1E698BA80];
      v25 = v21;
      v26 = v22;
      v27 = sub_1B715E0A0();
      v29 = v28;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_1B7155E7C(v25, v26, v27, v29, v30);

      v34 = v0;
    }

    else
    {
    }
  }

  v31 = sub_1B71592D0();
  if (v32)
  {
    sub_1B71489C8(v31, v32, 0x796C696D61467364, 0xED00006E656B6F54);
    return v34;
  }

  return v0;
}

unint64_t type metadata accessor for FARequestEphemeralSigner()
{
  result = qword_1EB984618;
  if (!qword_1EB984618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB984618);
  }

  return result;
}

uint64_t static Bool.parseBool(_:)(uint64_t a1)
{
  sub_1B712C5F0(a1, v8);
  if (!v9)
  {
    goto LABEL_13;
  }

  sub_1B712C5F0(v8, v7);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v2 = sub_1B715E100();
      v4 = v3;

      if (v2 == 1702195828 && v4 == 0xE400000000000000)
      {

        v1 = 1;
      }

      else
      {
        v1 = sub_1B715EB10();
      }

      goto LABEL_4;
    }

    sub_1B7157EC4();
    if (swift_dynamicCast())
    {
      v1 = [v6 BOOLValue];

      goto LABEL_4;
    }

    __swift_destroy_boxed_opaque_existential_1(v7);
LABEL_13:
    v1 = 0;
    goto LABEL_14;
  }

  v1 = v6;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v7);
LABEL_14:
  sub_1B711E824(v8);
  return v1 & 1;
}

id AgeAttestationEntity.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id AgeAttestationEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AgeAttestationEntity();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id AgeAttestationEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeAttestationEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static AgeAttestationEntity.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B715E070();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1B715A6AC(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B715E0A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1B715A710(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_1B715E070();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_1B715A780@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_1B715DC40();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1B715DC80();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_1B715A820(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983928, &qword_1B71662D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v15 - v9;
  sub_1B710C8C8(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1B715DC80();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B715DBE0();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_1B715A94C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for AgeAttestationEntity();
  result = sub_1B715E800();
  *a1 = result;
  return result;
}

id RecordSharingMetadataEntity.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id RecordSharingMetadataEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RecordSharingMetadataEntity();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id RecordSharingMetadataEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordSharingMetadataEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static RecordSharingMetadataEntity.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B715E070();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1B715ABF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for RecordSharingMetadataEntity();
  result = sub_1B715E800();
  *a1 = result;
  return result;
}

id FamilySettingsValueEntity.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id FamilySettingsValueEntity.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FamilySettingsValueEntity();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id FamilySettingsValueEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilySettingsValueEntity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static FamilySettingsValueEntity.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1B715E070();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1B715AE20@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 updatedAt];
  if (v3)
  {
    v4 = v3;
    sub_1B715DC40();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B715DC80();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B715AEC4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983928, &qword_1B71662D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B710C8C8(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1B715DC80();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B715DBE0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setUpdatedAt_];
}

uint64_t sub_1B715AFF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for FamilySettingsValueEntity();
  result = sub_1B715E800();
  *a1 = result;
  return result;
}

uint64_t _weakUIImagePNGRepresentation_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1(v0);
}