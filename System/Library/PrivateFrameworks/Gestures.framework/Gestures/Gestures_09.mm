_BYTE *sub_18E7085E0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 24) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_18E7087D4(uint64_t a1)
{
  v13[3] = &type metadata for GestureTraitCollection;
  v13[0] = a1;
  v12 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v13, v11);
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));

  __swift_destroy_boxed_opaque_existential_0(v13);
  sub_18E70E5F0(v14);
  v17 = v12;
  memset(v14, 0, sizeof(v14));
  v15 = v11[0];
  v16 = v11[1];
  *&v14[0] = 9;

  *(v14 + 8) = xmmword_18E72CA30;

  *(&v14[1] + 8) = xmmword_18E72CA30;

  sub_18E6A6314(v1, 0, 0);

  v2 = sub_18E6C96B4();
  sub_18E6C9B94();
  v4 = v3;
  v6 = v5;

  MEMORY[0x193AD15C0](v4, v6);

  v7 = sub_18E6C9D10();
  v9 = v8;

  MEMORY[0x193AD15C0](v7, v9);

  sub_18E6A9C8C(v14);
  return v2;
}

Gestures::GestureTraitCollection static GestureTraitCollection.withTrait(_:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  v3 = a1[1];
  *(inited + 32) = *a1;
  *(inited + 40) = v3;

  return GestureTraitCollection.init(traits:)(inited);
}

Gestures::GestureTraitID __swiftcall GestureTraitID.init(_:)(Swift::String a1)
{
  v2 = v1;
  if (qword_1EAC8D960 != -1)
  {
LABEL_10:
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v3 = qword_1EAC8F538;
  do
  {
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(&qword_1EAC8F538, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  if (qword_1EAC8D968 != -1)
  {
    v11 = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = v11;
  }

  v7 = *(off_1EAC8F540 + 3);
  v8 = MEMORY[0x1EEE9AC00](a1._countAndFlagsBits);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v7 + 4);
  sub_18E70ABD8();
  os_unfair_lock_unlock(v7 + 4);

  *v2 = v4;
  return result;
}

Gestures::GestureTrait __swiftcall GestureTrait.init(id:attributes:)(Gestures::GestureTraitID id, Swift::OpaquePointer attributes)
{
  v2->_rawValue = *id.rawValue;
  v2[1]._rawValue = attributes._rawValue;
  result.attributes = attributes;
  result.id = id;
  return result;
}

Gestures::GestureTrait::AttributeKey __swiftcall GestureTrait.AttributeKey.init(_:)(Swift::String a1)
{
  v2 = v1;
  if (qword_1EAC8D960 != -1)
  {
LABEL_10:
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v3 = qword_1EAC8F538;
  do
  {
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(&qword_1EAC8F538, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  if (qword_1EAC8D968 != -1)
  {
    v11 = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = v11;
  }

  v7 = *(off_1EAC8F540 + 3);
  v8 = MEMORY[0x1EEE9AC00](a1._countAndFlagsBits);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v7 + 4);
  sub_18E70E70C();
  os_unfair_lock_unlock(v7 + 4);

  *v2 = v4;
  return result;
}

uint64_t GestureTrait.AttributeKey.label.getter(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EAC8D968 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(off_1EAC8F540 + 3);
  v4 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_18E70DCA0(&v6);
  os_unfair_lock_unlock(v3 + 4);
  if (*(&v6 + 1))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t GestureTrait.AttributeValue.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x193AD1DF0](1);
      return MEMORY[0x193AD1DF0](v1);
    }

    else
    {
      MEMORY[0x193AD1DF0](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      return MEMORY[0x193AD1E30](v3);
    }
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    return sub_18E72B8A8();
  }
}

uint64_t GestureTrait.AttributeValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18E72B888();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x193AD1DF0](1);
      MEMORY[0x193AD1DF0](v1);
    }

    else
    {
      MEMORY[0x193AD1DF0](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x193AD1E30](v3);
    }
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8A8();
  }

  return sub_18E72B8E8();
}

uint64_t sub_18E708F5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18E72B888();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x193AD1DF0](1);
      MEMORY[0x193AD1DF0](v1);
    }

    else
    {
      MEMORY[0x193AD1DF0](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x193AD1E30](v3);
    }
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8A8();
  }

  return sub_18E72B8E8();
}

uint64_t GestureTrait.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t GestureTrait.label.getter(uint64_t a1)
{
  v2 = *v1;
  if (qword_1EAC8D968 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(off_1EAC8F540 + 3);
  v4 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_18E70E6D0(&v6);
  os_unfair_lock_unlock(v3 + 4);
  if (*(&v6 + 1))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

BOOL sub_18E70917C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  v16[0] = *a1;
  *&v16[1] = v4;
  v17 = v2;
  if (*(v3 + 16))
  {
    v5 = sub_18E6EBF18(v16);
    if (v6)
    {
      v7 = *(v3 + 56) + 16 * v5;
      v8 = *v7;
      v9 = *(v7 + 8);
    }

    else
    {
      v8 = 0.0;
      v9 = 255;
    }
  }

  else
  {
    v8 = 0.0;
    v9 = 255;
  }

  v10 = v2 == 255;
  if (v9 != 255)
  {
    v10 = 0;
  }

  if (v2 != 255)
  {
    v11 = LOBYTE(v8) ^ LOBYTE(v4) ^ 1;
    if (v9)
    {
      v11 = 0;
    }

    v13 = v9 == 1 && *&v4 == *&v8;
    v14 = v4 == v8;
    if (v9 != 2)
    {
      v14 = 0;
    }

    if (v2 == 1)
    {
      v14 = v13;
    }

    if (!v2)
    {
      v14 = v11;
    }

    if (v9 != 255)
    {
      return v14;
    }
  }

  return v10;
}

uint64_t sub_18E70926C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = *(a3 + 56) + 16 * v14;
    v17 = *v16;
    LOBYTE(v16) = *(v16 + 8);
    v18[0] = v15;
    v18[1] = v17;
    v19 = v16;
    result = a1(v18);
    if (v3)
    {
      goto LABEL_13;
    }

    v9 &= v9 - 1;
    if ((result & 1) == 0)
    {
      LOBYTE(a1) = 0;
LABEL_13:

      return a1 & 1;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      LOBYTE(a1) = 1;
      goto LABEL_13;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t GestureTraitCollection._traits.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

Gestures::GestureTraitCollection __swiftcall GestureTraitCollection.init(traits:)(Swift::OpaquePointer traits)
{
  v3 = *(traits._rawValue + 2);
  v26 = v1;
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_17:

    *v26 = v6;
    return result;
  }

  v4 = 0;
  v5 = (traits._rawValue + 40);
  v6 = MEMORY[0x1E69E7CC8];
  while (v4 < *(traits._rawValue + 2))
  {
    v11 = *(v5 - 1);
    v10 = *v5;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_18E6EBF14(v11);
    v15 = v6[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v6[3] < v18)
    {
      sub_18E70BA38(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_18E6EBF14(v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v13;
    sub_18E70D188();
    v13 = v24;
    if (v19)
    {
LABEL_3:
      v7 = 16 * v13;
      v8 = *(v6[7] + 16 * v13 + 8);

      v9 = (v6[7] + v7);
      *v9 = v11;
      v9[1] = v10;
      goto LABEL_4;
    }

LABEL_12:
    v6[(v13 >> 6) + 8] |= 1 << v13;
    *(v6[6] + 8 * v13) = v11;
    v21 = (v6[7] + 16 * v13);
    *v21 = v11;
    v21[1] = v10;
    v22 = v6[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_20;
    }

    v6[2] = v23;
LABEL_4:
    ++v4;
    v5 += 2;
    if (v3 == v4)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result._traits._rawValue = sub_18E72B818();
  __break(1u);
  return result;
}

void *GestureTraitCollection.allTraits.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_18E70AC1C(v2, 0);
  v4 = sub_18E6A1D10(&v6, v3 + 4, v2, v1);

  sub_18E687EE8();
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

Swift::Bool __swiftcall GestureTraitCollection.containsSubtraits(from:)(Gestures::GestureTraitCollection from)
{
  v1 = *from._traits._rawValue;
  v2 = *from._traits._rawValue + 64;
  v3 = 1 << *(*from._traits._rawValue + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*from._traits._rawValue + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = *(*(v1 + 48) + 8 * v10);
      v12 = (*(v1 + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];

      if (!v13)
      {
        goto LABEL_15;
      }

      v15 = *v23[5];
      v24 = v11;
      if (!*(v15 + 16))
      {
        break;
      }

      v16 = sub_18E6EBF18(&v24);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = (*(v15 + 56) + 16 * v16);
      v19 = v18[1];
      v25[0] = *v18;
      v20 = v25[0];
      v25[1] = v19;

      if (v14 != v20)
      {

        return 0;
      }

      MEMORY[0x1EEE9AC00](v21);
      v23[2] = v25;

      v22 = sub_18E70926C(sub_18E70DD30, v23, v13);
      swift_bridgeObjectRelease_n();

      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

      v5 &= v5 - 1;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_17:

    return 0;
  }

LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
LABEL_15:

      return 1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

double GestureTraitCollection.makeIterator()@<D0>(uint64_t a1@<X8>)
{
  sub_18E70DD50(&v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  sub_18E6D4CCC(v8, &v4, &qword_1EAC8F548, &qword_18E7309D8);
  result = *&v5;
  v3 = v6;
  *a1 = v5;
  *(a1 + 16) = v3;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_18E7098C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + 8 * v12);
    v14 = (*(v3 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v15 == 0;

    if (!v15)
    {
      return v17;
    }

    v18 = sub_18E6EBF14(v13);
    if ((v19 & 1) == 0 || (v20 = (*(a2 + 56) + 16 * v18), *v20 != v16))
    {

      return 0;
    }

    v21 = sub_18E709A1C(v20[1], v15);

    if ((v21 & 1) == 0)
    {
      return v17;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E709A1C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 56) + 16 * v12;
    v14 = *(v13 + 8);
    v15 = v14 == 255;
    if (v14 == 255)
    {
      return v15;
    }

    v16 = *v13;
    result = sub_18E6EBF14(*(*(v3 + 48) + 8 * v12));
    if ((v17 & 1) == 0)
    {
      return v15;
    }

    v18 = *(a2 + 56) + 16 * result;
    v19 = *v18;
    v20 = *(v18 + 8);
    if (v20)
    {
      if (v20 == 1)
      {
        if (v14 != 1 || *&v19 != *&v16)
        {
          return v15;
        }
      }

      else if (v14 != 2 || v19 != v16)
      {
        return v15;
      }
    }

    else if (v14 || ((LODWORD(v19) ^ LODWORD(v16)) & 1) != 0)
    {
      return v15;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t GestureTraitCollection.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  sub_18E70D89C(v3, v1);
  return sub_18E72B8E8();
}

double sub_18E709BDC@<D0>(uint64_t a1@<X8>)
{
  sub_18E70DD50(v7);
  v3 = *v1;
  sub_18E6D4CCC(v7, &v6, &qword_1EAC8F578, &qword_18E730B50);

  result = *v7;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_18E709C48()
{
  v1 = sub_18E725914(*v0);

  return v1;
}

uint64_t sub_18E709C88()
{
  v1 = *v0;
  sub_18E72B888();
  sub_18E70D89C(v3, v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E709CD8()
{
  v1 = *v0;
  sub_18E72B888();
  sub_18E70D89C(v3, v1);
  return sub_18E72B8E8();
}

uint64_t static GestureTrait.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_18E709A1C(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t GestureTrait.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x193AD1DF0](*v1);

  return sub_18E70DB2C(a1, v3);
}

uint64_t sub_18E709D98(uint64_t *a1)
{
  v2 = a1;
  v3 = v1[1];
  v4 = *a1;
  if ((~*a1 & 9) != 0)
  {
    *a1 = v4 | 9;
  }

  v5 = *v1;
  v6 = a1[2];

  *(v2 + 8) = xmmword_18E72CA30;
  v7 = *(v2 + 32);

  *(v2 + 24) = xmmword_18E72CA30;
  if ((v4 & 2) == 0)
  {
    *v2 = v4 | 0xB;
  }

  v9 = qword_1EAC8D968;
  if (*(v3 + 16))
  {

    if (v9 != -1)
    {
LABEL_42:
      v10 = swift_once();
    }

    v11 = *(off_1EAC8F540 + 3);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v43 = v13;
    MEMORY[0x1EEE9AC00](v12);
    os_unfair_lock_lock(v11 + 4);
    sub_18E70E6D0(&v48);
    os_unfair_lock_unlock(v11 + 4);
    v14 = v48;
    if (*(&v48 + 1))
    {
      v15 = *(&v48 + 1);
    }

    else
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    *&v48 = v14;
    *(&v48 + 1) = v15;

    MEMORY[0x193AD15C0](31520, 0xE200000000000000);

    v17 = 0;
    v18 = *(&v48 + 1);
    *(v2 + 8) = v48;
    *(v2 + 16) = v18;
    v45 = v2;
    *(v2 + 24) = xmmword_18E7309C0;
    v19 = v3 + 64;
    v20 = 1 << *(v3 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v3 + 64);
    v2 = (v20 + 63) >> 6;
    for (i = v3; v22; v3 = i)
    {
      while (1)
      {
LABEL_19:
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v25 = v24 | (v17 << 6);
        v26 = *(*(v3 + 48) + 8 * v25);
        v27 = *(v3 + 56) + 16 * v25;
        v28 = *v27;
        v46 = *(v27 + 8);
        v29 = *(v43 + 24);
        v30 = MEMORY[0x1EEE9AC00](v16);
        MEMORY[0x1EEE9AC00](v30);
        os_unfair_lock_lock(v29 + 4);
        sub_18E70E6D0(&v48);
        os_unfair_lock_unlock(v29 + 4);
        v31 = v48;
        if (*(&v48 + 1))
        {
          v32 = *(&v48 + 1);
        }

        else
        {
          v31 = 0;
          v32 = 0xE000000000000000;
        }

        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        v47 = v31;

        MEMORY[0x193AD15C0](8250, 0xE200000000000000);
        MEMORY[0x193AD15C0](v47, v32);

        sub_18E72B6C8();
        MEMORY[0x193AD15C0](0, 0xE000000000000000);

        v33 = v48;
        v34 = HIBYTE(*(&v48 + 1)) & 0xFLL;
        if ((*(&v48 + 1) & 0x2000000000000000) == 0)
        {
          v34 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          break;
        }

        v3 = i;
        if (!v22)
        {
          goto LABEL_15;
        }
      }

      v35 = *(v45 + 80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_18E6ED4A8(0, *(v35 + 2) + 1, 1, v35);
      }

      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_18E6ED4A8((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      *&v35[16 * v37 + 32] = v33;
      *(v45 + 80) = v35;
    }

    while (1)
    {
LABEL_15:
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v23 >= v2)
      {
      }

      v22 = *(v19 + 8 * v23);
      ++v17;
      if (v22)
      {
        v17 = v23;
        goto LABEL_19;
      }
    }
  }

  else
  {
    if (qword_1EAC8D968 != -1)
    {
      v8 = swift_once();
    }

    v39 = *(off_1EAC8F540 + 3);
    v40 = MEMORY[0x1EEE9AC00](v8);
    MEMORY[0x1EEE9AC00](v40);
    os_unfair_lock_lock(v39 + 4);
    sub_18E70E6D0(&v48);
    os_unfair_lock_unlock(v39 + 4);
    if (*(&v48 + 1))
    {
      v41 = v48;
    }

    else
    {
      v41 = 0;
    }

    if (*(&v48 + 1))
    {
      v42 = *(&v48 + 1);
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    sub_18E6A647C(v41, v42, 0, 0);
  }
}

uint64_t GestureTrait.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  sub_18E70DB2C(v4, v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E70A308()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  sub_18E70DB2C(v4, v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E70A364(uint64_t a1)
{
  v3 = v1[1];
  MEMORY[0x193AD1DF0](*v1);

  return sub_18E70DB2C(a1, v3);
}

uint64_t sub_18E70A3B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  sub_18E70DB2C(v4, v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E70A40C(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_18E709A1C(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t GestureTrait.AttributeKey.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE000000000000000;
  v9 = 0;
  v10 = 0xE000000000000000;
  if (qword_1EAC8D968 != -1)
  {
    a1 = swift_once();
  }

  v4 = *(off_1EAC8F540 + 3);
  v5 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_18E70E6D0(&v8);
  os_unfair_lock_unlock(v4 + 4);
  if (*(&v8 + 1))
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  if (*(&v8 + 1))
  {
    v3 = *(&v8 + 1);
  }

  MEMORY[0x193AD15C0](v6, v3);

  return v9;
}

uint64_t GestureTrait.AttributeValue.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v6 = *v0;
      return sub_18E72B778();
    }

    v5 = *v0;
    sub_18E72B2A8();
  }

  else
  {
    if (v1)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    MEMORY[0x193AD15C0](v3, v4);
  }

  return 0;
}

uint64_t sub_18E70A628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v5;
  sub_18E70E37C(v4, sub_18E70DCB8, 0, isUniquelyReferenced_nonNull_native, &v9);

  v7 = v9;

  *a2 = v7;
  return result;
}

uint64_t sub_18E70A6D4(uint64_t a1)
{
  v3 = *v1;
  if ((~*a1 & 9) != 0)
  {
    *a1 |= 9uLL;
  }

  v4 = *(a1 + 16);

  *(a1 + 8) = xmmword_18E72CA30;
  v5 = *(a1 + 32);

  *(a1 + 24) = xmmword_18E72CA30;

  sub_18E6A6314(v6, 0, 0);
}

uint64_t sub_18E70A78C()
{
  type metadata accessor for TraitLabelStore();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_18E6CE35C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8F600, &qword_18E730EE8);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  off_1EAC8F540 = v0;
  return result;
}

unint64_t sub_18E70A800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  result = sub_18E6B7544(a3, a4, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 16) = v11;
  return result;
}

uint64_t sub_18E70A8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (*(v4 + 16))
  {
    v5 = sub_18E6EB450(a2);
    if (v6)
    {
      v7 = (*(v4 + 56) + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
    }

    else
    {
      v9 = 0;
      result = 0;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_18E70A920()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_18E70A960(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = result;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *v8 = a4;
    v8[1] = a5;
    v8[2] = a6;
    v8[3] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a6 + 16);
    if (v9)
    {
      v10 = a2;
      v18 = a3;
      v19 = a4;
      v11 = 0;
      v12 = (a5 + 48);
      v13 = a3 - 1;
      while (v11 < *(a5 + 16))
      {
        if (v11 >= *(a6 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v12 - 2);
        v15 = *(v12 - 1);
        v16 = *(a6 + 32 + 8 * v11);
        v17 = *v12;
        *v10 = v14;
        *(v10 + 8) = v15;
        *(v10 + 16) = v17;
        *(v10 + 24) = v16;
        if (v13 == v11)
        {
          sub_18E67EEC4(v14, v15, v17);

          a3 = v18;
          a4 = v19;
          goto LABEL_14;
        }

        sub_18E67EEC4(v14, v15, v17);

        ++v11;
        v12 += 24;
        v10 += 32;
        if (v9 == v11)
        {
          a3 = v9;
          a4 = v19;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    a3 = 0;
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_18E70AA78(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_18E67EEC4(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_18E67EEC4(v19, v20, v21);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_18E70ABD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_18E70AC1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_18E70ACA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5C0, &qword_18E730E80);
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v8 + 40);
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70AF2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5B8, &qword_18E730E78);
  v38 = a2;
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 3 * v21);
      v24 = *v23;
      v39 = v23[1];
      v25 = v23[2];
      v26 = *(v22 + 8 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v24);
      MEMORY[0x193AD1DF0](v39);
      sub_18E72B8A8();
      if (v25 != 2)
      {
        MEMORY[0x193AD1DF0](v25 & 1);
      }

      result = sub_18E72B8E8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 3 * v16);
      *v17 = v24;
      v17[1] = v39;
      v17[2] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_37;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70B220(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5F0, &qword_18E730ED0);
  v39 = a2;
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 56 * v21;
      v24 = *v23;
      v25 = *(v23 + 24);
      v40 = v25;
      v41 = *(v23 + 8);
      v26 = *(v23 + 40);
      v27 = *(v23 + 48);
      v42 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v24;
      *(v17 + 8) = v41;
      *(v17 + 24) = v40;
      *(v17 + 40) = v26;
      *(v17 + 48) = v27;
      *(*(v8 + 56) + 8 * v16) = v42;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70B4EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E918, &qword_18E72EA30);
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 2 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x193AD1DC0](*(v8 + 40), v22, 2);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70B760(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E910, &qword_18E72EA28);
  v36 = a2;
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 2 * v21);
      v23 = *(v5 + 56) + 56 * v21;
      v24 = *v23;
      v25 = *(v23 + 24);
      v38 = v25;
      v39 = *(v23 + 8);
      v26 = *(v23 + 40);
      v37 = *(v23 + 48);
      if ((v36 & 1) == 0)
      {
      }

      result = MEMORY[0x193AD1DC0](*(v8 + 40), v22, 2);
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v22;
      v17 = *(v8 + 56) + 56 * v16;
      *v17 = v24;
      *(v17 + 8) = v39;
      *(v17 + 24) = v38;
      *(v17 + 40) = v26;
      *(v17 + 48) = v37;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70BA38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5D8, &qword_18E730EB0);
  v37 = a2;
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v22);
      result = sub_18E72B8E8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70BCD4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F8, &qword_18E72EA10);
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56) + 16 * v21;
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = *(v22 + 8);
      v25 = *v22;
      v26 = *(v8 + 40);
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v23);
      result = sub_18E72B8E8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v25;
      *(v17 + 8) = v24;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70BF68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5F8, &qword_18E730ED8);
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_18E72B878();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70C1D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5E8, &qword_18E730EC8);
  v37 = a2;
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v38 = *(*(v5 + 48) + 8 * v21);
      v22 = (*(v5 + 56) + 24 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      if ((v37 & 1) == 0)
      {

        sub_18E68CB70(v24);
      }

      v26 = *(v8 + 40);
      sub_18E72B888();
      MEMORY[0x193AD1DF0](v38);
      result = sub_18E72B8E8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v38;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v23;
      v17[1] = v24;
      v17[2] = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_18E70C4A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E920, &qword_18E730EE0);
  v36 = a2;
  result = sub_18E72B728();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_18E72B878();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_18E70C724()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5C0, &qword_18E730E80);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70C874()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5B8, &qword_18E730E78);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 3 * v17);
        v19 = *v18;
        v20 = v18[1];
        LOBYTE(v18) = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 3 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v18;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70C9EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5F0, &qword_18E730ED0);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v22 = *(v20 + 40);
        v21 = *(v20 + 48);
        v23 = *(*(v2 + 56) + v17);
        v24 = *(v4 + 48) + v19;
        v25 = *(v20 + 8);
        v26 = *(v20 + 24);
        *v24 = *v20;
        *(v24 + 8) = v25;
        *(v24 + 24) = v26;
        *(v24 + 40) = v22;
        *(v24 + 48) = v21;
        *(*(v4 + 56) + v17) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70CB74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5C8, &qword_18E730E88);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70CCD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8E8, &unk_18E730EA0);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_18E69F7B4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_18E68A8E4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_18E70CE7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E918, &qword_18E72EA30);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70CFD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E910, &qword_18E72EA28);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 56 * v17;
        v19 = *v18;
        v20 = *(v18 + 40);
        v21 = *(v18 + 48);
        v22 = *(v18 + 8);
        v23 = *(v18 + 24);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        v24 = *(v4 + 56) + 56 * v17;
        *v24 = v19;
        *(v24 + 8) = v22;
        *(v24 + 24) = v23;
        *(v24 + 40) = v20;
        *(v24 + 48) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70D188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5D8, &qword_18E730EB0);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70D2F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F8, &qword_18E72EA10);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v19 + 8) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v19 = *(v4 + 56) + 16 * v14;
      *v19 = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70D450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5F8, &qword_18E730ED8);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70D5AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8F5E8, &qword_18E730EC8);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 24 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v19;
        v22[1] = v20;
        v22[2] = v21;

        result = sub_18E68CB70(v20);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18E70D734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E920, &qword_18E730EE0);
  v2 = *v0;
  v3 = sub_18E72B718();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_18E70D89C(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v28 = v6;
  v29 = v2;
LABEL_6:
  if (v5)
  {
LABEL_11:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a2 + 48) + 8 * v11);
    v13 = (*(a2 + 56) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];

    if (!v14)
    {
LABEL_31:

      return MEMORY[0x193AD1DF0](v8);
    }

    v5 &= v5 - 1;
    v35 = a1[2];
    v36 = a1[3];
    v37 = *(a1 + 8);
    v33 = *a1;
    v34 = a1[1];
    MEMORY[0x193AD1DF0](v12);
    result = MEMORY[0x193AD1DF0](v15);
    v16 = 0;
    v17 = 0;
    v18 = 1 << *(v14 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v14 + 64);
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
LABEL_23:
      v23 = __clz(__rbit64(v20)) | (v17 << 6);
      v24 = *(v14 + 56) + 16 * v23;
      v25 = *(v24 + 8);
      if (v25 == 255)
      {
LABEL_5:

        MEMORY[0x193AD1DF0](v16);
        swift_bridgeObjectRelease_n();
        result = sub_18E72B8E8();
        v8 ^= result;
        v6 = v28;
        v2 = v29;
        goto LABEL_6;
      }

      v32 = v16;
      v26 = *v24;
      MEMORY[0x193AD1DF0](*(*(v14 + 48) + 8 * v23));
      if (v25)
      {
        if (v25 == 1)
        {
          MEMORY[0x193AD1DF0](1);
          MEMORY[0x193AD1DF0](v26);
        }

        else
        {
          MEMORY[0x193AD1DF0](2);
          if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0;
          }

          MEMORY[0x193AD1E30](v27);
        }
      }

      else
      {
        MEMORY[0x193AD1DF0](0);
        sub_18E72B8A8();
      }

      v20 &= v20 - 1;
      result = sub_18E72B8E8();
      v16 = result ^ v32;
    }

    while (1)
    {
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v22 >= v21)
      {
        goto LABEL_5;
      }

      v20 = *(v14 + 64 + 8 * v22);
      ++v17;
      if (v20)
      {
        v17 = v22;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        goto LABEL_31;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E70DB2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9)) | (v5 << 6);
    v13 = *(a2 + 56) + 16 * v12;
    v14 = *(v13 + 8);
    if (v14 == 255)
    {
      return MEMORY[0x193AD1DF0](v4);
    }

    v15 = *v13;
    v19 = *(v3 + 32);
    v20 = *(v3 + 48);
    v21 = *(v3 + 64);
    v17 = *v3;
    v18 = *(v3 + 16);
    MEMORY[0x193AD1DF0](*(*(a2 + 48) + 8 * v12));
    if (v14)
    {
      if (v14 == 1)
      {
        MEMORY[0x193AD1DF0](1);
        MEMORY[0x193AD1DF0](v15);
      }

      else
      {
        MEMORY[0x193AD1DF0](2);
        if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        MEMORY[0x193AD1E30](v16);
      }
    }

    else
    {
      MEMORY[0x193AD1DF0](0);
      sub_18E72B8A8();
    }

    v9 &= v9 - 1;
    result = sub_18E72B8E8();
    v4 ^= result;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      return MEMORY[0x193AD1DF0](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E70DCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
}

BOOL _s8Gestures12GestureTraitV14AttributeValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *a2 ^ *a1 ^ 1;
  if (*(a2 + 8))
  {
    LOBYTE(v4) = 0;
  }

  v6 = v3 == 1 && *a1 == *&v2;
  v7 = *a2;
  v8 = *a1 == v2;
  if (v3 != 2)
  {
    v8 = 0;
  }

  if (*(a1 + 8) == 1)
  {
    v8 = v6;
  }

  if (!*(a1 + 8))
  {
    return v4;
  }

  return v8;
}

void sub_18E70DD50(void *a1@<X8>)
{
  v2 = *v1;
  v3 = -1 << *(*v1 + 32);
  v4 = ~v3;
  *a1 = *v1;
  v7 = *(v2 + 64);
  v5 = v2 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  a1[1] = v5;
  a1[2] = v4;
  a1[3] = 0;
  a1[4] = v9 & v6;
}

unint64_t sub_18E70DD90()
{
  result = qword_1EAC8F550;
  if (!qword_1EAC8F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F550);
  }

  return result;
}

unint64_t sub_18E70DDE8()
{
  result = qword_1EAC8F558;
  if (!qword_1EAC8F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F558);
  }

  return result;
}

unint64_t sub_18E70DE40()
{
  result = qword_1EAC8F560;
  if (!qword_1EAC8F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F560);
  }

  return result;
}

unint64_t sub_18E70DE98()
{
  result = qword_1EAC8F568;
  if (!qword_1EAC8F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F568);
  }

  return result;
}

unint64_t sub_18E70DEF0()
{
  result = qword_1EAC8F570;
  if (!qword_1EAC8F570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8F578, &qword_18E730B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F570);
  }

  return result;
}

unint64_t sub_18E70DF58()
{
  result = qword_1EAC8F580;
  if (!qword_1EAC8F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F580);
  }

  return result;
}

unint64_t sub_18E70DFB0()
{
  result = qword_1EAC8F588;
  if (!qword_1EAC8F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F588);
  }

  return result;
}

unint64_t sub_18E70E030()
{
  result = qword_1EAC8F590;
  if (!qword_1EAC8F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F590);
  }

  return result;
}

unint64_t sub_18E70E084()
{
  result = qword_1EAC8F598;
  if (!qword_1EAC8F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F598);
  }

  return result;
}

uint64_t sub_18E70E104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E70E140()
{
  result = qword_1EAC8F5A0;
  if (!qword_1EAC8F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F5A0);
  }

  return result;
}

unint64_t sub_18E70E194()
{
  result = qword_1EAC8F5A8;
  if (!qword_1EAC8F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F5A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GestureTrait.AttributeValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GestureTrait.AttributeValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GestureTraitCollection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for GestureTraitCollection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E70E37C(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (1)
  {
    v14 = v9;
    v15 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(*(a1 + 48) + 8 * v17);
    v19 = (*(a1 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    v46[0] = v18;
    v46[1] = v21;
    v46[2] = v20;

    a2(v47, v46);

    v22 = v48;
    if (!v48)
    {
LABEL_22:
      sub_18E687EE8();
    }

    v23 = v47[0];
    v45 = v47[1];
    v24 = *v49;
    v26 = sub_18E6EBF14(v47[0]);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((a4 & 1) == 0)
      {
        sub_18E70D188();
      }
    }

    else
    {
      v31 = v49;
      sub_18E70BA38(v29, a4 & 1);
      v32 = *v31;
      v33 = sub_18E6EBF14(v23);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v26 = v33;
    }

    v35 = *v49;
    if (v30)
    {
      v12 = (v35[7] + 16 * v26);
      v13 = v12[1];
      *v12 = v45;
      v12[1] = v22;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      *(v35[6] + 8 * v26) = v23;
      v36 = (v35[7] + 16 * v26);
      *v36 = v45;
      v36[1] = v22;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v15;
    v6 = v42;
    v9 = (v14 - 1) & v14;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_22;
    }

    v14 = *(v6 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_18E72B818();
  __break(1u);
  return result;
}

uint64_t sub_18E70E5F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCC8, &qword_18E72CD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18E70E658@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

uint64_t sub_18E70E724(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *sub_18E70E760(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *sub_18E70E798(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

uint64_t *sub_18E70E7F8(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

void sub_18E70E854()
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Swift::Void __swiftcall CompositeGestureComponent.reset()()
{
  v1 = (*(v0 + 48))(v5);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 24);
  v4 = swift_checkMetadataState();
  v3(v4, AssociatedConformanceWitness);
  v1(v5, 0);
}

Gestures::GestureTraitCollection_optional sub_18E70E990()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

Gestures::GestureTraitCollection_optional __swiftcall CompositeGestureComponent.traits()()
{
  v1 = (*(v0 + 48))(v6);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 32);
  v4 = swift_checkMetadataState();
  v3(v4, AssociatedConformanceWitness);
  return v1(v6, 0);
}

uint64_t sub_18E70EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t CompositeGestureComponent.capacity<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a4 + 48))(v14);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 40);
  v11 = swift_checkMetadataState();
  v12 = v10(a1, a3, a5, v11, AssociatedConformanceWitness);
  v8(v14, 0);
  return v12;
}

uint64_t CompositeGestureComponent<>.reset()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17[-v8];
  v10 = (*(a2 + 48))(v17, a1, a2);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 24);
  v13 = swift_checkMetadataState();
  v12(v13, AssociatedConformanceWitness);
  v10(v17, 0);
  v14 = swift_getAssociatedConformanceWitness();
  (*(v14 + 8))(AssociatedTypeWitness, v14);
  return (*(a3 + 40))(v9, a1, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70EE5C()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t CompositeGestureComponent.update(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = *(a1 + 32);
  v13 = v5;
  v7 = (*(a2 + 48))(v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  GestureComponent.tracingUpdate(context:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness, a3);
  return v7(v11, v3 != 0);
}

void sub_18E70F0AC()
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

uint64_t sub_18E70F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70F1A8()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70F2C4()
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Gestures::GestureTraitCollection_optional sub_18E70F318()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70F45C()
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

uint64_t sub_18E70F4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70F558()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70F69C()
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

uint64_t sub_18E70F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70F798()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70F8A4()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t sub_18E70F984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();

  return CompositeGestureComponent<>.reset()(a1, WitnessTable, v3);
}

Gestures::GestureTraitCollection_optional sub_18E70FA04()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70FB10()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70FBF0()
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Gestures::GestureTraitCollection_optional sub_18E70FC44()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70FD24()
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Gestures::GestureTraitCollection_optional sub_18E70FD78()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

Gestures::GestureTraitCollection_optional sub_18E70FE84()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E70FEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

void sub_18E70FF64()
{
  swift_getWitnessTable();

  CompositeGestureComponent.reset()();
}

Gestures::GestureTraitCollection_optional sub_18E70FFB8()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E71001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t sub_18E7100C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();

  return CompositeGestureComponent<>.reset()(a1, WitnessTable, v3);
}

Gestures::GestureTraitCollection_optional sub_18E710128()
{
  swift_getWitnessTable();

  return CompositeGestureComponent.traits()();
}

uint64_t sub_18E71018C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return CompositeGestureComponent.capacity<A>(for:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t sub_18E710208(uint64_t a1)
{
  result = sub_18E7102C4(&qword_1EAC8F688);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E71024C(uint64_t a1)
{
  result = sub_18E7102C4(qword_1EAC8F690);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E7102C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGVector(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E710308(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E7103B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
  }

  return v3;
}

uint64_t sub_18E7104AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t sub_18E710530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t sub_18E7105B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t sub_18E710638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return a1;
}

uint64_t sub_18E7106BC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_18E710808(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        *((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_18E7109F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v6, a1);
  (*(v13 + 32))(a5, v16, a1);
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  result = type metadata accessor for MovementGate();
  *(a5 + *(result + 52)) = a6;
  *(a5 + *(result + 56)) = 1;
  return result;
}

uint64_t sub_18E710B54(char a1)
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1 & 1);
  return sub_18E72B8E8();
}

BOOL sub_18E710B9C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_18E710B1C(*a1, *a2);
}

uint64_t sub_18E710BB4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_18E710B54(*v1);
}

uint64_t sub_18E710BC8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_18E710B2C(a1, *v2);
}

uint64_t sub_18E710BDC(uint64_t a1, void *a2)
{
  sub_18E72B888();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_18E710B2C(v9, *v2);
  return sub_18E72B8E8();
}

uint64_t sub_18E710C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 24);
  v9 = type metadata accessor for TrackedValue();
  v10 = *(a2 + 40);
  v11 = sub_18E6F70A4(v9, v10);
  v13 = hypot(fabs(v11), fabs(v12));
  v14 = *(v4 + *(a2 + 52));
  if (*(v4 + *(a2 + 56)))
  {
    if (v13 > v14)
    {
      v15 = *(a2 + 32);
      *&v18 = *(a2 + 16);
      *(&v18 + 1) = v8;
      *&v19 = v15;
      *(&v19 + 1) = v10;
      type metadata accessor for MovementGate.Failure();
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }
  }

  else if (v14 > v13)
  {
    *a3 = 1;
    v17 = MEMORY[0x1E69E7CC0];
    *(a3 + 8) = MEMORY[0x1E69E7CC0];
    *(a3 + 16) = v17;
    *(a3 + 24) = 0xD000000000000013;
    *(a3 + 32) = 0x800000018E73ACA0;
    type metadata accessor for GestureOutput();
    return swift_storeEnumTagMultiPayload();
  }

  v18 = 0u;
  v19 = 0u;
  return sub_18E6FEC1C(a1, &v18, v9, a3);
}

uint64_t sub_18E710DBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E710DF8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E710E4C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_18E710EDC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18E711040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v78 = a4;
  v71 = a3;
  v6 = *(a3 + 8);
  v7 = *(v6 + 8);
  swift_getAssociatedTypeWitness();
  v79 = type metadata accessor for GestureOutput();
  v72 = *(v79 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x1EEE9AC00](v79);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v62 - v11;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  v13 = *(v76 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v62 - v16;
  v77 = v17;
  v74 = type metadata accessor for GestureOutput();
  v18 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v20 = &v62 - v19;
  v21 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  v25 = a1[4];
  v24 = a1[5];
  v26 = a1[6];
  v67 = *a1;
  v83 = v67;
  v84 = v21;
  v68 = v21;
  v69 = v22;
  v85 = v22;
  v86 = v23;
  v87 = v25;
  v88 = v24;
  v89 = v26;
  v27 = *(v6 + 48);
  v70 = a2;
  v28 = v27(v82, a2, v6);
  v29 = swift_checkMetadataState();
  v30 = v81;
  GestureComponent.tracingUpdate(context:)(&v83, v29, AssociatedConformanceWitness, v20);
  if (v30)
  {
    return v28(v82, 1);
  }

  v63 = v23;
  v64 = v25;
  AssociatedConformanceWitness = v24;
  v81 = v26;
  v32 = v73;
  v34 = v75;
  v33 = v76;
  v35 = v77;
  v28(v82, 0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v37 = &v20[*(swift_getTupleTypeMetadata2() + 48)];
      v39 = *v37;
      v38 = v37[1];
      v41 = v37[2];
      v40 = v37[3];
      v74 = v38;
      v75 = v41;
      v66 = v40;
      (*(v33 + 32))(v32, v20, v35);
      v83 = v67;
      v84 = v68;
      v85 = v69;
      v86 = v63;
      v87 = v64;
      v88 = AssociatedConformanceWitness;
      v89 = v81;
      v42 = v65;
      (*(v71 + 16))(v32, 0, &v83, v70);
      v43 = v72;
      v52 = MEMORY[0x1E69E7CC0];
      v53 = v66;
      if (!v39)
      {
        v53 = 0;
      }

      v54 = v74;
      if (v39)
      {
        v52 = v39;
      }

      else
      {
        v54 = MEMORY[0x1E69E7CC0];
      }

      v83 = v52;
      v84 = v54;
      v55 = v75;
      if (!v39)
      {
        v55 = 0;
      }

      v85 = v55;
      v86 = v53;
      v56 = v79;
      sub_18E6FF750(&v83, v79, v78);

      (*(v43 + 8))(v42, v56);
      return (*(v33 + 8))(v32, v35);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
      v45 = &v20[*(swift_getTupleTypeMetadata2() + 48)];
      v47 = *v45;
      v46 = v45[1];
      v48 = v45[2];
      v73 = v45[3];
      v74 = v46;
      v49 = v34;
      (*(v33 + 32))(v34, v20, v35);
      v83 = v67;
      v84 = v68;
      v85 = v69;
      v86 = v63;
      v87 = v64;
      v88 = AssociatedConformanceWitness;
      v89 = v81;
      v50 = v66;
      (*(v71 + 16))(v34, 1, &v83, v70);
      v51 = v72;
      v57 = MEMORY[0x1E69E7CC0];
      v58 = v73;
      v59 = v74;
      if (v47)
      {
        v57 = v47;
      }

      else
      {
        v58 = 0;
        v59 = MEMORY[0x1E69E7CC0];
      }

      v83 = v57;
      v84 = v59;
      if (v47)
      {
        v60 = v48;
      }

      else
      {
        v60 = 0;
      }

      v85 = v60;
      v86 = v58;
      v61 = v79;
      sub_18E6FF750(&v83, v79, v78);

      (*(v51 + 8))(v50, v61);
      return (*(v33 + 8))(v49, v35);
    }
  }

  else
  {
    v44 = v78;
    *v78 = *v20;
    *(v44 + 8) = *(v20 + 8);
    *(v44 + 24) = *(v20 + 24);
    return swift_storeEnumTagMultiPayload();
  }
}

void static GestureNodeMatcher.any.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t sub_18E711B58(char a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  if (a6 == 1)
  {
    return 0;
  }

  v7 = a1 != 0;
  if (a6 != 3)
  {
    v7 = 0;
  }

  if (a3 != 3)
  {
    v7 = 0;
  }

  if (a6 == 2)
  {
    v7 = 0;
    v8 = a2 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (a3 != 2)
  {
    v8 = v7;
  }

  return a3 == 1 || v8;
}

uint64_t sub_18E711BD4(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6)
{
  if (!a3)
  {
    return 0;
  }

  if (!a6)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  v7 = a4 != 0;
  if (a6 != 3)
  {
    v7 = 0;
  }

  if (a3 != 3)
  {
    v7 = 0;
  }

  if (a3 == 2)
  {
    v7 = 0;
    v8 = a5 != 0;
  }

  else
  {
    v8 = 1;
  }

  if (a6 != 2)
  {
    v8 = v7;
  }

  return a6 == 1 || v8;
}

uint64_t sub_18E711C50(char a1, char a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  if (a6 == 1)
  {
    return 1;
  }

  v7 = a1 == 0;
  if (a6 != 3)
  {
    v7 = 1;
  }

  v8 = a3 != 3 || v7;
  if (a6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = a6 == 2 && a2 == 0;
  if (a3 != 2)
  {
    v10 = v9;
  }

  return a3 != 1 && v10;
}

uint64_t GestureNodeMatcher.RelativePosition.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E711D54(uint64_t a1, uint64_t a2)
{
  result = *v2;
  v5 = *(v2 + 8);
  if (*(v2 + 16) <= 1u)
  {
    if (!*(v2 + 16))
    {
      return *(a1 + 16) == result;
    }

LABEL_13:
    v9 = *(a1 + 32);
    if (v9)
    {
      if (result != *(a1 + 24) || v5 != v9)
      {

        return sub_18E72B7C8();
      }

      return 1;
    }

    return 0;
  }

  if (*(v2 + 16) != 2)
  {
    if (*v2)
    {
      v11 = a2 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      return 0;
    }

    if (!*v2)
    {
      return 1;
    }

    if (*v2 == 1)
    {
      if (a2)
      {
        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_39;
    }

    if (a2)
    {
LABEL_36:
      v12 = a2;

      v13 = _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(v12, a1);

      return v13 & 1;
    }

    __break(1u);
LABEL_35:
    if (a2)
    {
      goto LABEL_36;
    }

LABEL_39:
    __break(1u);
    return result;
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  v7 = a2;
  v14[0] = *v2;
  v14[1] = v6;

  v8 = GestureTraitCollection.containsSubtraits(from:)(v14);

  if (!v8)
  {
    return 0;
  }

  a2 = v7;
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }
  }

  if (!v5)
  {
    return 1;
  }

  if (v5 != 1)
  {
    goto LABEL_35;
  }

  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_28:

  return _s8Gestures14AnyGestureNodeC1loiySbAC_ACtFZ_0(a1, a2);
}

uint64_t sub_18E711EE8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  if ((~*a1 & 9) != 0)
  {
    *a1 |= 9uLL;
  }

  v6 = *(a1 + 16);

  *(a1 + 8) = xmmword_18E72CA30;
  v7 = *(a1 + 32);

  *(a1 + 24) = xmmword_18E72CA30;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      sub_18E6A65D8(v3, 0, 0);
      v11 = v4;
    }

    else
    {
      sub_18E6A647C(7958113, 0xE300000000000000, 0, 0);
      v11 = v3;
    }

    return sub_18E6A6950(v11, 0x6E6F697469736F70, 0xE800000000000000);
  }

  else if (v5)
  {
    MEMORY[0x193AD15C0](v3, v4);
    MEMORY[0x193AD15C0](34, 0xE100000000000000);
    sub_18E6A647C(34, 0xE100000000000000, 0, 0);
  }

  else
  {
    v8 = sub_18E72B778();
    sub_18E6A647C(v8, v9, 0, 0);
  }
}

Gestures::GestureTraitCollection static GestureNodeMatcher.trait(_:position:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v5;
  *(inited + 40) = v4;

  result._traits._rawValue = GestureTraitCollection.init(traits:)(inited)._traits._rawValue;
  *a3 = v9;
  *(a3 + 8) = v6;
  *(a3 + 16) = 2;
  return result;
}

uint64_t GestureNodeMatcher.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(a1, v4);
      v8 = v5;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v8 = v4;
    }

    return MEMORY[0x193AD1DF0](v8);
  }

  else if (v6)
  {
    MEMORY[0x193AD1DF0](1);

    return _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    return sub_18E72B8C8();
  }
}

uint64_t GestureNodeMatcher.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18E72B888();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v6, v1);
      v4 = v2;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v4 = v1;
    }

    MEMORY[0x193AD1DF0](v4);
  }

  else if (v3)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  return sub_18E72B8E8();
}

uint64_t sub_18E7122B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18E72B888();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v6, v1);
      v4 = v2;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v4 = v1;
    }

    MEMORY[0x193AD1DF0](v4);
  }

  else if (v3)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  return sub_18E72B8E8();
}

uint64_t sub_18E712380(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(a1, v4);
      v8 = v5;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v8 = v4;
    }

    return MEMORY[0x193AD1DF0](v8);
  }

  else if (v6)
  {
    MEMORY[0x193AD1DF0](1);

    return _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    return sub_18E72B8C8();
  }
}

uint64_t sub_18E71243C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18E72B888();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v6, v1);
      v4 = v2;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v4 = v1;
    }

    MEMORY[0x193AD1DF0](v4);
  }

  else if (v3)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  return sub_18E72B8E8();
}

BOOL _s8Gestures18GestureNodeMatcherO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v7 == 3)
      {
        sub_18E682A3C(*a1, v3, 3);
        sub_18E682A3C(v6, v5, 3);
        return v6 == v2;
      }

      goto LABEL_19;
    }

    v9 = *a1;
    if (v7 == 2)
    {
      sub_18E67EEC4(*a2, *(a2 + 8), 2);
      sub_18E67EEC4(v2, v3, 2);
      sub_18E67EEC4(v6, v5, 2);
      sub_18E67EEC4(v2, v3, 2);
      v10 = sub_18E7098C0(v2, v6);
      sub_18E682A3C(v2, v3, 2);
      sub_18E682A3C(v6, v5, 2);
      sub_18E682A3C(v6, v5, 2);
      sub_18E682A3C(v2, v3, 2);
      return (v10 & 1) != 0 && v5 == v3;
    }

LABEL_18:

LABEL_19:
    sub_18E67EEC4(v6, v5, v7);
    sub_18E682A3C(v2, v3, v4);
    sub_18E682A3C(v6, v5, v7);
    return 0;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_18E682A3C(*a1, v3, 0);
      sub_18E682A3C(v6, v5, 0);
      return v2 == v6;
    }

    goto LABEL_19;
  }

  v11 = *(a1 + 8);
  if (v7 != 1)
  {
    goto LABEL_18;
  }

  if (v2 == v6 && v3 == v5)
  {
    sub_18E67EEC4(v2, v3, 1);
    sub_18E67EEC4(v2, v3, 1);
    sub_18E682A3C(v2, v3, 1);
    sub_18E682A3C(v2, v3, 1);
    return 1;
  }

  else
  {
    v13 = sub_18E72B7C8();
    sub_18E67EEC4(v6, v5, 1);
    sub_18E67EEC4(v2, v3, 1);
    sub_18E682A3C(v2, v3, 1);
    sub_18E682A3C(v6, v5, 1);
    return v13 & 1;
  }
}

unint64_t sub_18E712830()
{
  result = qword_1EAC8F818;
  if (!qword_1EAC8F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F818);
  }

  return result;
}

unint64_t sub_18E712884()
{
  result = qword_1EAC8F820;
  if (!qword_1EAC8F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F820);
  }

  return result;
}

unint64_t sub_18E7128D8(uint64_t a1)
{
  *(a1 + 8) = sub_18E712908();
  result = sub_18E71295C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E712908()
{
  result = qword_1EAC8F828;
  if (!qword_1EAC8F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8F828);
  }

  return result;
}

unint64_t sub_18E71295C()
{
  result = qword_1EAC8F830[0];
  if (!qword_1EAC8F830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8F830);
  }

  return result;
}

uint64_t sub_18E7129B0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_18E67EEC4(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for GestureNodeMatcher(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_18E67EEC4(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_18E682A3C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for GestureNodeMatcher(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_18E682A3C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for GestureNodeMatcher(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GestureNodeMatcher(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18E712B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E712BEC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = v10[1];
    v12 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v10;
    v12[1] = v11;
  }

  return v3;
}

uint64_t sub_18E712CE0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_18E712D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t sub_18E712DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  v10 = v7[1];
  *v7 = *v8;
  v7[1] = v9;

  return a1;
}

uint64_t sub_18E712E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 8);
  *v7 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_18E712EE0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_18E71301C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_18E7131EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  sub_18E7132A4(sub_18E7138F4, v12, a3, a6);
}

uint64_t sub_18E7132A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4);
  (*(v9 + 32))(a4, v12, a3);
  v13 = (a4 + *(type metadata accessor for MapComponent() + 44));
  *v13 = a1;
  v13[1] = a2;
}

uint64_t sub_18E7133C8@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a2;
  v35 = *(a4 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for GestureOutput();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v31 - v18;
  v21 = *(v20 + 16);
  v34 = a1;
  v21(v15, a1, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    v32 = a5;
    v33 = a4;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v22 = &v15[*(swift_getTupleTypeMetadata2() + 48)];
    v24 = *v22;
    v23 = v22[1];
    v25 = v22[2];
    v26 = v22[3];
    (*(v16 + 32))(v19, v15, AssociatedTypeWitness);
    v27 = v39[5];
    v37(v19);
    if (v27)
    {
      sub_18E6AF804(v24);
      return (*(v16 + 8))(v19, AssociatedTypeWitness);
    }

    else
    {
      (*(v16 + 8))(v19, AssociatedTypeWitness);
      GestureOutput.isFinal.getter(v11);
      v39[0] = v24;
      v39[1] = v23;
      v39[2] = v25;
      v39[3] = v26;
      v29 = v33;
      v30 = v38;
      sub_18E6FEC1C(v38, v39, v33, v32);
      (*(v35 + 8))(v30, v29);
      return sub_18E6AF804(v24);
    }
  }

  else
  {
    *a5 = *v15;
    *(a5 + 8) = *(v15 + 8);
    *(a5 + 24) = *(v15 + 24);
    type metadata accessor for GestureOutput();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_18E71373C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v7 = *(a2 + 32);
  v8 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GestureOutput();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - v12;
  v14 = *(a1 + 48);
  v15 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v15;
  v19[2] = *(a1 + 32);
  v20 = v14;
  result = GestureComponent.tracingUpdate(context:)(v19, v8, v7, v13);
  if (!v4)
  {
    v17 = v3 + *(a2 + 44);
    v18 = *(v17 + 8);
    (*v17)(v13);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_18E7138A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E7138F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_18E7133C8(a1, *(v2 + 40), *(v2 + 48), *(v2 + 24), a2);
}

uint64_t sub_18E713918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v29 = a5;
  v11 = type metadata accessor for ThresholdComponent.State();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v28 = &v28 - v13;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v28 - v18;
  v20 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v6, a2);
  (*(v15 + 16))(v19, a1, AssociatedTypeWitness);
  v24 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = a2;
  *(v25 + 3) = a3;
  *(v25 + 4) = a4;
  (*(v15 + 32))(&v25[v24], v19, AssociatedTypeWitness);
  v26 = v28;
  sub_18E714068(a4, v28);
  return sub_18E713EB8(v22, v26, sub_18E71825C, v25, a2, v29);
}

uint64_t sub_18E713BB8(double a1, double a2, double a3)
{
  if (a1 <= 0.0)
  {
    *&result = 0.0;
  }

  else
  {
    v7 = hypot(fabs(a2), fabs(a3));
    if (v7 >= a1)
    {
      v9 = a1 / v7;
      v10 = v3[1] - v9 * a3;
      *v3 = *v3 - v9 * a2;
      v3[1] = v10;
      *&result = v9 * a2;
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

uint64_t sub_18E713C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v7 = *(a3 + 8);
  if (a5 <= 0.0)
  {
    v18 = *(a3 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = *(*(AssociatedTypeWitness - 8) + 56);
    v17 = AssociatedTypeWitness;
    v16 = a4;
  }

  else
  {
    v10 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = *(AssociatedConformanceWitness + 16);
    v13 = swift_checkMetadataState();
    v14 = v12(v13, AssociatedConformanceWitness);
    if (v14 >= a5)
    {
      (*(AssociatedConformanceWitness + 24))(a1, v13, AssociatedConformanceWitness, a5 / v14);
      v21 = (*(v7 + 40))(v23, a2, v7);
      (*(*(AssociatedConformanceWitness + 8) + 48))(v22, a4, v13);
      v21(v23, 0);
      return (*(*(v13 - 8) + 56))(a4, 0, 1, v13);
    }

    v15 = *(*(v13 - 8) + 56);
    v16 = a4;
    v17 = v13;
  }

  return v15(v16, 1, 1, v17);
}

uint64_t sub_18E713EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for ThresholdComponent();
  v11 = *(v10 + 44);
  v12 = type metadata accessor for ThresholdComponent.State();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a2, v12);
  v14 = (a6 + *(v10 + 48));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t sub_18E713FB4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_18E714068@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
  v5 = *(type metadata accessor for ThresholdComponent.State() + 44);
  v6 = *(a1 + 8);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t sub_18E714178@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  return sub_18E714068(a1[4], a2);
}

uint64_t sub_18E714188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E7141DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E714230@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v109 = a4;
  v111 = a2;
  v118 = a1;
  v6 = *(a3 + 24);
  v7 = *(a3 + 32);
  v115 = *(a3 + 16);
  v116 = v6;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  v8 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v106 = &v95 - v9;
  v121 = v7;
  v108 = *(v7 + 8);
  v10 = swift_getAssociatedTypeWitness();
  v117 = sub_18E72B438();
  v120 = *(v117 - 8);
  v11 = *(v120 + 64);
  v12 = MEMORY[0x1EEE9AC00](v117);
  v101 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v110 = &v95 - v15;
  v126 = v10;
  v119 = *(v10 - 8);
  v16 = v119[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v96 = &v95 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v98 = &v95 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v95 = &v95 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v95 - v25;
  v26 = swift_checkMetadataState();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v107 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v104 = &v95 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v123 = &v95 - v33;
  v34 = sub_18E72B438();
  v35 = *(v34 - 8);
  v36 = v35[8];
  v37 = MEMORY[0x1EEE9AC00](v34);
  v114 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v95 - v39;
  v99 = a3;
  v41 = *(a3 + 44);
  v100 = v4;
  v42 = (v4 + v41);
  v113 = v35[2];
  v113(&v95 - v39, v4 + v41, v34);
  v122 = v27;
  v112 = *(v27 + 48);
  v43 = v112(v40, 1, v26);
  v44 = v35[1];
  v44(v40, v34);
  v45 = v43 == 1;
  v46 = v42;
  if (v45)
  {
    v44(v42, v34);
    v47 = v122;
    (*(v122 + 16))(v42, v118, v26);
    (*(v47 + 56))(v42, 0, 1, v26);
  }

  v48 = v114;
  v113(v114, v46, v34);
  result = v112(v48, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v50 = v122;
    (*(v122 + 32))(v123, v48, v26);
    v51 = type metadata accessor for ThresholdComponent.State();
    v52 = v120;
    v53 = *(v120 + 16);
    v113 = *(v51 + 44);
    v54 = v26;
    v55 = v110;
    v56 = v117;
    v53(v110, v113 + v46, v117);
    v57 = v119;
    v58 = v126;
    v114 = v119[6];
    if ((v114)(v55, 1, v126) == 1)
    {
      v59 = v54;
      v62 = *(v52 + 8);
      v60 = v52 + 8;
      v61 = v62;
      v62(v55, v56);
      if (v111)
      {
        type metadata accessor for ThresholdComponent.Failure();
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();
        return (*(v50 + 8))(v123, v59);
      }

      else
      {
        v115 = v46;
        v116 = v61;
        v120 = v60;
        v70 = *(v50 + 16);
        v71 = v118;
        v72 = v59;
        v70(v107, v118, v59);
        v73 = v100 + *(v99 + 48);
        v74 = *(v73 + 8);
        (*v73)(v71, v123);
        v75 = v108;
        v76 = *(v108 + 24);
        v77 = v96;
        v76(v59, v108);
        v78 = v97;
        v76(v59, v75);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v80 = v98;
        (*(*(AssociatedConformanceWitness + 8) + 40))(v77, v78, v126);
        v81 = v119[1];
        v81(v78, v126);
        v81(v77, v126);
        v82 = v101;
        v83 = v106;
        (*(v121 + 24))(v106, v80, v59);
        v81(v80, v126);
        v84 = v126;
        (*(v102 + 8))(v83, AssociatedTypeWitness);
        if ((v114)(v82, 1, v84) == 1)
        {
          v116(v82, v117);
          v85 = *(v122 + 8);
          v85(v107, v72);
          v85(v123, v72);
          v86 = MEMORY[0x1E69E7CC0];
          v87 = v109;
          *v109 = 1;
          v87[1] = v86;
          v87[2] = v86;
          v87[3] = 0xD000000000000013;
          v87[4] = 0x800000018E73ACA0;
          type metadata accessor for GestureOutput();
          return swift_storeEnumTagMultiPayload();
        }

        else
        {
          v122 = *(v122 + 8);
          (v122)(v123, v72);
          v88 = v72;
          v89 = v119;
          v90 = v119[4];
          v91 = v95;
          v90(v95, v82, v84);
          v92 = v115;
          v93 = v113;
          v116(v113 + v115, v117);
          v90(v93 + v92, v91, v84);
          (v89[7])(v93 + v92, 0, 1, v84);
          v124 = 0u;
          v125 = 0u;
          v94 = v107;
          sub_18E6FEC1C(v107, &v124, v88, v109);
          return (v122)(v94, v88);
        }
      }
    }

    else
    {
      v63 = v105;
      (v57[4])(v105, v55, v58);
      v64 = v104;
      (*(v50 + 16))(v104, v118, v54);
      v65 = (*(v108 + 40))(&v124, v54, v108);
      v67 = v66;
      v68 = swift_getAssociatedConformanceWitness();
      (*(*(v68 + 8) + 48))(v67, v63, v58);
      v65(&v124, 0);
      (v57[1])(v63, v58);
      v69 = *(v50 + 8);
      v69(v123, v54);
      v124 = 0u;
      v125 = 0u;
      sub_18E6FEC1C(v64, &v124, v54, v109);
      return (v69)(v64, v54);
    }
  }

  return result;
}

uint64_t sub_18E714DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = type metadata accessor for ThresholdComponent.State();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t sub_18E714E54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = type metadata accessor for ThresholdComponent.State();
  v9 = *(*(v8 - 8) + 40);

  return v9(v2 + v4, a1, v8);
}

double *sub_18E714ED4@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = 0.0;
  if (*result > 0.0 && (v6 = fabs(*a2), v4 <= v6))
  {
    v7 = 0;
    v5 = *a2 * (v4 / v6);
    *v3 = *v3 - v5;
  }

  else
  {
    v7 = 1;
  }

  *a3 = v5;
  *(a3 + 8) = v7;
  return result;
}

uint64_t sub_18E714F20(uint64_t a1)
{
  result = sub_18E715008(&qword_1EAC8F8B8, type metadata accessor for CGVector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E714F78@<X0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_18E713BB8(*a1, *a2, a2[1]);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_18E714FB0(uint64_t a1)
{
  result = sub_18E715008(qword_1EAC8F8C0, type metadata accessor for CGPoint);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E715008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18E715050(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = a1[3];
    v6 = a1[4];
    result = type metadata accessor for ThresholdComponent.State();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E715130(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v11 = *(*(a3 + 32) + 8);
  v37 = swift_getAssociatedTypeWitness();
  v12 = *(v37 - 8);
  v13 = *(v12 + 80);
  v14 = (*(v12 + 80) | v10);
  v15 = v6 + v14;
  if (*(v8 + 84))
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = v16 + v13;
  if (*(v12 + 84))
  {
    v18 = *(*(v37 - 8) + 64);
  }

  else
  {
    v18 = *(*(v37 - 8) + 64) + 1;
  }

  v19 = v14 | *(v5 + 80) & 0xF8;
  if (v19 > 7 || ((*(v5 + 80) | *(v12 + 80) | v10) & 0x100000) != 0 || ((((v16 + v13) & ~v13) + v18 + (v15 & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v22 = *a2;
    *a1 = *a2;
    v23 = (v22 + (((v19 | 7) + 16) & ~(v19 | 7)));
  }

  else
  {
    __n = v16;
    v34 = v18;
    v24 = ~v14;
    v35 = ~v13;
    v36 = ((v16 + v13) & ~v13) + v18;
    (*(v5 + 16))(a1, a2, v4);
    v25 = ((a1 + v15) & v24);
    v26 = ((a2 + v15) & v24);
    if ((*(v9 + 48))(v26, 1, AssociatedTypeWitness))
    {
      memcpy(v25, v26, __n);
    }

    else
    {
      (*(v9 + 16))(v25, v26, AssociatedTypeWitness);
      (*(v9 + 56))(v25, 0, 1, AssociatedTypeWitness);
    }

    v27 = &v25[v17];
    v28 = &v26[v17];
    if ((*(v12 + 48))(v28 & v35, 1, v37))
    {
      memcpy((v27 & v35), (v28 & v35), v34);
    }

    else
    {
      (*(v12 + 16))(v27 & v35, v28 & v35, v37);
      (*(v12 + 56))(v27 & v35, 0, 1, v37);
    }

    v29 = (&v26[v36 + 7] & 0xFFFFFFFFFFFFFFF8);
    v30 = v29[1];
    v31 = (&v25[v36 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v29;
    v31[1] = v30;
    v23 = a1;
  }

  return v23;
}

uint64_t sub_18E715498(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)(a1, a2[2]);
  v5 = *(v4 + 56) + a1;
  v6 = a2[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = *(a2[4] + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 80) | v9;
  v15 = (v5 + v14) & ~v14;
  if (!(*(v8 + 48))(v15, 1, AssociatedTypeWitness))
  {
    (*(v8 + 8))(v15, AssociatedTypeWitness);
  }

  if (*(v8 + 84))
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = v15 + v13 + v16;
  if (!(*(v12 + 48))(v17 & ~v13, 1, v11))
  {
    (*(v12 + 8))(v17 & ~v13, v11);
  }

  v18 = v15 + ((v16 + v13) & ~v13) + *(v12 + 64);
  if (!*(v12 + 84))
  {
    ++v18;
  }

  v19 = *(((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_18E71569C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)(a1, a2, a3[2]);
  v7 = *(v6 + 48);
  v8 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  v12 = *(a3[4] + 8);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 80) | v11;
  v17 = ((v7 + v16 + a1) & ~v16);
  v18 = ((v7 + v16 + a2) & ~v16);
  if ((*(v10 + 48))(v18, 1, AssociatedTypeWitness))
  {
    v19 = *(v10 + 84);
    v20 = *(v10 + 64);
    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 + 1;
    }

    memcpy(v17, v18, v21);
  }

  else
  {
    (*(v10 + 16))(v17, v18, AssociatedTypeWitness);
    v23 = *(v10 + 56);
    v22 = v10 + 56;
    v23(v17, 0, 1, AssociatedTypeWitness);
    v19 = *(v22 + 28);
    v20 = *(v22 + 8);
  }

  if (v19)
  {
    v24 = v20;
  }

  else
  {
    v24 = v20 + 1;
  }

  v25 = &v17[v15 + v24];
  v26 = &v18[v15 + v24];
  if ((*(v14 + 48))(v26 & ~v15, 1, v13))
  {
    v27 = *(v14 + 84);
    v28 = *(v14 + 64);
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 + 1;
    }

    memcpy((v25 & ~v15), (v26 & ~v15), v29);
  }

  else
  {
    (*(v14 + 16))(v25 & ~v15, v26 & ~v15, v13);
    v31 = *(v14 + 56);
    v30 = v14 + 56;
    v31(v25 & ~v15, 0, 1, v13);
    v27 = *(v30 + 28);
    v28 = *(v30 + 8);
  }

  v32 = v28 + ((v24 + v15) & ~v15);
  if (!v27)
  {
    ++v32;
  }

  v33 = &v17[v32 + 7];
  v34 = (&v18[v32 + 7] & 0xFFFFFFFFFFFFFFF8);
  v36 = *v34;
  v35 = v34[1];
  v37 = (v33 & 0xFFFFFFFFFFFFFFF8);
  *v37 = v36;
  v37[1] = v35;

  return a1;
}

uint64_t sub_18E71594C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = *(a3[2] - 8) + 24;
  (*v6)(a1, a2, a3[2]);
  v7 = *(v6 + 40);
  v8 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  v12 = *(a3[4] + 8);
  v38 = v5;
  v39 = swift_getAssociatedTypeWitness();
  v13 = *(v39 - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 80) | v11;
  v16 = ((v7 + v15 + v5) & ~v15);
  v17 = ((v7 + v15 + a2) & ~v15);
  v18 = *(v10 + 48);
  LODWORD(v5) = v18(v16, 1, AssociatedTypeWitness);
  v19 = v18(v17, 1, AssociatedTypeWitness);
  if (v5)
  {
    if (!v19)
    {
      (*(v10 + 16))(v16, v17, AssociatedTypeWitness);
      (*(v10 + 56))(v16, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v20 = *(v10 + 84);
    v21 = *(v10 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v10 + 24))(v16, v17, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v10 + 8))(v16, AssociatedTypeWitness);
    v20 = *(v10 + 84);
    v21 = *(v10 + 64);
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  memcpy(v16, v17, v22);
LABEL_12:
  if (*(v10 + 84))
  {
    v23 = *(v10 + 64);
  }

  else
  {
    v23 = *(v10 + 64) + 1;
  }

  v24 = &v16[v14 + v23];
  v25 = &v17[v14 + v23];
  v26 = *(v13 + 48);
  v27 = v26(v24 & ~v14, 1, v39);
  v28 = v26(v25 & ~v14, 1, v39);
  if (v27)
  {
    if (v28)
    {
      v29 = *(v13 + 84);
      v30 = *(v13 + 64);
LABEL_20:
      if (v29)
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 + 1;
      }

      memcpy((v24 & ~v14), (v25 & ~v14), v31);
      goto LABEL_26;
    }

    (*(v13 + 16))(v24 & ~v14, v25 & ~v14, v39);
    (*(v13 + 56))(v24 & ~v14, 0, 1, v39);
  }

  else
  {
    if (v28)
    {
      (*(v13 + 8))(v24 & ~v14, v39);
      v29 = *(v13 + 84);
      v30 = *(v13 + 64);
      goto LABEL_20;
    }

    (*(v13 + 24))(v24 & ~v14, v25 & ~v14, v39);
  }

LABEL_26:
  v32 = *(v13 + 64) + ((v23 + v14) & ~v14);
  if (!*(v13 + 84))
  {
    ++v32;
  }

  v33 = (&v16[v32 + 7] & 0xFFFFFFFFFFFFFFF8);
  v34 = (&v17[v32 + 7] & 0xFFFFFFFFFFFFFFF8);
  v35 = v34[1];
  v36 = v33[1];
  *v33 = *v34;
  v33[1] = v35;

  return v38;
}

uint64_t sub_18E715D08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)(a1, a2, a3[2]);
  v7 = *(v6 + 32);
  v8 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  v12 = *(a3[4] + 8);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 80) | v11;
  v17 = ((v7 + v16 + a1) & ~v16);
  v18 = ((v7 + v16 + a2) & ~v16);
  if ((*(v10 + 48))(v18, 1, AssociatedTypeWitness))
  {
    v19 = *(v10 + 84);
    v20 = *(v10 + 64);
    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 + 1;
    }

    memcpy(v17, v18, v21);
  }

  else
  {
    (*(v10 + 32))(v17, v18, AssociatedTypeWitness);
    v23 = *(v10 + 56);
    v22 = v10 + 56;
    v23(v17, 0, 1, AssociatedTypeWitness);
    v19 = *(v22 + 28);
    v20 = *(v22 + 8);
  }

  if (v19)
  {
    v24 = v20;
  }

  else
  {
    v24 = v20 + 1;
  }

  v25 = &v17[v15 + v24];
  v26 = &v18[v15 + v24];
  if ((*(v14 + 48))(v26 & ~v15, 1, v13))
  {
    v27 = *(v14 + 84);
    v28 = *(v14 + 64);
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 + 1;
    }

    memcpy((v25 & ~v15), (v26 & ~v15), v29);
  }

  else
  {
    (*(v14 + 32))(v25 & ~v15, v26 & ~v15, v13);
    v31 = *(v14 + 56);
    v30 = v14 + 56;
    v31(v25 & ~v15, 0, 1, v13);
    v27 = *(v30 + 28);
    v28 = *(v30 + 8);
  }

  v32 = v28 + ((v24 + v15) & ~v15);
  if (!v27)
  {
    ++v32;
  }

  *(&v17[v32 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v18[v32 + 7] & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E715FB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = *(a3[2] - 8) + 40;
  (*v6)(a1, a2, a3[2]);
  v7 = *(v6 + 24);
  v8 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 80);
  v12 = *(a3[4] + 8);
  v36 = v5;
  v37 = swift_getAssociatedTypeWitness();
  v13 = *(v37 - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 80) | v11;
  v16 = ((v7 + v15 + v5) & ~v15);
  v17 = ((v7 + v15 + a2) & ~v15);
  v18 = *(v10 + 48);
  LODWORD(v5) = v18(v16, 1, AssociatedTypeWitness);
  v19 = v18(v17, 1, AssociatedTypeWitness);
  if (v5)
  {
    if (!v19)
    {
      (*(v10 + 32))(v16, v17, AssociatedTypeWitness);
      (*(v10 + 56))(v16, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v20 = *(v10 + 84);
    v21 = *(v10 + 64);
  }

  else
  {
    if (!v19)
    {
      (*(v10 + 40))(v16, v17, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v10 + 8))(v16, AssociatedTypeWitness);
    v20 = *(v10 + 84);
    v21 = *(v10 + 64);
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  memcpy(v16, v17, v22);
LABEL_12:
  if (*(v10 + 84))
  {
    v23 = *(v10 + 64);
  }

  else
  {
    v23 = *(v10 + 64) + 1;
  }

  v24 = &v16[v14 + v23];
  v25 = &v17[v14 + v23];
  v26 = *(v13 + 48);
  v27 = v26(v24 & ~v14, 1, v37);
  v28 = v26(v25 & ~v14, 1, v37);
  if (v27)
  {
    if (v28)
    {
      v29 = *(v13 + 84);
      v30 = *(v13 + 64);
LABEL_20:
      if (v29)
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 + 1;
      }

      memcpy((v24 & ~v14), (v25 & ~v14), v31);
      goto LABEL_26;
    }

    (*(v13 + 32))(v24 & ~v14, v25 & ~v14, v37);
    (*(v13 + 56))(v24 & ~v14, 0, 1, v37);
  }

  else
  {
    if (v28)
    {
      (*(v13 + 8))(v24 & ~v14, v37);
      v29 = *(v13 + 84);
      v30 = *(v13 + 64);
      goto LABEL_20;
    }

    (*(v13 + 40))(v24 & ~v14, v25 & ~v14, v37);
  }

LABEL_26:
  v32 = *(v13 + 64) + ((v23 + v14) & ~v14);
  if (!*(v13 + 84))
  {
    ++v32;
  }

  v33 = &v16[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v33 + 8);
  *v33 = *(&v17[v32 + 7] & 0xFFFFFFFFFFFFFFF8);

  return v36;
}

uint64_t sub_18E716368(_DWORD *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = a3[3];
  v43 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = a3[4];
  v14 = AssociatedTypeWitness;
  v15 = *(v13 + 8);
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  if (v18)
  {
    v19 = v18 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 <= v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= v7)
  {
    v21 = v7;
  }

  else
  {
    v21 = v20;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = *(v10 + 64);
  if (!v11)
  {
    ++v22;
  }

  v23 = *(v16 + 80);
  v24 = *(v16 + 64);
  if (v18)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = v23;
  v27 = v23 | *(v10 + 80);
  v28 = *(v6 + 64) + v27;
  v29 = v22 + v23;
  v30 = v25 + (v29 & ~v23);
  if (v21 >= a2)
  {
    goto LABEL_43;
  }

  v31 = ((v30 + (v28 & ~v27) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v31 & 0xFFFFFFF8) != 0)
  {
    v32 = 2;
  }

  else
  {
    v32 = a2 - v21 + 1;
  }

  if (v32 >= 0x10000)
  {
    v33 = 4;
  }

  else
  {
    v33 = 2;
  }

  if (v32 < 0x100)
  {
    v33 = 1;
  }

  if (v32 >= 2)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v35 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v35 = *(a1 + v31);
      if (!v35)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    v37 = v35 - 1;
    if ((v31 & 0xFFFFFFF8) != 0)
    {
      v37 = 0;
      v38 = *a1;
    }

    else
    {
      v38 = 0;
    }

    return v21 + (v38 | v37) + 1;
  }

  if (v34)
  {
    v35 = *(a1 + v31);
    if (*(a1 + v31))
    {
      goto LABEL_40;
    }
  }

LABEL_43:
  if (v7 == v21)
  {
    v39 = *(v6 + 48);

    return v39(a1, v7, v43);
  }

  else
  {
    v40 = (a1 + v28) & ~v27;
    if (v20 == v21)
    {
      if (v12 >= v19)
      {
        v41 = (*(v10 + 48))(v40, v11, v14);
      }

      else
      {
        v41 = (*(v17 + 48))((v29 + v40) & ~v26);
      }

      if (v41 >= 2)
      {
        return v41 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v42 = *((v40 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v42 >= 0xFFFFFFFF)
      {
        LODWORD(v42) = -1;
      }

      return (v42 + 1);
    }
  }
}

void sub_18E7166C4(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = a4[3];
  v7 = *(a4[2] - 8);
  v8 = *(v7 + 84);
  v50 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a4[4] + 8);
  v49 = AssociatedTypeWitness;
  v14 = 0;
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = *(v15 + 84);
  v17 = *(v7 + 64);
  if (v16)
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = v19;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  if (v11)
  {
    v21 = *(v10 + 64);
  }

  else
  {
    v21 = *(v10 + 64) + 1;
  }

  v22 = *(v15 + 80);
  v23 = *(v15 + 80) | *(v10 + 80);
  v24 = v17 + v23;
  v25 = (v17 + v23) & ~v23;
  v26 = v21 + v22;
  if (v16)
  {
    v27 = *(v15 + 64);
  }

  else
  {
    v27 = *(v15 + 64) + 1;
  }

  v28 = (v26 & ~*(v15 + 80)) + v27;
  v29 = ((v28 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 < a3)
  {
    if (((v28 + v25 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v30 = a3 - v20 + 1;
    }

    else
    {
      v30 = 2;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v14 = v31;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v29)
    {
      v32 = 1;
    }

    else
    {
      v32 = a2 - v20;
    }

    if (v29)
    {
      v33 = ~v20 + a2;
      bzero(a1, v29);
      *a1 = v33;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v29) = v32;
      }

      else
      {
        *(a1 + v29) = v32;
      }
    }

    else if (v14)
    {
      *(a1 + v29) = v32;
    }

    return;
  }

  v34 = a1;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    *(a1 + v29) = 0;
  }

  else if (v14)
  {
    *(a1 + v29) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_51;
  }

  if (!a2)
  {
    return;
  }

LABEL_51:
  if (v8 == v20)
  {
    v35 = v50;
    v36 = *(v7 + 56);
    v37 = a2;
    v38 = v8;

LABEL_54:
    v36(v34, v37, v38, v35);
    return;
  }

  v39 = (a1 + v24) & ~v23;
  if (v19 != v20)
  {
    v44 = ((v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v44 = a2 & 0x7FFFFFFF;
      v44[1] = 0;
    }

    else
    {
      *v44 = a2 - 1;
    }

    return;
  }

  if (v12 >= v18)
  {
    if (v12 >= a2)
    {
      v36 = *(v10 + 56);
      v37 = a2 + 1;
      v34 = ((a1 + v24) & ~v23);
      v38 = v11;
      v35 = v49;

      goto LABEL_54;
    }

    if (v21 <= 3)
    {
      v45 = ~(-1 << (8 * v21));
    }

    else
    {
      v45 = -1;
    }

    if (v21)
    {
      v46 = v45 & (~v12 + a2);
      if (v21 <= 3)
      {
        v47 = v21;
      }

      else
      {
        v47 = 4;
      }

      bzero(((a1 + v24) & ~v23), v21);
      if (v47 > 2)
      {
        if (v47 == 3)
        {
          *v39 = v46;
          *(v39 + 2) = BYTE2(v46);
        }

        else
        {
          *v39 = v46;
        }
      }

      else if (v47 == 1)
      {
        *v39 = v46;
      }

      else
      {
        *v39 = v46;
      }
    }
  }

  else
  {
    v40 = ((v26 + v39) & ~v22);
    if (v18 >= a2)
    {
      v48 = *(v15 + 56);

      v48((v26 + v39) & ~v22, a2 + 1);
    }

    else
    {
      if (v27 <= 3)
      {
        v41 = ~(-1 << (8 * v27));
      }

      else
      {
        v41 = -1;
      }

      if (v27)
      {
        v42 = v41 & (~v18 + a2);
        if (v27 <= 3)
        {
          v43 = v27;
        }

        else
        {
          v43 = 4;
        }

        bzero(v40, v27);
        if (v43 > 2)
        {
          if (v43 == 3)
          {
            *v40 = v42;
            v40[2] = BYTE2(v42);
          }

          else
          {
            *v40 = v42;
          }
        }

        else if (v43 == 1)
        {
          *v40 = v42;
        }

        else
        {
          *v40 = v42;
        }
      }
    }
  }
}

uint64_t sub_18E716BE0(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  swift_getAssociatedTypeWitness();
  result = sub_18E72B438();
  if (v5 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v6 = *(a1[4] + 8);
    swift_getAssociatedTypeWitness();
    result = sub_18E72B438();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E716CF4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  if (*(v10 + 84))
  {
    v11 = *(v10 + 64);
  }

  else
  {
    v11 = *(v10 + 64) + 1;
  }

  v12 = *(*(a3 + 32) + 8);
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v11 + v15;
  if (*(v14 + 84))
  {
    v17 = *(v14 + 64);
  }

  else
  {
    v17 = *(v14 + 64) + 1;
  }

  v18 = (*(v10 + 80) | *(v14 + 80));
  if (v18 > 7 || ((*(v10 + 80) | *(v14 + 80)) & 0x100000) != 0 || ((v11 + v15) & ~v15) + v17 > 0x18)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = (v21 + ((v18 + 16) & ~v18));
  }

  else
  {
    v22 = v13;
    v23 = ~v15;
    if ((*(v10 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v11);
    }

    else
    {
      (*(v10 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v10 + 56))(a1, 0, 1, AssociatedTypeWitness);
    }

    v24 = a1 + v16;
    v25 = a2 + v16;
    if ((*(v14 + 48))(v25 & v23, 1, v22))
    {
      memcpy((v24 & v23), (v25 & v23), v17);
    }

    else
    {
      (*(v14 + 16))(v24 & v23, v25 & v23, v22);
      (*(v14 + 56))(v24 & v23, 0, 1, v22);
    }
  }

  return a1;
}

uint64_t sub_18E716F70(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (!(*(v7 + 48))(a1, 1, AssociatedTypeWitness))
  {
    (*(v7 + 8))(a1, AssociatedTypeWitness);
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(a2[4] + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v9 + a1;
  if (!v8)
  {
    ++v14;
  }

  v15 = v14 + v13;
  v18 = *(v11 - 8);
  result = (*(v12 + 48))((v14 + v13) & ~v13, 1, v11);
  if (!result)
  {
    v17 = *(v18 + 8);

    return v17(v15 & ~v13, v11);
  }

  return result;
}

char *sub_18E717108(char *a1, char *a2, uint64_t a3)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(a2, 1, AssociatedTypeWitness))
  {
    v11 = *(v10 + 84);
    v12 = *(v10 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(a1, a2, v13);
  }

  else
  {
    (*(v10 + 16))(a1, a2, AssociatedTypeWitness);
    v15 = *(v10 + 56);
    v14 = v10 + 56;
    v15(a1, 0, 1, AssociatedTypeWitness);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = *(*(a3 + 32) + 8);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 80);
  v21 = v16 + v20;
  v22 = &a1[v16 + v20];
  v23 = &a2[v21];
  if ((*(v19 + 48))(v23 & ~v20, 1, v18))
  {
    if (*(v19 + 84))
    {
      v24 = *(v19 + 64);
    }

    else
    {
      v24 = *(v19 + 64) + 1;
    }

    memcpy((v22 & ~v20), (v23 & ~v20), v24);
  }

  else
  {
    (*(v19 + 16))(v22 & ~v20, v23 & ~v20, v18);
    (*(v19 + 56))(v22 & ~v20, 0, 1, v18);
  }

  return a1;
}

char *sub_18E717304(char *a1, char *a2, uint64_t a3)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1, 1, AssociatedTypeWitness);
  v13 = v11(a2, 1, AssociatedTypeWitness);
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v10 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v10 + 24))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v10 + 8))(a1, AssociatedTypeWitness);
    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(a1, a2, v16);
LABEL_12:
  if (*(v10 + 84))
  {
    v17 = *(v10 + 64);
  }

  else
  {
    v17 = *(v10 + 64) + 1;
  }

  v18 = *(*(a3 + 32) + 8);
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v22 = v17 + v21;
  v23 = &a1[v17 + v21];
  v24 = &a2[v22];
  v25 = *(v20 + 48);
  v26 = v25(v23 & ~v21, 1, v19);
  v27 = v25(v24 & ~v21, 1, v19);
  if (v26)
  {
    if (!v27)
    {
      (*(v20 + 16))(v23 & ~v21, v24 & ~v21, v19);
      (*(v20 + 56))(v23 & ~v21, 0, 1, v19);
      return a1;
    }

    v28 = *(v20 + 84);
    v29 = *(v20 + 64);
  }

  else
  {
    if (!v27)
    {
      (*(v20 + 24))(v23 & ~v21, v24 & ~v21, v19);
      return a1;
    }

    v31 = *(v20 + 8);
    v30 = v20 + 8;
    v31(v23 & ~v21, v19);
    v28 = *(v30 + 76);
    v29 = *(v30 + 56);
  }

  if (v28)
  {
    v32 = v29;
  }

  else
  {
    v32 = v29 + 1;
  }

  memcpy((v23 & ~v21), (v24 & ~v21), v32);
  return a1;
}

char *sub_18E7175EC(char *a1, char *a2, uint64_t a3)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(a2, 1, AssociatedTypeWitness))
  {
    v11 = *(v10 + 84);
    v12 = *(v10 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(a1, a2, v13);
  }

  else
  {
    (*(v10 + 32))(a1, a2, AssociatedTypeWitness);
    v15 = *(v10 + 56);
    v14 = v10 + 56;
    v15(a1, 0, 1, AssociatedTypeWitness);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = *(*(a3 + 32) + 8);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 80);
  v21 = v16 + v20;
  v22 = &a1[v16 + v20];
  v23 = &a2[v21];
  if ((*(v19 + 48))(v23 & ~v20, 1, v18))
  {
    if (*(v19 + 84))
    {
      v24 = *(v19 + 64);
    }

    else
    {
      v24 = *(v19 + 64) + 1;
    }

    memcpy((v22 & ~v20), (v23 & ~v20), v24);
  }

  else
  {
    (*(v19 + 32))(v22 & ~v20, v23 & ~v20, v18);
    (*(v19 + 56))(v22 & ~v20, 0, 1, v18);
  }

  return a1;
}

char *sub_18E7177E8(char *a1, char *a2, uint64_t a3)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1, 1, AssociatedTypeWitness);
  v13 = v11(a2, 1, AssociatedTypeWitness);
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v10 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v10 + 40))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v10 + 8))(a1, AssociatedTypeWitness);
    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(a1, a2, v16);
LABEL_12:
  if (*(v10 + 84))
  {
    v17 = *(v10 + 64);
  }

  else
  {
    v17 = *(v10 + 64) + 1;
  }

  v18 = *(*(a3 + 32) + 8);
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v22 = v17 + v21;
  v23 = &a1[v17 + v21];
  v24 = &a2[v22];
  v25 = *(v20 + 48);
  v26 = v25(v23 & ~v21, 1, v19);
  v27 = v25(v24 & ~v21, 1, v19);
  if (v26)
  {
    if (!v27)
    {
      (*(v20 + 32))(v23 & ~v21, v24 & ~v21, v19);
      (*(v20 + 56))(v23 & ~v21, 0, 1, v19);
      return a1;
    }

    v28 = *(v20 + 84);
    v29 = *(v20 + 64);
  }

  else
  {
    if (!v27)
    {
      (*(v20 + 40))(v23 & ~v21, v24 & ~v21, v19);
      return a1;
    }

    v31 = *(v20 + 8);
    v30 = v20 + 8;
    v31(v23 & ~v21, v19);
    v28 = *(v30 + 76);
    v29 = *(v30 + 56);
  }

  if (v28)
  {
    v32 = v29;
  }

  else
  {
    v32 = v29 + 1;
  }

  memcpy((v23 & ~v21), (v24 & ~v21), v32);
  return a1;
}

uint64_t sub_18E717AD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a3 + 32) + 8);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  if (v11)
  {
    v19 = *(v10 + 64);
  }

  else
  {
    v19 = *(v10 + 64) + 1;
  }

  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v16)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v19 + v20;
  if (a2 <= v18)
  {
LABEL_40:
    if (v12 >= v17)
    {
      v31 = (*(v10 + 48))(a1, v11, AssociatedTypeWitness);
    }

    else
    {
      v31 = (*(v15 + 48))((a1 + v23) & ~v20);
    }

    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  v24 = v22 + (v23 & ~v20);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v27 = ((a2 - v18 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v27 < 2)
    {
LABEL_39:
      if (v18)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_39;
  }

LABEL_26:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v29 = v24;
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v18 + (v30 | v28) + 1;
}