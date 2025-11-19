uint64_t sub_2427172BC(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = sub_242716E04();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v32 = ~v7;
    v9 = 0xEC00000065707954;
    v10 = 0xEA0000000000746ELL;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      if (v11 > 3)
      {
        if (*(*(v4 + 48) + v8) > 5u)
        {
          if (v11 == 6)
          {
            v16 = 0xE400000000000000;
            v15 = 1953722184;
          }

          else
          {
            v15 = 0x66412D7972746552;
            v16 = 0xEB00000000726574;
          }
        }

        else
        {
          if (v11 == 4)
          {
            v15 = 0x7A69726F68747541;
          }

          else
          {
            v15 = 0xD000000000000010;
          }

          if (v11 == 4)
          {
            v16 = 0xED00006E6F697461;
          }

          else
          {
            v16 = 0x80000002427338A0;
          }
        }
      }

      else
      {
        if (v11 == 2)
        {
          v12 = v9;
        }

        else
        {
          v12 = 0xEE006874676E654CLL;
        }

        v13 = 0xD000000000000018;
        if (*(*(v4 + 48) + v8))
        {
          v13 = 0x6567412D72657355;
          v14 = 0xEA0000000000746ELL;
        }

        else
        {
          v14 = 0x8000000242733850;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0x2D746E65746E6F43;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v17 = 0x66412D7972746552;
      if (a2 == 6)
      {
        v17 = 1953722184;
      }

      v18 = 0xEB00000000726574;
      if (a2 == 6)
      {
        v18 = 0xE400000000000000;
      }

      v19 = 0x7A69726F68747541;
      if (a2 != 4)
      {
        v19 = 0xD000000000000010;
      }

      v20 = 0xED00006E6F697461;
      if (a2 != 4)
      {
        v20 = 0x80000002427338A0;
      }

      if (a2 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = a2 == 2 ? v9 : 0xEE006874676E654CLL;
      v22 = 0xD000000000000018;
      if (a2)
      {
        v22 = 0x6567412D72657355;
      }

      else
      {
        v10 = 0x8000000242733850;
      }

      if (a2 <= 1u)
      {
        v21 = v10;
      }

      else
      {
        v22 = 0x2D746E65746E6F43;
      }

      v23 = a2 <= 3u ? v22 : v17;
      v24 = a2 <= 3u ? v21 : v18;
      if (v15 == v23 && v16 == v24)
      {
        break;
      }

      v25 = v9;
      v26 = sub_242732AE4();

      if (v26)
      {
        goto LABEL_57;
      }

      v8 = (v8 + 1) & v32;
      v9 = v25;
      v10 = 0xEA0000000000746ELL;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_55:
    v27 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v30;
    sub_24271794C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v30 = v33;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2427175D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB258, &qword_242738E20);
  result = sub_2427328C4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_242732BA4();
      sub_242732554();

      result = sub_242732BD4();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24271794C(uint64_t result, unint64_t a2, char a3)
{
  v34 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_62;
  }

  if (a3)
  {
    sub_2427175D8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_242717CB0();
      goto LABEL_62;
    }

    sub_242717DF0(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  result = sub_242716E04();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v33 = ~v9;
    v10 = 0xEE006874676E654CLL;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 3)
      {
        if (*(*(v7 + 48) + a2) > 5u)
        {
          if (v11 == 6)
          {
            v16 = 0xE400000000000000;
            v15 = 1953722184;
          }

          else
          {
            v15 = 0x66412D7972746552;
            v16 = 0xEB00000000726574;
          }
        }

        else
        {
          if (v11 == 4)
          {
            v15 = 0x7A69726F68747541;
          }

          else
          {
            v15 = 0xD000000000000010;
          }

          if (v11 == 4)
          {
            v16 = 0xED00006E6F697461;
          }

          else
          {
            v16 = 0x80000002427338A0;
          }
        }
      }

      else
      {
        if (v11 == 2)
        {
          v12 = 0xEC00000065707954;
        }

        else
        {
          v12 = v10;
        }

        v13 = 0xD000000000000018;
        if (*(*(v7 + 48) + a2))
        {
          v13 = 0x6567412D72657355;
          v14 = 0xEA0000000000746ELL;
        }

        else
        {
          v14 = 0x8000000242733850;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v15 = v13;
        }

        else
        {
          v15 = 0x2D746E65746E6F43;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }
      }

      v17 = 0x66412D7972746552;
      if (v34 == 6)
      {
        v17 = 1953722184;
      }

      v18 = 0xEB00000000726574;
      if (v34 == 6)
      {
        v18 = 0xE400000000000000;
      }

      v19 = 0x7A69726F68747541;
      if (v34 != 4)
      {
        v19 = 0xD000000000000010;
      }

      v20 = 0xED00006E6F697461;
      if (v34 != 4)
      {
        v20 = 0x80000002427338A0;
      }

      if (v34 <= 5u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v10;
      v22 = v34 == 2 ? 0xEC00000065707954 : v10;
      v23 = 0xD000000000000018;
      if (v34)
      {
        v23 = 0x6567412D72657355;
        v24 = 0xEA0000000000746ELL;
      }

      else
      {
        v24 = 0x8000000242733850;
      }

      if (v34 <= 1u)
      {
        v22 = v24;
      }

      else
      {
        v23 = 0x2D746E65746E6F43;
      }

      v25 = v34 <= 3u ? v23 : v17;
      v26 = v34 <= 3u ? v22 : v18;
      if (v15 == v25 && v16 == v26)
      {
        goto LABEL_65;
      }

      v27 = sub_242732AE4();

      if (v27)
      {
        goto LABEL_66;
      }

      a2 = (a2 + 1) & v33;
      v10 = v21;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_62:
  v28 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + a2) = v34;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_65:

LABEL_66:
  result = sub_242732B04();
  __break(1u);
  return result;
}

void *sub_242717CB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB258, &qword_242738E20);
  v2 = *v0;
  v3 = sub_2427328B4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_242717DF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB258, &qword_242738E20);
  result = sub_2427328C4();
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
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_242732BA4();
      sub_242732554();

      result = sub_242732BD4();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_242718134(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_242718210();
  result = MEMORY[0x245D17290](v2, &type metadata for HTTPHeader, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2427172BC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2427181A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242718210()
{
  result = qword_27ECBB250;
  if (!qword_27ECBB250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB250);
  }

  return result;
}

uint64_t sub_242718264()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB260);
  __swift_project_value_buffer(v0, qword_27ECBB260);
  return sub_242732234();
}

uint64_t sub_2427182E4()
{
  v1 = OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB2A0, &unk_242738E60);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_242718358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AsyncTaskDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AsyncTaskDelegate()
{
  result = qword_27ECBB280;
  if (!qword_27ECBB280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24271845C()
{
  sub_2427184EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2427184EC()
{
  if (!qword_27ECBB290)
  {
    sub_242718568();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
    v0 = sub_2427326E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECBB290);
    }
  }
}

unint64_t sub_242718568()
{
  result = qword_27ECBB298;
  if (!qword_27ECBB298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBB298);
  }

  return result;
}

void sub_242718640(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB2A0, &unk_242738E60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  if (qword_27ECBA988 != -1)
  {
    swift_once();
  }

  v11 = sub_242732244();
  __swift_project_value_buffer(v11, qword_27ECBB260);
  v12 = a1;
  v13 = a2;
  v14 = sub_242732224();
  v15 = sub_2427327B4();

  if (os_log_type_enabled(v14, v15))
  {
    v35 = v2;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2112;
    v18 = v12;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v16 + 14) = v20;
    v17[1] = v21;
    _os_log_impl(&dword_2426EB000, v14, v15, "Task [%@] completed with error: %@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECBAE80, &qword_242736EF0);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v17, -1, -1);
    MEMORY[0x245D17E30](v16, -1, -1);
    v3 = v35;
  }

  if (a2)
  {
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation, v6);
    v36 = a2;
    v22 = a2;
    sub_2427326C4();
LABEL_12:
    (*(v7 + 8))(v10, v6);
    return;
  }

  v23 = [v12 response];
  if (v23)
  {
    v24 = v23;
    (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation, v6);
    v36 = v24;
    sub_2427326D4();
    goto LABEL_12;
  }

  v25 = v12;
  v26 = sub_242732224();
  v27 = sub_2427327D4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_2426EB000, v26, v27, "No response set for task [%@]", v28, 0xCu);
    sub_2427053AC(v29);
    MEMORY[0x245D17E30](v29, -1, -1);
    MEMORY[0x245D17E30](v28, -1, -1);
  }

  sub_242718A7C();
  v31 = swift_allocError();
  *v32 = 0;
  v32[1] = 0;
  swift_willThrow();
  (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation, v6);
  v36 = v31;
  v33 = v31;
  sub_2427326C4();
  (*(v7 + 8))(v10, v6);
}

unint64_t sub_242718A7C()
{
  result = qword_27ECBB2A8[0];
  if (!qword_27ECBB2A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECBB2A8);
  }

  return result;
}

uint64_t sub_242718AD4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for AsyncRequestQueue.RequestState();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
  result = sub_242732784();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_242732754();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

char *sub_242718C00()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = *(*v0 + 112);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  type metadata accessor for AsyncRequestQueue.RequestState();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
  v6 = sub_242732784();
  (*(*(v6 - 8) + 8))(&v0[v3], v6);
  v7 = *(*v0 + 120);
  v8 = sub_242732754();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_242718D48()
{
  sub_242718C00();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_242718DAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = sub_24271910C();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
      result = sub_2427326E4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_242718E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 84) == a2)
  {
    v5 = *(v4 + 48);

    return v5();
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v7 = *(a1 + *(a3 + 36));
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    return (v7 + 1);
  }

  else
  {
    v8 = *(a3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
    v12 = sub_2427326E4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_242718FC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);

    return v7(result, a2, a2, v5);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(result + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v8 = *(a4 + 24);
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBADE8, &unk_2427387A0);
    v11 = sub_2427326E4();
    v12 = *(*(v11 - 8) + 56);
    v13 = v9 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

unint64_t sub_24271910C()
{
  result = qword_27ECBB3B0[0];
  if (!qword_27ECBB3B0[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27ECBB3B0);
  }

  return result;
}

uint64_t sub_2427191E4()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB438);
  v1 = __swift_project_value_buffer(v0, qword_27ECBB438);
  if (qword_27ECBA9A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27ECBF910);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2427192AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24271933C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_242719384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2427193DC@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v37 = *a1;
  sub_2426F0FFC(a3, v44);
  sub_2426F0FFC(v5, v42);
  v8 = [a2 identity];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 impi];

    v11 = sub_2427324B4();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a2 fileTransferCapabilities];
  if (v14 && (v15 = v14, v16 = [v14 userName], v15, v16))
  {
    v17 = sub_2427324B4();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [a2 fileTransferCapabilities];
  if (v20 && (v21 = v20, v22 = [v20 password], v21, v22))
  {
    v23 = sub_2427324B4();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [a2 bsfPort];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 integerValue];
  }

  else
  {
    v28 = 0;
  }

  v29 = [a2 bsfUsesSecureTransport];
  v45[0] = v37;
  v46 = v11;
  v47 = v13;
  v48 = v17;
  v49 = v19;
  v50 = v23;
  v51 = v25;
  v52 = v28;
  v53 = v27 == 0;
  v54 = v29;
  sub_2426F0FE4(v44, &v55);
  sub_2426F0FE4(v42, &v56);
  sub_242719C08(v45, v44);
  sub_242719C08(v44, v42);
  v41[3] = &type metadata for URLSessionAuthenticator.DefaultFactory;
  v41[4] = &off_285502950;
  v30 = type metadata accessor for URLSessionAuthenticator();
  v31 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v41, &type metadata for URLSessionAuthenticator.DefaultFactory);
  v39 = &type metadata for URLSessionAuthenticator.DefaultFactory;
  v40 = &off_285502950;
  swift_defaultActor_initialize();
  *(v31 + 344) = 0;
  *(v31 + 312) = 0u;
  *(v31 + 328) = 0u;
  v32 = v42[7];
  *(v31 + 208) = v42[6];
  *(v31 + 224) = v32;
  *(v31 + 240) = v42[8];
  *(v31 + 256) = v43;
  v33 = v42[3];
  *(v31 + 144) = v42[2];
  *(v31 + 160) = v33;
  v34 = v42[5];
  *(v31 + 176) = v42[4];
  *(v31 + 192) = v34;
  v35 = v42[1];
  *(v31 + 112) = v42[0];
  *(v31 + 128) = v35;
  sub_2426F0FE4(&v38, v31 + 264);
  *(v31 + 304) = MEMORY[0x277D84F98];
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  sub_242719C64(v44);
  a4[3] = v30;
  a4[4] = &off_285502780;
  *a4 = v31;
  return sub_242719C64(v45);
}

uint64_t sub_2427196D8(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a6 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](a1);
  v19 = &v29[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v17);
  v21 = &v29[-v20 - 8];
  (*(v15 + 32))(&v29[-v20 - 8], v22, v23);
  v31[3] = a7;
  v31[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a4, a7);
  v25 = *a1;
  sub_2426F0FFC(v31, v30);
  sub_2426F0C8C(v30, v29);
  (*(v15 + 16))(v19, v21, a6);
  v26 = sub_2427198A8(v25, a2, v19, v29, a6, a8);
  sub_2426F0CE8(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  (*(v15 + 8))(v21, a6);
  return v26;
}

uint64_t sub_2427198A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v14, v15, v16);
  v35[3] = &type metadata for ManagedURLSessionAuthenticator.DefaultFactory;
  v35[4] = &off_285502100;
  v17 = swift_allocObject();
  v35[0] = v17;
  v18 = *(a4 + 16);
  *(v17 + 16) = *a4;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(a4 + 32);
  type metadata accessor for ManagedURLSessionAuthenticator();
  v19 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v35, &type metadata for ManagedURLSessionAuthenticator.DefaultFactory);
  swift_cvw_initWithCopy();
  v33 = &type metadata for ManagedURLSessionAuthenticator.DefaultFactory;
  v34 = &off_285502100;
  v20 = swift_allocObject();
  v32[0] = v20;
  v21 = v27[1];
  *(v20 + 16) = v27[0];
  *(v20 + 32) = v21;
  *(v20 + 48) = v28;
  swift_defaultActor_initialize();
  v22 = v10 & 1;
  *(v19 + 112) = v10 & 1;
  sub_2426F0FFC(v32, v19 + 120);
  *(v19 + 160) = [objc_allocWithZone(MEMORY[0x277CC37B0]) initWithQueue_];
  v23 = (*(a6 + 32))(a5, a6);
  sub_24271AEA8(a2);
  v24 = sub_242732484();

  [v23 set:v24 sourceApplicationBundleIdentifier:?];

  v25 = [objc_opt_self() sessionWithConfiguration_];
  v31[3] = sub_242719BBC();
  v31[4] = &off_2855013B8;

  v31[0] = v25;
  sub_2426F0FFC(v31, v19 + 168);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v29 = v22;
  sub_2427193DC(&v29, a2, v31, v30);
  (*(v11 + 8))(v14, a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  sub_2426F0FE4(v30, v19 + 208);
  *(v19 + 248) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v19;
}

uint64_t sub_242719B84()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_242719BBC()
{
  result = qword_27ECBAAF8;
  if (!qword_27ECBAAF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBAAF8);
  }

  return result;
}

id sub_242719CB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB2A0, &unk_242738E60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v9 + 16);
  v13(&v19 - v11, a1, v8);
  v14 = objc_allocWithZone(type metadata accessor for AsyncTaskDelegate());
  v13(&v14[OBJC_IVAR____TtC15CTLazuliSupport17AsyncTaskDelegate_continuation], v12, v8);
  v15 = &v14[OBJC_IVAR____TtC15CTLazuliSupport16AuthTaskDelegate_challengeHandler];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = type metadata accessor for AuthTaskDelegate();
  v19.receiver = v14;
  v19.super_class = v16;

  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v9 + 8))(v12, v8);
  [a2 setDelegate_];

  return [a2 resume];
}

void sub_242719E74()
{
  if (*(v0 + 24))
  {
    v1 = v0;
    v2 = qword_27ECBA9A8;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = sub_242732244();
    __swift_project_value_buffer(v3, qword_27ECBF928);
    v4 = sub_242732224();
    v5 = sub_2427327B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2426EB000, v4, v5, "Starting network monitor", v6, 2u);
      MEMORY[0x245D17E30](v6, -1, -1);
    }

    v7 = *(v1 + 16);
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_24271AD94;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24271A484;
    aBlock[3] = &block_descriptor_2;
    v9 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    nw_path_evaluator_set_update_handler();
    _Block_release(v9);
    nw_path_evaluator_start();
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_27ECBA9A8 != -1)
    {
      swift_once();
    }

    v10 = sub_242732244();
    __swift_project_value_buffer(v10, qword_27ECBF928);
    oslog = sub_242732224();
    v11 = sub_2427327D4();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2426EB000, oslog, v11, "Unable to start path evaluator since initialization failed", v12, 2u);
      MEMORY[0x245D17E30](v12, -1, -1);
    }
  }
}

uint64_t sub_24271A118()
{
  if (*(v0 + 24))
  {
    nw_path_evaluator_cancel();
  }

  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_24271A190(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_24271A1EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24271A24C(uint64_t result)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_unknownObjectRetain();
      sub_24271A2C0();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_24271A2C0()
{
  v1 = v0;
  if (qword_27ECBA9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_242732244();
  __swift_project_value_buffer(v2, qword_27ECBF928);
  swift_unknownObjectRetain();
  v3 = sub_242732224();
  v4 = sub_2427327C4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4D8, &qword_242739210);
    v7 = sub_242732504();
    v9 = sub_2426FBA6C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2426EB000, v3, v4, "Received path update: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x245D17E30](v6, -1, -1);
    MEMORY[0x245D17E30](v5, -1, -1);
  }

  v10 = *(v1 + 32);
  MEMORY[0x28223BE20](v11);
  os_unfair_lock_lock(v10 + 8);
  sub_24271ADB4(&v10[4]);
  os_unfair_lock_unlock(v10 + 8);
}

uint64_t sub_24271A484(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_24271A4E4(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = MEMORY[0x245D17840](*a1);
    v5 = MEMORY[0x245D17840](a2);
    if (v4 == v5)
    {
      goto LABEL_11;
    }

    v6 = v5;
  }

  else
  {
    if ((MEMORY[0x245D17840](a2) & 1) == 0)
    {
      goto LABEL_11;
    }

    v4 = 0;
    v6 = 1;
  }

  if (qword_27ECBA9A8 != -1)
  {
    swift_once();
  }

  v7 = sub_242732244();
  __swift_project_value_buffer(v7, qword_27ECBF928);
  v8 = sub_242732224();
  v9 = sub_2427327B4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v4;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v6;
    _os_log_impl(&dword_2426EB000, v8, v9, "Ultra constrained updated from %{BOOL}d -> %{BOOL}d", v10, 0xEu);
    MEMORY[0x245D17E30](v10, -1, -1);
  }

LABEL_11:
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a1 = a2;
  v11 = [objc_allocWithZone(MEMORY[0x277CC3650]) initAgentDataFromInternetPath_];
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = [*(a1 + 8) dataPlanTier];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v11 dataPlanTier];
  if (v14 != v13)
  {
    v15 = v14;
    if (qword_27ECBA9A8 != -1)
    {
      swift_once();
    }

    v16 = sub_242732244();
    __swift_project_value_buffer(v16, qword_27ECBF928);
    v17 = sub_242732224();
    v18 = sub_2427327B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109376;
      *(v19 + 4) = v13;
      *(v19 + 8) = 1024;
      *(v19 + 10) = v15;
      _os_log_impl(&dword_2426EB000, v17, v18, "Data plan tier updated from %u -> %u", v19, 0xEu);
      MEMORY[0x245D17E30](v19, -1, -1);
    }
  }

  *(a1 + 8) = v11;
}

void *sub_24271A780(uint64_t a1)
{
  v26 = a1;
  v1 = sub_242732804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2427327F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_242732274();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_24271AC54();
  sub_242732254();
  v27 = MEMORY[0x277D84F90];
  sub_24271ACA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECBB4C0, &qword_242739200);
  sub_24271ACF8();
  sub_2427328A4();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v1);
  v10 = v25[1];
  v11 = sub_242732814();
  v12 = v26;
  v10[2] = v11;
  if (v12)
  {
    v13 = nw_path_evaluator_copy_path();
    if (v13)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CC3650]) initAgentDataFromInternetPath_];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v10[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4D0, &qword_242739208);
  v15 = swift_allocObject();
  *(v15 + 32) = 0;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v10[4] = v15;
  if (v13)
  {
    v16 = v14;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v17 = MEMORY[0x245D17840](v13);
    if (v14)
    {
LABEL_8:
      v18 = [v14 dataPlanTier];
      goto LABEL_11;
    }
  }

  else
  {
    v19 = v14;
    swift_unknownObjectRetain();
    v17 = 0;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  v18 = 0;
LABEL_11:
  if (qword_27ECBA9A8 != -1)
  {
    swift_once();
  }

  v20 = sub_242732244();
  __swift_project_value_buffer(v20, qword_27ECBF928);
  v21 = sub_242732224();
  v22 = sub_2427327B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109376;
    *(v23 + 4) = v17;
    *(v23 + 8) = 1024;
    *(v23 + 10) = v18;
    _os_log_impl(&dword_2426EB000, v21, v22, "Created network monitor: ultra constrained: %{BOOL}d, tier: %u", v23, 0xEu);
    MEMORY[0x245D17E30](v23, -1, -1);
  }

  sub_242719E74();
  swift_unknownObjectRelease();
  return v10;
}

void *sub_24271AB44()
{
  default_evaluator = nw_path_create_default_evaluator();
  if (!default_evaluator)
  {
    if (qword_27ECBA9A8 != -1)
    {
      swift_once();
    }

    v1 = sub_242732244();
    __swift_project_value_buffer(v1, qword_27ECBF928);
    v2 = sub_242732224();
    v3 = sub_2427327D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2426EB000, v2, v3, "Failed to initialize path evaluator, will use default values", v4, 2u);
      MEMORY[0x245D17E30](v4, -1, -1);
    }
  }

  type metadata accessor for NetworkMonitor();
  swift_allocObject();
  v5 = sub_24271A780(default_evaluator);
  swift_unknownObjectRelease();
  return v5;
}

unint64_t sub_24271AC54()
{
  result = qword_27ECBB4B0;
  if (!qword_27ECBB4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBB4B0);
  }

  return result;
}

unint64_t sub_24271ACA0()
{
  result = qword_27ECBB110;
  if (!qword_27ECBB110)
  {
    sub_2427327F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB110);
  }

  return result;
}

unint64_t sub_24271ACF8()
{
  result = qword_27ECBB118;
  if (!qword_27ECBB118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ECBB4C0, &qword_242739200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB118);
  }

  return result;
}

uint64_t sub_24271AD5C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24271AE30(uint64_t a1, uint64_t *a2)
{
  v3 = sub_242732244();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_242732234();
}

unint64_t sub_24271AEA8(void *a1)
{
  v2 = [a1 networkAttributionBundleID];
  v3 = sub_2427324B4();
  v5 = v4;

  v10[0] = v3;
  v10[1] = v5;
  v9[2] = v10;
  LOBYTE(v3) = sub_2426F674C(sub_2426FC1F8, v9, &unk_2855007B8);
  swift_arrayDestroy();

  if ((v3 & 1) == 0)
  {
    return 0xD000000000000021;
  }

  v6 = [a1 networkAttributionBundleID];
  v7 = sub_2427324B4();

  return v7;
}

uint64_t get_enum_tag_for_layout_string_15CTLazuliSupport12FileTransferO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24271AFC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24271B020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_24271B070(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_24271B0A0(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v72 = a1;
  v79 = *MEMORY[0x277D85DE8];
  v5 = sub_242732424();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v5);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_242732394();
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_242732414();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_242732384();
  v65 = *(v66 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v63 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_242732434();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_242732444();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >= 2u)
  {
    v29 = v72;
    if (a3 == 2)
    {
      sub_24271EBF8(&qword_27ECBB5E0, MEMORY[0x277CC5540]);
      sub_242732374();
      sub_2426FC2A4(v29, a2);
      sub_24271C198(v29, a2, v14);
      sub_2426FBA18(v29, a2);
      v30 = v63;
      sub_242732364();
      (*(v62 + 8))(v14, v11);
      v31 = v66;
      v76 = v66;
      v77 = sub_24271EBF8(&qword_27ECBB5E8, MEMORY[0x277CC5290]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v75);
      v33 = v65;
      (*(v65 + 16))(boxed_opaque_existential_1, v30, v31);
      __swift_project_boxed_opaque_existential_1(&v75, v76);
      sub_242731DF4();
      (*(v33 + 8))(v30, v31);
      goto LABEL_6;
    }

    sub_24271EBF8(&qword_27ECBB5D0, MEMORY[0x277CC5560]);
    v35 = v64;
    v36 = v68;
    sub_242732374();
    sub_2426FC2A4(v29, a2);
    sub_24271C3BC(v29, a2, v35);
    sub_2426FBA18(v29, a2);
    v37 = v69;
    sub_242732364();
    (*(v67 + 8))(v35, v36);
    v38 = v71;
    v76 = v71;
    v77 = sub_24271EBF8(&qword_27ECBB5D8, MEMORY[0x277CC52E8]);
    v39 = __swift_allocate_boxed_opaque_existential_1(&v75);
    v40 = v70;
    (*(v70 + 16))(v39, v37, v38);
    __swift_project_boxed_opaque_existential_1(&v75, v76);
    sub_242731DF4();
    (*(v40 + 8))(v37, v38);
    v41 = v78;
    __swift_destroy_boxed_opaque_existential_1Tm(&v75);
    sub_24271BDE0(32, v41, *(&v41 + 1), &v78);
    v76 = MEMORY[0x277CC9318];
    v77 = MEMORY[0x277CC9300];
    v75 = v78;
    v42 = __swift_project_boxed_opaque_existential_1(&v75, MEMORY[0x277CC9318]);
    v43 = *v42;
    v44 = v42[1];
    v45 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      if (v45 != 2)
      {
        memset(v73, 0, 14);
        v47 = v73;
        v46 = v73;
        goto LABEL_29;
      }

      v48 = *(v43 + 16);
      v49 = *(v43 + 24);
      v50 = sub_242731DA4();
      if (v50)
      {
        v51 = sub_242731DD4();
        v43 = v48 - v51;
        if (__OFSUB__(v48, v51))
        {
          goto LABEL_32;
        }

        v50 += v43;
      }

      v52 = __OFSUB__(v49, v48);
      v53 = v49 - v48;
      if (!v52)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v45)
    {
      v73[0] = *v42;
      LOWORD(v73[1]) = v44;
      BYTE2(v73[1]) = BYTE2(v44);
      BYTE3(v73[1]) = BYTE3(v44);
      BYTE4(v73[1]) = BYTE4(v44);
      BYTE5(v73[1]) = BYTE5(v44);
      v46 = v73 + BYTE6(v44);
      v47 = v73;
LABEL_29:
      sub_242711620(v47, v46, &v74);
      v34 = v74;
      goto LABEL_30;
    }

    v54 = v43;
    v55 = v43 >> 32;
    v53 = v55 - v54;
    if (v55 >= v54)
    {
      v50 = sub_242731DA4();
      if (!v50)
      {
LABEL_21:
        v57 = sub_242731DC4();
        if (v57 >= v53)
        {
          v58 = v53;
        }

        else
        {
          v58 = v57;
        }

        v59 = (v58 + v50);
        if (v50)
        {
          v46 = v59;
        }

        else
        {
          v46 = 0;
        }

        v47 = v50;
        goto LABEL_29;
      }

      v56 = sub_242731DD4();
      if (!__OFSUB__(v54, v56))
      {
        v50 += v54 - v56;
        goto LABEL_21;
      }

LABEL_33:
      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_24271EBF8(&qword_27ECBB5F0, MEMORY[0x277CC5588]);
  sub_242732374();
  v27 = v72;
  sub_2426FC2A4(v72, a2);
  sub_24271BF74(v27, a2, v21);
  sub_2426FBA18(v27, a2);
  sub_242732364();
  (*(v18 + 8))(v21, v17);
  v76 = v22;
  v77 = sub_24271EBF8(&qword_27ECBB5F8, MEMORY[0x277CC55B0]);
  v28 = __swift_allocate_boxed_opaque_existential_1(&v75);
  (*(v23 + 16))(v28, v26, v22);
  __swift_project_boxed_opaque_existential_1(&v75, v76);
  sub_242731DF4();
  (*(v23 + 8))(v26, v22);
LABEL_6:
  v34 = v78;
LABEL_30:
  __swift_destroy_boxed_opaque_existential_1Tm(&v75);
  v60 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t sub_24271BA3C()
{
  v1 = *v0;
  sub_242732BA4();
  sub_242732554();

  return sub_242732BD4();
}

uint64_t sub_24271BB04()
{
  *v0;
  *v0;
  *v0;
  sub_242732554();
}

uint64_t sub_24271BBB8()
{
  v1 = *v0;
  sub_242732BA4();
  sub_242732554();

  return sub_242732BD4();
}

uint64_t sub_24271BC7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24271C7D8();
  *a2 = result;
  return result;
}

void sub_24271BCAC(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 3490893;
  v4 = 0xE700000000000000;
  v5 = 0x3635322D414853;
  if (*v1 != 2)
  {
    v5 = 0x2D3231352D414853;
    v4 = 0xEB00000000363532;
  }

  if (*v1)
  {
    v3 = 0x444D2D3176414B41;
    v2 = 0xE900000000000035;
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

uint64_t sub_24271BDE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_24271C724(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_24271C6C0(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 >= v12)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (v7 <= 1)
    {
LABEL_26:
      v14 = sub_242731F94();
      v16 = v15;
      result = sub_2426FBA18(v5, a3);
      *a4 = v14;
      a4[1] = v16;
      return result;
    }

    if (v7 == 2)
    {
      v13 = *(v5 + 16);
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

unint64_t sub_24271BF28(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_242732644();
  }

  __break(1u);
  return result;
}

uint64_t sub_24271BF74(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_242732434();
      sub_24271EBF8(&qword_27ECBB5F0, MEMORY[0x277CC5588]);
      result = sub_242732354();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_24271C5E0(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5588], &qword_27ECBB5F0, MEMORY[0x277CC5588]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24271C198(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_242732414();
      sub_24271EBF8(&qword_27ECBB5E0, MEMORY[0x277CC5540]);
      result = sub_242732354();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_24271C5E0(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27ECBB5E0, MEMORY[0x277CC5540]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24271C3BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_242732424();
      sub_24271EBF8(&qword_27ECBB5D0, MEMORY[0x277CC5560]);
      result = sub_242732354();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_24271C5E0(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27ECBB5D0, MEMORY[0x277CC5560]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24271C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_242731DA4();
  if (!result || (result = sub_242731DD4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_242731DC4();
      a5(0);
      sub_24271EBF8(a6, a7);
      return sub_242732354();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24271C6C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_24271C724(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_24271C7D8()
{
  v0 = sub_2427329D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void sub_24271C824(void *a1@<X0>, uint64_t a2@<X8>)
{
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4E0, &qword_2427392D0);
  v201 = *(v203 - 8);
  v4 = *(v201 + 64);
  v5 = MEMORY[0x28223BE20](v203);
  v202 = v199 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v204 = v199 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4E8, &qword_2427392D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v199 - v10;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4F0, &qword_2427392E0);
  v206 = *(v207 - 8);
  v12 = *(v206 + 64);
  v13 = MEMORY[0x28223BE20](v207);
  v205 = v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v213 = v199 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB4F8, &qword_2427392E8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v214 = v199 - v18;
  v235 = sub_242731D74();
  v208 = *(v235 - 8);
  v19 = *(v208 + 64);
  MEMORY[0x28223BE20](v235);
  v234 = v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB500, &qword_2427392F0);
  v215 = *(v211 - 8);
  v21 = *(v215 + 64);
  v22 = MEMORY[0x28223BE20](v211);
  v209 = v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v210 = v199 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB508, &qword_2427392F8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v212 = v199 - v27;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB510, &qword_242739300);
  v218 = *(v219 - 8);
  v28 = *(v218 + 64);
  v29 = MEMORY[0x28223BE20](v219);
  v216 = v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v217 = v199 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB518, &qword_242739308);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v220 = v199 - v34;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB520, &qword_242739310);
  v223 = *(v224 - 8);
  v35 = *(v223 + 64);
  v36 = MEMORY[0x28223BE20](v224);
  v221 = v199 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v222 = v199 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB528, &qword_242739318);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v230 = v199 - v41;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC60, &qword_2427370A0);
  v227 = *(v228 - 8);
  v42 = *(v227 + 64);
  v43 = MEMORY[0x28223BE20](v228);
  v226 = v199 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v232 = v199 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC68, &qword_2427370A8);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v229 = v199 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB530, &qword_242739320);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = v199 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = v199 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB538, &qword_242739328);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v60 = v199 - v59;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB540, &qword_242739330);
  v236 = *(v237 - 8);
  v61 = *(v236 + 64);
  MEMORY[0x28223BE20](v237);
  v233 = v199 - v62;
  v63 = sub_242732484();
  v64 = [a1 valueForHTTPHeaderField_];

  if (!v64)
  {

    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
LABEL_4:
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
LABEL_12:
    *a2 = v68;
    *(a2 + 8) = v69;
    *(a2 + 16) = v70;
    *(a2 + 24) = v71;
    *(a2 + 32) = v64;
    *(a2 + 40) = v72;
    *(a2 + 48) = v73;
    *(a2 + 56) = v74;
    *(a2 + 64) = v75;
    return;
  }

  v200 = v11;
  v231 = a1;
  v225 = a2;
  v65 = sub_2427324B4();
  v67 = v66;

  sub_242732064();
  sub_2427010B0(&qword_27ECBB548, &qword_27ECBB530, &qword_242739320);
  sub_242732054();
  sub_242732644();
  sub_242732094();

  v76 = *(v50 + 8);
  v76(v54, v49);
  v76(v56, v49);
  v77 = v236;
  v78 = v237;
  v79 = (*(v236 + 48))(v60, 1, v237);
  if (v79 == 1)
  {

    v80 = &qword_27ECBB538;
    v81 = &qword_242739328;
LABEL_10:
    sub_2426FED88(v60, v80, v81);
LABEL_11:
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v64 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    a2 = v225;
    goto LABEL_12;
  }

  (*(v77 + 32))(v233, v60, v78);
  swift_getKeyPath();
  sub_2427320A4();

  v82 = sub_24271BF28(v245, v65, v67);
  v84 = v83;
  v86 = v85;
  v88 = v87;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBACA0, &qword_2427370D8);
  sub_242732064();
  if (v84 >> 14 >= v82 >> 14)
  {
    v199[3] = v82;
    v199[2] = v84;
    v199[1] = v86;
    sub_242732874();
    sub_2427010B0(&qword_27ECBACA8, &qword_27ECBAC60, &qword_2427370A0);
    v89 = v226;
    v90 = v228;
    sub_242732054();
    v60 = v229;
    v91 = v90;
    sub_242732074();
    v92 = v88;

    v93 = *(v227 + 8);
    v93(v89, v91);
    v93(v232, v91);
    v94 = v231;
    v95 = v230;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAC70, &qword_2427370B0);
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v60, 1, v96) == 1)
    {
      (*(v236 + 8))(v233, v237);

      v80 = &qword_27ECBAC68;
      v81 = &qword_2427370A8;
      goto LABEL_10;
    }

    swift_getKeyPath();
    sub_2427320A4();

    v98 = v245;
    v99 = v246;
    v100 = v95;
    v101 = v247;
    v102 = v248;
    (*(v97 + 8))(v60, v96);
    v229 = MEMORY[0x245D17030](v98, v99, v101, v102);
    v230 = v103;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB550, &qword_242739388);
    v104 = v222;
    sub_242732064();
    v232 = v92;
    sub_242732874();
    sub_2427010B0(&qword_27ECBB558, &qword_27ECBB520, &qword_242739310);
    v105 = v221;
    v106 = v224;
    sub_242732054();
    sub_242732074();

    v107 = *(v223 + 8);
    v107(v105, v106);
    v107(v104, v106);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB560, &qword_242739390);
    v109 = *(v108 - 8);
    if ((*(v109 + 48))(v100, 1, v108) == 1)
    {
      (*(v236 + 8))(v233, v237);

      sub_2426FED88(v100, &qword_27ECBB528, &qword_242739318);
LABEL_17:

      goto LABEL_11;
    }

    swift_getKeyPath();
    sub_2427320A4();

    v110 = v245;
    v111 = v246;
    v112 = v247;
    v113 = v248;
    (*(v109 + 8))(v100, v108);
    v227 = MEMORY[0x245D17030](v110, v111, v112, v113);
    v228 = v114;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB568, &qword_2427393B8);
    v115 = v217;
    sub_242732064();
    sub_242732874();
    sub_2427010B0(&qword_27ECBB570, &qword_27ECBB510, &qword_242739300);
    v116 = v216;
    v117 = v219;
    sub_242732054();
    v118 = v220;
    sub_242732074();

    v119 = *(v218 + 8);
    v119(v116, v117);
    v119(v115, v117);
    v120 = v118;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB578, &qword_2427393C0);
    v122 = *(v121 - 8);
    if ((*(v122 + 48))(v120, 1, v121) == 1)
    {
      (*(v236 + 8))(v233, v237);

      sub_2426FED88(v120, &qword_27ECBB518, &qword_242739308);

      goto LABEL_17;
    }

    swift_getKeyPath();
    sub_2427320A4();

    v123 = v245;
    v124 = v246;
    v125 = v247;
    v126 = (*(v122 + 8))(v120, v121);
    v245 = 44;
    v246 = 0xE100000000000000;
    MEMORY[0x28223BE20](v126);
    v199[-2] = &v245;
    v127 = sub_2426FB1C8(0x7FFFFFFFFFFFFFFFLL, 1, sub_2426FC1F8, &v199[-4], v123, v124, v125, v199);
    v226 = 0;
    v128 = *(v127 + 2);
    if (v128)
    {
      v239[0] = MEMORY[0x277D84F90];
      sub_2426FBFA0(0, v128, 0);
      v72 = v239[0];
      v129 = (v208 + 8);
      v224 = v127;
      v130 = (v127 + 56);
      do
      {
        v131 = *(v130 - 3);
        v132 = *(v130 - 2);
        v133 = *(v130 - 1);
        v134 = *v130;

        v245 = MEMORY[0x245D17030](v131, v132, v133, v134);
        v246 = v135;
        v136 = v234;
        sub_242731D64();
        sub_24271EB74();
        v137 = sub_242732884();
        v139 = v138;

        (*v129)(v136, v235);

        v239[0] = v72;
        v141 = *(v72 + 16);
        v140 = *(v72 + 24);
        if (v141 >= v140 >> 1)
        {
          sub_2426FBFA0((v140 > 1), v141 + 1, 1);
          v72 = v239[0];
        }

        *(v72 + 16) = v141 + 1;
        v142 = v72 + 16 * v141;
        *(v142 + 32) = v137;
        *(v142 + 40) = v139;
        v130 += 4;
        --v128;
      }

      while (v128);
    }

    else
    {

      v72 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB588, &qword_2427393E8);
    v143 = v210;
    sub_242732064();
    sub_242732874();
    sub_2427010B0(&qword_27ECBB590, &qword_27ECBB500, &qword_2427392F0);
    v144 = v209;
    v145 = v211;
    sub_242732054();
    v146 = v212;
    v147 = v144;
    v148 = v226;
    sub_242732074();
    v149 = v236;
    if (v148)
    {

      v150 = *(v215 + 8);
      v150(v147, v145);
      v150(v143, v145);
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB598, &qword_2427393F0);
      (*(*(v151 - 8) + 56))(v146, 1, 1, v151);
      v235 = 0;
    }

    else
    {
      v235 = 0;

      v152 = *(v215 + 8);
      v152(v147, v145);
      v152(v143, v145);
    }

    a2 = v225;
    v153 = v237;
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB598, &qword_2427393F0);
    v155 = *(v154 - 8);
    v156 = (*(v155 + 48))(v146, 1, v154);
    v157 = v156;
    if (v156 == 1)
    {
      (*(v149 + 8))(v233, v153);

      sub_2426FED88(v146, &qword_27ECBB508, &qword_2427392F8);
LABEL_38:

      if (v157 != 1)
      {
      }

      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v64 = 0;
      goto LABEL_4;
    }

    LODWORD(v234) = v156;
    swift_getKeyPath();
    sub_2427320A4();

    v158 = v245;
    v159 = v246;
    v160 = v146;
    v161 = v247;
    v162 = v248;
    (*(v155 + 8))(v160, v154);
    v73 = MEMORY[0x245D17030](v158, v159, v161, v162);
    v74 = v163;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5A0, &qword_242739418);
    sub_242732064();
    sub_242732874();
    sub_2427010B0(&qword_27ECBB5A8, &qword_27ECBB4F0, &qword_2427392E0);
    v164 = v205;
    v165 = v207;
    sub_242732054();
    v166 = v235;
    sub_242732074();
    if (v166)
    {

      v167 = *(v206 + 8);
      v167(v164, v165);
      v167(v213, v165);
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5B0, &qword_242739420);
      v169 = v214;
      (*(*(v168 - 8) + 56))(v214, 1, 1, v168);
    }

    else
    {

      v170 = *(v206 + 8);
      v170(v164, v165);
      v170(v213, v165);
      v169 = v214;
    }

    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5B0, &qword_242739420);
    v172 = *(v171 - 8);
    if ((*(v172 + 48))(v169, 1, v171) == 1)
    {
      (*(v236 + 8))(v233, v237);

      sub_2426FED88(v169, &qword_27ECBB4F8, &qword_2427392E8);
      a2 = v225;
LABEL_37:
      v157 = v234;
      goto LABEL_38;
    }

    v235 = 0;
    swift_getKeyPath();
    sub_2427320A4();

    v173 = v245;
    v174 = v246;
    v175 = v247;
    v176 = v248;
    (*(v172 + 8))(v169, v171);
    MEMORY[0x245D17030](v173, v174, v175, v176);

    v177 = sub_24271C7D8();
    if (v177 == 4)
    {
      (*(v236 + 8))(v233, v237);

      a2 = v225;
      goto LABEL_37;
    }

    LODWORD(v226) = v177;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5B8, &qword_242739448);
    sub_242732064();
    sub_242732874();
    sub_2427010B0(&qword_27ECBB5C0, &qword_27ECBB4E0, &qword_2427392D0);
    v178 = v202;
    v179 = v203;
    sub_242732054();
    v180 = v235;
    sub_242732074();
    if (v180)
    {

      v181 = *(v201 + 8);
      v181(v178, v179);
      v181(v204, v179);
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5C8, &qword_242739450);
      v183 = v200;
      (*(*(v182 - 8) + 56))(v200, 1, 1, v182);
    }

    else
    {

      v184 = *(v201 + 8);
      v184(v178, v179);
      v184(v204, v179);
      v183 = v200;
    }

    v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB5C8, &qword_242739450);
    v186 = *(v185 - 8);
    if ((*(v186 + 48))(v183, 1, v185) == 1)
    {
      (*(v236 + 8))(v233, v237);

      sub_2426FED88(v183, &qword_27ECBB4E8, &qword_2427392D8);
      v75 = 2;
    }

    else
    {
      swift_getKeyPath();
      sub_2427320A4();

      v187 = v245;
      v188 = v246;
      v189 = v247;
      v190 = v248;
      (*(v186 + 8))(v183, v185);
      v191 = MEMORY[0x245D17030](v187, v188, v189, v190);
      v193 = v192;

      if (v191 == 1702195828 && v193 == 0xE400000000000000 || (sub_242732AE4() & 1) != 0)
      {
        (*(v236 + 8))(v233, v237);

        v75 = 1;
      }

      else
      {
        v196 = v231;
        v197 = v236;
        if (v191 != 0x65736C6166 || v193 != 0xE500000000000000)
        {
          v198 = sub_242732AE4();

          (*(v197 + 8))(v233, v237);
          v75 = 0;
          a2 = v225;
          v194 = v230;
          v68 = v229;
          v71 = v228;
          v70 = v227;
          if ((v198 & 1) == 0)
          {
            goto LABEL_37;
          }

LABEL_51:
          v239[0] = v68;
          v239[1] = v194;
          v239[2] = v70;
          v239[3] = v71;
          LOBYTE(v240) = v226;
          *(&v240 + 1) = *v255;
          HIDWORD(v240) = *&v255[3];
          v241 = v72;
          v242 = v73;
          v243 = v74;
          v244 = v75;
          v64 = v240;
          v245 = v68;
          v246 = v194;
          v247 = v70;
          v248 = v71;
          v249 = v226;
          *&v250[3] = *&v255[3];
          *v250 = *v255;
          v251 = v72;
          v252 = v73;
          v253 = v74;
          v254 = v75;
          v195 = v194;
          sub_2427126B4(v239, v238);
          sub_24271EBC8(&v245);
          v69 = v195;
          goto LABEL_12;
        }

        (*(v197 + 8))(v233, v237);
        v75 = 0;
      }
    }

    a2 = v225;
    v194 = v230;
    v68 = v229;
    v71 = v228;
    v70 = v227;
    goto LABEL_51;
  }

  __break(1u);
}

unint64_t sub_24271EB74()
{
  result = qword_27ECBB580;
  if (!qword_27ECBB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB580);
  }

  return result;
}

uint64_t sub_24271EBF8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24271EC64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_24271ECAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPDigestAlgorithm(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

uint64_t storeEnumTagSinglePayload for HTTPDigestAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24271EE64()
{
  result = qword_27ECBB600;
  if (!qword_27ECBB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB600);
  }

  return result;
}

unint64_t sub_24271EEB8()
{
  result = qword_27ECBB608;
  if (!qword_27ECBB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB608);
  }

  return result;
}

int64_t sub_24271EF0C(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v19 = MEMORY[0x277D84F90];
      sub_2426FBFA0(0, result, 0);
      v4 = v19;
      v5 = MEMORY[0x277D84B78];
      v6 = MEMORY[0x277D84BC0];
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD08, &qword_242738770);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_242737530;
        *(v7 + 56) = v5;
        *(v7 + 64) = v6;
        v21 = 0;
        MEMORY[0x245D17E40](&v21, 8);
        *(v7 + 32) = v21;
        v8 = sub_2427324D4();
        v20 = v4;
        v11 = *(v4 + 16);
        v10 = *(v4 + 24);
        if (v11 >= v10 >> 1)
        {
          v17 = v8;
          v13 = v9;
          sub_2426FBFA0((v10 > 1), v11 + 1, 1);
          v9 = v13;
          v8 = v17;
          v4 = v20;
        }

        *(v4 + 16) = v11 + 1;
        v12 = v4 + 16 * v11;
        *(v12 + 32) = v8;
        *(v12 + 40) = v9;
        --v3;
      }

      while (v3);
      v2 = a2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAD10, &qword_242737550);
    sub_242712710(&qword_27ECBAD18, &qword_27ECBAD10, &qword_242737550);
    v14 = sub_242732474();
    v16 = v15;

    MEMORY[0x245D17090](v14, v16);

    return v2;
  }

  return result;
}

int64_t sub_24271F118(int64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (!result)
    {
LABEL_13:
      v13 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB610, &qword_2427395D8);
      sub_242712710(&qword_27ECBB618, &qword_27ECBB610, &qword_2427395D8);
      return sub_242732624();
    }

    v13 = MEMORY[0x277D84F90];
    result = sub_2426FBFC0(0, result, 0);
    v3 = 0;
    v2 = v13;
    while (("/stale=(?<stale>true|false)/" & 0x2F00000000000000) != 0x2000000000000000)
    {
      result = sub_242732564();
      if (result < 0)
      {
        goto LABEL_15;
      }

      v4 = result;
      if (!result)
      {
        goto LABEL_16;
      }

      v12 = 0;
      MEMORY[0x245D17E40](&v12, 8);
      if (v4 > v12 * v4)
      {
        v5 = -v4 % v4;
        while (v5 > v12 * v4)
        {
          v12 = 0;
          MEMORY[0x245D17E40](&v12, 8);
        }
      }

      sub_242732584();
      result = sub_242732614();
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = result;
        v11 = v6;
        sub_2426FBFC0((v7 > 1), v8 + 1, 1);
        v6 = v11;
        result = v10;
        v2 = v13;
      }

      ++v3;
      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = result;
      *(v9 + 40) = v6;
      if (v3 == v1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t FileUploadResult.transactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242732024();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileUploadResult.fileTransferInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileUploadResult() + 20);
  v4 = sub_2427320F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FileUploadResult()
{
  result = qword_27ECBB658;
  if (!qword_27ECBB658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FileUploadResult.responseData.getter()
{
  v1 = v0 + *(type metadata accessor for FileUploadResult() + 24);
  v2 = *v1;
  sub_2426FC2A4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_24271F490()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x65736E6F70736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361736E617274;
  }
}

uint64_t sub_24271F504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242720248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24271F52C(uint64_t a1)
{
  v2 = sub_24271F7FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24271F568(uint64_t a1)
{
  v2 = sub_24271F7FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileUploadResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB620, &qword_2427395E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24271F7FC();
  sub_242732BF4();
  LOBYTE(v17) = 0;
  sub_242732024();
  sub_24271FD0C(&qword_27ECBB630, MEMORY[0x277CC95F0]);
  sub_242732AB4();
  if (!v2)
  {
    v11 = type metadata accessor for FileUploadResult();
    v12 = *(v11 + 20);
    LOBYTE(v17) = 1;
    sub_2427320F4();
    sub_24271FD0C(&qword_27ECBB638, MEMORY[0x277CF6EE8]);
    sub_242732AB4();
    v13 = (v3 + *(v11 + 24));
    v14 = v13[1];
    v17 = *v13;
    v18 = v14;
    v16[15] = 2;
    sub_2426FC2A4(v17, v14);
    sub_242705F04();
    sub_242732AB4();
    sub_2426FBA18(v17, v18);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24271F7FC()
{
  result = qword_27ECBB628;
  if (!qword_27ECBB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB628);
  }

  return result;
}

uint64_t FileUploadResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_2427320F4();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_242732024();
  v27 = *(v33 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB640, &qword_2427395E8);
  v28 = *(v32 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v24 - v11;
  v13 = type metadata accessor for FileUploadResult();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24271F7FC();
  sub_242732BE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = v13;
  v25 = a1;
  v18 = v16;
  v20 = v28;
  v19 = v29;
  v21 = v30;
  LOBYTE(v34) = 0;
  sub_24271FD0C(&qword_27ECBB648, MEMORY[0x277CC95F0]);
  sub_242732A44();
  (*(v27 + 32))(v18, v31, v33);
  LOBYTE(v34) = 1;
  sub_24271FD0C(&qword_27ECBB650, MEMORY[0x277CF6EE8]);
  sub_242732A44();
  (*(v19 + 32))(v18 + *(v24 + 20), v7, v21);
  v35 = 2;
  sub_242706640();
  sub_242732A44();
  v22 = v25;
  (*(v20 + 8))(v12, v32);
  *(v18 + *(v24 + 24)) = v34;
  sub_24271FD54(v18, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return sub_24271FDB8(v18);
}

uint64_t sub_24271FD0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24271FD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileUploadResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24271FDB8(uint64_t a1)
{
  v2 = type metadata accessor for FileUploadResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24271FE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242732024();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_2427320F4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      if (((4 * v14) & 0xC) != 0)
      {
        return 16 - ((4 * v14) & 0xC | (v14 >> 2));
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_24271FF8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_242732024();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2427320F4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2427200A4()
{
  result = sub_242732024();
  if (v1 <= 0x3F)
  {
    result = sub_2427320F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_242720144()
{
  result = qword_27ECBB668;
  if (!qword_27ECBB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB668);
  }

  return result;
}

unint64_t sub_24272019C()
{
  result = qword_27ECBB670;
  if (!qword_27ECBB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB670);
  }

  return result;
}

unint64_t sub_2427201F4()
{
  result = qword_27ECBB678;
  if (!qword_27ECBB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB678);
  }

  return result;
}

uint64_t sub_242720248(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_242732AE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242734150 == a2 || (sub_242732AE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000061746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_242732AE4();

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

uint64_t sub_242720374()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB680);
  __swift_project_value_buffer(v0, qword_27ECBB680);
  return sub_242732234();
}

uint64_t sub_2427203F4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v107 = a4;
  v118 = a3;
  v103 = a1;
  v104 = a2;
  v101 = sub_242732154();
  v105 = *(v101 - 8);
  v4 = *(v105 + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2427323F4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = (&v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2427323D4();
  v108 = *(v9 - 8);
  v109 = v9;
  v10 = *(v108 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v106 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v110 = &v94 - v13;
  v112 = sub_242731F34();
  v114 = *(v112 - 8);
  v14 = v114[8];
  v15 = MEMORY[0x28223BE20](v112);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v94 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v94 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v94 - v24;
  v26 = sub_242731E24();
  v111 = *(v26 - 8);
  v27 = *(v111 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB038, &qword_242738C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242737530;
  v31 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v32 = v31;
  sub_24272106C(inited);
  swift_setDeallocating();
  sub_2427090EC(inited + 32);
  v33 = v115;
  sub_242731E84();

  if (!v33)
  {
    v98 = v23;
    v100 = 0;
    v99 = v20;
    v35 = v112;
    v115 = v26;
    v36 = sub_242731E14();
    if (v37)
    {
      v38 = v35;
      v39 = v118;
      if (qword_27ECBA9B0 != -1)
      {
        swift_once();
      }

      v40 = sub_242732244();
      __swift_project_value_buffer(v40, qword_27ECBB680);
      v41 = v114;
      v42 = v17;
      (v114[2])(v17, v39, v38);
      v43 = sub_242732224();
      v44 = sub_2427327D4();
      if (!os_log_type_enabled(v43, v44))
      {

        (v41[1])(v17, v38);
        goto LABEL_17;
      }

      v45 = v29;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v116 = v47;
      *v46 = 136315138;
      sub_2427157A8();
      v48 = sub_242732AD4();
      v49 = v42;
      v51 = v50;
      (v41[1])(v49, v38);
      v52 = sub_2426FBA6C(v48, v51, &v116);

      *(v46 + 4) = v52;
      _os_log_impl(&dword_2426EB000, v43, v44, "Failed to get original file size for: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x245D17E30](v47, -1, -1);
      v53 = v46;
      v29 = v45;
LABEL_12:
      MEMORY[0x245D17E30](v53, -1, -1);

LABEL_17:
      v79 = v115;
      v80 = v111;
      sub_2427219D4();
      swift_allocError();
      swift_willThrow();
      return (*(v80 + 8))(v29, v79);
    }

    if (v36 >= 0x100000000)
    {
      v54 = v36;
      v55 = v35;
      v56 = v118;
      if (qword_27ECBA9B0 != -1)
      {
        swift_once();
      }

      v57 = sub_242732244();
      __swift_project_value_buffer(v57, qword_27ECBB680);
      v58 = v114;
      v59 = v25;
      (v114[2])(v25, v56, v55);
      v43 = sub_242732224();
      v60 = sub_2427327D4();
      if (!os_log_type_enabled(v43, v60))
      {

        (v58[1])(v59, v55);
        goto LABEL_17;
      }

      v61 = swift_slowAlloc();
      v97 = v29;
      v62 = v61;
      v63 = swift_slowAlloc();
      v116 = v63;
      *v62 = 136315650;
      sub_2427157A8();
      v64 = sub_242732AD4();
      v65 = v59;
      v67 = v66;
      (v58[1])(v65, v55);
      v68 = sub_2426FBA6C(v64, v67, &v116);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2048;
      *(v62 + 14) = v54;
      *(v62 + 22) = 1024;
      *(v62 + 24) = -1;
      _os_log_impl(&dword_2426EB000, v43, v60, "Size of %s exceeds maximum value for UInt32: %ld vs %u", v62, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x245D17E30](v63, -1, -1);
      v53 = v62;
      v29 = v97;
      goto LABEL_12;
    }

    v94 = v36;
    v97 = v29;
    sub_2427323E4();
    v69 = v110;
    sub_2427323C4();
    v70 = sub_242732304();
    v113 = &v94;
    v96 = v70;
    v95 = *(v70 - 8);
    v71 = *(v95 + 64);
    MEMORY[0x28223BE20](v70);
    v73 = &v94 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    v74 = v108;
    (*(v108 + 16))(v106, v69, v109);
    v75 = v114[2];
    v75(v98, v118, v35);
    v75(v99, v107, v35);
    v76 = sub_242731E94();
    sub_242709A44(v76, v77);
    v78 = v100;
    sub_2427322C4();
    if (v78)
    {
      (*(v74 + 8))(v110, v109);
      return (*(v111 + 8))(v97, v115);
    }

    else
    {
      v81 = v96;
      v82 = sub_2427322F4();
      v83 = *(v82 - 8);
      v84 = *(v83 + 64);
      MEMORY[0x28223BE20](v82);
      v86 = &v94 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2427322B4();
      v112 = v83;
      v107 = v82;
      v114 = &v94;
      v118 = v73;
      v87 = v110;
      sub_2427323A4();
      v100 = 0;
      v88 = v116;
      v89 = v117;
      sub_2426FC2A4(v116, v117);
      sub_2427322D4();
      v106 = v90;
      result = sub_2427322E4();
      if (v94 < 0)
      {
        __break(1u);
      }

      else
      {
        v91 = v102;
        sub_242732124();
        v92 = v105;
        v93 = v101;
        (*(v105 + 16))(v103, v91, v101);
        sub_2427321E4();
        sub_2426FBA18(v88, v89);
        (*(v92 + 8))(v91, v93);
        (*(v112 + 8))(v86, v107);
        (*(v95 + 8))(v118, v81);
        (*(v108 + 8))(v87, v109);
        return (*(v111 + 8))(v97, v115);
      }
    }
  }

  return result;
}

uint64_t sub_242720FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_2427119F0(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_242711B48(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_242711BC4(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_24272106C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB6A0, &qword_242739790);
    v3 = sub_2427328D4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_2427324B4();
      sub_242732BA4();
      v29 = v7;
      sub_242732554();
      v9 = sub_242732BD4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_2427324B4();
        v20 = v19;
        if (v18 == sub_2427324B4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_242732AE4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_242721260(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v91 = *MEMORY[0x277D85DE8];
  v4 = sub_242731F34();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v66 - v9;
  v11 = sub_2427323D4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v81 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB38, &qword_242738900);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v66 - v16;
  v18 = sub_242732154();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for FileDownloadRequest();
  sub_242712EA4(a1 + *(v84 + 24), v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_242713854(v17);
    if (qword_27ECBA9B0 != -1)
    {
      swift_once();
    }

    v23 = sub_242732244();
    __swift_project_value_buffer(v23, qword_27ECBB680);
    v24 = sub_242732224();
    v25 = sub_2427327D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2426EB000, v24, v25, "Failed to decrypt file because crypto material is nil", v26, 2u);
      MEMORY[0x245D17E30](v26, -1, -1);
    }

    goto LABEL_40;
  }

  (*(v19 + 32))(v22, v17, v18);
  LODWORD(v72) = sub_242732104();
  v77 = a1;
  if (v72)
  {
    v73 = sub_242732104();
  }

  else
  {
    v73 = 0;
  }

  v27 = sub_2427322A4();
  v75 = &v66;
  v68 = v27;
  v67 = *(v27 - 8);
  v28 = *(v67 + 64);
  MEMORY[0x28223BE20](v27);
  v74 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v22;
  v30 = sub_242732114();
  v89 = MEMORY[0x277CC9318];
  v90 = MEMORY[0x277CC9300];
  v87 = v30;
  v88 = v31;
  v32 = __swift_project_boxed_opaque_existential_1(&v87, MEMORY[0x277CC9318]);
  v33 = *v32;
  v34 = v32[1];
  v35 = v34 >> 62;
  v78 = v19;
  v79 = v18;
  v76 = v4;
  if ((v34 >> 62) > 1)
  {
    if (v35 != 2)
    {
      memset(v85, 0, 14);
      v37 = v85;
      v36 = v85;
      goto LABEL_32;
    }

    v38 = *(v33 + 16);
    v39 = *(v33 + 24);
    v40 = sub_242731DA4();
    if (v40)
    {
      v41 = sub_242731DD4();
      v33 = v38 - v41;
      if (__OFSUB__(v38, v41))
      {
        goto LABEL_42;
      }

      v40 += v33;
    }

    v42 = __OFSUB__(v39, v38);
    v43 = v39 - v38;
    if (!v42)
    {
      goto LABEL_24;
    }

    __break(1u);
LABEL_20:
    v44 = v33;
    v45 = v33 >> 32;
    v43 = v45 - v44;
    if (v45 >= v44)
    {
      v40 = sub_242731DA4();
      if (!v40)
      {
LABEL_24:
        v47 = sub_242731DC4();
        if (v47 >= v43)
        {
          v48 = v43;
        }

        else
        {
          v48 = v47;
        }

        v49 = (v48 + v40);
        if (v40)
        {
          v36 = v49;
        }

        else
        {
          v36 = 0;
        }

        v37 = v40;
        goto LABEL_32;
      }

      v46 = sub_242731DD4();
      if (!__OFSUB__(v44, v46))
      {
        v40 += v44 - v46;
        goto LABEL_24;
      }

LABEL_43:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v35)
  {
    goto LABEL_20;
  }

  v85[0] = v33;
  LOWORD(v85[1]) = v34;
  BYTE2(v85[1]) = BYTE2(v34);
  BYTE3(v85[1]) = BYTE3(v34);
  BYTE4(v85[1]) = BYTE4(v34);
  BYTE5(v85[1]) = BYTE5(v34);
  v36 = v85 + BYTE6(v34);
  v37 = v85;
LABEL_32:
  sub_242711620(v37, v36, v86);
  v69 = v2;
  v50 = v84;
  LODWORD(v84) = v72 == 0;
  v51 = v86[0];
  v52 = v86[1];
  __swift_destroy_boxed_opaque_existential_1Tm(&v87);
  v87 = v51;
  v88 = v52;
  sub_2427323B4();
  v53 = sub_242732134();
  if (v54 >> 60 == 15)
  {
    v55 = 0;
  }

  else
  {
    v55 = v53;
  }

  v72 = v55;
  v56 = 0xC000000000000000;
  if (v54 >> 60 != 15)
  {
    v56 = v54;
  }

  v71 = v56;
  v70 = sub_242732144();
  v57 = *(v82 + 16);
  v58 = v76;
  v57(v10, v83, v76);
  v57(v8, v77 + *(v50 + 20), v58);
  v59 = sub_242731E94();
  sub_242709A44(v59, v60);
  LOBYTE(v87) = v84;
  v61 = v74;
  v62 = v69;
  sub_242732294();
  if (v62)
  {
    (*(v78 + 8))(v80, v79);
  }

  else
  {
    sub_242732284();
    v64 = v78;
    v63 = v79;
    (*(v67 + 8))(v61, v68);
    (*(v64 + 8))(v80, v63);
  }

LABEL_40:
  v65 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2427219D4()
{
  result = qword_27ECBB698;
  if (!qword_27ECBB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB698);
  }

  return result;
}

unint64_t sub_242721A4C()
{
  result = qword_27ECBB6A8;
  if (!qword_27ECBB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6A8);
  }

  return result;
}

uint64_t sub_242721AF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2427323D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB6B0, &unk_2427398D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22[-1] - v16;
  v22[0] = a1;
  v22[1] = a2;
  v25 = a3;
  v26 = a4;
  sub_2426FC2A4(a3, a4);
  sub_2427323B4();
  sub_242732414();
  sub_242721D6C();
  sub_242721DC4();
  sub_242732404();
  (*(v9 + 8))(v12, v8);
  v23 = v13;
  v24 = sub_242721E18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(v14 + 16))(boxed_opaque_existential_1, v17, v13);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_242731DF4();
  (*(v14 + 8))(v17, v13);
  v19 = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v19;
}

unint64_t sub_242721D6C()
{
  result = qword_27ECBB5E0;
  if (!qword_27ECBB5E0)
  {
    sub_242732414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB5E0);
  }

  return result;
}

unint64_t sub_242721DC4()
{
  result = qword_27ECBB6B8;
  if (!qword_27ECBB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6B8);
  }

  return result;
}

unint64_t sub_242721E18()
{
  result = qword_27ECBB6C0;
  if (!qword_27ECBB6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECBB6B0, &unk_2427398D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6C0);
  }

  return result;
}

uint64_t FileUploadRequest.init(fileURL:fileContentType:thumbnailURL:thumbnailContentType:secure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = type metadata accessor for FileUploadRequest();
  v8 = v7[5];
  v9 = sub_2427321D4();
  v10 = *(*(v9 - 8) + 56);
  v10(a6 + v8, 1, 1, v9);
  v11 = v7[6];
  v12 = sub_242731F34();
  v13 = *(v12 - 8);
  (*(v13 + 56))(a6 + v11, 1, 1, v12);
  v14 = v7[7];
  v10(a6 + v14, 1, 1, v9);
  (*(v13 + 32))(a6, a1, v12);
  sub_2426FDD98(a2, a6 + v8, &qword_27ECBAB28, &qword_242736CE0);
  sub_2426FDD98(a3, a6 + v11, &qword_27ECBAB20, &unk_242737540);
  result = sub_2426FDD98(a4, a6 + v14, &qword_27ECBAB28, &qword_242736CE0);
  *(a6 + v7[8]) = a5;
  return result;
}

uint64_t type metadata accessor for FileUploadRequest()
{
  result = qword_27ECBB6E0;
  if (!qword_27ECBB6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FileUploadRequest.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242731F34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileUploadRequest.fileURL.setter(uint64_t a1)
{
  v3 = sub_242731F34();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FileUploadRequest.secure.setter(char a1)
{
  result = type metadata accessor for FileUploadRequest();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_24272247C()
{
  v1 = *v0;
  v2 = 0x4C5255656C6966;
  v3 = 0x69616E626D756874;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x657275636573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E6F43656C6966;
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

uint64_t sub_24272252C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2427236EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242722560(uint64_t a1)
{
  v2 = sub_242722860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24272259C(uint64_t a1)
{
  v2 = sub_242722860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileUploadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB6C8, &qword_2427398E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242722860();
  sub_242732BF4();
  v28 = 0;
  sub_242731F34();
  sub_242722F24(&qword_27ECBAF30);
  sub_242732AB4();
  if (!v2)
  {
    v23 = type metadata accessor for FileUploadRequest();
    v11 = v23[5];
    v27 = 1;
    v12 = sub_2427321D4();
    v13 = sub_242706F74(&qword_27ECBAF88);
    v14 = v3;
    v15 = v13;
    v22 = v14;
    sub_242732A84();
    v21[0] = v15;
    v21[1] = v12;
    v16 = v22;
    v17 = v23[6];
    v26 = 2;
    sub_242732A84();
    v18 = v23[7];
    v25 = 3;
    sub_242732A84();
    v19 = *(v16 + v23[8]);
    v24 = 4;
    sub_242732AA4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_242722860()
{
  result = qword_27ECBB6D0;
  if (!qword_27ECBB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6D0);
  }

  return result;
}

uint64_t FileUploadRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v40 - v5;
  v49 = sub_242731F34();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB6D8, &qword_2427398E8);
  v44 = *(v48 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = v40 - v10;
  v12 = type metadata accessor for FileUploadRequest();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 20);
  v18 = sub_2427321D4();
  v19 = *(*(v18 - 8) + 56);
  v53 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = *(v12 + 24);
  v45 = v6;
  v21 = v6;
  v22 = v49;
  v23 = *(v21 + 56);
  v52 = v20;
  v23(&v16[v20], 1, 1, v49);
  v51 = *(v12 + 28);
  v19(&v16[v51], 1, 1, v18);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_242722860();
  v47 = v11;
  v25 = v50;
  sub_242732BE4();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v29 = v51;
    sub_2426FED88(&v16[v53], &qword_27ECBAB28, &qword_242736CE0);
    sub_2426FED88(&v16[v52], &qword_27ECBAB20, &unk_242737540);
    return sub_2426FED88(&v16[v29], &qword_27ECBAB28, &qword_242736CE0);
  }

  else
  {
    v41 = v12;
    v26 = v44;
    v27 = v45;
    v50 = a1;
    v58 = 0;
    v28 = sub_242722F24(&qword_27ECBAF60);
    sub_242732A44();
    v40[2] = v28;
    (*(v27 + 32))(v16, v46, v22);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
    v46 = v40;
    v31 = *(*(v30 - 8) + 64);
    MEMORY[0x28223BE20](v30 - 8);
    v33 = v40 - v32;
    v57 = 1;
    v34 = sub_242706F74(&qword_27ECBAFA0);
    sub_242732A14();
    v40[1] = v34;
    sub_2426FDD98(v33, &v16[v53], &qword_27ECBAB28, &qword_242736CE0);
    v56 = 2;
    v35 = v43;
    sub_242732A14();
    v36 = sub_2426FDD98(v35, &v16[v52], &qword_27ECBAB20, &unk_242737540);
    MEMORY[0x28223BE20](v36);
    v55 = 3;
    sub_242732A14();
    sub_2426FDD98(v40 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), &v16[v51], &qword_27ECBAB28, &qword_242736CE0);
    v54 = 4;
    v37 = sub_242732A34();
    (*(v26 + 8))(v47, v48);
    v38 = v42;
    v16[*(v41 + 32)] = v37 & 1;
    sub_242722F68(v16, v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    return sub_242722FCC(v16);
  }
}

uint64_t sub_242722F24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_242731F34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242722F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileUploadRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242722FCC(uint64_t a1)
{
  v2 = type metadata accessor for FileUploadRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24272306C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_242731F34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
      if (*(*(v14 - 8) + 84) != a2)
      {
        v16 = *(a1 + a3[8]);
        if (v16 >= 2)
        {
          return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v8 = v14;
      v12 = *(v14 - 8);
      v13 = a3[6];
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2427231FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_242731F34();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB28, &qword_242736CE0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2 + 1;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_242723364()
{
  sub_242731F34();
  if (v0 <= 0x3F)
  {
    sub_242723440(319, &qword_27ECBAFC0, MEMORY[0x28223BA38]);
    if (v1 <= 0x3F)
    {
      sub_242723440(319, &qword_27ECBAB90, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_242723440(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242732834();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FileUploadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileUploadRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2427235E8()
{
  result = qword_27ECBB6F0;
  if (!qword_27ECBB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6F0);
  }

  return result;
}

unint64_t sub_242723640()
{
  result = qword_27ECBB6F8;
  if (!qword_27ECBB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB6F8);
  }

  return result;
}

unint64_t sub_242723698()
{
  result = qword_27ECBB700;
  if (!qword_27ECBB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECBB700);
  }

  return result;
}

uint64_t sub_2427236EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v4 || (sub_242732AE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6F43656C6966 && a2 == 0xEF65707954746E65 || (sub_242732AE4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL || (sub_242732AE4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000242734170 == a2 || (sub_242732AE4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657275636573 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_242732AE4();

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

uint64_t sub_2427238AC()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB708);
  __swift_project_value_buffer(v0, qword_27ECBB708);
  return sub_242732234();
}

uint64_t sub_242723920(uint64_t a1, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status] != 2)
  {
    return -1;
  }

  v3 = v2;
  v6 = OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream;
  v7 = *&v2[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream];
  v71 = OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream;
  if (v7)
  {
    goto LABEL_7;
  }

  v8 = &v2[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_streamIterator];
  swift_beginAccess();
  v9 = *v8;
  if (*v8 >> 62)
  {
    if (v9 < 0)
    {
      v68 = *v8;
    }

    v10 = sub_242732984();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8[1];
  if (v11 != v10)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x245D17410](v8[1], v9);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        swift_once();
LABEL_31:
        v43 = sub_242732244();
        __swift_project_value_buffer(v43, qword_27ECBB708);
        v44 = v9;
        v45 = sub_242732224();
        v46 = sub_2427327C4();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v72[0] = v48;
          *v47 = 136315138;
          sub_242724804();
          v49 = v44;
          v50 = sub_242732514();
          v52 = sub_2426FBA6C(v50, v51, v72);

          *(v47 + 4) = v52;
          _os_log_impl(&dword_2426EB000, v45, v46, "Advancing to next stream %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v48);
          v53 = v48;
          v6 = v71;
          MEMORY[0x245D17E30](v53, -1, -1);
          MEMORY[0x245D17E30](v47, -1, -1);
        }

        v54 = *&v3[v6];
        *&v3[v6] = v44;

        v7 = *&v3[v6];
        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_34;
      }

      v42 = *(v9 + 8 * v11 + 32);
    }

    v9 = v42;
    if (!__OFADD__(v11, 1))
    {
      v8[1] = v11 + 1;
      swift_endAccess();
      if (qword_27ECBA9B8 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_49;
    }

    goto LABEL_47;
  }

  swift_endAccess();
  v7 = *&v3[v6];
  if (v7)
  {
LABEL_7:
    v12 = v7;
    if (![v12 streamStatus])
    {
      if (qword_27ECBA9B8 != -1)
      {
        swift_once();
      }

      v13 = sub_242732244();
      __swift_project_value_buffer(v13, qword_27ECBB708);
      v14 = v12;
      v15 = sub_242732224();
      v16 = sub_2427327C4();

      if (os_log_type_enabled(v15, v16))
      {
        buf = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v72[0] = v70;
        *buf = 136315138;
        sub_242724804();
        v17 = v14;
        v18 = sub_242732514();
        v20 = v3;
        v21 = a1;
        v22 = a2;
        v23 = sub_2426FBA6C(v18, v19, v72);

        *(buf + 4) = v23;
        a2 = v22;
        a1 = v21;
        v3 = v20;
        _os_log_impl(&dword_2426EB000, v15, v16, "Opening stream: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x245D17E30](v70, -1, -1);
        MEMORY[0x245D17E30](buf, -1, -1);
      }

      [v14 open];
    }

    if (qword_27ECBA9B8 != -1)
    {
      swift_once();
    }

    v24 = sub_242732244();
    __swift_project_value_buffer(v24, qword_27ECBB708);
    v25 = v12;
    v26 = sub_242732224();
    v27 = sub_2427327C4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v72[0] = v29;
      *v28 = 136315138;
      sub_242724804();
      v30 = v25;
      v31 = sub_242732514();
      v33 = sub_2426FBA6C(v31, v32, v72);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2426EB000, v26, v27, "Reading from stream %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x245D17E30](v29, -1, -1);
      MEMORY[0x245D17E30](v28, -1, -1);
    }

    v34 = [v25 read:a1 maxLength:a2];
    v35 = v34;
    if (v34 < 1)
    {
      if (v34)
      {
        v40 = [v25 streamError];

        v41 = *&v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_underlyingStreamError];
        *&v3[OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_underlyingStreamError] = v40;
      }

      else
      {
        v59 = sub_242732224();
        v60 = sub_2427327C4();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v72[0] = v62;
          *v61 = 136315138;
          sub_242724804();
          v63 = v25;
          v64 = sub_242732514();
          v66 = sub_2426FBA6C(v64, v65, v72);

          *(v61 + 4) = v66;
          _os_log_impl(&dword_2426EB000, v59, v60, "Closing stream: %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          MEMORY[0x245D17E30](v62, -1, -1);
          MEMORY[0x245D17E30](v61, -1, -1);
        }

        [v25 close];
        v67 = *&v3[v71];
        *&v3[v71] = 0;

        v35 = [v3 read:a1 maxLength:a2];
      }
    }

    else
    {

      v36 = sub_242732224();
      v37 = sub_2427327C4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v35;
        _os_log_impl(&dword_2426EB000, v36, v37, "Read %ld bytes", v38, 0xCu);
        MEMORY[0x245D17E30](v38, -1, -1);
      }
    }

    return v35;
  }

LABEL_34:
  if (qword_27ECBA9B8 != -1)
  {
    swift_once();
  }

  v55 = sub_242732244();
  __swift_project_value_buffer(v55, qword_27ECBB708);
  v56 = sub_242732224();
  v57 = sub_2427327B4();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_2426EB000, v56, v57, "No more streams to read from", v58, 2u);
    MEMORY[0x245D17E30](v58, -1, -1);
  }

  return 0;
}

void sub_2427241C0()
{
  v1 = OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status;
  if (*(v0 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status) != 2)
  {
    v2 = v0;
    if (qword_27ECBA9B8 != -1)
    {
      swift_once();
    }

    v3 = sub_242732244();
    __swift_project_value_buffer(v3, qword_27ECBB708);
    v4 = sub_242732224();
    v5 = sub_2427327C4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2426EB000, v4, v5, "Opening stream", v6, 2u);
      MEMORY[0x245D17E30](v6, -1, -1);
    }

    v7 = (v2 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_streamIterator);
    swift_beginAccess();
    v8 = *v7;
    if (*v7 >> 62)
    {
      if (v8 < 0)
      {
        v14 = *v7;
      }

      v9 = sub_242732984();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v7[1];
    if (v10 == v9)
    {
      v11 = 0;
LABEL_16:
      swift_endAccess();
      v13 = *(v2 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream);
      *(v2 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_currentStream) = v11;

      *(v2 + v1) = 2;
      return;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245D17410](v7[1], v8);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_24:
        __break(1u);
        return;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    v11 = v12;
    if (!__OFADD__(v10, 1))
    {
      v7[1] = v10 + 1;
      goto LABEL_16;
    }

    goto LABEL_23;
  }
}

void sub_2427243DC()
{
  v1 = OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status;
  if (*(v0 + OBJC_IVAR____TtC15CTLazuliSupport20AggregateInputStream_status) != 6)
  {
    v2 = v0;
    if (qword_27ECBA9B8 != -1)
    {
      swift_once();
    }

    v3 = sub_242732244();
    __swift_project_value_buffer(v3, qword_27ECBB708);
    v4 = sub_242732224();
    v5 = sub_2427327C4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2426EB000, v4, v5, "Closing stream", v6, 2u);
      MEMORY[0x245D17E30](v6, -1, -1);
    }

    *(v2 + v1) = 6;
  }
}

id sub_2427246D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregateInputStream();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24272479C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB748, &qword_242739AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_242724804()
{
  result = qword_27ECBB750;
  if (!qword_27ECBB750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECBB750);
  }

  return result;
}

uint64_t sub_242724850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB808, &qword_242739D88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB838, &qword_242739DC0);
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v39);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB820, &qword_242739DA0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v37 - v24;
  v26 = sub_242731D54();
  (*(*(v26 - 8) + 16))(v25, a2, v26);
  v27 = *(v19 + 48);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB840, &qword_242739DC8);
  v29 = *(*(v28 - 8) + 16);
  v37[1] = v28;
  v29(&v25[v27], v38);
  v30 = &v25[*(v19 + 44)];
  v31 = v41;
  *v30 = v40;
  *(v30 + 1) = v31;
  (*(v7 + 16))(v10, v42 + *(*v42 + 120), v6);
  sub_2426FC2F8(v25, v23, &qword_27ECBB820, &qword_242739DA0);

  sub_242732744();
  v32 = v10;
  v33 = v39;
  (*(v7 + 8))(v32, v6);
  (*(v11 + 16))(v15, v17, v33);
  v34 = (*(v11 + 88))(v15, v33);
  v35 = *(v11 + 8);
  if (v34 != *MEMORY[0x277D85888])
  {
    v35(v15, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB848, &qword_242739DD0);
    sub_242712710(&qword_27ECBB850, &qword_27ECBB848, &qword_242739DD0);
    v43 = swift_allocError();
    sub_2427326C4();
  }

  v35(v17, v33);
  return sub_2426FED88(v25, &qword_27ECBB820, &qword_242739DA0);
}

uint64_t sub_242724C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v38 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7A0, &qword_242739CF0);
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v35 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7A8, &qword_242739CF8);
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v35);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B0, &qword_242739D00);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v36;
  *(v24 + 24) = a3;
  v25 = *(v17 + 48);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B8, &qword_242739D18);
  v27 = *(*(v26 - 8) + 16);
  v36 = v26;
  v27(&v23[v25], v38);
  *v23 = &unk_242739D10;
  *(v23 + 1) = v24;
  v28 = a4 + *(*a4 + 120);
  v29 = v35;
  v30 = v39;
  (*(v6 + 16))(v9, v28, v39);
  sub_2426FC2F8(v23, v21, &qword_27ECBB7B0, &qword_242739D00);

  sub_242732744();
  v31 = v37;
  (*(v6 + 8))(v9, v30);
  (*(v10 + 16))(v31, v15, v29);
  v32 = (*(v10 + 88))(v31, v29);
  v33 = *(v10 + 8);
  if (v32 != *MEMORY[0x277D85888])
  {
    v33(v31, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7C0, &qword_242739D20);
    sub_242712710(&qword_27ECBB7C8, &qword_27ECBB7C0, &qword_242739D20);
    v40 = swift_allocError();
    sub_2427326C4();
  }

  v33(v15, v29);
  return sub_2426FED88(v23, &qword_27ECBB7B0, &qword_242739D00);
}

uint64_t sub_242725080(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v23 - v15;
  if (!*(v4 + 14))
  {
    v17 = *(v6 + 112);
    v18 = sub_242732714();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    (*(v8 + 16))(v11, &v4[v17], v7);
    v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    (*(v8 + 32))(v20 + v19, v11, v7);
    *(v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    v21 = sub_242726730(0, 0, v16, a4, v20);
    v22 = *(v4 + 14);
    *(v4 + 14) = v21;
  }

  return result;
}

uint64_t sub_242725294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB820, &qword_242739DA0);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB858, &qword_242739DE8) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB860, &qword_242739DF0);
  v4[16] = v9;
  v10 = *(v9 - 8);
  v4[17] = v10;
  v11 = *(v10 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242725400, 0, 0);
}

uint64_t sub_242725400()
{
  v1 = v0[18];
  v2 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB810, &qword_242739D90);
  sub_242732764();
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_2427254CC;
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];

  return MEMORY[0x2822005A8](v6, 0, 0, v7, v0 + 8);
}

uint64_t sub_2427254CC()
{
  v2 = *(*v1 + 152);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2427258E4;
  }

  else
  {
    v3 = sub_2427255DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2427255DC()
{
  v1 = v0[15];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    v2 = v0[14];
    (*(v0[17] + 8))(v0[18], v0[16]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_2426FEBB0(v1, v0[14], &qword_27ECBB820, &qword_242739DA0);
    if (sub_242732724())
    {
      v5 = v0[14];
      v6 = *(v0[12] + 40);
      sub_2427326F4();
      sub_242731544(&qword_27ECBB7E8, MEMORY[0x277D85678]);
      v7 = swift_allocError();
      sub_242732454();
      v0[10] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB840, &qword_242739DC8);
      sub_2427326C4();
      sub_2426FED88(v5, &qword_27ECBB820, &qword_242739DA0);
      v8 = *(MEMORY[0x277D858B8] + 4);
      v9 = swift_task_alloc();
      v0[19] = v9;
      *v9 = v0;
      v9[1] = sub_2427254CC;
      v10 = v0[18];
      v11 = v0[15];
      v12 = v0[16];

      return MEMORY[0x2822005A8](v11, 0, 0, v12, v0 + 8);
    }

    else
    {
      v13 = (v0[14] + *(v0[12] + 36));
      v14 = v13[1];
      v18 = (*v13 + **v13);
      v15 = (*v13)[1];
      v16 = swift_task_alloc();
      v0[20] = v16;
      *v16 = v0;
      v16[1] = sub_242725980;
      v17 = v0[14];

      return (v18)(v0 + 2, v17);
    }
  }
}

uint64_t sub_2427258E4()
{
  v1 = v0[15];
  v2 = v0[14];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_242725980()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_242725BB8;
  }

  else
  {
    v3 = sub_242725A94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_242725A94()
{
  v1 = v0[14];
  v2 = *(v0[12] + 40);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = v5;
  sub_2426FC2A4(v3, v4);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB840, &qword_242739DC8);
  sub_2427326D4();
  v7 = v0[4];
  sub_2426FBA18(v0[2], v0[3]);

  sub_2426FED88(v0[14], &qword_27ECBB820, &qword_242739DA0);
  v8 = *(MEMORY[0x277D858B8] + 4);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_2427254CC;
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];

  return MEMORY[0x2822005A8](v11, 0, 0, v12, v0 + 8);
}

uint64_t sub_242725BB8()
{
  v1 = v0[14];
  v2 = *(v0[12] + 40);
  v0[9] = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB840, &qword_242739DC8);
  sub_2427326C4();
  sub_2426FED88(v0[14], &qword_27ECBB820, &qword_242739DA0);
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_2427254CC;
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];

  return MEMORY[0x2822005A8](v6, 0, 0, v7, v0 + 8);
}

uint64_t sub_242725CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(type metadata accessor for GBAResult(0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B0, &qword_242739D00);
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7D8, &qword_242739D48) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7E0, &qword_242739D50);
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242725E60, 0, 0);
}

uint64_t sub_242725E60()
{
  v1 = v0[14];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7D0, &qword_242739D28);
  sub_242732764();
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_242725F2C;
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];

  return MEMORY[0x2822005A8](v6, 0, 0, v7, v0 + 2);
}

uint64_t sub_242725F2C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_242726350;
  }

  else
  {
    v3 = sub_24272603C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24272603C()
{
  v1 = v0[11];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[10];
    v4 = v0[6];
    v3 = v0[7];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_2426FEBB0(v1, v0[10], &qword_27ECBB7B0, &qword_242739D00);
    if (sub_242732724())
    {
      v7 = v0[10];
      v8 = *(v0[8] + 40);
      sub_2427326F4();
      sub_242731544(&qword_27ECBB7E8, MEMORY[0x277D85678]);
      v9 = swift_allocError();
      sub_242732454();
      v0[4] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B8, &qword_242739D18);
      sub_2427326C4();
      sub_2426FED88(v7, &qword_27ECBB7B0, &qword_242739D00);
      v10 = *(MEMORY[0x277D858B8] + 4);
      v11 = swift_task_alloc();
      v0[15] = v11;
      *v11 = v0;
      v11[1] = sub_242725F2C;
      v12 = v0[14];
      v13 = v0[11];
      v14 = v0[12];

      return MEMORY[0x2822005A8](v13, 0, 0, v14, v0 + 2);
    }

    else
    {
      v15 = v0[10];
      v16 = v15[1];
      v21 = (*v15 + **v15);
      v17 = (*v15)[1];
      v18 = swift_task_alloc();
      v0[16] = v18;
      *v18 = v0;
      v18[1] = sub_242726408;
      v19 = v0[10];
      v20 = v0[7];

      return v21(v20, v19);
    }
  }
}

uint64_t sub_242726350()
{
  v1 = v0[11];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t sub_242726408()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_24272662C;
  }

  else
  {
    v3 = sub_24272651C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24272651C()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v0[8] + 40);
  sub_242711D24(v2, v0[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B8, &qword_242739D18);
  sub_2427326D4();
  sub_242711D88(v2);
  sub_2426FED88(v0[10], &qword_27ECBB7B0, &qword_242739D00);
  v4 = *(MEMORY[0x277D858B8] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_242725F2C;
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[12];

  return MEMORY[0x2822005A8](v7, 0, 0, v8, v0 + 2);
}

uint64_t sub_24272662C()
{
  v1 = v0[10];
  v2 = *(v0[8] + 40);
  v0[3] = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B8, &qword_242739D18);
  sub_2427326C4();
  sub_2426FED88(v0[10], &qword_27ECBB7B0, &qword_242739D00);
  v3 = *(MEMORY[0x277D858B8] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_242725F2C;
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];

  return MEMORY[0x2822005A8](v6, 0, 0, v7, v0 + 2);
}

uint64_t sub_242726730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAE78, &qword_242739D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2426FC2F8(a3, v24 - v10, &qword_27ECBAE78, &qword_242739D30);
  v12 = sub_242732714();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2426FED88(v11, &qword_27ECBAE78, &qword_242739D30);
  }

  else
  {
    sub_242732704();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2427326B4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_242732524() + 32;

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

      sub_2426FED88(a3, &qword_27ECBAE78, &qword_242739D30);

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

  sub_2426FED88(a3, &qword_27ECBAE78, &qword_242739D30);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2427269DC()
{
  v0 = sub_242732244();
  __swift_allocate_value_buffer(v0, qword_27ECBB758);
  v1 = __swift_project_value_buffer(v0, qword_27ECBB758);
  if (qword_27ECBA9A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27ECBF910);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_242726AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_242731D54();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242726BA0, v3, 0);
}

uint64_t sub_242726BA0()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_242716F70(v0[9]);
  sub_242731D34();
  v3 = sub_242731F34();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[6];
  if (v5 == 1)
  {
    sub_2426FED88(v0[6], &qword_27ECBAB20, &unk_242737540);
LABEL_7:
    sub_242718A7C();
    swift_allocError();
    *v19 = xmmword_242739AC0;
    swift_willThrow();
    v20 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v21 = v0[1];

    return v21();
  }

  v7 = v0[6];
  v8 = sub_242731ED4();
  v10 = v9;
  v0[10] = v9;
  (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  v14 = swift_allocObject();
  v0[11] = v14;
  v14[2] = v11;
  v14[3] = v8;
  v14[4] = v10;
  v14[5] = v13;
  v14[6] = v12;

  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_242726E30;
  v16 = v0[9];
  v17 = v0[5];

  return sub_242728098(v16, v8, v10, &unk_242739E28, v14);
}

uint64_t sub_242726E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 96);
  v10 = *v4;
  v8[13] = v3;

  v11 = v8[11];
  v12 = v8[10];
  v13 = v8[5];

  if (v3)
  {
    v14 = sub_242727048;
  }

  else
  {
    v8[14] = a3;
    v8[15] = a2;
    v8[16] = a1;
    v14 = sub_242726FB8;
  }

  return MEMORY[0x2822009F8](v14, v13, 0);
}

uint64_t sub_242726FB8()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  return v2(v3, v4, v5);
}

uint64_t sub_242727048()
{
  v1 = v0[13];
  v2 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2427270D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_242731C90;

  return sub_242728BA8(a1, a3, a4, a5, a6);
}

uint64_t sub_2427271A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_242731F34();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_242731D54();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242727304, v2, 0);
}

uint64_t sub_242727304()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  sub_242716F70(v0[12]);
  sub_242731D34();
  v5 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[9];
  if (v5 == 1)
  {
    sub_2426FED88(v0[9], &qword_27ECBAB20, &unk_242737540);
LABEL_7:
    sub_242718A7C();
    swift_allocError();
    *v23 = xmmword_242739AC0;
    swift_willThrow();
    v24 = v0[9];
    v25 = v0[8];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v26 = v0[1];

    return v26();
  }

  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[9];
  v10 = sub_242731ED4();
  v12 = v11;
  v0[13] = v11;
  (*(v8 + 8))(v6, v7);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[6];
  v16 = v0[4];
  (*(v15 + 16))(v13, v0[3], v14);
  v17 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v18 = swift_allocObject();
  v0[14] = v18;
  *(v18 + 16) = v16;
  (*(v15 + 32))(v18 + v17, v13, v14);

  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_2427275AC;
  v20 = v0[12];
  v21 = v0[4];

  return sub_242728098(v20, v10, v12, &unk_242739E18, v18);
}

uint64_t sub_2427275AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 120);
  v10 = *v4;
  v8[16] = v3;

  v11 = v8[14];
  v12 = v8[13];
  v13 = v8[4];

  if (v3)
  {
    v14 = sub_2427277DC;
  }

  else
  {
    v8[17] = a3;
    sub_2426FBA18(a1, a2);
    v14 = sub_24272773C;
  }

  return MEMORY[0x2822009F8](v14, v13, 0);
}

uint64_t sub_24272773C()
{
  v1 = v0[9];
  v2 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v3 = v0[1];
  v4 = v0[17];

  return v3(v4);
}

uint64_t sub_2427277DC()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_242727878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_242727924;

  return sub_24272BE48(a1, a3);
}

uint64_t sub_242727924(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v5 = 0;
    v6 = 0xC000000000000000;
    v7 = a1;
  }

  return v8(v5, v6, v7);
}

uint64_t sub_242727A2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_242731D54();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242727B24, v1, 0);
}

uint64_t sub_242727B24()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_242716F70(v0[7]);
  sub_242731D34();
  v3 = sub_242731F34();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[4];
  if (v5 == 1)
  {
    sub_2426FED88(v0[4], &qword_27ECBAB20, &unk_242737540);
LABEL_7:
    sub_242718A7C();
    swift_allocError();
    *v16 = xmmword_242739AC0;
    swift_willThrow();
    v17 = v0[4];
    (*(v0[6] + 8))(v0[7], v0[5]);

    v18 = v0[1];

    return v18();
  }

  v7 = v0[4];
  v8 = sub_242731ED4();
  v10 = v9;
  v0[8] = v9;
  (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v0[3];

  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_242727D68;
  v13 = v0[7];
  v14 = v0[3];

  return sub_242728098(v13, v8, v10, &unk_242739E08, v14);
}

uint64_t sub_242727D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 72);
  v10 = *v4;
  v8[10] = v3;

  v11 = v8[8];
  v12 = v8[3];

  if (v3)
  {
    v13 = sub_242727F70;
  }

  else
  {
    v8[11] = a3;
    v8[12] = a2;
    v8[13] = a1;
    v13 = sub_242727EE0;
  }

  return MEMORY[0x2822009F8](v13, v12, 0);
}

uint64_t sub_242727EE0()
{
  v1 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];

  return v2(v3, v4, v5);
}

uint64_t sub_242727F70()
{
  v1 = v0[10];
  v2 = v0[4];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_242728000(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2426ECBC0;

  return sub_24272D4E4(a1);
}

uint64_t sub_242728098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB800, &qword_242739D80);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB808, &qword_242739D88);
  v6[20] = v10;
  v11 = *(v10 - 8);
  v6[21] = v11;
  v12 = *(v11 + 64) + 15;
  v6[22] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB810, &qword_242739D90);
  v6[23] = v13;
  v14 = *(v13 - 8);
  v6[24] = v14;
  v15 = *(v14 + 64) + 15;
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272823C, v5, 0);
}

uint64_t sub_24272823C()
{
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 304);
  if (*(v2 + 16))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = *(v1 + 304);

    v6 = sub_242704184(v4, v3);
    if (v7)
    {
      v8 = *(*(v2 + 56) + 8 * v6);
      swift_retain_n();

      goto LABEL_6;
    }
  }

  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[22];
  v24 = v0[23];
  v25 = v0[21];
  v12 = v0[18];
  v13 = v0[19];
  v14 = v0[17];
  v26 = v0[20];
  v27 = v0[13];
  v28 = v0[12];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB818, &qword_242739D98);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v8 + 14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB820, &qword_242739DA0);
  (*(v12 + 104))(v13, *MEMORY[0x277D858A0], v14);
  sub_242732734();
  (*(v12 + 8))(v13, v14);
  (*(v9 + 32))(&v8[*(*v8 + 112)], v10, v24);
  (*(v25 + 32))(&v8[*(*v8 + 120)], v11, v26);
  swift_beginAccess();
  swift_retain_n();

  v18 = *(v1 + 304);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v1 + 304);
  *(v1 + 304) = 0x8000000000000000;
  sub_242730648(v8, v28, v27, isUniquelyReferenced_nonNull_native);

  *(v1 + 304) = v29;
  swift_endAccess();
LABEL_6:
  v0[26] = v8;
  v0[27] = v8;
  v21 = v0[14];
  v20 = v0[15];
  v22 = swift_allocObject();
  v0[28] = v22;
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;

  return MEMORY[0x2822009F8](sub_2427284E8, v8, 0);
}

uint64_t sub_2427284E8()
{
  v1 = *(v0 + 88);
  v9 = *(v0 + 216);
  sub_242725080(&qword_27ECBB810, &qword_242739D90, &unk_2855028C8, &unk_242739DE0);
  v2 = sub_242712710(&qword_27ECBB828, &qword_27ECBB818, &qword_242739D98);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  v3[1].i64[0] = v1;
  v3[1].i64[1] = &unk_242739DB0;
  v3[2] = vextq_s8(v9, v9, 8uLL);
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB830, &qword_242739DB8);
  *v5 = v0;
  v5[1] = sub_242728684;
  v7 = *(v0 + 208);

  return MEMORY[0x2822008A0](v0 + 64, v7, v2, 0xD000000000000017, 0x80000002427343F0, sub_24273170C, v3, v6);
}

uint64_t sub_242728684()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v11 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[26];
    v5 = sub_242728874;
  }

  else
  {
    v6 = v2[28];
    v7 = v2[29];
    v8 = v2[27];
    v9 = v2[16];

    v5 = sub_2427287C8;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2427287C8()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];

  v8 = v0[1];

  return v8(v5, v6, v7);
}

uint64_t sub_242728874()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[16];

  return MEMORY[0x2822009F8](sub_2427288FC, v4, 0);
}

uint64_t sub_2427288FC()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[19];

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

uint64_t sub_24272898C(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_242728A84;

  return v8(a2);
}

uint64_t sub_242728A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t sub_242728BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[43] = a5;
  v6[44] = v5;
  v6[41] = a3;
  v6[42] = a4;
  v6[39] = a1;
  v6[40] = a2;
  v7 = sub_242732034();
  v6[45] = v7;
  v8 = *(v7 - 8);
  v6[46] = v8;
  v9 = *(v8 + 64) + 15;
  v6[47] = swift_task_alloc();
  v10 = sub_242731D54();
  v6[48] = v10;
  v11 = *(v10 - 8);
  v6[49] = v11;
  v12 = *(v11 + 64) + 15;
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242728CFC, v5, 0);
}

uint64_t sub_242728CFC()
{
  v51 = v0;
  if (qword_27ECBA9C0 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[39];
  v7 = sub_242732244();
  v0[55] = __swift_project_value_buffer(v7, qword_27ECBB758);
  v8 = *(v5 + 16);
  v8(v2, v6, v4);
  v8(v1, v6, v4);
  v8(v3, v6, v4);
  v9 = sub_242732224();
  v10 = sub_2427327B4();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[53];
  v12 = v0[54];
  v14 = v0[52];
  v16 = v0[48];
  v15 = v0[49];
  if (v11)
  {
    v47 = v10;
    log = v9;
    v17 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v17 = 136315650;
    v18 = sub_242731CB4();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 5522759;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = *(v15 + 8);
    v22(v12, v16);
    v23 = sub_2426FBA6C(v20, v21, &v50);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    sub_242731544(&qword_27ECBB140, MEMORY[0x277CC8678]);
    v24 = sub_242732AD4();
    v26 = v25;
    v22(v13, v16);
    v27 = sub_2426FBA6C(v24, v26, &v50);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2080;
    v28 = sub_242731D04();
    if (!v28)
    {
      v28 = sub_242730F50(MEMORY[0x277D84F90]);
    }

    v29 = v0[52];
    v30 = v0[48];
    v0[38] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB770, &qword_242739CB0);
    v31 = sub_242732514();
    v33 = v32;
    v22(v29, v30);
    v34 = sub_2426FBA6C(v31, v33, &v50);

    *(v17 + 24) = v34;
    _os_log_impl(&dword_2426EB000, log, v47, "Sending upload: %s %s: %s ", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v46, -1, -1);
    MEMORY[0x245D17E30](v17, -1, -1);
  }

  else
  {

    v22 = *(v15 + 8);
    v22(v14, v16);
    v22(v13, v16);
    v22(v12, v16);
  }

  v0[56] = v22;
  v35 = v0[44];
  v36 = type metadata accessor for ManualAuthTaskDelegate();
  v0[57] = v36;
  v37 = [objc_allocWithZone(v36) init];
  v0[58] = v37;
  v38 = v35[26];
  v39 = v35[27];
  __swift_project_boxed_opaque_existential_1(v35 + 23, v38);
  v40 = *(v39 + 8);
  v41 = v37;
  v48 = (v40 + *v40);
  v42 = v40[1];
  v43 = swift_task_alloc();
  v0[59] = v43;
  *v43 = v0;
  v43[1] = sub_2427291A0;
  v44 = v0[39];

  return v48(v44, v37, v38, v39);
}

uint64_t sub_2427291A0(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 472);
  v15 = *v4;
  *(*v4 + 480) = v3;

  if (v3)
  {
    v10 = *(v8 + 352);
    v11 = sub_24272A360;
  }

  else
  {
    v12 = *(v8 + 464);
    v13 = *(v8 + 352);
    sub_2426FBA18(a1, a2);

    v11 = sub_2427292F4;
    v10 = v13;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2427292F4()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 464);
  v3 = sub_242732224();
  v4 = sub_2427327C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 464);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = *(v5 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_2426EB000, v3, v4, "%@", v6, 0xCu);
    sub_2426FED88(v7, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v7, -1, -1);
    MEMORY[0x245D17E30](v6, -1, -1);
  }

  v10 = *(v0 + 464);

  v11 = *(v10 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task);
  *(v0 + 488) = v11;
  v12 = *(v0 + 440);
  if (v11)
  {
    v13 = v11;
    v14 = sub_242732224();
    v15 = sub_2427327B4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2426EB000, v14, v15, "Processing initial upload response", v16, 2u);
      MEMORY[0x245D17E30](v16, -1, -1);
    }

    v17 = *(v0 + 464);

    v18 = *(v17 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
    *(v0 + 496) = v18;
    v19 = v18;
    v20 = swift_task_alloc();
    *(v0 + 504) = v20;
    *v20 = v0;
    v20[1] = sub_242729658;
    v21 = *(v0 + 352);

    return sub_24272ADE8(v0 + 16, v13, v18);
  }

  else
  {
    v23 = sub_242732224();
    v24 = sub_2427327D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2426EB000, v23, v24, "Initial upload request completed, but task was never set", v25, 2u);
      MEMORY[0x245D17E30](v25, -1, -1);
    }

    v26 = *(v0 + 464);

    sub_242718A7C();
    swift_allocError();
    *v27 = xmmword_242739AD0;
    swift_willThrow();

    v29 = *(v0 + 424);
    v28 = *(v0 + 432);
    v31 = *(v0 + 408);
    v30 = *(v0 + 416);
    v32 = *(v0 + 400);
    v33 = *(v0 + 376);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_242729658()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v8 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = *(v2 + 352);
    v5 = sub_24272A770;
  }

  else
  {
    v6 = *(v2 + 352);

    v5 = sub_242729780;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_242729780()
{
  v49 = v0;
  v1 = *(v0 + 440);
  v2 = sub_242732224();
  v3 = sub_2427327B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2426EB000, v2, v3, "Proceeding with upload after processing initial response", v4, 2u);
    MEMORY[0x245D17E30](v4, -1, -1);
  }

  v5 = *(v0 + 512);
  v6 = *(v0 + 400);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 312);

  v8(v9);
  v10 = *(v0 + 440);
  if (v5)
  {
    v11 = v5;
    v12 = v5;
    v13 = sub_242732224();
    v14 = sub_2427327D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v11;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_2426EB000, v13, v14, "Unable to construct final request: %@", v15, 0xCu);
      sub_2426FED88(v16, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v16, -1, -1);
      MEMORY[0x245D17E30](v15, -1, -1);
    }

    v19 = *(v0 + 488);
    v20 = *(v0 + 464);

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v22 = *(v0 + 424);
    v21 = *(v0 + 432);
    v24 = *(v0 + 408);
    v23 = *(v0 + 416);
    v25 = *(v0 + 400);
    v26 = *(v0 + 376);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    (*(*(v0 + 392) + 32))(*(v0 + 408), *(v0 + 400), *(v0 + 384));
    v29 = *(v0 + 40);
    v30 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
    v31 = (*(v30 + 8))(v29, v30);
    v33 = v32;
    sub_242731D44();

    v34 = sub_242732224();
    v35 = sub_2427327C4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48 = v37;
      *v36 = 136315138;
      v38 = sub_2426FBA6C(v31, v33, &v48);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_2426EB000, v34, v35, "Auth Response: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x245D17E30](v37, -1, -1);
      MEMORY[0x245D17E30](v36, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 352);
    v40 = [objc_allocWithZone(*(v0 + 456)) init];
    *(v0 + 520) = v40;
    v41 = v39[26];
    v42 = v39[27];
    __swift_project_boxed_opaque_existential_1(v39 + 23, v41);
    v43 = *(v42 + 8);
    v47 = (v43 + *v43);
    v44 = v43[1];
    v45 = swift_task_alloc();
    *(v0 + 528) = v45;
    *v45 = v0;
    v45[1] = sub_242729C54;
    v46 = *(v0 + 408);

    return v47(v46, v40, v41, v42);
  }
}

uint64_t sub_242729C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[27] = v4;
  v6[28] = a1;
  v6[29] = a2;
  v6[30] = a3;
  v6[31] = v3;
  v7 = v5[66];
  v8 = *v4;
  v6[67] = a3;
  v6[68] = v3;

  v9 = v5[44];
  if (v3)
  {
    v10 = sub_24272A82C;
  }

  else
  {
    v10 = sub_242729D90;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_242729D90()
{
  v46 = v0;
  v1 = *(v0 + 536);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v10 = *(v0 + 488);
    v11 = *(v0 + 464);
    v12 = *(v0 + 448);
    v13 = *(v0 + 408);
    v14 = *(v0 + 384);
    v15 = *(v0 + 392);

    v12(v13, v14);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = *(v0 + 536);
  if ([v3 statusCode] == 200)
  {
    v5 = *(v0 + 536);
    v6 = *(v0 + 520);
    v7 = *(v0 + 488);
    v8 = *(v0 + 464);
    v9 = *(v0 + 392) + 8;
    (*(v0 + 448))(*(v0 + 408), *(v0 + 384));

LABEL_12:
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    v38 = *(v0 + 424);
    v37 = *(v0 + 432);
    v40 = *(v0 + 408);
    v39 = *(v0 + 416);
    v41 = *(v0 + 400);
    v42 = *(v0 + 376);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

    v43 = *(v0 + 8);
    v44 = *(v0 + 536);

    return v43(v36, v35, v44);
  }

  v16 = *(v0 + 440);
  v17 = *(v0 + 328);

  v18 = sub_242732224();
  v19 = sub_2427327D4();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v0 + 320);
    v20 = *(v0 + 328);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_2426FBA6C(v21, v20, &v45);
    _os_log_impl(&dword_2426EB000, v18, v19, "Failed to authenticate while perfoming upload, clearing out credentials for host %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x245D17E30](v23, -1, -1);
    MEMORY[0x245D17E30](v22, -1, -1);
  }

  v24 = *(v0 + 352);
  swift_beginAccess();
  sub_2426FC2F8(v24 + 312, v0 + 136, &qword_27ECBB780, &qword_242739CC0);
  if (!*(v0 + 160))
  {
    sub_2426FED88(v0 + 136, &qword_27ECBB780, &qword_242739CC0);
    v28 = *(v0 + 536);
    v29 = *(v0 + 520);
    v30 = *(v0 + 464);
    v31 = *(v0 + 448);
    v32 = *(v0 + 408);
    v33 = *(v0 + 384);
    v34 = *(v0 + 392);

    v31(v32, v33);
    goto LABEL_12;
  }

  sub_2426F0FFC(v0 + 136, v0 + 176);
  sub_2426FED88(v0 + 136, &qword_27ECBB780, &qword_242739CC0);
  v25 = *__swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  v26 = swift_task_alloc();
  *(v0 + 552) = v26;
  *v26 = v0;
  v26[1] = sub_24272A138;

  return sub_24270B434();
}

uint64_t sub_24272A138()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24272A248, v2, 0);
}

uint64_t sub_24272A248()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  v1 = *(v0 + 536);
  v2 = *(v0 + 520);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 408);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);

  v4(v5, v6);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v11 = *(v0 + 424);
  v10 = *(v0 + 432);
  v13 = *(v0 + 408);
  v12 = *(v0 + 416);
  v14 = *(v0 + 400);
  v15 = *(v0 + 376);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v16 = *(v0 + 8);
  v17 = *(v0 + 536);

  return v16(v9, v8, v17);
}

uint64_t sub_24272A360()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v4 = *(v0 + 360);

  v5 = v1;
  sub_242732044();
  sub_242731544(&qword_27ECBB7F8, MEMORY[0x277CC9AC8]);
  v6 = sub_242731E34();

  (*(v3 + 8))(v2, v4);
  if (v6)
  {

    v7 = *(v0 + 440);
    v8 = *(v0 + 464);
    v9 = sub_242732224();
    v10 = sub_2427327C4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 464);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = *(v11 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
      *(v12 + 4) = v14;
      *v13 = v14;
      v15 = v14;
      _os_log_impl(&dword_2426EB000, v9, v10, "%@", v12, 0xCu);
      sub_2426FED88(v13, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v13, -1, -1);
      MEMORY[0x245D17E30](v12, -1, -1);
    }

    v16 = *(v0 + 464);

    v17 = *(v16 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_task);
    *(v0 + 488) = v17;
    v18 = *(v0 + 440);
    if (v17)
    {
      v19 = v17;
      v20 = sub_242732224();
      v21 = sub_2427327B4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2426EB000, v20, v21, "Processing initial upload response", v22, 2u);
        MEMORY[0x245D17E30](v22, -1, -1);
      }

      v23 = *(v0 + 464);

      v24 = *(v23 + OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse);
      *(v0 + 496) = v24;
      v25 = v24;
      v26 = swift_task_alloc();
      *(v0 + 504) = v26;
      *v26 = v0;
      v26[1] = sub_242729658;
      v27 = *(v0 + 352);

      return sub_24272ADE8(v0 + 16, v19, v24);
    }

    v30 = sub_242732224();
    v31 = sub_2427327D4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2426EB000, v30, v31, "Initial upload request completed, but task was never set", v32, 2u);
      MEMORY[0x245D17E30](v32, -1, -1);
    }

    v33 = *(v0 + 464);

    sub_242718A7C();
    swift_allocError();
    *v34 = xmmword_242739AD0;
    swift_willThrow();
  }

  else
  {

    v29 = *(v0 + 480);
  }

  v36 = *(v0 + 424);
  v35 = *(v0 + 432);
  v38 = *(v0 + 408);
  v37 = *(v0 + 416);
  v39 = *(v0 + 400);
  v40 = *(v0 + 376);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_24272A770()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 496);

  v3 = *(v0 + 512);
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  v7 = *(v0 + 408);
  v6 = *(v0 + 416);
  v8 = *(v0 + 400);
  v9 = *(v0 + 376);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24272A82C()
{
  v39 = v0;
  v1 = v0[65];
  if (*&v1[OBJC_IVAR____TtC15CTLazuliSupport22ManualAuthTaskDelegate_failureResponse])
  {
    v2 = v0[55];
    v3 = v0[41];

    v4 = sub_242732224();
    v5 = sub_2427327D4();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[40];
      v6 = v0[41];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2426FBA6C(v7, v6, &v38);
      _os_log_impl(&dword_2426EB000, v4, v5, "Server responded with authentication challenge, clearing out stale credentials for host %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x245D17E30](v9, -1, -1);
      MEMORY[0x245D17E30](v8, -1, -1);
    }

    v10 = v0[44];
    swift_beginAccess();
    sub_2426FC2F8(v10 + 312, (v0 + 7), &qword_27ECBB780, &qword_242739CC0);
    if (v0[10])
    {
      sub_2426F0FFC((v0 + 7), (v0 + 12));
      sub_2426FED88((v0 + 7), &qword_27ECBB780, &qword_242739CC0);
      v11 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      v12 = swift_task_alloc();
      v0[70] = v12;
      *v12 = v0;
      v12[1] = sub_24272AB98;

      return sub_24270B434();
    }

    sub_2426FED88((v0 + 7), &qword_27ECBB780, &qword_242739CC0);
    v22 = v0[68];
    v23 = v0[65];
    v24 = v0[61];
    v25 = v0[58];
    v37 = v0[56];
    v26 = v0[51];
    v27 = v0[48];
    v28 = v0[49];
    sub_242718A7C();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
    swift_willThrow();

    v37(v26, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  else
  {
    v14 = v0[68];
    v15 = v0[61];
    v16 = v0[58];
    v17 = v0[56];
    v18 = v0[51];
    v19 = v0[48];
    v20 = v0[49];
    swift_willThrow();

    v17(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v21 = v0[68];
  }

  v31 = v0[53];
  v30 = v0[54];
  v33 = v0[51];
  v32 = v0[52];
  v34 = v0[50];
  v35 = v0[47];

  v36 = v0[1];

  return v36();
}

uint64_t sub_24272AB98()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 352);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24272ACA8, v2, 0);
}

uint64_t sub_24272ACA8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[61];
  v4 = v0[58];
  v17 = v0[56];
  v5 = v0[51];
  v6 = v0[48];
  v7 = v0[49];
  sub_242718A7C();
  swift_allocError();
  *v8 = 0;
  v8[1] = 0;
  swift_willThrow();

  v17(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v10 = v0[53];
  v9 = v0[54];
  v12 = v0[51];
  v11 = v0[52];
  v13 = v0[50];
  v14 = v0[47];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24272ADE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[71] = v3;
  v4[70] = a3;
  v4[69] = a2;
  v4[68] = a1;
  v5 = sub_242731D54();
  v4[72] = v5;
  v6 = *(v5 - 8);
  v4[73] = v6;
  v7 = *(v6 + 64) + 15;
  v4[74] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272AEB4, v3, 0);
}

uint64_t sub_24272AEB4()
{
  v1 = [*(v0 + 552) originalRequest];
  if (!v1)
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 552);
    v21 = sub_242732244();
    __swift_project_value_buffer(v21, qword_27ECBB758);
    v22 = v20;
    v23 = sub_242732224();
    v24 = sub_2427327D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 552);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      _os_log_impl(&dword_2426EB000, v23, v24, "Unable to retrieve original request when attempting to authenticate: %@", v26, 0xCu);
      sub_2426FED88(v27, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v27, -1, -1);
      MEMORY[0x245D17E30](v26, -1, -1);
    }

    sub_242718A7C();
    swift_allocError();
    *v29 = xmmword_242739AD0;
    swift_willThrow();
    goto LABEL_20;
  }

  v2 = *(v0 + 592);
  v3 = *(v0 + 560);
  v4 = v1;
  sub_242731D14();

  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = *(v0 + 560);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  *(v0 + 600) = v6;
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = v5;
  if ([v7 statusCode] != 401)
  {

LABEL_15:
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 552);
    v31 = sub_242732244();
    __swift_project_value_buffer(v31, qword_27ECBB758);
    v32 = v30;
    v33 = sub_242732224();
    v34 = sub_2427327D4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 552);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = [v35 response];
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_2426EB000, v33, v34, "Unexpected response when attempting to authenticate: %@", v36, 0xCu);
      sub_2426FED88(v37, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v37, -1, -1);
      MEMORY[0x245D17E30](v36, -1, -1);
    }

    v39 = *(v0 + 592);
    v40 = *(v0 + 584);
    v41 = *(v0 + 576);

    sub_242718A7C();
    swift_allocError();
    *v42 = 0;
    v42[1] = 0;
    swift_willThrow();
    (*(v40 + 8))(v39, v41);
    goto LABEL_20;
  }

  v9 = v8;
  v10 = sub_242700704(v7);
  *(v0 + 608) = v10;
  *(v0 + 616) = v11;
  *(v0 + 81) = v12;
  if (v12 != -1)
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    v16 = swift_task_alloc();
    *(v0 + 624) = v16;
    *v16 = v0;
    v16[1] = sub_24272B438;
    v17 = *(v0 + 568);
    v18 = *(v0 + 552);

    return sub_24272F9A4(v18, v13, v14, v15);
  }

  if (qword_27ECBA9C0 != -1)
  {
    swift_once();
  }

  v45 = sub_242732244();
  __swift_project_value_buffer(v45, qword_27ECBB758);
  v46 = sub_242732224();
  v47 = sub_2427327D4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_2426EB000, v46, v47, "Unable to retrieve auth scheme from HTTP response", v48, 2u);
    MEMORY[0x245D17E30](v48, -1, -1);
  }

  v49 = *(v0 + 592);
  v50 = *(v0 + 584);
  v51 = *(v0 + 576);

  sub_242718A7C();
  swift_allocError();
  *v52 = 0;
  v52[1] = 0;
  swift_willThrow();

  (*(v50 + 8))(v49, v51);
LABEL_20:
  v43 = *(v0 + 592);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_24272B438(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 624);
  v9 = *v2;
  *(v3 + 632) = a1;
  *(v3 + 640) = v1;

  if (v1)
  {
    v5 = *(v3 + 568);
    sub_242705380(*(v3 + 608), *(v3 + 616), *(v3 + 81));
    v6 = sub_24272BDB0;
    v7 = v5;
  }

  else
  {
    v7 = *(v3 + 568);
    v6 = sub_24272B56C;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_24272B56C()
{
  v97 = v0;
  v1 = [*(v0 + 632) user];
  if (!v1)
  {
    sub_242705380(*(v0 + 608), *(v0 + 616), *(v0 + 81));
LABEL_11:
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 632);
    v33 = sub_242732244();
    __swift_project_value_buffer(v33, qword_27ECBB758);
    v34 = v32;
    v35 = sub_242732224();
    v36 = sub_2427327D4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 632);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v37;
      *v39 = v37;
      v40 = v37;
      _os_log_impl(&dword_2426EB000, v35, v36, "URL credential missing username/password: %@", v38, 0xCu);
      sub_2426FED88(v39, &unk_27ECBAE80, &qword_242736EF0);
      MEMORY[0x245D17E30](v39, -1, -1);
      MEMORY[0x245D17E30](v38, -1, -1);
    }

    v41 = *(v0 + 632);
    v42 = *(v0 + 592);
    v43 = *(v0 + 584);
    v44 = *(v0 + 576);
    v45 = *(v0 + 560);

    sub_242718A7C();
    swift_allocError();
    *v46 = xmmword_242739AE0;
    goto LABEL_16;
  }

  v2 = *(v0 + 632);
  v3 = v1;
  v4 = sub_2427324B4();
  v6 = v5;

  v7 = [v2 password];
  v8 = *(v0 + 81);
  if (!v7)
  {
    sub_242705380(*(v0 + 608), *(v0 + 616), *(v0 + 81));

    goto LABEL_11;
  }

  v9 = v7;
  v10 = sub_2427324B4();
  v12 = v11;

  v13 = *(v0 + 616);
  v14 = *(v0 + 608);
  v90 = v10;
  if (v8 < 2)
  {
    v15 = *(v0 + 600);
    v16 = *(v0 + 560);
    sub_242705380(v14, v13, *(v0 + 81));
    v17 = v16;
    sub_24271C824(v15, v0 + 16);
    v93 = *(v0 + 48);
    v94 = *(v0 + 64);
    v95 = *(v0 + 80);
    v91 = *(v0 + 16);
    v92 = *(v0 + 32);
    if (*(v0 + 24))
    {
      v85 = *(v0 + 24);
      v18 = *(v0 + 16);
      v19 = *(v0 + 48);
      *(v0 + 448) = *(v0 + 32);
      *(v0 + 464) = v19;
      *(v0 + 480) = *(v0 + 64);
      *(v0 + 496) = *(v0 + 80);
      if (qword_27ECBA9C0 != -1)
      {
        swift_once();
      }

      v88 = v4;
      v20 = sub_242732244();
      __swift_project_value_buffer(v20, qword_27ECBB758);
      v21 = *(v0 + 16);
      *(v0 + 104) = *(v0 + 32);
      v22 = *(v0 + 64);
      *(v0 + 120) = *(v0 + 48);
      *(v0 + 136) = v22;
      *(v0 + 152) = *(v0 + 80);
      *(v0 + 88) = v21;
      sub_2427126B4(v0 + 88, v0 + 160);
      v23 = sub_242732224();
      v24 = sub_2427327C4();
      sub_2426FED88(v0 + 16, &qword_27ECBB128, &qword_2427387B0);
      v83 = v18;
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v96 = v26;
        *v25 = 136315138;
        *(v0 + 304) = v18;
        v27 = v85;
        *(v0 + 312) = v85;
        v28 = *(v0 + 464);
        *(v0 + 320) = *(v0 + 448);
        *(v0 + 336) = v28;
        *(v0 + 352) = *(v0 + 480);
        *(v0 + 368) = *(v0 + 496);
        *(v0 + 264) = v93;
        *(v0 + 280) = v94;
        *(v0 + 296) = v95;
        *(v0 + 232) = v91;
        *(v0 + 248) = v92;
        sub_2427126B4(v0 + 232, v0 + 376);
        v29 = sub_242732514();
        v31 = sub_2426FBA6C(v29, v30, &v96);

        *(v25 + 4) = v31;
        _os_log_impl(&dword_2426EB000, v23, v24, "Auth Info: %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x245D17E30](v26, -1, -1);
        MEMORY[0x245D17E30](v25, -1, -1);
      }

      else
      {

        v27 = v85;
      }

      v87 = *(v0 + 632);
      v64 = *(v0 + 592);
      v65 = *(v0 + 584);
      v66 = *(v0 + 576);
      v82 = *(v0 + 560);
      v67 = *(v0 + 544);
      v68 = sub_242709A44(v90, v12);
      v70 = v69;
      *(v0 + 528) = v66;
      *(v0 + 536) = &off_285502158;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 504));
      (*(v65 + 16))(boxed_opaque_existential_1, v64, v66);
      v67[3] = &type metadata for HTTPDigestAuthenticateResponse;
      v67[4] = &off_2855011A8;
      v72 = swift_allocObject();
      *v67 = v72;
      *(v72 + 16) = v83;
      *(v72 + 24) = v27;
      v73 = *(v0 + 464);
      *(v72 + 32) = *(v0 + 448);
      *(v72 + 48) = v73;
      *(v72 + 64) = *(v0 + 480);
      *(v72 + 80) = *(v0 + 496);
      *(v72 + 88) = v88;
      *(v72 + 96) = v6;
      *(v72 + 104) = v68;
      *(v72 + 112) = v70;
      sub_2426F0FFC(v0 + 504, v72 + 120);
      *(v72 + 160) = 1;
      sub_2426FC2A4(v68, v70);
      v74 = sub_24271EF0C(8, 0);
      v76 = v75;
      sub_2426FBA18(v68, v70);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 504));

      *(v72 + 168) = v74;
      *(v72 + 176) = v76;
      (*(v65 + 8))(v64, v66);
      goto LABEL_25;
    }

    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v59 = sub_242732244();
    __swift_project_value_buffer(v59, qword_27ECBB758);
    v60 = sub_242732224();
    v61 = sub_2427327D4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2426EB000, v60, v61, "Unable to parse authenticate header", v62, 2u);
      MEMORY[0x245D17E30](v62, -1, -1);
    }

    v41 = *(v0 + 632);
    v42 = *(v0 + 592);
    v43 = *(v0 + 584);
    v44 = *(v0 + 576);
    v45 = *(v0 + 560);

    sub_242718A7C();
    swift_allocError();
    *v63 = 0;
    v63[1] = 0;
LABEL_16:
    swift_willThrow();

    (*(v43 + 8))(v42, v44);
    v47 = *(v0 + 592);

    v48 = *(v0 + 8);
    goto LABEL_26;
  }

  v86 = *(v0 + 592);
  v49 = *(v0 + 584);
  v81 = *(v0 + 632);
  v84 = *(v0 + 576);
  v80 = *(v0 + 560);
  v50 = *(v0 + 544);

  MEMORY[0x245D17090](58, 0xE100000000000000);
  v79 = v6;
  v89 = v4;

  MEMORY[0x245D17090](v10, v12);

  v51 = sub_242709A44(v4, v6);
  v53 = v52;
  v54 = sub_242731FB4();
  v55 = v12;
  v57 = v56;
  sub_2426FBA18(v51, v53);
  v50[3] = &type metadata for HTTPBasicAuthenticateResponse;
  v50[4] = &off_285502620;
  v58 = swift_allocObject();
  *v50 = v58;
  sub_242705380(v14, v13, 2u);

  v58[2] = v54;
  v58[3] = v57;
  v58[4] = v89;
  v58[5] = v79;
  v58[6] = v90;
  v58[7] = v55;
  (*(v49 + 8))(v86, v84);
LABEL_25:
  v77 = *(v0 + 592);

  v48 = *(v0 + 8);
LABEL_26:

  return v48();
}

uint64_t sub_24272BDB0()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 640);
  v5 = *(v0 + 592);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24272BE48(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = sub_242731F34();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v8 = sub_242731D54();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24272C004, v2, 0);
}

uint64_t sub_24272C004()
{
  v133 = v0;
  v132[1] = *MEMORY[0x277D85DE8];
  if (qword_27ECBA9C0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v126 = v0[17];
  logb = v0[16];
  v3 = v0[14];
  v123 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  v8 = sub_242732244();
  __swift_project_value_buffer(v8, qword_27ECBB758);
  v9 = *(v2 + 16);
  v9(v1, v7, v3);
  v10 = *(v4 + 16);
  v10(v123, v6, v5);
  v9(v126, v7, v3);
  v9(logb, v7, v3);
  v11 = sub_242732224();
  v12 = sub_2427327B4();
  log = v11;
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[17];
  v15 = v0[18];
  v16 = v0[15];
  v17 = v0[16];
  v18 = v0[14];
  v124 = v14;
  v127 = v0[13];
  v20 = v0[9];
  v19 = v0[10];
  if (v13)
  {
    v119 = v12;
    v120 = v10;
    v21 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v132[0] = v118;
    *v21 = 136315906;
    v22 = sub_242731CB4();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 5522759;
    }

    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    v26 = *(v16 + 8);
    v26(v15, v18);
    v27 = sub_2426FBA6C(v24, v25, v132);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    sub_242731544(&qword_27ECBAB60, MEMORY[0x277CC9260]);
    v28 = sub_242732AD4();
    v29 = v20;
    v30 = v28;
    v32 = v31;
    v33 = *(v19 + 8);
    v33(v127, v29);
    v34 = sub_2426FBA6C(v30, v32, v132);

    *(v21 + 14) = v34;
    *(v21 + 22) = 2080;
    sub_242731544(&qword_27ECBB140, MEMORY[0x277CC8678]);
    v35 = sub_242732AD4();
    v37 = v36;
    v38 = v26;
    v26(v124, v18);
    v39 = sub_2426FBA6C(v35, v37, v132);

    *(v21 + 24) = v39;
    *(v21 + 32) = 2080;
    v40 = sub_242731D04();
    if (!v40)
    {
      v40 = sub_242730F50(MEMORY[0x277D84F90]);
    }

    v41 = v0[16];
    v42 = v0[14];
    v0[4] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB770, &qword_242739CB0);
    v43 = sub_242732514();
    v45 = v44;
    v38(v41, v42);
    v46 = sub_2426FBA6C(v43, v45, v132);

    *(v21 + 34) = v46;
    _os_log_impl(&dword_2426EB000, log, v119, "Downloading file: %s [dest: %s] %s: %s ", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v118, -1, -1);
    MEMORY[0x245D17E30](v21, -1, -1);

    v10 = v120;
  }

  else
  {

    v47 = *(v16 + 8);
    v47(v17, v18);
    v47(v124, v18);
    v33 = *(v19 + 8);
    v33(v127, v20);
    v47(v15, v18);
  }

  v48 = v0[9];
  v49 = v0[10];
  v50 = v0[8];
  v51 = v0[5];
  sub_242731D34();
  if ((*(v49 + 48))(v50, 1, v48) == 1)
  {
    sub_2426FED88(v0[8], &qword_27ECBAB20, &unk_242737540);
LABEL_19:
    sub_242718A7C();
    swift_allocError();
    *v77 = xmmword_242739AC0;
    swift_willThrow();
    v79 = v0[17];
    v78 = v0[18];
    v80 = v0[16];
    v82 = v0[12];
    v81 = v0[13];
    v83 = v0[11];
    v84 = v0[8];

    v85 = v0[1];
    v86 = *MEMORY[0x277D85DE8];

    return v85();
  }

  v52 = v0[9];
  v53 = v0[10];
  v54 = v0[8];
  v55 = sub_242731ED4();
  v57 = v56;
  v33(v54, v52);
  if (!v57)
  {
    goto LABEL_19;
  }

  v128 = v57;
  loga = v55;
  v58 = v0[12];
  v59 = v0[9];
  v61 = v0[6];
  v60 = v0[7];
  v62 = v0[5];
  v63 = v60[26];
  v64 = v60[27];
  __swift_project_boxed_opaque_existential_1(v60 + 23, v63);
  v125 = (*(v64 + 24))(v62, v63, v64);
  v0[19] = v125;
  v10(v58, v61, v59);
  v65 = sub_242732224();
  v66 = sub_2427327C4();
  v67 = os_log_type_enabled(v65, v66);
  v68 = v0[12];
  v69 = v0[9];
  v121 = v33;
  if (v67)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v132[0] = v71;
    *v70 = 136315138;
    sub_242731544(&qword_27ECBAB60, MEMORY[0x277CC9260]);
    v72 = sub_242732AD4();
    v73 = v33;
    v75 = v74;
    v73(v68, v69);
    v76 = sub_2426FBA6C(v72, v75, v132);

    *(v70 + 4) = v76;
    _os_log_impl(&dword_2426EB000, v65, v66, "Attempting to remove pre-existing destination file: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    MEMORY[0x245D17E30](v71, -1, -1);
    MEMORY[0x245D17E30](v70, -1, -1);
  }

  else
  {

    v33(v68, v69);
  }

  v88 = v0[6];
  v89 = [objc_opt_self() defaultManager];
  v90 = sub_242731EA4();
  v0[2] = 0;
  v91 = [v89 removeItemAtURL:v90 error:v0 + 2];

  v92 = v0[2];
  if (v91)
  {
    v93 = v92;
  }

  else
  {
    v94 = v0[11];
    v95 = v0[9];
    v96 = v0[6];
    v97 = v92;
    v98 = sub_242731E64();

    swift_willThrow();
    v10(v94, v96, v95);
    v99 = v98;
    v89 = sub_242732224();
    v100 = sub_2427327C4();

    v101 = os_log_type_enabled(v89, v100);
    v102 = v0[11];
    v103 = v0[9];
    if (!v101)
    {

      v121(v102, v103);
      goto LABEL_29;
    }

    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v132[0] = v122;
    *v104 = 136315394;
    sub_242731544(&qword_27ECBAB60, MEMORY[0x277CC9260]);
    v106 = sub_242732AD4();
    v108 = v107;
    v121(v102, v103);
    v109 = sub_2426FBA6C(v106, v108, v132);

    *(v104 + 4) = v109;
    *(v104 + 12) = 2112;
    v110 = v98;
    v111 = _swift_stdlib_bridgeErrorToNSError();
    *(v104 + 14) = v111;
    *v105 = v111;
    _os_log_impl(&dword_2426EB000, v89, v100, "Failed to remove pre-exisiting destination file %s: %@", v104, 0x16u);
    sub_2426FED88(v105, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v105, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    MEMORY[0x245D17E30](v122, -1, -1);
    MEMORY[0x245D17E30](v104, -1, -1);
  }

LABEL_29:
  v113 = v0[6];
  v112 = v0[7];
  v114 = v125;
  sub_242731EF4();
  v115 = sub_242732484();

  [v114 set:v115 pathToDownloadTaskFile:?];

  v116 = swift_allocObject();
  v0[20] = v116;
  v116[2] = v112;
  v116[3] = loga;
  v116[4] = v128;

  v117 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24272CAD0, 0, 0);
}

uint64_t sub_24272CAD0()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = v0[19];
  v1 = v0[20];
  v3 = swift_task_alloc();
  v0[21] = v3;
  v3[2] = v2;
  v3[3] = &unk_242739D68;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  v6 = sub_242718568();
  *v5 = v0;
  v5[1] = sub_24272CC0C;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v0 + 3, 0, 0, 0xD00000000000001BLL, 0x80000002427343D0, sub_242731538, v3, v6);
}

uint64_t sub_24272CC0C()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_24272CEF0;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_24272CD5C;
  }

  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24272CD5C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = v0[7];

  v0[24] = v0[3];
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24272CDFC, v2, 0);
}

uint64_t sub_24272CDFC()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);

  v8 = *(v0 + 8);
  v9 = *(v0 + 192);
  v10 = *MEMORY[0x277D85DE8];

  return v8(v9);
}

uint64_t sub_24272CEF0()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[7];

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24272CF98, v3, 0);
}

uint64_t sub_24272CF98()
{
  v12 = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 184);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

uint64_t sub_24272D088(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 192) = a4;
  *(v8 + 128) = a2;
  *(v8 + 136) = a3;
  *(v8 + 120) = a1;
  return MEMORY[0x2822009F8](sub_24272D0B8, a6, 0);
}

uint64_t sub_24272D0B8()
{
  v21 = v0;
  if ([*(v0 + 144) previousFailureCount])
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 168);
    v2 = sub_242732244();
    __swift_project_value_buffer(v2, qword_27ECBB758);

    v3 = sub_242732224();
    v4 = sub_2427327D4();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 160);
      v5 = *(v0 + 168);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2426FBA6C(v6, v5, &v20);
      _os_log_impl(&dword_2426EB000, v3, v4, "Authentication has failed previously, clearing out credentials for host %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x245D17E30](v8, -1, -1);
      MEMORY[0x245D17E30](v7, -1, -1);
    }

    v9 = *(v0 + 152);
    swift_beginAccess();
    sub_2426FC2F8(v9 + 312, v0 + 16, &qword_27ECBB780, &qword_242739CC0);
    if (*(v0 + 40))
    {
      sub_2426F0FFC(v0 + 16, v0 + 56);
      sub_2426FED88(v0 + 16, &qword_27ECBB780, &qword_242739CC0);
      v10 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v11 = swift_task_alloc();
      *(v0 + 184) = v11;
      *v11 = v0;
      v11[1] = sub_24272D3D4;

      return sub_24270B434();
    }

    else
    {
      sub_2426FED88(v0 + 16, &qword_27ECBB780, &qword_242739CC0);
      v19 = *(v0 + 8);

      return v19(0);
    }
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_242731C8C;
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = *(v0 + 192);

    return sub_24272F9A4(v17, v15, v16, v18);
  }
}

uint64_t sub_24272D3D4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_242731C7C, v2, 0);
}

uint64_t sub_24272D4E4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v4 = sub_242731D54();
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272D600, v1, 0);
}

uint64_t sub_24272D600()
{
  v70 = v0;
  if (qword_27ECBA9C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = sub_242732244();
  *(v0 + 152) = __swift_project_value_buffer(v7, qword_27ECBB758);
  v8 = *(v5 + 16);
  *(v0 + 160) = v8;
  *(v0 + 168) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v4);
  v8(v1, v6, v4);
  v8(v3, v6, v4);
  v9 = sub_242732224();
  v10 = sub_2427327B4();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  if (v11)
  {
    v66 = v10;
    log = v9;
    v17 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v69[0] = v65;
    *v17 = 136315650;
    v18 = sub_242731CB4();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 5522759;
    }

    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v22 = *(v15 + 8);
    v22(v12, v16);
    v23 = sub_2426FBA6C(v20, v21, v69);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    sub_242731544(&qword_27ECBB140, MEMORY[0x277CC8678]);
    v24 = sub_242732AD4();
    v26 = v25;
    v22(v13, v16);
    v27 = sub_2426FBA6C(v24, v26, v69);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2080;
    v28 = sub_242731D04();
    if (!v28)
    {
      v28 = sub_242730F50(MEMORY[0x277D84F90]);
    }

    v29 = *(v0 + 128);
    v30 = *(v0 + 104);
    *(v0 + 72) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB770, &qword_242739CB0);
    v31 = sub_242732514();
    v33 = v32;
    v22(v29, v30);
    v34 = sub_2426FBA6C(v31, v33, v69);

    *(v17 + 24) = v34;
    _os_log_impl(&dword_2426EB000, log, v66, "Sending request: %s %s: %s ", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D17E30](v65, -1, -1);
    MEMORY[0x245D17E30](v17, -1, -1);
  }

  else
  {

    v22 = *(v15 + 8);
    v22(v14, v16);
    v22(v13, v16);
    v22(v12, v16);
  }

  *(v0 + 176) = v22;
  v35 = *(v0 + 96);
  v36 = *(v0 + 80);
  sub_242731D34();
  v37 = sub_242731F34();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 48))(v35, 1, v37);
  v40 = *(v0 + 96);
  if (v39 == 1)
  {
    sub_2426FED88(*(v0 + 96), &qword_27ECBAB20, &unk_242737540);
LABEL_20:
    sub_242718A7C();
    swift_allocError();
    *v58 = xmmword_242739AC0;
    v60 = *(v0 + 136);
    v59 = *(v0 + 144);
    v62 = *(v0 + 120);
    v61 = *(v0 + 128);
    v63 = *(v0 + 96);
    swift_willThrow();

    v64 = *(v0 + 8);

    return v64();
  }

  v41 = *(v0 + 96);
  v42 = sub_242731ED4();
  v44 = v43;
  (*(v38 + 8))(v40, v37);
  if (!v44)
  {
    goto LABEL_20;
  }

  v45 = *(v0 + 88);
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = v42;
  v46[4] = v44;
  v47 = type metadata accessor for AuthTaskDelegate();
  v48 = objc_allocWithZone(v47);
  v49 = &v48[OBJC_IVAR____TtC15CTLazuliSupport16AuthTaskDelegate_challengeHandler];
  *v49 = &unk_242739CA0;
  *(v49 + 1) = v46;
  *(v0 + 56) = v48;
  *(v0 + 64) = v47;

  v50 = objc_msgSendSuper2((v0 + 56), sel_init);
  *(v0 + 184) = v50;
  v51 = v45[26];
  v52 = v45[27];
  __swift_project_boxed_opaque_existential_1(v45 + 23, v51);
  v53 = *(v52 + 8);
  loga = (v53 + *v53);
  v54 = v53[1];
  v55 = swift_task_alloc();
  *(v0 + 192) = v55;
  *v55 = v0;
  v55[1] = sub_24272DC68;
  v56 = *(v0 + 80);

  return (loga)(v56, v50, v51, v52);
}

uint64_t sub_24272DC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = v3;
  v7 = v5[24];
  v8 = *v4;
  v6[25] = a3;
  v6[26] = v3;

  v9 = v5[11];
  if (v3)
  {
    v10 = sub_24272DF30;
  }

  else
  {
    v10 = sub_24272DDA0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24272DDA0()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 200);
  v3 = sub_242732224();
  v4 = sub_2427327C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2426EB000, v3, v4, "%@", v6, 0xCu);
    sub_2426FED88(v7, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v7, -1, -1);
    MEMORY[0x245D17E30](v6, -1, -1);
  }

  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v12 = *(v0 + 136);
  v11 = *(v0 + 144);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 96);

  v16 = *(v0 + 8);
  v17 = *(v0 + 200);

  return v16(v9, v10, v17);
}

uint64_t sub_24272DF30()
{
  v38 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);

  v3(v5, v7, v6);
  v8 = v1;
  v9 = sub_242732224();
  v10 = sub_2427327D4();

  if (os_log_type_enabled(v9, v10))
  {
    v35 = *(v0 + 176);
    v36 = *(v0 + 208);
    v11 = *(v0 + 120);
    v34 = *(v0 + 112);
    v12 = *(v0 + 104);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v13 = 136315394;
    sub_242731544(&qword_27ECBB140, MEMORY[0x277CC8678]);
    v16 = sub_242732AD4();
    v18 = v17;
    v35(v11, v12);
    v19 = sub_2426FBA6C(v16, v18, &v37);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v36;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v14 = v21;
    _os_log_impl(&dword_2426EB000, v9, v10, "Request [%s] failed with error: %@", v13, 0x16u);
    sub_2426FED88(v14, &unk_27ECBAE80, &qword_242736EF0);
    MEMORY[0x245D17E30](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x245D17E30](v15, -1, -1);
    MEMORY[0x245D17E30](v13, -1, -1);
  }

  else
  {
    v22 = *(v0 + 176);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);
    v25 = *(v0 + 104);

    v22(v23, v25);
  }

  v26 = *(v0 + 208);
  v28 = *(v0 + 136);
  v27 = *(v0 + 144);
  v30 = *(v0 + 120);
  v29 = *(v0 + 128);
  v31 = *(v0 + 96);
  swift_willThrow();

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_24272E1EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 192) = a4;
  *(v8 + 128) = a2;
  *(v8 + 136) = a3;
  *(v8 + 120) = a1;
  return MEMORY[0x2822009F8](sub_24272E21C, a6, 0);
}

uint64_t sub_24272E21C()
{
  v21 = v0;
  if ([*(v0 + 144) previousFailureCount])
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 168);
    v2 = sub_242732244();
    __swift_project_value_buffer(v2, qword_27ECBB758);

    v3 = sub_242732224();
    v4 = sub_2427327D4();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 160);
      v5 = *(v0 + 168);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2426FBA6C(v6, v5, &v20);
      _os_log_impl(&dword_2426EB000, v3, v4, "Authentication has failed previously, clearing out credentials for host %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x245D17E30](v8, -1, -1);
      MEMORY[0x245D17E30](v7, -1, -1);
    }

    v9 = *(v0 + 152);
    swift_beginAccess();
    sub_2426FC2F8(v9 + 312, v0 + 16, &qword_27ECBB780, &qword_242739CC0);
    if (*(v0 + 40))
    {
      sub_2426F0FFC(v0 + 16, v0 + 56);
      sub_2426FED88(v0 + 16, &qword_27ECBB780, &qword_242739CC0);
      v10 = *__swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v11 = swift_task_alloc();
      *(v0 + 184) = v11;
      *v11 = v0;
      v11[1] = sub_24272E668;

      return sub_24270B434();
    }

    else
    {
      sub_2426FED88(v0 + 16, &qword_27ECBB780, &qword_242739CC0);
      v19 = *(v0 + 8);

      return v19(0);
    }
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 176) = v13;
    *v13 = v0;
    v13[1] = sub_24272E538;
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = *(v0 + 192);

    return sub_24272F9A4(v17, v15, v16, v18);
  }
}

uint64_t sub_24272E538(uint64_t a1)
{
  v4 = *(*v2 + 176);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1);
  }
}

uint64_t sub_24272E668()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24272E778, v2, 0);
}

uint64_t sub_24272E778()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24272E7E0()
{
  sub_242719C64(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));
  v1 = *(v0 + 304);

  sub_2426FED88(v0 + 312, &qword_27ECBB780, &qword_242739CC0);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_24272E8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24272E8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24272E964@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 128);
  if (v2)
  {
    v4 = *(v1 + 120);
    swift_beginAccess();
    sub_2426FC2F8(v1 + 312, &v23, &qword_27ECBB780, &qword_242739CC0);
    if (v24)
    {
      return sub_2426F0FE4(&v23, a1);
    }

    else
    {

      sub_2426FED88(&v23, &qword_27ECBB780, &qword_242739CC0);
      v11 = *(v1 + 112);
      sub_2426F0FFC(v1 + 184, &v23 + 8);
      sub_2426F0FFC(v1 + 224, v25);
      v12 = *(v1 + 168);
      v13 = *(v1 + 176);
      v14 = *(v1 + 177);
      LOBYTE(v23) = v11;
      v25[5] = v4;
      v25[6] = v2;
      v25[7] = v12;
      v26 = v13;
      v27 = v14;
      sub_24273134C(&v23, v22);
      sub_24273134C(v22, v21);
      v20[3] = &type metadata for HTTPGBAAuthenticator.DefaultFactory;
      v20[4] = &off_285501A78;
      v15 = type metadata accessor for HTTPGBAAuthenticator(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v20, &type metadata for HTTPGBAAuthenticator.DefaultFactory);
      v19 = sub_242730934(v21, v18);
      sub_242712874(v22);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      a1[3] = v15;
      a1[4] = &off_285501988;
      *a1 = v19;
      sub_242712874(&v23);
      sub_2426F0FFC(a1, v22);
      swift_beginAccess();
      sub_2427313A8(v22, v1 + 312);
      return swift_endAccess();
    }
  }

  else
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v6 = sub_242732244();
    __swift_project_value_buffer(v6, qword_27ECBB758);
    v7 = sub_242732224();
    v8 = sub_2427327D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2426EB000, v7, v8, "Missing IMPI, unable to perform bootstrap authentication", v9, 2u);
      MEMORY[0x245D17E30](v9, -1, -1);
    }

    sub_242718A7C();
    swift_allocError();
    *v10 = xmmword_242739AF0;
    return swift_willThrow();
  }
}

uint64_t sub_24272EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = sub_242731D54();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272ED0C, v4, 0);
}

uint64_t sub_24272ED0C()
{
  v50 = v0;
  v1 = [*(v0 + 64) originalRequest];
  if (!v1)
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v19 = sub_242732244();
    __swift_project_value_buffer(v19, qword_27ECBB758);
    v20 = sub_242732224();
    v21 = sub_2427327D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2426EB000, v20, v21, "Unable to get original request", v22, 2u);
      MEMORY[0x245D17E30](v22, -1, -1);
    }

    sub_242718A7C();
    swift_allocError();
    *v23 = xmmword_242739AD0;
    swift_willThrow();
    goto LABEL_32;
  }

  v2 = *(v0 + 120);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = v1;
  sub_242731D14();

  sub_242713F3C();
  if (!v8)
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v24 = sub_242732244();
    __swift_project_value_buffer(v24, qword_27ECBB758);
    v25 = sub_242732224();
    v26 = sub_2427327D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2426EB000, v25, v26, "Invalid realm parameter", v27, 2u);
      MEMORY[0x245D17E30](v27, -1, -1);
    }

    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 104);

    sub_242718A7C();
    swift_allocError();
    *v31 = 0;
    v31[1] = 0;
    goto LABEL_31;
  }

  v9 = v6;
  v10 = v7;
  v11 = *(v0 + 120);
  v12 = *(v0 + 96);
  sub_242731D34();
  v13 = sub_242731F34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = *(v0 + 96);
  if (v15 == 1)
  {
    sub_2426FED88(*(v0 + 96), &qword_27ECBAB20, &unk_242737540);
    v17 = 0;
    v18 = 0;
LABEL_20:
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v34 = sub_242732244();
    __swift_project_value_buffer(v34, qword_27ECBB758);

    v35 = sub_242732224();
    v36 = sub_2427327D4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49[0] = v38;
      *v37 = 136315394;
      if (v18)
      {
        v39 = v17;
      }

      else
      {
        v39 = 0;
      }

      if (!v18)
      {
        v18 = 0xE000000000000000;
      }

      v40 = sub_2426FBA6C(v39, v18, v49);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;

      v41 = sub_2426FBA6C(v9, v10, v49);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_2426EB000, v35, v36, "Request FQDN (%s) does not match realm FQDN (%s)", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D17E30](v38, -1, -1);
      MEMORY[0x245D17E30](v37, -1, -1);
    }

    else
    {
    }

    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 104);
    sub_242718A7C();
    swift_allocError();
    *v42 = xmmword_242739B00;
LABEL_31:
    swift_willThrow();
    (*(v29 + 8))(v28, v30);
LABEL_32:
    v43 = *(v0 + 120);
    v44 = *(v0 + 96);

    v45 = *(v0 + 8);

    return v45();
  }

  v17 = sub_242731ED4();
  v18 = v32;
  (*(v14 + 8))(v16, v13);
  if (!v18 || (v17 != v9 || v18 != v10) && (sub_242732AE4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v33 = *(v0 + 88);

  sub_24272E964((v0 + 16));
  v47 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v48 = *v47;
  *(v0 + 128) = *v47;

  return MEMORY[0x2822009F8](sub_24272F344, v48, 0);
}

uint64_t sub_24272F344()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_requestQueue);
  *(v0 + 136) = v1;

  return MEMORY[0x2822009F8](sub_24272F3C0, v1, 0);
}

uint64_t sub_24272F3C0()
{
  v2 = v0[16];
  v1 = v0[17];
  sub_242725080(&qword_27ECBB7D0, &qword_242739D28, &unk_285502800, &unk_242739D40);
  v3 = sub_242712710(&qword_27ECBB790, &qword_27ECBB798, &qword_242739CE8);
  v4 = swift_task_alloc();
  v0[18] = v4;
  v4[2] = &unk_242739CE0;
  v4[3] = v2;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = type metadata accessor for GBAResult(0);
  *v6 = v0;
  v6[1] = sub_24272F530;
  v8 = v0[7];

  return MEMORY[0x2822008A0](v8, v1, v3, 0x293A5F2868737570, 0xE800000000000000, sub_242731100, v4, v7);
}

uint64_t sub_24272F530()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[17];
    v5 = sub_24272F6F4;
  }

  else
  {
    v6 = v2[18];
    v7 = v2[16];
    v8 = v2[11];

    v5 = sub_24272F664;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24272F664()
{
  v1 = v0[12];
  (*(v0[14] + 8))(v0[15], v0[13]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24272F6F4()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[11];

  return MEMORY[0x2822009F8](sub_24272F76C, v3, 0);
}

uint64_t sub_24272F76C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24272F7FC()
{
  if (v0[18] && v0[20])
  {
    v1 = v0[17];
    v2 = v0[19];
    v3 = objc_allocWithZone(MEMORY[0x277CCACF0]);
    v4 = sub_242732484();
    v5 = sub_242732484();
    v6 = [v3 initWithUser:v4 password:v5 persistence:0];

    return v6;
  }

  else
  {
    if (qword_27ECBA9C0 != -1)
    {
      swift_once();
    }

    v8 = sub_242732244();
    __swift_project_value_buffer(v8, qword_27ECBB758);
    v9 = sub_242732224();
    v10 = sub_2427327D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2426EB000, v9, v10, "Missing username or password for HTTP authentication", v11, 2u);
      MEMORY[0x245D17E30](v11, -1, -1);
    }

    sub_242718A7C();
    swift_allocError();
    *v12 = 0xD000000000000011;
    v12[1] = 0x80000002427343B0;
    return swift_willThrow();
  }
}

uint64_t sub_24272F9A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 112) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(*(type metadata accessor for GBAResult(0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBAB20, &unk_242737540) - 8) + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB788, &qword_242739CD0) - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24272FAB8, v4, 0);
}

uint64_t sub_24272FAB8()
{
  v1 = [*(v0 + 16) originalRequest];
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = v1;
    sub_242731D14();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = sub_242731D54();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, v4, 1, v7);
  sub_2426FEBB0(v6, v5, &qword_27ECBB788, &qword_242739CD0);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_2426FED88(*(v0 + 72), &qword_27ECBB788, &qword_242739CD0);
LABEL_13:
    sub_242718A7C();
    swift_allocError();
    *v27 = xmmword_242739AC0;
    swift_willThrow();
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v31 = *(v0 + 48);
    v30 = *(v0 + 56);

    v32 = *(v0 + 8);

    return v32();
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 72);
  sub_242731D34();
  v11 = sub_242731F34();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = *(v0 + 72);
  v15 = *(v0 + 56);
  if (v13 == 1)
  {
    sub_2426FED88(*(v0 + 56), &qword_27ECBAB20, &unk_242737540);
    (*(v8 + 8))(v14, v7);
    goto LABEL_13;
  }

  v16 = *(v0 + 56);
  v17 = sub_242731ED4();
  v19 = v18;
  *(v0 + 80) = v17;
  *(v0 + 88) = v18;
  (*(v12 + 8))(v15, v11);
  (*(v8 + 8))(v14, v7);
  if (!v19)
  {
    goto LABEL_13;
  }

  if (*(v0 + 112) == 1)
  {
    v20 = *(v0 + 32);
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_24272FEAC;
    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    v24 = *(v0 + 16);
    v25 = *(v0 + 24);

    return sub_24272EC0C(v22, v24, v25, v20);
  }

  else
  {
    v33 = *(v0 + 40);

    v34 = sub_24272F7FC();
    v36 = *(v0 + 64);
    v35 = *(v0 + 72);
    v38 = *(v0 + 48);
    v37 = *(v0 + 56);
    v39 = v34;

    v40 = *(v0 + 8);

    return v40(v39);
  }
}

uint64_t sub_24272FEAC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = *(v2 + 40);

    v6 = sub_242730138;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 40);
    v6 = sub_24272FFD4;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_24272FFD4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = [*(v0 + 16) _TLSNegotiatedCipherSuite];
  v5 = *v3;
  v6 = v3[1];
  v7 = sub_24270A298(v2, v1, v4);
  v9 = v8;

  sub_242731FB4();
  sub_2426FBA18(v7, v9);
  v10 = objc_allocWithZone(MEMORY[0x277CCACF0]);
  v11 = sub_242732484();
  v12 = sub_242732484();

  v13 = [v10 initWithUser:v11 password:v12 persistence:0];

  sub_242711D88(v3);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v17 = *(v0 + 48);
  v16 = *(v0 + 56);

  v18 = *(v0 + 8);

  return v18(v13);
}

uint64_t sub_242730138()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2427301C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2427302A4;

  return sub_24272E1EC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_2427302A4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2427303A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB868, &qword_242739DF8);
  v38 = a2;
  result = sub_2427329A4();
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_242732BA4();
      sub_242732554();
      result = sub_242732BD4();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_242730648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242704184(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2427303A0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_242704184(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_242732B14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2427307C4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_2427307C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB868, &qword_242739DF8);
  v2 = *v0;
  v3 = sub_242732994();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_242730934(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7F0, &qword_242739D58);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7A0, &qword_242739CF0);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7D0, &qword_242739D28);
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v30);
  v14 = &v29 - v13;
  v15 = sub_242732024();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = &type metadata for HTTPGBAAuthenticator.DefaultFactory;
  v34[4] = &off_285501A78;
  swift_defaultActor_initialize();
  v20 = OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_cachedResult;
  v21 = type metadata accessor for GBAResult(0);
  (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);
  sub_242732014();
  (*(v16 + 32))(a2 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_id, v19, v15);
  v22 = v29;
  sub_24273134C(v29, a2 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_configuration);
  sub_2426F0FFC(v34, a2 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_factory);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB798, &qword_242739CE8);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v26 + 14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7B0, &qword_242739D00);
  v27 = v31;
  (*(v3 + 104))(v6, *MEMORY[0x277D858A0], v31);
  sub_242732734();
  sub_242712874(v22);
  (*(v3 + 8))(v6, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  (*(v11 + 32))(&v26[*(*v26 + 112)], v14, v30);
  (*(v32 + 32))(&v26[*(*v26 + 120)], v10, v33);
  *(a2 + OBJC_IVAR____TtC15CTLazuliSupport20HTTPGBAAuthenticator_requestQueue) = v26;
  return a2;
}

uint64_t sub_242730D54(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2426F07F0;

  return v8(a1);
}

unint64_t sub_242730E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECBB870, &qword_242739E30);
    v3 = sub_2427329B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_242704184(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_242730F50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB778, &qword_242739CB8);
    v3 = sub_2427329B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_242704184(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_242731064(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2426F1158;

  return sub_24270B730(a1);
}

uint64_t sub_24273110C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242731144(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2426F1158;

  return sub_242730D54(a1, a2, v7);
}

uint64_t sub_242731220(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB7D0, &qword_242739D28) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2426F1158;

  return sub_242725CBC(a1, v6, v7, v1 + v5);
}

uint64_t sub_2427313A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB780, &qword_242739CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242731458(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_242731C88;

  return sub_24272D088(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_242731544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24273158C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2427315D4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  sub_2426FBA18(v0[13], v0[14]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  v6 = v0[22];

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_242731644(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2426F07F0;

  return sub_24272898C(a1, a2, v7);
}

uint64_t objectdestroy_32Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2427317F8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECBB810, &qword_242739D90) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2426F1158;

  return sub_242725294(a1, v6, v7, v1 + v5);
}

uint64_t sub_242731924(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2426FDC84;

  return sub_242728000(a1);
}

uint64_t sub_2427319BC()
{
  v1 = sub_242731F34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242731A80(uint64_t a1)
{
  v4 = *(sub_242731F34() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2426FF528;

  return sub_242727878(a1, v6, v1 + v5);
}

uint64_t sub_242731B60()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242731BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2426FF528;

  return sub_2427270D8(a1, v4, v5, v6, v7, v8);
}