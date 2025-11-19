void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_28;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v20 = (v19 + 32 * a5);
      result = *v20;
      v22 = v20[2];
      v21 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v21)
        {
          if (a4)
          {
            v24 = v22 == a3 && v21 == a4;
            if (v24 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
LABEL_27:
              result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              break;
            }
          }
        }

        else if (!a4)
        {
          goto LABEL_27;
        }
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_28:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C10InvitationC13PendingMemberVyAC0C5GroupC_GGMd, &_ss11_SetStorageCy14NearbySessions0C10InvitationC13PendingMemberVyAC0C5GroupC_GGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        outlined init with copy of NearbyInvitation<NearbyGroup>.PendingMember(*(v2 + 48) + v17, v18);
        result = outlined init with take of NearbyInvitation<NearbyGroup>.PendingMember(v18, *(v4 + 48) + v17);
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

      v16 = *(v2 + 56 + 8 * v8);
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

{
  v1 = v0;
  v2 = type metadata accessor for AddressableMember();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C5GroupC6MemberVGMd, &_ss11_SetStorageCy14NearbySessions0C5GroupC6MemberVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C10InvitationC13PendingMemberVyAC0C5GroupC_GGMd, &_ss11_SetStorageCy14NearbySessions0C10InvitationC13PendingMemberVyAC0C5GroupC_GGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      outlined init with copy of NearbyInvitation<NearbyGroup>.PendingMember(*(v3 + 48) + 16 * (v14 | (v7 << 6)), v25);
      v17 = *(v6 + 40);
      Hasher.init(_seed:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = outlined init with take of NearbyInvitation<NearbyGroup>.PendingMember(v25, *(v6 + 48) + 16 * v13);
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for AddressableMember();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14NearbySessions0C5GroupC6MemberVGMd, &_ss11_SetStorageCy14NearbySessions0C5GroupC6MemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();

      v35 = v20;
      String.hash(into:)();
      if (v23)
      {
        Hasher._combine(_:)(1u);
        v25 = v22;
        String.hash(into:)();
      }

      else
      {
        v25 = v22;
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      v3 = v34;
      *v15 = v35;
      v15[1] = v21;
      v15[2] = v25;
      v15[3] = v23;
      ++*(v6 + 16);
      v11 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = specialized Set._Variant._migrateToNative(_:removing:)();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for NearbyAdvertisement(0);
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(&_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMd, &_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMR);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  specialized _NativeSet._delete(at:)(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E13AdvertisementC_Tt1g5Tm(v4, v3, &_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMd, &_ss11_SetStorageCy14NearbySessions0C13AdvertisementCGMR, type metadata accessor for NearbyAdvertisement);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for NearbyAdvertisement(0);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  specialized _NativeSet._delete(at:)(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *specialized NearbyInvitationScanner.init(provider:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  UUID.init()();
  v8 = direct field offset for NearbyInvitationScanner.invitationDataBlobs;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMd, &_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMR);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + v8) = PassthroughSubject.init()();
  v12 = direct field offset for NearbyInvitationScanner._advertisements;
  v13 = *(v2 + 80);
  v14 = *(v2 + 88);
  v18[1] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A13AdvertisementCGMd, &_sShy14NearbySessions0A13AdvertisementCGMR);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v12, v7, v3);
  *(v1 + direct field offset for NearbyInvitationScanner.setup) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static NearbyInvitationsController.shared;
  *(v1 + direct field offset for NearbyInvitationScanner.controller) = static NearbyInvitationsController.shared;
  type metadata accessor for NearbyInvitationScanner();

  specialized NearbyInvitationsController.addObserver(_:)(v16, v15);

  return v1;
}

void *specialized NearbyInvitationScanner.init(provider:configuration:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C13AdvertisementCGGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  UUID.init()();
  v10 = direct field offset for NearbyInvitationScanner.invitationDataBlobs;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMd, &_s7Combine18PassthroughSubjectCySS_10Foundation4DataVts5NeverOGMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v1 + v10) = PassthroughSubject.init()();
  v14 = direct field offset for NearbyInvitationScanner._advertisements;
  v15 = *(v4 + 80);
  v16 = *(v4 + 88);
  v24[1] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A13AdvertisementCGMd, &_sShy14NearbySessions0A13AdvertisementCGMR);
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v14, v9, v5);
  if (a1)
  {
    v17 = objc_allocWithZone(MEMORY[0x277CFD160]);
    v18 = a1;
    v19 = [v17 init];
    v20 = [v19 wranglerHomePodBoopEnabled];

    if ((v20 & 1) == 0)
    {

      a1 = 0;
    }
  }

  *(v2 + direct field offset for NearbyInvitationScanner.setup) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v21 = static NearbyInvitationsController.shared;
  *(v2 + direct field offset for NearbyInvitationScanner.controller) = static NearbyInvitationsController.shared;
  type metadata accessor for NearbyInvitationScanner();

  specialized NearbyInvitationsController.addObserver(_:)(v22, v21);

  return v2;
}

void type metadata completion function for NearbyInvitationScanner()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<Set<NearbyAdvertisement>>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of NearbyInvitationScanner.start()()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return v6();
}

uint64_t dispatch thunk of NearbyInvitationScanner.stop()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return v6();
}

void type metadata accessor for Published<Set<NearbyAdvertisement>>()
{
  if (!lazy cache variable for type metadata for Published<Set<NearbyAdvertisement>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy14NearbySessions0A13AdvertisementCGMd, &_sShy14NearbySessions0A13AdvertisementCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Set<NearbyAdvertisement>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddressableMember();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in closure #2 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(NSObject *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  closure #1 in closure #2 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(a1, v4);
}

uint64_t partial apply for closure #1 in closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions14InvitationBlobCs5Error_pGMd, &_sScCy14NearbySessions14InvitationBlobCs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #3 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(a1, a2, v2 + v6, v9, v10, v11);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(void *a1, uint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMd, &_sScCy14NearbySessions0A29InvitationJoinRequestMetadataCSgs5Error_pGMR) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in NearbyInvitationScanner<>.request(_:displayName:userInfo:)(a1, a2);
}

void *partial apply for closure #1 in closure #1 in NearbyInvitationScanner.stop()(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in NearbyInvitationScanner.stop()(a1);
}

uint64_t partial apply for closure #2 in closure #1 in NearbyInvitationScanner.start()(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  return closure #1 in closure #1 in NearbyInvitationScanner.start()(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined init with copy of NearbyInvitation<NearbyGroup>.PendingMember(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of NearbyInvitation<NearbyGroup>.PendingMember(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMd, &_s14NearbySessions0A10InvitationC13PendingMemberVyAA0A5GroupC_GMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NearbyGroupSessionProvider.nearbyGroup.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t NearbyGroupSessionProvider.nearbyGroup.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t NearbyGroupSessionProvider.members.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t NearbyGroupSessionProvider.members.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t NearbyGroupSessionProvider.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NearbyGroupSessionProvider.id.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t NearbyGroupSessionProvider.state.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t NearbyGroupSessionProvider.state.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t NearbyGroupSessionProvider.cancellables.getter()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NearbyGroupSessionProvider.cancellables.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*NearbyGroupSessionProvider.cancellables.modify())()
{
  v1 = *(*v0 + 136);
  swift_beginAccess();
  return static NearbyGroupInterface.identity.modify;
}

uint64_t NearbyGroupSessionProvider.localMember.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  return outlined init with copy of (UUID, Bool)(v1 + v3, a1, &_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
}

uint64_t NearbyGroupSessionProvider.localMember.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  outlined assign with take of Member?(a1, v1 + v3);
  return swift_endAccess();
}

char *NearbyGroupSessionProvider.__allocating_init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = specialized NearbyGroupSessionProvider.init(nearbyGroup:activity:)(a1, a2);
  (*(*(*(v3 + 80) - 8) + 8))(a2);

  return v8;
}

char *NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = specialized NearbyGroupSessionProvider.init(nearbyGroup:activity:)(a1, a2);
  (*(*(*(v4 + 80) - 8) + 8))(a2);

  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D5GroupC6MemberVG_0F10Activities011AddressableG0Vs5NeverOTg504_s14d12Sessions0A20f69SessionProviderC06nearbyC08activityACyxGAA0aC0C_xtcfc0C10Activities17iG12VAH0J0VXEfU_Tf1cn_nTm(uint64_t a1)
{
  v40 = type metadata accessor for AddressableMember();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v33[1] = v1;
  v42 = MEMORY[0x277D84F90];
  v35 = v5;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = v42;
  v10 = v35 + 56;
  v11 = -1 << *(v35 + 32);
  result = _HashTable.startBucket.getter();
  v13 = result;
  v14 = v35;
  v15 = 0;
  v38 = v3 + 32;
  v39 = v3;
  v34 = v35 + 64;
  v36 = v8;
  v37 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v18 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v41 = *(v14 + 36);
    v19 = (*(v14 + 48) + 32 * v13);
    v20 = *v19;
    v21 = v19[1];
    v22 = v14;

    AddressableMember.init(handle:)();
    v42 = v9;
    v23 = v7;
    v25 = *(v9 + 16);
    v24 = *(v9 + 24);
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
      v9 = v42;
    }

    *(v9 + 16) = v25 + 1;
    result = (*(v39 + 32))(v9 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, v23, v40);
    v16 = 1 << *(v22 + 32);
    if (v13 >= v16)
    {
      goto LABEL_23;
    }

    v14 = v22;
    v10 = v37;
    v26 = *(v37 + 8 * v18);
    if ((v26 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v41 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v7 = v23;
    v27 = v26 & (-2 << (v13 & 0x3F));
    if (v27)
    {
      v16 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v17 = v36;
    }

    else
    {
      v28 = v18 << 6;
      v29 = v18 + 1;
      v30 = (v34 + 8 * v18);
      v17 = v36;
      while (v29 < (v16 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = outlined consume of Set<NearbyGroup.Member>.Index._Variant(v13, v41, 0);
          v14 = v35;
          v16 = __clz(__rbit64(v31)) + v28;
          goto LABEL_19;
        }
      }

      result = outlined consume of Set<NearbyGroup.Member>.Index._Variant(v13, v41, 0);
      v14 = v35;
LABEL_19:
      v7 = v23;
    }

    ++v15;
    v13 = v16;
    if (v15 == v17)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for AddressableMember();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E5GroupC6MemberVG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VyShy14NearbySessions0E5GroupC6MemberVG_GGMR);
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMR);
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMR);
  v5[24] = v15;
  v16 = *(v15 - 8);
  v5[25] = v16;
  v17 = *(v16 + 64) + 15;
  v5[26] = swift_task_alloc();
  v18 = type metadata accessor for UUID();
  v5[27] = v18;
  v19 = *(v18 - 8);
  v5[28] = v19;
  v20 = *(v19 + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), 0, 0);
}

uint64_t closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)()
{
  v39 = v0;
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v2, static Log.provider);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v36 = v4;
    v5 = v0[31];
    v6 = v0[32];
    v7 = v0[27];
    v8 = v0[28];
    v9 = v0[12];
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v10 = 136315138;
    v11 = *(v8 + 16);
    v11(v6, v9 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    outlined init with copy of (UUID, Bool)(v6, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      v12 = 0xE300000000000000;
      v13 = 7104878;
    }

    else
    {
      v14 = v0[30];
      v15 = v0[28];
      v16 = v0[29];
      v17 = v0[27];
      (*(v15 + 32))(v14, v0[31], v17);
      v11(v16, v14, v17);
      v13 = String.init<A>(reflecting:)();
      v12 = v18;
      (*(v15 + 8))(v14, v17);
    }

    outlined destroy of NSObject?(v0[32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v38);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_25B7C4000, v3, v36, "Starting task to listen for NearbyGroup updates for members: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x25F86FE20](v35, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v20 = v0[26];
  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[20];
  v24 = v0[21];
  v25 = v0[18];
  v26 = v0[19];
  v27 = v0[12];
  v37 = v0[13];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v28 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<Set<NearbyGroup.Member>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMR);
  MEMORY[0x25F86EF60](v24, v28);
  (*(v22 + 8))(v21, v24);
  AsyncPublisher.makeAsyncIterator()();
  (*(v26 + 8))(v23, v25);
  swift_beginAccess();
  v29 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<NearbyGroup.Member>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMR);
  v30 = *(MEMORY[0x277D856D0] + 4);
  v31 = swift_task_alloc();
  v0[34] = v31;
  *v31 = v0;
  v31[1] = closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  v32 = v0[26];
  v33 = v0[24];

  return MEMORY[0x282200308](v0 + 8, v33, v29);
}

{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  else
  {
    v3 = closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  *(v0 + 288) = *(v0 + 64);
  return MEMORY[0x2822009F8](closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), 0, 0);
}

{
  v50 = v0;
  v1 = v0[36];
  if (v1)
  {
    v2 = v0[13];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v0[33];

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v49 = v9;
        *v8 = 136315138;
        lazy protocol witness table accessor for type NearbyGroup.Member and conformance NearbyGroup.Member();
        v10 = Set.description.getter();
        v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v49);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_25B7C4000, v6, v7, "Updating session provider with participants: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x25F86FE20](v9, -1, -1);
        MEMORY[0x25F86FE20](v8, -1, -1);
      }

      v13 = v0[35];
      v14 = v0[14];
      (*(*v4 + 176))();
      v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D5GroupC6MemberVG_0F10Activities011AddressableG0Vs5NeverOTg504_s14d12Sessions0A20f69SessionProviderC06nearbyC08activityACyxGAA0aC0C_xtcfc0C10Activities17iG12VAH0J0VXEfU_Tf1cn_nTm(v1);

      v16 = *(v15 + 16);
      v17 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
      v18 = MEMORY[0x25F86F230](v16, v14, v17);
      v0[10] = v18;
      v19 = *(v15 + 16);
      if (v19)
      {
        v20 = v0[15];
        v21 = v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
        v22 = *(v20 + 72);
        v23 = *(v20 + 16);
        do
        {
          v25 = v0[16];
          v24 = v0[17];
          v27 = v0[14];
          v26 = v0[15];
          v23(v24, v21, v27);
          specialized Set._Variant.insert(_:)(v25, v24);
          (*(v26 + 8))(v25, v27);
          v21 += v22;
          --v19;
        }

        while (v19);

        v28 = v0[10];
      }

      else
      {
        v28 = v18;
      }

      v0[11] = v28;
      CurrentValueSubject.send(_:)();

      v44 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<Set<NearbyGroup.Member>>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VyShy14NearbySessions0F5GroupC6MemberVG_G_GMR);
      v45 = *(MEMORY[0x277D856D0] + 4);
      v46 = swift_task_alloc();
      v0[34] = v46;
      *v46 = v0;
      v46[1] = closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
      v47 = v0[26];
      v48 = v0[24];

      return MEMORY[0x282200308](v0 + 8, v48, v44);
    }

    (*(v0[25] + 8))(v0[26], v0[24]);
  }

  else
  {
    v29 = v0[33];
    (*(v0[25] + 8))(v0[26], v0[24]);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_25B7C4000, v30, v31, "Subscription ended on NearbySession", v32, 2u);
      MEMORY[0x25F86FE20](v32, -1, -1);
    }
  }

  v34 = v0[31];
  v33 = v0[32];
  v36 = v0[29];
  v35 = v0[30];
  v37 = v0[26];
  v38 = v0[23];
  v39 = v0[20];
  v41 = v0[16];
  v40 = v0[17];

  v42 = v0[1];

  return v42();
}

{
  *(v0 + 72) = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of (UUID, Bool)(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of NSObject?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for GroupSessionProviderState();
  v7[14] = v8;
  v9 = *(v8 - 8);
  v7[15] = v9;
  v10 = *(v9 + 64) + 15;
  v7[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy14NearbySessions0E5GroupC5StateO_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0Vy14NearbySessions0E5GroupC5StateO_GGMR);
  v7[17] = v11;
  v12 = *(v11 - 8);
  v7[18] = v12;
  v13 = *(v12 + 64) + 15;
  v7[19] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMR);
  v7[20] = v14;
  v15 = *(v14 - 8);
  v7[21] = v15;
  v16 = *(v15 + 64) + 15;
  v7[22] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMR);
  v7[23] = v17;
  v18 = *(v17 - 8);
  v7[24] = v18;
  v19 = *(v18 + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), 0, 0);
}

uint64_t closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)()
{
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 208) = __swift_project_value_buffer(v1, static Log.provider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Starting task to listen for NearbyGroup state updates.", v4, 2u);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v5 = *(v0 + 200);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v12 = *(v0 + 80);
  v20 = *(v0 + 88);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v13 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<NearbyGroup.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMR);
  MEMORY[0x25F86EF60](v9, v13);
  (*(v7 + 8))(v6, v9);
  AsyncPublisher.makeAsyncIterator()();
  (*(v11 + 8))(v8, v10);
  swift_beginAccess();
  *(v0 + 256) = *MEMORY[0x277CCB1A0];
  v14 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroup.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMR);
  v15 = *(MEMORY[0x277D856D0] + 4);
  v16 = swift_task_alloc();
  *(v0 + 216) = v16;
  *v16 = v0;
  v16[1] = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  v17 = *(v0 + 200);
  v18 = *(v0 + 184);

  return MEMORY[0x282200308](v0 + 64, v18, v14);
}

{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  else
  {
    v3 = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), 0, 0);
}

{
  v33 = v0;
  v1 = v0[8];
  v0[29] = v1;
  if (v1 < 2)
  {
    outlined consume of NearbyGroup.State?(v1);
    v2 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroup.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMR);
    v3 = *(MEMORY[0x277D856D0] + 4);
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
    v5 = v0[25];
    v6 = v0[23];

    return MEMORY[0x282200308](v0 + 8, v6, v2);
  }

  if (v1 == 2)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
  }

  else
  {
    v7 = v0[26];
    v8 = v0[10];
    v9 = v1;
    outlined copy of NearbyGroup.State?(v1);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[10];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136315138;
      v15 = NearbyGroup.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_25B7C4000, v10, v11, "NearbyGroup %s invalidated.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x25F86FE20](v14, -1, -1);
      MEMORY[0x25F86FE20](v13, -1, -1);
    }

    v18 = v0[11];
    Strong = swift_weakLoadStrong();
    v0[30] = Strong;
    if (Strong)
    {
      v21 = v0[12];
      v20 = v0[13];
      v22 = *(MEMORY[0x277CCB158] + 4);
      v23 = swift_task_alloc();
      v0[31] = v23;
      v24 = type metadata accessor for NearbyGroupSessionProvider();
      WitnessTable = swift_getWitnessTable();
      *v23 = v0;
      v23[1] = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);

      return MEMORY[0x28211FBF8](v24, WitnessTable);
    }

    (*(v0[24] + 8))(v0[25], v0[23]);
    outlined consume of NearbyGroup.State?(v9);
    outlined consume of NearbyGroup.State?(v9);
  }

  v26 = v0[25];
  v27 = v0[22];
  v28 = v0[19];
  v29 = v0[16];

  v30 = v0[1];

  return v30();
}

{
  *(v0 + 72) = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v2 = *(*v1 + 248);
  v5 = *v1;

  if (v0)
  {

    v3 = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  else
  {
    v3 = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 256);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  (*(**(v0 + 240) + 224))();
  *v3 = v1;
  (*(v4 + 104))(v3, v2, v5);
  outlined copy of NearbyGroup.State(v1);
  CurrentValueSubject.send(_:)();

  outlined consume of NearbyGroup.State?(v1);
  outlined consume of NearbyGroup.State?(v1);
  (*(v4 + 8))(v3, v5);
  v6 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<NearbyGroup.State>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0Vy14NearbySessions0F5GroupC5StateO_G_GMR);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  *v8 = v0;
  v8[1] = closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:);
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);

  return MEMORY[0x282200308](v0 + 64, v10, v6);
}

char *NearbyGroupSessionProvider.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.provider);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = (*(*v0 + 304))();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_25B7C4000, v4, v5, "%s Deinit'd", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + 2);

  v13 = *(v1 + 3);

  v14 = *(v1 + 5);

  v15 = *(v1 + 6);

  (*(*(*(v2 + 80) - 8) + 8))(&v1[*(*v1 + 128)]);
  v16 = *&v1[*(*v1 + 136)];

  outlined destroy of NSObject?(&v1[*(*v1 + 144)], &_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  return v1;
}

uint64_t NearbyGroupSessionProvider.__deallocating_deinit()
{
  NearbyGroupSessionProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t NearbyGroupSessionProvider.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(48);
  MEMORY[0x25F86F070](0xD00000000000001BLL, 0x800000025B8307D0);
  v2 = *(v1 + 80);
  v3 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  v4 = MEMORY[0x25F86F070](0x203A6469202CLL, 0xE600000000000000);
  v5 = (*(*v0 + 200))(v4);
  MEMORY[0x25F86F070](v5);

  MEMORY[0x25F86F070](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance NearbyGroupSessionProvider<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 200))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities17AddressableMemberVGMR);
  v10 = *(type metadata accessor for AddressableMember() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AddressableMember() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *v2;
  v54 = a2;
  v55 = v53;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v53 - v7;
  v8 = type metadata accessor for GroupSessionProviderState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x277CCB1A8];
  v14 = *(v9 + 104);
  v14(v12, v13, v8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v2[6] = CurrentValueSubject.init(_:)();
  v18 = v2 + 6;
  *(v2 + *(*v2 + 136)) = MEMORY[0x277D84FA0];
  v19 = &v3[*(*v3 + 144)];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v2[4] = UUID.uuidString.getter();
  v2[5] = v20;
  v14(v12, v13, v8);
  v21 = *(v15 + 48);
  v22 = *(v15 + 52);
  swift_allocObject();
  v23 = CurrentValueSubject.init(_:)();
  swift_beginAccess();
  v24 = *v18;
  *v18 = v23;

  v25 = *(v53 + 80);
  (*(*(v25 - 8) + 16))(&v3[*(*v3 + 128)], v54, v25);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy14NearbySessions0D5GroupC6MemberVG_0F10Activities011AddressableG0Vs5NeverOTg504_s14d12Sessions0A20f69SessionProviderC06nearbyC08activityACyxGAA0aC0C_xtcfc0C10Activities17iG12VAH0J0VXEfU_Tf1cn_nTm(v57);

  v27 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(v26);

  *&v57 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = CurrentValueSubject.init(_:)();
  *(v3 + 2) = a1;
  *(v3 + 3) = v31;
  v32 = a1;
  v33 = (a1 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle);
  swift_beginAccess();
  if (v33[1])
  {
    v34 = *v33;
    *(&v58 + 1) = type metadata accessor for AddressableMember();
    v59 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
    __swift_allocate_boxed_opaque_existential_1(&v57);

    AddressableMember.init(handle:)();
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
  }

  v35 = *(*v3 + 144);
  swift_beginAccess();
  outlined assign with take of Member?(&v57, &v3[v35]);
  swift_endAccess();
  v36 = type metadata accessor for TaskPriority();
  v37 = *(v36 - 8);
  v53 = *(v37 + 56);
  v54 = v37 + 56;
  v38 = v56;
  (v53)(v56, 1, 1, v36);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v25;
  v55 = *(v55 + 88);
  v40[5] = v55;
  v40[6] = a1;
  v40[7] = v39;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), v40);
  v41 = type metadata accessor for AnyCancellable();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();

  AnyCancellable.init(_:)();
  v44 = v25;
  v45 = v32;
  v46 = *(*v3 + 136);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (v53)(v38, 1, 1, v36);
  v47 = swift_allocObject();
  swift_weakInit();

  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v49 = v55;
  v48[4] = v44;
  v48[5] = v49;
  v48[6] = v45;
  v48[7] = v47;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:), v48);
  v50 = *(v41 + 48);
  v51 = *(v41 + 52);
  swift_allocObject();

  AnyCancellable.init(_:)();
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v3;
}

uint64_t type metadata completion function for NearbyGroupSessionProvider(uint64_t a1)
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

uint64_t outlined assign with take of Member?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return closure #2 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(a1, v6, v7, v9, v8);
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t partial apply for closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return closure #4 in NearbyGroupSessionProvider.init(nearbyGroup:activity:)(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void outlined consume of NearbyGroup.State?(id a1)
{
  if (a1 != 2)
  {
    outlined consume of NearbyGroup.State(a1);
  }
}

id outlined copy of NearbyGroup.State?(id result)
{
  if (result != 2)
  {
    return outlined copy of NearbyGroup.State(result);
  }

  return result;
}

id outlined copy of NearbyGroup.State(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NearbyGroupTable.cleanUpIfNotPresent(_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_43(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t outlined consume of Set<NearbyGroup.Member>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t NearbyGroup.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NearbyGroupMember();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, type metadata accessor for NearbyGroupMember);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v27;
    v3 = v28;
    v5 = v29;
    v4 = v30;
    v6 = v31;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v10 = (v5 + 64) >> 6;
  v11 = MEMORY[0x277D84F90];
  v24 = v3;
  v25 = v1;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v4;
    v13 = v6;
    v14 = v4;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      outlined consume of Set<NearbyGroupMember>.Iterator._Variant();
      return v11;
    }

    while (1)
    {
      v26 = v15;
      v18 = *&v16[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
      v17 = *&v16[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle + 8];
      v19 = *&v16[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
      v20 = *&v16[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID + 8];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v22 + 1;
      v23 = (v11 + 32 * v22);
      v23[4] = v18;
      v23[5] = v17;
      v23[6] = v19;
      v23[7] = v20;
      v4 = v14;
      v1 = v25;
      v6 = v26;
      v3 = v24;
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for NearbyGroupMember();
        swift_dynamicCast();
        v16 = v32;
        v14 = v4;
        v15 = v6;
        if (v32)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMR);
  v4 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<Published<[UUID : NearbyGroupConnectionInfo]>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMR);
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5TQ0_;

  return MEMORY[0x282200308](v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5TQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5TY2_;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = dispatch thunk of Actor.unownedExecutor.getter();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = NearbyInvitationsController.createGroup(with:);
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5TY2_()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t InvitationRequest<>.request()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMd, &_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMR);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14NearbySessions0A5GroupCGMd, &_sScSy14NearbySessions0A5GroupCGMR);
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy14NearbySessions0B5GroupC_GMd, &_sScS8IteratorVy14NearbySessions0B5GroupC_GMR);
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v15 = *(v14 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](InvitationRequest<>.request(), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = InvitationRequest<>.request();
  }

  else
  {
    v5 = InvitationRequest<>.request();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t InvitationRequest<>.request()()
{
  v18 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  v0[26] = __swift_project_value_buffer(v2, static Log.group);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[7] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25B7C4000, v3, v4, "Requesting to be let in with request: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  v11 = *(*v0[9] + 200);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = InvitationRequest<>.request();
  v14 = v0[9];

  return v16();
}

{
  v67 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 224);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v66[0] = v7;
    *v6 = 136315138;
    v8 = *(v5 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8);
    if (v8)
    {
      *(v0 + 16) = *(v5 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier);
      *(v0 + 24) = v8;

      v9 = String.init<A>(reflecting:)();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v66);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_25B7C4000, v3, v4, "Waiting for group with ID: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  v13 = *(v0 + 224);
  v14 = &v13[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier];
  if (!*&v13[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8])
  {
    goto LABEL_9;
  }

  v15 = *(v0 + 168);
  v16 = *(v0 + 176);
  v17 = *(v0 + 160);
  v18 = *v14;
  v19 = *(v14 + 1);

  UUID.init(uuidString:)();

  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 160), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v13 = *(v0 + 224);
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type InvitationRequest<NearbyGroup>.Errors and conformance InvitationRequest<A>.Errors, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMR);
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();

    v22 = *(v0 + 208);
    v23 = *(v0 + 72);

    v24 = v20;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 72);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66[0] = v29;
      *v28 = 136315394;
      *(v0 + 32) = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
      v30 = String.init<A>(reflecting:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v66);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      *(v0 + 40) = v20;
      v33 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v34 = String.init<A>(reflecting:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v66);

      *(v28 + 14) = v36;
      _os_log_impl(&dword_25B7C4000, v25, v26, "%s failed to request access, reason: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v29, -1, -1);
      MEMORY[0x25F86FE20](v28, -1, -1);
    }

    v38 = *(v0 + 192);
    v37 = *(v0 + 200);
    v39 = *(v0 + 184);
    v41 = *(v0 + 152);
    v40 = *(v0 + 160);
    v42 = *(v0 + 144);
    v43 = *(v0 + 120);
    v64 = *(v0 + 96);
    swift_willThrow();

    v44 = *(v0 + 8);

    return v44();
  }

  v46 = *(v0 + 200);
  v47 = *(v0 + 168);
  v48 = *(v0 + 176);
  v49 = *(v0 + 152);
  (*(v48 + 32))(v46, *(v0 + 160), v47);
  v50 = *(v48 + 16);
  *(v0 + 240) = v50;
  *(v0 + 248) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v50(v49, v46, v47);
  (*(v48 + 56))(v49, 0, 1, v47);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v51 = *(v0 + 152);
  v65 = *(v0 + 144);
  v53 = *(v0 + 112);
  v52 = *(v0 + 120);
  v55 = *(v0 + 96);
  v54 = *(v0 + 104);
  v57 = *(v0 + 80);
  v56 = *(v0 + 88);
  v58 = static NearbyInvitationsController.shared;
  v59 = swift_task_alloc();
  *(v59 + 16) = v58;
  *(v59 + 24) = v51;
  type metadata accessor for NearbyGroup();
  (*(v56 + 104))(v55, *MEMORY[0x277D85778], v57);
  AsyncStream.init(_:bufferingPolicy:_:)();

  outlined destroy of NSObject?(v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  AsyncStream.makeAsyncIterator()();
  (*(v53 + 8))(v52, v54);
  v60 = *(MEMORY[0x277D85798] + 4);
  v61 = swift_task_alloc();
  *(v0 + 256) = v61;
  *v61 = v0;
  v61[1] = InvitationRequest<>.request();
  v62 = *(v0 + 144);
  v63 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 48, 0, 0, v63);
}

{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](InvitationRequest<>.request(), 0, 0);
}

{
  v82 = v0;
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 248);
    v3 = *(v0 + 208);
    (*(v0 + 240))(*(v0 + 192), *(v0 + 200), *(v0 + 168));

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v79 = v1;
    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 240);
      v6 = *(v0 + 248);
      v69 = *(v0 + 192);
      v71 = v5;
      v8 = *(v0 + 176);
      v9 = *(v0 + 184);
      v10 = *(v0 + 168);
      v75 = *(v0 + 144);
      v77 = *(v0 + 200);
      v72 = *(v0 + 136);
      v73 = *(v0 + 128);
      v11 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v81[0] = v70;
      *v11 = 136315394;
      v7(v9, v1 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id, v10);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v15 = *(v8 + 8);
      v15(v9, v10);
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v81);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v15(v69, v10);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v81);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_25B7C4000, v4, v71, "Observed group: %s, waiting for %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v70, -1, -1);
      MEMORY[0x25F86FE20](v11, -1, -1);

      (*(v72 + 8))(v75, v73);
      v15(v77, v10);
    }

    else
    {
      v52 = *(v0 + 192);
      v51 = *(v0 + 200);
      v54 = *(v0 + 168);
      v53 = *(v0 + 176);
      v56 = *(v0 + 136);
      v55 = *(v0 + 144);
      v57 = *(v0 + 128);

      v58 = *(v53 + 8);
      v58(v52, v54);
      (*(v56 + 8))(v55, v57);
      v58(v51, v54);
    }

    v59 = *(v0 + 224);
    v61 = *(v0 + 192);
    v60 = *(v0 + 200);
    v62 = *(v0 + 184);
    v64 = *(v0 + 152);
    v63 = *(v0 + 160);
    v74 = *(v0 + 144);
    v76 = *(v0 + 120);
    v78 = *(v0 + 96);
    v65 = *(v0 + 64);
    v66 = *&v59[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo];
    v67 = *&v59[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8];
    outlined copy of Data?(v66, v67);

    *v65 = v66;
    v65[1] = v67;

    v68 = *(v0 + 8);

    return v68(v79);
  }

  else
  {
    v21 = *(v0 + 224);
    v22 = *(v0 + 200);
    v23 = *(v0 + 168);
    v24 = *(v0 + 176);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type InvitationRequest<NearbyGroup>.Errors and conformance InvitationRequest<A>.Errors, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMd, &_s14NearbySessions17InvitationRequestC6ErrorsOyAA0A5GroupC_GMR);
    v25 = swift_allocError();
    *v26 = 0;
    swift_willThrow();

    (*(v24 + 8))(v22, v23);
    v27 = *(v0 + 208);
    v28 = *(v0 + 72);

    v29 = v25;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 72);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v81[0] = v34;
      *v33 = 136315394;
      *(v0 + 32) = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
      v35 = String.init<A>(reflecting:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v81);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v0 + 40) = v25;
      v38 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v39 = String.init<A>(reflecting:)();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v81);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_25B7C4000, v30, v31, "%s failed to request access, reason: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v34, -1, -1);
      MEMORY[0x25F86FE20](v33, -1, -1);
    }

    v43 = *(v0 + 192);
    v42 = *(v0 + 200);
    v44 = *(v0 + 184);
    v46 = *(v0 + 152);
    v45 = *(v0 + 160);
    v47 = *(v0 + 144);
    v48 = *(v0 + 120);
    v80 = *(v0 + 96);
    swift_willThrow();

    v49 = *(v0 + 8);

    return v49();
  }
}

{
  v28 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[9];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315394;
    v0[4] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMd, &_s14NearbySessions17InvitationRequestCyAA0A5GroupCGMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v27);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[5] = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v27);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_25B7C4000, v5, v6, "%s failed to request access, reason: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v9, -1, -1);
    MEMORY[0x25F86FE20](v8, -1, -1);
  }

  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[23];
  v21 = v0[19];
  v20 = v0[20];
  v22 = v0[18];
  v23 = v0[15];
  v26 = v0[12];
  swift_willThrow();

  v24 = v0[1];

  return v24();
}

{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = NearbyInvitationScanner<>.request(_:displayName:userInfo:);

  return InvitationRequest<>.request()(v0 + 16);
}

uint64_t NearbyGroup.members.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_14NearbySessions0D11GroupMemberCs5NeverOTg504_s14d11Sessions0A5f71C7members7serviceACShySSG_AA0A25InvitationSessionProviderOtYaKcfcAA0aC6G8CSSXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v31 = MEMORY[0x277D84F90];
    v28 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v28 + 56;
    v5 = -1 << *(v28 + 32);
    result = _HashTable.startBucket.getter();
    v6 = v28;
    v7 = result;
    v8 = 0;
    v9 = *(v28 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v29 = v8;
      v12 = v4;
      v13 = (*(v6 + 48) + 16 * v7);
      v15 = *v13;
      v14 = v13[1];
      v16 = type metadata accessor for NearbyGroupMember();
      v17 = objc_allocWithZone(v16);
      v18 = &v17[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
      *v18 = v15;
      *(v18 + 1) = v14;
      v19 = &v17[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
      *v19 = 0;
      *(v19 + 1) = 0;
      v30.receiver = v17;
      v30.super_class = v16;

      objc_msgSendSuper2(&v30, sel_init);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = *(v31 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v6 = v28;
      v10 = 1 << *(v28 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v21 = *(v12 + 8 * v11);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v28 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v10 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v11 << 6;
        v24 = v11 + 1;
        v25 = (v28 + 64 + 8 * v11);
        while (v24 < (v10 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of Set<NearbyGroup.Member>.Index._Variant(v7, v9, 0);
            v6 = v28;
            v10 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<NearbyGroup.Member>.Index._Variant(v7, v9, 0);
        v6 = v28;
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v10;
      if (v29 + 1 == v2)
      {
        return v31;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t NearbyGroup.$members.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int NearbyGroup.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F86F720](a1);
  return Hasher._finalize()();
}

uint64_t NearbyGroup.Member.handle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NearbyGroup.Member.handle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NearbyGroup.Member.tokenDestination.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NearbyGroup.Member.tokenDestination.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static NearbyGroup.Member.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void NearbyGroup.Member.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NearbyGroup.Member.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
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

NearbySessions::NearbyGroup::Member __swiftcall NearbyGroup.Member.init(handle:tokenDestination:)(Swift::String handle, Swift::String_optional tokenDestination)
{
  v2->value = handle;
  v2[1] = tokenDestination;
  result.tokenDestination = tokenDestination;
  result.handle = handle;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyGroup.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
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

void protocol witness for Hashable.hash(into:) in conformance NearbyGroup.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyGroup.Member()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NearbyGroup.Member(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t key path getter for NearbyGroup.members : NearbyGroup@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for NearbyGroup.members : NearbyGroup(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for NearbyGroup.$members : NearbyGroup(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D5GroupC6MemberVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t key path getter for NearbyGroup.state : NearbyGroup@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for NearbyGroup.state : NearbyGroup(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of NearbyGroup.State(v2);

  return static Published.subscript.setter();
}

uint64_t key path getter for NearbyGroup.$members : NearbyGroup(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for NearbyGroup.$state : NearbyGroup(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy14NearbySessions0D5GroupC5StateO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t NearbyGroup.localMemberHandle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t NearbyGroup.__allocating_init(members:service:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyGroup.__allocating_init(members:service:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](NearbyGroup.__allocating_init(members:service:), 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t NearbyGroup.__allocating_init(members:service:)()
{
  v1 = v0[3];
  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_14NearbySessions0D11GroupMemberCs5NeverOTg504_s14d11Sessions0A5f71C7members7serviceACShySSG_AA0A25InvitationSessionProviderOtYaKcfcAA0aC6G8CSSXEfU_Tf1cn_n(v0[2]);

  UUID.init()();
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(v2);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static NearbyInvitationsController.shared;

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = NearbyGroup.__allocating_init(members:service:);
  v6 = v0[3];

  return specialized NearbyGroup.__allocating_init(id:members:controller:)(v6, v3, v4);
}

{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t NearbyGroup.__allocating_init(id:members:controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = NearbyGroup.__allocating_init(id:members:controller:);

  return specialized NearbyGroup.__allocating_init(id:members:controller:)(a1, a2, a3);
}

uint64_t NearbyGroup.__allocating_init(id:members:controller:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t NearbyGroup.__allocating_init(connectionInfo:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](NearbyGroup.__allocating_init(connectionInfo:), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = NearbyGroup.__allocating_init(connectionInfo:);
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = NearbyGroup.__allocating_init(connectionInfo:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t NearbyGroup.__allocating_init(connectionInfo:)()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v0[5] + 16))(v0[6], v2 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id, v0[4]);
  v3 = *(v2 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint);
  v0[7] = v3;
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = v3;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = NearbyGroup.__allocating_init(connectionInfo:);
  v8 = v0[6];

  return specialized NearbyGroup.init(id:endpoint:)(v8, v6);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2(v3);
}

{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

uint64_t closure #1 in NearbyGroup.init(id:members:controller:)()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t NearbyGroup.__allocating_init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = NearbyGroup.__allocating_init(id:endpoint:);

  return specialized NearbyGroup.init(id:endpoint:)(a1, a2);
}

uint64_t NearbyGroup.__allocating_init(id:endpoint:)(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = NearbyGroup.init(id:endpoint:);

  return specialized NearbyGroup.init(id:endpoint:)(a1, a2);
}

uint64_t closure #1 in NearbyGroup.init(id:endpoint:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
    v1 = swift_allocError();
    *v2 = 0;
    NearbyGroup.invalidate(reason:)(v1);
  }

  return result;
}

uint64_t NearbyGroup.invalidate(reason:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.group);

  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v14 = 136315394;
    v17 = NearbyGroup.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = a1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v15 = v21;
    _os_log_impl(&dword_25B7C4000, v11, v12, "%s Invalidating for reason: %@", v14, 0x16u);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x25F86FE20](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F86FE20](v16, -1, -1);
    v22 = v14;
    v3 = v29;
    MEMORY[0x25F86FE20](v22, -1, -1);
  }

  v23 = *(v1 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_queue);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in NearbyGroup.invalidate(reason:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v25 = _Block_copy(aBlock);

  v26 = a1;
  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x277D84F90];
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v27 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x25F86F310](0, v8, v27, v25);
  _Block_release(v25);
  (*(v33 + 8))(v27, v3);
  (*(v30 + 8))(v8, v32);
}

uint64_t closure #2 in NearbyGroup.init(id:endpoint:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_queue);
    v13 = result;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v13;
    v19 = v13;
    aBlock[4] = partial apply for closure #1 in closure #2 in NearbyGroup.init(id:endpoint:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_147_0;
    v15 = v8;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v21 = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v18 = v7;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x25F86F310](0, v11, v6, v16);
    _Block_release(v16);
    (*(v3 + 8))(v6, v2);
    (*(v15 + 8))(v11, v18);
  }

  return result;
}

uint64_t closure #1 in closure #2 in NearbyGroup.init(id:endpoint:)(uint64_t a1)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.group);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
    v7 = String.init<A>(reflecting:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25B7C4000, v3, v4, "Received updated membership list %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x25F86FE20](v6, -1, -1);
    MEMORY[0x25F86FE20](v5, -1, -1);
  }

  v10 = specialized Sequence.compactMap<A>(_:)(a1);
  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B5GroupC6MemberV_SayAHGTt0g5Tf4g_n(v10);

  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v11;

  return static Published.subscript.setter();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.group);

  v10 = a4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v11, v12))
  {

    if (!a4)
    {
      goto LABEL_19;
    }

LABEL_7:

    v20 = a4;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v55[0] = v24;
      *v23 = 136315394;
      v25 = NearbyGroup.description.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v55);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v54[0] = a4;
      v28 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(reflecting:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v55);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_25B7C4000, v21, v22, "%s was told an error remotely when trying to join %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v24, -1, -1);
      MEMORY[0x25F86FE20](v23, -1, -1);
    }

    v55[0] = a4;
    goto LABEL_10;
  }

  v13 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v54[0] = v52;
  *v13 = 136315906;
  v14 = NearbyGroup.description.getter();
  v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v54);

  *(v13 + 4) = v16;
  *(v13 + 12) = 2080;
  if (a2)
  {
    v55[0] = a1;
    v55[1] = a2;

    v17 = String.init<A>(reflecting:)();
    v19 = v18;
  }

  else
  {
    v19 = 0xE300000000000000;
    v17 = 7104878;
  }

  v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v54);

  *(v13 + 14) = v33;
  *(v13 + 22) = 2080;
  if (a3)
  {
    v55[0] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
  }

  else
  {
    v36 = 0xE300000000000000;
    v34 = 7104878;
  }

  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v54);

  *(v13 + 24) = v37;
  *(v13 + 32) = 2080;
  if (a4)
  {
    v55[0] = a4;
    v38 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v39 = String.init<A>(reflecting:)();
    v41 = v40;
  }

  else
  {
    v41 = 0xE300000000000000;
    v39 = 7104878;
  }

  v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, v54);

  *(v13 + 34) = v42;
  _os_log_impl(&dword_25B7C4000, v11, v12, "%s received response: (localHandle: %s, members: %s, error: %s)", v13, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x25F86FE20](v52, -1, -1);
  MEMORY[0x25F86FE20](v13, -1, -1);

  if (a4)
  {
    goto LABEL_7;
  }

LABEL_19:
  if (!a3)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_25B7C4000, v47, v48, "Received invalid callback where we didn't have an error, but also didn't have a membership list!", v49, 2u);
      MEMORY[0x25F86FE20](v49, -1, -1);
    }

    lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
    v50 = swift_allocError();
    *v51 = 0;
    v55[0] = v50;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  v43 = (a5 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle);
  swift_beginAccess();
  v44 = v43[1];
  *v43 = a1;
  v43[1] = a2;

  v45 = specialized Sequence.compactMap<A>(_:)(a3);
  v46 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B5GroupC6MemberV_SayAHGTt0g5Tf4g_n(v45);

  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = v46;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54[0] = 1;

  static Published.subscript.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed String?, @guaranteed Set<NearbyGroupMember>?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (a3)
  {
LABEL_3:
    type metadata accessor for NearbyGroupMember();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, type metadata accessor for NearbyGroupMember);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v11 = a4;
  v7(v8, v10, v5, a4);
}

uint64_t closure #1 in NearbyGroup.invalidate(reason:)(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;

  return static Published.subscript.setter();
}

uint64_t NearbyGroup.addMember(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](NearbyGroup.addMember(_:), 0, 0);
}

uint64_t NearbyGroup.addMember(_:)()
{
  v36 = v0;
  v1 = v0[9];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = 0;
  v3 = v0[6];
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 56);
  v7 = (63 - v5) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = v0[7];
    v10 = v0[8];
    v11 = (*(v3 + 48) + ((v2 << 11) | (32 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v0[10] = v12;
    v15 = v11[2];
    v14 = v11[3];
    v0[11] = v14;
    if (v13 == v9 && v12 == v10)
    {
      v13 = v9;
LABEL_22:

      v0[2] = v13;
      v0[3] = v12;
      v0[4] = v15;
      v0[5] = v14;
      v33 = swift_task_alloc();
      v0[12] = v33;
      *v33 = v0;
      v33[1] = NearbyGroup.addMember(_:);
      v34 = v0[9];

      return NearbyGroup.addMember(_:)(v0 + 2);
    }

    v6 &= v6 - 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 56 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  if (one-time initialization token for group == -1)
  {
    goto LABEL_16;
  }

LABEL_26:
  swift_once();
LABEL_16:
  v18 = v0[8];
  v17 = v0[9];
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.group);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35[0] = v26;
    *v25 = 136315394;
    v27 = NearbyGroup.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v35);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v35);
    _os_log_impl(&dword_25B7C4000, v20, v21, "%s There is no member: %s in NearbyGroup.Member list", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v26, -1, -1);
    MEMORY[0x25F86FE20](v25, -1, -1);
  }

  lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
  swift_allocError();
  *v30 = 1;
  swift_willThrow();
  v31 = v0[1];

  return v31();
}

{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](NearbyGroup.addMember(_:), 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[11];

    v6 = v3[1];

    return v6();
  }
}

{
  v36 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  receiver = v0[6].receiver;
  v2 = v0[5].receiver;
  v3 = v0[4].receiver;
  v4 = type metadata accessor for Logger();
  v0[6].super_class = __swift_project_value_buffer(v4, static Log.group);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    super_class = v0[5].super_class;
    v34 = v0[6].receiver;
    v8 = v0[4].super_class;
    v7 = v0[5].receiver;
    v9 = v0[4].receiver;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315394;
    v12 = NearbyGroup.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v0[1].receiver = v8;
    v0[1].super_class = v7;
    v0[2].receiver = super_class;
    v0[2].super_class = v34;

    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v35);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_25B7C4000, v5, v6, "%s received request to add member: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v19 = v0[5].super_class;
  v18 = v0[6].receiver;
  v21 = v0[4].super_class;
  v20 = v0[5].receiver;
  v22 = v0[4].receiver;
  v23 = type metadata accessor for NearbyGroupMember();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
  *v25 = v21;
  *(v25 + 1) = v20;
  v26 = &v24[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
  *v26 = v19;
  *(v26 + 1) = v18;
  v0[3].receiver = v24;
  v0[3].super_class = v23;

  v27 = objc_msgSendSuper2(v0 + 3, sel_init);
  v0[7].receiver = v27;
  v28 = swift_task_alloc();
  v0[7].super_class = v28;
  *(v28 + 16) = v22;
  *(v28 + 24) = v27;
  v29 = *(MEMORY[0x277D85A40] + 4);
  v30 = swift_task_alloc();
  v0[8].receiver = v30;
  *v30 = v0;
  v30[1] = NearbyGroup.addMember(_:);
  v31 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v30, 0, 0, 0x65626D654D646461, 0xED0000293A5F2872, partial apply for closure #1 in NearbyGroup.addMember(_:), v28, v31);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = NearbyGroup.addMember(_:);
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = NearbyGroup.addMember(_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v23 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    v12 = NearbyGroup.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = [v8 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v22);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_25B7C4000, v5, v6, "%s successfully added member: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t NearbyGroup.addMember(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  *(v2 + 88) = *(a1 + 1);
  return MEMORY[0x2822009F8](NearbyGroup.addMember(_:), 0, 0);
}

uint64_t closure #1 in NearbyGroup.addMember(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_connection);
  v12 = XPCClient.queue.getter();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v7 + 32))(v14 + v13, v10, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in closure #1 in NearbyGroup.addMember(_:);
  *(v15 + 24) = v14;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_107;
  v16 = _Block_copy(aBlock);

  v17 = a3;

  dispatch_sync(v12, v16);

  _Block_release(v16);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NearbyGroup.addMember(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v11 = *(a1 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_connection);
  v16 = a2;
  v17 = a3;
  v18 = a1;
  (*(v7 + 16))(&v15[-v9], a3, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v7 + 32))(v13 + v12, v10, v6);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t NearbyGroup.kickMember(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](NearbyGroup.kickMember(_:), 0, 0);
}

uint64_t NearbyGroup.kickMember(_:)()
{
  v36 = v0;
  v1 = v0[9];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = 0;
  v3 = v0[6];
  v4 = -1;
  v5 = -1 << *(v3 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v3 + 56);
  v7 = (63 - v5) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = v0[7];
    v10 = v0[8];
    v11 = (*(v3 + 48) + ((v2 << 11) | (32 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v0[10] = v12;
    v15 = v11[2];
    v14 = v11[3];
    v0[11] = v14;
    if (v13 == v9 && v12 == v10)
    {
      v13 = v9;
LABEL_22:

      v0[2] = v13;
      v0[3] = v12;
      v0[4] = v15;
      v0[5] = v14;
      v33 = swift_task_alloc();
      v0[12] = v33;
      *v33 = v0;
      v33[1] = NearbyGroup.kickMember(_:);
      v34 = v0[9];

      return NearbyGroup.kickMember(member:)(v0 + 2);
    }

    v6 &= v6 - 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 56 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  if (one-time initialization token for group == -1)
  {
    goto LABEL_16;
  }

LABEL_26:
  swift_once();
LABEL_16:
  v18 = v0[8];
  v17 = v0[9];
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.group);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[8];
    v22 = v0[9];
    v24 = v0[7];
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35[0] = v26;
    *v25 = 136315394;
    v27 = NearbyGroup.description.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v35);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, v35);
    _os_log_impl(&dword_25B7C4000, v20, v21, "%s There is no member: %s in NearbyGroup.Member list", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v26, -1, -1);
    MEMORY[0x25F86FE20](v25, -1, -1);
  }

  lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors();
  swift_allocError();
  *v30 = 1;
  swift_willThrow();
  v31 = v0[1];

  return v31();
}

{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](NearbyGroup.kickMember(_:), 0, 0);
  }

  else
  {
    v4 = v3[10];
    v5 = v3[11];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t NearbyGroup.kickMember(member:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  *(v2 + 88) = *(a1 + 1);
  return MEMORY[0x2822009F8](NearbyGroup.kickMember(member:), 0, 0);
}

uint64_t NearbyGroup.kickMember(member:)()
{
  v36 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  receiver = v0[6].receiver;
  v2 = v0[5].receiver;
  v3 = v0[4].receiver;
  v4 = type metadata accessor for Logger();
  v0[6].super_class = __swift_project_value_buffer(v4, static Log.group);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    super_class = v0[5].super_class;
    v34 = v0[6].receiver;
    v8 = v0[4].super_class;
    v7 = v0[5].receiver;
    v9 = v0[4].receiver;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v10 = 136315394;
    v12 = NearbyGroup.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v35);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v0[1].receiver = v8;
    v0[1].super_class = v7;
    v0[2].receiver = super_class;
    v0[2].super_class = v34;

    v15 = String.init<A>(reflecting:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v35);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_25B7C4000, v5, v6, "%s received request to kick member: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v19 = v0[5].super_class;
  v18 = v0[6].receiver;
  v21 = v0[4].super_class;
  v20 = v0[5].receiver;
  v22 = v0[4].receiver;
  v23 = type metadata accessor for NearbyGroupMember();
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_handle];
  *v25 = v21;
  *(v25 + 1) = v20;
  v26 = &v24[OBJC_IVAR____TtC14NearbySessions17NearbyGroupMember_tokenID];
  *v26 = v19;
  *(v26 + 1) = v18;
  v0[3].receiver = v24;
  v0[3].super_class = v23;

  v27 = objc_msgSendSuper2(v0 + 3, sel_init);
  v0[7].receiver = v27;
  v28 = swift_task_alloc();
  v0[7].super_class = v28;
  *(v28 + 16) = v22;
  *(v28 + 24) = v27;
  v29 = *(MEMORY[0x277D85A40] + 4);
  v30 = swift_task_alloc();
  v0[8].receiver = v30;
  *v30 = v0;
  v30[1] = NearbyGroup.kickMember(member:);
  v31 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v30, 0, 0, 0xD000000000000013, 0x800000025B830840, partial apply for closure #1 in NearbyGroup.kickMember(member:), v28, v31);
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = NearbyGroup.kickMember(member:);
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = NearbyGroup.kickMember(member:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v23 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];

  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  if (v7)
  {
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315394;
    v12 = NearbyGroup.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = [v8 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v22);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_25B7C4000, v5, v6, "%s successfully kicked member: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);
  v3 = *(v0 + 136);

  return v2();
}

uint64_t closure #1 in NearbyGroup.kickMember(member:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_connection);
  v12 = XPCClient.queue.getter();
  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  (*(v7 + 32))(v14 + v13, v10, v6);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in closure #1 in NearbyGroup.kickMember(member:);
  *(v15 + 24) = v14;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_88_0;
  v16 = _Block_copy(aBlock);

  v17 = a3;

  dispatch_sync(v12, v16);

  _Block_release(v16);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NearbyGroup.kickMember(member:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16[-v9];
  v11 = *(a1 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_connection);
  v17 = a2;
  v18 = a3;
  v19 = a1;
  (*(v7 + 16))(&v16[-v9], a3, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);

  v14 = a2;
  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in NearbyGroup.addMember(_:)(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v25 = a7;
  v26 = a8;
  v22[1] = a5;
  v23 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v24 = *a1;
  (*(v13 + 16))(v22 - v15, a3, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  *(v19 + v18) = a4;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = v23;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);

  v21 = a2;

  [v24 *v26];
  _Block_release(v20);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.addMember(_:)(void *a1, uint64_t a2, uint64_t a3, void *a4, const char *a5)
{
  if (a1)
  {
    v8 = a1;
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.group);
    v10 = a1;

    v11 = a4;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315650;
      v16 = NearbyGroup.description.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = [v11 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v29);

      *(v14 + 14) = v23;
      *(v14 + 22) = 2080;
      v24 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

      *(v14 + 24) = v27;
      _os_log_impl(&dword_25B7C4000, v12, v13, a5, v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v15, -1, -1);
      MEMORY[0x25F86FE20](v14, -1, -1);
    }

    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in closure #1 in closure #1 in NearbyGroup.kickMember(member:)(void *a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.group);

  v6 = a3;
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315650;
    v12 = NearbyGroup.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = [v6 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v26);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_25B7C4000, v8, v9, "%s Had errorHandler called when trying to kick member: %s, error: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v26 = a1;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t NearbyGroup.leave()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](NearbyGroup.leave(), 0, 0);
}

{
  v17 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v2, static Log.group);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = NearbyGroup.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s received request to leave", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  v0[4] = v12;
  *v12 = v0;
  v12[1] = NearbyGroup.leave();
  v13 = v0[2];
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v12, 0, 0, 0x2928657661656CLL, 0xE700000000000000, partial apply for closure #1 in NearbyGroup.leave(), v13, v14);
}

{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = NearbyInvitationScanner<>.request(_:displayName:userInfo:);
  }

  else
  {
    v3 = NearbyGroup.leave();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v14 = v0;
  v2 = v0[2];
  v1 = v0[3];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = NearbyGroup.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_25B7C4000, v3, v4, "%s successfully left", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x25F86FE20](v7, -1, -1);
    MEMORY[0x25F86FE20](v6, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in NearbyGroup.leave()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_connection);
  v10 = XPCClient.queue.getter();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v5 + 32))(v12 + v11, v8, v4);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in closure #1 in NearbyGroup.leave();
  *(v13 + 24) = v12;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_69_0;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);

  _Block_release(v14);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in NearbyGroup.leave()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *(a1 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_connection);
  v14 = a2;
  v15 = a1;
  (*(v5 + 16))(&v13[-v7], a2, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  (*(v5 + 32))(v11 + v10, v8, v4);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in NearbyGroup.leave()(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = *a1;
  (*(v7 + 16))(aBlock - v9, a2, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.leave();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_78;
  v14 = _Block_copy(aBlock);

  [v11 leaveWithCompletion_];
  _Block_release(v14);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.leave()(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.group);
    v4 = a1;

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315394;
      v9 = NearbyGroup.description.getter();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_25B7C4000, v5, v6, "%s was told an error remotely when trying to leave, error: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F86FE20](v8, -1, -1);
      MEMORY[0x25F86FE20](v7, -1, -1);
    }

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.group);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315394;
    v12 = NearbyGroup.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_25B7C4000, v8, v9, a4, v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v21 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t NearbyGroup.deinit()
{
  v1 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__members;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle + 8);

  return v0;
}

uint64_t NearbyGroup.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__members;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C5GroupC6MemberVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup__state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMd, &_s7Combine9PublishedVy14NearbySessions0C5GroupC5StateOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC14NearbySessions11NearbyGroup_localMemberHandle + 8);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t protocol witness for InvitationSourceProvider.id.getter in conformance NearbyGroup@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14NearbySessions11NearbyGroup_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for InvitationSourceProvider.didApproveMember(member:) in conformance NearbyGroup(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return NearbyGroup.didApproveMember(member:)(a1);
}

uint64_t NearbyGroup.didApproveMember(member:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v2 + 80) = v1;
  *(v2 + 88) = v3;
  *(v2 + 96) = v4;
  *(v2 + 104) = *(a1 + 1);
  return MEMORY[0x2822009F8](NearbyGroup.didApproveMember(member:), 0, 0);
}

uint64_t NearbyGroup.didApproveMember(member:)()
{
  v20 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.group);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v0 + 48) = v9;
    *(v0 + 56) = v8;
    *(v0 + 64) = v7;
    *(v0 + 72) = v6;

    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_25B7C4000, v4, v5, "Received approved member: %s attempting to add now", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v15 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = v15;
  *(v0 + 32) = *(v0 + 104);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *v16 = v0;
  v16[1] = NearbyGroup.didApproveMember(member:);
  v17 = *(v0 + 80);

  return NearbyGroup.addMember(_:)((v0 + 16));
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](NearbyGroup.didApproveMember(member:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 128);
  return (*(v0 + 8))();
}

uint64_t static NearbyGroup.groups(service:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMd, &_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for UUID();
  v10 = (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  if (one-time initialization token for shared != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  *(&v13 - 2) = v11;
  *(&v13 - 1) = v8;
  (*(v1 + 104))(v4, *MEMORY[0x277D85778], v0);
  AsyncStream.init(_:bufferingPolicy:_:)();
  return outlined destroy of NSObject?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t static NearbyGroup.groups(service:identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMd, &_sScS12ContinuationV15BufferingPolicyOy14NearbySessions0D5GroupC__GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - v7;
  if (one-time initialization token for shared != -1)
  {
    v6 = swift_once();
  }

  MEMORY[0x28223BE20](v6);
  *(&v11 - 2) = v9;
  *(&v11 - 1) = a2;
  (*(v4 + 104))(v8, *MEMORY[0x277D85778], v3);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR);
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v34);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(v9 - 8);
  v31[0] = *(v10 + 64);
  v11 = v31[0];
  MEMORY[0x28223BE20](v9 - 8);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v31 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of (UUID, Bool)(a3, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = v8;
  v20 = v8;
  v21 = v34;
  (*(v5 + 16))(v20, a1, v34);
  v22 = *(v10 + 80);
  v23 = (v22 + 40) & ~v22;
  v31[1] = v22 | 7;
  v24 = (v11 + *(v5 + 80) + v23) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v35;
  outlined init with take of UUID?(v13, &v25[v23], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v5 + 32))(&v25[v24], v19, v21);

  v26 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), v25);
  outlined init with copy of (UUID, Bool)(v32, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = (v22 + 16) & ~v22;
  v28 = (v31[0] + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  outlined init with take of UUID?(v13, v29 + v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v29 + v28) = v26;
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMR) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy14NearbySessions0D5GroupC__GMd, &_sScS12ContinuationV11YieldResultOy14NearbySessions0D5GroupC__GMR);
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v6[19] = v12;
  v13 = *(v12 - 8);
  v6[20] = v13;
  v14 = *(v13 + 64) + 15;
  v6[21] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v6[22] = v15;
  v16 = *(v15 - 8);
  v6[23] = v16;
  v6[24] = *(v16 + 64);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0G19GroupConnectionInfoCG_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0G19GroupConnectionInfoCG_GGMR);
  v6[33] = v17;
  v18 = *(v17 - 8);
  v6[34] = v18;
  v19 = *(v18 + 64) + 15;
  v6[35] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMR);
  v6[36] = v20;
  v21 = *(v20 - 8);
  v6[37] = v21;
  v22 = *(v21 + 64) + 15;
  v6[38] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySDy10Foundation4UUIDV14NearbySessions0H19GroupConnectionInfoCG_G_GMR);
  v6[39] = v23;
  v24 = *(v23 - 8);
  v6[40] = v24;
  v25 = *(v24 + 64) + 15;
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), 0, 0);
}

uint64_t closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[42] = __swift_project_value_buffer(v1, static Log.group);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B7C4000, v2, v3, "Waiting for groups", v4, 2u);
    MEMORY[0x25F86FE20](v4, -1, -1);
  }

  v5 = v0[41];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v9 = v0[36];
  v10 = v0[33];
  v11 = v0[34];
  v12 = v0[10];

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v13 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UUID : NearbyGroupConnectionInfo]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV14NearbySessions0F19GroupConnectionInfoCG_GMR);
  MEMORY[0x25F86EF60](v9, v13);
  (*(v7 + 8))(v6, v9);
  AsyncPublisher.makeAsyncIterator()();
  (*(v11 + 8))(v8, v10);
  v0[43] = OBJC_IVAR____TtC14NearbySessions27NearbyInvitationsController_groupTable;
  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  v15 = v0[41];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(0, 0);
}

{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), 0, 0);
}

{
  *(v0 + 64) = *(v0 + 432);
  v1 = *(v0 + 232);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  result = outlined destroy of NSObject?(v1, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v7 = *(v0 + 400);
  v8 = (*(v0 + 392) - 1) & *(v0 + 392);
  if (v8)
  {
    while (1)
    {
      v9 = *(v0 + 360);
LABEL_7:
      *(v0 + 392) = v8;
      *(v0 + 400) = v7;
      v12 = *(v0 + 232);
      v11 = *(v0 + 240);
      v42 = v11;
      v43 = *(v0 + 176);
      v14 = *(v0 + 152);
      v13 = *(v0 + 160);
      v44 = *(v0 + 88);
      v45 = *(v0 + 144);
      v15 = __clz(__rbit64(v8)) | (v7 << 6);
      v16 = *(v9 + 48) + *(v13 + 72) * v15;
      (*(v13 + 16))();
      v17 = *(v13 + 32);
      v18 = *(*(v9 + 56) + 8 * v15);
      v19 = *(v43 + 48);
      v17(v12, v42, v14);
      *(v12 + v19) = v18;
      outlined init with copy of (UUID, Bool)(v44, v45, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v13 + 48))(v45, 1, v14) == 1)
      {
        break;
      }

      v20 = *(v0 + 232);
      v22 = *(v0 + 160);
      v21 = *(v0 + 168);
      v23 = *(v0 + 152);
      v17(v21, *(v0 + 144), v23);
      v24 = v18;
      v25 = static UUID.== infix(_:_:)();
      (*(v22 + 8))(v21, v23);
      if (v25)
      {
        goto LABEL_15;
      }

      v8 &= v8 - 1;
      result = outlined destroy of NSObject?(*(v0 + 232), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    v29 = *(v0 + 144);
    v30 = v18;
    outlined destroy of NSObject?(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_15:
    v31 = *(v0 + 376);
    v32 = *(v0 + 224);
    v34 = *(v0 + 184);
    v33 = *(v0 + 192);
    outlined init with copy of (UUID, Bool)(*(v0 + 232), v32, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v35 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v0 + 408) = v36;
    outlined init with take of UUID?(v32, v36 + v35, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v37 = *(*v31 + 152);
    v46 = (v37 + *v37);
    v38 = v37[1];
    v39 = swift_task_alloc();
    *(v0 + 416) = v39;
    *v39 = v0;
    v39[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v40 = *(v0 + 376);
    v41 = *(v0 + 232);

    return v46(v41, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), v36);
  }

  else
  {
    while (1)
    {
LABEL_3:
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return result;
      }

      v9 = *(v0 + 360);
      if (v10 >= (((1 << *(v0 + 440)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v9 + 8 * v10 + 64);
      ++v7;
      if (v8)
      {
        v7 = v10;
        goto LABEL_7;
      }
    }

    v26 = *(v0 + 360);

    v27 = swift_task_alloc();
    *(v0 + 352) = v27;
    *v27 = v0;
    v27[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v28 = *(v0 + 328);

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(0, 0);
  }
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 336);
  outlined init with copy of (UUID, Bool)(*(v0 + 232), *(v0 + 216), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *(v0 + 48) = v69;
    *v11 = 136315394;
    outlined init with copy of (UUID, Bool)(v6, v9, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    (*(v7 + 56))(v9, 0, 1, v8);
    outlined init with copy of (UUID, Bool)(v9, v10, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMR);
    if ((*(v7 + 48))(v10, 1, v8) == 1)
    {
      v12 = 0xE300000000000000;
      v13 = 7104878;
    }

    else
    {
      v19 = *(v0 + 200);
      v18 = *(v0 + 208);
      v20 = *(v0 + 176);
      outlined init with take of UUID?(*(v0 + 104), v18, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      outlined init with copy of (UUID, Bool)(v18, v19, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      v13 = String.init<A>(reflecting:)();
      v12 = v21;
      outlined destroy of NSObject?(v18, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    }

    v22 = *(v0 + 424);
    v23 = *(v0 + 232);
    v24 = *(v0 + 216);
    outlined destroy of NSObject?(*(v0 + 112), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetSgMR);
    outlined destroy of NSObject?(v24, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, (v0 + 48));

    *(v11 + 4) = v25;
    *(v11 + 12) = 2080;
    *(v0 + 56) = v22;
    v26 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v27 = String.init<A>(reflecting:)();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, (v0 + 48));

    *(v11 + 14) = v29;
    _os_log_impl(&dword_25B7C4000, v4, v5, "Failed to create new nearbyGroup %s, error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F86FE20](v69, -1, -1);
    MEMORY[0x25F86FE20](v11, -1, -1);

    v17 = v23;
  }

  else
  {
    v14 = *(v0 + 424);
    v15 = *(v0 + 232);
    v16 = *(v0 + 216);

    outlined destroy of NSObject?(v16, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v17 = v15;
  }

  result = outlined destroy of NSObject?(v17, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v31 = *(v0 + 400);
  v32 = (*(v0 + 392) - 1) & *(v0 + 392);
  if (v32)
  {
    while (1)
    {
      v33 = *(v0 + 360);
LABEL_13:
      *(v0 + 392) = v32;
      *(v0 + 400) = v31;
      v36 = *(v0 + 232);
      v35 = *(v0 + 240);
      v66 = v35;
      v67 = *(v0 + 176);
      v38 = *(v0 + 152);
      v37 = *(v0 + 160);
      v68 = *(v0 + 88);
      v70 = *(v0 + 144);
      v39 = __clz(__rbit64(v32)) | (v31 << 6);
      v40 = *(v33 + 48) + *(v37 + 72) * v39;
      (*(v37 + 16))();
      v41 = *(v37 + 32);
      v42 = *(*(v33 + 56) + 8 * v39);
      v43 = *(v67 + 48);
      v41(v36, v66, v38);
      *(v36 + v43) = v42;
      outlined init with copy of (UUID, Bool)(v68, v70, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v37 + 48))(v70, 1, v38) == 1)
      {
        break;
      }

      v44 = *(v0 + 232);
      v46 = *(v0 + 160);
      v45 = *(v0 + 168);
      v47 = *(v0 + 152);
      v41(v45, *(v0 + 144), v47);
      v48 = v42;
      v49 = static UUID.== infix(_:_:)();
      (*(v46 + 8))(v45, v47);
      if (v49)
      {
        goto LABEL_21;
      }

      v32 &= v32 - 1;
      result = outlined destroy of NSObject?(*(v0 + 232), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      if (!v32)
      {
        goto LABEL_9;
      }
    }

    v53 = *(v0 + 144);
    v54 = v42;
    outlined destroy of NSObject?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_21:
    v55 = *(v0 + 376);
    v56 = *(v0 + 224);
    v58 = *(v0 + 184);
    v57 = *(v0 + 192);
    outlined init with copy of (UUID, Bool)(*(v0 + 232), v56, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v59 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v60 = swift_allocObject();
    *(v0 + 408) = v60;
    outlined init with take of UUID?(v56, v60 + v59, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v61 = *(*v55 + 152);
    v71 = (v61 + *v61);
    v62 = v61[1];
    v63 = swift_task_alloc();
    *(v0 + 416) = v63;
    *v63 = v0;
    v63[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v64 = *(v0 + 376);
    v65 = *(v0 + 232);

    return v71(v65, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), v60);
  }

  else
  {
    while (1)
    {
LABEL_9:
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return result;
      }

      v33 = *(v0 + 360);
      if (v34 >= (((1 << *(v0 + 440)) + 63) >> 6))
      {
        break;
      }

      v32 = *(v33 + 8 * v34 + 64);
      ++v31;
      if (v32)
      {
        v31 = v34;
        goto LABEL_13;
      }
    }

    v50 = *(v0 + 360);

    v51 = swift_task_alloc();
    *(v0 + 352) = v51;
    *v51 = v0;
    v51[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v52 = *(v0 + 328);

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(0, 0);
  }
}

uint64_t closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1)
{
  v3 = *(*v2 + 352);
  v5 = *v2;
  *(*v2 + 360) = a1;

  if (!v1)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), 0, 0);
  }

  return result;
}

{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *(*v2 + 408);
  v7 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v8 = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  }

  else
  {
    *(v4 + 432) = a1;
    v8 = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

unint64_t closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  v80 = v0;
  v1 = v0[45];
  v2 = v0[42];
  if (v1)
  {
    v3 = v0[45];

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v79 = v7;
      *v6 = 136315138;
      v0[9] = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV14NearbySessions0C19GroupConnectionInfoCGMd, &_sSDy10Foundation4UUIDV14NearbySessions0C19GroupConnectionInfoCGMR);
      v8 = String.init<A>(reflecting:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v79);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_25B7C4000, v4, v5, "Heard about groups: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x25F86FE20](v7, -1, -1);
      MEMORY[0x25F86FE20](v6, -1, -1);
    }

    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v12 = v1 + 64;
    v13 = -1;
    v14 = -1 << *(v1 + 32);
    if (-v14 < 64)
    {
      v13 = ~(-1 << -v14);
    }

    v15 = v13 & *(v1 + 64);
    v16 = (63 - v14) >> 6;

    v18 = 0;
    v68 = v16;
    v70 = v1 + 64;
    v72 = v1;
    while (1)
    {
      v0[46] = v11;
      if (!v15)
      {
        break;
      }

LABEL_14:
      v21 = v0[31];
      v20 = v0[32];
      v22 = v0[22];
      v23 = v0[20];
      v24 = __clz(__rbit64(v15)) | (v18 << 6);
      v74 = *(v23 + 72);
      v76 = *(v23 + 16);
      v76(v20, *(v1 + 48) + v74 * v24, v0[19]);
      v25 = *(*(v1 + 56) + 8 * v24);
      *(v20 + *(v22 + 48)) = v25;
      outlined init with copy of (UUID, Bool)(v20, v21, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      v26 = *(v21 + *(v22 + 48));
      v27 = v25;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[5] = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      v30 = v11[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v34 = v29;
      if (v11[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = result;
          specialized _NativeDictionary.copy()();
          result = v44;
        }
      }

      else
      {
        v35 = v0[31];
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
        v36 = v0[5];
        result = specialized __RawDictionaryStorage.find<A>(_:)(v35);
        if ((v34 & 1) != (v37 & 1))
        {
          v63 = v0[19];

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v11 = v0[5];
      v38 = v0[32];
      if (v34)
      {
        *(v11[7] + result) = 1;
        outlined destroy of NSObject?(v38, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      }

      else
      {
        v39 = v0[31];
        v40 = v0[19];
        v11[(result >> 6) + 8] |= 1 << result;
        v41 = result;
        v76(v11[6] + result * v74, v39, v40);
        *(v11[7] + v41) = 1;
        result = outlined destroy of NSObject?(v38, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
        v42 = v11[2];
        v32 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v32)
        {
          goto LABEL_36;
        }

        v11[2] = v43;
      }

      v15 &= v15 - 1;
      result = (*(v0[20] + 8))(v0[31], v0[19]);
      v12 = v70;
      v1 = v72;
      v16 = v68;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_14;
      }
    }

    v45 = v0[43];
    v46 = v0[10];

    v47 = *(v46 + v45);
    v0[47] = v47;
    v48 = *(*v47 + 144);
    v77 = (v48 + *v48);
    v49 = v48[1];
    v50 = swift_task_alloc();
    v0[48] = v50;
    *v50 = v0;
    v50[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);

    return v77(v11);
  }

  else
  {
    (*(v0[40] + 8))(v0[41], v0[39]);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_25B7C4000, v51, v52, "No longer waiting for groups", v53, 2u);
      MEMORY[0x25F86FE20](v53, -1, -1);
    }

    v54 = v0[41];
    v55 = v0[38];
    v56 = v0[35];
    v58 = v0[31];
    v57 = v0[32];
    v60 = v0[29];
    v59 = v0[30];
    v64 = v0[28];
    v65 = v0[27];
    v66 = v0[26];
    v67 = v0[25];
    v69 = v0[21];
    v71 = v0[18];
    v73 = v0[17];
    v75 = v0[14];
    v78 = v0[13];
    v61 = v0[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR);
    AsyncStream.Continuation.finish()();

    v62 = v0[1];

    return v62();
  }
}

void closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  v1 = 0;
  v2 = *(v0 + 360);
  v3 = *(v2 + 32);
  *(v0 + 440) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  if (v6)
  {
    while (1)
    {
      v7 = *(v0 + 360);
LABEL_10:
      *(v0 + 392) = v6;
      *(v0 + 400) = v1;
      v10 = *(v0 + 232);
      v9 = *(v0 + 240);
      v40 = v9;
      v41 = *(v0 + 176);
      v12 = *(v0 + 152);
      v11 = *(v0 + 160);
      v42 = *(v0 + 88);
      v43 = *(v0 + 144);
      v13 = __clz(__rbit64(v6)) | (v1 << 6);
      v14 = *(v7 + 48) + *(v11 + 72) * v13;
      (*(v11 + 16))();
      v15 = *(v11 + 32);
      v16 = *(*(v7 + 56) + 8 * v13);
      v17 = *(v41 + 48);
      v15(v10, v40, v12);
      *(v10 + v17) = v16;
      outlined init with copy of (UUID, Bool)(v42, v43, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((*(v11 + 48))(v43, 1, v12) == 1)
      {
        break;
      }

      v18 = *(v0 + 232);
      v20 = *(v0 + 160);
      v19 = *(v0 + 168);
      v21 = *(v0 + 152);
      v15(v19, *(v0 + 144), v21);
      v22 = v16;
      v23 = static UUID.== infix(_:_:)();
      (*(v20 + 8))(v19, v21);
      if (v23)
      {
        goto LABEL_18;
      }

      v6 &= v6 - 1;
      outlined destroy of NSObject?(*(v0 + 232), &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v27 = *(v0 + 144);
    v28 = v16;
    outlined destroy of NSObject?(v27, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_18:
    v29 = *(v0 + 376);
    v30 = *(v0 + 224);
    v32 = *(v0 + 184);
    v31 = *(v0 + 192);
    outlined init with copy of (UUID, Bool)(*(v0 + 232), v30, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v33 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v0 + 408) = v34;
    outlined init with take of UUID?(v30, v34 + v33, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v35 = *(*v29 + 152);
    v44 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 416) = v37;
    *v37 = v0;
    v37[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v38 = *(v0 + 376);
    v39 = *(v0 + 232);

    v44(v39, &async function pointer to partial apply for closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), v34);
  }

  else
  {
    while (1)
    {
LABEL_6:
      v8 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v7 = *(v0 + 360);
      if (v8 >= (((1 << *(v0 + 440)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v7 + 8 * v8 + 64);
      ++v1;
      if (v6)
      {
        v1 = v8;
        goto LABEL_10;
      }
    }

    v24 = *(v0 + 360);

    v25 = swift_task_alloc();
    *(v0 + 352) = v25;
    *v25 = v0;
    v25[1] = closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
    v26 = *(v0 + 328);

    _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySDy10Foundation4UUIDV14NearbySessions0L19GroupConnectionInfoCG_G_G_Tg5(0, 0);
  }
}

uint64_t closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v1[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:), 0, 0);
}

{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 112);
  v8 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v6 = closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  }

  else
  {
    v6 = closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  v34 = v0;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  v0[12] = __swift_project_value_buffer(v3, static Log.group);
  outlined init with copy of (UUID, Bool)(v2, v1, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[8];
    v12 = v0[4];
    v11 = v0[5];
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136315138;
    outlined init with copy of (UUID, Bool)(v7, v8, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);

    (*(v11 + 32))(v9, v8, v12);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v12);
    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v33);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_25B7C4000, v4, v5, "Creating NearbyGroup: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x25F86FE20](v32, -1, -1);
    MEMORY[0x25F86FE20](v13, -1, -1);
  }

  else
  {

    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  }

  v19 = v0[8];
  v18 = v0[9];
  v21 = v0[5];
  v20 = v0[6];
  v22 = v0[4];
  outlined init with copy of (UUID, Bool)(v0[3], v18, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR);
  v23 = *(v18 + *(v19 + 48));
  v0[13] = v23;
  (*(v21 + 16))(v20, v23 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_id, v22);
  v24 = *(v23 + OBJC_IVAR____TtC14NearbySessions25NearbyGroupConnectionInfo_endpoint);
  v0[14] = v24;
  v25 = type metadata accessor for NearbyGroup();
  v0[15] = v25;
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = v24;
  v29 = swift_task_alloc();
  v0[16] = v29;
  *v29 = v0;
  v29[1] = closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:);
  v30 = v0[6];

  return specialized NearbyGroup.init(id:endpoint:)(v30, v28);
}

{
  v24 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  (*(v5 + 8))(v3, v4);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v0 + 16) = v8;

    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_25B7C4000, v6, v7, "Created NearbyGroup: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x25F86FE20](v11, -1, -1);
    MEMORY[0x25F86FE20](v10, -1, -1);
  }

  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 72);
  v19 = *(v0 + 48);
  v18 = *(v0 + 56);

  v20 = *(v0 + 8);
  v21 = *(v0 + 136);

  return v20(v21);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  (*(v7 + 8))(v3, v6);

  v8 = *(v0 + 8);
  v9 = *(v0 + 144);

  return v8();
}

uint64_t closure #2 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.group);
  outlined init with copy of (UUID, Bool)(a2, v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v30 = a3;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315138;
    outlined init with copy of (UUID, Bool)(v19, v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v6 + 48))(v17, 1, v5) == 1)
    {
      v25 = 0xE300000000000000;
      v26 = 7104878;
    }

    else
    {
      (*(v6 + 32))(v12, v17, v5);
      (*(v6 + 16))(v10, v12, v5);
      v26 = String.init<A>(reflecting:)();
      v25 = v27;
      (*(v6 + 8))(v12, v5);
    }

    outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v25, &v31);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_25B7C4000, v21, v22, "Group listener for id: %s cancelled.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x25F86FE20](v24, -1, -1);
    MEMORY[0x25F86FE20](v23, -1, -1);

    a3 = v30;
  }

  else
  {

    outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  return MEMORY[0x25F86F1F0](a3, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
}

uint64_t InvitationRequest<>.Context.userInfo.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t InvitationRequest<>.Context.userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

double InvitationRequest<>.Context.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_25B82C300;
  return result;
}

uint64_t InvitationRequest<>.Context.init(userInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E10GroupTableC04WeakeG0VGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 8;
        outlined init with copy of NearbyGroupTable.WeakNearbyGroup(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = outlined init with take of NearbyGroupTable.WeakNearbyGroup(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14NearbySessions0E19GroupConnectionInfoCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSbGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSbGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for AddressableMember();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290]);
  result = MEMORY[0x25F86F230](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for NearbyGroupMember();
    v5 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, type metadata accessor for NearbyGroupMember);
    result = MEMORY[0x25F86F230](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25F86F4A0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B5GroupC6MemberV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type NearbyGroup.Member and conformance NearbyGroup.Member();
  result = MEMORY[0x25F86F230](v2, &type metadata for NearbyGroup.Member, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      specialized Set._Variant.insert(_:)(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t specialized NearbyGroup.__allocating_init(id:members:controller:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for UUID();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized NearbyGroup.__allocating_init(id:members:controller:), 0, 0);
}

uint64_t specialized NearbyGroup.__allocating_init(id:members:controller:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  if (v1)
  {
    v7 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  else
  {
    v7 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v7 = *(v3 + 216);
  v8 = *(v3 + 200);

  if (v1)
  {
    v9 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  else
  {
    v9 = specialized NearbyGroup.__allocating_init(id:members:controller:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

unint64_t lazy protocol witness table accessor for type NearbyGroup.Errors and conformance NearbyGroup.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroup.Errors and conformance NearbyGroup.Errors);
  }

  return result;
}

void type metadata completion function for NearbyGroup()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Published<Set<NearbyGroup.Member>>();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Published<NearbyGroup.State>();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of NearbyGroup.__allocating_init(id:endpoint:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);

  return v10(a1, a2);
}

void type metadata accessor for Published<Set<NearbyGroup.Member>>()
{
  if (!lazy cache variable for type metadata for Published<Set<NearbyGroup.Member>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy14NearbySessions0A5GroupC6MemberVGMd, &_sShy14NearbySessions0A5GroupC6MemberVGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Set<NearbyGroup.Member>>);
    }
  }
}

void type metadata accessor for Published<NearbyGroup.State>()
{
  if (!lazy cache variable for type metadata for Published<NearbyGroup.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<NearbyGroup.State>);
    }
  }
}

uint64_t getEnumTagSinglePayload for NearbyGroup.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for NearbyGroup.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for NearbyGroup.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
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

uint64_t getEnumTagSinglePayload for NearbyGroup.Member(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t type metadata instantiation function for InvitationRequest<>.Context()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for InvitationRequest<>.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for InvitationRequest<>.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.leave()(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.leave()(a1);
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in NearbyGroup.kickMember(member:)(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return closure #2 in closure #1 in closure #1 in NearbyGroup.kickMember(member:)(a1, v4, v5);
}

uint64_t objectdestroy_80Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in NearbyGroup.kickMember(member:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_93Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.kickMember(member:)(void *a1, const char *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in closure #1 in closure #1 in NearbyGroup.addMember(_:)(a1, v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t objectdestroy_62Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);
  v10 = *(v4 + 16);

  return closure #1 in closure #1 in closure #1 in closure #3 in NearbyGroup.init(id:endpoint:)(a1, a2, a3, a4, v10);
}

uint64_t objectdestroyTm_2(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t partial apply for closure #1 in NearbyGroup.init(id:members:controller:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of NearbyGroupTable.firstGroup();

  return closure #1 in NearbyGroup.init(id:members:controller:)();
}

uint64_t partial apply for closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy14NearbySessions0B5GroupC_GMd, &_sScS12ContinuationVy14NearbySessions0B5GroupC_GMR) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in NearbyGroupTable.firstGroup();

  return closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t partial apply for closure #2 in closure #1 in static NearbyGroup.groups(service:identifier:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #1 in static NearbyGroup.groups(service:identifier:)(a1, v1 + v4, v5);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMd, &_s10Foundation4UUIDV3key_14NearbySessions0D19GroupConnectionInfoC5valuetMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of NearbyGroupTable.registerIfNotPresent(identifier:generationBlock:);

  return closure #2 in closure #1 in closure #1 in static NearbyGroup.groups(service:identifier:)(v0 + v3);
}

uint64_t key path getter for NearbyGroupClientConnection.serverDisconnectedCallback : NearbyGroupClientConnection@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v4);
}

uint64_t key path setter for NearbyGroupClientConnection.serverDisconnectedCallback : NearbyGroupClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v3);
  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v8);
}

uint64_t key path getter for NearbyGroupClientConnection.setMembersCallback : NearbyGroupClientConnection@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + direct field offset for NearbyGroupClientConnection.setMembersCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<NearbyGroupMember>) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v4);
}

uint64_t key path setter for NearbyGroupClientConnection.setMembersCallback : NearbyGroupClientConnection(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<NearbyGroupMember>) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + direct field offset for NearbyGroupClientConnection.setMembersCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v3);
  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v8);
}

uint64_t NearbyGroupClientConnection.serverDisconnectedCallback.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t NearbyGroupClientConnection.serverDisconnectedCallback.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

Swift::Void __swiftcall NearbyGroupClientConnection.handleServerDisconnect()()
{
  v1 = v0 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v2);
  }
}

uint64_t NearbyGroupClientConnection.setMembers(_:)(uint64_t a1)
{
  v3 = v1 + direct field offset for NearbyGroupClientConnection.setMembersCallback;
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = *(v3 + 8);

    v5(a1);
    return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v5);
  }

  return result;
}

uint64_t @objc NearbyGroupClientConnection.setMembers(_:)(char *a1)
{
  type metadata accessor for NearbyGroupMember();
  lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = &a1[direct field offset for NearbyGroupClientConnection.setMembersCallback];
  swift_beginAccess();
  v4 = *v3;
  if (!*v3)
  {
  }

  v5 = *(v3 + 1);
  v6 = a1;
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOy_0(v4);
  v4(v2);

  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v4);
}

id NearbyGroupClientConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyGroupClientConnection.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[direct field offset for NearbyGroupClientConnection.setMembersCallback];
  *v3 = 0;
  *(v3 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t NearbyGroupClientConnection.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback + 8);
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(*(v0 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback));
  v2 = *(v0 + direct field offset for NearbyGroupClientConnection.setMembersCallback);
  v3 = *(v0 + direct field offset for NearbyGroupClientConnection.setMembersCallback + 8);

  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v2);
}

id NearbyGroupClientConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc NearbyGroupClientConnection.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback + 8);
  _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(*(a1 + direct field offset for NearbyGroupClientConnection.serverDisconnectedCallback));
  v3 = *(a1 + direct field offset for NearbyGroupClientConnection.setMembersCallback);
  v4 = *(a1 + direct field offset for NearbyGroupClientConnection.setMembersCallback + 8);

  return _sShy14NearbySessions0A11GroupMemberCGIegg_SgWOe_0(v3);
}

unint64_t lazy protocol witness table accessor for type NearbyGroupMember and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject)
  {
    type metadata accessor for NearbyGroupMember();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Set<NearbyGroupMember>) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Set<NearbyGroupMember>) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id NearbyAdvertisementRequest.__allocating_init(identifier:invitation:route:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a1, v13);
  v15 = &v11[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
  *v15 = a2;
  v15[1] = a3;
  v11[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = a4;
  *&v11[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = a5;
  v18.receiver = v11;
  v18.super_class = v5;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v14 + 8))(a1, v13);
  return v16;
}

uint64_t NearbyAdvertisementRequest.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyAdvertisementRequest.invitation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation + 8));
  return v1;
}

id NearbyAdvertisementRequest.init(identifier:invitation:route:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v11 = OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v11], a1, v12);
  v14 = &v5[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
  *v14 = a2;
  v14[1] = a3;
  v5[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = a4;
  *&v5[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = a5;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for NearbyAdvertisementRequest();
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v13 + 8))(a1, v12);
  return v15;
}

uint64_t type metadata accessor for NearbyAdvertisementRequest()
{
  result = type metadata singleton initialization cache for NearbyAdvertisementRequest;
  if (!type metadata singleton initialization cache for NearbyAdvertisementRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall NearbyAdvertisementRequest.encode(with:)(NSCoder with)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = MEMORY[0x25F86F000](0x696669746E656469, 0xEA00000000007265);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v5];

  v6 = *(v2 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation);
  v7 = *(v2 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation + 8);
  v8 = Data._bridgeToObjectiveC()().super.isa;
  v9 = MEMORY[0x25F86F000](0x6974617469766E69, 0xEA00000000006E6FLL);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route);
  v11 = UInt8._bridgeToObjectiveC()().super.super.isa;
  v12 = MEMORY[0x25F86F000](0x6574756F72, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v2 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType);
  v14 = UInt32._bridgeToObjectiveC()().super.super.isa;
  v15 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];
}

void NearbyAdvertisementRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  (*(v9 + 56))(v7, 1, 1, v8);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_6;
  }

  v18 = *(v9 + 32);
  v18(v13, v7, v8);
  v18(v15, v13, v8);
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v19 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v19 || (v33 = xmmword_25B82C300, v20 = v19, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v20, v21 = *(&v33 + 1), *(&v33 + 1) >> 60 == 15))
  {
    (*(v9 + 8))(v15, v8);
LABEL_6:

    type metadata accessor for NearbyAdvertisementRequest();
    v22 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v23 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return;
  }

  v31 = v33;
  v24 = MEMORY[0x25F86F000](0x6574756F72, 0xE500000000000000);
  v25 = [a1 decodeIntegerForKey_];

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v30 = v18;
  if (v25 > 0xFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = MEMORY[0x25F86F000](0x7974697669746361, 0xEC00000065707954);
  v27 = [a1 decodeIntegerForKey_];

  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v27))
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (v27 >= 2)
  {
    (*(v9 + 8))(v15, v8);
    outlined consume of Data?(v31, v21);
    goto LABEL_6;
  }

  v30(&v2[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_identifier], v15, v8);
  v28 = &v2[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation];
  *v28 = v31;
  *(v28 + 1) = v21;
  v2[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route] = v25;
  *&v2[OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType] = v27;
  v29 = type metadata accessor for NearbyAdvertisementRequest();
  v32.receiver = v2;
  v32.super_class = v29;
  objc_msgSendSuper2(&v32, sel_init);
}

uint64_t NearbyAdvertisementRequest.description.getter()
{
  swift_getObjectType();
  _StringGuts.grow(_:)(69);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](8250, 0xE200000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B8309E0);
  v3 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation);
  v4 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_invitation + 8);
  v5 = Data.description.getter();
  MEMORY[0x25F86F070](v5);

  MEMORY[0x25F86F070](0x206574756F72202CLL, 0xEE00203A65707974);
  v7 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_route);
  type metadata accessor for CBNearbyInfoV2InvitationRouteType();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](0xD000000000000015, 0x800000025B830A00);
  v8 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyAdvertisementRequest_activityType);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id NearbyAdvertisementRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyAdvertisementRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyAdvertisementRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for NearbyAdvertisementRequest()
{
  result = type metadata accessor for UUID();
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

unint64_t NearbyInvitationActivityType.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  if (a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v1 = 0;
    v2 = 1;
  }

  if (!a1)
  {
    v1 = 0;
    v2 = 0;
  }

  return v1 | (v2 << 32);
}

uint64_t *NearbyInvitation.__allocating_init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(v10 + 48);
  v18 = *(v10 + 52);
  swift_allocObject();
  v19 = specialized NearbyInvitation.init<A>(id:displayName:hostInfo:userInfo:controller:invitationSourceProvider:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  (*(*(a9 - 8) + 8))(a8, a9);

  outlined consume of Data?(a5, a6);

  return v19;
}

id NearbyAdvertisement.__allocating_init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v23 = objc_allocWithZone(v19);
  v24 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceColor];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceModel];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_deviceID];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement____lazy_storage___dataSource];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_scannerID;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = &v23[v28];
  v32 = a1;
  (*(v30 + 16))(v31, a1, v29);
  v33 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_identifier];
  *v33 = a2;
  *(v33 + 1) = a3;
  *&v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_activityType] = a4;
  v34 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_contactID];
  *v34 = a5;
  *(v34 + 1) = a6;
  v35 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_handle];
  *v35 = a7;
  *(v35 + 1) = a8;
  v36 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_displayName];
  *v36 = a9;
  *(v36 + 1) = a10;
  v37 = &v23[OBJC_IVAR____TtC14NearbySessions19NearbyAdvertisement_userInfo];
  *v37 = a11;
  *(v37 + 1) = a12;
  swift_beginAccess();
  *v24 = a13;
  v24[8] = a14 & 1;
  swift_beginAccess();
  *v25 = a15;
  *(v25 + 1) = a16;
  swift_beginAccess();
  *v26 = a17;
  *(v26 + 1) = a18;
  v46.receiver = v23;
  v46.super_class = v45;
  v38 = objc_msgSendSuper2(&v46, sel_init);
  (*(v30 + 8))(v32, v29);
  return v38;
}

uint64_t InvitationRequest.__allocating_init(invitationData:displayName:userInfo:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v14 = specialized static NearbyInvitationData.create(from:)(a1, a2);
  if (v7)
  {
    v15 = v7;
    outlined consume of Data?(a5, a6);
  }

  else
  {
    v15 = (*(v6 + 192))(v14, a3, a4, a5, a6);
  }

  outlined consume of Data._Representation(a1, a2);
  return v15;
}

uint64_t _s14NearbySessions24InvitationSourceProviderPAAE18providerIdentifierSSvgZAA0A5GroupC_Ttg5()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x25F86F070](46, 0xE100000000000000);
    MEMORY[0x25F86F070](0x724779627261654ELL, 0xEB0000000070756FLL);
    return v2;
  }

  else
  {
    _StringGuts.grow(_:)(148);
    MEMORY[0x25F86F070](0xD000000000000091, 0x800000025B830B40);
    MEMORY[0x25F86F070](0x724779627261654ELL, 0xEB0000000070756FLL);
    MEMORY[0x25F86F070](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static InvitationSourceProvider.providerIdentifier.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x25F86F070](46, 0xE100000000000000);
    v3 = _typeName(_:qualified:)();
    MEMORY[0x25F86F070](v3);

    return v2;
  }

  else
  {
    _StringGuts.grow(_:)(148);
    MEMORY[0x25F86F070](0xD000000000000091, 0x800000025B830B40);
    v5 = _typeName(_:qualified:)();
    MEMORY[0x25F86F070](v5);

    MEMORY[0x25F86F070](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  return static InvitationSourceProvider.providerIdentifier.getter();
}

Swift::String __swiftcall NearbyInvitationActivityType.description()()
{
  if (v0)
  {
    if (v0 == 1)
    {
      v1 = 0xEB00000000636973;
      v2 = 0x754D20656C707041;
    }

    else
    {
      v2 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  else
  {
    v1 = 0xE400000000000000;
    v2 = 1701736302;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

int *protocol witness for RawRepresentable.init(rawValue:) in conformance NearbyInvitationActivityType@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

Swift::String __swiftcall NearbyInvitationScopeType.description()()
{
  if (v0)
  {
    if (v0 == 2)
    {
      v1 = 0xE900000000000079;
      v2 = 0x74696D69786F7270;
    }

    else if (v0 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x73646E65697266;
    }

    else
    {
      v2 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  else
  {
    v1 = 0xE800000000000000;
    v2 = 0x656E6F7972657665;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall NearbyInvitationRouteType.description()()
{
  if (v0)
  {
    if (v0 == 2)
    {
      v1 = 0xE700000000000000;
      v2 = 0x646F70656D6F68;
    }

    else if (v0 == 1)
    {
      v1 = 0xE700000000000000;
      v2 = 0x72656B61657073;
    }

    else
    {
      v2 = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 7496035;
  }

  result._object = v1;
  result._countAndFlagsBits = v2;
  return result;
}

unint64_t NearbyInvitationScopeType.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NearbyInvitationActivityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NearbyInvitationActivityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t NearbyInvitationParameters.serviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName + 8);

  return v1;
}

id NearbyInvitationParameters.__allocating_init(serviceName:browserType:listner:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_browserType] = a3;
  v11 = &v9[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType];
  *v11 = a4;
  v11[4] = BYTE4(a4) & 1;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id NearbyInvitationParameters.init(serviceName:browserType:listner:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v4[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_browserType] = a3;
  v6 = &v4[OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType];
  *v6 = a4;
  v6[4] = BYTE4(a4) & 1;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for NearbyInvitationParameters();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t NearbyInvitationParameters.description.getter()
{
  swift_getObjectType();
  *&v6[8] = 0;
  _StringGuts.grow(_:)(55);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v1);

  MEMORY[0x25F86F070](0x6563697672657320, 0xEE00203A656D614ELL);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName), *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName + 8));
  MEMORY[0x25F86F070](0x6573776F7262202CLL, 0xEF203A6570795472);
  *v6 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_browserType);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](0xD000000000000011, 0x800000025B830BE0);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType + 4))
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType);
    v3 = String.init<A>(reflecting:)();
    v2 = v4;
  }

  MEMORY[0x25F86F070](v3, v2);

  return *&v6[4];
}

Swift::Void __swiftcall NearbyInvitationParameters.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName), *(v1 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_serviceName + 8));
  v4 = MEMORY[0x25F86F000](0x4E65636976726573, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_browserType);
  isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  v7 = MEMORY[0x25F86F000](0x54726573776F7262, 0xEB00000000657079);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v7];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType + 4))
  {
    v8 = 0;
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC14NearbySessions26NearbyInvitationParameters_routeType);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  v9 = MEMORY[0x25F86F000](0x7079546574756F72, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t NearbyInvitationParameters.init(coder:)(void *a1)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for NearbyInvitationParameters();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t InvitationJoinResponse.sessionIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8);

  return v1;
}

uint64_t InvitationJoinResponse.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8));
  return v1;
}

id one-time initialization function for denied()
{
  v0 = type metadata accessor for InvitationJoinResponse();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles] = 0;
  *&v1[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo] = xmmword_25B82C300;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  static InvitationJoinResponse.denied = result;
  return result;
}

id static InvitationJoinResponse.denied.getter()
{
  if (one-time initialization token for denied != -1)
  {
    swift_once();
  }

  v1 = static InvitationJoinResponse.denied;

  return v1;
}

id static InvitationJoinResponse.approved(sessionIdentifier:memberHandles:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for InvitationJoinResponse();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles] = a3;
  v13 = &v11[OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo];
  *v13 = a4;
  v13[1] = a5;

  outlined copy of Data?(a4, a5);
  v15.receiver = v11;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, sel_init);
}

Swift::Void __swiftcall InvitationJoinResponse.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8))
  {
    v3 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier));
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x25F86F000](0xD000000000000011, 0x800000025B830C30);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles))
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = MEMORY[0x25F86F000](0x61487265626D656DLL, 0xED000073656C646ELL);
  [(objc_class *)with.super.isa encodeObject:v5.super.isa forKey:v6];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo);
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t InvitationJoinResponse.init(coder:)(void *a1)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t InvitationJoinResponse.description.getter()
{
  v1 = 7104878;
  swift_getObjectType();
  _StringGuts.grow(_:)(45);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x6973736573202D20, 0xEE00203A44496E6FLL);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier + 8))
  {
    v13 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_sessionIdentifier);

    v3 = String.init<A>(reflecting:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x25F86F070](v3, v5);

  MEMORY[0x25F86F070](0x73656C646E616820, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles))
  {
    v14 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_memberHandles);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  MEMORY[0x25F86F070](v6, v8);

  MEMORY[0x25F86F070](0x666E497265737520, 0xEB00000000203A6FLL);
  v9 = *(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo + 8);
  if (v9 >> 60 == 15)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + OBJC_IVAR____TtC14NearbySessions22InvitationJoinResponse_userInfo), v9);
    v1 = String.init<A>(reflecting:)();
    v10 = v11;
  }

  MEMORY[0x25F86F070](v1, v10);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

id NearbyInvitationParameters.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t InvitationBlob.invitationID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID + 8);

  return v1;
}

uint64_t InvitationBlob.dataBlob.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob + 8));
  return v1;
}

uint64_t InvitationBlob.description.getter()
{
  _StringGuts.grow(_:)(56);
  MEMORY[0x25F86F070](0xD000000000000015, 0x800000025B830C80);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x25F86F070](0xD000000000000010, 0x800000025B830CA0);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID), *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID + 8));
  MEMORY[0x25F86F070](0x6C4261746164202CLL, 0xEC000000203A626FLL);
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob + 8);
  v3 = Data.description.getter();
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall InvitationBlob.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID), *(v1 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID + 8));
  v4 = MEMORY[0x25F86F000](0x6974617469766E69, 0xEC00000044496E6FLL);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob);
  v6 = *(v1 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob + 8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = MEMORY[0x25F86F000](0x626F6C4261746164, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v8];
}

uint64_t InvitationBlob.init(coder:)(void *a1)
{
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  type metadata accessor for InvitationBlob();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InvitationBlob.CodingKeys()
{
  if (*v0)
  {
    result = 0x626F6C4261746164;
  }

  else
  {
    result = 0x6974617469766E69;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvitationBlob.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974617469766E69 && a2 == 0xEC00000044496E6FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x626F6C4261746164 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvitationBlob.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvitationBlob.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationBlob.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14NearbySessions14InvitationBlobC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedEncodingContainerVy14NearbySessions14InvitationBlobC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID);
  v12 = *(v3 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID + 8);
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob + 8);
    v16 = *(v3 + OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob);
    v17 = v13;
    v15[15] = 1;
    outlined copy of Data._Representation(v16, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v16, v17);
  }

  return (*(v6 + 8))(v9, v5);
}

id InvitationBlob.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14NearbySessions14InvitationBlobC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMd, &_ss22KeyedDecodingContainerVy14NearbySessions14InvitationBlobC10CodingKeys33_1727203DAE7B5184CD8F06D353AB6F7ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InvitationBlob.CodingKeys and conformance InvitationBlob.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for InvitationBlob();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = &v1[OBJC_IVAR____TtC14NearbySessions14InvitationBlob_invitationID];
    *v13 = v11;
    v13[1] = v14;
    v18 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v1[OBJC_IVAR____TtC14NearbySessions14InvitationBlob_dataBlob] = v17;
    v15 = type metadata accessor for InvitationBlob();
    v16.receiver = v1;
    v16.super_class = v15;
    v3 = objc_msgSendSuper2(&v16, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance InvitationBlob@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t IncomingInvitationJoinRequest.remotePseudonym.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym + 8);

  return v1;
}

uint64_t IncomingInvitationJoinRequest.remotePublicKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey);
  outlined copy of Data._Representation(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey + 8));
  return v1;
}

uint64_t IncomingInvitationJoinRequest.displayName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName + 8);

  return v1;
}

uint64_t IncomingInvitationJoinRequest.destinationToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken);
  v2 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken + 8);

  return v1;
}

uint64_t IncomingInvitationJoinRequest.userInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo + 8));
  return v1;
}

void *IncomingInvitationJoinRequest.hostInfo.getter()
{
  v1 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void IncomingInvitationJoinRequest.hostInfo.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id IncomingInvitationJoinRequest.__allocating_init(invitationID:remotePseudonym:destinationToken:remotePublicKey:displayName:userInfo:hostInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = objc_allocWithZone(v12);
  v18 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  *&v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo] = 0;
  v19 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_invitationID;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v17[v19], a1, v20);
  v22 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v17[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo];
  *v26 = a10;
  *(v26 + 1) = a11;
  swift_beginAccess();
  *&v17[v18] = a12;
  v33.receiver = v17;
  v33.super_class = v12;
  v27 = objc_msgSendSuper2(&v33, sel_init);
  (*(v21 + 8))(a1, v20);
  return v27;
}

id IncomingInvitationJoinRequest.init(invitationID:remotePseudonym:destinationToken:remotePublicKey:displayName:userInfo:hostInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  *&v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo] = 0;
  v19 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_invitationID;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v12[v19], a1, v20);
  v22 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey];
  *v24 = a6;
  *(v24 + 1) = a7;
  v25 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName];
  *v25 = a8;
  *(v25 + 1) = a9;
  v26 = &v12[OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo];
  *v26 = a10;
  *(v26 + 1) = a11;
  swift_beginAccess();
  *&v12[v18] = a12;
  v32.receiver = v12;
  v32.super_class = type metadata accessor for IncomingInvitationJoinRequest(0);
  v27 = objc_msgSendSuper2(&v32, sel_init);
  (*(v21 + 8))(a1, v20);
  return v27;
}

uint64_t IncomingInvitationJoinRequest.description.getter()
{
  v1 = 7104878;
  swift_getObjectType();
  _StringGuts.grow(_:)(127);
  MEMORY[0x25F86F070](60, 0xE100000000000000);
  v2 = _typeName(_:qualified:)();
  MEMORY[0x25F86F070](v2);

  MEMORY[0x25F86F070](0x74617469766E6920, 0xEF203A44496E6F69);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x25F86F070](v3);

  MEMORY[0x25F86F070](0xD000000000000012, 0x800000025B830CE0);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym), *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym + 8));
  MEMORY[0x25F86F070](0xD000000000000014, 0x800000025B830D00);
  if (*(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken + 8))
  {
    v20 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken);

    v4 = String.init<A>(reflecting:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x25F86F070](v4, v6);

  MEMORY[0x25F86F070](0xD000000000000013, 0x800000025B830D20);
  v7 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey);
  v8 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey + 8);
  v9 = Data.description.getter();
  MEMORY[0x25F86F070](v9);

  MEMORY[0x25F86F070](0x79616C7073696420, 0xEE00203A656D614ELL);
  MEMORY[0x25F86F070](*(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName), *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName + 8));
  MEMORY[0x25F86F070](0x6E4972657375202CLL, 0xEC000000203A6F66);
  v10 = *(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo + 8);
  if (v10 >> 60 == 15)
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo), v10);
    v12 = String.init<A>(reflecting:)();
    v11 = v13;
  }

  MEMORY[0x25F86F070](v12, v11);

  v14 = MEMORY[0x25F86F070](0x666E4974736F6820, 0xEB00000000203A6FLL);
  v15 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))(v14);
  if (v15)
  {
    type metadata accessor for NearbyInvitationJoinRequestMetadata();
    v16 = v15;
    v1 = String.init<A>(reflecting:)();
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  MEMORY[0x25F86F070](v1, v18);

  MEMORY[0x25F86F070](62, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall IncomingInvitationJoinRequest.encode(with:)(NSCoder with)
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = MEMORY[0x25F86F000](0x6974617469766E69, 0xEC00000044496E6FLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v4];

  v5 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym), *(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym + 8));
  v6 = MEMORY[0x25F86F000](0x735065746F6D6572, 0xEF6D796E6F647565);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken + 8))
  {
    v7 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken));
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x25F86F000](0xD000000000000010, 0x800000025B830D40);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = *(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey);
  v10 = *(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey + 8);
  v11 = Data._bridgeToObjectiveC()().super.isa;
  v12 = MEMORY[0x25F86F000](0x755065746F6D6572, 0xEF79654B63696C62);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = MEMORY[0x25F86F000](*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName), *(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName + 8));
  v14 = MEMORY[0x25F86F000](0x4E79616C70736964, 0xEB00000000656D61);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  if (*(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo + 8) >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo);
    v15 = Data._bridgeToObjectiveC()().super.isa;
  }

  v17 = MEMORY[0x25F86F000](0x6F666E4972657375, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v17];
  swift_unknownObjectRelease();

  v18 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  v19 = MEMORY[0x25F86F000](0x6F666E4974736F68, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
}

id IncomingInvitationJoinRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - v14;
  v16 = OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo;
  *(v1 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_hostInfo) = 0;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v17 || (v18 = v17, (*(v9 + 56))(v7, 1, 1, v8), _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0]), dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)(), v18, (*(v9 + 48))(v7, 1, v8) == 1))
  {

LABEL_20:
    type metadata accessor for IncomingInvitationJoinRequest(0);
    v34 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v35 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v58 = v16;
  v19 = *(v9 + 32);
  v19(v13, v7, v8);
  v19(v15, v13, v8);
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v20 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v20)
  {
    (*(v9 + 8))(v15, v8);

    goto LABEL_19;
  }

  v60 = 0uLL;
  v21 = v20;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  v22 = *(&v60 + 1);
  if (!*(&v60 + 1))
  {
LABEL_18:

    (*(v9 + 8))(v15, v8);
    goto LABEL_19;
  }

  v23 = v60;
  type metadata accessor for NSSet(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  v24 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v24 || (v60 = xmmword_25B82C300, v25 = v24, static Data._conditionallyBridgeFromObjectiveC(_:result:)(), v25, *(&v60 + 1) >> 60 == 15))
  {
    (*(v9 + 8))(v15, v8);

LABEL_19:
    v16 = v58;
    goto LABEL_20;
  }

  v55 = v23;
  v57 = *(&v60 + 1);
  v26 = v60;
  v27 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v27)
  {
    (*(v9 + 8))(v15, v8);

    outlined consume of Data?(v26, v57);
    goto LABEL_19;
  }

  v56 = v26;
  v60 = 0uLL;
  v28 = v27;
  static String._conditionallyBridgeFromObjectiveC(_:result:)();

  if (!*(&v60 + 1))
  {

    outlined consume of Data?(v56, v57);
    goto LABEL_18;
  }

  v54 = v60;
  v29 = NSCoder.decodeObject<A>(of:forKey:)();
  v30 = v57;
  if (v29)
  {
    v60 = 0uLL;
    v31 = v29;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v32 = *(&v60 + 1);
    v33 = v60;
    if (!*(&v60 + 1))
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
    v32 = 0;
  }

  v37 = v56;
  v38 = (v2 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_destinationToken);
  *v38 = v33;
  v38[1] = v32;
  (*(v9 + 16))(v2 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_invitationID, v15, v8);
  v39 = (v2 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePseudonym);
  *v39 = v55;
  v39[1] = v22;
  v40 = (v2 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_remotePublicKey);
  *v40 = v37;
  v40[1] = v30;
  v41 = (v2 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_displayName);
  v42 = *(&v54 + 1);
  *v41 = v54;
  v41[1] = v42;
  outlined copy of Data._Representation(v37, v30);
  v43 = NSCoder.decodeObject<A>(of:forKey:)();
  v44 = v58;
  if (v43)
  {
    v45 = v43;
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xF000000000000000;
  }

  v49 = (v2 + OBJC_IVAR____TtC14NearbySessions29IncomingInvitationJoinRequest_userInfo);
  *v49 = v46;
  v49[1] = v48;
  type metadata accessor for NearbyInvitationJoinRequestMetadata();
  v50 = NSCoder.decodeObject<A>(of:forKey:)();
  outlined consume of Data?(v56, v30);
  (*(v9 + 8))(v15, v8);
  swift_beginAccess();
  v51 = *(v2 + v44);
  *(v2 + v44) = v50;

  v52 = type metadata accessor for IncomingInvitationJoinRequest(0);
  v59.receiver = v2;
  v59.super_class = v52;
  v53 = objc_msgSendSuper2(&v59, sel_init);

  return v53;
}