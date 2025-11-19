uint64_t sub_1B21FA014(char a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA068(__int16 a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA0BC(int a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA110(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA160(unsigned __int8 a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA1B4(unsigned __int16 a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA208(unsigned int a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA25C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v1;
    v2 = *(v1 + 8);
    v4 = result;
    v5 = 0;
    v6 = 0;
    v3(&v4);
    return sub_1B2113A44(v4, v5, v6);
  }

  return result;
}

uint64_t sub_1B21FA2B8(float a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *&v5 = a1;
  v6 = 0;
  v7 = 1;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA314(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *&a1;
  v6 = 0;
  v7 = 1;
  v2(&v5);
  return sub_1B2113A44(v5, v6, v7);
}

uint64_t sub_1B21FA36C(uint64_t a1, unint64_t a2)
{
  v4 = *v2;
  v3 = *(v2 + 8);
  v6 = a1;
  v7 = a2;
  v8 = 2;

  v4(&v6);
  return sub_1B2113A44(v6, v7, v8);
}

uint64_t sub_1B21FA3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(a2 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v8);
  sub_1B21619D8(&qword_1EB7A1290, &qword_1B226A750);
  if (swift_dynamicCast())
  {
    sub_1B21217FC(&v20, v23);
    v12 = *v3;
    v11 = v3[1];
    v13 = v24;
    v14 = v25;
    sub_1B21139A0(v23, v24);
    (*(v14 + 24))(&v20, v13, v14);
    v18 = v20;
    v19 = v21;
    v12(&v18);
    sub_1B2113A44(v18, *(&v18 + 1), v19);
    return sub_1B2113208(v23);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    sub_1B2122B98(&v20);
    v17 = *v3;
    v16 = v3[1];
    type metadata accessor for DatabaseValueEncoder();
    swift_allocObject();

    sub_1B21FA6D8(v17, v16);
    sub_1B21FA878(a1, a2, a3);
  }
}

uint64_t sub_1B21FA5B0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B2185884();
}

uint64_t sub_1B21FA6D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  sub_1B2252E60();
  *(v2 + 40) = sub_1B2252190();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1B21FA740()
{
  *(v0 + 32) = 1;
  nullsub_1(MEMORY[0x1E69E7CC0]);
  type metadata accessor for JSONRequiredEncoder.KeyedContainer();
  swift_getWitnessTable();
  return sub_1B2252FA0();
}

unint64_t sub_1B21FA7D8@<X0>(void *a1@<X8>)
{
  *(v1 + 32) = 1;
  a1[3] = &type metadata for JSONRequiredEncoder;
  result = sub_1B2187B18();
  a1[4] = result;
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B21FA820@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  a1[3] = &type metadata for DatabaseValueEncodingContainer;
  a1[4] = sub_1B21FAFE0();
  *a1 = v4;
  a1[1] = v3;
}

void sub_1B21FA878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = sub_1B22522F0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B2251A70();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B2251AD0();
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1B2251AA0();
  v40 = *(v19 - 8);
  v41 = v19;
  v20 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B2251A90();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DatabaseValueEncoder();
  v50 = v38;
  v37 = sub_1B21FB034();
  v51 = v37;
  v49[0] = v6;

  v46 = a1;
  v47 = a2;
  v48 = a3;
  sub_1B2252200();
  if (v4)
  {
    sub_1B2113208(v49);
  }

  else
  {
    sub_1B2113208(v49);
    if (*(v6 + 32) != 1)
    {
      return;
    }

    sub_1B2155660();
    v5 = swift_allocError();
    swift_willThrow();
  }

  v52 = v5;
  v28 = v5;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if (swift_dynamicCast())
  {
    v29 = sub_1B2251B20();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_1B2251B10();
    (*(v24 + 104))(v27, *MEMORY[0x1E6967F98], v23);
    sub_1B2251AB0();
    (*(v40 + 104))(v22, *MEMORY[0x1E6967FB0], v41);
    sub_1B2251AC0();
    (*(v43 + 104))(v42, *MEMORY[0x1E6967FE8], v44);
    sub_1B2251AE0();
    sub_1B2251A60();
    sub_1B2251A80();
    v32 = sub_1B2251AF0();
    v34 = v33;
    sub_1B22522E0();
    sub_1B22522C0();
    if (!v35)
    {
      __break(1u);
      return;
    }

    v50 = v38;
    v51 = v37;
    v49[0] = v6;

    sub_1B22523E0();
    sub_1B21267A8(v32, v34);

    sub_1B2113208(v49);
  }
}

uint64_t sub_1B21FAD18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1B21FAD40()
{
  v0 = sub_1B21FAD18();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DatabaseValueConvertible<>.databaseValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = -1;
  type metadata accessor for DatabaseValueEncoder();
  swift_allocObject();

  sub_1B21FA6D8(sub_1B21FAFB4, v7);
  sub_1B21FA878(v3, a1, a2);

  swift_beginAccess();
  v8 = *(v7 + 32);
  if (v8 == 255)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    sub_1B2113A20(v10, v9, *(v7 + 32));

    *a3 = v10;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
  }

  return result;
}

uint64_t sub_1B21FAF28(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v8 = *(a2 + 32);
  *(a2 + 32) = v5;
  sub_1B2113A20(v3, v4, v5);
  return sub_1B21678F0(v6, v7, v8);
}

unint64_t sub_1B21FAFE0()
{
  result = qword_1EB7A0B28[0];
  if (!qword_1EB7A0B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A0B28);
  }

  return result;
}

unint64_t sub_1B21FB034()
{
  result = qword_1EB7A0BB0[0];
  if (!qword_1EB7A0BB0[0])
  {
    type metadata accessor for DatabaseValueEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A0BB0);
  }

  return result;
}

void sub_1B21FB0CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v5 = sub_1B2132AEC(v2);
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1B2116B10();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1B21268C8(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1B21268C8(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void static FTS5TokenizerDescriptor.ascii(separators:tokenCharacters:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for Configuration();
  v7 = sub_1B2114470(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B21222E0();
  if (*(a1 + 16))
  {
    sub_1B2112CB0();
    sub_1B21176F4();
    sub_1B211488C();
    v10 = sub_1B2117DD8();
    MEMORY[0x1EEE9AC00](v10);
    sub_1B2116270();
    *(v11 - 16) = a1;
    v13 = *(v12 + 16);
    v14 = sub_1B21FB5C4();

    sub_1B2156C88(v14);
  }

  if (*(a2 + 16))
  {
    sub_1B2112CB0();
    sub_1B21176F4();
    sub_1B211488C();
    v15 = sub_1B2117DD8();
    MEMORY[0x1EEE9AC00](v15);
    sub_1B2116270();
    *(v16 - 16) = a2;
    v18 = *(v17 + 16);
    v19 = sub_1B21FB5C4();

    sub_1B2156C88(v19);
  }

  if (unk_1F29696C0)
  {
    *a3 = &unk_1F29696B0;
  }

  else
  {
    sub_1B2116728();
    sub_1B21152B4();
    __break(1u);
  }
}

uint64_t sub_1B21FB4C4()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1B21B6648(1, v1, *v0);
  v3 = v2;
  v5 = v4;
  if ((v4 & 1) == 0)
  {
LABEL_3:
    sub_1B216E90C();
    v7 = v6;
LABEL_10:
    swift_unknownObjectRelease();
    return v7;
  }

  sub_1B2253280();
  swift_unknownObjectRetain_n();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);

  if (__OFSUB__(v5 >> 1, v3))
  {
    goto LABEL_13;
  }

  if (v9 != (v5 >> 1) - v3)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v7)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  return v7;
}

uint64_t sub_1B21FB5C4()
{
  type metadata accessor for SchedulingWatchdog();
  if (!sub_1B21114CC())
  {
    v5 = *(v0 + 40);
    MEMORY[0x1EEE9AC00](0);
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    result = sub_1B2252A50();
    if (v1)
    {
      return result;
    }

    return v6;
  }

  v2 = sub_1B211A144(*(v0 + 16));
  if (v2)
  {
    sub_1B2116728();
    sub_1B2112A88();
    result = sub_1B21184AC();
    __break(1u);
    return result;
  }

  v3 = *(v0 + 40);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B2252A50();

  if (!v1)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1B21FB770(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  type metadata accessor for SchedulingWatchdog();
  v7 = sub_1B21114CC();
  if (!v7)
  {
    v13 = *(v2 + 40);
    MEMORY[0x1EEE9AC00](0);
    sub_1B2111B5C();
    *(v14 - 32) = v4;
    *(v14 - 24) = a1;
    *(v14 - 16) = a2;
    result = sub_1B2252A50();
    if (v3)
    {
      return result;
    }

    return v15;
  }

  v8 = v7;
  v9 = sub_1B211A144(*(v2 + 16));
  if (v9)
  {
    sub_1B2116728();
    sub_1B2112A88();
    result = sub_1B21184AC();
    __break(1u);
    return result;
  }

  v10 = *(v2 + 40);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111B5C();
  *(v11 - 32) = v8;
  *(v11 - 24) = v4;
  *(v11 - 16) = a1;
  *(v11 - 8) = a2;
  sub_1B2252A50();

  if (!v3)
  {
    return v15;
  }

  return result;
}

GRDBInternal::FTS5TokenizerDescriptor __swiftcall FTS5TokenizerDescriptor.init(components:)(GRDBInternal::FTS5TokenizerDescriptor components)
{
  if (*(components.components._rawValue + 2))
  {
    v1->components._rawValue = components.components._rawValue;
  }

  else
  {
    sub_1B211D724();
    components.components._rawValue = sub_1B21152B4();
    __break(1u);
  }

  return components;
}

uint64_t sub_1B21FB92C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B225B140;
  *(v5 + 32) = 0x6F74617261706573;
  *(v5 + 40) = 0xEA00000000007372;
  sub_1B21FB0CC(a1);
  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v6 = sub_1B2252250();
  v8 = v7;

  __src[0] = v6;
  __src[1] = v8;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1ED85D658 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED861900;

  v10 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v12 = sub_1B2117164(v11, v9, v10);
  v13 = sub_1B2127E58(v12, 0);
  if (v2)
  {

    v18 = *(v5 + 40);

    *(v5 + 16) = 0;

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v15 = v13;
    v16 = v14;

    *(v5 + 48) = v15;
    *(v5 + 56) = v16;
    *a2 = v5;
  }

  return result;
}

void static FTS5TokenizerDescriptor.porter(wrapping:)(void *a1@<X0>, void *a2@<X8>)
{
  if (!*a1)
  {
    goto LABEL_4;
  }

  sub_1B2156C88(v3);
  v4 = &unk_1F2969A98;
  if (!unk_1F2969AA8)
  {
    sub_1B211D724();
    sub_1B21152B4();
    __break(1u);
LABEL_4:
    v4 = &unk_1F2969AC8;
  }

  *a2 = v4;
}

void static FTS5TokenizerDescriptor.unicode61(diacritics:separators:tokenCharacters:)(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for Configuration();
  v9 = sub_1B2114470(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B21222E0();
  if (*a1)
  {
    if (*a1 == 1)
    {
      goto LABEL_6;
    }

    v12 = &unk_1F2969B68;
  }

  else
  {
    v12 = &unk_1F2969B28;
  }

  sub_1B2156C88(v12);
LABEL_6:
  if (*(a2 + 16))
  {
    sub_1B2112CB0();
    sub_1B21176F4();
    sub_1B211488C();
    v13 = sub_1B2117DD8();
    MEMORY[0x1EEE9AC00](v13);
    sub_1B2116270();
    *(v14 - 16) = a2;
    v16 = *(v15 + 16);
    v17 = sub_1B21FB5C4();

    sub_1B2156C88(v17);
  }

  if (*(a3 + 16))
  {
    sub_1B2112CB0();
    sub_1B21176F4();
    sub_1B211488C();
    v18 = sub_1B2117DD8();
    MEMORY[0x1EEE9AC00](v18);
    sub_1B2116270();
    *(v19 - 16) = a3;
    v21 = *(v20 + 16);
    v22 = sub_1B21FB5C4();

    sub_1B2156C88(v22);
  }

  if (unk_1F2969B08)
  {
    *a4 = &unk_1F2969AF8;
  }

  else
  {
    sub_1B2116728();
    sub_1B21152B4();
    __break(1u);
  }
}

uint64_t sub_1B21FBE48@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B225B140;
  *(v4 + 32) = a1;
  *(v4 + 40) = 0xEA00000000007372;
  sub_1B219C6B0();
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v29 = v4;
    v30 = a2;
    __src[0] = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v8 = __src[0];
    v9 = (v6 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      __src[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1B2116B10();
        v8 = __src[0];
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v9 += 2;
      --v7;
    }

    while (v7);

    v4 = v29;
    a2 = v30;
  }

  else
  {
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v15 = sub_1B2252250();
  v17 = v16;

  __src[0] = v15;
  __src[1] = v17;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1ED85D658 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED861900;

  v19 = MEMORY[0x1E69E7CC0];
  sub_1B2116B4C();
  type metadata accessor for SQLGenerationContext();
  swift_allocObject();

  v21 = sub_1B2117164(v20, v18, v19);
  v22 = v33;
  v23 = sub_1B2127E58(v21, 0);
  if (v22)
  {

    v28 = *(v4 + 40);

    *(v4 + 16) = 0;

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v25 = v23;
    v26 = v24;

    *(v4 + 48) = v25;
    *(v4 + 56) = v26;
    *a2 = v4;
  }

  return result;
}

void sub_1B21FC154(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *(a1 + 16);
  a2(&v4, v3);
  sub_1B21343E4(v3, "/Library/Caches/com.apple.xbs/Sources/GRDB/GRDB/Core/SerializedDatabase.swift", 77, 2, 108, a1);
}

uint64_t sub_1B21FC1D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    v8 = *(v7 + 16);
    swift_beginAccess();
    v9 = *(a1 + 16);
    swift_beginAccess();

    sub_1B2150300(v10);
    swift_endAccess();
    sub_1B221DA58(a2, a3);
    v11 = *(v7 + 16);
    *(v7 + 16) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B21FC2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for SchedulingWatchdog();
  result = sub_1B21114CC();
  if (result)
  {
    v11 = result;

    v12 = a5(a1, v11, a2, a3, a4);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B21FC3A0(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, void *a3@<X8>)
{
  sub_1B21FC154(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t sub_1B21FC3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B21FC2F8(a1, a2, a3, a4, sub_1B221D960);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B21FC46C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1B2252480();
  }

  else
  {
    return 0;
  }
}

GRDBInternal::Inflections __swiftcall Inflections.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v2;
  sub_1B21E8558(0, &qword_1ED85D6F0, 0x1E696AE70);
  v3 = sub_1B2252190();
  v1[2] = v3;
  result.uncountablesRegularExpressions._rawValue = v5;
  result.singularizeRules._rawValue = v4;
  result.pluralizeRules._rawValue = v3;
  return result;
}

Swift::Void __swiftcall Inflections.plural(_:options:_:)(Swift::String _, NSRegularExpressionOptions options, Swift::String a3)
{
  sub_1B2114484();
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  sub_1B212DF90();
  if (v4)
  {
    sub_1B211D738();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {

    sub_1B21614C0();
    v6 = *(*v3 + 16);
    sub_1B21617C4(v6);
    v7 = *v3;
    sub_1B211812C(v6 + 1);
    *v3 = v8;
  }
}

Swift::Void __swiftcall Inflections.singular(_:options:_:)(Swift::String _, NSRegularExpressionOptions options, Swift::String a3)
{
  sub_1B2114484();
  v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);

  sub_1B212DF90();
  if (v4)
  {
    sub_1B211D738();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {

    sub_1B21614C0();
    v6 = *(*(v3 + 8) + 16);
    sub_1B21617C4(v6);
    v7 = *(v3 + 8);
    sub_1B211812C(v6 + 1);
    *(v3 + 8) = v8;
  }
}

Swift::Void __swiftcall Inflections.uncountableWords(_:)(Swift::OpaquePointer a1)
{
  v2 = *(a1._rawValue + 2);
  if (v2)
  {
    v3 = v1;
    v30 = objc_opt_self();
    v5 = a1._rawValue + 40;
    while (1)
    {
      v32 = v2;
      v6 = *(v5 - 1);
      v7 = *v5;
      v31 = v5;

      v8 = sub_1B2252290();
      v9 = [v30 escapedPatternForString_];

      v10 = sub_1B22522A0();
      v12 = v11;

      MEMORY[0x1B2741EB0](v10, v12);

      MEMORY[0x1B2741EB0](23132, 0xE200000000000000);
      v13 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v14 = sub_1B21FE21C(25180, 0xE200000000000000, 1);
      v15 = *(v3 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v16 = v3;
      v17 = *(v3 + 16);
      v18 = sub_1B211E590();
      if (__OFADD__(v17[2], (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      sub_1B21619D8(&qword_1EB7A29D0, qword_1B225F828);
      if (sub_1B2252E70())
      {
        v22 = sub_1B211E590();
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_15;
        }

        v20 = v22;
      }

      if (v21)
      {
        v24 = v17[7];
        v25 = *(v24 + 8 * v20);
        *(v24 + 8 * v20) = v14;
      }

      else
      {
        v17[(v20 >> 6) + 8] |= 1 << v20;
        v26 = (v17[6] + 16 * v20);
        *v26 = v6;
        v26[1] = v7;
        *(v17[7] + 8 * v20) = v14;
        v27 = v17[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_14;
        }

        v17[2] = v29;
      }

      v3 = v16;
      *(v16 + 16) = v17;
      v5 = v31 + 2;
      v2 = v32 - 1;
      if (v32 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
LABEL_15:
    sub_1B2253390();
    __break(1u);
  }
}

uint64_t sub_1B21FD218()
{
  sub_1B21116E0();
  if (v0)
  {
    sub_1B21184CC();
    sub_1B2252480();
    sub_1B2252230();

    sub_1B21184CC();
    sub_1B21FD2F0(v1, v2, v3);
    sub_1B21F7FE8();

    sub_1B22523C0();
  }

  else
  {
  }

  return sub_1B2115C84();
}

unint64_t sub_1B21FD2F0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1B22523B0();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1B2117DF0();
      sub_1B22524A0();
      sub_1B21148B4();
      return sub_1B21121BC();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21FD3A0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    sub_1B2117DF0();
    result = sub_1B222EED0(v3, v4, v5);
    if (v6)
    {
      result = v2;
    }

    if (v2 >= result)
    {
      sub_1B21184CC();
      sub_1B21B6648(v7, v8, v9);
      sub_1B21148B4();
      return sub_1B21121BC();
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Inflections.pluralize(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v37 = *v1;
  v5 = *(v1 + 2);
  v6 = sub_1B21FDA08();
  sub_1B2113060();
  v7 = sub_1B21FD8E0();
  if (v7 >> 14 >= v6 >> 14)
  {
    v36 = v7;
    v38 = countAndFlagsBits;
    v39 = object;
    v9 = sub_1B22524A0();
    v10 = MEMORY[0x1B2741E40](v9);
    v12 = v11;

    v40 = v10;
    v13 = MEMORY[0x1B2741F40](v10, v12);
    sub_1B2116738();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;
    while (v16)
    {
      v19 = v2;
LABEL_9:
      v16 &= v16 - 1;
      v20 = sub_1B211F72C(v19);
      v21 = sub_1B2252290();
      v22 = [v20 firstMatchInString:v21 options:0 range:{0, v13}];

      if (v22)
      {

        v23 = v39;

        v7 = v38;
LABEL_12:
        v8 = v23;
        goto LABEL_15;
      }
    }

    while (1)
    {
      v19 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v19 >= v18)
      {

        v24 = sub_1B22524A0();
        v25 = MEMORY[0x1B2741E40](v24);
        v27 = v26;

        v28 = sub_1B21FDE44(v40);
        v30 = v29;

        MEMORY[0x1B2741EB0](v28, v30);

        v31 = sub_1B21DC54C(v36, v38, v39);
        v32 = MEMORY[0x1B2741E40](v31);
        v34 = v33;

        MEMORY[0x1B2741EB0](v32, v34);

        v7 = v25;
        v23 = v27;
        goto LABEL_12;
      }

      v16 = *(v6 + 8 * v19);
      ++v2;
      if (v16)
      {
        v2 = v19;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

Swift::String __swiftcall Inflections.singularize(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v8 = sub_1B21FDA08();
  sub_1B2113060();
  v9 = sub_1B21FD8E0();
  if (v9 >> 14 >= v8 >> 14)
  {
    v38 = v9;
    v39 = countAndFlagsBits;
    v40 = object;
    v11 = sub_1B22524A0();
    v12 = MEMORY[0x1B2741E40](v11);
    v14 = v13;

    v41 = v12;
    v15 = MEMORY[0x1B2741F40](v12, v14);
    sub_1B2116738();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    while (v18)
    {
      v21 = v2;
LABEL_9:
      v18 &= v18 - 1;
      v22 = sub_1B211F72C(v21);
      v23 = sub_1B2252290();
      v24 = [v22 firstMatchInString:v23 options:0 range:{0, v15}];

      if (v24)
      {

        v25 = v40;

        v9 = v39;
LABEL_12:
        v10 = v25;
        goto LABEL_15;
      }
    }

    while (1)
    {
      v21 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        v26 = sub_1B22524A0();
        v27 = MEMORY[0x1B2741E40](v26);
        v29 = v28;

        v30 = sub_1B21FDE44(v41);
        v32 = v31;

        MEMORY[0x1B2741EB0](v30, v32);

        v33 = sub_1B21DC54C(v38, v39, v40);
        v34 = MEMORY[0x1B2741E40](v33);
        v36 = v35;

        MEMORY[0x1B2741EB0](v34, v36);

        v9 = v27;
        v25 = v29;
        goto LABEL_12;
      }

      v18 = *(v8 + 8 * v21);
      ++v2;
      if (v18)
      {
        v2 = v21;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

unint64_t sub_1B21FD8E0()
{
  result = sub_1B22531F0();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v1 = sub_1B2115C84();
    result = sub_1B21FE36C(v1, v2);
    v3 = result;
    while (1)
    {
      v4 = result;
      if (result < 0x4000)
      {
        break;
      }

      sub_1B21184CC();
      sub_1B22523A0();
      sub_1B21184CC();
      v6 = sub_1B2252480();
      v7 = v5;
      if (v6 == 48 && v5 == 0xE100000000000000)
      {
        goto LABEL_13;
      }

      if (sub_1B22531F0())
      {

        break;
      }

      if (v6 == 57 && v7 == 0xE100000000000000)
      {
      }

      else
      {
LABEL_13:
        v10 = sub_1B22531F0();

        if (v10)
        {
          break;
        }
      }

      sub_1B21184CC();
      result = sub_1B22523A0();
    }

    if (v3 >> 14 >= v4 >> 14)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B21FDA08()
{

  sub_1B21619D8(&qword_1EB7A29D8, &qword_1B225F878);
  sub_1B21FE308();
  sub_1B2156990();
  sub_1B2252AC0();
  if (qword_1ED85D848 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED85D850;
  sub_1B2115C84();
  v1 = sub_1B2252290();
  v2 = sub_1B211D9EC(v0, sel_firstMatchInString_options_range_, v1);

  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [v2 range];
  if (v3 == sub_1B22519B0())
  {

LABEL_6:
    v39 = 0;
    v4 = 1;
    goto LABEL_11;
  }

  [v2 range];
  sub_1B2117DF0();
  v5 = sub_1B2252990();
  v4 = v6;

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v39 = v7;
LABEL_11:
  if (qword_1ED85D838 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED85D840;
  sub_1B2115C84();
  v9 = sub_1B2252290();
  v10 = sub_1B211D9EC(v8, sel_firstMatchInString_options_range_, v9);

  if (v10)
  {
    v11 = [v10 range];
    if (v11 == sub_1B22519B0() || ([v10 range], sub_1B2117DF0(), sub_1B2252990(), (v12 & 1) != 0))
    {
      v38 = 0;
      v13 = 1;
    }

    else
    {
      sub_1B21184CC();
      v38 = sub_1B2252390();
      v13 = 0;
    }
  }

  else
  {
    v38 = 0;
    v13 = 1;
  }

  if (qword_1ED85D858 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED85D860;
  sub_1B2115C84();
  v15 = sub_1B2252290();
  v16 = sub_1B211D9EC(v14, sel_firstMatchInString_options_range_, v15);

  if (v16)
  {
    v17 = [v16 range];
    if (v17 == sub_1B22519B0() || ([v16 range], sub_1B2117DF0(), sub_1B2252990(), (v18 & 1) != 0))
    {
      v19 = 0;
      v20 = 1;
    }

    else
    {
      sub_1B21184CC();
      v19 = sub_1B2252390();
      v20 = 0;
    }

    if (v4)
    {
LABEL_33:
      v22 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v19 = 0;
    v20 = 1;
    if (v4)
    {
      goto LABEL_33;
    }
  }

  sub_1B2162630(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v22 = v21;
  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    sub_1B2116280(v23);
    v22 = v33;
  }

  v22[2] = v24 + 1;
  v22[v24 + 4] = v39;
  if ((v13 & 1) == 0)
  {
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B212D0E0();
      v22 = v34;
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      sub_1B2116280(v25);
      v22 = v35;
    }

    v22[2] = v26 + 1;
    v22[v26 + 4] = v38;
  }

LABEL_39:
  if ((v20 & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B212D0E0();
      v22 = v36;
    }

    v28 = v22[2];
    v27 = v22[3];
    if (v28 >= v27 >> 1)
    {
      sub_1B2116280(v27);
      v22 = v37;
    }

    v22[2] = v28 + 1;
    v22[v28 + 4] = v19;
  }

  v29 = sub_1B21FE080(v22);
  v31 = v30;

  if (v31)
  {
    return 15;
  }

  else
  {
    return v29;
  }
}

uint64_t sub_1B21FDE44(uint64_t a1)
{
  sub_1B21116E0();
  if (v3 && (v4 = v2, , sub_1B21619D8(&qword_1EB7A29D8, &qword_1B225F878), sub_1B21FE308(), sub_1B2156990(), v18 = sub_1B2252AC0(), (v6 = *(v4 + 16)) != 0))
  {
    v7 = v5;
    sub_1B21E8558(0, &qword_1ED85D6F8, 0x1E696AD60);
    v8 = (v4 + 24 * v6 + 24);
    while (1)
    {
      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;

      v12 = v9;

      v13 = a1;
      v14 = sub_1B21FE00C();
      v15 = sub_1B2252290();

      v16 = [v12 replaceMatchesInString:v14 options:0 range:v18 withTemplate:{v7, v15}];

      if (v16 >= 1)
      {
        break;
      }

      --v6;

      v8 -= 3;
      a1 = v13;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    a1 = sub_1B2252300();
  }

  else
  {
LABEL_6:
  }

  return a1;
}

id sub_1B21FE00C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B2252290();

  v2 = [v0 initWithString_];

  return v2;
}

unint64_t sub_1B21FE080(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result >> 14 < v7 >> 14)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

id sub_1B21FE10C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1B21FE21C(a2, a3, 0);
  *a4 = result;
  return result;
}

id sub_1B21FE190()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1B21FE21C(0xD000000000000016, 0x80000001B226F950, 0);
  qword_1ED85D860 = result;
  return result;
}

id sub_1B21FE21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B2252290();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1B2251D10();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t sub_1B21FE308()
{
  result = qword_1ED85D700[0];
  if (!qword_1ED85D700[0])
  {
    sub_1B2161A20(&qword_1EB7A29D8, &qword_1B225F878);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED85D700);
  }

  return result;
}

uint64_t sub_1B21FE36C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return v3 | (v2 << 16);
}

uint64_t sub_1B21FE3C4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t *))
{
  v9 = a5;
  v10 = a4;
  v50 = a4;
  v51 = a5;
  LOBYTE(v48) = a3;
  type metadata accessor for FTS5TableDefinition();
  swift_allocObject();
  v12 = sub_1B219DAA8(&v48);
  v52 = v12;
  if (a6)
  {

    a6(&v52);
    sub_1B2112F4C(a6);
    if (v7)
    {
    }
  }

  v45 = v6;
  sub_1B214400C();
  v15 = v14;
  v16 = *(v14 + 16);
  v17 = v16 + 1;
  if (v16 >= *(v14 + 24) >> 1)
  {
    sub_1B214400C();
    v15 = v39;
  }

  *(v15 + 16) = v17;
  v18 = v15 + 16 * v16;
  *(v18 + 32) = 0xD000000000000014;
  *(v18 + 40) = 0x80000001B226CD90;
  if (a3)
  {
    if ((v16 + 2) > *(v15 + 24) >> 1)
    {
      sub_1B214400C();
      v15 = v42;
    }

    *(v15 + 16) = v16 + 2;
    v19 = v15 + 16 * v17;
    strcpy((v19 + 32), "IF NOT EXISTS");
    *(v19 + 46) = -4864;
  }

  v48 = 34;
  v49 = 0xE100000000000000;
  MEMORY[0x1B2741EB0](a1, a2);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);
  v20 = v48;
  v21 = v49;
  v22 = *(v15 + 16);
  v23 = *(v15 + 24) >> 1;
  v24 = v22 + 1;
  if (v23 <= v22)
  {
    sub_1B214400C();
    v15 = v40;
    v23 = *(v40 + 24) >> 1;
  }

  *(v15 + 16) = v24;
  v25 = v15 + 16 * v22;
  *(v25 + 32) = v20;
  *(v25 + 40) = v21;
  if (v23 < (v22 + 2))
  {
    sub_1B214400C();
    v15 = v41;
  }

  *(v15 + 16) = v22 + 2;
  v26 = v15 + 16 * v24;
  *(v26 + 32) = 0x474E495355;
  *(v26 + 40) = 0xE500000000000000;
  v27 = FTS5.moduleArguments(for:in:)(v12, v45);
  if (v7)
  {
  }

  else
  {
    v28 = v27;
    if (*(v27 + 16))
    {
      v48 = v10;
      v49 = v9;

      MEMORY[0x1B2741EB0](40, 0xE100000000000000);
      v29 = v48;
      v30 = v49;
      v48 = v28;
      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v31 = sub_1B2252250();
      v33 = v32;

      v48 = v29;
      v49 = v30;

      MEMORY[0x1B2741EB0](v31, v33);

      MEMORY[0x1B2741EB0](41, 0xE100000000000000);

      v10 = v48;
      v9 = v49;
      v34 = *(v15 + 16);
      v35 = v34 + 1;
      if (v34 >= *(v15 + 24) >> 1)
      {
        sub_1B214400C();
        v15 = v43;
      }
    }

    else
    {

      v34 = *(v15 + 16);
      v36 = *(v15 + 24);
      v35 = v34 + 1;

      if (v34 >= v36 >> 1)
      {
        sub_1B214400C();
        v15 = v44;
      }
    }

    *(v15 + 16) = v35;
    v37 = v15 + 16 * v34;
    *(v37 + 32) = v10;
    *(v37 + 40) = v9;
    v48 = v15;
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    sub_1B2252250();

    MEMORY[0x1EEE9AC00](v38);
    Database.inSavepoint(_:)();
  }
}

uint64_t FTS5Pattern.rawPattern.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingAnyTokenIn:)(Swift::String matchingAnyTokenIn)
{
  sub_1B21FEC0C();
  result.value.rawPattern._object = v2;
  result.value.rawPattern._countAndFlagsBits = v1;
  result.is_nil = v3;
  return result;
}

void sub_1B21FE958(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for Configuration();
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v13 = 1;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *(v13 + 23) = 0;
  *(v13 + 4) = MEMORY[0x1E69E7CC0];
  *(v13 + 20) = 0;
  *(v13 + 6) = 0;
  *(v13 + 7) = 0;
  v13[64] = 2;
  *(v13 + 9) = 0;
  *(v13 + 10) = 0;
  v13[88] = -1;
  *(v13 + 12) = 5;
  v14 = &v13[v10[18]];
  sub_1B2252110();
  *&v13[v10[19]] = 0;
  *&v13[v10[20]] = 0;
  v13[v10[21]] = 1;
  v13[v10[22]] = 0;
  v15 = &v13[v10[23]];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v13[v10[24]];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v13[v10[25]];
  type metadata accessor for DatabaseQueue();
  *v17 = 0;
  v17[1] = 0;
  swift_allocObject();
  v18 = DatabaseQueue.init(configuration:)(v13);
  v28 = a3;
  v29 = a1;
  v30 = a2;
  v19 = v18[2];
  sub_1B2113C20(sub_1B21FF4D0, v27);
  if (!v4)
  {

    *a4 = a1;
    a4[1] = a2;
    return;
  }

  v36 = v4;
  v20 = v4;
  sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v31[0] = v33;
  v31[1] = v34;
  v32[0] = v35[0];
  *(v32 + 9) = *(v35 + 9);
  v21 = v33;
  v23 = *(&v33 + 1);
  v22 = v34;
  sub_1B21AC298();
  swift_allocError();
  v25 = v24;
  if (v22)
  {
    v26 = v22;
LABEL_8:
    *v25 = v21;
    *(v25 + 8) = v23;
    *(v25 + 16) = v26;
    *(v25 + 24) = 0u;
    *(v25 + 40) = 0u;
    *(v25 + 56) = 0;

    sub_1B21DC4E8(v31);
    swift_willThrow();
LABEL_9:

    return;
  }

  if (sqlite3_errstr(v21))
  {
    v23 = sub_1B22523F0();
    goto LABEL_8;
  }

  __break(1u);
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingAllTokensIn:)(Swift::String matchingAllTokensIn)
{
  sub_1B21FEC0C();
  result.value.rawPattern._object = v2;
  result.value.rawPattern._countAndFlagsBits = v1;
  result.is_nil = v3;
  return result;
}

void sub_1B21FEC0C()
{
  v2 = sub_1B2117760();
  if (v1)
  {

LABEL_3:

    *v0 = 0;
    v0[1] = 0;
    return;
  }

  v3 = v2;

  if (!*(v3 + 16))
  {
    goto LABEL_3;
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v4 = sub_1B2252250();
  v6 = v5;

  sub_1B21FE958(v4, v6, MEMORY[0x1E69E7CC0], v8);
  v7 = v8[1];
  *v0 = v8[0];
  v0[1] = v7;
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingAllPrefixesIn:)(Swift::String matchingAllPrefixesIn)
{
  v3 = sub_1B2117760();
  if (v2)
  {

LABEL_3:

    *v1 = 0;
    v1[1] = 0;
    goto LABEL_11;
  }

  v7 = v3;

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_3;
  }

  v16 = v1;
  v19 = MEMORY[0x1E69E7CC0];
  sub_1B2116B10();
  v9 = (v7 + 40);
  do
  {
    v17 = *(v9 - 1);
    v18 = *v9;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1B2741EB0](42, 0xE100000000000000);

    v10 = *(v19 + 16);
    if (v10 >= *(v19 + 24) >> 1)
    {
      sub_1B2116B10();
    }

    *(v19 + 16) = v10 + 1;
    v11 = v19 + 16 * v10;
    *(v11 + 32) = v17;
    *(v11 + 40) = v18;
    v9 += 2;
    --v8;
  }

  while (v8);

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v12 = sub_1B2252250();
  v14 = v13;

  sub_1B21FE958(v12, v14, MEMORY[0x1E69E7CC0], v20);
  v15 = v20[1];
  *v16 = v20[0];
  v16[1] = v15;
LABEL_11:
  result.value.rawPattern._object = v5;
  result.value.rawPattern._countAndFlagsBits = v4;
  result.is_nil = v6;
  return result;
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingPhrase:)(Swift::String matchingPhrase)
{
  sub_1B21FEED0(matchingPhrase._countAndFlagsBits, matchingPhrase._object, 34, 0xE100000000000000);
  result.value.rawPattern._object = v2;
  result.value.rawPattern._countAndFlagsBits = v1;
  result.is_nil = v3;
  return result;
}

GRDBInternal::FTS5Pattern_optional __swiftcall FTS5Pattern.init(matchingPrefixPhrase:)(Swift::String matchingPrefixPhrase)
{
  sub_1B21FEED0(matchingPrefixPhrase._countAndFlagsBits, matchingPrefixPhrase._object, 8798, 0xE200000000000000);
  result.value.rawPattern._object = v2;
  result.value.rawPattern._countAndFlagsBits = v1;
  result.is_nil = v3;
  return result;
}

void sub_1B21FEED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B2117760();
  if (v5)
  {

LABEL_3:

    *v4 = 0;
    v4[1] = 0;
    return;
  }

  v9 = v8;

  if (!*(v9 + 16))
  {
    goto LABEL_3;
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v10 = sub_1B2252250();
  v12 = v11;

  MEMORY[0x1B2741EB0](v10, v12);

  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B21FE958(a3, a4, MEMORY[0x1E69E7CC0], v14);
  v13 = v14[1];
  *v4 = v14[0];
  v4[1] = v13;
}

uint64_t sub_1B21FF008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a2;

  sub_1B21FE3C4(0x746E656D75636F64, 0xE800000000000000, 0, 896758886, 0xE400000000000000, sub_1B21FF4F0);

  if (!v4)
  {
    sub_1B212641C(0xD00000000000002DLL, 0x80000001B226F970, 0);
    sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &protocol witness table for String;
    *(inited + 32) = a3;
    *(inited + 40) = a4;

    sub_1B2112554(inited, v9);
    sub_1B2133AC8(v9);
    sub_1B211A378(v9[0]);

    sub_1B2133BF0();
  }

  return result;
}

uint64_t sub_1B21FF19C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      FTS5TableDefinition.column(_:)(v5, v6);

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  else
  {
    FTS5TableDefinition.column(_:)(0x5F5F626472675F5FLL, 0xE800000000000000);
  }

  return result;
}

GRDBInternal::FTS5Pattern __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Database.makeFTS5Pattern(rawPattern:forTable:)(Swift::String rawPattern, Swift::String forTable)
{
  object = rawPattern._object;
  countAndFlagsBits = rawPattern._countAndFlagsBits;
  v6 = v2;
  v7 = Database.columns(in:)(forTable._countAndFlagsBits, forTable._object);
  if (!v3)
  {
    v9 = v7;
    v10 = *(v7 + 16);
    if (v10)
    {
      v19 = v6;
      v20 = countAndFlagsBits;
      v21 = object;
      v22 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v11 = v22;
      v12 = (v9 + 64);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v16 = *(v22 + 16);
        v15 = *(v22 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_1B2116B10();
        }

        *(v22 + 16) = v16 + 1;
        v17 = v22 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v12 += 11;
        --v10;
      }

      while (v10);

      countAndFlagsBits = v20;
      object = v21;
      v6 = v19;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    sub_1B21FE958(countAndFlagsBits, object, v11, v6);
  }

  result.rawPattern._object = v8;
  result.rawPattern._countAndFlagsBits = v7;
  return result;
}

uint64_t FTS5Pattern.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

void static FTS5Pattern.fromDatabaseValue(_:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B22522F0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 == 3)
  {
    sub_1B22522E0();
    v10 = sub_1B22522C0();
    if (v11)
    {
      v7 = v10;
      v6 = v11;
      goto LABEL_6;
    }
  }

  else if (v8 == 2)
  {
    v9 = *(a1 + 8);

LABEL_6:
    swift_bridgeObjectRetain_n();
    sub_1B21FE958(v7, v6, MEMORY[0x1E69E7CC0], v13);
    swift_bridgeObjectRelease_n();
    v12 = v13[1];
    *a2 = v13[0];
    a2[1] = v12;
    return;
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t sub_1B21FF50C(int a1, Swift::String a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = *a6;
  return sub_1B21FE864(a1, a2) & 1;
}

uint64_t sub_1B21FF578()
{
  type metadata accessor for JSONRequiredEncoder.KeyedContainer();

  sub_1B211777C();
  swift_getWitnessTable();
  return sub_1B2116764();
}

uint64_t sub_1B21FF5E0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for JSONRequiredEncoder;
  v2 = a1();
  sub_1B211591C(v2);
}

uint64_t sub_1B21FF62C()
{
  sub_1B2155660();
  sub_1B21152FC();
  return sub_1B2112D24();
}

uint64_t sub_1B21FF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B21619D8(&qword_1EB7A0DD0, &unk_1B226A780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B22546B0;
  *(inited + 56) = a4;
  *(inited + 64) = a6;
  v10 = sub_1B212FF14((inited + 32));
  (*(*(a4 - 8) + 16))(v10, a2, a4);

  sub_1B2130EC8(inited);
  type metadata accessor for JSONRequiredEncoder.KeyedContainer();
  sub_1B211777C();
  swift_getWitnessTable();
  return sub_1B2252FA0();
}

uint64_t sub_1B21FF77C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for JSONRequiredEncoder;
  v1 = sub_1B2200154();
  sub_1B211591C(v1);
}

uint64_t sub_1B21FF7C4@<X0>(uint64_t (*a1)(void)@<X4>, uint64_t a2@<X8>)
{
  *(a2 + 24) = &type metadata for JSONRequiredEncoder;
  v2 = a1();
  sub_1B211591C(v2);
}

uint64_t sub_1B21FFC5C()
{
  v2 = *v0;
  type metadata accessor for JSONRequiredEncoder.KeyedContainer();

  sub_1B211777C();
  swift_getWitnessTable();
  return sub_1B2116764();
}

uint64_t sub_1B21FFCBC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = &type metadata for JSONRequiredEncoder;
  a2[4] = a1();
  *a2 = v4;
}

unint64_t sub_1B2200154()
{
  result = qword_1EB7A29E0;
  if (!qword_1EB7A29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A29E0);
  }

  return result;
}

unint64_t sub_1B22001C0()
{
  result = qword_1EB7A29E8;
  if (!qword_1EB7A29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A29E8);
  }

  return result;
}

uint64_t sub_1B2200214()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t NSURL.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B220048C(v1);
  if (v4)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 4;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  return result;
}

uint64_t static NSURL.fromDatabaseValue(_:)(uint64_t *a1)
{
  v3 = sub_1B21619D8(&qword_1EB7A1280, &unk_1B2254AA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = sub_1B22522F0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = *a1;
  v9 = a1[1];
  v11 = *(a1 + 16);
  if (v11 == 3)
  {
    sub_1B22522E0();
    sub_1B22522C0();
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else if (v11 == 2)
  {
    v12 = a1[1];

LABEL_5:
    sub_1B2251D60();

    sub_1B21EA36C(v1, &v16);
    sub_1B22004F0(v6);
    return v16;
  }

  return 0;
}

uint64_t sub_1B2200464@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSURL.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B220048C(void *a1)
{
  v1 = [a1 absoluteString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B22522A0();

  return v3;
}

uint64_t sub_1B22004F0(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1280, &unk_1B2254AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SQLRequest.init(stringInterpolation:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return SQLRequest.init(literal:adapter:cached:)(&v5, v3, 0, a2);
}

uint64_t SQLRequest<A>.init(sql:arguments:adapter:cached:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  *__src = a1;
  *&__src[8] = a2;
  *&__src[16] = *a3;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);
  *a6 = 0u;
  *(a6 + 16) = 0u;
  if (a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  *(a6 + 32) = 0;
  *(a6 + 40) = v12;
  result = sub_1B2142B5C(a4, a6);
  *(a6 + 48) = v13;
  return result;
}

uint64_t SQLRequest<A>.init(literal:adapter:cached:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  *(a4 + 32) = 0;
  *(a4 + 40) = v5;
  result = sub_1B2142B5C(a2, a4);
  *(a4 + 48) = v6;
  return result;
}

uint64_t sub_1B22006EC(char a1)
{
  sub_1B2253420();
  MEMORY[0x1B2742F10](a1 & 1);
  return sub_1B2253470();
}

uint64_t sub_1B2200750()
{
  sub_1B2253420();
  sub_1B22006C4(v2, *v0);
  return sub_1B2253470();
}

uint64_t SQLRequest.init(sql:arguments:adapter:cached:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B22546B0;
  *__src = a1;
  *&__src[8] = a2;
  *&__src[16] = *a3;
  sub_1B2114CC4(__src);
  memcpy((v12 + 32), __src, 0xB8uLL);
  sub_1B2122784(a4, v15);
  *a6 = 0u;
  *(a6 + 16) = 0u;
  if (a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = 2;
  }

  *(a6 + 32) = 0;
  *(a6 + 40) = v12;
  sub_1B2142B5C(v15, a6);
  *(a6 + 48) = v13;
  return sub_1B212AC5C(a4, &qword_1EB7A1370, &unk_1B2257580);
}

uint64_t SQLRequest.init(literal:adapter:cached:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  sub_1B2122784(a2, v10);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  *(a4 + 32) = 0;
  *(a4 + 40) = v7;
  sub_1B2142B5C(v10, a4);
  *(a4 + 48) = v8;
  return sub_1B212AC5C(a2, &qword_1EB7A1370, &unk_1B2257580);
}

uint64_t SQLRequest.sqlSubquery.getter@<X0>(void *a1@<X8>)
{
  __src[0] = *(v1 + 40);
  sub_1B21F5FAC(__src);
  memcpy(a1, __src, 0xA2uLL);
}

uint64_t SQLRequest.fetchCount(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2127C14();
  *&v13[0] = v5;
  v6._object = 0x80000001B226E860;
  v6._countAndFlagsBits = 0xD000000000000016;
  SQLInterpolation.appendLiteral(_:)(v6);
  SQLInterpolation.appendInterpolation<A>(_:)(v2, a2, &protocol witness table for SQLRequest<A>);
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  SQLInterpolation.appendLiteral(_:)(v7);
  v8 = *&v13[0];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v8;
  sub_1B2142B5C(v13, v15);
  v18 = 2;
  v9 = v15;
  sub_1B2146A54(v13);
  if (v3)
  {
    sub_1B212AC5C(v15, &qword_1EB7A2248, &unk_1B225BB60);
    return v9;
  }

  v9 = sub_1B2181098();
  v11 = v10;
  sub_1B2142D18(v13);
  result = sub_1B212AC5C(v15, &qword_1EB7A2248, &unk_1B225BB60);
  if ((v11 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B2200B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v4 = MEMORY[0x1E69E7CC0];
  return SQLRequest.init(sql:arguments:adapter:cached:)(a1, a2, &v4, v5, 0, a3);
}

unint64_t sub_1B2200B94()
{
  result = qword_1EB7A29F0[0];
  if (!qword_1EB7A29F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A29F0);
  }

  return result;
}

uint64_t sub_1B2200C38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1B2200C74(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B2200C90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1B2200CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedValueObservationExtent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B2200DC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SharedValueObservationExtent.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

uint64_t *ValueObservation.shared(in:scheduling:extent:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a4;
  memcpy(__dst, v6, sizeof(__dst));
  v12 = *(a5 + 16);
  v13 = *(a5 + 24);
  v14 = *(v13 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedValueObservation();
  v18 = v11;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v13;
  memcpy(v15 + 4, v6, 0x70uLL);
  v15[18] = a1;
  v15[19] = a2;
  v15[20] = a3;
  swift_retain_n();
  (*(*(a5 - 8) + 16))(v17, __dst, a5);
  swift_unknownObjectRetain();
  return sub_1B22011AC(a3, &v18, sub_1B2201178, v15);
}

uint64_t sub_1B22010C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__src, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  memcpy(v19, __src, sizeof(v19));
  v17 = type metadata accessor for ValueObservation();
  return ValueObservation.start(in:scheduling:onError:onChange:)(a6, a7, a8, a1, a2, a3, a4, v17);
}

uint64_t *sub_1B22011AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_1B2201268(a1, a2, a3, a4);
}

uint64_t sub_1B2201210()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1B2201238()
{
  v0 = sub_1B2201210();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t *sub_1B2201268(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *a2;
  v4[6] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v4 + 64) = 0;
  v4[9] = 0;
  v10 = *(*v4 + 144);
  v11 = *(v8 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v12 = sub_1B2253480();
  sub_1B21117B4(v4 + v10, 1, 1, v12);
  v4[2] = a1;
  *(v4 + 24) = v9;
  v4[4] = a3;
  v4[5] = a4;
  type metadata accessor for SharedValueObservation.Client();
  v4[7] = sub_1B2252600();
  return v4;
}

uint64_t sub_1B22013E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v77 = a6;
  v11 = *(*a1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v12 = sub_1B2253480();
  v13 = sub_1B2252B00();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v63 - v15;
  v74 = v12;
  v65 = *(v12 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v73 = &v63 - v19;
  v20 = *(a1 + 64);
  v75 = v11;
  type metadata accessor for SharedValueObservation.Client();
  v66 = a2;
  v67 = a4;
  v21 = sub_1B21DFB5C(a2, a3, a4, a5);
  v81 = v21;
  swift_beginAccess();
  sub_1B22526A0();
  v68 = a3;

  v69 = a5;

  v76 = v21;

  sub_1B2252660();
  swift_endAccess();
  *(a1 + 64) = 1;
  if (v20)
  {
    v22 = *(*a1 + 144);
    swift_beginAccess();
    v24 = v71;
    v23 = v72;
    v25 = a1 + v22;
    v26 = v70;
    (*(v71 + 16))(v70, v25, v72);
    v27 = v74;
    if (sub_1B2122A98(v26, 1, v74) == 1)
    {
      (*(v24 + 8))(v26, v23);
    }

    else
    {
      v46 = v65;
      v71 = *(v65 + 32);
      v47 = v73;
      (v71)(v73, v26, v27);
      v72 = *(a1 + 16);
      v48 = v64;
      (*(v46 + 16))(v64, v47, v27);
      v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v50 = (v16 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      *(v51 + 16) = v75;
      (v71)(v51 + v49, v48, v27);
      v52 = (v51 + v50);
      v53 = v67;
      v54 = v68;
      v55 = v69;
      *v52 = v66;
      v52[1] = v54;
      v56 = (v51 + ((v50 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v56 = v53;
      v56[1] = v55;

      sub_1B224EAB8(sub_1B2202C00, v51);

      (*(v46 + 8))(v73, v27);
    }
  }

  else
  {
    v28 = type metadata accessor for AnyDatabaseCancellable();
    v30 = *(a1 + 32);
    v29 = *(a1 + 40);
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v33 = v75;
    *(v32 + 16) = v75;
    *(v32 + 24) = v31;
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;

    v30(v78, sub_1B2202BC8, v32, sub_1B2202BD0, v35);

    v36 = v79;
    v37 = v80;
    v38 = sub_1B21A1628(v78, v79);
    v39 = *(*(v36 - 8) + 64);
    v40 = MEMORY[0x1EEE9AC00](v38);
    v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v42, v40);
    v44 = sub_1B21E9F54(v42, v28, v36, v37);
    sub_1B2113208(v78);
    v45 = *(a1 + 72);
    *(a1 + 72) = v44;
  }

  v57 = swift_allocObject();
  v58 = v76;
  *(v57 + 16) = a1;
  *(v57 + 24) = v58;
  v59 = type metadata accessor for AnyDatabaseCancellable();
  swift_allocObject();
  v60 = AnyDatabaseCancellable.init(cancel:)(sub_1B2202BD8, v57);
  v61 = v77;
  v77[3] = v59;
  v61[4] = &protocol witness table for AnyDatabaseCancellable;
  *v61 = v60;
}

uint64_t sub_1B2201A3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B2201A9C();
  }

  return result;
}

uint64_t sub_1B2201AF0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B2201B50();
  }

  return result;
}

void sub_1B2201BA4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v14 = sub_1B2253480();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v21 - v17);
  (*(v19 + 16))(&v21 - v17, a1, v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    a2(*v18);
  }

  else
  {
    (*(v10 + 32))(v13, v18, a6);
    a4(v13);
    (*(v10 + 8))(v13, a6);
  }
}

uint64_t SharedValueObservation.publisher()@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 80);
  sub_1B21AF404(j_j___s12GRDBInternal22SharedValueObservationC5start7onError0F6ChangeAA19DatabaseCancellable_pys0G0_pc_yxctF, v1, a1);
}

uint64_t sub_1B2201EB8(uint64_t a1, void *a2)
{
  v4 = *(*a1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v5 = sub_1B2253480();
  v6 = sub_1B2252B00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - v9);
  swift_beginAccess();
  v11 = *(a1 + 56);
  type metadata accessor for SharedValueObservation.Client();

  v12 = sub_1B2252600();
  v13 = *(a1 + 56);
  *(a1 + 56) = v12;

  if (*(a1 + 24) == 1)
  {
    *(a1 + 64) = 0;
    v14 = *(a1 + 72);
    *(a1 + 72) = 0;

    sub_1B21117B4(v10, 1, 1, v5);
    v15 = *(*a1 + 144);
    swift_beginAccess();
  }

  else
  {
    *v10 = a2;
    swift_storeEnumTagMultiPayload();
    sub_1B21117B4(v10, 0, 1, v5);
    v15 = *(*a1 + 144);
    swift_beginAccess();
    v16 = a2;
  }

  (*(v7 + 40))(a1 + v15, v10, v6);
  swift_endAccess();

  v17 = sub_1B2252590();

  v24 = v17;
  if (v17 != sub_1B2252640())
  {
    do
    {
      v19 = sub_1B2252620();
      sub_1B22525C0();
      if (v19)
      {
        v20 = *(v11 + 32 + 8 * v17);
      }

      else
      {
        v20 = sub_1B2252CF0();
      }

      sub_1B2252690();
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);

      v22(a2);

      v23 = sub_1B2252640();
      v17 = v24;
    }

    while (v24 != v23);
  }
}

uint64_t sub_1B22021CC(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v5 = sub_1B2253480();
  v6 = sub_1B2252B00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  (*(*(v4 - 8) + 16))(&v21 - v10, a2, v4, v9);
  swift_storeEnumTagMultiPayload();
  sub_1B21117B4(v11, 0, 1, v5);
  v12 = *(*a1 + 144);
  swift_beginAccess();
  (*(v7 + 40))(&a1[v12], v11, v6);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(a1 + 7);
  type metadata accessor for SharedValueObservation.Client();

  v14 = sub_1B2252590();
  v21 = v14;
  if (v14 != sub_1B2252640())
  {
    do
    {
      v16 = sub_1B2252620();
      sub_1B22525C0();
      if (v16)
      {
        v17 = *(v13 + 32 + 8 * v14);
      }

      else
      {
        v17 = sub_1B2252CF0();
      }

      sub_1B2252690();
      v19 = *(v17 + 32);
      v18 = *(v17 + 40);

      v19(a2);

      v20 = sub_1B2252640();
      v14 = v21;
    }

    while (v21 != v20);
  }
}

uint64_t sub_1B2202478(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = (a1 + 56);
  v7 = *(*a1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v8 = sub_1B2253480();
  v9 = sub_1B2252B00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  swift_beginAccess();
  v14 = sub_1B22526A0();
  WitnessTable = swift_getWitnessTable();
  sub_1B21EA44C(sub_1B2202CF0, a2, v14, WitnessTable);
  if (v2)
  {
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    v19[1] = *v6;
    swift_getWitnessTable();
    result = sub_1B2252900();
    if (result & 1) != 0 && (*(a1 + 24))
    {
      *(a1 + 64) = 0;
      v17 = *(a1 + 72);
      *(a1 + 72) = 0;

      sub_1B21117B4(v13, 1, 1, v8);
      v18 = *(*a1 + 144);
      swift_beginAccess();
      (*(v10 + 40))(a1 + v18, v13, v9);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t *SharedValueObservation.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = *(*v0 + 144);
  v7 = *(v1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2253480();
  v8 = sub_1B2252B00();
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  return v0;
}

uint64_t SharedValueObservation.__deallocating_deinit()
{
  SharedValueObservation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t SharedValueObservation.values(bufferingPolicy:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v4 = sub_1B2252730();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v8 + 16))(&v10 - v7, a1, v6);
  sub_1B21AE23C();
}

unint64_t sub_1B2202958()
{
  result = qword_1EB7A2A80[0];
  if (!qword_1EB7A2A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A2A80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedValueObservationExtent(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B2202A88(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  sub_1B2253480();
  result = sub_1B2252B00();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1B2202BC8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1B2201A3C();
}

uint64_t sub_1B2202BD0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_1B2201AF0();
}

id sub_1B2202BD8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1B2201D94();
}

void sub_1B2202C00()
{
  v1 = *(v0 + 16);
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v2 = *(sub_1B2253480() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);

  sub_1B2201BA4(v0 + v3, v7, v8, v9, v10, v1);
}

void *ColumnExpression.detached.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = (*(a1 + 16))();
  MEMORY[0x1B2741EB0](v3);
  MEMORY[0x1B2741EB0](34, 0xE100000000000000);

  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B22546B0;
  v6[0] = 34;
  v6[1] = 0xE100000000000000;
  v6[2] = MEMORY[0x1E69E7CC0];
  v6[3] = MEMORY[0x1E69E7CC8];
  sub_1B2114CC4(v6);
  memcpy((v4 + 32), v6, 0xB8uLL);
  __src[0] = v4;
  sub_1B2153E14(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t Column.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Column.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Column.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  *a2 = sub_1B22534D0();
  a2[1] = v5;

  return sub_1B2113208(a1);
}

uint64_t static Column.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B22531F0();
  }
}

uint64_t sub_1B2202FD4(__int128 *a1)
{
  v1 = a1[1];
  __src = *a1;
  v7 = v1;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  sub_1B22037B0(a1, v4);
  sub_1B21AC298();
  if (sub_1B22531B0())
  {
    v4[0] = __src;
    v4[1] = v7;
    v5[0] = v8[0];
    *(v5 + 9) = *(v8 + 9);
    sub_1B21DC4E8(v4);
  }

  else
  {
    swift_allocError();
    memmove(v2, &__src, 0x39uLL);
  }

  return swift_willThrow();
}

void static FTS5CustomTokenizer.tokenizerDescriptor(arguments:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B22546B0;
  *(v6 + 32) = (*(a2 + 16))(a1, a2);
  *(v6 + 40) = v7;

  sub_1B2156C88(v8);
  if (*(v6 + 16))
  {
    *a3 = v6;
  }

  else
  {
    sub_1B2252EC0();
    __break(1u);
  }
}

uint64_t Database.throwingAdd<A>(tokenizer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  result = sub_1B219D2C4(v3);
  if (v4)
  {
    goto LABEL_4;
  }

  v8 = result;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  _s24FTS5TokenizerConstructorCMa();
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = sub_1B2203464;
  v10[4] = v9;
  v16[0] = sub_1B22036AC;
  v16[1] = sub_1B2203810;
  v16[2] = sub_1B22036B0;

  sub_1B22036B4(v16, v8, v10, a2, a3, &v15);
  v11 = v15;
  if (!v15)
  {

LABEL_4:
    v12 = *MEMORY[0x1E69E9840];
    return result;
  }

  v13 = Database.lastErrorMessage.getter();
  if (!v14)
  {
    if (!sqlite3_errstr(v11))
    {
      __break(1u);
    }

    v13 = sub_1B22523F0();
  }

  LODWORD(v17) = v11;
  *(&v17 + 1) = v13;
  v18 = v14;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  sub_1B2202FD4(&v17);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B2203338(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 1;
  }

  v10 = *(a5 + 24);

  v11 = v10(a1, a2, a4, a5);
  v12 = 0;
  *a3 = v11;
  return v12;
}

uint64_t sub_1B220346C(void *a1, void *a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    return 1;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  if ((a3 & 0x80000000) == 0)
  {
    if (a3)
    {
      v9 = a3;
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        if (*a2++)
        {
          v12 = sub_1B22523F0();
          v14 = v13;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = *(v10 + 16);
            sub_1B214400C();
            v10 = v18;
          }

          v15 = *(v10 + 16);
          if (v15 >= *(v10 + 24) >> 1)
          {
            sub_1B214400C();
            v10 = v19;
          }

          *(v10 + 16) = v15 + 1;
          v16 = v10 + 16 * v15;
          *(v16 + 32) = v12;
          *(v16 + 40) = v14;
        }

        --v9;
      }

      while (v9);
      goto LABEL_15;
    }

LABEL_14:
    v10 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v21 = a1[3];
    v20 = a1[4];
    v22 = a1[2];

    v24 = v21(v23, v10, a4);

    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B22035C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 1;
  }

  swift_unknownObjectRetain();
  swift_getObjectType();
  result = sub_1B212FED0(a1);
  if (!result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  v17 = a3;
  if (a6)
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 8))(a2, &v17, a4, a5, a6, ObjectType, v14);
    swift_unknownObjectRelease();
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B22036B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    v9 = result;
    (*(a5 + 16))(a4, a5);
    v11 = sub_1B2252350();

    v12 = v6(a2, v11 + 32, a3, v9, sub_1B220380C);

    *a6 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B2203814(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v4 = (a3 + 56);
  v5 = *(a3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    v24[0] = *(v4 - 3);
    v24[1] = v6;
    v24[2] = v7;
    v25 = v8;
    v9 = sub_1B211779C();
    sub_1B21785C4(v9, v10, v11, v12);
    v13 = v26(v24);
    if (v3)
    {
      v19 = sub_1B211779C();
      sub_1B21505F8(v19, v20, v21, v22);
      return v5 != 0;
    }

    v14 = v13;
    v4 += 32;
    v15 = sub_1B211779C();
    sub_1B21505F8(v15, v16, v17, v18);
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

uint64_t DatabaseMigrator.ForeignKeyChecks.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

GRDBInternal::DatabaseMigrator __swiftcall DatabaseMigrator.init()()
{
  *v0 = 256;
  *(v0 + 8) = MEMORY[0x1E69E7CC0];
  return result;
}

GRDBInternal::DatabaseMigrator __swiftcall DatabaseMigrator.disablingDeferredForeignKeyChecks()()
{
  v2 = *(v1 + 1);
  *v0 = *v1;
  *(v0 + 8) = v2;

  result._migrations._rawValue = v4;
  result.eraseDatabaseOnSchemaChange = v3;
  result.defersForeignKeyChecks = HIBYTE(v3);
  return result;
}

uint64_t DatabaseMigrator.migrate(_:upTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v13[16] = v8;
  v13[17] = v9;
  v14 = v10;
  v15 = a3;
  v16 = a4;
  return (*(a2 + 32))(sub_1B2205680, v13, MEMORY[0x1E69E7CA8] + 8, ObjectType, a2);
}

uint64_t sub_1B2203A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = *(v3 + 1);
  if (v8 != 1)
  {
    goto LABEL_8;
  }

  v13[0] = 0;
  v15 = 0;

  if (v9)
  {
    v11 = 257;
  }

  else
  {
    v11 = 1;
  }

  result = sub_1B2236ABC(&v15, a1, v11, v10, a1, v13);
  if (!v4)
  {
    if (v13[0] == 1)
    {
      sub_1B2236D30();
    }

LABEL_8:
    v13[0] = v8;
    v13[1] = v9;
    v14 = v10;
    return sub_1B21593B0(a1, a2, a3);
  }

  return result;
}

uint64_t DatabaseMigrator.asyncMigrate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = v4[1];
  v10 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  sub_1B2113B74();
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  *(v12 + 17) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = *(a2 + 40);

  v13(sub_1B2203D58, v12, ObjectType, a2);
}

uint64_t sub_1B2203C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 40 * v6);
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = v7[3];

    sub_1B2203A8C(a1, v8, v9);
  }

  return a4(a1, 0);
}

uint64_t DatabaseMigrator.migrations.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1B2116B10();
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void DatabaseMigrator.completedMigrations(_:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  v40 = *v1;
  v43 = v1[1];
  DatabaseMigrator.appliedMigrations(_:)(a1);
  if (!v2)
  {
    v38 = v4;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v41 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v6 = v41;
      v7 = (v3 + 40);
      v8 = v38;
      do
      {
        v9 = *(v7 - 1);
        v10 = *v7;
        v12 = *(v41 + 16);
        v11 = *(v41 + 24);

        if (v12 >= v11 >> 1)
        {
          sub_1B2112D3C();
          sub_1B2116B10();
          v8 = v38;
        }

        *(v41 + 16) = v12 + 1;
        v13 = v41 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v10;
        v7 += 5;
        --v5;
      }

      while (v5);
    }

    else
    {
      v8 = v4;
    }

    v14 = 0;
    v15 = 0;
    v39 = *(v8 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    while (v39 != v15)
    {
      if (v15 >= *(v8 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v17 = *(v6 + 16);
      if (v15 == v17)
      {
        break;
      }

      if (v15 >= v17)
      {
        goto LABEL_34;
      }

      v19 = *(v8 + v14 + 32);
      v18 = *(v8 + v14 + 40);
      v20 = *(v6 + v14 + 32);
      v21 = *(v6 + v14 + 40);
      if (v19 != v20 || v18 != v21)
      {
        v23 = *(v8 + v14 + 32);
        v24 = *(v8 + v14 + 40);
        v25 = *(v6 + v14 + 32);
        v26 = *(v6 + v14 + 40);
        if ((sub_1B22531F0() & 1) == 0)
        {

          break;
        }
      }

      v44 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B216F030(0, v16[2] + 1, 1);
        v8 = v38;
      }

      v28 = v16[2];
      v27 = v16[3];
      v29 = v16;
      if (v28 >= v27 >> 1)
      {
        sub_1B216F030((v27 > 1), v28 + 1, 1);
        v8 = v38;
        v29 = v16;
      }

      v29[2] = v28 + 1;
      v30 = &v29[4 * v28];
      v30[4] = v19;
      v30[5] = v18;
      v30[6] = v20;
      v30[7] = v21;
      v14 = v44 + 16;
      ++v15;
      v16 = v29;
    }

    v31 = v16[2];
    if (v31)
    {
      v42 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v32 = v16 + 5;
      do
      {
        v34 = *(v32 - 1);
        v33 = *v32;
        v36 = *(v42 + 16);
        v35 = *(v42 + 24);

        if (v36 >= v35 >> 1)
        {
          sub_1B2112D3C();
          sub_1B2116B10();
        }

        *(v42 + 16) = v36 + 1;
        v37 = v42 + 16 * v36;
        *(v37 + 32) = v34;
        *(v37 + 40) = v33;
        v32 += 4;
        --v31;
      }

      while (v31);
    }

    else
    {
    }
  }
}

uint64_t DatabaseMigrator.hasCompletedMigrations(_:)(uint64_t a1)
{
  v4 = *(v1 + 1);
  v13 = *v1;
  v14 = v1[1];
  DatabaseMigrator.completedMigrations(_:)(a1);
  if (!v2)
  {
    v6 = sub_1B215A638(v5);
    v8 = v7;

    sub_1B215AAC8(v4, &v15);
    v9 = v16;
    if (v16)
    {
      v10 = v15;

      if (v8)
      {
        if (v6 == v10 && v8 == v9)
        {

          v3 = 1;
        }

        else
        {
          v3 = sub_1B22531F0();
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      if (!v8)
      {
        v3 = 1;
        return v3 & 1;
      }

      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_1B2204220(int a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = DatabaseMigrator.appliedIdentifiers(_:)(a3);
  if (v4)
  {
    return 0;
  }

  v10 = v9;
  v44 = a1;
  v43 = a3;
  v45 = a4;
  v11 = *(a2 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v46 = v9;
  if (v11)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B2111B80();
    v42 = a2;
    v13 = (a2 + 40);
    v14 = v11;
    do
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v47 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1B2116B10();
        v12 = v47;
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v13 += 5;
      --v14;
    }

    while (v14);
    a2 = v42;
    v10 = v46;
  }

  v20 = sub_1B2140648(v12);
  v21 = sub_1B21414EC(v20, v10);

  if ((v21 & 1) == 0)
  {

LABEL_16:
    *v45 = 1;
    return 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B2111B80();
    v22 = v47;
    v23 = a2;
    v24 = (a2 + 40);
    do
    {
      v25 = *(v24 - 1);
      v26 = *v24;
      v47 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);

      if (v28 >= v27 >> 1)
      {
        sub_1B2112D3C();
        sub_1B2116B10();
        v22 = v47;
      }

      *(v22 + 16) = v28 + 1;
      v29 = v22 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      v24 += 5;
      --v11;
    }

    while (v11);
    a2 = v23;
    v10 = v46;
  }

  v47 = v22;

  v30 = sub_1B2205218(v22, v10);
  MEMORY[0x1EEE9AC00](v30);
  v41[2] = &v47;
  v33 = sub_1B220539C(sub_1B2205634, v41, v32, v31 & 1);
  v35 = v34;

  if (v35)
  {
    v36 = sub_1B22044FC(v43, v44 & 0x101, a2, v33, v35);

    v37 = sub_1B213DF08();
    sub_1B21C93D8(v37, v36);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1B22044FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v43 = a2;
  v6 = sub_1B2251D70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42[-v12];
  v14 = type metadata accessor for Configuration();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v42[-v20];
  sub_1B212392C(a1 + OBJC_IVAR____TtC12GRDBInternal8Database_configuration, &v42[-v20]);
  v22 = *(v15 + 76);

  *&v21[v22] = 0;
  v23 = *(v15 + 80);

  *&v21[v23] = 0;
  v24 = *(v21 + 2);

  *(v21 + 1) = 0xD00000000000001FLL;
  *(v21 + 2) = 0x80000001B226FB30;
  v25 = NSTemporaryDirectory();
  sub_1B22522A0();

  sub_1B2251D20();

  v26 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v27 = [v26 globallyUniqueString];

  sub_1B22522A0();
  sub_1B2251D40();

  v28 = *(v7 + 8);
  v28(v11, v6);
  v29 = sub_1B2251D50();
  v31 = v30;
  sub_1B212392C(v21, v19);
  type metadata accessor for DatabaseQueue();
  v32 = swift_allocObject();
  v33 = v29;
  v34 = v32;
  v35 = v47;
  v36 = DatabaseQueue.init(path:configuration:)(v33, v31, v19);
  if (!v35)
  {
    v37 = MEMORY[0x1EEE9AC00](v36);
    v38 = BYTE1(v43);
    v42[-32] = v43 & 1;
    v42[-31] = v38 & 1;
    v39 = v45;
    *&v42[-24] = v44;
    *&v42[-16] = v39;
    *&v42[-8] = v46;
    v40 = *(v37 + 16);
    v34 = sub_1B21FB770(sub_1B2205654, &v42[-48]);
  }

  sub_1B220489C();
  v28(v13, v6);
  sub_1B2133D70(v21);
  return v34;
}

void sub_1B220489C()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v1 = sub_1B2251D30();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x1E69E9840];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_1B2251D10();

    swift_willThrow();
    v8 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1B22049B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  result = sub_1B21593B0(a1, a2, a3);
  if (!v4)
  {
    result = sub_1B213DF08();
    *a4 = result;
  }

  return result;
}

void DatabaseMigrator.migratePublisher(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 1);
  sub_1B2111770();
  v10 = sub_1B2252A30();
  v12 = v10;
  if (v8)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  sub_1B2204AC8(a1, a2, v10, v11 | v7, v9, a3);
}

uint64_t sub_1B2204AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a6;
  v11 = sub_1B21619D8(&qword_1EB7A2BB8, &qword_1B22604E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v22 - v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a4 & 1;
  *(v15 + 17) = HIBYTE(a4) & 1;
  *(v15 + 24) = a5;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v24 = sub_1B220569C;
  v25 = v15;

  swift_unknownObjectRetain();
  sub_1B21619D8(&qword_1EB7A2BA0, &unk_1B2260390);
  sub_1B211AB74(&qword_1EB7A2BA8, &qword_1EB7A2BA0, &unk_1B2260390);
  v16 = sub_1B22520B0();

  v17 = *(v11 + 56);
  v18 = sub_1B2252A00();
  sub_1B21117B4(v14 + v17, 1, 1, v18);
  *v14 = v16;
  v14[1] = a3;
  sub_1B211AB74(&qword_1EB7A2BC0, &qword_1EB7A2BB8, &qword_1B22604E8);
  v19 = a3;
  v20 = sub_1B22520B0();
  result = sub_1B212AC5C(v14, &qword_1EB7A2BB8, &qword_1B22604E8);
  *v23 = v20;
  return result;
}

uint64_t DatabaseMigrator.migratePublisher<A>(_:receiveOn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a3;
  v41 = a6;
  v33 = a2;
  v8 = a5;
  v36 = a4;
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = sub_1B2252B00();
  v10 = sub_1B211280C(v39);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v32 - v15;
  v17 = sub_1B2161A20(&qword_1EB7A2B90, &qword_1B2260388);
  v35 = v17;
  v34 = sub_1B211AB74(&qword_1EB7A2B98, &qword_1EB7A2B90, &qword_1B2260388);
  v42 = v17;
  v43 = a4;
  v44 = v34;
  v45 = v8;
  v18 = type metadata accessor for ReceiveValuesOn();
  v19 = sub_1B211280C(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v32 - v24;
  LOBYTE(v8) = *v6;
  v26 = *(v6 + 1);
  v27 = *(v6 + 8);
  sub_1B2113B74();
  v28 = swift_allocObject();
  *(v28 + 16) = v8;
  *(v28 + 17) = v26;
  *(v28 + 24) = v27;
  *(v28 + 32) = a1;
  *(v28 + 40) = v33;
  v42 = sub_1B22053F8;
  v43 = v28;

  swift_unknownObjectRetain();
  sub_1B21619D8(&qword_1EB7A2BA0, &unk_1B2260390);
  sub_1B211AB74(&qword_1EB7A2BA8, &qword_1EB7A2BA0, &unk_1B2260390);
  v29 = sub_1B22520B0();

  v42 = v29;
  sub_1B21117B4(v16, 1, 1, AssociatedTypeWitness);
  sub_1B21EFFCC(v40, v16, v35, v36, v34, v25);
  (*(v12 + 8))(v16, v39);

  swift_getWitnessTable();
  v30 = sub_1B22520B0();
  result = (*(v21 + 8))(v25, v18);
  *v41 = v30;
  return result;
}

uint64_t sub_1B2204FD0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1B220552C;
  *(v12 + 24) = v11;
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  *(v14 + 16) = a3 & 1;
  *(v14 + 17) = HIBYTE(a3) & 1;
  *(v14 + 24) = a4;
  *(v14 + 32) = sub_1B220556C;
  *(v14 + 40) = v12;
  v15 = *(a6 + 40);

  v15(sub_1B2205698, v14, ObjectType, a6);
}

void sub_1B2205120(int a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else
  {
    (a3)(0);
  }
}

uint64_t DatabasePublishers.Migrate.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEDB5BC8](a1, v7, v9, v8, a2, a3);
}

uint64_t sub_1B2205218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  v5 = a2 + 56;
LABEL_2:
  while (v3)
  {
    --v3;
    if (*(a2 + 16))
    {
      v6 = (v4 + 16 * v3);
      v8 = *v6;
      v7 = v6[1];
      v9 = *(a2 + 40);
      sub_1B2253420();

      sub_1B2252370();
      v10 = sub_1B2253470();
      v11 = ~(-1 << *(a2 + 32));
      do
      {
        v12 = v10 & v11;
        if (((*(v5 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {

          goto LABEL_2;
        }

        v13 = (*(a2 + 48) + 16 * v12);
        if (*v13 == v8 && v13[1] == v7)
        {
          break;
        }

        v15 = sub_1B22531F0();
        v10 = v12 + 1;
      }

      while ((v15 & 1) == 0);

      break;
    }
  }

  return v3;
}

unint64_t sub_1B2205350(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = a2 + 16 * result;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1B220539C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = a3;
  result = a1(&v6, &v7);
  if (!v4)
  {
    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B2205400()
{
  result = qword_1EB7A2BB0;
  if (!qword_1EB7A2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2BB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DatabaseMigrator.ForeignKeyChecks(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B220552C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_1B2205574(uint64_t a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 40);
  return sub_1B2203C40(a1, v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_1B2205598()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  sub_1B2113B74();

  return swift_deallocObject();
}

uint64_t sub_1B22055D4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1B2204FD0(a1, a2, v3 | *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

unint64_t sub_1B22055F8@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1B2205350(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_1B2205654()
{
  sub_1B21162A4();
  v1 = v0[3];
  return sub_1B22049B4(v2, v0[4], v0[5], v3);
}

uint64_t static DatabaseDateComponents.fromDatabaseValue(_:)(uint64_t a1)
{
  sub_1B2111BA0();
  v3 = sub_1B22522F0();
  v4 = sub_1B2111894(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 == 3)
  {
    sub_1B22522E0();
    v11 = sub_1B22522C0();
    if (v12)
    {
      v8 = v11;
      v7 = v12;
      goto LABEL_6;
    }
  }

  else if (v9 == 2)
  {
    v10 = *(a1 + 8);

LABEL_6:
    sub_1B2175A64(v8, v7, v1);
  }

  v14 = type metadata accessor for DatabaseDateComponents();
  return sub_1B21117B4(v1, 1, 1, v14);
}

uint64_t DatabaseDateComponents.init(sqliteStatement:index:)@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_1B2251D00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2111844();
  v10 = v9 - v8;
  v11 = type metadata accessor for DatabaseDateComponents();
  v12 = sub_1B21118A0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B2111844();
  v17 = v16 - v15;
  v18 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v19 = sub_1B2111894(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  v27 = sqlite3_column_text(a1, a2);
  if (v27)
  {
    v28 = v27;
    v29 = sqlite3_column_bytes(a1, a2);
    SQLiteDateParser.components(cString:length:)(v28, v29, v26);
    sub_1B2175C54(v26, v23);
    if (sub_1B2122A98(v23, 1, v11) != 1)
    {
      sub_1B2175B30(v23, v17);
      (*(v6 + 16))(v10, v17, v5);
      v32 = *(v17 + *(v11 + 20));
      sub_1B2175BF8(v17);
      v31 = v35;
      *(v35 + *(v11 + 20)) = v32;
      (*(v6 + 32))(v31, v10, v5);
      v30 = 0;
      return sub_1B21117B4(v31, v30, 1, v11);
    }

    sub_1B2205CBC(v23);
  }

  v30 = 1;
  v31 = v35;
  return sub_1B21117B4(v31, v30, 1, v11);
}

uint64_t type metadata accessor for DatabaseDateComponents()
{
  result = qword_1ED85D410;
  if (!qword_1ED85D410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GRDBInternal::DatabaseDateComponents::Format_optional __swiftcall DatabaseDateComponents.Format.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B2252F40();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DatabaseDateComponents.Format.rawValue.getter()
{
  result = 0x2D4D4D2D79797979;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6D6D3A4848;
      break;
    case 5:
    case 6:
      result = 0x73733A6D6D3A4848;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B2205B88@<X0>(unint64_t *a1@<X8>)
{
  result = DatabaseDateComponents.Format.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DatabaseDateComponents.dateComponents.getter()
{
  sub_1B2111BA0();
  v2 = sub_1B2251D00();
  v3 = sub_1B21118A0(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t DatabaseDateComponents.format.getter()
{
  sub_1B2111BA0();
  result = type metadata accessor for DatabaseDateComponents();
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t DatabaseDateComponents.init(_:format:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a3 + *(type metadata accessor for DatabaseDateComponents() + 20)) = v5;
  v6 = sub_1B2251D00();
  v7 = sub_1B21118A0(v6);
  v9 = *(v8 + 32);

  return v9(a3, a1, v7);
}

uint64_t sub_1B2205CBC(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *DatabaseDateComponents.databaseValue.getter()
{
  sub_1B2111BA0();
  v2 = *(type metadata accessor for DatabaseDateComponents() + 20);
  v3 = *(v1 + v2);
  v4 = MEMORY[0x1E69E6530];
  v5 = MEMORY[0x1E69E65A8];
  if (v3 > 3)
  {
    v16 = 0;
    v18 = 0;
  }

  else
  {
    v6 = sub_1B2251C60();
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v9 = sub_1B2251C80();
    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    v12 = sub_1B2251C20();
    if (v13)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }

    sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B2260500;
    *(v15 + 56) = v4;
    *(v15 + 64) = v5;
    *(v15 + 32) = v8;
    *(v15 + 96) = v4;
    *(v15 + 104) = v5;
    *(v15 + 72) = v11;
    *(v15 + 136) = v4;
    *(v15 + 144) = v5;
    *(v15 + 112) = v14;
    v16 = sub_1B22522D0();
    v18 = v17;
    v3 = *(v1 + v2);
  }

  v19 = v3;
  v20 = v3;
  switch(v3)
  {
    case 1u:
    case 4u:
      sub_1B2251C40();
      v21 = sub_1B2251CA0();
      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
      v24 = swift_allocObject();
      sub_1B2112D48(v24, xmmword_1B225B140)[4].n128_u64[1] = v23;
      sub_1B21162B8();
      goto LABEL_37;
    case 2u:
    case 5u:
      sub_1B2251C40();
      v39 = sub_1B2251CA0();
      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39;
      }

      v42 = sub_1B2251CC0();
      if (v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = v42;
      }

      sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
      v45 = swift_allocObject();
      v46 = sub_1B2112D48(v45, xmmword_1B2260500);
      v46[4].n128_u64[1] = v41;
      v46[8].n128_u64[1] = v4;
      v46[9].n128_u64[0] = v5;
      v46[7].n128_u64[0] = v44;
      sub_1B21162B8();
      goto LABEL_37;
    case 3u:
    case 6u:
      sub_1B2251C40();
      v25 = sub_1B2251CA0();
      if (v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      v28 = sub_1B2251CC0();
      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v28;
      }

      v31 = sub_1B2251C00();
      v33 = v32;
      v34 = v31;
      sub_1B21619D8(&qword_1EB7A2BC8, &qword_1B2260538);
      v35 = swift_allocObject();
      result = sub_1B2112D48(v35, xmmword_1B2260510);
      result[9] = v27;
      result[17] = v4;
      result[18] = v5;
      result[14] = v30;
      v37 = v34 / 1000000.0;
      if (v33)
      {
        v37 = 0.0;
      }

      v38 = round(v37);
      if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_49;
      }

      if (v38 <= -9.22337204e18)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v38 < 9.22337204e18)
      {
        result[22] = v4;
        result[23] = v5;
        result[19] = v38;
LABEL_37:
        v19 = sub_1B22522D0();
        v20 = v47;
LABEL_38:
        sub_1B21619D8(&qword_1EB7A1178, &qword_1B2254998);
        inited = swift_initStackObject();
        v49 = 0;
        *(inited + 16) = xmmword_1B225B140;
        *(inited + 32) = v16;
        *(inited + 40) = v18;
        v50 = inited + 40;
        *(inited + 48) = v19;
        *(inited + 56) = v20;
        v51 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v52 = (v50 + 16 * v49);
          do
          {
            if (++v49 == 3)
            {
              swift_setDeallocating();
              sub_1B21B712C();
              sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
              sub_1B215175C();
              v61 = sub_1B2252250();
              v63 = v62;

              *v0 = v61;
              *(v0 + 8) = v63;
              *(v0 + 16) = 2;
              return result;
            }

            v53 = v52 + 2;
            v54 = *v52;
            v52 += 2;
          }

          while (!v54);
          v55 = *(v53 - 3);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = *(v51 + 16);
            sub_1B214400C();
            v51 = v59;
          }

          v56 = *(v51 + 16);
          if (v56 >= *(v51 + 24) >> 1)
          {
            sub_1B214400C();
            v51 = v60;
          }

          *(v51 + 16) = v56 + 1;
          v57 = v51 + 16 * v56;
          *(v57 + 32) = v55;
          *(v57 + 40) = v54;
        }
      }

LABEL_50:
      __break(1u);
      return result;
    default:
      goto LABEL_38;
  }
}

uint64_t DatabaseDateComponents.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v6 = sub_1B2111894(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-1] - v9;
  v11 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  sub_1B2116788();
  sub_1B2253490();
  if (!v2)
  {
    sub_1B21139A0(v18, v18[3]);
    sub_1B2116788();
    v12 = sub_1B2253200();
    v14 = v13;

    sub_1B2175A64(v12, v14, v10);
    swift_bridgeObjectRelease_n();
    v15 = type metadata accessor for DatabaseDateComponents();
    if (sub_1B2122A98(v10, 1, v15) == 1)
    {
      sub_1B2205CBC(v10);
      sub_1B2252D40();
      swift_allocError();
      sub_1B2252D20();
      swift_willThrow();
    }

    else
    {
      sub_1B2175B30(v10, a2);
    }

    sub_1B2113208(v18);
  }

  return sub_1B2113208(a1);
}

uint64_t DatabaseDateComponents.encode(to:)(void *a1)
{
  v2 = sub_1B22522F0();
  v3 = sub_1B2111894(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  v6 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  sub_1B22534B0();
  DatabaseDateComponents.databaseValue.getter();
  if (v15 == 3)
  {
    sub_1B22522E0();
    sub_1B2114F30();
    sub_1B22522C0();
    v12 = v11;
    v13 = sub_1B2114F30();
    result = sub_1B2113A44(v13, v14, 3);
    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_1B21A1628(v16, v16[3]);
    sub_1B2114F30();
    sub_1B2253230();

    return sub_1B2113208(v16);
  }

  if (v15 == 2)
  {
    goto LABEL_5;
  }

  v7 = sub_1B2114F30();
  result = sub_1B2113A44(v7, v8, v9);
LABEL_6:
  __break(1u);
  return result;
}

uint64_t sub_1B2206464@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B2251D00();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1B21619D8(&qword_1EB7A1338, &qword_1B2260530);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28[-v21];
  v23 = sqlite3_column_text(a1, a2);
  if (v23)
  {
    v24 = v23;
    v25 = sqlite3_column_bytes(a1, a2);
    SQLiteDateParser.init()();
    SQLiteDateParser.components(cString:length:)(v24, v25, v22);
    sub_1B2175C54(v22, v19);
    if (sub_1B2122A98(v19, 1, a3) != 1)
    {
      sub_1B2175B30(v19, v15);
      DatabaseDateComponents.dateComponents.getter();
      DatabaseDateComponents.format.getter();
      sub_1B2175BF8(v15);
      DatabaseDateComponents.init(_:format:)(v11, &v29, a4);
      v26 = 0;
      return sub_1B21117B4(a4, v26, 1, a3);
    }

    sub_1B2205CBC(v19);
  }

  v26 = 1;
  return sub_1B21117B4(a4, v26, 1, a3);
}

unint64_t sub_1B2206694()
{
  result = qword_1EB7A2BD0[0];
  if (!qword_1EB7A2BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A2BD0);
  }

  return result;
}

uint64_t sub_1B2206710()
{
  result = sub_1B2251D00();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseDateComponents.Format(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DatabaseDateComponents.Format(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t SQLiteDateParser.components(cString:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1B21619D8(&qword_1EB7A1348, &qword_1B2255048);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1B2251D00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v47[-v16];
  if (a2 >= 5)
  {
    if (*(a1 + 4) == 45)
    {
      sub_1B2251F70();
      sub_1B2112D5C();
      sub_1B21117B4(v23, v24, v25, v26);
      sub_1B2251FA0();
      sub_1B2112D5C();
      sub_1B21117B4(v27, v28, v29, v30);
      sub_1B21177B0();
      v31 = sub_1B2115314();
      sub_1B2206D14(v31, v32);
      v33 = v48;
      if (v48 == 7 || v49)
      {
        (*(v11 + 8))(v17, v10);
LABEL_13:
        v44 = type metadata accessor for DatabaseDateComponents();
        v45 = a3;
        v46 = 1;
        return sub_1B21117B4(v45, v46, 1, v44);
      }

      (*(v11 + 32))(a3, v17, v10);
    }

    else
    {
      if (*(a1 + 2) != 58)
      {
        goto LABEL_2;
      }

      sub_1B2251F70();
      sub_1B2112D5C();
      sub_1B21117B4(v34, v35, v36, v37);
      sub_1B2251FA0();
      sub_1B2112D5C();
      sub_1B21117B4(v38, v39, v40, v41);
      sub_1B21177B0();
      v42 = sub_1B2115314();
      sub_1B2206E64(v42, v43);
      v33 = v48;
      if (v48 == 7 || v49)
      {
        (*(v11 + 8))(v15, v10);
        goto LABEL_13;
      }

      (*(v11 + 32))(a3, v15, v10);
    }

    v44 = type metadata accessor for DatabaseDateComponents();
    *(a3 + *(v44 + 20)) = v33;
    v45 = a3;
    v46 = 0;
    return sub_1B21117B4(v45, v46, 1, v44);
  }

LABEL_2:
  type metadata accessor for DatabaseDateComponents();
  sub_1B2112D5C();

  return sub_1B21117B4(v18, v19, v20, v21);
}

uint64_t sub_1B2206D14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1B22071C4();
  if (v5)
  {
    goto LABEL_7;
  }

  v6 = *(a1 + 8);
  v7 = v6 < 1;
  v8 = v6 - 1;
  if (v7)
  {
    goto LABEL_7;
  }

  if (**a1 != 45)
  {
    goto LABEL_7;
  }

  ++*a1;
  *(a1 + 8) = v8;
  result = sub_1B220731C();
  if (v9)
  {
    goto LABEL_7;
  }

  result = sub_1B22072CC(45);
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  result = sub_1B220731C();
  if (v10)
  {
    goto LABEL_7;
  }

  sub_1B2251C70();
  sub_1B2251C90();
  result = sub_1B2251C30();
  if (!*(a1 + 8))
  {
    *a2 = 0;
    return result;
  }

  if ((sub_1B22072CC(32) & 1) == 0)
  {
    result = sub_1B22072CC(84);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  result = sub_1B2206E64(a1, &v12);
  switch(v12)
  {
    case 6:
      v11 = 3;
      break;
    case 5:
      v11 = 2;
      break;
    case 4:
      v11 = 1;
      break;
    default:
LABEL_7:
      v11 = 7;
      break;
  }

  *a2 = v11;
  return result;
}

uint64_t sub_1B2206E64@<X0>(char **a1@<X0>, char *a2@<X8>)
{
  result = sub_1B220731C();
  if (v5)
  {
    goto LABEL_5;
  }

  v6 = a1[1];
  v7 = v6 < 1;
  v8 = (v6 - 1);
  if (v7)
  {
    goto LABEL_5;
  }

  if (**a1 != 58)
  {
    goto LABEL_5;
  }

  ++*a1;
  a1[1] = v8;
  result = sub_1B220731C();
  if (v9)
  {
    goto LABEL_5;
  }

  sub_1B2251C50();
  result = sub_1B2251CB0();
  if (!a1[1] || (result = sub_1B22073A8(a1), (result & 1) != 0))
  {
    v10 = 4;
    goto LABEL_6;
  }

  result = sub_1B22072CC(58);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1B220731C();
  if (v11)
  {
    goto LABEL_5;
  }

  result = sub_1B2251CD0();
  if (!a1[1] || (result = sub_1B22073A8(a1), (result & 1) != 0))
  {
    v10 = 5;
    goto LABEL_6;
  }

  result = sub_1B22072CC(46);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = a1[1];
  if (v12 < 1)
  {
    goto LABEL_5;
  }

  if (**a1 - 48 != (**a1 - 48))
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((**a1 - 48) > 9u)
  {
    goto LABEL_5;
  }

  v13 = (v12 - 1);
  ++*a1;
  a1[1] = v13;
  if (!v13)
  {
    goto LABEL_21;
  }

  result = sub_1B22073A8(a1);
  if (result)
  {
    goto LABEL_21;
  }

  v14 = a1[1];
  if (v14 < 1)
  {
    goto LABEL_5;
  }

  if (**a1 - 48 != (**a1 - 48))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((**a1 - 48) > 9u)
  {
    goto LABEL_5;
  }

  v15 = (v14 - 1);
  ++*a1;
  a1[1] = v15;
  if (!v15 || (result = sub_1B22073A8(a1), (result & 1) != 0))
  {
LABEL_21:
    result = sub_1B2251C10();
LABEL_22:
    v10 = 6;
    goto LABEL_6;
  }

  v16 = a1[1];
  v17 = v16 - 1;
  if (v16 < 1)
  {
LABEL_5:
    v10 = 7;
LABEL_6:
    *a2 = v10;
    return result;
  }

  v18 = *a1;
  if (**a1 - 48 == (**a1 - 48))
  {
    if ((**a1 - 48) <= 9u)
    {
      v19 = v18 + 1;
      *a1 = v18 + 1;
      a1[1] = v17;
      result = sub_1B2251C10();
      v20 = &v18[v16];
      while (1)
      {
        if (v17 < 1)
        {
          v17 = 0;
          goto LABEL_39;
        }

        if ((*v19 - 48) != *v19 - 48)
        {
          goto LABEL_42;
        }

        if ((*v19 - 48) > 9u)
        {
          break;
        }

        ++v19;
        --v17;
      }

      v20 = v19;
LABEL_39:
      *a1 = v20;
      a1[1] = v17;
      result = sub_1B22073A8(a1);
      goto LABEL_22;
    }

    goto LABEL_5;
  }

LABEL_43:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLiteDateParser(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B22071C4()
{
  v1 = v0[1];
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *v0;
  v3 = **v0 - 48;
  if (v3 != (**v0 - 48))
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if ((**v0 - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 1;
  v0[1] = (v1 - 1);
  if (v1 == 1)
  {
    return 0;
  }

  v4 = v2[1] - 48;
  if (v4 != v4)
  {
    goto LABEL_16;
  }

  if ((v2[1] - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 2;
  v0[1] = (v1 - 2);
  if (v1 < 3)
  {
    return 0;
  }

  v5 = v2[2] - 48;
  if (v5 != v5)
  {
    goto LABEL_17;
  }

  if ((v2[2] - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 3;
  v0[1] = (v1 - 3);
  if (v1 == 3)
  {
    return 0;
  }

  v6 = v2[3] - 48;
  if (v6 != v6)
  {
    goto LABEL_18;
  }

  if ((v2[3] - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 4;
  v0[1] = (v1 - 4);
  return 10 * (10 * (v4 + 10 * v3) + v5) + v6;
}

uint64_t sub_1B22072CC(uint64_t result)
{
  v2 = v1[1];
  v3 = v2 < 1;
  v4 = (v2 - 1);
  if (v3)
  {
    return 0;
  }

  v5 = result;
  if (result > 0x7F)
  {
    __break(1u);
  }

  else
  {
    result = 0;
    if ((**v1 & 0x80000000) == 0 && **v1 == v5)
    {
      ++*v1;
      v1[1] = v4;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B220731C()
{
  v1 = v0[1];
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *v0;
  v3 = **v0 - 48;
  if (v3 != (**v0 - 48))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if ((**v0 - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 1;
  v0[1] = (v1 - 1);
  if (v1 == 1)
  {
    return 0;
  }

  v4 = v2[1] - 48;
  if (v4 != v4)
  {
    goto LABEL_10;
  }

  if ((v2[1] - 48) > 9u)
  {
    return 0;
  }

  *v0 = v2 + 2;
  v0[1] = (v1 - 2);
  return (v4 + 10 * v3);
}

uint64_t sub_1B22073A8(char **a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1340, &unk_1B22606D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = a1[1];
  v5 = v4 < 1;
  v6 = (v4 - 1);
  if (v5)
  {
    return 0;
  }

  v7 = *a1;
  if ((**a1 & 0x80000000) == 0)
  {
    v8 = **a1;
    if (v8 == 43)
    {
      *a1 = v7 + 1;
      a1[1] = v6;
      v10 = sub_1B220731C();
      if ((v11 & 1) == 0)
      {
        v12 = v10;
        if (sub_1B22072CC(58))
        {
          result = sub_1B220731C();
          if ((v13 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else if (v8 == 90)
    {
      *a1 = v7 + 1;
      a1[1] = v6;
LABEL_6:
      sub_1B2251F80();
      sub_1B2251CF0();
      return 1;
    }
  }

  v14 = a1[1];
  v5 = v14 < 1;
  v15 = (v14 - 1);
  if (!v5 && **a1 == 45)
  {
    ++*a1;
    a1[1] = v15;
    v16 = sub_1B220731C();
    if ((v17 & 1) == 0)
    {
      v12 = v16;
      if (sub_1B22072CC(58))
      {
        result = sub_1B220731C();
        if ((v18 & 1) == 0)
        {
          v19 = 3600 * v12;
          if ((v12 * 3600) >> 64 != (3600 * v12) >> 63)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v20 = 60 * result;
          if ((result * 60) >> 64 != (60 * result) >> 63)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (v21)
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          result = -v22;
          if (!__OFSUB__(0, v22))
          {
            goto LABEL_6;
          }

          __break(1u);
LABEL_23:
          v23 = 3600 * v12;
          if ((v12 * 3600) >> 64 != (3600 * v12) >> 63)
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v24 = 60 * result;
          if ((result * 60) >> 64 != (60 * result) >> 63)
          {
LABEL_32:
            __break(1u);
            return result;
          }

          result = v23 + v24;
          if (!__OFADD__(v23, v24))
          {
            goto LABEL_6;
          }

          __break(1u);
          goto LABEL_28;
        }
      }
    }
  }

  return 0;
}

uint64_t - infix(_:_:)()
{
  return sub_1B21144A0();
}

{
  return sub_1B211D748();
}

{
  return sub_1B2122314();
}

uint64_t / infix(_:_:)()
{
  return sub_1B21144A0();
}

{
  return sub_1B211D748();
}

{
  return sub_1B2122314();
}

uint64_t == infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[4];
  sub_1B211592C(a1, a1[3]);
  v6 = sub_1B212DFB4();
  v7(v6);
  v8 = a2[3];
  sub_1B21139A0(a2, v8);
  sub_1B2115328();
  v9(v8);
  v10 = sub_1B2135088(a3);
  sub_1B214412C(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90[0]);
  sub_1B21356F8(v90);
  sub_1B21233E0(v91, v18, v19, v20, v21, v22, v23, v24, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69);
  return sub_1B21356F8(v91);
}

uint64_t == infix(_:_:)(char a1, void *a2)
{
  v3 = a2[3];
  v2 = a2[4];
  if (a1)
  {
    sub_1B21139A0(a2, a2[3]);
    sub_1B2115328();
    v4(v3);
    sub_1B2113BD0();
    v6 = 0;
  }

  else
  {
    sub_1B21139A0(a2, a2[3]);
    sub_1B2115328();
    v7(v3);
    sub_1B2113BD0();
    v6 = 1;
  }

  sub_1B214E21C(v6, v5);
  sub_1B213CBB8(v17, v8, v9, v10, v11, v12, v13, v14, v16);
  return sub_1B21356F8(v17);
}

uint64_t != infix(_:_:)(void *a1, char a2)
{
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v5[0] = swift_allocObject();
  == infix(_:_:)(a1, a2);
  ! prefix(_:)(v5);
  return sub_1B2113208(v5);
}

uint64_t != infix(_:_:)(char a1, void *a2)
{
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v5[0] = swift_allocObject();
  == infix(_:_:)(a1, a2);
  ! prefix(_:)(v5);
  return sub_1B2113208(v5);
}

uint64_t === infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[4];
  sub_1B211592C(a1, a1[3]);
  v6 = sub_1B212DFB4();
  v7(v6);
  v8 = a2[3];
  sub_1B21139A0(a2, v8);
  sub_1B2115328();
  v9(v8);
  v10 = sub_1B21353B0(2, v68, a3);
  sub_1B214412C(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68[0], v68[1], v68[2], v68[3], v68[4], v68[5], v68[6], v68[7], v68[8], v68[9], v68[10], v68[11], v68[12], v68[13], v68[14], v68[15], v68[16], v68[17], v68[18], v68[19], v68[20], v69[0]);
  sub_1B21356F8(v69);
  sub_1B21233E0(v70, v18, v19, v20, v21, v22, v23, v24, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v68[0]);
  return sub_1B21356F8(v70);
}

uint64_t === infix(_:_:)()
{
  sub_1B21131D0();
  v3 = v2[4];
  sub_1B211592C(v2, v2[3]);
  v4 = sub_1B212DFB4();
  v5(v4);
  sub_1B2134FB0(v1, v20);
  if (v20[3])
  {
    v6 = v20[4];
    sub_1B211FE78(v20);
    v7 = sub_1B2116AC4();
    v8(v7, v6);
    sub_1B2113208(v20);
  }

  else
  {
    sub_1B214BF9C(v20);
    *v19 = 0;
    *&v19[8] = 0;
    v19[16] = 4;
    sub_1B2127D7C(v19);
    sub_1B2124244(__src, v9, v10, v11, v12, v13, v14, v15, v17, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], v19[0]);
  }

  sub_1B21353B0(2, v21, v0);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21356F8(__dst);
  memcpy(v19, v21, 0xA3uLL);
  return sub_1B21356F8(v19);
}

{
  sub_1B21131D0();
  sub_1B2134FB0(v2, &v43);
  if (v44)
  {
    sub_1B2134D5C(&v43, v45);
    v3 = v45[4];
    sub_1B21139A0(v45, v45[3]);
    v4 = *(v3 + 8);
    v5 = sub_1B212DFB4();
    v6(v5, v3);
    v7 = v1[4];
    sub_1B211592C(v1, v1[3]);
    v8 = sub_1B212DFB4();
    v9(v8);
    sub_1B21353B0(2, __src, v0);
    sub_1B2124244(v41, v10, v11, v12, v13, v14, v15, v16, v36, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15], v38[16], v38[17], v38[18], v38[19], v38[20], v39[0]);
    sub_1B21356F8(v41);
    memcpy(__dst, __src, 0xA3uLL);
    sub_1B21356F8(__dst);
    return sub_1B2113208(v45);
  }

  else
  {
    sub_1B214BF9C(&v43);
    v18 = v1[4];
    sub_1B211592C(v1, v1[3]);
    v19 = sub_1B212DFB4();
    v21 = v20(v19);
    sub_1B2121244(v21, v22, v23, v24, v25, v26, v27, v28, v36, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15], v38[16], v38[17], v38[18], v38[19], v38[20], v39[0], v39[1], v39[2], v39[3], v39[4], v39[5], v39[6], v39[7], v39[8], v39[9], v39[10], v39[11], v39[12], v39[13], v39[14], v39[15], v39[16], v39[17], v39[18], v39[19], v39[20], __src[0], __src[1], __src[2]);
    memcpy(v38, __src, 0xA3uLL);
    sub_1B21353B0(2, v39, v0);
    memcpy(v41, v38, 0xA3uLL);
    sub_1B21356F8(v41);
    sub_1B2124244(__dst, v29, v30, v31, v32, v33, v34, v35, v37, v38[0], v38[1], v38[2], v38[3], v38[4], v38[5], v38[6], v38[7], v38[8], v38[9], v38[10], v38[11], v38[12], v38[13], v38[14], v38[15], v38[16], v38[17], v38[18], v38[19], v38[20], v39[0]);
    return sub_1B21356F8(__dst);
  }
}

uint64_t !== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return sub_1B214EAFC(a1, a2, === infix(_:_:));
}

{
  return sub_1B214EAFC(a1, a2, === infix(_:_:));
}

{
  return sub_1B214EAFC(a1, a2, === infix(_:_:));
}

uint64_t <= infix(_:_:)()
{
  return sub_1B2122D28();
}

{
  return sub_1B211A30C();
}

{
  return sub_1B211E538();
}

uint64_t < infix(_:_:)()
{
  return sub_1B211D748();
}

{
  return sub_1B21144A0();
}

{
  return sub_1B2122314();
}

uint64_t > infix(_:_:)()
{
  return sub_1B211D748();
}

{
  return sub_1B21144A0();
}

{
  return sub_1B2122314();
}

uint64_t >= infix(_:_:)()
{
  return sub_1B2122D28();
}

{
  return sub_1B211A30C();
}

{
  return sub_1B211E538();
}

uint64_t sub_1B2208288()
{
  sub_1B21130A8();
  v2 = v1[4];
  sub_1B211592C(v1, v1[3]);
  v3 = sub_1B2114010();
  v4(v3);
  v5 = v0[4];
  sub_1B21139A0(v0, v0[3]);
  v6 = *(v5 + 8);
  v7 = sub_1B2114010();
  v9 = v8(v7, v5);
  v17 = sub_1B2115F40(v9, v10, v11, v12, v13, v14, v15, v16, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96);
  sub_1B214412C(v17, v18, v19, v20, v21, v22, v23, v24, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119[0]);
  sub_1B21356F8(v119);
  sub_1B21233E0(v120, v25, v26, v27, v28, v29, v30, v31, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98);
  return sub_1B21356F8(v120);
}

void *- prefix(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  sub_1B21139A0(a1, v3);
  sub_1B2115328();
  v4(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = 45;
  *(v5 + 24) = 0xE100000000000000;
  *(v5 + 32) = 0;
  sub_1B213CBB8((v5 + 40), v6, v7, v8, v9, v10, v11, v12, v14);
  __src[0] = v5;
  sub_1B21D0684(__src);
  return memcpy(a2, __src, 0xA3uLL);
}

uint64_t sub_1B22087A0()
{
  sub_1B21130A8();
  v2 = v1[4];
  sub_1B211592C(v1, v1[3]);
  v3 = sub_1B2114010();
  v4(v3);
  v5 = v0[3];
  sub_1B21139A0(v0, v5);
  sub_1B2115328();
  v7 = v6(v5);
  v15 = sub_1B2115F40(v7, v8, v9, v10, v11, v12, v13, v14, v31, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94);
  sub_1B214412C(v15, v16, v17, v18, v19, v20, v21, v22, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]);
  sub_1B21356F8(v117);
  sub_1B21233E0(v118, v23, v24, v25, v26, v27, v28, v29, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96);
  return sub_1B21356F8(v118);
}

uint64_t sub_1B2208850()
{
  sub_1B21130A8();
  v2 = v1[4];
  sub_1B21139A0(v1, v1[3]);
  v3 = *(v2 + 8);
  v4 = sub_1B2114010();
  v5(v4, v2);
  v6 = v0[3];
  sub_1B21139A0(v0, v6);
  sub_1B2115328();
  v8 = v7(v6);
  v16 = sub_1B2115F40(v8, v9, v10, v11, v12, v13, v14, v15, v32, v35, v38, v41, v44, v47, v50, v53, v56, v59, v62, v65, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95);
  sub_1B214412C(v16, v17, v18, v19, v20, v21, v22, v23, v33, v36, v39, v42, v45, v48, v51, v54, v57, v60, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118[0]);
  sub_1B21356F8(v118);
  sub_1B21233E0(v119, v24, v25, v26, v27, v28, v29, v30, v34, v37, v40, v43, v46, v49, v52, v55, v58, v61, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97);
  return sub_1B21356F8(v119);
}

uint64_t Range<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1B2123524(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18[0], v18[1], v18[2], v19, v20, v21[0], v21[1], v21[2], v22, v23);
  v13 = *(*(v9 - 8) + 16);
  v13(v12, v8, v9);
  v24[3] = &type metadata for SQLExpression;
  v24[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v24[0] = swift_allocObject();
  >= infix(_:_:)();
  sub_1B2113208(v21);
  v14 = *(v11 + 36);
  v19 = v9;
  v20 = v10;
  v15 = sub_1B212FF14(v18);
  v13(v15, v8 + v14, v9);
  v22 = &type metadata for SQLExpression;
  v23 = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v21[0] = swift_allocObject();
  < infix(_:_:)();
  sub_1B2113208(v18);
  && infix(_:_:)(v24, v21);
  sub_1B2113208(v21);
  return sub_1B2113208(v24);
}

{
  v12 = sub_1B2123524(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18[0], v18[1], v18[2], v19, v20, v21[0], v21[1], v21[2], v22, v23);
  v13 = *(*(v9 - 8) + 16);
  v13(v12, v8, v9);
  v24[3] = &type metadata for SQLExpression;
  v24[4] = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v24[0] = swift_allocObject();
  >= infix(_:_:)();
  sub_1B2113208(v21);
  v14 = *(v11 + 36);
  v19 = v9;
  v20 = v10;
  v15 = sub_1B212FF14(v18);
  v13(v15, v8 + v14, v9);
  v22 = &type metadata for SQLExpression;
  v23 = &protocol witness table for SQLExpression;
  sub_1B2117AD0();
  v21[0] = swift_allocObject();
  < infix(_:_:)();
  sub_1B2113208(v18);
  && infix(_:_:)(v24, v21);
  sub_1B2113208(v21);
  return sub_1B2113208(v24);
}

uint64_t ClosedRange<>.contains(_:)()
{
  sub_1B21130A8();
  v2 = v1[4];
  sub_1B211592C(v1, v1[3]);
  v3 = sub_1B2114010();
  v4(v3);
  v5 = sub_1B2208FF4();
  v0(v5);
  v6 = sub_1B212E2F8();
  v0(v6);
  sub_1B213CE8C();
  sub_1B213CBB8(v46, v7, v8, v9, v10, v11, v12, v13, v22);
  sub_1B21356F8(v46);
  sub_1B21233E0(v47, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  sub_1B21356F8(v47);
  memcpy(__dst, __src, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

{
  sub_1B21130A8();
  v2 = v1[4];
  sub_1B211592C(v1, v1[3]);
  v3 = sub_1B2114010();
  v4(v3);
  v5 = sub_1B2208FF4();
  v0(v5);
  v6 = sub_1B212E2F8();
  v0(v6);
  sub_1B213CE8C();
  sub_1B213CBB8(v46, v7, v8, v9, v10, v11, v12, v13, v22);
  sub_1B21356F8(v46);
  sub_1B21233E0(v47, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
  sub_1B21356F8(v47);
  memcpy(__dst, __src, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t Sequence<>.contains(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, void *a5@<X8>)
{
  __src[0] = sub_1B2150D28(sub_1B2208DE0, 0, a2, &type metadata for SQLExpression, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a4);
  sub_1B21513E8(__src);
  memcpy(__dst, __src, sizeof(__dst));
  v7 = a1[3];
  sub_1B21139A0(a1, v7);
  sub_1B2115328();
  v8(v7);
  sub_1B2151410(v17, a5);
  sub_1B213CBB8(v20, v9, v10, v11, v12, v13, v14, v15, v17[0]);
  sub_1B21356F8(v20);
  memcpy(v21, __dst, 0xA2uLL);
  return sub_1B2151630(v21);
}

void *sub_1B2208DE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1B21139A0(a1, v3);
  (*(v4 + 8))(__src, v3, v4);
  return memcpy(a2, __src, 0xA3uLL);
}

void *SQLSpecificExpressible.like(_:escape:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  (*(*(a4 + 8) + 8))(v18, a3);
  v8 = a1[3];
  v9 = a1[4];
  sub_1B21139A0(a1, v8);
  (*(v9 + 8))(v19, v8, v9);
  sub_1B2134FB0(a2, v16);
  if (v16[3])
  {
    v10 = v16[4];
    sub_1B211FE78(v16);
    v11 = sub_1B2116AC4();
    v12(v11, v10);
    nullsub_1(__src);
    sub_1B2113208(v16);
    memcpy(__dst, __src, 0xA3uLL);
  }

  else
  {
    sub_1B214BF9C(v16);
    sub_1B2179418(__dst);
  }

  v13 = swift_allocObject();
  v13[2] = 1162561868;
  v13[3] = 0xE400000000000000;
  v13[4] = 0x454B494C20544F4ELL;
  v13[5] = 0xE800000000000000;
  memcpy(v13 + 6, v18, 0xA3uLL);
  memcpy(v13 + 27, v19, 0xA3uLL);
  memcpy(v13 + 48, __dst, 0xA3uLL);
  __src[0] = v13;
  sub_1B21D0530(__src);
  return memcpy(a5, __src, 0xA3uLL);
}

void sub_1B2209060(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
  }

  a6();
  __break(1u);
}

uint64_t sub_1B2209154(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B2209190(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1B22091F4(_BYTE *result, int a2, int a3)
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

void FetchRequest<>.observationForFirst()()
{
  FetchRequest<>.observationForAll()();
}

{
  FetchRequest<>.observationForAll()();
}

{
  FetchRequest<>.observationForAll()();
}

{
  FetchRequest<>.observationForAll()();
}

void static ValueObservation<>.trackingOne<A>(_:)()
{
  static ValueObservation<>.trackingAll<A>(_:)();
}

{
  static ValueObservation<>.trackingAll<A>(_:)();
}

{
  static ValueObservation<>.trackingAll<A>(_:)();
}

uint64_t sub_1B2209440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 227))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_1B2209480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 226) = 0;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 227) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 227) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1B220950C(void *result)
{
  v22 = result[3];
  v23 = result[4] >> 1;
  v1 = v23 - v22;
  if (__OFSUB__(v23, v22))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v2 = result[1];
  v20 = result[2];
  v21 = *result;
  v3 = *(*result + 16);
  if (v1 >= v3)
  {
    v4 = *(*result + 16);
  }

  else
  {
    v4 = v23 - v22;
  }

  v31 = MEMORY[0x1E69E7CC0];
  result = sub_1B216EE18(0, v4 & ~(v4 >> 63), 0);
  if (v1 < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v5 = v31;
  if (v4)
  {

    result = swift_unknownObjectRetain();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v24 = v22;
    while (v6 < v4)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_45;
      }

      if (v8)
      {
        sub_1B220A81C(__src);
        memcpy(__dst, __src, 0x1CBuLL);
        v8 = 1;
      }

      else
      {
        v10 = v3;
        if (v7 == v3)
        {
          goto LABEL_16;
        }

        if (v7 >= v3)
        {
          goto LABEL_49;
        }

        result = memcpy(__src, (v21 + 32 + 232 * v7), 0xE3uLL);
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_50;
        }

        if (v24 == v23)
        {
LABEL_16:
          sub_1B220A81C(__src);
          memcpy(__dst, __src, 0x1CBuLL);
          v8 = 1;
        }

        else
        {
          if (v24 < v22 || v24 >= v23)
          {
            goto LABEL_51;
          }

          memcpy(v27, (v20 + 232 * v24++), 0xE3uLL);
          memcpy(__dst, __src, 0xE3uLL);
          memcpy(&__dst[232], v27, 0xE3uLL);
          nullsub_1(__dst);
          sub_1B21819B8(__src, v29);
          sub_1B21819B8(v27, v29);
          v8 = 0;
        }

        v7 = v10;
      }

      memcpy(__src, __dst, 0x1CBuLL);
      result = sub_1B220A79C(__src);
      if (result == 1)
      {
        goto LABEL_54;
      }

      sub_1B220A42C(__dst, &__dst[232], v29);
      memcpy(v27, __dst, 0x1CBuLL);
      sub_1B220A7B4(v27);
      v31 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B216EE18(v12 > 1, v13 + 1, 1);
        v5 = v31;
      }

      *(v5 + 16) = v13 + 1;
      result = memcpy((v5 + 232 * v13 + 32), v29, 0xE3uLL);
      ++v6;
      if (v9 == v4)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = swift_unknownObjectRetain();
  v7 = 0;
  v8 = 0;
  v24 = v22;
LABEL_30:
  v14 = v24;
  v15 = (v20 + 232 * v24);
  v16 = 232 * v7 + 32;
  if ((v8 & 1) == 0)
  {
    while (v3 != v7)
    {
      if (v7 >= v3)
      {
        goto LABEL_46;
      }

      result = memcpy(v29, (v21 + v16), 0xE3uLL);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_47;
      }

      if (v23 == v14)
      {
        break;
      }

      if (v24 < v22 || v14 >= v23)
      {
        goto LABEL_48;
      }

      memcpy(v25, v15, 0xE3uLL);
      memcpy(v27, v29, 0xE3uLL);
      memcpy(&v27[232], v15, 0xE3uLL);
      memcpy(__dst, v27, 0x1CBuLL);
      sub_1B21819B8(v29, __src);
      sub_1B21819B8(v25, __src);
      sub_1B220A42C(__dst, &__dst[232], v26);
      memcpy(__src, __dst, 0x1CBuLL);
      sub_1B220A7B4(__src);
      v31 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B216EE18(v18 > 1, v19 + 1, 1);
        v5 = v31;
      }

      *(v5 + 16) = v19 + 1;
      result = memcpy((v5 + 232 * v19 + 32), v26, 0xE3uLL);
      v15 += 232;
      ++v7;
      v16 += 232;
      ++v14;
    }
  }

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1B2209954@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) == 1)
  {
    memcpy(__dst, (v3 + 96), sizeof(__dst));
    v33 = *&__dst[152];
    v34 = *&__dst[144];
    v32 = __dst[160];
    v4 = __dst[161];
    v30 = *&__dst[112];
    v31 = *&__dst[128];
    v5 = __dst[104];
    v28 = *&__dst[72];
    v29 = *&__dst[88];
    v6 = __dst[64];
    v8 = *&__dst[48];
    v7 = *&__dst[56];
    v27 = *&__dst[24];
    v9 = *__dst;
    v10 = *&__dst[8];
    v11 = *&__dst[40];
    v12 = *&__dst[16];
    result = sub_1B2136148(__dst, v35);
    v15 = v27;
    v14 = v28;
    v17 = v29;
    v16 = v30;
    v18 = v31;
    v19 = v32;
    v21 = v33;
    v20 = v34;
LABEL_5:
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v12;
    *(a1 + 24) = v15;
    *(a1 + 40) = v11;
    *(a1 + 48) = v8;
    *(a1 + 56) = v7;
    *(a1 + 64) = v6;
    *(a1 + 72) = v14;
    *(a1 + 88) = v17;
    *(a1 + 104) = v5;
    *(a1 + 112) = v16;
    *(a1 + 128) = v18;
    *(a1 + 144) = v20;
    *(a1 + 152) = v21;
    *(a1 + 160) = v19;
    *(a1 + 161) = v4;
    return result;
  }

  swift_bridgeObjectRetain_n();
  v51[0] = v3;
  v51[1] = sub_1B21FD3A0(1, v3);
  v51[2] = v22;
  v51[3] = v23;
  v51[4] = v24;
  v25 = sub_1B220950C(v51);
  swift_unknownObjectRelease();

  sub_1B216E838(v25);

  v26 = *(v3 + 16);
  if (v26)
  {
    memcpy(__dst, (v3 + 232 * v26 - 136), sizeof(__dst));
    sub_1B2136148(__dst, v35);
    sub_1B21C4698();
    sub_1B2137224(__dst);

    v20 = v46;
    v21 = v47;
    v19 = v48;
    v4 = v49;
    v16 = v44;
    v18 = v45;
    v5 = v43;
    v17 = v42;
    v14 = v41;
    v8 = v38;
    v7 = v39;
    v6 = v40;
    v11 = v37;
    v15 = v36;
    v9 = v35[0];
    v10 = v35[1];
    v12 = v35[2];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1B2209B4C(char a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a1)
  {
    switch(a4)
    {
      case 1:
      case 3:
        goto LABEL_14;
      case 2:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_59;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        goto LABEL_57;
    }
  }

  switch(a4)
  {
    case 1:
      if (qword_1ED85D818 != -1)
      {
        goto LABEL_60;
      }

      goto LABEL_36;
    case 2:
    case 3:
LABEL_14:

      goto LABEL_52;
    default:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_16;
      }

      break;
  }

  while (1)
  {
    sub_1B2112A24();
LABEL_16:
    sub_1B21167C8();
    sub_1B212231C();

    sub_1B211187C();
    sub_1B21FDA08();
    sub_1B211187C();
    sub_1B21FD8E0();
    sub_1B211D750();
    if (!v8)
    {
      break;
    }

    sub_1B2115340();
    v18 = sub_1B22524A0();
    v19 = MEMORY[0x1B2741E40](v18);
    v21 = v20;

    sub_1B2112208();
    sub_1B2118144();
    sub_1B211780C();
    while (v4)
    {
      v23 = sub_1B211594C(v19);
      v24 = sub_1B2252290();
      v25 = sub_1B21162F8(v23, sel_firstMatchInString_options_range_);

      if (v25)
      {
LABEL_44:

LABEL_45:

LABEL_46:

        goto LABEL_52;
      }
    }

    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        goto LABEL_47;
      }

      sub_1B21144A8(v22);
    }

    while (1)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      sub_1B2112A24();
LABEL_4:
      sub_1B21167C8();
      v6 = off_1ED85D830;
      v59 = xmmword_1ED85D820;

      sub_1B211187C();
      v7 = sub_1B21FDA08();
      sub_1B211187C();
      sub_1B21FD8E0();
      sub_1B211D750();
      if (!v8)
      {
        break;
      }

      sub_1B2115340();
      v58 = a3;
      v9 = sub_1B22524A0();
      v10 = MEMORY[0x1B2741E40](v9);
      v12 = v11;

      MEMORY[0x1B2741F40](v10, v12);
      sub_1B2118144();
      a3 = v6;
      sub_1B211780C();
      while (v4)
      {
        v14 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v15 = *(v6[7] + ((v7 << 9) | (8 * v14)));
        v16 = sub_1B2252290();
        v17 = sub_1B21162F8(v15, sel_firstMatchInString_options_range_);

        if (v17)
        {

          goto LABEL_46;
        }
      }

      while (1)
      {
        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v13 >= v12)
        {

          sub_1B21184F8();
          a3 = v58;
          v47 = sub_1B22524A0();
          MEMORY[0x1B2741E40](v47);

          v48 = v10;
          goto LABEL_50;
        }

        sub_1B21144A8(v13);
      }

LABEL_54:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_59:
  sub_1B2112A24();
LABEL_26:
  sub_1B21167C8();
  sub_1B212231C();

  sub_1B211187C();
  sub_1B21FDA08();
  sub_1B211187C();
  sub_1B21FD8E0();
  sub_1B211D750();
  if (v8)
  {
    sub_1B2115340();
    v26 = sub_1B22524A0();
    v27 = MEMORY[0x1B2741E40](v26);
    v12 = v28;

    sub_1B2112208();
    sub_1B2118144();
    sub_1B211780C();
    while (v4)
    {
      v30 = sub_1B211594C(v27);
      v31 = sub_1B2252290();
      v32 = sub_1B21162F8(v30, sel_firstMatchInString_options_range_);

      if (v32)
      {

        goto LABEL_45;
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_56;
      }

      if (v29 >= v12)
      {
        break;
      }

      sub_1B21144A8(v29);
    }

    sub_1B21184F8();
    v49 = sub_1B22524A0();
    MEMORY[0x1B2741E40](v49);

    v48 = v59;
LABEL_50:
    v50 = sub_1B21FDE44(v48);
    v52 = v51;

    MEMORY[0x1B2741EB0](v50, v52);

    v53 = sub_1B21DC54C(v57, v12, a3);
    v54 = MEMORY[0x1B2741E40](v53);
    v56 = v55;

    MEMORY[0x1B2741EB0](v54, v56);
  }

  else
  {
    __break(1u);
LABEL_60:
    sub_1B2112A24();
LABEL_36:
    sub_1B21167C8();
    sub_1B212231C();

    sub_1B211187C();
    sub_1B21FDA08();
    sub_1B211187C();
    sub_1B21FD8E0();
    sub_1B211D750();
    if (!v8)
    {
      __break(1u);
      return;
    }

    sub_1B2115340();
    v33 = sub_1B22524A0();
    v34 = MEMORY[0x1B2741E40](v33);
    v21 = v35;

    sub_1B2112208();
    sub_1B2118144();
    sub_1B211780C();
    while (v4)
    {
      v37 = sub_1B211594C(v34);
      v38 = sub_1B2252290();
      v25 = sub_1B21162F8(v37, sel_firstMatchInString_options_range_);

      if (v25)
      {
        goto LABEL_44;
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v36 >= v21)
      {
        break;
      }

      sub_1B21144A8(v36);
    }

LABEL_47:

    sub_1B21184F8();
    v39 = sub_1B22524A0();
    MEMORY[0x1B2741E40](v39);

    v40 = sub_1B21FDE44(v59);
    v42 = v41;

    MEMORY[0x1B2741EB0](v40, v42);

    v43 = sub_1B21DC54C(v57, v21, a3);
    v44 = MEMORY[0x1B2741E40](v43);
    v46 = v45;

    MEMORY[0x1B2741EB0](v44, v46);
  }

LABEL_52:
  sub_1B211187C();
}

void sub_1B220A2E8(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v4 = a1;
    v11 = v9 + 232 * v10;
    memcpy(__dst, (v11 - 200), 0xE3uLL);
    v12 = __dst[0];
    v13 = __dst[1];
    v14 = (v11 - 183);
    LOBYTE(v11) = __dst[2];
    memcpy(__src, v14, sizeof(__src));
    sub_1B21C8064(v7, v6, v5);
    sub_1B21819B8(__dst, v18);
    sub_1B21C807C(v12, v13, v11);
    v8 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1B21956E4(v9);
  v9 = v17;
  *v4 = v17;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v8 <= *(v9 + 16))
  {
    v16 = v9 + 232 * v8;
    memcpy(v18, (v16 - 200), 0xE3uLL);
    *(v16 - 200) = v7;
    *(v16 - 192) = v6;
    *(v16 - 184) = v5;
    memcpy((v16 - 183), __src, 0xD2uLL);
    sub_1B2181A14(v18);
    *v4 = v9;
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_1B220A42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v29 = *a1;
  v7 = *(a1 + 16);
  memcpy(__dst, (a1 + 64), 0xA2uLL);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v28 = *(a2 + 56);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B214D354;
  *(v13 + 24) = v12;
  sub_1B21C8064(v6, v5, v7);
  v31 = v8;
  v14 = v8;
  v15 = v7;
  v26 = v11;
  v27 = v10;
  sub_1B2181640(v14, v9, v10, v11, v28);
  sub_1B2136148(__dst, __src);

  __src[0] = *(a1 + 64);
  *&__src[1] = *(a1 + 80);
  *(&__src[1] + 1) = sub_1B2139E34;
  *&__src[2] = v13;
  memcpy(&__src[2] + 8, (a1 + 104), 0x7AuLL);
  memcpy(v32, __src, 0x58uLL);
  sub_1B2136148(__src, v33);
  sub_1B21A44DC();
  v17 = v16;
  v19 = v18;
  sub_1B2137224(__src);

  memcpy(v33, v32, sizeof(v33));
  v34 = v17;
  v35 = v19;
  v36 = 0;
  v37 = *(a1 + 169);
  v38 = *(a1 + 185);
  *v39 = *(a1 + 201);
  *&v39[9] = *(a1 + 210);
  sub_1B21C53BC(sub_1B21C5514, 0, v32);
  sub_1B2137224(v33);
  sub_1B21C8064(v29, v5, v7);
  MEMORY[0x1B2741EB0](v29, v5);
  sub_1B21C807C(v29, v5, v7);
  sub_1B21C807C(v29, v5, v7);
  if (v28 < 0)
  {
    v20 = swift_allocObject();
    v22 = 0;
    v23 = 0;
    *(v20 + 16) = v31;
    *(v20 + 24) = v9;
    v24 = 0x80;
    v21 = sub_1B220A824;
  }

  else
  {
    v21 = __dst[0];
    v20 = __dst[1];
    v23 = v26;
    v22 = v27;
    sub_1B2181698(v27);

    sub_1B21816DC(v31, v9, v27, v26, v28);
    v24 = (v28 & 1) == 0;
  }

  *a3 = 0x5F62647267;
  *(a3 + 8) = 0xE500000000000000;
  *(a3 + 16) = v15;
  *(a3 + 24) = v21;
  *(a3 + 32) = v20;
  *(a3 + 40) = v22;
  *(a3 + 48) = v23;
  *(a3 + 56) = v24;
  result = memcpy((a3 + 64), v32, 0xA2uLL);
  *(a3 + 226) = 0;
  return result;
}

uint64_t sub_1B220A758()
{
  v1 = *v0;
  sub_1B2253420();
  sub_1B22006C4(v3, v1);
  return sub_1B2253470();
}

uint64_t sub_1B220A79C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B220A7B4(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A2CD8, &qword_1B2260A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1B220A82C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B220A914()
{
  result = qword_1EB7A2CE0[0];
  if (!qword_1EB7A2CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB7A2CE0);
  }

  return result;
}

uint64_t sub_1B220A968(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B220AA94(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    sub_1B2152610();
    if (v3)
    {
LABEL_8:
    }

    else
    {
      sub_1B223C1B4();
      a3 = 0;
      a2 = 0;
      sub_1B215476C();
      while (1)
      {
        if (a2)
        {
          swift_willThrow();
          goto LABEL_8;
        }

        if (a3)
        {
          break;
        }

LABEL_5:
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    sub_1B223C1B4();
    if (!v3)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_1B220AB7C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1B220AC04();
  return v3;
}

void sub_1B220AC04()
{
  sub_1B2111F14();
  v1 = v0;
  v91 = v2;
  v78 = v3;
  v5 = v4;
  v7 = v6;
  v92 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = *v1;
  v85 = sub_1B2252A10();
  v15 = sub_1B211280C(v85);
  v84 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B2112D9C();
  v83 = v19;
  sub_1B21144B4();
  v81 = sub_1B22529C0();
  v20 = sub_1B21118A0(v81);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B2112D9C();
  v82 = v23;
  sub_1B21144B4();
  v80 = sub_1B2252120();
  v24 = sub_1B211280C(v80);
  v79 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1B2115CBC();
  v65 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v90 = &v64 - v30;
  sub_1B21144B4();
  v70 = type metadata accessor for Configuration();
  v31 = sub_1B21118A0(v70);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1B2115CBC();
  v69 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v68 = &v64 - v36;
  v1[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  v1[20] = 0;
  v89 = *(v14 + 80);
  v37 = v89;
  v66 = *(v14 + 88);
  v38 = v66;
  v1[21] = 1;
  *(v1 + 176) = 0;
  v1[2] = v11;
  v1[3] = v9;
  v39 = sub_1B220B310(v7, v37, v38);
  v41 = v1[6];
  v40 = v1[7];
  v42 = v1[8];
  v67 = v13;
  v1[6] = v13;
  v1[7] = v39;
  v1[8] = v43;
  v86 = v11;

  sub_1B221029C(v41);
  v44 = *v5;
  v45 = v5[1];
  v47 = v5[2];
  v46 = v5[3];
  v48 = v5[4];
  v49 = v5[5];
  v50 = v5[7];
  v51 = v5[8];
  v52 = v5[9];
  v87 = v5[6];
  v88 = v51;
  memcpy(v95, v1 + 9, 0x60uLL);
  memcpy(v1 + 9, v5, 0x50uLL);
  v53 = v91;
  v1[19] = v78;
  v1[20] = v53;

  v73 = v44;
  v71 = v45;
  sub_1B2112328(v44);
  v75 = v47;
  v72 = v46;
  sub_1B2112328(v47);
  v77 = v48;
  v74 = v49;
  sub_1B2112328(v48);
  v76 = v50;
  sub_1B2112328(v87);
  v78 = v52;
  sub_1B2112328(v88);
  v54 = v89;
  type metadata accessor for ValueConcurrentObserver.NotificationCallbacks();
  v55 = sub_1B2252B00();
  sub_1B21118A0(v55);
  (*(v56 + 8))(v95);
  v57 = *(v54 - 8);
  v58 = v69;
  (*(v57 + 16))(v1 + *(*v1 + 152), v92, v54);
  v59 = v68;
  DatabasePool.configuration.getter(v68);
  v60 = *(v59 + 8);
  if (*(v59 + 16))
  {
    v61 = *(v59 + 16);
  }

  else
  {
    v60 = 1111773767;
    v61 = 0xE400000000000000;
  }

  v93 = v60;
  v94 = v61;

  MEMORY[0x1B2741EB0](0xD000000000000011, 0x80000001B226F150);

  v66 = v93;
  sub_1B2133D70(v59);
  DatabasePool.configuration.getter(v58);
  if (*(v58 + *(v70 + 68)))
  {
    v62 = v65;
    sub_1B2252A20();
    (*(v79 + 32))(v90, v62, v80);
  }

  else
  {
    (*(v79 + 16))(v90, v58 + *(v70 + 64), v80);
  }

  sub_1B21E8558(0, &qword_1ED85E778, 0x1E69E9610);
  sub_1B2133D70(v58);
  v93 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(&qword_1ED85E780, MEMORY[0x1E69E8030]);
  sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
  sub_1B21E8598(&qword_1ED85E788, &qword_1EB7A21A0, &unk_1B225E830);
  sub_1B2252BC0();
  (*(v84 + 104))(v83, *MEMORY[0x1E69E8090], v85);
  v63 = sub_1B2252A70();

  sub_1B2112F4C(v73);
  sub_1B2112F4C(v75);
  sub_1B2112F4C(v77);
  sub_1B2112F4C(v87);
  sub_1B2112F4C(v88);

  (*(v57 + 8))(v92, v89);
  v1[5] = v63;
  sub_1B2111588();
}

uint64_t (*sub_1B220B310(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1B2210474;
}

uint64_t *sub_1B220B430()
{
  v1 = *v0;
  v2 = v0[2];

  sub_1B21E865C(v0[3]);

  v3 = v0[7];
  v4 = v0[8];
  sub_1B221029C(v0[6]);
  v6 = v0[20];
  sub_1B21E866C(v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19]);
  sub_1B21E7918(v0[21]);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 152));
  return v0;
}

uint64_t sub_1B220B508()
{
  sub_1B220B430();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B220B578()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B220B5CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B220B620()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B220B674()
{
  sub_1B2111F14();
  v1 = v0;
  v55 = v2;
  v41 = *v0;
  v3 = *(*(v41 + 88) + 8);
  v4 = *(v41 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B211280C(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v36 - v11;
  v12 = v0[4];
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  v13 = type metadata accessor for ValueConcurrentObserver.NotificationCallbacks();
  v14 = sub_1B2252B00();
  type metadata accessor for ValueConcurrentObserver.DatabaseAccess();
  sub_1B2252B00();
  v56 = v14;
  swift_getTupleTypeMetadata2();
  sub_1B21E2BF4(sub_1B21E3B08, 0, sub_1B22104E0);
  memcpy(v60, v58, 0x60uLL);
  if (v60[10])
  {
    v38 = AssociatedTypeWitness;
    v39 = 0;
    v36 = v60[10];
    v37 = v8;
    v15 = v59;
    v44 = v60[1];
    v45 = v60[0];
    v46 = v60[3];
    v47 = v60[2];
    v48 = v60[5];
    v49 = v60[4];
    v50 = v60[7];
    v51 = v60[6];
    v52 = v60[9];
    v53 = v60[8];
    v54 = v60[11];
    if (v59)
    {
      v16 = v1[2];
      v17 = v16[5];
      v18 = v16[6];
      sub_1B21139A0(v16 + 2, v17);
      v19 = *(v18 + 16);
      v42 = *(v56 - 8);
      (*(v42 + 16))(v58, v60);
      sub_1B2210418(v15);
      v20 = v19(v17, v18);
      v43 = v15;
      if (v20)
      {
        v21 = v39;
        v22 = v40;
        v23 = sub_1B2111BC0();
        sub_1B220BC80(v23, v24, v25, v26);
        v27 = v55;
        if (v21)
        {
          v28 = v51;
          if (v51)
          {
            v51(v21);
          }

          v29 = type metadata accessor for AnyDatabaseCancellable();
          sub_1B2111904();
          swift_allocObject();
          v30 = AnyDatabaseCancellable.init(cancel:)(nullsub_1, 0);
          v27[3] = v29;
          v27[4] = &protocol witness table for AnyDatabaseCancellable;

          goto LABEL_11;
        }

        v36(v22);
        (*(v37 + 8))(v22, v38);
      }

      else
      {
        v31 = sub_1B2111BC0();
        sub_1B220BFC0(v31, v32, v33);
        v27 = v55;
      }

      v28 = v51;
      v34 = type metadata accessor for AnyDatabaseCancellable();
      v58[0] = v1;

      v30 = sub_1B21E9F54(v58, v34, v41, &off_1F2974490);
      v27[3] = v34;
      v27[4] = &protocol witness table for AnyDatabaseCancellable;
LABEL_11:
      *v27 = v30;

      v35 = v43;

      sub_1B2112F4C(v45);
      sub_1B2112F4C(v47);
      sub_1B2112F4C(v49);
      sub_1B2112F4C(v28);
      sub_1B2112F4C(v53);

      sub_1B221029C(v35);
      (*(v42 + 8))(v60, v56);
      sub_1B2111588();
      return;
    }

    memcpy(v58, v60, sizeof(v58));
    (*(*(v13 - 8) + 16))(&v57, v58, v13);
    sub_1B2112F4C(v45);
    sub_1B2112F4C(v47);
    sub_1B2112F4C(v49);
    sub_1B2112F4C(v51);
    sub_1B2112F4C(v53);
  }

  sub_1B2252EC0();
  __break(1u);
}

uint64_t sub_1B220BB80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, a1 + 9, sizeof(__dst));
  memcpy(a2, a1 + 9, 0x60uLL);
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  a2[12] = v5;
  a2[13] = v6;
  a2[14] = v7;
  v8 = *(v4 + 80);
  v9 = *(v4 + 88);
  type metadata accessor for ValueConcurrentObserver.NotificationCallbacks();
  v10 = sub_1B2252B00();
  (*(*(v10 - 8) + 16))(&v12, __dst, v10);
  return sub_1B2210418(v5);
}

void *sub_1B220BC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v35 = a4;
  v6 = *(*(*v4 + 88) + 8);
  v7 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2161A20(&qword_1EB7A2EE8, &qword_1B2260EA8);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = *(*(TupleTypeMetadata3 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v12 = v30 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  v37 = a1;
  v18 = v40;
  result = DatabasePool.makeSnapshot()();
  if (!v18)
  {
    v33 = v7;
    v34 = v17;
    v40 = v13;
    MEMORY[0x1EEE9AC00](result);
    v21 = v36;
    v20 = v37;
    v30[-4] = v36;
    v30[-3] = v20;
    v22 = v39;
    v30[-2] = v38;
    v30[-1] = v22;
    v24 = v23;
    DatabaseSnapshot.read<A>(_:)();
    v25 = *&v12[*(TupleTypeMetadata3 + 64)];
    v31 = *&v12[*(TupleTypeMetadata3 + 48)];
    v32 = v25;
    v26 = v40;
    v27 = v34;
    v28 = (*(v40 + 32))(v34, v12, AssociatedTypeWitness);
    v30[1] = v30;
    v29 = *(v21 + 40);
    MEMORY[0x1EEE9AC00](v28);
    v30[-2] = v21;
    v30[-1] = v27;
    swift_getAssociatedTypeWitness();
    sub_1B2252A50();
    v41 = v31;
    sub_1B220C854(v37, v38, v39, v24, v32, &v41);

    return (*(v26 + 8))(v27, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1B220BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = DatabasePool.makeSnapshot()();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = v8;

  DatabaseSnapshot.asyncRead(_:)(sub_1B2210600, v9);
}

uint64_t sub_1B220C15C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, __n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a3;
  v45 = a6;
  v11 = *a2;
  v12 = *(*a2 + 88);
  v13 = *(v12 + 8);
  v14 = *(v11 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v16 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v22 = a2[3];
  if (v22 >= 2)
  {
    v24 = &v44 - v20;
    result = a4(a1, v21);
    if (!v6)
    {
      v25 = v24;

      sub_1B21CAAC0(a1, v22, &v50);
      sub_1B21E865C(v22);
      if (v50)
      {
        v27 = sub_1B21E79E0(v50);
      }

      else
      {
        v27 = 0;
      }

      v49 = v27;
      sub_1B21C9D20(&v50);

      v36 = v50;
      sub_1B2161A20(&qword_1EB7A2EE8, &qword_1B2260EA8);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v38 = *(TupleTypeMetadata3 + 48);
      v39 = *(TupleTypeMetadata3 + 64);
      v41 = v45;
      v40 = v46;
      (*(v46 + 16))(v45, v25, AssociatedTypeWitness);
      *(v41 + v38) = v36;
      type metadata accessor for WALSnapshot();
      swift_allocObject();

      v43 = sub_1B21D8138(v42);
      result = (*(v40 + 8))(v25, AssociatedTypeWitness);
      *(v41 + v39) = v43;
    }
  }

  else
  {
    sub_1B211B358();
    v50 = sub_1B2252190();
    MEMORY[0x1EEE9AC00](v50);
    *(&v44 - 6) = v14;
    *(&v44 - 5) = v12;
    *(&v44 - 4) = v47;
    *(&v44 - 3) = a4;
    *(&v44 - 2) = a5;
    *(&v44 - 1) = a1;
    sub_1B2237994(&v50, sub_1B2210898);
    if (v6)
    {
    }

    else
    {
      if (v50)
      {
        v26 = sub_1B21E79E0(v50);
      }

      else
      {
        v26 = 0;
      }

      v48 = v26;
      sub_1B21C9D20(&v49);

      v28 = v49;
      sub_1B2161A20(&qword_1EB7A2EE8, &qword_1B2260EA8);
      v29 = swift_getTupleTypeMetadata3();
      v30 = *(v29 + 48);
      v31 = *(v29 + 64);
      v33 = v45;
      v32 = v46;
      (*(v46 + 16))(v45, v18, AssociatedTypeWitness);
      *(v33 + v30) = v28;
      type metadata accessor for WALSnapshot();
      swift_allocObject();

      v35 = sub_1B21D8138(v34);
      result = (*(v32 + 8))(v18, AssociatedTypeWitness);
      *(v33 + v31) = v35;
    }
  }

  return result;
}

uint64_t sub_1B220C61C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(*(*a1 + 88) + 8);
  v7 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1B2252B00();
  v15 = *(v9 - 8);
  v10 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *(v5 + 152);
  swift_beginAccess();
  (*(v6 + 32))(a2, v7, v6);
  swift_endAccess();
  if (sub_1B2122A98(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v12, AssociatedTypeWitness);
  }

  (*(v15 + 8))(v12, v9);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B220C854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v12;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a1;
  v13[7] = a2;
  v13[8] = a3;
  v14 = *(a1 + 16);

  sub_1B2223DB4(sub_1B2210538, v13);
}

void sub_1B220C938(void *a1, char a2, uint64_t *a3, uint64_t a4, void (*a5)(void *), uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v68 = a5;
  v69 = a6;
  v64 = a4;
  v10 = *a3;
  v11 = sub_1B22520F0();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v58 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1B2252120();
  v57 = *(v59 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v10 + 88);
  v16 = *(v63 + 8);
  v17 = *(v10 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v53 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v66 = v53 - v27;
  v28 = a3[4];
  if (sub_1B21E2CFC())
  {
    if (a2)
    {
      aBlock[0] = a1;
      v29 = a1;
      sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
      swift_willThrowTypedImpl();
      sub_1B220D5B8(a1);
    }

    else
    {
      v30 = a3[3];
      if (v30 >= 2)
      {
        v68(a1);
        v36 = v65 + 32;
        v55 = *(v65 + 32);
        v55(v66, v25, AssociatedTypeWitness);

        sub_1B21CAAC0(a1, v30, aBlock);
        v54 = v36;
        sub_1B21E865C(v30);
        if (aBlock[0])
        {
          v39 = sub_1B21E79E0(aBlock[0]);
        }

        else
        {
          v39 = 0;
        }

        v71[0] = v39;
        sub_1B21C9D20(aBlock);

        v54 = aBlock[0];
        v40 = v65;
        v41 = v66;
      }

      else
      {
        sub_1B211B358();
        aBlock[0] = sub_1B2252190();
        MEMORY[0x1EEE9AC00](aBlock[0]);
        v31 = v63;
        v32 = v64;
        v53[-6] = v17;
        v53[-5] = v31;
        v34 = v68;
        v33 = v69;
        v53[-4] = v32;
        v53[-3] = v34;
        v53[-2] = v33;
        v53[-1] = a1;
        v35 = AssociatedTypeWitness;
        sub_1B2237994(aBlock, sub_1B2210628);
        v37 = *(v65 + 32);
        v37(v66, v22, v35);
        v55 = v37;
        if (aBlock[0])
        {
          v38 = sub_1B21E79E0(aBlock[0]);
        }

        else
        {
          v38 = 0;
        }

        aBlock[6] = v38;
        sub_1B21C9D20(v71);
        v40 = v65;

        v54 = v71[0];
        v41 = v66;
      }

      v53[1] = a3[5];
      v42 = v40;
      v43 = AssociatedTypeWitness;
      (*(v40 + 16))(v19, v41, AssociatedTypeWitness);
      v44 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v45 = swift_allocObject();
      v46 = v63;
      *(v45 + 2) = v17;
      *(v45 + 3) = v46;
      *(v45 + 4) = a3;
      v55(&v45[v44], v19, v43);
      aBlock[4] = sub_1B2210658;
      aBlock[5] = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B21E5730;
      aBlock[3] = &unk_1F2974700;
      v47 = _Block_copy(aBlock);

      v48 = v56;
      sub_1B2252100();
      v71[0] = MEMORY[0x1E69E7CC0];
      sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
      sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
      sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
      v49 = v58;
      v50 = v61;
      sub_1B2252BC0();
      MEMORY[0x1B2742540](0, v48, v49, v47);
      _Block_release(v47);
      (*(v60 + 8))(v49, v50);
      (*(v57 + 8))(v48, v59);

      type metadata accessor for WALSnapshot();
      swift_allocObject();

      v52 = sub_1B21D8138(v51);
      aBlock[0] = v54;
      sub_1B220C854(v64, v68, v69, v62, v52, aBlock);

      (*(v42 + 8))(v66, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_1B220D130(void *a1, uint64_t a2)
{
  v31 = a2;
  v3 = *(*a1 + 88);
  v4 = *(v3 + 8);
  v33 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1B2252B00();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v32 = &v28 - v15;
  v16 = a1[4];
  result = sub_1B21E2CFC();
  if (result)
  {
    v30 = v3;
    v18 = *(*a1 + 152);
    swift_beginAccess();
    (*(v4 + 32))(v31, v33, v4);
    swift_endAccess();
    if (sub_1B2122A98(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v28 + 8))(v9, v29);
      result = sub_1B2252EC0();
      __break(1u);
    }

    else
    {
      v19 = *(v10 + 32);
      v20 = v32;
      v19(v32, v9, AssociatedTypeWitness);
      v21 = a1[2];
      (*(v10 + 16))(v13, v20, AssociatedTypeWitness);
      v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
      v23 = swift_allocObject();
      v24 = v30;
      *(v23 + 2) = v33;
      *(v23 + 3) = v24;
      *(v23 + 4) = a1;
      v19(&v23[v22], v13, AssociatedTypeWitness);
      v25 = v21[5];
      v26 = v21[6];
      sub_1B21139A0(v21 + 2, v25);
      v27 = *(v26 + 8);

      v27(sub_1B22107C0, v23, v25, v26);

      return (*(v10 + 8))(v32, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t *sub_1B220D4F8@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[19];
  if (v3)
  {
    v4 = *result;
    v5 = result[20];
    v6 = swift_allocObject();
    *(v6 + 2) = *(v4 + 80);
    *(v6 + 3) = *(v4 + 88);
    *(v6 + 4) = v3;
    *(v6 + 5) = v5;

    v7 = sub_1B2210894;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B220D5B8(void *a1)
{
  v3 = *(v1 + 16);
  sub_1B2111904();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = v3[5];
  v6 = v3[6];
  sub_1B21139A0(v3 + 2, v5);
  v7 = *(v6 + 8);

  v8 = a1;
  v7(sub_1B22103D8, v4, v5, v6);
}

id sub_1B220D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a2 + 32);
  result = sub_1B21E2D6C();
  if (v22 != 1)
  {
    v24 = v22;
    v18 = memcpy(v25, v23, sizeof(v25));
    v20 = &v20;
    v21 = a3;
    MEMORY[0x1EEE9AC00](v18);
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = a1;
    v19[5] = &v24;
    v19[6] = a2;
    v19[7] = a6;
    v19[8] = a7;
    v19[9] = a8;
    v19[10] = a3;
    v19[11] = &v21;

    sub_1B220AA94(1, sub_1B2210568, v19);
    sub_1B2112F4C(v24);
    sub_1B2112F4C(v25[1]);
    sub_1B2112F4C(v25[3]);
    sub_1B2112F4C(v25[5]);
    sub_1B2112F4C(v25[7]);
  }

  return result;
}

void *sub_1B220D854@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (result[19])
  {
    v4 = result[9];
    v3 = result[10];
    v5 = result[11];
    v6 = result[12];
    v7 = result[13];
    v8 = result[14];
    v9 = result[15];
    v10 = result[16];
    v11 = result[17];
    v12 = result[18];
    *a2 = v4;
    a2[1] = v3;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
    sub_1B2112328(v4);
    sub_1B2112328(v5);
    sub_1B2112328(v7);
    sub_1B2112328(v9);
    result = sub_1B2112328(v11);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    *a2 = 1;
    *(a2 + 1) = 0u;
    *(a2 + 3) = 0u;
  }

  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v12;
  return result;
}

uint64_t sub_1B220D934(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, __n128), uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v81 = a8;
  v82 = a7;
  v76 = a6;
  v77 = a9;
  v14 = *a5;
  v15 = sub_1B22520F0();
  v74 = *(v15 - 8);
  v75 = v15;
  v16 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1B2252120();
  v71 = *(v73 - 8);
  v18 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v14 + 88);
  v20 = *(v84 + 8);
  v80 = *(v14 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v78 = AssociatedTypeWitness;
  v79 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v68 - v28;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v83 = &v68 - v33;
  if (a2)
  {
    type metadata accessor for WALSnapshot();
    swift_allocObject();

    v34 = sub_1B21D8138(a3);
    if (v34)
    {
      v35 = sqlite3_snapshot_cmp(*(a2 + 16), v34[2]);

      if ((v35 & 0x80000000) == 0)
      {
        v36 = a4[2];
        v37 = v77;
        if (v36)
        {
          v38 = a4[3];
          aBlock[0] = v77;
          v36(aBlock);
        }

        aBlock[0] = v37;
        return sub_1B220C0CC(a3, aBlock);
      }
    }

    else
    {
    }
  }

  v40 = a4[4];
  if (v40)
  {
    v41 = a4[5];
    v40(v31, v32);
  }

  v42 = v84;
  if (a5[3] >= 2)
  {
    v47 = v85;
    result = v82(a3, v32);
    if (v47)
    {
      return result;
    }

    v85 = 0;
    v48 = *(v79 + 32);
    v81 = (v79 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v82 = v48;
    v49 = v29;
    v45 = v78;
    (v48)(v83, v49, v78);
    v50 = a4[2];
    v51 = v77;
    if (v50)
    {
      v52 = a4[3];
      aBlock[0] = v77;
      v50(aBlock);
    }

    aBlock[0] = v51;
    sub_1B220C0CC(a3, aBlock);
    v53 = v80;
  }

  else
  {
    sub_1B211B358();
    aBlock[0] = sub_1B2252190();
    MEMORY[0x1EEE9AC00](aBlock[0]);
    *(&v68 - 6) = v80;
    *(&v68 - 5) = v42;
    v43 = v81;
    v44 = v82;
    *(&v68 - 4) = v76;
    *(&v68 - 3) = v44;
    *(&v68 - 2) = v43;
    *(&v68 - 1) = a3;
    v45 = v78;
    v46 = v85;
    sub_1B2237994(aBlock, sub_1B2210898);
    if (v46)
    {
    }

    v54 = v79 + 32;
    v82 = *(v79 + 32);
    (v82)(v83, v26, v45);
    if (aBlock[0])
    {
      v55 = sub_1B21E79E0(aBlock[0]);
    }

    else
    {
      v55 = 0;
    }

    v53 = v80;
    aBlock[6] = v55;
    sub_1B21C9D20(&v87);
    v85 = 0;
    v81 = v54 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;

    v56 = *a10;
    *a10 = v87;

    v57 = a4[2];
    if (v57)
    {
      v58 = a4[3];
      v87 = *a10;

      v57(&v87);
    }

    v87 = *a10;

    sub_1B220C0CC(a3, &v87);

    v42 = v84;
  }

  v84 = a5[5];
  v59 = v79;
  v60 = v69;
  (*(v79 + 16))(v69, v83, v45);
  v61 = (*(v59 + 80) + 40) & ~*(v59 + 80);
  v62 = swift_allocObject();
  v62[2] = v53;
  v62[3] = v42;
  v62[4] = a5;
  (v82)(v62 + v61, v60, v45);
  aBlock[4] = sub_1B22105A0;
  aBlock[5] = v62;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B21E5730;
  aBlock[3] = &unk_1F2974638;
  v63 = _Block_copy(aBlock);

  v64 = v70;
  sub_1B2252100();
  v87 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
  v65 = v45;
  sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
  sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
  v66 = v72;
  v67 = v75;
  sub_1B2252BC0();
  MEMORY[0x1B2742540](0, v64, v66, v63);
  _Block_release(v63);
  (*(v74 + 8))(v66, v67);
  (*(v71 + 8))(v64, v73);
  (*(v59 + 8))(v83, v65);
}

uint64_t sub_1B220E0F4(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = *a1;
  v34 = *(*a1 + 88);
  v4 = *(v34 + 8);
  v37 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v31 - v9;
  v10 = sub_1B2252B00();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v17 = a1[4];
  result = sub_1B21E2CFC();
  if (result)
  {
    v19 = *(*a1 + 152);
    swift_beginAccess();
    (*(v4 + 32))(v35, v37, v4);
    swift_endAccess();
    (*(v38 + 16))(v13, v16, v10);
    if (sub_1B2122A98(v13, 1, AssociatedTypeWitness) == 1)
    {
      v20 = *(v38 + 8);
      v20(v16, v10);
      return (v20)(v13, v10);
    }

    else
    {
      v32 = *(v6 + 32);
      v21 = v36;
      v32(v36, v13, AssociatedTypeWitness);
      v35 = v10;
      v22 = v6;
      v23 = a1[2];
      v24 = v33;
      (*(v22 + 16))(v33, v21, AssociatedTypeWitness);
      v25 = (*(v22 + 80) + 40) & ~*(v22 + 80);
      v26 = swift_allocObject();
      v27 = v34;
      *(v26 + 2) = v37;
      *(v26 + 3) = v27;
      *(v26 + 4) = a1;
      v32(&v26[v25], v24, AssociatedTypeWitness);
      v28 = v23[5];
      v29 = v23[6];
      sub_1B21139A0(v23 + 2, v28);
      v30 = *(v29 + 8);

      v30(sub_1B22105B8, v26, v28, v29);

      (*(v22 + 8))(v36, AssociatedTypeWitness);
      return (*(v38 + 8))(v16, v35);
    }
  }

  return result;
}

id sub_1B220E500(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  v7 = *a1;
  v8 = a1[4];
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  v9 = *(*(v7 + 88) + 8);
  v10 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  swift_getFunctionTypeMetadata1();
  sub_1B2252B00();
  result = sub_1B21E2BF4(a3, 0, a4);
  if (v12)
  {

    v12(a2);
    sub_1B2112F4C(v12);
    return sub_1B2112F4C(v12);
  }

  return result;
}

uint64_t *sub_1B220E638@<X0>(uint64_t *result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = result[19];
  if (v3)
  {
    v4 = *result;
    v5 = result[20];
    v6 = swift_allocObject();
    *(v6 + 2) = *(v4 + 80);
    *(v6 + 3) = *(v4 + 88);
    *(v6 + 4) = v3;
    *(v6 + 5) = v5;

    v7 = sub_1B2210894;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return result;
}

BOOL sub_1B220E6F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = *(v4 + 168);
  if (v5 == 1)
  {
    return 0;
  }

  else
  {
    v12 = *(v4 + 168);

    v6 = DatabaseRegion.isModified(byEventsOfKind:)(a1, a2, a3, a4);
    sub_1B21E7918(v5);
  }

  return v6;
}

void sub_1B220E784()
{
  sub_1B2111F14();
  v2 = v0;
  v3 = *v0;
  v4 = v0[21];
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
LABEL_3:
    sub_1B2111588();
    return;
  }

  v5 = v1;
  v6 = v1[3];
  v7 = v1[4];
  sub_1B21139A0(v1, v6);
  v8 = *(v7 + 16);

  v9 = v8(v6, v7);
  v11 = v10;
  v12 = sub_1B2252220();
  v14 = sub_1B214A5A8(v12, v13, v9, v11, v4);
  v16 = v15;

  if (v14 == 1)
  {
    goto LABEL_9;
  }

  if (!v16)
  {

LABEL_9:
    sub_1B21E7918(v4);
    goto LABEL_10;
  }

  v17 = sub_1B21CA838(v5[6], v16);

  sub_1B21E7918(v4);
  if ((v17 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_10:
  *(v2 + 176) = 1;
  sub_1B2111588();

  TransactionObserver.stopObservingDatabaseChangesUntilNextTransaction()();
}

void sub_1B220E8E0()
{
  sub_1B2111F14();
  v1 = v0;
  v84 = v2;
  v3 = *v0;
  v4 = sub_1B22520F0();
  v5 = sub_1B211280C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B2112D9C();
  v82 = v10;
  sub_1B21144B4();
  v83 = sub_1B2252120();
  v11 = sub_1B211280C(v83);
  v81 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2112D9C();
  v80 = v15;
  v16 = *(v3 + 88);
  v17 = *(v16 + 8);
  v18 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B2161A20(qword_1EB7A0F98, &unk_1B22595B0);
  v20 = sub_1B2253480();
  v21 = sub_1B21118A0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - v28;
  if (*(v1 + 176) == 1)
  {
    v76 = v27;
    v78 = v7;
    v79 = v4;
    *(v1 + 176) = 0;
    v30 = v1[4];
    sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
    sub_1B2161A20(&qword_1EB7A27A0, &qword_1B2260EA0);
    type metadata accessor for ValueConcurrentObserver.DatabaseAccess();
    sub_1B2252B00();
    swift_getTupleTypeMetadata2();
    sub_1B21E2BF4(sub_1B22108D8, 0, sub_1B2210280);
    if (v87 == 1)
    {
      sub_1B221029C(v97);
      goto LABEL_17;
    }

    v63 = v24;
    v62 = v20;
    v75 = v98;
    v31 = v89;
    v32 = v95;
    if (!v97)
    {
      v35 = v93;
      v36 = v91;
      sub_1B2112F4C(v87);
      sub_1B2112F4C(v31);
      sub_1B2112F4C(v36);
      sub_1B2112F4C(v35);
      sub_1B2112F4C(v32);
      goto LABEL_17;
    }

    v64 = v88;
    v65 = v87;
    v70 = v89;
    v73 = v90;
    v74 = v92;
    v77 = v99;
    v67 = v93;
    v68 = v94;
    v69 = v96;
    v72 = v97;
    v66 = v91;
    if (v91)
    {
      v33 = v91;

      (v33)(v34);
    }

    else
    {
    }

    v37 = v1[3] == 1;
    v71 = v32;
    if (!v37)
    {
      v40 = swift_allocObject();
      v40[2] = v18;
      v40[3] = v16;
      v41 = v72;
      v42 = v75;
      v40[4] = v72;
      v40[5] = v42;
      v40[6] = v77;

      v43 = DatabasePool.concurrentRead<A>(_:)(sub_1B2210320, v40, AssociatedTypeWitness);

LABEL_12:
      v44 = v1[5];
      sub_1B2111904();
      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      *(v45 + 24) = v1;
      v91 = sub_1B2210300;
      v92 = v45;
      v87 = MEMORY[0x1E69E9820];
      v88 = 1107296256;
      v89 = sub_1B21E5730;
      v90 = &unk_1F29744F8;
      v46 = _Block_copy(&v87);

      v47 = v80;
      sub_1B2252100();
      v86[0] = MEMORY[0x1E69E7CC0];
      sub_1B21202AC(qword_1ED85E0C0, MEMORY[0x1E69E7F60]);
      sub_1B21619D8(&qword_1EB7A27A8, &qword_1B225E820);
      sub_1B21E8598(&qword_1ED85E0B8, &qword_1EB7A27A8, &qword_1B225E820);
      v48 = v82;
      v49 = v79;
      sub_1B2252BC0();
      MEMORY[0x1B2742540](0, v47, v48, v46);
      _Block_release(v46);

      v50 = sub_1B2115D58();
      sub_1B2116318(v50);
      sub_1B2112F4C(v71);

      sub_1B221029C(v41);
      (*(v78 + 8))(v48, v49);
      (*(v81 + 8))(v47, v83);

      goto LABEL_17;
    }

    sub_1B211B358();
    v87 = sub_1B2252190();
    MEMORY[0x1EEE9AC00](v87);
    *(&v62 - 6) = v18;
    *(&v62 - 5) = v16;
    v38 = v72;
    *(&v62 - 4) = v84;
    *(&v62 - 3) = v38;
    v39 = v77;
    *(&v62 - 2) = v75;
    *(&v62 - 1) = v39;
    sub_1B2237994(&v87, sub_1B22102DC);
    if (v87)
    {
      v51 = sub_1B21E79E0(v87);
    }

    else
    {
      v51 = 0;
    }

    v85 = v51;
    sub_1B21C9D20(v86);

    v52 = v86[0];
    v53 = v70;
    if (!v70)
    {
LABEL_28:
      v58 = v1[21];
      v1[21] = v52;
      sub_1B21E7918(v58);
      type metadata accessor for DatabaseFuture();
      v59 = v76;
      (*(v63 + 32))(v76, v29, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v43 = sub_1B21660C0(v59);
      v41 = v72;
      goto LABEL_12;
    }

    v54 = v1[21];
    if (v86[0] == 1)
    {
      if (v54 == 1)
      {

        sub_1B21E7958(1);
        sub_1B21E7918(1);
        goto LABEL_28;
      }

      v56 = sub_1B2118150();
      sub_1B2112328(v56);

      sub_1B21E7958(v54);
    }

    else
    {
      if (v54 != 1)
      {
        v85 = v1[21];
        v60 = sub_1B2118150();
        sub_1B2112328(v60);

        sub_1B21E7958(v54);
        sub_1B21E7958(v52);
        v61 = static DatabaseRegion.== infix(_:_:)(v86, &v85);

        sub_1B21E7918(v52);
        if (v61)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v55 = sub_1B2118150();
      sub_1B2112328(v55);

      sub_1B21E7958(1);
      sub_1B21E7958(v52);
    }

    sub_1B21E7918(v52);
    sub_1B21E7918(v54);
LABEL_26:
    v86[0] = v52;
    v53(v86);
LABEL_27:
    v57 = sub_1B2118150();
    sub_1B2112F4C(v57);
    goto LABEL_28;
  }

LABEL_17:
  sub_1B2111588();
}