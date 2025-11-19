uint64_t sub_1C93C2A28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 16))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93C2A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C93C2AE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C93C2B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1C93C2B9C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

_BYTE *_s16PushRegistrationV7PayloadO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93C2CC4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93C2D84()
{
  result = qword_1EC39B008;
  if (!qword_1EC39B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B008);
  }

  return result;
}

unint64_t sub_1C93C2DDC()
{
  result = qword_1EC39B010;
  if (!qword_1EC39B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B010);
  }

  return result;
}

unint64_t sub_1C93C2E34()
{
  result = qword_1EC39B018;
  if (!qword_1EC39B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B018);
  }

  return result;
}

unint64_t sub_1C93C2E8C()
{
  result = qword_1EE02B888;
  if (!qword_1EE02B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B888);
  }

  return result;
}

unint64_t sub_1C93C2EE4()
{
  result = qword_1EE02B890;
  if (!qword_1EE02B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B890);
  }

  return result;
}

unint64_t sub_1C93C2F3C()
{
  result = qword_1EE02B848;
  if (!qword_1EE02B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B848);
  }

  return result;
}

unint64_t sub_1C93C2F94()
{
  result = qword_1EE02B850;
  if (!qword_1EE02B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B850);
  }

  return result;
}

unint64_t sub_1C93C2FEC()
{
  result = qword_1EE02B878;
  if (!qword_1EE02B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B878);
  }

  return result;
}

unint64_t sub_1C93C3044()
{
  result = qword_1EE02B880;
  if (!qword_1EE02B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B880);
  }

  return result;
}

unint64_t sub_1C93C309C()
{
  result = qword_1EE02B860;
  if (!qword_1EE02B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B860);
  }

  return result;
}

unint64_t sub_1C93C30F4()
{
  result = qword_1EE02B868;
  if (!qword_1EE02B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B868);
  }

  return result;
}

uint64_t AuthenticatedSession.Configuration.Encryption.serviceIdentity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C93A5E70(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t static AuthenticatedSession.Configuration.Encryption.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v10 = *a1;
  v11 = v2;
  v8 = v3;
  v9 = v4;
  sub_1C939EBDC(v10, v2);
  v5 = sub_1C93A5A40();
  sub_1C939EBDC(v5, v6);
  LOBYTE(v3) = static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.== infix(_:_:)(&v10, &v8);
  sub_1C93A5E70(v8, v9);
  sub_1C93A5E70(v10, v11);
  return v3 & 1;
}

uint64_t sub_1C93C3260(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4965636976726573 && a2 == 0xEF797469746E6564)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93C3308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C3260(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93C3334(uint64_t a1)
{
  v2 = sub_1C93C3B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C3370(uint64_t a1)
{
  v2 = sub_1C93C3B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.Encryption.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39B020, &qword_1C9400708);
  v4 = sub_1C939D44C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C939EBDC(v11, v12);
  sub_1C93C3B18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v11;
  v16 = v12;
  sub_1C93C3B6C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1C93A5E70(v15, v16);
  return (*(v6 + 8))(v10, v3);
}

uint64_t AuthenticatedSession.Configuration.Encryption.hash(into:)()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1CCA87E40](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x1CCA87E40](v2);
  }

  v4 = *v0;
  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int AuthenticatedSession.Configuration.Encryption.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1CCA87E40](v3);
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.Encryption.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39B028, &qword_1C9400710);
  v6 = sub_1C939D44C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93C3B18();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    sub_1C93C3BC0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v12, v5);
    *a2 = v15;
  }

  return sub_1C939EA94(a1);
}

Swift::Int sub_1C93C3778()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1CCA87E40](v3);
  return Hasher._finalize()();
}

void AuthenticatedSession.Configuration.Encryption.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2)
  {
    if (v2 != 1)
    {
      v3 = sub_1C93A5A40();
      sub_1C939EBDC(v3, v4);
    }

    v5 = sub_1C93A5A40();
    sub_1C93C3EAC(v5, v6);
    v7 = sub_1C93A5A40();
    sub_1C93A5E70(v7, v8);
    sub_1C93A5A40();
    sub_1C93B1328();
  }

  else
  {
    sub_1C93C3EAC(v1, 0);
    sub_1C93A5E70(v1, 0);
  }
}

size_t AuthenticatedSession.Configuration.Encryption.propertyDescriptions.getter()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - v6;
  v8 = type metadata accessor for PropertyDescription();
  v9 = sub_1C939D44C(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *v0;
  v17 = *(v0 + 8);
  if (v17 != 1)
  {
    v18 = *v0;
    if (!v17)
    {
      sub_1C93C3EAC(v18, 0);
      sub_1C93A5E70(v16, 0);
      return MEMORY[0x1E69E7CC0];
    }

    sub_1C939EBDC(v18, *(v0 + 8));
  }

  sub_1C93C3EAC(v16, v17);
  sub_1C93A5E70(v16, v17);
  static OSLogPrivacy.public.getter();
  v27[0] = v16;
  v27[1] = v17;
  sub_1C939EBDC(v16, v17);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  sub_1C93A86A8(v7, v5);
  v23 = *(v8 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v7);
  *v15 = 0x4965636976726573;
  v15[1] = 0xEF797469746E6564;
  v15[2] = v20;
  v15[3] = v22;
  sub_1C93A8768(v5, v15 + v23);
  v19 = sub_1C93A4F7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = *(v19 + 16);
  v24 = *(v19 + 24);
  if (v25 >= v24 >> 1)
  {
    v19 = sub_1C93A4F7C(v24 > 1, v25 + 1, 1, v19);
  }

  *(v19 + 16) = v25 + 1;
  sub_1C93A87CC(v15, v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25);
  return v19;
}

unint64_t sub_1C93C3B18()
{
  result = qword_1EE02B948;
  if (!qword_1EE02B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B948);
  }

  return result;
}

unint64_t sub_1C93C3B6C()
{
  result = qword_1EE02B8C0;
  if (!qword_1EE02B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8C0);
  }

  return result;
}

unint64_t sub_1C93C3BC0()
{
  result = qword_1EE02AFE8;
  if (!qword_1EE02AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFE8);
  }

  return result;
}

unint64_t sub_1C93C3C18()
{
  result = qword_1EC39B030;
  if (!qword_1EC39B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B030);
  }

  return result;
}

unint64_t sub_1C93C3C6C(uint64_t a1)
{
  result = sub_1C93C3C94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93C3C94()
{
  result = qword_1EC39B038;
  if (!qword_1EC39B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B038);
  }

  return result;
}

_BYTE *_s10EncryptionV10CodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93C3DA8()
{
  result = qword_1EC39B040;
  if (!qword_1EC39B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B040);
  }

  return result;
}

unint64_t sub_1C93C3E00()
{
  result = qword_1EE02B938;
  if (!qword_1EE02B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B938);
  }

  return result;
}

unint64_t sub_1C93C3E58()
{
  result = qword_1EE02B940;
  if (!qword_1EE02B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B940);
  }

  return result;
}

uint64_t sub_1C93C3EAC(uint64_t a1, unint64_t a2)
{
  sub_1C93A5E70(a1, a2);

  return sub_1C93A5E70(0, 0);
}

uint64_t static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.custom(serviceName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

double static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.noIdentity.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C93FD260;
  return result;
}

uint64_t static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.Payload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1C93A5E70(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1C93A5E70(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v17 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v20 = sub_1C93C3178();
      sub_1C939EBDC(v20, v21);
      v22 = sub_1C93C316C();
      sub_1C939EBDC(v22, v23);
      v24 = sub_1C93C316C();
      sub_1C93A5E70(v24, v25);
      v26 = sub_1C93C3178();
      sub_1C93A5E70(v26, v27);
      return v19 & 1;
    }

    sub_1C939EBDC(v17, v3);
    v29 = sub_1C93C316C();
    sub_1C939EBDC(v29, v30);
    v31 = sub_1C93C316C();
    sub_1C93A5E70(v31, v32);
    v7 = sub_1C93C316C();
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    v9 = sub_1C93C3178();
    sub_1C939EBDC(v9, v10);
    v11 = sub_1C93C316C();
    sub_1C939EBDC(v11, v12);
    v13 = sub_1C93C316C();
    sub_1C93A5E70(v13, v14);
    v15 = sub_1C93C3178();
    sub_1C93A5E70(v15, v16);
    return 0;
  }

  v6 = 1;
  sub_1C93A5E70(*a1, 1uLL);
  sub_1C93A5E70(v4, 1uLL);
  return v6;
}

uint64_t sub_1C93C4024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x69746E6564496F6ELL && a2 == 0xEA00000000007974)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C93C4138(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x6D6F74737563;
  }

  return 0x69746E6564496F6ELL;
}

uint64_t sub_1C93C4190(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93C4234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C4024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93C425C(uint64_t a1)
{
  v2 = sub_1C93C47B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C4298(uint64_t a1)
{
  v2 = sub_1C93C47B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C42D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C4190(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93C4304(uint64_t a1)
{
  v2 = sub_1C93C4858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C4340(uint64_t a1)
{
  v2 = sub_1C93C4858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C437C(uint64_t a1)
{
  v2 = sub_1C93C48AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C43B8(uint64_t a1)
{
  v2 = sub_1C93C48AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C43F4(uint64_t a1)
{
  v2 = sub_1C93C4804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C4430(uint64_t a1)
{
  v2 = sub_1C93C4804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.Configuration.Encryption.ServiceIdentity.Payload.encode(to:)()
{
  sub_1C93C0358();
  v45 = v1;
  v4 = v3;
  v5 = sub_1C93A1890(&qword_1EC39B048, &qword_1C9400980);
  v6 = sub_1C939D44C(v5);
  v43 = v7;
  v44 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93C5E08(v11, v36);
  v42 = sub_1C93A1890(&qword_1EC39B050, &qword_1C9400988);
  sub_1C939D44C(v42);
  v40 = v12;
  v14 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v36 - v16;
  v17 = sub_1C93A1890(&qword_1EC39B058, &qword_1C9400990);
  v18 = sub_1C939D44C(v17);
  v37 = v19;
  v38 = v18;
  v21 = *(v20 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C93C5DD4();
  v23 = sub_1C93A1890(&qword_1EC39B060, &qword_1C9400998);
  sub_1C939D44C(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v36 - v29;
  v31 = v0[1];
  v36 = *v0;
  v32 = v4[4];
  sub_1C93A4890(v4, v4[3]);
  sub_1C93C47B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v31)
  {
    if (v31 != 1)
    {
      sub_1C93C4858();
      v34 = v39;
      sub_1C939EE00();
      v35 = v42;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v40 + 8))(v34, v35);
      (*(v25 + 8))(v30, v23);
      goto LABEL_7;
    }

    sub_1C93C4804();
    v33 = v41;
    sub_1C939EE00();
    (*(v43 + 8))(v33, v44);
  }

  else
  {
    sub_1C93C48AC();
    sub_1C939EE00();
    (*(v37 + 8))(v2, v38);
  }

  (*(v25 + 8))(v30, v23);
LABEL_7:
  sub_1C939EDBC();
}

unint64_t sub_1C93C47B0()
{
  result = qword_1EE02B908;
  if (!qword_1EE02B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B908);
  }

  return result;
}

unint64_t sub_1C93C4804()
{
  result = qword_1EC39B068;
  if (!qword_1EC39B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B068);
  }

  return result;
}

unint64_t sub_1C93C4858()
{
  result = qword_1EE02B8E0;
  if (!qword_1EE02B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8E0);
  }

  return result;
}

unint64_t sub_1C93C48AC()
{
  result = qword_1EC39B070;
  if (!qword_1EC39B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B070);
  }

  return result;
}

void AuthenticatedSession.Configuration.Encryption.ServiceIdentity.Payload.init(from:)()
{
  sub_1C93C0358();
  v73 = v0;
  v3 = v2;
  v70 = v4;
  v72 = sub_1C93A1890(&qword_1EC39B078, &qword_1C94009A0);
  sub_1C939D44C(v72);
  v67 = v5;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93C5E08(v9, v63);
  v10 = sub_1C93A1890(&qword_1EC39B080, &qword_1C94009A8);
  v11 = sub_1C939D44C(v10);
  v68 = v12;
  v69 = v11;
  v14 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = sub_1C93A1890(&qword_1EC39B088, &qword_1C94009B0);
  sub_1C939D44C(v18);
  v66 = v19;
  v21 = *(v20 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C93C5DD4();
  v23 = sub_1C93A1890(&qword_1EC39B090, &unk_1C94009B8);
  sub_1C939D44C(v23);
  v71 = v24;
  v26 = *(v25 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v30 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93C47B0();
  v31 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    goto LABEL_10;
  }

  v63 = v18;
  v64 = v1;
  v65 = v17;
  v73 = v3;
  v32 = KeyedDecodingContainer.allKeys.getter();
  sub_1C93C0330(v32, 0);
  v36 = v23;
  if (v34 == v35 >> 1)
  {
LABEL_9:
    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    v48 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v47 = &type metadata for AuthenticatedSession.Configuration.Encryption.ServiceIdentity.Payload;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v29, v36);
    v3 = v73;
LABEL_10:
    sub_1C939EA94(v3);
LABEL_11:
    sub_1C939EDBC();
    return;
  }

  if (v34 < (v35 >> 1))
  {
    v37 = v23;
    v38 = *(v33 + v34);
    v39 = sub_1C93C0328(v34 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    if (v41 == v43 >> 1)
    {
      if (v38)
      {
        if (v38 == 1)
        {
          sub_1C93C4858();
          sub_1C93C5DE4();
          v44 = v70;
          v72 = v39;
          v56 = KeyedDecodingContainer.decode(_:forKey:)();
          v58 = v57;
          swift_unknownObjectRelease();
          v59 = sub_1C93C5E1C();
          v60(v59);
          v61 = sub_1C93C5DC0();
          v62(v61);
        }

        else
        {
          sub_1C93C4804();
          sub_1C93C5DE4();
          v44 = v70;
          swift_unknownObjectRelease();
          v51 = *(v67 + 8);
          v52 = sub_1C939D460();
          v53(v52);
          v54 = sub_1C93C5DC0();
          v55(v54);
          v56 = 0;
          v58 = 1;
        }
      }

      else
      {
        sub_1C93C48AC();
        v49 = v64;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = v71;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v49, v63);
        (*(v50 + 8))(v29, v37);
        v56 = 0;
        v58 = 0;
        v44 = v70;
      }

      *v44 = v56;
      v44[1] = v58;
      sub_1C939EA94(v73);
      goto LABEL_11;
    }

    v36 = v37;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AuthenticatedSession.Configuration.Encryption.ServiceIdentity.serviceName.getter()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *v0;
  }

  if (v1 != 1)
  {
    v3 = v0[1];
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x74694B64756F6C43;
  }

  sub_1C939EBDC(*v0, v1);
  return v4;
}

BOOL static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_9;
    }

    sub_1C93A5E70(*a1, 0);
    v27 = v4;
    v28 = 0;
    goto LABEL_20;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      v6 = sub_1C93A8DA0();
      sub_1C939EBDC(v6, v7);
      v8 = sub_1C939D460();
      sub_1C939EBDC(v8, v9);
LABEL_10:
      v12 = sub_1C939D460();
      sub_1C93A5E70(v12, v13);
      v14 = sub_1C93A8DA0();
      sub_1C93A5E70(v14, v15);
      return 0;
    }

    v16 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v19 = sub_1C93A8DA0();
      sub_1C939EBDC(v19, v20);
      v21 = sub_1C939D460();
      sub_1C939EBDC(v21, v22);
      v23 = sub_1C939D460();
      sub_1C93A5E70(v23, v24);
      v25 = sub_1C93A8DA0();
      sub_1C93A5E70(v25, v26);
      return (v18 & 1) != 0;
    }

    sub_1C939EBDC(v16, v3);
    v29 = sub_1C939D460();
    sub_1C939EBDC(v29, v30);
    v31 = sub_1C939D460();
    sub_1C93A5E70(v31, v32);
    v27 = sub_1C939D460();
LABEL_20:
    sub_1C93A5E70(v27, v28);
    return 1;
  }

  if (v5 != 1)
  {
LABEL_9:
    v10 = sub_1C93A8DA0();
    sub_1C939EBDC(v10, v11);
    goto LABEL_10;
  }

  sub_1C93A5E70(*a1, 1uLL);
  sub_1C93A5E70(v4, 1uLL);
  return v5;
}

uint64_t sub_1C93C50D4(uint64_t a1)
{
  v2 = sub_1C93C5554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C5110(uint64_t a1)
{
  v2 = sub_1C93C5554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.Configuration.Encryption.ServiceIdentity.encode(to:)()
{
  sub_1C93C0358();
  v3 = v2;
  v4 = sub_1C93A1890(&qword_1EC39B098, &qword_1C94009C8);
  sub_1C939D44C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C93C5DD4();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C939EBDC(v10, v11);
  sub_1C93C5554();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1C93C55A8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1C93A5E70(v10, v11);
  (*(v6 + 8))(v1, v4);
  sub_1C939EDBC();
}

uint64_t sub_1C93C528C()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1CCA87E40](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x1CCA87E40](v2);
  }

  v4 = *v0;
  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int _s17CloudCoreInternal20AuthenticatedSessionC13ConfigurationV10EncryptionV15ServiceIdentityV7PayloadO9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      return Hasher._finalize()();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1CCA87E40](v3);
  return Hasher._finalize()();
}

void AuthenticatedSession.Configuration.Encryption.ServiceIdentity.init(from:)()
{
  sub_1C93C0358();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C93A1890(&qword_1EC39B0A0, &qword_1C94009D0);
  sub_1C939D44C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  v13 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93C5554();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_1C93C55FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v12, v5);
    *v4 = v14;
  }

  sub_1C939EA94(v2);
  sub_1C939EDBC();
}

unint64_t sub_1C93C5554()
{
  result = qword_1EE02B930;
  if (!qword_1EE02B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B930);
  }

  return result;
}

unint64_t sub_1C93C55A8()
{
  result = qword_1EE02B8C8;
  if (!qword_1EE02B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8C8);
  }

  return result;
}

unint64_t sub_1C93C55FC()
{
  result = qword_1EE02AFF0[0];
  if (!qword_1EE02AFF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE02AFF0);
  }

  return result;
}

unint64_t sub_1C93C5654()
{
  result = qword_1EC39B0A8;
  if (!qword_1EC39B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B0A8);
  }

  return result;
}

unint64_t sub_1C93C56AC()
{
  result = qword_1EC39B0B0;
  if (!qword_1EC39B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B0B0);
  }

  return result;
}

uint64_t sub_1C93C5710(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
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

_BYTE *_s15ServiceIdentityV7PayloadO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93C5870(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93C5930()
{
  result = qword_1EC39B0B8;
  if (!qword_1EC39B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B0B8);
  }

  return result;
}

unint64_t sub_1C93C5988()
{
  result = qword_1EC39B0C0;
  if (!qword_1EC39B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B0C0);
  }

  return result;
}

unint64_t sub_1C93C59E0()
{
  result = qword_1EC39B0C8;
  if (!qword_1EC39B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B0C8);
  }

  return result;
}

unint64_t sub_1C93C5A38()
{
  result = qword_1EE02B920;
  if (!qword_1EE02B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B920);
  }

  return result;
}

unint64_t sub_1C93C5A90()
{
  result = qword_1EE02B928;
  if (!qword_1EE02B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B928);
  }

  return result;
}

unint64_t sub_1C93C5AE8()
{
  result = qword_1EE02B8D0;
  if (!qword_1EE02B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8D0);
  }

  return result;
}

unint64_t sub_1C93C5B40()
{
  result = qword_1EE02B8D8;
  if (!qword_1EE02B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8D8);
  }

  return result;
}

unint64_t sub_1C93C5B98()
{
  result = qword_1EE02B8E8;
  if (!qword_1EE02B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8E8);
  }

  return result;
}

unint64_t sub_1C93C5BF0()
{
  result = qword_1EE02B8F0;
  if (!qword_1EE02B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8F0);
  }

  return result;
}

unint64_t sub_1C93C5C48()
{
  result = qword_1EE02B910;
  if (!qword_1EE02B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B910);
  }

  return result;
}

unint64_t sub_1C93C5CA0()
{
  result = qword_1EE02B918;
  if (!qword_1EE02B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B918);
  }

  return result;
}

unint64_t sub_1C93C5CF8()
{
  result = qword_1EE02B8F8;
  if (!qword_1EE02B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8F8);
  }

  return result;
}

unint64_t sub_1C93C5D50()
{
  result = qword_1EE02B900;
  if (!qword_1EE02B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B900);
  }

  return result;
}

uint64_t sub_1C93C5DE4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C93C5E80(uint64_t a1)
{
  v2 = sub_1C93C6020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C5EBC(uint64_t a1)
{
  v2 = sub_1C93C6020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.Configuration.System.encode(to:)(void *a1)
{
  v4 = sub_1C93A1890(&qword_1EC39B0D0, &qword_1C94010E0);
  v5 = sub_1C93B34FC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93C6020();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1C93C6020()
{
  result = qword_1EE02B828;
  if (!qword_1EE02B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B828);
  }

  return result;
}

Swift::Int AuthenticatedSession.Configuration.System.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.Configuration.System.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v6 = sub_1C93A1890(&qword_1EC39B0D8, &qword_1C94010E8);
  v7 = sub_1C93B34FC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93C6020();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v9 + 8))(v13, v3);
    *a2 = v15 & 1;
  }

  return sub_1C939EA94(a1);
}

uint64_t AuthenticatedSession.Configuration.System.description.getter()
{
  if (*v0 == 1)
  {
    return sub_1C93B27F4(1);
  }

  else
  {
    return 0x7261646E6174732ELL;
  }
}

size_t AuthenticatedSession.Configuration.System.propertyDescriptions.getter()
{
  v2 = type metadata accessor for OSLogPrivacy();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25[-v7];
  v9 = type metadata accessor for PropertyDescription();
  v10 = sub_1C93B34FC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v0 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  static OSLogPrivacy.public.getter();
  v25[15] = 1;
  v17 = String.init<A>(describing:)();
  v19 = v18;
  sub_1C93A86A8(v8, v6);
  v20 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v8);
  *v16 = 0xD000000000000016;
  v16[1] = 0x80000001C9406310;
  v16[2] = v17;
  v16[3] = v19;
  sub_1C93A8768(v6, v16 + v20);
  v21 = sub_1C93A4F7C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1C93A4F7C(v22 > 1, v23 + 1, 1, v21);
  }

  *(v21 + 16) = v23 + 1;
  sub_1C93A87CC(v16, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23);
  return v21;
}

unint64_t sub_1C93C64C4()
{
  result = qword_1EC39B0E0;
  if (!qword_1EC39B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B0E0);
  }

  return result;
}

unint64_t sub_1C93C6518(uint64_t a1)
{
  result = sub_1C93C6540();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93C6540()
{
  result = qword_1EC39B0E8;
  if (!qword_1EC39B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B0E8);
  }

  return result;
}

_BYTE *_s6SystemVwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s6SystemV10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93C6720()
{
  result = qword_1EC39B0F0;
  if (!qword_1EC39B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B0F0);
  }

  return result;
}

unint64_t sub_1C93C6778()
{
  result = qword_1EE02B818;
  if (!qword_1EE02B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B818);
  }

  return result;
}

unint64_t sub_1C93C67D0()
{
  result = qword_1EE02B820;
  if (!qword_1EE02B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B820);
  }

  return result;
}

uint64_t AuthenticatedSession.ResolvedUser.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t AuthenticatedSession.ResolvedUser.dataProtection.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C93A1B1C(v2, v3);
}

uint64_t AuthenticatedSession.ResolvedUser.dataProtection.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C93A1798(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t AuthenticatedSession.ResolvedUser.organizationAdminID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t AuthenticatedSession.ResolvedUser.ID.userRecordName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuthenticatedSession.ResolvedUser.ID.init(userRecordName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AuthenticatedSession.ResolvedUser.ID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static AuthenticatedSession.ResolvedUser.ID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1C93C6A34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F63655272657375 && a2 == 0xEE00656D614E6472)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93C6ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C6A34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93C6B08(uint64_t a1)
{
  v2 = sub_1C93C6C94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C6B44(uint64_t a1)
{
  v2 = sub_1C93C6C94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.ResolvedUser.ID.encode(to:)()
{
  sub_1C93C0358();
  v3 = v2;
  v4 = sub_1C93A1890(&qword_1EC39B0F8, &qword_1C9401330);
  sub_1C939D44C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C939D578();
  v10 = *v0;
  v11 = v0[1];
  v12 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93C6C94();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v6 + 8))(v1, v4);
  sub_1C939EDBC();
}

unint64_t sub_1C93C6C94()
{
  result = qword_1EE02B980;
  if (!qword_1EE02B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B980);
  }

  return result;
}

uint64_t AuthenticatedSession.ResolvedUser.ID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int AuthenticatedSession.ResolvedUser.ID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void AuthenticatedSession.ResolvedUser.ID.init(from:)()
{
  sub_1C93C0358();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C93A1890(&qword_1EC39B100, &qword_1C9401338);
  sub_1C939D44C(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C939D578();
  v12 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93C6C94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
    v5[1] = v15;
  }

  sub_1C939EA94(v3);
  sub_1C939EDBC();
}

Swift::Int sub_1C93C6E90()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1C93C6F28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972726163 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C93C6FF4(char a1)
{
  if (a1)
  {
    return 0x7972726163;
  }

  else
  {
    return 0x69746375646F7270;
  }
}

uint64_t sub_1C93C702C(uint64_t a1)
{
  v2 = sub_1C93C7490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C7068(uint64_t a1)
{
  v2 = sub_1C93C7490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C70AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C6F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93C70D4(uint64_t a1)
{
  v2 = sub_1C93C743C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C7110(uint64_t a1)
{
  v2 = sub_1C93C743C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C714C(uint64_t a1)
{
  v2 = sub_1C93C74E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C7188(uint64_t a1)
{
  v2 = sub_1C93C74E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.ResolvedUser.PartitionType.encode(to:)()
{
  sub_1C93C0358();
  v2 = v1;
  v3 = sub_1C93A1890(&qword_1EC39B108, &qword_1C9401340);
  v4 = sub_1C939D44C(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = sub_1C93A1890(&qword_1EC39B110, &qword_1C9401348);
  v11 = sub_1C939D44C(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = sub_1C93A1890(&qword_1EC39B118, &qword_1C9401350);
  sub_1C939D44C(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93C743C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1C93C97CC();
    sub_1C93C7490();
    v29 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1C93C74E4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  sub_1C939EDBC();
}

unint64_t sub_1C93C743C()
{
  result = qword_1EE02BA48;
  if (!qword_1EE02BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA48);
  }

  return result;
}

unint64_t sub_1C93C7490()
{
  result = qword_1EE02BA30;
  if (!qword_1EE02BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA30);
  }

  return result;
}

unint64_t sub_1C93C74E4()
{
  result = qword_1EC39B120;
  if (!qword_1EC39B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B120);
  }

  return result;
}

Swift::Int AuthenticatedSession.ResolvedUser.PartitionType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](v1);
  return Hasher._finalize()();
}

void AuthenticatedSession.ResolvedUser.PartitionType.init(from:)()
{
  sub_1C93C0358();
  v53 = v0;
  v3 = v2;
  v50 = v4;
  v52 = sub_1C93A1890(&qword_1EC39B128, &qword_1C9401358);
  sub_1C939D44C(v52);
  v49 = v5;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v45 - v9;
  v11 = sub_1C93A1890(&qword_1EC39B130, &qword_1C9401360);
  sub_1C939D44C(v11);
  v48 = v12;
  v14 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - v16;
  v18 = sub_1C93A1890(&qword_1EC39B138, &unk_1C9401368);
  sub_1C939D44C(v18);
  v51 = v19;
  v21 = *(v20 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C939D578();
  v23 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93C743C();
  v24 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    goto LABEL_10;
  }

  v46 = v11;
  v47 = v17;
  v53 = v3;
  v25 = v52;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = sub_1C93C0330(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = v27;
LABEL_9:
    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v42 = v41;
    v43 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v42 = &type metadata for AuthenticatedSession.ResolvedUser.PartitionType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v1, v18);
    v3 = v53;
LABEL_10:
    sub_1C939EA94(v3);
LABEL_11:
    sub_1C939EDBC();
    return;
  }

  v45[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_1C93C0328(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        sub_1C93C97CC();
        sub_1C93C7490();
        v37 = v10;
        sub_1C93C979C();
        v38 = v50;
        v39 = v51;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v37, v25);
      }

      else
      {
        sub_1C93C74E4();
        v44 = v47;
        sub_1C93C979C();
        v38 = v50;
        v39 = v51;
        swift_unknownObjectRelease();
        (*(v48 + 8))(v44, v46);
      }

      (*(v39 + 8))(v1, v34);
      *v38 = v31;
      sub_1C939EA94(v53);
      goto LABEL_11;
    }

    v52 = v32;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AuthenticatedSession.ResolvedUser.init(id:accountPartition:dataProtection:organizationAdminID:)@<X0>(void *a1@<X0>, char *a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  v7 = *a2;
  v8 = *a4;
  v9 = a4[1];
  *a5 = *a1;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 24) = *a3;

  *(a5 + 40) = v8;
  *(a5 + 48) = v9;
  return result;
}

BOOL static AuthenticatedSession.ResolvedUser.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v7)
    {
      return 0;
    }

LABEL_9:
    v19 = v3;
    v20 = v4;
    v17 = v8;
    v18 = v9;
    sub_1C93A1B1C(v3, v4);
    sub_1C93A1B1C(v8, v9);
    v15 = static AuthenticatedSession.ResolvedUser.DataProtection.== infix(_:_:)(&v19, &v17);
    sub_1C93A1798(v17, v18);
    sub_1C93A1798(v19, v20);
    if ((v15 & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if (v10)
      {
        v16 = v6 == v11 && v5 == v10;
        return v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }
    }

    else if (!v10)
    {

      return 1;
    }

    return 0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v13 & 1) != 0 && ((v2 ^ v7) & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1C93C7BF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C9406490 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746F725061746164 && a2 == 0xEE006E6F69746365;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001C94064B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C93C7D5C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x746F725061746164;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93C7DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C7BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93C7E1C(uint64_t a1)
{
  v2 = sub_1C93C8A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C7E58(uint64_t a1)
{
  v2 = sub_1C93C8A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AuthenticatedSession.ResolvedUser.encode(to:)()
{
  sub_1C93C0358();
  v26 = v1;
  v3 = v2;
  v4 = sub_1C93A1890(&qword_1EC39B140, &qword_1C9401378);
  sub_1C939D44C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *v0;
  v13 = *(v0 + 8);
  v29 = *(v0 + 16);
  v14 = *(v0 + 24);
  v24 = *(v0 + 32);
  v25 = v14;
  v15 = *(v0 + 40);
  v22 = *(v0 + 48);
  v23 = v15;
  v16 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93C8A5C();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = v12;
  v28 = v13;
  sub_1C93C8AB0();
  v17 = v26;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v17)
  {
    v18 = v24;
    v19 = v25;
    v20 = v23;

    LOBYTE(v27) = v29;
    sub_1C93C97CC();
    sub_1C93C8B04();
    sub_1C93C9784();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v19;
    v28 = v18;
    sub_1C93A1B1C(v19, v18);
    sub_1C93C8B58();
    sub_1C93C9784();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A1798(v27, v28);
    v27 = v20;
    v28 = v22;

    sub_1C93C9784();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v6 + 8))(v11, v4);
  sub_1C939EDBC();
}

void AuthenticatedSession.ResolvedUser.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v3);
  if (v5)
  {
    if (v5 == 1)
    {
      v8 = 1;
    }

    else
    {
      if (v5 != 2)
      {
        MEMORY[0x1CCA87E40](2);
        String.hash(into:)();
        if (v7)
        {
          goto LABEL_8;
        }

LABEL_12:
        Hasher._combine(_:)(0);
        return;
      }

      v8 = 3;
    }
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1CCA87E40](v8);
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_8:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int AuthenticatedSession.ResolvedUser.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v3);
  switch(v5)
  {
    case 0:
      v8 = 0;
      goto LABEL_7;
    case 1:
      v8 = 1;
      goto LABEL_7;
    case 2:
      v8 = 3;
LABEL_7:
      MEMORY[0x1CCA87E40](v8);
      goto LABEL_9;
  }

  MEMORY[0x1CCA87E40](2);
  String.hash(into:)();
LABEL_9:
  if (v7)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void AuthenticatedSession.ResolvedUser.init(from:)()
{
  sub_1C93C0358();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C93A1890(&qword_1EC39B148, &unk_1C9401380);
  sub_1C939D44C(v5);
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93C8A5C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_1C939EA94(v2);
  }

  else
  {
    sub_1C93C8BAC();
    sub_1C93C9760();
    sub_1C93C97C0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1C93C97CC();
    sub_1C93C8C00();
    sub_1C93C9760();
    sub_1C93C97C0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1C93C8C54();
    sub_1C93C9760();
    sub_1C93C97C0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1C93C9760();
    sub_1C93C97C0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = sub_1C93C9774();
    v11(v10);

    *v4 = v12;
    *(v4 + 8) = v13;
    *(v4 + 16) = v12;
    *(v4 + 24) = v12;
    *(v4 + 32) = v13;
    *(v4 + 40) = v12;
    *(v4 + 48) = v13;

    sub_1C93A1B1C(v12, v13);

    sub_1C939EA94(v2);

    sub_1C93A1798(v12, v13);
  }

  sub_1C939EDBC();
}

Swift::Int sub_1C93C8544()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 3);
  v6 = *(v0 + 5);
  Hasher.init(_seed:)();
  AuthenticatedSession.ResolvedUser.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1C93C85D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_1C93F5B0C();
}

uint64_t AuthenticatedSession.ResolvedUser.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - v6;
  v7 = type metadata accessor for OSLogPrivacy();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  v15 = *v0;
  v14 = *(v0 + 8);
  v48 = *(v0 + 16);
  v16 = *(v0 + 24);
  v47 = *(v0 + 32);
  v17 = *(v0 + 48);
  v44 = *(v0 + 40);
  v49 = v17;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v18 = *(v2 + 72);
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C93FE890;
  v51 = v19;
  v21 = (v20 + v19);
  static OSLogPrivacy.auto.getter();
  v52 = v15;
  v53 = v14;

  v22 = String.init<A>(describing:)();
  v24 = v23;
  sub_1C93A86A8(v13, v11);
  v25 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v13);
  *v21 = 25705;
  v21[1] = 0xE200000000000000;
  v21[2] = v22;
  v21[3] = v24;
  sub_1C93A8768(v11, v21 + v25);
  v26 = v21 + v18;
  static OSLogPrivacy.auto.getter();
  v52 = v16;
  v53 = v47;
  sub_1C93A1B1C(v16, v47);
  String.init<A>(describing:)();
  sub_1C93C97D8();
  v27 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v13);
  strcpy(v26, "dataProtection");
  v26[15] = -18;
  *(v26 + 2) = v22;
  *(v26 + 3) = v16;
  sub_1C93A8768(v11, &v26[v27]);
  v45 = v18;
  v46 = v1;
  if (v48 == 1)
  {
    v28 = 2 * v18;
    static OSLogPrivacy.auto.getter();
    LOBYTE(v52) = 1;
    String.init<A>(describing:)();
    sub_1C93C97D8();
    v29 = *(v1 + 24);
    v30 = v43;
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v13);
    *v30 = 0xD000000000000010;
    v30[1] = 0x80000001C9406490;
    v30[2] = v22;
    v30[3] = v16;
    sub_1C93A8768(v11, v30 + v29);
    v20 = sub_1C93A4F7C(1uLL, 3, 1, v20);
    *(v20 + 16) = 3;
    sub_1C93A87CC(v30, v20 + v51 + v28);
  }

  v31 = v49;
  v32 = v50;
  if (v49)
  {

    static OSLogPrivacy.auto.getter();
    v52 = v44;
    v53 = v31;

    v33 = String.init<A>(describing:)();
    v35 = v34;
    sub_1C93A86A8(v13, v11);
    v36 = *(v46 + 24);
    static OSLogPrivacy.auto.getter();

    sub_1C93A870C(v13);
    *v32 = 0xD000000000000013;
    v32[1] = 0x80000001C94064B0;
    v32[2] = v33;
    v32[3] = v35;
    sub_1C93A8768(v11, v32 + v36);
    v38 = *(v20 + 16);
    v37 = *(v20 + 24);
    if (v38 >= v37 >> 1)
    {
      v20 = sub_1C93A4F7C(v37 > 1, v38 + 1, 1, v20);
    }

    v39 = v45;
    v40 = v51;
    *(v20 + 16) = v38 + 1;
    sub_1C93A87CC(v32, v20 + v40 + v38 * v39);
  }

  return v20;
}

unint64_t sub_1C93C8A5C()
{
  result = qword_1EE02BA60[0];
  if (!qword_1EE02BA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE02BA60);
  }

  return result;
}

unint64_t sub_1C93C8AB0()
{
  result = qword_1EE02B968;
  if (!qword_1EE02B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B968);
  }

  return result;
}

unint64_t sub_1C93C8B04()
{
  result = qword_1EE02BA08;
  if (!qword_1EE02BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA08);
  }

  return result;
}

unint64_t sub_1C93C8B58()
{
  result = qword_1EE02B990;
  if (!qword_1EE02B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B990);
  }

  return result;
}

unint64_t sub_1C93C8BAC()
{
  result = qword_1EE02B960;
  if (!qword_1EE02B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B960);
  }

  return result;
}

unint64_t sub_1C93C8C00()
{
  result = qword_1EE02BA00;
  if (!qword_1EE02BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA00);
  }

  return result;
}

unint64_t sub_1C93C8C54()
{
  result = qword_1EE02B988;
  if (!qword_1EE02B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B988);
  }

  return result;
}

unint64_t sub_1C93C8CAC()
{
  result = qword_1EC39B150;
  if (!qword_1EC39B150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B150);
  }

  return result;
}

unint64_t sub_1C93C8D04()
{
  result = qword_1EC39B158;
  if (!qword_1EC39B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B158);
  }

  return result;
}

unint64_t sub_1C93C8D5C()
{
  result = qword_1EC39B160;
  if (!qword_1EC39B160)
  {
    sub_1C93B27AC(&qword_1EC39B168, &qword_1C9401528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B160);
  }

  return result;
}

unint64_t sub_1C93C8DC4()
{
  result = qword_1EC39B170;
  if (!qword_1EC39B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B170);
  }

  return result;
}

unint64_t sub_1C93C8E1C()
{
  result = qword_1EC39B178;
  if (!qword_1EC39B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B178);
  }

  return result;
}

unint64_t sub_1C93C8E70(uint64_t a1)
{
  result = sub_1C93C8E98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93C8E98()
{
  result = qword_1EC39B180;
  if (!qword_1EC39B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B180);
  }

  return result;
}

uint64_t sub_1C93C8EEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1C93C8F04(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C93C8F20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93C8F60(uint64_t result, int a2, int a3)
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

uint64_t sub_1C93C8FB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93C8FF8(uint64_t result, int a2, int a3)
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

_BYTE *_s12ResolvedUserV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93C9128(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12ResolvedUserV2IDV10CodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93C92D4()
{
  result = qword_1EC39B188;
  if (!qword_1EC39B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B188);
  }

  return result;
}

unint64_t sub_1C93C932C()
{
  result = qword_1EC39B190;
  if (!qword_1EC39B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B190);
  }

  return result;
}

unint64_t sub_1C93C9384()
{
  result = qword_1EC39B198;
  if (!qword_1EC39B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B198);
  }

  return result;
}

unint64_t sub_1C93C93DC()
{
  result = qword_1EE02BA50;
  if (!qword_1EE02BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA50);
  }

  return result;
}

unint64_t sub_1C93C9434()
{
  result = qword_1EE02BA58;
  if (!qword_1EE02BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA58);
  }

  return result;
}

unint64_t sub_1C93C948C()
{
  result = qword_1EE02BA10;
  if (!qword_1EE02BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA10);
  }

  return result;
}

unint64_t sub_1C93C94E4()
{
  result = qword_1EE02BA18;
  if (!qword_1EE02BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA18);
  }

  return result;
}

unint64_t sub_1C93C953C()
{
  result = qword_1EE02BA20;
  if (!qword_1EE02BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA20);
  }

  return result;
}

unint64_t sub_1C93C9594()
{
  result = qword_1EE02BA28;
  if (!qword_1EE02BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA28);
  }

  return result;
}

unint64_t sub_1C93C95EC()
{
  result = qword_1EE02BA38;
  if (!qword_1EE02BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA38);
  }

  return result;
}

unint64_t sub_1C93C9644()
{
  result = qword_1EE02BA40;
  if (!qword_1EE02BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BA40);
  }

  return result;
}

unint64_t sub_1C93C969C()
{
  result = qword_1EE02B970;
  if (!qword_1EE02B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B970);
  }

  return result;
}

unint64_t sub_1C93C96F4()
{
  result = qword_1EE02B978;
  if (!qword_1EE02B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B978);
  }

  return result;
}

uint64_t sub_1C93C979C()
{
  v2 = *(v0 - 152);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C93C97D8()
{

  return sub_1C93A86A8(v1, v0);
}

uint64_t static AuthenticatedSession.ResolvedUser.DataProtection.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    if (!v5)
    {
      sub_1C93A1798(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        sub_1C93A1798(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_18:
        sub_1C93A1798(v6, v7);
        return 1;
      }
    }

    else if (v5 >= 3)
    {
      v17 = *a1;
      if (v2 != v4 || v3 != v5)
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v20 = sub_1C939D460();
        sub_1C93A1B1C(v20, v21);
        v22 = sub_1C93A8DA0();
        sub_1C93A1B1C(v22, v23);
        v24 = sub_1C93A8DA0();
        sub_1C93A1798(v24, v25);
        v26 = sub_1C939D460();
        sub_1C93A1798(v26, v27);
        return v19 & 1;
      }

      sub_1C93A1B1C(v17, v3);
      v29 = sub_1C93A8DA0();
      sub_1C93A1B1C(v29, v30);
      v31 = sub_1C93A8DA0();
      sub_1C93A1798(v31, v32);
      v6 = sub_1C93A8DA0();
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v5 != 1)
  {
LABEL_11:
    v9 = sub_1C939D460();
    sub_1C93A1B1C(v9, v10);
    v11 = sub_1C93A8DA0();
    sub_1C93A1B1C(v11, v12);
    v13 = sub_1C93A8DA0();
    sub_1C93A1798(v13, v14);
    v15 = sub_1C939D460();
    sub_1C93A1798(v15, v16);
    return 0;
  }

  v8 = 1;
  sub_1C93A1798(*a1, 1uLL);
  sub_1C93A1798(v4, 1uLL);
  return v8;
}

uint64_t sub_1C93C9948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001C94064D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C94064F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C9406510 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C93C9AAC(char a1)
{
  result = 0x64656C6261736964;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1C93C9B38(uint64_t a1)
{
  v2 = sub_1C93CA2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C9B74(uint64_t a1)
{
  v2 = sub_1C93CA2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C9BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93C9948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93C9BE0(uint64_t a1)
{
  v2 = sub_1C93CA1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C9C1C(uint64_t a1)
{
  v2 = sub_1C93CA1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C9C58(uint64_t a1)
{
  v2 = sub_1C93CA28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C9C94(uint64_t a1)
{
  v2 = sub_1C93CA28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C9CD0(uint64_t a1)
{
  v2 = sub_1C93CA238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C9D0C(uint64_t a1)
{
  v2 = sub_1C93CA238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93C9D48(uint64_t a1)
{
  v2 = sub_1C93CA334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93C9D84(uint64_t a1)
{
  v2 = sub_1C93CA334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthenticatedSession.ResolvedUser.DataProtection.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39B1A0, &qword_1C9401BE0);
  v4 = sub_1C939D44C(v3);
  v53 = v5;
  v54 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C939ED24();
  v51 = v9;
  v52 = sub_1C93A1890(&qword_1EC39B1A8, &qword_1C9401BE8);
  sub_1C939D44C(v52);
  v50 = v10;
  v12 = *(v11 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C939ED24();
  v49 = v14;
  v15 = sub_1C93A1890(&qword_1EC39B1B0, &qword_1C9401BF0);
  v16 = sub_1C939D44C(v15);
  v47 = v17;
  v48 = v16;
  v19 = *(v18 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v45 - v21;
  v23 = sub_1C93A1890(&qword_1EC39B1B8, &qword_1C9401BF8);
  sub_1C939D44C(v23);
  v46 = v24;
  v26 = *(v25 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v45 - v28;
  v30 = sub_1C93A1890(&qword_1EC39B1C0, &qword_1C9401C00);
  v31 = sub_1C939D44C(v30);
  v55 = v32;
  v56 = v31;
  v34 = *(v33 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v45 - v36;
  v38 = v1[1];
  v45[1] = *v1;
  v39 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93CA1E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v38)
  {
    case 0:
      v57 = 0;
      sub_1C93CA334();
      sub_1C93CB2E4();
      (*(v46 + 8))(v29, v23);
      return (*(v55 + 8))(v37, v38);
    case 1:
      v58 = 1;
      sub_1C93CA2E0();
      sub_1C93CB2E4();
      (*(v47 + 8))(v22, v48);
      return (*(v55 + 8))(v37, v38);
    case 2:
      v60 = 3;
      sub_1C93CA238();
      v40 = v51;
      sub_1C93CB2E4();
      (*(v53 + 8))(v40, v54);
      return (*(v55 + 8))(v37, v38);
  }

  v59 = 2;
  sub_1C93CA28C();
  v42 = v49;
  v43 = v56;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v44 = v52;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v50 + 8))(v42, v44);
  return (*(v55 + 8))(v37, v43);
}

unint64_t sub_1C93CA1E4()
{
  result = qword_1EE02B9B8;
  if (!qword_1EE02B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9B8);
  }

  return result;
}

unint64_t sub_1C93CA238()
{
  result = qword_1EC39B1C8;
  if (!qword_1EC39B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B1C8);
  }

  return result;
}

unint64_t sub_1C93CA28C()
{
  result = qword_1EE02B9E8;
  if (!qword_1EE02B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9E8);
  }

  return result;
}

unint64_t sub_1C93CA2E0()
{
  result = qword_1EC39B1D0;
  if (!qword_1EC39B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B1D0);
  }

  return result;
}

unint64_t sub_1C93CA334()
{
  result = qword_1EE02B9D0;
  if (!qword_1EE02B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9D0);
  }

  return result;
}

uint64_t AuthenticatedSession.ResolvedUser.DataProtection.hash(into:)()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x1CCA87E40](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x1CCA87E40](v2);
    case 2:
      v2 = 3;
      return MEMORY[0x1CCA87E40](v2);
  }

  v4 = *v0;
  MEMORY[0x1CCA87E40](2);

  return String.hash(into:)();
}

Swift::Int AuthenticatedSession.ResolvedUser.DataProtection.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1CCA87E40](2);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1CCA87E40](v3);
  return Hasher._finalize()();
}

uint64_t AuthenticatedSession.ResolvedUser.DataProtection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v82 = a2;
  v85 = sub_1C93A1890(&qword_1EC39B1D8, &qword_1C9401C08);
  sub_1C939D44C(v85);
  v78 = v3;
  v5 = *(v4 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C939ED24();
  v80 = v7;
  v84 = sub_1C93A1890(&qword_1EC39B1E0, &qword_1C9401C10);
  sub_1C939D44C(v84);
  v79 = v8;
  v10 = *(v9 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C939ED24();
  v81 = v12;
  v13 = sub_1C93A1890(&qword_1EC39B1E8, &qword_1C9401C18);
  v14 = sub_1C939D44C(v13);
  v76 = v15;
  v77 = v14;
  v17 = *(v16 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - v19;
  v21 = sub_1C93A1890(&qword_1EC39B1F0, &qword_1C9401C20);
  sub_1C939D44C(v21);
  v75 = v22;
  v24 = *(v23 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - v26;
  v28 = sub_1C93A1890(&qword_1EC39B1F8, &unk_1C9401C28);
  sub_1C939D44C(v28);
  v83 = v29;
  v31 = *(v30 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v71 - v33;
  v35 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93CA1E4();
  v36 = v86;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
    goto LABEL_8;
  }

  v72 = v21;
  v73 = v27;
  v74 = v20;
  v37 = v85;
  v86 = a1;
  v38 = KeyedDecodingContainer.allKeys.getter();
  result = sub_1C93C0330(v38, 0);
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v53 = type metadata accessor for DecodingError();
    swift_allocError();
    v55 = v54;
    v56 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v55 = &type metadata for AuthenticatedSession.ResolvedUser.DataProtection;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x1E69E6AF8], v53);
    swift_willThrow();
    swift_unknownObjectRelease();
    v57 = sub_1C93CB2D0();
    v58(v57);
    a1 = v86;
LABEL_8:
    v59 = a1;
    return sub_1C939EA94(v59);
  }

  if (v41 < (v42 >> 1))
  {
    v71 = *(v40 + v41);
    sub_1C93C0328(v41 + 1);
    v44 = v43;
    v46 = v45;
    swift_unknownObjectRelease();
    if (v44 == v46 >> 1)
    {
      v47 = v82;
      switch(v71)
      {
        case 1:
          v88 = 1;
          sub_1C93CA2E0();
          v63 = v74;
          sub_1C939D59C();
          swift_unknownObjectRelease();
          (*(v76 + 8))(v63, v77);
          v66 = sub_1C93CB2D0();
          v67(v66);
          v51 = 0;
          v52 = 1;
          break;
        case 2:
          v89 = 2;
          sub_1C93CA28C();
          sub_1C939D59C();
          v64 = KeyedDecodingContainer.decode(_:forKey:)();
          v65 = v83;
          v85 = 0;
          v51 = v64;
          v52 = v68;
          swift_unknownObjectRelease();
          v69 = sub_1C93CB304();
          v70(v69);
          (*(v65 + 8))(v34, v28);
          break;
        case 3:
          v90 = 3;
          sub_1C93CA238();
          v60 = v80;
          sub_1C939D59C();
          swift_unknownObjectRelease();
          (*(v78 + 8))(v60, v37);
          v61 = sub_1C93CB2D0();
          v62(v61);
          v51 = 0;
          v52 = 2;
          break;
        default:
          v87 = 0;
          sub_1C93CA334();
          v48 = v73;
          sub_1C939D59C();
          swift_unknownObjectRelease();
          (*(v75 + 8))(v48, v72);
          v49 = sub_1C93CB2D0();
          v50(v49);
          v51 = 0;
          v52 = 0;
          break;
      }

      *v47 = v51;
      v47[1] = v52;
      v59 = v86;
      return sub_1C939EA94(v59);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1C93CAB68()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  AuthenticatedSession.ResolvedUser.DataProtection.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1C93CABE8()
{
  result = qword_1EC39B200;
  if (!qword_1EC39B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B200);
  }

  return result;
}

uint64_t sub_1C93CAC3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1C93CAC98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

_BYTE *_s14DataProtectionO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14DataProtectionO33DeviceToDeviceEncryptedCodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93CAEB4()
{
  result = qword_1EC39B208;
  if (!qword_1EC39B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B208);
  }

  return result;
}

unint64_t sub_1C93CAF0C()
{
  result = qword_1EC39B210;
  if (!qword_1EC39B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B210);
  }

  return result;
}

unint64_t sub_1C93CAF64()
{
  result = qword_1EE02B9C0;
  if (!qword_1EE02B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9C0);
  }

  return result;
}

unint64_t sub_1C93CAFBC()
{
  result = qword_1EE02B9C8;
  if (!qword_1EE02B9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9C8);
  }

  return result;
}

unint64_t sub_1C93CB014()
{
  result = qword_1EE02B9F0;
  if (!qword_1EE02B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9F0);
  }

  return result;
}

unint64_t sub_1C93CB06C()
{
  result = qword_1EE02B9F8;
  if (!qword_1EE02B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9F8);
  }

  return result;
}

unint64_t sub_1C93CB0C4()
{
  result = qword_1EE02B9D8;
  if (!qword_1EE02B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9D8);
  }

  return result;
}

unint64_t sub_1C93CB11C()
{
  result = qword_1EE02B9E0;
  if (!qword_1EE02B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9E0);
  }

  return result;
}

unint64_t sub_1C93CB174()
{
  result = qword_1EE02B998;
  if (!qword_1EE02B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B998);
  }

  return result;
}

unint64_t sub_1C93CB1CC()
{
  result = qword_1EE02B9A0;
  if (!qword_1EE02B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9A0);
  }

  return result;
}

unint64_t sub_1C93CB224()
{
  result = qword_1EE02B9A8;
  if (!qword_1EE02B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9A8);
  }

  return result;
}

unint64_t sub_1C93CB27C()
{
  result = qword_1EE02B9B0;
  if (!qword_1EE02B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B9B0);
  }

  return result;
}

uint64_t sub_1C93CB2E4()
{
  v2 = *(v0 - 96);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t static BundleID.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t static BundleID.Payload.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1C93CB3A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C93CB468(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1C93CB4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93CB3A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93CB4CC(uint64_t a1)
{
  v2 = sub_1C93CB8E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CB508(uint64_t a1)
{
  v2 = sub_1C93CB8E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93CB544(uint64_t a1)
{
  v2 = sub_1C93CB938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CB580(uint64_t a1)
{
  v2 = sub_1C93CB938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93CB5BC(uint64_t a1)
{
  v2 = sub_1C93CB98C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CB5F8(uint64_t a1)
{
  v2 = sub_1C93CB98C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BundleID.Payload.encode(to:)()
{
  sub_1C93C0358();
  v37 = v1;
  v4 = v3;
  v5 = sub_1C93A1890(&qword_1EC39B218, &qword_1C9402210);
  v6 = sub_1C939D44C(v5);
  v35 = v7;
  v36 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C939D578();
  v11 = sub_1C93A1890(&qword_1EC39B220, &qword_1C9402218);
  v12 = sub_1C939D44C(v11);
  v32 = v13;
  v33 = v12;
  v15 = *(v14 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v30 - v17;
  v18 = sub_1C93A1890(&qword_1EC39B228, &qword_1C9402220);
  sub_1C939D44C(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = v0[1];
  v34 = *v0;
  v27 = v4[4];
  sub_1C93A4890(v4, v4[3]);
  sub_1C93CB8E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26)
  {
    sub_1C93CB938();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v36;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v35 + 8))(v2, v28);
  }

  else
  {
    sub_1C93CB98C();
    v29 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v32 + 8))(v29, v33);
  }

  (*(v20 + 8))(v25, v18);
  sub_1C939EDBC();
}

unint64_t sub_1C93CB8E4()
{
  result = qword_1EE02B430;
  if (!qword_1EE02B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B430);
  }

  return result;
}

unint64_t sub_1C93CB938()
{
  result = qword_1EE02B408;
  if (!qword_1EE02B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B408);
  }

  return result;
}

unint64_t sub_1C93CB98C()
{
  result = qword_1EE02B400;
  if (!qword_1EE02B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B400);
  }

  return result;
}

void BundleID.Payload.init(from:)()
{
  sub_1C93C0358();
  v65 = v0;
  v3 = v2;
  v61 = v4;
  v64 = sub_1C93A1890(&qword_1EC39B230, &qword_1C9402228);
  sub_1C939D44C(v64);
  v62 = v5;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C939D578();
  v9 = sub_1C93A1890(&qword_1EC39B238, &qword_1C9402230);
  sub_1C939D44C(v9);
  v60 = v10;
  v12 = *(v11 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = sub_1C93A1890(&qword_1EC39B240, &unk_1C9402238);
  sub_1C939D44C(v16);
  v63 = v17;
  v19 = *(v18 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93CB8E4();
  v22 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    goto LABEL_8;
  }

  v57 = v9;
  v58 = v15;
  v65 = v1;
  v23 = v64;
  v24 = KeyedDecodingContainer.allKeys.getter();
  sub_1C93C0330(v24, 0);
  v59 = v3;
  if (v26 == v27 >> 1)
  {
LABEL_7:
    v36 = type metadata accessor for DecodingError();
    swift_allocError();
    v38 = v37;
    v39 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v38 = &type metadata for BundleID.Payload;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v40 = *(v63 + 8);
    v41 = sub_1C939D56C();
    v42(v41);
    v3 = v59;
LABEL_8:
    v43 = v3;
LABEL_9:
    sub_1C939EA94(v43);
    sub_1C939EDBC();
    return;
  }

  if (v26 < (v27 >> 1))
  {
    v66 = *(v25 + v26);
    v28 = sub_1C93C0328(v26 + 1);
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    v33 = v62;
    if (v30 == v32 >> 1)
    {
      if (v66)
      {
        sub_1C93CB938();
        v34 = v65;
        sub_1C939EDD4();
        v35 = v63;
        v60 = v28;
        v49 = KeyedDecodingContainer.decode(_:forKey:)();
        v51 = v50;
        swift_unknownObjectRelease();
        (*(v33 + 8))(v34, v23);
        v52 = *(v35 + 8);
        v53 = sub_1C939D56C();
        v54(v53);
      }

      else
      {
        sub_1C93CB98C();
        v44 = v58;
        sub_1C939EDD4();
        v45 = v63;
        swift_unknownObjectRelease();
        (*(v60 + 8))(v44, v57);
        v46 = *(v45 + 8);
        v47 = sub_1C939D56C();
        v48(v47);
        v49 = 0;
        v51 = 0;
      }

      v43 = v59;
      v55 = v61;
      *v61 = v49;
      v55[1] = v51;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t BundleID.payload.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL static BundleID.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      return v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

LABEL_10:

    return 0;
  }

  if (v4)
  {
    goto LABEL_10;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1C93CBF88(uint64_t a1)
{
  v2 = sub_1C93CC300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CBFC4(uint64_t a1)
{
  v2 = sub_1C93CC300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BundleID.encode(to:)()
{
  sub_1C93C0358();
  v2 = v1;
  v3 = sub_1C93A1890(&qword_1EC39B248, &qword_1C9402248);
  sub_1C939D44C(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v13 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93CC300();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14[0] = v11;
  v14[1] = v12;
  sub_1C93CC354();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  (*(v5 + 8))(v10, v3);
  sub_1C939EDBC();
}

void BundleID.init(from:)()
{
  sub_1C93C0358();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C93A1890(&qword_1EC39B250, &qword_1C9402250);
  sub_1C939D44C(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C939D578();
  v12 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93CC300();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_1C93CC3A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v1, v6);
    *v5 = v13;
  }

  sub_1C939EA94(v3);
  sub_1C939EDBC();
}

uint64_t BundleID.description.getter()
{
  v2 = *v0;
  v3 = v0[1];

  return String.init<A>(describing:)();
}

unint64_t sub_1C93CC300()
{
  result = qword_1EE02B448;
  if (!qword_1EE02B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B448);
  }

  return result;
}

unint64_t sub_1C93CC354()
{
  result = qword_1EE02B3E8;
  if (!qword_1EE02B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3E8);
  }

  return result;
}

unint64_t sub_1C93CC3A8()
{
  result = qword_1EE02ADB0;
  if (!qword_1EE02ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02ADB0);
  }

  return result;
}

unint64_t sub_1C93CC400()
{
  result = qword_1EC39B258;
  if (!qword_1EC39B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B258);
  }

  return result;
}

unint64_t sub_1C93CC458()
{
  result = qword_1EC39B260;
  if (!qword_1EC39B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B260);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleID.Payload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93CC5C8(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93CC678()
{
  result = qword_1EC39B268;
  if (!qword_1EC39B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B268);
  }

  return result;
}

unint64_t sub_1C93CC6D0()
{
  result = qword_1EC39B270;
  if (!qword_1EC39B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B270);
  }

  return result;
}

unint64_t sub_1C93CC728()
{
  result = qword_1EC39B278;
  if (!qword_1EC39B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B278);
  }

  return result;
}

unint64_t sub_1C93CC780()
{
  result = qword_1EE02B438;
  if (!qword_1EE02B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B438);
  }

  return result;
}

unint64_t sub_1C93CC7D8()
{
  result = qword_1EE02B440;
  if (!qword_1EE02B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B440);
  }

  return result;
}

unint64_t sub_1C93CC830()
{
  result = qword_1EE02B3F0;
  if (!qword_1EE02B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3F0);
  }

  return result;
}

unint64_t sub_1C93CC888()
{
  result = qword_1EE02B3F8;
  if (!qword_1EE02B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3F8);
  }

  return result;
}

unint64_t sub_1C93CC8E0()
{
  result = qword_1EE02B410;
  if (!qword_1EE02B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B410);
  }

  return result;
}

unint64_t sub_1C93CC938()
{
  result = qword_1EE02B418;
  if (!qword_1EE02B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B418);
  }

  return result;
}

unint64_t sub_1C93CC990()
{
  result = qword_1EE02B420;
  if (!qword_1EE02B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B420);
  }

  return result;
}

unint64_t sub_1C93CC9E8()
{
  result = qword_1EE02B428;
  if (!qword_1EE02B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B428);
  }

  return result;
}

uint64_t ContainerID.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContainerID.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C93CCB1C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Entitlements.Error();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  static Entitlements.currentProcess.getter(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v5 = v11;
  v8 = 0x2E64756F6C4369;
  v9 = 0xE700000000000000;
  MEMORY[0x1CCA87780](v10[0], v10[1]);

  v7 = v9;
  *a1 = v8;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  return result;
}

uint64_t static ContainerID.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE02B238 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EE02B248;
  v3 = byte_1EE02B250;
  *a1 = qword_1EE02B240;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t static ContainerID.fromEntitlements<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a2;
  (*(a2 + 8))(&v12, a1, a2);
  v6 = v12;
  v7 = v13;
  (*(v3 + 16))(&v12, a1, v3);
  LOBYTE(v3) = v12;
  sub_1C939D5BC();
  v12 = v8;
  v13 = v9;
  MEMORY[0x1CCA87780](v6, v7);

  v11 = v13;
  *a3 = v12;
  *(a3 + 8) = v11;
  *(a3 + 16) = v3;
  return result;
}

uint64_t static ContainerID.fromEntitlements.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Entitlements.Error();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Entitlements.currentProcess.getter(v6, &v16);
  if (v1)
  {
    sub_1C93CCF04();
    swift_allocError();
    return sub_1C93CCF5C(v6, v7);
  }

  else
  {
    v9 = v17;
    sub_1C939D5BC();
    v14 = v10;
    v15 = v11;
    MEMORY[0x1CCA87780]();

    v12 = v15;
    *a1 = v14;
    *(a1 + 8) = v12;
    *(a1 + 16) = v9;
  }

  return result;
}

unint64_t sub_1C93CCF04()
{
  result = qword_1EE02B200;
  if (!qword_1EE02B200)
  {
    type metadata accessor for Entitlements.Error();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B200);
  }

  return result;
}

uint64_t sub_1C93CCF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Entitlements.Error();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93CCFD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C93CD0AC(char a1)
{
  if (a1)
  {
    return 0x6D706F6C65766564;
  }

  else
  {
    return 0x69746375646F7270;
  }
}

uint64_t sub_1C93CD0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93CCFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93CD120(uint64_t a1)
{
  v2 = sub_1C93CE2E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CD15C(uint64_t a1)
{
  v2 = sub_1C93CE2E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93CD198(uint64_t a1)
{
  v2 = sub_1C93CE33C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CD1D4(uint64_t a1)
{
  v2 = sub_1C93CE33C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C93CD210(uint64_t a1)
{
  v2 = sub_1C93CE390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CD24C(uint64_t a1)
{
  v2 = sub_1C93CE390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContainerID.Environment.encode(to:)()
{
  sub_1C93C0358();
  v2 = v1;
  v3 = sub_1C93A1890(&qword_1EC39B280, &qword_1C9402860);
  v4 = sub_1C939D44C(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = sub_1C93A1890(&qword_1EC39B288, &qword_1C9402868);
  v11 = sub_1C939D44C(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = sub_1C93A1890(&qword_1EC39B290, &qword_1C9402870);
  sub_1C939D44C(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93CE2E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1C93CE33C();
    v29 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1C93CE390();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  sub_1C939EDBC();
}

Swift::Int ContainerID.Environment.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](v1);
  return Hasher._finalize()();
}

void ContainerID.Environment.init(from:)()
{
  sub_1C93C0358();
  v54 = v0;
  v2 = v1;
  v51 = v3;
  v53 = sub_1C93A1890(&qword_1EC39B2A0, &qword_1C9402878);
  sub_1C939D44C(v53);
  v50 = v4;
  v6 = *(v5 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v46 - v8;
  v10 = sub_1C93A1890(&qword_1EC39B2A8, &qword_1C9402880);
  sub_1C939D44C(v10);
  v49 = v11;
  v13 = *(v12 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v46 - v15;
  v17 = sub_1C93A1890(&qword_1EC39B2B0, &unk_1C9402888);
  sub_1C939D44C(v17);
  v52 = v18;
  v20 = *(v19 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v46 - v22;
  v24 = v2[4];
  sub_1C93A4890(v2, v2[3]);
  sub_1C93CE2E8();
  v25 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_10;
  }

  v47 = v10;
  v48 = v16;
  v54 = v2;
  v26 = v53;
  v27 = KeyedDecodingContainer.allKeys.getter();
  v28 = sub_1C93C0330(v27, 0);
  if (v30 == v31 >> 1)
  {
    v53 = v28;
LABEL_9:
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    v44 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
    *v43 = &type metadata for ContainerID.Environment;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v23, v17);
    v2 = v54;
LABEL_10:
    sub_1C939EA94(v2);
LABEL_11:
    sub_1C939EDBC();
    return;
  }

  v46[1] = 0;
  if (v30 < (v31 >> 1))
  {
    v32 = *(v29 + v30);
    v33 = sub_1C93C0328(v30 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      if (v32)
      {
        sub_1C93CE33C();
        v38 = v9;
        sub_1C93C979C();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v38, v26);
      }

      else
      {
        sub_1C93CE390();
        v45 = v48;
        sub_1C93C979C();
        v39 = v51;
        v40 = v52;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v45, v47);
      }

      (*(v40 + 8))(v23, v35);
      *v39 = v32;
      sub_1C939EA94(v54);
      goto LABEL_11;
    }

    v53 = v33;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static ContainerID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1C93CDA84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C93CDB50(char a1)
{
  if (a1)
  {
    return 0x6D6E6F7269766E65;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C93CDB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93CDA84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93CDBB8(uint64_t a1)
{
  v2 = sub_1C93CE3E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CDBF4(uint64_t a1)
{
  v2 = sub_1C93CE3E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContainerID.encode(to:)()
{
  sub_1C93C0358();
  v3 = v2;
  v4 = sub_1C93A1890(&qword_1EC39B2B8, &qword_1C9402898);
  sub_1C939D44C(v4);
  v15 = v5;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v16 = *(v0 + 16);
  v13 = v3[4];
  sub_1C93A4890(v3, v3[3]);
  sub_1C93CE3E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    sub_1C93CE438();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v15 + 8))(v10, v4);
  sub_1C939EDBC();
}

uint64_t ContainerID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  String.hash(into:)();
  return MEMORY[0x1CCA87E40](v3);
}

Swift::Int ContainerID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v3);
  return Hasher._finalize()();
}

void ContainerID.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1C93C0358();
  v14 = v13;
  v16 = v15;
  v17 = sub_1C93A1890(&qword_1EC39B2C0, &unk_1C94028A0);
  sub_1C939D44C(v17);
  v19 = *(v18 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v14[4];
  sub_1C93A4890(v14, v14[3]);
  sub_1C93CE3E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    sub_1C939EA94(v14);
  }

  else
  {
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    sub_1C93CE48C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = sub_1C93CEBA0();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = v24;
    *(v16 + 16) = a12;

    sub_1C939EA94(v14);
  }

  sub_1C939EDBC();
}

Swift::Int sub_1C93CE004()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v3);
  return Hasher._finalize()();
}

uint64_t sub_1C93CE098()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_1C93F58A8();
}

uint64_t ContainerID.propertyDescriptions.getter()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25[-v6];
  v9 = *v0;
  v8 = v0[1];
  v26 = *(v0 + 16);
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v10 = (type metadata accessor for PropertyDescription() - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C93FE890;
  v14 = (v13 + v12);
  swift_bridgeObjectRetain_n();
  static OSLogPrivacy.public.getter();
  v27 = v9;
  v28 = v8;
  v15 = String.init<A>(describing:)();
  v17 = v16;
  sub_1C93A86A8(v7, v5);
  v18 = v10[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v7);
  *v14 = 1701667182;
  v14[1] = 0xE400000000000000;
  v14[2] = v15;
  v14[3] = v17;
  sub_1C93A8768(v5, v14 + v18);

  v19 = (v14 + v11);
  static OSLogPrivacy.public.getter();
  LOBYTE(v27) = v26;
  v20 = String.init<A>(describing:)();
  v22 = v21;
  sub_1C93A86A8(v7, v5);
  v23 = v10[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v7);
  *v19 = 0x6D6E6F7269766E65;
  v19[1] = 0xEB00000000746E65;
  v19[2] = v20;
  v19[3] = v22;
  sub_1C93A8768(v5, v14 + v11 + v23);
  return v13;
}

unint64_t sub_1C93CE2E8()
{
  result = qword_1EE02BED8;
  if (!qword_1EE02BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BED8);
  }

  return result;
}

unint64_t sub_1C93CE33C()
{
  result = qword_1EC39B298;
  if (!qword_1EC39B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B298);
  }

  return result;
}

unint64_t sub_1C93CE390()
{
  result = qword_1EE02BEC0;
  if (!qword_1EE02BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEC0);
  }

  return result;
}

unint64_t sub_1C93CE3E4()
{
  result = qword_1EE02BEF0;
  if (!qword_1EE02BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEF0);
  }

  return result;
}

unint64_t sub_1C93CE438()
{
  result = qword_1EE02BE98;
  if (!qword_1EE02BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BE98);
  }

  return result;
}

unint64_t sub_1C93CE48C()
{
  result = qword_1EE02B258;
  if (!qword_1EE02B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B258);
  }

  return result;
}

unint64_t sub_1C93CE4E4()
{
  result = qword_1EC39B2C8;
  if (!qword_1EC39B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B2C8);
  }

  return result;
}

unint64_t sub_1C93CE53C()
{
  result = qword_1EC39B2D0;
  if (!qword_1EC39B2D0)
  {
    sub_1C93B27AC(&qword_1EC39B2D8, &qword_1C9402968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B2D0);
  }

  return result;
}

unint64_t sub_1C93CE5A4()
{
  result = qword_1EC39B2E0;
  if (!qword_1EC39B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B2E0);
  }

  return result;
}

unint64_t sub_1C93CE5F8(uint64_t a1)
{
  result = sub_1C93CE620();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93CE620()
{
  result = qword_1EC39B2E8;
  if (!qword_1EC39B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B2E8);
  }

  return result;
}

uint64_t sub_1C93CE674(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93CE6B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C93CE724(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93CE824()
{
  result = qword_1EC39B2F0;
  if (!qword_1EC39B2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B2F0);
  }

  return result;
}

unint64_t sub_1C93CE87C()
{
  result = qword_1EC39B2F8;
  if (!qword_1EC39B2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B2F8);
  }

  return result;
}

unint64_t sub_1C93CE8D4()
{
  result = qword_1EE02BEE0;
  if (!qword_1EE02BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEE0);
  }

  return result;
}

unint64_t sub_1C93CE92C()
{
  result = qword_1EE02BEE8;
  if (!qword_1EE02BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEE8);
  }

  return result;
}

unint64_t sub_1C93CE984()
{
  result = qword_1EE02BEB0;
  if (!qword_1EE02BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEB0);
  }

  return result;
}

unint64_t sub_1C93CE9DC()
{
  result = qword_1EE02BEB8;
  if (!qword_1EE02BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEB8);
  }

  return result;
}

unint64_t sub_1C93CEA34()
{
  result = qword_1EE02BEA0;
  if (!qword_1EE02BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEA0);
  }

  return result;
}

unint64_t sub_1C93CEA8C()
{
  result = qword_1EE02BEA8;
  if (!qword_1EE02BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEA8);
  }

  return result;
}

unint64_t sub_1C93CEAE4()
{
  result = qword_1EE02BEC8;
  if (!qword_1EE02BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BEC8);
  }

  return result;
}

unint64_t sub_1C93CEB3C()
{
  result = qword_1EE02BED0;
  if (!qword_1EE02BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BED0);
  }

  return result;
}

uint64_t ResolvedBundleID.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ResolvedBundleID.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1C93CEC40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001C94065B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93CECE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93CEC40(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93CED0C(uint64_t a1)
{
  v2 = sub_1C93CEEB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CED48(uint64_t a1)
{
  v2 = sub_1C93CEEB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvedBundleID.encode(to:)(void *a1)
{
  v4 = sub_1C93A1890(&qword_1EC39B300, &qword_1C9402E90);
  v5 = sub_1C93B34FC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93CEEB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1C93CEEB0()
{
  result = qword_1EC39B308;
  if (!qword_1EC39B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B308);
  }

  return result;
}

uint64_t ResolvedBundleID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int ResolvedBundleID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ResolvedBundleID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1C93A1890(&qword_1EC39B310, &qword_1C9402E98);
  v7 = sub_1C93B34FC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93CEEB0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return sub_1C939EA94(a1);
}

uint64_t ResolvedBundleID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1C93CF12C()
{
  result = qword_1EC39B318;
  if (!qword_1EC39B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B318);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ResolvedBundleID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93CF244()
{
  result = qword_1EC39B320;
  if (!qword_1EC39B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B320);
  }

  return result;
}

unint64_t sub_1C93CF29C()
{
  result = qword_1EC39B328;
  if (!qword_1EC39B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B328);
  }

  return result;
}

unint64_t sub_1C93CF2F4()
{
  result = qword_1EC39B330;
  if (!qword_1EC39B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B330);
  }

  return result;
}

uint64_t SaltedHash.hash.getter()
{
  v1 = *(v0 + 8);
  sub_1C93A1988(v1, *(v0 + 16));
  return v1;
}

uint64_t SaltedHash.hash.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C93A17C8(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static SaltedHash.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = a2[1];
    v3 = a2[2];
    v6 = a1 + 1;
    v4 = a1[1];
    v5 = v6[1];
    JUMPOUT(0x1CCA874A0);
  }

  return 0;
}

uint64_t sub_1C93CF42C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953259891 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752392040 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C93CF4FC(char a1)
{
  if (a1)
  {
    return 1752392040;
  }

  else
  {
    return 1953259891;
  }
}

uint64_t sub_1C93CF524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93CF42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93CF54C(uint64_t a1)
{
  v2 = sub_1C93CF754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93CF588(uint64_t a1)
{
  v2 = sub_1C93CF754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SaltedHash.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39B338, &qword_1C94030F0);
  v4 = sub_1C939D44C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v16 - v9;
  v11 = *v1;
  v16[0] = v1[1];
  v12 = v1[2];
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93CF754();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  v14 = v16[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v17 = v16[0];
    v18 = v12;
    v19 = 1;
    sub_1C93A1988(v16[0], v12);
    sub_1C93A4928();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A17C8(v17, v18);
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1C93CF754()
{
  result = qword_1EE02BF40;
  if (!qword_1EE02BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF40);
  }

  return result;
}

uint64_t SaltedHash.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1CCA87E60](*v0);

  return Data.hash(into:)();
}

Swift::Int SaltedHash.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E60](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SaltedHash.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39B340, &qword_1C94030F8);
  v6 = sub_1C939D44C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93CF754();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v18 = 1;
    sub_1C93A4A6C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v12, v5);
    v15 = v17;
    *a2 = v14;
    *(a2 + 8) = v15;
  }

  return sub_1C939EA94(a1);
}

Swift::Int sub_1C93CFA1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E60](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

double SaltedHash.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v6 = 0;
  MEMORY[0x1CCA884C0](&v6, 8);
  sub_1C93CFB0C(a1, v6, &v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1C93CFB0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for SHA256();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SHA256Digest();
  v37 = *(v39 - 8);
  v10 = *(v37 + 64);
  v11 = MEMORY[0x1EEE9AC00](v39);
  v36 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v33 - v13;
  v42 = xmmword_1C94030E0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v34 = a2;
    v35 = a3;
    v33[1] = a1;
    v16 = (a1 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;

      v19 = sub_1C93D044C(v17, v18);
      v21 = v20;
      Data.append(_:)();
      sub_1C93A17C8(v19, v21);
      switch(*(&v42 + 1) >> 62)
      {
        case 2:
          v22 = *(v42 + 24);
          break;
        default:
          break;
      }

      v23 = sub_1C93A1890(&qword_1EC39B360, &qword_1C9403380);
      v41[3] = v23;
      v41[4] = sub_1C93D0944();
      LOBYTE(v41[0]) = 0;
      v40 = *sub_1C93A4890(v41, v23);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1C939EA94(v41);
      v16 += 2;
      --v15;
    }

    while (v15);

    a2 = v34;
    a3 = v35;
  }

  else
  {
  }

  sub_1C93D09A8(bswap64(a2));
  v24 = v42;
  sub_1C93D1198(&qword_1EE02AD88, MEMORY[0x1E6966620]);
  dispatch thunk of HashFunction.init()();
  sub_1C93A1988(v24, *(&v24 + 1));
  sub_1C93D10FC(v24, *(&v24 + 1));
  sub_1C93A17C8(v24, *(&v24 + 1));
  dispatch thunk of HashFunction.finalize()();
  (*(v38 + 8))(v9, v6);
  v25 = v36;
  v26 = v37;
  v27 = v39;
  (*(v37 + 16))(v36, v14, v39);
  v28 = sub_1C93D030C(v25);
  v30 = v29;
  (*(v26 + 8))(v14, v27);
  *a3 = a2;
  a3[1] = v28;
  a3[2] = v30;
  result = sub_1C93A17C8(v42, *(&v42 + 1));
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SaltedHash.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = result;
    sub_1C93A1890(&qword_1EC39B348, &qword_1C9403100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C93FCDF0;
    *(inited + 32) = v5;
    *(inited + 40) = a2;
    *&v9 = 0;
    MEMORY[0x1CCA884C0](&v9, 8);
    result = sub_1C93CFB0C(inited, v9, &v9);
    v7 = v9;
    v8 = v10;
  }

  else
  {
    v7 = 0uLL;
    v8 = 0xF000000000000000;
  }

  *a3 = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t SaltedHash.matches(_:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];

  sub_1C93CFB0C(v4, v2, &v9);
  v5 = v10;
  v6 = v11;
  if (v2 == v9)
  {
    v7 = MEMORY[0x1CCA874A0](v1, v3, v10, v11);
  }

  else
  {
    v7 = 0;
  }

  sub_1C93A17C8(v5, v6);
  return v7 & 1;
}

unint64_t sub_1C93D000C()
{
  result = qword_1EC39B350;
  if (!qword_1EC39B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B350);
  }

  return result;
}

uint64_t sub_1C93D0060(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C93D007C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1C93D00C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SaltedHash.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93D0208()
{
  result = qword_1EC39B358;
  if (!qword_1EC39B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B358);
  }

  return result;
}

unint64_t sub_1C93D0260()
{
  result = qword_1EE02BF30;
  if (!qword_1EE02BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF30);
  }

  return result;
}

unint64_t sub_1C93D02B8()
{
  result = qword_1EE02BF38;
  if (!qword_1EE02BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF38);
  }

  return result;
}

uint64_t sub_1C93D030C(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v8 = v2;
  v9 = sub_1C93D1198(&qword_1EE02AD90, MEMORY[0x1E69663E0]);
  v3 = sub_1C93D11E0(v7);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_1C93A4890(v7, v8);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_1C939EA94(v7);
  (*(v4 + 8))(a1, v2);
  return v6;
}

uint64_t sub_1C93D044C(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  *&v37 = a1;
  *(&v37 + 1) = a2;

  sub_1C93A1890(&qword_1EC39B368, &qword_1C9403388);
  if (swift_dynamicCast())
  {
    sub_1C93D1540(v35, &v38);
    sub_1C93A4890(&v38, v39);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v35[0] = v37;
    sub_1C939EA94(&v38);
    goto LABEL_59;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_1C93D13F4(v35);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v35[0] = a1;
    *(&v35[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v35;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1C93D0A44(v4, v5, &v38);
  v6 = *(&v38 + 1);
  v7 = v38;
  if (*(&v38 + 1) >> 60 != 15)
  {
    v35[0] = v38;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v35[0] = MEMORY[0x1CCA87480](v8);
  *(&v35[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v35[0]);
  v10 = sub_1C93D0B60(sub_1C93D1494);
  v12 = *(&v35[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v35[0]);
  switch(*(&v35[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v35[0]) - LODWORD(v35[0]);
      if (__OFSUB__(DWORD1(v35[0]), v35[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v35[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v35[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v35[0] + 16);
      v20 = *(*&v35[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v37 + 7) = 0;
      *&v37 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v35[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v27 = sub_1C93D14B0(v17, v13, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v38 = v13;
      *(&v38 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v38 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v17 = sub_1C93D14B0(v17, v13, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    v17 = String.UTF8View._foreignIndex(after:)();
LABEL_46:
    *(&v37 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      *&v38 = v37;
      *(&v38 + 6) = *(&v37 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    *&v38 = v37;
    *(&v38 + 6) = *(&v37 + 6);
    Data._Representation.append(contentsOf:)();
    sub_1C93D152C(v34, v6);
    goto LABEL_58;
  }

  sub_1C93D152C(v34, v6);
LABEL_59:
  v31 = v35[0];
  sub_1C93A1988(*&v35[0], *(&v35[0] + 1));

  sub_1C93A17C8(v31, *(&v31 + 1));
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

unint64_t sub_1C93D0944()
{
  result = qword_1EE02AD60;
  if (!qword_1EE02AD60)
  {
    sub_1C93B27AC(&qword_1EC39B360, &qword_1C9403380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AD60);
  }

  return result;
}

uint64_t sub_1C93D09A8(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7[3] = MEMORY[0x1E69E6290];
  v7[4] = MEMORY[0x1E6969DF8];
  v7[0] = &v6;
  v7[1] = v7;
  v1 = sub_1C93A4890(v7, MEMORY[0x1E69E6290]);
  v3 = *v1;
  v2 = v1[1];
  Data._Representation.append(contentsOf:)();
  result = sub_1C939EA94(v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C93D0A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1C93D0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1C93D0FE4(sub_1C93D1598, v5, a1, a2);
}

uint64_t sub_1C93D0B60(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C93A17C8(v6, v5);
      *v4 = xmmword_1C94030E0;
      sub_1C93A17C8(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1C93D1048(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C93A17C8(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1C94030E0;
      sub_1C93A17C8(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v20;
      v9 = sub_1C93D1048(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_1C93A17C8(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_1C93D0F24@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1CCA87440]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1CCA87450]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C93D0F9C(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C93D0FE4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1C93D1048(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1CCA873D0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void sub_1C93D10FC(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1C93D1314(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1C93D1240();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1C93D1198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1C93D11E0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1C93D1240()
{
  v2 = *MEMORY[0x1E69E9840];
  type metadata accessor for SHA256();
  sub_1C93D1198(&qword_1EE02AD88, MEMORY[0x1E6966620]);
  result = dispatch thunk of HashFunction.update(bufferPointer:)();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C93D1314(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1CCA873D0]();
      type metadata accessor for SHA256();
      sub_1C93D1198(&qword_1EE02AD88, MEMORY[0x1E6966620]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C93D13F4(uint64_t a1)
{
  v2 = sub_1C93A1890(&qword_1EC39B370, &unk_1C9403390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C93D145C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1C93D0B0C(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1C93D14B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCA877B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C93D152C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C93A17C8(a1, a2);
  }

  return a1;
}

uint64_t sub_1C93D1540(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C93D1558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1C93D0F9C(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_1C93D15B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C93D169C;

  return Session.init(configuration:previousInvalidationContext:onInvalidation:)();
}

uint64_t sub_1C93D169C()
{
  sub_1C939ED74();
  sub_1C939D504();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C93B5C54();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1C93D1784(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C93D182C;

  return Session.allowListedBundleIDs()(a1, a2);
}

uint64_t sub_1C93D182C()
{
  sub_1C939ED74();
  v3 = v2;
  sub_1C939D504();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1C93B5C54();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t SessionID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionID.uuid.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C93D1A14(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C93D1AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93D1A14(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93D1ACC(uint64_t a1)
{
  v2 = sub_1C93D1CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93D1B08(uint64_t a1)
{
  v2 = sub_1C93D1CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SessionID.encode(to:)(void *a1)
{
  v2 = sub_1C93A1890(&qword_1EC39B378, &qword_1C94033A0);
  v3 = sub_1C939D44C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93D1CA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_1C93D2DC8();
  sub_1C93D1D68(v11, v12);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v9, v2);
}

unint64_t sub_1C93D1CA0()
{
  result = qword_1EE02B3D8;
  if (!qword_1EE02B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3D8);
  }

  return result;
}

uint64_t SessionID.hash(into:)()
{
  type metadata accessor for UUID();
  sub_1C93D2DC8();
  sub_1C93D1D68(v0, v1);

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1C93D1D68(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int SessionID.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1C93D2DC8();
  sub_1C93D1D68(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SessionID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for UUID();
  v4 = sub_1C939D44C(v3);
  v29 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C93A1890(&qword_1EC39B380, &qword_1C94033A8);
  v10 = sub_1C939D44C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v27 - v15;
  v17 = type metadata accessor for SessionID(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v21 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93D1CA0();
  v22 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v23 = v29;
    sub_1C93D2DC8();
    sub_1C93D1D68(v24, v25);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v16, v9);
    (*(v23 + 40))(v20, v30, v3);
    sub_1C93D2198(v20, v28);
  }

  sub_1C939EA94(a1);
  return sub_1C93D213C(v20);
}

Swift::Int sub_1C93D2098()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1C93D1D68(&qword_1EC39AA08, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1C93D213C(uint64_t a1)
{
  v2 = type metadata accessor for SessionID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C93D2198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionID.description.getter()
{
  type metadata accessor for UUID();
  sub_1C93D2DC8();
  sub_1C93D1D68(v0, v1);

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t dispatch thunk of Session.init(configuration:previousInvalidationContext:onInvalidation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_1C93D169C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of Session.allowListedBundleIDs()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C93D2590;

  return v9(a1, a2);
}

uint64_t sub_1C93D2590()
{
  sub_1C939ED74();
  v2 = v1;
  sub_1C939D504();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_1C93B5C54();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1C93D2710(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C93D2748()
{
  sub_1C93D27BC();
  if (v0 <= 0x3F)
  {
    sub_1C93D2820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C93D27BC()
{
  if (!qword_1EE02B2E8)
  {
    sub_1C93B27AC(&qword_1EC39B388, "XI");
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02B2E8);
    }
  }
}

void sub_1C93D2820()
{
  if (!qword_1EE02B5E8)
  {
    type metadata accessor for SessionInvalidationContext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE02B5E8);
    }
  }
}

uint64_t sub_1C93D28B0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93D291C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_23:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_23;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1C93D2A3C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SessionID.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C93D2CC4()
{
  result = qword_1EC39B390;
  if (!qword_1EC39B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39B390);
  }

  return result;
}

unint64_t sub_1C93D2D1C()
{
  result = qword_1EE02B3C8;
  if (!qword_1EE02B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3C8);
  }

  return result;
}

unint64_t sub_1C93D2D74()
{
  result = qword_1EE02B3D0;
  if (!qword_1EE02B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B3D0);
  }

  return result;
}

void sub_1C93D2DE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(v4 + 72);
  v7 = *(v4 + 80);
  v9 = *(v4 + 88);
  v10 = *(v4 + 96);
  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_12;
    }

    if ((a3 & 0x1000000) == 0)
    {
      v11 = *(v4 + 64);
      _StringGuts.grow(_:)(22);

      *&v22 = v11;
      *(&v22 + 1) = v8;

      sub_1C93A1890(&qword_1EC39AA90, &qword_1C93FD2A0);
      v12 = String.init<A>(describing:)();
      MEMORY[0x1CCA87780](v12);

      MEMORY[0x1CCA87780](34, 0xE100000000000000);
      v13 = 0xD000000000000013;
      v14 = 0x80000001C9406150;
      v15 = 4;
LABEL_16:
      *a4 = v15;
      *(a4 + 8) = v13;
      *(a4 + 16) = v14;
      sub_1C93A888C();
      swift_willThrowTypedImpl();
      return;
    }
  }

  if (*(v4 + 96))
  {
    if ((a3 & 0x10000) != 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    _StringGuts.grow(_:)(30);

    *&v22 = 0xD00000000000001BLL;
    *(&v22 + 1) = 0x80000001C9406130;
    sub_1C939F004(v7, v9, v10);
    sub_1C93A1890(&qword_1EC39AA88, &qword_1C93FD298);
    v16 = String.init<A>(describing:)();
    MEMORY[0x1CCA87780](v16);

    MEMORY[0x1CCA87780](34, 0xE100000000000000);
    v13 = 0xD00000000000001BLL;
    v14 = 0x80000001C9406130;
    v15 = 3;
    goto LABEL_16;
  }

  if (v9)
  {
    sub_1C939F004(*(v4 + 80), *(v4 + 88), 0);

    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1C939F004(*(v4 + 80), 0, 0);
    swift_bridgeObjectRelease_n();
  }

LABEL_12:
  v23 = *(v4 + 24);
  if (*(&v23 + 1) && (a3 & 0x100) == 0)
  {
    _StringGuts.grow(_:)(34);

    v19 = 0xD00000000000001FLL;
    v20 = 0x80000001C9406110;
LABEL_15:
    v22 = v23;
    sub_1C93D9E64(&v23, v21);
    v17 = String.init<A>(describing:)();
    MEMORY[0x1CCA87780](v17);

    MEMORY[0x1CCA87780](34, 0xE100000000000000);
    v13 = v19;
    v14 = v20;
    v15 = 2;
    goto LABEL_16;
  }

  v18 = *(v4 + 48);
  if (v18 != 1)
  {
    if (!v18)
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    if ((a3 & 0x100) == 0)
    {
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      MEMORY[0x1CCA87780](0xD000000000000035, 0x80000001C94060D0);
      goto LABEL_15;
    }
  }
}

uint64_t sub_1C93D3108()
{
  sub_1C93DA724();
  v2 = *v1;
  v3 = v1[1];
  *(v0 + 48) = *(v1 + 4);
  *(v0 + 56) = v4;
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  swift_task_alloc();
  sub_1C93DA6BC();
  *(v0 + 64) = v5;
  *v5 = v6;
  v7 = sub_1C93DA6EC(v5);

  return v8(v7);
}

uint64_t sub_1C93D31C4()
{
  sub_1C93DA69C();
  v3 = v2;
  sub_1C939D504();
  v5 = v4;
  sub_1C93DA530();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  sub_1C93B5C54();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 56) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1C93D32BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for Entitlements.Error();
  v4[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v7 = *(*(sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = *(*(type metadata accessor for SessionID(0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93D33B8, 0, 0);
}

uint64_t sub_1C93D33B8()
{
  sub_1C93DA798();
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[11];
  UUID.init()();
  v5 = sub_1C93A5A40();
  sub_1C93A1DE4(v5, v6);
  if (qword_1EE02B078 != -1)
  {
    sub_1C93DA4A0();
  }

  v7 = v1[15];
  sub_1C93D5174(qword_1EE0358D0, (v1 + 2));
  sub_1C93DA7A4();
  if (!v0)
  {
    sub_1C93DA758();
    sub_1C93DA5AC(&unk_1C94036C8);
    v30 = swift_task_alloc();
    v1[18] = v30;
    *v30 = v1;
    sub_1C93DA604(v30);
    sub_1C93DA880();

    __asm { BR              X8 }
  }

  v9 = v1[16];
  v8 = v1[17];
  v11 = v1[14];
  v10 = v1[15];
  sub_1C93DA1D0(v1[10]);
  sub_1C939EA94(v1 + 2);
  sub_1C93DA70C();
  sub_1C93A4838(v12, v13, v14);
  sub_1C93DA444();
  sub_1C93DA174(v8, v15);
  sub_1C93DA474();
  sub_1C93D961C(v16, v17);
  sub_1C93DA638();
  swift_allocError();
  sub_1C93DA45C();
  sub_1C93DA0BC(v10, v18, v19);
  v21 = v1[16];
  v20 = v1[17];
  v22 = v1[15];
  v23 = v1[13];
  v24 = v1[11];
  sub_1C93A14F4(v1[12]);
  sub_1C93DA70C();
  sub_1C93A4838(v25, v26, v27);

  sub_1C93DA508();

  return v28();
}

uint64_t sub_1C93D35CC()
{
  sub_1C93DA69C();
  v3 = v2;
  sub_1C939D504();
  v5 = v4;
  sub_1C93DA530();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  sub_1C93B5C54();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C93D36D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for Entitlements.Error();
  v4[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v7 = *(*(sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v8 = *(*(type metadata accessor for SessionID(0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C93D37D4, 0, 0);
}

uint64_t sub_1C93D37D4()
{
  sub_1C93DA798();
  v3 = v1[16];
  v2 = v1[17];
  v4 = v1[11];
  UUID.init()();
  v5 = sub_1C93A5A40();
  sub_1C93A1DE4(v5, v6);
  if (qword_1EE02B078 != -1)
  {
    sub_1C93DA4A0();
  }

  v7 = v1[15];
  sub_1C93D5174(qword_1EE0358D0, (v1 + 2));
  sub_1C93DA7A4();
  if (!v0)
  {
    sub_1C93DA758();
    sub_1C93DA5AC(dword_1C94036A0);
    v30 = swift_task_alloc();
    v1[18] = v30;
    *v30 = v1;
    sub_1C93DA604(v30);
    sub_1C93DA880();

    __asm { BR              X8 }
  }

  v9 = v1[16];
  v8 = v1[17];
  v11 = v1[14];
  v10 = v1[15];
  sub_1C93B4E84(v1[10]);
  sub_1C939EA94(v1 + 2);
  sub_1C93DA70C();
  sub_1C93A4838(v12, v13, v14);
  sub_1C93DA444();
  sub_1C93DA174(v8, v15);
  sub_1C93DA474();
  sub_1C93D961C(v16, v17);
  sub_1C93DA638();
  swift_allocError();
  sub_1C93DA45C();
  sub_1C93DA0BC(v10, v18, v19);
  v21 = v1[16];
  v20 = v1[17];
  v22 = v1[15];
  v23 = v1[13];
  v24 = v1[11];
  sub_1C93A14F4(v1[12]);
  sub_1C93DA70C();
  sub_1C93A4838(v25, v26, v27);

  sub_1C93DA508();

  return v28();
}

uint64_t sub_1C93D39E8()
{
  sub_1C93DA69C();
  v3 = v2;
  sub_1C939D504();
  v5 = v4;
  sub_1C93DA530();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  sub_1C93B5C54();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C93D3AF4()
{
  sub_1C93DA69C();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[11];
  sub_1C93A14F4(v0[12]);
  sub_1C93A4838(v5, &qword_1EC39A9F0, &qword_1C93FCE00);

  sub_1C93DA718();
  v7 = v0[20];

  return v6(v7);
}

uint64_t sub_1C93D3B98()
{
  sub_1C93DA724();
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[11];
  sub_1C93A14F4(v0[12]);
  sub_1C93A4838(v6, &qword_1EC39A9F0, &qword_1C93FCE00);

  sub_1C939D510();

  return v7();
}

uint64_t Session.init(configuration:previousInvalidationContext:onInvalidation:)()
{
  sub_1C93DA69C();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[15] = v5;
  v1[16] = v6;
  v1[13] = v7;
  v1[14] = v8;
  v9 = type metadata accessor for Entitlements.Error();
  v1[21] = v9;
  sub_1C93A5A08(v9);
  v11 = *(v10 + 64);
  v1[22] = sub_1C93DA730();
  v12 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v12);
  v14 = *(v13 + 64);
  v1[23] = sub_1C93DA730();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[24] = AssociatedTypeWitness;
  sub_1C939ED4C(AssociatedTypeWitness);
  v1[25] = v16;
  v18 = *(v17 + 64);
  v1[26] = sub_1C93DA730();
  v19 = type metadata accessor for SessionID(0);
  sub_1C93A5A08(v19);
  v21 = *(v20 + 64);
  v1[27] = sub_1C93DA730();
  sub_1C93DA690();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1C93D3D8C()
{
  sub_1C93DA7CC();
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  UUID.init()();
  (*(v4 + 16))(v2, v7, v3);
  v8 = sub_1C93DA7D8();
  sub_1C93A1DE4(v8, v9);
  if (qword_1EE02B078 != -1)
  {
    sub_1C93DA4A0();
  }

  v10 = *(v0 + 176);
  sub_1C93D5174(qword_1EE0358D0, v0 + 16);
  sub_1C93DA7A4();
  if (v5)
  {
    v11 = *(v0 + 208);
    v12 = *(v0 + 216);
    v13 = *(v0 + 192);
    v14 = *(v0 + 200);
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 168);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v48 = *(v0 + 120);
    v49 = *(v0 + 112);
    sub_1C939EA94((v0 + 16));
    sub_1C93A4838(v15, &qword_1EC39A9F0, &qword_1C93FCE00);
    v20 = *(v14 + 8);
    v20(v11, v13);
    sub_1C93DA444();
    sub_1C93DA174(v12, v21);
    sub_1C93DA474();
    sub_1C93D961C(v22, v23);
    sub_1C93DA638();
    swift_allocError();
    sub_1C93DA45C();
    sub_1C93DA0BC(v16, v24, v25);
    v26 = sub_1C93DA7C0();
    sub_1C93A14F4(v26);
    sub_1C93A4838(v48, &qword_1EC39A9F0, &qword_1C93FCE00);
    v20(v49, v13);
    v28 = *(v0 + 208);
    v27 = *(v0 + 216);
    v30 = *(v0 + 176);
    v29 = *(v0 + 184);

    sub_1C939D510();

    return v31();
  }

  else
  {
    v33 = *(v0 + 128);
    v34 = *(v0 + 136);
    v35 = *(v0 + 64);
    v36 = *(v0 + 72);
    v37 = *(v0 + 73);
    v38 = *(v0 + 74);
    *(v0 + 80) = *(v0 + 56);
    v39 = *(v0 + 75);
    *(v0 + 88) = v35;
    *(v0 + 96) = v36;
    *(v0 + 97) = v37;
    *(v0 + 98) = v38;
    *(v0 + 99) = v39;
    sub_1C93A1478(v33);
    swift_task_alloc();
    sub_1C93DA6BC();
    *(v0 + 224) = v40;
    *v40 = v41;
    v40[1] = sub_1C93D4058;
    v43 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44 = *(v0 + 184);
    v45 = *(v0 + 128);
    v46 = *(v0 + 136);
    v47 = *(v0 + 104);
    v52 = *(v0 + 152);
    v51 = *(v0 + 144);

    return Session.init<A>(sessionID:configuration:previousInvalidationContext:ckEntryPoint:entitlements:onInvalidation:)();
  }
}