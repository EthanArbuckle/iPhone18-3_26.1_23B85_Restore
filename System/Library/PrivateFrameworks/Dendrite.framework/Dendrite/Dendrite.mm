void ProtoCodable.serialize()(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
  if (v5)
  {
    v6 = v5;
    (*(a2 + 16))(v5, a1, a2);
    if (v2)
    {
    }

    else
    {
      v8 = [v6 immutableData];
      if (v8)
      {
        v9 = v8;
        sub_1B1A7C888();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1B1A65484();
    swift_allocError();
    *v7 = 0xD000000000000017;
    v7[1] = 0x80000001B1A82360;
    swift_willThrow();
  }
}

void TypedStream.append(_:)()
{
  v1 = *(v0 + qword_1EDB770F0);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B1A5FD20((v1 + v2), &v4);
  os_unfair_lock_unlock((v1 + v3));
  if (v4 == 1)
  {
    sub_1B1A593FC();
  }
}

uint64_t PBDataWriter.writeSubmessage(tag:writeData:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = PBDataWriterPlaceMark();
  result = a2(v4);
  if (!v2)
  {
    result = PBDataWriterRecallMark();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1A4696C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t PBDataWriter.write(_:forTag:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = *MEMORY[0x1E69E9840];
  v19 = sub_1B1A7C938();
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v13 = sub_1B1A46AEC(&v19, 16);
  v15 = v14;
  v16 = sub_1B1A7C878();
  [v3 writeData:v16 forTag:a2];

  result = sub_1B1A4696C(v13, v15);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1A46AEC(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B1A4F9CC(a1, &a1[a2]);
  }

  v3 = sub_1B1A7C728();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B1A7C6C8();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B1A7C868();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t PBDataWriter.write(submessage:forTag:)(void *a1)
{
  v3 = v1;
  v9 = *MEMORY[0x1E69E9840];
  PBDataWriterPlaceMark();
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 16))(v3, v5, v6);
  if (!v2)
  {
    result = PBDataWriterRecallMark();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0()
{
  v0 = *MEMORY[0x1E696A388];
  v1 = sub_1B1A7CA88();
  v3 = v2;
  if (v1 == sub_1B1A7CA88() && v3 == v4)
  {

LABEL_13:
    if (qword_1EDB76A30 != -1)
    {
      swift_once();
    }

    v14 = *(*qword_1EDB77100 + 136);

    LOBYTE(v14) = *v14(v15);

    if ((v14 & 1) == 0)
    {
      if (MKBDeviceUnlockedSinceBoot() != 1)
      {
        return 0;
      }

      v16 = *(*qword_1EDB77100 + 136);

      *v16(v17) = 1;
    }

    return 1;
  }

  v6 = sub_1B1A7CFB8();

  if (v6)
  {
    goto LABEL_13;
  }

  v7 = *MEMORY[0x1E696A398];
  v8 = sub_1B1A7CA88();
  v10 = v9;
  if (v8 != sub_1B1A7CA88() || v10 != v11)
  {
    v13 = sub_1B1A7CFB8();

    if (v13)
    {
      return MKBGetDeviceLockState() == 0;
    }

    return 1;
  }

  return MKBGetDeviceLockState() == 0;
}

uint64_t sub_1B1A46E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for DataFrameStreamContainer()
{
  result = qword_1EDB76A90;
  if (!qword_1EDB76A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1A46F50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B1A46FB0(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  v15 = *v1;
  v16 = *(v1 + 1);
  v17 = *(v1 + 10);
  v18 = 2;
  result = sub_1B1A47098(a1, &v18);
  if (!v2)
  {
    if (v6)
    {
      return 0;
    }

    v7 = result;
    v8 = atomic_fetch_add((*(v4 + 16) + 16), 1u) + 1;
    result = v8 - 1;
    if (v8)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v7))
        {
          v9 = 8 * (v8 - 1) + 8;
          v10 = *(v3 + 16);
          v11 = *(v10 + 32);
          v12 = __OFSUB__(v11, v9);
          v13 = v11 - v9;
          if (!v12)
          {
            v14 = *(v10 + 16) + v13;
            *v14 = v7;
            *(v14 + 4) = 1;
            return result;
          }

LABEL_13:
          __break(1u);
          return result;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B1A47098(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(v2 + 32);
  v5 = *(*(v2 + 24) + 16);
  v6 = atomic_load((v5 + 8));
  while (1)
  {
    v7 = v6;
    if (v3)
    {
      if (v3 == 1)
      {
        v8 = 4;
      }

      else
      {
        v8 = 8;
      }

      v9 = v6 + v8;
      if (__OFADD__(v6, v8))
      {
        goto LABEL_36;
      }

      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        goto LABEL_37;
      }

      v12 = v11 / v8;
      v7 = v12 * v8;
      if ((v12 * v8) >> 64 != (v12 * v8) >> 63)
      {
        goto LABEL_38;
      }
    }

    if (!v6)
    {
      v10 = __OFADD__(v7, 32);
      v7 += 32;
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v13 = v7 + a1;
    if (__OFADD__(v7, a1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        v14 = 4;
      }

      else
      {
        v14 = 8;
      }

      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        goto LABEL_39;
      }

      v10 = __OFSUB__(v15, 1);
      v16 = v15 - 1;
      if (v10)
      {
        goto LABEL_40;
      }

      v17 = v16 / v14;
      v13 = v17 * v14;
      if ((v17 * v14) >> 64 != (v17 * v14) >> 63)
      {
        goto LABEL_41;
      }
    }

    if (v13 < v7)
    {
      goto LABEL_34;
    }

    v18 = atomic_load((v5 + 16));
    v19 = 8 * v18 + 8;
    v20 = *(*(v4 + 16) + 32);
    v21 = v20 - v19;
    if (__OFSUB__(v20, v19))
    {
      goto LABEL_35;
    }

    if (v7 >= v21)
    {
      if (qword_1EDB764F0 == -1)
      {
LABEL_27:
        v24 = type metadata accessor for InternalLogger();
        __swift_project_value_buffer(v24, qword_1EDB770A8);
        sub_1B1A7CEC8();

        v25 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v25);

        MEMORY[0x1B2736400](0xD000000000000017, 0x80000001B1A818B0);
        v26 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v26);

        v27 = 0xD000000000000016;
        v28 = 0x80000001B1A81890;
        goto LABEL_31;
      }

LABEL_43:
      swift_once();
      goto LABEL_27;
    }

    if (v13 > v21)
    {
      break;
    }

    v22 = v6;
    atomic_compare_exchange_strong((v5 + 8), &v22, v13);
    v23 = v22 == v6;
    v6 = v22;
    if (v23)
    {
      return v7;
    }
  }

  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v29, qword_1EDB770A8);
  sub_1B1A7CEC8();
  MEMORY[0x1B2736400](0xD00000000000001CLL, 0x80000001B1A818F0);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](3943982, 0xE300000000000000);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](0, 0xE000000000000000);

  MEMORY[0x1B2736400](0xD00000000000002ALL, 0x80000001B1A81910);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](3943982, 0xE300000000000000);
  sub_1B1A7CF18();
  MEMORY[0x1B2736400](0, 0xE000000000000000);

  v27 = 0;
  v28 = 0xE000000000000000;
LABEL_31:
  sub_1B1A561C0(v27, v28, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000019, 0x80000001B1A818D0);

  sub_1B1A6ABE8();
  v7 = swift_allocError();
  *(v30 + 4) = -1;
  *v30 = 0;
  swift_willThrow();
  return v7;
}

unint64_t sub_1B1A47538(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B1A7C808();
  sub_1B1A475BC(&qword_1EDB76848);
  v5 = sub_1B1A7CA28();

  return sub_1B1A47FE8(a1, v5);
}

uint64_t sub_1B1A475BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B1A7C808();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DataFrameStreamSegment.append(data:compressed:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *v3;
  v7 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = *(v3 + 10);
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v13 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v12 != 2)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v16)
  {
    __break(1u);
LABEL_8:
    LODWORD(v13) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v13 = v13;
  }

LABEL_11:
  if (v11 < 0x40)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v13 > v11 - 64)
  {
    sub_1B1A6ABE8();
    swift_allocError();
    *(v17 + 4) = -4;
    *v17 = 0;
    return swift_willThrow();
  }

  if (v12 <= 1)
  {
    if (!v12)
    {
      v19 = BYTE6(a2);
      v20 = BYTE6(a2);
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  if (v12 != 2)
  {
    goto LABEL_29;
  }

  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v19 = v21 - v22;
  if (__OFSUB__(v21, v22))
  {
    __break(1u);
LABEL_21:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v19 = HIDWORD(a1) - a1;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (HIDWORD(v19))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v12 == 2)
  {
    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v16 = __OFSUB__(v23, v24);
    v20 = v23 - v24;
    if (!v16)
    {
      goto LABEL_32;
    }

    __break(1u);
LABEL_29:
    v19 = 0;
    v20 = 0;
    goto LABEL_32;
  }

  LODWORD(v20) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v20 = v20;
LABEL_32:
  if (__OFADD__(v20, 24))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  result = sub_1B1A46FB0(v20 + 24);
  if (v4)
  {
    return result;
  }

  if (v27)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_36:
      v28 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v28, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v29 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v29);

      sub_1B1A561D8(0xD000000000000024, 0x80000001B1A81610, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000018, 0x80000001B1A81640);

      return 0;
    }

LABEL_48:
    swift_once();
    goto LABEL_36;
  }

  v30 = result;
  v31 = a3 & 1 | (v19 << 32);
  v32 = v26;
  result = sub_1B1A481F4(v31, 0, 0, v26);
  if (__OFADD__(v32, 24))
  {
    __break(1u);
    goto LABEL_50;
  }

  result = MemoryMappedRegion.write(data:at:)(a1, a2, v32 + 24);
  v33 = 8 * v30 + 8;
  v34 = *(v10 + 16);
  v35 = *(v34 + 32);
  v16 = __OFSUB__(v35, v33);
  v36 = v35 - v33;
  if (v16)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  atomic_exchange((*(v34 + 16) + v36 + 4), 2u);
  v37 = *(*(v9 + 16) + 24);
  result = v37 + v30;
  if (__CFADD__(v37, v30))
  {
LABEL_51:
    __break(1u);
  }

  return result;
}

uint64_t MemoryMappedRegion.write(data:at:)(uint64_t a1, unint64_t a2, int64_t a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_50;
    }

    v5 = v5;
  }

LABEL_11:
  v8 = __OFADD__(a3, v5);
  v9 = a3 + v5;
  if (v8)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v9 < a3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = v3[3];
  v11 = v3[4];
  v13 = v10 > a3 || v11 < a3;
  if (v9 < v10 || v11 < v9 || v13)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_27:
      v16 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v16, qword_1EDB770A8);
      sub_1B1A7CEC8();

      sub_1B1A7CF18();
      MEMORY[0x1B2736400](3943982, 0xE300000000000000);
      sub_1B1A7CF18();
      MEMORY[0x1B2736400](0, 0xE000000000000000);

      sub_1B1A561D8(0xD000000000000011, 0x80000001B1A817F0, 0xD00000000000005FLL, 0x80000001B1A81810, 0x6164286574697277, 0xEF293A74613A6174);

      return 0;
    }

LABEL_48:
    swift_once();
    goto LABEL_27;
  }

  v17 = v3[2];
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      return v9;
    }

    v19 = v9;
    v20 = a3;
    v21 = a1;
    v22 = *(a1 + 16);
    v23 = sub_1B1A7C6D8();
    if (!v23)
    {
      goto LABEL_56;
    }

    v24 = v23;
    v25 = sub_1B1A7C708();
    if (__OFSUB__(v22, v25))
    {
      goto LABEL_51;
    }

    v26 = (v22 - v25 + v24);
    a1 = sub_1B1A7C6F8();
    if (!v26)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v27 = *(v21 + 16);
    v9 = *(v21 + 24);
    a3 = v9 - v27;
    if (__OFSUB__(v9, v27))
    {
      goto LABEL_53;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_44:
      memmove((v17 + v20), v26, a3);
      return v19;
    }

    __break(1u);
  }

  else if (!v4)
  {
    __src = a1;
    v35 = a2;
    v36 = BYTE2(a2);
    v37 = BYTE3(a2);
    v38 = BYTE4(a2);
    v39 = BYTE5(a2);
    v18 = v9;
    memcpy((v17 + a3), &__src, BYTE6(a2));
    return v18;
  }

  v28 = a1;
  if (a1 > a1 >> 32)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v19 = v9;
  v20 = a3;
  v29 = a1;
  v30 = sub_1B1A7C6D8();
  if (!v30)
  {
LABEL_58:
    result = sub_1B1A7C6F8();
    goto LABEL_59;
  }

  v31 = v30;
  v32 = sub_1B1A7C708();
  if (__OFSUB__(v28, v32))
  {
    goto LABEL_52;
  }

  v26 = (v28 - v32 + v31);
  result = sub_1B1A7C6F8();
  if (v26)
  {
    a3 = (HIDWORD(v29) - v29);
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      if ((a3 & 0x80000000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_1B1A7C6F8();
    goto LABEL_57;
  }

LABEL_59:
  __break(1u);
  return result;
}

id PBDataWriter.write(_:forTag:)(uint64_t a1, uint64_t a2)
{
  sub_1B1A7C8C8();

  return [v2 writeDouble:a2 forTag:?];
}

uint64_t type metadata accessor for StorageContainer()
{
  result = qword_1EDB76AF8;
  if (!qword_1EDB76AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1B1A47DC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StorageContainer();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B1A47E6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B1A47EE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StorageContainer();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_1B1A47F94()
{
  result = qword_1EDB764B0;
  if (!qword_1EDB764B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB764B0);
  }

  return result;
}

unint64_t sub_1B1A47FE8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B1A7C808();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1B1A475BC(&qword_1EDB76840);
      v16 = sub_1B1A7CA48();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1B1A48194(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B1A481F4(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  result = a4 + 24;
  if (__OFADD__(a4, 24))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (result < a4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = v4[3];
  v8 = v4[4];
  v10 = v7 > a4 || v8 < a4;
  v12 = result < v7 || v8 < result || v10;
  if (v12)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_17:
      v13 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v13, qword_1EDB770A8);
      sub_1B1A7CEC8();

      sub_1B1A7CF18();
      MEMORY[0x1B2736400](3943982, 0xE300000000000000);
      sub_1B1A7CF18();
      MEMORY[0x1B2736400](0, 0xE000000000000000);

      sub_1B1A561D8(0xD000000000000011, 0x80000001B1A817F0, 0xD00000000000005FLL, 0x80000001B1A81810, 0xD000000000000019, 0x80000001B1A81870);

      return 0;
    }

LABEL_21:
    swift_once();
    goto LABEL_17;
  }

  v14 = v4[2] + a4;
  *v14 = a1 & 1;
  *(v14 + 4) = HIDWORD(a1);
  *(v14 + 8) = a2;
  *(v14 + 16) = a3;
  return result;
}

uint64_t sub_1B1A48408@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B1A7CA88();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B1A48444()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1A48490()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B1A484D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B1A55464();
  *a2 = result;
  return result;
}

__n128 sub_1B1A48530(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B1A4853C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A7C988();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B1A485A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A7C988();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B1A48618()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1A48650()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1A48698()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1A486D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1A48714()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B1A48780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1A7C808();
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

uint64_t sub_1B1A4883C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B1A7C808();
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

uint64_t sub_1B1A488F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageContainer();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B1A48960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageContainer();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B1A489D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1A48A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A7C908();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B1A48A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1A7C908();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B1A48B54(uint64_t a1, int a2)
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

uint64_t sub_1B1A48B74(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1A48BC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t sub_1B1A48C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

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

uint64_t sub_1B1A48CA4(uint64_t a1, int a2)
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

uint64_t sub_1B1A48CC4(uint64_t result, int a2, int a3)
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

uint64_t sub_1B1A48D10(uint64_t a1, int a2)
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

uint64_t sub_1B1A48D30(uint64_t result, int a2, int a3)
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

_DWORD *sub_1B1A48D80@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B1A48D9C(uint64_t a1, id *a2)
{
  result = sub_1B1A7CA68();
  *a2 = 0;
  return result;
}

uint64_t sub_1B1A48E14(uint64_t a1, id *a2)
{
  v3 = sub_1B1A7CA78();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B1A48E94@<X0>(uint64_t *a1@<X8>)
{
  sub_1B1A7CA88();
  v2 = sub_1B1A7CA58();

  *a1 = v2;
  return result;
}

uint64_t sub_1B1A48EE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B1A7CA88();
  v6 = v5;
  if (v4 == sub_1B1A7CA88() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B1A7CFB8();
  }

  return v9 & 1;
}

uint64_t sub_1B1A48F74(uint64_t a1)
{
  v2 = sub_1B1A49280(&qword_1EB75E398, type metadata accessor for FileProtectionType);
  v3 = sub_1B1A49280(&qword_1EB75E3A0, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B1A49030(uint64_t a1)
{
  v2 = sub_1B1A49280(&qword_1EDB76498, type metadata accessor for FileAttributeKey);
  v3 = sub_1B1A49280(&unk_1EB75E3D0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B1A490EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B1A7CA58();

  *a2 = v5;
  return result;
}

uint64_t sub_1B1A49134(uint64_t a1)
{
  v2 = sub_1B1A49280(&qword_1EB75E3A8, type metadata accessor for URLResourceKey);
  v3 = sub_1B1A49280(&unk_1EB75E3B0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B1A49280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1A493E8()
{
  v1 = *v0;
  v2 = sub_1B1A7CA88();
  v3 = MEMORY[0x1B2736470](v2);

  return v3;
}

uint64_t sub_1B1A49424()
{
  v1 = *v0;
  sub_1B1A7CA88();
  sub_1B1A7CB18();
}

uint64_t sub_1B1A49478()
{
  v1 = *v0;
  sub_1B1A7CA88();
  sub_1B1A7D058();
  sub_1B1A7CB18();
  v2 = sub_1B1A7D098();

  return v2;
}

void sub_1B1A49500(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t WireTypes.description.getter(int a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x544E49524156;
      case 1:
        return 0x34364445584946;
      case 2:
        return 0xD000000000000010;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x32334445584946;
    }

    if (a1 == 6)
    {
      return 0x544E554F43;
    }

    return 0x4E574F4E4B4E55;
  }

  if (a1 == 3)
  {
    return 0x52475F5452415453;
  }

  else
  {
    return 0x554F52475F444E45;
  }
}

void sub_1B1A497F4(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(unint64_t, uint64_t))
{
  v8 = v7;
  v9 = v6;
  v73 = *MEMORY[0x1E69E9840];
  v65 = *a1;
  v11 = *a4;
  if ([v9 hasMoreData])
  {
    v58 = a3;
    v63 = v11;
    v64 = v9;
    do
    {
      v15 = [v9 position];
      v16 = v8;
      v17 = sub_1B1A4AC04();
      if (v8)
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v21, qword_1EDB770A8);
      LODWORD(v69) = v19;
      v71 = sub_1B1A7CF98();
      v72 = v22;
      MEMORY[0x1B2736400](2112032, 0xE300000000000000);
      v23 = WireTypes.description.getter(v20);
      v25 = v24;
      v59 = v23;
      MEMORY[0x1B2736400]();
      v61 = v25;

      MEMORY[0x1B2736400](2113568, 0xE300000000000000);
      v69 = v15;
      v26 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v26);

      sub_1B1A561C0(v71, v72, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000003DLL, 0x80000001B1A80590);

      if (a6)
      {

        v27 = a6(v19, v20);
        sub_1B1A4C3CC(a6);
        if (v27)
        {
          break;
        }
      }

      if (v11)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1B1A79178(0, *(v63 + 16) + 1, 1, v63);
        }

        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v11 = sub_1B1A79178((v28 > 1), v29 + 1, 1, v11);
        }

        *(v11 + 16) = v30;
        v31 = (v11 + 4 * v29 + 32);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E448, &qword_1B1A7E378);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1B1A7E110;
        v31 = (v11 + 32);
        v30 = 1;
      }

      v32 = HIDWORD(v19);
      *v31 = v19;
      v33 = a2;
      swift_retain_n();
      v34 = 0;
      do
      {
        if (v34 >= *(v11 + 16))
        {
          __break(1u);

          goto LABEL_47;
        }

        v35 = *(v11 + 4 * v34 + 32);
        swift_beginAccess();
        v36 = *(v33 + 16);
        if (!*(v36 + 16) || (v37 = sub_1B1A71800(v35), (v38 & 1) == 0))
        {

LABEL_26:
          if (!v65)
          {
            goto LABEL_27;
          }

          goto LABEL_3;
        }

        ++v34;
        v39 = *(*(v36 + 56) + 8 * v37);

        v33 = v39;
      }

      while (v30 != v34);
      v40 = *(v39 + 24);

      if ((v40 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_1B1A5E4BC(&v71, v11);

      if (v65)
      {
LABEL_27:
        if (v20 == 2)
        {
          v62 = HIDWORD(v19);
          v60 = 1;
LABEL_31:
          v41 = *(v11 + 16);
          if (v41)
          {
            v42 = 0;
            v43 = a2;
            while (1)
            {
              if (v42 >= *(v11 + 16))
              {
                __break(1u);
              }

              v44 = *(v11 + 4 * v42 + 32);
              swift_beginAccess();
              v45 = *(v43 + 16);
              if (!*(v45 + 16))
              {
                break;
              }

              v46 = sub_1B1A71800(v44);
              if ((v47 & 1) == 0)
              {
                break;
              }

              ++v42;
              v48 = *(*(v45 + 56) + 8 * v46);

              v43 = v48;
              if (v41 == v42)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
LABEL_37:

            v71 = 0;
            v72 = 0xE000000000000000;
            sub_1B1A7CEC8();
            v69 = v11;
            v49 = ProtoTagPath.description.getter();
            v51 = v50;

            v71 = v49;
            v72 = v51;
            MEMORY[0x1B2736400](0xD00000000000002DLL, 0x80000001B1A805D0);
            sub_1B1A561C0(v71, v72, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000003DLL, 0x80000001B1A80590);

            if (v60)
            {
              v71 = 0;
              v72 = 0;
              [v64 mark_];
              v69 = 0;
              PBDataWriterPlaceMark();
              v68 = v65;
              v70 = v11;
              sub_1B1A497F4(&v68, a2, v58, &v70, a5, 0, 0);
              v8 = v16;

              PBDataWriterRecallMark();
              [v64 recall_];
              v9 = v64;
              v11 = v63;
              continue;
            }

            if (v20 == 3)
            {
              LOBYTE(v69) = v65;
              v71 = v11;
              v53 = swift_allocObject();
              *(v53 + 16) = v19;
              sub_1B1A497F4(&v69, a2, v58, &v71, a5, sub_1B1A4C4D4, v53);
            }
          }

          v52 = v58;
          LOBYTE(v32) = v62;
        }

        else
        {
          if (v20 == 3)
          {
            v62 = HIDWORD(v19);
            v60 = 0;
            goto LABEL_31;
          }

          v52 = v58;
        }

        v9 = v64;
        sub_1B1A4AD74(v19, v20, v32, v52);
        v8 = 0;
        v11 = v63;
        continue;
      }

LABEL_3:

      v71 = 0x3A676E696E757250;
      v72 = 0xE900000000000020;
      v69 = v11;
      v12 = ProtoTagPath.description.getter();
      v14 = v13;

      MEMORY[0x1B2736400](v12, v14);

      sub_1B1A561C0(v71, v72, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000003DLL, 0x80000001B1A80590);

      v9 = v64;
      v8 = v16;
      v11 = v63;
      if (([v64 skipValueWithTag:v19 type:BYTE4(v19)] & 1) == 0)
      {
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1B1A7CEC8();

        v71 = 0x6F6E20646C756F43;
        v72 = 0xEF2070696B732074;
        LODWORD(v69) = v19;
        v54 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v54);

        MEMORY[0x1B2736400](2112032, 0xE300000000000000);
        MEMORY[0x1B2736400](v59, v61);

        sub_1B1A561D8(v71, v72, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000003DLL, 0x80000001B1A80590);

        sub_1B1A4C0E4();
        swift_allocError();
        *v55 = 0;
        *(v55 + 4) = 1;
        swift_willThrow();
        break;
      }
    }

    while (([v9 hasMoreData] & 1) != 0);
  }

LABEL_47:
  v56 = *MEMORY[0x1E69E9840];
}

void static PBDataReader.pluck(tagPath:data:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v5 = sub_1B1A7C878();
  v6 = [v4 initWithData_];

  if (v6)
  {
    v8 = v3;
    sub_1B1A4A198(&v8, a2);
  }

  else
  {
    sub_1B1A4C0E4();
    swift_allocError();
    *v7 = 0;
    *(v7 + 4) = 1;
    swift_willThrow();
  }
}

double sub_1B1A4A198@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E450, &unk_1B1A7E380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1A7E110;
  *(inited + 32) = v4;
  v6 = inited + 32;
  v7 = sub_1B1A6F390(inited);
  swift_setDeallocating();

  sub_1B1A4C468(v6);
  v8 = sub_1B1A4E6F0(v7);
  v11 = 0;
  sub_1B1A4A3D4(&v14, &v12, v8, &v11, 0);

  if (!v2)
  {

    v10 = v13;
    result = *&v12;
    *a2 = v12;
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t static PBDataReader.pluck(tagTree:data:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v6 = sub_1B1A7C878();
  v7 = [v5 initWithData_];

  if (v7)
  {

    v9 = sub_1B1A4E6F0(v8);
    v13 = 0;
    sub_1B1A4A3D4(&v16, &v14, v9, &v13, 0);

    if (!v2)
    {
      v11 = v15;
      *a1 = v16;
      *a2 = v14;
      *(a2 + 16) = v11;
    }
  }

  else
  {
    sub_1B1A4C0E4();
    swift_allocError();
    *v12 = 0;
    *(v12 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_1B1A4A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(unint64_t, uint64_t))
{
  v7 = v6;
  v8 = a5;
  v72 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v64 = *a4;
  v10 = [v5 hasMoreData];
  while (2)
  {
    if (v10)
    {
      v11 = [v5 position];
      v12 = sub_1B1A4AC04();
      if (v7)
      {
        break;
      }

      v14 = v12;
      v15 = v13;
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v16, qword_1EDB770A8);
      v70 = sub_1B1A7CF98();
      v71 = v17;
      MEMORY[0x1B2736400](2112032, 0xE300000000000000);
      v18 = WireTypes.description.getter(v15);
      v20 = v19;
      v63 = v18;
      MEMORY[0x1B2736400]();

      MEMORY[0x1B2736400](2113568, 0xE300000000000000);
      v69 = v11;
      v21 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v21);

      sub_1B1A561C0(v70, v71, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000024, 0x80000001B1A80470);

      if (v8)
      {

        v22 = v8(v14, v15);
        sub_1B1A4C3CC(v8);
        if (v22)
        {
          *v60 = 0;
          *v61 = xmmword_1B1A7E120;
          *(v61 + 16) = 1;
          break;
        }
      }

      v62 = v20;
      if (v9)
      {

        v23 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1B1A79178(0, *(v9 + 16) + 1, 1, v9);
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          v23 = sub_1B1A79178((v24 > 1), v25 + 1, 1, v23);
        }

        *(v23 + 16) = v26;
        v27 = (v23 + 4 * v25 + 32);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E448, &qword_1B1A7E378);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1B1A7E110;
        v27 = (v23 + 32);
        v26 = 1;
      }

      v28 = HIDWORD(v14);
      *v27 = v14;
      v29 = a3;
      swift_retain_n();
      v30 = 0;
      do
      {
        if (v30 >= *(v23 + 16))
        {
          __break(1u);
LABEL_47:
          __break(1u);
        }

        v31 = *(v23 + 4 * v30 + 32);
        swift_beginAccess();
        v32 = *(v29 + 16);
        if (!*(v32 + 16) || (v33 = sub_1B1A71800(v31), (v34 & 1) == 0))
        {

          goto LABEL_25;
        }

        ++v30;
        v35 = *(*(v32 + 56) + 8 * v33);

        v29 = v35;
      }

      while (v26 != v30);
      v36 = *(v35 + 24);

      if (v36)
      {

        *v60 = v23;
        sub_1B1A4B6B8(v14, v15, v61);
        break;
      }

LABEL_25:
      v67 = v14;
      v37 = v15;
      v38 = v28;
      v39 = *(v23 + 16);
      if (v39)
      {
        v40 = 0;
        v41 = a3;
        while (1)
        {
          if (v40 >= *(v23 + 16))
          {
            goto LABEL_47;
          }

          v42 = *(v23 + 4 * v40 + 32);
          swift_beginAccess();
          v43 = *(v41 + 16);
          if (!*(v43 + 16))
          {
            break;
          }

          v44 = sub_1B1A71800(v42);
          if ((v45 & 1) == 0)
          {
            break;
          }

          ++v40;
          v46 = *(*(v43 + 56) + 8 * v44);

          v41 = v46;
          if (v39 == v40)
          {
            goto LABEL_34;
          }
        }

        v5 = v66;
        v7 = 0;
        v9 = v64;
        v8 = a5;
        if ([v66 skipValueWithTag:v67 type:v38])
        {
          v10 = [v66 hasMoreData];
          continue;
        }

        sub_1B1A7CEC8();

        v70 = 0x6F6E20646C756F43;
        v71 = 0xEF2070696B732074;
        LODWORD(v69) = v67;
        v59 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v59);

        MEMORY[0x1B2736400](2112032, 0xE300000000000000);
        MEMORY[0x1B2736400](v63, v62);

        v55 = 0x6F6E20646C756F43;
        v56 = 0xEF2070696B732074;
        goto LABEL_41;
      }

LABEL_34:

      sub_1B1A7CEC8();
      v69 = v23;
      v47 = ProtoTagPath.description.getter();
      v49 = v48;

      v71 = v49;
      MEMORY[0x1B2736400](0xD00000000000002CLL, 0x80000001B1A804A0);
      sub_1B1A561C0(v47, v49, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000024, 0x80000001B1A80470);

      if (v37 == 3)
      {
        v70 = v23;
        v50 = swift_allocObject();
        *(v50 + 16) = v67;
        sub_1B1A4A3D4(v60, v61, a3, &v70, sub_1B1A4C3B8, v50);
      }

      else
      {
        if (v37 != 2)
        {
          sub_1B1A7CEC8();
          v51 = ProtoTagPath.description.getter();
          v53 = v52;

          v70 = v51;
          v71 = v53;
          MEMORY[0x1B2736400](0xD000000000000028, 0x80000001B1A804D0);
          v69 = __PAIR64__(HIDWORD(v23), v67);
          v54 = sub_1B1A7CF98();
          MEMORY[0x1B2736400](v54);

          v55 = v51;
          v56 = v53;
LABEL_41:
          sub_1B1A561D8(v55, v56, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000024, 0x80000001B1A80470);
          goto LABEL_42;
        }

        v70 = 0;
        v71 = 0;
        if (([v66 mark_] & 1) == 0)
        {
LABEL_42:

          sub_1B1A4C0E4();
          swift_allocError();
          *v57 = 0;
          *(v57 + 4) = 1;
          swift_willThrow();
          break;
        }

        v69 = v23;
        sub_1B1A4A3D4(v60, v61, a3, &v69, 0, 0);
      }
    }

    else
    {
      *v60 = 0;
      *v61 = xmmword_1B1A7E120;
      *(v61 + 16) = 1;
    }

    break;
  }

  v58 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1B1A4AC04()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = 0;
  [v0 readTag:&v6 type:&v5];
  if ([v0 hasError])
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v1, qword_1EDB770A8);
    sub_1B1A561D8(0x2064616572206270, 0xEE002E726F727265, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000016, 0x80000001B1A80570);
    sub_1B1A4C0E4();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    result = swift_willThrow();
  }

  else
  {
    result = v6 | (v5 << 32);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1A4AD74(uint64_t a1, int a2, unsigned __int8 a3, id a4)
{
  v5 = a4;
  if (a2 <= 1)
  {
    if (!a2)
    {
      [a4 writeTag:a1 andType:a3];
      v24 = [v4 readVarInt];
      if ((v24 & 0x8000000000000000) == 0)
      {
        [v5 writeBareVarint_];
        return;
      }

      __break(1u);
      goto LABEL_23;
    }

    if (a2 == 1)
    {
      [a4 writeFixed64:objc_msgSend(v4 forTag:{sel_readFixed64), a1}];
      return;
    }

LABEL_17:
    LODWORD(v5) = a2;
    if (qword_1EDB764F0 == -1)
    {
LABEL_18:
      v25 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v25, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v26 = WireTypes.description.getter(v5);
      MEMORY[0x1B2736400](v26);

      sub_1B1A561D8(0xD000000000000012, 0x80000001B1A80500, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000021, 0x80000001B1A80540);

      sub_1B1A4C0E4();
      swift_allocError();
      *v27 = v5;
      *(v27 + 4) = 0;
      swift_willThrow();
      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_18;
  }

  switch(a2)
  {
    case 2:
      v7 = [v4 readBytes_];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1B1A7C888();
        v11 = v10;

        sub_1B1A4C414(v9, v11);
        v12 = sub_1B1A7C878();
        sub_1B1A4696C(v9, v11);
      }

      else
      {
        v12 = 0;
        v9 = 0;
        v11 = 0xF000000000000000;
      }

      [v5 writeData:v12 forTag:a1];

      sub_1B1A4C400(v9, v11);
      break;
    case 3:
      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      *(v13 + 24) = a1;
      *(v13 + 32) = v5;
      v14 = type metadata accessor for BlockShimForPBCodable();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error] = 0;
      v16 = &v15[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
      *v16 = sub_1B1A4C4BC;
      v16[1] = v13;
      v28.receiver = v15;
      v28.super_class = v14;
      v17 = v4;
      v18 = v5;

      v19 = objc_msgSendSuper2(&v28, sel_init);
      if (v19)
      {
        v20 = v19;
        PBDataWriterWriteSubgroup();
        v21 = *&v20[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error];
        if (v21)
        {
          v22 = *&v20[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error];
          swift_willThrow();
          v23 = v21;
        }
      }

      else
      {
        __break(1u);
      }

      break;
    case 5:
      [a4 writeFixed32:objc_msgSend(v4 forTag:{sel_readFixed32), a1}];
      return;
    default:
      goto LABEL_17;
  }
}

void sub_1B1A4B134(void *a1, int a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if ([a1 hasMoreData])
  {
    v6 = 0x1E7AF1000;
    v7 = 0x1E7AF1000;
    v8 = &OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error;
    do
    {
      LODWORD(v37) = 0;
      v39 = 0;
      [a1 *(v6 + 2112)];
      if ([a1 *(v7 + 2120)])
      {
        if (qword_1EDB764F0 != -1)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      v16 = v37;
      if (v37 == a2)
      {
        if (v39 > 2u)
        {
          if (v39 != 3)
          {
            if (v39 != 5)
            {
              if (v39 == 4)
              {
                break;
              }

LABEL_36:
              v32 = v39;
              if (qword_1EDB764F0 != -1)
              {
                swift_once();
              }

              v33 = type metadata accessor for InternalLogger();
              __swift_project_value_buffer(v33, qword_1EDB770A8);
              v37 = 0;
              v38 = 0xE000000000000000;
              sub_1B1A7CEC8();

              v37 = 0xD000000000000012;
              v38 = 0x80000001B1A80500;
              v34 = WireTypes.description.getter(v32);
              MEMORY[0x1B2736400](v34);

              sub_1B1A561D8(v37, v38, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000021, 0x80000001B1A80540);

              sub_1B1A4C0E4();
              swift_allocError();
              *v35 = v32;
              *(v35 + 4) = 0;
              goto LABEL_32;
            }

            goto LABEL_21;
          }

          goto LABEL_24;
        }

        if (v39)
        {
          if (v39 == 1)
          {
            goto LABEL_23;
          }

LABEL_3:
          v9 = v8;
          v10 = [a1 readBytes_];
          if (v10)
          {
            v11 = v10;
            v12 = sub_1B1A7C888();
            v14 = v13;

            sub_1B1A4C414(v12, v14);
            v15 = sub_1B1A7C878();
            sub_1B1A4696C(v12, v14);
          }

          else
          {
            v15 = 0;
            v12 = 0;
            v14 = 0xF000000000000000;
          }

          [a3 writeData:v15 forTag:v16];

          sub_1B1A4C400(v12, v14);
          v6 = 0x1E7AF1000uLL;
          v8 = v9;
          goto LABEL_6;
        }
      }

      else
      {
        if (v39 > 1u)
        {
          if (v39 == 2)
          {
            goto LABEL_3;
          }

          if (v39 != 3)
          {
            if (v39 != 5)
            {
              goto LABEL_36;
            }

LABEL_21:
            [a3 writeFixed32:objc_msgSend(a1 forTag:{sel_readFixed32), v37}];
            continue;
          }

LABEL_24:
          v17 = swift_allocObject();
          *(v17 + 16) = a1;
          *(v17 + 24) = v16;
          *(v17 + 32) = a3;
          v18 = type metadata accessor for BlockShimForPBCodable();
          v19 = objc_allocWithZone(v18);
          *&v19[*v8] = 0;
          v20 = &v19[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
          *v20 = sub_1B1A4C4BC;
          *(v20 + 1) = v17;
          v36.receiver = v19;
          v36.super_class = v18;
          v21 = a1;
          v22 = a3;

          v23 = objc_msgSendSuper2(&v36, sel_init);
          if (!v23)
          {
            __break(1u);
          }

          v24 = v23;
          PBDataWriterWriteSubgroup();
          v25 = *&v24[*v8];
          if (v25)
          {
            v30 = *&v24[*v8];
            swift_willThrow();
            v31 = v25;

            break;
          }

          v6 = 0x1E7AF1000;
LABEL_6:
          v7 = 0x1E7AF1000uLL;
          continue;
        }

        if (v39)
        {
LABEL_23:
          [a3 writeFixed64:objc_msgSend(a1 forTag:{sel_readFixed64), v37}];
          continue;
        }
      }

      [a3 writeTag:v37 andType:?];
      v26 = [a1 readVarInt];
      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_40:
        swift_once();
LABEL_31:
        v27 = type metadata accessor for InternalLogger();
        __swift_project_value_buffer(v27, qword_1EDB770A8);
        sub_1B1A561D8(0x2064616572206270, 0xEE002E726F727265, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000016, 0x80000001B1A80570);
        sub_1B1A4C0E4();
        swift_allocError();
        *v28 = 0;
        *(v28 + 4) = 1;
LABEL_32:
        swift_willThrow();
        break;
      }

      [a3 writeBareVarint_];
    }

    while (([a1 hasMoreData] & 1) != 0);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void sub_1B1A4B6B8(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (!a2)
    {
      *a3 = [v4 readVarInt];
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      goto LABEL_55;
    }

    if (a2 != 1)
    {
LABEL_16:
      LODWORD(v15) = a2;
      if (qword_1EDB764F0 != -1)
      {
        goto LABEL_60;
      }

      goto LABEL_17;
    }

    v6 = [v4 readFixed64];
    v7 = 0x2000000000000000;
    *a3 = v6;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    v8 = [v4 readBytes_];
    if (!v8)
    {
      goto LABEL_62;
    }

    v9 = v8;
    v10 = sub_1B1A7C888();
    v12 = v11;

    v7 = v12 | 0x3000000000000000;
    *a3 = v10;
LABEL_11:
    *(a3 + 8) = v7;
    *(a3 + 16) = 0;
    goto LABEL_55;
  }

  if (a2 != 3)
  {
    if (a2 == 5)
    {
      *a3 = [v4 readFixed32];
      *(a3 + 8) = 0x1000000000000000;
      *(a3 + 16) = 0;
      goto LABEL_55;
    }

    goto LABEL_16;
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
  if (!v14)
  {
    goto LABEL_63;
  }

  v15 = v14;
  if (![v4 hasMoreData])
  {
LABEL_51:
    v42 = [v15 immutableData];
    if (v42)
    {
      v43 = v42;
      v44 = sub_1B1A7C888();
      v46 = v45;

      *a3 = v44;
      *(a3 + 8) = v46;
    }

    else
    {

      *a3 = xmmword_1B1A7E120;
    }

    *(a3 + 16) = 1;
    goto LABEL_55;
  }

  v16 = 0x1E7AF1000;
  v17 = 0x1E7AF1000;
  while (1)
  {
    LODWORD(v54) = 0;
    v53 = 0;
    [v4 *(v16 + 2112)];
    if ([v4 *(v17 + 2120)])
    {
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v38, qword_1EDB770A8);
      sub_1B1A561D8(0x2064616572206270, 0xEE002E726F727265, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000016, 0x80000001B1A80570);
      sub_1B1A4C0E4();
      swift_allocError();
      *v39 = 0;
      *(v39 + 4) = 1;
      goto LABEL_48;
    }

    v27 = v54;
    if (v54 == a1)
    {
      if (v53 > 2u)
      {
        if (v53 != 3)
        {
          if (v53 != 5)
          {
            if (v53 == 4)
            {
              goto LABEL_51;
            }

LABEL_56:
            v48 = v53;
            if (qword_1EDB764F0 != -1)
            {
              swift_once();
            }

            v49 = type metadata accessor for InternalLogger();
            __swift_project_value_buffer(v49, qword_1EDB770A8);
            v54 = 0;
            v55 = 0xE000000000000000;
            sub_1B1A7CEC8();

            v54 = 0xD000000000000012;
            v55 = 0x80000001B1A80500;
            v50 = WireTypes.description.getter(v48);
            MEMORY[0x1B2736400](v50);

            sub_1B1A561D8(v54, v55, 0xD000000000000060, 0x80000001B1A80400, 0xD000000000000021, 0x80000001B1A80540);

            sub_1B1A4C0E4();
            swift_allocError();
            *v51 = v48;
            *(v51 + 4) = 0;
LABEL_48:
            swift_willThrow();

            goto LABEL_55;
          }

          goto LABEL_36;
        }

LABEL_39:
        v28 = swift_allocObject();
        *(v28 + 16) = v4;
        *(v28 + 24) = v27;
        *(v28 + 32) = v15;
        v29 = type metadata accessor for BlockShimForPBCodable();
        v30 = objc_allocWithZone(v29);
        *&v30[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error] = 0;
        v31 = &v30[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_block];
        *v31 = sub_1B1A4C3DC;
        v31[1] = v28;
        v52.receiver = v30;
        v52.super_class = v29;
        v32 = v4;

        v33 = v15;
        v34 = objc_msgSendSuper2(&v52, sel_init);
        if (!v34)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          return;
        }

        v35 = v34;
        PBDataWriterWriteSubgroup();
        v36 = *&v35[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error];
        if (v36)
        {
          v40 = *&v35[OBJC_IVAR____TtC8Dendrite21BlockShimForPBCodable_error];
          swift_willThrow();
          v41 = v36;

          goto LABEL_55;
        }

        goto LABEL_21;
      }

      if (!v53)
      {
        goto LABEL_42;
      }

      if (v53 == 1)
      {
        goto LABEL_38;
      }

      goto LABEL_18;
    }

    if (v53 <= 1u)
    {
      break;
    }

    if (v53 != 2)
    {
      if (v53 != 3)
      {
        if (v53 != 5)
        {
          goto LABEL_56;
        }

LABEL_36:
        [v15 writeFixed32:objc_msgSend(v4 forTag:{sel_readFixed32), v54}];
        goto LABEL_22;
      }

      goto LABEL_39;
    }

LABEL_18:
    v21 = [v4 readBytes_];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1B1A7C888();
      v25 = v24;

      sub_1B1A4C414(v23, v25);
      v26 = sub_1B1A7C878();
      sub_1B1A4696C(v23, v25);
    }

    else
    {
      v26 = 0;
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    [v15 writeData:v26 forTag:v27];

    sub_1B1A4C400(v23, v25);
LABEL_21:
    v16 = 0x1E7AF1000uLL;
    v17 = 0x1E7AF1000uLL;
LABEL_22:
    if (([v4 hasMoreData] & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (v53)
  {
LABEL_38:
    [v15 writeFixed64:objc_msgSend(v4 forTag:{sel_readFixed64), v54}];
    goto LABEL_22;
  }

LABEL_42:
  [v15 writeTag:v54 andType:?];
  v37 = [v4 readVarInt];
  if ((v37 & 0x8000000000000000) == 0)
  {
    [v15 writeBareVarint_];
    goto LABEL_22;
  }

  __break(1u);
LABEL_60:
  swift_once();
LABEL_17:
  v18 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v18, qword_1EDB770A8);
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v54 = 0xD000000000000012;
  v55 = 0x80000001B1A80500;
  v19 = WireTypes.description.getter(v15);
  MEMORY[0x1B2736400](v19);

  sub_1B1A561D8(v54, v55, 0xD000000000000060, 0x80000001B1A80400, 0xD00000000000001FLL, 0x80000001B1A80520);

  sub_1B1A4C0E4();
  swift_allocError();
  *v20 = v15;
  *(v20 + 4) = 0;
  swift_willThrow();
LABEL_55:
  v47 = *MEMORY[0x1E69E9840];
}

void sub_1B1A4BEC0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69C65B8]);
  v10 = sub_1B1A7C878();
  v11 = [v9 initWithData_];

  if (!v11)
  {
    sub_1B1A4C0E4();
    swift_allocError();
    *v13 = 0;
    *(v13 + 4) = 1;
    swift_willThrow();
    return;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      a3 = BYTE6(a4);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v12 != 2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  a3 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      goto LABEL_19;
    }

    a3 = HIDWORD(a3) - a3;
  }

LABEL_13:
  v16 = [objc_allocWithZone(MEMORY[0x1E69C65C0]) initWithInitialCapacity_];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v24 = MEMORY[0x1E69E7CD0];
  LOBYTE(v22) = v8;
  Set<>.optimized(for:)(&v22, a2);

  v19 = sub_1B1A4E6F0(v18);
  v23 = v8;
  v22 = 0;
  sub_1B1A497F4(&v23, v19, v17, &v22, &v24, 0);
  if (v4)
  {

    return;
  }

  v20 = [v17 immutableData];
  if (v20)
  {
    v21 = v20;

    sub_1B1A7C888();

    return;
  }

LABEL_20:
  __break(1u);
}

unint64_t sub_1B1A4C0E4()
{
  result = qword_1EB75E440;
  if (!qword_1EB75E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E440);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_8Dendrite9WireValueO(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 60) & 3 | (4 * (*(a1 + 16) & 1));
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1A4C18C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 17))
  {
    return (*a1 + 1019);
  }

  v3 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
  if (v3 >= 0x3FA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1A4C1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 16) = 0;
    *result = a2 - 1019;
    *(result + 8) = 0;
    if (a3 >= 0x3FB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1B1A4C240(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 16) = a2 == 4;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0x1000000000000000;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProtoTagTreeOperationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProtoTagTreeOperationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B1A4C2E8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1A4C308(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_1B1A4C3CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B1A4C400(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B1A4696C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B1A4C414(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B1A4C520@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v8 = type metadata accessor for DataFrameStreamTypedIterator.Element();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 40);

  return v9(v10, a3, a4);
}

uint64_t sub_1B1A4C5B8(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_1B1A4C5C8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_1B1A4C5E0(__int128 *a1, char a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 64) = 0;
  *(v6 + 88) = 0;
  sub_1B1A4E364(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 92) = a3;
  return v6;
}

uint64_t sub_1B1A4C648(__int128 *a1, char a2, char a3)
{
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 88) = 0;
  *(v3 + 80) = 0;
  sub_1B1A4E364(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 92) = a3;
  return v3;
}

uint64_t sub_1B1A4C694()
{
  v1 = v0;
  v2 = sub_1B1A7C808();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DataFrameStreamContainer();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1A4E37C(v0 + 16, &v40);
  v11 = v43;
  __swift_project_boxed_opaque_existential_1(&v40, v43);
  v12 = (*(*(&v11 + 1) + 16))(v11, *(&v11 + 1));
  if (!v12)
  {
    __swift_destroy_boxed_opaque_existential_1(&v40);
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v26, qword_1EDB770A8);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v45 = 0xD000000000000016;
    v46 = 0x80000001B1A80710;
    sub_1B1A4E37C(v0 + 16, &v40);
    v27 = v43;
    __swift_project_boxed_opaque_existential_1(&v40, v43);
    (*(*(&v27 + 1) + 8))(v27, *(&v27 + 1));
    (*(v3 + 16))(v6, &v10[*(v7 + 20)], v2);
    sub_1B1A4DCF4(v10);
    sub_1B1A4DD9C();
    v28 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v28);

    (*(v3 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    sub_1B1A561C0(v45, v46, 0xD00000000000006FLL, 0x80000001B1A80620, 0x6D6765537478656ELL, 0xED00002928746E65);

    return 0;
  }

  v13 = v12;
  __swift_destroy_boxed_opaque_existential_1(&v40);
  v14 = *(v1 + 80);
  v15 = v39;
  if (!v14 || (v16 = v13[2]) == 0)
  {
LABEL_11:
    v22 = v13[2];
    if (*(v1 + 56) == 1)
    {
      if (!v22)
      {
        goto LABEL_27;
      }

      v23 = &v13[2 * v22 + 2];
      v24 = v23 + 1;
      v25 = 1;
    }

    else
    {
      if (!v22)
      {
        goto LABEL_27;
      }

      v25 = 0;
      v23 = v13 + 4;
      v24 = v13 + 5;
    }

LABEL_25:
    v29 = *v23;
    v30 = *v24;

    sub_1B1A4E37C(v1 + 16, &v45);
    v31 = v47;
    v32 = v48;
    __swift_project_boxed_opaque_existential_1(&v45, v47);
    (*(v32 + 24))(&v40, v29, v30, v31, v32);
    if (v15)
    {

      return __swift_destroy_boxed_opaque_existential_1(&v45);
    }

    v33 = v41;
    if (v41)
    {
      v34 = v44;
      v35 = v42;
      v36 = v40;
      v39 = v43;
      __swift_destroy_boxed_opaque_existential_1(&v45);
      v37 = *(v1 + 80);
      *(v1 + 72) = v29;
      *(v1 + 80) = v30;

      type metadata accessor for DataFrameStreamSegment.Iterator();
      result = swift_allocObject();
      *(result + 76) = 0;
      *(result + 80) = 1;
      v38 = v39;
      *(result + 24) = *(*(v39 + 16) + 24);
      *(result + 32) = v36;
      *(result + 40) = v33;
      *(result + 48) = v35;
      *(result + 56) = v38;
      *(result + 72) = v34;
      *(result + 16) = v25;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(&v45);
    return 0;
  }

  v17 = 0;
  v18 = 0;
  v19 = *(v1 + 72);
  while (1)
  {
    result = v13[v17 + 4];
    if (result == v19 && v14 == v13[v17 + 5])
    {
      break;
    }

    result = sub_1B1A7CFB8();
    if (result)
    {
      break;
    }

    ++v18;
    v17 += 2;
    if (v16 == v18)
    {
      goto LABEL_11;
    }
  }

  if (*(v1 + 56) != 1)
  {
    if (v18 < v13[2] - 1)
    {
      v25 = 0;
      v23 = &v13[v17 + 6];
      v24 = &v13[v17 + 7];
      goto LABEL_25;
    }

LABEL_27:

    return 0;
  }

  if (!v18)
  {
    goto LABEL_27;
  }

  if (v18 <= v13[2])
  {
    v23 = &v13[v17 + 2];
    v24 = &v13[v17 + 3];
    v25 = 1;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A4CB90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v99 = *v1;
  v3 = *(v99 + 80);
  v107 = *(v3 - 8);
  v4 = *(v107 + 64);
  v5 = (MEMORY[0x1EEE9AC00])();
  v84 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v81 - v7;
  v92 = sub_1B1A7C808();
  v91 = *(v92 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1A7CE18();
  v98 = *(v10 - 8);
  v11 = *(v98 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v86 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v97 = &v81 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v81 - v19;
  v21 = type metadata accessor for DataFrameStreamContainer();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v1 + 2;
  sub_1B1A4E37C((v1 + 2), &v110);
  v25 = v113;
  v26 = v114;
  __swift_project_boxed_opaque_existential_1(&v110, v113);
  (*(v26 + 8))(v25, v26);
  v87 = v21;
  v27 = &v24[*(v21 + 20)];
  v28 = *&v27[*(type metadata accessor for StorageContainer() + 20)];
  LOBYTE(v27) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  v88 = v24;
  sub_1B1A4DCF4(v24);
  __swift_destroy_boxed_opaque_existential_1(&v110);
  if (v27)
  {
    v29 = v107;
    (*(v107 + 56))(v20, 1, 1, v3);
    v30 = v98;
    v31 = *(v98 + 16);
    v96 = v20;
    v104 = v31;
    v105 = v98 + 16;
    v31(v18, v20, v10);
    v32 = *(v29 + 48);
    v106 = v18;
    v102 = v32;
    v103 = v29 + 48;
    v33 = v32(v18, 1, v3);
    v34 = *(v30 + 8);
    v101 = v30 + 8;
    if (v33 == 1)
    {
      v35 = 0;
      v81 = (v30 + 32);
      v36 = 1;
      v98 = v10;
      v37 = v96;
      v94 = v2;
      v100 = v34;
      v93 = v3;
      while (2)
      {
        v82 = v36;
        v83 = v35;
        v38 = v106;
        while (1)
        {
          v34(v38, v10);
          if (v2[8])
          {
            v42 = v2[8];
          }

          else
          {
            v42 = sub_1B1A4C694();
            v43 = v2[8];
            v10 = v98;
          }

          v2[8] = v42;

          if (!v2[8])
          {
            v69 = *(v99 + 88);
            v70 = type metadata accessor for DataFrameStreamTypedIterator.Element();
            (*(*(v70 - 8) + 56))(v95, 1, 1, v70);
            goto LABEL_25;
          }

          v44 = v2[8];

          sub_1B1A759A8(&v110);
          v45 = v113;
          if (v113 >> 60 != 15)
          {
            break;
          }

          v39 = v2[8];
          v2[8] = 0;

          v38 = v106;
          v104(v106, v37, v10);
          v40 = v102(v38, 1, v3);
          v41 = v107;
          v34 = v100;
          if (v40 != 1)
          {
            v47 = v83;
            LODWORD(v83) = v82;
            v57 = v95;
            goto LABEL_19;
          }
        }

        v46 = v110;
        v47 = v111;
        v48 = v112;
        v49 = *(v99 + 88);
        v50 = v3;
        v51 = *(v49 + 16);
        sub_1B1A4C414(v112, v113);
        v51(v48, v45, v50, v49);
        v37 = v96;
        v52 = v98;
        v53 = v100;
        v100(v96, v98);
        sub_1B1A4DE0C(v46, v47, v48, v45);

        (*v81)(v37, v97, v52);
        v54 = v46;
        v10 = v52;
        sub_1B1A4DE0C(v54, v47, v48, v45);
        v55 = v106;
        v104(v106, v37, v10);
        v3 = v93;
        v56 = v102(v55, 1, v93);
        v34 = v53;
        v36 = 0;
        LODWORD(v83) = 0;
        v35 = v47;
        v57 = v95;
        v2 = v94;
        v41 = v107;
        if (v56 == 1)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v41 = v29;
      LODWORD(v83) = 1;
      v47 = 0;
      v57 = v95;
      v37 = v96;
    }

LABEL_19:
    v71 = v34;
    v34(v106, v10);
    v72 = v86;
    v104(v86, v37, v10);
    if (v102(v72, 1, v3) == 1)
    {
      v71(v72, v10);
LABEL_23:
      v76 = *(v99 + 88);
      v77 = type metadata accessor for DataFrameStreamTypedIterator.Element();
      (*(*(v77 - 8) + 56))(v57, 1, 1, v77);
      sub_1B1A4D96C(v37, v2);
      return (v71)(v37, v10);
    }

    v100 = v71;
    v73 = v72;
    v74 = *(v41 + 32);
    v75 = v85;
    v74(v85, v73, v3);
    if (v83)
    {
      (*(v41 + 8))(v75, v3);
      v71 = v100;
      goto LABEL_23;
    }

    LODWORD(v107) = *(v2 + 22);
    v78 = v84;
    v74(v84, v75, v3);
    v79 = *(v99 + 88);
    *v57 = v107;
    *(v57 + 8) = v47;
    v80 = type metadata accessor for DataFrameStreamTypedIterator.Element();
    v74((v57 + *(v80 + 40)), v78, v3);
    (*(*(v80 - 8) + 56))(v57, 0, 1, v80);
LABEL_25:
    sub_1B1A4D96C(v37, v2);
    return (v100)(v37, v10);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v58, qword_1EDB770A8);
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v108 = 0xD000000000000018;
    v109 = 0x80000001B1A80600;
    sub_1B1A4E37C(v89, &v110);
    v59 = v113;
    v60 = v114;
    __swift_project_boxed_opaque_existential_1(&v110, v113);
    v61 = v88;
    (*(v60 + 8))(v59, v60);
    v62 = v91;
    v63 = v90;
    v64 = v92;
    (*(v91 + 16))(v90, v61 + *(v87 + 20), v92);
    sub_1B1A4DCF4(v61);
    sub_1B1A4DD9C();
    v65 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v65);

    (*(v62 + 8))(v63, v64);
    __swift_destroy_boxed_opaque_existential_1(&v110);
    sub_1B1A561D8(v108, v109, 0xD00000000000006FLL, 0x80000001B1A80620, 0x29287478656ELL, 0xE600000000000000);

    v66 = *(v99 + 88);
    v67 = type metadata accessor for DataFrameStreamTypedIterator.Element();
    return (*(*(v67 - 8) + 56))(v95, 1, 1, v67);
  }
}

uint64_t sub_1B1A4D96C(uint64_t a1, _DWORD *a2)
{
  v4 = *(*a2 + 80);
  v5 = sub_1B1A7CE18();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v14 - v8;
  (*(v6 + 16))(&v14 - v8, a1, v5);
  LODWORD(a1) = (*(*(v4 - 8) + 48))(v9, 1, v4);
  result = (*(v6 + 8))(v9, v5);
  if (a1 != 1)
  {
    v11 = a2[22];
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      a2[22] = v13;
    }
  }

  return result;
}

uint64_t *DataFrameStreamTypedIterator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return v0;
}

uint64_t DataFrameStreamTypedIterator.__deallocating_deinit()
{
  DataFrameStreamTypedIterator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A4DB28@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(**v1 + 264))();

  *a1 = v3;
  return result;
}

uint64_t sub_1B1A4DBA0(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  type metadata accessor for DataFrameStreamTypedIterator();
  v4 = sub_1B1A54E2C();
  v5 = *v1;

  return v4;
}

void sub_1B1A4DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for DataFrameStreamTypedIterator();

  JUMPOUT(0x1B27364B0);
}

uint64_t sub_1B1A4DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for DataFrameStreamTypedIterator();
  return sub_1B1A7CBF8();
}

uint64_t sub_1B1A4DCF4(uint64_t a1)
{
  v2 = type metadata accessor for DataFrameStreamContainer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1B1A4DD9C()
{
  result = qword_1EDB76838;
  if (!qword_1EDB76838)
  {
    sub_1B1A7C808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76838);
  }

  return result;
}

uint64_t sub_1B1A4DE0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    return sub_1B1A4696C(a3, a4);
  }

  return result;
}

uint64_t sub_1B1A4DF48(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1A4DFD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1B1A4E138(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

uint64_t sub_1B1A4E364(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B1A4E37C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B1A4E460()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A4E4B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {

LABEL_20:
    *(a2 + 24) = 1;
  }

  v4 = (a1 + 32);

  v5 = a2;
  while (1)
  {
    v9 = *v4++;
    v8 = v9;
    swift_beginAccess();
    v10 = *(v5 + 16);
    if (*(v10 + 16) && (v11 = sub_1B1A71800(v8), (v12 & 1) != 0))
    {
      a2 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E460, &qword_1B1A7E590);
      a2 = swift_allocObject();
      *(a2 + 16) = MEMORY[0x1E69E7CC8];
      *(a2 + 24) = 0;
    }

    swift_beginAccess();

    v13 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    v16 = sub_1B1A71800(v8);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_1B1A718DC(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1B1A71800(v8);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v26 = v16;
    sub_1B1A7305C();
    v16 = v26;
    if (v22)
    {
LABEL_3:
      v6 = v15[7];
      v7 = *(v6 + 8 * v16);
      *(v6 + 8 * v16) = a2;

      goto LABEL_4;
    }

LABEL_15:
    v15[(v16 >> 6) + 8] |= 1 << v16;
    *(v15[6] + 4 * v16) = v8;
    *(v15[7] + 8 * v16) = a2;
    v24 = v15[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_22;
    }

    v15[2] = v25;
LABEL_4:
    *(v5 + 16) = v15;
    swift_endAccess();

    v5 = a2;
    if (!--v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1B1A7CFF8();
  __break(1u);
  return result;
}

uint64_t sub_1B1A4E6F0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E460, &qword_1B1A7E590);
  result = swift_allocObject();
  v3 = result;
  v4 = 0;
  v5 = *(a1 + 56);
  *(result + 16) = MEMORY[0x1E69E7CC8];
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  *(result + 24) = 0;
  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v5) != 0)
  {
    do
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(*(a1 + 48) + ((v10 << 9) | (8 * v11)));

      sub_1B1A4E4B0(v13, v3);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v3;
    }

    v8 = *(a1 + 56 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A4E824()
{
  v1 = *v0;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](v1);
  return sub_1B1A7D098();
}

uint64_t sub_1B1A4E898()
{
  v1 = *v0;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](v1);
  return sub_1B1A7D098();
}

uint64_t sub_1B1A4E8DC(void *a1, uint64_t a2)
{
  v3[5] = a2;
  v5 = a2 + 24;
  if (__OFADD__(a2, 24))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v5 < a2)
  {
LABEL_23:
    __break(1u);
    swift_once();
    v12 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v12, qword_1EDB770A8);
    sub_1B1A7CEC8();
    MEMORY[0x1B2736400](0xD000000000000019, 0x80000001B1A808C0);
    v13 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v13);

    MEMORY[0x1B2736400](0xD000000000000014, 0x80000001B1A808E0);
    v14 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v14);

    MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A80900);
    sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000062, 0x80000001B1A807E0, 0xD000000000000021, 0x80000001B1A80920);

    goto LABEL_19;
  }

  v2 = v3;
  v6 = a1[4];
  v7 = a1[3] > a2 || v6 < a2;
  if (v7 || v6 < v5)
  {
    goto LABEL_20;
  }

  v9 = a1[2] + a2;
  v2[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E478, &qword_1B1A7E6A8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v2[4] = v10;
  v11 = sub_1B1A6BD44(0, 0, 1, *(v9 + 4));
  v15 = v2[5];
  v16 = v15 + 24;
  if (__OFADD__(v15, 24))
  {
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16 + v11;
  if (__OFADD__(v16, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v17 < v16)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_17;
  }

  v18 = a1[3];
  if (v16 >= v18)
  {
    v19 = a1[4];
    if (v16 <= v19 && v17 >= v18 && v19 >= v17)
    {
      v20 = a1[2];

      v2[3] = v20 + v16;
      return v2;
    }
  }

  if (qword_1EDB764F0 != -1)
  {
    goto LABEL_27;
  }

LABEL_17:
  v21 = type metadata accessor for InternalLogger();
  __swift_project_value_buffer(v21, qword_1EDB770A8);
  sub_1B1A7CEC8();
  result = MEMORY[0x1B2736400](0xD00000000000001ALL, 0x80000001B1A80950);
  if (!__OFADD__(v2[5], 24))
  {
    v23 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v23);

    MEMORY[0x1B2736400](0xD000000000000016, 0x80000001B1A80970);
    v24 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v24);

    MEMORY[0x1B2736400](0xD000000000000014, 0x80000001B1A808E0);
    v25 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v25);

    MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A80900);
    sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000062, 0x80000001B1A807E0, 0xD000000000000021, 0x80000001B1A80920);

LABEL_19:
    v26 = v2[4];
LABEL_20:

    type metadata accessor for DataFrameReader();
    swift_deallocPartialClassInstance();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A4ED8C()
{
  v1 = *(*(*(v0 + 32) + 16) + 4);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v1 <= 0xE)
  {
    return sub_1B1A4F9CC(v2, &v2[v1]);
  }

  v3 = sub_1B1A7C728();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B1A7C6C8();
  if (v1 < 0x7FFFFFFF)
  {
    return v1 << 32;
  }

  sub_1B1A7C868();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_1B1A4EE44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = atomic_load((v5 + 9));
  v7 = 2048;
  while (1)
  {
    if (atomic_load((v5 + 8)))
    {
      goto LABEL_5;
    }

    v12 = *(*(v4 + 16) + 4);
    if (v12)
    {
      v13 = *(a1 + 24);
      if (v12 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v22 = v12;
        memcpy(__dst, v13, v12);
        result = *__dst;
        v2 = v2 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v22 << 16)) << 32);
        v9 = v2;
      }

      else
      {
        v14 = sub_1B1A7C728();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();
        v17 = sub_1B1A7C6C8();
        if (v12 >= 0x7FFFFFFF)
        {
          sub_1B1A7C868();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v12;
          v9 = v17 | 0x8000000000000000;
        }

        else
        {
          result = v12 << 32;
          v9 = v17 | 0x4000000000000000;
        }
      }
    }

    else
    {
      result = 0;
      v9 = 0xC000000000000000;
    }

    v10 = atomic_load((v5 + 9));
    if (v10 == v6)
    {
      break;
    }

    sub_1B1A4696C(result, v9);
    v6 = v10;
LABEL_5:
    if (!--v7)
    {
      sub_1B1A50208();
      swift_allocError();
      *v18 = 0;
      result = swift_willThrow();
      goto LABEL_15;
    }
  }

  *a2 = result;
  a2[1] = v9;
LABEL_15:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1A4F008(void (*a1)(uint64_t, unint64_t), uint64_t a2)
{
  v37 = a1;
  v36[1] = a2;
  v42 = sub_1B1A7C808();
  v3 = *(*(v42 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v42);
  v41 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = v2;
  v6 = 0x80000001B1A807B0;
  v7 = *(*(v2 + 32) + 16);
  v44 = "e state, current state was: ";
  v45 = "g to acquire write lock.";
  v40 = (v8 + 8);
  v4.n128_u64[0] = 136315650;
  v39 = v4;
  v9 = 1;
  v43 = v7;
  do
  {
    v11 = 0;
    v10 = v9;
    atomic_compare_exchange_strong((v7 + 8), &v11, 1u);
    v47 = v11 == 0;
    if (!v11)
    {
      break;
    }

    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v12, qword_1EDB770A8);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v49 = 0xD00000000000002CLL;
    v50 = v6;
    LOBYTE(v51) = v11;
    v13 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v13);

    MEMORY[0x1B2736400](41, 0xE100000000000000);
    v14 = v50;
    v48 = v49;

    v15 = sub_1B1A7C978();
    v16 = sub_1B1A7CD88();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v17 = v39.n128_u32[0];
      v18 = v41;
      sub_1B1A7C798();
      v19 = v10;
      v20 = v6;
      v21 = sub_1B1A7C7A8();
      v23 = v22;
      (*v40)(v18, v42);
      v24 = v21;
      v6 = v20;
      v10 = v19;
      v25 = sub_1B1A56884(v24, v23, &v49);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1B1A56884(0xD00000000000001BLL, v45 | 0x8000000000000000, &v49);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_1B1A56884(v48, v14, &v49);
      _os_log_impl(&dword_1B1A45000, v15, v16, "[%s: %s] %s", v17, 0x20u);
      v26 = v46;
      swift_arrayDestroy();
      MEMORY[0x1B27370E0](v26, -1, -1);
      v27 = v17;
      v7 = v43;
      MEMORY[0x1B27370E0](v27, -1, -1);
    }

    v9 = v10 + 1;
  }

  while ((v10 - 1) < 0x800);
  if (v10 != 1)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v28, qword_1EDB770A8);
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v49 = 0x206E757053;
    v50 = 0xE500000000000000;
    v51 = v10;
    v29 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v29);

    MEMORY[0x1B2736400](0xD000000000000028, 0x80000001B1A80870);
    sub_1B1A561C0(v49, v50, 0xD000000000000062, v44 | 0x8000000000000000, 0xD00000000000001BLL, v45 | 0x8000000000000000);
  }

  if (v47)
  {
    atomic_store(2u, (v7 + 8));
    atomic_fetch_add((v7 + 9), 1u);
    v30 = sub_1B1A4ED8C();
    v32 = v31;
    v33 = v38;
    v37(v30, v31);
    sub_1B1A4696C(v30, v32);
    if (!v33)
    {
      atomic_fetch_add((v7 + 9), 1u);
    }

    atomic_store(0, (v7 + 8));
  }

  else
  {
    sub_1B1A50208();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1B1A4F534()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DataFrameConsistencyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataFrameConsistencyError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B1A4F704()
{
  result = qword_1EB75E468;
  if (!qword_1EB75E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E468);
  }

  return result;
}

uint64_t sub_1B1A4F758@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v28[0] = result;
      LOWORD(v28[1]) = a2;
      BYTE2(v28[1]) = BYTE2(a2);
      BYTE3(v28[1]) = BYTE3(a2);
      BYTE4(v28[1]) = BYTE4(a2);
      BYTE5(v28[1]) = BYTE5(a2);
      v10 = a5 >> 62;
      result = *(a3 + 24);
      if ((a5 >> 62) > 1)
      {
        if (v10 != 2)
        {
LABEL_41:
          v12 = 0;
          goto LABEL_42;
        }

        v25 = *(a4 + 16);
        v11 = *(a4 + 24);
        v12 = v11 - v25;
        if (!__OFSUB__(v11, v25))
        {
          goto LABEL_31;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v10)
      {
        LODWORD(v11) = HIDWORD(a4) - a4;
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v12 = v11;
LABEL_31:
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_33;
        }

        goto LABEL_48;
      }

LABEL_28:
      v12 = BYTE6(a5);
      goto LABEL_42;
    }

    v20 = result;
    v21 = (result >> 32) - result;
    if (result >> 32 >= result)
    {
      v29 = a6;
      v15 = sub_1B1A7C6D8();
      if (!v15)
      {
        goto LABEL_19;
      }

      result = sub_1B1A7C708();
      if (!__OFSUB__(v20, result))
      {
        v15 += v20 - result;
LABEL_19:
        v22 = sub_1B1A7C6F8();
        if (v22 >= v21)
        {
          v19 = v21;
        }

        else
        {
          v19 = v22;
        }

        goto LABEL_22;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (v9 == 2)
  {
    v29 = a6;
    v14 = *(result + 16);
    v13 = *(result + 24);
    result = sub_1B1A7C6D8();
    v15 = result;
    if (result)
    {
      result = sub_1B1A7C708();
      if (__OFSUB__(v14, result))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v15 += v14 - result;
    }

    v16 = __OFSUB__(v13, v14);
    v17 = v13 - v14;
    if (!v16)
    {
      v18 = sub_1B1A7C6F8();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

LABEL_22:
      v23 = &v15[v19];
      if (v15)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      sub_1B1A6A6E0(v15, v24, a3, a4, a5);
      goto LABEL_43;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  memset(v28, 0, 14);
  result = *(a3 + 24);
  v11 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v11)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

LABEL_33:
  v12 = 0;
  if (v11 != 2)
  {
    goto LABEL_42;
  }

  v27 = *(a4 + 16);
  v26 = *(a4 + 24);
  v12 = v26 - v27;
  if (!__OFSUB__(v26, v27))
  {
    goto LABEL_39;
  }

  __break(1u);
LABEL_37:
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v12 = HIDWORD(a4) - a4;
LABEL_39:
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_41;
    }

LABEL_42:
    memcpy(result, v28, v12);
LABEL_43:

    return sub_1B1A4696C(a4, a5);
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1B1A4F9CC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1A4FA84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, unsigned int a9, unint64_t *a10)
{
  v74 = a5;
  v71 = a8;
  v72 = a7;
  v73 = a6;
  v76 = a3;
  v77 = a4;
  v78 = a2;
  v69 = a10;
  v70 = a9;
  v82 = sub_1B1A7C808();
  v11 = *(*(v82 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v82);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 32);
  v87 = 0x80000001B1A807B0;
  v16 = *(v15 + 16);
  v83 = "e state, current state was: ";
  v84 = "aFrameReader.swift";
  v80 = (v17 + 8);
  v13.n128_u64[0] = 136315650;
  v79 = v13;
  v18 = 1;
  do
  {
    v20 = 0;
    v19 = v18;
    atomic_compare_exchange_strong((v16 + 8), &v20, 1u);
    v21 = v20 == 0;
    if (!v20)
    {
      break;
    }

    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v22, qword_1EDB770A8);
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v89 = 0xD00000000000002CLL;
    v90 = v87;
    LOBYTE(v91) = v20;
    v23 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v23);

    MEMORY[0x1B2736400](41, 0xE100000000000000);
    v24 = v90;
    v88 = v89;

    v25 = sub_1B1A7C978();
    v26 = sub_1B1A7CD88();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v86 = v21;
      v28 = v27;
      v85 = swift_slowAlloc();
      v89 = v85;
      *v28 = v79.n128_u32[0];
      v29 = v81;
      sub_1B1A7C798();
      v30 = v19;
      v31 = sub_1B1A7C7A8();
      v32 = v16;
      v34 = v33;
      (*v80)(v29, v82);
      v35 = v31;
      v19 = v30;
      v36 = sub_1B1A56884(v35, v34, &v89);
      v16 = v32;

      *(v28 + 4) = v36;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1B1A56884(0xD000000000000015, v84 | 0x8000000000000000, &v89);
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_1B1A56884(v88, v24, &v89);
      _os_log_impl(&dword_1B1A45000, v25, v26, "[%s: %s] %s", v28, 0x20u);
      v37 = v85;
      swift_arrayDestroy();
      MEMORY[0x1B27370E0](v37, -1, -1);
      v38 = v28;
      v21 = v86;
      MEMORY[0x1B27370E0](v38, -1, -1);
    }

    v18 = v19 + 1;
  }

  while ((v19 - 1) <= 0x7FF);
  if (v19 != 1)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v39, qword_1EDB770A8);
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v89 = 0x206E757053;
    v90 = 0xE500000000000000;
    v91 = v19;
    v40 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v40);

    MEMORY[0x1B2736400](0xD000000000000028, 0x80000001B1A80870);
    sub_1B1A561C0(v89, v90, 0xD000000000000062, v83 | 0x8000000000000000, 0xD000000000000015, v84 | 0x8000000000000000);
  }

  if (!v21)
  {
    sub_1B1A50208();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
    goto LABEL_54;
  }

  atomic_store(2u, (v16 + 8));
  atomic_fetch_add((v16 + 9), 1u);
  v41 = *(v78 + 32);
  v42 = atomic_load((*(v41 + 16) + 4));
  if (v42)
  {
    bzero(*(v78 + 24), v42);
  }

  v43 = v77 >> 62;
  if ((v77 >> 62) > 1)
  {
    if (v43 != 2)
    {
      if (v42)
      {
        LODWORD(v52) = 0;
        v53 = *(v41 + 16);
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    v46 = *(v76 + 16);
    v45 = *(v76 + 24);
    v47 = __OFSUB__(v45, v46);
    v48 = v45 - v46;
    if (v47)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v48 <= v42)
    {
      goto LABEL_27;
    }

LABEL_23:
    v49 = v75;
    v50 = v73(v12);
    if (!v49)
    {
      if (v51)
      {
        goto LABEL_53;
      }

      v54 = v71;
      v55 = 8 * v70 + 8;
      v56 = *(*(v71 + 32) + 16);
      v57 = *(v56 + 32);
      v47 = __OFSUB__(v57, v55);
      v58 = v57 - v55;
      if (!v47)
      {
        atomic_exchange((*(v56 + 16) + v58 + 4), 5u);
        atomic_fetch_add((*(*(v54 + 24) + 16) + 20), 1u);
        atomic_store(v50, (*(v41 + 16) + 16));
        *v74 = 1;
        v59 = v69;
        *v69 = v50;
        *(v59 + 8) = 0;
        goto LABEL_53;
      }

      goto LABEL_60;
    }

    atomic_store(0, (v16 + 8));
LABEL_54:

    return;
  }

  if (!v43)
  {
    if (BYTE6(v77) <= v42)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (__OFSUB__(HIDWORD(v76), v76))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (HIDWORD(v76) - v76 > v42)
  {
    goto LABEL_23;
  }

LABEL_27:
  if (v43 == 2)
  {
    v61 = *(v76 + 16);
    v60 = *(v76 + 24);
    v47 = __OFSUB__(v60, v61);
    v62 = v60 - v61;
    if (v47)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v62 == v42)
    {
      goto LABEL_52;
    }

    goto LABEL_42;
  }

  if (v43 != 1)
  {
    if (BYTE6(v77) != v42)
    {
      goto LABEL_42;
    }

LABEL_52:
    v65 = v78;

    v67 = v76;
    v66 = v77;
    sub_1B1A4C414(v76, v77);
    sub_1B1A4F758(v67, v66, v65, v67, v66, v68);
    *v74 = 1;
LABEL_53:
    atomic_fetch_add((v16 + 9), 1u);
    atomic_store(0, (v16 + 8));
    goto LABEL_54;
  }

  if (__OFSUB__(HIDWORD(v76), v76))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (HIDWORD(v76) - v76 == v42)
  {
    goto LABEL_52;
  }

LABEL_42:
  v53 = *(v41 + 16);
  if (v43 != 2)
  {
    if (v43 != 1)
    {
LABEL_50:
      LODWORD(v52) = BYTE6(v77);
      goto LABEL_51;
    }

    LODWORD(v52) = HIDWORD(v76) - v76;
    if (__OFSUB__(HIDWORD(v76), v76))
    {
      goto LABEL_61;
    }

    v52 = v52;
    goto LABEL_47;
  }

  v64 = *(v76 + 16);
  v63 = *(v76 + 24);
  v47 = __OFSUB__(v63, v64);
  v52 = v63 - v64;
  if (!v47)
  {
LABEL_47:
    if ((v52 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v52))
      {
        __break(1u);
        goto LABEL_50;
      }

LABEL_51:
      atomic_store(v52, (v53 + 4));
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_62:
  __break(1u);
}

unint64_t sub_1B1A50208()
{
  result = qword_1EB75E470;
  if (!qword_1EB75E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E470);
  }

  return result;
}

unint64_t sub_1B1A5025C()
{
  result = sub_1B1A502E8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StorageContainer();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B1A502E8()
{
  result = qword_1EDB76858[0];
  if (!qword_1EDB76858[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDB76858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamContainer.ConfigurationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 5))
  {
    return (*a1 + 127);
  }

  v3 = ((*(a1 + 4) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 4) >> 1) & 0x3F))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DataFrameStreamContainer.ConfigurationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 4) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1B1A50430()
{
  v67[2] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1A7C768();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1A7C808();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - v13;
  v15 = type metadata accessor for DataFrameStreamContainer();
  v16 = *(v15 + 24);
  v17 = *(v0 + v16);
  if ((v17 | (*(v0 + v16 + 4) << 32)) < 0)
  {
    v63 = v17 | (*(v0 + v16 + 4) << 32);
    v64 = v14;
    v60 = v16;
    v61 = v12;
    v65 = v1;
    v66 = v17;
    v62 = v8;
    v18 = v0 + *(v15 + 20);
    v19 = *(v18 + *(type metadata accessor for StorageContainer() + 20));
    if (_s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0())
    {
      v59 = v0;
      v67[0] = 0x6769666E6F63;
      v67[1] = 0xE600000000000000;
      (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v2);
      sub_1B1A47F94();
      sub_1B1A7C7F8();
      (*(v3 + 8))(v6, v2);
      v20 = [objc_opt_self() defaultManager];
      LOBYTE(v67[0]) = 0;
      sub_1B1A7C7E8();
      v21 = sub_1B1A7CA58();

      v22 = [v20 fileExistsAtPath:v21 isDirectory:v67];

      if (v22)
      {
        v23 = v65;
        LODWORD(v24) = v66;
        v25 = v61;
        v26 = v62;
        v27 = v7;
        if ((v67[0] & 1) == 0)
        {
          v28 = v64;
          v29 = sub_1B1A7C828();
          if (v23)
          {
            (*(v62 + 8))(v28, v27);
            goto LABEL_18;
          }

          v44 = v29;
          v45 = v30;
          v46 = sub_1B1A7C678();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          swift_allocObject();
          sub_1B1A7C668();
          sub_1B1A53670();
          sub_1B1A7C658();
          sub_1B1A4696C(v44, v45);

          if ((v63 & 0x100000000) != 0 || LODWORD(v67[0]) == v66)
          {
            v33 = *(v62 + 8);
            v66 = LODWORD(v67[0]);
            goto LABEL_24;
          }

          sub_1B1A7C7D8();
          v50 = _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0();
          v33 = *(v62 + 8);
          v33(v25, v27);
          if (v50)
          {
            v51 = sub_1B1A7C6A8();
            v52 = *(v51 + 48);
            v53 = *(v51 + 52);
            swift_allocObject();
            sub_1B1A7C698();
            LODWORD(v67[0]) = v66;
            sub_1B1A5361C();
            v55 = sub_1B1A7C688();
            v57 = v56;

            sub_1B1A7C898();
            sub_1B1A4696C(v55, v57);
LABEL_24:
            v33(v28, v27);
            v49 = v59;
            goto LABEL_25;
          }

LABEL_16:
          sub_1B1A535C8();
          swift_allocError();
          *v39 = 0;
          swift_willThrow();
          v33(v28, v27);
          goto LABEL_18;
        }
      }

      else
      {
        v23 = v65;
        LODWORD(v24) = v66;
        v25 = v61;
        v26 = v62;
        v27 = v7;
      }

      v28 = v64;
      if ((v63 & 0x100000000) != 0)
      {
        v24 = 0x100000;
      }

      else
      {
        v24 = v24;
      }

      sub_1B1A7C7D8();
      v32 = _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0();
      v33 = *(v26 + 8);
      v33(v25, v27);
      if (v32)
      {
        v34 = sub_1B1A7C6A8();
        v35 = *(v34 + 48);
        v36 = *(v34 + 52);
        swift_allocObject();
        sub_1B1A7C698();
        LODWORD(v67[0]) = v24;
        sub_1B1A5361C();
        v37 = sub_1B1A7C688();
        if (v23)
        {

          v33(v28, v27);
          goto LABEL_18;
        }

        v40 = v37;
        v41 = v38;
        v66 = v24;

        sub_1B1A7C898();
        sub_1B1A4696C(v40, v41);
        v33(v28, v27);
        v49 = v59;
LABEL_25:
        v54 = v49 + v60;
        *(v54 + 4) = 0;
        v17 = v66;
        *v54 = v66;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v17 = v66;
    if ((v63 & 0x100000000) != 0)
    {
      sub_1B1A535C8();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
    }
  }

LABEL_18:
  v42 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t sub_1B1A50B70()
{
  v42 = *MEMORY[0x1E69E9840];
  v0 = sub_1B1A7C808();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B1A51000();
  if (!result)
  {
LABEL_14:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = *(result + 16);
  if (v6)
  {
    v9 = *(v1 + 16);
    v7 = v1 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v28 = result;
    v11 = result + v10;
    v12 = (v7 - 8);
    v36 = *(v7 + 56);
    v37 = v7;
    v30 = "Unable to create lock file at: ";
    v31 = 0x80000001B1A80A40;
    v35 = "Deleting bad segment file ";
    v29 = "cleanupBadSegmentFiles()";
    v32 = (v7 - 8);
    v33 = v9;
    v9(v4, result + v10, v0);
    while (1)
    {
      v40 = sub_1B1A7C7A8();
      v41 = v16;
      v38 = 37;
      v39 = 0xE100000000000000;
      sub_1B1A47F94();
      v17 = sub_1B1A7CE38();

      if (v17)
      {
        if (qword_1EDB764F0 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for InternalLogger();
        v19 = __swift_project_value_buffer(v18, qword_1EDB770A8);
        v40 = 0;
        v41 = 0xE000000000000000;
        sub_1B1A7CEC8();

        v40 = 0xD00000000000001ALL;
        v41 = v31;
        sub_1B1A4DD9C();
        v20 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v20);

        v21 = v30;
        v34 = v19;
        sub_1B1A561F0(v40, v41, 0xD00000000000006BLL, v30 | 0x8000000000000000, 0xD000000000000018, v35 | 0x8000000000000000);

        v22 = [objc_opt_self() defaultManager];
        v23 = sub_1B1A7C7B8();
        v40 = 0;
        v24 = [v22 removeItemAtURL:v23 error:&v40];

        if (v24)
        {
          v25 = v40;
        }

        else
        {
          v13 = v40;
          v14 = sub_1B1A7C758();

          swift_willThrow();
          v40 = 0;
          v41 = 0xE000000000000000;
          sub_1B1A7CEC8();
          MEMORY[0x1B2736400](0xD000000000000022, v29 | 0x8000000000000000);
          v15 = sub_1B1A7CF98();
          MEMORY[0x1B2736400](v15);

          MEMORY[0x1B2736400](8250, 0xE200000000000000);
          v38 = v14;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E458, &qword_1B1A7E390);
          sub_1B1A7CF18();
          sub_1B1A561D8(v40, v41, 0xD00000000000006BLL, v21 | 0x8000000000000000, 0xD000000000000018, v35 | 0x8000000000000000);
        }

        v12 = v32;
        v8 = v33;
      }

      (*v12)(v4, v0);
      v11 += v36;
      if (!--v6)
      {
        break;
      }

      v8(v4, v11, v0);
    }

    goto LABEL_14;
  }

  v27 = *MEMORY[0x1E69E9840];
}

void *sub_1B1A51000()
{
  v0 = sub_1B1A7C808();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = *(type metadata accessor for DataFrameStreamContainer() + 20);
  v9 = sub_1B1A6F870();
  v11 = v9;
  v31 = v5;
  if (!v9)
  {
    return 0;
  }

  v30 = v9[2];
  v25 = 0;
  if (v30)
  {
    v12 = 0;
    v29 = v1 + 16;
    v26 = (v1 + 8);
    v32 = (v1 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    v28 = v0;
    while (1)
    {
      if (v12 >= v11[2])
      {
        __break(1u);
        goto LABEL_22;
      }

      v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v15 = *(v1 + 72);
      (*(v1 + 16))(v7, v11 + v14 + v15 * v12, v0);
      if (sub_1B1A7C778() == 0x746E656D676573 && v16 == 0xE700000000000000)
      {
        break;
      }

      v18 = sub_1B1A7CFB8();

      v17 = v31;
      if (v18)
      {
        goto LABEL_13;
      }

      (*v26)(v7, v0);
LABEL_7:
      if (v30 == ++v12)
      {
        goto LABEL_19;
      }
    }

    v17 = v31;
LABEL_13:
    v19 = v11;
    v20 = *v32;
    (*v32)(v17, v7, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1B1A6EE3C(0, v13[2] + 1, 1);
      v17 = v31;
      v13 = v33;
    }

    v23 = v13[2];
    v22 = v13[3];
    if (v23 >= v22 >> 1)
    {
      sub_1B1A6EE3C(v22 > 1, v23 + 1, 1);
      v17 = v31;
      v13 = v33;
    }

    v13[2] = v23 + 1;
    v24 = v13 + v14 + v23 * v15;
    v0 = v28;
    v20(v24, v17, v28);
    v11 = v19;
    v1 = v27;
    goto LABEL_7;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v33 = v13;

  v12 = v25;
  sub_1B1A51BE0(&v33);
  if (v12)
  {
LABEL_22:

    __break(1u);
  }

  else
  {

    return v33;
  }

  return result;
}

void sub_1B1A51338(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B1A7C768();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for DataFrameStreamContainer() + 20);
  v15[0] = a1;
  v15[1] = a2;

  MEMORY[0x1B2736400](0x746E656D6765732ELL, 0xE800000000000000);
  (*(v8 + 104))(v11, *MEMORY[0x1E6968F70], v7);
  sub_1B1A47F94();
  sub_1B1A7C7F8();
  (*(v8 + 8))(v11, v7);

  static Storage.ensureFileExists(fileURL:)(v15);
  if (v3)
  {
    goto LABEL_2;
  }

  if (LOBYTE(v15[0]) != 2 && (v15[0] & 1) == 0)
  {
    sub_1B1A536C8();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 2;
    swift_willThrow();
LABEL_2:
    v13 = sub_1B1A7C808();
    (*(*(v13 - 8) + 8))(a3, v13);
  }
}

char *sub_1B1A51554()
{
  v28 = sub_1B1A7C808();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x1EEE9AC00](v28);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v24 - v5;
  v7 = sub_1B1A51000();
  if (!v7)
  {
    return 0;
  }

  v8 = v7[2];
  if (v8)
  {
    v10 = *(v0 + 16);
    v9 = v0 + 16;
    v11 = *(v9 + 64);
    v24[1] = v7;
    v12 = v7 + ((v11 + 32) & ~v11);
    v25 = *(v9 + 56);
    v26 = v10;
    v27 = v9;
    v13 = (v9 - 8);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = v28;
      v26(v6, v12, v28);
      sub_1B1A7C7C8();
      v16 = sub_1B1A7C7A8();
      v18 = v17;
      v19 = *v13;
      (*v13)(v4, v15);
      v19(v6, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1B1A7927C(0, *(v14 + 2) + 1, 1, v14);
      }

      v21 = *(v14 + 2);
      v20 = *(v14 + 3);
      if (v21 >= v20 >> 1)
      {
        v14 = sub_1B1A7927C((v20 > 1), v21 + 1, 1, v14);
      }

      *(v14 + 2) = v21 + 1;
      v22 = &v14[16 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v18;
      v12 += v25;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

uint64_t sub_1B1A51778()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1B1A7C768();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1A7C808();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for DataFrameStreamContainer() + 20);
  v28 = 1801678700;
  v29 = 0xE400000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
  sub_1B1A47F94();
  sub_1B1A7C7F8();
  (*(v5 + 8))(v8, v4);
  v15 = *v3;
  sub_1B1A7C7E8();
  v16 = sub_1B1A7CA58();

  LOBYTE(v14) = [v15 fileExistsAtPath_];

  if ((v14 & 1) == 0)
  {
    sub_1B1A7C7E8();
    v18 = sub_1B1A7CA58();

    v19 = [v15 createFileAtPath:v18 contents:0 attributes:0];

    if ((v19 & 1) == 0)
    {
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v22, qword_1EDB770A8);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v28 = 0xD00000000000001FLL;
      v29 = 0x80000001B1A80990;
      v23 = sub_1B1A7C7E8();
      MEMORY[0x1B2736400](v23);

      sub_1B1A561D8(v28, v29, 0xD00000000000006BLL, 0x80000001B1A809B0, 0xD000000000000015, 0x80000001B1A80A20);

      v2 = sub_1B1A7C7E8();
      v25 = v24;
      sub_1B1A536C8();
      swift_allocError();
      *v26 = v2;
      *(v26 + 8) = v25;
      *(v26 + 16) = 0;
      swift_willThrow();
      goto LABEL_11;
    }
  }

  if (qword_1EDB767A8 != -1)
  {
    v17 = swift_once();
  }

  v20 = qword_1EDB770E0;
  MEMORY[0x1EEE9AC00](v17);
  *(&v28 - 2) = v13;

  os_unfair_lock_lock((v20 + 24));
  sub_1B1A5371C((v20 + 16), &v28);
  v21 = (v20 + 24);
  if (v1)
  {
    os_unfair_lock_unlock(v21);

LABEL_11:
    (*(v10 + 8))(v13, v9);
    return v2;
  }

  os_unfair_lock_unlock(v21);
  v2 = v28;

  (*(v10 + 8))(v13, v9);
  return v2;
}

uint64_t sub_1B1A51BE0(void **a1)
{
  v2 = *(sub_1B1A7C808() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B1A535B4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B1A51C88(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1B1A51C88(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1B1A7CF88();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B1A7C808();
        v6 = sub_1B1A7CC78();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1B1A7C808() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B1A520C0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B1A51DB4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B1A51DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1B1A7C808();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_1B1A7C7A8();
      v28 = v27;
      if (v26 == sub_1B1A7C7A8() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_1B1A7CFB8();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1A520C0(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_1B1A7C808();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x1EEE9AC00](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_1B1A52C7C(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1B1A533A4(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_1B1A53318(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_1B1A533A4(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_1B1A7C7A8();
      v38 = v37;
      v39 = sub_1B1A7C7A8();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_1B1A7CFB8();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_1B1A7C7A8();
        v53 = v52;
        if (v51 == sub_1B1A7C7A8() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_1B1A7CFB8();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B1A5349C(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_1B1A5349C((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_1B1A52C7C(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1B1A533A4(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_1B1A53318(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_1B1A7C7A8();
    v70 = v69;
    if (v5 == sub_1B1A7C7A8() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1B1A7CFB8();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1B1A52C7C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_1B1A7C808();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_1B1A7C7A8();
            v53 = v52;
            if (v51 != sub_1B1A7C7A8())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_1B1A7CFB8();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_1B1A7C7A8();
        v33 = v32;
        if (v31 == sub_1B1A7C7A8() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_1B1A7CFB8();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_1B1A533B8(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_1B1A53318(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B1A533A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B1A533B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1B1A7C808();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1B1A5349C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E488, ",Q");
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

unint64_t sub_1B1A535C8()
{
  result = qword_1EB75E480;
  if (!qword_1EB75E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E480);
  }

  return result;
}

unint64_t sub_1B1A5361C()
{
  result = qword_1EDB76460;
  if (!qword_1EDB76460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76460);
  }

  return result;
}

unint64_t sub_1B1A53670()
{
  result = qword_1EDB76530;
  if (!qword_1EDB76530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76530);
  }

  return result;
}

unint64_t sub_1B1A536C8()
{
  result = qword_1EB75E490;
  if (!qword_1EB75E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E490);
  }

  return result;
}

uint64_t sub_1B1A53738@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4C0, &qword_1B1A7E770);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4B8, &unk_1B1A7E738);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-v13];
  v15 = OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream;
  swift_beginAccess();
  sub_1B1A47E6C(v1 + v15, v14, &qword_1EB75E4B8, &unk_1B1A7E738);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  sub_1B1A48194(v14, &qword_1EB75E4B8, &unk_1B1A7E738);
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8650], v3);
  sub_1B1A7CD58();
  (*(v17 + 16))(v12, a1, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  swift_beginAccess();
  sub_1B1A548D8(v12, v1 + v15, &qword_1EB75E4B8, &unk_1B1A7E738);
  return swift_endAccess();
}

uint64_t sub_1B1A53A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4B0, &qword_1B1A7E730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E498, "2Q");
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation;
  swift_beginAccess();
  sub_1B1A548D8(v7, a2 + v10, &qword_1EB75E4B0, &qword_1B1A7E730);
  return swift_endAccess();
}

uint64_t EmptyPromise.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E498, "2Q");
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  return v3;
}

uint64_t EmptyPromise.init()()
{
  v1 = OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E498, "2Q");
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  return v0;
}

uint64_t sub_1B1A53D0C()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A8, &qword_1B1A7E728);
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1A53E40, 0, 0);
}

uint64_t sub_1B1A53E40()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  sub_1B1A53738(v2);
  sub_1B1A7CD38();
  (*(v3 + 8))(v2, v5);
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B1A53F34;
  v8 = v0[8];
  v9 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 10, 0, 0, v9);
}

uint64_t sub_1B1A53F34()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1A54030, 0, 0);
}

uint64_t sub_1B1A54030()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B1A540B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4B0, &qword_1B1A7E730);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E498, "2Q");
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4A0, "6Q");
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20[-v16];
  sub_1B1A53738(&v20[-v16]);
  (*(v14 + 8))(v17, v13);
  v18 = OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation;
  swift_beginAccess();
  sub_1B1A47E6C(v0 + v18, v7, &qword_1EB75E4B0, &qword_1B1A7E730);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B1A48194(v7, &qword_1EB75E4B0, &qword_1B1A7E730);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_1B1A7CD28();
  (*(v9 + 8))(v12, v8);
  (*(v9 + 56))(v5, 1, 1, v8);
  swift_beginAccess();
  sub_1B1A548D8(v5, v0 + v18, &qword_1EB75E4B0, &qword_1B1A7E730);
  return swift_endAccess();
}

uint64_t EmptyPromise.deinit()
{
  sub_1B1A48194(v0 + OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation, &qword_1EB75E4B0, &qword_1B1A7E730);
  sub_1B1A48194(v0 + OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream, &qword_1EB75E4B8, &unk_1B1A7E738);
  return v0;
}

uint64_t EmptyPromise.__deallocating_deinit()
{
  sub_1B1A48194(v0 + OBJC_IVAR____TtC8Dendrite12EmptyPromise_streamContinuation, &qword_1EB75E4B0, &qword_1B1A7E730);
  sub_1B1A48194(v0 + OBJC_IVAR____TtC8Dendrite12EmptyPromise____lazy_storage___fulfillmentStream, &qword_1EB75E4B8, &unk_1B1A7E738);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyPromise()
{
  result = qword_1EDB763B0;
  if (!qword_1EDB763B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1A544E8()
{
  sub_1B1A5487C(319, &qword_1EDB75D40, &qword_1EB75E498, "2Q");
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B1A5487C(319, &qword_1EDB75D38, &qword_1EB75E4A0, "6Q");
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of EmptyPromise.fulfilled()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B1A5471C;

  return v6();
}

uint64_t sub_1B1A5471C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
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

void sub_1B1A5487C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1B1A7CE18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B1A548D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B1A54958(char a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  type metadata accessor for DataFrameStreamTypedIterator();
  v10 = v4;
  v11 = &off_1F28B0EE8;
  *&v9 = v3;
  v7 = sub_1B1A4C5E0(&v9, a1, 1);

  return v7;
}

uint64_t sub_1B1A54A28(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v6 = *v3;
  type metadata accessor for DataFrameStreamTypedIterator();
  v10 = v6;
  v11 = &off_1F28B0EE8;
  *&v9 = v5;
  v7 = sub_1B1A4C5E0(&v9, a3, 1);

  return v7;
}

uint64_t TypedStream.last<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DataFrameStreamTypedIterator.Element();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v21 - v9;
  v10 = sub_1B1A7CE18();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = *(a1 - 8);
  v15 = *(v14 + 56);
  v24 = a3;
  v22 = v15;
  v15(a3, 1, 1, a1);
  v16 = *TypedStream.reverseIterator<A>()(a1, a2);
  (*(v16 + 264))();
  sub_1B1A4CB90(v13);

  result = (*(v7 + 48))(v13, 1, v6);
  if (result != 1)
  {
    v18 = sub_1B1A7CE18();
    v19 = v24;
    (*(*(v18 - 8) + 8))(v24, v18);
    v20 = v23;
    (*(v7 + 32))(v23, v13, v6);
    (*(v14 + 32))(v19, &v20[*(v6 + 40)], a1);
    return v22(v19, 0, 1, a1);
  }

  return result;
}

uint64_t sub_1B1A54D88@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = TypedStream.makeIterator()();

  *a1 = v4;
  return result;
}

uint64_t sub_1B1A54DC8()
{
  v1 = sub_1B1A54E2C();
  v2 = *v0;

  return v1;
}

uint64_t sub_1B1A54E30(int a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v23 = a3;
  v8 = sub_1B1A7C9C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B1A7C9F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  if (a2)
  {
    a1 = MKBGetDeviceLockState();
  }

  sub_1B1A55288(&v32);
  LODWORD(v32) = a1;
  *(&v33 + 1) = &type metadata for EmbeddedDeviceLockState;
  v34 = &off_1F28B1BA8;
  sub_1B1A552F0(&v32, &aBlock);
  if (v27)
  {
    sub_1B1A4E364(&aBlock, v31);
    sub_1B1A4E37C(v31, v30);
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = a5;
    sub_1B1A4E364(v30, v18 + 32);
    v28 = sub_1B1A55360;
    v29 = v18;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v26 = sub_1B1A5516C;
    v27 = &block_descriptor;
    v19 = _Block_copy(&aBlock);

    sub_1B1A7C9D8();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B1A553A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4D8, &unk_1B1A7E830);
    sub_1B1A55400();
    sub_1B1A7CE48();
    MEMORY[0x1B2736680](0, v17, v12, v19);
    _Block_release(v19);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1B1A55288(&v32);
  }

  else
  {
    sub_1B1A55288(&v32);
    return sub_1B1A55288(&aBlock);
  }
}

uint64_t sub_1B1A5516C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B1A551B0()
{
  v1 = *(**(v0 + 56) + 136);

  atomic_store(1u, v1(v2));

  swift_beginAccess();
  notify_cancel(*(v0 + 48));
  v3 = *(v0 + 24);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A55288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4C8, "~P");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1A552F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4C8, "~P");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B1A553A8()
{
  result = qword_1EB75E4D0;
  if (!qword_1EB75E4D0)
  {
    sub_1B1A7C9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E4D0);
  }

  return result;
}

unint64_t sub_1B1A55400()
{
  result = qword_1EB75E4E0;
  if (!qword_1EB75E4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB75E4D8, &unk_1B1A7E830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E4E0);
  }

  return result;
}

uint64_t sub_1B1A55498(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_1B1A5552C()
{
  sub_1B1A55E90();
}

uint64_t sub_1B1A55554()
{
  v1 = v0;
  result = sub_1B1A4DCEC();
  if (result)
  {
    if (*(result + 80))
    {
      return 0;
    }

    v3 = *(result + 76);
    result = sub_1B1A4DCEC();
    if (!result)
    {
      return result;
    }

    v8 = *(result + 32);
    v9 = *(result + 40);
    v10 = *(result + 48);
    v11 = *(result + 56);
    v12 = *(result + 64);
    v13 = *(result + 72);

    v4 = DataFrameStreamSegment.deleteFrame(index:)(v3);

    if (!v4)
    {
      return 0;
    }

    else
    {
      result = swift_beginAccess();
      v5 = *(v1 + 96);
      v6 = __CFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        *(v1 + 96) = v7;
        return 1;
      }
    }
  }

  return result;
}

uint64_t DataFrameStreamPruner.__deallocating_deinit()
{
  DataFrameStreamTypedIterator.deinit();

  return swift_deallocClassInstance();
}

uint64_t TypedStream.pruner<A>(reversed:)(int a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = *v3;
  v25 = a3;
  v4 = sub_1B1A7C808();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DataFrameStreamContainer();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A55E98(v3 + v12, v11);
  v13 = &v11[*(v8 + 20)];
  v14 = *&v13[*(type metadata accessor for StorageContainer() + 20)];
  LOBYTE(v13) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  sub_1B1A4DCF4(v11);
  if (v13)
  {
    type metadata accessor for DataFrameStreamPruner();
    v28 = v24;
    v29 = &off_1F28B0EE8;
    *&v27 = v3;
    *(swift_allocObject() + 96) = 0;
    v15 = sub_1B1A4C648(&v27, v26 & 1, 1);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v16, qword_1EDB770A8);
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    sub_1B1A7CEC8();

    *&v27 = 0xD000000000000018;
    *(&v27 + 1) = 0x80000001B1A80600;
    sub_1B1A55E98(v3 + v12, v11);
    v17 = *(v8 + 20);
    v18 = v30;
    (*(v30 + 16))(v7, &v11[v17], v4);
    sub_1B1A4DCF4(v11);
    sub_1B1A4DD9C();
    v19 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v19);

    (*(v18 + 8))(v7, v4);
    sub_1B1A561D8(v27, *(&v27 + 1), 0xD000000000000068, 0x80000001B1A80B60, 0xD000000000000011, 0x80000001B1A80BD0);

    sub_1B1A55EFC();
    v20 = swift_allocError();
    *v21 = 1;
    v15 = v20;
    swift_willThrow();
  }

  return v15;
}

uint64_t TypedStream<>.prune(minAllowableDate:)(uint64_t a1)
{
  v34 = a1;
  v2 = *v1;
  v3 = sub_1B1A7C908();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v33 - v10;
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  v13 = type metadata accessor for DataFrameStreamTypedIterator.Element();
  v14 = sub_1B1A7CE18();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v33 - v16;
  v18 = v47;
  TypedStream.pruner<A>(reversed:)(0, AssociatedTypeWitness, v12);
  if (!v18)
  {
    v19 = v35;
    v40 = v11;
    v33[0] = v1;
    v33[1] = 0;

    sub_1B1A4CB90(v17);
    v11 = *(v13 - 8);
    v38 = *(v11 + 48);
    v39 = v11 + 48;
    v20 = v38(v17, 1, v13);
    v21 = v34;
    if (v20 != 1)
    {
      v25 = *(v41 + 16);
      v36 = AssociatedTypeWitness;
      v37 = v25;
      v41 += 16;
      v35 = v19 + 8;
      v26 = (v11 + 8);
      do
      {
        v11 = v40;
        v37(v40, &v17[*(v13 + 40)], AssociatedTypeWitness);
        (*v26)(v17, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4F0, &qword_1B1A7E840);
        if (swift_dynamicCast())
        {
          sub_1B1A4E364(v42, v44);
          v27 = v3;
          v28 = v21;
          v29 = v45;
          v30 = v46;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v31 = *(v30 + 8);
          v32 = v30;
          v21 = v28;
          v3 = v27;
          v31(v29, v32);
          v11 = sub_1B1A7C8E8();
          (*v35)(v6, v27);
          if (v11)
          {
            sub_1B1A55554();
          }

          __swift_destroy_boxed_opaque_existential_1(v44);
          AssociatedTypeWitness = v36;
        }

        else
        {
          v43 = 0;
          memset(v42, 0, sizeof(v42));
          sub_1B1A55F68(v42);
        }

        sub_1B1A4CB90(v17);
      }

      while (v38(v17, 1, v13) != 1);
    }

    v22 = v47;

    TypedStream.vacuum()();
    if (!v23)
    {
      swift_beginAccess();
      v11 = *(v22 + 96);
    }
  }

  return v11;
}

uint64_t sub_1B1A55E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataFrameStreamContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1A55EFC()
{
  result = qword_1EB75E4E8;
  if (!qword_1EB75E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E4E8);
  }

  return result;
}

uint64_t sub_1B1A55F68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E4F8, &unk_1B1A7E848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for InternalLogger()
{
  result = qword_1EDB76990;
  if (!qword_1EDB76990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1A56154()
{
  result = sub_1B1A7C988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1A56208(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void))
{
  v27 = a3;
  v28 = a5;
  v11 = sub_1B1A7C808();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v29 = sub_1B1A7C978();
  v16 = a7();

  if (os_log_type_enabled(v29, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136315650;
    sub_1B1A7C798();
    v20 = sub_1B1A7C7A8();
    v22 = v21;
    (*(v12 + 8))(v15, v11);
    v23 = sub_1B1A56884(v20, v22, &v30);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1B1A56884(v28, a6, &v30);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_1B1A56884(v26, a2, &v30);
    _os_log_impl(&dword_1B1A45000, v29, v16, "[%s: %s] %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B27370E0](v19, -1, -1);
    MEMORY[0x1B27370E0](v18, -1, -1);
  }

  else
  {
    v24 = v29;
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1B1A56570(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1B1A7C988();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00]();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InternalLogger();
  __swift_allocate_value_buffer(v12, a2);
  v13 = __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v14 = *a4;
  sub_1B1A7C998();
  return (*(v8 + 32))(v13, v11, v7);
}

unint64_t sub_1B1A566E4()
{
  result = qword_1EDB76470;
  if (!qword_1EDB76470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB76470);
  }

  return result;
}

uint64_t sub_1B1A5674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1B1A566E4();
  result = sub_1B1A7CE08();
  *a4 = result;
  return result;
}

uint64_t sub_1B1A567B4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1B1A56828(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1B1A56884(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1B1A56884(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B1A56950(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B1A56DC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B1A56950(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B1A56A5C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B1A7CF08();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B1A56A5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B1A56AA8(a1, a2);
  sub_1B1A56BD8(&unk_1F28B0628);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B1A56AA8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B1A777A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B1A7CF08();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B1A7CB48();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B1A777A8(v10, 0);
        result = sub_1B1A7CEA8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B1A56BD8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B1A56CC4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B1A56CC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E508, "DP");
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

_BYTE **sub_1B1A56DB8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1B1A56DC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedStream.vacuum()()
{
  v46 = sub_1B1A7C808();
  v1 = *(v46 - 1);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrameStreamContainer();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EDB770E8;
  swift_beginAccess();
  v44 = v0;
  sub_1B1A46E9C(v9 + v0, v8, type metadata accessor for DataFrameStreamContainer);
  v10 = &v8[*(v5 + 5)];
  v11 = *&v10[*(type metadata accessor for StorageContainer() + 20)];
  v12 = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
  if (v12)
  {
    if (qword_1EDB764F0 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v13 = type metadata accessor for InternalLogger();
      v14 = __swift_project_value_buffer(v13, qword_1EDB770A8);
      v15 = v44;
      sub_1B1A46E9C(v9 + v44, v8, type metadata accessor for DataFrameStreamContainer);
      v16 = &v8[*(v5 + 5)];
      v17 = v46;
      (*(v1 + 16))(v4, v16, v46);
      sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
      sub_1B1A4DD9C();
      v18 = sub_1B1A7CF98();
      v20 = v19;
      (*(v1 + 8))(v4, v17);
      v41 = "com.apple.aiml.dendrite";
      v42 = v14;
      sub_1B1A561C0(v18, v20, 0xD00000000000005ELL, 0x80000001B1A80C10, 0x29286D7575636176, 0xE800000000000000);

      v21 = *(v15 + qword_1EDB770F8);
      os_unfair_lock_lock((v21 + 32));
      v22 = v47;
      sub_1B1A603DC((v21 + 16), v48);
      if (v22)
      {
        break;
      }

      v1 = 0;
      os_unfair_lock_unlock((v21 + 32));
      v5 = v48[0];
      if (!v48[0])
      {
        return;
      }

      v8 = MEMORY[0x1E69E7CD0];
      v53 = MEMORY[0x1E69E7CD0];
      v43 = *(v48[0] + 2);
      if (!v43)
      {
LABEL_20:

        sub_1B1A5B560(v8);

        return;
      }

      v4 = 0;
      v35 = 0x80000001B1A80C70;
      v9 = (v48[0] + 40);
      v39 = v21;
      v40 = v48[0];
      while (v4 < *(v5 + 2))
      {
        v8 = *(v9 - 1);
        v24 = *v9;
        MEMORY[0x1EEE9AC00](v23);
        *(&v34 - 4) = v44;
        *(&v34 - 3) = v8;
        *(&v34 - 2) = v24;

        os_unfair_lock_lock((v21 + 32));
        sub_1B1A6040C(v21 + 16, v48);
        os_unfair_lock_unlock((v21 + 32));
        v25 = v48[0];
        v26 = v50;
        v45 = v49;
        v46 = v48[1];
        v47 = v51;
        v27 = v52;
        v28 = *(v50 + 16);
        if (*v28 == 2)
        {
          v48[1] = v46;
          v49 = v45;
          v51 = v47;
          v29 = v4;
          v30 = v52;
          sub_1B1A60B34();
          v27 = v30;
          v4 = v29;
          v28 = *(v26 + 16);
        }

        if (*v28 == 3)
        {
          v48[0] = 0;
          v48[1] = 0xE000000000000000;
          v37 = v25;
          v36 = v27;
          sub_1B1A7CEC8();

          v48[0] = 0xD000000000000017;
          v48[1] = v35;
          MEMORY[0x1B2736400](v8, v24);
          v38 = v26;
          sub_1B1A561C0(v48[0], v48[1], 0xD00000000000005ELL, v41 | 0x8000000000000000, 0x29286D7575636176, 0xE800000000000000);
          v1 = 0;
          v26 = v38;

          sub_1B1A5E640(v48, v8, v24);

          v27 = v36;
          v25 = v37;
        }

        v48[0] = v25;
        v48[1] = v46;
        v49 = v45;
        v50 = v26;
        v51 = v47;
        v52 = v27;
        if (sub_1B1A69684())
        {
        }

        else
        {
          v48[0] = 0;
          v48[1] = 0xE000000000000000;
          sub_1B1A7CEC8();

          strcpy(v48, "segment dead: ");
          HIBYTE(v48[1]) = -18;
          MEMORY[0x1B2736400](v8, v24);
          sub_1B1A561C0(v48[0], v48[1], 0xD00000000000005ELL, v41 | 0x8000000000000000, 0x29286D7575636176, 0xE800000000000000);
          v1 = 0;

          sub_1B1A5E640(v48, v8, v24);
        }

        v21 = v39;
        v5 = v40;
        ++v4;
        v9 += 2;
        if (v43 == v4)
        {
          v8 = v53;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    os_unfair_lock_unlock((v21 + 32));
    __break(1u);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for InternalLogger();
    __swift_project_value_buffer(v31, qword_1EDB770A8);
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_1B1A7CEC8();

    v48[0] = 0xD000000000000018;
    v48[1] = 0x80000001B1A80600;
    sub_1B1A46E9C(v9 + v44, v8, type metadata accessor for DataFrameStreamContainer);
    v32 = v46;
    (*(v1 + 16))(v4, &v8[*(v5 + 5)], v46);
    sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v33 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v33);

    (*(v1 + 8))(v4, v32);
    sub_1B1A561D8(v48[0], v48[1], 0xD00000000000005ELL, 0x80000001B1A80C10, 0x29286D7575636176, 0xE800000000000000);
  }
}

uint64_t sub_1B1A5761C()
{
  v1 = v0;
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v2 = sub_1B1A60480("com.apple.dendrite.pending-writes", 33, 2);
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B1A57678()
{
  v1 = *v0;

  *v0 = 0;
  return result;
}

uint64_t sub_1B1A576C0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDB770E8;
  swift_beginAccess();
  return sub_1B1A46E9C(v1 + v3, a1, type metadata accessor for DataFrameStreamContainer);
}

uint64_t TypedStream.__allocating_init(containerURL:segmentSize:protection:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StorageContainer();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1A7C808();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  *&v10[*(v7 + 28)] = a3;
  v13 = TypedStream.__allocating_init(storageContainer:segmentSize:)(v10, a2 | ((HIDWORD(a2) & 1) << 32));
  (*(v12 + 8))(a1, v11);
  return v13;
}

uint64_t TypedStream.__allocating_init(storageContainer:segmentSize:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  TypedStream.init(storageContainer:segmentSize:)(a1, a2 | ((HIDWORD(a2) & 1) << 32));
  return v7;
}

void *TypedStream.init(storageContainer:segmentSize:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DataFrameStreamContainer();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v36 - v12);
  if ((a2 & 0x100000000) != 0)
  {
    v37 = 0;
  }

  else
  {
    if (a2 > 0x40)
    {
      v37 = 0;
      v14 = 0;
      goto LABEL_15;
    }

    sub_1B1A5FCC4();
    v15 = swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v37 = 0;
    v40 = v15;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E458, &qword_1B1A7E390);
    if ((swift_dynamicCast() & 1) != 0 && (v39 & 1) == 0)
    {

      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for InternalLogger();
      __swift_project_value_buffer(v20, qword_1EDB770A8);
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      sub_1B1A7CEC8();

      strcpy(v41, "segmentSize: ");
      HIWORD(v41[1]) = -4864;
      v38 = a2;
      v21 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v21);

      MEMORY[0x1B2736400](0x616D73206F6F7420, 0xEB000000002E6C6CLL);
      sub_1B1A561D8(v41[0], v41[1], 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80CB0);
    }

    else
    {

      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for InternalLogger();
      v36 = __swift_project_value_buffer(v18, qword_1EDB770A8);
      v41[0] = 0;
      v41[1] = 0xE000000000000000;
      sub_1B1A7CEC8();
      MEMORY[0x1B2736400](0x53746E656D676573, 0xED0000203A657A69);
      LODWORD(v40) = a2;
      v19 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v19);

      MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A80C90);
      v40 = v15;
      sub_1B1A7CF18();
      sub_1B1A561D8(v41[0], v41[1], 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80CB0);
    }

    LODWORD(a2) = 0;
  }

  v14 = 0x100000000;
LABEL_15:
  v22 = a1;
  sub_1B1A46E9C(a1, v13 + *(v7 + 20), type metadata accessor for StorageContainer);
  *v13 = [objc_opt_self() defaultManager];
  v23 = v13 + *(v7 + 24);
  v23[4] = (v14 | 0x8000000000uLL) >> 32;
  *v23 = v14 | a2;
  sub_1B1A5F684(v13, v3 + qword_1EDB770E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E510, &unk_1B1A7E8C0);
  v24 = swift_allocObject();
  *(v24 + 32) = 0;
  v25 = MEMORY[0x1E69E7CC8];
  *(v24 + 16) = 0;
  *(v24 + 24) = v25;
  *(v3 + qword_1EDB770F8) = v24;
  v26 = *(v6 + 80);
  v27 = *(v6 + 88);
  v28 = sub_1B1A7CA08();
  v41[0] = 0;
  v41[1] = v28;
  v41[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for DataFrameStreamPendingWrites();
  v29 = sub_1B1A5FC14();

  *(v3 + qword_1EDB770F0) = v29;
  v30 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(v3 + v30, v11, type metadata accessor for DataFrameStreamContainer);
  v31 = &v11[*(v7 + 20)];
  v32 = *&v31[*(type metadata accessor for StorageContainer() + 20)];
  if (_s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0())
  {
    v33 = _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0();
    sub_1B1A46F50(v11, type metadata accessor for DataFrameStreamContainer);
    if (v33)
    {
      sub_1B1A46E9C(v3 + v30, v13, type metadata accessor for DataFrameStreamContainer);
      sub_1B1A50B70();
      sub_1B1A46F50(v13, type metadata accessor for DataFrameStreamContainer);
      v34 = *(v3 + qword_1EDB770F8);
      os_unfair_lock_lock((v34 + 32));
      sub_1B1A5FCA8((v34 + 16));
      os_unfair_lock_unlock((v34 + 32));
    }
  }

  else
  {
    sub_1B1A46F50(v11, type metadata accessor for DataFrameStreamContainer);
  }

  sub_1B1A46F50(v22, type metadata accessor for StorageContainer);
  return v3;
}

uint64_t sub_1B1A57F04(char **a1, uint64_t a2)
{
  v4 = type metadata accessor for DataFrameStreamContainer();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(a2 + v8, v7, type metadata accessor for DataFrameStreamContainer);
  v9 = sub_1B1A51554();
  sub_1B1A46F50(v7, type metadata accessor for DataFrameStreamContainer);
  v10 = *a1;

  *a1 = v9;
  return result;
}

uint64_t sub_1B1A58010()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1B1A580EC;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B1A580EC()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B1A581E8, 0, 0);
}

void sub_1B1A581FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + qword_1EDB770F0);
  v5 = *(*a2 + 80);
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_1B1A602C0((v2 + v3));
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_1B1A582C8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  if (!*a1)
  {
    return sub_1B1A7CCF8();
  }

  v9 = a1[2];
  (*(v5 + 16))(v8, a2, v4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1B1A79388(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B1A79388(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  a1[2] = v9;
  return result;
}

uint64_t sub_1B1A58460()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_1B1A7CD18();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = *(v1 + 80);
  v8[5] = *(v1 + 88);
  v8[6] = v7;
  sub_1B1A596C0(0, 0, v5, &unk_1B1A7EAE0, v8);

  return sub_1B1A48194(v5, &qword_1EB75E538, &qword_1B1A7EAD0);
}

uint64_t sub_1B1A585D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_1B1A7C808();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for DataFrameStreamContainer();
  v4[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1A586DC, 0, 0);
}

uint64_t sub_1B1A586DC()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = Strong;
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v5 = v0[12];
    v6 = type metadata accessor for InternalLogger();
    v0[17] = __swift_project_value_buffer(v6, qword_1EDB770A8);
    sub_1B1A561C0(0xD000000000000020, 0x80000001B1A80F10, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80F40);
    v7 = qword_1EDB770E8;
    v0[18] = qword_1EDB770E8;
    swift_beginAccess();
    sub_1B1A46E9C(v3 + v7, v4, type metadata accessor for DataFrameStreamContainer);
    v8 = v4 + *(v5 + 20);
    v9 = type metadata accessor for StorageContainer();
    v0[19] = v9;
    v10 = *(v8 + *(v9 + 20));
    v11 = *MEMORY[0x1E696A388];
    v12 = sub_1B1A7CA88();
    v14 = v13;
    if (v12 == sub_1B1A7CA88() && v14 == v15)
    {
    }

    else
    {
      v17 = sub_1B1A7CFB8();

      if ((v17 & 1) == 0)
      {
        sub_1B1A46F50(v0[15], type metadata accessor for DataFrameStreamContainer);

        return MEMORY[0x1EEE6DFA0](sub_1B1A58B0C, 0, 0);
      }
    }

    v23 = swift_task_alloc();
    v0[20] = v23;
    *v23 = v0;
    v23[1] = sub_1B1A589E0;

    return sub_1B1A709A8();
  }

  else
  {
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];
    v21 = v0[11];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1B1A589E0()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v4 = *v0;

  sub_1B1A46F50(*(v1 + 120), type metadata accessor for DataFrameStreamContainer);

  return MEMORY[0x1EEE6DFA0](sub_1B1A58B0C, 0, 0);
}

uint64_t sub_1B1A58B0C()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[12];
  sub_1B1A561C0(0xD000000000000016, 0x80000001B1A80F70, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80F40);
  sub_1B1A46E9C(v4 + v2, v5, type metadata accessor for DataFrameStreamContainer);
  v7 = *(v5 + *(v6 + 20) + *(v1 + 20));
  v8 = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0();
  v9 = v0[14];
  if (v8)
  {
    v10 = _s8Dendrite7StorageV21ensureDirectoryExists12directoryURLSb10Foundation0G0V_tFZ_0();
    sub_1B1A46F50(v9, type metadata accessor for DataFrameStreamContainer);
    if (v10)
    {
      v11 = *(v0[16] + qword_1EDB770F0);
      v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
      v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v11 + v13));
      sub_1B1A602A4((v11 + v12));
      os_unfair_lock_unlock((v11 + v13));
      v14 = v0[16];

      goto LABEL_6;
    }
  }

  else
  {
    sub_1B1A46F50(v0[14], type metadata accessor for DataFrameStreamContainer);
  }

  v15 = v0[18];
  v29 = v0[17];
  v16 = v0[16];
  v18 = v0[12];
  v17 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1B1A7CEC8();

  sub_1B1A46E9C(v16 + v15, v17, type metadata accessor for DataFrameStreamContainer);
  (*(v20 + 16))(v19, v17 + *(v18 + 20), v21);
  sub_1B1A46F50(v17, type metadata accessor for DataFrameStreamContainer);
  sub_1B1A4DD9C();
  v22 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v22);

  (*(v20 + 8))(v19, v21);
  sub_1B1A561D8(0xD00000000000001ELL, 0x80000001B1A80F90, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80F40);

LABEL_6:

  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[13];
  v26 = v0[11];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1B1A58E8C(uint64_t *a1, void *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v45 = a2;
  v10 = *(v4 + 80);
  v46 = *(v10 - 8);
  v37 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v38 = v9;
  v14 = type metadata accessor for InternalLogger();
  v15 = __swift_project_value_buffer(v14, qword_1EDB770A8);
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v48 = 0x676E696873756C46;
  v49 = 0xE900000000000020;
  v43 = a1;
  v16 = a1[1];
  v39 = a1 + 1;
  v50 = sub_1B1A7CC98();
  v17 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v17);

  MEMORY[0x1B2736400](0xD000000000000012, 0x80000001B1A80FB0);
  v40 = " availability...";
  v41 = "com.apple.aiml.dendrite";
  v42 = v15;
  sub_1B1A561C0(v48, v49, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000023, 0x80000001B1A80F40);

  if (sub_1B1A7CC98())
  {
    v18 = 0;
    v44 = (v46 + 16);
    v19 = (v46 + 8);
    do
    {
      v20 = sub_1B1A7CC88();
      sub_1B1A7CC68();
      v21 = v6;
      if (v20)
      {
        v6 = v5;
        (*(v46 + 16))(v13, v16 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v18, v10);
        v5 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1B1A7CED8();
        if (v37 != 8)
        {
          __break(1u);
          return result;
        }

        v6 = v5;
        v48 = result;
        (*v44)(v13, &v48, v10);
        swift_unknownObjectRelease();
        v5 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v22 = v47;
      sub_1B1A593FC();
      (*v19)(v13, v10);
      if (v22)
      {
      }

      v47 = 0;
      ++v18;
      v23 = v5 == sub_1B1A7CC98();
      v5 = v6;
      v6 = v21;
    }

    while (!v23);
  }

  sub_1B1A7CCD8();
  sub_1B1A7CCC8();
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v48 = 0x676E696D75736552;
  v49 = 0xE900000000000020;
  v25 = v43[2];
  v50 = *(v25 + 16);
  v26 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v26);

  MEMORY[0x1B2736400](0xD000000000000011, 0x80000001B1A80FD0);
  sub_1B1A561C0(v48, v49, 0xD00000000000005ELL, v41 | 0x8000000000000000, 0xD000000000000023, v40 | 0x8000000000000000);

  v27 = *(v25 + 16);
  if (v27)
  {
    v30 = *(v6 + 16);
    v28 = v6 + 16;
    v29 = v30;
    v31 = v25 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v32 = *(v28 + 56);
    v33 = v38;
    do
    {
      v29(v33, v31, v5);
      sub_1B1A7CCF8();
      (*(v28 - 8))(v33, v5);
      v31 += v32;
      --v27;
    }

    while (v27);
  }

  v34 = v43;
  v43[2] = MEMORY[0x1E69E7CC0];
  v35 = *v34;

  *v34 = 0;
  return result;
}

void sub_1B1A593FC()
{
  v2 = *v0;
  v3 = *(v0 + qword_1EDB770F8);
  os_unfair_lock_lock((v3 + 32));
  sub_1B1A601C0((v3 + 16), &v16);
  os_unfair_lock_unlock((v3 + 32));
  if (!v1)
  {
    v14 = *(v2 + 88);
    v15 = *(v2 + 80);
    v5 = v16;
    v4 = v17;
    v6 = v18;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = (*(v14 + 8))(v15, v14);
    v16 = v5;
    v17 = v4;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v11 = v10;
    v13 = v12;
    DataFrameStreamSegment.append(data:compressed:)(v10, v12, 0);
    sub_1B1A4696C(v11, v13);
  }
}

uint64_t sub_1B1A596C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1B1A47E6C(a3, v24 - v10, &qword_1EB75E538, &qword_1B1A7EAD0);
  v12 = sub_1B1A7CD18();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B1A48194(v11, &qword_1EB75E538, &qword_1B1A7EAD0);
  }

  else
  {
    sub_1B1A7CD08();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B1A7CCE8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B1A7CAE8() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

char *sub_1B1A5992C()
{
  v1 = *(v0 + qword_1EDB770F8);
  os_unfair_lock_lock((v1 + 32));
  sub_1B1A603DC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 32));
  return v3;
}

void sub_1B1A59988(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_1EDB770F8);
  os_unfair_lock_lock((v3 + 32));
  sub_1B1A601C0((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 32));
}

void sub_1B1A599E8(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v11 = *a1;
  if (*a1 && (v14 = *(v11 + 2), v12 = v11 + 16, (v13 = v14) != 0))
  {
    v15 = &v12[16 * v13];
    v16 = *v15;
    v17 = v15[1];
    v18 = type metadata accessor for DataFrameStreamContainer();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);

    sub_1B1A59F5C(v16, v17, a1, v10, a3);
    sub_1B1A48194(v10, &qword_1EB75E528, &qword_1B1A7EAC0);
  }

  else
  {
    v19 = qword_1EDB770E8;
    swift_beginAccess();
    sub_1B1A51778();
    if (!v3)
    {
      sub_1B1A59C30(a2 + v19, a1, a2, &v24);
      if (qword_1EDB767A8 != -1)
      {
        swift_once();
      }

      v20 = qword_1EDB770E0;

      os_unfair_lock_lock(v20 + 6);
      sub_1B1A603F4(&v20[4]);
      os_unfair_lock_unlock(v20 + 6);

      v21 = v27;
      *a3 = v24;
      v22 = v26;
      *(a3 + 8) = v25;
      *(a3 + 24) = v22;
      *(a3 + 40) = v21;
    }

    swift_endAccess();
  }
}