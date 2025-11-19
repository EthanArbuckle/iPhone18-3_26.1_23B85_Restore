uint64_t sub_25C47FCC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A558, &unk_25C4CA3D8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_25C4C7EA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_25C4666F8(a1, &unk_27FC0A558, &unk_25C4CA3D8);
    sub_25C480AE4(a2, a3, v10);

    return sub_25C4666F8(v10, &unk_27FC0A558, &unk_25C4CA3D8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_25C4811C0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_25C47FEA0(uint64_t a1)
{
  v38 = a1;
  v37 = sub_25C4C7D90();
  v33 = *(v37 - 8);
  v1 = *(v33 + 64);
  MEMORY[0x28223BE20](v37);
  v32[1] = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25C4C7D60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C4C80B0();
  v35 = v8;
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  empty = xpc_dictionary_create_empty();
  v13 = *MEMORY[0x277D35858];
  v39 = v9[13];
  v39(v12, v13, v8);
  sub_25C4C80A0();
  v36 = v9[1];
  v36(v12, v8);
  (*(v4 + 104))(v7, *MEMORY[0x277D35700], v3);
  sub_25C4C7D50();
  (*(v4 + 8))(v7, v3);
  v14 = empty;
  v15 = sub_25C4C8570();

  v16 = sub_25C4C8570();

  xpc_dictionary_set_string(v14, (v15 + 32), (v16 + 32));

  v17 = *MEMORY[0x277D358C8];
  v18 = v35;
  v32[0] = v9 + 13;
  v39(v12, v17, v35);
  v19 = v18;
  v20 = v36;
  sub_25C4C80A0();
  v20(v12, v18);
  v21 = *(v40 + 24);
  v22 = sub_25C4C8570();

  xpc_dictionary_set_uint64(v14, (v22 + 32), v21);

  v23 = sub_25C4C7A40();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_25C4C7A30();
  sub_25C481670(&qword_27FC0A578, MEMORY[0x277D35770]);
  v26 = sub_25C4C7A20();
  v28 = v27;

  v39(v12, *MEMORY[0x277D358E0], v19);
  sub_25C4C80A0();
  v20(v12, v19);
  v29 = sub_25C4C7AC0();
  v30 = sub_25C4C8570();

  xpc_dictionary_set_value(v14, (v30 + 32), v29);
  swift_unknownObjectRelease();

  xpc_connection_send_message(*(v40 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__xpcConnection), v14);
  sub_25C45A004(v26, v28);
  return swift_unknownObjectRelease();
}

size_t sub_25C480568(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A590, &qword_25C4CA400);
  v10 = *(sub_25C4C7F60() - 8);
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
  v15 = *(sub_25C4C7F60() - 8);
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

uint64_t sub_25C480740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A538, &qword_25C4CA330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C4807B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A538, &qword_25C4CA330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NXDiscoveryDaemon()
{
  result = qword_27FC0B5B8;
  if (!qword_27FC0B5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C480874()
{
  result = sub_25C4C7F70();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25C480960()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C480998(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (Strong == *(v7 + 16))
      {
        sub_25C47BC24(a2);
      }
    }
  }

  return result;
}

uint64_t sub_25C480A40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (Strong == *(v6 + 16))
      {
        sub_25C47D9BC(a1);
      }
    }
  }

  return result;
}

uint64_t sub_25C480AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_25C462EC0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25C4813F0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_25C4C7EA0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_25C480FD4(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_25C4C7EA0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_25C480C54(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_25C4C7EA0();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A588, &qword_25C4CA3F8);
  v46 = a2;
  result = sub_25C4C8970();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_25C480FD4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C4C8810() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25C4C8A60();

      sub_25C4C8580();
      v13 = sub_25C4C8A90();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_25C4C7EA0() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25C4811C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_25C462EC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_25C4813F0();
      goto LABEL_7;
    }

    sub_25C480C54(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_25C462EC0(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_25C4C7EA0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_25C481340(v12, a2, a3, a1, v18);
}

uint64_t sub_25C481340(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_25C4C7EA0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_25C4813F0()
{
  v1 = v0;
  v36 = sub_25C4C7EA0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A588, &qword_25C4CA3F8);
  v4 = *v0;
  v5 = sub_25C4C8960();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
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

uint64_t sub_25C481670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C4816B8()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C481720(uint64_t *a1, void (*a2)(void *))
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber;
      swift_beginAccess();
      v15 = *(v11 + v14);
      if (v15)
      {
        if (v13 == v15)
        {
          v16[0] = v6;
          v16[1] = v7;
          v16[2] = v8;
          v16[3] = v9;
          a2(v16);
        }
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_25C481810()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = (v4 + OBJC_IVAR____TtC11NexusDaemon17NXDiscoveryDaemon__nanSubscriber);
      swift_beginAccess();
      if (!*v7 || v6 != *v7)
      {

        return swift_unknownObjectRelease();
      }

      *v7 = 0;
      v7[1] = 0;
      swift_unknownObjectRelease();
      sub_25C47EF4C();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_25C4818FC()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B5D8);
  __swift_project_value_buffer(v0, qword_27FC0B5D8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXDaemon.entitlementChecksDisabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t NXDaemon.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v4 = sub_25C4C7B30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25C481AA8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C49057C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4);
}

uint64_t sub_25C481B48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C49055C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_25C45A2B8(v3);
  return sub_25C45A2C8(v8);
}

uint64_t NXDaemon.localOnly.getter()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_localOnly;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NXDaemon.localOnly.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_localOnly;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t NXDaemon.__allocating_init(dispatchQueue:environment:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  NXDaemon.init(dispatchQueue:environment:)(a1, a2);
  return v7;
}

uint64_t NXDaemon.init(dispatchQueue:environment:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__invalidateCalled) = 0;
  v5 = (v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_localOnly) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_diagnosticsManager) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher) = 0;
  v6 = (v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefsDomain);
  *v6 = sub_25C4C7C70();
  v6[1] = v7;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__startTicks) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__updatePending) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener) = 0;
  v8 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions) = MEMORY[0x277D84F98];
  v9 = (v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators) = v8;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefNetworkServerEnabled) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefNetworkServerEnabledOverride) = 2;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations) = v8;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap) = v8;
  v10 = (v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcEndpoint) = 0;
  *(v2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener) = 0;
  *(v2 + 16) = a1;
  v11 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v12 = sub_25C4C7B30();
  (*(*(v12 - 8) + 32))(v2 + v11, a2, v12);
  return v2;
}

uint64_t NXDaemon.description.getter()
{
  v1 = v0;
  v296 = sub_25C4C7C50();
  v283 = *(v296 - 8);
  v2 = *(v283 + 64);
  MEMORY[0x28223BE20](v296);
  v282 = &v279 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5A0, &qword_25C4CA410);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v279 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v279 - v9;
  v303 = sub_25C4C8050();
  v286 = *(v303 - 8);
  v11 = *(v286 + 64);
  v12 = MEMORY[0x28223BE20](v303);
  v288 = &v279 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v284 = &v279 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5A8, &qword_25C4CA418);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v293 = &v279 - v20;
  v304 = sub_25C4C8090();
  v291 = *(v304 - 8);
  v21 = *(v291 + 64);
  v22 = MEMORY[0x28223BE20](v304);
  v301 = &v279 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v287 = &v279 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5B0, &qword_25C4CA420);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v290 = &v279 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v300 = &v279 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5B8, &qword_25C4CA428);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v279 - v32;
  v34 = sub_25C4C89B0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v279 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (mach_absolute_time() < *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__startTicks))
  {
    goto LABEL_174;
  }

  v299 = v19;
  v297 = v10;
  v292 = v8;
  v39 = UpTicksToSeconds();
  v311[0] = 0;
  v311[1] = 0xE000000000000000;
  sub_25C4C88F0();
  MEMORY[0x25F887A50](0xD000000000000012, 0x800000025C4D0B30);
  *&v306 = v39;
  (*(v35 + 104))(v38, *MEMORY[0x277D02A60], v34);
  sub_25C484038();
  sub_25C4C89D0();
  (*(v35 + 8))(v38, v34);
  v309 = v311[0];
  v310 = v311[1];
  MEMORY[0x25F887A50](10, 0xE100000000000000);
  v40 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
  swift_beginAccess();
  v41 = *(v1 + v40);
  v42 = *(v41 + 16);
  v43 = v1;
  v280 = v1;
  if (v42)
  {
    v44 = v41 + 32;

    do
    {
      sub_25C48BE38(v44, v311);
      v45 = v313;
      __swift_project_boxed_opaque_existential_1(v311, v312);
      v46 = *(v45 + 8);
      v47 = sub_25C4C89A0();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_0(v311);
      v50 = HIBYTE(v49) & 0xF;
      if ((v49 & 0x2000000000000000) == 0)
      {
        v50 = v47 & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {
        *&v306 = 10;
        *(&v306 + 1) = 0xE100000000000000;
        MEMORY[0x25F887A50](v47, v49);

        MEMORY[0x25F887A50](v306, *(&v306 + 1));
      }

      v44 += 40;
      --v42;
    }

    while (v42);

    v43 = v280;
  }

  if (*(v43 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
  {
    v294 = v33;
    v295 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener;
    v51 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions;
    swift_beginAccess();
    v52 = *(v43 + v51);
    v55 = *(v52 + 64);
    v54 = v52 + 64;
    v53 = v55;
    v56 = 1 << *(*(v43 + v51) + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & v53;
    v59 = (v56 + 63) >> 6;
    v298 = *(v43 + v51);

    v60 = 0;
    for (i = MEMORY[0x277D84F90]; v58; v43 = v280)
    {
      v62 = i;
LABEL_20:
      v65 = *(*(v298 + 56) + ((v60 << 9) | (8 * __clz(__rbit64(v58)))));
      v66 = [v65 description];
      v67 = sub_25C4C8550();
      v69 = v68;

      v311[0] = v67;
      v311[1] = v69;
      MEMORY[0x25F887A50](10, 0xE100000000000000);
      v70 = v311[1];
      v302 = v311[0];
      v71 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_25C458868(0, *(v62 + 2) + 1, 1, v62);
      }

      v73 = *(v71 + 2);
      v72 = *(v71 + 3);
      i = v71;
      if (v73 >= v72 >> 1)
      {
        i = sub_25C458868((v72 > 1), v73 + 1, 1, v71);
      }

      v58 &= v58 - 1;

      *(i + 2) = v73 + 1;
      v74 = &i[16 * v73];
      *(v74 + 4) = v302;
      *(v74 + 5) = v70;
    }

    v63 = v299;
    while (1)
    {
      v64 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_172;
      }

      if (v64 >= v59)
      {
        break;
      }

      v58 = *(v54 + 8 * v64);
      ++v60;
      if (v58)
      {
        v62 = i;
        v60 = v64;
        goto LABEL_20;
      }
    }

    v75 = i;

    if (*(v43 + v295))
    {
      v76 = *(v43 + v295);

      v77 = v294;
      sub_25C4C81A0();

      v78 = sub_25C4C8160();
      v79 = *(v78 - 8);
      if ((*(v79 + 48))(v77, 1, v78) != 1)
      {
        v81 = sub_25C4C8150();
        v80 = v82;
        (*(v79 + 8))(v77, v78);
        goto LABEL_32;
      }

      sub_25C4666F8(v77, &qword_27FC0A5B8, &qword_25C4CA428);
    }

    v80 = 0xE100000000000000;
    v81 = 63;
LABEL_32:
    v311[0] = 0;
    v311[1] = 0xE000000000000000;
    sub_25C4C88F0();

    v311[0] = 0xD000000000000019;
    v311[1] = 0x800000025C4D0BB0;
    MEMORY[0x25F887A50](v81, v80);

    MEMORY[0x25F887A50](0x6F6973736573202CLL, 0xEB000000003D736ELL);
    *&v306 = *(v75 + 2);
    v83 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v83);

    MEMORY[0x25F887A50](171785504, 0xE400000000000000);
    MEMORY[0x25F887A50](v311[0], v311[1]);

    v311[0] = v75;

    sub_25C4623E8(v311);
    v279 = 0;

    v84 = *(v311[0] + 2);
    if (v84)
    {
      v85 = v311[0] + 40;
      do
      {
        v86 = *(v85 - 1);
        v87 = *v85;

        MEMORY[0x25F887A50](v86, v87);

        v85 += 16;
        --v84;
      }

      while (v84);
    }

    v43 = v280;
    goto LABEL_36;
  }

  v279 = 0;
  v63 = v299;
LABEL_36:
  v88 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
  swift_beginAccess();
  v89 = v300;
  if (*(*(v43 + v88) + 16))
  {
    v311[0] = 0;
    v311[1] = 0xE000000000000000;
    sub_25C4C88F0();

    v311[0] = 0xD000000000000017;
    v311[1] = 0x800000025C4D0B50;
    *&v306 = *(*(v43 + v88) + 16);
    v90 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v90);

    MEMORY[0x25F887A50](171785504, 0xE400000000000000);
    MEMORY[0x25F887A50](v311[0], v311[1]);

    v91 = *(v43 + v88);
    v92 = *(v91 + 64);
    v295 = v91 + 64;
    v93 = 1 << *(v91 + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v95 = v94 & v92;
    v281 = (v93 + 63) >> 6;
    v285 = v291 + 16;
    v298 = v291 + 32;
    v294 = (v291 + 8);
    v289 = v91;

    v96 = 0;
    v97 = MEMORY[0x277D84F90];
    v98 = v290;
    while (1)
    {
      v302 = v97;
      if (!v95)
      {
        if (v281 <= v96 + 1)
        {
          v100 = v96 + 1;
        }

        else
        {
          v100 = v281;
        }

        v101 = v100 - 1;
        while (1)
        {
          v99 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            break;
          }

          if (v99 >= v281)
          {
            v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5C8, &qword_25C4CA430);
            (*(*(v124 - 8) + 56))(v98, 1, 1, v124);
            v95 = 0;
            v96 = v101;
            goto LABEL_51;
          }

          v95 = *(v295 + 8 * v99);
          ++v96;
          if (v95)
          {
            v96 = v99;
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v99 = v96;
LABEL_50:
      v102 = __clz(__rbit64(v95));
      v95 &= v95 - 1;
      v103 = v102 | (v99 << 6);
      v104 = (*(v289 + 48) + 16 * v103);
      v106 = *v104;
      v105 = v104[1];
      v107 = v291;
      v108 = v287;
      v109 = v304;
      (*(v291 + 16))(v287, *(v289 + 56) + *(v291 + 72) * v103, v304);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5C8, &qword_25C4CA430);
      v111 = *(v110 + 48);
      v112 = v290;
      *v290 = v106;
      *(v112 + 1) = v105;
      v113 = v108;
      v98 = v112;
      (*(v107 + 32))(&v112[v111], v113, v109);
      (*(*(v110 - 8) + 56))(v98, 0, 1, v110);

      v89 = v300;
LABEL_51:
      sub_25C465DA4(v98, v89, &qword_27FC0A5B0, &qword_25C4CA420);
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5C8, &qword_25C4CA430);
      if ((*(*(v114 - 8) + 48))(v89, 1, v114) == 1)
      {
        break;
      }

      v115 = *v89;
      v116 = *(v89 + 1);
      (*v298)(v301, &v89[*(v114 + 48)], v304);
      v311[0] = 0;
      v311[1] = 0xE000000000000000;
      sub_25C4C88F0();

      v311[0] = 0x3D656D616ELL;
      v311[1] = 0xE500000000000000;
      MEMORY[0x25F887A50](v115, v116);

      MEMORY[0x25F887A50](0x746E65696C63202CLL, 0xE90000000000003DLL);
      v117 = sub_25C4C8060();
      MEMORY[0x25F887A50](v117);

      MEMORY[0x25F887A50](10, 0xE100000000000000);
      v118 = v311[0];
      v119 = v311[1];
      v120 = v302;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = sub_25C458868(0, *(v120 + 2) + 1, 1, v120);
      }

      v122 = *(v120 + 2);
      v121 = *(v120 + 3);
      v97 = v120;
      if (v122 >= v121 >> 1)
      {
        v97 = sub_25C458868((v121 > 1), v122 + 1, 1, v120);
      }

      (*v294)(v301, v304);
      *(v97 + 2) = v122 + 1;
      v123 = &v97[16 * v122];
      *(v123 + 4) = v118;
      *(v123 + 5) = v119;
      v89 = v300;
    }

    v311[0] = v302;

    v125 = v279;
    sub_25C4623E8(v311);
    v279 = v125;
    if (v125)
    {
      goto LABEL_175;
    }

    v126 = *(v311[0] + 2);
    v63 = v299;
    if (v126)
    {
      v127 = v311[0] + 40;
      do
      {
        v128 = *(v127 - 1);
        v129 = *v127;

        MEMORY[0x25F887A50](v128, v129);

        v127 += 16;
        --v126;
      }

      while (v126);
    }

    v43 = v280;
  }

  v130 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations;
  swift_beginAccess();
  v131 = *(v43 + v130);
  v132 = v288;
  if (*(v131 + 16))
  {
    v133 = *(v131 + 64);
    v301 = (v131 + 64);
    v134 = 1 << *(v131 + 32);
    v135 = -1;
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    v136 = v135 & v133;
    v294 = ((v134 + 63) >> 6);
    v295 = v286 + 16;
    v302 = (v286 + 32);
    v300 = (v286 + 8);
    v298 = v131;

    v137 = 0;
    v138 = MEMORY[0x277D84F90];
    while (1)
    {
      v304 = v138;
      if (!v136)
      {
        if (v294 <= v137 + 1)
        {
          v140 = (v137 + 1);
        }

        else
        {
          v140 = v294;
        }

        v141 = v140 - 1;
        while (1)
        {
          v139 = v137 + 1;
          if (__OFADD__(v137, 1))
          {
            goto LABEL_170;
          }

          if (v139 >= v294)
          {
            v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D0, &qword_25C4CA438);
            (*(*(v163 - 8) + 56))(v63, 1, 1, v163);
            v136 = 0;
            v137 = v141;
            goto LABEL_78;
          }

          v136 = *&v301[8 * v139];
          ++v137;
          if (v136)
          {
            v137 = v139;
            goto LABEL_77;
          }
        }
      }

      v139 = v137;
LABEL_77:
      v142 = __clz(__rbit64(v136));
      v136 &= v136 - 1;
      v143 = v142 | (v139 << 6);
      v144 = (*(v298 + 48) + 16 * v143);
      v146 = *v144;
      v145 = v144[1];
      v147 = v286;
      v148 = v284;
      v149 = v303;
      (*(v286 + 16))(v284, *(v298 + 56) + *(v286 + 72) * v143, v303);
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D0, &qword_25C4CA438);
      v151 = *(v150 + 48);
      v152 = v299;
      *v299 = v146;
      *(v152 + 1) = v145;
      v63 = v152;
      (*(v147 + 32))(&v152[v151], v148, v149);
      (*(*(v150 - 8) + 56))(v63, 0, 1, v150);

      v132 = v288;
LABEL_78:
      v153 = v293;
      sub_25C465DA4(v63, v293, &qword_27FC0A5A8, &qword_25C4CA418);
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D0, &qword_25C4CA438);
      if ((*(*(v154 - 8) + 48))(v153, 1, v154) == 1)
      {
        break;
      }

      v155 = *v153;
      v156 = *(v153 + 1);
      (*v302)(v132, &v153[*(v154 + 48)], v303);
      v311[0] = 0;
      v311[1] = 0xE000000000000000;
      sub_25C4C88F0();

      v311[0] = 0x3D656D616ELL;
      v311[1] = 0xE500000000000000;
      MEMORY[0x25F887A50](v155, v156);

      MEMORY[0x25F887A50](0x746E65696C63202CLL, 0xE90000000000003DLL);
      v157 = sub_25C4C8020();
      MEMORY[0x25F887A50](v157);

      MEMORY[0x25F887A50](10, 0xE100000000000000);
      v158 = v311[0];
      v159 = v311[1];
      v138 = v304;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_25C458868(0, *(v138 + 2) + 1, 1, v138);
      }

      v161 = *(v138 + 2);
      v160 = *(v138 + 3);
      if (v161 >= v160 >> 1)
      {
        v138 = sub_25C458868((v160 > 1), v161 + 1, 1, v138);
      }

      (*v300)(v132, v303);
      *(v138 + 2) = v161 + 1;
      v162 = &v138[16 * v161];
      *(v162 + 4) = v158;
      *(v162 + 5) = v159;
      v63 = v299;
    }

    v311[0] = 0;
    v311[1] = 0xE000000000000000;
    sub_25C4C88F0();

    v311[0] = 0xD00000000000001BLL;
    v311[1] = 0x800000025C4D0B70;
    v164 = v304;
    *&v306 = *(v304 + 16);
    v165 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v165);

    MEMORY[0x25F887A50](171785504, 0xE400000000000000);
    MEMORY[0x25F887A50](v311[0], v311[1]);

    v311[0] = v164;

    v166 = v279;
    sub_25C4623E8(v311);
    v279 = v166;
    if (v166)
    {
      goto LABEL_175;
    }

    v167 = *(v311[0] + 2);
    if (v167)
    {
      v168 = v311[0] + 40;
      do
      {
        v169 = *(v168 - 1);
        v170 = *v168;

        MEMORY[0x25F887A50](v169, v170);

        v168 += 16;
        --v167;
      }

      while (v167);
    }

    v43 = v280;
  }

  v171 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap;
  swift_beginAccess();
  v172 = *(v43 + v171);
  v173 = v297;
  if (*(v172 + 2))
  {
    v174 = v172 + 64;
    v175 = 1 << v172[32];
    v176 = -1;
    if (v175 < 64)
    {
      v176 = ~(-1 << v175);
    }

    v177 = v176 & *(v172 + 8);
    v300 = (v283 + 16);
    v301 = v172;
    v298 = (v175 + 63) >> 6;
    v299 = (v283 + 32);
    v302 = (v283 + 8);

    v178 = 0;
    v179 = MEMORY[0x277D84F90];
    v303 = v174;
    if (v177)
    {
      while (1)
      {
        v304 = v179;
        v180 = v178;
LABEL_103:
        v183 = __clz(__rbit64(v177));
        v177 &= v177 - 1;
        v184 = v183 | (v180 << 6);
        v185 = v301;
        v186 = v282;
        v187 = v283;
        v188 = v296;
        (*(v283 + 16))(v282, *(v301 + 6) + *(v283 + 72) * v184, v296);
        v189 = *(*(v185 + 7) + 8 * v184);
        v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D8, &unk_25C4CA440);
        v191 = *(v190 + 48);
        v192 = *(v187 + 32);
        v193 = v292;
        v192(v292, v186, v188);
        *(v193 + v191) = v189;
        (*(*(v190 - 8) + 56))(v193, 0, 1, v190);
        v194 = v189;
        v173 = v297;
        v179 = v304;
LABEL_104:
        sub_25C465DA4(v193, v173, &qword_27FC0A5A0, &qword_25C4CA410);
        v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D8, &unk_25C4CA440);
        if ((*(*(v195 - 8) + 48))(v173, 1, v195) == 1)
        {
          break;
        }

        v196 = *(v173 + *(v195 + 48));
        v197 = [v196 description];
        v198 = sub_25C4C8550();
        v200 = v199;

        v311[0] = v198;
        v311[1] = v200;
        MEMORY[0x25F887A50](10, 0xE100000000000000);
        v201 = v311[0];
        v202 = v311[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v179 = sub_25C458868(0, *(v179 + 2) + 1, 1, v179);
        }

        v204 = *(v179 + 2);
        v203 = *(v179 + 3);
        if (v204 >= v203 >> 1)
        {
          v179 = sub_25C458868((v203 > 1), v204 + 1, 1, v179);
        }

        *(v179 + 2) = v204 + 1;
        v205 = &v179[16 * v204];
        *(v205 + 4) = v201;
        *(v205 + 5) = v202;
        v173 = v297;
        (*v302)(v297, v296);
        v174 = v303;
        if (!v177)
        {
          goto LABEL_95;
        }
      }

      v311[0] = 0;
      v311[1] = 0xE000000000000000;
      sub_25C4C88F0();

      strcpy(v311, "\n== Sessions: ");
      HIBYTE(v311[1]) = -18;
      *&v306 = *(v179 + 2);
      v207 = sub_25C4C89A0();
      MEMORY[0x25F887A50](v207);

      MEMORY[0x25F887A50](171785504, 0xE400000000000000);
      MEMORY[0x25F887A50](v311[0], v311[1]);

      v311[0] = v179;

      v208 = v279;
      sub_25C4623E8(v311);
      v279 = v208;
      if (!v208)
      {

        v209 = *(v311[0] + 2);
        if (v209)
        {
          v210 = v311[0] + 40;
          do
          {
            v211 = *(v210 - 1);
            v212 = *v210;

            MEMORY[0x25F887A50](v211, v212);

            v210 += 16;
            --v209;
          }

          while (v209);
        }

        v43 = v280;
        goto LABEL_117;
      }

LABEL_175:

      __break(1u);
LABEL_176:
      v278 = v279;
      goto LABEL_178;
    }

LABEL_95:
    if (v298 <= v178 + 1)
    {
      v181 = v178 + 1;
    }

    else
    {
      v181 = v298;
    }

    v182 = v181 - 1;
    while (1)
    {
      v180 = v178 + 1;
      if (__OFADD__(v178, 1))
      {
        break;
      }

      if (v180 >= v298)
      {
        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5D8, &unk_25C4CA440);
        v193 = v292;
        (*(*(v206 - 8) + 56))(v292, 1, 1, v206);
        v177 = 0;
        v178 = v182;
        goto LABEL_104;
      }

      v177 = v174[v180];
      ++v178;
      if (v177)
      {
        v304 = v179;
        v178 = v180;
        goto LABEL_103;
      }
    }

LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

LABEL_117:
  v213 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
  swift_beginAccess();
  v214 = *(v43 + v213);
  if ((v214 & 0xC000000000000001) != 0)
  {
    if (v214 < 0)
    {
      v215 = *(v43 + v213);
    }

    v216 = *(v43 + v213);

    v217 = sub_25C4C8840();

    if (!v217)
    {
      goto LABEL_151;
    }

LABEL_123:
    v218 = *(v43 + v213);
    if ((v218 & 0xC000000000000001) != 0)
    {
      if (v218 < 0)
      {
        v219 = *(v43 + v213);
      }

      v220 = *(v43 + v213);

      sub_25C4C8830();
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
      sub_25C4C8640();
      v218 = v311[0];
      v221 = v311[1];
      v222 = v311[2];
      v223 = v312;
      v224 = v313;
    }

    else
    {
      v225 = -1 << *(v218 + 32);
      v221 = (v218 + 56);
      v222 = ~v225;
      v226 = -v225;
      if (v226 < 64)
      {
        v227 = ~(-1 << v226);
      }

      else
      {
        v227 = -1;
      }

      v224 = v227 & *(v218 + 56);
      v228 = *(v43 + v213);

      v223 = 0;
    }

    v302 = v222;
    v229 = (v222 + 64) >> 6;
    v230 = MEMORY[0x277D84F90];
    v303 = v218;
    if (v218 < 0)
    {
      goto LABEL_138;
    }

    while (1)
    {
      v231 = v223;
      v232 = v224;
      for (j = v223; !v232; ++v231)
      {
        j = v231 + 1;
        if (__OFADD__(v231, 1))
        {
          goto LABEL_173;
        }

        if (j >= v229)
        {
          goto LABEL_146;
        }

        v232 = *&v221[8 * j];
      }

      v234 = (v232 - 1) & v232;
      v235 = *(*(v218 + 48) + ((j << 9) | (8 * __clz(__rbit64(v232)))));

      if (!v235)
      {
        break;
      }

      while (1)
      {
        v304 = v234;
        *&v305 = v235;
        type metadata accessor for NXXPCConnection();
        sub_25C490490(&unk_27FC0A5F8, type metadata accessor for NXXPCConnection);
        *&v306 = sub_25C4C89A0();
        *(&v306 + 1) = v237;
        MEMORY[0x25F887A50](10, 0xE100000000000000);
        v238 = v306;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v230 = sub_25C458868(0, *(v230 + 2) + 1, 1, v230);
        }

        v240 = *(v230 + 2);
        v239 = *(v230 + 3);
        if (v240 >= v239 >> 1)
        {
          v230 = sub_25C458868((v239 > 1), v240 + 1, 1, v230);
        }

        *(v230 + 2) = v240 + 1;
        *&v230[16 * v240 + 32] = v238;
        v223 = j;
        v218 = v303;
        v224 = v304;
        if ((v303 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_138:
        v236 = sub_25C4C8860();
        if (v236)
        {
          *&v305 = v236;
          type metadata accessor for NXXPCConnection();
          swift_dynamicCast();
          v235 = v306;
          j = v223;
          v234 = v224;
          if (v306)
          {
            continue;
          }
        }

        goto LABEL_146;
      }
    }

LABEL_146:
    sub_25C48B0D8();
    *&v306 = 0;
    *(&v306 + 1) = 0xE000000000000000;
    sub_25C4C88F0();

    *&v306 = 0xD000000000000015;
    *(&v306 + 1) = 0x800000025C4D0B90;
    *&v305 = *(v230 + 2);
    v241 = sub_25C4C89A0();
    MEMORY[0x25F887A50](v241);

    MEMORY[0x25F887A50](171785504, 0xE400000000000000);
    MEMORY[0x25F887A50](v306, *(&v306 + 1));

    *&v306 = v230;

    v242 = v279;
    sub_25C4623E8(&v306);
    v279 = v242;
    if (v242)
    {
      goto LABEL_176;
    }

    v243 = *(v306 + 16);
    if (v243)
    {
      v244 = (v306 + 40);
      do
      {
        v245 = *(v244 - 1);
        v246 = *v244;

        MEMORY[0x25F887A50](v245, v246);

        v244 += 2;
        --v243;
      }

      while (v243);
    }

    v43 = v280;
    goto LABEL_151;
  }

  if (*(v214 + 16))
  {
    goto LABEL_123;
  }

LABEL_151:
  sub_25C48B0E0();
  v247 = (v43 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefsDomain);
  swift_beginAccess();
  v248 = *v247;
  v249 = v247[1];

  v250 = sub_25C4C8730();

  v251 = *(v250 + 16);
  if (!v251)
  {
    goto LABEL_167;
  }

  v302 = v250;
  v252 = *v247;
  v253 = v247[1];
  v254 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v255 = sub_25C4C8540();

  v256 = [v254 initWithSuiteName_];

  v303 = v256;
  if (!v256)
  {
LABEL_167:

    return v309;
  }

  v257 = (v302 + 40);
  v258 = MEMORY[0x277D84F90];
  v259 = MEMORY[0x277D837D0];
  do
  {
    v304 = v258;
    v260 = *(v257 - 1);
    v261 = *v257;
    *&v308 = 0;
    *(&v308 + 1) = 0xE000000000000000;

    v262 = sub_25C4C8540();
    v263 = [v303 valueForKey_];

    if (v263)
    {
      sub_25C4C87E0();
      swift_unknownObjectRelease();
      sub_25C48B180(&v305, &v306);
    }

    else
    {
      v307 = v259;
      *&v306 = 63;
      *(&v306 + 1) = 0xE100000000000000;
    }

    sub_25C4C8920();
    __swift_destroy_boxed_opaque_existential_0(&v306);
    v306 = v308;
    *&v305 = 10;
    *(&v305 + 1) = 0xE100000000000000;
    *&v308 = 9342946;
    *(&v308 + 1) = 0xA300000000000000;
    sub_25C48B12C();
    v264 = v259;
    v265 = sub_25C4C87D0();
    v267 = v266;

    *&v306 = v260;
    *(&v306 + 1) = v261;
    MEMORY[0x25F887A50](8250, 0xE200000000000000);
    MEMORY[0x25F887A50](v265, v267);

    MEMORY[0x25F887A50](10, 0xE100000000000000);
    v268 = v306;
    v258 = v304;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v258 = sub_25C458868(0, *(v258 + 2) + 1, 1, v258);
    }

    v270 = *(v258 + 2);
    v269 = *(v258 + 3);
    if (v270 >= v269 >> 1)
    {
      v258 = sub_25C458868((v269 > 1), v270 + 1, 1, v258);
    }

    *(v258 + 2) = v270 + 1;
    *&v258[16 * v270 + 32] = v268;
    v257 += 2;
    --v251;
    v259 = v264;
  }

  while (v251);

  *&v306 = 0;
  *(&v306 + 1) = 0xE000000000000000;
  sub_25C4C88F0();

  *&v306 = 0x66657250203D3D0ALL;
  *(&v306 + 1) = 0xEB00000000203A73;
  *&v305 = *(v258 + 2);
  v271 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v271);

  MEMORY[0x25F887A50](171785504, 0xE400000000000000);
  MEMORY[0x25F887A50](v306, *(&v306 + 1));

  *&v306 = v258;

  v272 = v279;
  sub_25C4623E8(&v306);
  if (!v272)
  {

    v273 = *(v306 + 16);
    if (v273)
    {
      v274 = (v306 + 40);
      do
      {
        v275 = *(v274 - 1);
        v276 = *v274;

        MEMORY[0x25F887A50](v275, v276);

        v274 += 2;
        --v273;
      }

      while (v273);
    }

    return v309;
  }

  v278 = v272;
LABEL_178:

  __break(1u);
  return result;
}

unint64_t sub_25C484038()
{
  result = qword_27FC0A5C0;
  if (!qword_27FC0A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A5C0);
  }

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

void sub_25C4840F0()
{
  v1 = v0;
  v2 = sub_25C4C8100();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefsDomain);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v11 = sub_25C4C8540();

  v12 = [v10 initWithSuiteName_];

  v13 = *MEMORY[0x277D358F0];
  v59 = v3[13];
  v59(v6, v13, v2);
  v14 = sub_25C4C80F0();
  v16 = v15;
  v58 = v3[1];
  v58(v6, v2);
  v57 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefNetworkServerEnabled;
  v60 = *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefNetworkServerEnabled);
  v17 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefNetworkServerEnabledOverride;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v61 = v12;
  if (v18 != 2 || v12 && (v19 = v12, LOBYTE(v18) = sub_25C4C8740(), v19, v12 = v61, v18 != 2))
  {
    if (v60 != (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_11:

    v31 = v58;
    v59(v6, *MEMORY[0x277D358E8], v2);
    goto LABEL_14;
  }

  if ((v60 & 1) == 0)
  {
    goto LABEL_11;
  }

  LOBYTE(v18) = 0;
LABEL_7:
  v55 = v14;
  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v20 = sub_25C4C7BD0();
  __swift_project_value_buffer(v20, qword_27FC0B5D8);

  v21 = sub_25C4C7BB0();
  v22 = sub_25C4C8720();

  v56 = v21;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v54 = v2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v62[0] = v25;
    *v24 = 136315650;
    v26 = sub_25C458990(v55, v16, v62);

    *(v24 + 4) = v26;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v60;
    *(v24 + 18) = 1024;
    *(v24 + 20) = v18 & 1;
    v27 = v22;
    v28 = v56;
    _os_log_impl(&dword_25C452000, v56, v27, "Pref changed: key=%s, value=%{BOOL}d -> %{BOOL}d", v24, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v29 = v25;
    v12 = v61;
    MEMORY[0x25F888630](v29, -1, -1);
    v30 = v24;
    v2 = v54;
    MEMORY[0x25F888630](v30, -1, -1);
  }

  else
  {
  }

  v31 = v58;
  v32 = v59;
  *(v1 + v57) = v18 & 1;
  v32(v6, *MEMORY[0x277D358E8], v2);
LABEL_14:
  v33 = sub_25C4C80F0();
  v35 = v34;
  v31(v6, v2);
  v36 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired;
  swift_beginAccess();
  v37 = *(v1 + v36);
  if (v12)
  {
    v38 = v12;
    v39 = sub_25C4C8740();

    if (v37 == (v39 & 1))
    {
      goto LABEL_23;
    }
  }

  else
  {
    if ((v37 & 1) == 0)
    {
LABEL_23:

      goto LABEL_26;
    }

    v39 = 0;
  }

  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v40 = sub_25C4C7BD0();
  __swift_project_value_buffer(v40, qword_27FC0B5D8);

  v41 = sub_25C4C7BB0();
  v42 = sub_25C4C8720();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62[0] = v44;
    *v43 = 136315650;
    v45 = sub_25C458990(v33, v35, v62);

    *(v43 + 4) = v45;
    *(v43 + 12) = 1024;
    *(v43 + 14) = v37;
    *(v43 + 18) = 1024;
    *(v43 + 20) = v39 & 1;
    _os_log_impl(&dword_25C452000, v41, v42, "Pref changed: key=%s, value=%{BOOL}d -> %{BOOL}d", v43, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v46 = v44;
    v12 = v61;
    MEMORY[0x25F888630](v46, -1, -1);
    MEMORY[0x25F888630](v43, -1, -1);
  }

  else
  {
  }

  *(v1 + v36) = v39 & 1;
LABEL_26:
  v47 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
  swift_beginAccess();
  v48 = *(v1 + v47);
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v48 + 32;
    v51 = *(v1 + v47);

    do
    {
      sub_25C48BE38(v50, v62);
      v52 = v63;
      v53 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v53 + 32))(v52, v53);
      __swift_destroy_boxed_opaque_existential_0(v62);
      v50 += 40;
      --v49;
    }

    while (v49);

    v12 = v61;
  }

  sub_25C484738();
}

uint64_t sub_25C484738()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__updatePending) = 0;
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefNetworkServerEnabled) & 1) != 0 || (sub_25C4855C0())
  {
    sub_25C485838();
  }

  else
  {
    sub_25C484E24();
  }

  v2 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler;
  if (!*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler))
  {
    v3 = *(v0 + 16);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = objc_allocWithZone(MEMORY[0x277D028D0]);

    v6 = sub_25C4C8540();
    v39 = sub_25C4903FC;
    v40 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_25C48AF1C;
    v38 = &block_descriptor_138;
    v7 = _Block_copy(&aBlock);
    v8 = [v5 initWithTitle:v6 dispatchQueue:v3 handler:v7];

    _Block_release(v7);

    v9 = *(v1 + v2);
    *(v1 + v2) = v8;
  }

  v10 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification;
  if (!*(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification))
  {
    sub_25C4C7CF0();
    v11 = *(v1 + 16);
    swift_allocObject();
    swift_weakInit();
    v12 = sub_25C4C7B70();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = v11;
    v16 = sub_25C4C7B60();
    v17 = *(v1 + v10);
    *(v1 + v10) = v16;
  }

  v18 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener;
  if (!*(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener))
  {
    v19 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_localOnly;
    swift_beginAccess();
    if (*(v1 + v19) == 1)
    {
      mach_service = xpc_connection_create(0, *(v1 + 16));
    }

    else
    {
      sub_25C4C7C90();
      v21 = *(v1 + 16);
      v22 = sub_25C4C8570();

      mach_service = xpc_connection_create_mach_service((v22 + 32), v21, 1uLL);
    }

    v23 = *(v1 + v18);
    *(v1 + v18) = mach_service;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v25;
    v39 = sub_25C48E800;
    v40 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_25C456294;
    v38 = &block_descriptor_122;
    v27 = _Block_copy(&aBlock);

    xpc_connection_set_event_handler(mach_service, v27);
    _Block_release(v27);
    xpc_connection_activate(mach_service);
    swift_unknownObjectRelease_n();
  }

  v28 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
  result = swift_beginAccess();
  v30 = *(v1 + v28);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v30 + 32;

    do
    {
      sub_25C48BE38(v32, &aBlock);
      v33 = v38;
      v34 = v39;
      __swift_project_boxed_opaque_existential_1(&aBlock, v38);
      v34[5](v33, v34);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v32 += 40;
      --v31;
    }

    while (v31);
  }

  return result;
}

uint64_t sub_25C484BB0(uint64_t a1, uint64_t a2)
{
  v5 = sub_25C4C8470();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25C4C8490();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 16);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C4676B4;
  aBlock[3] = a2;
  v16 = _Block_copy(aBlock);

  sub_25C4C8480();
  v18[1] = MEMORY[0x277D84F90];
  sub_25C490490(&unk_27FC0A180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C48B830();
  sub_25C4C8800();
  MEMORY[0x25F887C10](0, v14, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_25C484E24()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
  {
    v2 = qword_27FC0B5D0;

    if (v2 != -1)
    {
LABEL_18:
      swift_once();
    }

    v3 = sub_25C4C7BD0();
    __swift_project_value_buffer(v3, qword_27FC0B5D8);
    v4 = sub_25C4C7BB0();
    v5 = sub_25C4C8720();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_25C452000, v4, v5, "Network listener stop", v6, 2u);
      MEMORY[0x25F888630](v6, -1, -1);
    }

    sub_25C4C81E0();
  }

  v7 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = *(v1 + v7);

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_14:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = *(*(v8 + 56) + ((v15 << 9) | (8 * v16)));
      sub_25C498274();

      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }

  while (1)
  {
LABEL_10:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_14;
    }
  }

  v18 = *(v1 + v7);
  *(v1 + v7) = MEMORY[0x277D84F98];
}

void sub_25C485020()
{
  if (*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__invalidateCalled) == 1 && !*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener) && !*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener))
  {
    v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
    swift_beginAccess();
    v2 = *(v0 + v1);
    v3 = MEMORY[0x277D84F98];
    *(v0 + v1) = MEMORY[0x277D84F98];

    v4 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations;
    swift_beginAccess();
    v5 = *(v0 + v4);
    *(v0 + v4) = v3;

    v6 = (v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    sub_25C45A2C8(v7);
    v9 = v0;
    v10 = (v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    *v10 = 0;
    v10[1] = 0;
    sub_25C45A2C8(v11);
    if (qword_27FC0B5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_25C4C7BD0();
    __swift_project_value_buffer(v13, qword_27FC0B5D8);
    v14 = sub_25C4C7BB0();
    v15 = sub_25C4C8720();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_25C452000, v14, v15, "Invalidated", v16, 2u);
      MEMORY[0x25F888630](v16, -1, -1);
    }

    v17 = (v9 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler);
    swift_beginAccess();
    v18 = *v17;
    if (*v17)
    {
      v19 = v17[1];

      v18(v20);
      sub_25C45A2C8(v18);
      v21 = *v17;
    }

    else
    {
      v21 = 0;
    }

    v22 = v17[1];
    *v17 = 0;
    v17[1] = 0;
    sub_25C45A2C8(v21);
  }
}

uint64_t sub_25C485248()
{
  v1 = sub_25C4C8470();
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25C4C8490();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v18[1] = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    if ((*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__updatePending) & 1) == 0)
    {
      *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__updatePending) = 1;
      aBlock[4] = sub_25C48BC94;
      aBlock[5] = v0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25C4676B4;
      aBlock[3] = &block_descriptor_7_0;
      v17 = _Block_copy(aBlock);

      sub_25C4C8480();
      v20 = MEMORY[0x277D84F90];
      sub_25C490490(&unk_27FC0A180, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
      sub_25C48B830();
      sub_25C4C8800();
      MEMORY[0x25F887C10](0, v9, v4, v17);
      _Block_release(v17);
      (*(v19 + 8))(v4, v1);
      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C4855C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher;
  swift_beginAccess();
  if (!*(v1 + v2) || (, v3 = sub_25C45CC38(), , !v3))
  {
    v5 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if ((v6 & 0xC000000000000001) != 0)
    {

      sub_25C4C8830();
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
      result = sub_25C4C8640();
      v6 = v19;
      v8 = v20;
      v9 = v21;
      v10 = v22;
      v11 = v23;
    }

    else
    {
      v12 = -1 << *(v6 + 32);
      v8 = v6 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v6 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v6 < 0)
      {
        if (!sub_25C4C8860())
        {
LABEL_21:
          v4 = 0;
LABEL_22:
          sub_25C48B0D8();
          return v4;
        }

        type metadata accessor for NXXPCConnection();
        swift_dynamicCast();
        v4 = v18;
        if (!v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = v10;
        v17 = v11;
        if (!v11)
        {
          while (1)
          {
            v10 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v10 >= ((v9 + 64) >> 6))
            {
              goto LABEL_21;
            }

            v17 = *(v8 + 8 * v10);
            ++v16;
            if (v17)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
          return result;
        }

LABEL_10:
        v11 = (v17 - 1) & v17;
        v4 = *(*(v6 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));

        if (!v4)
        {
          goto LABEL_22;
        }
      }

      v15 = sub_25C469834();

      if (v15)
      {
        v4 = 1;
        goto LABEL_22;
      }
    }
  }

  return 1;
}

uint64_t sub_25C485838()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A650, &qword_25C4CA6B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - v3;
  v5 = sub_25C4C8160();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener;
  if (!*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
  {
    v34 = v0;
    if (qword_27FC0B5D0 != -1)
    {
      swift_once();
    }

    v15 = sub_25C4C7BD0();
    __swift_project_value_buffer(v15, qword_27FC0B5D8);
    v16 = sub_25C4C7BB0();
    v17 = sub_25C4C8720();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 33554688;
      *(v18 + 4) = sub_25C4C7CE0();
      _os_log_impl(&dword_25C452000, v16, v17, "Network listener start: port=%hu", v18, 6u);
      MEMORY[0x25F888630](v18, -1, -1);
    }

    sub_25C4C7CE0();
    sub_25C4C8140();
    sub_25C4C8350();
    sub_25C4C8340();
    (*(v6 + 16))(v10, v13, v5);
    v19 = sub_25C4C8220();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = sub_25C4C81D0();
    swift_retain_n();
    sub_25C4C7CB0();
    sub_25C4C81F0();
    v23 = sub_25C4C8200();
    (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
    sub_25C4C8210();
    (*(v6 + 8))(v13, v5);
    v24 = v34;
    v25 = *(v34 + v14);
    *(v34 + v14) = v22;

    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;

    sub_25C4C8190();

    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    swift_weakInit();

    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;

    sub_25C4C8180();

    v32 = *(v24 + 16);
    sub_25C4C81C0();
  }

  return result;
}

uint64_t sub_25C485DE0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C53C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4);
}

uint64_t sub_25C485E80(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C514;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_25C45A2B8(v3);
  return sub_25C45A2C8(v8);
}

void sub_25C485FE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25C4C8170();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C4C84C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 16);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_25C4C84E0();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (qword_27FC0B5D0 == -1)
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
  v16 = sub_25C4C7BD0();
  __swift_project_value_buffer(v16, qword_27FC0B5D8);

  v17 = sub_25C4C7BB0();
  v18 = sub_25C4C8720();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136315138;
    sub_25C4C8310();
    v21 = sub_25C4C8110();
    v22 = v8;
    v24 = v23;
    (*(v5 + 8))(v22, v4);
    v25 = sub_25C458990(v21, v24, &v41);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_25C452000, v17, v18, "Network listener accept connection: peer=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x25F888630](v20, -1, -1);
    MEMORY[0x25F888630](v19, -1, -1);
  }

  type metadata accessor for NXSessionDaemon(0);

  v26 = sub_25C494690(a1, v2);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = &v26[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_serverEventHandler];
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = sub_25C48E4B4;
  v28[1] = v27;

  sub_25C45A2C8(v29);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v26;
  v33 = &v26[OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_invalidationHandler];
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  *v33 = sub_25C48E738;
  v33[1] = v32;

  sub_25C45A2C8(v34);

  v36 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions;
  swift_beginAccess();
  v37 = v26;
  v38 = *(v2 + v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v2 + v36);
  *(v2 + v36) = 0x8000000000000000;
  sub_25C48D154(v37, v37, isUniquelyReferenced_nonNull_native);
  *(v2 + v36) = v40;
  swift_endAccess();
  sub_25C497710();
}

void sub_25C48647C(uint64_t a1)
{
  v3 = sub_25C4C8390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v75 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v75 - v13;
  MEMORY[0x28223BE20](v12);
  v77 = &v75 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A5B8, &qword_25C4CA428);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v76 = &v75 - v18;
  v19 = sub_25C4C81B0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, a1, v19);
  v24 = (*(v20 + 88))(v23, v19);
  if (v24 == *MEMORY[0x277CD8B40])
  {
    (*(v20 + 96))(v23, v19);
    (*(v4 + 32))(v11, v23, v3);
    if (qword_27FC0B5D0 != -1)
    {
      swift_once();
    }

    v25 = sub_25C4C7BD0();
    __swift_project_value_buffer(v25, qword_27FC0B5D8);
    (*(v4 + 16))(v8, v11, v3);
    v26 = sub_25C4C7BB0();
    v27 = sub_25C4C8720();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v78[0] = v29;
      *v28 = 136315138;
      sub_25C490490(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
      v30 = sub_25C4C8A30();
      v32 = v31;
      v33 = *(v4 + 8);
      v33(v8, v3);
      v34 = sub_25C458990(v30, v32, v78);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_25C452000, v26, v27, "Network listener waiting: error=%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F888630](v29, -1, -1);
      MEMORY[0x25F888630](v28, -1, -1);

      v33(v11, v3);
    }

    else
    {

      v48 = *(v4 + 8);
      v48(v8, v3);
      v48(v11, v3);
    }
  }

  else if (v24 == *MEMORY[0x277CD8B38])
  {
    v76 = v1;
    (*(v20 + 96))(v23, v19);
    v35 = v77;
    v36 = v3;
    (*(v4 + 32))(v77, v23, v3);
    if (qword_27FC0B5D0 != -1)
    {
      swift_once();
    }

    v37 = sub_25C4C7BD0();
    __swift_project_value_buffer(v37, qword_27FC0B5D8);
    (*(v4 + 16))(v14, v35, v3);
    v38 = sub_25C4C7BB0();
    v39 = sub_25C4C8710();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78[0] = v75;
      *v40 = 136315138;
      sub_25C490490(&qword_27FC0A550, MEMORY[0x277CD8FC0]);
      v41 = sub_25C4C8A30();
      v43 = v42;
      v44 = *(v4 + 8);
      v44(v14, v3);
      v45 = sub_25C458990(v41, v43, v78);
      v36 = v3;

      *(v40 + 4) = v45;
      _os_log_impl(&dword_25C452000, v38, v39, "### Network listener failed: error=%s", v40, 0xCu);
      v46 = v75;
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x25F888630](v46, -1, -1);
      v47 = v40;
      v35 = v77;
      MEMORY[0x25F888630](v47, -1, -1);
    }

    else
    {

      v44 = *(v4 + 8);
      v44(v14, v3);
    }

    v62 = *&v76[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener];
    *&v76[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener] = 0;

    sub_25C485020();
    v44(v35, v36);
  }

  else if (v24 != *MEMORY[0x277CD8B30])
  {
    if (v24 == *MEMORY[0x277CD8B28])
    {
      if (qword_27FC0B5D0 != -1)
      {
        swift_once();
      }

      v49 = sub_25C4C7BD0();
      __swift_project_value_buffer(v49, qword_27FC0B5D8);

      v50 = v1;
      v51 = sub_25C4C7BB0();
      v52 = sub_25C4C8720();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = 7104878;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v78[0] = v55;
        *v54 = 136315138;
        if (*&v1[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener])
        {
          v56 = *&v1[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener];

          v57 = v76;
          sub_25C4C81A0();
          v58 = v57;

          v59 = sub_25C4C8160();
          v60 = *(v59 - 8);
          if ((*(v60 + 48))(v58, 1, v59) == 1)
          {
            sub_25C4666F8(v58, &qword_27FC0A5B8, &qword_25C4CA428);
            v61 = 0xE300000000000000;
          }

          else
          {
            v53 = sub_25C4C8150();
            v61 = v69;
            (*(v60 + 8))(v58, v59);
          }

          v1 = v50;
        }

        else
        {
          v61 = 0xE300000000000000;
        }

        v70 = sub_25C458990(v53, v61, v78);

        *(v54 + 4) = v70;
        _os_log_impl(&dword_25C452000, v51, v52, "Network listener ready: port=%s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x25F888630](v55, -1, -1);
        MEMORY[0x25F888630](v54, -1, -1);
      }

      v71 = &v1[OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler];
      swift_beginAccess();
      v72 = *v71;
      if (*v71)
      {
        v73 = *(v71 + 1);

        v72(v74);
        sub_25C45A2C8(v72);
      }
    }

    else if (v24 == *MEMORY[0x277CD8B48])
    {
      v63 = v1;
      if (qword_27FC0B5D0 != -1)
      {
        swift_once();
      }

      v64 = sub_25C4C7BD0();
      __swift_project_value_buffer(v64, qword_27FC0B5D8);
      v65 = sub_25C4C7BB0();
      v66 = sub_25C4C8720();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_25C452000, v65, v66, "Network listener canceled", v67, 2u);
        MEMORY[0x25F888630](v67, -1, -1);
      }

      v68 = *&v63[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener];
      *&v63[OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener] = 0;

      sub_25C485020();
    }

    else
    {
      (*(v20 + 8))(v23, v19);
    }
  }
}

unint64_t sub_25C486EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_25C48D154(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v9 = *v2;
    result = sub_25C462F38(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_25C48DD00();
        v14 = v16;
      }

      result = sub_25C463960(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_25C486F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A608, &qword_25C4CA450);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_25C4C8090();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_25C4666F8(a1, &qword_27FC0A608, &qword_25C4CA450);
    sub_25C48BC98(a2, a3, MEMORY[0x277D35838], MEMORY[0x277D35838], &qword_27FC0A648, &qword_25C4CA6A8, v10);

    return sub_25C4666F8(v10, &qword_27FC0A608, &qword_25C4CA450);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_25C48D29C(v15, a2, a3, isUniquelyReferenced_nonNull_native, MEMORY[0x277D35838], &qword_27FC0A648, &qword_25C4CA6A8, MEMORY[0x277D35838]);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_25C487188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A610, &unk_25C4CA458);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_25C4C8050();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_25C4666F8(a1, &unk_27FC0A610, &unk_25C4CA458);
    sub_25C48BC98(a2, a3, MEMORY[0x277D35830], MEMORY[0x277D35830], &unk_27FC0A638, &unk_25C4CA698, v10);

    return sub_25C4666F8(v10, &unk_27FC0A610, &unk_25C4CA458);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_25C48D29C(v15, a2, a3, isUniquelyReferenced_nonNull_native, MEMORY[0x277D35830], &unk_27FC0A638, &unk_25C4CA698, MEMORY[0x277D35830]);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_25C4873B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_25C48D464(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_25C4C7C50();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_25C48C1E0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_25C48E0E4();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = sub_25C4C7C50();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_25C48CE34(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = sub_25C4C7C50();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_25C487570(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v58 = a5;
  v59 = a6;
  v56 = a3;
  v57 = a4;
  v64 = a1;
  v10 = sub_25C4C8090();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v60 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A608, &qword_25C4CA450);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v55 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v50 - v17;
  v19 = sub_25C4C84C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v8 + 16);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  v26 = sub_25C4C84E0();
  (*(v20 + 8))(v23, v19);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v27 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
  swift_beginAccess();
  v28 = *(v8 + v27);
  v29 = *(v28 + 16);
  v54 = v7;
  if (v29)
  {
    v23 = v64;
    v30 = sub_25C462EC0(v64, a2);
    v26 = v61;
    if (v31)
    {
      (*(v61 + 16))(v18, *(v28 + 56) + *(v61 + 72) * v30, v10);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    v32 = 1;
    v23 = v64;
    v26 = v61;
  }

  v53 = *(v26 + 56);
  v53(v18, v32, 1, v10);
  swift_endAccess();
  v33 = (*(v26 + 48))(v18, 1, v10);
  sub_25C4666F8(v18, &qword_27FC0A608, &qword_25C4CA450);
  if (v33 != 1)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_25C4C88F0();

    v62 = 0xD000000000000022;
    v63 = 0x800000025C4D0BD0;
    MEMORY[0x25F887A50](v23, a2);
    v43 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v50[1] = v27;
  if (qword_27FC0B5D0 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v51 = v8;
  v34 = sub_25C4C7BD0();
  __swift_project_value_buffer(v34, qword_27FC0B5D8);

  v35 = v57;

  v36 = sub_25C4C7BB0();
  v37 = sub_25C4C8720();

  v38 = os_log_type_enabled(v36, v37);
  v52 = v10;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v62 = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_25C458990(v64, a2, &v62);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_25C458990(v56, v35, &v62);
    _os_log_impl(&dword_25C452000, v36, v37, "Register operation creator: name=%s, client=%s", v39, 0x16u);
    swift_arrayDestroy();
    v41 = v40;
    v26 = v61;
    MEMORY[0x25F888630](v41, -1, -1);
    v42 = v39;
    v23 = v64;
    MEMORY[0x25F888630](v42, -1, -1);
  }

  v45 = v60;
  sub_25C4C8070();
  v46 = v55;
  v47 = v52;
  (*(v26 + 16))(v55, v45, v52);
  v53(v46, 0, 1, v47);
  v48 = v51;
  swift_beginAccess();

  sub_25C486F60(v46, v23, a2);
  swift_endAccess();
  v49 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher;
  swift_beginAccess();
  if (*(v48 + v49))
  {
    swift_endAccess();

    sub_25C45FBB8(v23, a2);

    return (*(v26 + 8))(v45, v47);
  }

  else
  {
    (*(v26 + 8))(v45, v47);
    return swift_endAccess();
  }
}

uint64_t sub_25C487BCC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A608, &qword_25C4CA450);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_25C4C84C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_25C4C84E0();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (qword_27FC0B5D0 == -1)
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
  v20 = sub_25C4C7BD0();
  __swift_project_value_buffer(v20, qword_27FC0B5D8);

  v21 = sub_25C4C7BB0();
  v22 = sub_25C4C8720();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v23 = 136315394;
    *(v23 + 4) = sub_25C458990(a1, a2, &v40);
    *(v23 + 12) = 1024;
    v24 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
    swift_beginAccess();
    v25 = *(v3 + v24);
    if (*(v25 + 16) && (v26 = sub_25C462EC0(a1, a2), (v27 & 1) != 0))
    {
      v28 = *(v25 + 56);
      v36 = v26;
      v37 = v28;
      v29 = sub_25C4C8090();
      v30 = *(v29 - 8);
      v38 = a1;
      v31 = v30;
      (*(v30 + 16))(v12, v37 + *(v30 + 72) * v36, v29);
      (*(v31 + 56))(v12, 0, 1, v29);
      a1 = v38;
    }

    else
    {
      v29 = sub_25C4C8090();
      (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    }

    swift_endAccess();
    sub_25C4C8090();
    v32 = (*(*(v29 - 8) + 48))(v12, 1, v29) != 1;
    sub_25C4666F8(v12, &qword_27FC0A608, &qword_25C4CA450);
    *(v23 + 14) = v32;

    _os_log_impl(&dword_25C452000, v21, v22, "Deregister operation creator: name=%s, present=%{BOOL}d", v23, 0x12u);
    v33 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x25F888630](v33, -1, -1);
    MEMORY[0x25F888630](v23, -1, -1);
  }

  else
  {
  }

  v34 = sub_25C4C8090();
  (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
  swift_beginAccess();

  sub_25C486F60(v10, a1, a2);
  return swift_endAccess();
}

void sub_25C4880C0(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t, uint64_t, void), uint64_t a6)
{
  v7 = v6;
  v47 = a6;
  v48 = a5;
  v46 = a4;
  v45 = a3;
  v10 = sub_25C4C8090();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v17 = sub_25C4C84C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v7 + 16);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  LOBYTE(v22) = sub_25C4C84E0();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v24 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators;
    swift_beginAccess();
    v25 = *(v7 + v24);
    v26 = a1;
    if (*(v25 + 16) && (v27 = sub_25C462EC0(a1, a2), (v28 & 1) != 0))
    {
      v29 = v44;
      (*(v44 + 16))(v14, *(v25 + 56) + *(v44 + 72) * v27, v10);
      (*(v29 + 32))(v16, v14, v10);
      swift_endAccess();
      v30 = sub_25C4C8080();
      v30(v26, a2, v45);
      v31 = v48;
      v41 = v40;

      v42 = swift_unknownObjectRetain();
      v31(v42, v41, 0);
      swift_unknownObjectRelease_n();
      (*(v29 + 8))(v16, v10);
    }

    else
    {
      swift_endAccess();
      v33 = v47;
      v32 = v48;
      if ((v46 & 1) == 0 || (v34 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher, swift_beginAccess(), !*(v7 + v34)) || (v35 = *(v7 + v34), , v36 = sub_25C45E990(v26, a2, v45, v32, v33), , !v36))
      {
        v49 = 0;
        v50 = 0xE000000000000000;
        sub_25C4C88F0();

        v49 = 0xD00000000000001BLL;
        v50 = 0x800000025C4D0C00;
        MEMORY[0x25F887A50](v26, a2);
        v37 = objc_allocWithZone(sub_25C4C7B80());
        v38 = sub_25C4C7B90();
        swift_willThrow();
        v39 = v38;
        v32(v38, 0, 1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t NXDaemon.prefSecurityRequired.getter()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NXDaemon.prefSecurityRequired.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefSecurityRequired;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t NXDaemon.prefNetworkServerEnabledOverride.getter()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefNetworkServerEnabledOverride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NXDaemon.prefNetworkServerEnabledOverride.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefNetworkServerEnabledOverride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25C4886CC(void *a1, uint64_t a2, unint64_t a3)
{
  v25 = a2;
  v28 = sub_25C4C7DB0();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25C4C84C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v3;
  v15 = *(v3 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_25C4C84E0();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v19 = sub_25C4C7E60();
    v21 = v20;
    sub_25C48BE38(a1, v27);
    v22 = swift_allocObject();
    sub_25C490478(v27, v22 + 16);
    v23 = v25;
    *(v22 + 56) = v25;
    *(v22 + 64) = a3;

    sub_25C4C7DA0();
    sub_25C488948(v19, v21, v24, v23, a3, sub_25C48BEDC, v22);
    (*(v6 + 8))(v9, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C488948(void (*a1)(void, void, void), unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v51 = a6;
  v54 = a5;
  v59 = a1;
  v10 = sub_25C4C8050();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A610, &unk_25C4CA458);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v19 = sub_25C4C84C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v7 + 16);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_25C4C84E0();
  (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v26 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations;
  swift_beginAccess();
  v53 = v7;
  v27 = *(v7 + v26);
  if (*(v27 + 16))
  {
    v28 = v10;
    v29 = sub_25C462EC0(v59, a2);
    if (v30)
    {
      v31 = a2;
      v32 = v56;
      (*(v56 + 16))(v18, *(v27 + 56) + *(v56 + 72) * v29, v28);
      v33 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v28 = v10;
  }

  v31 = a2;
  v33 = 1;
  v32 = v56;
LABEL_7:
  v34 = *(v32 + 56);
  v34(v18, v33, 1, v28);
  swift_endAccess();
  v35 = (*(v32 + 48))(v18, 1, v28);
  sub_25C4666F8(v18, &unk_27FC0A610, &unk_25C4CA458);
  if (v35 != 1)
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_25C4C88F0();

    v57 = 0xD000000000000027;
    v58 = 0x800000025C4D0C20;
    MEMORY[0x25F887A50](v59, v31);
    v48 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  v36 = v55;
  v49 = a4;
  sub_25C4C8030();
  v37 = v32;
  a2 = v31;
  v38 = v50;
  (*(v37 + 16))(v50, v36, v28);
  v34(v38, 0, 1, v28);
  swift_beginAccess();

  sub_25C487188(v38, v59, v31);
  swift_endAccess();
  v10 = v28;
  if (qword_27FC0B5D0 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v39 = sub_25C4C7BD0();
  __swift_project_value_buffer(v39, qword_27FC0B5D8);

  v40 = v54;

  v41 = sub_25C4C7BB0();
  v42 = sub_25C4C8720();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v57 = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_25C458990(v59, a2, &v57);
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_25C458990(v49, v40, &v57);
    _os_log_impl(&dword_25C452000, v41, v42, "Request handler registered: requestName=%s, client=%s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v44, -1, -1);
    MEMORY[0x25F888630](v43, -1, -1);
  }

  v45 = v53;
  v46 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher;
  swift_beginAccess();
  if (*(v45 + v46))
  {
    swift_endAccess();

    sub_25C460F14(v59, a2);

    return (*(v56 + 8))(v55, v10);
  }

  else
  {
    (*(v56 + 8))(v55, v10);
    return swift_endAccess();
  }
}

void sub_25C488F90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A610, &unk_25C4CA458);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27[-1] - v11;
  v13 = sub_25C4C84C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v27[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_25C4C84E0();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = sub_25C4C8050();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    swift_beginAccess();

    sub_25C487188(v12, a1, a2);
    swift_endAccess();
    if (qword_27FC0B5D0 == -1)
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
  v21 = sub_25C4C7BD0();
  __swift_project_value_buffer(v21, qword_27FC0B5D8);

  v22 = sub_25C4C7BB0();
  v23 = sub_25C4C8720();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_25C458990(a1, a2, v27);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_25C458990(a3, a4, v27);
    _os_log_impl(&dword_25C452000, v22, v23, "Request handler deregistered: requestName=%s, client=%s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v25, -1, -1);
    MEMORY[0x25F888630](v24, -1, -1);
  }
}

uint64_t sub_25C4892D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v58 = a5;
  v9 = v8;
  v54 = a7;
  v55 = a8;
  v56 = a3;
  v57 = a4;
  v52 = sub_25C4C8050();
  v63 = *(v52 - 8);
  v13 = v63[8];
  v14 = MEMORY[0x28223BE20](v52);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v53 = &v51 - v17;
  v18 = sub_25C4C84C0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v9 + 2);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_25C4C84E0();
  v26 = *(v19 + 8);
  v25 = v19 + 8;
  v26(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v27 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations;
  swift_beginAccess();
  v28 = *&v9[v27];
  v25 = a2;
  if (*(v28 + 16))
  {
    v29 = sub_25C462EC0(a1, a2);
    if (v30)
    {
      v22 = v63[2];
      a2 = v52;
      v9 = v53;
      (v22)(v53, *(v28 + 56) + v63[9] * v29, v52);
      swift_endAccess();
      if (qword_27FC0B5D0 == -1)
      {
LABEL_5:
        v31 = sub_25C4C7BD0();
        __swift_project_value_buffer(v31, qword_27FC0B5D8);
        (v22)(v16, v9, a2);

        v32 = sub_25C4C7BB0();
        v33 = sub_25C4C8720();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v62[0] = v51;
          *v34 = 136315394;
          *(v34 + 4) = sub_25C458990(a1, v25, v62);
          *(v34 + 12) = 2080;
          v35 = sub_25C4C8020();
          v37 = v36;
          v38 = v16;
          v39 = v63[1];
          v39(v38, a2);
          v40 = sub_25C458990(v35, v37, v62);

          *(v34 + 14) = v40;
          _os_log_impl(&dword_25C452000, v32, v33, "Request handler invoke: requestName=%s, client=%s", v34, 0x16u);
          v41 = v51;
          swift_arrayDestroy();
          MEMORY[0x25F888630](v41, -1, -1);
          v42 = v34;
          v9 = v53;
          MEMORY[0x25F888630](v42, -1, -1);

          v43 = v39;
        }

        else
        {

          v43 = v63[1];
          v43(v16, a2);
        }

        v48 = sub_25C4C8040();
        v49 = swift_allocObject();
        *(v49 + 16) = v54;
        *(v49 + 24) = v55;

        v50 = v59;
        v48(a1, v25, v56, v57, v58, sub_25C48C1B4, v49);
        if (v50)
        {
          v43(v9, a2);
        }

        else
        {
          v59 = 0;
          v43(v9, a2);
        }
      }

LABEL_17:
      swift_once();
      goto LABEL_5;
    }
  }

  swift_endAccess();
  if ((a6 & 1) == 0 || (v44 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher, swift_beginAccess(), !*&v9[v44]) || (, v45 = sub_25C460380(a1, a2, v56, v57, v58, v54, v55), result = , !v45))
  {
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_25C4C88F0();

    v60 = 0xD000000000000020;
    v61 = 0x800000025C4D0C50;
    MEMORY[0x25F887A50](a1, a2);
    v47 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }

  return result;
}

id sub_25C48988C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v7 = sub_25C4C7C50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C4C84C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + 16);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_25C4C84E0();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v20 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap;
    swift_beginAccess();
    v21 = *(v4 + v20);
    if (*(v21 + 16) && (v22 = sub_25C48C1E0(a1), (v23 & 1) != 0))
    {
      v25 = *(*(v21 + 56) + 8 * v22);
      swift_endAccess();
      v24 = v25;

      return v24;
    }

    else
    {
      swift_endAccess();
      type metadata accessor for NXSessionDaemon(0);
      (*(v8 + 16))(v11, a1, v7);

      return sub_25C494274(v11, v25, a3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C489B00(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint;
  v5 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap;
  swift_beginAccess();
  v6 = a1;
  v7 = *(v2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v5);
  *(v2 + v5) = 0x8000000000000000;
  sub_25C48D464(v6, a1 + v4, isUniquelyReferenced_nonNull_native);
  *(v2 + v5) = v10;
  return swift_endAccess();
}

uint64_t sub_25C489BA8(uint64_t a1)
{
  v2 = sub_25C4C7C50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1 + OBJC_IVAR____TtC11NexusDaemon15NXSessionDaemon_endpoint);
  swift_beginAccess();
  sub_25C4873B0(0, v5);
  return swift_endAccess();
}

uint64_t sub_25C489CA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C48D9A8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4);
}

uint64_t sub_25C489D48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C48D970;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_25C45A2B8(v3);
  return sub_25C45A2C8(v8);
}

uint64_t sub_25C489E30(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_25C489EB8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_25C489F88(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t NXDaemon.xpcEndpoint.getter()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcEndpoint;
    v10 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcEndpoint);
    if (!v10)
    {
      if (*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener))
      {
        v11 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcEndpoint);
        v10 = xpc_endpoint_create(*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener));
        v12 = *(v0 + v9);
        *(v0 + v9) = v10;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
      }
    }

    swift_unknownObjectRetain();
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25C48A130(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_25C4C8870();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (type metadata accessor for NXXPCConnection(), v5 = *(a2 + 40), sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection), v6 = sub_25C4C8510(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection);
      do
      {
        v11 = *(*(a2 + 48) + 8 * v8);
        v10 = sub_25C4C8530();
        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }
}

uint64_t NXDaemon.deinit()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v2 = sub_25C4C7B30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler + 8);
  sub_25C45A2C8(*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_invalidationHandler));
  v4 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers);

  v5 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_diagnosticsManager);

  v6 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager);

  v7 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher);

  v8 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_prefsDomain + 8);

  v9 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener);

  v10 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkServerSessions);

  v11 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler + 8);
  sub_25C45A2C8(*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkServerReadyHandler));
  v12 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__operationCreators);

  v13 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification);

  v14 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__requestRegistrations);

  v15 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__sessionMap);

  v16 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler + 8);
  sub_25C45A2C8(*(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler));
  v17 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections);

  v18 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcEndpoint);
  swift_unknownObjectRelease();
  v19 = *(v0 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NXDaemon.__deallocating_deinit()
{
  NXDaemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t (*CUEnvironmentValues.createBluetoothAdvertiser.getter())(uint64_t)
{
  sub_25C48D630();
  sub_25C4C7B40();
  *(swift_allocObject() + 16) = v1;
  return sub_25C490574;
}

void (*CUEnvironmentValues.createBluetoothAdvertiser.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_25C48D630();
  sub_25C4C7B40();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_25C490574;
  *(v4 + 8) = v5;
  return sub_25C48A6D8;
}

void sub_25C48A6D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v7;

    sub_25C4C7B50();
    v8 = v2[1];
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v9;
    sub_25C4C7B50();
  }

  free(v2);
}

uint64_t (*CUEnvironmentValues.createNANPublisher.getter())(uint64_t)
{
  sub_25C48D684();
  sub_25C4C7B40();
  *(swift_allocObject() + 16) = v1;
  return sub_25C48D6D8;
}

void (*CUEnvironmentValues.createNANPublisher.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_25C48D684();
  sub_25C4C7B40();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_25C490574;
  *(v4 + 8) = v5;
  return sub_25C48A9B8;
}

void sub_25C48A9B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v7;

    sub_25C4C7B50();
    v8 = v2[1];
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v9;
    sub_25C4C7B50();
  }

  free(v2);
}

uint64_t sub_25C48AAF0@<X0>(void **a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  a2(0);
  result = a3(v8);
  *a5 = result;
  a5[1] = a4;
  return result;
}

uint64_t (*CUEnvironmentValues.createNANSubscriber.getter())(uint64_t)
{
  sub_25C48D6E0();
  sub_25C4C7B40();
  *(swift_allocObject() + 16) = v1;
  return sub_25C490574;
}

double sub_25C48ABD8@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_25C4C7B40();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_25C48AC54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  a5(a1, a2);

  return sub_25C4C7B50();
}

uint64_t sub_25C48ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  a5(v8, v9);
  return sub_25C4C7B50();
}

void (*CUEnvironmentValues.createNANSubscriber.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_25C48D6E0();
  sub_25C4C7B40();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_25C490574;
  *(v4 + 8) = v5;
  return sub_25C48AE30;
}

void sub_25C48AE30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v7;

    sub_25C4C7B50();
    v8 = v2[1];
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    v2[2] = sub_25C490578;
    v2[3] = v9;
    sub_25C4C7B50();
  }

  free(v2);
}

id sub_25C48AF1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  v4 = sub_25C4C8540();

  return v4;
}

void *sub_25C48AF90(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A698, &qword_25C4CA6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A6A0, &qword_25C4CA6D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25C48B0E0()
{
  result = qword_27FC0A5E8;
  if (!qword_27FC0A5E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC0A5E8);
  }

  return result;
}

unint64_t sub_25C48B12C()
{
  result = qword_27FC0A5F0;
  if (!qword_27FC0A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A5F0);
  }

  return result;
}

_OWORD *sub_25C48B180(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C48B190()
{
  v1 = v0;
  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0B5D8);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8720();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "Activate", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__startTicks;
  if (!*(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__startTicks))
  {
    *(v1 + v6) = mach_absolute_time();
  }

  v7 = type metadata accessor for NXCloudServer();

  v9 = sub_25C4905F4(v8);
  v10 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = v9;
  v12 = v9;

  v13 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_25C48AF90(0, v14[2] + 1, 1, v14);
    *(v1 + v13) = v14;
  }

  v18 = v14[2];
  v17 = v14[3];
  if (v18 >= v17 >> 1)
  {
    v14 = sub_25C48AF90((v17 > 1), v18 + 1, 1, v14);
  }

  v53 = v7;
  v54 = sub_25C490490(&qword_27FC0A678, type metadata accessor for NXCloudServer);
  *&v52 = v15;
  v14[2] = v18 + 1;
  sub_25C490478(&v52, &v14[5 * v18 + 4]);
  *(v1 + v13) = v14;
  swift_endAccess();
  v19 = type metadata accessor for NXDiagnosticsManager();

  v21 = sub_25C468564(v20);
  v22 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_diagnosticsManager;
  swift_beginAccess();
  v23 = *(v1 + v22);
  *(v1 + v22) = v21;

  swift_beginAccess();
  v24 = *(v1 + v13);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v24;
  v51 = v15;
  if ((v25 & 1) == 0)
  {
    v24 = sub_25C48AF90(0, v24[2] + 1, 1, v24);
    *(v1 + v13) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_25C48AF90((v26 > 1), v27 + 1, 1, v24);
  }

  v53 = v19;
  v54 = sub_25C490490(&qword_27FC0A680, type metadata accessor for NXDiagnosticsManager);
  *&v52 = v21;
  v24[2] = v27 + 1;
  sub_25C490478(&v52, &v24[5 * v27 + 4]);
  *(v1 + v13) = v24;
  swift_endAccess();
  v28 = type metadata accessor for NXNetworkManager();

  v30 = sub_25C4C3B98(v29);
  v31 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager;
  swift_beginAccess();
  v32 = *(v1 + v31);
  *(v1 + v31) = v30;

  swift_beginAccess();
  v33 = *(v1 + v13);

  v34 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v33;
  if ((v34 & 1) == 0)
  {
    v33 = sub_25C48AF90(0, v33[2] + 1, 1, v33);
    *(v1 + v13) = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_25C48AF90((v35 > 1), v36 + 1, 1, v33);
  }

  v53 = v28;
  v54 = sub_25C490490(&qword_27FC0A688, type metadata accessor for NXNetworkManager);
  *&v52 = v30;
  v33[2] = v36 + 1;
  sub_25C490478(&v52, &v33[5 * v36 + 4]);
  *(v1 + v13) = v33;
  swift_endAccess();
  v37 = type metadata accessor for NXXPCPublisher(0);

  v39 = sub_25C45C67C(v38);
  v40 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcPublisher;
  swift_beginAccess();
  v41 = *(v1 + v40);
  *(v1 + v40) = v39;

  swift_beginAccess();
  v42 = *(v1 + v13);

  v43 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_25C48AF90(0, v42[2] + 1, 1, v42);
    *(v1 + v13) = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  v46 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    v42 = sub_25C48AF90((v44 > 1), v45 + 1, 1, v42);
  }

  v53 = v37;
  v54 = sub_25C490490(&qword_27FC0A690, type metadata accessor for NXXPCPublisher);
  *&v52 = v39;
  v42[2] = v46;
  v47 = (v42 + 4);
  sub_25C490478(&v52, &v42[5 * v45 + 4]);
  *(v1 + v13) = v42;
  swift_endAccess();

  do
  {
    sub_25C48BE38(v47, &v52);
    v49 = v53;
    v48 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, v53);
    (*(v48 + 16))(v49, v48);
    __swift_destroy_boxed_opaque_existential_0(&v52);
    v47 += 40;
    --v46;
  }

  while (v46);

  sub_25C4840F0();
  sub_25C484738();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25C48B830()
{
  result = qword_27FC0A190;
  if (!qword_27FC0A190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A190);
  }

  return result;
}

void sub_25C48B894()
{
  v1 = v0;
  if (qword_27FC0B5D0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_25C4C7BD0();
    __swift_project_value_buffer(v2, qword_27FC0B5D8);
    v3 = sub_25C4C7BB0();
    v4 = sub_25C4C8720();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25C452000, v3, v4, "Invalidate", v5, 2u);
      MEMORY[0x25F888630](v5, -1, -1);
    }

    *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__invalidateCalled) = 1;
    v6 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__managers;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v7 + 32;
      v10 = *(v1 + v6);

      do
      {
        sub_25C48BE38(v9, v39);
        v11 = v40;
        v12 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        (*(v12 + 24))(v11, v12);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v9 += 40;
        --v8;
      }

      while (v8);

      v13 = *(v1 + v6);
    }

    *(v1 + v6) = MEMORY[0x277D84F90];

    sub_25C484E24();
    v14 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler;
    v15 = *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__osStateHandler);
    if (v15)
    {
      [v15 remove];
      v16 = *(v1 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v1 + v14) = 0;

    v17 = *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification);
    *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__prefChangedNotification) = 0;

    v18 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
    swift_beginAccess();
    v19 = *(v1 + v18);
    if ((v19 & 0xC000000000000001) != 0)
    {
      if (v19 < 0)
      {
        v20 = *(v1 + v18);
      }

      v21 = *(v1 + v18);

      sub_25C4C8830();
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
      sub_25C4C8640();
      v19 = v39[0];
      v22 = v39[1];
      v23 = v39[2];
      v24 = v40;
      v25 = v41;
    }

    else
    {
      v26 = -1 << *(v19 + 32);
      v22 = v19 + 56;
      v23 = ~v26;
      v27 = -v26;
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v25 = v28 & *(v19 + 56);
      v29 = *(v1 + v18);

      v24 = 0;
    }

    v30 = (v23 + 64) >> 6;
    if (v19 < 0)
    {
      break;
    }

LABEL_20:
    v31 = v24;
    v32 = v25;
    v33 = v24;
    if (v25)
    {
LABEL_24:
      v34 = (v32 - 1) & v32;
      v35 = *(*(v19 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v32)))));

      if (v35)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    while (1)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v33 >= v30)
      {
        goto LABEL_30;
      }

      v32 = *(v22 + 8 * v33);
      ++v31;
      if (v32)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  while (sub_25C4C8860())
  {
    type metadata accessor for NXXPCConnection();
    swift_dynamicCast();
    v33 = v24;
    v34 = v25;
    if (!v38)
    {
      break;
    }

LABEL_28:
    sub_25C46A2AC();

    v24 = v33;
    v25 = v34;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_30:
  sub_25C48B0D8();
  v36 = *(v1 + v18);
  *(v1 + v18) = MEMORY[0x277D84FA0];

  v37 = *(v1 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener);
  if (v37)
  {
    xpc_connection_cancel(v37);
  }

  sub_25C485020();
}

uint64_t sub_25C48BC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_25C462EC0(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25C48DE5C(a4, a5, a6);
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = a3(0);
    v30 = *(v23 - 8);
    (*(v30 + 32))(a7, v22 + *(v30 + 72) * v17, v23);
    sub_25C48CC40(v17, v20, a4);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a3(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_25C48BE38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25C48BE9C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25C48BEDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = v7[7];
  v26 = v7[8];
  v12 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;

  sub_25C4C7E70();
  if (!v27)
  {
  }

  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v14 = sub_25C4C7BD0();
  __swift_project_value_buffer(v14, qword_27FC0B5D8);
  v15 = a2;

  v16 = v27;
  v17 = sub_25C4C7BB0();
  v18 = sub_25C4C8710();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_25C458990(a1, v15, &v28);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_25C458990(v25, v26, &v28);
    *(v19 + 22) = 2080;
    swift_getErrorValue();
    v21 = sub_25C4C8A30();
    v23 = sub_25C458990(v21, v22, &v28);

    *(v19 + 24) = v23;
    _os_log_impl(&dword_25C452000, v17, v18, "### Request handler failed: requestName=%s, client%s, error=%s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v20, -1, -1);
    MEMORY[0x25F888630](v19, -1, -1);
  }

  return swift_willThrow();
}

uint64_t sub_25C48C17C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C48C1B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a2, a3 & 1);
}

unint64_t sub_25C48C1E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25C4C7C50();
  sub_25C490490(&qword_27FC0A628, MEMORY[0x277D35630]);
  v5 = sub_25C4C8510();

  return sub_25C48DB40(a1, v5);
}

uint64_t sub_25C48C278(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A660, &qword_25C4CA6B8);
  result = sub_25C4C8970();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_25C4C8A50();
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
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25C48C4E0(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_25C4C8970();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

uint64_t sub_25C48C864(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25C4C7C50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A620, &qword_25C4CA690);
  v43 = a2;
  result = sub_25C4C8970();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25C490490(&qword_27FC0A628, MEMORY[0x277D35630]);
      result = sub_25C4C8510();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_25C48CC40(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_25C4C8810() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_25C4C8A60();

      sub_25C4C8580();
      v15 = sub_25C4C8A90();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C48CE34(int64_t a1, uint64_t a2)
{
  v43 = sub_25C4C7C50();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25C4C8810();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25C490490(&qword_27FC0A628, MEMORY[0x277D35630]);
      v26 = sub_25C4C8510();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_25C48D154(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25C462F38(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      v21 = v20[7];
      v22 = *(v21 + 8 * result);
      *(v21 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_25C48DD00();
    result = v17;
    goto LABEL_8;
  }

  sub_25C48C278(v14, a3 & 1);
  v18 = *v4;
  result = sub_25C462F38(a2);
  if ((v15 & 1) == (v19 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_25C4C8A20();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_25C48D29C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_25C462EC0(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_25C48DE5C(a5, a6, a7);
      goto LABEL_7;
    }

    sub_25C48C4E0(v21, a4 & 1, a5, a6, a7);
    v32 = *v11;
    v33 = sub_25C462EC0(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_25C4C8A20();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a8(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  sub_25C48D9D4(v18, a2, a3, a1, v24, a5);
}

void sub_25C48D464(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C7C50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25C48C1E0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_25C48E0E4();
      goto LABEL_7;
    }

    sub_25C48C864(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_25C48C1E0(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_25C48DA88(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_25C4C8A20();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t sub_25C48D630()
{
  result = qword_27FC0B658;
  if (!qword_27FC0B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0B658);
  }

  return result;
}

unint64_t sub_25C48D684()
{
  result = qword_27FC0B660;
  if (!qword_27FC0B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0B660);
  }

  return result;
}

unint64_t sub_25C48D6E0()
{
  result = qword_27FC0B668[0];
  if (!qword_27FC0B668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FC0B668);
  }

  return result;
}

uint64_t sub_25C48D734(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_25C48D774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t type metadata accessor for NXDaemon()
{
  result = qword_27FC0B6F0;
  if (!qword_27FC0B6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C48D7FC()
{
  result = sub_25C4C7B30();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25C48D970(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_25C48D9A8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_25C48D9D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_25C48DA88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25C4C7C50();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_25C48DB40(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25C4C7C50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
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
      sub_25C490490(&qword_27FC0A630, MEMORY[0x277D35630]);
      v16 = sub_25C4C8530();
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

id sub_25C48DD00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A660, &qword_25C4CA6B8);
  v2 = *v0;
  v3 = sub_25C4C8960();
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
        result = v18;
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

void *sub_25C48DE5C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_25C4C8960();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_25C48E0E4()
{
  v1 = v0;
  v32 = sub_25C4C7C50();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A620, &qword_25C4CA690);
  v4 = *v0;
  v5 = sub_25C4C8960();
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

uint64_t sub_25C48E35C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (Strong == *(v6 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
      {
        sub_25C485FE8(a1);
      }
    }
  }

  return result;
}

uint64_t sub_25C48E408(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (Strong == *(v6 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__networkListener))
      {
        sub_25C48647C(a1);
      }
    }
  }

  return result;
}

uint64_t sub_25C48E4B4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
    swift_beginAccess();
    v5 = *(v3 + v4);
    if ((v5 & 0xC000000000000001) != 0)
    {
      if (v5 < 0)
      {
        v6 = *(v3 + v4);
      }

      sub_25C4C8830();
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
      result = sub_25C4C8640();
      v5 = v21;
      v7 = v22;
      v8 = v23;
      v9 = v24;
      v10 = v25;
    }

    else
    {
      v11 = -1 << *(v5 + 32);
      v7 = v5 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(v5 + 56);

      v9 = 0;
    }

    v14 = (v8 + 64) >> 6;
    if (v5 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v15 = v9;
      v16 = v10;
      v17 = v9;
      if (!v10)
      {
        break;
      }

LABEL_15:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

      if (!v19)
      {
LABEL_21:
        sub_25C48B0D8();
      }

      while (1)
      {
        sub_25C4767A8(a1);

        v9 = v17;
        v10 = v18;
        if ((v5 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (sub_25C4C8860())
        {
          type metadata accessor for NXXPCConnection();
          swift_dynamicCast();
          v17 = v9;
          v18 = v10;
          if (v20)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_21;
      }

      v16 = *(v7 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C48E700()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C48E738()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_25C486EA0(0, v1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_25C48E7C8()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C48E800(_xpc_connection_s *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(v6 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener);
      if (!v8 || Strong != v8)
      {

        return swift_unknownObjectRelease();
      }

      v9 = MEMORY[0x25F888910](a1);
      if (v9 == sub_25C4C7BE0())
      {
        type metadata accessor for NXXPCConnection();
        swift_unknownObjectRetain();

        v19 = sub_25C469BA4(a1, v6);
        v20 = swift_allocObject();
        swift_weakInit();
        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v20;
        *(v22 + 24) = v21;
        swift_beginAccess();
        v23 = *(v19 + 64);
        v24 = *(v19 + 72);
        *(v19 + 64) = sub_25C48ED7C;
        *(v19 + 72) = v22;

        sub_25C45A2C8(v23);

        v25 = swift_allocObject();
        swift_weakInit();

        aBlock[4] = sub_25C48EE94;
        aBlock[5] = v25;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_25C456294;
        aBlock[3] = &block_descriptor_133;
        v26 = _Block_copy(aBlock);

        xpc_connection_set_event_handler(a1, v26);
        _Block_release(v26);
        xpc_connection_set_target_queue(a1, *(v6 + 16));
        xpc_connection_activate(a1);
        swift_beginAccess();

        sub_25C48EEF0(&v35, v19);
        swift_endAccess();

        v27 = v6 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon_xpcConnectionAcceptHandler;
        swift_beginAccess();
        v28 = *v27;
        if (*v27)
        {
          v29 = *(v27 + 8);

          v28(v19);
          sub_25C45A2C8(v28);
        }

        sub_25C469EC4();
      }

      else
      {
        swift_getObjectType();
        v10 = sub_25C4C7C00();
        swift_unknownObjectRelease();
        if (v10 == a1)
        {
          if (qword_27FC0B5D0 != -1)
          {
            swift_once();
          }

          v30 = sub_25C4C7BD0();
          __swift_project_value_buffer(v30, qword_27FC0B5D8);
          v31 = sub_25C4C7BB0();
          v32 = sub_25C4C8720();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_25C452000, v31, v32, "XPC listener invalidated", v33, 2u);
            MEMORY[0x25F888630](v33, -1, -1);
          }

          v34 = *(v6 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener);
          *(v6 + OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcListener) = 0;
          swift_unknownObjectRelease();
          sub_25C485020();
        }

        else
        {
          if (qword_27FC0B5D0 != -1)
          {
            swift_once();
          }

          v11 = sub_25C4C7BD0();
          __swift_project_value_buffer(v11, qword_27FC0B5D8);
          swift_unknownObjectRetain();
          v12 = sub_25C4C7BB0();
          v13 = sub_25C4C8710();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            aBlock[0] = v15;
            *v14 = 136315138;
            v16 = sub_25C4C8690();
            v18 = sub_25C458990(v16, v17, aBlock);

            *(v14 + 4) = v18;
            _os_log_impl(&dword_25C452000, v12, v13, "### XPC listener error: error=%s", v14, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v15);
            MEMORY[0x25F888630](v15, -1, -1);
            MEMORY[0x25F888630](v14, -1, -1);
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_25C48ED44()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C48ED7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon__xpcConnections;
      swift_beginAccess();
      v8 = *(v4 + v7);

      v9 = sub_25C48A130(v6, v8);

      if (v9)
      {
        swift_beginAccess();
        sub_25C48FCF0();
        swift_endAccess();

        sub_25C485020();
      }
    }
  }

  return result;
}

uint64_t sub_25C48EE94(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25C46B864(a1);
  }

  return result;
}

uint64_t sub_25C48EEF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_25C4C8850();

    if (v8)
    {

      type metadata accessor for NXXPCConnection();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_25C4C8840();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_25C48F190(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_25C48F3C4(v19 + 1);
    }

    sub_25C48F658(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for NXXPCConnection();
  v10 = *(v6 + 40);
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
  v11 = sub_25C4C8510();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_25C48F740(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_25C4C8530())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_25C48F190(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A670, &qword_25C4CA6C0);
    v2 = sub_25C4C88D0();
    v16 = v2;
    sub_25C4C8830();
    if (sub_25C4C8860())
    {
      type metadata accessor for NXXPCConnection();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_25C48F3C4(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
        result = sub_25C4C8510();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_25C4C8860());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_25C48F3C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A670, &qword_25C4CA6C0);
  result = sub_25C4C88C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
      result = sub_25C4C8510();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

unint64_t sub_25C48F658(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for NXXPCConnection();
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
  sub_25C4C8510();
  v5 = -1 << *(a2 + 32);
  result = sub_25C4C8820();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_25C48F740(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25C48F3C4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_25C48F928();
      goto LABEL_12;
    }

    sub_25C48FA78(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for NXXPCConnection();
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
  result = sub_25C4C8510();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_25C4C8530();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C48F928()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A670, &qword_25C4CA6C0);
  v2 = *v0;
  v3 = sub_25C4C88B0();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_25C48FA78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A670, &qword_25C4CA6C0);
  result = sub_25C4C88C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);

      result = sub_25C4C8510();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25C48FCF0()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_25C4C8870();

    if (v4)
    {
      v5 = sub_25C48FEF0();

      return v5;
    }

    return 0;
  }

  type metadata accessor for NXXPCConnection();
  v7 = *(v1 + 40);
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
  v8 = sub_25C4C8510();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (sub_25C4C8530())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25C48F928();
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_25C4900CC(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_25C48FEF0()
{
  v1 = *v0;

  v2 = sub_25C4C8840();
  v3 = swift_unknownObjectRetain();
  v4 = sub_25C48F190(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for NXXPCConnection();
  sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);

  v6 = sub_25C4C8510();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_25C490490(&unk_27FC0A3F0, type metadata accessor for NXXPCConnection);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (sub_25C4C8530())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_25C4900CC(v8);
  result = sub_25C4C8530();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25C4900CC(unint64_t result)
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

    v9 = sub_25C4C8810();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      type metadata accessor for NXXPCConnection();
      sub_25C490490(&qword_27FC0A5E0, type metadata accessor for NXXPCConnection);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_25C4C8510() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25C4902B8()
{
  if (qword_27FC0B5D0 != -1)
  {
    swift_once();
  }

  v0 = sub_25C4C7BD0();
  __swift_project_value_buffer(v0, qword_27FC0B5D8);
  v1 = sub_25C4C7BB0();
  v2 = sub_25C4C8720();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25C452000, v1, v2, "Prefs changed", v3, 2u);
    MEMORY[0x25F888630](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25C4840F0();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_25C484738();
  }

  return result;
}

uint64_t sub_25C4903FC()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 63;
  }

  v0 = NXDaemon.description.getter();

  return v0;
}

uint64_t sub_25C490478(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25C490490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C490580()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0B888);
  __swift_project_value_buffer(v0, qword_27FC0B888);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

id sub_25C4905F4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_25C492FF8(a1);

  return v4;
}

uint64_t sub_25C4906A0()
{
  v1 = v0;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_25C4C88F0();

  v50 = 0xD00000000000001ALL;
  v51 = 0x800000025C4D0F10;
  v2 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices;
  swift_beginAccess();
  v47 = *(*&v0[v2] + 16);
  v3 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v3);

  MEMORY[0x25F887A50](0x6F6973736573202CLL, 0xEA00000000003D6ELL);
  v4 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__sessions;
  swift_beginAccess();
  v45 = *(*(v1 + v4) + 16);
  v5 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v5);

  MEMORY[0x25F887A50](171785504, 0xE400000000000000);
  v43 = v1;
  v6 = *(v1 + v2);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(v1 + v2);

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      do
      {
LABEL_8:
        v15 = (*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
        v16 = *v15;
        v17 = v15[1];
        v45 = 0x3A65636976726553;
        v46 = 0xE900000000000020;

        MEMORY[0x25F887A50](v16, v17);

        MEMORY[0x25F887A50](10, 0xE100000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_25C458868(0, *(v13 + 2) + 1, 1, v13);
        }

        v1 = *(v13 + 2);
        v18 = *(v13 + 3);
        if (v1 >= v18 >> 1)
        {
          v13 = sub_25C458868((v18 > 1), v1 + 1, 1, v13);
        }

        v9 &= v9 - 1;
        *(v13 + 2) = v1 + 1;
        v19 = &v13[16 * v1];
        *(v19 + 4) = 0x3A65636976726553;
        *(v19 + 5) = 0xE900000000000020;
      }

      while (v9);
    }
  }

  v20 = *(v43 + v4);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v24 = 1 << *(*(v43 + v4) + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v44 = *(v43 + v4);

  v28 = 0;
  if (v26)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      v45 = v13;

      sub_25C4623E8(&v45);

      v38 = *(v45 + 16);
      if (v38)
      {
        v39 = (v45 + 40);
        do
        {
          v40 = *(v39 - 1);
          v41 = *v39;

          MEMORY[0x25F887A50](v40, v41);

          v39 += 16;
          --v38;
        }

        while (v38);
      }

      return v50;
    }

    v26 = *(v22 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      do
      {
LABEL_21:
        v30 = *(*(v44 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v26)))));
        v45 = 0x3A6E6F6973736553;
        v46 = 0xE900000000000020;
        v31 = v30;
        v32 = [v31 description];
        v33 = sub_25C4C8550();
        v35 = v34;

        MEMORY[0x25F887A50](v33, v35);

        MEMORY[0x25F887A50](10, 0xE100000000000000);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_25C458868(0, *(v13 + 2) + 1, 1, v13);
        }

        v1 = *(v13 + 2);
        v36 = *(v13 + 3);
        if (v1 >= v36 >> 1)
        {
          v13 = sub_25C458868((v36 > 1), v1 + 1, 1, v13);
        }

        v26 &= v26 - 1;

        *(v13 + 2) = v1 + 1;
        v37 = &v13[16 * v1];
        *(v37 + 4) = 0x3A6E6F6973736553;
        *(v37 + 5) = 0xE900000000000020;
      }

      while (v26);
    }
  }

LABEL_32:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_25C490B78()
{
  v1 = v0;
  v2 = sub_25C4C84C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_25C4C84E0();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_27FC0B880 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_28:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_25C4C7BD0();
  __swift_project_value_buffer(v9, qword_27FC0B888);
  v10 = sub_25C4C7BB0();
  v11 = sub_25C4C8720();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25C452000, v10, v11, "Invalidate", v12, 2u);
    MEMORY[0x25F888630](v12, -1, -1);
  }

  v13 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = *(v1 + v13);

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_13:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      [*(*(v14 + 56) + ((v21 << 9) | (8 * v22))) removeDelegate_];
      if (!v17)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_13;
    }
  }

  v23 = *(v1 + v13);
  v24 = MEMORY[0x277D84F98];
  *(v1 + v13) = MEMORY[0x277D84F98];

  v25 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServiceIDs;
  swift_beginAccess();
  v26 = *(v1 + v25);
  *(v1 + v25) = v24;

  v27 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__sessions;
  swift_beginAccess();
  v28 = *(v1 + v27);
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 64);
  v32 = (v29 + 63) >> 6;
  v33 = *(v1 + v27);

  v34 = 0;
  if (v31)
  {
    while (1)
    {
      v35 = v34;
LABEL_23:
      v36 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v37 = *(*(v28 + 56) + ((v35 << 9) | (8 * v36)));
      sub_25C498274();

      if (!v31)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
LABEL_19:
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_27;
    }

    if (v35 >= v32)
    {
      break;
    }

    v31 = *(v28 + 64 + 8 * v35);
    ++v34;
    if (v31)
    {
      v34 = v35;
      goto LABEL_23;
    }
  }

  v38 = *(v1 + v27);
  *(v1 + v27) = v24;
}

void sub_25C490F34(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_25C4C84E0();
  (*(v9 + 8))(v12, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_10;
  }

  v16 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServiceIDs;
  swift_beginAccess();
  v17 = *(v4 + v16);
  if (*(v17 + 16) && (v18 = sub_25C462EC0(a1, a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  v39 = v21;
  swift_endAccess();
  sub_25C491B18(v38, a3);
  v22 = v39;
  swift_beginAccess();

  v23 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v4 + v16);
  *(v4 + v16) = 0x8000000000000000;
  sub_25C4922C0(v22, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + v16) = v37;
  swift_endAccess();
  v25 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices;
  swift_beginAccess();
  if (*(*(v4 + v25) + 16))
  {
    sub_25C462EC0(a1, a2);
    if (v26)
    {
      swift_endAccess();
      return;
    }
  }

  swift_endAccess();
  if (qword_27FC0B880 != -1)
  {
    goto LABEL_16;
  }

LABEL_10:
  v27 = sub_25C4C7BD0();
  __swift_project_value_buffer(v27, qword_27FC0B888);

  v28 = sub_25C4C7BB0();
  v29 = sub_25C4C8720();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_25C458990(a1, a2, v38);
    _os_log_impl(&dword_25C452000, v28, v29, "Start IDS service: serviceID=%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x25F888630](v31, -1, -1);
    MEMORY[0x25F888630](v30, -1, -1);
  }

  v32 = objc_allocWithZone(MEMORY[0x277D18778]);
  v33 = sub_25C4C8540();
  v34 = [v32 initWithService_];

  swift_beginAccess();

  v35 = v34;
  sub_25C49142C(v34, a1, a2);
  swift_endAccess();
  if (v35)
  {
    [v35 addDelegate:v4 queue:v14];
  }
}

uint64_t sub_25C491334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_25C4922C0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_25C462EC0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_25C4925A8();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_25C4637B0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_25C49142C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_25C492148(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_25C462EC0(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_25C49243C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_25C4637B0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_25C491524(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_25C4C84C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__dispatchQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_25C4C84E0();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  v15 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServiceIDs;
  swift_beginAccess();
  v16 = *(v4 + v15);
  if (*(v16 + 16) && (v17 = sub_25C462EC0(a1, a2), (v18 & 1) != 0))
  {
    v33 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();

    sub_25C492D8C(a3);
    v19 = v33;
    if (v33 && *(v33 + 16))
    {

      swift_beginAccess();

      sub_25C491334(v19, a1, a2);
LABEL_14:
      swift_endAccess();
    }
  }

  else
  {
    v33 = 0;
    swift_endAccess();
  }

  swift_beginAccess();

  sub_25C491334(0, a1, a2);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC11NexusDaemon13NXCloudServer__idsServices;
  swift_beginAccess();
  v21 = *(v4 + v20);
  if (!*(v21 + 16))
  {
    goto LABEL_14;
  }

  v22 = sub_25C462EC0(a1, a2);
  if ((v23 & 1) == 0)
  {
    goto LABEL_14;
  }

  v24 = *(*(v21 + 56) + 8 * v22);
  swift_endAccess();
  v25 = qword_27FC0B880;
  v12 = v24;
  if (v25 != -1)
  {
    goto LABEL_17;
  }

LABEL_11:
  v26 = sub_25C4C7BD0();
  __swift_project_value_buffer(v26, qword_27FC0B888);

  v27 = sub_25C4C7BB0();
  v28 = sub_25C4C8720();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_25C458990(a1, a2, v32);
    _os_log_impl(&dword_25C452000, v27, v28, "Stop IDS service: serviceID=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F888630](v30, -1, -1);
    MEMORY[0x25F888630](v29, -1, -1);
  }

  swift_beginAccess();

  sub_25C49142C(0, a1, a2);
  swift_endAccess();
  [v12 removeDelegate_];
}

id sub_25C4919FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25C491B18(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_25C4C8A50();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_25C49293C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25C491BFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A748, &qword_25C4CA728);
  v39 = a2;
  result = sub_25C4C8970();
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
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

uint64_t sub_25C491EA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A750, &unk_25C4CA730);
  v38 = a2;
  result = sub_25C4C8970();
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
      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
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

uint64_t sub_25C492148(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C462EC0(a2, a3);
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
      sub_25C491BFC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25C462EC0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_25C4C8A20();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_25C49243C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_25C4922C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C462EC0(a2, a3);
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
      sub_25C491EA0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_25C462EC0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25C4C8A20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25C4925A8();
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

id sub_25C49243C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A748, &qword_25C4CA728);
  v2 = *v0;
  v3 = sub_25C4C8960();
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

        result = v20;
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

void *sub_25C4925A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A750, &unk_25C4CA730);
  v2 = *v0;
  v3 = sub_25C4C8960();
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

uint64_t sub_25C492718(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A738, &qword_25C4CA720);
  result = sub_25C4C88C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_25C4C8A50();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25C49293C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25C492718(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25C492A5C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25C492B9C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_25C4C8A50();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C492A5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A738, &qword_25C4CA720);
  v2 = *v0;
  v3 = sub_25C4C88B0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

uint64_t sub_25C492B9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A738, &qword_25C4CA720);
  result = sub_25C4C88C0();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_25C4C8A50();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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

uint64_t sub_25C492D8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_25C4C8A50();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25C492A5C();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_25C492E74(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t sub_25C492E74(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_25C4C8810();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_25C4C8A50() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}