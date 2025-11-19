uint64_t sub_1D155410C(uint64_t a1, void *a2)
{
  sub_1D15A47D8();
  v3 = [a2 identifier];
  v4 = sub_1D15A3F38();
  v6 = v5;

  MEMORY[0x1D388A330](v4, v6);

  MEMORY[0x1D388A330](0xD000000000000033, 0x80000001D15C1DB0);
  v7._countAndFlagsBits = 0;
  v8._countAndFlagsBits = 0x64656873696E6966;
  v8._object = 0xE800000000000000;
  v7._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v8, v7);
}

void sub_1D15541F8(uint64_t *a1, void *a2, void *a3)
{
  v6 = *a1;
  if ((*a1 & 0xC000000000000001) == 0)
  {
    v10 = a3;
    goto LABEL_8;
  }

  if (v6 < 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = a3;
  v9 = sub_1D15A4708();
  if (!__OFADD__(v9, 1))
  {
    *a1 = sub_1D1554300(v7, v9 + 1);
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    sub_1D1554558(a3, a2, isUniquelyReferenced_nonNull_native);
    *a1 = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_1D15542A4()
{

  sub_1D15A2D38();
}

uint64_t sub_1D1554300(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D1554ACC(0, &qword_1EE056490, MEMORY[0x1E69E6EC8]);
    v2 = sub_1D15A4958();
    v19 = v2;
    sub_1D15A48C8();
    v3 = sub_1D15A48F8();
    if (v3)
    {
      v4 = v3;
      sub_1D1453BA0(0, &qword_1EE05B458);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D1453BA0(0, &qword_1EE05AD08);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D14817B0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D15A4588();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D15A48F8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1D1554558(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D14801E4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1D14817B0(v13, a3 & 1);
      v8 = sub_1D14801E4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1D1453BA0(0, &qword_1EE05B458);
        sub_1D15A4BF8();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1D1482524();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_1D15546D0()
{
  if (!qword_1EE059420)
  {
    sub_1D1554ACC(255, &qword_1EE0568B0, MEMORY[0x1E69E5E28]);
    v0 = sub_1D15A2D48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059420);
    }
  }
}

void sub_1D1554744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D15547A8(uint64_t a1)
{
  sub_1D1554744(0, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1554834()
{
  sub_1D15A31D8();

  sub_1D1553834();
}

uint64_t type metadata accessor for CorrelatedStatisticsCollectionQueryOperation()
{
  result = qword_1EE057578;
  if (!qword_1EE057578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1554918()
{
  sub_1D1554744(319, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1D1554ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D1453BA0(255, &qword_1EE05B458);
    v7 = sub_1D1453BA0(255, &qword_1EE05AD08);
    v8 = sub_1D148292C();
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1554B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D14A7874(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1D15A4688();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D14A7874((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D15411E8(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D15411E8(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t static TrendConfiguration.configurations(for:)(void *a1)
{
  v1 = [a1 code];
  result = MEMORY[0x1E69E7CC0];
  switch(v1)
  {
    case 3uLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B0B0;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x3FF8000000000000;
      v6 = &unk_1F4D3B100;
      v7 = &unk_1F4D3B0D8;
      goto LABEL_26;
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xDuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x40uLL:
    case 0x41uLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x5FuLL:
    case 0x60uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x64uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x77uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x7BuLL:
    case 0x7EuLL:
    case 0x7FuLL:
    case 0x80uLL:
    case 0x81uLL:
    case 0x82uLL:
    case 0x83uLL:
    case 0x84uLL:
    case 0x85uLL:
    case 0x86uLL:
    case 0x87uLL:
    case 0x88uLL:
      return result;
    case 7uLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B6A0;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x4097700000000000;
      v6 = &unk_1F4D3B6F0;
      v7 = &unk_1F4D3B6C8;
      goto LABEL_26;
    case 8uLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B1A0;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x40A1940000000000;
      v6 = &unk_1F4D3B1F0;
      v7 = &unk_1F4D3B1C8;
      goto LABEL_26;
    case 0xAuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3AEA8;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x4042C00000000000;
      v6 = &unk_1F4D3AEF8;
      v7 = &unk_1F4D3AED0;
      goto LABEL_26;
    case 0xCuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B308;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x4012000000000000;
      v6 = &unk_1F4D3B358;
      v7 = &unk_1F4D3B330;
      goto LABEL_26;
    case 0xEuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B4E8;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x3FA70A3D70A3D70ALL;
      v6 = &unk_1F4D3B538;
      v7 = &unk_1F4D3B510;
      goto LABEL_26;
    case 0xFuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B038;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x402E000000000000;
      v6 = &unk_1F4D3B088;
      v7 = &unk_1F4D3B060;
      goto LABEL_26;
    case 0x3DuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B560;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x3FA3333333333333;
      v6 = &unk_1F4D3B5B0;
      v7 = &unk_1F4D3B588;
      goto LABEL_26;
    case 0x3EuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B128;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x3FE8000000000000;
      v6 = &unk_1F4D3B178;
      v7 = &unk_1F4D3B150;
      goto LABEL_26;
    case 0x3FuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1D15ACDD0;
      v12 = sub_1D15A4528();
      v5 = sub_1D1554B70(v12);

      result = v11;
      v8 = 0;
      v4 = 0;
      *(result + 32) = xmmword_1D15B5D90;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = 16;
      v3 = 0x40A5180000000000;
      v6 = &unk_1F4D3B678;
      v7 = &unk_1F4D3B650;
      goto LABEL_27;
    case 0x46uLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3AF98;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x40B5180000000000;
      v6 = &unk_1F4D3B010;
      v7 = &unk_1F4D3AFE8;
      v5 = &unk_1F4D3AFC0;
      goto LABEL_27;
    case 0x4BuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3AF20;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x402E000000000000;
      v6 = &unk_1F4D3AF70;
      v7 = &unk_1F4D3AF48;
      goto LABEL_26;
    case 0x4FuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B808;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x4086800000000000;
      v6 = &unk_1F4D3B858;
      v7 = &unk_1F4D3B830;
      goto LABEL_26;
    case 0x63uLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B470;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x4060E00000000000;
      v6 = &unk_1F4D3B4C0;
      v7 = &unk_1F4D3B498;
      goto LABEL_26;
    case 0x65uLL:
    case 0x71uLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v3 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B218;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v5 = 1;
      v6 = &unk_1F4D3B268;
      v7 = &unk_1F4D3B240;
      v8 = 1;
      goto LABEL_27;
    case 0x76uLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B5D8;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x401E000000000000;
      v6 = &unk_1F4D3B628;
      v7 = &unk_1F4D3B600;
      goto LABEL_26;
    case 0x7CuLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B718;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x400C000000000000;
      v6 = &unk_1F4D3B768;
      v7 = &unk_1F4D3B740;
      goto LABEL_26;
    case 0x7DuLL:
      goto LABEL_7;
    case 0x89uLL:
      sub_1D14564BC(0, &qword_1EE056298);
      result = swift_allocObject();
      v8 = 0;
      v4 = 0;
      *(result + 16) = xmmword_1D15ACDD0;
      *(result + 32) = 5;
      *(result + 40) = &unk_1F4D3B790;
      *(result + 48) = xmmword_1D15B5D80;
      *(result + 64) = 0;
      v3 = 0x4025000000000000;
      v6 = &unk_1F4D3B7E0;
      v7 = &unk_1F4D3B7B8;
      goto LABEL_26;
    default:
      if ((v1 - 324) > 0xA)
      {
        goto LABEL_8;
      }

      if (((1 << (v1 - 68)) & 0x131) != 0)
      {
        sub_1D14564BC(0, &qword_1EE056298);
        result = swift_allocObject();
        v8 = 0;
        v4 = 0;
        *(result + 16) = xmmword_1D15ACDD0;
        *(result + 32) = 5;
        *(result + 40) = &unk_1F4D3B3F8;
        *(result + 48) = xmmword_1D15B5D80;
        *(result + 64) = 0;
        v3 = 0x4014000000000000;
        v6 = &unk_1F4D3B448;
        v7 = &unk_1F4D3B420;
      }

      else if (v1 == 334)
      {
LABEL_7:
        sub_1D14564BC(0, &qword_1EE056298);
        result = swift_allocObject();
        v8 = 0;
        v4 = 0;
        *(result + 16) = xmmword_1D15ACDD0;
        *(result + 32) = 5;
        *(result + 40) = &unk_1F4D3B290;
        *(result + 48) = xmmword_1D15B5D80;
        *(result + 64) = 0;
        v3 = 0x3FF8000000000000;
        v6 = &unk_1F4D3B2E0;
        v7 = &unk_1F4D3B2B8;
      }

      else
      {
LABEL_8:
        if (v1 != 266)
        {
          return result;
        }

        sub_1D14564BC(0, &qword_1EE056298);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D15ACDD0;
        sub_1D15559C0();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D15ACDD0;
        *(inited + 32) = 5;
        *(inited + 40) = 0x4000000000000000;
        *(inited + 48) = 0;
        *(inited + 56) = xmmword_1D15B5DA0;
        v4 = sub_1D159C12C(inited);
        swift_setDeallocating();
        result = v9;
        v8 = 0;
        *(v9 + 32) = 5;
        *(v9 + 40) = &unk_1F4D3B380;
        *(v9 + 48) = xmmword_1D15B5D80;
        *(v9 + 64) = 0;
        v3 = 0x401C000000000000;
        v6 = &unk_1F4D3B3D0;
        v7 = &unk_1F4D3B3A8;
      }

LABEL_26:
      v5 = 1;
LABEL_27:
      *(result + 72) = v5;
      *(result + 80) = v7;
      *(result + 88) = 0;
      *(result + 104) = v4;
      *(result + 112) = v3;
      *(result + 120) = v8;
      *(result + 96) = v6;
      return result;
  }
}

uint64_t static TrendConfiguration.correlatedConfigurations(for:)(void *a1)
{
  if ([a1 code] != 80)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D14564BC(0, &qword_1EC631200);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D15AEBB0;
  sub_1D14564BC(0, &qword_1EE056298);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D15ACDD0;
  *(v2 + 32) = 5;
  *(v2 + 40) = &unk_1F4D3B880;
  *(v2 + 48) = xmmword_1D15B5D80;
  *(v2 + 64) = 0;
  *(v2 + 72) = 1;
  *(v2 + 80) = &unk_1F4D3B8A8;
  *(v2 + 88) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0x401E000000000000;
  *(v2 + 120) = 0;
  *(v2 + 96) = &unk_1F4D3B8D0;
  *(v1 + 32) = 0xD00000000000002ELL;
  *(v1 + 40) = 0x80000001D15BCDD0;
  *(v1 + 48) = v2;
  v3 = swift_allocObject();
  result = v1;
  *(v3 + 16) = xmmword_1D15ACDD0;
  *(v3 + 32) = 5;
  *(v3 + 40) = &unk_1F4D3B8F8;
  *(v3 + 48) = xmmword_1D15B5D80;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;
  *(v3 + 80) = &unk_1F4D3B920;
  *(v3 + 88) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0x401E000000000000;
  *(v3 + 120) = 0;
  *(v3 + 96) = &unk_1F4D3B948;
  *(v1 + 56) = 0xD00000000000002DLL;
  *(v1 + 64) = 0x80000001D15BCDA0;
  *(v1 + 72) = v3;
  return result;
}

void sub_1D15559C0()
{
  if (!qword_1EE056290)
  {
    sub_1D1555A18();
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056290);
    }
  }
}

void sub_1D1555A18()
{
  if (!qword_1EE056CE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE056CE8);
    }
  }
}

uint64_t static HKCategoryValueContraceptive.getLocalizedContraceptiveStringKey(_:)(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    v5 = [v3 categoryType];
    v6 = [v5 identifier];

    v7 = sub_1D15A3F38();
    v9 = v8;

    if (v7 == sub_1D15A3F38() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_1D15A4BA8();

      if ((v12 & 1) == 0)
      {

        return 0;
      }
    }

    v13 = sub_1D1555BD0([v3 value]);

    return v13;
  }

  return result;
}

unint64_t sub_1D1555BD0(uint64_t a1)
{
  if (a1 <= 3)
  {
    v4 = 0xD000000000000015;
    v5 = 0xD000000000000017;
    if (a1 != 3)
    {
      v5 = 0;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1 == 1)
    {
      return 0xD000000000000019;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 > 5)
    {
      v1 = 0xD000000000000012;
      v2 = 0xD000000000000013;
      if (a1 != 7)
      {
        v2 = 0;
      }

      v3 = a1 == 6;
    }

    else
    {
      v1 = 0xD000000000000021;
      v2 = 0xD00000000000001FLL;
      if (a1 != 5)
      {
        v2 = 0;
      }

      v3 = a1 == 4;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id UnitPreferenceProviding.unitPreferenceController.getter(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = (*(*(a2 + 8) + 8))(a1);
  v6 = [v4 sharedInstanceForHealthStore_];

  v7 = [v6 createHKUnitPreferenceController];
  return v7;
}

uint64_t TimePeriodSnidgetViewModelExtractor.ViewModelComponents.viewModel.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 TimePeriodSnidgetViewModelExtractor.ViewModelComponents.viewModel.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_1D1555EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1555F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TimePeriodSnidgetViewModelExtractor.ViewModelComponents.init(viewModel:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 8) = *(a1 + 8);
  v4 = a3 + *(type metadata accessor for TimePeriodSnidgetViewModelExtractor.ViewModelComponents(0) + 20);

  return sub_1D1556098(a2, v4);
}

uint64_t sub_1D1556098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TimePeriodSnidgetViewModelExtractor.ViewModelComponents.noData(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D1455C74(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  sub_1D1455C74(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  sub_1D15A2F28();
  v10 = sub_1D15A2EA8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = a1;
  v12 = sub_1D15A2F18();
  v13 = sub_1D15A26A8();
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = a2 + *(type metadata accessor for TimePeriodSnidgetViewModelExtractor.ViewModelComponents(0) + 20);
  v16 = *(type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0) + 20);
  v14(&v15[v16], 1, 1, v13);
  *v15 = 0;
  result = sub_1D14BCA70(v6, &v15[v16]);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v12;
  return result;
}

uint64_t static TimePeriodSnidgetViewModelExtractor.ViewModel.noData(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D1455C74(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D15A2F28();
  v7 = sub_1D15A2EA8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = a1;
  result = sub_1D15A2F18();
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t TimePeriodSnidgetViewModelExtractor.ViewModel.headerViewModel.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TimePeriodSnidgetViewModelExtractor.ViewModel.currentValueViewModel.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TimePeriodSnidgetViewModelExtractor.ViewModel.visualizationViewModel.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TimePeriodSnidgetViewModelExtractor.ViewModel.init(headerViewModel:currentValueViewModel:visualizationViewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1D155653C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 20);

  return a2(v5, a3);
}

uint64_t sub_1D15565C8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3 + *(a2(0) + 20);

  return a3(a1, v5);
}

uint64_t TimePeriodSnidgetViewModelExtractor.Metadata.init(hasData:currentValueDate:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0) + 20);
  v7 = sub_1D15A26A8();
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *a3 = a1;

  return sub_1D14BCA70(a2, &a3[v6]);
}

uint64_t TimePeriodSnidgetViewModelExtractor.init(healthStore:unitPreferenceController:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void TimePeriodSnidgetViewModelExtractor.extractViewModelComponents(hkType:displayType:currentValueModel:visualizationModel:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v86 = a3;
  v84 = a4;
  v83 = a2;
  v80 = a1;
  sub_1D1455C74(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v72 - v5;
  sub_1D1455C74(0, &qword_1EE05AAB8, MEMORY[0x1E69A3778]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v72 - v7;
  sub_1D1455C74(0, &qword_1EE0593B0, MEMORY[0x1E69A3670]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = &v72 - v9;
  sub_1D1455C74(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = sub_1D15A23F8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  v26 = *v85;
  v27 = *(v85 + 8);
  v28 = v87;
  sub_1D1486300(v86);
  if (!v28)
  {
    v75 = v26;
    v76 = v27;
    v77 = v18;
    v73 = v22;
    v78 = v15;
    v74 = v12;
    v85 = v20;
    v86 = v25;
    v87 = 0;
    v31 = v83;
    v30 = v84;
    if (v29)
    {
      v32 = v29;
      if ([v29 hasTimeInterval] && objc_msgSend(v32, sel_hasDateData))
      {
        type metadata accessor for SnidgetStringBuilder();
        inited = swift_initStackObject();
        v34 = v75;
        inited[2] = v75;
        v35 = objc_opt_self();
        v36 = v34;
        v37 = v76;
        v38 = [v35 sharedInstanceForHealthStore_];
        inited[3] = v37;
        inited[4] = v38;
        v39 = [objc_opt_self() secondUnit];
        [v32 timeInterval];
        v41 = [objc_opt_self() quantityWithUnit:v39 doubleValue:v40];

        v88[0] = 0;
        v42 = v77;
        sub_1D14A1FE8(v31, v41, v88, v77);

        v43 = v42;
        v44 = v85;
        v45 = v42;
        v46 = v19;
        if ((*(v85 + 48))(v45, 1, v19) == 1)
        {
          sub_1D1557BB0(v43, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
          static TimePeriodSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v31, v84);

          swift_setDeallocating();
        }

        else
        {
          (*(v44 + 32))(v86, v43, v19);
          v77 = sub_1D15A2F28();
          sub_1D14863E4();
          v48 = *(v47 + 48);
          v49 = v31;
          v72 = v32;
          [v32 dateData];
          v50 = HKDecodeDateForValue();
          v51 = v79;
          sub_1D15A2668();

          v51[v48] = 0;
          v52 = *MEMORY[0x1E69A3668];
          v53 = sub_1D15A2EA8();
          v54 = *(v53 - 8);
          (*(v54 + 104))(v51, v52, v53);
          (*(v54 + 56))(v51, 0, 1, v53);
          v83 = sub_1D15A2F18();
          v55 = *(v44 + 56);
          v55(v78, 1, 1, v46);
          (*(v44 + 16))(v73, v86, v46);
          v55(v74, 1, 1, v46);
          v88[0] = 0x5F74656764696E53;
          v88[1] = 0xE800000000000000;
          v56 = [v80 description];
          v57 = sub_1D15A3F38();
          v59 = v58;

          MEMORY[0x1D388A330](v57, v59);

          v60 = v72;
          [v72 timeInterval];
          v61 = v81;
          sub_1D15A3008();

          v62 = sub_1D15A3018();
          (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
          sub_1D15A30E8();
          swift_allocObject();
          v63 = sub_1D15A30D8();
          [v60 dateData];
          v64 = HKDecodeDateForValue();
          v65 = v82;
          sub_1D15A2668();

          swift_setDeallocating();
          (*(v44 + 8))(v86, v46);
          v66 = sub_1D15A26A8();
          v67 = *(*(v66 - 8) + 56);
          v67(v65, 0, 1, v66);
          v68 = type metadata accessor for TimePeriodSnidgetViewModelExtractor.ViewModelComponents(0);
          v69 = v84;
          v70 = v84 + *(v68 + 20);
          v71 = *(type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0) + 20);
          v67(&v70[v71], 1, 1, v66);
          *v70 = 1;
          sub_1D14BCA70(v65, &v70[v71]);
          *v69 = v83;
          v69[1] = v63;
          v69[2] = 0;
        }

        return;
      }
    }

    static TimePeriodSnidgetViewModelExtractor.ViewModelComponents.noData(for:)(v31, v30);
  }
}

void static TimePeriodSnidgetViewModelExtractor.formatter(for:currentValueModel:healthStore:unitPreferenceController:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1D15A3268();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1486300(a2);
  if (!v5)
  {
    v16 = v15;
    if (v15)
    {
      v43 = a4;
      v44 = 0;
      if ([v15 hasTimeInterval] && objc_msgSend(v16, sel_hasDateData))
      {
        if ([v16 hasTimeInterval])
        {
          v17 = [objc_opt_self() secondUnit];
          [v16 timeInterval];
          v19 = [objc_opt_self() quantityWithUnit:v17 doubleValue:v18];

          *(a5 + 24) = &type metadata for TimePeriodSnidgetViewModelExtractor.TimePeriodSnidgetFormatter;
          *(a5 + 32) = &protocol witness table for TimePeriodSnidgetViewModelExtractor.TimePeriodSnidgetFormatter;
          v20 = swift_allocObject();
          *a5 = v20;
          *(v20 + 32) = 0;
          *(v20 + 16) = a1;
          *(v20 + 24) = v19;
          type metadata accessor for SnidgetStringBuilder();
          v21 = swift_allocObject();
          v21[2] = a3;
          v22 = objc_opt_self();
          v23 = a1;
          v24 = v43;
          v25 = [v22 sharedInstanceForHealthStore_];
          v21[3] = v24;
          v21[4] = v25;

          *(v20 + 40) = v21;
        }

        else
        {
          *(a5 + 32) = 0;
          *a5 = 0u;
          *(a5 + 16) = 0u;
        }

        return;
      }
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1D15A47D8();

    v45 = 0xD000000000000028;
    v46 = 0x80000001D15BE730;
    v26 = [a2 kindRawValue];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1D15A3F38();
      v30 = v29;
    }

    else
    {
      v30 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E55;
    }

    MEMORY[0x1D388A330](v28, v30);

    v32 = v45;
    v31 = v46;
    sub_1D15A3238();

    v33 = sub_1D15A3248();
    v34 = sub_1D15A4318();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v44 = v32;
      v36 = v35;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_1D1479780(0xD000000000000023, 0x80000001D15B5DC0, &v45);
      *(v36 + 12) = 2112;
      sub_1D1557B5C();
      swift_allocError();
      *v39 = v44;
      v39[1] = v31;

      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v40;
      *v37 = v40;
      _os_log_impl(&dword_1D1446000, v33, v34, "[%s]: Error: %@", v36, 0x16u);
      sub_1D1557BB0(v37, &qword_1EE0564C0, sub_1D14A0574);
      MEMORY[0x1D388BF00](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1D388BF00](v38, -1, -1);
      v41 = v36;
      v32 = v44;
      MEMORY[0x1D388BF00](v41, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    sub_1D1557B5C();
    swift_allocError();
    *v42 = v32;
    v42[1] = v31;
    swift_willThrow();
  }
}

void TimePeriodSnidgetViewModelExtractor.TimePeriodSnidgetFormatter.init(displayType:quantity:healthStore:unitPreferenceController:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 16) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  type metadata accessor for SnidgetStringBuilder();
  v8 = swift_allocObject();
  v8[2] = a3;
  v9 = objc_opt_self();
  v10 = a3;
  v8[4] = [v9 sharedInstanceForHealthStore_];

  v8[3] = a4;
  *(a5 + 24) = v8;
}

void TimePeriodSnidgetViewModelExtractor.TimePeriodSnidgetFormatter.primaryString.getter(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = 0;
  sub_1D14A1FE8(v2, v3, &v4, a1);
}

void TimePeriodSnidgetViewModelExtractor.TimePeriodSnidgetFormatter.supplementaryString.getter(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = objc_opt_self();
  v6 = [v5 secondUnit];
  v7 = [v5 secondUnit];
  [v4 doubleValueForUnit_];
  v9 = v8;

  v10 = [objc_opt_self() quantityWithUnit:v6 doubleValue:v9];
  v11 = 0;
  sub_1D14A1FE8(v3, v10, &v11, a1);
}

uint64_t TimePeriodSnidgetViewModelExtractor.TimePeriodSnidgetFormatter.displayableValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v11 = 0;
  v4 = (*(*v3 + 128))(&v11, v1, v2);
  v5 = sub_1D14A1764(v1, v2, v4);
  if (v6)
  {

    return 0;
  }

  else
  {
    v8 = (*(*v3 + 144))(v1, *&v5);
    [v8 doubleValue];
    v10 = v9;

    return v10;
  }
}

void sub_1D155781C(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = 0;
  sub_1D14A1FE8(v2, v3, &v4, a1);
}

BOOL _s19HealthVisualization35TimePeriodSnidgetViewModelExtractorV8MetadataV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455C74(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  sub_1D14BDAD0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = *(type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(0) + 20);
  v16 = *(v12 + 48);
  sub_1D1455A40(&a1[v15], v14);
  sub_1D1455A40(&a2[v15], &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_1D1557BB0(v14, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1D1455A40(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D14BDB50(v14);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v16], v4);
  sub_1D14BDC24();
  v19 = sub_1D15A3EE8();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  sub_1D1557BB0(v14, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  return (v19 & 1) != 0;
}

unint64_t sub_1D1557B5C()
{
  result = qword_1EC631208;
  if (!qword_1EC631208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631208);
  }

  return result;
}

uint64_t sub_1D1557BB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1455C74(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1557C44()
{
  result = type metadata accessor for TimePeriodSnidgetViewModelExtractor.Metadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D1557CF8()
{
  sub_1D1455C74(319, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D1557DA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D1557DE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static HighlightCalendarCache.font(forKey:creation:)(char *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  if (qword_1EE058BE8 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v5 = v2;
  return HighlightCalendarCache.font(forKey:creation:)(&v5, a2);
}

void static HighlightCalendarCache.clearCaches()()
{
  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v0 = *(*(off_1EE058BF0 + 2) + 16);
  os_unfair_lock_lock((v0 + 24));
  [*(v0 + 16) removeAllObjects];

  os_unfair_lock_unlock((v0 + 24));
}

uint64_t sub_1D1557F44()
{
  type metadata accessor for HighlightCalendarCache();
  v0 = swift_allocObject();
  sub_1D1558A8C();
  v1 = swift_allocObject();
  v2 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  sub_1D1558B14();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v2;
  *(v1 + 16) = result;
  *(v0 + 16) = v1;
  off_1EE058BF0 = v0;
  return result;
}

uint64_t static HighlightCalendarCache.shared.getter()
{
  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }
}

HealthVisualization::HighlightCalendarCache::FontIdentifier_optional __swiftcall HighlightCalendarCache.FontIdentifier.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  sub_1D1453BA0(0, &qword_1EE0596F8);
  v4 = rawValue;
  v5 = sub_1D15A45B8();
  v6 = sub_1D15A4598();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = sub_1D15A45B8();
    v11 = sub_1D15A4598();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = sub_1D15A45B8();
      v14 = sub_1D15A4598();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = sub_1D15A45B8();
        v17 = sub_1D15A4598();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = v15;
          v19 = sub_1D15A45B8();
          v20 = sub_1D15A4598();

          if (v20)
          {

            v8 = 4;
          }

          else
          {
            v21 = v18;
            v22 = sub_1D15A45B8();
            v23 = sub_1D15A4598();

            if (v23)
            {

              v8 = 5;
            }

            else
            {
              v24 = sub_1D15A45B8();
              v25 = sub_1D15A4598();

              if (v25)
              {
                v8 = 6;
              }

              else
              {
                v8 = 7;
              }
            }
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D1558330()
{
  sub_1D1453BA0(0, &qword_1EE0596F8);
  v0 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  v1 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  v2 = sub_1D15A4598();

  return v2 & 1;
}

uint64_t sub_1D15583C0()
{
  sub_1D15A4C88();
  v0 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  sub_1D15A45A8();

  return sub_1D15A4CB8();
}

void sub_1D1558418()
{
  v0 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  sub_1D15A45A8();
}

uint64_t sub_1D1558478()
{
  sub_1D15A4C88();
  v0 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  sub_1D15A45A8();

  return sub_1D15A4CB8();
}

uint64_t sub_1D15584D4@<X0>(uint64_t *a1@<X8>)
{
  result = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  *a1 = result;
  return result;
}

UIFont_optional __swiftcall HighlightCalendarCache.font(forKey:)(HealthVisualization::HighlightCalendarCache::FontIdentifier forKey)
{
  v2 = *(v1 + 16);
  v8 = *forKey;
  v3 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 24));
  sub_1D14BA9E8((v4 + 16), &v7);
  os_unfair_lock_unlock((v4 + 24));

  v6 = v7;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t HighlightCalendarCache.font(forKey:creation:)(char *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  v5 = *(v2 + 16);
  v13 = *a1;
  v6 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  v7 = *(v5 + 16);
  os_unfair_lock_lock((v7 + 24));
  sub_1D14BB3C8((v7 + 16), &v12);
  os_unfair_lock_unlock((v7 + 24));

  result = v12;
  if (!v12)
  {
    v9 = a2();
    LOBYTE(v12) = v4;
    v10 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
    v11 = *(v5 + 16);
    MEMORY[0x1EEE9AC00](v10);
    os_unfair_lock_lock((v11 + 24));
    sub_1D14BAA04((v11 + 16));
    os_unfair_lock_unlock((v11 + 24));

    return v9;
  }

  return result;
}

Swift::Void __swiftcall HighlightCalendarCache.setFont(_:forKey:)(UIFont _, HealthVisualization::HighlightCalendarCache::FontIdentifier forKey)
{
  v3 = *(v2 + 16);
  v4 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  v5 = *(v3 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1D14BB3E0((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));
}

Swift::Void __swiftcall HighlightCalendarCache.clearCaches()()
{
  v1 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) removeAllObjects];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t static HighlightCalendarCache.font(forKey:)(char *a1)
{
  v1 = *a1;
  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v2 = *(off_1EE058BF0 + 2);
  v7 = v1;
  v3 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  v4 = *(v2 + 16);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v4 + 24));
  sub_1D14BB3C8((v4 + 16), &v6);
  os_unfair_lock_unlock((v4 + 24));

  return v6;
}

void static HighlightCalendarCache.setFont(_:forKey:)()
{
  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v0 = *(off_1EE058BF0 + 2);
  v1 = HighlightCalendarCache.FontIdentifier.rawValue.getter();
  v2 = *(v0 + 16);
  MEMORY[0x1EEE9AC00](v1);
  os_unfair_lock_lock((v2 + 24));
  sub_1D14BB3E0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

uint64_t HighlightCalendarCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D1558950()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D155898C()
{
  result = qword_1EC631210;
  if (!qword_1EC631210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631210);
  }

  return result;
}

void sub_1D1558A8C()
{
  if (!qword_1EE058AC0[0])
  {
    sub_1D1453BA0(255, &qword_1EE0596F8);
    sub_1D1453BA0(255, &qword_1EE05ACF0);
    v0 = type metadata accessor for SendableNSCacheWrapper();
    if (!v1)
    {
      atomic_store(v0, qword_1EE058AC0);
    }
  }
}

void sub_1D1558B14()
{
  if (!qword_1EE0564B0)
  {
    sub_1D1453BA0(255, &qword_1EE0564D8);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D15A4838();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0564B0);
    }
  }
}

uint64_t CoreChartTrendLineSeries.init(dataViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D155965C(a1, a2, type metadata accessor for CoreChartTrendViewModel);
  v4 = *(a1 + 16);
  sub_1D1474E30(a1);
  v5 = *(type metadata accessor for CoreChartTrendLineSeries() + 20);
  v6 = sub_1D15A2838();
  v7 = *(*(v6 - 8) + 104);
  if ((v4 - 2) > 3u)
  {
    v8 = MEMORY[0x1E6969A48];
  }

  else
  {
    v8 = qword_1E83E6D70[(v4 - 2)];
  }

  v9 = *v8;

  return v7(a2 + v5, v9, v6);
}

uint64_t type metadata accessor for CoreChartTrendLineSeries()
{
  result = qword_1EE058518;
  if (!qword_1EE058518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CoreChartTrendLineSeries.lineSeries.getter@<X0>(uint64_t a1@<X8>)
{
  v21[2] = a1;
  v2 = type metadata accessor for CoreChartTrendLineSeries();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = *(v1 + *(type metadata accessor for CoreChartTrendViewModel(0) + 36));
  sub_1D155965C(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoreChartTrendLineSeries);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D15596C4(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1D1559818(0, &qword_1EE056840, type metadata accessor for CoreChartTrendDataElement, MEMORY[0x1E69E62F8]);
  v21[1] = v7;
  v21[0] = sub_1D15A26A8();
  sub_1D14EF5C4();
  sub_1D1475AD8();
  sub_1D14EF71C();
  v9 = v8;
  sub_1D14EF830();
  v11 = v10;
  v12 = sub_1D15A35A8();
  sub_1D14EF90C();
  v14 = v13;
  v15 = sub_1D14EF998();
  v16 = sub_1D14EF9EC();

  v22 = MEMORY[0x1E69817E8];
  v23 = v15;
  v24 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v12;
  v23 = v14;
  v24 = MEMORY[0x1E695B2A0];
  v25 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v22 = v11;
  v23 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v22 = v9;
  v23 = MEMORY[0x1E69815C0];
  v24 = v19;
  v25 = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1D15597A8(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement);
  return sub_1D15A3D28();
}

uint64_t sub_1D1558F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v37 = a1;
  v46 = a3;
  sub_1D14EF90C();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1476D98();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1559818(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  sub_1D1476E54();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D15A35A8();
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF830();
  v40 = v14;
  v36 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF71C();
  v41 = *(v17 - 8);
  v42 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A4148();
  v38 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D15A38B8();
  type metadata accessor for CoreChartTrendLineSeries();
  v19 = sub_1D15A2848();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = v37;
  sub_1D15A33F8();

  sub_1D1476EB4(v9);
  sub_1D15A38B8();
  v48 = *(v20 + *(type metadata accessor for CoreChartTrendDataElement(0) + 20));
  sub_1D15A3408();

  sub_1D15A26A8();
  sub_1D15A3598();
  v21 = sub_1D14EF998();
  v22 = sub_1D14EF9EC();
  v23 = MEMORY[0x1E69817E8];
  v24 = v43;
  sub_1D15A3458();
  v48 = v23;
  v49 = v21;
  v50 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = MEMORY[0x1E695B2A0];
  v27 = v45;
  sub_1D15A3348();
  (*(v44 + 8))(v24, v27);
  (*(v34 + 8))(v13, v11);
  v48 = v11;
  v49 = v27;
  v50 = v26;
  v51 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v30 = v39;
  v29 = v40;
  sub_1D15A3308();
  (*(v36 + 8))(v16, v29);
  if (qword_1EE058CB0 != -1)
  {
    swift_once();
  }

  v47 = qword_1EE068218;
  v48 = v29;
  v49 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v42;
  sub_1D15A3328();
  (*(v41 + 8))(v30, v31);
}

uint64_t sub_1D155965C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D15596C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreChartTrendLineSeries();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1559728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CoreChartTrendLineSeries() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D1558F9C(a1, v6, a2);
}

uint64_t sub_1D15597A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1559818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t QuantityDistributionConfiguration.init(dateRange:anchorDate:histogramWidth:bucketAnchor:bucketSize:contextStyle:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char a3@<W2>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a4;
  *a6 = result;
  *(a6 + 1) = v6;
  *(a6 + 2) = a3;
  *(a6 + 3) = v7;
  *(a6 + 8) = a5;
  return result;
}

uint64_t sub_1D15598D4()
{
  v1 = *v0;
  v2 = 0x676E615265746164;
  v3 = 0x6E4174656B637562;
  v4 = 0x695374656B637562;
  if (v1 != 4)
  {
    v4 = 0x53747865746E6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6144726F68636E61;
  if (v1 != 1)
  {
    v5 = 0x6172676F74736968;
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

uint64_t sub_1D15599BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D155B468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D15599E4(uint64_t a1)
{
  v2 = sub_1D155AEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1559A20(uint64_t a1)
{
  v2 = sub_1D155AEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QuantityDistributionConfiguration.encode(to:)(void *a1)
{
  sub_1D155AFEC(0, &qword_1EC631218, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v20 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v16 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D155AEF0();
  sub_1D15A4CE8();
  LOBYTE(v19) = v9;
  v21 = 0;
  sub_1D147903C();
  sub_1D15A4B38();
  if (!v2)
  {
    v12 = v17;
    v11 = v18;
    v13 = v16;
    LOBYTE(v19) = v20;
    v21 = 1;
    sub_1D148D93C();
    sub_1D15A4B38();
    LOBYTE(v19) = v11;
    v21 = 2;
    sub_1D14A46D0();
    sub_1D15A4B38();
    LOBYTE(v19) = 3;
    sub_1D155AF44();
    sub_1D15A4B38();
    LOBYTE(v19) = v12;
    v21 = 4;
    sub_1D155AF98();
    sub_1D15A4B38();
    v19 = v13;
    v21 = 5;
    type metadata accessor for _HKQuantityDistributionStyle(0);
    sub_1D155B0F8(&qword_1EC631238);
    sub_1D15A4B38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t QuantityDistributionConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D155AFEC(0, &qword_1EC631240, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D155AEF0();
  sub_1D15A4CD8();
  if (!v2)
  {
    v18 = 0;
    sub_1D14790F4();
    sub_1D15A4A78();
    v10 = v16;
    v18 = 1;
    sub_1D148DC18();
    sub_1D15A4A78();
    v11 = v16;
    v18 = 2;
    sub_1D14A4848();
    sub_1D15A4A78();
    v17 = v11;
    v12 = v16;
    LOBYTE(v16) = 3;
    sub_1D155B050();
    sub_1D15A4A78();
    HIDWORD(v15) = v12;
    v18 = 4;
    sub_1D155B0A4();
    sub_1D15A4A78();
    LOBYTE(v12) = v16;
    type metadata accessor for _HKQuantityDistributionStyle(0);
    v18 = 5;
    sub_1D155B0F8(&qword_1EC631258);
    sub_1D15A4A78();
    (*(v7 + 8))(v9, v6);
    v14 = v16;
    *a2 = v10;
    *(a2 + 1) = v17;
    *(a2 + 2) = BYTE4(v15);
    *(a2 + 3) = v12;
    *(a2 + 8) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

HKQuantity __swiftcall BucketAnchor.quantityForType(type:)(HKQuantityType type)
{
  result.super.isa = [(objc_class *)type.super.super.super.isa canonicalUnit];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v3 = [objc_opt_self() quantityWithUnit:result.super.isa doubleValue:0.0];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t BucketAnchor.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D15A49B8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D155A16C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();
  return sub_1D15A4CB8();
}

uint64_t sub_1D155A1C8()
{
  sub_1D15A4C88();
  sub_1D15A3F88();
  return sub_1D15A4CB8();
}

uint64_t sub_1D155A210@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D15A49B8();

  *a1 = v2 != 0;
  return result;
}

HKQuantity __swiftcall BucketSize.quantityForType(type:)(HKQuantityType type)
{
  v2 = *v1;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      isa = [objc_opt_self() _countPerMinuteUnit];
      v5 = [objc_opt_self() quantityWithUnit:isa doubleValue:0.5];
      goto LABEL_10;
    }

    result.super.isa = [(objc_class *)type.super.super.super.isa canonicalUnit];
    if (result.super.isa)
    {
      isa = result.super.isa;
      v5 = [objc_opt_self() quantityWithUnit:result.super.isa doubleValue:4.0];
      goto LABEL_10;
    }
  }

  else
  {
    if (v2 >= 2)
    {
      isa = [objc_opt_self() _countPerMinuteUnit];
      v5 = [objc_opt_self() quantityWithUnit:isa doubleValue:4.0];
      goto LABEL_10;
    }

    result.super.isa = [(objc_class *)type.super.super.super.isa canonicalUnit];
    if (result.super.isa)
    {
      isa = result.super.isa;
      v5 = [objc_opt_self() quantityWithUnit:result.super.isa doubleValue:2.0];
LABEL_10:
      v6 = v5;

      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void static BucketSize.makeBucketSize(quantityType:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_1D15A3F38();
    v3 = sub_1D15A3EF8();
  }

  v4 = sub_1D15A3F38();
  v6 = v5;
  if (v4 == sub_1D15A3F38() && v6 == v7)
  {

    v11 = 2;
    goto LABEL_20;
  }

  v9 = sub_1D15A4BA8();
  v10 = v3;

  if (v9)
  {

    v11 = 2;
    goto LABEL_20;
  }

  v12 = sub_1D15A3F38();
  v14 = v13;
  if (v12 == sub_1D15A3F38() && v14 == v15)
  {
    goto LABEL_18;
  }

  v17 = sub_1D15A4BA8();

  if (v17)
  {
LABEL_15:

LABEL_19:
    v11 = 1;
    goto LABEL_20;
  }

  v18 = sub_1D15A3F38();
  v20 = v19;
  if (v18 == sub_1D15A3F38() && v20 == v21)
  {
LABEL_18:

    goto LABEL_19;
  }

  v22 = sub_1D15A4BA8();

  if (v22)
  {
    goto LABEL_15;
  }

  v23 = sub_1D15A3F38();
  v25 = v24;
  if (v23 == sub_1D15A3F38() && v25 == v26)
  {

    v11 = 3;
  }

  else
  {
    v27 = sub_1D15A4BA8();

    if (v27)
    {

      v11 = 3;
    }

    else
    {
      v28 = sub_1D15A3F38();
      v30 = v29;
      v31 = sub_1D15A3F38();
      v33 = v32;

      if (v28 == v31 && v30 == v33)
      {

        v11 = 4;
      }

      else
      {
        v34 = sub_1D15A4BA8();

        if (v34)
        {
          v11 = 4;
        }

        else
        {
          v11 = 0;
        }
      }
    }
  }

LABEL_20:
  *a2 = v11;
}

HealthVisualization::BucketSize_optional __swiftcall BucketSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BucketSize.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x756C47646F6F6C62;
  if (v1 != 3)
  {
    v2 = 0x7461726970736572;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000011;
  if (*v0)
  {
    v3 = 0xD000000000000017;
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

uint64_t sub_1D155A8D8()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D155A9DC()
{
  sub_1D15A3F88();
}

uint64_t sub_1D155AACC()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D155ABD8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065736F63;
  v4 = 0x756C47646F6F6C62;
  if (v2 != 3)
  {
    v4 = 0x7461726970736572;
    v3 = 0xEF6574615279726FLL;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001D15BCFC0;
  }

  v5 = 0xD000000000000011;
  v6 = 0x80000001D15BCF80;
  if (*v1)
  {
    v5 = 0xD000000000000017;
    v6 = 0x80000001D15BCFA0;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v6;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t _s19HealthVisualization33QuantityDistributionConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = *(a1 + 8);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 8);
  if (sub_1D1477464(*a1, *a2) & 1) != 0 && (sub_1D1477670(v2, v6) & 1) != 0 && (sub_1D147783C(v3, v7))
  {
    return sub_1D14779C0(v4, v8) & (v5 == v9);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D155AEF0()
{
  result = qword_1EC631220;
  if (!qword_1EC631220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631220);
  }

  return result;
}

unint64_t sub_1D155AF44()
{
  result = qword_1EC631228;
  if (!qword_1EC631228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631228);
  }

  return result;
}

unint64_t sub_1D155AF98()
{
  result = qword_1EC631230;
  if (!qword_1EC631230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631230);
  }

  return result;
}

void sub_1D155AFEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D155AEF0();
    v7 = a3(a1, &type metadata for QuantityDistributionConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D155B050()
{
  result = qword_1EC631248;
  if (!qword_1EC631248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631248);
  }

  return result;
}

unint64_t sub_1D155B0A4()
{
  result = qword_1EC631250;
  if (!qword_1EC631250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631250);
  }

  return result;
}

uint64_t sub_1D155B0F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _HKQuantityDistributionStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D155B140()
{
  result = qword_1EC631260;
  if (!qword_1EC631260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631260);
  }

  return result;
}

uint64_t sub_1D155B1C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D14485DC(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D155B218()
{
  result = qword_1EC631278;
  if (!qword_1EC631278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631278);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuantityDistributionConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 16))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for QuantityDistributionConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1D155B364()
{
  result = qword_1EC631290;
  if (!qword_1EC631290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631290);
  }

  return result;
}

unint64_t sub_1D155B3BC()
{
  result = qword_1EC631298;
  if (!qword_1EC631298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631298);
  }

  return result;
}

unint64_t sub_1D155B414()
{
  result = qword_1EC6312A0;
  if (!qword_1EC6312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6312A0);
  }

  return result;
}

uint64_t sub_1D155B468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726F68636E61 && a2 == 0xEA00000000006574 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6172676F74736968 && a2 == 0xEE0068746469576DLL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E4174656B637562 && a2 == 0xEC000000726F6863 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x695374656B637562 && a2 == 0xEA0000000000657ALL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x53747865746E6F63 && a2 == 0xEC000000656C7974)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

unint64_t sub_1D155B688()
{
  result = qword_1EC6312B0;
  if (!qword_1EC6312B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6312B0);
  }

  return result;
}

unint64_t sub_1D155B6DC()
{
  result = qword_1EC6312B8;
  if (!qword_1EC6312B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6312B8);
  }

  return result;
}

uint64_t sub_1D155B770()
{
  sub_1D155CE38(0, &qword_1EE059678, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D15ACDE0;
  *(inited + 32) = [objc_opt_self() activitySummaryType];
  sub_1D1453BA0(0, &qword_1EE056758);
  *(inited + 40) = MEMORY[0x1D388A6B0](*MEMORY[0x1E696B560]);
  sub_1D1453BA0(0, &qword_1EE05B458);
  *(inited + 48) = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC60]);
  *(inited + 56) = MEMORY[0x1D388A6C0](*MEMORY[0x1E696BC40]);
  sub_1D1548B00(inited);
  v2 = v1;
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EE058138 = v2;
  return result;
}

uint64_t static WheelchairSettingModelFactory.domain(for:)(void *a1)
{
  v2 = sub_1D15A2BE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE058130 != -1)
  {
    swift_once();
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69A3CD0], v2);
  v6 = a1;

  return sub_1D15A2BF8();
}

uint64_t static WheelchairSettingModelFactory.makeModels(wheelchairUse:)(uint64_t a1)
{
  if (qword_1EE058130 != -1)
  {
    swift_once();
  }

  return sub_1D155C0E0(qword_1EE058138, a1);
}

unint64_t static WheelchairSettingModelFactory.identifier(for:)(void *a1)
{
  if (qword_1EE058130 != -1)
  {
    swift_once();
  }

  if ((sub_1D1505640(a1, qword_1EE058138) & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 identifier];
  v3 = sub_1D15A3F38();
  v5 = v4;

  MEMORY[0x1D388A330](v3, v5);

  return 0xD000000000000012;
}

uint64_t static WheelchairSettingModelFactory.allPossibleIdentifiers()()
{
  if (qword_1EE058130 != -1)
  {
    swift_once();
  }

  v0 = sub_1D155C924(qword_1EE058138);
  v1 = sub_1D151289C(v0);

  return v1;
}

unint64_t static WheelchairSettingModelFactory.sharableModelReferencesForFeedItem(hkType:)(void *a1)
{
  v2 = sub_1D15A2BB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE058130 != -1)
  {
    swift_once();
  }

  if ((sub_1D1505640(a1, qword_1EE058138) & 1) == 0)
  {
    v24 = 0;
    v25 = 0;
    goto LABEL_11;
  }

  v22 = 0xD000000000000012;
  v23 = 0x80000001D15C1FB0;
  v6 = [a1 identifier];
  v7 = sub_1D15A3F38();
  v9 = v8;

  MEMORY[0x1D388A330](v7, v9);

  v11 = v22;
  v10 = v23;
  v24 = v22;
  v25 = v23;
  if (!v23)
  {
LABEL_11:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1D148C05C(0, *(v12 + 2) + 1, 1, v12);
  }

  v14 = *(v12 + 2);
  v13 = *(v12 + 3);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1D148C05C((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 2) = v14 + 1;
  v15 = &v12[16 * v14];
  *(v15 + 4) = v11;
  *(v15 + 5) = v10;
LABEL_12:
  sub_1D155CCD0(&v24);
  v16 = *(v12 + 2);
  if (v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D14A7A14(0, v16, 0);
    v17 = v22;
    v18 = v12 + 40;
    do
    {

      sub_1D15A2BA8();
      v22 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D14A7A14(v19 > 1, v20 + 1, 1);
        v17 = v22;
      }

      *(v17 + 16) = v20 + 1;
      (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v5, v2);
      v18 += 16;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v17;
}

void sub_1D155BEC8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D388AA90](a1, a2, v9);
      sub_1D1453BA0(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D1453BA0(0, a5);
    if (sub_1D15A46E8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D15A46F8();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1D15A4588();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1D15A4598();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_1D155C0E0(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v4 = MEMORY[0x1E69E6720];
  sub_1D155CDD4(0, &qword_1EE059498, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = v50 - v6;
  sub_1D155CDD4(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0], v4);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = v50 - v8;
  v9 = sub_1D15A2CD8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D15A2C78();
  v67 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_1D15A4708();
  }

  else
  {
    v13 = *(a1 + 16);
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v80 = MEMORY[0x1E69E7CC0];
  sub_1D14A78D4(0, v13 & ~(v13 >> 63), 0);
  v14 = v80;
  if (v68)
  {
    result = sub_1D15A46A8();
  }

  else
  {
    result = sub_1D15A4688();
    v16 = *(a1 + 36);
  }

  v77 = result;
  v78 = v16;
  v79 = v68 != 0;
  if ((v13 & 0x8000000000000000) == 0)
  {
    v50[1] = v2;
    result = sub_1D1453BA0(0, &qword_1EE0566A0);
    v59 = result;
    v17 = 0;
    v58 = 0x80000001D15C1FB0;
    v57 = v67 + 32;
    v52 = a1 + 56;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v18 = a1;
    }

    v53 = v18;
    v51 = a1 + 64;
    v56 = xmmword_1D15ACDD0;
    v55 = xmmword_1D15AE100;
    v61 = a1;
    v60 = v12;
    v54 = v13;
    while (v17 < v13)
    {
      if (__OFADD__(v17++, 1))
      {
        goto LABEL_41;
      }

      v73 = v78;
      v74 = v77;
      v72 = v79;
      sub_1D155BEC8(v77, v78, v79, a1, &qword_1EE056778);
      v22 = v21;
      v71 = HKCodableWheelchairSetting.init(wheelchairUse:)(v66);
      v23 = [v71 data];
      v75 = v14;
      if (v23)
      {
        v24 = v23;
        v25 = sub_1D15A2518();
        v69 = v26;
        v70 = v25;
      }

      else
      {
        v69 = 0xC000000000000000;
        v70 = 0;
      }

      v76[0] = 0xD000000000000012;
      v76[1] = v58;
      v27 = [v22 identifier];
      v28 = sub_1D15A3F38();
      v30 = v29;

      MEMORY[0x1D388A330](v28, v30);

      sub_1D155CDD4(0, &qword_1EE0562B0, MEMORY[0x1E69A3910], MEMORY[0x1E69E6F90]);
      sub_1D15A3188();
      *(swift_allocObject() + 16) = v56;
      sub_1D15A42C8();
      sub_1D155CE38(0, &qword_1EE059678, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v31 = swift_allocObject();
      *(v31 + 16) = v55;
      *(v31 + 32) = v22;
      v32 = v22;
      sub_1D15A2C48();
      v33 = v64;
      sub_1D15A2888();
      v34 = sub_1D15A2898();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      v35 = v65;
      sub_1D15A26E8();
      v36 = sub_1D15A26F8();
      (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
      v37 = v60;
      sub_1D15A2C18();

      v14 = v75;
      v80 = v75;
      v39 = *(v75 + 16);
      v38 = *(v75 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D14A78D4(v38 > 1, v39 + 1, 1);
        v14 = v80;
      }

      *(v14 + 16) = v39 + 1;
      (*(v67 + 32))(v14 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v39, v37, v62);
      if (v68)
      {
        a1 = v61;
        result = v74;
        if (!v72)
        {
          goto LABEL_46;
        }

        if (sub_1D15A46C8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_1D155CD60();
        v19 = sub_1D15A4208();
        sub_1D15A4768();
        result = v19(v76, 0);
      }

      else
      {
        a1 = v61;
        result = v74;
        if (v72)
        {
          goto LABEL_47;
        }

        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        v40 = 1 << *(v61 + 32);
        if (v74 >= v40)
        {
          goto LABEL_42;
        }

        v41 = v74 >> 6;
        v42 = *(v52 + 8 * (v74 >> 6));
        if (((v42 >> v74) & 1) == 0)
        {
          goto LABEL_43;
        }

        if (*(v61 + 36) != v73)
        {
          goto LABEL_44;
        }

        v43 = v42 & (-2 << (v74 & 0x3F));
        if (v43)
        {
          v40 = __clz(__rbit64(v43)) | v74 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v44 = v41 << 6;
          v45 = v41 + 1;
          v46 = (v51 + 8 * v41);
          while (v45 < (v40 + 63) >> 6)
          {
            v48 = *v46++;
            v47 = v48;
            v44 += 64;
            ++v45;
            if (v48)
            {
              result = sub_1D15411E8(v74, v73, 0);
              v40 = __clz(__rbit64(v47)) + v44;
              goto LABEL_37;
            }
          }

          result = sub_1D15411E8(v74, v73, 0);
        }

LABEL_37:
        v49 = *(a1 + 36);
        v77 = v40;
        v78 = v49;
        v79 = 0;
      }

      v13 = v54;
      if (v17 == v54)
      {
        sub_1D15411E8(v77, v78, v79);
        return v14;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D155C924(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D15A4708();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D14A7854(0, v2 & ~(v2 >> 63), 0);
    v38 = v44;
    if (v36)
    {
      result = sub_1D15A46A8();
    }

    else
    {
      result = sub_1D15A4688();
      v4 = *(v1 + 36);
    }

    v41 = result;
    v42 = v4;
    v43 = v36 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v35 = v2;
      v34 = v1 + 56;
      v33 = v1 + 64;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v41;
        v9 = v43;
        v37 = v42;
        v10 = v1;
        sub_1D155BEC8(v41, v42, v43, v1, &qword_1EE056778);
        v12 = v11;
        v39 = 0xD000000000000012;
        v40 = 0x80000001D15C1FB0;
        v13 = [v11 identifier];
        v14 = sub_1D15A3F38();
        v16 = v15;

        MEMORY[0x1D388A330](v14, v16);

        v17 = v39;
        v18 = v40;
        v19 = v38;
        v44 = v38;
        v21 = *(v38 + 16);
        v20 = *(v38 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_1D14A7854((v20 > 1), v21 + 1, 1);
          v19 = v44;
        }

        *(v19 + 16) = v21 + 1;
        v22 = v19 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v18;
        v38 = v19;
        if (v36)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1D15A46C8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v35;
          sub_1D155CD60();
          v6 = sub_1D15A4208();
          sub_1D15A4768();
          result = v6(&v39, 0);
          if (v5 == v35)
          {
LABEL_32:
            sub_1D15411E8(v41, v42, v43);
            return v38;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v23 = 1 << *(v10 + 32);
          if (v8 >= v23)
          {
            goto LABEL_36;
          }

          v24 = v8 >> 6;
          v25 = *(v34 + 8 * (v8 >> 6));
          if (((v25 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v37)
          {
            goto LABEL_38;
          }

          v26 = v25 & (-2 << (v8 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v35;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v33 + 8 * v24);
            v2 = v35;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                result = sub_1D15411E8(v8, v37, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_31;
              }
            }

            result = sub_1D15411E8(v8, v37, 0);
          }

LABEL_31:
          v32 = *(v10 + 36);
          v41 = v23;
          v42 = v32;
          v43 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D155CCD0(uint64_t a1)
{
  sub_1D155CE38(0, &qword_1EE059788, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D155CD60()
{
  if (!qword_1EC6312C0)
  {
    sub_1D1453BA0(255, &qword_1EE056778);
    sub_1D1512508();
    v0 = sub_1D15A4218();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6312C0);
    }
  }
}

void sub_1D155CDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D155CE38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_1D155CE88(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D15A48E8();

    if (v4)
    {
      sub_1D1453BA0(0, &qword_1EE05ACD8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1D1480234(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_1D155CF4C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1D155E3DC(*a1, v2);
  sub_1D155E0AC();

  sub_1D155E3E8(v1, v2);
}

uint64_t sub_1D155CFAC()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D155CFFC()
{
  v1 = qword_1EE0583C8;
  v2 = *(v0 + qword_1EE0583C8);
  if (v2)
  {
    v3 = *(v0 + qword_1EE0583C8);
  }

  else
  {
    v4 = sub_1D155D060(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D155D060(void *a1)
{
  v23 = *MEMORY[0x1E69E7D40] & *a1;
  v2 = sub_1D15A31D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE05B398;
  v10 = a1;
  sub_1D15A31C8();
  v22 = *(v10 + qword_1EE0583E8);
  v11 = *(v10 + qword_1EE0583C0);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v5, v8, v2);
  v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = *(v23 + class metadata base offset for SampleCountQueryOperation);
  (*(v3 + 32))(v15 + v13, v5, v2);
  *(v15 + v14) = v12;
  v16 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
  aBlock[4] = sub_1D155E3F4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D155DED8;
  aBlock[3] = &block_descriptor_17;
  v17 = _Block_copy(aBlock);

  v18 = [v16 initWithSampleType:v22 predicate:v11 resultsHandler:v17];
  _Block_release(v17);

  v19 = v18;
  v20 = [v10 name];
  [v19 setDebugIdentifier_];

  [v19 setQualityOfService_];
  (*(v3 + 8))(v8, v2);
  return v19;
}

void sub_1D155D3CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D15A31B8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([v6 isCancelled])
    {

      v7._object = 0x80000001D15BDC90;
      v7._countAndFlagsBits = 0xD00000000000002DLL;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
LABEL_7:

      return;
    }

    v9 = [v6 isFinished];

    if (v9)
    {
      goto LABEL_7;
    }

    v10 = sub_1D155E114(a2, a3);
    MEMORY[0x1EEE9AC00](v10);
    v12 = v11 & 1;
    sub_1D15A2DA8();
    sub_1D155E3E8(v10, v12);
  }
}

uint64_t sub_1D155D574(uint64_t a1, void *a2, char a3)
{
  sub_1D155E3DC(a2, a3 & 1);
  sub_1D155E0AC();
  sub_1D155E3E8(a2, a3 & 1);
  v6 = [*(a1 + qword_1EE0583E8) identifier];
  v7 = sub_1D15A3F38();
  v9 = v8;

  v10._countAndFlagsBits = 0x64656873696E6966;
  v10._object = 0xE800000000000000;
  v11._countAndFlagsBits = v7;
  v11._object = v9;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v10, v11);
}

id SampleCountQueryOperation.init(sampleType:predicate:name:queryQualityOfService:healthStore:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = qword_1EE0583D8;
  sub_1D1487B04();
  v13 = swift_allocError();
  *v14 = 0;
  v23 = v13;
  LOBYTE(v24) = 1;
  sub_1D155DFC4();
  swift_allocObject();
  *&v6[v12] = sub_1D15A2D68();
  *&v6[qword_1EE0583C8] = 0;
  *&v6[qword_1EE0583E8] = a1;
  *&v6[qword_1EE0583C0] = a2;
  *&v6[qword_1EE0583D0] = a5;
  *&v6[qword_1EE0583E0] = a6;
  v22.receiver = v6;
  v22.super_class = type metadata accessor for SampleCountQueryOperation();
  v15 = a1;
  v16 = a6;
  v17 = a2;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  v19 = v18;
  if (a4)
  {
    v20 = sub_1D15A3EF8();
  }

  else
  {
    v20 = 0;
  }

  [v18 setName_];

  return v18;
}

uint64_t sub_1D155D87C()
{
  v1 = sub_1D15A31D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1487B04();
  v5 = swift_allocError();
  *v6 = 2;
  sub_1D155E0AC();

  v7 = *&v0[qword_1EE0583E8];
  v8 = [v7 identifier];
  v9 = sub_1D15A3F38();
  v11 = v10;

  v12._countAndFlagsBits = 0x676E696E6E7572;
  v12._object = 0xE700000000000000;
  v13._countAndFlagsBits = v9;
  v13._object = v11;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v12, v13);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE05B398;
  v15 = v0;
  sub_1D15A31C8();
  sub_1D15A4478();
  sub_1D1487C24();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D15ACDD0;
  v17 = [v7 identifier];
  v18 = sub_1D15A3F38();
  v20 = v19;

  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D1487C8C();
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  sub_1D15A31A8();

  v21 = *&v15[qword_1EE0583E0];
  v22 = sub_1D155CFFC();
  [v21 executeQuery_];

  return (*(v2 + 8))(v4, v1);
}

void sub_1D155DB28(void *a1)
{
  v1 = a1;
  sub_1D155D87C();
}

void sub_1D155DB70()
{
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v1 = swift_allocError();
    *v2 = 3;
    sub_1D155E0AC();

    v3 = [*&v0[qword_1EE0583E8] identifier];
    v4 = sub_1D15A3F38();
    v6 = v5;

    v7._countAndFlagsBits = 0x656C6C65636E6163;
    v7._object = 0xE900000000000064;
    v8._countAndFlagsBits = v4;
    v8._object = v6;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v7, v8);
  }

  v9 = *&v0[qword_1EE0583E0];
  v10 = sub_1D155CFFC();
  [v9 stopQuery_];
}

id SampleCountQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D155DD40()
{

  v1 = *(v0 + qword_1EE0583C8);
}

id SampleCountQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleCountQueryOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D155DE28(uint64_t a1)
{

  v2 = *(a1 + qword_1EE0583C8);
}

uint64_t sub_1D155DEA4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D155CFAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D155DED8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D1453BA0(0, &qword_1EE05B460);
    sub_1D1453BA0(0, &qword_1EE05ACD8);
    sub_1D155E4B8();
    v5 = sub_1D15A3E68();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

void sub_1D155DFC4()
{
  if (!qword_1EE0593F0)
  {
    sub_1D155E01C();
    v0 = sub_1D15A2D48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0593F0);
    }
  }
}

void sub_1D155E01C()
{
  if (!qword_1EE056230)
  {
    sub_1D1453368(255, &qword_1EE05ABB8);
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE056230);
    }
  }
}

uint64_t sub_1D155E0AC()
{

  sub_1D15A2D38();
}

id sub_1D155E114(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    result = sub_1D155CE88(*(v2 + qword_1EE0583E8), a1);
    if (result)
    {
      v4 = result;
      v5 = [result integerValue];

      return v5;
    }
  }

  else
  {
    if (a2)
    {
      v6 = 0xD000000000000020;
    }

    else
    {
      v6 = 0;
    }

    if (a2)
    {
      v7 = 0x80000001D15C2060;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      v8 = a2 | 0x8000000000000000;
    }

    else
    {
      v8 = 0xC000000000000000;
    }

    sub_1D1487F34();
    v10 = swift_allocError();
    *v11 = v6;
    v11[1] = v7;
    v11[2] = v8;
    swift_getErrorValue();
    v12 = a2;
    sub_1D1487F88(v6, v7, v8);
    v13._countAndFlagsBits = sub_1D15A4C08();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSOperation.logErrorString(_:withInfo:)(v13, v14);

    result = swift_allocError();
    *v15 = v6;
    v15[1] = v7;
    v15[2] = v8;
  }

  return result;
}

id sub_1D155E3DC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1D155E3E8(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1D155E3F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D15A31D8();

  sub_1D155D3CC(a1, a2, a3);
}

unint64_t sub_1D155E4B8()
{
  result = qword_1EE05AD60;
  if (!qword_1EE05AD60)
  {
    sub_1D1453BA0(255, &qword_1EE05B460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AD60);
  }

  return result;
}

id sub_1D155E52C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1D155E3E8(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1D155E3DC(v3, v4);
}

__n128 DiagramHeartRateRecovery.__allocating_init(recoveryConfiguration:diagramData:)(_DWORD *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 16) = *a1;
  result = *a2;
  v8 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v8;
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  return result;
}

unint64_t sub_1D155E5EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D1560954(*a1);
  *a2 = result;
  return result;
}

id sub_1D155E634()
{
  result = HKIntegerFormatter();
  if (result)
  {
    qword_1EE05A298 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D155E664(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1D15A3268();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = a2;
  if (a2 > 1u)
  {
    v17 = 0xD000000000000019;
    if (v13 == 2)
    {
      type metadata accessor for Localization();
      v40 = 0u;
      v41 = 0u;
      swift_initStaticObject();
      v18 = sub_1D144E91C(0xD000000000000019, 0x80000001D15C2230, &v40, 0, 0);
      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (!v20)
      {

        sub_1D15A3238();
        v21 = sub_1D15A3248();
        v22 = sub_1D15A42F8();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v39 = v24;
          *v23 = 136446210;
          *(v23 + 4) = sub_1D1479780(0xD000000000000019, 0x80000001D15C2230, &v39);
          _os_log_impl(&dword_1D1446000, v21, v22, "Localization: no localization found for '%{public}s'", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v24);
          MEMORY[0x1D388BF00](v24, -1, -1);
          MEMORY[0x1D388BF00](v23, -1, -1);
        }

        (*(v4 + 8))(v9, v3);
        goto LABEL_23;
      }
    }

    else
    {
      type metadata accessor for Localization();
      v40 = 0u;
      v41 = 0u;
      swift_initStaticObject();
      v18 = sub_1D144E91C(0xD000000000000019, 0x80000001D15C2210, &v40, 0, 0);
      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v18 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {

        sub_1D15A3238();
        v34 = sub_1D15A3248();
        v35 = sub_1D15A42F8();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v39 = v37;
          *v36 = 136446210;
          *(v36 + 4) = sub_1D1479780(0xD000000000000019, 0x80000001D15C2210, &v39);
          _os_log_impl(&dword_1D1446000, v34, v35, "Localization: no localization found for '%{public}s'", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          MEMORY[0x1D388BF00](v37, -1, -1);
          MEMORY[0x1D388BF00](v36, -1, -1);
        }

        (*(v4 + 8))(v6, v3);
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  if (a2)
  {
    v17 = 0xD000000000000019;
    type metadata accessor for Localization();
    v40 = 0u;
    v41 = 0u;
    swift_initStaticObject();
    v18 = sub_1D144E91C(0xD000000000000019, 0x80000001D15C2250, &v40, 0, 0);
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

      sub_1D15A3238();
      v27 = sub_1D15A3248();
      v28 = sub_1D15A42F8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v39 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_1D1479780(0xD000000000000019, 0x80000001D15C2250, &v39);
        _os_log_impl(&dword_1D1446000, v27, v28, "Localization: no localization found for '%{public}s'", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x1D388BF00](v30, -1, -1);
        MEMORY[0x1D388BF00](v29, -1, -1);
      }

      (*(v4 + 8))(v12, v3);
      goto LABEL_23;
    }

LABEL_22:
    v17 = v18;
LABEL_23:
    sub_1D144ED4C(&v40);
    return v17;
  }

  if (qword_1EE05A240 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE05A248;
  v15 = sub_1D15A2618();
  v16 = [v14 stringFromDate_];

  v17 = sub_1D15A3F38();
  return v17;
}

id sub_1D155EBFC()
{
  result = HKDateFormatterFromTemplate();
  if (result)
  {
    qword_1EE05A248 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D155EC30(char a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1)
  {
    if (qword_1EE05A260 != -1)
    {
      swift_once();
    }

    v9 = qword_1EE05A268;
    v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    if (qword_1EE05A270 != -1)
    {
      swift_once();
    }

    if (qword_1EE05A250 != -1)
    {
      swift_once();
    }

    v11 = [v9 stringFromValue:v10 displayType:? unitController:?];

    if (v11)
    {
      DiagramConfiguration.TextAttributes.toTextAttributes()();
      type metadata accessor for Key(0);
      sub_1D14587E0();
      v12 = sub_1D15A3E48();

      [v11 sizeWithAttributes_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D155EDF0()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() heartRateType];
    v3 = [v1 displayTypeForObjectType_];

    if (v3)
    {
      qword_1EE05A278 = v3;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D155EE9C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E696C518]) initWithHealthStore_];

  qword_1EE05A258 = v1;
}

void sub_1D155EF00()
{
  if (qword_1EE05A270 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE05A278;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 _countPerMinuteUnit];
  v4 = [v2 hk:v3 valueFormatterForUnit:?];

  qword_1EE05A268 = v4;
}

uint64_t sub_1D155EFC0()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_1D155F020(v0);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_1D155F020(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    if (*(v2 + 16))
    {

      v3 = sub_1D1451D94(0);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 40 * v3);

        return v5;
      }
    }
  }

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

void *sub_1D155F0E8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_1D155F148(v0);
    *(v0 + 80) = v1;
  }

  return v1;
}

void *sub_1D155F148(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!*(v1 + 16))
  {
    goto LABEL_32;
  }

  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    goto LABEL_32;
  }

  v3 = sub_1D1451D94(1u);
  if ((v4 & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = *(*(v2 + 56) + 40 * v3);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v9 = MEMORY[0x1E69E7CC8];
    goto LABEL_25;
  }

  v7 = 0;
  v8 = (v5 + 40);
  v9 = MEMORY[0x1E69E7CC8];
  do
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v10 = *(v8 - 1);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_27;
    }

    if (v10 <= -9.22337204e18)
    {
      goto LABEL_28;
    }

    if (v10 >= 9.22337204e18)
    {
      goto LABEL_29;
    }

    v11 = v10;
    if (v10 > 3)
    {
      goto LABEL_32;
    }

    v12 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1D1480284(v11);
    v16 = v9[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_30;
    }

    v20 = v15;
    if (v9[3] < v19)
    {
      sub_1D1481A0C(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1D1480284(v11);
      if ((v20 & 1) != (v21 & 1))
      {
        while (1)
        {
          sub_1D15A4BF8();
          __break(1u);
LABEL_34:

LABEL_32:
          sub_1D15A4908();
          __break(1u);
        }
      }

LABEL_18:
      if (v20)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v24 = v14;
    sub_1D1482678();
    v14 = v24;
    if (v20)
    {
LABEL_6:
      *(v9[7] + 8 * v14) = v12;
      goto LABEL_7;
    }

LABEL_19:
    v9[(v14 >> 6) + 8] |= 1 << v14;
    *(v9[6] + v14) = v11;
    *(v9[7] + 8 * v14) = v12;
    v22 = v9[2];
    v18 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v18)
    {
      goto LABEL_31;
    }

    v9[2] = v23;
LABEL_7:
    ++v7;
    v8 += 2;
  }

  while (v6 != v7);

LABEL_25:

  return v9;
}

double static DiagramHeartRateRecovery.dataModelSpace(for:recoveryIntervalStartDate:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *MEMORY[0x1E695F050];
    v3 = *(MEMORY[0x1E695F050] + 8);
    v4 = *(MEMORY[0x1E695F050] + 16);
    v5 = *(MEMORY[0x1E695F050] + 24);
    v6 = (a1 + 40);
    do
    {
      v17.origin.x = *(v6 - 1);
      v17.origin.y = *v6;
      v17.size.width = 0.0;
      v17.size.height = 0.0;
      *&v2 = CGRectUnion(*&v2, v17);
      v6 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  sub_1D15A2548();
  v12 = v11;
  v14.origin.x = v7;
  v14.origin.y = v8;
  v14.size.width = v9;
  v14.size.height = v10;
  CGRectGetMaxX(v14);
  v15.origin.x = v7;
  v15.origin.y = v8;
  v15.size.width = v9;
  v15.size.height = v10;
  CGRectGetMinY(v15);
  v16.origin.x = v7;
  v16.origin.y = v8;
  v16.size.width = v9;
  v16.size.height = v10;
  CGRectGetHeight(v16);
  return v12;
}

uint64_t DiagramHeartRateRecovery.init(recoveryConfiguration:diagramData:)(int *a1, uint64_t a2)
{
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  v3 = *a1;
  v4 = *(a2 + 16);
  *(v2 + 24) = *a2;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(v2 + 16) = v3;
  *(v2 + 40) = v4;
  *(v2 + 56) = v5;
  *(v2 + 64) = v6;
  return v2;
}

double sub_1D155F57C()
{

  *&v0 = DiagramData.diagramBounds(forceNonZeroSize:)(1);

  return v0;
}

void sub_1D155F604()
{
  v1 = v0;
  v20 = *(v0 + 24);
  v24 = *(v0 + 40);
  LOBYTE(v26) = *(v0 + 56);
  v28 = *(v0 + 64);

  v30 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  MaxY = CGRectGetMaxY(v31);
  if (qword_1EE05A260 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE05A268;
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  if (qword_1EE05A270 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE05A278;
  if (qword_1EE05A250 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE05A258;
  v11 = [v7 stringFromValue:v8 displayType:v9 unitController:qword_1EE05A258];

  if (v11)
  {
    LOBYTE(v21) = 13;
    DiagramConfiguration.TextAttributes.toTextAttributes()();
    type metadata accessor for Key(0);
    sub_1D14587E0();
    v12 = sub_1D15A3E48();

    [v11 sizeWithAttributes_];

    v22 = *(v1 + 24);
    v25 = *(v1 + 40);
    LOBYTE(v27) = *(v1 + 56);
    v29 = *(v1 + 64);

    v32 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
    v13 = v32.origin.x;
    v14 = v32.origin.y;
    v15 = v32.size.width;
    v16 = v32.size.height;

    v33.origin.x = v13;
    v33.origin.y = v14;
    v33.size.width = v15;
    v33.size.height = v16;
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v18 = [v7 stringFromValue:v17 displayType:v9 unitController:v10];

    if (v18)
    {
      LOBYTE(v23) = 13;
      DiagramConfiguration.TextAttributes.toTextAttributes()();
      v19 = sub_1D15A3E48();

      [v18 sizeWithAttributes_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D155F9B4(CGContext *a1, double *a2, uint64_t a3, double a4, double a5)
{
  v158 = sub_1D15A26A8();
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v157 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v170 = a2[6];
  v171 = v11;
  v159 = a5;
  v166 = a5 + -4.0;
  v167 = v15;
  v16 = *(a3 + 24);
  v17 = *(a3 + 40);
  v164 = v17;
  v165 = v16;
  v18 = *(a3 + 56);
  v19 = *(a3 + 64);
  v20 = *(a3 + 19);
  v21 = *(a3 + 18);
  v168 = v14;
  v169 = v13;
  do
  {
    v22 = &unk_1F4D3BB40 + v10++;
    LOBYTE(v17) = v22[32];
    v23 = v17 * 60.0;
    *&v172.a = v165;
    *&v172.c = v164;
    LOBYTE(v172.tx) = v18;
    v172.ty = v19;

    v178 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
    x = v178.origin.x;
    y = v178.origin.y;
    width = v178.size.width;
    height = v178.size.height;

    v179.origin.x = x;
    v179.origin.y = y;
    v179.size.width = width;
    v179.size.height = height;
    v29 = v168;
    v28 = v169;
    v173.x = v23 + CGRectGetMinX(v179);
    v172.a = v171;
    v172.b = v12;
    v172.c = v28;
    v172.d = v29;
    v172.tx = v167;
    v172.ty = v170;
    v173.y = 0.0;
    CGPointApplyAffineTransform(v173, &v172);
    LOBYTE(v172.a) = v20;
    v30 = DiagramConfiguration.LineWidth.toPoints()();
    LOBYTE(v172.a) = v21;
    isa = DiagramConfiguration.Color.toColor()().super.isa;
    CGContextSetLineWidth(a1, v30);
    CGContextSetLineCap(a1, kCGLineCapRound);
    v32 = [(objc_class *)isa CGColor];
    CGContextSetStrokeColorWithColor(a1, v32);

    sub_1D15A4298();
    sub_1D15A42A8();
    CGContextStrokePath(a1);
  }

  while (v10 != 4);
  v152 = a1;
  v33 = 0;
  v34 = v159 + -42.0;
  v166 = *MEMORY[0x1E69DDDC8];
  *&v165 = *MEMORY[0x1E69DB980];
  v35 = *MEMORY[0x1E69DDC58];
  v162 = *MEMORY[0x1E69DB648];
  v163 = v35;
  v161 = *MEMORY[0x1E69DB650];
  v160 = xmmword_1D15AEBB0;
  do
  {
    v36 = byte_1F4D3BB68[v33 + 32];
    if (byte_1F4D3BB68[v33 + 32])
    {
      v37 = byte_1F4D3BB68[v33 + 32];
      if (v36 > 3)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = sub_1D155F0E8();
    if (v38[2] && (v39 = sub_1D1480284(v37), (v40 & 1) != 0))
    {
      v41 = *(v38[7] + 8 * v39);

      if (qword_1EE05A290 != -1)
      {
        swift_once();
      }

      v42 = qword_1EE05A298;
      v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v44 = [v42 stringFromNumber_];

      if (!v44)
      {
        goto LABEL_41;
      }

      if (v36)
      {
        v45 = dbl_1D15B67F8[v36 - 1];
      }

      else
      {
        v45 = 5.0;
      }

      v46 = *(a3 + 56);
      v47 = *(a3 + 64);
      v48 = *(a3 + 40);
      *&v172.a = *(a3 + 24);
      *&v172.c = v48;
      LOBYTE(v172.tx) = v46;
      v172.ty = v47;

      v180 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
      v49 = v180.origin.x;
      v50 = v180.origin.y;
      v51 = v180.size.width;
      v52 = v180.size.height;

      v181.origin.x = v49;
      v181.origin.y = v50;
      v181.size.width = v51;
      v181.size.height = v52;
      v174.x = v45 + CGRectGetMinX(v181);
      v172.a = v171;
      v172.b = v12;
      v172.c = v169;
      v172.d = v168;
      v172.tx = v167;
      v172.ty = v170;
      v174.y = 0.0;
      *&v53 = *&CGPointApplyAffineTransform(v174, &v172);
      v54 = sub_1D1453BA0(0, &qword_1EE05ACF0);
      v55 = sub_1D15A4538();
      sub_1D1457C9C();
      inited = swift_initStackObject();
      *(inited + 16) = v160;
      v57 = v162;
      *(inited + 32) = v162;
      *(inited + 40) = v55;
      *(inited + 64) = v54;
      v58 = v161;
      *(inited + 72) = v161;
      LOBYTE(v172.a) = 24;
      v59 = v57;
      v60 = v55;
      v61 = v58;
      v62 = DiagramConfiguration.Color.toColor()().super.isa;
      *(inited + 104) = sub_1D1453BA0(0, &qword_1EE059710);
      *(inited + 80) = v62;
      sub_1D1458674(inited);
      swift_setDeallocating();
      sub_1D1457C30();
      swift_arrayDestroy();

      type metadata accessor for Key(0);
      sub_1D14587E0();
      v63 = sub_1D15A3E48();

      [v44 drawAtPoint:v63 withAttributes:{v53, v34}];
    }

    else
    {
    }

    ++v33;
  }

  while (v33 != 4);
  v64 = v159 + -16.0;
  v155 = sub_1D1453BA0(0, &qword_1EE05ACF0);
  v65 = 0;
  v66 = *MEMORY[0x1E69DDD10];
  v153 = a3;
  v154 = v66;
  v67 = *(a3 + 24);
  v68 = *(a3 + 32);
  v69 = *(a3 + 48);
  v166 = *(a3 + 40);
  *&v165 = v69;
  LODWORD(v164) = *(a3 + 56);
  v70 = *(a3 + 64);
  ++v156;
  do
  {
    v71 = byte_1F4D3BB90[v65 + 32];
    v172.a = v67;
    v172.b = v68;
    v172.c = v166;
    *&v172.d = v165;
    LOBYTE(v172.tx) = v164;
    v172.ty = v70;

    v182 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
    v72 = v182.origin.x;
    v73 = v182.origin.y;
    v74 = v182.size.width;
    v75 = v182.size.height;

    v183.origin.x = v72;
    v183.origin.y = v73;
    v183.size.width = v74;
    v183.size.height = v75;
    CGRectGetMinX(v183);
    v76 = v157;
    sub_1D15A2538();
    sub_1D155E664(v76, v71);
    (*v156)(v76, v158);
    if (v71 > 3)
    {
      __break(1u);
      goto LABEL_39;
    }

    v77 = dbl_1D15B6810[v71];
    ++v65;
    v172.a = v67;
    v172.b = v68;
    v172.c = v166;
    *&v172.d = v165;
    LOBYTE(v172.tx) = v164;
    v172.ty = v70;

    v184 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
    v78 = v184.origin.x;
    v79 = v184.origin.y;
    v80 = v184.size.width;
    v81 = v184.size.height;

    v185.origin.x = v78;
    v185.origin.y = v79;
    v185.size.width = v80;
    v185.size.height = v81;
    v175.x = v77 + CGRectGetMinX(v185);
    v172.a = v171;
    v172.b = v12;
    v172.c = v169;
    v172.d = v168;
    v172.tx = v167;
    v172.ty = v170;
    v175.y = 0.0;
    *&v82 = *&CGPointApplyAffineTransform(v175, &v172);
    v83 = sub_1D15A3EF8();

    v84 = v155;
    v85 = v67;
    v86 = sub_1D15A4538();
    sub_1D1457C9C();
    v87 = swift_initStackObject();
    *(v87 + 16) = v160;
    v88 = v162;
    *(v87 + 32) = v162;
    *(v87 + 40) = v86;
    *(v87 + 64) = v84;
    v89 = v68;
    v90 = v161;
    *(v87 + 72) = v161;
    LOBYTE(v172.a) = 27;
    v91 = v88;
    v92 = v86;
    v93 = v90;
    v68 = v89;
    v94 = DiagramConfiguration.Color.toColor()().super.isa;
    *(v87 + 104) = sub_1D1453BA0(0, &qword_1EE059710);
    *(v87 + 80) = v94;
    sub_1D1458674(v87);
    swift_setDeallocating();
    sub_1D1457C30();
    swift_arrayDestroy();

    type metadata accessor for Key(0);
    sub_1D14587E0();
    v95 = sub_1D15A3E48();

    [v83 drawAtPoint:v95 withAttributes:{v82, v64}];

    v67 = v85;
  }

  while (v65 != 4);
  v96 = 0;
  v97 = 0;
  v98 = v153;
  while (1)
  {
    v99 = v96;
    v100 = *(&unk_1F4D3BBB8 + v97 + 32);
    v101 = *(v98 + 32);
    v103 = *(v98 + 40);
    v102 = *(v98 + 48);
    v104 = *(v98 + 56);
    v105 = *(v98 + 64);
    v172.a = *(v98 + 24);
    v172.b = v101;
    v172.c = v103;
    v172.d = v102;
    LOBYTE(v172.tx) = v104;
    v172.ty = v105;

    v186 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
    v106 = v186.origin.x;
    v107 = v186.origin.y;
    v108 = v186.size.width;
    v109 = v186.size.height;

    v110 = v106;
    v111 = v107;
    v112 = v108;
    v113 = v109;
    if (v100)
    {
      MaxY = CGRectGetMaxY(*&v110);
    }

    else
    {
      MaxY = CGRectGetMinY(*&v110);
    }

    v115 = MaxY;
    if (qword_1EE05A260 != -1)
    {
      swift_once();
    }

    v116 = qword_1EE05A268;
    v117 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    if (qword_1EE05A270 != -1)
    {
      swift_once();
    }

    v118 = qword_1EE05A278;
    if (qword_1EE05A250 != -1)
    {
      swift_once();
    }

    v119 = [v116 stringFromValue:v117 displayType:v118 unitController:{qword_1EE05A258, v152}];

    if (!v119)
    {
      break;
    }

    sub_1D155F604();
    sub_1D155EC30(v100, v120, v159, v120, v122, v121, v123, v115);
    v125 = v124;
    v126 = *(v98 + 56);
    v127 = *(v98 + 64);
    v128 = *(v98 + 40);
    *&v172.a = *(v98 + 24);
    *&v172.c = v128;
    LOBYTE(v172.tx) = v126;
    v172.ty = v127;

    v96 = 1;
    v187 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
    v129 = v187.origin.x;
    v130 = v187.origin.y;
    v131 = v187.size.width;
    v132 = v187.size.height;

    v188.origin.x = v129;
    v188.origin.y = v130;
    v188.size.width = v131;
    v188.size.height = v132;
    v176.x = CGRectGetMaxX(v188);
    v172.a = v171;
    v172.b = v12;
    v134 = v168;
    v133 = v169;
    v172.c = v169;
    v172.d = v168;
    v135 = v167;
    v172.tx = v167;
    v172.ty = v170;
    v176.y = 0.0;
    v136 = CGPointApplyAffineTransform(v176, &v172).x + 5.0;
    LOBYTE(v172.a) = 13;
    DiagramConfiguration.TextAttributes.toTextAttributes()();
    v137 = sub_1D15A3E48();

    [v119 drawAtPoint:v137 withAttributes:{v136, v125}];

    v97 = 1u;
    if (v99)
    {
      v138 = sub_1D155EFC0();
      v139 = *(v138 + 16);
      v140 = v152;
      v141 = v170;
      if (v139)
      {
        v142 = *(v98 + 17);
        v143 = *(v98 + 16);
        v144 = v138 + 40;
        do
        {
          v177 = *(v144 - 8);
          v172.a = v171;
          v172.b = v12;
          v172.c = v133;
          v172.d = v134;
          v172.tx = v135;
          v172.ty = v141;
          v145 = CGPointApplyAffineTransform(v177, &v172);
          LOBYTE(v172.a) = v142;
          v146 = DiagramConfiguration.LineRadius.toFloat()();
          v147 = v145.x - v146;
          v148 = v145.y - v146;
          v149 = v146 + v146;
          LOBYTE(v172.a) = v143;
          v150 = DiagramConfiguration.Color.toColor()().super.isa;
          v151 = [(objc_class *)v150 CGColor];

          CGContextSetFillColorWithColor(v140, v151);
          CGContextSetBlendMode(v140, kCGBlendModeNormal);
          v189.origin.x = v147;
          v189.origin.y = v148;
          v189.size.width = v149;
          v189.size.height = v149;
          CGContextFillEllipseInRect(v140, v189);
          v144 += 16;
          --v139;
        }

        while (v139);
      }

      return;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t DiagramHeartRateRecovery.deinit()
{

  return v0;
}

uint64_t DiagramHeartRateRecovery.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D15606B8()
{

  *&v0 = DiagramData.diagramBounds(forceNonZeroSize:)(1);

  return v0;
}

unint64_t sub_1D1560880()
{
  result = qword_1EC6312C8;
  if (!qword_1EC6312C8)
  {
    sub_1D1560964(255, &qword_1EC6312D0, &type metadata for DiagramHeartRateRecovery.MinuteLine, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6312C8);
  }

  return result;
}

unint64_t sub_1D1560900()
{
  result = qword_1EE05A280;
  if (!qword_1EE05A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A280);
  }

  return result;
}

unint64_t sub_1D1560954(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_1D1560964(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D15609B8@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D1560A18()
{

  sub_1D15A2D38();
}

uint64_t sub_1D1560A88()
{

  sub_1D15A2D28();

  return v1;
}

uint64_t sub_1D1560B58@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *QuantityDistributionQueryOperation.queryPredicate.getter()
{
  v1 = *(v0 + qword_1EE068310);
  v2 = v1;
  return v1;
}

id sub_1D1560C00()
{
  v1 = qword_1EE05AF58;
  v2 = *&v0[qword_1EE05AF58];
  if (v2)
  {
    v3 = *&v0[qword_1EE05AF58];
  }

  else
  {
    v4 = sub_1D1560C64(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D1560C64(_BYTE *a1)
{
  v2 = *&a1[qword_1EE05AF48];
  result = [v2 canonicalUnit];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() quantityWithUnit:result doubleValue:0.0];

    v6 = &a1[qword_1EE068318];
    LOBYTE(aBlock[0]) = a1[qword_1EE068318 + 3];
    isa = BucketSize.quantityForType(type:)(v2).super.isa;
    v20 = *&a1[qword_1EE068310];
    v21 = *(v6 + 1);
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v19 = objc_allocWithZone(MEMORY[0x1E696C658]);
    v9 = v5;
    v10 = isa;
    v22 = a1;
    v11 = sub_1D15A2618();
    v12 = sub_1D15A2618();
    v13 = sub_1D15A2618();
    v14 = sub_1D15A22F8();
    aBlock[4] = sub_1D15649EC;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D15646AC;
    aBlock[3] = &block_descriptor_18;
    v15 = _Block_copy(aBlock);
    v16 = [v19 initWithQuantityType:v2 startDate:v11 endDate:v12 contextStyle:v21 predicate:v20 anchorDate:v13 intervalComponents:v14 histogramAnchor:v9 histogramBucketSize:v10 options:5 completionHandler:v15];
    _Block_release(v15);

    v17 = v16;
    v18 = [v22 name];
    [v17 setDebugIdentifier_];

    [v17 setQualityOfService_];
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id QuantityDistributionQueryOperation.__allocating_init(quantityType:configuration:configurationOverrides:name:queryQualityOfService:healthStore:baseDate:resultHandler:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7, uint64_t a8, unsigned int (*a9)(uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v11 = v10;
  v146 = a8;
  v143 = a7;
  v150 = a6;
  v140 = a5;
  v120 = a4;
  v147 = a3;
  v144 = a1;
  v145 = a10;
  v142 = a9;
  v13 = MEMORY[0x1E69E6720];
  sub_1D1563204(0, &qword_1EE05B408, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v135 = &v118 - v15;
  v138 = sub_1D15A23A8();
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v134 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1563204(0, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides, v13);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v137 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v133 = &v118 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v118 - v22;
  sub_1D1563204(0, &qword_1EE05B520, MEMORY[0x1E6968130], v13);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v132 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v118 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v131 = &v118 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v151 = &v118 - v30;
  v141 = MEMORY[0x1E6969530];
  sub_1D1563204(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], v13);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v127 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v118 - v34;
  v123 = sub_1D15A26A8();
  v149 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v130 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v119 = &v118 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v129 = &v118 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v125 = &v118 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v148 = &v118 - v44;
  v139 = v11;
  v45 = objc_allocWithZone(v11);
  v46 = *a2;
  v47 = a2[1];
  v48 = a2[2];
  v49 = a2[3];
  v50 = *(a2 + 1);
  v51 = qword_1EE05AF38;
  sub_1D1487B04();
  v52 = swift_allocError();
  *v53 = 0;
  v153 = v52;
  v154 = 1;
  sub_1D1563204(0, &qword_1EE05B3D8, sub_1D1563268, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  v54 = sub_1D15A2D68();
  v55 = v144;
  v56 = v145;
  *&v45[v51] = v54;
  v57 = &v45[qword_1EE05AF40];
  *v57 = 0;
  *(v57 + 1) = 0;
  *&v45[qword_1EE05AF58] = 0;
  v58 = v55;
  *&v45[qword_1EE05AF48] = v55;
  v59 = &v45[qword_1EE068318];
  v121 = v46;
  *v59 = v46;
  v60 = v47;
  v59[1] = v47;
  v122 = v48;
  v59[2] = v48;
  v61 = v143;
  v59[3] = v49;
  v62 = v123;
  *(v59 + 1) = v50;
  *&v45[qword_1EE0682F8] = v150;
  *&v45[qword_1EE05AF50] = v61;
  v63 = v141;
  *v57 = v142;
  *(v57 + 1) = v56;
  v150 = v45;
  v64 = v146;
  sub_1D1563438(v146, &v45[qword_1EE0682F0], &qword_1EE05B7F8, v63);
  sub_1D1563438(v64, v35, &qword_1EE05B7F8, v63);
  v65 = v149;
  v66 = *(v149 + 48);
  v67 = v66(v35, 1, v62);
  v118 = v66;
  if (v67 == 1)
  {
    LOBYTE(v153) = v60;
    v68 = v58;
    v69 = v61;

    v70 = v148;
    AnchorDate.date.getter();
    if (v66(v35, 1, v62) != 1)
    {
      sub_1D156336C(v35, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    v71 = *(v65 + 32);
    v70 = v148;
    v71(v148, v35, v62);
    v72 = v58;
    v73 = v61;
  }

  v74 = v124;
  sub_1D1563438(v147, v124, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
  v75 = type metadata accessor for QuantityDistributionConfigurationOverrides();
  v76 = *(v75 - 8);
  v77 = *(v76 + 48);
  v141 = (v76 + 48);
  v142 = v77;
  v78 = v77(v74, 1, v75);
  v79 = v131;
  v128 = v60;
  if (v78 == 1)
  {
    sub_1D156336C(v74, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
    v80 = sub_1D15A22A8();
    (*(*(v80 - 8) + 56))(v79, 1, 1, v80);
  }

  else
  {
    sub_1D1563438(v74, v131, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D15633DC(v74);
    v80 = sub_1D15A22A8();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v79, 1, v80) != 1)
    {
      v82 = v62;
      v83 = v151;
      (*(v81 + 32))(v151, v79, v80);
      (*(v81 + 56))(v83, 0, 1, v80);
      goto LABEL_11;
    }
  }

  DateRange.dateInterval(endingAt:)(v70, v121, v151);
  sub_1D15A22A8();
  v82 = v62;
  if ((*(*(v80 - 8) + 48))(v79, 1, v80) != 1)
  {
    sub_1D156336C(v79, &qword_1EE05B520, MEMORY[0x1E6968130]);
  }

LABEL_11:
  v131 = v75;
  v84 = v126;
  sub_1D1563438(v151, v126, &qword_1EE05B520, MEMORY[0x1E6968130]);
  sub_1D15A22A8();
  v85 = *(v80 - 8);
  v86 = *(v85 + 48);
  if (v86(v84, 1, v80) == 1)
  {
    sub_1D156336C(v84, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v87 = v149;
    v88 = v127;
    (*(v149 + 56))(v127, 1, 1, v82);
    v89 = v125;
    sub_1D15A2648();
    if (v118(v88, 1, v82) != 1)
    {
      sub_1D156336C(v88, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    v90 = v127;
    sub_1D15A2288();
    (*(v85 + 8))(v84, v80);
    v87 = v149;
    (*(v149 + 56))(v90, 0, 1, v82);
    v89 = v125;
    (*(v87 + 32))(v125, v90, v82);
  }

  v91 = *(v87 + 32);
  v91(&v150[qword_1EE068308], v89, v82);
  v92 = v132;
  sub_1D1563438(v151, v132, &qword_1EE05B520, MEMORY[0x1E6968130]);
  if (v86(v92, 1, v80) == 1)
  {
    sub_1D156336C(v92, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v93 = *(v87 + 16);
    v94 = v129;
    v93(v129, v148, v82);
  }

  else
  {
    v95 = v119;
    sub_1D15A2258();
    (*(v85 + 8))(v92, v80);
    v94 = v129;
    v91(v129, v95, v82);
  }

  v96 = v140;
  v97 = v136;
  v98 = v134;
  v99 = v150;
  v91(&v150[qword_1EE068320], v94, v82);
  LOBYTE(v153) = v128;
  v100 = v130;
  AnchorDate.date.getter();
  v91(&v99[qword_1EE068328], v100, v82);
  v101 = v147;
  v102 = v133;
  sub_1D1563438(v147, v133, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
  v103 = v131;
  if (v142(v102, 1, v131) == 1)
  {
    sub_1D156336C(v102, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
    v104 = v135;
    v105 = v138;
    (*(v97 + 56))(v135, 1, 1, v138);
    v106 = v144;
  }

  else
  {
    v104 = v135;
    sub_1D1563438(v102 + *(v103 + 24), v135, &qword_1EE05B408, MEMORY[0x1E6968278]);
    sub_1D15633DC(v102);
    v105 = v138;
    v107 = (*(v97 + 48))(v104, 1, v138);
    v106 = v144;
    if (v107 != 1)
    {
      (*(v97 + 32))(v98, v104, v105);
      goto LABEL_43;
    }
  }

  if (v122 <= 1)
  {
    if (v122)
    {
      if (qword_1EE05B410 != -1)
      {
        swift_once();
      }

      v108 = qword_1EE05B418;
    }

    else
    {
      if (qword_1EE059550 != -1)
      {
        swift_once();
      }

      v108 = qword_1EE059558;
    }
  }

  else if (v122 == 2)
  {
    if (qword_1EE059530 != -1)
    {
      swift_once();
    }

    v108 = qword_1EE059538;
  }

  else if (v122 == 3)
  {
    if (qword_1EE0594F0 != -1)
    {
      swift_once();
    }

    v108 = qword_1EE0594F8;
  }

  else
  {
    if (qword_1EE059510 != -1)
    {
      swift_once();
    }

    v108 = qword_1EE059518;
  }

  v109 = __swift_project_value_buffer(v105, v108);
  (*(v97 + 16))(v98, v109, v105);
  if ((*(v97 + 48))(v104, 1, v105) != 1)
  {
    sub_1D156336C(v104, &qword_1EE05B408, MEMORY[0x1E6968278]);
  }

LABEL_43:
  (*(v97 + 32))(&v150[qword_1EE068300], v98, v105);
  v110 = v137;
  sub_1D1563438(v101, v137, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
  if (v142(v110, 1, v103) == 1)
  {
    sub_1D156336C(v110, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
    v111 = 0;
  }

  else
  {
    v111 = *(v110 + *(v103 + 20));
    v112 = v111;
    sub_1D15633DC(v110);
  }

  v113 = v150;
  *&v150[qword_1EE068310] = v111;
  v152.receiver = v113;
  v152.super_class = v139;
  v114 = objc_msgSendSuper2(&v152, sel_init, v118);
  v115 = v114;
  if (v96)
  {
    v116 = sub_1D15A3EF8();
  }

  else
  {
    v116 = 0;
  }

  [v114 setName_];

  sub_1D156336C(v146, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  sub_1D156336C(v101, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
  sub_1D156336C(v151, &qword_1EE05B520, MEMORY[0x1E6968130]);
  (*(v149 + 8))(v148, v82);
  return v114;
}

id QuantityDistributionQueryOperation.init(quantityType:configuration:configurationOverrides:name:queryQualityOfService:healthStore:baseDate:resultHandler:)(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v149 = a8;
  v146 = a7;
  v147 = a6;
  v138 = a5;
  v121 = a4;
  v150 = a3;
  v142 = a1;
  v148 = a10;
  v145 = a9;
  v13 = MEMORY[0x1E69E6720];
  sub_1D1563204(0, &qword_1EE05B408, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v134 = &v119 - v15;
  v137 = sub_1D15A23A8();
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v133 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1563204(0, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides, v13);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v136 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v132 = &v119 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v119 - v22;
  sub_1D1563204(0, &qword_1EE05B520, MEMORY[0x1E6968130], v13);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v131 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v139 = &v119 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v119 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v152 = &v119 - v30;
  v144 = MEMORY[0x1E6969530];
  sub_1D1563204(0, &qword_1EE05B7F8, MEMORY[0x1E6969530], v13);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v127 = &v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v119 - v34;
  v141 = sub_1D15A26A8();
  v151 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v130 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v120 = &v119 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v129 = &v119 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v126 = &v119 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v119 - v44;
  v46 = *a2;
  v47 = a2[1];
  v48 = a2[2];
  LODWORD(v143) = a2[3];
  v49 = *(a2 + 1);
  v50 = qword_1EE05AF38;
  sub_1D1487B04();
  v51 = swift_allocError();
  *v52 = 0;
  v154 = v51;
  v155 = 1;
  sub_1D1563204(0, &qword_1EE05B3D8, sub_1D1563268, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  v53 = sub_1D15A2D68();
  v54 = v148;
  *&v11[v50] = v53;
  v55 = v142;
  v56 = &v11[qword_1EE05AF40];
  *v56 = 0;
  v56[1] = 0;
  *&v11[qword_1EE05AF58] = 0;
  v57 = v55;
  *&v11[qword_1EE05AF48] = v55;
  v58 = &v11[qword_1EE068318];
  v122 = v46;
  *v58 = v46;
  v59 = v47;
  v58[1] = v47;
  v123 = v48;
  v58[2] = v48;
  v58[3] = v143;
  v60 = v141;
  v62 = v146;
  v61 = v147;
  *(v58 + 1) = v49;
  *&v11[qword_1EE0682F8] = v61;
  *&v11[qword_1EE05AF50] = v62;
  *v56 = v145;
  v56[1] = v54;
  v147 = v11;
  v63 = &v11[qword_1EE0682F0];
  v64 = v149;
  v65 = v144;
  sub_1D1563438(v149, v63, &qword_1EE05B7F8, v144);
  sub_1D1563438(v64, v35, &qword_1EE05B7F8, v65);
  v66 = v151;
  v67 = *(v151 + 48);
  v68 = v67(v35, 1, v60);
  v119 = v67;
  if (v68 == 1)
  {
    LOBYTE(v154) = v59;
    v69 = v57;
    v70 = v62;

    AnchorDate.date.getter();
    if (v67(v35, 1, v60) != 1)
    {
      sub_1D156336C(v35, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v66 + 32))(v45, v35, v60);
    v71 = v57;
    v72 = v62;
  }

  v73 = v124;
  sub_1D1563438(v150, v124, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
  v74 = type metadata accessor for QuantityDistributionConfigurationOverrides();
  v75 = *(v74 - 8);
  v144 = *(v75 + 48);
  v145 = v74;
  v143 = v75 + 48;
  v76 = (v144)(v73, 1);
  v77 = v139;
  v78 = v125;
  v140 = v45;
  v128 = v59;
  if (v76 == 1)
  {
    sub_1D156336C(v73, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
    v79 = sub_1D15A22A8();
    (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
  }

  else
  {
    sub_1D1563438(v73, v125, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D15633DC(v73);
    v79 = sub_1D15A22A8();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v78, 1, v79) != 1)
    {
      v83 = v78;
      v81 = v141;
      v84 = v152;
      (*(v80 + 32))(v152, v83, v79);
      v85 = v84;
      v77 = v139;
      (*(v80 + 56))(v85, 0, 1, v79);
      goto LABEL_12;
    }
  }

  DateRange.dateInterval(endingAt:)(v45, v122, v152);
  sub_1D15A22A8();
  if ((*(*(v79 - 8) + 48))(v78, 1, v79) == 1)
  {
    v81 = v141;
  }

  else
  {
    v82 = v78;
    v81 = v141;
    sub_1D156336C(v82, &qword_1EE05B520, MEMORY[0x1E6968130]);
  }

LABEL_12:
  sub_1D1563438(v152, v77, &qword_1EE05B520, MEMORY[0x1E6968130]);
  sub_1D15A22A8();
  v86 = *(v79 - 8);
  v87 = *(v86 + 48);
  if (v87(v77, 1, v79) == 1)
  {
    sub_1D156336C(v77, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v88 = v151;
    v89 = v127;
    (*(v151 + 56))(v127, 1, 1, v81);
    v90 = v126;
    sub_1D15A2648();
    if (v119(v89, 1, v81) != 1)
    {
      sub_1D156336C(v89, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    v91 = v127;
    sub_1D15A2288();
    (*(v86 + 8))(v77, v79);
    v88 = v151;
    (*(v151 + 56))(v91, 0, 1, v81);
    v90 = v126;
    (*(v88 + 32))(v126, v91, v81);
  }

  v92 = *(v88 + 32);
  v92(&v147[qword_1EE068308], v90, v81);
  v93 = v131;
  sub_1D1563438(v152, v131, &qword_1EE05B520, MEMORY[0x1E6968130]);
  if (v87(v93, 1, v79) == 1)
  {
    sub_1D156336C(v93, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v94 = v129;
    (*(v88 + 16))(v129, v140, v81);
  }

  else
  {
    v95 = v120;
    sub_1D15A2258();
    (*(v86 + 8))(v93, v79);
    v94 = v129;
    v92(v129, v95, v81);
  }

  v96 = v150;
  v97 = v137;
  v98 = v138;
  v99 = v134;
  v100 = v147;
  v92(&v147[qword_1EE068320], v94, v81);
  LOBYTE(v154) = v128;
  v101 = v130;
  AnchorDate.date.getter();
  v92(&v100[qword_1EE068328], v101, v81);
  v102 = v132;
  sub_1D1563438(v96, v132, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
  v103 = v145;
  if ((v144)(v102, 1, v145) == 1)
  {
    sub_1D156336C(v102, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
    v104 = v135;
    (*(v135 + 56))(v99, 1, 1, v97);
    v105 = v142;
    v106 = v136;
  }

  else
  {
    sub_1D1563438(v102 + *(v103 + 24), v99, &qword_1EE05B408, MEMORY[0x1E6968278]);
    sub_1D15633DC(v102);
    v104 = v135;
    v107 = (*(v135 + 48))(v99, 1, v97);
    v105 = v142;
    v106 = v136;
    if (v107 != 1)
    {
      v108 = v133;
      (*(v104 + 32))(v133, v99, v97);
      goto LABEL_44;
    }
  }

  v108 = v133;
  if (v123 <= 1)
  {
    if (v123)
    {
      if (qword_1EE05B410 != -1)
      {
        swift_once();
      }

      v109 = qword_1EE05B418;
    }

    else
    {
      if (qword_1EE059550 != -1)
      {
        swift_once();
      }

      v109 = qword_1EE059558;
    }
  }

  else if (v123 == 2)
  {
    if (qword_1EE059530 != -1)
    {
      swift_once();
    }

    v109 = qword_1EE059538;
  }

  else if (v123 == 3)
  {
    if (qword_1EE0594F0 != -1)
    {
      swift_once();
    }

    v109 = qword_1EE0594F8;
  }

  else
  {
    if (qword_1EE059510 != -1)
    {
      swift_once();
    }

    v109 = qword_1EE059518;
  }

  v110 = __swift_project_value_buffer(v97, v109);
  (*(v104 + 16))(v108, v110, v97);
  if ((*(v104 + 48))(v99, 1, v97) != 1)
  {
    sub_1D156336C(v99, &qword_1EE05B408, MEMORY[0x1E6968278]);
  }

LABEL_44:
  (*(v104 + 32))(&v100[qword_1EE068300], v108, v97);
  sub_1D1563438(v96, v106, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
  v111 = v145;
  if ((v144)(v106, 1, v145) == 1)
  {
    sub_1D156336C(v106, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
    v112 = 0;
  }

  else
  {
    v112 = *(v106 + *(v111 + 20));
    v113 = v112;
    sub_1D15633DC(v106);
  }

  *&v100[qword_1EE068310] = v112;
  Operation = type metadata accessor for QuantityDistributionQueryOperation();
  v153.receiver = v100;
  v153.super_class = Operation;
  v115 = objc_msgSendSuper2(&v153, sel_init);
  v116 = v115;
  if (v98)
  {
    v117 = sub_1D15A3EF8();
  }

  else
  {
    v117 = 0;
  }

  [v115 setName_];

  sub_1D156336C(v149, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  sub_1D156336C(v96, &qword_1EE05AE48, type metadata accessor for QuantityDistributionConfigurationOverrides);
  sub_1D156336C(v152, &qword_1EE05B520, MEMORY[0x1E6968130]);
  (*(v151 + 8))(v140, v81);
  return v115;
}

void sub_1D1563204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1563268()
{
  if (!qword_1EE05AB90)
  {
    sub_1D1563304(255, &qword_1EE05AD88, &qword_1EE05AD00, 0x1E696C650, MEMORY[0x1E69E62F8]);
    sub_1D148F3FC();
    v0 = sub_1D15A4CC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05AB90);
    }
  }
}

void sub_1D1563304(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D1453BA0(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D156336C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1563204(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D15633DC(uint64_t a1)
{
  v2 = type metadata accessor for QuantityDistributionConfigurationOverrides();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1563438(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D1563204(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for QuantityDistributionQueryOperation()
{
  result = qword_1EE05AF28;
  if (!qword_1EE05AF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static QuantityDistributionQueryOperation.distributionPoints(for:zeroCountForGap:histogramBucketSize:mapDatesToX:)(unint64_t a1, uint64_t a2, void *a3, double (*a4)(char *, char *), uint64_t a5)
{
  v89 = a4;
  v90 = a5;
  v88 = sub_1D15A26A8();
  v8 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v86 = &v79 - v12;
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = [a3 _unit];
  [a3 doubleValueForUnit_];
  v15 = v14;

  v16 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_102:
    v17 = sub_1D15A4708();
    if (v17)
    {
      goto LABEL_4;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v80 = v16;
  v18 = 0;
  v85 = a1 & 0xC000000000000001;
  v79 = (a1 + 32);
  v16 = MEMORY[0x1E69E7CC0];
  v84 = (v8 + 8);
  v82 = a3;
  v81 = a1;
  v83 = v17;
  while (1)
  {
LABEL_5:
    if (v85)
    {
      v19 = MEMORY[0x1D388AB50](v18, a1);
      v20 = __OFADD__(v18, 1);
      v21 = v18 + 1;
      if (v20)
      {
        goto LABEL_100;
      }
    }

    else
    {
      if (v18 >= *(v80 + 16))
      {
        goto LABEL_101;
      }

      v19 = *&v79[8 * v18];
      v20 = __OFADD__(v18, 1);
      v21 = v18 + 1;
      if (v20)
      {
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }
    }

    v94 = v21;
    v22 = v19;
    v23 = [v19 startDate];
    v24 = v86;
    sub_1D15A2668();

    v25 = [v22 endDate];
    v26 = v87;
    sub_1D15A2668();

    v27 = v89(v24, v26);
    v28 = *v84;
    v29 = v88;
    (*v84)(v26, v88);
    v28(v24, v29);
    v30 = [v22 minimumValue];
    v31 = [a3 _unit];
    [v30 doubleValueForUnit_];
    v33 = v32;

    v34 = [v22 maximumValue];
    v35 = [a3 _unit];
    [v34 doubleValueForUnit_];
    v37 = v36;

    v38 = [v22 minimumBucketValue];
    v39 = [a3 _unit];
    [v38 doubleValueForUnit_];
    v41 = v40;

    v93 = v22;
    v8 = [v22 histogramCounts];
    sub_1D1453BA0(0, &qword_1EE05ACD8);
    v42 = sub_1D15A40C8();

    if (v42 >> 62)
    {
      break;
    }

    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_13;
    }

LABEL_94:

LABEL_95:
    v18 = v94;
    if (v94 == v83)
    {
      return v16;
    }
  }

  v43 = sub_1D15A4708();
  if (!v43)
  {
    goto LABEL_94;
  }

LABEL_13:
  v44 = 0;
  v45 = 0;
  a3 = (v42 & 0xC000000000000001);
  v95 = v42 & 0xFFFFFFFFFFFFFF8;
  v92 = v42 + 32;
  v46 = v41;
  while (2)
  {
    v91 = v46;
    if (v46 <= v33)
    {
      v46 = v33;
    }

    if (v37 >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v37;
    }

LABEL_19:
    v48 = 0;
    if (v41 > v33)
    {
      v49 = v41;
    }

    else
    {
      v49 = v33;
    }

    if (v37 >= v49)
    {
      v50 = v49;
    }

    else
    {
      v50 = v37;
    }

    v51 = v41;
    v8 = v45;
    while (1)
    {
      if (a3)
      {
        v52 = MEMORY[0x1D388AB50](v8, v42);
      }

      else
      {
        if (v8 >= *(v95 + 16))
        {
          goto LABEL_99;
        }

        v52 = *(v92 + 8 * v8);
      }

      a1 = v52;
      v45 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_97;
      }

      v53 = [v52 integerValue];
      if ((v44 & 1) == 0)
      {
        break;
      }

      if (v53 > 0)
      {
LABEL_57:

        v41 = v15 + v51;
        v44 = 1;
        if (v45 != v43)
        {
          goto LABEL_19;
        }

LABEL_72:
        v51 = v91;
        goto LABEL_73;
      }

      v54 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_98;
      }

      if (v54 != a2)
      {

        if (v45 != v43)
        {
          v62 = v8 + 5;
          while (1)
          {
            v8 = v62 - 4;
            if (a3)
            {
              v63 = MEMORY[0x1D388AB50](v62 - 4, v42);
            }

            else
            {
              if (v8 >= *(v95 + 16))
              {
                goto LABEL_99;
              }

              v63 = *(v42 + 8 * v62);
            }

            a1 = v63;
            v20 = __OFADD__(v8, 1);
            v8 = v62 - 3;
            if (v20)
            {
              break;
            }

            v51 = v15 + v51;
            if ([v63 integerValue] > 0)
            {
              v45 = v62 - 3;
              goto LABEL_57;
            }

            if (__OFADD__(v54, 1))
            {
              goto LABEL_98;
            }

            if (v54 + 1 == a2)
            {
              goto LABEL_36;
            }

            ++v54;
            ++v62;
            if (v8 == v43)
            {
              goto LABEL_72;
            }
          }

LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        goto LABEL_72;
      }

      ++v8;
LABEL_36:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D148B9C4(0, *(v16 + 16) + 1, 1, v16);
      }

      v56 = *(v16 + 16);
      v55 = *(v16 + 24);
      v57 = v55 >> 1;
      v58 = v56 + 1;
      if (v55 >> 1 <= v56)
      {
        v16 = sub_1D148B9C4((v55 > 1), v56 + 1, 1, v16);
        v55 = *(v16 + 24);
        v57 = v55 >> 1;
      }

      *(v16 + 16) = v58;
      v59 = v16 + 16 * v56;
      *(v59 + 32) = v27;
      *(v59 + 40) = v47;
      v60 = v56 + 2;
      if (v57 < (v56 + 2))
      {
        v16 = sub_1D148B9C4((v55 > 1), v56 + 2, 1, v16);
      }

      v44 = 0;
      *(v16 + 16) = v60;
      v61 = v16 + 16 * v58;
      *(v61 + 32) = v27;
      *(v61 + 40) = v50;
      v51 = v15 + v51;
      v48 = a2;
      if (v8 == v43)
      {
        goto LABEL_71;
      }
    }

    v64 = v53;

    if (v64 <= 0)
    {
      if (v45 == v43)
      {
LABEL_71:

        a3 = v82;
        a1 = v81;
        goto LABEL_95;
      }

      v65 = v8 + 5;
      while (1)
      {
        v8 = v65 - 4;
        if (a3)
        {
          v66 = MEMORY[0x1D388AB50](v65 - 4, v42);
        }

        else
        {
          if (v8 >= *(v95 + 16))
          {
            goto LABEL_99;
          }

          v66 = *(v42 + 8 * v65);
        }

        a1 = v66;
        v45 = v65 - 3;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_97;
        }

        v51 = v15 + v51;
        v8 = [v66 integerValue];

        if (v8 >= 1)
        {
          break;
        }

        ++v65;
        if (v45 == v43)
        {
          goto LABEL_71;
        }
      }
    }

    v41 = v15 + v51;
    v44 = 1;
    v46 = v51;
    if (v45 != v43)
    {
      continue;
    }

    break;
  }

LABEL_73:

  if (v51 > v33)
  {
    v67 = v51;
  }

  else
  {
    v67 = v33;
  }

  if (v37 >= v67)
  {
    v68 = v67;
  }

  else
  {
    v68 = v37;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1D148B9C4(0, *(v16 + 16) + 1, 1, v16);
  }

  a3 = v82;
  a1 = v81;
  v69 = v83;
  v71 = *(v16 + 16);
  v70 = *(v16 + 24);
  v72 = v70 >> 1;
  v8 = v71 + 1;
  if (v70 >> 1 <= v71)
  {
    v16 = sub_1D148B9C4((v70 > 1), v71 + 1, 1, v16);
    v70 = *(v16 + 24);
    v72 = v70 >> 1;
  }

  *(v16 + 16) = v8;
  v73 = v16 + 16 * v71;
  *(v73 + 32) = v27;
  *(v73 + 40) = v68;
  if (v41 > v33)
  {
    v74 = v41;
  }

  else
  {
    v74 = v33;
  }

  if (v37 >= v74)
  {
    v75 = v74;
  }

  else
  {
    v75 = v37;
  }

  v76 = v71 + 2;
  if (v72 < (v71 + 2))
  {
    v16 = sub_1D148B9C4((v70 > 1), v71 + 2, 1, v16);
  }

  v18 = v94;

  *(v16 + 16) = v76;
  v77 = v16 + 16 * v8;
  *(v77 + 32) = v27;
  *(v77 + 40) = v75;
  if (v18 != v69)
  {
    goto LABEL_5;
  }

  return v16;
}

void sub_1D1563D5C()
{
  v1 = sub_1D15A3268();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1487B04();
  v5 = swift_allocError();
  *v6 = 2;
  v23 = v5;
  v24 = 1;

  sub_1D15A2D38();

  sub_1D15A31E8();
  v7 = v0;
  v8 = sub_1D15A3248();
  v9 = sub_1D15A42F8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v1;
    v13 = v12;
    v26 = v12;
    *v10 = 136380931;
    ObjectType = swift_getObjectType();
    sub_1D1564764();
    v14 = sub_1D15A3F68();
    v16 = sub_1D1479780(v14, v15, &v26);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2113;
    v17 = *&v7[qword_1EE05AF48];
    *(v10 + 14) = v17;
    *v11 = v17;
    v18 = v17;
    _os_log_impl(&dword_1D1446000, v8, v9, "%{private}s: Quantity distribution running for %{private}@", v10, 0x16u);
    sub_1D1482B80(v11);
    MEMORY[0x1D388BF00](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1D388BF00](v13, -1, -1);
    MEMORY[0x1D388BF00](v10, -1, -1);

    (*(v2 + 8))(v4, v22);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v19 = *&v7[qword_1EE05AF50];
  v20 = sub_1D1560C00();
  [v19 executeQuery_];
}

void sub_1D156402C(void *a1)
{
  v1 = a1;
  sub_1D1563D5C();
}

void sub_1D1564074()
{
  if ([v0 isCancelled])
  {
    sub_1D1487F34();
    v1 = swift_allocError();
    *v2 = 0xD000000000000022;
    v2[1] = 0x80000001D15B6810;
    v2[2] = 0x4000000000000000;
    MEMORY[0x1EEE9AC00](v1);

    sub_1D15A2D38();

    v3._countAndFlagsBits = 0x656C6C65636E6163;
    v3._object = 0xE900000000000064;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v3, v4);
  }

  v5 = &v0[qword_1EE05AF40];
  v6 = *&v0[qword_1EE05AF40];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1D150F270(v6);
  v7 = *&v0[qword_1EE05AF50];
  v8 = sub_1D1560C00();
  [v7 stopQuery_];
}

void sub_1D15641E4()
{

  sub_1D15A2D38();

  v0._countAndFlagsBits = 0x64656873696E6966;
  v0._object = 0xE800000000000000;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v0, v1);
}

id QuantityDistributionQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D1564308()
{

  sub_1D150F270(*(v0 + qword_1EE05AF40));
  sub_1D156336C(v0 + qword_1EE0682F0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  v1 = qword_1EE068308;
  v2 = sub_1D15A26A8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_1EE068320, v2);
  v3(v0 + qword_1EE068328, v2);
  v4 = qword_1EE068300;
  v5 = sub_1D15A23A8();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(v0 + qword_1EE05AF58);
}

id QuantityDistributionQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuantityDistributionQueryOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D15644C4(uint64_t a1)
{

  sub_1D150F270(*(a1 + qword_1EE05AF40));
  sub_1D156336C(a1 + qword_1EE0682F0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  v2 = qword_1EE068308;
  v3 = sub_1D15A26A8();
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2, v3);
  v4(a1 + qword_1EE068320, v3);
  v4(a1 + qword_1EE068328, v3);
  v5 = qword_1EE068300;
  v6 = sub_1D15A23A8();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);

  v7 = *(a1 + qword_1EE05AF58);
}

uint64_t sub_1D156464C@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D15646AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D1453BA0(0, &qword_1EE05AD00);
    v5 = sub_1D15A40C8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

unint64_t sub_1D1564764()
{
  result = qword_1EE05AF20;
  if (!qword_1EE05AF20)
  {
    type metadata accessor for QuantityDistributionQueryOperation();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EE05AF20);
  }

  return result;
}

void sub_1D15647AC()
{
  sub_1D1563204(319, &qword_1EE05B7F8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D15A26A8();
    if (v1 <= 0x3F)
    {
      sub_1D15A23A8();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_1D1564A18(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v44 - v12;
  if ([v3 isCancelled])
  {
    sub_1D15A31E8();
    v14 = v3;
    v15 = sub_1D15A3248();
    v16 = sub_1D15A4308();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53[0] = v18;
      *v17 = 136380675;
      ObjectType = swift_getObjectType();
      sub_1D1564764();
      v19 = sub_1D15A3F68();
      v21 = sub_1D1479780(v19, v20, v53);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1D1446000, v15, v16, "%{private}s: Query was cancelled; results will not be processed.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1D388BF00](v18, -1, -1);
      MEMORY[0x1D388BF00](v17, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  else if (([v3 isFinished] & 1) == 0)
  {
    v22 = a1;
    if (!a1)
    {
      v23 = 0xD000000000000029;
      if (a2)
      {
        v24 = 0x80000001D15C23D0;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      v25 = 0xC000000000000000;
      if (a2)
      {
        v25 = a2 | 0x8000000000000000;
      }

      v49 = v23;
      v53[0] = v23;
      v53[1] = v24;
      v51 = v25;
      v53[2] = v25;
      v26 = a2;
      v50 = sub_1D1487F34();
      v48 = sub_1D15A4C08();
      v28 = v27;
      sub_1D15A31E8();
      v29 = v3;

      v30 = sub_1D15A3248();
      v31 = sub_1D15A4318();

      v47 = v31;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v46 = v24;
        v33 = v32;
        v45 = swift_slowAlloc();
        v53[0] = v45;
        *v33 = 136446466;
        ObjectType = swift_getObjectType();
        sub_1D1564764();
        v34 = sub_1D15A3F68();
        v36 = sub_1D1479780(v34, v35, v53);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2082;
        v37 = sub_1D1479780(v48, v28, v53);

        *(v33 + 14) = v37;
        v38 = v30;
        _os_log_impl(&dword_1D1446000, v30, v47, "%{public}s: Error while processing distribution query: %{public}s", v33, 0x16u);
        v39 = v45;
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v39, -1, -1);
        v40 = v33;
        v24 = v46;
        MEMORY[0x1D388BF00](v40, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v13, v6);
      v22 = swift_allocError();
      *v41 = v49;
      v41[1] = v24;
      v41[2] = v51;
    }

    v42 = *&v3[qword_1EE05AF40];
    if (v42)
    {

      sub_1D15210D8(v42);
      v42(v22, a1 == 0);
      v43 = sub_1D150F270(v42);
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v43);
    *(&v44 - 4) = v3;
    *(&v44 - 3) = v22;
    *(&v44 - 16) = a1 == 0;
    sub_1D15A2DA8();
    sub_1D1487E60(v22, a1 == 0);
  }
}

uint64_t sub_1D1564F30(uint64_t a1)
{
  v2 = sub_1D1565110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1564F6C(uint64_t a1)
{
  v2 = sub_1D1565110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MostRecentTimePeriodQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D15650B4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1565110();
  sub_1D15A4CE8();
  return (*(v4 + 8))(v6, v3);
}

void sub_1D15650B4()
{
  if (!qword_1EE0562F8)
  {
    sub_1D1565110();
    v0 = sub_1D15A4B48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0562F8);
    }
  }
}

unint64_t sub_1D1565110()
{
  result = qword_1EE057838;
  if (!qword_1EE057838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057838);
  }

  return result;
}

uint64_t sub_1D156518C(void *a1)
{
  sub_1D15650B4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1565110();
  sub_1D15A4CE8();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D15652BC()
{
  result = qword_1EE057828;
  if (!qword_1EE057828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057828);
  }

  return result;
}

unint64_t sub_1D1565314()
{
  result = qword_1EE057830;
  if (!qword_1EE057830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057830);
  }

  return result;
}

uint64_t HealthTypeProxy.objectTypeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void *HealthTypeProxy.healthStore.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

HealthVisualization::HealthTypeProxy __swiftcall HealthTypeProxy.init(for:healthStore:)(HealthVisualization::HealthTypeProxy result, HKHealthStore_optional healthStore)
{
  *v2 = result.objectTypeIdentifier;
  v2[1]._countAndFlagsBits = healthStore.value.super.isa;
  result.healthStore = healthStore;
  return result;
}

void *sub_1D15653CC()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

__n128 static SignificantChangeEngine.Parameters.makeParameters(dateRange:trendAnalysisKinds:parameterOverrides:absoluteChangeThreshold:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v51 = *(a3 + 16);
  v50 = *(a3 + 24);
  v52 = *(a3 + 32);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *a3;
    v45 = *(a3 + 8);
    v9 = (a2 + 32);
    v10 = *(a2 + 16);
    while ((*v9 & 1) != 0)
    {
      v11 = sub_1D15A4BA8();

      if (v11)
      {
        goto LABEL_8;
      }

      ++v9;
      if (!--v10)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v12 = a1;
    if (a1 == 5)
    {
      if (v52)
      {
        v17 = 0;
      }

      else
      {
        v17 = v50;
      }

      if (v52)
      {
        v18 = 0;
      }

      else
      {
        v18 = v51;
      }

      if (v52)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v8;
      }

      if (v52)
      {
        v20 = 1;
      }

      else
      {
        v20 = v45;
      }

      static SignificantChangeEngine.Parameters.MeanShift.sixMonths(absoluteChangeThreshold:minimumEffectSize:minimumSegmentLength:minimumDataCount:)(a4, a5 & 1, v19, v20 & 1, v18, v52, v17, v52, &v57);
    }

    else
    {
      if (a1 != 4)
      {
        if (qword_1EE056C98 != -1)
        {
          swift_once();
        }

        v21 = sub_1D15A3268();
        __swift_project_value_buffer(v21, qword_1EE056CA0);
        v22 = sub_1D15A3248();
        v23 = sub_1D15A4318();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v57.n128_u64[0] = v49;
          *v24 = 136446466;
          v66 = &type metadata for SignificantChangeEngine.Parameters;
          sub_1D1580090();
          v25 = sub_1D15A3F68();
          v47 = v23;
          v27 = sub_1D1479780(v25, v26, &v57);

          *(v24 + 4) = v27;
          *(v24 + 12) = 2082;
          LOBYTE(v66) = a1;
          v28 = sub_1D15A3F68();
          v30 = sub_1D1479780(v28, v29, &v57);

          *(v24 + 14) = v30;
          v12 = a1;
          _os_log_impl(&dword_1D1446000, v22, v47, "[%{public}s]: Unsupported date range submitted: %{public}s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D388BF00](v49, -1, -1);
          MEMORY[0x1D388BF00](v24, -1, -1);
        }

        sub_1D1565FC4(&v67);
        goto LABEL_42;
      }

      if (v52)
      {
        v13 = 0;
      }

      else
      {
        v13 = v50;
      }

      if (v52)
      {
        v14 = 0;
      }

      else
      {
        v14 = v51;
      }

      if (v52)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v8;
      }

      if (v52)
      {
        v16 = 1;
      }

      else
      {
        v16 = v45;
      }

      static SignificantChangeEngine.Parameters.MeanShift.oneMonth(absoluteChangeThreshold:minimumEffectSize:minimumSegmentLength:minimumDataCount:)(a4, a5 & 1, v15, v16 & 1, v14, v52, v13, v52, &v57);
    }

    nullsub_1(&v57);
    v73 = v63;
    v74 = v64;
    v75 = v65;
    v69 = v59;
    v70 = v60;
    v71 = v61;
    v72 = v62;
    v67 = v57;
    v68 = v58;
  }

  else
  {
LABEL_6:
    sub_1D1565FC4(&v67);
    v12 = a1;
  }

LABEL_42:
  v31 = (a2 + 32);
  while (1)
  {
    if (!v7)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 1;
      v54 = 0u;
      v56 = 0u;
      goto LABEL_56;
    }

    if (*v31 == 1)
    {
      break;
    }

    v32 = sub_1D15A4BA8();

    ++v31;
    --v7;
    if (v32)
    {
      goto LABEL_49;
    }
  }

LABEL_49:
  if (v52)
  {
    v37 = 0;
  }

  else
  {
    v37 = v50;
  }

  if (v52)
  {
    v38 = 0;
  }

  else
  {
    v38 = v51;
  }

  sub_1D15671AC(v38, v52, v37, v52, &v57);
  v36 = 0;
  v54 = v58;
  v56 = v57;
  v34 = *(&v59 + 1);
  v33 = v59;
  v35 = v60;
  LOBYTE(v66) = 0;
LABEL_56:
  v39 = sub_1D157FEAC(v12);
  *a6 = 10;
  *(a6 + 8) = v39;
  v40 = v74;
  *(a6 + 112) = v73;
  *(a6 + 128) = v40;
  *(a6 + 144) = v75;
  v41 = v70;
  *(a6 + 48) = v69;
  *(a6 + 64) = v41;
  v42 = v72;
  *(a6 + 80) = v71;
  *(a6 + 96) = v42;
  v43 = v68;
  *(a6 + 16) = v67;
  *(a6 + 32) = v43;
  result = v56;
  *(a6 + 168) = v54;
  *(a6 + 152) = v56;
  *(a6 + 184) = v33;
  *(a6 + 192) = v34;
  *(a6 + 200) = v35;
  *(a6 + 208) = v36;
  return result;
}

void sub_1D1565874(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_1D148EF60();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1D158015C(a3 + v14 + v15 * v12, v11, sub_1D148EF60);
      v16 = a1(v11);
      if (v3)
      {
        sub_1D158034C(v11, sub_1D148EF60);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1D1580248(v11, v23, sub_1D148EF60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D14A7A54(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D14A7A54(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_1D1580248(v23, v13 + v14 + v19 * v15, sub_1D148EF60);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_1D158034C(v11, sub_1D148EF60);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1D1565B00(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_1D151E0D0();
  v24 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1D158015C(a3 + v14 + v15 * v12, v11, sub_1D151E0D0);
      v16 = a1(v11);
      if (v3)
      {
        sub_1D158034C(v11, sub_1D151E0D0);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1D1580248(v11, v23, sub_1D151E0D0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D14A7A74(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D14A7A74(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_1D1580248(v23, v13 + v14 + v19 * v15, sub_1D151E0D0);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_1D158034C(v11, sub_1D151E0D0);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1D1565D8C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1D151E0D0();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_1D158015C(v13, v11, sub_1D151E0D0);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1D158034C(v11, sub_1D151E0D0);
      }

      if (v15)
      {
        break;
      }

      sub_1D158034C(v11, sub_1D151E0D0);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v9 + 56))(a3, v16, 1, v8);
      }
    }

    a3 = v19;
    sub_1D1580248(v11, v19, sub_1D151E0D0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t sub_1D1565F58()
{
  v0 = sub_1D15A3268();
  __swift_allocate_value_buffer(v0, qword_1EE056CA0);
  __swift_project_value_buffer(v0, qword_1EE056CA0);
  sub_1D15A31F8();
  return sub_1D15A3258();
}

double sub_1D1565FC4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1024;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

uint64_t static Logger.trendGeneration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE056C98 != -1)
  {
    swift_once();
  }

  v2 = sub_1D15A3268();
  v3 = __swift_project_value_buffer(v2, qword_1EE056CA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D156612C()
{
  v1 = 0x636E657571657266;
  if (*v0 != 1)
  {
    v1 = 0x6574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x666968536E61656DLL;
  }
}

uint64_t sub_1D1566190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D15823D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D15661B8(uint64_t a1)
{
  v2 = sub_1D15802B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D15661F4(uint64_t a1)
{
  v2 = sub_1D15802B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.Output.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EE056348, sub_1D15802B0, &type metadata for SignificantChangeEngine.Output.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15802B0();
  sub_1D15A4CE8();
  v12 = 0;
  type metadata accessor for SignificantChange(0);
  sub_1D1580304(qword_1EE058F38, type metadata accessor for SignificantChange);
  sub_1D15A4AE8();
  if (!v1)
  {
    type metadata accessor for SignificantChangeEngine.Output(0);
    v11 = 1;
    sub_1D15A4AE8();
    v10 = 2;
    type metadata accessor for SignificantChangeEngine.State(0);
    sub_1D1580304(qword_1EE0586A0, type metadata accessor for SignificantChangeEngine.State);
    sub_1D15A4AE8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignificantChangeEngine.Output.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v9;
  sub_1D1580C14(0, &qword_1EE056418, sub_1D15802B0, &type metadata for SignificantChangeEngine.Output.CodingKeys, MEMORY[0x1E69E6F48]);
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for SignificantChangeEngine.Output(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15802B0();
  v16 = v27;
  sub_1D15A4CD8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = a1;
  type metadata accessor for SignificantChange(0);
  v30 = 0;
  sub_1D1580304(&qword_1EE058F30, type metadata accessor for SignificantChange);
  v17 = v24;
  sub_1D15A4A28();
  v24 = v15;
  sub_1D1580218(v17, v15);
  v29 = 1;
  v18 = v7;
  sub_1D15A4A28();
  v19 = v24;
  sub_1D1580218(v18, &v24[*(v13 + 20)]);
  type metadata accessor for SignificantChangeEngine.State(0);
  v28 = 2;
  sub_1D1580304(&qword_1EE058698, type metadata accessor for SignificantChangeEngine.State);
  v20 = v23;
  sub_1D15A4A28();
  (*(v25 + 8))(v12, v26);
  sub_1D1580230(v20, v19 + *(v13 + 24));
  sub_1D158015C(v19, v22, type metadata accessor for SignificantChangeEngine.Output);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D158034C(v19, type metadata accessor for SignificantChangeEngine.Output);
}

__n128 SignificantChangeEngine.Parameters.meanShift.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 96) = *(v1 + 112);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 144);
  v3 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v3;
  v4 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v4;
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

__n128 SignificantChangeEngine.Parameters.frequencyShift.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 184);
  result = *(v1 + 193);
  *(a1 + 41) = result;
  return result;
}

uint64_t static SignificantChangeEngine.Parameters.MeanShift.oneMonth(absoluteChangeThreshold:minimumEffectSize:minimumSegmentLength:minimumDataCount:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v21 = 5;
  if ((a6 & 1) == 0)
  {
    v21 = a5;
  }

  v22 = 10;
  if ((a8 & 1) == 0)
  {
    v22 = a7;
  }

  if (v21 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (v22 >= 2 * v21)
  {
    if (a4)
    {
      a3 = 2.0;
    }

    *a9 = 0x3F50624DD2F1A9FCLL;
    *(a9 + 8) = 0;
    v24 = *&result * 0.5;
    v25 = a2 & 1;
    if (a2)
    {
      v24 = *&result;
    }

    *(a9 + 16) = a3;
    *(a9 + 24) = 0;
    *(a9 + 32) = *&result;
    *(a9 + 40) = v25;
    *(a9 + 48) = 0x3F747AE147AE147BLL;
    *(a9 + 56) = 0;
    *(a9 + 64) = a3 * 0.75;
    *(a9 + 72) = 0;
    *(a9 + 80) = v24;
    *(a9 + 88) = v25;
    *(a9 + 89) = 1;
    *(a9 + 96) = v21;
    *(a9 + 104) = v22;
    *(a9 + 112) = 4;
    *(a9 + 120) = 0;
    *(a9 + 128) = 0x4122750000000000;
    return result;
  }

  v43[2] = v18;
  v43[3] = v17;
  v43[4] = v16;
  v43[5] = v15;
  v43[6] = v14;
  v43[7] = v13;
  v43[8] = v12;
  v43[9] = v11;
  v43[10] = v10;
  v43[11] = v9;
  v43[12] = v19;
  v43[13] = v20;
  if (qword_1EE056C98 != -1)
  {
    swift_once();
  }

  v26 = sub_1D15A3268();
  __swift_project_value_buffer(v26, qword_1EE056CA0);
  v27 = sub_1D15A3248();
  v28 = sub_1D15A4318();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43[0] = v30;
    *v29 = 136446722;
    sub_1D15803AC();
    v31 = sub_1D15A3F68();
    v33 = sub_1D1479780(v31, v32, v43);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = sub_1D15A4B68();
    v36 = sub_1D1479780(v34, v35, v43);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2082;
    v37 = sub_1D15A4B68();
    v39 = sub_1D1479780(v37, v38, v43);

    *(v29 + 24) = v39;
    _os_log_impl(&dword_1D1446000, v27, v28, "[%{public}s]: Invalid parameter values for minimumSegmentLength (%{public}s) and minimumDataCount (%{public}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v30, -1, -1);
    MEMORY[0x1D388BF00](v29, -1, -1);
  }

  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_1D15A47D8();
  MEMORY[0x1D388A330](91, 0xE100000000000000);
  sub_1D15803AC();
  v40 = sub_1D15A3F68();
  MEMORY[0x1D388A330](v40);

  MEMORY[0x1D388A330](0xD000000000000036, 0x80000001D15C2440);
  v41 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v41);

  MEMORY[0x1D388A330](0xD000000000000018, 0x80000001D15C2480);
  v42 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v42);

  *&result = COERCE_DOUBLE(sub_1D15A4908());
  __break(1u);
  return result;
}

uint64_t static SignificantChangeEngine.Parameters.MeanShift.sixMonths(absoluteChangeThreshold:minimumEffectSize:minimumSegmentLength:minimumDataCount:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v21 = 25;
  if ((a6 & 1) == 0)
  {
    v21 = a5;
  }

  v22 = 50;
  if ((a8 & 1) == 0)
  {
    v22 = a7;
  }

  if (v21 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (v22 >= 2 * v21)
  {
    if (a4)
    {
      a3 = 1.0;
    }

    *a9 = 0x3F50624DD2F1A9FCLL;
    *(a9 + 8) = 0;
    v24 = *&result * 0.5;
    v25 = a2 & 1;
    if (a2)
    {
      v24 = *&result;
    }

    *(a9 + 16) = a3;
    *(a9 + 24) = 0;
    *(a9 + 32) = *&result;
    *(a9 + 40) = v25;
    *(a9 + 48) = 0x3F747AE147AE147BLL;
    *(a9 + 56) = 0;
    *(a9 + 64) = a3 * 0.75;
    *(a9 + 72) = 0;
    *(a9 + 80) = v24;
    *(a9 + 88) = v25;
    *(a9 + 89) = 1;
    *(a9 + 96) = v21;
    *(a9 + 104) = v22;
    *(a9 + 112) = 28;
    *(a9 + 120) = 0;
    *(a9 + 128) = 0x41407AC000000000;
    return result;
  }

  v43[2] = v18;
  v43[3] = v17;
  v43[4] = v16;
  v43[5] = v15;
  v43[6] = v14;
  v43[7] = v13;
  v43[8] = v12;
  v43[9] = v11;
  v43[10] = v10;
  v43[11] = v9;
  v43[12] = v19;
  v43[13] = v20;
  if (qword_1EE056C98 != -1)
  {
    swift_once();
  }

  v26 = sub_1D15A3268();
  __swift_project_value_buffer(v26, qword_1EE056CA0);
  v27 = sub_1D15A3248();
  v28 = sub_1D15A4318();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v43[0] = v30;
    *v29 = 136446722;
    sub_1D15803AC();
    v31 = sub_1D15A3F68();
    v33 = sub_1D1479780(v31, v32, v43);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = sub_1D15A4B68();
    v36 = sub_1D1479780(v34, v35, v43);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2082;
    v37 = sub_1D15A4B68();
    v39 = sub_1D1479780(v37, v38, v43);

    *(v29 + 24) = v39;
    _os_log_impl(&dword_1D1446000, v27, v28, "[%{public}s]: Invalid parameter values for minimumSegmentLength (%{public}s) and minimumDataCount (%{public}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v30, -1, -1);
    MEMORY[0x1D388BF00](v29, -1, -1);
  }

  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_1D15A47D8();
  MEMORY[0x1D388A330](91, 0xE100000000000000);
  sub_1D15803AC();
  v40 = sub_1D15A3F68();
  MEMORY[0x1D388A330](v40);

  MEMORY[0x1D388A330](0xD000000000000036, 0x80000001D15C2440);
  v41 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v41);

  MEMORY[0x1D388A330](0xD000000000000018, 0x80000001D15C2480);
  v42 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v42);

  *&result = COERCE_DOUBLE(sub_1D15A4908());
  __break(1u);
  return result;
}

uint64_t sub_1D15671AC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v17 = 5;
  if ((a2 & 1) == 0)
  {
    v17 = result;
  }

  v18 = 10;
  if ((a4 & 1) == 0)
  {
    v18 = a3;
  }

  if (v17 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (v18 >= 2 * v17)
  {
    *a5 = 0x3F847AE147AE147BLL;
    *(a5 + 8) = v17;
    *(a5 + 16) = v18;
    *(a5 + 24) = xmmword_1D15B6AA0;
    *(a5 + 40) = 28;
    *(a5 + 48) = 0x4122750000000000;
    return result;
  }

  v36[2] = v14;
  v36[3] = v13;
  v36[4] = v12;
  v36[5] = v11;
  v36[6] = v10;
  v36[7] = v9;
  v36[8] = v8;
  v36[9] = v7;
  v36[10] = v6;
  v36[11] = v5;
  v36[12] = v15;
  v36[13] = v16;
  if (qword_1EE056C98 != -1)
  {
    swift_once();
  }

  v19 = sub_1D15A3268();
  __swift_project_value_buffer(v19, qword_1EE056CA0);
  v20 = sub_1D15A3248();
  v21 = sub_1D15A4318();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36[0] = v23;
    *v22 = 136446722;
    sub_1D1583940();
    v24 = sub_1D15A3F68();
    v26 = sub_1D1479780(v24, v25, v36);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = sub_1D15A4B68();
    v29 = sub_1D1479780(v27, v28, v36);

    *(v22 + 14) = v29;
    *(v22 + 22) = 2082;
    v30 = sub_1D15A4B68();
    v32 = sub_1D1479780(v30, v31, v36);

    *(v22 + 24) = v32;
    _os_log_impl(&dword_1D1446000, v20, v21, "[%{public}s]: Invalid parameter values for minimumSegmentLength (%{public}s) and minimumDataCount (%{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v23, -1, -1);
    MEMORY[0x1D388BF00](v22, -1, -1);
  }

  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_1D15A47D8();
  MEMORY[0x1D388A330](91, 0xE100000000000000);
  sub_1D1583940();
  v33 = sub_1D15A3F68();
  MEMORY[0x1D388A330](v33);

  MEMORY[0x1D388A330](0xD000000000000036, 0x80000001D15C2440);
  v34 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v34);

  MEMORY[0x1D388A330](0xD000000000000018, 0x80000001D15C2480);
  v35 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v35);

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

uint64_t sub_1D1567550()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x506D756D6978616DLL;
  }
}

uint64_t sub_1D15675BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D15824F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D15675E4(uint64_t a1)
{
  v2 = sub_1D15803F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1567620(uint64_t a1)
{
  v2 = sub_1D15803F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.Parameters.Thresholds.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EC6312E8, sub_1D15803F4, &type metadata for SignificantChangeEngine.Parameters.Thresholds.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v15 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = v8;
  v11[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15803F4();
  sub_1D15A4CE8();
  v18 = 0;
  v9 = v14;
  sub_1D15A4AC8();
  if (!v9)
  {
    v17 = 1;
    sub_1D15A4AC8();
    v16 = 2;
    sub_1D15A4AC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignificantChangeEngine.Parameters.Thresholds.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D1580C14(0, &qword_1EC6312F8, sub_1D15803F4, &type metadata for SignificantChangeEngine.Parameters.Thresholds.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15803F4();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v22;
    v27 = 0;
    v11 = sub_1D15A4A08();
    v24 = v12 & 1;
    v26 = 1;
    v21 = sub_1D15A4A08();
    v23 = v14 & 1;
    v25 = 2;
    v15 = sub_1D15A4A08();
    v17 = v16;
    (*(v9 + 8))(v8, v5);
    v18 = v24;
    v19 = v23;
    *v10 = v11;
    *(v10 + 8) = v18;
    *(v10 + 16) = v21;
    *(v10 + 24) = v19;
    *(v10 + 32) = v15;
    *(v10 + 40) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

HealthVisualization::SignificantChangeEngine::Parameters::ChangepointMode_optional __swiftcall SignificantChangeEngine.Parameters.ChangepointMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SignificantChangeEngine.Parameters.ChangepointMode.rawValue.getter()
{
  v1 = 0x65756C615670;
  v2 = 0x6D726F4E326CLL;
  if (*v0 != 2)
  {
    v2 = 0x7473697461745374;
  }

  if (*v0)
  {
    v1 = 0x6953746365666665;
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

uint64_t sub_1D1567BA0()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D1567C60()
{
  sub_1D15A3F88();
}

uint64_t sub_1D1567D0C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

void sub_1D1567DD4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x65756C615670;
  v4 = 0xE600000000000000;
  v5 = 0x6D726F4E326CLL;
  if (*v1 != 2)
  {
    v5 = 0x7473697461745374;
    v4 = 0xEA00000000006369;
  }

  if (*v1)
  {
    v3 = 0x6953746365666665;
    v2 = 0xEA0000000000657ALL;
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

void SignificantChangeEngine.Parameters.MeanShift.thresholds.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

void SignificantChangeEngine.Parameters.MeanShift.opportunisticThresholds.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t sub_1D1567FA8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000017;
    if (v1 != 1)
    {
      v5 = 1701080941;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6C6F687365726874;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    v3 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000014;
    }

    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1568090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1582620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D15680B8(uint64_t a1)
{
  v2 = sub_1D1580448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D15680F4(uint64_t a1)
{
  v2 = sub_1D1580448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.Parameters.MeanShift.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EC631300, sub_1D1580448, &type metadata for SignificantChangeEngine.Parameters.MeanShift.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v31 = v1[2];
  v9 = *(v1 + 24);
  v10 = v1[4];
  v29 = *(v1 + 40);
  v30 = v9;
  v28 = v1[6];
  v27 = *(v1 + 56);
  v26 = v1[8];
  v25 = *(v1 + 72);
  v24 = v1[10];
  v11 = *(v1 + 88);
  v22 = *(v1 + 89);
  v23 = v11;
  v12 = v1[12];
  v20 = v1[13];
  v21 = v12;
  v19 = v1[14];
  v18[1] = *(v1 + 120);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580448();
  sub_1D15A4CE8();
  v35 = v7;
  v36 = v8;
  v37 = v31;
  v38 = v30;
  v39 = v10;
  v13 = v6;
  v40 = v29;
  v34 = 0;
  sub_1D158049C();
  v14 = v33;
  sub_1D15A4B38();
  if (v14)
  {
    return (*(v32 + 8))(v6, v4);
  }

  v16 = v32;
  v35 = v28;
  v36 = v27;
  v37 = v26;
  v38 = v25;
  v39 = v24;
  v17 = v22;
  v40 = v23;
  v34 = 1;
  sub_1D15A4B38();
  LOBYTE(v35) = v17;
  v34 = 2;
  sub_1D15804F0();
  sub_1D15A4B38();
  LOBYTE(v35) = 3;
  sub_1D15A4B28();
  LOBYTE(v35) = 4;
  sub_1D15A4B28();
  LOBYTE(v35) = 5;
  sub_1D15A4AD8();
  LOBYTE(v35) = 6;
  sub_1D15A4B18();
  return (*(v16 + 8))(v13, v4);
}

uint64_t SignificantChangeEngine.Parameters.MeanShift.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1580C14(0, &qword_1EC631320, sub_1D1580448, &type metadata for SignificantChangeEngine.Parameters.MeanShift.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D1580448();
  sub_1D15A4CD8();
  if (!v2)
  {
    v38 = v7;
    v40 = 0;
    sub_1D1580544();
    v11 = v6;
    sub_1D15A4A78();
    v12 = v41;
    v13 = v43;
    v14 = v45;
    v53 = v42;
    v52 = v44;
    v51 = v46;
    v40 = 1;
    sub_1D15A4A78();
    v36 = v12;
    v37 = v13;
    v15 = v41;
    v16 = v43;
    v17 = v45;
    v50 = v42;
    v49 = v44;
    v48 = v46;
    v40 = 2;
    sub_1D1580598();
    sub_1D15A4A78();
    v34 = v15;
    v35 = v17;
    LOBYTE(v15) = v41;
    LOBYTE(v41) = 3;
    v33 = sub_1D15A4A68();
    LOBYTE(v41) = 4;
    v32 = sub_1D15A4A68();
    LOBYTE(v41) = 5;
    v31 = sub_1D15A4A18();
    v47 = v18 & 1;
    LOBYTE(v41) = 6;
    sub_1D15A4A58();
    v21 = v20;
    (*(v38 + 8))(v9, v11);
    v22 = v53;
    v23 = v52;
    v24 = v51;
    v25 = v50;
    v26 = v49;
    v27 = v48;
    v28 = v47;
    *a2 = v36;
    *(a2 + 8) = v22;
    *(a2 + 16) = v37;
    *(a2 + 24) = v23;
    *(a2 + 32) = v14;
    *(a2 + 40) = v24;
    v29 = v35;
    *(a2 + 48) = v34;
    *(a2 + 56) = v25;
    *(a2 + 64) = v16;
    *(a2 + 72) = v26;
    *(a2 + 80) = v29;
    *(a2 + 88) = v27;
    *(a2 + 89) = v15;
    v30 = v32;
    *(a2 + 96) = v33;
    *(a2 + 104) = v30;
    *(a2 + 112) = v31;
    *(a2 + 120) = v28;
    *(a2 + 128) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_1D15688C4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 == 1)
    {
      v5 = 0xD000000000000014;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F68736572685470;
    }
  }

  else
  {
    v2 = 0xD000000000000012;
    v3 = 0xD000000000000019;
    if (v1 != 5)
    {
      v2 = 0xD000000000000019;
    }

    if (v1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D15689B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1582878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D15689DC(uint64_t a1)
{
  v2 = sub_1D15805EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1568A18(uint64_t a1)
{
  v2 = sub_1D15805EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.Parameters.FrequencyShift.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EC631338, sub_1D15805EC, &type metadata for SignificantChangeEngine.Parameters.FrequencyShift.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = v1[1];
  v12[3] = v1[2];
  v12[4] = v8;
  v9 = v1[3];
  v12[1] = v1[4];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15805EC();
  sub_1D15A4CE8();
  v19 = 0;
  v10 = v12[5];
  sub_1D15A4B18();
  if (!v10)
  {
    v18 = 1;
    sub_1D15A4B28();
    v17 = 2;
    sub_1D15A4B28();
    v16 = 3;
    sub_1D15A4B28();
    v15 = 4;
    sub_1D15A4B28();
    v14 = 5;
    sub_1D15A4B28();
    v13 = 6;
    sub_1D15A4B18();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignificantChangeEngine.Parameters.FrequencyShift.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  sub_1D1580C14(0, &qword_1EC631348, sub_1D15805EC, &type metadata for SignificantChangeEngine.Parameters.FrequencyShift.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15805EC();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v27;
    v34 = 0;
    v11 = v5;
    sub_1D15A4A58();
    v13 = v12;
    v33 = 1;
    v14 = sub_1D15A4A68();
    v32 = 2;
    v26 = sub_1D15A4A68();
    v31 = 3;
    v25 = sub_1D15A4A68();
    v30 = 4;
    v24 = sub_1D15A4A68();
    v29 = 5;
    v23 = sub_1D15A4A68();
    v28 = 6;
    sub_1D15A4A58();
    v17 = v16;
    (*(v9 + 8))(v8, v11);
    *v10 = v13;
    v19 = v25;
    v18 = v26;
    v10[1] = v14;
    v10[2] = v18;
    v20 = v23;
    v21 = v24;
    v10[3] = v19;
    v10[4] = v21;
    v10[5] = v20;
    v10[6] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D1568FD0()
{
  v1 = 0x7544776F646E6977;
  v2 = 0x666968536E61656DLL;
  if (*v0 != 2)
  {
    v2 = 0x636E657571657266;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1D156906C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1582AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1569094(uint64_t a1)
{
  v2 = sub_1D1580640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D15690D0(uint64_t a1)
{
  v2 = sub_1D1580640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.Parameters.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EC631350, sub_1D1580640, &type metadata for SignificantChangeEngine.Parameters.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 128);
  v30 = *(v1 + 112);
  v31 = v7;
  v32 = *(v1 + 144);
  v8 = *(v1 + 64);
  v26 = *(v1 + 48);
  v27 = v8;
  v9 = *(v1 + 96);
  v28 = *(v1 + 80);
  v29 = v9;
  v10 = *(v1 + 32);
  v24 = *(v1 + 16);
  v25 = v10;
  v11 = *(v1 + 168);
  v33 = *(v1 + 152);
  v34 = v11;
  v35[0] = *(v1 + 184);
  *(v35 + 9) = *(v1 + 193);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1D1580640();
  sub_1D15A4CE8();
  LOBYTE(v20) = 0;
  v16 = v18;
  sub_1D15A4B28();
  if (!v16)
  {
    LOBYTE(v20) = 1;
    sub_1D15A4B18();
    v22[4] = v30;
    v22[5] = v31;
    v23 = v32;
    v22[0] = v26;
    v22[1] = v27;
    v22[2] = v28;
    v22[3] = v29;
    v20 = v24;
    v21 = v25;
    v19 = 2;
    sub_1D1580694();
    sub_1D15A4AE8();
    v20 = v33;
    v21 = v34;
    v22[0] = v35[0];
    *(v22 + 9) = *(v35 + 9);
    v19 = 3;
    sub_1D15806E8();
    sub_1D15A4AE8();
  }

  return (*(v4 + 8))(v6, v15);
}

uint64_t SignificantChangeEngine.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D1580C14(0, &qword_1EC631370, sub_1D1580640, &type metadata for SignificantChangeEngine.Parameters.CodingKeys, MEMORY[0x1E69E6F48]);
  v22 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580640();
  sub_1D15A4CD8();
  if (!v2)
  {
    v8 = v5;
    v9 = v21;
    v10 = v22;
    LOBYTE(v28) = 0;
    v20 = sub_1D15A4A68();
    LOBYTE(v28) = 1;
    sub_1D15A4A58();
    v12 = v11;
    v27 = 2;
    sub_1D158073C();
    sub_1D15A4A28();
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v45 = v36;
    v37 = v28;
    v23 = 3;
    sub_1D1580790();
    sub_1D15A4A28();
    (*(v8 + 8))(v7, v10);
    *(v9 + 8) = v12;
    v14 = v42;
    v15 = v44;
    *(v9 + 112) = v43;
    *(v9 + 128) = v15;
    v16 = v38;
    v17 = v40;
    *(v9 + 48) = v39;
    *(v9 + 64) = v17;
    *(v9 + 80) = v41;
    *(v9 + 96) = v14;
    *(v9 + 16) = v37;
    *(v9 + 32) = v16;
    v18 = v25;
    *(v9 + 152) = v24;
    *v9 = v20;
    *(v9 + 144) = v45;
    *(v9 + 168) = v18;
    *(v9 + 184) = *v26;
    *(v9 + 193) = *&v26[9];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SignificantChangeEngine.State.lastWindowEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A22A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D15697A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 20);

  return a2(v5, a3);
}

uint64_t sub_1D156982C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3 + *(a1(0) + 24);

  return a2(v5, a3);
}

uint64_t SignificantChangeEngine.State.init(lastWindowEndpoint:meanShift:frequencyShift:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D15A22A8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SignificantChangeEngine.State(0);
  sub_1D1580248(a2, a4 + *(v9 + 20), sub_1D15807FC);
  return sub_1D1580248(a3, a4 + *(v9 + 24), sub_1D1580868);
}

uint64_t sub_1D15699F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t (*a6)(uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  sub_1D1580218(a1, a7);
  v12 = a4(0);
  a5(a2, a7 + *(v12 + 20));
  v13 = a7 + *(v12 + 24);

  return a6(a3, v13);
}

uint64_t sub_1D1569A94()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6843657669746361;
  }
}

uint64_t sub_1D1569AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1582C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1569B24(uint64_t a1)
{
  v2 = sub_1D158090C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1569B60(uint64_t a1)
{
  v2 = sub_1D158090C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.State.MeanShift.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EE056350, sub_1D158090C, &type metadata for SignificantChangeEngine.State.MeanShift.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D158090C();
  sub_1D15A4CE8();
  v12 = 0;
  type metadata accessor for SignificantChange(0);
  sub_1D1580304(qword_1EE058F38, type metadata accessor for SignificantChange);
  sub_1D15A4AE8();
  if (!v1)
  {
    type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    v11 = 1;
    type metadata accessor for SignificantChangeEngine.Changepoint(0);
    sub_1D1580304(&qword_1EE058950, type metadata accessor for SignificantChangeEngine.Changepoint);
    sub_1D15A4AE8();
    v10 = 2;
    sub_1D15A26A8();
    sub_1D1580304(&qword_1EE05B3F8, MEMORY[0x1E6969530]);
    sub_1D15A4AE8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignificantChangeEngine.State.MeanShift.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v25 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1580C14(0, &qword_1EE056420, sub_1D158090C, &type metadata for SignificantChangeEngine.State.MeanShift.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = v10;
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D158090C();
  v16 = v27;
  sub_1D15A4CD8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v24;
  v27 = a1;
  type metadata accessor for SignificantChange(0);
  v30 = 0;
  sub_1D1580304(&qword_1EE058F30, type metadata accessor for SignificantChange);
  v18 = v25;
  sub_1D15A4A28();
  v19 = v15;
  sub_1D1580218(v18, v15);
  type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v29 = 1;
  sub_1D1580304(&qword_1EE058948, type metadata accessor for SignificantChangeEngine.Changepoint);
  sub_1D15A4A28();
  sub_1D15808F4(v7, &v15[*(v13 + 20)]);
  sub_1D15A26A8();
  v28 = 2;
  sub_1D1580304(&qword_1EE05B800, MEMORY[0x1E6969530]);
  v20 = v23;
  sub_1D15A4A28();
  (*(v17 + 8))(v12, v26);
  sub_1D150F280(v20, v19 + *(v13 + 24));
  sub_1D158015C(v19, v22, type metadata accessor for SignificantChangeEngine.State.MeanShift);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D158034C(v19, type metadata accessor for SignificantChangeEngine.State.MeanShift);
}

HealthVisualization::SignificantChangeEngine::State::FrequencyShift::Mode_optional __swiftcall SignificantChangeEngine.State.FrequencyShift.Mode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SignificantChangeEngine.State.FrequencyShift.Mode.rawValue.getter()
{
  if (*v0)
  {
    return 0x6967676F4C746F6ELL;
  }

  else
  {
    return 0x676E6967676F6CLL;
  }
}

uint64_t sub_1D156A418()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D156A4A0()
{
  sub_1D15A3F88();
}

uint64_t sub_1D156A514()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D156A598@<X0>(char *a1@<X8>)
{
  v2 = sub_1D15A49B8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D156A5F8(uint64_t *a1@<X8>)
{
  v2 = 0x676E6967676F6CLL;
  if (*v1)
  {
    v2 = 0x6967676F4C746F6ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000676ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D156A63C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6967676F4C746F6ELL;
  }

  else
  {
    v3 = 0x676E6967676F6CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA0000000000676ELL;
  }

  if (*a2)
  {
    v5 = 0x6967676F4C746F6ELL;
  }

  else
  {
    v5 = 0x676E6967676F6CLL;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000676ELL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D15A4BA8();
  }

  return v8 & 1;
}

uint64_t SignificantChangeEngine.State.FrequencyShift.init(transitionDate:mode:activeChange:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  sub_1D150F280(a1, a4);
  v7 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  *(a4 + *(v7 + 20)) = v6;
  v8 = a4 + *(v7 + 24);

  return sub_1D1580218(a3, v8);
}

uint64_t sub_1D156A800()
{
  v1 = 1701080941;
  if (*v0 != 1)
  {
    v1 = 0x6843657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x697469736E617274;
  }
}

uint64_t sub_1D156A868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1582D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D156A890(uint64_t a1)
{
  v2 = sub_1D1580960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D156A8CC(uint64_t a1)
{
  v2 = sub_1D1580960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.State.FrequencyShift.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D1580C14(0, &qword_1EE056358, sub_1D1580960, &type metadata for SignificantChangeEngine.State.FrequencyShift.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580960();
  sub_1D15A4CE8();
  v15 = 0;
  sub_1D15A26A8();
  sub_1D1580304(&qword_1EE05B3F8, MEMORY[0x1E6969530]);
  sub_1D15A4AE8();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0) + 20));
    v13 = 1;
    sub_1D15809B4();
    sub_1D15A4B38();
    v12 = 2;
    type metadata accessor for SignificantChange(0);
    sub_1D1580304(qword_1EE058F38, type metadata accessor for SignificantChange);
    sub_1D15A4AE8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SignificantChangeEngine.State.FrequencyShift.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v22 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1580C14(0, &qword_1EE056428, sub_1D1580960, &type metadata for SignificantChangeEngine.State.FrequencyShift.CodingKeys, MEMORY[0x1E69E6F48]);
  v23 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580960();
  v14 = v24;
  sub_1D15A4CD8();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v21;
  v16 = v5;
  sub_1D15A26A8();
  v28 = 0;
  sub_1D1580304(&qword_1EE05B800, MEMORY[0x1E6969530]);
  v17 = v22;
  sub_1D15A4A28();
  sub_1D150F280(v17, v13);
  v26 = 1;
  sub_1D1580A08();
  sub_1D15A4A78();
  v13[*(v11 + 20)] = v27;
  type metadata accessor for SignificantChange(0);
  v25 = 2;
  sub_1D1580304(&qword_1EE058F30, type metadata accessor for SignificantChange);
  sub_1D15A4A28();
  (*(v15 + 8))(v10, v23);
  sub_1D1580218(v16, &v13[*(v11 + 24)]);
  sub_1D158015C(v13, v20, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D158034C(v13, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
}

unint64_t sub_1D156AFDC()
{
  v1 = 0x666968536E61656DLL;
  if (*v0 != 1)
  {
    v1 = 0x636E657571657266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D156B04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1582E9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D156B074(uint64_t a1)
{
  v2 = sub_1D1580A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D156B0B0(uint64_t a1)
{
  v2 = sub_1D1580A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.State.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EE056360, sub_1D1580A5C, &type metadata for SignificantChangeEngine.State.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580A5C();
  sub_1D15A4CE8();
  v12 = 0;
  sub_1D15A22A8();
  sub_1D1580304(&qword_1EE0595A0, MEMORY[0x1E6968130]);
  sub_1D15A4B38();
  if (!v1)
  {
    type metadata accessor for SignificantChangeEngine.State(0);
    v11 = 1;
    type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    sub_1D1580304(&qword_1EE058750, type metadata accessor for SignificantChangeEngine.State.MeanShift);
    sub_1D15A4AE8();
    v10 = 2;
    type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
    sub_1D1580304(&qword_1EE058818, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    sub_1D15A4AE8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignificantChangeEngine.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D15A22A8();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1580C14(0, &qword_1EE056430, sub_1D1580A5C, &type metadata for SignificantChangeEngine.State.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = v9;
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for SignificantChangeEngine.State(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580A5C();
  v30 = v11;
  v15 = v32;
  sub_1D15A4CD8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v27;
  v16 = v28;
  v18 = v12;
  v32 = v14;
  v35 = 0;
  sub_1D1580304(&qword_1EE059598, MEMORY[0x1E6968130]);
  v19 = v29;
  sub_1D15A4A78();
  v20 = v7;
  v21 = v32;
  (*(v26 + 32))(v32, v19, v20);
  type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
  v34 = 1;
  sub_1D1580304(&qword_1EE058748, type metadata accessor for SignificantChangeEngine.State.MeanShift);
  sub_1D15A4A28();
  sub_1D1580248(v16, v21 + *(v18 + 20), sub_1D15807FC);
  type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v33 = 2;
  sub_1D1580304(&qword_1EE058810, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  sub_1D15A4A28();
  (*(v17 + 8))(v30, v31);
  sub_1D1580248(v25, v21 + *(v18 + 24), sub_1D1580868);
  sub_1D158015C(v21, v24, type metadata accessor for SignificantChangeEngine.State);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D158034C(v21, type metadata accessor for SignificantChangeEngine.State);
}

uint64_t SignificantChangeEngine.analyzeForSignificantChanges(_:parameters:state:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v144 = a4;
  v143 = a3;
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v136 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v116 - v9;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v133 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D15A26A8();
  v126 = *(v12 - 8);
  v127 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v116 - v15;
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v130 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v116 - v19;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v139 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SignificantChangeEngine.State(0);
  v141 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v140 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1580AB0(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v132 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v131 = &v116 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v129 = &v116 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v116 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v138 = &v116 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v142 = &v116 - v35;
  sub_1D148EF60();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v116 - v41;
  v137 = sub_1D15A22A8();
  MEMORY[0x1EEE9AC00](v137);
  MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v116 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v52 = &v116 - v51;
  v53 = *a2;
  v54 = a2[1];
  v55 = *(a2 + 8);
  v170 = *(a2 + 7);
  v171 = v55;
  v172 = a2[18];
  v56 = *(a2 + 4);
  v166 = *(a2 + 3);
  v167 = v56;
  v57 = *(a2 + 6);
  v168 = *(a2 + 5);
  v169 = v57;
  v58 = *(a2 + 2);
  v164 = *(a2 + 1);
  v165 = v58;
  v59 = *(a2 + 21);
  v161 = *(a2 + 19);
  v162 = v59;
  v163[0] = *(a2 + 23);
  *(v163 + 9) = *(a2 + 193);
  v60 = *(a1 + 16);
  if (v60 < v53 || !v60)
  {
    v74 = type metadata accessor for SignificantChange(0);
    v75 = *(*(v74 - 8) + 56);
    v76 = v144;
    v75(v144, 1, 1, v74);
    v77 = type metadata accessor for SignificantChangeEngine.Output(0);
    v75(v76 + *(v77 + 20), 1, 1, v74);
    return sub_1D1580144(v143, v76 + *(v77 + 24));
  }

  v122 = v39;
  v123 = v48;
  v61 = a1;
  v117 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * (v60 - 1);
  v120 = v31;
  v121 = sub_1D148EF60;
  v62 = v52;
  v63 = v50;
  v64 = v49;
  sub_1D158015C(v117, v42, sub_1D148EF60);
  v118 = v64;
  v65 = *(v64 + 32);
  v66 = v42;
  v67 = v137;
  (v65)(v46, v66, v137);
  v119 = v62;
  (v65)(v62, v46, v67);
  v155 = v170;
  v156 = v171;
  v151 = v166;
  v152 = v167;
  v153 = v168;
  v154 = v169;
  v149 = v164;
  v150 = v165;
  v158 = v161;
  *&v148 = v53;
  *(&v148 + 1) = v54;
  v157 = v172;
  v159 = v162;
  v160[0] = v163[0];
  *(v160 + 9) = *(v163 + 9);
  v68 = v143;
  v116 = v61;
  sub_1D156C7A0(&v148, v143, v142);
  v69 = v122;
  sub_1D158015C(v117, v122, v121);
  v70 = v69;
  v71 = v67;
  v121 = v65;
  v122 = (v64 + 32);
  (v65)(v63, v70, v67);
  v154 = v170;
  v155 = v171;
  *&v156 = v172;
  v150 = v166;
  v151 = v167;
  v152 = v168;
  v153 = v169;
  v148 = v164;
  v149 = v165;
  if (sub_1D1580AE4(&v148) == 1)
  {
    (*(v118 + 8))(v63, v67);
    v72 = type metadata accessor for SignificantChangeEngine.Output(0);
    v73 = v138;
    (*(*(v72 - 8) + 56))(v138, 1, 1, v72);
  }

  else
  {
    v79 = v124;
    v80 = v63;
    sub_1D15A2258();
    v81 = v125;
    v82 = sub_1D15A2608();
    MEMORY[0x1EEE9AC00](v82);
    *(&v116 - 2) = v79;
    *(&v116 - 1) = v81;
    v83 = v116;

    v84 = v145;
    sub_1D1565874(sub_1D1580AF8, (&v116 - 4), v83);
    v86 = v85;
    v145 = v84;
    v87 = *(v126 + 8);
    v88 = v81;
    v89 = v127;
    v87(v88, v127);
    v87(v79, v89);
    v146[6] = v154;
    v146[7] = v155;
    v147 = v156;
    v146[2] = v150;
    v146[3] = v151;
    v146[4] = v152;
    v146[5] = v153;
    v146[0] = v148;
    v146[1] = v149;
    v73 = v138;
    sub_1D156D6F4(v86, v146, v68, v138);

    (*(v118 + 8))(v80, v71);
  }

  v90 = v134;
  v91 = v130;
  v92 = v128;
  v93 = v120;
  (v121)(v123, v119, v71);
  sub_1D158015C(v73, v93, sub_1D1580AB0);
  v94 = type metadata accessor for SignificantChangeEngine.Output(0);
  v95 = *(*(v94 - 8) + 48);
  v96 = v95(v93, 1, v94);
  v97 = v135;
  if (v96 == 1)
  {
    v98 = sub_1D1580AB0;
    v99 = v93;
LABEL_11:
    sub_1D158034C(v99, v98);
    v100 = v97;
    v101 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    (*(*(v101 - 8) + 56))(v139, 1, 1, v101);
    goto LABEL_13;
  }

  sub_1D1580144(v93 + *(v94 + 24), v92);
  sub_1D158034C(v93, type metadata accessor for SignificantChangeEngine.Output);
  if ((*(v141 + 48))(v92, 1, v90) == 1)
  {
    v98 = sub_1D15801C4;
    v99 = v92;
    goto LABEL_11;
  }

  sub_1D15807E4(v92 + *(v90 + 20), v139);
  sub_1D158034C(v92, type metadata accessor for SignificantChangeEngine.State);
  v100 = v97;
LABEL_13:
  v102 = v129;
  sub_1D158015C(v142, v129, sub_1D1580AB0);
  if (v95(v102, 1, v94) == 1)
  {
    v103 = sub_1D1580AB0;
    v104 = v102;
  }

  else
  {
    sub_1D1580144(v102 + *(v94 + 24), v91);
    sub_1D158034C(v102, type metadata accessor for SignificantChangeEngine.Output);
    if ((*(v141 + 48))(v91, 1, v90) != 1)
    {
      v107 = v133;
      sub_1D1580850(v91 + *(v90 + 24), v133);
      sub_1D158034C(v91, type metadata accessor for SignificantChangeEngine.State);
      v106 = v107;
      goto LABEL_19;
    }

    v103 = sub_1D15801C4;
    v104 = v91;
  }

  sub_1D158034C(v104, v103);
  v105 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v106 = v133;
  (*(*(v105 - 8) + 56))(v133, 1, 1, v105);
LABEL_19:
  v108 = v140;
  (v121)(v140, v123, v137);
  sub_1D1580248(v139, v108 + *(v90 + 20), sub_1D15807FC);
  sub_1D1580248(v106, v108 + *(v90 + 24), sub_1D1580868);
  v109 = v131;
  sub_1D1580248(v138, v131, sub_1D1580AB0);
  if (v95(v109, 1, v94) == 1)
  {
    sub_1D158034C(v109, sub_1D1580AB0);
    v110 = type metadata accessor for SignificantChange(0);
    (*(*(v110 - 8) + 56))(v100, 1, 1, v110);
  }

  else
  {
    sub_1D15800D8(v109, v100);
    sub_1D158034C(v109, type metadata accessor for SignificantChangeEngine.Output);
  }

  v111 = v132;
  v112 = v136;
  sub_1D1580248(v142, v132, sub_1D1580AB0);
  if (v95(v111, 1, v94) == 1)
  {
    sub_1D158034C(v111, sub_1D1580AB0);
    v113 = type metadata accessor for SignificantChange(0);
    (*(*(v113 - 8) + 56))(v112, 1, 1, v113);
  }

  else
  {
    sub_1D15800D8(v111 + *(v94 + 20), v112);
    sub_1D158034C(v111, type metadata accessor for SignificantChangeEngine.Output);
  }

  v114 = v144;
  v115 = *(v94 + 24);
  sub_1D1580248(v140, v144 + v115, type metadata accessor for SignificantChangeEngine.State);
  (*(v141 + 56))(v114 + v115, 0, 1, v90);
  sub_1D1580218(v100, v114);
  return sub_1D1580218(v112, v114 + *(v94 + 20));
}