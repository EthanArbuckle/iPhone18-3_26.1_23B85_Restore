uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t NoteEditActivityEvent.activityItemDestination(resolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D4417964();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4417434();
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D4417B14();
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR___ActivityEventResolver_object) && ((objc_opt_self(), v16 = swift_dynamicCastObjCClass(), v36 = v10, v37 = a2, v16) || (objc_opt_self(), swift_dynamicCastObjCClass())))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9728);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4435D40;
    v18 = (inited + 32);
    v38 = NoteEditActivityEvent.activityItemIdParts.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
    sub_1D418BC58();
    sub_1D4419BB4();
    v19 = sub_1D4419C14();

    v20 = [v19 ic_sha256];

    if (v20)
    {
      v21 = sub_1D4419C54();
      v23 = v22;

      *v18 = v21;
    }

    else
    {

      v23 = 0;
      *v18 = 0;
    }

    *(inited + 40) = v23;
    sub_1D42D5B58(inited);
    swift_setDeallocating();
    sub_1D42D5CC0(v18);
    sub_1D41766C0(0, &qword_1EC7C9770);
    (*(v13 + 16))(v15, v3, v34);
    v24 = sub_1D441A394();
    sub_1D4417AF4();
    v25 = objc_allocWithZone(ICActivityStreamSelection);
    v26 = sub_1D441A054();

    v27 = sub_1D44173A4();
    v28 = [v25 initWithItemIDs:v26 filter:v24 displayDate:v27];

    (*(v35 + 8))(v12, v36);
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9778) + 48);
    v30 = v37;
    sub_1D4417AB4();
    *(v30 + v29) = v28;
    v31 = type metadata accessor for ActivityStream.Destinations();
    swift_storeEnumTagMultiPayload();
    return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  }

  else
  {
    sub_1D4417AB4();
    (*(v7 + 8))(v9, v6);
    result = sub_1D441ABC4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D42CF990()
{
  v0 = sub_1D4417C84();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D4417C64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D4417A54();
  sub_1D417DFF0(&qword_1EC7C9760, type metadata accessor for ActivityEventResolver);
  sub_1D4417C74();
  (*(v1 + 8))(v3, v0);
  v8 = sub_1D4350924(v7);
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_1D42CFB70(uint64_t a1)
{
  v2 = sub_1D4417494();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = sub_1D4417AC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v12, a1, v9);
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == *MEMORY[0x1E69B7210])
  {
    (*(v10 + 96))(v12, v9);
    v14 = *v12;
    v34 = 0x28746E65726150;
    v35 = 0xE700000000000000;
    v15 = [v14 identifier];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D4419C54();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    MEMORY[0x1DA6D5730](v17, v19);

    MEMORY[0x1DA6D5730](41, 0xE100000000000000);

    return v34;
  }

  if (v13 == *MEMORY[0x1E69B7218])
  {
    (*(v10 + 96))(v12, v9);
    v20 = *v12;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98C8);
    v22 = *(v21 + 64);
    v23 = *(v3 + 32);
    v23(v8, v12 + *(v21 + 48), v2);
    v23(v6, v12 + v22, v2);
    v24 = 0xE000000000000000;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1D441A9C4();

    v34 = 0x28746E65726150;
    v35 = 0xE700000000000000;
    v25 = [v20 identifier];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1D4419C54();
      v24 = v28;
    }

    else
    {
      v27 = 0;
    }

    MEMORY[0x1DA6D5730](v27, v24);

    MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
    sub_1D417DFF0(&qword_1EC7C98D0, MEMORY[0x1E69695A8]);
    v30 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v30);

    MEMORY[0x1DA6D5730](8236, 0xE200000000000000);
    v31 = sub_1D441AD44();
    MEMORY[0x1DA6D5730](v31);

    MEMORY[0x1DA6D5730](41, 0xE100000000000000);

    v29 = v34;
    v32 = *(v3 + 8);
    v32(v6, v2);
    v32(v8, v2);
    return v29;
  }

  result = sub_1D441AD74();
  __break(1u);
  return result;
}

uint64_t sub_1D42CFFB0(void *a1)
{
  [a1 range];
  v1 = sub_1D441A6D4();
  MEMORY[0x1DA6D5730](v1);

  MEMORY[0x1DA6D5730](41, 0xE100000000000000);
  return 0x2874696445;
}

unint64_t sub_1D42D0020(uint64_t a1)
{
  sub_1D4417AC4();
  v2 = MEMORY[0x1E69B7220];
  sub_1D417DFF0(&qword_1EC7C9888, MEMORY[0x1E69B7220]);
  v3 = sub_1D4419B84();
  return sub_1D417E0C8(a1, v3, MEMORY[0x1E69B7220], &qword_1EC7C98A8, v2, MEMORY[0x1E69B7230]);
}

unint64_t sub_1D42D00F4(uint64_t a1)
{
  v2 = sub_1D441A934();

  return sub_1D42D3328(a1, v2);
}

unint64_t sub_1D42D0138(uint64_t a1)
{
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](a1);
  v2 = sub_1D441AF04();

  return sub_1D42D33F0(a1, v2);
}

unint64_t sub_1D42D01A4(uint64_t a1)
{
  v2 = sub_1D44196C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D441AEB4();
  sub_1D441A424();
  sub_1D417CF94(a1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v8, &unk_1EC7CA3B0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D441AED4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D441AED4();
    sub_1D417DFF0(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
    sub_1D4419B94();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_1D441AF04();
  return sub_1D42D345C(a1, v9);
}

unint64_t sub_1D42D03E0(uint64_t a1)
{
  v2 = sub_1D441AEA4();

  return sub_1D42D33F0(a1, v2);
}

unint64_t sub_1D42D0424(uint64_t a1)
{
  sub_1D4417434();
  v2 = MEMORY[0x1E6969530];
  sub_1D417DFF0(&qword_1EC7C97F8, MEMORY[0x1E6969530]);
  v3 = sub_1D4419B84();
  return sub_1D417E0C8(a1, v3, MEMORY[0x1E6969530], &qword_1EC7C9800, v2, MEMORY[0x1E6969550]);
}

uint64_t sub_1D42D0548(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D4417AC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9890);
  v39 = a2;
  result = sub_1D441AC04();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D417DFF0(&qword_1EC7C9888, MEMORY[0x1E69B7220]);
      result = sub_1D4419B84();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D42D0924(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D4417AC4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9880);
  v39 = a2;
  result = sub_1D441AC04();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D417DFF0(&qword_1EC7C9888, MEMORY[0x1E69B7220]);
      result = sub_1D4419B84();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D42D0D00(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D4417494();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9840);
  v43 = a2;
  result = sub_1D441AC04();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    v42 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v22 = (v16 - 1) & v16;
LABEL_15:
      v25 = v21 | (v12 << 6);
      v46 = v22;
      v26 = *(v6 + 72);
      v27 = *(v9 + 48) + v26 * v25;
      if (v43)
      {
        (*v44)(v47, v27, v5);
      }

      else
      {
        (*v40)(v47, v27, v5);
      }

      v28 = *(*(v9 + 56) + 16 * v25);
      v29 = *(*(v9 + 56) + 16 * v25 + 8);
      v45 = v28;
      sub_1D417DFF0(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      result = sub_1D4419B84();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v26 * v19, v47, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v16 = v46;
      *v20 = v45;
      v20[1] = v29;
      ++*(v11 + 16);
      v6 = v41;
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D42D10CC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - v6;
  v7 = sub_1D4417494();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9838);
  v43 = a2;
  result = sub_1D441AC04();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D42D742C(v27 + v28 * v24, v47, &unk_1EC7CA4F0);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D417CF94(v29 + v28 * v24, v47, &unk_1EC7CA4F0);
      }

      sub_1D417DFF0(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      result = sub_1D4419B84();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D42D742C(v47, *(v12 + 56) + v28 * v20, &unk_1EC7CA4F0);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D42D1568(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9780);
  v33 = a2;
  result = sub_1D441AC04();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D417CF84(v24, v34);
      }

      else
      {
        sub_1D42D5D14(v24, v34);
      }

      sub_1D441AEB4();
      sub_1D4419CD4();
      result = sub_1D441AF04();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D417CF84(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D42D1820(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9790);
  result = sub_1D441AC04();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D441AEB4();
      MEMORY[0x1DA6D68D0](v20);
      result = sub_1D441AF04();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D42D1AA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA510);
  v37 = a2;
  result = sub_1D441AC04();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 40 * v20;
      v23 = *v22;
      v38 = *(v22 + 8);
      v24 = *(v22 + 24);
      v25 = *(v22 + 32);
      if ((v37 & 1) == 0)
      {
        v26 = v23;
      }

      result = sub_1D441AEA4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v23;
      *(v16 + 8) = v38;
      *(v16 + 24) = v24;
      *(v16 + 32) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D42D1D4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9830);
  result = sub_1D441AC04();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1D441AEA4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D42D1FBC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D44196C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4B0);
  v48 = a2;
  result = sub_1D441AC04();
  v13 = result;
  if (*(v11 + 16))
  {
    v47 = v5;
    v41 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v45 = v11;
    v46 = (v6 + 48);
    v42 = (v6 + 8);
    v43 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v49 = (v18 - 1) & v18;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(*(v11 + 48) + 8 * v26);
      v28 = *(*(v11 + 56) + 8 * v26);
      if ((v48 & 1) == 0)
      {
      }

      v50 = v28;
      sub_1D441AEB4();
      sub_1D441A424();
      sub_1D417CF94(v27 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v10, &unk_1EC7CA3B0);
      v29 = v47;
      if ((*v46)(v10, 1, v47) == 1)
      {
        sub_1D441AED4();
      }

      else
      {
        v30 = v10;
        v31 = v44;
        (*v43)(v44, v30, v29);
        sub_1D441AED4();
        sub_1D417DFF0(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
        sub_1D4419B94();
        v32 = v31;
        v10 = v30;
        (*v42)(v32, v29);
      }

      result = sub_1D441AF04();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v22 = v50;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v22 = v50;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v27;
      *(*(v13 + 56) + 8 * v21) = v22;
      ++*(v13 + 16);
      v11 = v45;
      v18 = v49;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v11 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1D42D245C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D4417434();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97F0);
  v39 = a2;
  result = sub_1D441AC04();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D417DFF0(&qword_1EC7C97F8, MEMORY[0x1E6969530]);
      result = sub_1D4419B84();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D42D2838(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97E8);
  v33 = a2;
  result = sub_1D441AC04();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1D419FAA8(v24, v34);
      }

      else
      {
        sub_1D42D73C8(v24, v34);
      }

      sub_1D441AEB4();
      sub_1D4419CD4();
      result = sub_1D441AF04();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D419FAA8(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D42D2B24(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_1D441AC04();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_1D441A5D4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1D42D2D8C(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1D4417C84();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97A8);
  v42 = a2;
  result = sub_1D441AC04();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1D441AEB4();
      sub_1D4419CD4();
      result = sub_1D441AF04();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D42D310C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D4417AC4();
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

uint64_t sub_1D42D31C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D4417494();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  result = sub_1D42D742C(a3, v10 + *(*(v11 - 8) + 72) * a1, &unk_1EC7CA4F0);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_1D42D32BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D417CF84(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1D42D3328(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D42D7318(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA6D6350](v9, a1);
      sub_1D42D7374(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D42D33F0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D42D345C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v35 - v8;
  v9 = sub_1D44196C4();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v44 = &v35 - v14;
  v15 = -1 << *(v2 + 32);
  v16 = a2 & ~v15;
  v50 = v2 + 64;
  if ((*(v2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v45 = v11;
    v36 = v13;
    v48 = ~v15;
    v49 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
    v17 = (v12 + 48);
    v43 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
    v38 = (v12 + 8);
    v39 = (v12 + 32);
    v40 = v2;
    v46 = a1;
    v37 = (v12 + 48);
    do
    {
      v18 = *(*(v2 + 48) + 8 * v16);

      if ((sub_1D441A414() & 1) == 0)
      {

        goto LABEL_4;
      }

      v19 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
      v20 = v17;
      v21 = v47;
      sub_1D417CF94(v18 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v47, &unk_1EC7CA3B0);
      v22 = *v20;
      v23 = v45;
      if ((*v20)(v21, 1, v45) != 1)
      {
        v42 = *v39;
        v42(v44, v47, v23);
        v24 = v41;
        sub_1D417CF94(v46 + v43, v41, &unk_1EC7CA3B0);
        v25 = v23;
        if (v22(v24, 1, v23) != 1)
        {
          v27 = v36;
          v42(v36, v24, v23);
          sub_1D417DFF0(&qword_1EC7C9810, MEMORY[0x1E69782D8]);
          if (sub_1D4419BD4())
          {

            v28 = v27;
            v29 = *v38;
            (*v38)(v28, v23);
            v29(v44, v23);
            v2 = v40;
            v17 = v37;
          }

          else
          {
            v30 = v44;
            v31 = sub_1D4419BC4();

            v32 = v27;
            v33 = *v38;
            (*v38)(v32, v25);
            v33(v30, v25);
            v2 = v40;
            v17 = v37;
            if ((v31 & 1) == 0)
            {
              return v16;
            }
          }

          goto LABEL_4;
        }

        (*v38)(v44, v23);
        v21 = v24;
        v2 = v40;
        v20 = v37;
      }

      sub_1D41769C4(v21, &unk_1EC7CA3B0);
      v26 = v22(v18 + v19, 1, v23);

      v17 = v20;
      if (v26 == 1 && v22(v46 + v43, 1, v45) == 1)
      {
        return v16;
      }

LABEL_4:
      v16 = (v16 + 1) & v48;
    }

    while (((*(v50 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

char *sub_1D42D395C()
{
  v1 = v0;
  v33 = sub_1D4417AC4();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9890);
  v3 = *v0;
  v4 = sub_1D441ABF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1D42D3BDC()
{
  v1 = v0;
  v31 = sub_1D4417AC4();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9880);
  v3 = *v0;
  v4 = sub_1D441ABF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1D42D3E50()
{
  v1 = v0;
  v31 = sub_1D4417494();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9848);
  v3 = *v0;
  v4 = sub_1D441ABF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1D42D40C0()
{
  v1 = v0;
  v30 = sub_1D4417494();
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9840);
  v3 = *v0;
  v4 = sub_1D441ABF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; *(*(v22 + 56) + v17) = v33)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      result = v24(v23 + v19, v20, v21);
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

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1D42D4338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - v3;
  v34 = sub_1D4417494();
  v38 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9838);
  v5 = *v0;
  v6 = sub_1D441ABF4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v37 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v38 + 32;
    v32 = v38 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v38;
        v23 = *(v38 + 72) * v21;
        v24 = v34;
        (*(v38 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1D417CF94(*(v5 + 56) + v26, v35, &unk_1EC7CA4F0);
        v27 = v37;
        (*(v22 + 32))(*(v37 + 48) + v23, v17, v24);
        result = sub_1D42D742C(v25, *(v27 + 56) + v26, &unk_1EC7CA4F0);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        v7 = v37;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1D42D4664()
{
  v1 = v0;
  v2 = sub_1D4417494();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9860);
  v5 = *v0;
  v6 = sub_1D441ABF4();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v40 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    v36 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v38;
        v22 = v39;
        v23 = *(v39 + 72) * v20;
        v24 = v37;
        (*(v39 + 16))(v37, *(v5 + 48) + v23, v38);
        v25 = *(v5 + 56);
        v26 = 16 * v20;
        v27 = (v25 + 16 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v40;
        (*(v22 + 32))(*(v40 + 48) + v23, v24, v21);
        v31 = (*(v30 + 56) + v26);
        v5 = v36;
        *v31 = v28;
        v31[1] = v29;

        v15 = v41;
      }

      while (v41);
    }

    v18 = v11;
    v7 = v40;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1D42D48F4()
{
  v1 = v0;
  v31 = sub_1D4417494();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9868);
  v3 = *v0;
  v4 = sub_1D441ABF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1D42D4B64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9780);
  v2 = *v0;
  v3 = sub_1D441ABF4();
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
        sub_1D42D5D14(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D417CF84(v25, (*(v4 + 56) + v22));
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

void *sub_1D42D4D08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9788);
  v2 = *v0;
  v3 = sub_1D441ABF4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_1D42D4E6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9790);
  v2 = *v0;
  v3 = sub_1D441ABF4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_1D42D4FB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA510);
  v2 = *v0;
  v3 = sub_1D441ABF4();
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
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v19;
        *(v23 + 8) = v22;
        *(v23 + 24) = v20;
        *(v23 + 32) = v21;
        v24 = v19;
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

void *sub_1D42D513C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9830);
  v2 = *v0;
  v3 = sub_1D441ABF4();
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

void *sub_1D42D5298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4B0);
  v2 = *v0;
  v3 = sub_1D441ABF4();
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

void *sub_1D42D53FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97E8);
  v2 = *v0;
  v3 = sub_1D441ABF4();
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
        v22 = 40 * v17;
        sub_1D42D73C8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D419FAA8(v25, *(v4 + 56) + v22);
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

void *sub_1D42D55CC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1D441ABF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

char *sub_1D42D5720()
{
  v1 = v0;
  v35 = sub_1D4417C84();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97A8);
  v3 = *v0;
  v4 = sub_1D441ABF4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1D42D59A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97C8);
  v2 = *v0;
  v3 = sub_1D441ABF4();
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D42D5B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9878);
    v3 = sub_1D441A994();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1D441AEB4();

      sub_1D4419CD4();
      result = sub_1D441AF04();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1D441AD84();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D42D5D14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1D42D5D94(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_1D441A8C4();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_1D441A994();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_1D441A8C4();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x1DA6D6410](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_1D441A5D4();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1D41766C0(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_1D441A5E4();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_1D441A5D4();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_1D41766C0(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_1D441A5E4();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1D42D6080(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9798);
    v3 = sub_1D441A994();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1D4419C54();
      sub_1D441AEB4();
      v27 = v7;
      sub_1D4419CD4();
      v8 = sub_1D441AF04();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1D4419C54();
        v18 = v17;
        if (v16 == sub_1D4419C54() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1D441AD84();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D42D6298(unint64_t a1)
{
  v2 = sub_1D44196C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v61 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v64 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - v15;
  v17 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v57 = v6;
  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9808);
    v63 = sub_1D441A994();
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v63 = MEMORY[0x1E69E7CD0];
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v17)
    {
LABEL_5:
      v20 = *(v19 + 16);
      v17 = v63;
      if (!v20)
      {
        return v17;
      }

      goto LABEL_9;
    }
  }

  v20 = sub_1D441A8C4();
  v17 = v63;
  if (v20)
  {
LABEL_9:
    v6 = 0;
    v68 = v17 + 56;
    v55 = a1 & 0xC000000000000001;
    v50 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = a1 + 32;
    v65 = (v3 + 48);
    v21 = (v3 + 32);
    v58 = (v3 + 8);
    v3 = &unk_1D44360C0;
    v53 = v16;
    v52 = a1;
    v54 = v20;
    v59 = v21;
    while (1)
    {
      if (v55)
      {
        v69 = MEMORY[0x1DA6D6410](v6, a1);
        v23 = __OFADD__(v6++, 1);
        if (v23)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v6 >= *(v50 + 16))
        {
          goto LABEL_42;
        }

        v69 = *(v49 + 8 * v6);

        v23 = __OFADD__(v6++, 1);
        if (v23)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v18 = sub_1D441A8C4();
          goto LABEL_3;
        }
      }

      v56 = v6;
      sub_1D441AEB4();
      v24 = v69;
      v67 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
      sub_1D441A424();
      v60 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
      sub_1D417CF94(v24 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v16, &unk_1EC7CA3B0);
      v25 = *v65;
      if ((*v65)(v16, 1, v2) == 1)
      {
        sub_1D441AED4();
      }

      else
      {
        v26 = v51;
        (*v59)(v51, v16, v2);
        sub_1D441AED4();
        sub_1D417DFF0(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
        sub_1D4419B94();
        (*v58)(v26, v2);
      }

      v27 = sub_1D441AF04();
      v28 = -1 << *(v17 + 32);
      v16 = v27 & ~v28;
      v29 = v16 >> 6;
      v30 = *(v68 + 8 * (v16 >> 6));
      v31 = 1 << v16;
      if (((1 << v16) & v30) != 0)
      {
        break;
      }

LABEL_37:
      v6 = v56;
      *(v68 + 8 * v29) = v30 | v31;
      *(*(v17 + 48) + 8 * v16) = v69;
      v45 = *(v17 + 16);
      v23 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      v22 = v54;
      if (v23)
      {
        goto LABEL_41;
      }

      *(v17 + 16) = v46;
LABEL_11:
      v16 = v53;
      if (v6 == v22)
      {
        return v17;
      }
    }

    v66 = ~v28;
    while (1)
    {
      v32 = *(*(v17 + 48) + 8 * v16);

      if (sub_1D441A414())
      {
        v33 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
        v34 = v64;
        sub_1D417CF94(v32 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v64, &unk_1EC7CA3B0);
        if (v25(v34, 1, v2) != 1)
        {
          v35 = *v59;
          (*v59)(v61, v64, v2);
          v36 = v2;
          v37 = v62;
          sub_1D417CF94(v69 + v60, v62, &unk_1EC7CA3B0);
          v38 = v37;
          v2 = v36;
          if (v25(v38, 1, v36) != 1)
          {
            v40 = v61;
            v41 = v57;
            v35(v57, v62, v36);
            sub_1D417DFF0(&qword_1EC7C9810, MEMORY[0x1E69782D8]);
            if (sub_1D4419BD4())
            {

              v42 = *v58;
              (*v58)(v41, v36);
              v42(v40, v36);
              v17 = v63;
              v3 = &unk_1D44360C0;
            }

            else
            {
              v43 = sub_1D4419BC4();

              v44 = *v58;
              (*v58)(v41, v36);
              v44(v40, v36);
              v17 = v63;
              v3 = &unk_1D44360C0;
              if ((v43 & 1) == 0)
              {
                goto LABEL_10;
              }
            }

            goto LABEL_24;
          }

          (*v58)(v61, v36);
          v34 = v62;
          v3 = &unk_1D44360C0;
        }

        sub_1D41769C4(v34, &unk_1EC7CA3B0);
        v39 = v25(v32 + v33, 1, v2);

        v17 = v63;
        if (v39 == 1 && v25(v69 + v60, 1, v2) == 1)
        {
LABEL_10:

          a1 = v52;
          v22 = v54;
          v6 = v56;
          goto LABEL_11;
        }
      }

      else
      {
      }

LABEL_24:
      v16 = (v16 + 1) & v66;
      v29 = v16 >> 6;
      v30 = *(v68 + 8 * (v16 >> 6));
      v31 = 1 << v16;
      if ((v30 & (1 << v16)) == 0)
      {
        a1 = v52;
        goto LABEL_37;
      }
    }
  }

  return v17;
}

unint64_t sub_1D42D6A98(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_1D441A8C4();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9818);
      result = sub_1D441A994();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1D441A8C4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x1DA6D6410](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_1D44198E4();
    sub_1D417DFF0(&qword_1EC7C9820, MEMORY[0x1E69921C8]);
    result = sub_1D4419B84();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_1D417DFF0(&qword_1EC7C9828, MEMORY[0x1E69921C8]);
      do
      {
        result = sub_1D4419BE4();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1D42D6D2C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1D441A8C4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97D0);
      v3 = sub_1D441A994();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1D441A8C4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1DA6D6410](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1D441A5D4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for ThumbnailKey();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1D441A5E4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1D441A5D4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for ThumbnailKey();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1D441A5E4();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1D42D6FF8(uint64_t a1)
{
  v2 = sub_1D4417C84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C97B0);
    v9 = sub_1D441A994();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D417DFF0(&qword_1EC7C97B8, MEMORY[0x1E69B72D8]);
      v16 = sub_1D4419B84();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D417DFF0(&qword_1EC7C97C0, MEMORY[0x1E69B72D8]);
          v23 = sub_1D4419BE4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D42D73C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D42D742C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D42D7494()
{
  result = qword_1EC7C98A0;
  if (!qword_1EC7C98A0)
  {
    sub_1D41766C0(255, &qword_1EC7C9898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C98A0);
  }

  return result;
}

uint64_t sub_1D42D74FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D42D7508(void *a1)
{
  sub_1D4417B14();

  return sub_1D42CFFB0(a1);
}

uint64_t sub_1D42D757C()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EC7C98D8);
  __swift_project_value_buffer(v0, qword_1EC7C98D8);
  return sub_1D4418134();
}

void sub_1D42D75C8()
{
  v313 = *MEMORY[0x1E69E9840];
  v2 = sub_1D4419414();
  v293 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v290 = (&v267 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v292 = sub_1D44194A4();
  v291 = *(v292 - 8);
  v4 = MEMORY[0x1EEE9AC00](v292);
  v288 = &v267 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v289 = &v267 - v6;
  v287 = sub_1D4417494();
  v286 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v285 = &v267 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = sub_1D4417434();
  v278 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v277 = &v267 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_1D4417054();
  v275 = *(v276 - 1);
  MEMORY[0x1EEE9AC00](v276);
  v10 = &v267 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9900);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v296 = &v267 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v280 = &v267 - v14;
  p_isa = sub_1D4418034();
  v298 = *(p_isa - 1);
  v15 = MEMORY[0x1EEE9AC00](p_isa);
  v281 = &v267 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v294 = &v267 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v273 = &v267 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v283 = &v267 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v284 = &v267 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v267 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v267 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v267 - v31;
  v33 = sub_1D4417234();
  v301 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v297 = &v267 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v267 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v282 = &v267 - v39;
  if (![v0 needToGeneratePreviews])
  {
    return;
  }

  v269 = v2;
  v272 = v38;
  v300 = v33;
  v40 = [v0 attachment];
  if (!v40)
  {
    __break(1u);
    goto LABEL_114;
  }

  v41 = v40;
  v42 = [v40 shortLoggingDescription];

  v270 = sub_1D4419C54();
  v274 = v43;

  v295 = v0;
  v44 = [v0 attachment];
  if (!v44)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v45 = v44;
  v46 = [v44 subAttachments];

  if (v46)
  {
    sub_1D41766C0(0, &qword_1EDE32920);
    sub_1D42DA2E8();
    v47 = sub_1D441A064();
  }

  else if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D441A8C4())
  {
    sub_1D42D5D70(MEMORY[0x1E69E7CC0]);
    v47 = v266;
  }

  else
  {
    v47 = MEMORY[0x1E69E7CD0];
  }

  v48 = v1;
  v49 = v300;
  if ((v47 & 0xC000000000000001) != 0)
  {
    if (sub_1D441A8C4() != 1)
    {
      goto LABEL_16;
    }
  }

  else if (*(v47 + 16) != 1)
  {
LABEL_16:
    v59 = v301;
LABEL_22:
    v60 = v295;
    goto LABEL_23;
  }

  v50 = sub_1D4389220(v47);
  if (!v50)
  {
    goto LABEL_16;
  }

  v51 = v50;
  v52 = [v50 media];
  if (!v52)
  {

    v59 = v301;
    v301[7](v32, 1, 1, v49);
LABEL_21:
    sub_1D41769C4(v32, &qword_1EC7C9908);
    goto LABEL_22;
  }

  v53 = v52;
  v54 = [v52 mediaURL];

  if (v54)
  {
    sub_1D4417214();

    v55 = v301;
    v56 = v301[7];
    v57 = v30;
    v58 = 0;
  }

  else
  {
    v55 = v301;
    v56 = v301[7];
    v57 = v30;
    v58 = 1;
  }

  v49 = v300;
  v56(v57, v58, 1, v300);
  sub_1D42DA6E8(v30, v32);
  if ((v55[6])(v32, 1, v49) == 1)
  {

    v59 = v55;
    v48 = v1;
    goto LABEL_21;
  }

  v267 = v51;
  v271 = v47;
  v153 = v282;
  (v55[4])(v282, v32, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D40;
  v155 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v156 = v155;
  sub_1D42D6080(inited);
  swift_setDeallocating();
  v157 = v153;
  sub_1D42DA77C(inited + 32);
  sub_1D4417194();
  if (v1)
  {

    v49 = v300;
    (v55[1])(v153, v300);
    v158 = v280;
    v298[7](v280, 1, 1, p_isa);
    v59 = v55;
    v48 = 0;
  }

  else
  {
    v48 = 0;

    v158 = v280;
    sub_1D4417044();
    (*(v275 + 1))(v10, v276);
    v222 = v298;
    v223 = p_isa;
    if ((v298[6])(v158, 1, p_isa) != 1)
    {
      v227 = v273;
      (v222[4])(v273, v158, v223);
      v228 = v294;
      sub_1D4418014();
      LODWORD(v280) = sub_1D4418024();
      v229 = v228;
      v230 = v222[1];
      (v230)(v229, v223);
      v49 = v300;
      v59 = v301;
      v60 = v295;
      if (v280)
      {
        v298 = v230;
        v231 = [v295 attachment];
        if (v231)
        {
          v232 = v60;
          v233 = v231;
          v234 = sub_1D44171C4();
          v235 = [v233 addMediaWithURL:v234 updateFileBasedAttributes:0];

          v236 = [v232 attachment];
          if (v236)
          {
            v237 = v236;
            v238 = v277;
            sub_1D4417404();
            v239 = sub_1D44173A4();
            (*(v278 + 8))(v238, v279);
            [v237 setPreviewUpdateDate_];

            v240 = [v232 &selRef_URLProtocol_didLoadData_ + 1];
            if (v240)
            {
              v241 = v240;

              v242 = [v241 managedObjectContext];

              [v242 ic_save];
              v243 = v273;
              if (qword_1EC7C9160 != -1)
              {
                swift_once();
              }

              v244 = sub_1D44181B4();
              __swift_project_value_buffer(v244, qword_1EC7C98D8);
              v245 = v295;
              v246 = v235;
              v247 = sub_1D44181A4();
              v248 = sub_1D441A154();
              if (!os_log_type_enabled(v247, v248))
              {

                (v298)(v243, p_isa);
                (v59[1])(v282, v300);
                return;
              }

              v268 = 0;
              v249 = swift_slowAlloc();
              v297 = swift_slowAlloc();
              aBlock = v297;
              *v249 = 136315394;
              v250 = [v245 attachment];

              if (v250)
              {
                v251 = [v250 shortLoggingDescription];

                v252 = sub_1D4419C54();
                v254 = v253;

                v255 = sub_1D42E9410(v252, v254, &aBlock);

                *(v249 + 4) = v255;
                *(v249 + 12) = 2080;
                v256 = [v246 shortLoggingDescription];
                v257 = sub_1D4419C54();
                v259 = v258;

                v260 = sub_1D42E9410(v257, v259, &aBlock);

                *(v249 + 14) = v260;
                _os_log_impl(&dword_1D4171000, v247, v248, "Created fallback media {attachment: %s, media: %s}", v249, 0x16u);
                v261 = v297;
                swift_arrayDestroy();
                MEMORY[0x1DA6D8690](v261, -1, -1);
                MEMORY[0x1DA6D8690](v249, -1, -1);

                (v298)(v273, p_isa);
                (v301[1])(v282, v300);
                return;
              }

              goto LABEL_128;
            }

LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      (v230)(v227, v223);
      (v59[1])(v282, v49);
      goto LABEL_93;
    }

    v59 = v301;
    v49 = v300;
    (v301[1])(v157, v300);
  }

  v60 = v295;
  sub_1D41769C4(v158, &qword_1EC7C9900);
LABEL_93:
  v47 = v271;
LABEL_23:
  v61 = [v60 asset];
  if (!v61)
  {

    if (qword_1EC7C9160 != -1)
    {
      swift_once();
    }

    v83 = sub_1D44181B4();
    __swift_project_value_buffer(v83, qword_1EC7C98D8);
    v84 = v274;

    v85 = sub_1D44181A4();
    v86 = sub_1D441A164();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock = v88;
      *v87 = 136315138;
      v89 = sub_1D42E9410(v270, v84, &aBlock);

      *(v87 + 4) = v89;
      _os_log_impl(&dword_1D4171000, v85, v86, "Failed to generate fallback audio: No asset - attachment: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x1DA6D8690](v88, -1, -1);
      MEMORY[0x1DA6D8690](v87, -1, -1);
    }

    else
    {
    }

    sub_1D42DA694();
    swift_allocError();
    *v110 = 1;
    swift_willThrow();
    return;
  }

  v62 = v61;
  v271 = v47;
  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (v63)
  {
    v64 = v63;
    v65 = v62;
    v66 = [v64 URL];
    sub_1D4417214();

    v275 = v59[7];
    v275(v27, 0, 1, v49);
    sub_1D41769C4(v27, &qword_1EC7C9908);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_1D4435D40;
    *(v67 + 32) = sub_1D4419C54();
    *(v67 + 40) = v68;
    *(v67 + 72) = MEMORY[0x1E69E6370];
    *(v67 + 48) = 1;
    sub_1D42EA814(v67);
    swift_setDeallocating();
    sub_1D41769C4(v67 + 32, &unk_1EC7CB710);
    v69 = sub_1D4419B54();

    v70 = [objc_opt_self() compositionWithURLAssetInitializationOptions_];

    v71 = *MEMORY[0x1E6960CC0];
    v72 = *(MEMORY[0x1E6960CC0] + 8);
    v73 = *(MEMORY[0x1E6960CC0] + 12);
    v74 = *(MEMORY[0x1E6960CC0] + 16);
    [v65 duration];
    v75 = aBlock;
    v76 = v309;
    v77 = v308;
    v306 = 0;
    aBlock = v71;
    v308 = __PAIR64__(v73, v72);
    v309 = v74;
    v310 = v75;
    v311 = v77;
    v312 = v76;
    v302 = v71;
    v303 = v72;
    v304 = v73;
    v49 = v65;
    v305 = v74;
    v78 = [v70 insertTimeRange:&aBlock ofAsset:v65 atTime:&v302 error:&v306];
    v79 = v306;
    if (!v78)
    {
LABEL_38:
      v95 = v79;

      v96 = sub_1D4417104();

      swift_willThrow();
      if (qword_1EC7C9160 != -1)
      {
        swift_once();
      }

      v97 = sub_1D44181B4();
      __swift_project_value_buffer(v97, qword_1EC7C98D8);
      v98 = v274;

      v99 = v96;
      v100 = sub_1D44181A4();
      v101 = sub_1D441A164();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v301 = v49;
        v104 = v103;
        v105 = swift_slowAlloc();
        aBlock = v105;
        *v102 = 138412546;
        v106 = v96;
        v107 = _swift_stdlib_bridgeErrorToNSError();
        *(v102 + 4) = v107;
        *v104 = v107;
        *(v102 + 12) = 2080;
        v108 = sub_1D42E9410(v270, v98, &aBlock);

        *(v102 + 14) = v108;
        _os_log_impl(&dword_1D4171000, v100, v101, "Failed to generate fallback audio: Creating AVComposotion failed with error: %@ attachment: %s", v102, 0x16u);
        sub_1D41769C4(v104, &qword_1EC7C9918);
        v109 = v104;
        v49 = v301;
        MEMORY[0x1DA6D8690](v109, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x1DA6D8690](v105, -1, -1);
        MEMORY[0x1DA6D8690](v102, -1, -1);
      }

      else
      {
      }

      swift_willThrow();
      return;
    }

    v280 = v62;
    v80 = v306;
    [v70 copy];
    sub_1D441A804();

    swift_unknownObjectRelease();
    sub_1D41766C0(0, &qword_1EC7C9928);
    swift_dynamicCast();
    v81 = v302;
    v49 = v300;
    v60 = v295;
    v82 = v275;
  }

  else
  {
    v82 = v59[7];
    v82(v27, 1, 1, v49);
    v280 = v62;
    v81 = v62;
    sub_1D41769C4(v27, &qword_1EC7C9908);
  }

  v282 = [objc_allocWithZone(MEMORY[0x1E6987E60]) initWithAsset:v81 presetName:*MEMORY[0x1E69872D0]];
  if (!v282)
  {

    if (qword_1EC7C9160 != -1)
    {
      swift_once();
    }

    v111 = sub_1D44181B4();
    __swift_project_value_buffer(v111, qword_1EC7C98D8);
    v112 = v274;

    v113 = sub_1D44181A4();
    v114 = sub_1D441A164();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = v81;
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      aBlock = v117;
      *v116 = 136315138;
      v118 = sub_1D42E9410(v270, v112, &aBlock);

      *(v116 + 4) = v118;
      _os_log_impl(&dword_1D4171000, v113, v114, "Failed to generate fallback audio: Creating AVAssetExportSession failed - attachment: %s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      MEMORY[0x1DA6D8690](v117, -1, -1);
      v119 = v116;
      v81 = v115;
      MEMORY[0x1DA6D8690](v119, -1, -1);
    }

    else
    {
    }

    sub_1D42DA694();
    swift_allocError();
    *v159 = 2;
    swift_willThrow();

    return;
  }

  v273 = v81;
  v90 = [v60 attachment];
  if (!v90)
  {
    goto LABEL_115;
  }

  v91 = v90;
  v79 = [v90 media];

  v92 = MEMORY[0x1E6987478];
  if (v79)
  {

    v93 = [v60 attachment];
    if (!v93)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v94 = v93;
    v70 = [v93 media];

    if (!v70)
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  else
  {
    v120 = [v60 attachment];
    if (!v120)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v121 = v120;
    v122 = [objc_opt_self() newMediaWithAttachment_];

    v123 = v122;
    v124 = [v60 attachment];
    if (!v124)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v125 = v124;
    v126 = [v124 userTitle];

    v276 = v123;
    v275 = v82;
    if (!v126)
    {
      v127 = [v60 attachment];
      if (!v127)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v128 = v127;
      v126 = [v127 title];

      if (!v126)
      {
        v129 = [v60 attachment];
        if (!v129)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v130 = v129;
        v126 = [v129 defaultTitle];
      }
    }

    sub_1D4419C54();

    v131 = sub_1D4419C14();

    v132 = [v131 ic_sanitizedFilenameString];

    v133 = sub_1D4419C54();
    v135 = v134;

    aBlock = v133;
    v308 = v135;

    MEMORY[0x1DA6D5730](46, 0xE100000000000000);

    v137 = aBlock;
    v136 = v308;
    sub_1D4419C54();
    v138 = v298;
    v139 = p_isa;
    v298[7](v296, 1, 1, p_isa);
    v140 = v281;
    sub_1D4417FC4();
    v141 = sub_1D4417FE4();
    v143 = v142;
    (v138[1])(v140, v139);
    if (!v143)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    aBlock = v137;
    v308 = v136;

    MEMORY[0x1DA6D5730](v141, v143);

    v144 = sub_1D4419C14();

    v70 = v276;
    [v276 setFilename_];

    v49 = v300;
    v60 = v295;
    v82 = v275;
    v92 = MEMORY[0x1E6987478];
  }

  v145 = [v60 attachment];
  if (!v145)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v146 = v145;
  v147 = [v145 account];

  v148 = v284;
  v276 = v70;
  v268 = v48;
  if (v147)
  {
    v149 = [v147 temporaryDirectoryURL];

    if (v149)
    {
      v150 = v283;
      sub_1D4417214();

      v151 = 0;
    }

    else
    {
      v151 = 1;
      v150 = v283;
    }

    v152 = v301;
    v82(v150, v151, 1, v49);
    sub_1D42DA6E8(v150, v148);
    if ((v152[6])(v148, 1, v49) != 1)
    {
      (v152[4])(v272, v148, v49);
      goto LABEL_73;
    }
  }

  else
  {
    v152 = v301;
    v82(v284, 1, 1, v49);
  }

  v160 = NSTemporaryDirectory();
  sub_1D4419C54();

  sub_1D44171A4();

  if ((v152[6])(v148, 1, v49) != 1)
  {
    sub_1D41769C4(v148, &qword_1EC7C9908);
  }

LABEL_73:
  v161 = v285;
  sub_1D4417484();
  sub_1D4417444();
  (*(v286 + 8))(v161, v287);
  v162 = *v92;
  sub_1D4419C54();
  v163 = v298;
  v164 = p_isa;
  v298[7](v296, 1, 1, p_isa);
  v165 = v294;
  sub_1D4417FC4();
  v166 = v297;
  sub_1D44171D4();

  (v163[1])(v165, v164);
  v167 = sub_1D44171C4();
  v168 = v282;
  [v282 setOutputURL_];

  [v168 setOutputFileType_];
  v169 = dispatch_semaphore_create(0);
  v170 = swift_allocObject();
  *(v170 + 16) = v169;
  v311 = sub_1D42DA758;
  v312 = v170;
  aBlock = MEMORY[0x1E69E9820];
  v308 = 1107296256;
  v309 = sub_1D417BEE4;
  v310 = &block_descriptor;
  v171 = _Block_copy(&aBlock);
  v172 = v169;

  [v168 exportAsynchronouslyWithCompletionHandler_];
  _Block_release(v171);
  v173 = v288;
  sub_1D4419494();
  v174 = v290;
  *v290 = 60;
  v175 = v293;
  v176 = v269;
  (*(v293 + 104))(v174, *MEMORY[0x1E69E7F48], v269);
  v177 = v289;
  MEMORY[0x1DA6D4EF0](v173, v174);
  (*(v175 + 8))(v174, v176);
  v178 = *(v291 + 8);
  v179 = v292;
  v178(v173, v292);
  sub_1D441A4C4();
  v178(v177, v179);
  if (sub_1D4419424())
  {
    v180 = [v168 status];
    v181 = v301;
    if (v180 == 3)
    {
      v182 = sub_1D44171C4();
      aBlock = 0;
      v183 = v276;
      v184 = [v276 writeDataFromFileURL:v182 error:&aBlock];

      if (!v184)
      {
        v224 = aBlock;

        sub_1D4417104();

        swift_willThrow();
        v225 = v181[1];
        v226 = v300;
        (v225)(v166, v300);
        (v225)(v272, v226);
        return;
      }

      v185 = aBlock;
      v186 = v295;
      v187 = [v295 attachment];
      v188 = v300;
      if (v187)
      {
        v189 = v187;
        v190 = v277;
        sub_1D4417404();
        v191 = sub_1D44173A4();
        (*(v278 + 8))(v190, v279);
        [v189 setPreviewUpdateDate_];

        v192 = [v186 attachment];
        if (v192)
        {
          v193 = v192;

          v194 = [v193 managedObjectContext];

          [v194 ic_save];
          v195 = v301[1];
          (v195)(v166, v188);
          (v195)(v272, v188);
          return;
        }

        goto LABEL_123;
      }

LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v207 = v276;
    if (qword_1EC7C9160 != -1)
    {
      swift_once();
    }

    v208 = sub_1D44181B4();
    __swift_project_value_buffer(v208, qword_1EC7C98D8);
    v209 = v168;

    v210 = sub_1D44181A4();
    v211 = sub_1D441A164();

    v212 = os_log_type_enabled(v210, v211);
    v213 = v300;
    p_isa = &v172->isa;
    if (v212)
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      aBlock = v216;
      *v214 = 138412546;
      v217 = [v209 error];
      if (v217)
      {
        v217 = _swift_stdlib_bridgeErrorToNSError();
        v218 = v217;
      }

      else
      {
        v218 = 0;
      }

      *(v214 + 4) = v217;
      *v215 = v218;
      *(v214 + 12) = 2080;
      v262 = sub_1D42E9410(v270, v274, &aBlock);

      *(v214 + 14) = v262;
      _os_log_impl(&dword_1D4171000, v210, v211, "Failed to generate fallback audio: Export session failed with error: %@ - attachment: %s", v214, 0x16u);
      sub_1D41769C4(v215, &qword_1EC7C9918);
      MEMORY[0x1DA6D8690](v215, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v216);
      MEMORY[0x1DA6D8690](v216, -1, -1);
      MEMORY[0x1DA6D8690](v214, -1, -1);

      v213 = v300;
      v181 = v301;
      v207 = v276;
    }

    else
    {
    }

    v263 = [v209 error];
    sub_1D42DA694();
    swift_allocError();
    *v264 = v263;
    swift_willThrow();

    v265 = v181[1];
    (v265)(v297, v213);
    (v265)(v272, v213);
  }

  else
  {
    p_isa = &v172->isa;

    v196 = v301;
    if (qword_1EC7C9160 != -1)
    {
      swift_once();
    }

    v197 = sub_1D44181B4();
    __swift_project_value_buffer(v197, qword_1EC7C98D8);
    v198 = v274;

    v199 = sub_1D44181A4();
    v200 = sub_1D441A164();

    v201 = os_log_type_enabled(v199, v200);
    v202 = v300;
    if (v201)
    {
      v203 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      aBlock = v204;
      *v203 = 136315138;
      v205 = sub_1D42E9410(v270, v198, &aBlock);

      *(v203 + 4) = v205;
      _os_log_impl(&dword_1D4171000, v199, v200, "Failed to generate fallback audio: timed out - attachment: %s", v203, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v204);
      MEMORY[0x1DA6D8690](v204, -1, -1);
      v206 = v203;
      v166 = v297;
      MEMORY[0x1DA6D8690](v206, -1, -1);
    }

    else
    {
    }

    v219 = v282;
    [v282 cancelExport];
    sub_1D42DA694();
    swift_allocError();
    *v220 = 3;
    swift_willThrow();

    v221 = v196[1];
    (v221)(v166, v202);
    (v221)(v272, v202);
  }
}

uint64_t sub_1D42D9D24(void *a1)
{
  v1 = a1;
  sub_1D42D75C8();

  return 1;
}

uint64_t sub_1D42D9DB0(void *a1)
{
  v1 = a1;
  v2 = ICAttachmentAudioModel.needToGeneratePreviews.getter();

  return v2 & 1;
}

uint64_t ICAttachmentAudioModel.needToGeneratePreviews.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  result = [v0 attachment];
  if (!result)
  {
    __break(1u);
    goto LABEL_30;
  }

  v5 = result;
  v6 = [result parentAttachment];

  if (!v6)
  {
    result = [v0 attachment];
    if (result)
    {
      v7 = result;
      v8 = [result isBeingEditedLocallyOnDevice];

      if (v8)
      {
        return 0;
      }

      result = [v0 attachment];
      if (result)
      {
        v9 = result;
        v10 = [result subAttachments];

        if (v10)
        {
          sub_1D41766C0(0, &qword_1EDE32920);
          sub_1D42DA2E8();
          v11 = sub_1D441A064();

          if ((v11 & 0xC000000000000001) == 0)
          {
LABEL_25:
            if (!*(v11 + 16))
            {
              goto LABEL_26;
            }

            goto LABEL_13;
          }
        }

        else if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D441A8C4())
        {
          sub_1D42D5D70(MEMORY[0x1E69E7CC0]);
          v11 = v19;
          if ((v19 & 0xC000000000000001) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v11 = MEMORY[0x1E69E7CD0];
          if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) == 0)
          {
            goto LABEL_25;
          }
        }

        if (!sub_1D441A8C4())
        {
LABEL_26:

          return 0;
        }

LABEL_13:
        result = [v0 attachment];
        if (result)
        {
          v12 = result;
          v13 = [result media];

          if (v13)
          {
            v14 = [v13 hasFile];
          }

          else
          {
            v14 = 0;
          }

          result = [v0 attachment];
          if (result)
          {
            v15 = result;

            v16 = [v15 previewUpdateDate];

            if (v16)
            {
              sub_1D44173F4();

              v17 = sub_1D4417434();
              (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
              sub_1D41769C4(v3, &qword_1EC7C98F0);
              result = 1;
              if ((v14 & 1) == 0)
              {
                return result;
              }
            }

            else
            {
              v18 = sub_1D4417434();
              (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
              sub_1D41769C4(v3, &qword_1EC7C98F0);
              result = 1;
              if (!v14)
              {
                return result;
              }
            }

            return v16 == 0;
          }

LABEL_33:
          __break(1u);
          return result;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return 0;
}

id sub_1D42DA16C(void *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if ([a1 synchronouslyGenerateFallbackMediaDataIfNecessaryAndReturnError_])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_1D4417104();

  return swift_willThrow();
}

void sub_1D42DA210(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 attachment];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 shortLoggingDescription];

    v6 = sub_1D4419C54();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D42DA29C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = _sSo22ICAttachmentAudioModelC7NotesUIE16generatePreviews2inSbSo11NSOperationCSg_tF_0();

  return a1 & 1;
}

unint64_t sub_1D42DA2E8()
{
  result = qword_1EC7C98F8;
  if (!qword_1EC7C98F8)
  {
    sub_1D41766C0(255, &qword_1EDE32920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C98F8);
  }

  return result;
}

uint64_t _sSo22ICAttachmentAudioModelC7NotesUIE16generatePreviews2inSbSo11NSOperationCSg_tF_0()
{
  result = [v0 attachment];
  if (result)
  {
    v2 = result;
    v3 = [result managedObjectContext];

    if (v3)
    {
      MEMORY[0x1EEE9AC00](v4);
      sub_1D441A564();
    }

    return 1;
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

unint64_t sub_1D42DA694()
{
  result = qword_1EC7C9910;
  if (!qword_1EC7C9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9910);
  }

  return result;
}

uint64_t sub_1D42DA6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D42DA77C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7NotesUI5Error33_E233A9B0DBFA2241BC1FDFCE6940E375LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D42DA840(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D42DA89C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D42DA90C(char a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v5 = sub_1D417DAA4(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v20 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D42D3E50();
        v9 = v20;
      }

      v10 = *(v9 + 48);
      v11 = sub_1D4417494();
      v12 = *(v11 - 8);
      v13 = *(v12 + 8);
      v13(v10 + *(v12 + 72) * v7, v11);
      sub_1D4321A5C(v7, v9);
      result = (v13)(a2, v11);
      *v3 = v9;
    }

    else
    {
      v18 = sub_1D4417494();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  else
  {
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1D4183F3C(a1 & 1, a2, v16);
    v17 = sub_1D4417494();
    result = (*(*(v17 - 8) + 8))(a2, v17);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1D42DAAC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    v7 = sub_1D417DAA4(a4);
    if (v8)
    {
      v9 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v23 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1D42D40C0();
        v11 = v23;
      }

      v12 = *(v11 + 48);
      v13 = sub_1D4417494();
      v14 = *(v13 - 8);
      v15 = *(v14 + 8);
      v15(v12 + *(v14 + 72) * v9, v13);
      sub_1D4321D7C(v9, v11);
      result = (v15)(a4, v13);
      *v5 = v11;
    }

    else
    {
      v21 = sub_1D4417494();
      v22 = *(*(v21 - 8) + 8);

      return v22(a4, v21);
    }
  }

  else
  {
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_1D432DB2C(a1, a2, a4, v19);
    v20 = sub_1D4417494();
    result = (*(*(v20 - 8) + 8))(a4, v20);
    *v4 = v24;
  }

  return result;
}

uint64_t sub_1D42DAC84(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_1D41769C4(a1, &qword_1EC7C9A08);
    sub_1D434DF54(a2, v7);
    v12 = sub_1D4417494();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1D41769C4(v7, &qword_1EC7C9A08);
  }

  else
  {
    sub_1D417E588(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1D432DCD8(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1D4417494();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

id sub_1D42DAF48()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D42DAFE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1D42DB10C(uint64_t a1)
{
  v3 = *v1;
  sub_1D42EAD24(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t (*sub_1D42DB188(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();
  return sub_1D42DB21C;
}

uint64_t sub_1D42DB21C(void *a1, char a2)
{
  a1[1] = *a1;
  v3[2] = a1 + 1;
  if (a2)
  {

    sub_1D417FB40(sub_1D42EDB90, v3);
  }

  else
  {
    sub_1D417FB40(sub_1D42EDB90, v3);
  }
}

void (*sub_1D42DB2CC(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[8] = v2;
  v7 = *(*v2 + 80);
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64);
  if (v4)
  {
    v5[11] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[11] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[12] = v10;
  sub_1D441A2E4();
  return sub_1D42DB420;
}

void sub_1D42DB420(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = v2[8];
    (*(v2[10] + 16))(v2[11], v2[12], v2[9]);
    v2[2] = *(*v7 + 80);
    v2[3] = v4;
    sub_1D42DBDE0(sub_1D42EDA48, v2);
    v8 = *(v6 + 8);
    v8(v4, v5);
    v8(v3, v5);
  }

  else
  {
    v2[6] = *(*v2[8] + 80);
    v2[7] = v3;
    sub_1D42DBDE0(sub_1D42EDA48, (v2 + 4));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1D42DB560@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = sub_1D42EACD0();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v5 = v7;
    *(v9 + 2) = v4;
    *(v9 + 3) = v7;
    *(v9 + 4) = v8;
    v10 = sub_1D42ED298;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_1D417C7B4(v5);
}

uint64_t sub_1D42DB600(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = *(a3 + a4 - 8);
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v5;
    v8 = sub_1D42ED270;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_1D417C7B4(v4);
  return sub_1D42DB6D0(v8, v7);
}

uint64_t sub_1D42DB69C()
{
  v0 = sub_1D42EACD0();
  sub_1D417C7B4(v0);
  return v0;
}

uint64_t sub_1D42DB6D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 112));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1D417BCA0(v6);
}

char *OutlineController.Atomic.__allocating_init(wrappedValue:queueLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = sub_1D42EAD74(a1, a2, a3);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v8;
}

void *sub_1D42DB840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = a2;
  v14 = sub_1D441A2B4();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D441A254();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1D4419484();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v3[6] = 0;
  v3[7] = 0;
  v3[5] = a1;
  v3[2] = a2;
  v3[3] = a3;
  v13[1] = a3;
  v13[2] = sub_1D41766C0(0, &qword_1EDE33D70);

  sub_1D4419464();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D417A7A4(&qword_1EDE33C90, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A38);
  sub_1D417645C(qword_1EDE33CA8, &qword_1EC7C9A38);
  sub_1D441A814();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8090], v14);
  v3[4] = sub_1D441A314();
  return v3;
}

void *sub_1D42DBACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v20 = a4;
  v21 = a5;
  v22 = sub_1D441A2B4();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D441A254();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1D4419484();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v6[9] = 0;
  v6[10] = 0;
  v6[5] = a1;
  v6[6] = a2;
  v16 = v20;
  v6[7] = a3;
  v6[8] = v16;
  v17 = v23;
  v6[2] = a5;
  v6[3] = v17;
  v20 = sub_1D41766C0(0, &qword_1EDE33D70);

  sub_1D4419464();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D417A7A4(&qword_1EDE33C90, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A38);
  sub_1D417645C(qword_1EDE33CA8, &qword_1EC7C9A38);
  sub_1D441A814();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8090], v22);
  v6[4] = sub_1D441A314();
  return v6;
}

char *OutlineController.Atomic.init(wrappedValue:queueLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_1D42EAD74(a1, a2, a3);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_1D42DBDE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = *v2;
  v24 = sub_1D4419444();
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 80);
  v9 = sub_1D441A784();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = *(*(v8 - 8) + 56);
  v16(&v21 - v14, 1, 1, v8);
  v16(v13, 1, 1, v8);
  sub_1D4419434();
  v25 = v15;
  v26 = v3;
  v27 = v22;
  v28 = v23;
  v29 = v13;
  sub_1D441A2D4();
  (*(v5 + 8))(v7, v24);
  v17 = (v3 + *(*v3 + 112));
  swift_beginAccess();
  v18 = *v17;
  if (*v17)
  {
    sub_1D417C7B4(v18);
    v18(v15, v13);
    sub_1D417BCA0(v18);
  }

  v19 = *(v10 + 8);
  v19(v13, v9);
  return (v19)(v15, v9);
}

uint64_t sub_1D42DC09C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v19 = a5;
  v16 = a1;
  v17 = a4;
  v6 = *(*a2 + 80);
  v7 = sub_1D441A784();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  sub_1D42DAFE0(&v15 - v9);
  v11 = *(*(v6 - 8) + 56);
  v11(v10, 0, 1, v6);
  v12 = *(v8 + 40);
  v12(v16, v10, v7);
  v13 = *(*a2 + 104);
  swift_beginAccess();
  v18(a2 + v13);
  swift_endAccess();
  sub_1D42DAFE0(v10);
  v11(v10, 0, 1, v6);
  return (v12)(v19, v10, v7);
}

uint64_t sub_1D42DC360()
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  return v1;
}

uint64_t sub_1D42DC4F8(uint64_t a1)
{
  swift_beginAccess();
  v4 = a1;
  v3[2] = &v4;

  sub_1D417FB40(sub_1D42EB094, v3);
}

uint64_t sub_1D42DC588@<X0>(void *a1@<X8>)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1D42DC634(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v4 = v1;
  v3[2] = &v4;

  sub_1D417FB40(sub_1D42EDB90, v3);
}

void (*sub_1D42DC6D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___OutlineController__collapsedUUIDs;
  swift_beginAccess();
  *(v4 + 56) = *(v1 + v5);

  *(v4 + 64) = sub_1D42DB188(v4);
  return sub_1D42DC770;
}

void sub_1D42DC770(void *a1)
{
  v1 = *a1;
  (*(*a1 + 64))(*a1, 0);

  free(v1);
}

uint64_t sub_1D42DC8CC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  return v1;
}

uint64_t sub_1D42DCA38(uint64_t a1)
{
  v2[2] = &v3;
  v3 = a1;

  sub_1D417FB40(sub_1D42EDB90, v2);
}

uint64_t sub_1D42DCAA8@<X0>(void *a1@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1D42DCB40(uint64_t *a1)
{
  v1 = *a1;
  v3[2] = &v4;
  v4 = v1;

  sub_1D417FB40(sub_1D42EDB90, v3);
}

void (*sub_1D42DCBBC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___OutlineController__interactedUUIDs);

  *(v4 + 40) = sub_1D42DB188(v4);
  return sub_1D42DCC48;
}

void sub_1D42DCC48(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_1D42DCCE4()
{
  v1 = OBJC_IVAR___OutlineController_isAsynchronous;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D42DCD7C(char a1)
{
  v3 = OBJC_IVAR___OutlineController_isAsynchronous;
  swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    if ((a1 & 1) == 0)
    {
      v4 = sub_1D417C854();
      [v4 setSuspended_];

      [*(v1 + OBJC_IVAR___OutlineController____lazy_storage___updateQueue) waitUntilAllOperationsAreFinished];
      *(v1 + v3) = 0;
      sub_1D417BF4C();
      return;
    }
  }

  else if (a1)
  {
    v5 = sub_1D417C854();
    [v5 setSuspended_];
  }

  *(v1 + v3) = a1 & 1;
}

void (*sub_1D42DCE40(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___OutlineController_isAsynchronous;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1D42DCED4;
}

void sub_1D42DCED4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    sub_1D42DCD7C(v3);
    goto LABEL_9;
  }

  v4 = v2[3];
  v5 = v2[4];
  if (*(v4 + v5) == 1)
  {
    if ((v3 & 1) == 0)
    {
      v6 = sub_1D417C854();
      [v6 setSuspended_];

      [*(v4 + OBJC_IVAR___OutlineController____lazy_storage___updateQueue) waitUntilAllOperationsAreFinished];
      *(v4 + v5) = 0;
      sub_1D417BF4C();
      goto LABEL_9;
    }
  }

  else if (v3)
  {
    v7 = v3;
    v8 = sub_1D417C854();
    [v8 setSuspended_];

    *(v2[3] + v2[4]) = v7;
    goto LABEL_9;
  }

  *(v4 + v5) = v3;
LABEL_9:

  free(v2);
}

uint64_t sub_1D42DCFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  v19 = a2;
  v20 = a3;
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v18[1] = v7 + 16;

  for (i = 0; v12; result = (*(v7 + 8))(v9, v6))
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
    sub_1D42E46A8(v9, v19, v20, v21, v22);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(a1 + 56 + 8 * v16);
    ++i;
    if (v12)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D42DD1AC()
{
  v1 = sub_1D4419444();
  MEMORY[0x1EEE9AC00](v1);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = OBJC_IVAR___OutlineController_isAsynchronous;
  swift_beginAccess();
  if (*(v0 + v3) == 1)
  {
    sub_1D41766C0(0, &qword_1EDE33D70);
    v4 = v0;
    v5 = sub_1D441A2C4();
    aBlock[4] = sub_1D42ED4FC;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D417BEE4;
    aBlock[3] = &block_descriptor_222;
    _Block_copy(aBlock);
    sub_1D417A7A4(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
    sub_1D441A814();
    sub_1D44194C4();
    swift_allocObject();
    sub_1D44194B4();

    sub_1D441A304();
  }

  else
  {
    sub_1D42E4E54(v0);
  }
}

id OutlineController.__deallocating_deinit()
{
  v1 = OBJC_IVAR___OutlineController_selectorDelayer;
  v2 = *&v0[OBJC_IVAR___OutlineController_selectorDelayer];
  if (v2)
  {
    [v2 cancelPreviousFireRequests];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for OutlineController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1D42DD550()
{
  v1 = OBJC_IVAR___OutlineController_isAsynchronous;
  swift_beginAccess();
  if (v0[v1])
  {
    [*&v0[OBJC_IVAR___OutlineController_selectorDelayer] requestFire];
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    aBlock[4] = sub_1D42EDB4C;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D417BEE4;
    aBlock[3] = &block_descriptor_12;
    v3 = _Block_copy(aBlock);
    v4 = v0;

    performBlockOnMainThread();
    _Block_release(v3);
  }
}

BOOL sub_1D42DD6A0(uint64_t a1)
{

  sub_1D441A2E4();

  v3 = v1;
  v4 = sub_1D42EB4D4(v7, v3);

  v5 = *(sub_1D417FE80(a1, v4) + 16);

  return v5 != 0;
}

uint64_t sub_1D42DD77C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D44196C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v42 - v20;
  if ((a2 & 0xC000000000000001) != 0)
  {

    v22 = sub_1D441A904();

    return v22 & 1;
  }

  v47 = v19;
  if (*(a2 + 16))
  {
    sub_1D441AEB4();
    v57 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
    sub_1D441A424();
    v50 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
    sub_1D417CF94(a1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v21, &unk_1EC7CA3B0);
    v24 = *(v5 + 48);
    v54 = v5 + 48;
    v48 = v24;
    v25 = v24(v21, 1, v4);
    v42 = v8;
    if (v25 == 1)
    {
      sub_1D441AED4();
    }

    else
    {
      (*(v5 + 32))(v13, v21, v4);
      sub_1D441AED4();
      sub_1D417A7A4(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
      sub_1D4419B94();
      (*(v5 + 8))(v13, v4);
    }

    v26 = sub_1D441AF04();
    v27 = -1 << *(a2 + 32);
    v28 = v26 & ~v27;
    v56 = a2 + 56;
    v29 = v48;
    if ((*(a2 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
    {
      v52 = v4;
      v55 = ~v27;
      v46 = (v5 + 32);
      v44 = (v5 + 8);
      v51 = a2;
      v45 = v18;
      v53 = a1;
      v43 = v11;
      while (1)
      {
        v30 = *(*(a2 + 48) + 8 * v28);

        if ((sub_1D441A414() & 1) == 0)
        {

          goto LABEL_10;
        }

        v31 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
        sub_1D417CF94(v30 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v18, &unk_1EC7CA3B0);
        v32 = v52;
        v33 = v29(v18, 1, v52);
        v34 = v18;
        if (v33 == 1)
        {
          goto LABEL_15;
        }

        v35 = v43;
        v49 = *v46;
        v49(v43, v18, v32);
        v36 = v47;
        sub_1D417CF94(v53 + v50, v47, &unk_1EC7CA3B0);
        if (v29(v36, 1, v32) == 1)
        {
          break;
        }

        v38 = v42;
        v49(v42, v36, v32);
        sub_1D417A7A4(&qword_1EC7C9810, MEMORY[0x1E69782D8]);
        if (sub_1D4419BD4())
        {

          v39 = *v44;
          (*v44)(v38, v32);
          v39(v35, v32);
          v29 = v48;
          a2 = v51;
          v18 = v45;
        }

        else
        {
          v40 = sub_1D4419BC4();

          v41 = *v44;
          (*v44)(v38, v32);
          v41(v35, v32);
          v29 = v48;
          a2 = v51;
          v18 = v45;
          if ((v40 & 1) == 0)
          {
            return 1;
          }
        }

LABEL_10:
        v28 = (v28 + 1) & v55;
        if (((*(v56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          return 0;
        }
      }

      (*v44)(v35, v32);
      v34 = v36;
      v29 = v48;
      v18 = v45;
LABEL_15:
      sub_1D41769C4(v34, &unk_1EC7CA3B0);
      v37 = v29((v30 + v31), 1, v32);

      a2 = v51;
      if (v37 == 1 && v29((v53 + v50), 1, v52) == 1)
      {
        return v37;
      }

      goto LABEL_10;
    }
  }

  return 0;
}

BOOL sub_1D42DDE40(unsigned __int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D441AEB4();
  sub_1D441AEE4();
  v4 = sub_1D441AF04();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 2 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D42DDF0C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1D441A904();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_1D44198E4(), sub_1D417A7A4(&qword_1EC7C9820, MEMORY[0x1E69921C8]), v5 = sub_1D4419B84(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      sub_1D417A7A4(&qword_1EC7C9828, MEMORY[0x1E69921C8]);
      do
      {
        v9 = sub_1D4419BE4();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_1D42DE0B4(uint64_t a1)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  LOBYTE(a1) = sub_1D4190A40(a1, v3);

  return a1 & 1;
}

uint64_t sub_1D42DE1BC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1D441A874();
    sub_1D44198E4();
    sub_1D417A7A4(&qword_1EC7C9820, MEMORY[0x1E69921C8]);
    result = sub_1D441A0A4();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_1D419FA48();
      return v16;
    }

    while (1)
    {
      sub_1D43C5B80(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D441A8F4())
      {
        sub_1D44198E4();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D42DE3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v28 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = v27 - v15;
  v17 = 0;
  v29 = a1;
  v30 = a2;
  v20 = *(a1 + 56);
  v19 = a1 + 56;
  v18 = v20;
  v21 = 1 << *(v19 - 24);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v27[1] = v7 + 32;
  v27[2] = v7 + 16;
  v27[0] = v7 + 8;
  if ((v22 & v18) != 0)
  {
    do
    {
      v25 = v17;
LABEL_9:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      (*(v7 + 16))(v16, *(v29 + 48) + *(v7 + 72) * (v26 | (v25 << 6)), v6);
      (*(v7 + 32))(v10, v16, v6);
      v28(v13, v10);
      result = (*(v7 + 8))(v13, v6);
    }

    while (v23);
  }

  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return v30;
    }

    v23 = *(v19 + 8 * v25);
    ++v17;
    if (v23)
    {
      v17 = v25;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D42DE624(uint64_t a1)
{
  v2 = sub_1D4417494();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE33B88 != -1)
  {
    swift_once();
  }

  v6 = sub_1D44181B4();
  __swift_project_value_buffer(v6, qword_1EDE33B90);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_1D44181A4();
  v8 = sub_1D441A154();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = a1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136315138;
    sub_1D417A7A4(&qword_1EC7C98D0, MEMORY[0x1E69695A8]);
    v12 = sub_1D441AD44();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_1D42E9410(v12, v14, v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D4171000, v7, v8, "Toggling Outline Section: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1DA6D8690](v11, -1, -1);
    v16 = v10;
    a1 = v19;
    MEMORY[0x1DA6D8690](v16, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v17 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v17);
  *(&v19 - 2) = a1;

  sub_1D417FB40(sub_1D42EBAAC, (&v19 - 4));
}

uint64_t sub_1D42DE914(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = sub_1D4190A40(a2, *a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A20);
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D4435D40;
  (*(v7 + 16))(v9 + v8, a2, v6);
  if (v5)
  {
    v10 = sub_1D438DD28(v9, v4);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v10 = sub_1D42EBAB4(v9, v4);
    swift_setDeallocating();
    (*(v7 + 8))(v9 + v8, v6);
  }

  result = swift_deallocClassInstance();
  *a1 = v10;
  return result;
}

uint64_t sub_1D42DEB6C()
{

  sub_1D441A2E4();

  swift_beginAccess();
  v5[0] = v5[5];
  v4 = v5;

  sub_1D417FB40(sub_1D42EDB90, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  v0 = v5[0];

  sub_1D441A2E4();

  v5[0] = sub_1D42DE3E0(v0, v5[0], MEMORY[0x1E69695A8], sub_1D417CFFC);
  v2[2] = v5;

  sub_1D417FB40(sub_1D42EDB90, v2);
}

BOOL sub_1D42DEDD4(uint64_t a1)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  v2 = *(sub_1D417FE80(a1, v4) + 16);

  return v2 != 0;
}

uint64_t sub_1D42DEEA8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1D4417494();
  sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v6 = sub_1D441A064();
  v7 = a1;
  LOBYTE(a4) = a4(v6);

  return a4 & 1;
}

uint64_t sub_1D42DEF9C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), const char *a4, uint64_t a5)
{
  v10 = v5;

  v12 = sub_1D42EC02C(v11, v10, a2, a3);

  if (*(v12 + 16))
  {
    if (qword_1EDE33B88 != -1)
    {
      swift_once();
    }

    v13 = sub_1D44181B4();
    __swift_project_value_buffer(v13, qword_1EDE33B90);

    v14 = sub_1D44181A4();
    v15 = sub_1D441A154();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24[0] = v17;
      *v16 = 136315138;
      sub_1D4417494();
      sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      v18 = sub_1D441A074();
      v20 = sub_1D42E9410(v18, v19, v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D4171000, v14, v15, a4, v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1DA6D8690](v17, -1, -1);
      MEMORY[0x1DA6D8690](v16, -1, -1);
    }

    v21 = swift_beginAccess();
    MEMORY[0x1EEE9AC00](v21);
    v23[2] = v12;

    sub_1D417FB40(a5, v23);
  }

  else
  {
  }
}

uint64_t sub_1D42DF22C(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16) <= *(*a1 + 16) >> 3)
  {
    v4 = *a1;
    sub_1D4390CF0(a2);
    result = v4;
  }

  else
  {
    result = sub_1D438E3E8(a2, *a1);
  }

  *a1 = result;
  return result;
}

void sub_1D42DF2A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *MEMORY[0x1E69B7600];
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D42EC5BC;
    *(v9 + 24) = v8;
    aBlock[4] = sub_1D417CF4C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D417C9A0;
    aBlock[3] = &block_descriptor_30;
    v10 = _Block_copy(aBlock);
    v11 = v7;
    v12 = v2;

    [v6 enumerateAttribute:v11 inRange:a1 options:a2 usingBlock:{0, v10}];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (qword_1EDE33B88 != -1)
  {
    swift_once();
  }

  v14 = sub_1D44181B4();
  __swift_project_value_buffer(v14, qword_1EDE33B90);
  v15 = sub_1D44181A4();
  v16 = sub_1D441A164();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D4171000, v15, v16, "Unable to expand ancestors due to missing text storage", v17, 2u);
    MEMORY[0x1DA6D8690](v17, -1, -1);
  }
}

uint64_t sub_1D42DF51C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = sub_1D4417494();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D417CF94(a1, v25, &qword_1EC7C9720);
  if (!v25[3])
  {
    sub_1D41769C4(v25, &qword_1EC7C9720);
    goto LABEL_6;
  }

  sub_1D41766C0(0, &qword_1EDE33C88);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_1D41769C4(v7, &unk_1EC7CA4F0);
  }

  v12 = v24;
  v13 = [v24 uuid];

  if (v13)
  {
    sub_1D4417474();

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v9 + 56))(v5, v14, 1, v8);
  sub_1D417E588(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D41769C4(v7, &unk_1EC7CA4F0);
  }

  (*(v9 + 32))(v11, v7, v8);

  sub_1D441A2E4();

  v16 = v25[0];
  if (*(v25[0] + 16) && (v17 = sub_1D417DAA4(v11), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];
    swift_retain_n();
    swift_retain_n();

    v22 = sub_1D4389454(v20, v21);
    sub_1D42DEF54(v22);
  }

  else
  {
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D42DF950()
{
  swift_beginAccess();
  v5[0] = MEMORY[0x1E69E7CD0];
  v4 = v5;

  sub_1D417FB40(sub_1D42EDB90, v3);

  sub_1D441A2E4();

  v0 = v5[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  v5[0] = sub_1D42DE3E0(v0, v5[0], MEMORY[0x1E69695A8], sub_1D417CFFC);
  v2[2] = v5;

  sub_1D417FB40(sub_1D42EDB90, v2);
}

uint64_t sub_1D42DFB74()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  v3 = sub_1D42DE3E0(v0, v3, MEMORY[0x1E69695A8], sub_1D417CFFC);
  v2[2] = &v3;

  sub_1D417FB40(sub_1D42EDB90, v2);
}

uint64_t sub_1D42DFCB0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1D4417494();
  sub_1D417A7A4(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
  v6 = sub_1D441A064();
  v7 = a1;
  a4(v6);
}

uint64_t sub_1D42DFE04()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
  sub_1D441A2E4();

  v0 = *(v2 + 16);

  return v0;
}

uint64_t sub_1D42DFEE0()
{
  v0 = sub_1D42E8778(1);
  v1 = sub_1D4416D44();
  v2 = *(v0 + 16);
  if (!v2)
  {
LABEL_15:

    return v1;
  }

  v3 = 0;
  v4 = (v0 + 40);
  while (1)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    result = sub_1D4416D44();
    if (v1 == result)
    {
      v1 = v5;
      v3 = v6;
      goto LABEL_4;
    }

    v8 = v1 + v3;
    if (__OFADD__(v1, v3))
    {
      break;
    }

    if (__OFADD__(v5, v6))
    {
      goto LABEL_17;
    }

    if (v8 <= v5 + v6)
    {
      v8 = v5 + v6;
    }

    if (v1 >= v5)
    {
      v1 = v5;
    }

    v3 = v8 - v1;
    if (__OFSUB__(v8, v1))
    {
      __break(1u);
      goto LABEL_15;
    }

LABEL_4:
    v4 += 2;
    if (!--v2)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

id sub_1D42E0014(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1D41766C0(0, &qword_1EC7C99C8);
  v5 = sub_1D4419E24();

  return v5;
}

uint64_t sub_1D42E0114(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = *(v2 + 16);
  if (v3)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1D441AAB4();
    v4 = objc_opt_self();
    v5 = (v2 + 40);
    do
    {
      v6 = [v4 valueWithRange_];
      sub_1D441AA94();
      sub_1D441AAC4();
      sub_1D441AAD4();
      sub_1D441AAA4();
      v5 += 2;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D42E0210(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v22 = 0;
    v7 = *MEMORY[0x1E69B7600];
    v8 = [v6 ic_range];
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = v2;
    v11[5] = &v22;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D42EC5C4;
    *(v12 + 24) = v11;
    v21[4] = sub_1D417CA4C;
    v21[5] = v12;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_1D417C9A0;
    v21[3] = &block_descriptor_47;
    v13 = _Block_copy(v21);
    v14 = v2;

    [v6 enumerateAttribute:v7 inRange:v8 options:v10 usingBlock:{0, v13}];

    _Block_release(v13);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if ((v6 & 1) == 0)
    {
      v15 = v22;

      return v15;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EDE33B88 != -1)
  {
LABEL_10:
    swift_once();
  }

  v16 = sub_1D44181B4();
  __swift_project_value_buffer(v16, qword_1EDE33B90);
  v17 = sub_1D44181A4();
  v18 = sub_1D441A164();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D4171000, v17, v18, "Unable to toggle collapsed due to missing text storage", v19, 2u);
    MEMORY[0x1DA6D8690](v19, -1, -1);
  }

  return 0;
}

void sub_1D42E04B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[1] = a7;
  v25 = a4;
  v14 = sub_1D4417494();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - v19;
  sub_1D417CF94(a1, v27, &qword_1EC7C9720);
  if (!v28)
  {
    sub_1D41769C4(v27, &qword_1EC7C9720);
    return;
  }

  sub_1D41766C0(0, &qword_1EDE33C88);
  if (swift_dynamicCast())
  {
    v24[0] = a8;
    v21 = v26;
    v22 = [v26 uuid];
    if (!v22)
    {
LABEL_12:

      return;
    }

    v23 = v22;
    sub_1D4417474();

    (*(v15 + 32))(v20, v18, v14);
    if (sub_1D4416D44() != a2 && a5 >= a2)
    {
      if (__OFADD__(a2, a3))
      {
        __break(1u);
      }

      else if (!__OFADD__(a5, a6))
      {
        if (a5 + a6 < a2 + a3)
        {
          sub_1D42DE624(v20);
          *v25 = 1;

          (*(v15 + 8))(v20, v14);
          *v24[0] = 1;
          return;
        }

        goto LABEL_11;
      }

      __break(1u);
      return;
    }

LABEL_11:
    (*(v15 + 8))(v20, v14);
    goto LABEL_12;
  }
}

uint64_t sub_1D42E0760()
{
  v1[2] = &v2;
  v2 = MEMORY[0x1E69E7CD0];

  sub_1D417FB40(sub_1D42EDB90, v1);
}

uint64_t sub_1D42E0844(void (*a1)(void, void))
{
  v1 = a1;
  v6 = a1;
  v4[3] = a1;

  sub_1D4183210(v1, sub_1D42EC5D0, v5, sub_1D418366C, v4);
  LOBYTE(v1) = v2;

  return v1 & 1;
}

uint64_t sub_1D42E08DC(uint64_t a1, uint64_t a2)
{

  sub_1D441A2E4();

  if (*(v7 + 16) && (v3 = sub_1D417DAA4(a2), (v4 & 1) != 0))
  {
    v5 = *(*(v7 + 56) + 16 * v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1D42E09CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = MEMORY[0x1EEE9AC00](Strong);

    v4 = sub_1D42E1098(a1, sub_1D42EC5D8);

    return v4;
  }

  else
  {
    if (qword_1EDE33B88 != -1)
    {
      swift_once();
    }

    v6 = sub_1D44181B4();
    __swift_project_value_buffer(v6, qword_1EDE33B90);
    v7 = sub_1D44181A4();
    v8 = sub_1D441A164();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D4171000, v7, v8, "Unable to return range for uuid due to missing text storage", v9, 2u);
      MEMORY[0x1DA6D8690](v9, -1, -1);
    }

    return sub_1D4416D44();
  }
}

uint64_t sub_1D42E0B6C(void *a1, uint64_t a2)
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v18[0] = sub_1D4416D44();
  v18[1] = 0;
  v7 = *MEMORY[0x1E69B7600];
  v8 = [a1 ic_range];
  v10 = v9;
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D42ED3FC;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1D417CA4C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417C9A0;
  aBlock[3] = &block_descriptor_176;
  v14 = _Block_copy(aBlock);

  [a1 enumerateAttribute:v7 inRange:v8 options:v10 usingBlock:{0, v14}];

  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v16 = v18[0];

    return v16;
  }

  return result;
}

void sub_1D42E0DF4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v11 = sub_1D4417494();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  sub_1D417CF94(a1, v33, &qword_1EC7C9720);
  if (!v34)
  {
    sub_1D41769C4(v33, &qword_1EC7C9720);
    return;
  }

  sub_1D41766C0(0, &qword_1EDE33C88);
  if (swift_dynamicCast())
  {
    v18 = v32;
    v19 = [v32 uuid];
    if (!v19)
    {
LABEL_10:

      return;
    }

    v31 = a3;
    v20 = v19;
    sub_1D4417474();

    (*(v12 + 32))(v17, v15, v11);
    v21 = sub_1D4417464();
    v22 = *a6;
    v23 = sub_1D4416D44();
    v24 = v23;
    if (v21)
    {

      (*(v12 + 8))(v17, v11);
      if (v22 == v24)
      {
        v25 = v31;
        *a6 = a2;
        a6[1] = v25;
        return;
      }

      v26 = *a6;
      v27 = a6[1];
      v28 = __OFADD__(*a6, v27);
      v29 = *a6 + v27;
      if (v28)
      {
        __break(1u);
      }

      else if (!__OFADD__(a2, v31))
      {
        if (v29 <= a2 + v31)
        {
          v29 = a2 + v31;
        }

        if (v26 >= a2)
        {
          v26 = a2;
        }

        v28 = __OFSUB__(v29, v26);
        v30 = v29 - v26;
        if (!v28)
        {
          *a6 = v26;
          a6[1] = v30;
          return;
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v22 == v23)
    {
      (*(v12 + 8))(v17, v11);
      goto LABEL_10;
    }

    *a4 = 1;

    (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_1D42E1098(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = sub_1D4419444();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = v2 + 40;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A10);
  v9 = sub_1D441A2E4();
  if (v19)
  {
    v10 = a2(v9);
    v18[0] = v10;
    v18[1] = v11;
    v12 = sub_1D4419434();
    v15 = v5;
    MEMORY[0x1EEE9AC00](v12);
    *(&v14 - 4) = v2 + 40;
    *(&v14 - 3) = a1;
    *(&v14 - 2) = v18;
    sub_1D441A2D4();
    (*(v6 + 8))(v8, v15);
  }

  else
  {
    v10 = v18[0];
  }

  swift_endAccess();
  return v10;
}

uint64_t sub_1D42E1294(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EDE33B88 != -1)
    {
      swift_once();
    }

    v21 = sub_1D44181B4();
    __swift_project_value_buffer(v21, qword_1EDE33B90);
    v22 = sub_1D44181A4();
    v23 = sub_1D441A164();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D4171000, v22, v23, "Unable to return descendant range for uuid due to missing text storage", v24, 2u);
      MEMORY[0x1DA6D8690](v24, -1, -1);
    }

    return sub_1D4416D44();
  }

  v3 = Strong;

  sub_1D441A2E4();

  if (!*(v26 + 16) || (v4 = sub_1D417DAA4(a1), (v5 & 1) == 0))
  {

LABEL_9:
    v20 = sub_1D4416D44();

    return v20;
  }

  v6 = (*(v26 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  if (!*(v8 + 16))
  {

    goto LABEL_9;
  }

  v33 = 0;
  v31 = 0;
  v32 = sub_1D4416D44();
  v9 = *MEMORY[0x1E69B7600];
  v10 = [v3 ic_range];
  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = &v33;
  v13[5] = &v32;
  v13[6] = &v31;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D42EC5E0;
  *(v14 + 24) = v13;
  v29 = sub_1D417CA4C;
  v30 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1D417C9A0;
  v28 = &block_descriptor_59;
  v15 = _Block_copy(&aBlock);

  [v3 enumerateAttribute:v9 inRange:v10 options:v12 usingBlock:{0, v15}];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v19 = v31;
    v18 = v32;

    if (!__OFSUB__(v19, v18))
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

void sub_1D42E1670(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, _BYTE *a7, void *a8, void *a9)
{
  v45 = a2;
  v46 = a7;
  v44 = a4;
  v14 = sub_1D4417494();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - v22;
  sub_1D417CF94(a1, v48, &qword_1EC7C9720);
  if (!v49)
  {
    sub_1D41769C4(v48, &qword_1EC7C9720);
    return;
  }

  sub_1D41766C0(0, &qword_1EDE33C88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v43 = a6;
  v24 = v47;
  v25 = [v47 uuid];
  if (!v25)
  {

    return;
  }

  v26 = v25;
  v40 = a8;
  v41 = v24;
  v39 = a3;
  sub_1D4417474();

  v42 = v15;
  (*(v15 + 32))(v23, v21, v14);
  v27 = v43 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v28 = *(v43 + 16);
  if (!a5)
  {
    if (v28)
    {
      v34 = *(v42 + 16);
      v35 = *(v42 + 72);
      v36 = (v42 + 8);
      do
      {
        v34(v18, v27, v14);
        sub_1D417A7A4(&unk_1EDE33D30, MEMORY[0x1E69695A8]);
        v37 = sub_1D4419BE4();
        (*v36)(v18, v14);
        if (v37)
        {
          goto LABEL_6;
        }

        v27 += v35;
      }

      while (--v28);
    }

LABEL_16:
    if (*v46 == 1)
    {
      *v44 = 1;

      (*(v42 + 8))(v23, v14);
    }

    else
    {
      (*(v42 + 8))(v23, v14);
    }

    return;
  }

  sub_1D42EA19C(v23, v27, v28, (a5 + 16), a5 + 32);
  v30 = v29;

  if (v30)
  {
    goto LABEL_16;
  }

LABEL_6:
  v31 = v45;
  *v46 = 1;
  if (*v40 > v31)
  {
    *v40 = v31;
  }

  v32 = v39 + v31;
  v33 = v41;
  if (*a9 >= v39 + v31)
  {
    (*(v42 + 8))(v23, v14);
  }

  else
  {

    (*(v42 + 8))(v23, v14);
    *a9 = v32;
  }
}

uint64_t sub_1D42E1A58(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417474();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_1D42E1B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[3] = a1;

  sub_1D42E1F20(a1, sub_1D42EC610, v5, a2);
}

uint64_t sub_1D42E1BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_1D4417494();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;

  sub_1D441A2E4();

  v9 = v29;
  if (!*(v29 + 16) || (v10 = sub_1D417DAA4(a2), (v11 & 1) == 0))
  {

    return (*(v6 + 56))(v24, 1, 1, v5);
  }

  v12 = (*(v9 + 56) + 16 * v10);
  v13 = v12[1];
  v23[1] = *v12;

  v27 = *(v13 + 16);
  if (!v27)
  {
LABEL_8:

    return (*(v6 + 56))(v24, 1, 1, v5);
  }

  v15 = 0;
  v25 = v6 + 16;
  v26 = OBJC_IVAR___OutlineController_cache;
  while (v15 < *(v13 + 16))
  {
    v16 = (*(v6 + 16))(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v5);
    v17 = MEMORY[0x1EEE9AC00](v16);
    v23[-2] = v18;
    v23[-1] = v8;
    MEMORY[0x1EEE9AC00](v17);
    v23[-2] = v19;
    v23[-1] = v8;

    sub_1D4183210(v8, sub_1D42EDB44, &v23[-4], sub_1D42EDB48, &v23[-4]);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      v22 = v24;
      (*(v6 + 32))(v24, v8, v5);
      return (*(v6 + 56))(v22, 0, 1, v5);
    }

    ++v15;
    result = (*(v6 + 8))(v8, v5);
    if (v27 == v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D42E1F20@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a3;
  v19 = a2;
  v7 = sub_1D4419444();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A08);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  v20 = v4 + 32;
  v21 = a1;
  sub_1D441A2E4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    v15 = sub_1D41769C4(v13, &qword_1EC7C9A08);
    v19(v15);
    v16 = sub_1D4419434();
    MEMORY[0x1EEE9AC00](v16);
    *(&v18 - 4) = v4 + 32;
    *(&v18 - 3) = a1;
    *(&v18 - 2) = a4;
    sub_1D441A2D4();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_1D417E588(v13, a4);
  }

  return swift_endAccess();
}

uint64_t sub_1D42E2378(uint64_t a1)
{

  sub_1D441A2E4();

  if (*(v6 + 16) && (v2 = sub_1D417DAA4(a1), (v3 & 1) != 0))
  {
    v4 = *(*(v6 + 56) + 16 * v2 + 8);

    return v4;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D42E24A4(uint64_t a1)
{

  sub_1D441A2E4();

  if (*(v6 + 16) && (v2 = sub_1D417DAA4(a1), (v3 & 1) != 0))
  {
    v4 = *(*(v6 + 56) + 16 * v2 + 8);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  return v4;
}

id sub_1D42E25CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1D4417494();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4417474();
  v10 = a1;
  a4(v9);

  (*(v7 + 8))(v9, v6);
  v11 = sub_1D4419E24();

  return v11;
}

unint64_t sub_1D42E2754()
{
  v1 = v0;
  v2 = sub_1D4417494();
  v167 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v182 = &v149 - v7;
  v150 = v8;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v149 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0xD00000000000002CLL;
  }

  v12 = Strong;
  v162 = v5;
  v183 = v2;
  aBlock = 0;
  v193 = 0xE000000000000000;
  sub_1D441A9C4();
  v13 = [v0 description];
  v14 = sub_1D4419C54();
  v16 = v15;

  aBlock = v14;
  v193 = v16;
  MEMORY[0x1DA6D5730](0xD000000000000018, 0x80000001D444CA30);
  v200 = aBlock;
  v201 = v193;
  v198 = MEMORY[0x1E69E7CC0];
  v199 = MEMORY[0x1E69E7CC0];
  v17 = *MEMORY[0x1E69B7600];
  v18 = [v12 ic_range];
  v20 = v19;
  v21 = swift_allocObject();
  v21[2] = &v199;
  v21[3] = v1;
  v21[4] = &v198;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D42EC618;
  *(v22 + 24) = v21;
  v149 = v21;
  v196 = sub_1D417CA4C;
  v197 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v193 = 1107296256;
  v194 = sub_1D417C9A0;
  v195 = &block_descriptor_71;
  v23 = _Block_copy(&aBlock);
  v24 = v1;

  [v12 enumerateAttribute:v17 inRange:v18 options:v20 usingBlock:{0, v23}];
  v164 = v17;

  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_61;
  }

  v27 = *(v199 + 16);
  v163 = v12;
  v28 = v183;
  v161 = v27;
  if (!v27)
  {
LABEL_37:
    aBlock = 0;
    v193 = 0xE000000000000000;
    sub_1D441A9C4();

    v190 = 0x616C6C6F43200A0ALL;
    v191 = 0xEF0A3A2064657370;
    v109 = v198;
    v110 = *(v198 + 2);
    v111 = MEMORY[0x1E69E7CC0];
    if (v110)
    {
      v189 = MEMORY[0x1E69E7CC0];

      sub_1D418BC38(0, v110, 0);
      v181 = *(v167 + 16);
      v112 = *(v167 + 80);
      v172 = v109;
      v113 = v109 + ((v112 + 32) & ~v112);
      v180 = v112;
      v111 = v189;
      v179 = (v112 + 16) & ~v112;
      v173 = *(v167 + 72);
      v178 = (v150 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
      v177 = (v178 + 15) & 0xFFFFFFFFFFFFFFF8;
      v176 = (v167 + 32);
      v175 = &v194;
      v167 += 16;
      v174 = (v167 - 8);
      v114 = v162;
      while (1)
      {
        v184 = v111;
        v115 = v181;
        v181(v114, v113, v28);
        v187 = 0;
        v188 = 0;
        v116 = v164;
        v117 = [v12 ic_range];
        v119 = v118;
        v120 = v114;
        v121 = v182;
        v115(v182, v120, v28);
        v122 = v177;
        v123 = swift_allocObject();
        (*v176)(v123 + v179, v121, v28);
        *(v123 + v178) = &v187;
        *(v123 + v122) = v12;
        v124 = swift_allocObject();
        *(v124 + 16) = sub_1D42EC624;
        *(v124 + 24) = v123;
        v196 = sub_1D417CA4C;
        v197 = v124;
        aBlock = MEMORY[0x1E69E9820];
        v193 = 1107296256;
        v194 = sub_1D417C9A0;
        v195 = &block_descriptor_82;
        v125 = _Block_copy(&aBlock);
        v126 = v12;

        [v126 enumerateAttribute:v116 inRange:v117 options:v119 usingBlock:{0, v125}];

        _Block_release(v125);
        LOBYTE(v125) = swift_isEscapingClosureAtFileLocation();

        if (v125)
        {
          goto LABEL_56;
        }

        v127 = v188;
        if (v188)
        {
          v128 = v187;

          if (sub_1D4419CE4() > 16)
          {
            v129 = sub_1D42EC628(16);
            v131 = v130;
            v133 = v132;
            v135 = v134;

            v136 = [objc_opt_self() ic_ellipsisCharacterString];
            v137 = sub_1D4419C54();
            v139 = v138;

            v185 = 0;
            v186 = 0xE000000000000000;
            v140 = sub_1D4419CE4();
            v141 = sub_1D441A794();
            v69 = __OFADD__(v140, v141);
            result = v140 + v141;
            if (v69)
            {
              goto LABEL_58;
            }

            MEMORY[0x1DA6D56C0](result);
            aBlock = v129;
            v193 = v131;
            v194 = v133;
            v195 = v135;
            sub_1D42EC6C4();
            sub_1D4419D14();
            aBlock = v137;
            v193 = v139;
            sub_1D4419D14();

            v114 = v162;
            v28 = v183;
            (*v174)(v162, v183);

            v128 = v185;
            v127 = v186;

            v12 = v163;
            goto LABEL_47;
          }

          v12 = v163;
          v28 = v183;
          v114 = v162;
        }

        else
        {
          sub_1D417A7A4(&qword_1EC7C98D0, MEMORY[0x1E69695A8]);
          v114 = v162;
          v28 = v183;
          aBlock = sub_1D441AD44();
          v193 = v142;
          MEMORY[0x1DA6D5730](0x554F4620544F4E20, 0xEB0000000021444ELL);
          v128 = aBlock;
          v127 = v193;
          v12 = v163;
        }

        (*v174)(v114, v28);

LABEL_47:
        v111 = v184;
        v189 = v184;
        v144 = *(v184 + 16);
        v143 = *(v184 + 24);
        if (v144 >= v143 >> 1)
        {
          sub_1D418BC38((v143 > 1), v144 + 1, 1);
          v111 = v189;
        }

        *(v111 + 16) = v144 + 1;
        v145 = v111 + 16 * v144;
        *(v145 + 32) = v128;
        *(v145 + 40) = v127;
        v113 += v173;
        if (!--v110)
        {

          break;
        }
      }
    }

    aBlock = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
    sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
    v146 = sub_1D4419BB4();
    v148 = v147;

    MEMORY[0x1DA6D5730](v146, v148);

    MEMORY[0x1DA6D5730](v190, v191);

    v108 = v200;

    return v108;
  }

  v160 = OBJC_IVAR___OutlineController__index;
  v29 = *(v167 + 80);
  v151 = (v29 + 32) & ~v29;
  v159 = v199 + v151;
  v181 = (v167 + 16);
  v176 = v29;
  v175 = ((v29 + 16) & ~v29);
  v174 = ((v175 + v150 + 7) & 0xFFFFFFFFFFFFFFF8);
  v173 = (v174 + 15) & 0xFFFFFFFFFFFFFFF8;
  v172 = (v167 + 32);
  v171 = &v194;
  v157 = (v167 + 8);

  v30 = 0;
  v31 = 0;
  v32 = v10;
  v152 = v10;
  v154 = v24;
  v158 = result;
  while (1)
  {
    if (v30 >= *(result + 16))
    {
      goto LABEL_57;
    }

    v33 = *(v167 + 72);
    v166 = v30;
    v178 = v33;
    v180 = *(v167 + 16);
    v180(v32, v159 + v33 * v30, v28);

    sub_1D441A2E4();
    v165 = v31;

    v34 = aBlock;
    if (*(aBlock + 16))
    {
      v35 = sub_1D417DAA4(v32);
      if (v36)
      {
        break;
      }
    }

    v28 = v183;
LABEL_6:
    v30 = v166 + 1;

    (*v157)(v32, v28);
    result = v158;
    v31 = v165;
    if (v30 == v161)
    {

      goto LABEL_37;
    }
  }

  v37 = (*(v34 + 56) + 16 * v35);
  v38 = v37[1];
  v156 = *v37;

  v179 = v38;

  v190 = 0;
  v191 = 0;
  v39 = v164;
  v40 = [v12 ic_range];
  v42 = v41;
  v43 = v182;
  v44 = v12;
  v45 = v32;
  v46 = v183;
  v180(v182, v32, v183);
  v47 = v173;
  v48 = swift_allocObject();
  v169 = *v172;
  v169(v175 + v48, v43, v46);
  *(v174 + v48) = &v190;
  *(v48 + v47) = v44;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1D42EDB40;
  *(v49 + 24) = v48;
  v196 = sub_1D417CA4C;
  v197 = v49;
  aBlock = MEMORY[0x1E69E9820];
  v193 = 1107296256;
  v194 = sub_1D417C9A0;
  v195 = &block_descriptor_93;
  v50 = _Block_copy(&aBlock);
  v51 = v44;
  v52 = v44;

  v168 = v52;
  [v52 enumerateAttribute:v39 inRange:v40 options:v42 usingBlock:{0, v50}];
  v170 = v39;

  _Block_release(v50);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    goto LABEL_59;
  }

  v53 = v191;
  if (!v191)
  {
    sub_1D417A7A4(&qword_1EC7C98D0, MEMORY[0x1E69695A8]);
    v32 = v45;
    v28 = v183;
    aBlock = sub_1D441AD44();
    v193 = v72;
    MEMORY[0x1DA6D5730](0x554F4620544F4E20, 0xEB0000000021444ELL);
    v54 = aBlock;
    v53 = v193;
LABEL_18:

    v177 = *(v179 + 16);
    v155 = v54;
    if (v177)
    {
      goto LABEL_19;
    }

    v12 = v51;
    v71 = MEMORY[0x1E69E7CC0];
LABEL_34:
    aBlock = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
    sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
    v105 = sub_1D4419BB4();
    v107 = v106;

    aBlock = 9;
    v193 = 0xE100000000000000;
    MEMORY[0x1DA6D5730](v155, v53);

    MEMORY[0x1DA6D5730](0x5B203E2D20, 0xE500000000000000);
    MEMORY[0x1DA6D5730](v105, v107);

    MEMORY[0x1DA6D5730](2653, 0xE200000000000000);
    MEMORY[0x1DA6D5730](aBlock, v193);

    goto LABEL_6;
  }

  v54 = v190;

  v55 = sub_1D4419CE4();
  v28 = v183;
  if (v55 <= 16)
  {
    v32 = v45;
    goto LABEL_18;
  }

  v56 = sub_1D42EC628(16);
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = [objc_opt_self() ic_ellipsisCharacterString];
  v64 = sub_1D4419C54();
  v66 = v65;

  v187 = 0;
  v188 = 0xE000000000000000;
  v67 = sub_1D4419CE4();
  v68 = sub_1D441A794();
  v69 = __OFADD__(v67, v68);
  result = v67 + v68;
  if (v69)
  {
    goto LABEL_60;
  }

  MEMORY[0x1DA6D56C0](result);
  aBlock = v56;
  v193 = v58;
  v194 = v60;
  v195 = v62;
  sub_1D42EC6C4();
  sub_1D4419D14();
  aBlock = v64;
  v193 = v66;
  sub_1D4419D14();

  v70 = v187;
  v53 = v188;

  v177 = *(v179 + 16);
  v155 = v70;
  if (!v177)
  {
    v71 = MEMORY[0x1E69E7CC0];
    v12 = v163;
    v32 = v152;
    goto LABEL_34;
  }

LABEL_19:
  v153 = v53;
  v185 = MEMORY[0x1E69E7CC0];
  result = sub_1D418BC38(0, v177, 0);
  v73 = 0;
  v71 = v185;
  v74 = v179 + v151;
  while (2)
  {
    if (v73 < *(v179 + 16))
    {
      v184 = v71;
      v190 = 0;
      v191 = 0;
      v75 = v170;
      v76 = v168;
      v77 = [v168 ic_range];
      v79 = v78;
      v80 = v182;
      v180(v182, v74, v28);
      v81 = v173;
      v82 = swift_allocObject();
      v169(v175 + v82, v80, v28);
      *(v174 + v82) = &v190;
      *(v82 + v81) = v76;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_1D42EDB40;
      *(v83 + 24) = v82;
      v196 = sub_1D417CA4C;
      v197 = v83;
      aBlock = MEMORY[0x1E69E9820];
      v193 = 1107296256;
      v194 = sub_1D417C9A0;
      v195 = &block_descriptor_104;
      v84 = _Block_copy(&aBlock);
      v85 = v76;

      [v85 enumerateAttribute:v75 inRange:v77 options:v79 usingBlock:{0, v84}];

      _Block_release(v84);
      LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

      if (v75)
      {
        goto LABEL_54;
      }

      v86 = v191;
      if (v191)
      {
        v87 = v190;

        if (sub_1D4419CE4() > 16)
        {
          sub_1D4419CF4();
          v88 = sub_1D4419DC4();
          v90 = v89;
          v92 = v91;
          v94 = v93;

          v95 = [objc_opt_self() ic_ellipsisCharacterString];
          v96 = sub_1D4419C54();
          v98 = v97;

          v187 = 0;
          v188 = 0xE000000000000000;
          v99 = sub_1D4419CE4();
          v100 = sub_1D441A794();
          v69 = __OFADD__(v99, v100);
          result = v99 + v100;
          if (v69)
          {
            goto LABEL_55;
          }

          MEMORY[0x1DA6D56C0](result);
          aBlock = v88;
          v193 = v90;
          v194 = v92;
          v195 = v94;
          sub_1D42EC6C4();
          sub_1D4419D14();
          aBlock = v96;
          v193 = v98;
          sub_1D4419D14();

          v87 = v187;
          v86 = v188;

          v28 = v183;
          v71 = v184;
LABEL_29:
          v185 = v71;
          v103 = *(v71 + 16);
          v102 = *(v71 + 24);
          if (v103 >= v102 >> 1)
          {
            result = sub_1D418BC38((v102 > 1), v103 + 1, 1);
            v71 = v185;
          }

          ++v73;
          *(v71 + 16) = v103 + 1;
          v104 = v71 + 16 * v103;
          *(v104 + 32) = v87;
          *(v104 + 40) = v86;
          v74 += v178;
          if (v177 == v73)
          {
            v12 = v163;
            v32 = v152;
            v53 = v153;
            goto LABEL_34;
          }

          continue;
        }

        v28 = v183;
      }

      else
      {
        sub_1D417A7A4(&qword_1EC7C98D0, MEMORY[0x1E69695A8]);
        v28 = v183;
        aBlock = sub_1D441AD44();
        v193 = v101;
        MEMORY[0x1DA6D5730](0x554F4620544F4E20, 0xEB0000000021444ELL);
        v87 = aBlock;
        v86 = v193;
      }

      v71 = v184;

      goto LABEL_29;
    }

    break;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

void sub_1D42E3E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5, uint64_t a6, size_t *a7)
{
  v10 = sub_1D4417494();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  sub_1D417CF94(a1, v48, &qword_1EC7C9720);
  if (v49)
  {
    sub_1D41766C0(0, &qword_1EDE33C88);
    if (swift_dynamicCast())
    {
      v23 = v47;
      v24 = [v47 uuid];
      if (v24)
      {
        v45 = v23;
        v43 = a7;
        v25 = v24;
        sub_1D4417474();

        v46 = *(v11 + 32);
        v46(v22, v20, v10);
        v42 = *(v11 + 16);
        v42(v17, v22, v10);
        v26 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v26;
        v44 = v11 + 32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_1D417E5F8(0, v26[2] + 1, 1, v26);
          *a5 = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v41 = v29 + 1;
          v40 = sub_1D417E5F8(v28 > 1, v29 + 1, 1, v26);
          v30 = v41;
          v26 = v40;
          *a5 = v40;
        }

        v26[2] = v30;
        v41 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v31 = v26 + v41;
        v32 = *(v11 + 72);
        v46(&v31[v32 * v29], v17, v10);
        swift_beginAccess();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9948);
        sub_1D441A2E4();

        v33 = sub_1D4190A40(v22, v47);

        if (v33)
        {
          v42(v14, v22, v10);
          v34 = v43;
          v35 = *v43;
          v36 = swift_isUniquelyReferenced_nonNull_native();
          *v34 = v35;
          if ((v36 & 1) == 0)
          {
            v35 = sub_1D417E5F8(0, v35[2] + 1, 1, v35);
            *v34 = v35;
          }

          v38 = v35[2];
          v37 = v35[3];
          if (v38 >= v37 >> 1)
          {
            *v34 = sub_1D417E5F8(v37 > 1, v38 + 1, 1, v35);
          }

          (*(v11 + 8))(v22, v10);
          v39 = *v34;
          *(v39 + 16) = v38 + 1;
          v46((v39 + v41 + v38 * v32), v14, v10);
        }

        else
        {
          (*(v11 + 8))(v22, v10);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1D41769C4(v48, &qword_1EC7C9720);
  }
}

uint64_t sub_1D42E42CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_1D4183F3C(1, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v6;
  return swift_endAccess();
}

uint64_t sub_1D42E4358(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v3 = sub_1D417DAA4(a2);
  if (v4)
  {
    return *(*(v2 + 56) + 16 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D42E43C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_1D417DAA4(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
    v10 = *(v9 - 8);
    sub_1D417CF94(v8 + *(v10 + 72) * v7, a3, &unk_1EC7CA4F0);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t sub_1D42E450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = sub_1D4417494();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  sub_1D417CF94(a3, v7, &unk_1EC7CA4F0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  return sub_1D42DAC84(v7, v10);
}

void sub_1D42E46A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v8 = sub_1D4417494();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D4419444();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4419434();
  v31 = v5;
  v32 = v5;
  v33 = a1;
  sub_1D441A2D4();
  (*(v13 + 8))(v15, v12);
  v16 = *(a3 + 16);
  v28 = a3;
  if (v16 && (v17 = sub_1D417DAA4(a1), (v18 & 1) != 0))
  {
    v19 = (*(a3 + 56) + 16 * v17);
    v20 = v19[1];
    v26 = *v19;

    v21 = *(v20 + 16);
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D417E7FC(MEMORY[0x1E69E7CC0]);
    v26 = v22;
    v20 = v23;
    v21 = *(v23 + 16);
    if (!v21)
    {
LABEL_9:

      return;
    }
  }

  v24 = 0;
  v25 = v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  while (v24 < *(v20 + 16))
  {
    (*(v9 + 16))(v11, v25 + *(v9 + 72) * v24++, v8);
    sub_1D42E46A8(v11, v27, v28, v29, v30);
    (*(v9 + 8))(v11, v8);
    if (v21 == v24)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}