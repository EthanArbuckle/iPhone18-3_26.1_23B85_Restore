uint64_t NSFileProtectionType.sqliteFlags.getter()
{
  v0 = *MEMORY[0x1E696A378];
  v1 = sub_1DB2BAD94();
  v3 = v2;
  if (v1 == sub_1DB2BAD94() && v3 == v4)
  {

    return 0x100000;
  }

  v6 = sub_1DB2BB924();

  if (v6)
  {
    return 0x100000;
  }

  v7 = *MEMORY[0x1E696A380];
  v8 = sub_1DB2BAD94();
  v10 = v9;
  if (v8 == sub_1DB2BAD94() && v10 == v11)
  {

    return 0x200000;
  }

  v13 = sub_1DB2BB924();

  if (v13)
  {
    return 0x200000;
  }

  v15 = *MEMORY[0x1E696A388];
  v16 = sub_1DB2BAD94();
  v18 = v17;
  if (v16 == sub_1DB2BAD94() && v18 == v19)
  {

    return 3145728;
  }

  v20 = sub_1DB2BB924();

  if (v20)
  {
    return 3145728;
  }

  v21 = *MEMORY[0x1E696A398];
  v22 = sub_1DB2BAD94();
  v24 = v23;
  if (v22 == sub_1DB2BAD94() && v24 == v25)
  {

LABEL_24:
    v27 = 4;
LABEL_25:
    v28 = sub_1DB2BAD94();
    v30 = v29;
    sub_1DB135B68();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = v27;
    return swift_willThrow();
  }

  v26 = sub_1DB2BB924();

  if (v26)
  {
    goto LABEL_24;
  }

  v32 = *MEMORY[0x1E696A3A8];
  v33 = sub_1DB2BAD94();
  v35 = v34;
  if (v33 == sub_1DB2BAD94() && v35 == v36)
  {
  }

  else
  {
    v37 = sub_1DB2BB924();

    if ((v37 & 1) == 0)
    {
      v27 = 6;
      goto LABEL_25;
    }
  }

  if (!_s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0())
  {
    v27 = 5;
    goto LABEL_25;
  }

  return 0x400000;
}

Swift::String __swiftcall SQLFormatter.format(_:)(Swift::String a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DB143DBC(&unk_1F56DF978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28608, &unk_1DB2C8610);
  swift_arrayDestroy();
  v2 = objc_allocWithZone(MEMORY[0x1E696AD60]);
  v3 = sub_1DB2BAD64();
  v36 = [v2 initWithString_];

  v4 = 0;
  v35 = 0;
  v6 = v1 + 64;
  v5 = *(v1 + 64);
  v37 = v1;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v5) != 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v4;
    if (v9)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(v37 + 48) + v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = (*(v37 + 56) + v15);
        v21 = *v19;
        v20 = v19[1];
        v22 = objc_allocWithZone(MEMORY[0x1E696AE70]);

        v23 = sub_1DB2BAD64();

        v38[0] = 0;
        v24 = [v22 initWithPattern:v23 options:0 error:{v38, v35}];

        if (v24)
        {
          v25 = v38[0];
          v26 = [v36 length];
          v27 = sub_1DB2BAD64();

          [v24 replaceMatchesInString:v36 options:0 range:0 withTemplate:{v26, v27}];

          v4 = v13;
          if (!v9)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v11 = v38[0];

          v12 = sub_1DB2BA7C4();

          swift_willThrow();
          MEMORY[0x1E1284A10](v12);
          v35 = 0;
          v4 = v13;
          if (!v9)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v13 = v4;
      }
    }
  }

  v28 = sub_1DB2BAD94();
  v30 = v29;

  v31 = *MEMORY[0x1E69E9840];
  v32 = v28;
  v33 = v30;
  result._object = v33;
  result._countAndFlagsBits = v32;
  return result;
}

id sub_1DB23CB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DB2BAD64();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1DB2BA7C4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

BOOL sub_1DB23CC0C(uint64_t a1, unint64_t a2, int a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v7 = 0;
    v8 = a2 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = sub_1DB2BB4E4();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v17[0] = a1;
          v17[1] = v8;
          v11 = v17 + v7;
        }

        else
        {
          v10 = v9;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = sub_1DB2BB5B4();
          }

          v11 = (v10 + v7);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v13 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v13 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v13 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v13 = 2;
        }
      }

LABEL_15:
      v14 = v12 == a3;
      result = v12 == a3;
      if (!v14)
      {
        v7 += v13;
        if (v7 < v3)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

BOOL String.fastMatches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_1DB2BA9E4();
  v6 = sub_1DB2BB364();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v13[0] = a2;
  v13[1] = a3;
  swift_checkMetadataState();
  sub_1DB2261E0();
  sub_1DB2BAD04();
  v11 = (*(*(v5 - 8) + 48))(v10, 1, v5) != 1;
  (*(v7 + 8))(v10, v6);
  return v11;
}

unint64_t Substring.fastContains(_:)(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a3 >> 14;
  v6 = a2 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    return 0;
  }

  v10 = a2;
  v11 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v23 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v24 = a5 & 0xFFFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v13 = a4 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v15 = v10 & 0xC;
    v16 = (v10 & 1) == 0 || v15 == v12;
    v17 = v16;
    if (v16)
    {
      break;
    }

    if (v10 >> 14 < v6)
    {
      goto LABEL_55;
    }

    result = v10;
    if (v10 >> 14 >= v5)
    {
      goto LABEL_55;
    }

LABEL_25:
    if ((a5 & 0x1000000000000000) != 0)
    {
      result = sub_1DB2BB4E4();
      v18 = result;
      if (!v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v26 = a4;
        v27 = v24;
      }

      else if ((a4 & 0x1000000000000000) == 0)
      {
        sub_1DB2BB5B4();
      }

      result = sub_1DB2BB5C4();
      v18 = result;
      if (!v17)
      {
LABEL_30:
        if (v13 <= v10 >> 16)
        {
          goto LABEL_57;
        }

LABEL_37:
        if ((a5 & 0x1000000000000000) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_49;
      }
    }

    if (v15 == v12)
    {
      result = sub_1DB23D3A8(v10, a4, a5);
      v10 = result;
      if (v13 <= result >> 16)
      {
        goto LABEL_56;
      }
    }

    else if (v13 <= v10 >> 16)
    {
      goto LABEL_56;
    }

    if (v10)
    {
      goto LABEL_37;
    }

    result = sub_1DB23D424(v10, a4, a5);
    v10 = v10 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a5 & 0x1000000000000000) == 0)
    {
LABEL_38:
      v19 = v10 >> 16;
      if ((a5 & 0x2000000000000000) != 0)
      {
        v26 = a4;
        v27 = v24;
        v20 = *(&v26 + v19);
      }

      else
      {
        result = v23;
        if ((a4 & 0x1000000000000000) == 0)
        {
          result = sub_1DB2BB5B4();
        }

        v20 = *(result + v19);
      }

      v21 = v20;
      v22 = __clz(v20 ^ 0xFF) - 24;
      if (v21 >= 0)
      {
        LOBYTE(v22) = 1;
      }

      v10 = ((v19 + v22) << 16) | 5;
      goto LABEL_50;
    }

LABEL_49:
    result = sub_1DB2BAE44();
    v10 = result;
LABEL_50:
    v16 = v18 == a1;
    v7 = v18 == a1;
    if (v16 || v10 >> 14 == v5)
    {

      return v7;
    }
  }

  result = v10;
  if (v15 == v12)
  {
    result = sub_1DB23D3A8(v10, a4, a5);
  }

  if (result >> 14 >= v6 && result >> 14 < v5)
  {
    if ((result & 1) == 0)
    {
      sub_1DB23D424(result, a4, a5);
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

BOOL Substring.fastMatches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a1;
  swift_getAssociatedTypeWitness();
  v8 = sub_1DB2BA9E4();
  v9 = sub_1DB2BB364();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - v12;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = v16[0];
  swift_checkMetadataState();
  sub_1DB23D538();
  sub_1DB2BAD04();
  v14 = (*(*(v8 - 8) + 48))(v13, 1, v8) != 1;
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t sub_1DB23D3A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DB2BAF84();
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
    v5 = MEMORY[0x1E1283500](15, a1 >> 16);
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

unint64_t sub_1DB23D424(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1DB2BB5B4();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1DB23D538()
{
  result = qword_1ECC28610;
  if (!qword_1ECC28610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28610);
  }

  return result;
}

uint64_t static Utils.assertInternalBuild()()
{
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    result = sub_1DB2BB684();
    __break(1u);
  }

  return result;
}

uint64_t static Utils.isInternalBuild.getter()
{
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  return has_internal_content;
}

uint64_t sub_1DB23D724()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28618, &unk_1DB2C8660);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DB2BBAE4();
  qword_1EE13F728 = result;
  return result;
}

uint64_t static Utils.withIsUnderTest<A>(_:block:)()
{
  if (qword_1EE13F730 != -1)
  {
    swift_once();
  }

  return sub_1DB2BBB04();
}

uint64_t static Utils.isProductionBuild.getter()
{
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  return has_internal_content ^ 1u;
}

uint64_t static Utils.isQaTool(bundleId:)()
{
  sub_1DB2BAE24();
  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    return 0;
  }

  return sub_1DB23D950();
}

uint64_t sub_1DB23D950()
{

  v0 = sub_1DB2BAF24();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1DB2BAF24();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1DB2BB924();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1DB2BAF24();
      v3 = v5;
    }

    while (v5);
  }

  sub_1DB2BAF24();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

BOOL _s19OnDeviceStorageCore5UtilsO11isUnderTestSbvgZ_0()
{
  if (qword_1EE13F730 != -1)
  {
    swift_once();
  }

  sub_1DB2BBAF4();
  v0 = v9;
  if (v9 == 2)
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 environment];

    v3 = sub_1DB2BACD4();
    if (*(v3 + 16))
    {
      sub_1DB141B30(0xD00000000000001BLL, 0x80000001DB2D63C0);
      v5 = v4;

      if (v5)
      {
        return 1;
      }
    }

    else
    {
    }

    v6 = sub_1DB2BAD64();
    v7 = NSClassFromString(v6);

    return v7 != 0;
  }

  return v0;
}

uint64_t ClientMessage.userId.getter()
{
  sub_1DB23DC94(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 56))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

__n128 sub_1DB23DC94@<Q0>(uint64_t *a1@<X8>)
{
  sub_1DB23E680(v1, v26);
  if (v29 > 4u)
  {
    if (v29 <= 6u)
    {
      if (v29 == 5)
      {
        a1[3] = &type metadata for InsertRequest;
        a1[4] = sub_1DB24BAA4();
        v9 = swift_allocObject();
        *a1 = v9;
        v10 = v27;
        *(v9 + 48) = *&v26[32];
        *(v9 + 64) = v10;
        *(v9 + 80) = *v28;
        *(v9 + 89) = *&v28[9];
        goto LABEL_15;
      }

      a1[3] = &type metadata for UpdateRequest;
      a1[4] = sub_1DB24BC48();
    }

    else
    {
      if (v29 != 7)
      {
        if (v29 == 8)
        {
          v20 = *&v26[16];
          v23 = *v26;
          v19 = *&v26[32];
          v3 = v27;
          a1[3] = &type metadata for DataDeletionTriggerRequest;
          a1[4] = sub_1DB24BE50();
          v4 = swift_allocObject();
          *a1 = v4;
          *(v4 + 16) = v23;
          *(v4 + 32) = v20;
          result = v19;
          *(v4 + 48) = v19;
          *(v4 + 64) = v3;
        }

        else
        {
          v13 = v26[0];
          v22 = *&v26[24];
          v25 = *&v26[8];
          v14 = *&v26[40];
          a1[3] = &type metadata for StatusRequest;
          a1[4] = sub_1DB24C03C();
          v15 = swift_allocObject();
          *a1 = v15;
          *(v15 + 16) = v13;
          result = v22;
          *(v15 + 24) = v25;
          *(v15 + 40) = v22;
          *(v15 + 56) = v14;
        }

        return result;
      }

      a1[3] = &type metadata for DeleteRequest;
      a1[4] = sub_1DB24BDD4();
    }

LABEL_21:
    v17 = swift_allocObject();
    *a1 = v17;
    v18 = v27;
    *(v17 + 48) = *&v26[32];
    *(v17 + 64) = v18;
    *(v17 + 80) = *v28;
    result = *&v26[16];
    *(v17 + 16) = *v26;
    *(v17 + 32) = result;
    return result;
  }

  if (v29 > 1u)
  {
    if (v29 != 2)
    {
      if (v29 == 3)
      {
        a1[3] = &type metadata for PluckRequest;
        a1[4] = sub_1DB24B6C4();
      }

      else
      {
        a1[3] = &type metadata for ScalarValueRequest;
        a1[4] = sub_1DB24B900();
      }

      goto LABEL_21;
    }

    a1[3] = &type metadata for SelectRequest;
    a1[4] = sub_1DB24B430();
    v9 = swift_allocObject();
    *a1 = v9;
    v11 = v27;
    *(v9 + 48) = *&v26[32];
    *(v9 + 64) = v11;
    *(v9 + 80) = *v28;
    *(v9 + 96) = *&v28[16];
LABEL_15:
    result.n128_u64[0] = *v26;
    v12 = *&v26[16];
    *(v9 + 16) = *v26;
    *(v9 + 32) = v12;
    return result;
  }

  v21 = *&v26[16];
  v24 = *v26;
  v6 = *&v26[32];
  if (v29)
  {
    a1[3] = &type metadata for DisconnectionRequest;
    a1[4] = sub_1DB24AFC0();
    v16 = swift_allocObject();
    *a1 = v16;
    result = v21;
    *(v16 + 16) = v24;
    *(v16 + 32) = v21;
    *(v16 + 48) = v6;
  }

  else
  {
    v7 = v26[40];
    a1[3] = &type metadata for ConnectionRequest;
    a1[4] = sub_1DB24EFEC();
    v8 = swift_allocObject();
    *a1 = v8;
    result = v21;
    *(v8 + 16) = v24;
    *(v8 + 32) = v21;
    *(v8 + 48) = v6;
    *(v8 + 56) = v7;
  }

  return result;
}

double ClientMessage.queryRequest.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1DB23DC94(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28620, &qword_1DB2C86A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28628, &qword_1DB2C86A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ClientMessage.estimatedSize.getter()
{
  sub_1DB23DC94(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 64))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t ClientMessage.accessType.getter()
{
  sub_1DB23DC94(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 72))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t ClientMessage.description.getter()
{
  sub_1DB23E680(v0, &v16);
  if (v21 <= 4u)
  {
    if (v21 > 1u)
    {
      if (v21 == 2)
      {
        v11 = v18;
        v12 = v19;
        *v13 = *v20;
        *&v13[16] = *&v20[16];
        v9 = v16;
        v10 = v17;
        sub_1DB2BB4F4();

        v14 = 0xD000000000000014;
        v15 = 0x80000001DB2D64B0;
        MEMORY[0x1E1283490](v10, *(&v10 + 1));
        MEMORY[0x1E1283490](93, 0xE100000000000000);
        v1 = 0xD000000000000014;
        sub_1DB23E7A8(&v9);
      }

      else
      {
        v11 = v18;
        v12 = v19;
        *v13 = *v20;
        v9 = v16;
        v10 = v17;
        if (v21 == 3)
        {
          sub_1DB2BB4F4();

          v14 = 0xD000000000000013;
          v15 = 0x80000001DB2D6490;
          MEMORY[0x1E1283490](v10, *(&v10 + 1));
          MEMORY[0x1E1283490](93, 0xE100000000000000);
          v1 = 0xD000000000000013;
          sub_1DB23E778(&v9);
        }

        else
        {
          sub_1DB2BB4F4();

          v14 = 0xD000000000000014;
          v15 = 0x80000001DB2D6470;
          MEMORY[0x1E1283490](v10, *(&v10 + 1));
          MEMORY[0x1E1283490](93, 0xE100000000000000);
          v1 = 0xD000000000000014;
          sub_1DB23E748(&v9);
        }
      }

      return v1;
    }

    if (!v21)
    {
      sub_1DB23E7D8(&v16);
      return 0x7463656E6E6F63;
    }

    v6 = *(&v17 + 1);
    v7 = v18;
    sub_1DB2BB4F4();

    *&v9 = 0xD000000000000018;
    *(&v9 + 1) = 0x80000001DB2D64D0;

    MEMORY[0x1E1283490](v6, v7);
    swift_bridgeObjectRelease_n();
LABEL_20:

    MEMORY[0x1E1283490](93, 0xE100000000000000);
    return v9;
  }

  if (v21 > 6u)
  {
    if (v21 == 7)
    {
      v11 = v18;
      v12 = v19;
      *v13 = *v20;
      v9 = v16;
      v10 = v17;
      sub_1DB2BB4F4();

      v14 = 0xD000000000000014;
      v15 = 0x80000001DB2D6410;
      MEMORY[0x1E1283490](v10, *(&v10 + 1));
      MEMORY[0x1E1283490](93, 0xE100000000000000);
      v1 = 0xD000000000000014;
      sub_1DB23E6B8(&v9);
      return v1;
    }

    if (v21 == 8)
    {
      v2 = v16;
      v4 = *(&v18 + 1);
      v3 = v19;
      *&v9 = 0;
      *(&v9 + 1) = 0xE000000000000000;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0xD000000000000021, 0x80000001DB2D63E0);

      MEMORY[0x1E1283490](v2, *(&v2 + 1));

      MEMORY[0x1E1283490](0x656767697274202CLL, 0xEE003D656D614E72);

      MEMORY[0x1E1283490](v4, v3);
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v5 = v16;
      *&v9 = 0;
      *(&v9 + 1) = 0xE000000000000000;
      sub_1DB2BB4F4();
      MEMORY[0x1E1283490](0x635B737574617473, 0xEF3D646E616D6D6FLL);
      LOBYTE(v14) = v5;
      sub_1DB2BB674();
    }

    goto LABEL_20;
  }

  v11 = v18;
  v12 = v19;
  if (v21 == 5)
  {
    *v13 = *v20;
    *&v13[9] = *&v20[9];
    v9 = v16;
    v10 = v17;
    sub_1DB2BB4F4();

    v14 = 0xD000000000000014;
    v15 = 0x80000001DB2D6450;
    MEMORY[0x1E1283490](v10, *(&v10 + 1));
    MEMORY[0x1E1283490](93, 0xE100000000000000);
    v1 = 0xD000000000000014;
    sub_1DB23E718(&v9);
  }

  else
  {
    *v13 = *v20;
    v9 = v16;
    v10 = v17;
    sub_1DB2BB4F4();

    v14 = 0xD000000000000014;
    v15 = 0x80000001DB2D6430;
    MEMORY[0x1E1283490](v10, *(&v10 + 1));
    MEMORY[0x1E1283490](93, 0xE100000000000000);
    v1 = 0xD000000000000014;
    sub_1DB23E6E8(&v9);
  }

  return v1;
}

uint64_t sub_1DB23E808(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6574656C6564;
    v6 = 0xD000000000000013;
    if (a1 != 8)
    {
      v6 = 0x737574617473;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x747265736E69;
    if (a1 != 5)
    {
      v7 = 0x657461647075;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7463656E6E6F63;
    v2 = 0x7463656C6573;
    v3 = 0x6B63756C70;
    if (a1 != 3)
    {
      v3 = 0x72616C616373;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656E6E6F63736964;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DB23E934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24A124(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB23E95C(uint64_t a1)
{
  v2 = sub_1DB23FEA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23E998(uint64_t a1)
{
  v2 = sub_1DB23FEA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23E9D4(uint64_t a1)
{
  v2 = sub_1DB2404E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EA10(uint64_t a1)
{
  v2 = sub_1DB2404E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EA4C(uint64_t a1)
{
  v2 = sub_1DB240048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EA88(uint64_t a1)
{
  v2 = sub_1DB240048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EAC4(uint64_t a1)
{
  v2 = sub_1DB240438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EB00(uint64_t a1)
{
  v2 = sub_1DB240438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EB3C(uint64_t a1)
{
  v2 = sub_1DB240198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EB78(uint64_t a1)
{
  v2 = sub_1DB240198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EBB4(uint64_t a1)
{
  v2 = sub_1DB2402E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EBF0(uint64_t a1)
{
  v2 = sub_1DB2402E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EC2C(uint64_t a1)
{
  v2 = sub_1DB240240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EC68(uint64_t a1)
{
  v2 = sub_1DB240240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23ECA4(uint64_t a1)
{
  v2 = sub_1DB240390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23ECE0(uint64_t a1)
{
  v2 = sub_1DB240390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23ED1C(uint64_t a1)
{
  v2 = sub_1DB23FEF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23ED58(uint64_t a1)
{
  v2 = sub_1DB23FEF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23ED94(uint64_t a1)
{
  v2 = sub_1DB23FFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EDD0(uint64_t a1)
{
  v2 = sub_1DB23FFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB23EE0C(uint64_t a1)
{
  v2 = sub_1DB2400F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB23EE48(uint64_t a1)
{
  v2 = sub_1DB2400F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientMessage.encode(to:)(void *a1)
{
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28630, &qword_1DB2C86B0);
  v92 = *(v93 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v65 - v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28638, &qword_1DB2C86B8);
  v89 = *(v90 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v65 - v5;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28640, &qword_1DB2C86C0);
  v86 = *(v87 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v65 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28648, &qword_1DB2C86C8);
  v83 = *(v84 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v65 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28650, &qword_1DB2C86D0);
  v80 = *(v81 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v65 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28658, &qword_1DB2C86D8);
  v77 = *(v78 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v65 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28660, &qword_1DB2C86E0);
  v74 = *(v75 - 8);
  v14 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v65 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28668, &qword_1DB2C86E8);
  v71 = *(v72 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v65 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28670, &qword_1DB2C86F0);
  v68 = *(v69 - 8);
  v18 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28678, &qword_1DB2C86F8);
  v67 = *(v21 - 8);
  v22 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28680, &qword_1DB2C8700);
  v95 = *(v25 - 8);
  v26 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v65 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB23FEA4();
  v30 = v28;
  sub_1DB2BBA94();
  sub_1DB23E680(v94, &v101);
  if (v106 > 4u)
  {
    if (v106 <= 6u)
    {
      v98 = v103;
      v99 = v104;
      if (v106 == 5)
      {
        *v100 = *v105;
        *&v100[9] = *&v105[9];
        v96 = v101;
        v97 = v102;
        v107 = 5;
        sub_1DB240198();
        v45 = v79;
        sub_1DB2BB804();
        sub_1DB2401EC();
        v46 = v81;
        sub_1DB2BB8A4();
        (*(v80 + 8))(v45, v46);
        sub_1DB23E718(&v96);
      }

      else
      {
        *v100 = *v105;
        v97 = v102;
        v96 = v101;
        v107 = 6;
        sub_1DB2400F0();
        v63 = v82;
        sub_1DB2BB804();
        sub_1DB240144();
        v64 = v84;
        sub_1DB2BB8A4();
        (*(v83 + 8))(v63, v64);
        sub_1DB23E6E8(&v96);
      }

      return (*(v95 + 8))(v28, v25);
    }

    v33 = v25;
    if (v106 == 7)
    {
      v98 = v103;
      v99 = v104;
      *v100 = *v105;
      v97 = v102;
      v96 = v101;
      v107 = 7;
      sub_1DB240048();
      v49 = v85;
      sub_1DB2BB804();
      sub_1DB24009C();
      v50 = v87;
      sub_1DB2BB8A4();
      (*(v86 + 8))(v49, v50);
      sub_1DB23E6B8(&v96);
      return (*(v95 + 8))(v28, v33);
    }

    v66 = v25;
    if (v106 == 8)
    {
      v34 = *(&v101 + 1);
      v94 = v101;
      v35 = v102;
      v36 = v103;
      v37 = v104;
      LOBYTE(v96) = 8;
      sub_1DB23FFA0();
      v38 = v88;
      v93 = v28;
      sub_1DB2BB804();
      *&v96 = v94;
      v94 = v34;
      *(&v96 + 1) = v34;
      v97 = v35;
      v98 = v36;
      *&v99 = v37;
      sub_1DB23FFF4();
      v39 = v90;
      sub_1DB2BB8A4();
      (*(v89 + 8))(v38, v39);
      (*(v95 + 8))(v93, v66);
    }

    else
    {
      v53 = v101;
      v54 = *(&v101 + 1);
      v55 = v102;
      v56 = v103;
      LOBYTE(v96) = 9;
      sub_1DB23FEF8();
      v57 = v91;
      sub_1DB2BB804();
      LOBYTE(v96) = v53;
      *(&v96 + 1) = v54;
      v97 = v55;
      v98 = v56;
      sub_1DB23FF4C();
      v58 = v93;
      sub_1DB2BB8A4();
      (*(v92 + 8))(v57, v58);
      (*(v95 + 8))(v28, v66);
    }
  }

  if (v106 <= 1u)
  {
    if (!v106)
    {
      v40 = *(&v101 + 1);
      v94 = v101;
      v41 = *(&v102 + 1);
      v93 = v102;
      v42 = v103;
      v43 = BYTE8(v103);
      LOBYTE(v96) = 0;
      sub_1DB2404E0();
      sub_1DB2BB804();
      *&v96 = v94;
      *(&v96 + 1) = v40;
      *&v97 = v93;
      *(&v97 + 1) = v41;
      *&v98 = v42;
      BYTE8(v98) = v43;
      sub_1DB240534();
      sub_1DB2BB8A4();
      (*(v67 + 8))(v24, v21);
      (*(v95 + 8))(v30, v25);

      return sub_1DB240588();
    }

    v59 = *(&v101 + 1);
    v94 = v101;
    v60 = v102;
    v61 = v103;
    LOBYTE(v96) = 1;
    sub_1DB240438();
    sub_1DB2BB804();
    *&v96 = v94;
    *(&v96 + 1) = v59;
    v97 = v60;
    *&v98 = v61;
    sub_1DB24048C();
    v62 = v69;
    sub_1DB2BB8A4();
    (*(v68 + 8))(v20, v62);
    (*(v95 + 8))(v28, v25);
  }

  if (v106 == 2)
  {
    v98 = v103;
    v99 = v104;
    *v100 = *v105;
    *&v100[16] = *&v105[16];
    v96 = v101;
    v97 = v102;
    v107 = 2;
    sub_1DB240390();
    v47 = v70;
    sub_1DB2BB804();
    sub_1DB2403E4();
    v48 = v72;
    sub_1DB2BB8A4();
    (*(v71 + 8))(v47, v48);
    sub_1DB23E7A8(&v96);
  }

  else
  {
    v98 = v103;
    v99 = v104;
    *v100 = *v105;
    v97 = v102;
    v96 = v101;
    if (v106 == 3)
    {
      v107 = 3;
      sub_1DB2402E8();
      v31 = v73;
      sub_1DB2BB804();
      sub_1DB24033C();
      v32 = v75;
      sub_1DB2BB8A4();
      (*(v74 + 8))(v31, v32);
      sub_1DB23E778(&v96);
    }

    else
    {
      v107 = 4;
      sub_1DB240240();
      v51 = v76;
      sub_1DB2BB804();
      sub_1DB240294();
      v52 = v78;
      sub_1DB2BB8A4();
      (*(v77 + 8))(v51, v52);
      sub_1DB23E748(&v96);
    }
  }

  return (*(v95 + 8))(v28, v25);
}

unint64_t sub_1DB23FEA4()
{
  result = qword_1EE140090;
  if (!qword_1EE140090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140090);
  }

  return result;
}

unint64_t sub_1DB23FEF8()
{
  result = qword_1ECC28688;
  if (!qword_1ECC28688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28688);
  }

  return result;
}

unint64_t sub_1DB23FF4C()
{
  result = qword_1ECC28690;
  if (!qword_1ECC28690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28690);
  }

  return result;
}

unint64_t sub_1DB23FFA0()
{
  result = qword_1ECC28698;
  if (!qword_1ECC28698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28698);
  }

  return result;
}

unint64_t sub_1DB23FFF4()
{
  result = qword_1ECC286A0;
  if (!qword_1ECC286A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286A0);
  }

  return result;
}

unint64_t sub_1DB240048()
{
  result = qword_1ECC286A8;
  if (!qword_1ECC286A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286A8);
  }

  return result;
}

unint64_t sub_1DB24009C()
{
  result = qword_1ECC286B0;
  if (!qword_1ECC286B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286B0);
  }

  return result;
}

unint64_t sub_1DB2400F0()
{
  result = qword_1ECC286B8;
  if (!qword_1ECC286B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286B8);
  }

  return result;
}

unint64_t sub_1DB240144()
{
  result = qword_1ECC286C0;
  if (!qword_1ECC286C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286C0);
  }

  return result;
}

unint64_t sub_1DB240198()
{
  result = qword_1EE140058;
  if (!qword_1EE140058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140058);
  }

  return result;
}

unint64_t sub_1DB2401EC()
{
  result = qword_1EE13FF80;
  if (!qword_1EE13FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF80);
  }

  return result;
}

unint64_t sub_1DB240240()
{
  result = qword_1ECC286C8;
  if (!qword_1ECC286C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286C8);
  }

  return result;
}

unint64_t sub_1DB240294()
{
  result = qword_1ECC286D0;
  if (!qword_1ECC286D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286D0);
  }

  return result;
}

unint64_t sub_1DB2402E8()
{
  result = qword_1ECC286D8;
  if (!qword_1ECC286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286D8);
  }

  return result;
}

unint64_t sub_1DB24033C()
{
  result = qword_1ECC286E0;
  if (!qword_1ECC286E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC286E0);
  }

  return result;
}

unint64_t sub_1DB240390()
{
  result = qword_1EE13F4C8;
  if (!qword_1EE13F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4C8);
  }

  return result;
}

unint64_t sub_1DB2403E4()
{
  result = qword_1EE13F4A8;
  if (!qword_1EE13F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4A8);
  }

  return result;
}

unint64_t sub_1DB240438()
{
  result = qword_1EE13FFE8;
  if (!qword_1EE13FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFE8);
  }

  return result;
}

unint64_t sub_1DB24048C()
{
  result = qword_1EE13F7F0;
  if (!qword_1EE13F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7F0);
  }

  return result;
}

unint64_t sub_1DB2404E0()
{
  result = qword_1EE140000;
  if (!qword_1EE140000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140000);
  }

  return result;
}

unint64_t sub_1DB240534()
{
  result = qword_1EE13F978;
  if (!qword_1EE13F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F978);
  }

  return result;
}

uint64_t ClientMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC286E8, &qword_1DB2C8708);
  v105 = *(v104 - 8);
  v3 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v108 = &v82[-v4];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC286F0, &qword_1DB2C8710);
  v102 = *(v103 - 8);
  v5 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v109 = &v82[-v6];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC286F8, &qword_1DB2C8718);
  v100 = *(v101 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v113 = &v82[-v8];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28700, &qword_1DB2C8720);
  v99 = *(v98 - 8);
  v9 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v112 = &v82[-v10];
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28708, &qword_1DB2C8728);
  v97 = *(v96 - 8);
  v11 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v111 = &v82[-v12];
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28710, &qword_1DB2C8730);
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v106 = &v82[-v14];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28718, &qword_1DB2C8738);
  v92 = *(v93 - 8);
  v15 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v107 = &v82[-v16];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28720, &qword_1DB2C8740);
  v90 = *(v91 - 8);
  v17 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v110 = &v82[-v18];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28728, &qword_1DB2C8748);
  v88 = *(v89 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v21 = &v82[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28730, &qword_1DB2C8750);
  v87 = *(v22 - 8);
  v23 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v82[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28738, &unk_1DB2C8758);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v82[-v29];
  v31 = a1[3];
  v32 = a1[4];
  v115 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1DB23FEA4();
  v33 = v132;
  sub_1DB2BBA84();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v85 = v25;
  v84 = v22;
  v86 = v21;
  v34 = v110;
  v35 = v111;
  v36 = v112;
  v37 = v113;
  v132 = v27;
  v38 = v114;
  v39 = sub_1DB2BB7D4();
  v40 = (2 * *(v39 + 16)) | 1;
  v126[0] = v39;
  v126[1] = v39 + 32;
  v127 = 0;
  v128 = v40;
  v41 = sub_1DB14B1EC();
  if (v41 == 10 || v127 != v128 >> 1)
  {
    v50 = sub_1DB2BB564();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
    *v52 = &type metadata for ClientMessage;
    sub_1DB2BB714();
    sub_1DB2BB554();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v132 + 8))(v30, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v115);
  }

  v83 = v41;
  if (v41 > 4u)
  {
    v110 = v30;
    v107 = v26;
    if (v41 <= 6u)
    {
      v44 = v38;
      if (v41 != 5)
      {
        LOBYTE(v117) = 6;
        sub_1DB2400F0();
        sub_1DB2BB704();
        v61 = v132;
        sub_1DB241A20();
        v71 = v98;
        sub_1DB2BB7B4();
        (*(v99 + 8))(v36, v71);
LABEL_29:
        (*(v61 + 8))(v110, v107);
LABEL_30:
        swift_unknownObjectRelease();
        v73 = v117;
        v74 = v118;
        v78 = v117 & 0xFFFFFFFFFFFFFF00;
        v75 = v119;
        v76 = v120;
        v80 = v121;
        v79 = v121 & 0xFFFFFFFFFFFFFF00;
        v77 = v122;
        v129 = v123;
        v130 = v124;
        v131 = v125;
        v72 = v115;
        goto LABEL_31;
      }

      LOBYTE(v117) = 5;
      sub_1DB240198();
      v60 = v35;
      sub_1DB2BB704();
      v61 = v132;
      sub_1DB241A74();
      v68 = v96;
      sub_1DB2BB7B4();
      v69 = v126;
    }

    else
    {
      v44 = v38;
      if (v41 != 7)
      {
        v55 = v132;
        if (v41 == 8)
        {
          LOBYTE(v117) = 8;
          sub_1DB23FFA0();
          v56 = v109;
          sub_1DB2BB704();
          sub_1DB241978();
          v57 = v103;
          sub_1DB2BB7B4();
          (*(v102 + 8))(v56, v57);
          (*(v55 + 8))(v110, v107);
          swift_unknownObjectRelease();
          v73 = v117;
          v74 = v118;
          v75 = v119;
          v76 = v120;
          v77 = v122;
          v78 = v117 & 0xFFFFFFFFFFFFFF00;
          v79 = v121 & 0xFFFFFFFFFFFFFF00;
          v80 = v121;
        }

        else
        {
          LOBYTE(v117) = 9;
          sub_1DB23FEF8();
          v64 = v108;
          sub_1DB2BB704();
          sub_1DB241924();
          v66 = v104;
          sub_1DB2BB7B4();
          (*(v105 + 8))(v64, v66);
          (*(v55 + 8))(v110, v107);
          swift_unknownObjectRelease();
          v78 = 0;
          v73 = v117;
          v74 = v118;
          v77 = &v119 + 8;
          v76 = v120;
          v80 = v121;
          v79 = v121 & 0xFFFFFFFFFFFFFF00;
          v75 = v119;
        }

        v72 = v115;
        goto LABEL_31;
      }

      LOBYTE(v117) = 7;
      sub_1DB240048();
      v60 = v37;
      sub_1DB2BB704();
      v61 = v132;
      sub_1DB2419CC();
      v68 = v101;
      sub_1DB2BB7B4();
      v69 = &v128;
    }

    (*(*(v69 - 32) + 8))(v60, v68);
    goto LABEL_29;
  }

  if (v41 <= 1u)
  {
    v110 = v30;
    if (v41)
    {
      LOBYTE(v117) = 1;
      sub_1DB240438();
      v65 = v86;
      sub_1DB2BB704();
      sub_1DB241BC4();
      v70 = v89;
      sub_1DB2BB7B4();
      (*(v88 + 8))(v65, v70);
      (*(v132 + 8))(v110, v26);
      swift_unknownObjectRelease();
      v79 = 0;
      v73 = v117;
      v74 = v118;
      v75 = v119;
      v76 = v120;
    }

    else
    {
      LOBYTE(v117) = 0;
      sub_1DB2404E0();
      v58 = v85;
      v59 = v110;
      sub_1DB2BB704();
      sub_1DB241C18();
      v67 = v84;
      sub_1DB2BB7B4();
      (*(v87 + 8))(v58, v67);
      (*(v132 + 8))(v59, v26);
      swift_unknownObjectRelease();
      v79 = 0;
      v73 = v117;
      v74 = v118;
      v75 = v119;
      v76 = v120;
      v80 = v121;
      v116 = v121;
    }

    v78 = v117 & 0xFFFFFFFFFFFFFF00;
    v72 = v115;
    v44 = v38;
    goto LABEL_31;
  }

  if (v41 != 2)
  {
    if (v41 == 3)
    {
      LOBYTE(v117) = 3;
      sub_1DB2402E8();
      v42 = v107;
      sub_1DB2BB704();
      v43 = v26;
      v44 = v38;
      v45 = v30;
      v46 = v43;
      sub_1DB241B1C();
      v47 = v93;
      sub_1DB2BB7B4();
      v48 = v132;
      v49 = &v123;
    }

    else
    {
      LOBYTE(v117) = 4;
      sub_1DB240240();
      v42 = v106;
      sub_1DB2BB704();
      v63 = v26;
      v44 = v38;
      v45 = v30;
      v46 = v63;
      sub_1DB241AC8();
      v47 = v95;
      sub_1DB2BB7B4();
      v48 = v132;
      v49 = &v124;
    }

    (*(*(v49 - 32) + 8))(v42, v47);
    (*(v48 + 8))(v45, v46);
    goto LABEL_30;
  }

  LOBYTE(v117) = 2;
  sub_1DB240390();
  sub_1DB2BB704();
  sub_1DB241B70();
  v62 = v91;
  sub_1DB2BB7B4();
  (*(v90 + 8))(v34, v62);
  (*(v132 + 8))(v30, v26);
  swift_unknownObjectRelease();
  v73 = v117;
  v74 = v118;
  v78 = v117 & 0xFFFFFFFFFFFFFF00;
  v75 = v119;
  v76 = v120;
  v80 = v121;
  v79 = v121 & 0xFFFFFFFFFFFFFF00;
  v77 = v122;
  v129 = v123;
  v130 = v124;
  v131 = v125;
  v72 = v115;
  v44 = v38;
LABEL_31:
  *(v44 + 16) = v75;
  v81 = v130;
  *(v44 + 56) = v129;
  *v44 = v78 | v73;
  *(v44 + 8) = v74;
  *(v44 + 32) = v76;
  *(v44 + 40) = v79 | v80;
  *(v44 + 48) = v77;
  *(v44 + 72) = v81;
  *(v44 + 88) = v131;
  *(v44 + 89) = v83;
  return __swift_destroy_boxed_opaque_existential_1(v72);
}

unint64_t sub_1DB241924()
{
  result = qword_1ECC28740;
  if (!qword_1ECC28740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28740);
  }

  return result;
}

unint64_t sub_1DB241978()
{
  result = qword_1ECC28748;
  if (!qword_1ECC28748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28748);
  }

  return result;
}

unint64_t sub_1DB2419CC()
{
  result = qword_1ECC28750;
  if (!qword_1ECC28750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28750);
  }

  return result;
}

unint64_t sub_1DB241A20()
{
  result = qword_1ECC28758;
  if (!qword_1ECC28758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28758);
  }

  return result;
}

unint64_t sub_1DB241A74()
{
  result = qword_1EE13FF78;
  if (!qword_1EE13FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF78);
  }

  return result;
}

unint64_t sub_1DB241AC8()
{
  result = qword_1ECC28760;
  if (!qword_1ECC28760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28760);
  }

  return result;
}

unint64_t sub_1DB241B1C()
{
  result = qword_1ECC28768;
  if (!qword_1ECC28768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28768);
  }

  return result;
}

unint64_t sub_1DB241B70()
{
  result = qword_1EE13F4A0;
  if (!qword_1EE13F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4A0);
  }

  return result;
}

unint64_t sub_1DB241BC4()
{
  result = qword_1EE13F7E8;
  if (!qword_1EE13F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7E8);
  }

  return result;
}

unint64_t sub_1DB241C18()
{
  result = qword_1EE13F970;
  if (!qword_1EE13F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F970);
  }

  return result;
}

uint64_t sub_1DB241CD0()
{
  if (*v0)
  {
    result = 0x6574697277;
  }

  else
  {
    result = 1684104562;
  }

  *v0;
  return result;
}

uint64_t sub_1DB241D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684104562 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574697277 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB241DD8(uint64_t a1)
{
  v2 = sub_1DB2421F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB241E14(uint64_t a1)
{
  v2 = sub_1DB2421F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB241E50(uint64_t a1)
{
  v2 = sub_1DB242298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB241E8C(uint64_t a1)
{
  v2 = sub_1DB242298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB241EC8(uint64_t a1)
{
  v2 = sub_1DB242244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB241F04(uint64_t a1)
{
  v2 = sub_1DB242244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequestAccessType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28770, &qword_1DB2C8768);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28778, &qword_1DB2C8770);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28780, &qword_1DB2C8778);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2421F0();
  sub_1DB2BBA94();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1DB242244();
    v18 = v22;
    sub_1DB2BB804();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1DB242298();
    sub_1DB2BB804();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1DB2421F0()
{
  result = qword_1ECC28788;
  if (!qword_1ECC28788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28788);
  }

  return result;
}

unint64_t sub_1DB242244()
{
  result = qword_1ECC28790;
  if (!qword_1ECC28790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28790);
  }

  return result;
}

unint64_t sub_1DB242298()
{
  result = qword_1ECC28798;
  if (!qword_1ECC28798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28798);
  }

  return result;
}

uint64_t RequestAccessType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t RequestAccessType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287A0, &qword_1DB2C8780);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287A8, &qword_1DB2C8788);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287B0, &qword_1DB2C8790);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2421F0();
  v16 = v36;
  sub_1DB2BBA84();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1DB2BB7D4();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1DB14B1F0();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1DB2BB564();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
      *v26 = &type metadata for RequestAccessType;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1DB242244();
        sub_1DB2BB704();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1DB242298();
        sub_1DB2BB704();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t ConnectionDetails.connectionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConnectionDetails.credential.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[10];
  v25 = v1[9];
  v26 = v3;
  v4 = v1[10];
  v27 = v1[11];
  v5 = v1[4];
  v6 = v1[6];
  v21 = v1[5];
  v7 = v21;
  v22 = v6;
  v8 = v1[6];
  v9 = v1[8];
  v23 = v1[7];
  v10 = v23;
  v24 = v9;
  v11 = v1[2];
  v18[0] = v1[1];
  v18[1] = v11;
  v12 = v1[4];
  v14 = v1[1];
  v13 = v1[2];
  v19 = v1[3];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[11];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1DB1F8988(v18, &v17);
}

__n128 ConnectionDetails.init(connectionId:credential:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 144);
  *(a4 + 144) = *(a3 + 128);
  *(a4 + 160) = v4;
  *(a4 + 176) = *(a3 + 160);
  v5 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v5;
  v6 = *(a3 + 112);
  *(a4 + 112) = *(a3 + 96);
  *(a4 + 128) = v6;
  v7 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v7;
  result = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = result;
  return result;
}

uint64_t sub_1DB242944()
{
  if (*v0)
  {
    result = 0x69746E6564657263;
  }

  else
  {
    result = 0x697463656E6E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1DB24298C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB242A74(uint64_t a1)
{
  v2 = sub_1DB242D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB242AB0(uint64_t a1)
{
  v2 = sub_1DB242D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConnectionDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287B8, &qword_1DB2C8798);
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 10);
  v40 = *(v1 + 9);
  v41 = v9;
  v42 = *(v1 + 11);
  v10 = *(v1 + 6);
  v36 = *(v1 + 5);
  v37 = v10;
  v11 = *(v1 + 8);
  v38 = *(v1 + 7);
  v39 = v11;
  v12 = *(v1 + 2);
  v32 = *(v1 + 1);
  v33 = v12;
  v13 = *(v1 + 4);
  v34 = *(v1 + 3);
  v35 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB242D40();
  sub_1DB2BBA94();
  LOBYTE(v21) = 0;
  v15 = v18;
  sub_1DB2BB864();
  if (v15)
  {
    return (*(v19 + 8))(v6, v3);
  }

  v29 = v40;
  v30 = v41;
  v31 = v42;
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v21 = v32;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v43 = 1;
  sub_1DB1F8988(&v32, v20);
  sub_1DB242D94();
  sub_1DB2BB8A4();
  v17 = (v19 + 8);
  v20[8] = v29;
  v20[9] = v30;
  v20[10] = v31;
  v20[4] = v25;
  v20[5] = v26;
  v20[6] = v27;
  v20[7] = v28;
  v20[0] = v21;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  sub_1DB1F89E4(v20);
  return (*v17)(v6, v3);
}

unint64_t sub_1DB242D40()
{
  result = qword_1EE13F9A8;
  if (!qword_1EE13F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9A8);
  }

  return result;
}

unint64_t sub_1DB242D94()
{
  result = qword_1EE13E9A8;
  if (!qword_1EE13E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E9A8);
  }

  return result;
}

uint64_t ConnectionDetails.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287C0, &qword_1DB2C87A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB242D40();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v11 = v71;
  LOBYTE(v36[0]) = 0;
  v12 = sub_1DB2BB774();
  v14 = v13;
  v23 = v12;
  v48 = 1;
  sub_1DB22536C();
  sub_1DB2BB7B4();
  (*(v10 + 8))(v8, v4);
  v15 = v57;
  v68 = v57;
  v69 = v58;
  v70 = v59;
  v64 = v53;
  v65 = v54;
  v66 = v55;
  v67 = v56;
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v29 = v53;
  v30 = v54;
  v32 = v56;
  v31 = v55;
  v25 = v49;
  v26 = v50;
  v16 = v23;
  *&v24 = v23;
  *(&v24 + 1) = v14;
  v28 = v52;
  v27 = v51;
  v11[8] = v56;
  v11[9] = v15;
  v17 = v35;
  v11[10] = v34;
  v11[11] = v17;
  v18 = v29;
  v11[4] = v28;
  v11[5] = v18;
  v19 = v31;
  v11[6] = v30;
  v11[7] = v19;
  v20 = v25;
  *v11 = v24;
  v11[1] = v20;
  v21 = v27;
  v11[2] = v26;
  v11[3] = v21;
  sub_1DB243124(&v24, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v16;
  v36[1] = v14;
  v45 = v68;
  v46 = v69;
  v47 = v70;
  v41 = v64;
  v42 = v65;
  v44 = v67;
  v43 = v66;
  v37 = v60;
  v38 = v61;
  v40 = v63;
  v39 = v62;
  return sub_1DB24315C(v36);
}

uint64_t ConnectionRequest.userId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ConnectionRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 89) = 0;

  return sub_1DB24325C();
}

uint64_t ConnectionRequest.credential.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1DB24325C();
  return v1;
}

uint64_t ConnectionRequest.init(credential:userId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 40) = a3 & 1;
  *a6 = a4;
  *(a6 + 8) = a5;

  sub_1DB24325C();
  v7 = sub_1DB2BAE94();
  sub_1DB240588();
  v8 = sub_1DB2BAE94();

  if (__OFADD__(v7, v8))
  {
    __break(1u);
  }

  else
  {
    *(a6 + 16) = v7 + v8;
  }

  return result;
}

unint64_t ConnectionRequest.description.getter()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_1DB2BB4F4();

  if (v3)
  {
    sub_1DB24325C();
    v4 = sub_1DB249BB8(7);
    v6 = v5;
    v8 = v7;
    v10 = v9;
    sub_1DB240588();
    v11 = MEMORY[0x1E12833E0](v4, v6, v8, v10);
    v13 = v12;

    v15 = v13;

    MEMORY[0x1E1283490](3026478, 0xE300000000000000);

    v2 = v11;
    v1 = v15;
  }

  else
  {
  }

  MEMORY[0x1E1283490](v2, v1);

  return 0xD000000000000024;
}

uint64_t sub_1DB243494()
{
  v1 = 0x6574616D69747365;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644972657375;
  }
}

uint64_t sub_1DB2434FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24A444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB243524(uint64_t a1)
{
  v2 = sub_1DB249C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB243560(uint64_t a1)
{
  v2 = sub_1DB249C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConnectionRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287C8, &qword_1DB2C87A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v19 = v1[3];
  v20 = v10;
  v18 = v1[4];
  v25 = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249C54();
  sub_1DB2BBA94();
  LOBYTE(v22) = 0;
  v12 = v21;
  sub_1DB2BB864();
  if (!v12)
  {
    v14 = v25;
    v16 = v18;
    v15 = v19;
    LOBYTE(v22) = 1;
    sub_1DB2BB894();
    v22 = v15;
    v23 = v16;
    v24 = v14;
    v26 = 2;
    sub_1DB249CA8();
    sub_1DB2BB8A4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ConnectionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287D0, &qword_1DB2C87B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249C54();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v11 = sub_1DB2BB774();
  v13 = v12;
  v14 = v11;
  LOBYTE(v20) = 1;
  v19 = sub_1DB2BB7A4();
  v23 = 2;
  sub_1DB249CFC();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  v17 = v22;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;

  sub_1DB24325C();
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1DB240588();
}

uint64_t sub_1DB243A10@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 89) = 0;

  return sub_1DB24325C();
}

uint64_t DisconnectionRequest.userId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DisconnectionRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 89) = 1;
}

uint64_t DisconnectionRequest.connectionId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void __swiftcall DisconnectionRequest.init(connectionId:userId:)(OnDeviceStorageCore::DisconnectionRequest *__return_ptr retstr, Swift::String connectionId, Swift::String userId)
{
  retstr->connectionId = connectionId;
  retstr->userId = userId;

  v4 = sub_1DB2BAE94();

  v5 = sub_1DB2BAE94();

  if (__OFADD__(v4, v5))
  {
    __break(1u);
  }

  else
  {
    retstr->estimatedSize = v4 + v5;
  }
}

unint64_t DisconnectionRequest.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v1, v2);
  return 0xD000000000000029;
}

uint64_t sub_1DB243C7C()
{
  v1 = 0x6574616D69747365;
  if (*v0 != 1)
  {
    v1 = 0x697463656E6E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644972657375;
  }
}

uint64_t sub_1DB243CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24A568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB243D10(uint64_t a1)
{
  v2 = sub_1DB249D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB243D4C(uint64_t a1)
{
  v2 = sub_1DB249D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DisconnectionRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287D8, &qword_1DB2C87B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249D50();
  sub_1DB2BBA94();
  v17 = 0;
  v12 = v14[3];
  sub_1DB2BB864();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_1DB2BB894();
  v15 = 2;
  sub_1DB2BB864();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DisconnectionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287E0, &qword_1DB2C87C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249D50();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_1DB2BB774();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_1DB2BB7A4();
  v23 = 2;
  v15 = sub_1DB2BB774();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v20 = v21;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB244178@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 89) = 1;
}

unint64_t sub_1DB2441FC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v1, v2);
  return 0xD000000000000029;
}

uint64_t sub_1DB2442A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24A688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB2442CC(uint64_t a1)
{
  v2 = sub_1DB249DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB244308(uint64_t a1)
{
  v2 = sub_1DB249DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB244344(uint64_t a1)
{
  v2 = sub_1DB249DF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB244380(uint64_t a1)
{
  v2 = sub_1DB249DF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB2443BC(uint64_t a1)
{
  v2 = sub_1DB249EA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2443F8(uint64_t a1)
{
  v2 = sub_1DB249EA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB244434(uint64_t a1)
{
  v2 = sub_1DB249EF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB244470(uint64_t a1)
{
  v2 = sub_1DB249EF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB2444AC(uint64_t a1)
{
  v2 = sub_1DB249E4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2444E8(uint64_t a1)
{
  v2 = sub_1DB249E4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatementType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287E8, &qword_1DB2C87C8);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287F0, &qword_1DB2C87D0);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC287F8, &qword_1DB2C87D8);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28800, &qword_1DB2C87E0);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28808, &qword_1DB2C87E8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249DA4();
  sub_1DB2BBA94();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1DB249E4C();
      v24 = v33;
      sub_1DB2BB804();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1DB249DF8();
      v24 = v36;
      sub_1DB2BB804();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1DB249EA0();
    v24 = v30;
    sub_1DB2BB804();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1DB249EF4();
  sub_1DB2BB804();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t StatementType.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t StatementType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28838, &qword_1DB2C87F0);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28840, &qword_1DB2C87F8);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28848, &qword_1DB2C8800);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28850, &qword_1DB2C8808);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28858, &qword_1DB2C8810);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1DB249DA4();
  v21 = v53;
  sub_1DB2BBA84();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1DB2BB7D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1DB14B1E8();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1DB2BB564();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
      *v34 = &type metadata for StatementType;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1DB249EA0();
        v39 = v42;
        sub_1DB2BB704();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1DB249EF4();
        v31 = v42;
        sub_1DB2BB704();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1DB249E4C();
      v38 = v42;
      sub_1DB2BB704();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1DB249DF8();
      v40 = v42;
      sub_1DB2BB704();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t QueryRequest.statement.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = sub_1DB21FF88(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1DB2450F4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1DB2BAE94();
  v4 = *v0;
  v5 = v0[1];
  result = sub_1DB2BAE94();
  v7 = v3 + result;
  if (__OFADD__(v3, result))
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1DB164C68((v0 + 4), v11);
  sub_1DB1355D0(v11, v12);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1DB21FF88(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v10 = sub_1DB2BAE94();

  result = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t QueryRequest.estimatedSize.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  (*(v4 + 16))(a1, v4);
  v5 = sub_1DB2BAE94();

  (*(*(v4 + 8) + 56))(a1);
  v6 = sub_1DB2BAE94();

  v8 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(a2 + 32))(a1, a2);
  v9 = sub_1DB2BAE94();

  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *QueryRequest.accessType.getter@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  result = (*(a1 + 24))(&v4);
  *a2 = v4 != 0;
  return result;
}

uint64_t SelectRequest.userId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SelectRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB249F48(v1, a1);
  *(a1 + 89) = 2;
  return result;
}

uint64_t SelectRequest.connectionId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SelectRequest.withQuery(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB249F48(v2, a2);
  sub_1DB164980(a1, v6);
  sub_1DB164BE4(a2 + 32);
  return sub_1DB1355D0(v6, a2 + 32);
}

uint64_t _s19OnDeviceStorageCore13SelectRequestV_10batchIndex0G8RowCount12connectionId04userL0AcA11Expressible_p_S2iS2StAA11ClientErrorOYKcfC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  if (a2 < 0)
  {
    v16 = a1;

    sub_1DB2BB4F4();

    v17 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v17);

    v19 = 0x80000001DB2D6590;
    v18 = 0xD000000000000019;
    v20 = xmmword_1DB2C8680;
  }

  else
  {
    if (a3 > 0)
    {
      a9[2] = a4;
      a9[3] = a5;
      result = sub_1DB1355D0(a1, (a9 + 4));
      *a9 = a6;
      a9[1] = a7;
      a9[9] = a2;
      a9[10] = a3;
      return result;
    }

    v16 = a1;

    sub_1DB2BB4F4();
    MEMORY[0x1E1283490](0xD000000000000031, 0x80000001DB2D6550);
    v21 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v21);

    v19 = 0xE000000000000000;
    v18 = 0;
    v20 = xmmword_1DB2C8670;
  }

  *a8 = v20;
  *(a8 + 16) = v18;
  *(a8 + 24) = v19;
  *(a8 + 32) = 0;
  *(a8 + 40) = 0;
  *(a8 + 48) = 7;
  sub_1DB14A10C();
  swift_willThrowTypedImpl();
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

double _s19OnDeviceStorageCore13SelectRequestV12_forTestOnly12connectionId04userK0AcA11Expressible_p_S2StAA11ClientErrorOYKcfC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB1355D0(a1, a6 + 32);
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  *a6 = a4;
  *(a6 + 8) = a5;
  result = 0.0;
  *(a6 + 72) = xmmword_1DB2C8690;
  return result;
}

uint64_t SelectRequest.description.getter()
{
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD00000000000001FLL, 0x80000001DB2D65B0);
  MEMORY[0x1E1283490](v0[2], v0[3]);
  MEMORY[0x1E1283490](0x637461427369202CLL, 0xED0000203A646568);
  v1 = v0[10];
  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0x65736C6166;
  }

  else
  {
    v2 = 1702195828;
  }

  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E1283490](v2, v3);

  MEMORY[0x1E1283490](0x496863746162202CLL, 0xEE00203A7865646ELL);
  v9 = v0[9];
  v6 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v6);

  MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D65D0);
  MEMORY[0x1E1283490](v4, v5);

  MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D65F0);
  v7 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v7);

  return 0;
}

uint64_t sub_1DB2458A4()
{
  v1 = *v0;
  v2 = 0x644972657375;
  v3 = 0x7972657551796E61;
  v4 = 0x646E496863746162;
  if (v1 != 3)
  {
    v4 = 0x776F526863746162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x697463656E6E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB245954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24A7DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB24597C(uint64_t a1)
{
  v2 = sub_1DB249F80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2459B8(uint64_t a1)
{
  v2 = sub_1DB249F80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SelectRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28860, &qword_1DB2C8818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249F80();
  sub_1DB2BBA94();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1DB2BB864();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18[14] = 1;
    sub_1DB2BB864();
    v18[13] = 2;
    sub_1DB164B90();
    sub_1DB2BB8A4();
    v16 = v3[9];
    v18[12] = 3;
    sub_1DB2BB894();
    v17 = v3[10];
    v18[11] = 4;
    sub_1DB2BB894();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SelectRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28868, &qword_1DB2C8820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB249F80();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v15[0]) = 0;
  v17[0] = sub_1DB2BB774();
  v17[1] = v11;
  LOBYTE(v15[0]) = 1;
  v17[2] = sub_1DB2BB774();
  v17[3] = v12;
  v23 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  v18 = v15[0];
  v19 = v15[1];
  v20 = v16;
  LOBYTE(v15[0]) = 3;
  v21 = sub_1DB2BB7A4();
  LOBYTE(v15[0]) = 4;
  v13 = sub_1DB2BB7A4();
  (*(v6 + 8))(v9, v5);
  v22 = v13;
  sub_1DB249F48(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E7A8(v17);
}

uint64_t sub_1DB245F04@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB249F48(v1, a1);
  *(a1 + 89) = 2;
  return result;
}

uint64_t sub_1DB245F78()
{
  sub_1DB164C68(v0 + 32, v5);
  sub_1DB1355D0(v5, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = sub_1DB21FF88(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_1DB245FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB249F48(v2, a2);
  sub_1DB164980(a1, v6);
  sub_1DB164BE4(a2 + 32);
  return sub_1DB1355D0(v6, a2 + 32);
}

double sub_1DB246050@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  sub_1DB1355D0(a1, a6 + 32);
  *a6 = a4;
  *(a6 + 8) = a5;
  result = 0.0;
  *(a6 + 72) = xmmword_1DB2C8690;
  return result;
}

uint64_t PluckRequest.userId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PluckRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB249FD4(v1, a1);
  *(a1 + 89) = 3;
  return result;
}

uint64_t PluckRequest.connectionId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t PluckRequest.description.getter()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD00000000000001ELL;
}

uint64_t PluckRequest.init(_forTestOnly:connectionId:userId:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[2] = a2;
  a6[3] = a3;
  result = sub_1DB1355D0(a1, (a6 + 4));
  *a6 = a4;
  a6[1] = a5;
  return result;
}

uint64_t sub_1DB246274(uint64_t a1)
{
  v2 = sub_1DB24A00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2462B0(uint64_t a1)
{
  v2 = sub_1DB24A00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PluckRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28880, &qword_1DB2C8830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24A00C();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v14[0]) = 0;
  v16[0] = sub_1DB2BB774();
  v16[1] = v11;
  LOBYTE(v14[0]) = 1;
  v16[2] = sub_1DB2BB774();
  v16[3] = v12;
  v20 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v9, v5);
  v17 = v14[0];
  v18 = v14[1];
  v19 = v15;
  sub_1DB249FD4(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E778(v16);
}

uint64_t sub_1DB246598@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB249FD4(v1, a1);
  *(a1 + 89) = 3;
  return result;
}

unint64_t sub_1DB246614()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD00000000000001ELL;
}

uint64_t ScalarValueRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24A060(v1, a1);
  *(a1 + 89) = 4;
  return result;
}

unint64_t ScalarValueRequest.description.getter()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD000000000000025;
}

uint64_t sub_1DB246740(uint64_t a1)
{
  v2 = sub_1DB24A098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24677C(uint64_t a1)
{
  v2 = sub_1DB24A098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScalarValueRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28898, &qword_1DB2C8840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24A098();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v14[0]) = 0;
  v16[0] = sub_1DB2BB774();
  v16[1] = v11;
  LOBYTE(v14[0]) = 1;
  v16[2] = sub_1DB2BB774();
  v16[3] = v12;
  v20 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v9, v5);
  v17 = v14[0];
  v18 = v14[1];
  v19 = v15;
  sub_1DB24A060(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E748(v16);
}

uint64_t sub_1DB246A64@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24A060(v1, a1);
  *(a1 + 89) = 4;
  return result;
}

unint64_t sub_1DB246AE0()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD000000000000025;
}

uint64_t InsertRequest.userId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InsertRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24A0EC(v1, a1);
  *(a1 + 89) = 5;
  return result;
}

uint64_t InsertRequest.connectionId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InsertRequest.withQuery(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB24A0EC(v2, a2);
  sub_1DB164980(a1, v6);
  sub_1DB164BE4(a2 + 32);
  return sub_1DB1355D0(v6, a2 + 32);
}

uint64_t _s19OnDeviceStorageCore13InsertRequestV_10batchIndex13isLastInBatch12connectionId04userN0AcA11Expressible_p_SiSbS2StAA11ClientErrorOYKcfC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a2 < 0)
  {

    *a8 = xmmword_1DB2C8680;
    *(a8 + 16) = 0xD000000000000017;
    *(a8 + 24) = 0x80000001DB2D6660;
    *(a8 + 32) = 0;
    *(a8 + 40) = 0;
    *(a8 + 48) = 7;
    sub_1DB14A10C();
    swift_willThrowTypedImpl();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    *(a9 + 16) = a4;
    *(a9 + 24) = a5;
    sub_1DB164980(a1, a9 + 32);
    *a9 = a6;
    *(a9 + 8) = a7;
    *(a9 + 72) = a2;
    v15 = sub_1DB24A99C(a1);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *(a9 + 80) = v15;
    *(a9 + 88) = a3 & 1;
  }

  return result;
}

uint64_t InsertRequest.description.getter()
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1DB2BB4F4();
  v9 = 0;
  v10 = 0xE000000000000000;
  MEMORY[0x1E1283490](0xD00000000000001FLL, 0x80000001DB2D6680);
  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E1283490](0x496863746162202CLL, 0xEE00203A7865646ELL);
  v8[0] = *(v0 + 72);
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  MEMORY[0x1E1283490](0xD000000000000011, 0x80000001DB2D65D0);
  if (*(v0 + 88))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + 88))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E1283490](v2, v3);

  MEMORY[0x1E1283490](0xD000000000000012, 0x80000001DB2D66A0);
  sub_1DB164C68(v0 + 32, v7);
  sub_1DB1355D0(v7, v8);
  v4 = sub_1DB24A99C(v8);
  __swift_destroy_boxed_opaque_existential_1(v8);
  v8[0] = v4;
  v5 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v5);

  return v9;
}

uint64_t _s19OnDeviceStorageCore13InsertRequestV12_forTestOnly12connectionId04userK0AcA11Expressible_p_S2StAA11ClientErrorOYKcfC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB164980(a1, v14);
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  sub_1DB164980(v14, a6 + 32);
  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 72) = 0;
  v12 = sub_1DB24A99C(v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *(a6 + 80) = v12;
  *(a6 + 88) = 1;
  return result;
}

uint64_t sub_1DB24700C()
{
  v1 = *v0;
  v2 = 0x644972657375;
  v3 = 0x646E496863746162;
  v4 = 0x776F526863746162;
  if (v1 != 4)
  {
    v4 = 0x6E497473614C7369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x697463656E6E6F63;
  if (v1 != 1)
  {
    v5 = 0x7972657551796E61;
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

uint64_t sub_1DB2470E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24E878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB247110(uint64_t a1)
{
  v2 = sub_1DB24AB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24714C(uint64_t a1)
{
  v2 = sub_1DB24AB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InsertRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288A0, &qword_1DB2C8848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AB40();
  sub_1DB2BBA94();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_1DB2BB864();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v19[14] = 1;
    sub_1DB2BB864();
    v19[13] = 2;
    sub_1DB164B90();
    sub_1DB2BB8A4();
    v16 = v3[9];
    v19[12] = 3;
    sub_1DB2BB894();
    v17 = v3[10];
    v19[11] = 4;
    sub_1DB2BB894();
    v18 = *(v3 + 88);
    v19[10] = 5;
    sub_1DB2BB874();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t InsertRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288A8, &qword_1DB2C8850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AB40();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v16) = 0;
  v19[0] = sub_1DB2BB774();
  v19[1] = v11;
  LOBYTE(v16) = 1;
  v19[2] = sub_1DB2BB774();
  v19[3] = v12;
  v26 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  v20 = v16;
  v21 = v17;
  v22 = v18;
  LOBYTE(v16) = 3;
  v23 = sub_1DB2BB7A4();
  LOBYTE(v16) = 4;
  v24 = sub_1DB2BB7A4();
  LOBYTE(v16) = 5;
  v13 = sub_1DB2BB784();
  (*(v6 + 8))(v9, v5);
  v25 = v13 & 1;
  sub_1DB24A0EC(v19, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E718(v19);
}

uint64_t sub_1DB2476D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24A0EC(v1, a1);
  *(a1 + 89) = 5;
  return result;
}

uint64_t sub_1DB247708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB24A0EC(v2, a2);
  sub_1DB164980(a1, v6);
  sub_1DB164BE4(a2 + 32);
  return sub_1DB1355D0(v6, a2 + 32);
}

uint64_t sub_1DB247768@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1DB164980(a1, v14);
  *(a6 + 16) = a2;
  *(a6 + 24) = a3;
  sub_1DB164980(v14, a6 + 32);
  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 72) = 0;
  v12 = sub_1DB24A99C(v14);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *(a6 + 80) = v12;
  *(a6 + 88) = 1;
  return result;
}

uint64_t UpdateRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24AB94(v1, a1);
  *(a1 + 89) = 6;
  return result;
}

uint64_t UpdateRequest.description.getter()
{
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD00000000000001FLL, 0x80000001DB2D66C0);
  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1E1283490](0xD000000000000014, 0x80000001DB2D66E0);
  sub_1DB247974();
  v1 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v1);

  return 0;
}

uint64_t sub_1DB247974()
{
  sub_1DB164C68(v0 + 32, v8);
  sub_1DB1355D0(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  if (swift_dynamicCast())
  {
    *&v7[11] = *(v9 + 11);
    v6 = v8[4];
    *v7 = v9[0];
    v4[0] = v8[0];
    v4[1] = v8[1];
    v4[2] = v8[2];
    v5 = v8[3];
    if (BYTE10(v9[1]))
    {
      v1 = v5;

      sub_1DB24EED4(v4);
      v2 = *(v1 + 16);

      return v2;
    }

    sub_1DB24EED4(v4);
  }

  return 0;
}

uint64_t sub_1DB247A50(uint64_t a1)
{
  v2 = sub_1DB24ABCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB247A8C(uint64_t a1)
{
  v2 = sub_1DB24ABCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UpdateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288C0, &qword_1DB2C8860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24ABCC();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v14[0]) = 0;
  v16[0] = sub_1DB2BB774();
  v16[1] = v11;
  LOBYTE(v14[0]) = 1;
  v16[2] = sub_1DB2BB774();
  v16[3] = v12;
  v20 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v9, v5);
  v17 = v14[0];
  v18 = v14[1];
  v19 = v15;
  sub_1DB24AB94(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E6E8(v16);
}

uint64_t sub_1DB247D74@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24AB94(v1, a1);
  *(a1 + 89) = 6;
  return result;
}

uint64_t DeleteRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24AC20(v1, a1);
  *(a1 + 89) = 7;
  return result;
}

uint64_t sub_1DB247E4C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  a2(v3, a3);
  sub_1DB164980(a1, v7);
  sub_1DB164BE4(a3 + 32);
  return sub_1DB1355D0(v7, a3 + 32);
}

unint64_t DeleteRequest.description.getter()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD00000000000001FLL;
}

uint64_t sub_1DB247F24(uint64_t a1)
{
  v2 = sub_1DB24AC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB247F60(uint64_t a1)
{
  v2 = sub_1DB24AC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB247FE0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB2BBA94();
  v14 = *v6;
  v15 = v6[1];
  v23 = 0;
  v16 = v20[1];
  sub_1DB2BB864();
  if (!v16)
  {
    v18 = v6[2];
    v19 = v6[3];
    v22 = 1;
    sub_1DB2BB864();
    v21 = 2;
    sub_1DB164B90();
    sub_1DB2BB8A4();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t DeleteRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288D8, &qword_1DB2C8870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AC58();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v14[0]) = 0;
  v16[0] = sub_1DB2BB774();
  v16[1] = v11;
  LOBYTE(v14[0]) = 1;
  v16[2] = sub_1DB2BB774();
  v16[3] = v12;
  v20 = 2;
  sub_1DB164A8C();
  sub_1DB2BB7B4();
  (*(v6 + 8))(v9, v5);
  v17 = v14[0];
  v18 = v14[1];
  v19 = v15;
  sub_1DB24AC20(v16, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DB23E6B8(v16);
}

uint64_t sub_1DB248428@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DB24AC20(v1, a1);
  *(a1 + 89) = 7;
  return result;
}

uint64_t sub_1DB248474@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X3>, uint64_t a3@<X8>)
{
  a2(v3, a3);
  sub_1DB164980(a1, v7);
  sub_1DB164BE4(a3 + 32);
  return sub_1DB1355D0(v7, a3 + 32);
}

unint64_t sub_1DB248508()
{
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](*(v0 + 16), *(v0 + 24));
  return 0xD00000000000001FLL;
}

uint64_t DataDeletionTriggerRequest.connectionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DataDeletionTriggerRequest.userId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DataDeletionTriggerRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
  *(a1 + 89) = 8;
}

uint64_t DataDeletionTriggerRequest.triggerName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void __swiftcall DataDeletionTriggerRequest.init(triggerName:connectionId:userId:)(OnDeviceStorageCore::DataDeletionTriggerRequest *__return_ptr retstr, Swift::String triggerName, Swift::String connectionId, Swift::String userId)
{
  retstr->triggerName = triggerName;
  retstr->connectionId = connectionId;
  retstr->userId = userId;

  v5 = sub_1DB2BAE94();

  v6 = sub_1DB2BAE94();

  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1DB2BAE94();

    if (!__OFADD__(v7, v8))
    {
      retstr->estimatedSize = v7 + v8;
      return;
    }
  }

  __break(1u);
}

unint64_t DataDeletionTriggerRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v1, v2);
  return 0xD000000000000029;
}

uint64_t sub_1DB2487D0()
{
  v1 = 0x697463656E6E6F63;
  v2 = 0x6574616D69747365;
  if (*v0 != 2)
  {
    v2 = 0x4E72656767697274;
  }

  if (*v0)
  {
    v1 = 0x644972657375;
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

uint64_t sub_1DB248864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24EBA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB24888C(uint64_t a1)
{
  v2 = sub_1DB24ACAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2488C8(uint64_t a1)
{
  v2 = sub_1DB24ACAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DataDeletionTriggerRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288E0, &qword_1DB2C8878);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v15[0] = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24ACAC();
  sub_1DB2BBA94();
  v19 = 0;
  v13 = v15[5];
  sub_1DB2BB864();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_1DB2BB864();
  v17 = 2;
  sub_1DB2BB894();
  v16 = 3;
  sub_1DB2BB864();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DataDeletionTriggerRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288F0, &qword_1DB2C8880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24ACAC();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v11 = sub_1DB2BB774();
  v28 = v12;
  v31 = 1;
  v26 = sub_1DB2BB774();
  v27 = v13;
  v30 = 2;
  v25 = sub_1DB2BB7A4();
  v29 = 3;
  v14 = sub_1DB2BB774();
  v17 = v16;
  v18 = *(v6 + 8);
  v24 = v14;
  v18(v9, v5);
  v20 = v27;
  v19 = v28;
  *a2 = v11;
  a2[1] = v19;
  v21 = v25;
  a2[2] = v26;
  a2[3] = v20;
  v22 = v24;
  a2[4] = v21;
  a2[5] = v22;
  a2[6] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB248DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
  *(a1 + 89) = 8;
}

unint64_t sub_1DB248E40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB2BB4F4();

  MEMORY[0x1E1283490](v1, v2);
  return 0xD000000000000029;
}

OnDeviceStorageCore::StatusCommand_optional __swiftcall StatusCommand.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StatusCommand.rawValue.getter()
{
  v1 = 1735289200;
  v2 = 0x7374617473;
  if (*v0 != 2)
  {
    v2 = 7105633;
  }

  if (*v0)
  {
    v1 = 7106931;
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

uint64_t sub_1DB248F94()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB249040()
{
  *v0;
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB2490D8()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB24918C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1735289200;
  v4 = 0xE500000000000000;
  v5 = 0x7374617473;
  if (*v1 != 2)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 7106931;
    v2 = 0xE300000000000000;
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

uint64_t StatusRequest.connectionId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StatusRequest.userId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t StatusRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 89) = 9;
}

uint64_t StatusRequest.description.getter()
{
  v1 = *v0;
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D6750);
  sub_1DB2BB674();
  return 0;
}

uint64_t sub_1DB2494D0()
{
  v1 = 0x646E616D6D6F63;
  v2 = 0x644972657375;
  if (*v0 != 2)
  {
    v2 = 0x6574616D69747365;
  }

  if (*v0)
  {
    v1 = 0x697463656E6E6F63;
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

uint64_t sub_1DB24955C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB24ED14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB249584(uint64_t a1)
{
  v2 = sub_1DB24AD00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2495C0(uint64_t a1)
{
  v2 = sub_1DB24AD00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StatusRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC288F8, &qword_1DB2C8888);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14[4] = *(v1 + 2);
  v14[5] = v10;
  v11 = *(v1 + 3);
  v14[2] = *(v1 + 4);
  v14[3] = v11;
  v14[1] = *(v1 + 5);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AD00();
  sub_1DB2BBA94();
  v19 = v9;
  v18 = 0;
  sub_1DB24AD54();
  sub_1DB2BB8A4();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v17 = 1;
  sub_1DB2BB864();
  v16 = 2;
  sub_1DB2BB864();
  v15 = 3;
  sub_1DB2BB894();
  return (*(v5 + 8))(v8, v4);
}

uint64_t StatusRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28910, &qword_1DB2C8890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24AD00();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_1DB24ADA8();
  sub_1DB2BB7B4();
  v11 = v27;
  v25 = 1;
  v12 = sub_1DB2BB774();
  v14 = v13;
  v22 = v12;
  v24 = 2;
  v20 = sub_1DB2BB774();
  v21 = v15;
  v23 = 3;
  v16 = sub_1DB2BB7A4();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  v17 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v20;
  *(a2 + 32) = v17;
  *(a2 + 40) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB249A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 89) = 9;
}

uint64_t sub_1DB249B28()
{
  v1 = *v0;
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0xD000000000000010, 0x80000001DB2D6750);
  sub_1DB2BB674();
  return 0;
}

uint64_t sub_1DB249BB8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DB2BAEC4();

    return sub_1DB2BB004();
  }

  return result;
}

unint64_t sub_1DB249C54()
{
  result = qword_1EE13F990;
  if (!qword_1EE13F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F990);
  }

  return result;
}

unint64_t sub_1DB249CA8()
{
  result = qword_1EE13F478;
  if (!qword_1EE13F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F478);
  }

  return result;
}

unint64_t sub_1DB249CFC()
{
  result = qword_1EE13E980;
  if (!qword_1EE13E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E980);
  }

  return result;
}

unint64_t sub_1DB249D50()
{
  result = qword_1EE13F808;
  if (!qword_1EE13F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F808);
  }

  return result;
}

unint64_t sub_1DB249DA4()
{
  result = qword_1ECC28810;
  if (!qword_1ECC28810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28810);
  }

  return result;
}

unint64_t sub_1DB249DF8()
{
  result = qword_1ECC28818;
  if (!qword_1ECC28818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28818);
  }

  return result;
}

unint64_t sub_1DB249E4C()
{
  result = qword_1ECC28820;
  if (!qword_1ECC28820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28820);
  }

  return result;
}

unint64_t sub_1DB249EA0()
{
  result = qword_1ECC28828;
  if (!qword_1ECC28828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28828);
  }

  return result;
}

unint64_t sub_1DB249EF4()
{
  result = qword_1ECC28830;
  if (!qword_1ECC28830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28830);
  }

  return result;
}

unint64_t sub_1DB249F80()
{
  result = qword_1EE13F4C0;
  if (!qword_1EE13F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4C0);
  }

  return result;
}

unint64_t sub_1DB24A00C()
{
  result = qword_1ECC28878;
  if (!qword_1ECC28878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28878);
  }

  return result;
}

unint64_t sub_1DB24A098()
{
  result = qword_1ECC28890;
  if (!qword_1ECC28890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28890);
  }

  return result;
}

uint64_t sub_1DB24A124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656E6E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E6E6F63736964 && a2 == 0xEA00000000007463 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7463656C6573 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63756C70 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x747265736E69 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DB2D6770 == a2 || (sub_1DB2BB924() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1DB24A444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000657A695364 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24A568(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000657A695364 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24A688(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656C6573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747265736E69 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24A7DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972657551796E61 && a2 == 0xE800000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E496863746162 && a2 == 0xEA00000000007865 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776F526863746162 && a2 == 0xED0000746E756F43)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24A99C(uint64_t a1)
{
  sub_1DB164980(a1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  if (swift_dynamicCast())
  {
    sub_1DB24EF28(v30, &v18);
    if (v28)
    {
      v1 = v18;
      v3 = v19;
      v2 = v20;
      v4 = v21;
      v5 = v22;
      v6 = v23;
      v7 = v24;
      v8 = v25;
      v9 = v26;
      v10 = v27;
    }

    else
    {
      sub_1DB1445E0(&v18, &qword_1ECC27CC8, &unk_1DB2C3860);
      v10 = 0;
      v5 = 0;
      v1 = 0;
      v3 = 0uLL;
      v2 = 0uLL;
      v4 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
    }

    v16 = v6;
    v17 = v3;
    v18 = v1;
    v19 = v3;
    v20 = v2;
    v21 = v4;
    v22 = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    sub_1DB1F7184(v30);
    if (v17)
    {

      sub_1DB1F7130(&v18);
      v14 = *(v16 + 16);

      return v14;
    }

    v11 = &qword_1ECC27CD0;
    v12 = &unk_1DB2CB840;
    v13 = &v18;
  }

  else
  {
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v32 = -1;
    v11 = &qword_1ECC27D28;
    v12 = &unk_1DB2CB830;
    v13 = v30;
  }

  sub_1DB1445E0(v13, v11, v12);
  return 0;
}

unint64_t sub_1DB24AB40()
{
  result = qword_1EE13FF98;
  if (!qword_1EE13FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF98);
  }

  return result;
}

unint64_t sub_1DB24ABCC()
{
  result = qword_1ECC288B8;
  if (!qword_1ECC288B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC288B8);
  }

  return result;
}

unint64_t sub_1DB24AC58()
{
  result = qword_1ECC288D0;
  if (!qword_1ECC288D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC288D0);
  }

  return result;
}

unint64_t sub_1DB24ACAC()
{
  result = qword_1ECC288E8;
  if (!qword_1ECC288E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC288E8);
  }

  return result;
}

unint64_t sub_1DB24AD00()
{
  result = qword_1ECC28900;
  if (!qword_1ECC28900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28900);
  }

  return result;
}

unint64_t sub_1DB24AD54()
{
  result = qword_1ECC28908;
  if (!qword_1ECC28908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28908);
  }

  return result;
}

unint64_t sub_1DB24ADA8()
{
  result = qword_1ECC28918;
  if (!qword_1ECC28918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28918);
  }

  return result;
}

unint64_t sub_1DB24AE00()
{
  result = qword_1ECC28920;
  if (!qword_1ECC28920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28920);
  }

  return result;
}

unint64_t sub_1DB24AE58()
{
  result = qword_1ECC28928;
  if (!qword_1ECC28928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28928);
  }

  return result;
}

unint64_t sub_1DB24AEB0()
{
  result = qword_1ECC28930;
  if (!qword_1ECC28930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28930);
  }

  return result;
}

unint64_t sub_1DB24AF44()
{
  result = qword_1EE13F968;
  if (!qword_1EE13F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F968);
  }

  return result;
}

unint64_t sub_1DB24AF98(uint64_t a1)
{
  result = sub_1DB24AFC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24AFC0()
{
  result = qword_1EE13E948;
  if (!qword_1EE13E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E948);
  }

  return result;
}

unint64_t sub_1DB24B06C()
{
  result = qword_1EE13F7E0;
  if (!qword_1EE13F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7E0);
  }

  return result;
}

unint64_t sub_1DB24B0C4()
{
  result = qword_1ECC28938;
  if (!qword_1ECC28938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28938);
  }

  return result;
}

unint64_t sub_1DB24B190()
{
  result = qword_1ECC28960;
  if (!qword_1ECC28960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28960);
  }

  return result;
}

uint64_t sub_1DB24B22C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28958, &qword_1DB2C8C58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB24B2A4()
{
  result = qword_1ECC28970;
  if (!qword_1ECC28970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28970);
  }

  return result;
}

unint64_t sub_1DB24B338()
{
  result = qword_1EE13F498;
  if (!qword_1EE13F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F498);
  }

  return result;
}

unint64_t sub_1DB24B38C(uint64_t a1)
{
  result = sub_1DB24B3B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B3B4()
{
  result = qword_1EE13EA40;
  if (!qword_1EE13EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA40);
  }

  return result;
}

unint64_t sub_1DB24B408(uint64_t a1)
{
  result = sub_1DB24B430();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B430()
{
  result = qword_1EE13EA38;
  if (!qword_1EE13EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA38);
  }

  return result;
}

uint64_t sub_1DB24B4CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28980, &qword_1DB2C8D40);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB24B5CC()
{
  result = qword_1ECC28990;
  if (!qword_1ECC28990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28990);
  }

  return result;
}

unint64_t sub_1DB24B620(uint64_t a1)
{
  result = sub_1DB24B648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B648()
{
  result = qword_1ECC28998;
  if (!qword_1ECC28998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28998);
  }

  return result;
}

unint64_t sub_1DB24B69C(uint64_t a1)
{
  result = sub_1DB24B6C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B6C4()
{
  result = qword_1ECC289A0;
  if (!qword_1ECC289A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289A0);
  }

  return result;
}

unint64_t sub_1DB24B71C()
{
  result = qword_1ECC289A8;
  if (!qword_1ECC289A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289A8);
  }

  return result;
}

unint64_t sub_1DB24B774()
{
  result = qword_1ECC289B0;
  if (!qword_1ECC289B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289B0);
  }

  return result;
}

unint64_t sub_1DB24B808()
{
  result = qword_1ECC289B8;
  if (!qword_1ECC289B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289B8);
  }

  return result;
}

unint64_t sub_1DB24B85C(uint64_t a1)
{
  result = sub_1DB24B884();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B884()
{
  result = qword_1ECC289C0;
  if (!qword_1ECC289C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289C0);
  }

  return result;
}

unint64_t sub_1DB24B8D8(uint64_t a1)
{
  result = sub_1DB24B900();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24B900()
{
  result = qword_1ECC289C8;
  if (!qword_1ECC289C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289C8);
  }

  return result;
}

unint64_t sub_1DB24B9AC()
{
  result = qword_1EE13FF70;
  if (!qword_1EE13FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF70);
  }

  return result;
}

unint64_t sub_1DB24BA00(uint64_t a1)
{
  result = sub_1DB24BA28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BA28()
{
  result = qword_1EE13EA50;
  if (!qword_1EE13EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA50);
  }

  return result;
}

unint64_t sub_1DB24BA7C(uint64_t a1)
{
  result = sub_1DB24BAA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BAA4()
{
  result = qword_1EE13EA48;
  if (!qword_1EE13EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13EA48);
  }

  return result;
}

unint64_t sub_1DB24BB50()
{
  result = qword_1ECC289D0;
  if (!qword_1ECC289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289D0);
  }

  return result;
}

unint64_t sub_1DB24BBA4(uint64_t a1)
{
  result = sub_1DB24BBCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BBCC()
{
  result = qword_1ECC289D8;
  if (!qword_1ECC289D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289D8);
  }

  return result;
}

unint64_t sub_1DB24BC20(uint64_t a1)
{
  result = sub_1DB24BC48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BC48()
{
  result = qword_1ECC289E0;
  if (!qword_1ECC289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289E0);
  }

  return result;
}

unint64_t sub_1DB24BCDC()
{
  result = qword_1ECC289E8;
  if (!qword_1ECC289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289E8);
  }

  return result;
}

unint64_t sub_1DB24BD30(uint64_t a1)
{
  result = sub_1DB24BD58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BD58()
{
  result = qword_1ECC289F0;
  if (!qword_1ECC289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289F0);
  }

  return result;
}

unint64_t sub_1DB24BDAC(uint64_t a1)
{
  result = sub_1DB24BDD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BDD4()
{
  result = qword_1ECC289F8;
  if (!qword_1ECC289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC289F8);
  }

  return result;
}

unint64_t sub_1DB24BE28(uint64_t a1)
{
  result = sub_1DB24BE50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24BE50()
{
  result = qword_1ECC28A00;
  if (!qword_1ECC28A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A00);
  }

  return result;
}

unint64_t sub_1DB24BEE4()
{
  result = qword_1ECC28A08;
  if (!qword_1ECC28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A08);
  }

  return result;
}

unint64_t sub_1DB24BF3C()
{
  result = qword_1ECC28A10;
  if (!qword_1ECC28A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A10);
  }

  return result;
}

uint64_t sub_1DB24BFC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB24C014(uint64_t a1)
{
  result = sub_1DB24C03C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB24C03C()
{
  result = qword_1ECC28A28;
  if (!qword_1ECC28A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A28);
  }

  return result;
}

uint64_t sub_1DB24C108(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28A38, &qword_1DB2C9358);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB24C1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB24C208()
{
  result = qword_1ECC28A48;
  if (!qword_1ECC28A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A48);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB24C298(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 90))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 89);
  if (v3 >= 0xA)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB24C2D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 74) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 89) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DB24C328(uint64_t result, unsigned int a2)
{
  if (a2 > 9)
  {
    *(result + 73) = 0u;
    v2 = a2 - 10;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 10;
    *result = v2;
  }

  *(result + 89) = a2;
  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1DB24C410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1DB24C458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB24C4EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DB24C534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DB24C69C(uint64_t a1, int a2)
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

uint64_t sub_1DB24C6E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB24C78C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1DB24C7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB24C84C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DB24C894(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DB24C914(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB24C95C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB24CB9C()
{
  result = qword_1ECC28A50;
  if (!qword_1ECC28A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A50);
  }

  return result;
}

unint64_t sub_1DB24CBF4()
{
  result = qword_1ECC28A58;
  if (!qword_1ECC28A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A58);
  }

  return result;
}

unint64_t sub_1DB24CC4C()
{
  result = qword_1ECC28A60;
  if (!qword_1ECC28A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A60);
  }

  return result;
}

unint64_t sub_1DB24CCA4()
{
  result = qword_1ECC28A68;
  if (!qword_1ECC28A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A68);
  }

  return result;
}

unint64_t sub_1DB24CCFC()
{
  result = qword_1ECC28A70;
  if (!qword_1ECC28A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A70);
  }

  return result;
}

unint64_t sub_1DB24CD54()
{
  result = qword_1ECC28A78;
  if (!qword_1ECC28A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A78);
  }

  return result;
}

unint64_t sub_1DB24CDAC()
{
  result = qword_1ECC28A80;
  if (!qword_1ECC28A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A80);
  }

  return result;
}

unint64_t sub_1DB24CE04()
{
  result = qword_1ECC28A88;
  if (!qword_1ECC28A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A88);
  }

  return result;
}

unint64_t sub_1DB24CE5C()
{
  result = qword_1ECC28A90;
  if (!qword_1ECC28A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A90);
  }

  return result;
}

unint64_t sub_1DB24CEB4()
{
  result = qword_1ECC28A98;
  if (!qword_1ECC28A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28A98);
  }

  return result;
}

unint64_t sub_1DB24CF0C()
{
  result = qword_1ECC28AA0;
  if (!qword_1ECC28AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AA0);
  }

  return result;
}

unint64_t sub_1DB24CF64()
{
  result = qword_1ECC28AA8;
  if (!qword_1ECC28AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AA8);
  }

  return result;
}

unint64_t sub_1DB24CFBC()
{
  result = qword_1ECC28AB0;
  if (!qword_1ECC28AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AB0);
  }

  return result;
}

unint64_t sub_1DB24D014()
{
  result = qword_1ECC28AB8;
  if (!qword_1ECC28AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AB8);
  }

  return result;
}

unint64_t sub_1DB24D06C()
{
  result = qword_1ECC28AC0;
  if (!qword_1ECC28AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AC0);
  }

  return result;
}

unint64_t sub_1DB24D0C4()
{
  result = qword_1ECC28AC8;
  if (!qword_1ECC28AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AC8);
  }

  return result;
}

unint64_t sub_1DB24D11C()
{
  result = qword_1ECC28AD0;
  if (!qword_1ECC28AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AD0);
  }

  return result;
}

unint64_t sub_1DB24D174()
{
  result = qword_1ECC28AD8;
  if (!qword_1ECC28AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AD8);
  }

  return result;
}

unint64_t sub_1DB24D1CC()
{
  result = qword_1ECC28AE0;
  if (!qword_1ECC28AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AE0);
  }

  return result;
}

unint64_t sub_1DB24D224()
{
  result = qword_1ECC28AE8;
  if (!qword_1ECC28AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AE8);
  }

  return result;
}

unint64_t sub_1DB24D27C()
{
  result = qword_1ECC28AF0;
  if (!qword_1ECC28AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AF0);
  }

  return result;
}

unint64_t sub_1DB24D2D4()
{
  result = qword_1ECC28AF8;
  if (!qword_1ECC28AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28AF8);
  }

  return result;
}

unint64_t sub_1DB24D32C()
{
  result = qword_1ECC28B00;
  if (!qword_1ECC28B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B00);
  }

  return result;
}

unint64_t sub_1DB24D384()
{
  result = qword_1ECC28B08;
  if (!qword_1ECC28B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B08);
  }

  return result;
}

unint64_t sub_1DB24D3DC()
{
  result = qword_1ECC28B10;
  if (!qword_1ECC28B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B10);
  }

  return result;
}

unint64_t sub_1DB24D434()
{
  result = qword_1ECC28B18;
  if (!qword_1ECC28B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B18);
  }

  return result;
}

unint64_t sub_1DB24D48C()
{
  result = qword_1ECC28B20;
  if (!qword_1ECC28B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B20);
  }

  return result;
}

unint64_t sub_1DB24D4E4()
{
  result = qword_1ECC28B28;
  if (!qword_1ECC28B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B28);
  }

  return result;
}

unint64_t sub_1DB24D53C()
{
  result = qword_1ECC28B30;
  if (!qword_1ECC28B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B30);
  }

  return result;
}

unint64_t sub_1DB24D594()
{
  result = qword_1ECC28B38;
  if (!qword_1ECC28B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B38);
  }

  return result;
}

unint64_t sub_1DB24D5EC()
{
  result = qword_1ECC28B40;
  if (!qword_1ECC28B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B40);
  }

  return result;
}

unint64_t sub_1DB24D644()
{
  result = qword_1ECC28B48;
  if (!qword_1ECC28B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B48);
  }

  return result;
}

unint64_t sub_1DB24D69C()
{
  result = qword_1EE13FF88;
  if (!qword_1EE13FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF88);
  }

  return result;
}

unint64_t sub_1DB24D6F4()
{
  result = qword_1EE13FF90;
  if (!qword_1EE13FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF90);
  }

  return result;
}

unint64_t sub_1DB24D74C()
{
  result = qword_1ECC28B50;
  if (!qword_1ECC28B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B50);
  }

  return result;
}

unint64_t sub_1DB24D7A4()
{
  result = qword_1ECC28B58;
  if (!qword_1ECC28B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B58);
  }

  return result;
}

unint64_t sub_1DB24D7FC()
{
  result = qword_1ECC28B60;
  if (!qword_1ECC28B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B60);
  }

  return result;
}

unint64_t sub_1DB24D854()
{
  result = qword_1ECC28B68;
  if (!qword_1ECC28B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B68);
  }

  return result;
}

unint64_t sub_1DB24D8AC()
{
  result = qword_1EE13F4B0;
  if (!qword_1EE13F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4B0);
  }

  return result;
}

unint64_t sub_1DB24D904()
{
  result = qword_1EE13F4B8;
  if (!qword_1EE13F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F4B8);
  }

  return result;
}

unint64_t sub_1DB24D95C()
{
  result = qword_1ECC28B70;
  if (!qword_1ECC28B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B70);
  }

  return result;
}

unint64_t sub_1DB24D9B4()
{
  result = qword_1ECC28B78;
  if (!qword_1ECC28B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B78);
  }

  return result;
}

unint64_t sub_1DB24DA0C()
{
  result = qword_1ECC28B80;
  if (!qword_1ECC28B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B80);
  }

  return result;
}

unint64_t sub_1DB24DA64()
{
  result = qword_1ECC28B88;
  if (!qword_1ECC28B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B88);
  }

  return result;
}

unint64_t sub_1DB24DABC()
{
  result = qword_1ECC28B90;
  if (!qword_1ECC28B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B90);
  }

  return result;
}

unint64_t sub_1DB24DB14()
{
  result = qword_1ECC28B98;
  if (!qword_1ECC28B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28B98);
  }

  return result;
}

unint64_t sub_1DB24DB6C()
{
  result = qword_1ECC28BA0;
  if (!qword_1ECC28BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BA0);
  }

  return result;
}

unint64_t sub_1DB24DBC4()
{
  result = qword_1ECC28BA8;
  if (!qword_1ECC28BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BA8);
  }

  return result;
}

unint64_t sub_1DB24DC1C()
{
  result = qword_1ECC28BB0;
  if (!qword_1ECC28BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BB0);
  }

  return result;
}

unint64_t sub_1DB24DC74()
{
  result = qword_1ECC28BB8;
  if (!qword_1ECC28BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BB8);
  }

  return result;
}

unint64_t sub_1DB24DCCC()
{
  result = qword_1EE13F7F8;
  if (!qword_1EE13F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F7F8);
  }

  return result;
}

unint64_t sub_1DB24DD24()
{
  result = qword_1EE13F800;
  if (!qword_1EE13F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F800);
  }

  return result;
}

unint64_t sub_1DB24DD7C()
{
  result = qword_1EE13F980;
  if (!qword_1EE13F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F980);
  }

  return result;
}

unint64_t sub_1DB24DDD4()
{
  result = qword_1EE13F988;
  if (!qword_1EE13F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F988);
  }

  return result;
}

unint64_t sub_1DB24DE2C()
{
  result = qword_1EE13F998;
  if (!qword_1EE13F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F998);
  }

  return result;
}

unint64_t sub_1DB24DE84()
{
  result = qword_1EE13F9A0;
  if (!qword_1EE13F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F9A0);
  }

  return result;
}

unint64_t sub_1DB24DEDC()
{
  result = qword_1ECC28BC0;
  if (!qword_1ECC28BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BC0);
  }

  return result;
}

unint64_t sub_1DB24DF34()
{
  result = qword_1ECC28BC8;
  if (!qword_1ECC28BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BC8);
  }

  return result;
}

unint64_t sub_1DB24DF8C()
{
  result = qword_1ECC28BD0;
  if (!qword_1ECC28BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BD0);
  }

  return result;
}

unint64_t sub_1DB24DFE4()
{
  result = qword_1ECC28BD8;
  if (!qword_1ECC28BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BD8);
  }

  return result;
}

unint64_t sub_1DB24E03C()
{
  result = qword_1ECC28BE0;
  if (!qword_1ECC28BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BE0);
  }

  return result;
}

unint64_t sub_1DB24E094()
{
  result = qword_1ECC28BE8;
  if (!qword_1ECC28BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BE8);
  }

  return result;
}

unint64_t sub_1DB24E0EC()
{
  result = qword_1EE13FFF0;
  if (!qword_1EE13FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFF0);
  }

  return result;
}

unint64_t sub_1DB24E144()
{
  result = qword_1EE13FFF8;
  if (!qword_1EE13FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFF8);
  }

  return result;
}

unint64_t sub_1DB24E19C()
{
  result = qword_1EE13FFD8;
  if (!qword_1EE13FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFD8);
  }

  return result;
}

unint64_t sub_1DB24E1F4()
{
  result = qword_1EE13FFE0;
  if (!qword_1EE13FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFE0);
  }

  return result;
}

unint64_t sub_1DB24E24C()
{
  result = qword_1EE140028;
  if (!qword_1EE140028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140028);
  }

  return result;
}

unint64_t sub_1DB24E2A4()
{
  result = qword_1EE140030;
  if (!qword_1EE140030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140030);
  }

  return result;
}

unint64_t sub_1DB24E2FC()
{
  result = qword_1EE140070;
  if (!qword_1EE140070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140070);
  }

  return result;
}

unint64_t sub_1DB24E354()
{
  result = qword_1EE140078;
  if (!qword_1EE140078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140078);
  }

  return result;
}

unint64_t sub_1DB24E3AC()
{
  result = qword_1EE140038;
  if (!qword_1EE140038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140038);
  }

  return result;
}

unint64_t sub_1DB24E404()
{
  result = qword_1EE140040;
  if (!qword_1EE140040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140040);
  }

  return result;
}

unint64_t sub_1DB24E45C()
{
  result = qword_1EE140048;
  if (!qword_1EE140048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140048);
  }

  return result;
}

unint64_t sub_1DB24E4B4()
{
  result = qword_1EE140050;
  if (!qword_1EE140050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140050);
  }

  return result;
}

unint64_t sub_1DB24E50C()
{
  result = qword_1EE140008;
  if (!qword_1EE140008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140008);
  }

  return result;
}

unint64_t sub_1DB24E564()
{
  result = qword_1EE140010;
  if (!qword_1EE140010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140010);
  }

  return result;
}

unint64_t sub_1DB24E5BC()
{
  result = qword_1EE140060;
  if (!qword_1EE140060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140060);
  }

  return result;
}

unint64_t sub_1DB24E614()
{
  result = qword_1EE140068;
  if (!qword_1EE140068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140068);
  }

  return result;
}

unint64_t sub_1DB24E66C()
{
  result = qword_1EE13FFC8;
  if (!qword_1EE13FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFC8);
  }

  return result;
}

unint64_t sub_1DB24E6C4()
{
  result = qword_1EE13FFD0;
  if (!qword_1EE13FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FFD0);
  }

  return result;
}

unint64_t sub_1DB24E71C()
{
  result = qword_1EE140018;
  if (!qword_1EE140018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140018);
  }

  return result;
}

unint64_t sub_1DB24E774()
{
  result = qword_1EE140020;
  if (!qword_1EE140020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140020);
  }

  return result;
}

unint64_t sub_1DB24E7CC()
{
  result = qword_1EE140080;
  if (!qword_1EE140080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140080);
  }

  return result;
}

unint64_t sub_1DB24E824()
{
  result = qword_1EE140088;
  if (!qword_1EE140088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE140088);
  }

  return result;
}

uint64_t sub_1DB24E878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972657551796E61 && a2 == 0xE800000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E496863746162 && a2 == 0xEA00000000007865 || (sub_1DB2BB924() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776F526863746162 && a2 == 0xED0000746E756F43 || (sub_1DB2BB924() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E497473614C7369 && a2 == 0xED00006863746142)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DB24EA8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644972657375 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972657551796E61 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24EBA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000657A695364 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E72656767697274 && a2 == 0xEB00000000656D61)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

uint64_t sub_1DB24ED14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEC00000064496E6FLL || (sub_1DB2BB924() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xED0000657A695364)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB2BB924();

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

unint64_t sub_1DB24EE80()
{
  result = qword_1ECC28BF0;
  if (!qword_1ECC28BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28BF0);
  }

  return result;
}

uint64_t sub_1DB24EF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC8, &unk_1DB2C3860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_251Tm(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[5];

  __swift_destroy_boxed_opaque_existential_1(v1 + 6);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1DB24EFEC()
{
  result = qword_1EE13E988;
  if (!qword_1EE13E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13E988);
  }

  return result;
}

uint64_t CredentialPayload.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1DB24325C();
    v4 = sub_1DB249BB8(7);
    v6 = v5;
    v8 = v7;
    v10 = v9;
    sub_1DB240588();
    a1 = MEMORY[0x1E12833E0](v4, v6, v8, v10);

    MEMORY[0x1E1283490](3026478, 0xE300000000000000);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1DB24F1D4()
{
  if (*v0)
  {
    result = 0x6E656B6F74;
  }

  else
  {
    result = 0x4974736575716572;
  }

  *v0;
  return result;
}

uint64_t sub_1DB24F210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB24F2F0(uint64_t a1)
{
  v2 = sub_1DB24FDDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24F32C(uint64_t a1)
{
  v2 = sub_1DB24FDDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB24F368(uint64_t a1)
{
  v2 = sub_1DB24FE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24F3A4(uint64_t a1)
{
  v2 = sub_1DB24FE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB24F3E0(uint64_t a1)
{
  v2 = sub_1DB24FE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB24F41C(uint64_t a1)
{
  v2 = sub_1DB24FE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CredentialPayload.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28BF8, &qword_1DB2CB870);
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C00, &qword_1DB2CB878);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C08, &qword_1DB2CB880);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB24FDDC();
  sub_1DB2BBA94();
  v19 = (v14 + 8);
  if (v27)
  {
    v29 = 1;
    sub_1DB24FE30();
    sub_1DB2BB804();
    v20 = v24;
    sub_1DB2BB864();
    (*(v23 + 8))(v8, v20);
  }

  else
  {
    v28 = 0;
    sub_1DB24FE84();
    sub_1DB2BB804();
    sub_1DB2BB864();
    (*(v22 + 8))(v12, v9);
  }

  return (*v19)(v17, v13);
}

uint64_t CredentialPayload.init(from:)(uint64_t *a1)
{
  result = sub_1DB24F8A8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1DB24F770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DB24F8A8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1DB24F7C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v3 = *v0;
    v4 = *(v0 + 8);
    sub_1DB24325C();
    v5 = sub_1DB249BB8(7);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    sub_1DB240588();
    v1 = MEMORY[0x1E12833E0](v5, v7, v9, v11);

    MEMORY[0x1E1283490](3026478, 0xE300000000000000);
  }

  else
  {
    v12 = *(v0 + 8);
  }

  return v1;
}

uint64_t sub_1DB24F8A8(uint64_t *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C30, &qword_1DB2CBCE0);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C38, &qword_1DB2CBCE8);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C40, &qword_1DB2CBCF0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DB24FDDC();
  v16 = v35;
  sub_1DB2BBA84();
  if (!v16)
  {
    v31 = 0;
    v35 = v10;
    v17 = sub_1DB2BB7D4();
    v18 = (2 * *(v17 + 16)) | 1;
    v37 = v17;
    v38 = v17 + 32;
    v39 = 0;
    v40 = v18;
    v19 = sub_1DB14B1F0();
    v20 = v9;
    if (v19 == 2 || v39 != v40 >> 1)
    {
      v23 = sub_1DB2BB564();
      swift_allocError();
      v10 = v9;
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
      *v25 = &type metadata for CredentialPayload;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v35 + 8))(v13, v10);
    }

    else
    {
      v41 = v19;
      if (v19)
      {
        v42 = 1;
        sub_1DB24FE30();
        v21 = v31;
        sub_1DB2BB704();
        v22 = v35;
        if (!v21)
        {
          v30 = v32;
          v10 = sub_1DB2BB774();
          (*(v34 + 8))(v4, v30);
          (*(v22 + 8))(v13, v20);
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      else
      {
        v42 = 0;
        sub_1DB24FE84();
        v28 = v31;
        sub_1DB2BB704();
        v29 = v35;
        if (!v28)
        {
          v10 = sub_1DB2BB774();
          (*(v33 + 8))(v8, v5);
          (*(v29 + 8))(v13, v20);
          goto LABEL_8;
        }
      }

      (*(v35 + 8))(v13, v20);
    }

LABEL_8:
    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v10;
}

unint64_t sub_1DB24FDDC()
{
  result = qword_1EE13F960;
  if (!qword_1EE13F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F960);
  }

  return result;
}

unint64_t sub_1DB24FE30()
{
  result = qword_1EE13F948;
  if (!qword_1EE13F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F948);
  }

  return result;
}

unint64_t sub_1DB24FE84()
{
  result = qword_1ECC28C10;
  if (!qword_1ECC28C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C10);
  }

  return result;
}

uint64_t sub_1DB24FED8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB24FF20(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1DB24FFB4()
{
  result = qword_1ECC28C18;
  if (!qword_1ECC28C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C18);
  }

  return result;
}

unint64_t sub_1DB25000C()
{
  result = qword_1ECC28C20;
  if (!qword_1ECC28C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C20);
  }

  return result;
}

unint64_t sub_1DB250064()
{
  result = qword_1ECC28C28;
  if (!qword_1ECC28C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28C28);
  }

  return result;
}

unint64_t sub_1DB2500BC()
{
  result = qword_1EE13F928;
  if (!qword_1EE13F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F928);
  }

  return result;
}

unint64_t sub_1DB250114()
{
  result = qword_1EE13F930;
  if (!qword_1EE13F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F930);
  }

  return result;
}

unint64_t sub_1DB25016C()
{
  result = qword_1EE13F938;
  if (!qword_1EE13F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F938);
  }

  return result;
}

unint64_t sub_1DB2501C4()
{
  result = qword_1EE13F940;
  if (!qword_1EE13F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F940);
  }

  return result;
}

unint64_t sub_1DB25021C()
{
  result = qword_1EE13F950;
  if (!qword_1EE13F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F950);
  }

  return result;
}

unint64_t sub_1DB250274()
{
  result = qword_1EE13F958;
  if (!qword_1EE13F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F958);
  }

  return result;
}

uint64_t DaemonResponse.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for DaemonResponse();
  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for DaemonResponse();
  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonResponse.get()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - v11;
  v13 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(a1[2] - 8) + 32))(a2, v15);
  }

  v18 = *(v5 + 32);
  v18(v12, v15, v4);
  (*(v5 + 16))(v9, v12, v4);
  v19 = a1[8];
  if (sub_1DB2BB904())
  {
    (*(v5 + 8))(v9, v4);
  }

  else
  {
    swift_allocError();
    v18(v20, v9, v4);
  }

  swift_willThrow();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1DB2506DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DB2BB924() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1DB2BB924();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DB2507A8(char a1)
{
  if (a1)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

BOOL sub_1DB2507D8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  return sub_1DB1FBE74(*a1, *a2);
}

uint64_t sub_1DB25081C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_1DB1FBEAC(*v1);
}

uint64_t sub_1DB250838(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v10 = a2[8];
  return sub_1DB1FBE84(a1, *v2);
}

uint64_t sub_1DB250874(uint64_t a1, void *a2)
{
  sub_1DB2BBA04();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  sub_1DB1FBE84(v12, *v2);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB2508CC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  return sub_1DB2507A8(*v1);
}

uint64_t sub_1DB2508E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  result = sub_1DB2506DC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1DB250930@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  result = sub_1DB202F64();
  *a2 = result;
  return result;
}

uint64_t sub_1DB25096C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB2509C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB250A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB250A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DB250AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  result = sub_1DB1FBF28(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DB250B20@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DB250B68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB250BBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DaemonResponse.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v68 = a2[2];
  v4 = v68;
  v69 = v3;
  v70 = v5;
  v71 = v6;
  v10 = v5;
  v65 = a1;
  v66 = v5;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v57 = type metadata accessor for DaemonResponse.SuccessCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1DB2BB8C4();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v46 - v14;
  v58 = *(v68 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v4;
  v69 = v3;
  v70 = v10;
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v17 = type metadata accessor for DaemonResponse.FailureCodingKeys();
  v18 = swift_getWitnessTable();
  v50 = v17;
  v48 = v18;
  v53 = sub_1DB2BB8C4();
  v52 = *(v53 - 8);
  v19 = *(v52 + 64);
  v20 = MEMORY[0x1EEE9AC00](v53);
  v49 = &v46 - v21;
  v51 = *(v3 - 8);
  v22 = *(v51 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v47 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v6;
  v64 = v4;
  v68 = v4;
  v69 = v3;
  v61 = v3;
  v62 = v8;
  v70 = v66;
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  type metadata accessor for DaemonResponse.CodingKeys();
  swift_getWitnessTable();
  v29 = sub_1DB2BB8C4();
  v66 = *(v29 - 8);
  v30 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v46 - v31;
  v33 = v65[4];
  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  sub_1DB2BBA94();
  (*(v25 + 16))(v28, v67, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v58;
    v35 = v54;
    v36 = v64;
    (*(v58 + 32))(v54, v28, v64);
    LOBYTE(v68) = 1;
    v37 = v56;
    v38 = v29;
    sub_1DB2BB804();
    v39 = v60;
    sub_1DB2BB8A4();
    (*(v59 + 8))(v37, v39);
    (*(v34 + 8))(v35, v36);
    v29 = v38;
  }

  else
  {
    v40 = v51;
    v41 = v47;
    v42 = v61;
    (*(v51 + 32))(v47, v28, v61);
    LOBYTE(v68) = 0;
    v43 = v49;
    sub_1DB2BB804();
    v44 = v53;
    sub_1DB2BB8A4();
    (*(v52 + 8))(v43, v44);
    (*(v40 + 8))(v41, v42);
  }

  return (*(v66 + 8))(v32, v29);
}

uint64_t DaemonResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v93 = a1;
  v79 = a9;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v76 = type metadata accessor for DaemonResponse.SuccessCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v68 = sub_1DB2BB7E4();
  v67 = *(v68 - 8);
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v77 = &v62 - v17;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v18 = type metadata accessor for DaemonResponse.FailureCodingKeys();
  v19 = swift_getWitnessTable();
  v73 = v18;
  v72 = v19;
  v66 = sub_1DB2BB7E4();
  v65 = *(v66 - 8);
  v20 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v74 = &v62 - v21;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  type metadata accessor for DaemonResponse.CodingKeys();
  v84 = swift_getWitnessTable();
  v80 = sub_1DB2BB7E4();
  v83 = *(v80 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v24 = &v62 - v23;
  v69 = a2;
  *&v88 = a2;
  *(&v88 + 1) = a3;
  v82 = a3;
  v71 = a4;
  *&v89 = a4;
  *(&v89 + 1) = a5;
  v70 = a6;
  v90 = a6;
  v91 = a7;
  v92 = a8;
  v25 = type metadata accessor for DaemonResponse();
  v78 = *(v25 - 8);
  v26 = *(v78 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v62 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v62 - v33;
  v35 = v93[4];
  __swift_project_boxed_opaque_existential_1(v93, v93[3]);
  v81 = v24;
  v36 = v85;
  sub_1DB2BBA84();
  if (!v36)
  {
    v64 = v29;
    v84 = v32;
    v63 = v34;
    v85 = v25;
    v37 = v81;
    v38 = v80;
    *&v86 = sub_1DB2BB7D4();
    sub_1DB2BB154();
    swift_getWitnessTable();
    *&v88 = sub_1DB2BB424();
    *(&v88 + 1) = v39;
    *&v89 = v40;
    *(&v89 + 1) = v41;
    sub_1DB2BB414();
    swift_getWitnessTable();
    sub_1DB2BB214();
    v42 = v86;
    if (v86 == 2 || (v62 = v88, v86 = v88, v87 = v89, (sub_1DB2BB224() & 1) == 0))
    {
      v51 = sub_1DB2BB564();
      swift_allocError();
      v53 = v52;
      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26FD8, &qword_1DB2BDA10) + 48);
      *v53 = v85;
      sub_1DB2BB714();
      sub_1DB2BB554();
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
      swift_willThrow();
      (*(v83 + 8))(v37, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v86) = 1;
        v43 = v77;
        v44 = v38;
        sub_1DB2BB704();
        v46 = v78;
        v45 = v79;
        v47 = v83;
        v48 = v68;
        sub_1DB2BB7B4();
        (*(v67 + 8))(v43, v48);
        (*(v47 + 8))(v37, v44);
        swift_unknownObjectRelease();
        v49 = v64;
      }

      else
      {
        LOBYTE(v86) = 0;
        v55 = v74;
        v56 = v38;
        sub_1DB2BB704();
        v46 = v78;
        v45 = v79;
        v57 = v83;
        v58 = v66;
        sub_1DB2BB7B4();
        (*(v65 + 8))(v55, v58);
        (*(v57 + 8))(v37, v56);
        swift_unknownObjectRelease();
        v49 = v84;
      }

      v50 = v85;
      swift_storeEnumTagMultiPayload();
      v60 = *(v46 + 32);
      v61 = v63;
      v60(v63, v49, v50);
      v60(v45, v61, v50);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t sub_1DB251ADC(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB251B58(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= *(*(*(a3 + 24) - 8) + 64))
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1DB251C80(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (*(*(*(a4 + 16) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t ClientEntitlementChecker.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1DB2525B4();
  v6 = *(a2 - 8);
  a3[4] = &type metadata for ClientEntitlementReader;
  a3[5] = &off_1F56E7680;
  v7 = *(v6 + 8);

  return v7(a1, a2);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlement(_:)(Swift::String a1)
{
  sub_1DB2520D8(a1._countAndFlagsBits, a1._object, v1);
  if (v2)
  {
    LODWORD(v2) = swift_dynamicCast();
    if (v2)
    {
      LOBYTE(v2) = v4;
    }
  }

  return v2;
}

void sub_1DB2520D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = *(a3 + 16);
  v7 = a1;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C50, &unk_1DB2CC230);
  sub_1DB13B25C(sub_1DB252818, v5, v4);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlements(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    sub_1DB2522C0(a1._rawValue, v1);
    v4 = v2;
    if (v2)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1DB2BACC4();

        return 0;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1DB2522C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C48, &qword_1DB2CC228);
  sub_1DB13B25C(sub_1DB2526E4, v4, v3);
}

void sub_1DB252350(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = sub_1DB2BAD64();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, &token);

    v10 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1DB2527C0();
      swift_allocError();
      *v11 = v10;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {

      *a5 = v9;
    }
  }

  else
  {
    *a5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DB252480(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CFDictionaryRef *a5@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = sub_1DB2BB0B4();
    v9 = SecTaskCopyValuesForEntitlements(v7, v8, &token);

    v10 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1DB2527C0();
      swift_allocError();
      *v11 = v10;
      swift_willThrow();
    }

    else
    {

      *a5 = v9;
    }
  }

  else
  {
    *a5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DB2525B4()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1DB2BB5A4();
  return sub_1DB2BB594();
}

uint64_t sub_1DB252680()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB2526E4()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v1;
  v2 = *(v7 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C48, &qword_1DB2CC228);
  return v2(sub_1DB2527A0, &v5, v3, v6, v7);
}

void sub_1DB2527A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CFDictionaryRef *a5@<X8>)
{
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  sub_1DB252480(a1, a2, a3, a4, a5);
}

unint64_t sub_1DB2527C0()
{
  result = qword_1ECC28570;
  if (!qword_1ECC28570)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28570);
  }

  return result;
}

uint64_t sub_1DB252818()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = v1;
  v10 = v2;
  v3 = *(v8 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28C50, &unk_1DB2CC230);
  return v3(sub_1DB2528D4, &v6, v4, v7, v8);
}

void sub_1DB2528D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5[2];
  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[3];
  sub_1DB252350(a1, a2, a3, a4, a5);
}

uint64_t sub_1DB252904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1DB2529A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 20);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DB2529F8(uint64_t result, int a2, int a3)
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 >> 1) << 32;
      *(result + 24) = 0;
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