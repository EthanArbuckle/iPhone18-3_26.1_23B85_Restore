uint64_t sub_1C3F47324(uint64_t result)
{
  if (*(result + 16))
  {
    goto LABEL_29;
  }

  v2 = *v1;
  v3 = *(result + 8);
  v4 = *(*v1 + 36);
  if (v4 != v3)
  {
    goto LABEL_27;
  }

  v5 = *result;
  if (*result != 1 << *(v2 + 32))
  {
    v21 = v1[2];
    v22 = v1[1];
    v6 = v2 + 56;
    v20 = result;
    v8 = v1[3];
    v7 = v1[4];
    while ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 1 << *(v2 + 32);
      if (v5 >= v9)
      {
        break;
      }

      v10 = v5 >> 6;
      v11 = *(v6 + 8 * (v5 >> 6));
      if (((v11 >> v5) & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v4 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        result = sub_1C3E97CDC(v5, v3, 0);
        v5 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (v2 + 64 + 8 * v10);
        while (v14 < (v9 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_1C3E97CDC(v5, v3, 0);
            v5 = __clz(__rbit64(v16)) + v13;
            goto LABEL_16;
          }
        }

        result = sub_1C3E97CDC(v5, v3, 0);
        v5 = v9;
      }

LABEL_16:
      v3 = *(v2 + 36);
      v18 = 1 << *(v2 + 32);
      if (v5 != v18)
      {
        if ((v5 & 0x8000000000000000) != 0 || v5 >= v18)
        {
          goto LABEL_25;
        }

        if (((*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_26;
        }

        sub_1C3F411E8(*(v2 + 48) + 40 * v5, v23);
        v22(v24, v23);
        sub_1C3F41244(v23);
        v23[0] = v24[0];
        v23[1] = v24[1];
        v19 = v8(v23);

        v4 = v3;
        if ((v19 & 1) == 0)
        {
          continue;
        }
      }

      *v20 = v5;
      *(v20 + 8) = v3;
      *(v20 + 16) = 0;
      return result;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1C3F47550@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1C3F47578@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C3F47594()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1C40308D0();
  v7[0] = 0;
  v2 = [v0 cachedModelForPersistentStoreWithURL:v1 options:0 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1C4030890();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

ValueMetadata *sub_1C3F47674()
{
  switch(sub_1C3F46008())
  {
    case 9:
      v0 = &type metadata for CallHistorySchemaV9;
      sub_1C3F4822C();
      break;
    case 10:
      v0 = &type metadata for CallHistorySchemaV10;
      sub_1C3F481D8();
      break;
    case 11:
      v0 = &type metadata for CallHistorySchemaV11;
      sub_1C3F48184();
      break;
    case 12:
      v0 = &type metadata for CallHistorySchemaV12;
      sub_1C3F48130();
      break;
    case 13:
      v0 = &type metadata for CallHistorySchemaV13;
      sub_1C3F480DC();
      break;
    case 14:
      v0 = &type metadata for CallHistorySchemaV14;
      sub_1C3F48088();
      break;
    case 15:
      v0 = &type metadata for CallHistorySchemaV15;
      sub_1C3F48034();
      break;
    case 16:
      v0 = &type metadata for CallHistorySchemaV16;
      sub_1C3F47FE0();
      break;
    case 17:
      v0 = &type metadata for CallHistorySchemaV17;
      sub_1C3F47F8C();
      break;
    case 18:
      v0 = &type metadata for CallHistorySchemaV18;
      sub_1C3F47F38();
      break;
    case 19:
      v0 = &type metadata for CallHistorySchemaV19;
      sub_1C3F47EE4();
      break;
    case 20:
      v0 = &type metadata for CallHistorySchemaV20;
      sub_1C3F47E90();
      break;
    case 21:
      v0 = &type metadata for CallHistorySchemaV21;
      sub_1C3F47E3C();
      break;
    case 22:
      v0 = &type metadata for CallHistorySchemaV22;
      sub_1C3F47DE8();
      break;
    case 23:
      v0 = &type metadata for CallHistorySchemaV23;
      sub_1C3F47D94();
      break;
    case 24:
      v0 = &type metadata for CallHistorySchemaV24;
      sub_1C3F47D40();
      break;
    case 25:
      v0 = &type metadata for CallHistorySchemaV25;
      sub_1C3F47CEC();
      break;
    case 26:
      v0 = &type metadata for CallHistorySchemaV26;
      sub_1C3F47C98();
      break;
    case 27:
      v0 = &type metadata for CallHistorySchemaV27;
      sub_1C3F47C44();
      break;
    case 28:
      v0 = &type metadata for CallHistorySchemaV28;
      sub_1C3F47BF0();
      break;
    case 29:
      v0 = &type metadata for CallHistorySchemaV29;
      sub_1C3F47B9C();
      break;
    case 30:
      v0 = &type metadata for CallHistorySchemaV30;
      sub_1C3F47B48();
      break;
    case 31:
      v0 = &type metadata for CallHistorySchemaV31;
      sub_1C3F47AF4();
      break;
    case 32:
      v0 = &type metadata for CallHistorySchemaV32;
      sub_1C3F47AA0();
      break;
    case 33:
      v0 = &type metadata for CallHistorySchemaV33;
      sub_1C3F47A4C();
      break;
    case 34:
      v0 = &type metadata for CallHistorySchemaV34;
      sub_1C3F479F8();
      break;
    case 35:
      v0 = &type metadata for CallHistorySchemaV35;
      sub_1C3F479A4();
      break;
    case 36:
      v0 = &type metadata for CallHistorySchemaV36;
      sub_1C3F47950();
      break;
    case 37:
      v0 = &type metadata for CallHistorySchemaV37;
      sub_1C3F478FC();
      break;
    default:
      v0 = &type metadata for CallHistorySchemaV38;
      sub_1C3F478A8();
      break;
  }

  return v0;
}

unint64_t sub_1C3F478A8()
{
  result = qword_1EC0904C8;
  if (!qword_1EC0904C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904C8);
  }

  return result;
}

unint64_t sub_1C3F478FC()
{
  result = qword_1EC0904D0;
  if (!qword_1EC0904D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904D0);
  }

  return result;
}

unint64_t sub_1C3F47950()
{
  result = qword_1EC0904D8;
  if (!qword_1EC0904D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904D8);
  }

  return result;
}

unint64_t sub_1C3F479A4()
{
  result = qword_1EC0904E0;
  if (!qword_1EC0904E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904E0);
  }

  return result;
}

unint64_t sub_1C3F479F8()
{
  result = qword_1EC0904E8;
  if (!qword_1EC0904E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904E8);
  }

  return result;
}

unint64_t sub_1C3F47A4C()
{
  result = qword_1EC0904F0;
  if (!qword_1EC0904F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904F0);
  }

  return result;
}

unint64_t sub_1C3F47AA0()
{
  result = qword_1EC0904F8;
  if (!qword_1EC0904F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0904F8);
  }

  return result;
}

unint64_t sub_1C3F47AF4()
{
  result = qword_1EC090500;
  if (!qword_1EC090500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090500);
  }

  return result;
}

unint64_t sub_1C3F47B48()
{
  result = qword_1EC090508;
  if (!qword_1EC090508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090508);
  }

  return result;
}

unint64_t sub_1C3F47B9C()
{
  result = qword_1EC090510;
  if (!qword_1EC090510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090510);
  }

  return result;
}

unint64_t sub_1C3F47BF0()
{
  result = qword_1EC090518;
  if (!qword_1EC090518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090518);
  }

  return result;
}

unint64_t sub_1C3F47C44()
{
  result = qword_1EC090520;
  if (!qword_1EC090520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090520);
  }

  return result;
}

unint64_t sub_1C3F47C98()
{
  result = qword_1EC090528;
  if (!qword_1EC090528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090528);
  }

  return result;
}

unint64_t sub_1C3F47CEC()
{
  result = qword_1EC090530;
  if (!qword_1EC090530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090530);
  }

  return result;
}

unint64_t sub_1C3F47D40()
{
  result = qword_1EC090538;
  if (!qword_1EC090538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090538);
  }

  return result;
}

unint64_t sub_1C3F47D94()
{
  result = qword_1EC090540;
  if (!qword_1EC090540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090540);
  }

  return result;
}

unint64_t sub_1C3F47DE8()
{
  result = qword_1EC090548;
  if (!qword_1EC090548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090548);
  }

  return result;
}

unint64_t sub_1C3F47E3C()
{
  result = qword_1EC090550;
  if (!qword_1EC090550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090550);
  }

  return result;
}

unint64_t sub_1C3F47E90()
{
  result = qword_1EC090558;
  if (!qword_1EC090558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090558);
  }

  return result;
}

unint64_t sub_1C3F47EE4()
{
  result = qword_1EC090560;
  if (!qword_1EC090560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090560);
  }

  return result;
}

unint64_t sub_1C3F47F38()
{
  result = qword_1EC090568;
  if (!qword_1EC090568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090568);
  }

  return result;
}

unint64_t sub_1C3F47F8C()
{
  result = qword_1EC090570;
  if (!qword_1EC090570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090570);
  }

  return result;
}

unint64_t sub_1C3F47FE0()
{
  result = qword_1EC090578;
  if (!qword_1EC090578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090578);
  }

  return result;
}

unint64_t sub_1C3F48034()
{
  result = qword_1EC090580;
  if (!qword_1EC090580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090580);
  }

  return result;
}

unint64_t sub_1C3F48088()
{
  result = qword_1EC090588;
  if (!qword_1EC090588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090588);
  }

  return result;
}

unint64_t sub_1C3F480DC()
{
  result = qword_1EC090590;
  if (!qword_1EC090590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090590);
  }

  return result;
}

unint64_t sub_1C3F48130()
{
  result = qword_1EC090598;
  if (!qword_1EC090598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090598);
  }

  return result;
}

unint64_t sub_1C3F48184()
{
  result = qword_1EC0905A0;
  if (!qword_1EC0905A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0905A0);
  }

  return result;
}

unint64_t sub_1C3F481D8()
{
  result = qword_1EC0905A8;
  if (!qword_1EC0905A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0905A8);
  }

  return result;
}

unint64_t sub_1C3F4822C()
{
  result = qword_1EC0905B0;
  if (!qword_1EC0905B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0905B0);
  }

  return result;
}

uint64_t sub_1C3F48280(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0905B8, &qword_1C403DA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3F482E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0905D0, &qword_1C403DA98);
    v2 = sub_1C4031A10();
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
    sub_1C3EED3E8(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1C3EED3E8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1C4031830();
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
    result = sub_1C3EED3E8(v33, (*(v2 + 56) + 32 * v10));
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

void sub_1C3F485A0()
{
  v1 = sub_1C40315F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C3F47594();
  if (!v0)
  {
    v7 = v6;
    v13[9] = 0;
    v13[0] = [objc_allocWithZone(MEMORY[0x1E695D6C0]) initWithManagedObjectModel_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0905C0, &qword_1C403DA88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C40385D0;
    v9 = *MEMORY[0x1E695D458];
    *(inited + 32) = sub_1C40311C0();
    *(inited + 40) = v10;
    *(inited + 48) = 1;
    v11 = sub_1C3F15378(inited);
    swift_setDeallocating();
    sub_1C3F48778(inited + 32);
    sub_1C3F482E8(v11);

    sub_1C40315E0();
    v12 = v13[0];
    sub_1C4031650();
    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_1C3F48778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0905C8, &qword_1C403DA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3F487E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F488E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F489B0()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F48AAC()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030F30();
}

uint64_t sub_1C3F48B58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F48C70(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F48D50()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F48E68()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F48F1C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E24C(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F4905C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3F4E158(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();

  return sub_1C3F4E1E4(v7);
}

uint64_t sub_1C3F4918C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E24C(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F492CC()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E24C(&qword_1EC0906F0, &qword_1EC08FA20);
  sub_1C4030FB0();
}

uint64_t sub_1C3F493B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DF7C();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F494D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F495AC()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DF7C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F496B8()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DF00();
  sub_1C4030FB0();
}

uint64_t sub_1C3F49778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F49890(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F4996C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F49A78()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F49B38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DF7C();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F49C50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F49D2C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DF7C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F49E38()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DF00();
  sub_1C4030FB0();
}

uint64_t sub_1C3F49F10@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F4A01C(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F4A0EC()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F4A1F0()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030FB0();
}

uint64_t sub_1C3F4A2A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F4A3B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F4A484()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F4A584()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3F4A62C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F4A738(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F4A80C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090650, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4A90C()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4A9C0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV9.CallRecord(0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090718, &qword_1C403E1B8);
  sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 256;
  *(v1 + 20) = 1;
  v4 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v5 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v6 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 256;
  *(v1 + 25) = 1;
  v7 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 26) = 257;
  *(v1 + 28) = 1;
  sub_1C4030AB0();
  *(v1 + 21) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F4AD18()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = OBJC_IVAR____TtCO11CallHistory19CallHistorySchemaV910CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F4ADE4()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C3F4AEB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4AFC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030A90();
}

uint64_t sub_1C3F4B0A4()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4B1B0()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4B270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4B388(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030A90();
}

uint64_t sub_1C3F4B464()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4B570()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4B630@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4B748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030A90();
}

uint64_t sub_1C3F4B824()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4B930()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4B9F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4BB08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030A90();
}

uint64_t sub_1C3F4BBE4()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4BCF0()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4BDB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C3F4BEC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030A90();
}

uint64_t sub_1C3F4BFA4()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090628, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E094();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4C0B0()
{
  swift_getKeyPath();
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  sub_1C3F4E018();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4C170(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090720, &qword_1C403E288);
  sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 16) = 0;
  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 17) = 0;
  v6 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v7 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 0;
  v8 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 20) = 0;
  sub_1C4030AB0();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F4C45C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory19CallHistorySchemaV916CallDBProperties___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F4C528()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C3F4C608()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4038040;
  v1 = type metadata accessor for CallHistorySchemaV9.CallRecord(0);
  v2 = sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v4 = sub_1C3F4D034(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_1C3F4C73C(uint64_t a1)
{
  result = sub_1C3F4C764();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F4C764()
{
  result = qword_1EC090610;
  if (!qword_1EC090610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090610);
  }

  return result;
}

uint64_t sub_1C3F4C82C(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  return swift_endAccess();
}

void (*sub_1C3F4C884(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 32, v4);
  return sub_1C3F4C914;
}

void sub_1C3F4C914(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 32));
    sub_1C3EAE504((v2 + 40), v3 + 32);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 32));
    sub_1C3EAE504(v2, v3 + 32);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1C3F4CA18()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F4CAD0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F4CB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

uint64_t sub_1C3F4CBC4(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  return swift_endAccess();
}

void (*sub_1C3F4CC1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3F4CCAC;
}

void sub_1C3F4CCAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1C3EAE504((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
    sub_1C3EAE504(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1C3F4CDB0(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3F4D034(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F4CE3C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F4CEAC()
{
  sub_1C4031C70();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F4CF58(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3F4D034(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3F4CFC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F4D034(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F4D34C(uint64_t a1)
{
  result = sub_1C3F4D034(&qword_1EC090668, type metadata accessor for CallHistorySchemaV9.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F4D3A4(uint64_t a1)
{
  result = sub_1C3F4D034(&qword_1EC090670, type metadata accessor for CallHistorySchemaV9.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F4D3FC()
{
  v29 = sub_1C4031070();
  v0 = *(v29 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v5 = *(v0 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C403DAA0;
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v8 = *(sub_1C40310C0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v28 = xmmword_1C40385D0;
  *(v11 + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v12 = sub_1C40310D0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1C40310E0();
  *(&v31 + 1) = v12;
  v32 = sub_1C3F4D034(&qword_1EC090680, MEMORY[0x1E697BD30]);
  *&v30 = v15;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v16 = MEMORY[0x1E69E6530];
  *(&v34 + 1) = MEMORY[0x1E69E6530];
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v33) = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090688, &unk_1C403E170);
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C403DAB0;
  *(v18 + 32) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090690, &unk_1C403E180);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1C4031090();
  *(&v31 + 1) = v19;
  v32 = sub_1C3F4DC20();
  *&v30 = v22;
  sub_1C4031060();
  v23 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1C3EFFFE8(v24 > 1, v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = v23;
  (*(v1 + 32))(&v23[v6 + v25 * v5], v4, v29);
  *&v30 = v7;
  sub_1C40173FC(v26);
  return v30;
}

unint64_t sub_1C3F4DC20()
{
  result = qword_1EC090698;
  if (!qword_1EC090698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090690, &unk_1C403E180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090698);
  }

  return result;
}

uint64_t sub_1C3F4DC84()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4A90C();
}

unint64_t sub_1C3F4DCAC()
{
  result = qword_1EC0906A0;
  if (!qword_1EC0906A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F878, &qword_1C403A790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906A0);
  }

  return result;
}

uint64_t sub_1C3F4DD28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F4A584();
}

unint64_t sub_1C3F4DD50()
{
  result = qword_1EC0906A8;
  if (!qword_1EC0906A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0906B0, &unk_1C403E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906A8);
  }

  return result;
}

unint64_t sub_1C3F4DDCC()
{
  result = qword_1EC0906B8;
  if (!qword_1EC0906B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0906B0, &unk_1C403E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906B8);
  }

  return result;
}

uint64_t sub_1C3F4DE48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F4A584();
}

uint64_t sub_1C3F4DE70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F4A1F0();
}

uint64_t sub_1C3F4DE90()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4A90C();
}

uint64_t sub_1C3F4DEB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4A90C();
}

uint64_t sub_1C3F4DEE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1C3F49E38();
}

unint64_t sub_1C3F4DF00()
{
  result = qword_1EC0906C0;
  if (!qword_1EC0906C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0906C8, &unk_1C403ED20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906C0);
  }

  return result;
}

unint64_t sub_1C3F4DF7C()
{
  result = qword_1EC0906D0;
  if (!qword_1EC0906D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0906C8, &unk_1C403ED20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906D0);
  }

  return result;
}

uint64_t sub_1C3F4DFF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1C3F49A78();
}

unint64_t sub_1C3F4E018()
{
  result = qword_1EC0906D8;
  if (!qword_1EC0906D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0906E0, &unk_1C403E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906D8);
  }

  return result;
}

unint64_t sub_1C3F4E094()
{
  result = qword_1EC0906E8;
  if (!qword_1EC0906E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0906E0, &unk_1C403E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906E8);
  }

  return result;
}

uint64_t sub_1C3F4E110()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1C3F496B8();
}

uint64_t sub_1C3F4E130()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4A90C();
}

uint64_t sub_1C3F4E158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C3F4E1C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F492CC();
}

uint64_t sub_1C3F4E1E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C3F4E24C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EF40, &unk_1C403ED30);
    sub_1C3F4D034(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F4E2E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F48E68();
}

unint64_t sub_1C3F4E320()
{
  result = qword_1EC090700;
  if (!qword_1EC090700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090708, &qword_1C403E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090700);
  }

  return result;
}

unint64_t sub_1C3F4E39C()
{
  result = qword_1EC090710;
  if (!qword_1EC090710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090708, &qword_1C403E1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090710);
  }

  return result;
}

uint64_t sub_1C3F4E418()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F4A584();
}

uint64_t sub_1C3F4E440()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F48AAC();
}

uint64_t sub_1C3F4E45C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4039150;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3F4E6D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1C3F4C0B0();
}

uint64_t sub_1C3F4E6F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1C3F4BCF0();
}

uint64_t sub_1C3F4E710()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1C3F4B930();
}

uint64_t sub_1C3F4E730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1C3F4B570();
}

uint64_t sub_1C3F4E750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1C3F4B1B0();
}

uint64_t sub_1C3F4E77C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F4E880(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F4E94C()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F4EA48()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030F30();
}

uint64_t sub_1C3F4EAF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F4EC0C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F4ECEC()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F4EE04()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4EEB8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F51980(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F4EFF8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3F4E158(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030A90();

  return sub_1C3F4E1E4(v7);
}

uint64_t sub_1C3F4F128()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F51980(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F4F268()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F51980(&qword_1EC0906F0, &qword_1EC08FA20);
  sub_1C4030FB0();
}

uint64_t sub_1C3F4F374@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F4F498(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F4F584(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F4F690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

double sub_1C3F4F774@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F4F880(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F4F954()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F4FA54()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F4FB20@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F4FC2C(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F4FCFC()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F4FE00()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030FB0();
}

uint64_t sub_1C3F4FEA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F4FFB4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F50088()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090758, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F50188()
{
  swift_getKeyPath();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3F50248(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV10.CallRecord();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090798, &qword_1C403E808);
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v4 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 256;
  *(v1 + 20) = 1;
  v5 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 16843008;
  v8 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 257;
  *(v1 + 29) = 1;
  sub_1C4030AB0();
  *(v1 + 22) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F505A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV1010CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CallHistorySchemaV10.CallRecord()
{
  result = qword_1EC090730;
  if (!qword_1EC090730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3F5069C()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C3F50788()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4038040;
  v1 = type metadata accessor for CallHistorySchemaV10.CallRecord();
  v2 = sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v4 = sub_1C3F51A98(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_1C3F508BC(uint64_t a1)
{
  result = sub_1C3F508E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F508E4()
{
  result = qword_1EC090748;
  if (!qword_1EC090748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090748);
  }

  return result;
}

uint64_t sub_1C3F50938(__int128 *a1)
{
  v2 = type metadata accessor for CallHistorySchemaV10.CallRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1C3F50248(a1);
  return v5;
}

void (*sub_1C3F5097C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 32, v4);
  return sub_1C3F4C914;
}

uint64_t sub_1C3F50A10()
{
  v1 = *v0;
  sub_1C4031C70();
  type metadata accessor for CallHistorySchemaV10.CallRecord();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F50A9C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F50AF4()
{
  sub_1C4031C70();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F50B5C()
{
  v1 = *v0;
  type metadata accessor for CallHistorySchemaV10.CallRecord();
  sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  return sub_1C4030F50();
}

uint64_t sub_1C3F50BD8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F50DF4(uint64_t a1)
{
  result = sub_1C3F51A98(&qword_1EC090770, type metadata accessor for CallHistorySchemaV10.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F50E4C(uint64_t a1)
{
  result = sub_1C3F51A98(&qword_1EC090778, type metadata accessor for CallHistorySchemaV10.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F50EA4()
{
  v29 = sub_1C4031070();
  v0 = *(v29 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v5 = *(v0 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C403E2A0;
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v8 = *(sub_1C40310C0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v28 = xmmword_1C40385D0;
  *(v11 + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v12 = sub_1C40310D0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1C40310E0();
  *(&v31 + 1) = v12;
  v32 = sub_1C3F51A98(&qword_1EC090680, MEMORY[0x1E697BD30]);
  *&v30 = v15;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v16 = MEMORY[0x1E69E6530];
  *(&v34 + 1) = MEMORY[0x1E69E6530];
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v33) = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090780, &unk_1C403E7F0);
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C403DAB0;
  *(v18 + 32) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090788, &qword_1C403E800);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1C4031090();
  *(&v31 + 1) = v19;
  v32 = sub_1C3F51714();
  *&v30 = v22;
  sub_1C4031060();
  v23 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1C3EFFFE8(v24 > 1, v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = v23;
  (*(v1 + 32))(&v23[v6 + v25 * v5], v4, v29);
  *&v30 = v7;
  sub_1C40173FC(v26);
  return v30;
}

unint64_t sub_1C3F51714()
{
  result = qword_1EC090790;
  if (!qword_1EC090790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090788, &qword_1C403E800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090790);
  }

  return result;
}

uint64_t sub_1C3F51778()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4FA54();
}

uint64_t sub_1C3F517A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F50188();
}

uint64_t sub_1C3F517C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F50188();
}

uint64_t sub_1C3F517F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F4FE00();
}

uint64_t sub_1C3F51810()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4FA54();
}

uint64_t sub_1C3F51838()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4FA54();
}

uint64_t sub_1C3F51860()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4FA54();
}

uint64_t sub_1C3F5193C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F4FA54();
}

uint64_t sub_1C3F51964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F4F268();
}

uint64_t sub_1C3F51980(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EF40, &unk_1C403ED30);
    sub_1C3F51A98(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F51A1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F4EE04();
}

uint64_t sub_1C3F51A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F50188();
}

uint64_t sub_1C3F51A7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F4EA48();
}

uint64_t sub_1C3F51A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F51AE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F51BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F51CB0()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F51DAC()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030F30();
}

uint64_t sub_1C3F51E58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F51F70(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F52050()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F52168()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F5221C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F54AB0(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F5235C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3F4E158(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030A90();

  return sub_1C3F4E1E4(v7);
}

uint64_t sub_1C3F5248C()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F54AB0(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F525CC()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F54AB0(&qword_1EC0906F0, &qword_1EC08FA20);
  sub_1C4030FB0();
}

uint64_t sub_1C3F526D8@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F527FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F528E8(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F529F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

double sub_1C3F52AD8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F52BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F52CB8()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F52DB8()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F52E84@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F52F90(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F53060()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F53164()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030FB0();
}

uint64_t sub_1C3F5320C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F53318(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F533EC()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907D0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F534EC()
{
  swift_getKeyPath();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3F535AC(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV11.CallRecord();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0907F8, &unk_1C403ED40);
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v4 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 256;
  *(v1 + 20) = 1;
  v5 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 16843008;
  v8 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 27) = 257;
  *(v1 + 29) = 1;
  sub_1C4030AB0();
  *(v1 + 22) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F53908()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV1110CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CallHistorySchemaV11.CallRecord()
{
  result = qword_1EC0907A8;
  if (!qword_1EC0907A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3F53A00()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C3F53AEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4038040;
  v1 = type metadata accessor for CallHistorySchemaV11.CallRecord();
  v2 = sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v4 = sub_1C3F54BC8(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_1C3F53C20(uint64_t a1)
{
  result = sub_1C3F53C48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F53C48()
{
  result = qword_1EC0907C0;
  if (!qword_1EC0907C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0907C0);
  }

  return result;
}

uint64_t sub_1C3F53C9C(__int128 *a1)
{
  v2 = type metadata accessor for CallHistorySchemaV11.CallRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1C3F535AC(a1);
  return v5;
}

void (*sub_1C3F53CE0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 32, v4);
  return sub_1C3F4C914;
}

uint64_t sub_1C3F53D74()
{
  v1 = *v0;
  sub_1C4031C70();
  type metadata accessor for CallHistorySchemaV11.CallRecord();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F53E00()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F53E58()
{
  sub_1C4031C70();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F53EC0()
{
  v1 = *v0;
  type metadata accessor for CallHistorySchemaV11.CallRecord();
  sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  return sub_1C4030F50();
}

uint64_t sub_1C3F53F3C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F54158(uint64_t a1)
{
  result = sub_1C3F54BC8(&qword_1EC0907E8, type metadata accessor for CallHistorySchemaV11.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F541B0(uint64_t a1)
{
  result = sub_1C3F54BC8(&qword_1EC0907F0, type metadata accessor for CallHistorySchemaV11.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F54208()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C403E2A0;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v4 = *(sub_1C40310C0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v7 = sub_1C40310D0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C40310E0();
  sub_1C3F54BC8(&qword_1EC090680, MEMORY[0x1E697BD30]);
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3F548A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F52DB8();
}

uint64_t sub_1C3F548D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F534EC();
}

uint64_t sub_1C3F548F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F534EC();
}

uint64_t sub_1C3F54920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F53164();
}

uint64_t sub_1C3F54940()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F52DB8();
}

uint64_t sub_1C3F54968()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F52DB8();
}

uint64_t sub_1C3F54990()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F52DB8();
}

uint64_t sub_1C3F54A6C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F52DB8();
}

uint64_t sub_1C3F54A94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F525CC();
}

uint64_t sub_1C3F54AB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EF40, &unk_1C403ED30);
    sub_1C3F54BC8(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F54B4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F52168();
}

uint64_t sub_1C3F54B84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F534EC();
}

uint64_t sub_1C3F54BAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F51DAC();
}

uint64_t sub_1C3F54BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F54C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F54D14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F54DE0()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F54EDC()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030F30();
}

uint64_t sub_1C3F54FEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F55120(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F551FC()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F5530C()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F553BC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F58044(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F554FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3F4E158(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030A90();

  return sub_1C3F4E1E4(v7);
}

uint64_t sub_1C3F5562C()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F58044(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F5576C()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F58044(&qword_1EC0906F0, &qword_1EC08FA20);
  sub_1C4030FB0();
}

uint64_t sub_1C3F55878@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F5599C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F55A88(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F55B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

double sub_1C3F55C78@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F55D84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F55E58()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F55F58()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F56024@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F56130(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F56200()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F56304()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030FB0();
}

uint64_t sub_1C3F563AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F564B8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F5658C()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090830, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F5668C()
{
  swift_getKeyPath();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3F567F0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV12.CallRecord();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090870, &qword_1C403F318);
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  *(v1 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v4 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v5 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  *(v1 + 21) = 1;
  v6 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 16843008;
  v9 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 28) = 16843009;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 32));
  sub_1C3EAE504(a1, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F56B98()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV1210CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CallHistorySchemaV12.CallRecord()
{
  result = qword_1EC090808;
  if (!qword_1EC090808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3F56C90()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C3F56D80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4038040;
  v1 = type metadata accessor for CallHistorySchemaV12.CallRecord();
  v2 = sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v4 = sub_1C3F581A0(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_1C3F56EB4(uint64_t a1)
{
  result = sub_1C3F56EDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F56EDC()
{
  result = qword_1EC090820;
  if (!qword_1EC090820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090820);
  }

  return result;
}

uint64_t sub_1C3F56F30(__int128 *a1)
{
  v2 = type metadata accessor for CallHistorySchemaV12.CallRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1C3F567F0(a1);
  return v5;
}

void (*sub_1C3F56F74(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 32, v4);
  return sub_1C3F4C914;
}

uint64_t sub_1C3F57008()
{
  v1 = *v0;
  sub_1C4031C70();
  type metadata accessor for CallHistorySchemaV12.CallRecord();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F57094()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F570EC()
{
  sub_1C4031C70();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F57154()
{
  v1 = *v0;
  type metadata accessor for CallHistorySchemaV12.CallRecord();
  sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  return sub_1C4030F50();
}

uint64_t sub_1C3F571D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F573EC(uint64_t a1)
{
  result = sub_1C3F581A0(&qword_1EC090848, type metadata accessor for CallHistorySchemaV12.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F57444(uint64_t a1)
{
  result = sub_1C3F581A0(&qword_1EC090850, type metadata accessor for CallHistorySchemaV12.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F5749C()
{
  v29 = sub_1C4031070();
  v0 = *(v29 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v5 = *(v0 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C403ED50;
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v8 = *(sub_1C40310C0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v28 = xmmword_1C40385D0;
  *(v11 + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v12 = sub_1C40310D0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1C40310E0();
  *(&v31 + 1) = v12;
  v32 = sub_1C3F581A0(&qword_1EC090680, MEMORY[0x1E697BD30]);
  *&v30 = v15;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v16 = MEMORY[0x1E69E6530];
  *(&v34 + 1) = MEMORY[0x1E69E6530];
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v33) = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090858, &unk_1C403F300);
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C403DAB0;
  *(v18 + 32) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090860, &qword_1C403F310);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1C4031090();
  *(&v31 + 1) = v19;
  v32 = sub_1C3F57DB0();
  *&v30 = v22;
  sub_1C4031060();
  v23 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1C3EFFFE8(v24 > 1, v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = v23;
  (*(v1 + 32))(&v23[v6 + v25 * v5], v4, v29);
  *&v30 = v7;
  sub_1C40173FC(v26);
  return v30;
}

unint64_t sub_1C3F57DB0()
{
  result = qword_1EC090868;
  if (!qword_1EC090868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090860, &qword_1C403F310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090868);
  }

  return result;
}

uint64_t sub_1C3F57E14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F55F58();
}

uint64_t sub_1C3F57E3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F55F58();
}

uint64_t sub_1C3F57E64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5668C();
}

uint64_t sub_1C3F57E8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5668C();
}

uint64_t sub_1C3F57EB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F56304();
}

uint64_t sub_1C3F57ED4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F55F58();
}

uint64_t sub_1C3F57EFC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F55F58();
}

uint64_t sub_1C3F57F24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F55F58();
}

uint64_t sub_1C3F58000()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F55F58();
}

uint64_t sub_1C3F58028()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5576C();
}

uint64_t sub_1C3F58044(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EF40, &unk_1C403ED30);
    sub_1C3F581A0(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F58120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F5530C();
}

uint64_t sub_1C3F5815C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5668C();
}

uint64_t sub_1C3F58184()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F54EDC();
}

uint64_t sub_1C3F581A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F581E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F582EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F583B8()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F584B4()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030F30();
}

uint64_t sub_1C3F5856C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F58680(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F5875C()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F5886C()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F5891C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F5B788(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F58A5C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3F4E158(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030A90();

  return sub_1C3F4E1E4(v7);
}

uint64_t sub_1C3F58B8C()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F5B788(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F58CCC()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F5B788(&qword_1EC0906F0, &qword_1EC08FA20);
  sub_1C4030FB0();
}

uint64_t sub_1C3F58DD8@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F58EFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F58FE8(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F590F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

double sub_1C3F59230@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F5933C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F59410()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F59510()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F595DC@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F596E8(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F597B8()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F598BC()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030FB0();
}

uint64_t sub_1C3F59964@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F59A70(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F59B44()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908A8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F59C44()
{
  swift_getKeyPath();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3F59D10(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV13.CallRecord();
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0908E8, &unk_1C403F910);
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  *(v1 + 21) = 1;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 25) = 16843008;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 29) = 16843009;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F5A10C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV1310CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CallHistorySchemaV13.CallRecord()
{
  result = qword_1EC090880;
  if (!qword_1EC090880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3F5A204()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C3F5A2F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4038040;
  v1 = type metadata accessor for CallHistorySchemaV13.CallRecord();
  v2 = sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v4 = sub_1C3F5B8E4(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_1C3F5A42C(uint64_t a1)
{
  result = sub_1C3F5A454();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F5A454()
{
  result = qword_1EC090898;
  if (!qword_1EC090898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090898);
  }

  return result;
}

uint64_t sub_1C3F5A4A8(__int128 *a1)
{
  v2 = type metadata accessor for CallHistorySchemaV13.CallRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1C3F59D10(a1);
  return v5;
}

uint64_t sub_1C3F5A534(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  return swift_endAccess();
}

void (*sub_1C3F5A58C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

void sub_1C3F5A61C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1C3F2C800(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 40));
    sub_1C3EAE504((v2 + 40), v3 + 40);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v3 + 40));
    sub_1C3EAE504(v2, v3 + 40);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1C3F5A6D8()
{
  v1 = *v0;
  sub_1C4031C70();
  type metadata accessor for CallHistorySchemaV13.CallRecord();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F5A764()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F5A7BC()
{
  sub_1C4031C70();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F5A824()
{
  v1 = *v0;
  type metadata accessor for CallHistorySchemaV13.CallRecord();
  sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  return sub_1C4030F50();
}

uint64_t sub_1C3F5A8A0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F5AABC(uint64_t a1)
{
  result = sub_1C3F5B8E4(&qword_1EC0908C0, type metadata accessor for CallHistorySchemaV13.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F5AB14(uint64_t a1)
{
  result = sub_1C3F5B8E4(&qword_1EC0908C8, type metadata accessor for CallHistorySchemaV13.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F5AB6C()
{
  v29 = sub_1C4031070();
  v0 = *(v29 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v5 = *(v0 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C403F320;
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v8 = *(sub_1C40310C0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v28 = xmmword_1C40385D0;
  *(v11 + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v12 = sub_1C40310D0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1C40310E0();
  *(&v31 + 1) = v12;
  v32 = sub_1C3F5B8E4(&qword_1EC090680, MEMORY[0x1E697BD30]);
  *&v30 = v15;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v16 = MEMORY[0x1E69E6530];
  *(&v34 + 1) = MEMORY[0x1E69E6530];
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = v16;
  *&v33 = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v34 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v33) = 0;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v33 = 0u;
  v34 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0908D0, &unk_1C403F8F8);
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C403DAB0;
  *(v18 + 32) = swift_getKeyPath();
  *(v17 + 32) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0908D8, &qword_1C403F908);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1C4031090();
  *(&v31 + 1) = v19;
  v32 = sub_1C3F5B4D4();
  *&v30 = v22;
  sub_1C4031060();
  v23 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1C3EFFFE8(v24 > 1, v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = v23;
  (*(v1 + 32))(&v23[v6 + v25 * v5], v4, v29);
  *&v30 = v7;
  sub_1C40173FC(v26);
  return v30;
}

unint64_t sub_1C3F5B4D4()
{
  result = qword_1EC0908E0;
  if (!qword_1EC0908E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0908D8, &qword_1C403F908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0908E0);
  }

  return result;
}

uint64_t sub_1C3F5B538()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F59510();
}

uint64_t sub_1C3F5B560()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F59510();
}

uint64_t sub_1C3F5B588()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F59C44();
}

uint64_t sub_1C3F5B5B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F59C44();
}

uint64_t sub_1C3F5B5D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F598BC();
}

uint64_t sub_1C3F5B5F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F59510();
}

uint64_t sub_1C3F5B620()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F59510();
}

uint64_t sub_1C3F5B648()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F59510();
}

uint64_t sub_1C3F5B744()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F59510();
}

uint64_t sub_1C3F5B76C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F58CCC();
}

uint64_t sub_1C3F5B788(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EF40, &unk_1C403ED30);
    sub_1C3F5B8E4(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F5B864()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F5886C();
}

uint64_t sub_1C3F5B8A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F59C44();
}

uint64_t sub_1C3F5B8C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F584B4();
}

uint64_t sub_1C3F5B8E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F5B950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F5BA64(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F5BB40()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F5BC50()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F5BD00(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F5EDA0(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F5BE40(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3F4E158(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030A90();

  return sub_1C3F4E1E4(v7);
}

uint64_t sub_1C3F5BF70()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F5EDA0(&qword_1EC0906F8, &qword_1EC08FB48);
  sub_1C4030F90();
}

uint64_t sub_1C3F5C0B0()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F5EDA0(&qword_1EC0906F0, &qword_1EC08FA20);
  sub_1C4030FB0();
}

uint64_t sub_1C3F5C1B0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F5C2D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F5C3C0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F5C4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3F5C5C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F5C6C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F5C798()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F5C88C()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030F30();
}

double sub_1C3F5C928@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F5CA34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F5CB08()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F5CC08()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F5CCC8@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F5CDD4(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F5CEA4()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F5CFA8()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030FB0();
}

uint64_t sub_1C3F5D050@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F5D15C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F5D230()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090920, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F5D330()
{
  swift_getKeyPath();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

uint64_t sub_1C3F5D3FC(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV14.CallRecord();
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090960, &unk_1C403FF00);
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 16843008;
  *(v1 + 28) = 1;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 29) = 16843009;
  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F5D7F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV1410CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for CallHistorySchemaV14.CallRecord()
{
  result = qword_1EC0908F8;
  if (!qword_1EC0908F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C3F5D8F0()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C3F5D9E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4038040;
  v1 = type metadata accessor for CallHistorySchemaV14.CallRecord();
  v2 = sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v4 = sub_1C3F5EF04(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

unint64_t sub_1C3F5DB18(uint64_t a1)
{
  result = sub_1C3F5DB40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F5DB40()
{
  result = qword_1EC090910;
  if (!qword_1EC090910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090910);
  }

  return result;
}

uint64_t sub_1C3F5DB94(__int128 *a1)
{
  v2 = type metadata accessor for CallHistorySchemaV14.CallRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1C3F5D3FC(a1);
  return v5;
}

void (*sub_1C3F5DBD8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

uint64_t sub_1C3F5DC6C()
{
  v1 = *v0;
  sub_1C4031C70();
  type metadata accessor for CallHistorySchemaV14.CallRecord();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F5DCF8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F5DD50()
{
  sub_1C4031C70();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F5DDB8()
{
  v1 = *v0;
  type metadata accessor for CallHistorySchemaV14.CallRecord();
  sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  return sub_1C4030F50();
}

uint64_t sub_1C3F5DE34(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F5E050(uint64_t a1)
{
  result = sub_1C3F5EF04(&qword_1EC090938, type metadata accessor for CallHistorySchemaV14.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F5E0A8(uint64_t a1)
{
  result = sub_1C3F5EF04(&qword_1EC090940, type metadata accessor for CallHistorySchemaV14.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F5E100()
{
  v36 = sub_1C4031070();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v3 = *(v0 + 72);
  v35 = v0;
  v4 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C403F320;
  v33 = v5;
  v34 = v4;
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v7 = *(sub_1C40310C0() - 8);
  v8 = *(v7 + 80);
  v31[1] = *(v7 + 72);
  v31[2] = v6;
  v9 = swift_allocObject();
  v37 = xmmword_1C40385D0;
  *(v9 + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v10 = sub_1C40310D0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1C40310E0();
  *(&v39 + 1) = v10;
  v14 = sub_1C3F5EF04(&qword_1EC090680, MEMORY[0x1E697BD30]);
  v40 = v14;
  *&v38 = v13;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v15 = MEMORY[0x1E69E6530];
  *(&v42 + 1) = MEMORY[0x1E69E6530];
  *&v41 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v42 + 1) = v15;
  *&v41 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v42 + 1) = v15;
  *&v41 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v42 + 1) = v15;
  *&v41 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v42 + 1) = v15;
  *&v41 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v42 + 1) = v15;
  *&v41 = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  *(swift_allocObject() + 16) = v37;
  sub_1C40311C0();
  sub_1C40310B0();

  v16 = *(v10 + 48);
  v17 = *(v10 + 52);
  swift_allocObject();
  v18 = sub_1C40310E0();
  *(&v39 + 1) = v10;
  v40 = v14;
  *&v38 = v18;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v42 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v41) = 0;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090948, &unk_1C403FEE8);
  v19 = swift_allocObject();
  *(v19 + 16) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C403DAB0;
  *(v20 + 32) = swift_getKeyPath();
  *(v19 + 32) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090950, &qword_1C403FEF8);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_1C4031090();
  *(&v39 + 1) = v21;
  v40 = sub_1C3F5EAF0();
  *&v38 = v24;
  v25 = v32;
  sub_1C4031060();
  v26 = sub_1C3EFFFE8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1C3EFFFE8(v27 > 1, v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = v26;
  (*(v35 + 32))(&v26[v34 + v28 * v3], v25, v36);
  *&v38 = v33;
  sub_1C40173FC(v29);
  return v38;
}

unint64_t sub_1C3F5EAF0()
{
  result = qword_1EC090958;
  if (!qword_1EC090958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090950, &qword_1C403FEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090958);
  }

  return result;
}

uint64_t sub_1C3F5EB54()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F5CC08();
}

uint64_t sub_1C3F5EB7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F5CC08();
}

uint64_t sub_1C3F5EBA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5D330();
}

uint64_t sub_1C3F5EBCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5D330();
}

uint64_t sub_1C3F5EBF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5CFA8();
}

uint64_t sub_1C3F5EC14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F5CC08();
}

uint64_t sub_1C3F5EC3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F5CC08();
}

uint64_t sub_1C3F5EC64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5C88C();
}

uint64_t sub_1C3F5EC88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C3F5CC08();
}

uint64_t sub_1C3F5ED84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5C0B0();
}

uint64_t sub_1C3F5EDA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EF40, &unk_1C403ED30);
    sub_1C3F5EF04(a2, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C3F5EE7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F5BC50();
}

uint64_t sub_1C3F5EEB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5D330();
}

uint64_t sub_1C3F5EEE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5C88C();
}

uint64_t sub_1C3F5EF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F5EFA8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F64A18();
  sub_1C4030F90();
}

uint64_t sub_1C3F5F0B0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08EF40, &unk_1C403ED30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1C3F4E158(a1, &v10[-v6]);
  v8 = *a2;
  v13 = v8;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030A90();

  return sub_1C3F4E1E4(v7);
}

uint64_t sub_1C3F5F1E0()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F64A18();
  sub_1C4030F90();
}

uint64_t sub_1C3F5F2E8()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F64964();
  sub_1C4030FB0();
}

uint64_t sub_1C3F5F3D0@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F5F4F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F5F5E0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F5F6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3F5F7BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F5F8F0(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F5F9CC()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F5FADC()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F5FBC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F5FCD0()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F5FDC4()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030F30();
}

uint64_t sub_1C3F5FE78@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F5FF84(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F60054()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F60164@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F60270(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F60344()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F60444()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3F604F8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F60604(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F606D8()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F607D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  v4 = sub_1C4030F70();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F60934()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  v0 = sub_1C4030F70();

  return v0;
}

uint64_t sub_1C3F60A6C()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030FC0();
}

uint64_t sub_1C3F60B44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV15.Handle(0);
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F64520();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F60C84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F60D48()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909D8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV15.Handle(0);
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F64520();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3F60E60()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV15.Handle(0);
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  sub_1C3F64520();
  sub_1C4030FA0();
}

uint64_t sub_1C3F60F1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F60FE8(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV15.CallRecord(0);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A40, &qword_1C40406F8);
  sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 16843008;
  *(v1 + 28) = 1;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 29) = 16843009;
  *(v1 + 33) = 1;
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A00, &qword_1C4040678);
  type metadata accessor for CallHistorySchemaV15.Handle(0);
  sub_1C3F64520();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F61468()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV1510CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F61534()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3F6160C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F6171C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F617F4()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F618FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3F633F0(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F619A0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F61AAC(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F61B7C()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F61C80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3F633F0(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3F61D14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F61E18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F61EE4()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F61FE0()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030F30();
}

uint64_t sub_1C3F62080@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV15.CallRecord(0);
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C3F64450();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F6219C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F62280()
{
  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV15.CallRecord(0);
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C3F64450();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3F62390()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV15.CallRecord(0);
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C3F64450();
  sub_1C4030FA0();
}

uint64_t sub_1C3F62448(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for CallHistorySchemaV15.Handle(0);
  *(v2 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A48, &unk_1C40407A0);
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  *(v2 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 24));
  sub_1C4030F10();
  *(v2 + 16) = 1;
  v5 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  v6 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A30, &qword_1C40406F0);
  type metadata accessor for CallHistorySchemaV15.CallRecord(0);
  sub_1C3F64450();
  sub_1C4030E00();

  v7 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  sub_1C4030E00();

  sub_1C4030AB0();
  v8 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  v9 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  swift_getKeyPath();
  sub_1C3F65180();
  v10 = a2;
  sub_1C4030DF0();

  swift_getKeyPath();
  sub_1C3F633F0(&qword_1EC0909B0, type metadata accessor for CallHistorySchemaV15.Handle);
  sub_1C4030A90();

  swift_getKeyPath();
  sub_1C4030A90();

  return v2;
}

uint64_t sub_1C3F62830(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV15.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A48, &unk_1C40407A0);
  sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A30, &qword_1C40406F0);
  type metadata accessor for CallHistorySchemaV15.CallRecord(0);
  sub_1C3F64450();
  sub_1C4030E00();

  v6 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F62A94()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV156Handle___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F62B60()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C3F62C4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40385C0;
  v1 = type metadata accessor for CallHistorySchemaV15.CallRecord(0);
  v2 = sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV15.Handle(0);
  v4 = sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v6 = sub_1C3F633F0(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_1C3F62DC4(uint64_t a1)
{
  result = sub_1C3F62DEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F62DEC()
{
  result = qword_1EC0909A0;
  if (!qword_1EC0909A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0909A0);
  }

  return result;
}

void (*sub_1C3F62E6C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

uint64_t sub_1C3F62F48()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F63000(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F63098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3F630F4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3F4CCAC;
}

uint64_t sub_1C3F631D0(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3F633F0(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F6325C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F63314(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3F633F0(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3F63384(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F633F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F63708(uint64_t a1)
{
  result = sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F63760(uint64_t a1)
{
  result = sub_1C3F633F0(&qword_1EC0909F8, type metadata accessor for CallHistorySchemaV15.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F637B8()
{
  v48 = sub_1C4031070();
  v0 = *(v48 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4031020();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v6 = *(v0 + 72);
  v47 = v0;
  v7 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C403FF10;
  v44 = v8;
  v45 = v7;
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v10 = *(sub_1C40310C0() - 8);
  v11 = *(v10 + 80);
  v40[0] = *(v10 + 72);
  v40[1] = v9;
  v12 = swift_allocObject();
  v49 = xmmword_1C40385D0;
  *(v12 + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v13 = sub_1C40310D0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1C40310E0();
  *(&v51 + 1) = v13;
  v17 = sub_1C3F633F0(&qword_1EC090680, MEMORY[0x1E697BD30]);
  v52 = v17;
  *&v50 = v16;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v18 = MEMORY[0x1E69E6530];
  *(&v54 + 1) = MEMORY[0x1E69E6530];
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  *(swift_allocObject() + 16) = v49;
  sub_1C40311C0();
  sub_1C40310B0();

  v19 = *(v13 + 48);
  v20 = *(v13 + 52);
  swift_allocObject();
  v21 = sub_1C40310E0();
  *(&v51 + 1) = v13;
  v52 = v17;
  *&v50 = v21;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v53) = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A00, &qword_1C4040678);
  v23 = MEMORY[0x1E69E7CC0];
  *(&v54 + 1) = v22;
  *&v53 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  (*(v41 + 104))(v43, *MEMORY[0x1E697BCE0], v42);
  v24 = sub_1C4031030();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_1C4031040();
  *(&v51 + 1) = v24;
  v52 = sub_1C3F633F0(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v50 = v27;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A10, &unk_1C40406D8);
  v28 = swift_allocObject();
  *(v28 + 16) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C403DAB0;
  *(v29 + 32) = swift_getKeyPath();
  *(v28 + 32) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A18, &qword_1C40406E8);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_1C4031090();
  *(&v51 + 1) = v30;
  v52 = sub_1C3F643C8();
  *&v50 = v33;
  v34 = v46;
  sub_1C4031060();
  v35 = sub_1C3EFFFE8(0, 1, 1, v23);
  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_1C3EFFFE8(v36 > 1, v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  v38 = v35;
  (*(v47 + 32))(&v35[v45 + v37 * v6], v34, v48);
  *&v50 = v44;
  sub_1C40173FC(v38);
  return v50;
}

unint64_t sub_1C3F643C8()
{
  result = qword_1EC090A20;
  if (!qword_1EC090A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090A18, &qword_1C40406E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090A20);
  }

  return result;
}

uint64_t sub_1C3F6442C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F62390();
}

unint64_t sub_1C3F64450()
{
  result = qword_1EC090A28;
  if (!qword_1EC090A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090A30, &qword_1C40406F0);
    sub_1C3F633F0(&qword_1EC0909F0, type metadata accessor for CallHistorySchemaV15.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090A28);
  }

  return result;
}

uint64_t sub_1C3F64504()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F60E60();
}

unint64_t sub_1C3F64520()
{
  result = qword_1EC090A38;
  if (!qword_1EC090A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090A00, &qword_1C4040678);
    sub_1C3F633F0(&qword_1EC0909C8, type metadata accessor for CallHistorySchemaV15.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090A38);
  }

  return result;
}

uint64_t sub_1C3F645D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F60A6C();
}

uint64_t sub_1C3F646A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F60444();
}

uint64_t sub_1C3F646C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F60444();
}

uint64_t sub_1C3F647F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5FDC4();
}

uint64_t sub_1C3F64948()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5F2E8();
}

unint64_t sub_1C3F64964()
{
  result = qword_1EC0906F0;
  if (!qword_1EC0906F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EF40, &unk_1C403ED30);
    sub_1C3F633F0(&qword_1EC08FA20, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906F0);
  }

  return result;
}

unint64_t sub_1C3F64A18()
{
  result = qword_1EC0906F8;
  if (!qword_1EC0906F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08EF40, &unk_1C403ED30);
    sub_1C3F633F0(&qword_1EC08FB48, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0906F8);
  }

  return result;
}

uint64_t sub_1C3F64AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F5FADC();
}

uint64_t sub_1C3F64B48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F60444();
}

uint64_t sub_1C3F64B70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F5FDC4();
}

uint64_t sub_1C3F64B94()
{
  v22 = sub_1C4031020();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v4 = *(sub_1C4031070() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4039150;
  v23 = v7;
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v28 + 1) = MEMORY[0x1E69E6530];
  *&v27 = 1;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v27 = 0u;
  v28 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v8 = *(sub_1C40310C0() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v11 = sub_1C40310D0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1C40310E0();
  *(&v25 + 1) = v11;
  v26 = sub_1C3F633F0(&qword_1EC090680, MEMORY[0x1E697BD30]);
  *&v24 = v14;
  sub_1C4031060();
  swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090A30, &qword_1C40406F0);
  v16 = MEMORY[0x1E69E7CC0];
  *(&v28 + 1) = v15;
  *&v27 = MEMORY[0x1E69E7CC0];
  (*(v0 + 104))(v3, *MEMORY[0x1E697BCD8], v22);
  v17 = sub_1C4031030();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1C4031040();
  *(&v25 + 1) = v17;
  v26 = sub_1C3F633F0(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v24 = v20;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v28 + 1) = v15;
  *&v27 = v16;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1C4031060();
  return v23;
}

uint64_t sub_1C3F65090()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F62390();
}

uint64_t sub_1C3F650B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F61FE0();
}

unint64_t sub_1C3F65180()
{
  result = qword_1EC090A50;
  if (!qword_1EC090A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC090A50);
  }

  return result;
}

uint64_t sub_1C3F65290@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F653B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F654A0(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F655AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3F65670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F65784(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F65860()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F65970()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F65A2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F65B38()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F65C2C()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030F30();
}

uint64_t sub_1C3F65CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3F65DDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v15[-v11];
  sub_1C3EF1A60(a1, &v15[-v11], a5, a6);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3F65F40(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3F66050(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3F66114@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F66220(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F662F0()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F66400@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F6650C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F665E0()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F666E0()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3F66794@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F668A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F66974()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F66A74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV16.Handle(0);
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F69E34();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F66B94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F66C58()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AC8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV16.Handle(0);
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F69E34();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3F66D70()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV16.Handle(0);
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  sub_1C3F69E34();
  sub_1C4030FA0();
}

uint64_t sub_1C3F66E2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV16.CallRecord(0);
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C3F69D64();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F66F4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F67010(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV16.CallRecord(0);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090B30, &qword_1C4040FA0);
  sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 16843008;
  *(v1 + 28) = 257;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 30) = 16843009;
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090AF0, &qword_1C4040F18);
  type metadata accessor for CallHistorySchemaV16.Handle(0);
  sub_1C3F69E34();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F6748C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV1610CallRecord___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F67558()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_1C3F67630@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F67740(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F67818()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F67920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3F68D14(a5, a6);
  sub_1C3F4DCAC();
  sub_1C4030FB0();
}

uint64_t sub_1C3F679C4@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F67AD0(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F67BA0()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F67CA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  swift_getKeyPath();
  sub_1C3F68D14(a4, a5);
  sub_1C4030FB0();
}

uint64_t sub_1C3F67D38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F67E3C()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F67F38()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030F30();
}

uint64_t sub_1C3F67FD8()
{
  swift_getKeyPath();
  sub_1C3F68D14(&qword_1EC090AA0, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV16.CallRecord(0);
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C3F69D64();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3F680F0()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV16.CallRecord(0);
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  sub_1C3F69D64();
  sub_1C4030FA0();
}

uint64_t sub_1C3F681AC(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV16.Handle(0);
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090B38, &unk_1C4041020);
  sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  *(v1 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 24));
  sub_1C4030F10();
  *(v1 + 16) = 1;
  v4 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  sub_1C4030E10();

  v5 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090B18, &unk_1C4040F90);
  type metadata accessor for CallHistorySchemaV16.CallRecord(0);
  sub_1C3F69D64();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  sub_1C3EAE504(a1, v1 + 24);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C3F683B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v1 = OBJC_IVAR____TtCO11CallHistory20CallHistorySchemaV166Handle___observationRegistrar;
  v2 = sub_1C4030AC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C3F68484()
{
  result = sub_1C4030AC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C3F68570()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F1B8, &unk_1C403E290);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C40385C0;
  v1 = type metadata accessor for CallHistorySchemaV16.CallRecord(0);
  v2 = sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CallHistorySchemaV16.Handle(0);
  v4 = sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CallHistorySchemaV9.CallDBProperties(0);
  v6 = sub_1C3F68D14(&qword_1EC090640, type metadata accessor for CallHistorySchemaV9.CallDBProperties);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_1C3F686E8(uint64_t a1)
{
  result = sub_1C3F68710();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C3F68710()
{
  result = qword_1EC090A90;
  if (!qword_1EC090A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090A90);
  }

  return result;
}

void (*sub_1C3F68790(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 40, v4);
  return sub_1C3F5A61C;
}

uint64_t sub_1C3F6886C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F68924(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F689BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v7 = a4(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  a5(a1);
  return v10;
}

void (*sub_1C3F68A18(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1C3F2C800(v1 + 24, v4);
  return sub_1C3F4CCAC;
}

uint64_t sub_1C3F68AF4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = *v5;
  sub_1C4031C70();
  a3(0);
  sub_1C3F68D14(a4, a5);
  sub_1C4030F60();
  return sub_1C4031CC0();
}

uint64_t sub_1C3F68B80()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1C4030F60();
}

uint64_t sub_1C3F68C38(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = *v5;
  a3(0);
  sub_1C3F68D14(a4, a5);
  return sub_1C4030F50();
}

uint64_t sub_1C3F68CA8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1C3F68D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C3F6902C(uint64_t a1)
{
  result = sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F69084(uint64_t a1)
{
  result = sub_1C3F68D14(&qword_1EC090AE8, type metadata accessor for CallHistorySchemaV16.CallRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C3F690DC()
{
  v48 = sub_1C4031070();
  v0 = *(v48 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4031020();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v6 = *(v0 + 72);
  v47 = v0;
  v7 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C403FF10;
  v44 = v8;
  v45 = v7;
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v10 = *(sub_1C40310C0() - 8);
  v11 = *(v10 + 80);
  v40[0] = *(v10 + 72);
  v40[1] = v9;
  v12 = swift_allocObject();
  v49 = xmmword_1C40385D0;
  *(v12 + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v13 = sub_1C40310D0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1C40310E0();
  *(&v51 + 1) = v13;
  v17 = sub_1C3F68D14(&qword_1EC090680, MEMORY[0x1E697BD30]);
  v52 = v17;
  *&v50 = v16;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v18 = MEMORY[0x1E69E6530];
  *(&v54 + 1) = MEMORY[0x1E69E6530];
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = v18;
  *&v53 = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  *(swift_allocObject() + 16) = v49;
  sub_1C40311C0();
  sub_1C40310B0();

  v19 = *(v13 + 48);
  v20 = *(v13 + 52);
  swift_allocObject();
  v21 = sub_1C40310E0();
  *(&v51 + 1) = v13;
  v52 = v17;
  *&v50 = v21;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  *(&v54 + 1) = MEMORY[0x1E69E7290];
  LOWORD(v53) = 0;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  sub_1C4031060();
  swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090AF0, &qword_1C4040F18);
  v23 = MEMORY[0x1E69E7CC0];
  *(&v54 + 1) = v22;
  *&v53 = MEMORY[0x1E69E7CC0];
  swift_getKeyPath();
  (*(v41 + 104))(v43, *MEMORY[0x1E697BCE0], v42);
  v24 = sub_1C4031030();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_1C4031040();
  *(&v51 + 1) = v24;
  v52 = sub_1C3F68D14(&qword_1EC090A08, MEMORY[0x1E697BCF0]);
  *&v50 = v27;
  sub_1C4031060();
  swift_getKeyPath();
  v53 = 0u;
  v54 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090AF8, &unk_1C4040F78);
  v28 = swift_allocObject();
  *(v28 + 16) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F2A8, &unk_1C403C1F0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C403DAB0;
  *(v29 + 32) = swift_getKeyPath();
  *(v28 + 32) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090B00, &qword_1C4040F88);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_1C4031090();
  *(&v51 + 1) = v30;
  v52 = sub_1C3F69CE4();
  *&v50 = v33;
  v34 = v46;
  sub_1C4031060();
  v35 = sub_1C3EFFFE8(0, 1, 1, v23);
  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_1C3EFFFE8(v36 > 1, v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  v38 = v35;
  (*(v47 + 32))(&v35[v45 + v37 * v6], v34, v48);
  *&v50 = v44;
  sub_1C40173FC(v38);
  return v50;
}

unint64_t sub_1C3F69CE4()
{
  result = qword_1EC090B08;
  if (!qword_1EC090B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090B00, &qword_1C4040F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090B08);
  }

  return result;
}

uint64_t sub_1C3F69D48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F680F0();
}

unint64_t sub_1C3F69D64()
{
  result = qword_1EC090B10;
  if (!qword_1EC090B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090B18, &unk_1C4040F90);
    sub_1C3F68D14(&qword_1EC090AE0, type metadata accessor for CallHistorySchemaV16.CallRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090B10);
  }

  return result;
}

uint64_t sub_1C3F69E18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F66D70();
}

unint64_t sub_1C3F69E34()
{
  result = qword_1EC090B20;
  if (!qword_1EC090B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC090AF0, &qword_1C4040F18);
    sub_1C3F68D14(&qword_1EC090AB8, type metadata accessor for CallHistorySchemaV16.Handle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090B20);
  }

  return result;
}

uint64_t sub_1C3F69F98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F666E0();
}

uint64_t sub_1C3F69FC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F666E0();
}

unint64_t sub_1C3F6A128()
{
  result = qword_1EC090B28;
  if (!qword_1EC090B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC08F218, &qword_1C4041840);
    sub_1C3F68D14(&qword_1EC08F0B8, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC090B28);
  }

  return result;
}

uint64_t sub_1C3F6A1DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F65C2C();
}

uint64_t sub_1C3F6A384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 28);
  return sub_1C3F65970();
}

uint64_t sub_1C3F6A3E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F666E0();
}

uint64_t sub_1C3F6A408()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F65C2C();
}

uint64_t sub_1C3F6A42C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC08F248, &qword_1C403DF00);
  v0 = *(sub_1C4031070() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C40407B0;
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090678, &qword_1C403DF30);
  v4 = *(sub_1C40310C0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1C40385D0;
  if (qword_1EC08EB60 != -1)
  {
    swift_once();
  }

  sub_1C40311C0();
  sub_1C40310B0();

  v7 = sub_1C40310D0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C40310E0();
  sub_1C3F68D14(&qword_1EC090680, MEMORY[0x1E697BD30]);
  sub_1C4031060();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090B18, &unk_1C4040F90);
  sub_1C4031060();
  return v3;
}

uint64_t sub_1C3F6A7A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C3F67F38();
}

uint64_t sub_1C3F6A900@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  a2();
  sub_1C4030F90();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_1C3F6AA24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F6AB10(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  a2();
  sub_1C4030F90();

  return v2;
}

uint64_t sub_1C3F6AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  v6 = sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  a5(v6, v7);
  sub_1C4030FB0();
}

uint64_t sub_1C3F6ACE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  *a2 = v5;
  *(a2 + 4) = v6;
  return result;
}

uint64_t sub_1C3F6ADF4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030A90();
}

unint64_t sub_1C3F6AED0()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F4E39C();
  sub_1C4030F90();

  return v1 | (v2 << 32);
}

uint64_t sub_1C3F6AFE0()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F4E320();
  sub_1C4030FB0();
}

uint64_t sub_1C3F6B09C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030F20();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F6B1A8()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030F20();

  return v0;
}

uint64_t sub_1C3F6B29C()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030F30();
}

uint64_t sub_1C3F6B370@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F6B47C(__int16 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F6B54C()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F6B65C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  a5();
  sub_1C4030F90();
}

uint64_t sub_1C3F6B770(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v15[-v11];
  sub_1C3EF1A60(a1, &v15[-v11], a5, a6);
  v18 = *a2;
  v13 = v18;
  swift_getKeyPath();
  v16 = v13;
  v17 = v12;
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030A90();

  return sub_1C3EED388(v12, a5, a6);
}

uint64_t sub_1C3F6B8D4(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  a2();
  sub_1C4030F90();
}

uint64_t sub_1C3F6B9E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  a4();
  sub_1C4030FB0();
}

uint64_t sub_1C3F6BA90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  *a2 = v5;
  return result;
}

uint64_t sub_1C3F6BB9C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F6BC70()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F4DDCC();
  sub_1C4030F90();

  return v1;
}

uint64_t sub_1C3F6BD70()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F4DD50();
  sub_1C4030FB0();
}

double sub_1C3F6BE24@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1C3F6BF30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F6C004()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F3189C();
  sub_1C4030F90();

  return v0;
}

uint64_t sub_1C3F6C104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV17.Handle(0);
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F6F518();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F6C224(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030A90();
}

uint64_t sub_1C3F6C2E8()
{
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090BB0, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV17.Handle(0);
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F6F518();
  sub_1C4030F80();

  return v0;
}

uint64_t sub_1C3F6C400()
{
  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV17.Handle(0);
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  sub_1C3F6F518();
  sub_1C4030FA0();
}

uint64_t sub_1C3F6C4BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090B88, type metadata accessor for CallHistorySchemaV17.Handle);
  sub_1C4030AA0();

  swift_getKeyPath();
  type metadata accessor for CallHistorySchemaV17.CallRecord(0);
  sub_1C3F6E3AC(&qword_1EC090BA0, type metadata accessor for CallHistorySchemaV17.Handle);
  sub_1C3F6F448();
  sub_1C4030F80();

  *a2 = v4;
  return result;
}

uint64_t sub_1C3F6C5DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1C3F6E3AC(&qword_1EC090B88, type metadata accessor for CallHistorySchemaV17.Handle);
  sub_1C4030A90();
}

uint64_t sub_1C3F6C6A0(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for CallHistorySchemaV17.CallRecord(0);
  *(v1 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090C10, &qword_1C4041848);
  sub_1C3F6E3AC(&qword_1EC090BC8, type metadata accessor for CallHistorySchemaV17.CallRecord);
  *(v1 + 72) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v1 + 40));
  sub_1C4030F10();
  *(v1 + 16) = 257;
  v3 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090708, &qword_1C403E1B0);
  sub_1C3F4E320();
  sub_1C4030E10();

  *(v1 + 18) = 0;
  v4 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 19) = 256;
  v5 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906C8, &unk_1C403ED20);
  sub_1C3F4DF00();
  sub_1C4030E10();

  *(v1 + 21) = 0;
  v6 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0906E0, &unk_1C403E1A0);
  sub_1C3F4E018();
  sub_1C4030E10();

  *(v1 + 22) = 0;
  v7 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 23) = 0;
  v8 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 24) = 16843008;
  *(v1 + 28) = 257;
  v9 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  sub_1C4030E10();

  *(v1 + 30) = 16843009;
  *(v1 + 34) = 1;
  v10 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC090BD8, &qword_1C40417C0);
  type metadata accessor for CallHistorySchemaV17.Handle(0);
  sub_1C3F6F518();
  sub_1C4030E00();

  sub_1C4030AB0();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 31) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));
  sub_1C3EAE504(a1, v1 + 40);
  swift_endAccess();
  return v1;
}