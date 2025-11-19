uint64_t sub_1BAD7EC18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x65526D6574737973;
  v4 = a1;
  v5 = 0x75506D6574737973;
  v6 = 0xEC000000656C7072;
  if (a1 != 6)
  {
    v5 = 0x72476D6574737973;
    v6 = 0xEA00000000007961;
  }

  v7 = 0x65596D6574737973;
  v8 = 0xEC000000776F6C6CLL;
  if (a1 != 4)
  {
    v7 = 0x69506D6574737973;
    v8 = 0xEA00000000006B6ELL;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6C426D6574737973;
  v10 = 0xEA00000000006575;
  if (a1 != 2)
  {
    v9 = 0x724F6D6574737973;
    v10 = 0xEC00000065676E61;
  }

  v11 = 0x72476D6574737973;
  v12 = 0xEB000000006E6565;
  if (!a1)
  {
    v11 = 0x65526D6574737973;
    v12 = 0xE900000000000064;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v17 = 0x72476D6574737973;
        v18 = 31073;
LABEL_40:
        v2 = v18 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v13 != v17)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v15 = 0x75506D6574737973;
      v16 = 1701605490;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEA00000000006B6ELL;
        if (v13 != 0x69506D6574737973)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v15 = 0x65596D6574737973;
      v16 = 2003790956;
    }

    v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v13 != v15)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xEB000000006E6565;
      if (v13 != 0x72476D6574737973)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a2 == 2)
  {
    v17 = 0x6C426D6574737973;
    v18 = 25973;
    goto LABEL_40;
  }

  v3 = 0x724F6D6574737973;
  v2 = 0xEC00000065676E61;
LABEL_36:
  if (v13 != v3)
  {
LABEL_41:
    v19 = sub_1BAD9DA98();
    goto LABEL_42;
  }

LABEL_37:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v19 = 1;
LABEL_42:

  return v19 & 1;
}

uint64_t sub_1BAD7EEC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7265746E6563;
    }

    else
    {
      v3 = 1952867692;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x7468676972;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x656966697473756ALL;
    }

    else
    {
      v3 = 0x657A696C61636F6CLL;
    }

    v4 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7265746E6563;
    }

    else
    {
      v8 = 1952867692;
    }

    if (a2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x656966697473756ALL;
    if (a2 != 3)
    {
      v5 = 0x657A696C61636F6CLL;
    }

    if (a2 == 2)
    {
      v6 = 0x7468676972;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE900000000000064;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v7)
  {
LABEL_34:
    v9 = sub_1BAD9DA98();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1BAD7F044()
{
  sub_1BAD9D018();
}

uint64_t sub_1BAD7F1A8()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

Class static UIColor.tryToMakeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B2F0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BAD9C7A8();
  result = 0;
  if ((v5 & 1) == 0)
  {
    return static UIColor.makeInstance(byDeserializing:using:)(a1, a2).super.isa;
  }

  return result;
}

uint64_t UIColor.StaticNamedColor.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1BAD9D978();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BAD7F53C(char *a1, char *a2)
{
  if (*&aBlack_1[8 * *a1] == *&aBlack_1[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1BAD9DA98();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1BAD7F5A4()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD7F600()
{
  sub_1BAD9D018();
}

uint64_t sub_1BAD7F640()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

id sub_1BAD7F6C0()
{
  v1 = [objc_opt_self() *off_1E7F1B1A8[*v0]];

  return v1;
}

uint64_t UIColor.SystemNamedColor.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1BAD9D978();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t UIColor.SystemNamedColor.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65526D6574737973;
  v3 = 0x75506D6574737973;
  if (v1 != 6)
  {
    v3 = 0x72476D6574737973;
  }

  v4 = 0x65596D6574737973;
  if (v1 != 4)
  {
    v4 = 0x69506D6574737973;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C426D6574737973;
  if (v1 != 2)
  {
    v5 = 0x724F6D6574737973;
  }

  if (*v0)
  {
    v2 = 0x72476D6574737973;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1BAD7F8D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x65526D6574737973;
  v5 = 0xEC000000656C7072;
  v6 = 0x75506D6574737973;
  if (v2 != 6)
  {
    v6 = 0x72476D6574737973;
    v5 = 0xEA00000000007961;
  }

  v7 = 0xEC000000776F6C6CLL;
  v8 = 0x65596D6574737973;
  if (v2 != 4)
  {
    v8 = 0x69506D6574737973;
    v7 = 0xEA00000000006B6ELL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6C426D6574737973;
  v10 = 0xEA00000000006575;
  if (v2 != 2)
  {
    v9 = 0x724F6D6574737973;
    v10 = 0xEC00000065676E61;
  }

  if (*v1)
  {
    v4 = 0x72476D6574737973;
    v3 = 0xEB000000006E6565;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1BAD7FA14()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD7FAC4()
{
  sub_1BAD9D018();
}

uint64_t sub_1BAD7FB60()
{
  sub_1BAD9DB48();
  sub_1BAD9D018();

  return sub_1BAD9DB88();
}

uint64_t sub_1BAD7FC0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BAD80DEC();
  *a1 = result;
  return result;
}

void sub_1BAD7FC3C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6449010;
  v4 = 0xE700000000000000;
  v5 = 0x63696D616E7964;
  if (*v1 != 2)
  {
    v5 = 1819112552;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x64656D616ELL;
    v2 = 0xE500000000000000;
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

UIColor static UIColor.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAD9C7C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  sub_1BAD9C7D8();
  sub_1BAD800A0();
  sub_1BAD9C748();
  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v24 <= 1u)
  {
    if (v24)
    {
      return sub_1BAD8057C();
    }

    else
    {
      return sub_1BAD800F4();
    }
  }

  else if (v24 == 2)
  {
    return sub_1BAD8086C(a1, a2);
  }

  else
  {
    if (v24 == 3)
    {
      sub_1BAD9C7D8();
      v12 = sub_1BAD9C7B8();
      v14 = v13;
      v11(v7, v4);
      if (v14)
      {
        sub_1BAD3E254();
        v15._countAndFlagsBits = v12;
        v15._object = v14;
        return UIColor.init(htmlColor:)(v15);
      }

      v21 = sub_1BAD9CE08();
      sub_1BAD25BD0();
      swift_allocError();
      *v22 = 0x65756C6176;
      v22[1] = 0xE500000000000000;
      v22[2] = v23[1];
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E69AB690], v21);
    }

    else
    {
      v17 = sub_1BAD9CE08();
      sub_1BAD25BD0();
      swift_allocError();
      v19 = v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B310);
      *v19 = 0x646E696B24;
      v19[1] = 0xE500000000000000;
      v19[2] = v20;
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69AB690], v17);
    }

    return swift_willThrow();
  }
}

uint64_t sub_1BAD7FFC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAD80038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BAD800A0()
{
  result = qword_1EBC2B308;
  if (!qword_1EBC2B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B308);
  }

  return result;
}

id sub_1BAD800F4()
{
  v0 = sub_1BAD9C7C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v42 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  sub_1BAD9C7D8();
  v43 = sub_1BAD9C798();
  v16 = v15;
  v17 = *(v1 + 8);
  v17(v14, v0);
  if (v16)
  {
    v18 = sub_1BAD9CE08();
    sub_1BAD25BD0();
    swift_allocError();
    v20 = v19;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B310);
    *v20 = 6579570;
    v22 = 0xE300000000000000;
LABEL_5:
    v20[1] = v22;
LABEL_6:
    v20[2] = v21;
    v26 = MEMORY[0x1E69AB690];
LABEL_7:
    (*(*(v18 - 8) + 104))(v20, *v26, v18);
    return swift_willThrow();
  }

  sub_1BAD9C7D8();
  v41 = sub_1BAD9C798();
  v24 = v23;
  v17(v11, v0);
  if (v24)
  {
    v18 = sub_1BAD9CE08();
    sub_1BAD25BD0();
    swift_allocError();
    v20 = v25;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B310);
    *v20 = 0x6E65657267;
    v22 = 0xE500000000000000;
    goto LABEL_5;
  }

  sub_1BAD9C7D8();
  v40 = sub_1BAD9C798();
  v29 = v28;
  v17(v8, v0);
  if (v29)
  {
    v18 = sub_1BAD9CE08();
    sub_1BAD25BD0();
    swift_allocError();
    v20 = v30;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B310);
    *v20 = 1702194274;
    v20[1] = 0xE400000000000000;
    goto LABEL_6;
  }

  sub_1BAD9C7D8();
  v31 = sub_1BAD9C7A8();
  v17(v5, v0);
  v32 = 1.0;
  if ((v31 & 1) == 0)
  {
    v33 = v42;
    sub_1BAD9C7D8();
    v34 = sub_1BAD9C798();
    v36 = v35;
    v17(v33, v0);
    if (v36)
    {
      v18 = sub_1BAD9CE08();
      sub_1BAD25BD0();
      swift_allocError();
      v20 = v37;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B310);
      v39 = MEMORY[0x1E69E7CC0];
      *v20 = 0x6168706C61;
      v20[1] = 0xE500000000000000;
      v20[2] = v38;
      v20[3] = v39;
      v26 = MEMORY[0x1E69AB6A0];
      goto LABEL_7;
    }

    v32 = *&v34;
  }

  return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:*&v43 green:*&v41 blue:*&v40 alpha:v32];
}

id sub_1BAD8057C()
{
  v0 = sub_1BAD9C7C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  sub_1BAD9C7D8();
  sub_1BAD80E38();
  sub_1BAD9C748();
  v7 = *(v1 + 8);
  v7(v6, v0);
  if (v20 > 1u)
  {
    if (v20 == 2)
    {
      return [objc_opt_self() clearColor];
    }

    else
    {
      sub_1BAD9C7D8();
      sub_1BAD80E8C();
      sub_1BAD9C748();
      v7(v6, v0);
      if (v19 == 8)
      {
        v9 = sub_1BAD9CE08();
        sub_1BAD25BD0();
        swift_allocError();
        v11 = v10;
        sub_1BAD9C7D8();
        v12 = sub_1BAD9C7B8();
        v14 = v13;
        v7(v3, v0);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v12 = 0;
          v15 = 0xE000000000000000;
        }

        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B310);
        *v11 = v12;
        v11[1] = v15;
        v11[2] = v16;
        (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69AB680], v9);
        return swift_willThrow();
      }

      else
      {
        v18 = v19;
        return sub_1BAD7F6C0();
      }
    }
  }

  else if (v20)
  {
    return [objc_opt_self() whiteColor];
  }

  else
  {
    return [objc_opt_self() blackColor];
  }
}

id sub_1BAD8086C(uint64_t a1, uint64_t a2)
{
  v43 = sub_1BAD9C7C8();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = sub_1BAD3E254();
  v40 = a1;
  sub_1BAD9C7D8();
  v17 = v16;
  v18 = static UIColor.makeInstance(byDeserializing:using:)(v15, a2);
  if (v2)
  {
    (*(v41 + 8))(v15, v43);
  }

  else
  {
    v37 = v6;
    v38 = v9;
    v39 = v18;
    v19 = *(v41 + 8);
    v20 = v15;
    v21 = v43;
    v19(v20, v43);
    sub_1BAD9C7D8();
    v41 = static UIColor.makeInstance(byDeserializing:using:)(v12, a2);
    v19(v12, v21);
    v22 = v38;
    sub_1BAD9C7D8();
    v36 = static UIColor.makeInstance(byDeserializing:using:)(v22, a2);
    v19(v22, v21);
    v23 = v37;
    sub_1BAD9C7D8();
    v25 = static UIColor.makeInstance(byDeserializing:using:)(v23, a2);
    v19(v23, v21);
    v26 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v27 = swift_allocObject();
    v28 = v36;
    v27[2] = v25;
    v27[3] = v28;
    v29 = v41;
    v30 = v39;
    v27[4] = v41;
    v27[5] = v30;
    aBlock[4] = sub_1BAD2E978;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAD2E984;
    aBlock[3] = &block_descriptor_11;
    v31 = _Block_copy(aBlock);
    v32 = v25;
    v33 = v28;
    v34 = v29;
    v35 = v30;

    v17 = [v26 initWithDynamicProvider_];

    _Block_release(v31);
  }

  return v17;
}

unint64_t sub_1BAD80CB8()
{
  result = qword_1EBC2B318;
  if (!qword_1EBC2B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B318);
  }

  return result;
}

unint64_t sub_1BAD80D10()
{
  result = qword_1EBC2B320;
  if (!qword_1EBC2B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B320);
  }

  return result;
}

unint64_t sub_1BAD80D98()
{
  result = qword_1EBC2B328;
  if (!qword_1EBC2B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B328);
  }

  return result;
}

uint64_t sub_1BAD80DEC()
{
  v0 = sub_1BAD9D978();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BAD80E38()
{
  result = qword_1EBC2B330;
  if (!qword_1EBC2B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B330);
  }

  return result;
}

unint64_t sub_1BAD80E8C()
{
  result = qword_1EBC2B338;
  if (!qword_1EBC2B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B338);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAD80F20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = v3[5];
  v41 = v3[4];
  v42 = v5;
  v43 = *(v3 + 96);
  v6 = v3[1];
  v37 = *v3;
  v38 = v6;
  v7 = v3[3];
  v39 = v3[2];
  v40 = v7;
  if (!a2)
  {
    v8 = 0;
    *(result + 96) = *(v3 + 96);
    v21 = v3[5];
    *(result + 64) = v3[4];
    *(result + 80) = v21;
    v22 = v3[1];
    *result = *v3;
    *(result + 16) = v22;
    v20 = v3[2];
    v19 = v3[3];
    goto LABEL_13;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_10:
    v17 = v42;
    *(v4 + 64) = v41;
    *(v4 + 80) = v17;
    *(v4 + 96) = v43;
    v18 = v38;
    *v4 = v37;
    *(v4 + 16) = v18;
    v20 = v39;
    v19 = v40;
LABEL_13:
    *(v4 + 32) = v20;
    *(v4 + 48) = v19;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      DisjointStack.Placements.next()(&v25);
      if (!*(&v26 + 1))
      {
        break;
      }

      v11 = v28;
      v12 = v29;
      v34 = v28;
      v35 = v29;
      v13 = v30;
      v36 = v30;
      v14 = v25;
      v15 = v26;
      v31 = v25;
      v32 = v26;
      v33 = v27;
      *(v9 + 32) = v27;
      *(v9 + 48) = v11;
      *(v9 + 64) = v12;
      *(v9 + 80) = v13;
      *v9 = v14;
      *(v9 + 16) = v15;
      if (v8 == v10)
      {
        goto LABEL_10;
      }

      v9 += 88;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_1BAD1A420(&v25, &qword_1EBC2AAF0);
    v23 = v42;
    *(v4 + 64) = v41;
    *(v4 + 80) = v23;
    *(v4 + 96) = v43;
    v24 = v38;
    *v4 = v37;
    *(v4 + 16) = v24;
    v20 = v39;
    v19 = v40;
    v8 = v10 - 1;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

__int128 *sub_1BAD810BC(__int128 *result, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr))
{
  v5 = result;
  v6 = v4[1];
  v36 = *v4;
  v37 = v6;
  v7 = v4[3];
  v38 = v4[2];
  v39 = v7;
  if (!a2)
  {
    v8 = 0;
    v21 = v4[1];
    *result = *v4;
    result[1] = v21;
    v19 = v4[2];
    v20 = v4[3];
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_10:
    v18 = v37;
    *v5 = v36;
    v5[1] = v18;
    v19 = v38;
    v20 = v39;
LABEL_12:
    v5[2] = v19;
    v5[3] = v20;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v11 = 1;
    while (1)
    {
      a4(&v24);
      if (!*(&v25 + 1))
      {
        break;
      }

      v12 = v27;
      v13 = v28;
      v33 = v27;
      v34 = v28;
      v14 = v29;
      v35 = v29;
      v15 = v24;
      v16 = v25;
      v30 = v24;
      v31 = v25;
      v32 = v26;
      *(v10 + 32) = v26;
      *(v10 + 48) = v12;
      *(v10 + 64) = v13;
      *(v10 + 80) = v14;
      *v10 = v15;
      *(v10 + 16) = v16;
      if (v8 == v11)
      {
        goto LABEL_10;
      }

      v10 += 88;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_1BAD1A420(&v24, &qword_1EBC2AAF0);
    v22 = v37;
    *v5 = v36;
    v5[1] = v22;
    v23 = v39;
    v5[2] = v38;
    v5[3] = v23;
    return (v11 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAD811F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  v10 = (*(v9 + 24))(v8, v9);
  result = sub_1BAD48260(v4);
  v12 = 0;
  if (!a2 || !a3)
  {
LABEL_12:
    *a1 = v10;
    return v12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1BAD9D928();
    if (*(&v19 + 1))
    {
      v12 = 0;
      while (1)
      {
        v13 = v21;
        v14 = v22;
        v27 = v21;
        v28 = v22;
        v15 = v23;
        v29 = v23;
        v16 = v18;
        v17 = v19;
        v24 = v18;
        v25 = v19;
        v26 = v20;
        *(a2 + 32) = v20;
        *(a2 + 48) = v13;
        *(a2 + 64) = v14;
        *(a2 + 80) = v15;
        *a2 = v16;
        *(a2 + 16) = v17;
        if (a3 - 1 == v12)
        {
          break;
        }

        a2 += 88;
        sub_1BAD9D928();
        ++v12;
        if (!*(&v19 + 1))
        {
          goto LABEL_10;
        }
      }

      v12 = a3;
    }

    else
    {
      v12 = 0;
LABEL_10:
      sub_1BAD1A420(&v18, &qword_1EBC2AAF0);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAD81334(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
    v5 = 0;
    *(result + 128) = *(v3 + 128);
    v15 = v3[7];
    *(result + 96) = v3[6];
    *(result + 112) = v15;
    goto LABEL_12;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_10:
    v14 = v3[7];
    *(v4 + 96) = v3[6];
    *(v4 + 112) = v14;
    *(v4 + 128) = *(v3 + 128);
LABEL_12:
    v16 = v3[3];
    *(v4 + 32) = v3[2];
    *(v4 + 48) = v16;
    v17 = v3[5];
    *(v4 + 64) = v3[4];
    *(v4 + 80) = v17;
    v19 = *v3;
    v18 = v3[1];
LABEL_13:
    *v4 = v19;
    *(v4 + 16) = v18;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      Pin.Placements.next()(&v23);
      if (!*(&v24 + 1))
      {
        break;
      }

      v8 = v26;
      v9 = v27;
      v32 = v26;
      v33 = v27;
      v10 = v28;
      v34 = v28;
      v11 = v23;
      v12 = v24;
      v29 = v23;
      v30 = v24;
      v31 = v25;
      *(v6 + 32) = v25;
      *(v6 + 48) = v8;
      *(v6 + 64) = v9;
      *(v6 + 80) = v10;
      *v6 = v11;
      *(v6 + 16) = v12;
      if (v5 == v7)
      {
        goto LABEL_10;
      }

      v6 += 88;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_1BAD1A420(&v23, &qword_1EBC2AAF0);
    v20 = v3[7];
    *(v4 + 96) = v3[6];
    *(v4 + 112) = v20;
    *(v4 + 128) = *(v3 + 128);
    v21 = v3[3];
    *(v4 + 32) = v3[2];
    *(v4 + 48) = v21;
    v22 = v3[5];
    *(v4 + 64) = v3[4];
    *(v4 + 80) = v22;
    v19 = *v3;
    v18 = v3[1];
    v5 = v7 - 1;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_1BAD81478(void *__dst, uint64_t a2, uint64_t a3)
{
  v4 = __dst;
  if (!a2)
  {
    memcpy(__dst, v3, 0x110uLL);
    return 0;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_10:
    memcpy(v4, v3, 0x110uLL);
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      Resize.Placements.next()(&v14);
      if (!*(&v15 + 1))
      {
        break;
      }

      v8 = v17;
      v9 = v18;
      v23 = v17;
      v24 = v18;
      v10 = v19;
      v25 = v19;
      v11 = v14;
      v12 = v15;
      v20 = v14;
      v21 = v15;
      v22 = v16;
      *(v6 + 32) = v16;
      *(v6 + 48) = v8;
      *(v6 + 64) = v9;
      *(v6 + 80) = v10;
      *v6 = v11;
      *(v6 + 16) = v12;
      if (v5 == v7)
      {
        goto LABEL_10;
      }

      v6 += 88;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_1BAD1A420(&v14, &qword_1EBC2AAF0);
    memcpy(v4, v3, 0x110uLL);
    return (v7 - 1);
  }

  __break(1u);
  return __dst;
}

uint64_t Pin.Edge.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD8161C@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if ((*(v2 + 40) & 1) == 0)
  {
    sub_1BAD14A3C(result, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
    if (swift_dynamicCast())
    {
      sub_1BAD0B40C(v6, v9);
      v4 = v10;
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v5 + 8))(*(v2 + 32), v4, v5);
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    v7 = 0;
    memset(v6, 0, sizeof(v6));
    result = sub_1BAD1A420(v6, &qword_1EBC2A1C0);
  }

  *a2 = 0;
  return result;
}

uint64_t Pin.Placements.union.getter@<X0>(CGFloat *a1@<X8>)
{
  if (*(v1 + 41))
  {
    sub_1BAD47D1C(v1, v23);
    Pin.Placements.next()(&v17);
    if (*(&v18 + 1))
    {
      v13 = v19;
      v14 = v20;
      v15 = v21;
      v16 = v22;
      v11 = v17;
      v12 = v18;
      x = *(&v19 + 1);
      width = *(&v20 + 1);
      y = *&v20;
      v7 = *(&v21 + 1);
      for (i = *&v21; ; i = v25.size.height)
      {
        v8 = v16;
        sub_1BAD17170(&v11);
        Pin.Placements.next()(&v17);
        if (!*(&v18 + 1))
        {
          break;
        }

        v13 = v19;
        v14 = v20;
        v15 = v21;
        v16 = v22;
        v11 = v17;
        v12 = v18;
        v28.origin.x = *(&v19 + 1);
        *&v28.origin.y = v20;
        *&v28.size.height = v21;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = i;
        v25 = CGRectUnion(v24, v28);
        x = v25.origin.x;
        y = v25.origin.y;
        width = v25.size.width;
      }

      goto LABEL_15;
    }

LABEL_14:
    v7 = 0.0;
    v8 = 0.0;
    width = 0.0;
    i = 0.0;
    x = 0.0;
    y = 0.0;
    goto LABEL_15;
  }

  sub_1BAD47D1C(v1, v23);
  Pin.Placements.next()(&v17);
  if (!*(&v18 + 1))
  {
    goto LABEL_14;
  }

  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  x = *(&v19 + 1);
  width = *(&v20 + 1);
  y = *&v20;
  v7 = *(&v21 + 1);
  i = *&v21;
  v8 = v22;
  sub_1BAD17170(&v11);
  while (1)
  {
    Pin.Placements.next()(&v17);
    if (!*(&v18 + 1))
    {
      break;
    }

    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v11 = v17;
    v12 = v18;
    v29.origin.x = *(&v19 + 1);
    *&v29.origin.y = v20;
    *&v29.size.height = v21;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = i;
    v27 = CGRectUnion(v26, v29);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    i = v27.size.height;
    v9 = v16;
    if (v7 >= *(&v15 + 1))
    {
      v7 = *(&v15 + 1);
    }

    sub_1BAD17170(&v11);
    if (v8 >= v9)
    {
      v8 = v9;
    }
  }

LABEL_15:
  result = sub_1BAD47D78(v23);
  *a1 = x;
  a1[1] = y;
  a1[2] = width;
  a1[3] = i;
  a1[4] = v7;
  a1[5] = v8;
  return result;
}

uint64_t Pin.Placements.next()@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BAD81E1C(v1 + 48, v73);
  if (!v77)
  {
    sub_1BAD0B40C(v73, v70);
    sub_1BAD0B40C(&v74, v67);
    v26 = v68;
    v27 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v29 = *(v1 + 16);
    v28 = *(v1 + 24);
    v30 = (*(v27 + 8))(*(v1 + 32), v26, v27, v29, v28);
    v32 = v31;
    v65 = v33;
    v35 = v34;
    if (*(v1 + 41))
    {
      sub_1BAD8161C(v67, v66);
      v37 = *v1;
      v36 = *(v1 + 8);
      v38 = *v1;
      v39 = v36;
      v40 = v29;
      v41 = v28;
      if (LOBYTE(v66[0]) >= 2u)
      {
        if (LOBYTE(v66[0]) == 2)
        {
          MinX = CGRectGetMidX(*&v38) + v30 * -0.5;
        }

        else
        {
          MinX = CGRectGetMaxX(*&v38) - v30;
        }
      }

      else
      {
        MinX = CGRectGetMinX(*&v38);
      }

      v83.origin.x = v37;
      v83.origin.y = v36;
      v83.size.width = v29;
      v83.size.height = v28;
      MinY = CGRectGetMaxY(v83) - v32;
    }

    else
    {
      v55 = *v1;
      v54 = *(v1 + 8);
      v81.origin.x = *v1;
      v81.origin.y = v54;
      v81.size.width = v29;
      v81.size.height = v28;
      MaxX = CGRectGetMaxX(v81);
      sub_1BAD8161C(v67, v66);
      v57 = v55;
      v58 = v54;
      v59 = v29;
      v60 = v28;
      if (LOBYTE(v66[0]) >= 2u)
      {
        if (LOBYTE(v66[0]) == 2)
        {
          MinY = CGRectGetMidY(*&v57) + v32 * -0.5;
        }

        else
        {
          MinY = CGRectGetMaxY(*&v57) - v32;
        }

        MinX = MaxX - v30;
      }

      else
      {
        MinY = CGRectGetMinY(*&v57);
        MinX = MaxX - v30;
      }
    }

    sub_1BAD81E54(v1 + 48);
    sub_1BAD14A3C(v70, v1 + 48);
    *(v1 + 88) = MinX;
    *(v1 + 96) = MinY;
    *(v1 + 104) = v30;
    *(v1 + 112) = v32;
    *(v1 + 128) = 1;
    sub_1BAD14A3C(v67, v66);
    sub_1BAD14A3C(v66, a1);
    *(a1 + 40) = floor(MinX);
    *(a1 + 48) = floor(MinY);
    *(a1 + 56) = ceil(v30);
    *(a1 + 64) = ceil(v32);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
    *(a1 + 72) = floor(v65);
    *(a1 + 80) = floor(v35);
    v63 = v67;
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  if (v77 != 1)
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  v4 = v74;
  v6 = v75;
  v5 = v76;
  sub_1BAD0B40C(v73, v70);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  if (*(v1 + 41))
  {
    v9 = *(v1 + 24);
    if (v7 != 0.0)
    {
      v78.origin = v4;
      v78.size.width = v6;
      v78.size.height = v5;
      v10 = v7 - CGRectGetHeight(v78);
      if (v10 < 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v10;
      }
    }

    v11 = v71;
    v12 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v13 = (*(v12 + 8))(*(v1 + 32), v11, v12, v8, v9);
    v15 = v14;
    v64 = v16;
    v18 = v17;
    sub_1BAD8161C(v70, v67);
    v20 = *v1;
    v19 = *(v1 + 8);
    v21 = *v1;
    v22 = v19;
    v23 = v8;
    v24 = v7;
    if (LOBYTE(v67[0]) >= 2u)
    {
      if (LOBYTE(v67[0]) == 2)
      {
        v25 = CGRectGetMidX(*&v21) + v13 * -0.5;
      }

      else
      {
        v25 = CGRectGetMaxX(*&v21) - v13;
      }
    }

    else
    {
      v25 = CGRectGetMinX(*&v21);
    }
  }

  else
  {
    v43 = *(v1 + 16);
    if (v8 != 0.0)
    {
      v79.origin = v4;
      v79.size.width = v6;
      v79.size.height = v5;
      v44 = v8 - CGRectGetWidth(v79);
      if (v44 < 0.0)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = v44;
      }
    }

    v45 = v71;
    v46 = v72;
    __swift_project_boxed_opaque_existential_1(v70, v71);
    v13 = (*(v46 + 8))(*(v1 + 32), v45, v46, v43, v7);
    v15 = v47;
    v64 = v48;
    v18 = v49;
    v20 = *v1;
    v19 = *(v1 + 8);
    v80.origin.x = *v1;
    v80.origin.y = v19;
    v80.size.width = v8;
    v80.size.height = v7;
    v25 = CGRectGetMinX(v80);
    sub_1BAD8161C(v70, v67);
    if (LOBYTE(v67[0]) >= 2u)
    {
      v50 = v20;
      v51 = v19;
      v52 = v8;
      v53 = v7;
      if (LOBYTE(v67[0]) == 2)
      {
        v62 = CGRectGetMidY(*&v50) + v15 * -0.5;
      }

      else
      {
        v62 = CGRectGetMaxY(*&v50) - v15;
      }

      goto LABEL_35;
    }
  }

  v82.origin.x = v20;
  v82.origin.y = v19;
  v82.size.width = v8;
  v82.size.height = v7;
  v62 = CGRectGetMinY(v82);
LABEL_35:
  sub_1BAD81E54(v1 + 48);
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 2;
  sub_1BAD14A3C(v70, v67);
  sub_1BAD14A3C(v67, a1);
  *(a1 + 40) = floor(v25);
  *(a1 + 48) = floor(v62);
  *(a1 + 56) = ceil(v13);
  *(a1 + 64) = ceil(v15);
  __swift_destroy_boxed_opaque_existential_1(v67);
  *(a1 + 72) = floor(v64);
  *(a1 + 80) = floor(v18);
  v63 = v70;
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

__n128 sub_1BAD81E8C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 128);
  v3 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v3;
  v4 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v4;
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BAD81EB8()
{
  v1 = sub_1BAD83888(v0);
  sub_1BAD47D78(v0);
  return v1;
}

uint64_t Pin.init(_:to:of:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  sub_1BAD14A3C(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  v8 = swift_dynamicCast();
  if (v8)
  {
    *v10 = *&v10[7];
    *&v10[2] = *&v10[9];
    *&v10[4] = *&v10[11];
    MEMORY[0x1EEE9AC00](v8);
    sub_1BAD9CDA8();
    sub_1BAD8209C(v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_1BAD0B40C(a1, a4);
  *(a4 + 40) = v7;
  return sub_1BAD0B40C(a3, a4 + 48);
}

JUMeasurements __swiftcall Pin.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = width;
  v27.size.height = height;
  if (CGRectGetWidth(v27) == 1.79769313e308)
  {
    width = 0.0;
  }

  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = width;
  v28.size.height = height;
  if (CGRectGetHeight(v28) == 1.79769313e308)
  {
    height = 0.0;
  }

  v6 = *(v2 + 40);
  sub_1BAD14A3C(v2 + 48, &v16);
  sub_1BAD14A3C(v2, v21);
  v22[0] = 0;
  v22[1] = 0;
  *&v22[2] = width;
  *&v22[3] = height;
  v22[4] = with.super.isa;
  v23 = 1;
  v24 = v6;
  sub_1BAD0B40C(&v16, &v25);
  sub_1BAD0B40C(v21, v26);
  v26[40] = 0;
  v7 = with.super.isa;
  Pin.Placements.union.getter(&v16);
  v8 = ceil(v17);
  v9 = ceil(v18);
  v10 = floor(v19);
  v11 = floor(v20);
  sub_1BAD47D78(v22);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.var3 = v15;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

id Pin.layout(relativeTo:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = *(v6 + 40);
  sub_1BAD14A3C(v6 + 48, v16);
  sub_1BAD14A3C(v6, v15);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = 0;
  *(a2 + 41) = v12;
  sub_1BAD0B40C(v16, a2 + 48);
  sub_1BAD0B40C(v15, a2 + 88);
  *(a2 + 128) = 0;

  return a1;
}

JetUI::_LayoutAlignment __swiftcall Pin._layoutAlignment(with:)(UITraitCollection with)
{
  v4 = v1;
  sub_1BAD14A3C(v2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A1B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v13 = sub_1BAD1A420(v16, &qword_1EBC2A1C0);
LABEL_12:
    v11 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  sub_1BAD0B40C(v16, v21);
  sub_1BAD14A3C(v2 + 48, v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1BAD1A420(v14, &qword_1EBC2A1C0);
    v13 = __swift_destroy_boxed_opaque_existential_1(v21);
    goto LABEL_12;
  }

  sub_1BAD0B40C(v14, v18);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v6 + 8))(v16, with.super.isa, v5, v6);
  v7 = LOBYTE(v16[0]);
  v8 = BYTE1(v16[0]);
  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v10 + 8))(v16, with.super.isa, v9, v10);
  if (v7 == LOBYTE(v16[0]))
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  if (v8 == BYTE1(v16[0]))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  v13 = __swift_destroy_boxed_opaque_existential_1(v21);
LABEL_13:
  *v4 = v11;
  v4[1] = v12;
  return v13;
}

unint64_t sub_1BAD824D0()
{
  result = qword_1EBC2B340;
  if (!qword_1EBC2B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B340);
  }

  return result;
}

unint64_t sub_1BAD82524(uint64_t a1)
{
  result = sub_1BAD8254C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAD8254C()
{
  result = qword_1EBC2B348;
  if (!qword_1EBC2B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B348);
  }

  return result;
}

unint64_t sub_1BAD825A4()
{
  result = qword_1EBC2B350;
  if (!qword_1EBC2B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B350);
  }

  return result;
}

unint64_t sub_1BAD825FC()
{
  result = qword_1EBC2B358;
  if (!qword_1EBC2B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B358);
  }

  return result;
}

id sub_1BAD82650@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = *(v6 + 40);
  sub_1BAD14A3C(v6 + 48, v16);
  sub_1BAD14A3C(v6, v15);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  *(a2 + 40) = 0;
  *(a2 + 41) = v12;
  sub_1BAD0B40C(v16, a2 + 48);
  sub_1BAD0B40C(v15, a2 + 88);
  *(a2 + 128) = 0;

  return a1;
}

uint64_t sub_1BAD82710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BAD82758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5JetUI3PinV10PlacementsV11LayoutState33_1319FFCEC2E462B5D8258089E57329A9LLO(uint64_t a1)
{
  if ((*(a1 + 80) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1BAD8281C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD82864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_1BAD828FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 81))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 80);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAD82938(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BAD8298C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_1BAD82A08(uint64_t a1)
{
  sub_1BAD1A550(a1, &v75);
  sub_1BAD1ADC4(v85, &v58);
  v53 = MEMORY[0x1E69E7CC0];
  v1 = 0;
  if (v59)
  {
    v2 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      sub_1BAD0B40C(&v58, v60);
      sub_1BAD1A420(v85, &qword_1EBC2A2B0);
      memset(v85, 0, sizeof(v85));
      v86 = 0;
      v3 = v77;
      v4 = v78;
      v5 = v79;
      v6 = v80;
      x = v75.origin.x;
      y = v75.origin.y;
      width = v75.size.width;
      height = v75.size.height;
      v11 = CGRectGetWidth(v75);
      v12 = v4 ^ 1;
      v13 = v12 & (v11 < v3);
      v57 = v3;
      if (v13)
      {
        v14 = v3;
      }

      else
      {
        v14 = v11;
      }

      v54 = v5;
      if (v11 > v5)
      {
        v11 = v5;
      }

      if (v6)
      {
        v11 = v14;
      }

      if (v13)
      {
        v15 = v14;
      }

      else
      {
        v15 = v11;
      }

      v16 = v81;
      v17 = v82;
      v18 = v83;
      v19 = v84;
      v87.origin.x = x;
      v87.origin.y = y;
      v87.size.width = width;
      v87.size.height = height;
      v20 = CGRectGetHeight(v87);
      v21 = (v17 ^ 1) & (v20 < v16);
      if (v21)
      {
        v22 = v16;
      }

      else
      {
        v22 = v20;
      }

      if (v20 > v18)
      {
        v20 = v18;
      }

      if (v19)
      {
        v20 = v22;
      }

      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      v24 = v61;
      v25 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v26 = (*(v25 + 8))(v76, v24, v25, v15, v23);
      v28 = v27;
      v55 = v30;
      v56 = v29;
      v88.origin.x = x;
      v88.origin.y = y;
      v88.size.width = width;
      v88.size.height = height;
      MinX = CGRectGetMinX(v88);
      v89.origin.x = x;
      v89.origin.y = y;
      v89.size.width = width;
      v89.size.height = height;
      MinY = CGRectGetMinY(v89);
      if ((v12 & (v26 < v57)) != 0)
      {
        v33 = v57;
      }

      else
      {
        v33 = v26;
      }

      if (!(v12 & (v26 < v57) | v6 & 1))
      {
        v33 = v54;
        if (v26 <= v54)
        {
          v33 = v26;
        }
      }

      if (((v17 ^ 1) & (v28 < v16)) != 0)
      {
        v34 = v16;
      }

      else
      {
        v34 = v28;
      }

      if (!((v17 ^ 1) & (v28 < v16) | v19 & 1))
      {
        v34 = v18;
        if (v28 <= v18)
        {
          v34 = v28;
        }
      }

      sub_1BAD14A3C(v60, &v58);
      sub_1BAD14A3C(&v58, &v63);
      *(&v65 + 1) = floor(MinX);
      *&v66 = floor(MinY);
      *(&v66 + 1) = ceil(v33);
      *&v67 = ceil(v34);
      __swift_destroy_boxed_opaque_existential_1(&v58);
      *(&v67 + 1) = floor(v56);
      v68 = floor(v55);
      result = __swift_destroy_boxed_opaque_existential_1(v60);
      if (!*(&v64 + 1))
      {
        break;
      }

      v71 = v65;
      v72 = v66;
      v73 = v67;
      v74 = v68;
      v69 = v63;
      v70 = v64;
      if (v1)
      {
        v36 = __OFSUB__(v1--, 1);
        if (v36)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v37 = v53[3];
        if (((v37 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_57;
        }

        v38 = v37 & 0xFFFFFFFFFFFFFFFELL;
        if (v38 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v40 = swift_allocObject();
        v41 = (_swift_stdlib_malloc_size(v40) - 32) / 88;
        v40[2] = v39;
        v40[3] = 2 * v41;
        v42 = (v40 + 4);
        v43 = v53[3] >> 1;
        if (v53[2])
        {
          v44 = v53 + 4;
          if (v40 != v53 || v42 >= v44 + 88 * v43)
          {
            memmove(v40 + 4, v44, 88 * v43);
          }

          v53[2] = 0;
        }

        v2 = v42 + 88 * v43;
        v45 = (v41 & 0x7FFFFFFFFFFFFFFFLL) - v43;

        v53 = v40;
        v36 = __OFSUB__(v45, 1);
        v1 = v45 - 1;
        if (v36)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      v46 = v70;
      *v2 = v69;
      *(v2 + 16) = v46;
      v47 = v71;
      v48 = v72;
      v49 = v73;
      *(v2 + 80) = v74;
      *(v2 + 48) = v48;
      *(v2 + 64) = v49;
      *(v2 + 32) = v47;
      v2 += 88;
      sub_1BAD1ADC4(v85, &v58);
      if (!v59)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
LABEL_51:
    sub_1BAD1A420(&v58, &qword_1EBC2A2B0);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0.0;
  }

  sub_1BAD1A83C(&v75);
  sub_1BAD1A420(&v63, &qword_1EBC2AAF0);
  result = v53;
  v50 = v53[3];
  if (v50 >= 2)
  {
    v51 = v50 >> 1;
    v36 = __OFSUB__(v51, v1);
    v52 = v51 - v1;
    if (v36)
    {
LABEL_58:
      __break(1u);
    }

    else
    {
      v53[2] = v52;
    }
  }

  return result;
}

uint64_t sub_1BAD82E74(uint64_t a1)
{
  sub_1BAD1E338(a1, &v53);
  sub_1BAD1ADC4(v58, &v36);
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  if (v37)
  {
    v3 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      sub_1BAD0B40C(&v36, v38);
      sub_1BAD1A420(v58, &qword_1EBC2A2B0);
      memset(v58, 0, sizeof(v58));
      v59 = 0;
      v4 = v39;
      v5 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v6 = v55;
      v7 = v56;
      v8 = (*(v5 + 8))(v57, v4, v5, v55, v56);
      v10 = v9;
      v34 = v12;
      v35 = v11;
      v13 = v53;
      v14 = v54;
      v60.origin.x = v53;
      v60.origin.y = v54;
      v60.size.width = v6;
      v60.size.height = v7;
      v15 = CGRectGetMidX(v60) - v8 * 0.5;
      v61.origin.x = v13;
      v61.origin.y = v14;
      v61.size.width = v6;
      v61.size.height = v7;
      v16 = CGRectGetMidY(v61) - v10 * 0.5;
      sub_1BAD14A3C(v38, &v36);
      sub_1BAD14A3C(&v36, &v41);
      *(&v43 + 1) = floor(v15);
      *&v44 = floor(v16);
      *(&v44 + 1) = ceil(v8);
      *&v45 = ceil(v10);
      __swift_destroy_boxed_opaque_existential_1(&v36);
      *(&v45 + 1) = floor(v35);
      v46 = floor(v34);
      result = __swift_destroy_boxed_opaque_existential_1(v38);
      if (!*(&v42 + 1))
      {
        break;
      }

      v49 = v43;
      v50 = v44;
      v51 = v45;
      v52 = v46;
      v47 = v41;
      v48 = v42;
      if (!v2)
      {
        v18 = v1[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v21 = swift_allocObject();
        v22 = (_swift_stdlib_malloc_size(v21) - 32) / 88;
        v21[2] = v20;
        v21[3] = 2 * v22;
        v23 = (v21 + 4);
        v24 = v1[3] >> 1;
        if (v1[2])
        {
          v25 = v1 + 4;
          if (v21 != v1 || v23 >= v25 + 88 * v24)
          {
            memmove(v21 + 4, v25, 88 * v24);
          }

          v1[2] = 0;
        }

        v3 = v23 + 88 * v24;
        v2 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v1 = v21;
      }

      v26 = __OFSUB__(v2--, 1);
      if (v26)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v27 = v48;
      *v3 = v47;
      *(v3 + 16) = v27;
      v28 = v49;
      v29 = v50;
      v30 = v51;
      *(v3 + 80) = v52;
      *(v3 + 48) = v29;
      *(v3 + 64) = v30;
      *(v3 + 32) = v28;
      v3 += 88;
      sub_1BAD1ADC4(v58, &v36);
      if (!v37)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    sub_1BAD1A420(&v36, &qword_1EBC2A2B0);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0.0;
  }

  sub_1BAD1E500(&v53);
  result = sub_1BAD1A420(&v41, &qword_1EBC2AAF0);
  v31 = v1[3];
  if (v31 < 2)
  {
    return v1;
  }

  v32 = v31 >> 1;
  v26 = __OFSUB__(v32, v2);
  v33 = v32 - v2;
  if (!v26)
  {
    v1[2] = v33;
    return v1;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1BAD831CC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v41 = *(a1 + 64);
  v42 = v1;
  v43 = *(a1 + 96);
  v2 = *(a1 + 16);
  v37 = *a1;
  v38 = v2;
  v3 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v3;
  sub_1BAD47E28(a1, v35);
  DisjointStack.Placements.next()(&v23);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (*(&v24 + 1))
  {
    v6 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v29 = v23;
      v30 = v24;
      v31 = v25;
      if (!v5)
      {
        v7 = v4[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 88;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v4[3] >> 1;
        if (v4[2])
        {
          if (v10 != v4 || v12 >= &v4[11 * v13 + 4])
          {
            memmove(v10 + 4, v4 + 4, 88 * v13);
          }

          v4[2] = 0;
        }

        v6 = v12 + 88 * v13;
        v5 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v4 = v10;
      }

      v15 = __OFSUB__(v5--, 1);
      if (v15)
      {
        break;
      }

      v16 = v30;
      *v6 = v29;
      *(v6 + 16) = v16;
      v17 = v31;
      v18 = v32;
      v19 = v33;
      *(v6 + 80) = v34;
      *(v6 + 48) = v18;
      *(v6 + 64) = v19;
      *(v6 + 32) = v17;
      v6 += 88;
      DisjointStack.Placements.next()(&v23);
      if (!*(&v24 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v35[4] = v41;
  v35[5] = v42;
  v36 = v43;
  v35[0] = v37;
  v35[1] = v38;
  v35[2] = v39;
  v35[3] = v40;
  sub_1BAD47E84(v35);
  sub_1BAD1A420(&v23, &qword_1EBC2AAF0);
  v20 = v4[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v15 = __OFSUB__(v21, v5);
    v22 = v21 - v5;
    if (v15)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v4[2] = v22;
  }
}

void *sub_1BAD8343C(__int128 *a1, uint64_t (*a2)(void), void *(*a3)(__int128 *__return_ptr, uint64_t), void (*a4)(_OWORD *))
{
  v5 = a1[1];
  v42 = *a1;
  v43 = v5;
  v6 = a1[3];
  v44 = a1[2];
  v45 = v6;
  v7 = a2();
  result = a3(&v30, v7);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = 0;
  if (*(&v31 + 1))
  {
    v11 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v38 = v32;
      v39 = v33;
      v40 = v34;
      v41 = v35;
      v36 = v30;
      v37 = v31;
      if (!v10)
      {
        v12 = v9[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v15 = swift_allocObject();
        v16 = (_swift_stdlib_malloc_size(v15) - 32) / 88;
        v15[2] = v14;
        v15[3] = 2 * v16;
        v17 = (v15 + 4);
        v18 = v9[3] >> 1;
        if (v9[2])
        {
          if (v15 != v9 || v17 >= &v9[11 * v18 + 4])
          {
            memmove(v15 + 4, v9 + 4, 88 * v18);
          }

          v9[2] = 0;
        }

        v11 = v17 + 88 * v18;
        v10 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

        v9 = v15;
      }

      v20 = __OFSUB__(v10--, 1);
      if (v20)
      {
        break;
      }

      v21 = v37;
      *v11 = v36;
      *(v11 + 16) = v21;
      v22 = v38;
      v23 = v39;
      v24 = v40;
      *(v11 + 80) = v41;
      *(v11 + 48) = v23;
      *(v11 + 64) = v24;
      *(v11 + 32) = v22;
      v11 += 88;
      result = a3(&v30, result);
      if (!*(&v31 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v29[0] = v42;
  v29[1] = v43;
  v29[2] = v44;
  v29[3] = v45;
  a4(v29);
  result = sub_1BAD1A420(&v30, &qword_1EBC2AAF0);
  v25 = v9[3];
  if (v25 < 2)
  {
    return v9;
  }

  v26 = v25 >> 1;
  v20 = __OFSUB__(v26, v10);
  v27 = v26 - v10;
  if (!v20)
  {
    v9[2] = v27;
    return v9;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BAD83668(uint64_t a1)
{
  sub_1BAD48204(a1, &v29);
  v1 = *(&v30 + 1);
  v2 = v31;
  __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
  (*(v2 + 24))(v1, v2);
  sub_1BAD48260(&v29);
  result = sub_1BAD9D928();
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (*(&v24 + 1))
  {
    v6 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v32 = v26;
      v33 = v27;
      v34 = v28;
      v29 = v23;
      v30 = v24;
      v31 = v25;
      if (!v5)
      {
        v7 = v4[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 88;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v4[3] >> 1;
        if (v4[2])
        {
          if (v10 != v4 || v12 >= &v4[11 * v13 + 4])
          {
            memmove(v10 + 4, v4 + 4, 88 * v13);
          }

          v4[2] = 0;
        }

        v6 = v12 + 88 * v13;
        v5 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v4 = v10;
      }

      v15 = __OFSUB__(v5--, 1);
      if (v15)
      {
        break;
      }

      v16 = v30;
      *v6 = v29;
      *(v6 + 16) = v16;
      v17 = v31;
      v18 = v32;
      v19 = v33;
      *(v6 + 80) = v34;
      *(v6 + 48) = v18;
      *(v6 + 64) = v19;
      *(v6 + 32) = v17;
      v6 += 88;
      result = sub_1BAD9D928();
      if (!*(&v24 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  result = sub_1BAD1A420(&v23, &qword_1EBC2AAF0);
  v20 = v4[3];
  if (v20 < 2)
  {
    return v4;
  }

  v21 = v20 >> 1;
  v15 = __OFSUB__(v21, v5);
  v22 = v21 - v5;
  if (!v15)
  {
    v4[2] = v22;
    return v4;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BAD83888(uint64_t a1)
{
  sub_1BAD47D1C(a1, v33);
  result = Pin.Placements.next()(&v21);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (*(&v22 + 1))
  {
    v4 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v30 = v24;
      v31 = v25;
      v32 = v26;
      v27 = v21;
      v28 = v22;
      v29 = v23;
      if (!v3)
      {
        v5 = v2[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v8 = swift_allocObject();
        v9 = (_swift_stdlib_malloc_size(v8) - 32) / 88;
        v8[2] = v7;
        v8[3] = 2 * v9;
        v10 = (v8 + 4);
        v11 = v2[3] >> 1;
        if (v2[2])
        {
          if (v8 != v2 || v10 >= &v2[11 * v11 + 4])
          {
            memmove(v8 + 4, v2 + 4, 88 * v11);
          }

          v2[2] = 0;
        }

        v4 = v10 + 88 * v11;
        v3 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v11;

        v2 = v8;
      }

      v13 = __OFSUB__(v3--, 1);
      if (v13)
      {
        break;
      }

      v14 = v28;
      *v4 = v27;
      *(v4 + 16) = v14;
      v15 = v29;
      v16 = v30;
      v17 = v31;
      *(v4 + 80) = v32;
      *(v4 + 48) = v16;
      *(v4 + 64) = v17;
      *(v4 + 32) = v15;
      v4 += 88;
      result = Pin.Placements.next()(&v21);
      if (!*(&v22 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  sub_1BAD47D78(v33);
  result = sub_1BAD1A420(&v21, &qword_1EBC2AAF0);
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v13 = __OFSUB__(v19, v3);
  v20 = v19 - v3;
  if (!v13)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BAD83A78(uint64_t a1)
{
  sub_1BAD47F90(a1, v33);
  result = Resize.Placements.next()(&v21);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (*(&v22 + 1))
  {
    v4 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v30 = v24;
      v31 = v25;
      v32 = v26;
      v27 = v21;
      v28 = v22;
      v29 = v23;
      if (!v3)
      {
        v5 = v2[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v6 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v6;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v8 = swift_allocObject();
        v9 = (_swift_stdlib_malloc_size(v8) - 32) / 88;
        v8[2] = v7;
        v8[3] = 2 * v9;
        v10 = (v8 + 4);
        v11 = v2[3] >> 1;
        if (v2[2])
        {
          if (v8 != v2 || v10 >= &v2[11 * v11 + 4])
          {
            memmove(v8 + 4, v2 + 4, 88 * v11);
          }

          v2[2] = 0;
        }

        v4 = v10 + 88 * v11;
        v3 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v11;

        v2 = v8;
      }

      v13 = __OFSUB__(v3--, 1);
      if (v13)
      {
        break;
      }

      v14 = v28;
      *v4 = v27;
      *(v4 + 16) = v14;
      v15 = v29;
      v16 = v30;
      v17 = v31;
      *(v4 + 80) = v32;
      *(v4 + 48) = v16;
      *(v4 + 64) = v17;
      *(v4 + 32) = v15;
      v4 += 88;
      result = Resize.Placements.next()(&v21);
      if (!*(&v22 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  sub_1BAD47FEC(v33);
  result = sub_1BAD1A420(&v21, &qword_1EBC2AAF0);
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v13 = __OFSUB__(v19, v3);
  v20 = v19 - v3;
  if (!v13)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1BAD83C68(uint64_t a1)
{
  v1 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v1;
  v42 = *(a1 + 96);
  v2 = *(a1 + 16);
  v36 = *a1;
  v37 = v2;
  v3 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v3;
  sub_1BAD84254(a1, &v30);
  DisjointStack.Placements.next()(&v24);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0;
  if (*(&v25 + 1))
  {
    v6 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      v33 = v27;
      v34 = v28;
      v35 = v29;
      v30 = v24;
      v31 = v25;
      v32 = v26;
      if (!v5)
      {
        v7 = v4[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 88;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v4[3] >> 1;
        if (v4[2])
        {
          if (v10 != v4 || v12 >= &v4[11 * v13 + 4])
          {
            memmove(v10 + 4, v4 + 4, 88 * v13);
          }

          v4[2] = 0;
        }

        v6 = v12 + 88 * v13;
        v5 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v4 = v10;
      }

      v15 = __OFSUB__(v5--, 1);
      if (v15)
      {
        break;
      }

      v16 = v31;
      *v6 = v30;
      *(v6 + 16) = v16;
      v17 = v32;
      v18 = v33;
      v19 = v34;
      *(v6 + 80) = v35;
      *(v6 + 48) = v18;
      *(v6 + 64) = v19;
      *(v6 + 32) = v17;
      v6 += 88;
      DisjointStack.Placements.next()(&v24);
      if (!*(&v25 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v20 = v38;

  sub_1BAD1A420(&v24, &qword_1EBC2AAF0);
  v21 = v4[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v15 = __OFSUB__(v22, v5);
    v23 = v22 - v5;
    if (v15)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v4[2] = v23;
  }
}

uint64_t sub_1BAD83E88(uint64_t a1)
{
  sub_1BAD40588(a1, &v66);
  sub_1BAD1ADC4(v68, &v49);
  v1 = MEMORY[0x1E69E7CC0];
  v2 = 0;
  if (v50)
  {
    v3 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      sub_1BAD0B40C(&v49, v51);
      sub_1BAD1A420(v68, &qword_1EBC2A2B0);
      memset(v68, 0, sizeof(v68));
      v69 = 0;
      v4 = v67;
      v5 = sub_1BAD4029C(v67);
      v47 = v6;
      v48 = v7;
      v8 = v7;
      x = v66.origin.x;
      y = v66.origin.y;
      width = v66.size.width;
      height = v66.size.height;
      v14 = CGRectGetWidth(v66) - (v6 + v13);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      v15 = CGRectGetHeight(v70) - (v5 + v8);
      v16 = v14 < 0.0 ? 0.0 : v14;
      v17 = v15 < 0.0 ? 0.0 : v15;
      v18 = v52;
      v19 = v53;
      __swift_project_boxed_opaque_existential_1(v51, v52);
      v20 = (*(v19 + 8))(v4, v18, v19, v16, v17);
      v45 = v21;
      v46 = v20;
      v23 = v22;
      v25 = v24;
      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = height;
      v26 = v47 + CGRectGetMinX(v71);
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = width;
      v72.size.height = height;
      v27 = v5 + CGRectGetMinY(v72);
      sub_1BAD14A3C(v51, &v49);
      sub_1BAD14A3C(&v49, &v54);
      *(&v56 + 1) = floor(v26);
      *&v57 = floor(v27);
      *(&v57 + 1) = ceil(v46);
      *&v58 = ceil(v45);
      __swift_destroy_boxed_opaque_existential_1(&v49);
      *(&v58 + 1) = floor(v5 + v23);
      v59 = floor(v48 + v25);
      result = __swift_destroy_boxed_opaque_existential_1(v51);
      if (!*(&v55 + 1))
      {
        break;
      }

      v62 = v56;
      v63 = v57;
      v64 = v58;
      v65 = v59;
      v60 = v54;
      v61 = v55;
      if (!v2)
      {
        v29 = v1[3];
        if (((v29 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
        if (v30 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v30;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B360);
        v32 = swift_allocObject();
        v33 = (_swift_stdlib_malloc_size(v32) - 32) / 88;
        v32[2] = v31;
        v32[3] = 2 * v33;
        v34 = (v32 + 4);
        v35 = v1[3] >> 1;
        if (v1[2])
        {
          v36 = v1 + 4;
          if (v32 != v1 || v34 >= v36 + 88 * v35)
          {
            memmove(v32 + 4, v36, 88 * v35);
          }

          v1[2] = 0;
        }

        v3 = v34 + 88 * v35;
        v2 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v1 = v32;
      }

      v37 = __OFSUB__(v2--, 1);
      if (v37)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v38 = v61;
      *v3 = v60;
      *(v3 + 16) = v38;
      v39 = v62;
      v40 = v63;
      v41 = v64;
      *(v3 + 80) = v65;
      *(v3 + 48) = v40;
      *(v3 + 64) = v41;
      *(v3 + 32) = v39;
      v3 += 88;
      sub_1BAD1ADC4(v68, &v49);
      if (!v50)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_23:
    sub_1BAD1A420(&v49, &qword_1EBC2A2B0);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0.0;
  }

  sub_1BAD407E4(&v66);
  result = sub_1BAD1A420(&v54, &qword_1EBC2AAF0);
  v42 = v1[3];
  if (v42 < 2)
  {
    return v1;
  }

  v43 = v42 >> 1;
  v37 = __OFSUB__(v43, v2);
  v44 = v43 - v2;
  if (!v37)
  {
    v1[2] = v44;
    return v1;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t DisjointStack.insert(_:at:with:)(void *a1, int64_t a2, char a3, void (*a4)(_BYTE *))
{
  v7 = a1[3];
  v8 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  Measurable.placeable.getter(v7, v8, v10);
  DisjointStack.insert(_:at:with:)(v10, a2, a3 & 1, a4);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t DisjointStack.inserting(_:at:with:)@<X0>(void *a1@<X0>, int64_t a2@<X1>, char a3@<W2>, void (*a4)(_BYTE *)@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = a1[3];
  v12 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  Measurable.placeable.getter(v11, v12, v14);
  sub_1BAD47DCC(v6, a5);
  DisjointStack.insert(_:at:with:)(v14, a2, a3 & 1, a4);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

id sub_1BAD84408()
{
  v1 = *v0;
  [*(v0 + 16) convertRect:*(v0 + 8) toCoordinateSpace:?];

  return [v1 setFrame_];
}

void (*sub_1BAD84454(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v4[4] = *v1;
  v4[5] = v6;
  v7 = *(v1 + 16);
  v4[6] = v7;
  [v5 frame];
  [v7 convertRect:v6 fromCoordinateSpace:?];
  *v4 = v8;
  v4[1] = v9;
  v4[2] = v10;
  v4[3] = v11;
  return sub_1BAD844F8;
}

void sub_1BAD844F8(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  [*(*a1 + 6) convertRect:*(*a1 + 5) toCoordinateSpace:{*v1, v1[1], v1[2], v1[3]}];
  [v2 setFrame_];

  free(v1);
}

id sub_1BAD84564(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  [v4 *a3];

  return [v6 convertRect:v5 fromCoordinateSpace:?];
}

id UIView.withCoordinateSpace(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  result = [v3 superview];
  v7 = result;
  if (result)
  {
    v8 = v3;
    result = swift_unknownObjectRetain();
    v9 = &off_1F38ED6E8;
    v10 = &type metadata for UIViewCoordinateSpaceAdapter;
  }

  else
  {
    v8 = 0;
    a1 = 0;
    v10 = 0;
    v9 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  a2[2] = a1;
  a2[3] = v10;
  a2[4] = v9;
  return result;
}

id sub_1BAD8484C(uint64_t *a1, uint64_t (*a2)(void, unint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_1BAD13DE8();
    v8 = v2;
    v9 = a2(MEMORY[0x1E69E6158], v7);
    v11 = v10;
    swift_beginAccess();
    v12 = byte_1EBC2B3D0;
    swift_beginAccess();
    v13 = byte_1EBC2B3D1;
    v14 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v15 = sub_1BAD049A8(v9, v11, 0, v12, v13);
    v16 = *(v8 + v3);
    *(v8 + v3) = v15;
    v5 = v15;

    v4 = 0;
  }

  v17 = v4;
  return v5;
}

id sub_1BAD849E8()
{
  v1 = OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  v2 = *(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace);
  }

  else
  {
    sub_1BAD13DE8();
    v4 = v0;
    v5 = sub_1BAD9D618();
    v7 = v6;
    swift_beginAccess();
    v8 = byte_1EBC2B3D0;
    swift_beginAccess();
    v9 = byte_1EBC2B3D1;
    v10 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v11 = sub_1BAD049A8(v5, v7, 0, v8, v9);
    v12 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_1BAD84BC4()
{
  v1 = sub_1BAD9C248();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed;
  v6 = *(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR___JULanguageAwareString_string + 8);
    v21 = *(v0 + OBJC_IVAR___JULanguageAwareString_string);
    v22 = v8;

    sub_1BAD9C208();
    sub_1BAD13DE8();
    v9 = v0;
    v10 = sub_1BAD9D608();
    v12 = v11;
    (*(v2 + 8))(v4, v1);

    swift_beginAccess();
    v13 = byte_1EBC2B3D0;
    swift_beginAccess();
    v14 = byte_1EBC2B3D1;
    v15 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
    v16 = sub_1BAD049A8(v10, v12, 0, v13, v14);
    v17 = *(v9 + v5);
    *(v9 + v5) = v16;
    v7 = v16;

    v6 = 0;
  }

  v18 = v6;
  return v7;
}

id sub_1BAD84E4C()
{
  sub_1BAD053C8(0, &qword_1EBC2B480);

  v0 = sub_1BAD9D168();

  return v0;
}

uint64_t sub_1BAD84F2C()
{
  v1 = v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange;
  if (*(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange + 16) != 1)
  {
    return *v1;
  }

  v2 = sub_1BAD85048();
  result = 0;
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_1BAD84FBC()
{
  LODWORD(v1) = *(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___isEmpty);
  if (v1 == 2)
  {
    v2 = *(v0 + OBJC_IVAR___JULanguageAwareString_string + 8);
    if ((v2 & 0x2000000000000000) != 0)
    {
      v1 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v1 = *(v0 + OBJC_IVAR___JULanguageAwareString_string) & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v1) = v1 == 0;
    *(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___isEmpty) = v1;
  }

  return v1 & 1;
}

unint64_t sub_1BAD850A4()
{
  v1 = (v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count);
  if (*(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___JULanguageAwareString_string);
  v3 = *(v0 + OBJC_IVAR___JULanguageAwareString_string + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(v0 + OBJC_IVAR___JULanguageAwareString_string);
  }

  v5 = 7;
  if (((v3 >> 60) & ((v2 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  result = sub_1BAD86EA4(0xFuLL, v5 | (v4 << 16), v2, v3);
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_1BAD85198(void *a1, uint64_t (*a2)(void, void))
{
  v3 = (v2 + *a1);
  if (v3[8] != 1)
  {
    return *v3;
  }

  result = a2(*(v2 + OBJC_IVAR___JULanguageAwareString_string), *(v2 + OBJC_IVAR___JULanguageAwareString_string + 8));
  *v3 = result;
  v3[8] = 0;
  return result;
}

uint64_t static LanguageAwareString.alwaysGenerateAttributedString.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBC2B3D0 = a1;
  return result;
}

uint64_t static LanguageAwareString.keepStatisticsOnLanguageComponents.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBC2B3D1 = a1;
  return result;
}

uint64_t static LanguageAwareString.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_1EBC2B3D8 = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BAD85610(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_1EBC2B3D8 = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_1BAD85674()
{
  swift_beginAccess();
  v0 = byte_1EBC2B3D0;
  swift_beginAccess();
  v1 = byte_1EBC2B3D1;
  v2 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  result = sub_1BAD049A8(0, 0xE000000000000000, 0, v0, v1);
  qword_1EBC2B3E0 = result;
  return result;
}

id static LanguageAwareString.empty.getter()
{
  if (qword_1EBC29C70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC2B3E0;

  return v1;
}

id LanguageAwareString.__allocating_init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BAD87620(a1, a2, a3);

  return v8;
}

id LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(void *a1, void *a2, char a3)
{
  v5 = sub_1BAD87620(a1, a2, a3);

  return v5;
}

id LanguageAwareString.__allocating_init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BAD87A3C(a1, a2, a3, a4, a5);

  return v12;
}

id LanguageAwareString.init(_:attributes:baseParagraphStyle:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = sub_1BAD87A3C(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t LanguageAwareString.init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v9 = (*(ObjectType + 504))(a1, a2, a3, a4 & 1, byte_1EBC2B3D1);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

id LanguageAwareString.__allocating_init(_:attributes:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BAD87EDC(a1, a2, a3);

  return v8;
}

id LanguageAwareString.init(_:attributes:keepStatisticsOnLanguageComponents:)(void *a1, uint64_t a2, char a3)
{
  v4 = sub_1BAD87EDC(a1, a2, a3);

  return v4;
}

char *LanguageAwareString.init(from:)(void *a1)
{
  v3 = OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString;
  *(v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString) = 0;
  v4 = OBJC_IVAR___JULanguageAwareString_cachedTextStorage;
  *(v1 + OBJC_IVAR___JULanguageAwareString_cachedTextStorage) = 0;
  v5 = OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase;
  *(v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase) = 0;
  v6 = OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase;
  *(v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase) = 0;
  v7 = OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace;
  *(v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace) = 0;
  v66 = OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed;
  *(v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed) = 0;
  v8 = v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___isEmpty) = 2;
  v9 = v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection;
  *v12 = 0;
  *(v12 + 8) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD9DB98();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v13 = sub_1BAD9DAA8();
    v16 = v15;
    v17 = v13;
    __swift_destroy_boxed_opaque_existential_1(v71);
    swift_beginAccess();
    v18 = qword_1EBC2B3D8;
    if (qword_1EBC2B3D8)
    {
      swift_unknownObjectRetain();
      v19 = sub_1BAD9CF38();

      v20 = [v18 preprocessForLanguageAwarenessString_];

      v17 = sub_1BAD9CF68();
      v16 = v21;
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (byte_1EBC2B3D0 == 1)
    {
      v22 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v23 = v16;
      v24 = sub_1BAD9CF38();
      v25 = [v22 initWithString_];

      v26 = 0;
      v27 = v25;
    }

    else
    {
      v23 = v16;
      v25 = sub_1BAD9CF38();
      v27 = 0;
      v26 = v25;
    }

    v28 = v25;
    swift_beginAccess();
    v29 = byte_1EBC2B3D1;
    v30 = v27;
    sub_1BAD02E70(v27, v26, 0, v29, v71);
    v64 = v71[0];
    v65 = v71[1];
    v31 = v71[2];
    v32 = v72;
    v63 = v73;
    v33 = v74;

    v67 = v31;
    if (v27)
    {
      if (v33)
      {
        v61 = v26;
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = 0;
          v26 = (v33 + 32);
          while (v35 < *(v33 + 16))
          {
            v36 = v35 + 1;
            v71[0] = *(v26 + v35);
            sub_1BAD25220(v71, v30, v31);
            v35 = v36;
            if (v34 == v36)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_45;
        }

LABEL_16:

        v26 = v61;
      }

      else
      {
      }

      [v30 copy];

      sub_1BAD9D628();
      swift_unknownObjectRelease();
      sub_1BAD053C8(0, &qword_1EDBA5BC0);
      if (swift_dynamicCast())
      {
        v48 = v75;
      }

      else
      {
        v48 = 0;
      }

      if (v63)
      {

        *(v69 + OBJC_IVAR___JULanguageAwareString_baseAttributedString) = v48;
        v49 = qword_1EBC29A18;
        v23 = v48;
        if (v49 == -1)
        {
LABEL_32:
          v47 = v26;
          v26 = v30;
          [v30 performSelector_];
          v30 = [v30 string];
LABEL_33:
          v50 = sub_1BAD9CF68();
          v52 = v51;
LABEL_43:

          v58 = (v69 + OBJC_IVAR___JULanguageAwareString_string);
          *v58 = v50;
          v58[1] = v52;
          *(v69 + OBJC_IVAR___JULanguageAwareString_paragraphs) = v67;
          *(v69 + OBJC_IVAR___JULanguageAwareString_numbers) = v64;
          *(v69 + OBJC_IVAR___JULanguageAwareString_words) = v65;
          *(v69 + OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections) = v32;
          v70.receiver = v69;
          v70.super_class = type metadata accessor for LanguageAwareString();
          v4 = objc_msgSendSuper2(&v70, sel_init);
          __swift_destroy_boxed_opaque_existential_1(a1);
          return v4;
        }

LABEL_45:
        swift_once();
        goto LABEL_32;
      }

      *(v69 + OBJC_IVAR___JULanguageAwareString_baseAttributedString) = v48;
      if (v48)
      {
        v60 = v32;
        v53 = v48;

        v23 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        if (qword_1EBC29A18 != -1)
        {
          swift_once();
        }

        [v23 performSelector_];
        v47 = [v23 string];
        v50 = sub_1BAD9CF68();
        v52 = v54;

        v32 = v60;
        goto LABEL_43;
      }

      v55 = v32;
    }

    else
    {
      if (v33)
      {
        v59 = v32;
        v62 = v26;
        v37 = sub_1BAD9CF38();

        [v37 mutableCopy];

        sub_1BAD9D628();
        swift_unknownObjectRelease();
        sub_1BAD053C8(0, &qword_1EBC2B478);
        swift_dynamicCast();
        v38 = v75;
        v39 = *(v33 + 16);
        if (v39)
        {
          v40 = (v33 + 32);
          do
          {
            v41 = *v40++;
            v42 = sub_1BAD9CF38();
            [v38 replaceCharactersInRange:v41 withString:{1, v42}];

            --v39;
          }

          while (v39);
        }

        [v38 copy];
        sub_1BAD9D628();
        swift_unknownObjectRelease();
        sub_1BAD053C8(0, &qword_1EBC2A438);
        swift_dynamicCast();
        v43 = v75;
        v17 = sub_1BAD9CF68();
        v23 = v44;

        v32 = v59;
        v31 = v67;
        v26 = v62;
      }

      if (v63)
      {
        v45 = sub_1BAD072B8(0, v31, v17, v23);

        *(v69 + OBJC_IVAR___JULanguageAwareString_baseAttributedString) = v45;
        v46 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v30 = v45;
        v23 = [v46 initWithAttributedString_];
        if (qword_1EBC29A18 != -1)
        {
          swift_once();
        }

        [v23 performSelector_];
        v47 = [v23 string];
        goto LABEL_33;
      }

      v55 = v32;
      *(v69 + OBJC_IVAR___JULanguageAwareString_baseAttributedString) = 0;
    }

    v56 = sub_1BAD072B8(0, v31, v17, v23);

    v23 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    if (qword_1EBC29A18 != -1)
    {
      swift_once();
    }

    [v23 performSelector_];
    v47 = [v23 string];
    v50 = sub_1BAD9CF68();
    v52 = v57;

    v32 = v55;
    goto LABEL_43;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  type metadata accessor for LanguageAwareString();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1BAD866C0(uint64_t a1)
{
  v2 = sub_1BAD071FC();
  v3 = NSAttributedString.baseWritingDirection(forCharacterAt:)(a1);
  v5 = v4;

  if (v5)
  {
    return -1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BAD8678C()
{
  v1 = (v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection);
  if (*(v0 + OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections);
  if (*(v2 + OBJC_IVAR___JUWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    result = *(v2 + OBJC_IVAR___JUWritingDirectionsCounts_isRTLEnough);
  }

  else
  {
    result = -1;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1BAD8680C(uint64_t a1, id a2, id a3, char a4, double a5)
{
  v6 = *(v5 + OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections);
  if (*(v6 + OBJC_IVAR___JUWritingDirectionsCounts_hasStronglyTypedCounts) == 1)
  {
    v7 = *(v6 + OBJC_IVAR___JUWritingDirectionsCounts_leftToRight);
    v8 = *(v6 + OBJC_IVAR___JUWritingDirectionsCounts_rightToLeft);
    if (v7)
    {
      if (!v8)
      {
        return;
      }
    }

    else if (v8)
    {
      return;
    }

    if ((a4 & 1) == 0 || (v13 = *(v5 + OBJC_IVAR___JULanguageAwareString_cachedTextStorage)) == 0)
    {
      v33 = sub_1BAD071FC();
      v34 = [objc_allocWithZone(MEMORY[0x1E69DB850]) initWithAttributedString_];

      v35 = objc_allocWithZone(MEMORY[0x1E69DB7C0]);
      v14 = v34;
      v15 = [v35 init];
      [v14 addLayoutManager_];

      v23 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
      [v23 setLineFragmentPadding_];
      [v23 setMaximumNumberOfLines_];
      [v23 setLineBreakMode_];
      [v15 addTextContainer_];

      if (a4)
      {
        v36 = *(v5 + OBJC_IVAR___JULanguageAwareString_cachedTextStorage);
        *(v5 + OBJC_IVAR___JULanguageAwareString_cachedTextStorage) = v14;
        v14 = v14;
      }

      else
      {
        v37 = *(v5 + OBJC_IVAR___JULanguageAwareString_cachedTextStorage);
        *(v5 + OBJC_IVAR___JULanguageAwareString_cachedTextStorage) = 0;
      }

      goto LABEL_35;
    }

    v14 = v13;
    v15 = [v14 layoutManagers];
    sub_1BAD053C8(0, &qword_1EBC2B1E8);
    v16 = sub_1BAD9D178();
    v17 = v16;
    if (v16 >> 62)
    {
      if (sub_1BAD9D8D8())
      {
LABEL_11:

        if ((v17 & 0xC000000000000001) == 0)
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v17 + 32);
LABEL_14:
          v15 = v18;

          v19 = [v15 textContainers];
          sub_1BAD053C8(0, &qword_1EBC2B1F0);
          v20 = sub_1BAD9D178();
          v17 = v20;
          if (v20 >> 62)
          {
            if (sub_1BAD9D8D8())
            {
LABEL_16:

              if ((v17 & 0xC000000000000001) == 0)
              {
                if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v21 = *(v17 + 32);
LABEL_19:
                v22 = v21;

                v23 = v22;
                [v23 size];
                v25 = v24;
                v27 = v26;
                [v23 lineFragmentPadding];
                v29 = v28;
                v30 = [v23 maximumNumberOfLines];
                v31 = [v23 lineBreakMode];

                if (v25 == a5 && v27 == 1.79769313e308)
                {
                  if (v29 == 0.0)
                  {
                    if (v30 == a2)
                    {
                      if (v31 == a3)
                      {
                        goto LABEL_35;
                      }

                      goto LABEL_33;
                    }

LABEL_31:
                    [v23 setMaximumNumberOfLines_];
LABEL_32:
                    if (v31 == a3)
                    {
LABEL_34:
                      v38 = [v14 juFullRange];
                      [v15 invalidateLayoutForCharacterRange:v38 actualCharacterRange:{v39, 0}];
LABEL_35:
                      [v14 juWritingDirectionOfLine:a1 usingLayoutManager:v15 textContainer:v23];

                      return;
                    }

LABEL_33:
                    [v23 setLineBreakMode_];
                    goto LABEL_34;
                  }
                }

                else
                {
                  [v23 setSize_];
                  if (v29 == 0.0)
                  {
                    goto LABEL_30;
                  }
                }

                [v23 setLineFragmentPadding_];
LABEL_30:
                if (v30 == a2)
                {
                  goto LABEL_32;
                }

                goto LABEL_31;
              }

LABEL_43:
              v21 = MEMORY[0x1BFB02E80](0, v17);
              goto LABEL_19;
            }
          }

          else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

LABEL_39:
        v18 = MEMORY[0x1BFB02E80](0, v17);
        goto LABEL_14;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_39;
  }
}

id LanguageAwareString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguageAwareString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAD86E44@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 528))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BAD86E80()
{
  result = sub_1BAD052E8(1);
  qword_1EBC35800 = result;
  return result;
}

unint64_t sub_1BAD86EA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_1BAD870B4(a1, a3, a4);
  v8 = sub_1BAD870B4(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1BAD9CFE8();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_1BAD9D848();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1BAD9CFF8();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_1BAD9D848();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_1BAD870B4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BAD8714C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BAD5C558(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1BAD8714C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1BAD5C468(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

id sub_1BAD871C0(void *a1, int a2)
{
  *&v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString] = 0;
  v5 = OBJC_IVAR___JULanguageAwareString_cachedTextStorage;
  *&v2[OBJC_IVAR___JULanguageAwareString_cachedTextStorage] = 0;
  *&v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed] = 0;
  v6 = &v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___isEmpty] = 2;
  v7 = &v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v2[OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v10 = 0;
  v10[8] = 1;
  v11 = a1;
  sub_1BAD02E70(a1, 0, 0, a2, v31);
  v28 = v31[0];
  v29 = v31[1];
  v12 = v31[2];
  v13 = v31[3];
  v14 = v31[5];

  if (v14)
  {
    v27 = v5;
    v5 = v13;
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      while (v16 < *(v14 + 16))
      {
        v13 = v16 + 1;
        v31[0] = *(v14 + 32 + 8 * v16);
        sub_1BAD25220(v31, v11, v12);
        v16 = v13;
        if (v15 == v13)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_10;
    }

LABEL_6:

    v13 = v5;
    v5 = v27;
  }

  *&v2[OBJC_IVAR___JULanguageAwareString_baseAttributedString] = a1;
  v18 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v17 = v11;
  v11 = [v18 initWithAttributedString_];
  if (qword_1EBC29A18 != -1)
  {
LABEL_10:
    swift_once();
  }

  [v11 performSelector_];
  v19 = [v11 string];
  v20 = sub_1BAD9CF68();
  v22 = v21;

  v23 = &v2[OBJC_IVAR___JULanguageAwareString_string];
  *v23 = v20;
  v23[1] = v22;
  v24 = *&v2[v5];
  *&v2[v5] = a1;
  v25 = v17;

  *&v2[OBJC_IVAR___JULanguageAwareString_paragraphs] = v12;
  *&v2[OBJC_IVAR___JULanguageAwareString_numbers] = v28;
  *&v2[OBJC_IVAR___JULanguageAwareString_words] = v29;
  *&v2[OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections] = v13;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t sub_1BAD87490(uint64_t a1)
{
  switch(a1)
  {
    case -1:
      if (qword_1EBC29A30 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EBC357B0;
      return *v1;
    case 1:
      if (qword_1EBC29C78 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EBC35800;
      return *v1;
    case 0:
      if (qword_1EBC29A58 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EBC357B8;
      return *v1;
  }

  sub_1BAD9D7E8();

  v3 = sub_1BAD9DA48();
  MEMORY[0x1BFB026B0](v3);

  result = sub_1BAD9D8B8();
  __break(1u);
  return result;
}

id sub_1BAD87620(void *a1, void *a2, char a3)
{
  *&v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString] = 0;
  *&v3[OBJC_IVAR___JULanguageAwareString_cachedTextStorage] = 0;
  *&v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed] = 0;
  v7 = &v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___isEmpty] = 2;
  v8 = &v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v3[OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v11 = 0;
  v11[8] = 1;
  swift_beginAccess();
  v12 = qword_1EBC2B3D8;
  if (qword_1EBC2B3D8 && ([qword_1EBC2B3D8 respondsToSelector_] & 1) != 0)
  {
    v13 = [v12 preprocessForLanguageAwarenessAttributedString_];
  }

  else
  {
    v13 = a1;
  }

  v14 = v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v16 = v15;
  sub_1BAD02E70(v15, 0, a2, a3 & 1, v41);
  v38 = v41[0];
  v39 = v41[1];
  v17 = v41[2];
  v18 = v41[3];
  v19 = v42;
  v20 = v43;

  if (v20)
  {
    v37 = v14;
    v14 = v18;
    v18 = v20[2];
    if (v18)
    {
      v21 = 0;
      v22 = 0;
      while (v21 < v20[2])
      {
        v23 = v21 + 1;
        v41[0] = v20[v21 + 4];
        sub_1BAD25220(v41, v16, v17);
        v21 = v23;
        if (v18 == v23)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_10:

    v18 = v14;
    v14 = v37;
  }

  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v22 = v16;
  v25 = [v24 initWithAttributedString_];
  *&v3[OBJC_IVAR___JULanguageAwareString_baseAttributedString] = v25;
  if (v19)
  {
    v26 = qword_1EBC29A18;
    v20 = v25;
    if (v26 == -1)
    {
LABEL_13:
      v27 = v22;
      [v22 performSelector_];
      v28 = [v22 string];

      v29 = sub_1BAD9CF68();
      v31 = v30;
      v22 = v28;
      goto LABEL_17;
    }

LABEL_19:
    swift_once();
    goto LABEL_13;
  }

  v32 = v25;

  v27 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  if (qword_1EBC29A18 != -1)
  {
    swift_once();
  }

  [v27 performSelector_];
  v33 = [v27 string];
  v29 = sub_1BAD9CF68();
  v31 = v34;

  v20 = v14;
  v14 = v33;
LABEL_17:

  v35 = &v3[OBJC_IVAR___JULanguageAwareString_string];
  *v35 = v29;
  v35[1] = v31;
  *&v3[OBJC_IVAR___JULanguageAwareString_paragraphs] = v17;
  *&v3[OBJC_IVAR___JULanguageAwareString_numbers] = v38;
  *&v3[OBJC_IVAR___JULanguageAwareString_words] = v39;
  *&v3[OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections] = v18;
  v40.receiver = v3;
  v40.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v40, sel_init);
}

id sub_1BAD87A3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString_cachedTextStorage] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed] = 0;
  v9 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___isEmpty] = 2;
  v10 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v5[OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v13 = 0;
  v13[8] = 1;
  swift_beginAccess();
  v14 = qword_1EBC2B3D8;
  if (qword_1EBC2B3D8)
  {
    swift_unknownObjectRetain();
    v15 = sub_1BAD9CF38();

    v16 = [v14 preprocessForLanguageAwarenessString_];

    sub_1BAD9CF68();
    swift_unknownObjectRelease();
  }

  v17 = sub_1BAD9CF38();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1BAD30308();
    v18 = sub_1BAD9CE88();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString:v17 attributes:v18];

  v20 = v19;
  sub_1BAD02E70(v19, 0, a4, a5 & 1, v45);
  v21 = v45[1];
  v43 = v45[0];
  v22 = v45[2];
  v23 = v45[3];
  v24 = v46;
  v25 = v47;

  if (v25)
  {
    v42 = v21;
    v26 = v23;
    v27 = *(v25 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v21 = v25 + 32;
      while (v28 < *(v25 + 16))
      {
        v23 = v28 + 1;
        v45[0] = *(v21 + 8 * v28);
        sub_1BAD25220(v45, v20, v22);
        v28 = v23;
        if (v27 == v23)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_11:

    v23 = v26;
    v21 = v42;
  }

  v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v29 = v20;
  v31 = [v30 initWithAttributedString_];
  *&v5[OBJC_IVAR___JULanguageAwareString_baseAttributedString] = v31;
  if (v24)
  {
    v32 = qword_1EBC29A18;
    v20 = v31;
    if (v32 == -1)
    {
LABEL_14:
      v33 = v29;
      [v29 performSelector_];
      v34 = [v29 string];

      v35 = sub_1BAD9CF68();
      v37 = v36;
      v29 = v34;
      goto LABEL_18;
    }

LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  v38 = v31;

  v20 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  if (qword_1EBC29A18 != -1)
  {
    swift_once();
  }

  [v20 performSelector_];
  v33 = [v20 string];
  v35 = sub_1BAD9CF68();
  v37 = v39;

LABEL_18:
  v40 = &v5[OBJC_IVAR___JULanguageAwareString_string];
  *v40 = v35;
  v40[1] = v37;
  *&v5[OBJC_IVAR___JULanguageAwareString_paragraphs] = v22;
  *&v5[OBJC_IVAR___JULanguageAwareString_numbers] = v43;
  *&v5[OBJC_IVAR___JULanguageAwareString_words] = v21;
  *&v5[OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections] = v23;
  v44.receiver = v5;
  v44.super_class = type metadata accessor for LanguageAwareString();
  return objc_msgSendSuper2(&v44, sel_init);
}

id sub_1BAD87EDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___attributedString] = 0;
  *&v4[OBJC_IVAR___JULanguageAwareString_cachedTextStorage] = 0;
  *&v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedLowercase] = 0;
  *&v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___localizedUppercase] = 0;
  *&v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___newlinesCollapsedToSpace] = 0;
  *&v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___trimmed] = 0;
  v8 = &v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___juFullRange];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___isEmpty] = 2;
  v9 = &v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf16Count];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___utf32Count];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___characterCount];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v4[OBJC_IVAR___JULanguageAwareString____lazy_storage___thresholdBaseWritingDirection];
  *v12 = 0;
  v12[8] = 1;
  v13 = sub_1BAD071FC();
  v14 = v13;
  if (a2)
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    type metadata accessor for Key(0);
    sub_1BAD30308();
    v16 = sub_1BAD9CE88();

    v17 = [v14 juFullRange];
    [v15 addAttributes:v16 range:{v17, v18}];

    v19 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  }

  else
  {
    v19 = v13;
  }

  *&v4[OBJC_IVAR___JULanguageAwareString_baseAttributedString] = v19;
  v20 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v21 = v19;
  v22 = [v20 initWithAttributedString_];
  if (qword_1EBC29A18 != -1)
  {
    swift_once();
  }

  [v22 performSelector_];
  v23 = [v22 string];
  v24 = sub_1BAD9CF68();
  v26 = v25;

  v27 = &v4[OBJC_IVAR___JULanguageAwareString_string];
  *v27 = v24;
  v27[1] = v26;
  if (a3)
  {
    *&v4[OBJC_IVAR___JULanguageAwareString_paragraphs] = *(a1 + OBJC_IVAR___JULanguageAwareString_paragraphs);
    *&v4[OBJC_IVAR___JULanguageAwareString_numbers] = *(a1 + OBJC_IVAR___JULanguageAwareString_numbers);

    v28 = OBJC_IVAR___JULanguageAwareString_words;
    v29 = *(a1 + OBJC_IVAR___JULanguageAwareString_words);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    *&v4[OBJC_IVAR___JULanguageAwareString_paragraphs] = MEMORY[0x1E69E7CC0];
    *&v4[OBJC_IVAR___JULanguageAwareString_numbers] = v29;

    v28 = OBJC_IVAR___JULanguageAwareString_words;
  }

  *&v4[v28] = v29;
  v30 = *(a1 + OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections);
  *&v4[OBJC_IVAR___JULanguageAwareString_knownBaseWritingDirections] = v30;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for LanguageAwareString();
  v31 = v30;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_1BAD885C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t JUComponentMenuBuilder.init()@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BAD1FE18(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t JUComponentMenuBuilder.addTemplate(for:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  *v5 = 0x8000000000000000;
  sub_1BAD146C0(&unk_1BADA8588, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *v5 = v13;
  return result;
}

uint64_t sub_1BAD88724(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4)
{
  *(v4 + 16) = a1;
  v6 = *a3;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1BAD88828;

  return v9(a2, v6);
}

uint64_t sub_1BAD88828(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t JUComponentMenuBuilder.addingTemplate(for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = *v5;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = 0x8000000000000000;
  sub_1BAD146C0(&unk_1BADA8590, v12, a1, a2, isUniquelyReferenced_nonNull_native);

  *a5 = v11;
  return result;
}

uint64_t JUComponentMenuBuilder.buildContextMenu(forContentsOf:withMetrics:asPartOf:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B488);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7;
  v9 = sub_1BAD9CD88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAD9CA38();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BAD1A420(v8, &qword_1EBC2B488);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16[1] = v13;
    v15 = sub_1BAD88BF0(v12, a1, a2, v16[0]);
    (*(v10 + 8))(v12, v9);
    return v15;
  }
}

uint64_t sub_1BAD88BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v93 = a4;
  v92 = a3;
  v77 = a2;
  v74 = sub_1BAD9CD88();
  v6 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2A698);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = v64 - v9;
  v91 = sub_1BAD9CD68();
  v100 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v66 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B490);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B498);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = v64 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v94 = v64 - v18;
  v104 = sub_1BAD9CD38();
  v78 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v20 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BAD9CD48();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = v64 - v26;
  v76 = *v4;
  v110 = MEMORY[0x1E69E7CC0];
  v64[2] = a1;
  v28 = sub_1BAD9CD78();
  v103 = *(v28 + 16);
  if (!v103)
  {
LABEL_36:

    sub_1BAD053C8(0, &qword_1EBC2B4B0);
    sub_1BAD9CD58();
    sub_1BAD9CCE8();
    sub_1BAD9CF38();

    return sub_1BAD9D538();
  }

  v72 = v14;
  v29 = v6;
  v30 = 0;
  v98 = v22 + 16;
  v97 = v22 + 88;
  v31 = v22;
  v32 = (v22 + 96);
  v96 = *MEMORY[0x1E69AB5C8];
  v64[1] = v107;
  v101 = v31;
  v95 = (v31 + 8);
  v85 = *MEMORY[0x1E69AB5D0];
  v71 = (v29 + 32);
  v70 = (v29 + 8);
  v84 = (v78 + 4);
  v69 = *MEMORY[0x1E69AB5D8];
  v83 = (v100 + 13);
  v82 = (v100 + 7);
  v81 = *MEMORY[0x1E69AB5F8];
  v80 = (v100 + 6);
  v65 = (v100 + 4);
  v68 = (v100 + 1);
  ++v78;
  v87 = v27;
  v102 = v20;
  v99 = v28;
  v100 = v24;
  v33 = v27;
  v86 = v32;
  v79 = v21;
  while (v30 < *(v28 + 16))
  {
    v37 = v101;
    v38 = *(v101 + 16);
    v38(v33, v28 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v101 + 72) * v30, v21);
    v38(v24, v33, v21);
    v39 = (*(v37 + 88))(v24, v21);
    if (v39 != v96)
    {
      if (v39 == v85)
      {
        (*v32)(v24, v21);
        v34 = v73;
        v35 = v24;
        v36 = v74;
        (*v71)(v73, v35, v74);
        aBlock = v76;
        sub_1BAD88BF0(v34, v77, v92, v93);
        MEMORY[0x1BFB027C0]();
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BAD9D1A8();
        }

        sub_1BAD9D1F8();
        (*v70)(v34, v36);
      }

      else
      {
        if (v39 != v69)
        {
          goto LABEL_38;
        }

        (*v32)(v24, v21);
        v49 = *v24;
        v48 = v24[1];
        if (sub_1BAD9CCD8() == v49 && v50 == v48)
        {

          goto LABEL_32;
        }

        v56 = sub_1BAD9DA98();

        if (v56)
        {
LABEL_32:
          (*v95)(v33, v21);

          goto LABEL_7;
        }

        sub_1BAD14A3C(v77, &v108);
        v57 = swift_allocObject();
        sub_1BAD0B40C(&v108, (v57 + 2));
        v57[7] = v76;
        v57[8] = v49;
        v58 = v93;
        v57[9] = v48;
        v57[10] = v58;
        v107[2] = sub_1BAD8AF9C;
        v107[3] = v57;
        aBlock = MEMORY[0x1E69E9820];
        v106 = 1107296256;
        v107[0] = sub_1BAD8ABBC;
        v107[1] = &block_descriptor_12;
        v59 = _Block_copy(&aBlock);
        v60 = objc_opt_self();

        v61 = [v60 elementWithProvider_];
        _Block_release(v59);

        MEMORY[0x1BFB027C0](v62);
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BAD9D1A8();
        }

        sub_1BAD9D1F8();
      }

      (*v95)(v33, v21);
LABEL_7:
      v20 = v102;
      goto LABEL_8;
    }

    (*v32)(v24, v21);
    (*v84)(v20, v24, v104);
    v40 = v94;
    sub_1BAD9CD08();
    v41 = v88;
    v42 = v91;
    (*v83)(v88, v81, v91);
    (*v82)(v41, 0, 1, v42);
    v43 = *(v90 + 48);
    v44 = v89;
    sub_1BAD1A3B8(v40, v89, &qword_1EBC2B498);
    sub_1BAD1A3B8(v41, v44 + v43, &qword_1EBC2B498);
    v45 = *v80;
    if ((*v80)(v44, 1, v42) != 1)
    {
      v51 = v72;
      sub_1BAD1A3B8(v44, v72, &qword_1EBC2B498);
      if (v45(v44 + v43, 1, v42) != 1)
      {
        v52 = v66;
        (*v65)(v66, v44 + v43, v42);
        sub_1BAD8AFC8();
        v67 = sub_1BAD9CF28();
        v53 = *v68;
        (*v68)(v52, v42);
        sub_1BAD1A420(v41, &qword_1EBC2B498);
        sub_1BAD1A420(v94, &qword_1EBC2B498);
        v53(v51, v42);
        sub_1BAD1A420(v44, &qword_1EBC2B498);
        v47 = v102;
        goto LABEL_24;
      }

      sub_1BAD1A420(v41, &qword_1EBC2B498);
      sub_1BAD1A420(v94, &qword_1EBC2B498);
      (*v68)(v51, v42);
      v47 = v102;
LABEL_22:
      sub_1BAD1A420(v44, &qword_1EBC2B490);
      goto LABEL_24;
    }

    sub_1BAD1A420(v41, &qword_1EBC2B498);
    sub_1BAD1A420(v40, &qword_1EBC2B498);
    v46 = v45(v44 + v43, 1, v42);
    v47 = v102;
    if (v46 != 1)
    {
      goto LABEL_22;
    }

    sub_1BAD1A420(v44, &qword_1EBC2B498);
LABEL_24:
    v21 = v79;
    sub_1BAD9CD28();
    if (v109)
    {
      sub_1BAD0B40C(&v108, &aBlock);
      sub_1BAD14A3C(&aBlock, &v108);
      v54 = v75;
      sub_1BAD1A3B8(v92, v75, qword_1EBC2A698);
      type metadata accessor for JUActionPerformer();
      v55 = swift_allocObject();
      sub_1BAD0B40C(&v108, v55 + 16);
      sub_1BAD2B7D8(v54, v55 + OBJC_IVAR____TtC5JetUI17JUActionPerformer_metricsContext);
      *(v55 + OBJC_IVAR____TtC5JetUI17JUActionPerformer_objectGraph) = v93;
      sub_1BAD053C8(0, &qword_1EBC2B4A0);

      sub_1BAD9CD18();
      sub_1BAD9CCF8();
      sub_1BAD9CF38();

      sub_1BAD9D578();
      MEMORY[0x1BFB027C0]();
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BAD9D1A8();
      }

      sub_1BAD9D1F8();

      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      (*v78)(v47, v104);
      v33 = v87;
      (*v95)(v87, v21);
      v20 = v47;
      v24 = v100;
      v32 = v86;
      goto LABEL_9;
    }

    sub_1BAD1A420(&v108, &qword_1EBC2A690);
    sub_1BAD053C8(0, &qword_1EBC2B4A0);
    sub_1BAD9CD18();
    sub_1BAD9CCF8();
    sub_1BAD9CF38();

    sub_1BAD9D578();
    MEMORY[0x1BFB027C0]();
    v32 = v86;
    if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BAD9D1A8();
    }

    sub_1BAD9D1F8();
    (*v78)(v47, v104);
    v33 = v87;
    (*v95)(v87, v21);
    v20 = v47;
LABEL_8:
    v24 = v100;
LABEL_9:
    ++v30;
    v28 = v99;
    if (v103 == v30)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  aBlock = 0;
  v106 = 0xE000000000000000;
  sub_1BAD9D7E8();
  MEMORY[0x1BFB026B0](0xD00000000000001BLL, 0x80000001BADABAA0);
  sub_1BAD9D8A8();
  result = sub_1BAD9D8B8();
  __break(1u);
  return result;
}

uint64_t sub_1BAD89C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B4C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v24 - v15;
  v17 = sub_1BAD9D2F8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1BAD14A3C(a3, v26);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_1BAD1A3B8(v26, v24, qword_1EBC2B4C8);
  sub_1BAD9D2D8();

  v19 = sub_1BAD9D2C8();
  sub_1BAD1A420(v26, qword_1EBC2B4C8);
  v20 = swift_allocObject();
  v21 = v24[1];
  *(v20 + 56) = v24[0];
  v22 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v19;
  *(v20 + 24) = v22;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 72) = v21;
  *(v20 + 88) = v25;
  *(v20 + 96) = a7;
  *(v20 + 104) = sub_1BAD6018C;
  *(v20 + 112) = v18;
  sub_1BAD8A8BC(0, 0, v16, &unk_1BADA8620, v20);
}

uint64_t sub_1BAD89E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = v17;
  v8[4] = v18;
  v8[5] = sub_1BAD9D2D8();
  v8[6] = sub_1BAD9D2C8();
  v8[2] = a4;
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_1BAD89F34;

  return sub_1BAD8A100(a5, a6, a7, a8);
}

uint64_t sub_1BAD89F34(uint64_t a1)
{
  *(*v1 + 64) = a1;

  v3 = sub_1BAD9D2B8();

  return MEMORY[0x1EEE6DFA0](sub_1BAD8A078, v3, v2);
}

uint64_t sub_1BAD8A078()
{
  v6 = v0;
  v1 = v0[8];
  v2 = v0[3];

  v5 = v1;
  v2(&v5);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BAD8A100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a3;
  v5[11] = a4;
  v5[8] = a1;
  v5[9] = a2;
  sub_1BAD9C858();
  v5[12] = swift_task_alloc();
  v6 = sub_1BAD9CC88();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *v4;
  v5[16] = v7;
  v5[17] = v8;
  sub_1BAD9D2D8();
  v5[18] = sub_1BAD9D2C8();
  v10 = sub_1BAD9D2B8();
  v5[19] = v10;
  v5[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BAD8A234, v10, v9);
}

uint64_t sub_1BAD8A234()
{
  if (*(v0[17] + 16) && (v1 = sub_1BAD2E784(v0[8], v0[9]), (v2 & 1) != 0))
  {
    v3 = v0[11];
    v4 = *(v0[17] + 56) + 16 * v1;
    v5 = *v4;
    v0[21] = *(v4 + 8);
    v0[6] = v3;

    v22 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = sub_1BAD8A6D8;
    v7 = v0[10];

    return (v22)(v0 + 7, v7, v0 + 6);
  }

  else
  {
    v9 = v0[15];
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[14];

    sub_1BAD9CC78();
    (*(v12 + 104))(v9, *MEMORY[0x1E69AB3E8], v11);
    v13 = sub_1BAD9CC68();
    v14 = *(v12 + 8);
    v14(v9, v11);
    v14(v10, v11);
    if (v13)
    {
      v16 = v0[8];
      v15 = v0[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1BAD9F590;
      sub_1BAD053C8(0, &qword_1EBC2B4A0);
      sub_1BAD9D7E8();

      MEMORY[0x1BFB026B0](v16, v15);
      MEMORY[0x1BFB026B0](10794, 0xE200000000000000);
      *(v17 + 32) = sub_1BAD9D578();
    }

    else
    {
      if (qword_1EBC29C50 != -1)
      {
        swift_once();
      }

      v19 = v0[8];
      v18 = v0[9];
      v20 = sub_1BAD9CDF8();
      __swift_project_value_buffer(v20, qword_1EBC357E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
      sub_1BAD9C898();
      *(swift_allocObject() + 16) = xmmword_1BAD9F5A0;
      sub_1BAD9C848();
      sub_1BAD9C838();
      v0[5] = MEMORY[0x1E69AB5A8];
      v0[2] = v19;
      v0[3] = v18;

      sub_1BAD9C7F8();
      sub_1BAD1A420((v0 + 2), &qword_1EBC2A120);
      sub_1BAD9C838();
      sub_1BAD9C868();
      sub_1BAD9CCC8();

      v17 = MEMORY[0x1E69E7CC0];
    }

    v21 = v0[1];

    return v21(v17);
  }
}

uint64_t sub_1BAD8A6D8()
{
  v1 = *v0;

  v1[23] = v1[7];
  v2 = v1[20];
  v3 = v1[19];

  return MEMORY[0x1EEE6DFA0](sub_1BAD8A830, v3, v2);
}

uint64_t sub_1BAD8A830()
{

  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BAD8A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B4C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BAD1A3B8(a3, v25 - v10, &qword_1EBC2B4C0);
  v12 = sub_1BAD9D2F8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BAD1A420(v11, &qword_1EBC2B4C0);
  }

  else
  {
    sub_1BAD9D2E8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BAD9D2B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BAD9CFC8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BAD1A420(a3, &qword_1EBC2B4C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BAD1A420(a3, &qword_1EBC2B4C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BAD8ABBC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1BAD8B020, v4);
}

void sub_1BAD8AC50(uint64_t a1, uint64_t a2)
{
  sub_1BAD053C8(0, &qword_1EBC2B4B8);
  v3 = sub_1BAD9D168();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1BAD8ACCC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BAD8ADC4;

  return v6(a1);
}

uint64_t sub_1BAD8ADC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BAD8AEBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BAD8B408;

  return sub_1BAD88724(a1, a2, a3, v8);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BAD8AFC8()
{
  result = qword_1EBC2B4A8;
  if (!qword_1EBC2B4A8)
  {
    sub_1BAD9CD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B4A8);
  }

  return result;
}

uint64_t sub_1BAD8B028(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BAD8B11C;

  return sub_1BAD89E48(a1, v11, v4, v5, v6, v7, (v1 + 7), v8);
}

uint64_t sub_1BAD8B11C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BAD8B210(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BAD8B408;

  return sub_1BAD8ACCC(a1, v4);
}

uint64_t sub_1BAD8B2C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BAD8B11C;

  return sub_1BAD8ACCC(a1, v4);
}

uint64_t sub_1BAD8B380()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

JUMeasurements __swiftcall UIImageView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [v2 sizeThatFits_];
  v4 = v3;
  v6 = v5;
  v7 = [v2 image];
  if (v7)
  {
    v8 = v7;
    v9 = COERCE_DOUBLE(sub_1BAD9D548());
    v11 = v10;

    if (v11)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v4;
  v14 = v6;
  v15 = v6;
  result.var3 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

double sub_1BAD8B4A4()
{
  v1 = *v0;
  [*v0 sizeThatFits_];
  v3 = v2;
  v4 = [v1 image];
  if (v4)
  {
    v5 = v4;
    sub_1BAD9D548();
  }

  return v3;
}

uint64_t Separator.Position.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t Separator.init(position:leadingInset:trailingInset:verticalOutset:)@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = *a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  return sub_1BAD0B40C(a2, a3 + 24);
}

uint64_t Separator.withLeadingInset(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  v6 = *(v2 + 2);
  result = sub_1BAD14A3C((v2 + 24), a1 + 24);
  *a1 = v5;
  *(a1 + 8) = a2;
  *(a1 + 16) = v6;
  return result;
}

uint64_t Separator.withTrailingInset(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  result = sub_1BAD14A3C((v2 + 24), a1 + 24);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2;
  return result;
}

uint64_t Separator.withInsets(of:)@<X0>(uint64_t a1@<X8>, double a2@<D1>, double a3@<D3>)
{
  v7 = *v3;
  result = sub_1BAD14A3C((v3 + 24), a1 + 24);
  *a1 = v7;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  return result;
}

uint64_t Separator.verticalOutset.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);

  return sub_1BAD0B40C(a1, v1 + 24);
}

uint64_t Separator.withVerticalOutset(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 1);
  v6 = *(v2 + 2);
  result = sub_1BAD14A3C(a1, a2 + 24);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

double static Separator.thickness(compatibleWith:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_1BAD9D528();

  result = 1.0;
  if ((v3 & 1) == 0)
  {
    [a1 displayScale];
    if (v5 <= 0.0)
    {
      v5 = ForJetUIOnly_MainScreenScale();
    }

    return 1.0 / v5;
  }

  return result;
}

double Separator.height(in:)(void *a1)
{
  v3 = sub_1BAD9DA68();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  v10 = sub_1BAD9D528();

  if (v10)
  {

    v11 = 1.0;
  }

  else
  {
    [v8 displayScale];
    if (v12 <= 0.0)
    {
      v14 = ForJetUIOnly_MainScreenScale();

      v13 = v14;
    }

    else
    {
      v13 = v12;
    }

    v11 = 1.0 / v13;
  }

  v15 = v1[6];
  v16 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v15);
  sub_1BAD6EE7C(v7);
  AnyDimension.value(in:rounded:)(a1, v7, v15, v16);
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  return v11 + v18 + v18;
}

double Separator.frame(forBoundingRect:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_1BAD9DA68();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  v18 = *(v6 + 48);
  v19 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), v18);
  sub_1BAD6EE7C(v16);
  AnyDimension.value(in:rounded:)(a1, v16, v18, v19);
  v21 = v20;
  (*(v13 + 8))(v16, v12);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v41 = a4;
  v42 = a5;
  v43.size.width = a4;
  v43.size.height = a5;
  Width = CGRectGetWidth(v43);
  v23 = *(v6 + 8);
  v24 = *(v6 + 16);
  v25 = [v17 preferredContentSizeCategory];
  LOBYTE(v12) = sub_1BAD9D528();

  v26 = 1.0;
  if ((v12 & 1) == 0)
  {
    [v17 displayScale];
    if (v27 <= 0.0)
    {
      v27 = ForJetUIOnly_MainScreenScale();
    }

    v26 = 1.0 / v27;
  }

  v28 = Width - (v23 + v24);
  v29 = v21 + v21 + 0.0 + v26;
  v30 = [v17 layoutDirection];
  v44.origin.x = a2;
  v44.origin.y = a3;
  v32 = v41;
  v31 = v42;
  v44.size.width = v41;
  v44.size.height = v42;
  MinX = CGRectGetMinX(v44);
  if (v30 == 1)
  {
    v34 = v24;
  }

  else
  {
    v34 = v23;
  }

  v35 = v34 + MinX;
  v36 = a2;
  v37 = a3;
  v38 = v32;
  v39 = v31;
  if (*v6)
  {
    CGRectGetMaxY(*&v36);
    v45.origin.y = 0.0;
    v45.origin.x = v35;
    v45.size.width = v28;
    v45.size.height = v29;
    CGRectGetHeight(v45);
  }

  else
  {
    CGRectGetMinY(*&v36);
  }

  return v35;
}

double CGSize.add(separator:in:)(uint64_t a1, void *a2)
{
  result = Separator.height(in:)(a2) + *(v2 + 8);
  *(v2 + 8) = result;
  return result;
}

double CGRect.inset(bySeparator:in:)(_BYTE *a1, void *a2)
{
  v3 = v2;
  result = Separator.height(in:)(a2);
  *(v3 + 24) = *(v3 + 24) - result;
  if ((*a1 & 1) == 0)
  {
    result = result + *(v3 + 8);
    *(v3 + 8) = result;
  }

  return result;
}

double JUMeasurements.add(separator:in:)(_BYTE *a1, void *a2)
{
  v3 = v2;
  v5 = Separator.height(in:)(a2);
  *(v3 + 8) = v5 + *(v3 + 8);
  v6 = 16;
  if (*a1)
  {
    v6 = 24;
  }

  result = v5 + *(v3 + v6);
  *(v3 + v6) = result;
  return result;
}

unint64_t sub_1BAD8BF0C()
{
  result = qword_1EBC2B550;
  if (!qword_1EBC2B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B550);
  }

  return result;
}

uint64_t sub_1BAD8BF60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAD8BFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAD8C018(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_1BAD9D7E8();
  v4 = 0;
  v5 = 0xE000000000000000;
  MEMORY[0x1BFB026B0](0xD000000000000024, 0x80000001BADABB40);
  swift_beginAccess();
  sub_1BAD14A3C(a1 + 16, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B558);
  sub_1BAD9D8A8();
  __swift_destroy_boxed_opaque_existential_1(v3);
  MEMORY[0x1BFB026B0](41, 0xE100000000000000);
  return v4;
}

double sub_1BAD8C0E8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_beginAccess();
  sub_1BAD14A3C(a2 + 16, v14);
  v8 = v15;
  v9 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v10 = (*(*(*(v9 + 8) + 8) + 8))(a1, v8, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_1BAD14A3C(a2 + 16, v14);
  v11 = v15;
  v12 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v12 + 96))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

uint64_t sub_1BAD8C218()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1BAD8C2A8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 24))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void (*sub_1BAD8C338(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 72) = v5;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  v8 = (*(v7 + 16))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v4);
  v4[8] = v8;
  return sub_1BAD8C414;
}

void sub_1BAD8C414(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  sub_1BAD14A3C(*(*a1 + 72) + 16, *a1);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 24))(v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v1);

  free(v1);
}

uint64_t sub_1BAD8C4A0()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 40))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1BAD8C530(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 48))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void (*sub_1BAD8C5C0(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 72) = v5;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  v8 = (*(v7 + 40))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v4);
  v4[8] = v8;
  return sub_1BAD8C69C;
}

void sub_1BAD8C69C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  sub_1BAD14A3C(*(*a1 + 72) + 16, *a1);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 48))(v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v1);

  free(v1);
}

uint64_t sub_1BAD8C728()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 64))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1BAD8C7B8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 72))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void (*sub_1BAD8C848(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 72) = v5;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  v6 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  v8 = (*(v7 + 64))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v4);
  v4[8] = v8;
  return sub_1BAD8C924;
}

void sub_1BAD8C924(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 64);
  sub_1BAD14A3C(*(*a1 + 72) + 16, *a1);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v7 = *(v6 + 72);
  if (a2)
  {
    v8 = v4;
    v7(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v7(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  free(v3);
}

uint64_t sub_1BAD8CA04()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  LOBYTE(v2) = (*(v3 + 88))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2 & 1;
}

double sub_1BAD8CA94()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 96))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1BAD8CB4C()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 104))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

double sub_1BAD8CBE4()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(*(v3 + 8) + 16))(v2);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1BAD8CC94(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_1BAD14A3C(v9 + 16, v13);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(*(v11 + 8) + 24))(v10, a1, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void (*sub_1BAD8CD44(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 96) = v5;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  v7 = *(v4 + 3);
  v6 = *(v4 + 4);
  __swift_project_boxed_opaque_existential_1(v4, v7);
  v8 = (*(*(v6 + 8) + 16))(v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v4);
  v4[5] = v8;
  *(v4 + 6) = v10;
  v4 += 5;
  *(v4 + 2) = v12;
  *(v4 + 3) = v14;
  return sub_1BAD8CE38;
}

void sub_1BAD8CE38(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  sub_1BAD14A3C(*(*a1 + 96) + 16, *a1);
  v7 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  (*(*(v6 + 8) + 24))(v7, v2, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v1);

  free(v1);
}

uint64_t sub_1BAD8CEE4()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  LOBYTE(v2) = (*(*(v3 + 8) + 40))(v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2 & 1;
}

uint64_t sub_1BAD8CF6C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(*(v5 + 8) + 48))(a1, v4);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void (*sub_1BAD8CFFC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  sub_1BAD14A3C(v5 + 16, v4);
  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1(v4, v7);
  LOBYTE(v6) = (*(*(v6 + 8) + 40))(v7);
  __swift_destroy_boxed_opaque_existential_1(v4);
  *(v4 + 72) = v6 & 1;
  return sub_1BAD8D0D4;
}

void sub_1BAD8D0D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  sub_1BAD14A3C(*(*a1 + 64) + 16, *a1);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(*(v4 + 8) + 48))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v1);

  free(v1);
}

uint64_t sub_1BAD8D164()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  LOBYTE(v2) = (*(*(v3 + 8) + 64))(v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2 & 1;
}

double sub_1BAD8D1EC()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(*(v3 + 8) + 72))(v2);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t LayoutTextView.withLanguageAwareOutsets.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1, v7);
  result = sub_1BAD8D390(v9, a1, a2);
  a3[3] = &type metadata for LanguageAwareLayoutTextView;
  a3[4] = &off_1F38EDB38;
  *a3 = result;
  return result;
}

uint64_t sub_1BAD8D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v8);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B560);
  v6 = swift_allocObject();
  sub_1BAD1A480(&v8, v6 + 16);
  return v6;
}

BOOL sub_1BAD8D43C(void *a1)
{
  v1 = a1;
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1BAD9CF68();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    return v7 != 0;
  }

  else
  {

    return 0;
  }
}

id UILabel.hasContent.getter()
{
  result = [v0 text];
  if (result)
  {
    v2 = result;
    v3 = sub_1BAD9CF68();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    return (v6 != 0);
  }

  return result;
}

uint64_t sub_1BAD8D538(void *a1)
{
  v1 = a1;
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    sub_1BAD9CF68();

    if (qword_1EDBA61E8 != -1)
    {
      swift_once();
    }

    v4 = sub_1BAD9C248();
    __swift_project_value_buffer(v4, qword_1EDBA61F0);
    sub_1BAD13DE8();
    sub_1BAD9D5F8();
    v6 = v5;

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t UILabel.isTextExtraTall.getter()
{
  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    sub_1BAD9CF68();

    if (qword_1EDBA61E8 != -1)
    {
      swift_once();
    }

    v3 = sub_1BAD9C248();
    __swift_project_value_buffer(v3, qword_1EDBA61F0);
    sub_1BAD13DE8();
    sub_1BAD9D5F8();
    v5 = v4;

    v6 = v5 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1BAD8D784(void *a1)
{
  v1 = a1;
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    sub_1BAD9CF68();

    v4 = sub_1BAD9D028();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id UILabel.textLength.getter()
{
  result = [v0 text];
  if (result)
  {
    v2 = result;
    sub_1BAD9CF68();

    v3 = sub_1BAD9D028();

    return v3;
  }

  return result;
}

id (*sub_1BAD8D898(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 numberOfLines];
  return sub_1BAD8D8EC;
}

id (*sub_1BAD8D924(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 lineBreakMode];
  return sub_1BAD8D978;
}

id sub_1BAD8D98C()
{
  v1 = [*v0 font];

  return v1;
}

void sub_1BAD8D9C4(void *a1)
{
  [*v1 setFont_];
}

void (*sub_1BAD8DA0C(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 font];
  return sub_1BAD8DA68;
}

void sub_1BAD8DA68(id *a1)
{
  v1 = *a1;
  [a1[1] setFont_];
}

JetUI::_LayoutAlignment __swiftcall _LayoutAlignment.init(horizontal:vertical:)(JetUI::_LayoutAlignment::Horizontal horizontal, JetUI::_LayoutAlignment::Vertical vertical)
{
  v3 = *vertical;
  *v2 = *horizontal;
  v2[1] = v3;
  result.horizontal = horizontal;
  return result;
}

unint64_t sub_1BAD8DBF0()
{
  result = qword_1EBC2B568;
  if (!qword_1EBC2B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B568);
  }

  return result;
}

unint64_t sub_1BAD8DC48()
{
  result = qword_1EBC2B570;
  if (!qword_1EBC2B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B570);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _LayoutAlignment(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for _LayoutAlignment(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t VerticalFlowLayout.VerticalPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t VerticalFlowLayout.HorizontalPlacement.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  sub_1BAD14A3C(a1, a7);
  sub_1BAD14A3C(a2, a7 + 40);
  result = sub_1BAD1CB04(a3, a7 + 80);
  *(a7 + 120) = v10;
  *(a7 + 121) = v11;
  *(a7 + 128) = v12;
  return result;
}

JetUI::VerticalFlowLayout __swiftcall VerticalFlowLayout.init(expandChildrenToFit:children:)(Swift::Bool expandChildrenToFit, Swift::OpaquePointer children)
{
  *v2 = expandChildrenToFit;
  *(v2 + 8) = children;
  result.children = children;
  result.expandChildrenToFit = expandChildrenToFit;
  return result;
}

__n128 VerticalFlowLayout.addChild(_:)(uint64_t a1)
{
  sub_1BAD1A300(a1, v12);
  v2 = *(v1 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BAD19150(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1BAD19150((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[136 * v4];
  *(v5 + 2) = v12[0];
  v6 = v12[1];
  v7 = v12[2];
  v8 = v12[4];
  *(v5 + 5) = v12[3];
  *(v5 + 6) = v8;
  *(v5 + 3) = v6;
  *(v5 + 4) = v7;
  result = v12[5];
  v10 = v12[6];
  v11 = v12[7];
  *(v5 + 20) = v13;
  *(v5 + 8) = v10;
  *(v5 + 9) = v11;
  *(v5 + 7) = result;
  *(v1 + 8) = v2;
  return result;
}

unint64_t VerticalFlowLayout.insertChild(_:at:)(unint64_t result, int64_t a2)
{
  if (*(*(v2 + 8) + 16) < a2)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1BAD1A300(result, v4);
    return sub_1BAD19B9C(a2, a2, v4);
  }

  __break(1u);
  return result;
}

void VerticalFlowLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_1BAD9DA68();
  MEMORY[0x1EEE9AC00](v7);
  v11 = *v3;
  v12 = *(v3 + 1);
  v13 = *(v12 + 16);
  if (v13)
  {
    v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v8;
    v14 = 0;
    v15 = 0;
    v56 = (v9 + 8);
    v16 = 0.0;
    v60 = v13 - 1;
    v17 = v12 + 32;
    v62 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    v64 = v11;
    v59 = v12 + 32;
    do
    {
      v63 = v19;
      v61 = v14;
      v65 = v18;
      v20 = v17 + 136 * v15;
      v21 = v15;
      while (1)
      {
        if (v21 >= *(v12 + 16))
        {
          __break(1u);
          return;
        }

        sub_1BAD1A300(v20, v69);
        v22 = v70;
        v23 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v24 = (*(*(v23 + 8) + 8))(a1, v22, a2, a3);
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = v77;
        if (v77 & 2) == 0 || (v32 = v70, v33 = v71, __swift_project_boxed_opaque_existential_1(v69, v70), ((*(v33 + 64))(v32, v33)))
        {
          if ((v31 & 1) == 0 || (v34 = v70, v35 = v71, __swift_project_boxed_opaque_existential_1(v69, v70), ((*(v35 + 40))(v34, v35) & 1) == 0))
          {
            if ((v31 & 8) == 0 || v26 >= COERCE_DOUBLE(1))
            {
              break;
            }
          }
        }

        ++v21;
        sub_1BAD8F09C(v69);
        v20 += 136;
        if (v13 == v21)
        {
          return;
        }
      }

      v36 = v76;
      v37 = v73;
      v38 = v74;
      __swift_project_boxed_opaque_existential_1(v72, v73);
      if (v36)
      {
        v39 = AnyDimension.topMargin(from:in:)(a1, v37, v38, v24, v26, v28);
      }

      else
      {
        v40 = v57;
        sub_1BAD6EE7C(v57);
        AnyDimension.value(in:rounded:)(a1, v40, v37, v38);
        v39 = v41;
        (*v56)(v40, v58);
      }

      v42 = 0.0;
      if (v39 >= 0.0)
      {
        v42 = v39;
      }

      v43 = v26 + floor(v62 + v42);
      if (v24 > v16)
      {
        v16 = v24;
      }

      sub_1BAD1CB04(&v75, v66);
      v44 = v67;
      if (v67)
      {
        v45 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v46 = AnyDimension.bottomMargin(from:in:)(a1, v44, v45, v24, v26, v28, v30);
        __swift_destroy_boxed_opaque_existential_1(v66);
        v62 = v43 + v46;
        v43 = v43 + v46;
      }

      else
      {
        sub_1BAD1CDE0(v66);
        v62 = v43 - v30;
      }

      v47 = v65;
      v48 = v43;
      if ((v61 & 1) == 0)
      {
        v47 = v28;
        if ((v76 & 1) == 0)
        {
          v49 = v73;
          v50 = v74;
          __swift_project_boxed_opaque_existential_1(v72, v73);
          v51 = v57;
          sub_1BAD6EE7C(v57);
          AnyDimension.value(in:rounded:)(a1, v51, v49, v50);
          v53 = v52;
          (*v56)(v51, v58);
          v47 = v28 + v53;
        }
      }

      v15 = v21 + 1;
      v54 = v47;
      sub_1BAD8F09C(v69);
      v18 = v54;
      v14 = 1;
      v17 = v59;
      v19 = v48;
    }

    while (v60 != v21);
  }
}

void VerticalFlowLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, CGFloat *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = sub_1BAD9DA68();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *v6;
  v16 = *(v6 + 1);
  v102 = a3;
  v115.origin.x = a3;
  v115.origin.y = a4;
  v115.size.width = a5;
  v115.size.height = a6;
  MinY = CGRectGetMinY(v115);
  v18 = *(v16 + 16);
  if (v18)
  {
    tx = MinY;
    v90 = v13;
    v96 = 0;
    v19 = 0;
    v89 = (v14 + 8);
    v92 = v18 - 1;
    v20 = v16 + 32;
    v21 = 0.0;
    v99 = 0.0;
    v22 = 0.0;
    v101 = 0.0;
    v100 = a4;
    v91 = v16 + 32;
    do
    {
      v23 = v21;
      v24 = v20 + 136 * v19;
      v25 = v19;
      while (1)
      {
        if (v25 >= *(v16 + 16))
        {
          __break(1u);
          return;
        }

        sub_1BAD1A300(v24, v105);
        v26 = v106;
        v27 = v107;
        __swift_project_boxed_opaque_existential_1(v105, v106);
        v28 = (*(*(v27 + 8) + 8))(a1, v26, a5, a6);
        v30 = v29;
        v32 = v31;
        v21 = v33;
        v34 = v114;
        if (v114 & 2) == 0 || (v35 = v106, v36 = v107, __swift_project_boxed_opaque_existential_1(v105, v106), ((*(v36 + 64))(v35, v36)))
        {
          if ((v34 & 1) == 0 || (v37 = v106, v38 = v107, __swift_project_boxed_opaque_existential_1(v105, v106), ((*(v38 + 40))(v37, v38) & 1) == 0))
          {
            if ((v34 & 8) == 0 || v30 >= COERCE_DOUBLE(1))
            {
              break;
            }
          }
        }

        ++v25;
        sub_1BAD8F09C(v105);
        v24 += 136;
        if (v18 == v25)
        {
          v21 = v23;
          a4 = v100;
          goto LABEL_38;
        }
      }

      Width = v28;
      v39 = v100;
      if (v97)
      {
        v116.origin.x = v102;
        v116.origin.y = v100;
        v116.size.width = a5;
        v116.size.height = a6;
        Width = CGRectGetWidth(v116);
      }

      if (v113)
      {
        v40 = v102;
        v41 = v39;
        v42 = a5;
        v43 = a6;
        if (v113 == 1)
        {
          MinX = floor(CGRectGetMidX(*&v40) + Width * -0.5);
        }

        else
        {
          MinX = CGRectGetMaxX(*&v40) - Width;
        }
      }

      else
      {
        v117.origin.x = v102;
        v117.origin.y = v39;
        v117.size.width = a5;
        v117.size.height = a6;
        MinX = CGRectGetMinX(v117);
      }

      v93 = MinX;
      v45 = v112;
      v46 = v109;
      v47 = v110;
      __swift_project_boxed_opaque_existential_1(&v108, v109);
      if (v45)
      {
        v48 = AnyDimension.topMargin(from:in:)(a1, v46, v47, v28, v30, v32);
      }

      else
      {
        v49 = v94;
        sub_1BAD6EE7C(v94);
        AnyDimension.value(in:rounded:)(a1, v49, v46, v47);
        v48 = v50;
        (*v89)(v49, v90);
      }

      v51 = 0.0;
      if (v48 >= 0.0)
      {
        v51 = v48;
      }

      v52 = floor(tx + v51);
      v53 = v106;
      v54 = v107;
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v55 = [a1 traitCollection];
      v56 = [v55 layoutDirection];

      v57.n128_f64[0] = v93;
      v88 = v52;
      v58.n128_f64[0] = v52;
      v59.n128_f64[0] = Width;
      v60.n128_f64[0] = v30;
      if (v56 == 1)
      {
        CGAffineTransformMakeScale(&v104, -1.0, 1.0);
        tx = v104.tx;
        ty = v104.ty;
        v86 = *&v104.a;
        v85 = *&v104.c;
        v61 = v102;
        v118.origin.x = v102;
        v118.origin.y = v100;
        v118.size.width = a5;
        v118.size.height = a6;
        v62 = CGRectGetMinX(v118);
        v119.origin.x = v61;
        v119.origin.y = v100;
        v119.size.width = a5;
        v119.size.height = a6;
        MaxX = CGRectGetMaxX(v119);
        *&v104.c = v85;
        *&v104.a = v86;
        v104.tx = tx;
        v39 = v100;
        v104.ty = ty;
        CGAffineTransformTranslate(&v103, &v104, -(v62 + MaxX), 0.0);
        v104 = v103;
        v120.origin.x = v93;
        v120.origin.y = v88;
        v120.size.width = Width;
        v120.size.height = v30;
        *v57.n128_u64 = CGRectApplyAffineTransform(v120, &v104);
      }

      (*(v54 + 24))(v53, v54, v57, v58, v59, v60);
      v64 = v106;
      v65 = v107;
      __swift_project_boxed_opaque_existential_1(v105, v106);
      v121.origin.x = (*(v65 + 16))(v64, v65);
      v66 = CGRectGetMaxX(v121);
      v122.origin.x = v102;
      v122.origin.y = v39;
      v122.size.width = a5;
      v122.size.height = a6;
      v67 = v66 - CGRectGetMinX(v122);
      v68 = v101;
      if (v67 > v101)
      {
        v68 = v67;
      }

      v101 = v68;
      sub_1BAD1CB04(v111, &v104);
      v69 = *&v104.d;
      if (*&v104.d)
      {
        v70 = *&v104.tx;
        __swift_project_boxed_opaque_existential_1(&v104, *&v104.d);
        ty = AnyDimension.bottomMargin(from:in:)(a1, v69, v70, v28, v30, v32, v21);
        __swift_destroy_boxed_opaque_existential_1(&v104);
        v71 = v93;
        v123.origin.x = v93;
        v72 = v88;
        v123.origin.y = v88;
        v73 = Width;
        v123.size.width = Width;
        v123.size.height = v30;
        tx = ty + CGRectGetMaxY(v123);
        v124.origin.x = v71;
        v124.origin.y = v72;
        v124.size.width = v73;
        v124.size.height = v30;
        MaxY = ty + CGRectGetMaxY(v124);
      }

      else
      {
        sub_1BAD1CDE0(&v104);
        v75 = v93;
        v125.origin.x = v93;
        v76 = v88;
        v125.origin.y = v88;
        v77 = Width;
        v125.size.width = Width;
        v125.size.height = v30;
        tx = CGRectGetMaxY(v125) - v21;
        v126.origin.x = v75;
        v126.origin.y = v76;
        v126.size.width = v77;
        v126.size.height = v30;
        MaxY = CGRectGetMaxY(v126);
      }

      v127.origin.x = v102;
      a4 = v100;
      v127.origin.y = v100;
      v127.size.width = a5;
      v127.size.height = a6;
      v78 = CGRectGetMinY(v127);
      if ((v96 & 1) == 0)
      {
        v99 = v32;
        if ((v112 & 1) == 0)
        {
          v79 = v109;
          v80 = v110;
          v81 = v78;
          __swift_project_boxed_opaque_existential_1(&v108, v109);
          v82 = v94;
          sub_1BAD6EE7C(v94);
          AnyDimension.value(in:rounded:)(a1, v82, v79, v80);
          v84 = v83;
          (*v89)(v82, v90);
          v78 = v81;
          a4 = v100;
          v99 = v32 + v84;
        }
      }

      v19 = v25 + 1;
      v22 = MaxY - v78;
      sub_1BAD8F09C(v105);
      v96 = 1;
      v20 = v91;
    }

    while (v92 != v25);
  }

  else
  {
    v21 = 0.0;
    v99 = 0.0;
    v22 = 0.0;
    v101 = 0.0;
  }

LABEL_38:
  *a2 = v102;
  a2[1] = a4;
  a2[2] = v101;
  a2[3] = v22;
  a2[4] = v99;
  a2[5] = v21;
}

unint64_t sub_1BAD8F0D0()
{
  result = qword_1EBC2B578;
  if (!qword_1EBC2B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B578);
  }

  return result;
}

unint64_t sub_1BAD8F128()
{
  result = qword_1EBC2B580;
  if (!qword_1EBC2B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B580);
  }

  return result;
}

unint64_t sub_1BAD8F180()
{
  result = qword_1EBC2B588;
  if (!qword_1EBC2B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B588);
  }

  return result;
}

unint64_t sub_1BAD8F1D8()
{
  result = qword_1EBC2B590;
  if (!qword_1EBC2B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B590);
  }

  return result;
}

unint64_t sub_1BAD8F230()
{
  result = qword_1EDBA6118[0];
  if (!qword_1EDBA6118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBA6118);
  }

  return result;
}

unint64_t sub_1BAD8F288()
{
  result = qword_1EDBA6110;
  if (!qword_1EDBA6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA6110);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1BAD8F350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1BAD8F398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

JUMeasurements __swiftcall StackChild.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 8))(with.super.isa, v6, v7, width, height);
  result.var3 = v11;
  result.var2 = v10;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

uint64_t StackChild.init(_:with:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BAD1A480(a1, a4);
  v7 = type metadata accessor for StackChild();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 28);

  return v8(v9, a2, a3);
}

uint64_t sub_1BAD8F5D4(uint64_t a1)
{
  type metadata accessor for StackChild();

  sub_1BAD8F9EC(a1);
}

uint64_t StackChild.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1BAD8F9EC(a1);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

void (*StackChild.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  swift_getAtKeyPath();
  return sub_1BAD8F848;
}

void sub_1BAD8F848(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 40), v4, v5);

    sub_1BAD8F9EC(v3);

    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {

    sub_1BAD8F9EC(v4);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall StackChild.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  (*(v9 + 16))(with.super.isa, v8, v9, x, y, width, height);
}

uint64_t sub_1BAD8F9EC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return swift_setAtWritableKeyPath();
}

unint64_t sub_1BAD8FAE8()
{
  result = sub_1BAD8FF50();
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

uint64_t sub_1BAD8FB70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
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

void sub_1BAD8FCF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
      if (v10)
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

unint64_t sub_1BAD8FF50()
{
  result = qword_1EDBA5988;
  if (!qword_1EDBA5988)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBA5988);
  }

  return result;
}

void *LayoutTextViewPlaceholder.__allocating_init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 104) = 0;
  v16 = (v14 + 104);
  if (a2)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0;
  if (a2)
  {
    v18 = a2;
  }

  *(v14 + 16) = v17;
  *(v14 + 24) = v18;
  swift_beginAccess();
  *v16 = a3;
  v15[4] = a4;
  v15[5] = a6;
  v15[11] = a7;
  v15[12] = a5;
  return v15;
}

uint64_t LayoutTextViewPlaceholder.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 104) = 0;
  if (a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0;
  if (a2)
  {
    v14 = a2;
  }

  *(v7 + 16) = v13;
  *(v7 + 24) = v14;
  swift_beginAccess();
  *(v7 + 104) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a6;
  *(v7 + 88) = a7;
  *(v7 + 96) = a5;
  return v7;
}

uint64_t LayoutTextViewPlaceholder.text.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LayoutTextViewPlaceholder.text.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t LayoutTextViewPlaceholder.textAlignment.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t LayoutTextViewPlaceholder.lineSpacing.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

void LayoutTextViewPlaceholder.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_beginAccess();
  swift_beginAccess();
  v7 = v3[13];
  if (v7)
  {
    swift_beginAccess();
    v8 = v3[4];
    swift_beginAccess();
    v9 = v3[12];
    swift_beginAccess();
    v10 = v3[5];
    swift_beginAccess();
    v11 = objc_allocWithZone(MEMORY[0x1E696AD40]);

    v12 = v7;
    v13 = sub_1BAD9CF38();

    v14 = [v11 initWithString_];

    v15 = v14;
    v16 = [v15 length];
    [v15 addAttribute:*MEMORY[0x1E69DB648] value:v12 range:{0, v16}];
    v17 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
    [v17 setAlignment_];
    [v17 setLineBreakMode_];
    [v17 setLineBreakStrategy_];
    if (v10)
    {
      [v17 setMinimumLineHeight_];
      [v17 setMaximumLineHeight_];
    }

    [v15 addAttribute:*MEMORY[0x1E69DB688] value:v17 range:{0, v16}];

    TextMeasurable.measurements(fitting:in:)(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t LayoutTextViewPlaceholder.description.getter()
{
  sub_1BAD9D7E8();
  v1 = sub_1BAD9DC88();

  v11 = v1;
  MEMORY[0x1BFB026B0](0x203A7478657428, 0xE700000000000000);
  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];

  MEMORY[0x1BFB026B0](v2, v3);

  MEMORY[0x1BFB026B0](0x203A746E6F66202CLL, 0xE800000000000000);
  result = swift_beginAccess();
  v5 = v0[13];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 description];
    v8 = sub_1BAD9CF68();
    v10 = v9;

    MEMORY[0x1BFB026B0](v8, v10);

    MEMORY[0x1BFB026B0](41, 0xE100000000000000);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL LayoutTextViewPlaceholder.hasContent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t LayoutTextViewPlaceholder.frame.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return result;
}

uint64_t LayoutTextViewPlaceholder.isHidden.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t LayoutTextViewPlaceholder.numberOfLines.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t LayoutTextViewPlaceholder.lineBreakMode.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

void *LayoutTextViewPlaceholder.font.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void LayoutTextViewPlaceholder.font.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

BOOL LayoutTextViewPlaceholder.isTextExtraTall.getter()
{
  swift_beginAccess();
  v0 = qword_1EDBA61E8;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAD9C248();
  __swift_project_value_buffer(v1, qword_1EDBA61F0);
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  v3 = v2;

  return (v3 & 1) == 0;
}

void LayoutTextViewPlaceholder.languageAwareOutsets.getter()
{
  swift_beginAccess();
  swift_beginAccess();
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = qword_1EDBA61E8;

    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = sub_1BAD9C248();
    __swift_project_value_buffer(v4, qword_1EDBA61F0);
    sub_1BAD13DE8();
    sub_1BAD9D5F8();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      UIFont.languageAwareOutsets.getter();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LayoutTextViewPlaceholder.textLength.getter()
{
  swift_beginAccess();

  v0 = sub_1BAD9D028();

  return v0;
}

uint64_t LayoutTextViewPlaceholder.deinit()
{

  return v0;
}

uint64_t LayoutTextViewPlaceholder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BAD90ECC()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 96);
}

uint64_t sub_1BAD90F0C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 96) = a1;
  return result;
}

void *sub_1BAD90F50()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 104);
  v3 = v2;
  return v2;
}

void sub_1BAD90F98(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = a1;
}

BOOL sub_1BAD91038()
{
  swift_beginAccess();
  v0 = qword_1EDBA61E8;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAD9C248();
  __swift_project_value_buffer(v1, qword_1EDBA61F0);
  sub_1BAD13DE8();
  sub_1BAD9D5F8();
  v3 = v2;

  return (v3 & 1) == 0;
}

uint64_t sub_1BAD91138()
{
  swift_beginAccess();

  v0 = sub_1BAD9D028();

  return v0;
}

uint64_t sub_1BAD911C0(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  result = swift_beginAccess();
  v9[6] = a1;
  v9[7] = a2;
  v9[8] = a3;
  v9[9] = a4;
  return result;
}

uint64_t sub_1BAD91278()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

uint64_t sub_1BAD912B8(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 80) = a1;
  return result;
}

BOOL sub_1BAD912FC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  return v3 != 0;
}

double sub_1BAD91354()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 48);
}

void __swiftcall NQMLConfiguration.init(font:)(JetUI::NQMLConfiguration *__return_ptr retstr, UIFont font)
{
  retstr->newline._countAndFlagsBits = 10;
  retstr->newline._object = 0xE100000000000000;
  retstr->font = font;
  v3 = font.super.isa;
  retstr->paragraphStyle.super.isa = sub_1BAD56160();
  retstr->listItemBullet._countAndFlagsBits = 161644770;
  retstr->listItemBullet._object = 0xA400000000000000;
  retstr->listItemStyle.super.isa = sub_1BAD56568();
  retstr->orderedListItemStyle.super.isa = sub_1BAD56568();

  retstr->orderedListItemBulletFormat._countAndFlagsBits = 606245;
  retstr->orderedListItemBulletFormat._object = 0xE300000000000000;
  retstr->behavior = JetUI_NQMLConfiguration_Behavior_default;
}

id NSAttributedString.ju_byCollapsingNewlines.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v2 = [v1 length];
  v3 = [v1 mutableString];
  v4 = sub_1BAD9CF38();
  v5 = sub_1BAD9CF38();
  [v3 replaceOccurrencesOfString:v4 withString:v5 options:1024 range:{0, v2}];

  return v1;
}

NSAttributedString __swiftcall NSAttributedString.init(ju_nqml:configuration:)(Swift::String ju_nqml, JetUI::NQMLConfiguration *configuration)
{
  object = ju_nqml._object;
  countAndFlagsBits = ju_nqml._countAndFlagsBits;
  v4 = *&configuration->listItemStyle.super.isa;
  listItemBullet = configuration->listItemBullet;
  v15 = v4;
  v16 = *&configuration->orderedListItemBulletFormat._object;
  LOBYTE(v17) = configuration->behavior;
  v5 = *&configuration->font.super.isa;
  newline = configuration->newline;
  v13 = v5;
  v6 = objc_allocWithZone(type metadata accessor for NQMLStringGenerator());
  v7 = sub_1BAD91DF8(countAndFlagsBits, object, &newline);
  [*&v7[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_parser] parse];
  v8 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator;
  v9 = [*&v7[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator] mutableString];
  if (qword_1EBC29C88 != -1)
  {
    swift_once();
  }

  sub_1BAD51BA4(qword_1EBC2B5A8);

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];
  return v10;
}

id sub_1BAD91698()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1BAD93240(0x745C725C6E5C5B28, 0xEC000000292B5D20, 0);
  qword_1EBC2B5A0 = result;
  return result;
}

uint64_t sub_1BAD91714()
{
  v0 = sub_1BAD9C248();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAD9C208();
  v4 = sub_1BAD9C1F8();
  result = (*(v1 + 8))(v3, v0);
  qword_1EBC2B5A8 = v4;
  return result;
}

uint64_t NQMLConfiguration.Behavior.hashValue.getter()
{
  v1 = *v0;
  sub_1BAD9DB48();
  MEMORY[0x1BFB031C0](v1);
  return sub_1BAD9DB88();
}

uint64_t NQMLConfiguration.newline.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NQMLConfiguration.listItemBullet.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NQMLConfiguration.orderedListItemBulletFormat.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void __swiftcall NQMLConfiguration.withBehavior(_:)(JetUI::NQMLConfiguration *__return_ptr retstr, JetUI::NQMLConfiguration::Behavior a2)
{
  v3 = *a2;
  v4 = *(v2 + 32);
  v6 = *(v2 + 64);
  v11 = *(v2 + 48);
  v5 = v11;
  v12 = v6;
  v13 = *(v2 + 80);
  v8 = *(v2 + 16);
  v10[0] = *v2;
  v7 = v10[0];
  v10[1] = v8;
  v10[2] = v4;
  retstr->listItemBullet = v4;
  *&retstr->listItemStyle.super.isa = v5;
  *&retstr->orderedListItemBulletFormat._object = v6;
  retstr->newline = v7;
  *&retstr->font.super.isa = v8;
  retstr->behavior = v3;
  sub_1BAD3A8B4(v10, v9);
}

uint64_t sub_1BAD9198C()
{
  v1 = v0;
  v2 = sub_1BAD9C3B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-v7];
  v9 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  if (qword_1EDBA5D00 != -1)
  {
    swift_once();
  }

  sub_1BAD9D4F8();
  sub_1BAD7E614(v5);
  v10 = *(v3 + 8);
  v10(v8, v2);
  v11 = sub_1BAD9C398();
  v10(v5, v2);
  [v9 setLocale_];

  [v9 setNumberStyle_];
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v13 = [v9 stringFromNumber_];

  if (!v13)
  {
    v14 = objc_opt_self();
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v13 = [v14 localizedStringFromNumber:v15 numberStyle:1];
  }

  v16 = sub_1BAD9CF68();
  v18 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A2E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BAD9F5A0;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1BAD249E0();
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = sub_1BAD9CF88();

  return v20;
}

uint64_t sub_1BAD91C78()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BAD91CB0()
{
  v0 = sub_1BAD9CDC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAD9CDF8();
  __swift_allocate_value_buffer(v4, qword_1EBC2B5B0);
  __swift_project_value_buffer(v4, qword_1EBC2B5B0);
  if (qword_1EBC29C48 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EBC357D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1BAD9CDE8();
}

char *sub_1BAD91DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 80);
  *&v3[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_orderedListTracker] = 0;
  v6 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  *&v3[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_attributeStack] = MEMORY[0x1E69E7CC0];
  v3[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_didParseEverything] = 1;
  v7 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_foregroundColor;
  *&v3[v7] = [objc_opt_self() systemGrayColor];
  v8 = objc_allocWithZone(JUNQMLParser);
  v9 = sub_1BAD9CF38();

  v10 = [v8 initWithString:v9 behavior:v5 & 1];

  *&v3[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_parser] = v10;
  v11 = &v3[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration];
  v12 = *(a3 + 48);
  *(v11 + 2) = *(a3 + 32);
  *(v11 + 3) = v12;
  *(v11 + 4) = *(a3 + 64);
  v13 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 1) = v13;
  v11[80] = v5;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for NQMLStringGenerator();
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [*&v14[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_parser] setDelegate_];
  return v14;
}

uint64_t sub_1BAD91F78(void *a1)
{
  v3 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_attributeStack;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (!v5)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v3) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1BAD19270(0, 1, 1, v4);
      *(v1 + v3) = v4;
    }

    v33 = *(v4 + 16);
    v32 = *(v4 + 24);
    if (v33 >= v32 >> 1)
    {
      v4 = sub_1BAD19270((v32 > 1), v33 + 1, 1, v4);
    }

    *(v4 + 16) = v33 + 1;
    *(v4 + 8 * v33 + 32) = a1;
    *(v1 + v3) = v4;
    return swift_endAccess();
  }

  v35 = v3;
  v36 = v1;
  v6 = *(v4 + 8 * v5 + 24);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & a1[8];
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (!v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11;
LABEL_15:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    v4 = *(a1[6] + 8 * v16);
    sub_1BAD149E0(a1[7] + 32 * v16, v37);
    *&v38 = v4;
    sub_1BAD11FA4(v37, (&v38 + 8));
    v17 = v4;
    v14 = v12;
LABEL_16:
    v41[0] = v38;
    v41[1] = v39;
    v42 = v40;
    v18 = v38;
    if (!v38)
    {
      break;
    }

    sub_1BAD11FA4((v41 + 8), &v38);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    *&v37[0] = v6;
    v19 = sub_1BAD2E780(v18);
    v21 = v6[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_40;
    }

    v4 = v20;
    if (v6[3] >= v24)
    {
      if (v3)
      {
        goto LABEL_22;
      }

      v3 = v19;
      sub_1BAD21B0C();
      v19 = v3;
      v6 = *&v37[0];
      if ((v4 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_6:
      v4 = v6[7] + 32 * v19;
      __swift_destroy_boxed_opaque_existential_1(v4);
      sub_1BAD11FA4(&v38, v4);

      v11 = v14;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1BAD12820(v24, v3);
      v19 = sub_1BAD2E780(v18);
      if ((v4 & 1) != (v25 & 1))
      {
        type metadata accessor for Key(0);
        result = sub_1BAD9DAE8();
        __break(1u);
        return result;
      }

LABEL_22:
      v6 = *&v37[0];
      if (v4)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6[(v19 >> 6) + 8] |= 1 << v19;
      *(v6[6] + 8 * v19) = v18;
      sub_1BAD11FA4(&v38, (v6[7] + 32 * v19));
      v26 = v6[2];
      v23 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v23)
      {
        goto LABEL_41;
      }

      v6[2] = v27;
      v11 = v14;
      if (!v9)
      {
LABEL_8:
        if (v10 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v10;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            v9 = 0;
            v40 = 0;
            v38 = 0u;
            v39 = 0u;
            goto LABEL_16;
          }

          v9 = a1[v12 + 8];
          ++v11;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }
  }

  v3 = v35;
  v4 = v36;
  swift_beginAccess();
  a1 = *(v36 + v35);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *(v36 + v35) = a1;
  if (v28)
  {
    goto LABEL_30;
  }

LABEL_42:
  a1 = sub_1BAD19270(0, a1[2] + 1, 1, a1);
  *(v4 + v3) = a1;
LABEL_30:
  v30 = a1[2];
  v29 = a1[3];
  if (v30 >= v29 >> 1)
  {
    a1 = sub_1BAD19270((v29 > 1), v30 + 1, 1, a1);
  }

  a1[2] = v30 + 1;
  a1[v30 + 4] = v6;
  *(v4 + v3) = a1;
  return swift_endAccess();
}

void sub_1BAD9234C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator);
  v2 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_attributeStack;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    v3 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v4 = v1;

    v5 = sub_1BAD9CF38();
    type metadata accessor for Key(0);
    sub_1BAD947E8(&qword_1EDBA5D40, type metadata accessor for Key);
    v6 = sub_1BAD9CE88();

    v7 = [v3 initWithString:v5 attributes:v6];

    [v4 appendAttributedString_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BAD924A0()
{
  v1 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 8 * v3 + 24);
    if (*(v4 + 16))
    {
      v5 = v0;
      v6 = *MEMORY[0x1E69DB648];

      v7 = sub_1BAD2E780(v6);
      if (v8)
      {
        sub_1BAD149E0(*(v4 + 56) + 32 * v7, v12);

        sub_1BAD053C8(0, &qword_1EDBA58E0);
        if (swift_dynamicCast())
        {
          return v11;
        }
      }

      else
      {
      }

      v0 = v5;
    }
  }

  v10 = *(v0 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration + 16);

  return v10;
}

id sub_1BAD925C4(int a1)
{
  v2 = sub_1BAD924A0();
  v3 = [v2 fontDescriptor];
  v4 = [v3 symbolicTraits] | a1;
  v5 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = v5;
    [v2 pointSize];
    v8 = [objc_opt_self() fontWithDescriptor:v6 size:v7];

    return v8;
  }

  else
  {
    if (qword_1EBC29C90 != -1)
    {
      swift_once();
    }

    v10 = sub_1BAD9CDF8();
    __swift_project_value_buffer(v10, qword_1EBC2B5B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
    sub_1BAD9C898();
    *(swift_allocObject() + 16) = xmmword_1BADA0B30;
    sub_1BAD9C7E8();
    v13 = sub_1BAD053C8(0, &qword_1EDBA58E0);
    v12[0] = v2;
    v11 = v2;
    sub_1BAD9C878();
    sub_1BAD1A420(v12, &qword_1EBC2A120);
    sub_1BAD9C7E8();
    v13 = MEMORY[0x1E69E7668];
    LODWORD(v12[0]) = v4;
    sub_1BAD9C878();
    sub_1BAD1A420(v12, &qword_1EBC2A120);
    sub_1BAD9CC98();

    return v11;
  }
}

id sub_1BAD9287C()
{
  v0 = sub_1BAD925C4(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B670);
  inited = swift_initStackObject();
  v2 = MEMORY[0x1E69DB908];
  *(inited + 16) = xmmword_1BADA1240;
  v3 = *v2;
  *(inited + 32) = v3;
  v4 = *MEMORY[0x1E69DB900];
  *(inited + 40) = 6;
  *(inited + 48) = v4;
  *(inited + 56) = 0;
  v5 = v3;
  v6 = v4;
  v7 = sub_1BAD1FF34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B678);
  swift_arrayDestroy();
  v8 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B680);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_1BAD9F5A0;
  v10 = *MEMORY[0x1E69DB8B0];
  *(v9 + 32) = *MEMORY[0x1E69DB8B0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B688);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BAD9F5A0;
  *(v11 + 32) = v7;
  *(v9 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC2B690);
  *(v9 + 40) = v11;
  v12 = v10;
  sub_1BAD1F178(v9);
  swift_setDeallocating();
  sub_1BAD1A420(v9 + 32, &qword_1EBC2A3D0);
  type metadata accessor for AttributeName(0);
  sub_1BAD947E8(&qword_1EDBA61D0, type metadata accessor for AttributeName);
  v13 = sub_1BAD9CE88();

  v14 = [v8 fontDescriptorByAddingAttributes_];

  [v0 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  return v16;
}

id sub_1BAD93130()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NQMLStringGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BAD93240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BAD9CF38();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1BAD9C258();

    swift_willThrow();
  }

  return v6;
}

BOOL sub_1BAD933A8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1BAD9D7B8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_1BAD934C8()
{
  result = qword_1EBC2B5D8;
  if (!qword_1EBC2B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC2B5D8);
  }

  return result;
}

uint64_t sub_1BAD9351C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1BAD93564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BAD93600(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v21 = a2;
    v3 = sub_1BAD2E780(0x1F38EEB60);
    if (v4)
    {
      v5 = (*(a1 + 56) + 16 * v3);
      v7 = *v5;
      v6 = v5[1];

      if (!*(a1 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = [v21 fontName];
      v7 = sub_1BAD9CF68();
      v6 = v10;

      if (!*(a1 + 16))
      {
        goto LABEL_12;
      }
    }

    v11 = sub_1BAD2E780(0x1F38EEB80);
    if (v12)
    {
      v13 = (*(a1 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];
      v22[0] = 0;

      LOBYTE(v14) = sub_1BAD933A8(v14, v15);

      if (v14)
      {
        v16 = *v22;
        goto LABEL_13;
      }
    }

LABEL_12:
    [v21 pointSize];
    v16 = v17;
LABEL_13:
    v18 = sub_1BAD9CF38();
    v19 = [objc_opt_self() fontWithName:v18 size:v16];

    if (v19)
    {

      return v19;
    }

    else
    {
      if (qword_1EBC29C90 != -1)
      {
        swift_once();
      }

      v20 = sub_1BAD9CDF8();
      __swift_project_value_buffer(v20, qword_1EBC2B5B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
      sub_1BAD9C898();
      *(swift_allocObject() + 16) = xmmword_1BADA0B30;
      sub_1BAD9C7E8();
      v23 = MEMORY[0x1E69E6158];
      v22[0] = v7;
      v22[1] = v6;
      sub_1BAD9C878();
      sub_1BAD1A420(v22, &qword_1EBC2A120);
      sub_1BAD9C7E8();
      v23 = MEMORY[0x1E69E7DE0];
      *v22 = v16;
      sub_1BAD9C878();
      sub_1BAD1A420(v22, &qword_1EBC2A120);
      sub_1BAD9CCB8();

      return v21;
    }
  }

  return a2;
}

uint64_t sub_1BAD9397C()
{
  v1 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_1BAD93394(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v2[2] = v4 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BAD93A24()
{
  if (qword_1EBC29C90 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAD9CDF8();
  __swift_project_value_buffer(v1, qword_1EBC2B5B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
  sub_1BAD9C898();
  *(swift_allocObject() + 16) = xmmword_1BADA1240;
  sub_1BAD9C7E8();
  swift_getErrorValue();
  v5[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0);
  sub_1BAD9C888();
  sub_1BAD1A420(v5, &qword_1EBC2A120);
  sub_1BAD9CCB8();

  *(v0 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_didParseEverything) = 0;
  return result;
}

id sub_1BAD93C04(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator) beginEditing];
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v23 = sub_1BAD924A0();
        v7 = sub_1BAD93600(a2, v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
        inited = swift_initStackObject();
        v8 = inited;
        *(inited + 16) = xmmword_1BADA1240;
        v25 = MEMORY[0x1E69DB758];
        break;
      case 3:
        v26 = sub_1BAD924A0();
        v7 = sub_1BAD93600(a2, v26);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
        inited = swift_initStackObject();
        v8 = inited;
        *(inited + 16) = xmmword_1BADA1240;
        v25 = MEMORY[0x1E69DB6B8];
        break;
      case 4:
        v6 = sub_1BAD924A0();
        v7 = sub_1BAD93600(a2, v6);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
        v8 = swift_initStackObject();
        *(v8 + 16) = xmmword_1BADA1240;
        v9 = *MEMORY[0x1E69DB688];
        *(v8 + 32) = *MEMORY[0x1E69DB688];
        v10 = *(v2 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration + 24);
        v11 = sub_1BAD053C8(0, &qword_1EBC29A00);
        *(v8 + 40) = v10;
        v12 = *MEMORY[0x1E69DB648];
        *(v8 + 64) = v11;
        *(v8 + 72) = v12;
        *(v8 + 104) = sub_1BAD053C8(0, &qword_1EDBA58E0);
        *(v8 + 80) = v7;
        v13 = v9;
        v14 = v10;
        v15 = v12;
        goto LABEL_12;
      default:
        return result;
    }

    v27 = *v25;
    *(inited + 32) = *v25;
    v28 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v29 = v27;
    v30 = [v28 initWithInteger_];
    v31 = sub_1BAD053C8(0, &qword_1EBC299B0);
    *(v8 + 40) = v30;
    v32 = *MEMORY[0x1E69DB648];
    *(v8 + 64) = v31;
    *(v8 + 72) = v32;
    *(v8 + 104) = sub_1BAD053C8(0, &qword_1EDBA58E0);
    *(v8 + 80) = v7;
    v33 = v32;
LABEL_12:
    v21 = v7;
LABEL_14:
    v22 = sub_1BAD1FADC(v8);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3E0);
    swift_arrayDestroy();
    goto LABEL_15;
  }

  if (!a1)
  {
    v34 = sub_1BAD925C4(2);
    v35 = sub_1BAD93600(a2, v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1BADA1240;
    v36 = *MEMORY[0x1E69DB648];
    *(v8 + 32) = *MEMORY[0x1E69DB648];
    v37 = sub_1BAD053C8(0, &qword_1EDBA58E0);
    *(v8 + 40) = v35;
    v38 = *MEMORY[0x1E69DB650];
    *(v8 + 64) = v37;
    *(v8 + 72) = v38;
    v39 = *(v2 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_foregroundColor);
    *(v8 + 104) = sub_1BAD053C8(0, &qword_1EBC2B6A0);
    *(v8 + 80) = v39;
    v40 = v36;
    v21 = v35;
    v41 = v38;
    v42 = v39;
    goto LABEL_14;
  }

  if (a1 != 1)
  {
    return result;
  }

  v16 = sub_1BAD925C4(1);
  v17 = sub_1BAD93600(a2, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1BAD9F5A0;
  v19 = *MEMORY[0x1E69DB648];
  *(v18 + 32) = *MEMORY[0x1E69DB648];
  *(v18 + 64) = sub_1BAD053C8(0, &qword_1EDBA58E0);
  *(v18 + 40) = v17;
  v20 = v19;
  v21 = v17;
  v22 = sub_1BAD1FADC(v18);
  swift_setDeallocating();
  sub_1BAD1A420(v18 + 32, &qword_1EBC2A3E0);
LABEL_15:
  sub_1BAD91F78(v22);
}

uint64_t sub_1BAD94060(uint64_t a1)
{
  if (a1 == 4)
  {
    sub_1BAD9234C();
  }

  v2 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_attributeStack;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3[2])
  {
    __break(1u);
LABEL_8:
    result = sub_1BAD93394(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v3[2];
  if (v5)
  {
LABEL_6:
    v3[2] = v5 - 1;
    *(v1 + v2) = v3;
    swift_endAccess();

    return [*(v1 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator) endEditing];
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_1BAD9413C()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696AD60]);
  v2 = sub_1BAD9CF38();
  v3 = [v1 initWithString_];

  v4 = [*(v0 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator) mutableString];
  if (qword_1EBC29C88 != -1)
  {
    swift_once();
  }

  v5 = qword_1EBC2B5A8;
  if ([v4 length] < 1)
  {
  }

  else
  {
    result = [v4 length];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      return result;
    }

    v7 = [v5 characterIsMember_];

    if (v7)
    {
      sub_1BAD51CE8(v5);
    }
  }

  if (qword_1EBC29C80 != -1)
  {
    swift_once();
  }

  v8 = qword_1EBC2B5A0;
  if (qword_1EBC2B5A0)
  {
    v9 = [v3 length];
    v10 = sub_1BAD9CF38();
    [v8 replaceMatchesInString:v3 options:0 range:0 withTemplate:{v9, v10}];
  }

  sub_1BAD9CF68();
  sub_1BAD9234C();
}

id sub_1BAD94330(uint64_t a1)
{
  result = [*(v1 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator) beginEditing];
  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BAD9F5A0;
    v10 = *MEMORY[0x1E69DB688];
    *(inited + 32) = *MEMORY[0x1E69DB688];
    v11 = inited + 32;
    v12 = (v1 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration + 48);
  }

  else
  {
    if (a1)
    {
      return result;
    }

    v4 = v1 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration;
    v6 = *(v1 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration + 56);
    v5 = *(v1 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration + 64);
    type metadata accessor for NQMLOrderedListTracker();
    v7 = swift_allocObject();
    v7[2] = 1;
    v7[3] = v6;
    v7[4] = v5;
    *(v1 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_orderedListTracker) = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
    inited = swift_initStackObject();
    v9 = MEMORY[0x1E69DB688];
    *(inited + 16) = xmmword_1BAD9F5A0;
    v10 = *v9;
    *(inited + 32) = *v9;
    v11 = inited + 32;
    v12 = (v4 + 72);
  }

  v13 = *v12;
  *(inited + 64) = sub_1BAD053C8(0, &qword_1EBC29A00);
  *(inited + 40) = v13;
  v14 = v10;
  v15 = v13;
  v16 = sub_1BAD1FADC(inited);
  swift_setDeallocating();
  sub_1BAD1A420(v11, &qword_1EBC2A3E0);
  sub_1BAD91F78(v16);
}

void sub_1BAD944DC()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_orderedListTracker))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BADA1240;
    v3 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];

    v4 = v3;
    v5 = sub_1BAD9287C();
    v6 = sub_1BAD053C8(0, &qword_1EDBA58E0);
    *(inited + 40) = v5;
    v7 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v6;
    *(inited + 72) = v7;
    v8 = *(v1 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_foregroundColor);
    *(inited + 104) = sub_1BAD053C8(0, &qword_1EBC2B6A0);
    *(inited + 80) = v8;
    v9 = v7;
    v10 = v8;
    v11 = sub_1BAD1FADC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3E0);
    swift_arrayDestroy();
    sub_1BAD91F78(v11);

    sub_1BAD9198C();
    sub_1BAD9234C();

    v12 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_attributeStack;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (v13[2])
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = v13[2];
        if (v14)
        {
LABEL_5:
          v13[2] = v14 - 1;
          *(v1 + v12) = v13;
          swift_endAccess();

          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    v13 = sub_1BAD93394(v13);
    v14 = v13[2];
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return;
  }

  sub_1BAD9234C();
}

uint64_t sub_1BAD94700()
{
  sub_1BAD9234C();
  v1 = OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_attributeStack;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_1BAD93394(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v2[2] = v4 - 1;
    *(v0 + v1) = v2;
    swift_endAccess();

    [*(v0 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_accumulator) endEditing];
    *(v0 + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_orderedListTracker) = 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BAD947E8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_1BAD94830@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

id DynamicTextAppearance.init()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x1E69DDCF8];
  a1[3] = &type metadata for FontSource;
  a1[4] = &protocol witness table for FontSource;
  v2 = swift_allocObject();
  *a1 = v2;
  *(v2 + 16) = v4;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  a1[5] = 4;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;

  return v4;
}

uint64_t DynamicTextAppearance.withNumberOfLines(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BAD31ED4(v2, a2);
  *(a2 + 56) = a1;
  return result;
}

uint64_t DynamicTextAppearance.withLineBreakMode(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BAD31ED4(v2, a2);
  *(a2 + 48) = a1;
  return result;
}

__n128 DynamicTextAppearance.textAppearance(compatibleWith:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] compatibleWithTraitCollection:0];
  *a2 = v6;
  a2[1] = 4;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = (*(v8 + 8))(a1, v7, v8);

  *a2 = v9;
  *(a2 + 1) = *(v3 + 40);
  result = *(v3 + 56);
  *(a2 + 3) = result;
  return result;
}

uint64_t DynamicTextAppearance.customTextStyle.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1BAD0B40C(a1, v1);
}

uint64_t *DynamicTextAppearance.withCustomTextStyle(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BAD31ED4(v2, a2);

  return __swift_assign_boxed_opaque_existential_1(a2, a1);
}

uint64_t DynamicTextAppearance.withFontUseCase(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  sub_1BAD31ED4(v2, a2);
  v13 = &type metadata for FontSource;
  v14 = &protocol witness table for FontSource;
  v10 = swift_allocObject();
  *&v12 = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9 | 0x80;
  sub_1BAD1120C(v4, v5, v6, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return sub_1BAD0B40C(&v12, a2);
}

uint64_t DynamicTextAppearance.withTextStyle(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BAD31ED4(v2, a2);
  v9 = &type metadata for FontSource;
  v10 = &protocol witness table for FontSource;
  v5 = swift_allocObject();
  *&v8 = v5;
  *(v5 + 16) = a1;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0;
  v6 = a1;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return sub_1BAD0B40C(&v8, a2);
}

uint64_t DynamicTextAppearance.withTextAlignment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BAD31ED4(v2, a2);
  *(a2 + 40) = a1;
  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t DynamicTextAppearance.withLineSpacing(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BAD31ED4(v2, a2);
  *(a2 + 64) = a1;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BAD95028(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1BAD95070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

JUMeasurements __swiftcall JUMeasurements.init(representing:)(CGSize representing)
{
  v1 = 0.0;
  height = representing.height;
  result.var1 = representing.height;
  result.var0 = representing.width;
  result.var3 = v1;
  result.var2 = height;
  return result;
}

Swift::Void __swiftcall JUMeasurements.round()()
{
  *v0 = vrndpq_f64(*v0);
  v1 = floor(v0[1].f64[1]);
  v0[1].f64[0] = ceil(v0[1].f64[0]);
  v0[1].f64[1] = v1;
}

JUMeasurements __swiftcall JUMeasurements.rounded()()
{
  v4 = ceil(v0);
  v5 = ceil(v1);
  v6 = ceil(v2);
  v7 = floor(v3);
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

uint64_t Measurable.placeable.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v11(v10, v4, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  if (swift_dynamicCast())
  {
    sub_1BAD0B40C(v23, a3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B6C0);
    if (swift_dynamicCast())
    {
      sub_1BAD0B40C(v23, v20);
      v12 = v21;
      v13 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v13 + 16))(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B6C8);
      if (swift_dynamicCast())
      {
        a3[3] = &type metadata for _MeasurableLayoutPlaceable;
        a3[4] = &protocol witness table for _MeasurableLayoutPlaceable;
        v14 = swift_allocObject();
        *a3 = v14;
        sub_1BAD566E8(v23, (v14 + 16));
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B6D0);
        if (swift_dynamicCast())
        {
          a3[3] = &type metadata for _LayoutViewPlaceable;
          a3[4] = &protocol witness table for _LayoutViewPlaceable;
          v15 = swift_allocObject();
          *a3 = v15;
          sub_1BAD0B40C(v23, v15 + 16);
        }

        else
        {
          a3[3] = &type metadata for _MeasurablePlaceable;
          a3[4] = &protocol witness table for _MeasurablePlaceable;
          v16 = swift_allocObject();
          *a3 = v16;
          v16[5] = a1;
          v16[6] = a2;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16 + 2);
          v11(boxed_opaque_existential_0, v4, a1);
        }
      }
    }
  }

  return (*(v8 + 8))(v10, a1);
}

JUMeasurements __swiftcall _MeasurableLayoutPlaceable.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  v6 = v2[3];
  v7 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BAD9F590;
  *(v8 + 32) = with;
  sub_1BAD1B4EC();
  v9 = with.super.isa;
  v10 = sub_1BAD9D168();

  v11 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v12 = type metadata accessor for TraitEnvironmentPlaceholder();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v11;
  v26.receiver = v13;
  v26.super_class = v12;
  v14 = objc_msgSendSuper2(&v26, sel_init);
  v15 = (*(v7 + 8))(v14, v6, v7, width, height);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.var3 = v25;
  result.var2 = v24;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

Swift::Void __swiftcall _MeasurableLayoutPlaceable.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v8 = v2[3];
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BAD9F590;
  *(v10 + 32) = with;
  sub_1BAD1B4EC();
  v11 = with.super.isa;
  v12 = sub_1BAD9D168();

  v13 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v14 = type metadata accessor for TraitEnvironmentPlaceholder();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v13;
  v17.receiver = v15;
  v17.super_class = v14;
  v16 = objc_msgSendSuper2(&v17, sel_init);
  (*(v9 + 8))(v18, v16, v8, v9, x, y, width, height);
}

uint64_t _MeasurableLayoutPlaceable.description.getter()
{
  sub_1BAD5670C(v0, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B6C8);
  return sub_1BAD9CFB8();
}

uint64_t sub_1BAD957A0()
{
  sub_1BAD5670C(v0, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B6C8);
  return sub_1BAD9CFB8();
}

JUMeasurements __swiftcall _LayoutViewPlaceable.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BAD9F590;
  *(v8 + 32) = with;
  sub_1BAD1B4EC();
  v9 = with.super.isa;
  v10 = sub_1BAD9D168();

  v11 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v12 = type metadata accessor for TraitEnvironmentPlaceholder();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v11;
  v26.receiver = v13;
  v26.super_class = v12;
  v14 = objc_msgSendSuper2(&v26, sel_init);
  v15 = (*(*(v7 + 8) + 8))(v14, v6, width, height);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.var3 = v25;
  result.var2 = v24;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

Swift::Void __swiftcall _LayoutViewPlaceable.place(at:with:)(__C::CGRect at, UITraitCollection with)
{
  height = at.size.height;
  width = at.size.width;
  y = at.origin.y;
  x = at.origin.x;
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  (*(v8 + 24))(v7, v8, x, y, width, height);
}

uint64_t sub_1BAD95A10(double a1, double a2, double a3, double a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  return (*(v10 + 24))(v9, v10, a1, a2, a3, a4);
}

JUMeasurements __swiftcall _MeasurablePlaceable.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BAD9F590;
  *(v8 + 32) = with;
  sub_1BAD1B4EC();
  v9 = with.super.isa;
  v10 = sub_1BAD9D168();

  v11 = [objc_opt_self() traitCollectionWithTraitsFromCollections_];

  v12 = type metadata accessor for TraitEnvironmentPlaceholder();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC5JetUI27TraitEnvironmentPlaceholder_traitCollection] = v11;
  v26.receiver = v13;
  v26.super_class = v12;
  v14 = objc_msgSendSuper2(&v26, sel_init);
  v15 = (*(v7 + 8))(v14, v6, v7, width, height);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.var3 = v25;
  result.var2 = v24;
  result.var1 = v23;
  result.var0 = v22;
  return result;
}

uint64_t sub_1BAD95C2C(uint64_t *a1)
{
  sub_1BAD14A3C(v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  return sub_1BAD9CFB8();
}

uint64_t sub_1BAD95C9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1BAD14A3C(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  return sub_1BAD9CFB8();
}

id sub_1BAD95D30()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  qword_1EBC29B80 = result;
  return result;
}

__n128 ImagePlaceholder.init(_:with:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

double _s5JetUI16ImagePlaceholderV7measure5toFit4withSo14JUMeasurementsVSo6CGSizeV_So17UITraitCollectionCtF_0(double a1, double a2)
{
  v5 = sub_1BAD9C6D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  sub_1BAD5FED4();
  *v8 = sub_1BAD9D4D8();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v12 = sub_1BAD9C6E8();
  (*(v6 + 8))(v8, v5);
  if (v12)
  {
    if (qword_1EBC29B78 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = qword_1EBC29B80;
  [qword_1EBC29B80 setContentMode_];
  [v13 setPreferredSymbolConfiguration_];
  [v13 setImage_];
  [v13 sizeThatFits_];
  v15 = v14;
  v16 = [v13 image];
  if (v16)
  {
    v17 = v16;
    sub_1BAD9D548();
  }

  [v13 setContentMode_];
  [v13 setPreferredSymbolConfiguration_];
  [v13 setImage_];
  return v15;
}

uint64_t sub_1BAD95FD8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1BAD96034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t FontUseCase.hashValue.getter()
{
  sub_1BAD9DB48();
  FontUseCase.hash(into:)();
  return sub_1BAD9DB88();
}

UIFontDescriptor __swiftcall FontUseCase.makeFontDescriptor(compatibleWith:)(UITraitCollection compatibleWith)
{
  v3 = sub_1BAD9C858();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  if (*(v1 + 40) <= 1u)
  {
    if (*(v1 + 40))
    {
      v23 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:compatibleWith.super.isa];
      [v23 pointSize];
      v25 = _sSo16UIFontDescriptorC5JetUIE010systemFontB06ofSize6weightAB12CoreGraphics7CGFloatV_So0A6WeightatFZ_0(v24, v6);

      return v25;
    }

    v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:compatibleWith.super.isa];
    v11 = v10;
    if (!LODWORD(v6))
    {
      return v11;
    }

    v12 = [v10 fontDescriptorWithSymbolicTraits_];
    if (!v12)
    {
      if (qword_1EBC29C50 != -1)
      {
        swift_once();
      }

      v39 = sub_1BAD9CDF8();
      __swift_project_value_buffer(v39, qword_1EBC357E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
      sub_1BAD9C898();
      *(swift_allocObject() + 16) = xmmword_1BAD9F5A0;
      sub_1BAD9C848();
      sub_1BAD9C838();
      v42 = &type metadata for FontUseCase;
      v36 = swift_allocObject();
      v41[0] = v36;
      *(v36 + 16) = v5;
      *(v36 + 24) = v6;
      *(v36 + 32) = v8;
      *(v36 + 40) = v7;
      *(v36 + 48) = v9;
      *(v36 + 56) = 0;
      v37 = v5;
      sub_1BAD9C808();
      sub_1BAD1A420(v41, &qword_1EBC2A120);
      sub_1BAD9C838();
      sub_1BAD9C868();
      sub_1BAD9CCA8();

      return v11;
    }

    v13.super.isa = v12;
    goto LABEL_17;
  }

  if (*(v1 + 40) == 2)
  {
    v14 = *(v1 + 32);
    v15 = [(objc_class *)compatibleWith.super.isa preferredContentSizeCategory];
    v16 = sub_1BAD9CF68();
    v18 = v17;
    if (v16 == sub_1BAD9CF68() && v18 == v19)
    {
    }

    else
    {
      v21 = sub_1BAD9DA98();

      if ((v21 & 1) == 0)
      {
        v22 = [(objc_class *)compatibleWith.super.isa preferredContentSizeCategory];
LABEL_20:
        v33 = v22;
        v34 = v8();

        v35 = _sSo16UIFontDescriptorC5JetUIE010systemFontB06ofSize6weightAB12CoreGraphics7CGFloatV_So0A6WeightatFZ_0(v34, v14);
        return v35;
      }
    }

    v30 = [objc_opt_self() system];
    v31 = [v30 preferredContentSizeCategory];

    v32 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v22 = [v32 preferredContentSizeCategory];

    goto LABEL_20;
  }

  v27 = (v8)(v4);
  v28 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v27 compatibleWithTraitCollection:compatibleWith.super.isa];
  v11 = v28;
  if (!v9)
  {
LABEL_27:

    return v11;
  }

  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (!v29)
  {
    if (qword_1EBC29C50 != -1)
    {
      swift_once();
    }

    v40 = sub_1BAD9CDF8();
    __swift_project_value_buffer(v40, qword_1EBC357E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
    sub_1BAD9C898();
    *(swift_allocObject() + 16) = xmmword_1BAD9F5A0;
    sub_1BAD9C848();
    sub_1BAD9C838();
    v42 = &type metadata for FontUseCase;
    v38 = swift_allocObject();
    v41[0] = v38;
    *(v38 + 16) = v5;
    *(v38 + 24) = v6;
    *(v38 + 32) = v8;
    *(v38 + 40) = v7;
    *(v38 + 48) = v9;
    *(v38 + 56) = 3;

    sub_1BAD9C808();
    sub_1BAD1A420(v41, &qword_1EBC2A120);
    sub_1BAD9C838();
    sub_1BAD9C868();
    sub_1BAD9CCA8();

    goto LABEL_27;
  }

  v13.super.isa = v29;

LABEL_17:
  return v13;
}

uint64_t FontUseCase.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (v2 <= 1)
  {
    if (*(v0 + 40))
    {
      MEMORY[0x1BFB031C0](1);
      v7 = JetFontTextStyleFastHashValue(v1);
      MEMORY[0x1BFB031C0](v7);
      v8 = sub_1BAD9D328();
      return MEMORY[0x1BFB031C0](v8);
    }

    MEMORY[0x1BFB031C0](0);
    v3 = JetFontTextStyleFastHashValue(v1);
    MEMORY[0x1BFB031C0](v3);
    return sub_1BAD9DB68();
  }

  v4 = v0[4];
  if (v2 != 2)
  {
    MEMORY[0x1BFB031C0](3);
    sub_1BAD9D018();
    return sub_1BAD9DB68();
  }

  MEMORY[0x1BFB031C0](2);
  sub_1BAD9D018();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1BFB031E0](v5);
}

uint64_t sub_1BAD9686C()
{
  sub_1BAD9DB48();
  FontUseCase.hash(into:)();
  return sub_1BAD9DB88();
}

uint64_t sub_1BAD968CC()
{
  sub_1BAD9DB48();
  FontUseCase.hash(into:)();
  return sub_1BAD9DB88();
}

BOOL _s5JetUI11FontUseCaseO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v38[0] = *a1;
  v38[1] = v2;
  v38[2] = v5;
  v38[3] = v4;
  v38[4] = v6;
  v39 = v7;
  v40 = v9;
  v41 = v8;
  v42 = v10;
  v43 = v11;
  v44 = v12;
  v45 = v13;
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v13 == 3)
      {
        if (v3 == v9 && v2 == v8)
        {
          sub_1BAD1120C(v3, v2, v10, v11, v12, 3u);
          sub_1BAD1120C(v3, v2, v5, v4, v6, 3u);
          sub_1BAD1A420(v38, &qword_1EBC2B6D8);
        }

        else
        {
          v28 = v10;
          v29 = v11;
          v37 = sub_1BAD9DA98();
          sub_1BAD1120C(v9, v8, v28, v29, v12, 3u);
          sub_1BAD1120C(v3, v2, v5, v4, v6, 3u);
          sub_1BAD1A420(v38, &qword_1EBC2B6D8);
          if ((v37 & 1) == 0)
          {
            return 0;
          }
        }

        return v6 == v12;
      }

      goto LABEL_20;
    }

    if (v13 != 2)
    {
LABEL_20:
      sub_1BAD1120C(v9, v8, v10, v11, v12, v13);
      sub_1BAD1120C(v3, v2, v5, v4, v6, v7);
      sub_1BAD1A420(v38, &qword_1EBC2B6D8);
      return 0;
    }

    if (v3 == v9 && v2 == v8)
    {
      sub_1BAD1120C(v3, v2, v10, v11, v12, 2u);
      sub_1BAD1120C(v3, v2, v5, v4, v6, 2u);
      sub_1BAD1A420(v38, &qword_1EBC2B6D8);
    }

    else
    {
      v23 = v10;
      v24 = v11;
      v36 = sub_1BAD9DA98();
      sub_1BAD1120C(v9, v8, v23, v24, v12, 2u);
      sub_1BAD1120C(v3, v2, v5, v4, v6, 2u);
      sub_1BAD1A420(v38, &qword_1EBC2B6D8);
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }

    v25 = *&v6;
    v26 = *&v12;
    return v25 == v26;
  }

  if (v7)
  {
    if (v13 != 1)
    {
      goto LABEL_20;
    }

    v33 = v10;
    v35 = v11;
    v18 = sub_1BAD9CF68();
    v20 = v19;
    if (v18 == sub_1BAD9CF68() && v20 == v21)
    {
      sub_1BAD1120C(v9, v8, v33, v35, v12, 1u);
      sub_1BAD1120C(v3, v2, v5, v4, v6, 1u);

      sub_1BAD1A420(v38, &qword_1EBC2B6D8);
    }

    else
    {
      v30 = sub_1BAD9DA98();
      sub_1BAD1120C(v9, v8, v33, v35, v12, 1u);
      sub_1BAD1120C(v3, v2, v5, v4, v6, 1u);

      sub_1BAD1A420(v38, &qword_1EBC2B6D8);
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    v25 = *&v2;
    v26 = *&v8;
    return v25 == v26;
  }

  if (v13)
  {
    goto LABEL_20;
  }

  v32 = v10;
  v34 = v11;
  v14 = sub_1BAD9CF68();
  v16 = v15;
  if (v14 != sub_1BAD9CF68() || v16 != v17)
  {
    v31 = sub_1BAD9DA98();
    sub_1BAD1120C(v9, v8, v32, v34, v12, 0);
    sub_1BAD1120C(v3, v2, v5, v4, v6, 0);

    sub_1BAD1A420(v38, &qword_1EBC2B6D8);
    if (v31)
    {
      return v2 == v8;
    }

    return 0;
  }

  sub_1BAD1120C(v9, v8, v32, v34, v12, 0);
  sub_1BAD1120C(v3, v2, v5, v4, v6, 0);

  sub_1BAD1A420(v38, &qword_1EBC2B6D8);
  return v2 == v8;
}

unint64_t sub_1BAD96E38()
{
  result = qword_1EDBA5B48;
  if (!qword_1EDBA5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA5B48);
  }

  return result;
}

uint64_t sub_1BAD96E8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1BAD96ED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t StaticDimension.init(_:scaledLike:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB0);
  v5 = swift_allocObject();
  result = sub_1BAD0B40C(a1, v5 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t StaticDimension.init(constant:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v13 = &type metadata for FontSource;
  v14 = &protocol witness table for FontSource;
  v6 = swift_allocObject();
  *&v12 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v9;
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  *a2 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB0);
  v10 = swift_allocObject();
  result = sub_1BAD0B40C(&v12, v10 + 16);
  *(a2 + 8) = v10;
  return result;
}

uint64_t StaticDimension.value(compatibleWith:rounded:)(void *a1, uint64_t a2)
{
  v5 = sub_1BAD9DA68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v10 = *(v2 + 1);
  swift_beginAccess();
  sub_1BAD14A3C(v10 + 16, v17);
  v11 = v18;
  v12 = v19;
  v13 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v14 = sub_1BAD42054(v13, a1, v11, v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v17);
  *v17 = v14;
  (*(v6 + 16))(v8, a2, v5);
  result = (*(v6 + 88))(v8, v5);
  if (result != *MEMORY[0x1E69E7038] && result != *MEMORY[0x1E69E7030] && result != *MEMORY[0x1E69E7040] && result != *MEMORY[0x1E69E7048] && result != *MEMORY[0x1E69E7020] && result != *MEMORY[0x1E69E7028])
  {
    sub_1BAD9D318();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double StaticDimension.rawValue(in:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  swift_beginAccess();
  sub_1BAD14A3C(v4 + 16, v13);
  v5 = [a1 traitCollection];
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  CustomTextStyle.scalingValues(compatibleWith:)(v5, v6, v7);
  v9 = v8;
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11 * (v3 / v9);
}

UIEdgeInsets __swiftcall StaticDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v3 = *(v1 + 8);
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v18);
  v4 = v19;
  v5 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v6 = (*(v5 + 8))(compatibleWith.super.isa, v4, v5);
  v7 = UIFont.languageAwareOutsets.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  __swift_destroy_boxed_opaque_existential_1(v18);
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

uint64_t StaticDimension.description.getter()
{
  v1 = *(v0 + 8);
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1BAD9D7E8();
  v5 = 0;
  v6 = 0xE000000000000000;
  MEMORY[0x1BFB026B0](0xD00000000000001ELL, 0x80000001BADAB080);
  v2 = sub_1BAD9D308();
  MEMORY[0x1BFB026B0](v2);

  MEMORY[0x1BFB026B0](0x745374786574202CLL, 0xED0000203A656C79);
  swift_beginAccess();
  sub_1BAD14A3C(v1 + 16, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB8);
  sub_1BAD9D8A8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  MEMORY[0x1BFB026B0](41, 0xE100000000000000);
  return v5;
}

double sub_1BAD975A0(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  swift_beginAccess();
  sub_1BAD14A3C(v4 + 16, v13);
  v5 = [a1 traitCollection];
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  CustomTextStyle.scalingValues(compatibleWith:)(v5, v6, v7);
  v9 = v8;
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v11 * (v3 / v9);
}

double sub_1BAD9766C(uint64_t a1)
{
  v3 = *(v1 + 8);
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v6 = (*(v5 + 8))(a1, v4, v5);
  v7 = UIFont.languageAwareOutsets.getter();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

uint64_t StaticDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  swift_beginAccess();
  sub_1BAD14A3C(v3 + 16, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB8);
  result = swift_dynamicCast();
  if (result)
  {
    *a1 = v5;
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
  }

  else
  {
    sub_1BAD9D7E8();
    sub_1BAD67344(v3);
    MEMORY[0x1BFB026B0](0xD000000000000023, 0x80000001BADAB050);
    result = sub_1BAD9D8B8();
    __break(1u);
  }

  return result;
}

uint64_t _s5JetUI15StaticDimensionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    v4 = 0;
    return v4 & 1;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  swift_beginAccess();
  sub_1BAD14A3C(v2 + 16, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AFB8);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    sub_1BAD14A3C(v3 + 16, v12);
    if (swift_dynamicCast())
    {
      v4 = _s5JetUI10FontSourceO2eeoiySbAC_ACtFZ_0(&v13, &v6);
      sub_1BAD32580(v6, v7, v8, v9, v10, v11);
      sub_1BAD32580(v13, v14, v15, v16, v17, v18);
      return v4 & 1;
    }

    v6 = 0;
    v7 = 0xE000000000000000;
    sub_1BAD9D7E8();
    sub_1BAD67344(v3);
    MEMORY[0x1BFB026B0](0xD000000000000023, 0x80000001BADAB050);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1BAD9D7E8();
    sub_1BAD67344(v2);
    MEMORY[0x1BFB026B0](0xD000000000000023, 0x80000001BADAB050);
  }

  result = sub_1BAD9D8B8();
  __break(1u);
  return result;
}

uint64_t sub_1BAD97ABC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1BFB02E80](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1BAD9D8D8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void static ViewWillDisappearReason.inferred(for:)(void *a1)
{
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 viewControllers];
    sub_1BAD97D0C();
    v5 = sub_1BAD9D178();

    v8 = a1;
    MEMORY[0x1EEE9AC00](v6);
    v7[2] = &v8;
    LOBYTE(v4) = sub_1BAD97ABC(sub_1BAD97D58, v7, v5);

    if ((v4 & 1) == 0)
    {
      sub_1BAD9CC28();

      return;
    }
  }

  if ([a1 isBeingDismissed])
  {
    sub_1BAD9CC18();
  }

  else
  {
    sub_1BAD9CC08();
  }
}

unint64_t sub_1BAD97D0C()
{
  result = qword_1EDBA5D88;
  if (!qword_1EDBA5D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA5D88);
  }

  return result;
}

uint64_t CollectionContent.observeReloadTriggers<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = *v5;
  v18[2] = a1;
  swift_getAssociatedTypeWitness();
  v10 = sub_1BAD9CAF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - v12;
  v14 = sub_1BAD053C8(0, &qword_1EDBA6090);
  v15 = sub_1BAD9D4D8();
  v19[3] = v14;
  v19[4] = MEMORY[0x1E69AB720];
  v19[0] = v15;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  sub_1BAD9C998();

  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void (*sub_1BAD97F74(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 32);
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = v4;
  *(v3 + 48) = a1;

  return sub_1BAD98E28;
}

void sub_1BAD97FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v90 = a1;
  v91 = a4;
  v7 = sub_1BAD9C978();
  v8 = sub_1BAD9C978();
  v93[0] = v7;
  v93[1] = v8;
  v93[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v64 = sub_1BAD9C558();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - v9;
  v10 = sub_1BAD9C858();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BAD9D598();
  *&v80 = *(v75 - 8);
  v12 = MEMORY[0x1EEE9AC00](v75);
  v82 = &v62 - v13;
  v77 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v62 - v16;
  v88 = sub_1BAD9C408();
  v76 = *(v88 - 8);
  v17 = MEMORY[0x1EEE9AC00](v88);
  v81 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v62 - v20;
  v21 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BAD9C6D8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BAD053C8(0, &qword_1EDBA6090);
  *v27 = sub_1BAD9D4D8();
  (*(v25 + 104))(v27, *MEMORY[0x1E69E8020], v24);
  v28 = sub_1BAD9C6E8();
  v30 = *(v25 + 8);
  v29 = v25 + 8;
  v30(v27, v24);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    v32 = sub_1BAD9D8D8();
    if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_4;
  }

  (*(v21 + 16))(v23, v90, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = sub_1BAD9D3B8();
  v92 = sub_1BAD9CE58();
  v86 = *(v5 + 32);
  v31 = [v86 visibleCells];
  sub_1BAD053C8(0, &qword_1EBC2B6E8);
  v29 = sub_1BAD9D178();

  v85 = v8;
  v87 = v5;
  if (v29 >> 62)
  {
    goto LABEL_27;
  }

  v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_28;
  }

LABEL_4:
  if (v32 < 1)
  {
    __break(1u);
    return;
  }

  v33 = 0;
  v79 = (v76 + 32);
  v78 = (v77 + 6);
  v70 = (v77 + 4);
  v69 = (v77 + 2);
  v68 = v77 + 1;
  v77 = (v76 + 8);
  v67 = (v80 + 8);
  v66 = ": No index path found for ";
  v65 = (v76 + 16);
  v71 = "ttributedString16";
  v80 = xmmword_1BAD9F5A0;
  do
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1BFB02E80](v33, v29);
    }

    else
    {
      v34 = *(v29 + 8 * v33 + 32);
    }

    v35 = v34;
    swift_getObjectType();
    v36 = swift_conformsToProtocol2();
    if (v36 && v35)
    {
      v37 = v36;
      ObjectType = swift_getObjectType();
      v39 = *(v37 + 8);
      v40 = v35;
      v41 = v39(ObjectType, v37);
      v42 = sub_1BAD9D738();
      v43 = sub_1BAD9913C(v42, v41);

      if (*(v43 + 16))
      {
        v44 = (*(v37 + 16))(v43, ObjectType, v37);

        v45 = v88;
        if (v44)
        {
        }

        else
        {
          v46 = [v86 indexPathForCell_];
          if (v46)
          {
            v47 = v46;

            v48 = v81;
            sub_1BAD9C3D8();

            v49 = v84;
            (*v79)(v84, v48, v45);
            v50 = v82;
            CollectionContent.item(for:)();
            v51 = v50;
            v52 = v50;
            v53 = v85;
            if ((*v78)(v52, 1, v85) == 1)
            {
              (*v67)(v51, v75);
              if (qword_1EBC29C50 != -1)
              {
                swift_once();
              }

              v76 = sub_1BAD9CDF8();
              v72 = __swift_project_value_buffer(v76, qword_1EBC357E8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
              sub_1BAD9C898();
              *(swift_allocObject() + 16) = v80;
              sub_1BAD9C848();
              sub_1BAD9C838();
              sub_1BAD9C818();
              sub_1BAD9C838();
              WitnessTable = v45;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v93);
              v55 = v84;
              (*v65)(boxed_opaque_existential_0, v84, v45);
              sub_1BAD9C808();
              sub_1BAD05470(v93);
              sub_1BAD9C838();
              sub_1BAD9C868();
              sub_1BAD9CCC8();

              (*v77)(v55, v45);
            }

            else
            {
              v58 = v73;
              (*v70)(v73, v51, v53);
              (*v69)(v74, v58, v53);
              sub_1BAD9D278();
              sub_1BAD9D228();

              (*v68)(v58, v53);
              (*v77)(v49, v88);
            }
          }

          else
          {
            if (qword_1EBC29C50 != -1)
            {
              swift_once();
            }

            v56 = sub_1BAD9CDF8();
            v76 = __swift_project_value_buffer(v56, qword_1EBC357E8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC29FF0);
            sub_1BAD9C898();
            *(swift_allocObject() + 16) = v80;
            sub_1BAD9C848();
            sub_1BAD9C838();
            sub_1BAD9C818();
            sub_1BAD9C838();
            v57 = v40;
            sub_1BAD9C818();

            sub_1BAD9C838();
            sub_1BAD9C868();
            sub_1BAD9CCC8();
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }

    ++v33;
  }

  while (v32 != v33);
LABEL_28:

  v93[0] = v92;
  sub_1BAD9D278();
  swift_getWitnessTable();
  if (sub_1BAD9D428())
  {
  }

  else
  {
    v59 = v62;
    v60 = v87;
    CollectionContent.snapshot()();
    v61 = v64;
    sub_1BAD9C4D8();

    swift_beginAccess();
    CollectionContent.apply(_:animatingDifferences:completion:)(v59, *(v60 + 41), 0, 0);
    (*(v63 + 8))(v59, v61);
  }
}

uint64_t CollectionContent.observeReloadTriggers(publishedIn:)()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B6E0);
  v2 = sub_1BAD9CA98();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_1BAD14A3C(v4, v8);
      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v6 + 8))(v0, *(v1 + 80), *(v1 + 88), v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v8);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

void sub_1BAD98E28(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1BAD97FE4(a1, AssociatedTypeWitness, v3, v4);
}

void *sub_1BAD98E88(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1BAD99300(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1BAD98F18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2B6F0);
  result = sub_1BAD9D798();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_1BAD6E7C0(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = sub_1BAD9D748();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BAD9913C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1BAD99300(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1BAD98E88(v11, v6, a2, a1);

    MEMORY[0x1BFB03CC0](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_1BAD99300(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v41 = result;
  v6 = *(a3 + 16);
  v7 = *(a4 + 16);
  v52 = a3;
  if (v7 >= v6)
  {
LABEL_23:
    v44 = 0;
    v25 = 0;
    v26 = v5 + 56;
    v27 = 1 << *(v5 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v5 + 56);
    v30 = (v27 + 63) >> 6;
    v31 = a4 + 56;
    while (v29)
    {
      v32 = __clz(__rbit64(v29));
      v46 = (v29 - 1) & v29;
LABEL_35:
      v43 = v32 | (v25 << 6);
      sub_1BAD6E7C0(*(v5 + 48) + 40 * v43, v50);
      v35 = sub_1BAD9D748();
      v36 = -1 << *(a4 + 32);
      v37 = v35 & ~v36;
      if ((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        while (1)
        {
          sub_1BAD6E7C0(*(a4 + 48) + 40 * v37, v48);
          v39 = MEMORY[0x1BFB02DC0](v48, v50);
          sub_1BAD6E81C(v48);
          if (v39)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        result = sub_1BAD6E81C(v50);
        *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        v29 = v46;
        v24 = __OFADD__(v44++, 1);
        v5 = v52;
        if (v24)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
LABEL_27:
        result = sub_1BAD6E81C(v50);
        v5 = v52;
        v29 = v46;
      }
    }

    v33 = v25;
    while (1)
    {
      v25 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v25 >= v30)
      {
        goto LABEL_43;
      }

      v34 = *(v26 + 8 * v25);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v46 = (v34 - 1) & v34;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v8 = 0;
  v9 = 1 << *(a4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a4 + 56);
  v12 = (v9 + 63) >> 6;
  v44 = 0;
  v45 = a3 + 56;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v42 = (v11 - 1) & v11;
LABEL_15:
    sub_1BAD6E7C0(*(a4 + 48) + 40 * (v13 | (v8 << 6)), v50);
    v48[0] = v50[0];
    v48[1] = v50[1];
    v49 = v51;
    v16 = sub_1BAD9D748();
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v45 + 8 * (v18 >> 6))) == 0)
    {
      goto LABEL_6;
    }

    sub_1BAD6E7C0(*(v52 + 48) + 40 * v18, v47);
    v21 = MEMORY[0x1BFB02DC0](v47, v48);
    sub_1BAD6E81C(v47);
    if ((v21 & 1) == 0)
    {
      v22 = ~v17;
      while (1)
      {
        v18 = (v18 + 1) & v22;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v45 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        sub_1BAD6E7C0(*(v52 + 48) + 40 * v18, v47);
        v23 = MEMORY[0x1BFB02DC0](v47, v48);
        sub_1BAD6E81C(v47);
        if (v23)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      result = sub_1BAD6E81C(v48);
      v5 = v52;
      goto LABEL_7;
    }

LABEL_20:
    result = sub_1BAD6E81C(v48);
    v41[v19] |= v20;
    v24 = __OFADD__(v44++, 1);
    v5 = v52;
    if (v24)
    {
      __break(1u);
      goto LABEL_23;
    }

LABEL_7:
    v11 = v42;
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
LABEL_43:

      return sub_1BAD98F18(v41, a2, v44, v5);
    }

    v15 = *(a4 + 56 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1BAD99724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v8 = a7();
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_1BAD99778(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  return TableContent.apply(_:animatingDifferences:completion:)(a1, *(v1 + v3), 0, 0);
}

char *TableContent.__allocating_init<A>(_:tableView:cellProvider:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = *(v4 + 80);
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a1;
  v11 = *(v9 + 80);
  v12 = *(v9 + 88);
  swift_allocObject();
  v13 = swift_unknownObjectRetain();
  v14 = sub_1BAD9A520(v13, a2, sub_1BAD9AA00, v10, v11, v12);
  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_1BAD998F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AAF8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  DiffableDataStatePresenter.lens(for:)(a1);
  v12 = a4(a1, a2, v11, a3);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t TableContent.animatePresenterChanges.getter()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TableContent.animatePresenterChanges.setter(char a1)
{
  v3 = *(*v1 + 120);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TableContent.apply(_:animatingDifferences:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  v9 = *(*v4 + 104);
  swift_beginAccess();
  v10 = *(v8 + 80);
  sub_1BAD9C978();
  v11 = *(v8 + 88);
  sub_1BAD9C978();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_1BAD9C558();
  (*(*(v12 - 8) + 24))(v5 + v9, a1, v12);
  swift_endAccess();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = v13;
  sub_1BAD31584(a3);

  sub_1BAD9C588();
}

uint64_t sub_1BAD99D68(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BAD9C6F8();
  }

  return result;
}

uint64_t TableContent.section(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1BAD9C978();
  v16 = v4;
  v17 = sub_1BAD9C978();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v5 = sub_1BAD9C558();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v9 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v1[v9], v5);
  v10 = sub_1BAD9C538();
  (*(v6 + 8))(v8, v5);
  v15 = v10;
  sub_1BAD9D278();
  swift_getWitnessTable();
  sub_1BAD9D3D8();
  v13 = v14;
  v12[1] = sub_1BAD9C3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC2B6F8);
  if (sub_1BAD9D498())
  {
    sub_1BAD9C3F8();
    sub_1BAD9D2A8();

    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }

  else
  {
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t TableContent.indexPath(forSection:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v15 = sub_1BAD9C978();
  v16 = sub_1BAD9C978();
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v4 = sub_1BAD9C558();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *(v3 + 104);
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v8], v4);
  v9 = sub_1BAD9C538();
  (*(v5 + 8))(v7, v4);
  v13[1] = v9;
  sub_1BAD9D278();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BAD9D438();

  if (v14)
  {
    v10 = 1;
  }

  else
  {
    MEMORY[0x1BFB01A50](0, v13[2]);
    v10 = 0;
  }

  v11 = sub_1BAD9C408();
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

id *TableContent.deinit()
{
  v1 = *(*v0 + 13);
  sub_1BAD9C978();
  sub_1BAD9C978();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v2 = sub_1BAD9C558();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TableContent.__deallocating_deinit()
{
  TableContent.deinit();

  return swift_deallocClassInstance();
}

char *sub_1BAD9A520(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v37 = a5;
  v38 = a4;
  v36 = a3;
  v42 = a1;
  v9 = *v6;
  v39 = a2;
  v40 = v9;
  v35 = *(v9 + 80);
  v10 = sub_1BAD9C978();
  v11 = *(v9 + 88);
  v12 = sub_1BAD9C978();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v45 = v10;
  v46 = v12;
  v47 = WitnessTable;
  v48 = v14;
  v15 = sub_1BAD9C558();
  v16 = sub_1BAD9CAF8();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v34 - v17;
  v18 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v45 = v10;
  v46 = v12;
  v47 = WitnessTable;
  v48 = v14;
  sub_1BAD9C5B8();
  v22 = swift_allocObject();
  v23 = v36;
  v22[2] = v35;
  v22[3] = v11;
  v24 = v37;
  v25 = v38;
  v22[4] = v37;
  v22[5] = a6;
  v22[6] = v23;
  v22[7] = v25;
  v26 = v39;

  v27 = sub_1BAD9C568();
  *(v7 + 2) = v27;
  v28 = v27;
  sub_1BAD9C598();

  (*(v18 + 32))(&v7[*(*v7 + 104)], v21, v15);
  *&v7[*(*v7 + 112)] = v26;
  v7[*(*v7 + 120)] = 1;
  sub_1BAD9C718();
  v29 = v26;
  *&v7[*(*v7 + 128)] = sub_1BAD9C708();
  (*(a6 + 32))(v24, a6);
  v30 = swift_allocObject();
  *(v30 + 16) = v24;
  *(v30 + 24) = a6;
  v31 = swift_allocObject();
  v31[2] = v24;
  v31[3] = a6;
  v31[4] = sub_1BAD9AB88;
  v31[5] = v30;
  sub_1BAD9C718();
  swift_getWitnessTable();
  sub_1BAD9C988();
  v32 = v41;
  sub_1BAD9C998();

  __swift_destroy_boxed_opaque_existential_1(&v45);
  (*(v43 + 8))(v32, v44);
  (*(a6 + 40))(v24, a6);
  return v7;
}

uint64_t sub_1BAD9AA20()
{
  sub_1BAD9C978();
  sub_1BAD9C978();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1BAD9C558();
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

uint64_t (*sub_1BAD9AB88(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 16);
  *(v3 + 32) = a1;

  return sub_1BAD9ABF8;
}

void UICollectionView.registerComponent<A>(_:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_getAssociatedTypeWitness();
  sub_1BAD9DC88();
  v2 = sub_1BAD9CF38();

  [v0 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v2];
}

{
  type metadata accessor for JUComponentCollectionViewCell();

  UICollectionView.registerComponent<A>(_:)();
}

uint64_t UICollectionView.dequeueComponent(forContentsOf:with:at:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A678);
  sub_1BAD9C948();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_1BAD9DC88();
  v8 = sub_1BAD9CF38();

  v9 = sub_1BAD9C3C8();
  v10 = [v4 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v9];

  type metadata accessor for JUAnyComponentCollectionViewCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    (*((*MEMORY[0x1E69E7D40] & *v11) + 0x50))(a1, a2, a4);
    return v12;
  }

  else
  {
    v14 = [v10 description];
    v15 = sub_1BAD9CF68();
    v17 = v16;

    v19[0] = v15;
    v19[1] = v17;
    MEMORY[0x1BFB026B0](0x20746F6E20736920, 0xE800000000000000);
    swift_getObjectType();
    v18 = sub_1BAD9DC88();
    MEMORY[0x1BFB026B0](v18);

    result = sub_1BAD9D8B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAD9AEDC()
{
  result = sub_1BAD9CF38();
  qword_1EBC2B780 = result;
  return result;
}

id static CustomLayoutView.didInvalidateMeasurementsNotification.getter()
{
  if (qword_1EBC29CA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC2B780;

  return v1;
}

uint64_t sub_1BAD9AF70@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for VerticalStack;
  a1[4] = &protocol witness table for VerticalStack;
  result = swift_allocObject();
  *a1 = result;
  *(result + 40) = &type metadata for ZeroDimension;
  *(result + 48) = &protocol witness table for ZeroDimension;
  *(result + 80) = &type metadata for ZeroDimension;
  *(result + 88) = &protocol witness table for ZeroDimension;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = MEMORY[0x1E69E7CC0];
  return result;
}

void sub_1BAD9AFEC()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EBC29CA0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_1EBC2B780 object:v0];

  [v0 setNeedsLayout];
  [v0 invalidateIntrinsicContentSize];
  v2 = [v0 superview];
  if (v2)
  {
    v4 = v2;
    type metadata accessor for CustomLayoutView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x58))();
      goto LABEL_8;
    }
  }

  v4 = [v0 superview];
  [v4 setNeedsLayout];
LABEL_8:
}

JUMeasurements __swiftcall CustomLayoutView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  height = toFit.height;
  width = toFit.width;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x50))(v19);
  v6 = v20;
  v7 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v8 = (*(v7 + 8))(with.super.isa, v6, v7, width, height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v19);
  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

double CustomLayoutView.intrinsicContentSize.getter()
{
  v1 = [v0 traitCollection];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x50))(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 8))(v1, v2, v3, 0.0, 0.0);

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

CGSize __swiftcall CustomLayoutView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = [v1 traitCollection];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x50))(v13);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = (*(v6 + 8))(v4, v5, v6, width, height);
  v9 = v8;

  __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

Swift::Void __swiftcall CustomLayoutView.layoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CustomLayoutView();
  v1 = objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))(v1);
  v3 = [v0 frame];
  v5 = v4;
  v7 = v6;
  (*((*v2 & *v0) + 0x50))(v11, v3);
  v8 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v9 = [v0 traitCollection];
  (*(v8 + 16))(0.0, 0.0, v5, v7);

  v10 = __swift_destroy_boxed_opaque_existential_1(v11);
  (*((*v2 & *v0) + 0x68))(v10);
}

id CustomLayoutView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CustomLayoutView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CustomLayoutView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id CustomLayoutView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CustomLayoutView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CustomLayoutView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CustomLayoutView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomLayoutView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1BAD9BA78(uint64_t a1, double a2, double a3)
{
  (*((*MEMORY[0x1E69E7D40] & **v3) + 0x50))(v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = (*(v8 + 8))(a1, v7, v8, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t Constrain.init(_:width:height:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v18 = a1[3];
  v19 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = Measurable.placeable.getter(v18, v19, v23);
  if ((a3 & 1) == 0 && (a5 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v20);
    v20 = sub_1BAD9CDA8();
  }

  if ((a7 & 1) == 0 && (a10 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v20);
    sub_1BAD9CDA8();
  }

  sub_1BAD1A480(v23, a9);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3 & 1;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5 & 1;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7 & 1;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10 & 1;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Placement.init(child:frame:baselines:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = *a2;
  v14 = a2[1];
  sub_1BAD14A3C(a1, a3);
  a3[5] = floor(a4);
  a3[6] = floor(a5);
  a3[7] = ceil(a6);
  a3[8] = ceil(a7);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  a3[9] = floor(v13);
  a3[10] = floor(v14);
  return result;
}

Swift::Void __swiftcall Placement.place(inCoordinateSpaceOf:with:)(__C::CGRect inCoordinateSpaceOf, UITraitCollection with)
{
  height = inCoordinateSpaceOf.size.height;
  width = inCoordinateSpaceOf.size.width;
  y = inCoordinateSpaceOf.origin.y;
  x = inCoordinateSpaceOf.origin.x;
  sub_1BAD14A3C(v2, v23);
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v10 = v2[5];
  v11 = v2[6];
  v12 = v2[7];
  v13 = v2[8];
  if ([(objc_class *)with.super.isa layoutDirection]== 1)
  {
    CGAffineTransformMakeScale(&v22, -1.0, 1.0);
    ty = v22.ty;
    tx = v22.tx;
    v17 = *&v22.c;
    v18 = *&v22.a;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MinX = CGRectGetMinX(v26);
    v27.size.height = height;
    v15 = MinX;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    MaxX = CGRectGetMaxX(v27);
    *&v22.a = v18;
    *&v22.c = v17;
    v22.tx = tx;
    v22.ty = ty;
    CGAffineTransformTranslate(&v21, &v22, -(v15 + MaxX), 0.0);
    v22 = v21;
    v28.origin.x = v10;
    v28.origin.y = v11;
    v28.size.width = v12;
    v28.size.height = v13;
    v29 = CGRectApplyAffineTransform(v28, &v22);
    v10 = v29.origin.x;
    v11 = v29.origin.y;
    v12 = v29.size.width;
    v13 = v29.size.height;
  }

  (*(v9 + 16))(with.super.isa, v8, v9, v10, v11, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t Placement.init(child:verbatimFrame:verbatimBaselines:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v12 = *a2;
  v13 = a2[1];
  result = sub_1BAD1A480(a1, a3);
  *(a3 + 40) = a4;
  *(a3 + 48) = a5;
  *(a3 + 56) = a6;
  *(a3 + 64) = a7;
  *(a3 + 72) = v12;
  *(a3 + 80) = v13;
  return result;
}

uint64_t Placement.child.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1BAD1A480(a1, v1);
}

void Placement.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

__n128 Placement.baselines.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

__n128 Placement.baselines.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 72) = *a1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}