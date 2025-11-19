void *sub_25BBB8CB0(uint64_t a1)
{
  v1[2] = [objc_allocWithZone(MEMORY[0x277CD7808]) init];
  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v3 = MEMORY[0x277D84F90];
  v4 = sub_25BCB614C();
  v1[5] = v3;
  v1[6] = 0;
  v1[7] = 0;
  v1[8] = v3;
  v1[9] = 0;
  v1[10] = 0;
  v1[11] = v3;
  v1[3] = a1;
  v1[4] = v4;
  swift_unownedRetain();

  return v1;
}

uint64_t sub_25BBB8D54()
{
  v1 = *(v0 + 24);
  swift_unownedRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  return v0;
}

uint64_t sub_25BBB8D9C()
{
  sub_25BBB8D54();

  return swift_deallocClassInstance();
}

unint64_t sub_25BBB8DF0()
{
  result = qword_28154BE40;
  if (!qword_28154BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4E50, &qword_25BCC2AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE40);
  }

  return result;
}

id sub_25BBB8E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v6 = sub_25BCB672C();

  v7 = [v3 initWithMTLBuffer:a1 shape:v6 dataType:a3];
  swift_unknownObjectRelease();

  return v7;
}

id sub_25BBB8F1C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_25BCB59FC();
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v11 = sub_25BCB672C();

  v12 = [v5 initWithDevice:a1 data:v10 shape:v11 dataType:a5];

  sub_25BB0D160(a2, a3);
  return v12;
}

id sub_25BBB8FE4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v4 = sub_25BCB672C();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithShape:v4 dataType:a2];

  return v5;
}

uint64_t sub_25BBB9070(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5E20, &unk_25BCC7150);
  result = sub_25BCB759C();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        sub_25BC42288(0, (v33 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v22 = v20;
      v23 = v21;
    }

    v24 = *(v8 + 40);
    result = sub_25BCB6DEC();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v8 + 48) + 8 * v28) = v20;
    *(*(v8 + 56) + 8 * v28) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_25BBB92D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E60, &qword_25BCC7190);
  v7 = sub_25BCB759C();
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v8 = 0;
    v10 = v5 + 64;
    v9 = *(v5 + 64);
    v11 = *(v5 + 32);
    OUTLINED_FUNCTION_2_43();
    v13 = v12 >> 6;
    v14 = v7 + 64;
    if (a2)
    {
      while (1)
      {
        OUTLINED_FUNCTION_9_28();
LABEL_11:
        v17 = v15 | (v8 << 6);
        v18 = (*(v5 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v5 + 56) + 8 * v17);
        if ((a2 & 1) == 0)
        {
          v22 = v18[1];
          sub_25BCB617C();
        }

        v23 = *(v7 + 40);
        sub_25BCB79CC();
        sub_25BCB625C();
        sub_25BCB7A3C();
        v24 = *(v7 + 32);
        OUTLINED_FUNCTION_7_27();
        if (((v27 << v26) & ~*(v14 + 8 * v25)) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_6_37();
LABEL_22:
        OUTLINED_FUNCTION_3_32();
        *(v14 + v32) |= v33;
        v35 = (*(v7 + 48) + 16 * v34);
        *v35 = v19;
        v35[1] = v20;
        *(*(v7 + 56) + 8 * v34) = v21;
        ++*(v7 + 16);
        v5 = v37;
        if (!a2)
        {
          goto LABEL_6;
        }
      }

      OUTLINED_FUNCTION_5_35();
      while (++v28 != v30 || (v29 & 1) == 0)
      {
        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        if (*(v14 + 8 * v28) != -1)
        {
          OUTLINED_FUNCTION_4_37();
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_6:
      v16 = v8;
      while (1)
      {
        v8 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v8 >= v13)
        {

          v3 = v36;
          goto LABEL_26;
        }

        ++v16;
        if (*(v10 + 8 * v8))
        {
          OUTLINED_FUNCTION_8_29();
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v7;
  }
}

void sub_25BBB9508(uint64_t a1, char a2)
{
  v51 = sub_25BCB5CDC();
  v5 = OUTLINED_FUNCTION_2(v51);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v50 = v11 - v10;
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB0, &qword_25BCBBE00);
  v48 = a2;
  v14 = sub_25BCB759C();
  if (!*(v12 + 16))
  {
LABEL_31:

    *v2 = v14;
    return;
  }

  v15 = 0;
  v17 = (v12 + 64);
  v16 = *(v12 + 64);
  v18 = *(v12 + 32);
  OUTLINED_FUNCTION_2_43();
  v20 = v19 >> 6;
  v45 = (v7 + 16);
  v46 = v12;
  v47 = v7;
  v49 = (v7 + 32);
  v21 = v14 + 64;
  if (!v2)
  {
LABEL_6:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v20)
      {
        break;
      }

      ++v23;
      if (v17[v15])
      {
        OUTLINED_FUNCTION_8_29();
        goto LABEL_11;
      }
    }

    if (v48)
    {
      v44 = 1 << *(v12 + 32);
      if (v44 >= 64)
      {
        sub_25BC42288(0, (v44 + 63) >> 6, v17);
      }

      else
      {
        *v17 = -1 << v44;
      }

      *(v12 + 16) = 0;
    }

    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_9_28();
LABEL_11:
    v24 = v22 | (v15 << 6);
    v25 = *(v12 + 56);
    v26 = (*(v12 + 48) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(v47 + 72);
    v30 = v25 + v29 * v24;
    if (v48)
    {
      (*v49)(v50, v30, v51);
    }

    else
    {
      (*v45)(v50, v30, v51);
      sub_25BCB617C();
    }

    v31 = *(v14 + 40);
    sub_25BCB79CC();
    sub_25BCB625C();
    sub_25BCB7A3C();
    v32 = *(v14 + 32);
    OUTLINED_FUNCTION_7_27();
    if (((v35 << v34) & ~*(v21 + 8 * v33)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_6_37();
LABEL_23:
    OUTLINED_FUNCTION_3_32();
    *(v21 + v40) |= v41;
    v43 = (*(v14 + 48) + 16 * v42);
    *v43 = v28;
    v43[1] = v27;
    (*v49)(*(v14 + 56) + v29 * v42, v50, v51);
    ++*(v14 + 16);
    v12 = v46;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_5_35();
  while (++v36 != v38 || (v37 & 1) == 0)
  {
    v39 = v36 == v38;
    if (v36 == v38)
    {
      v36 = 0;
    }

    v37 |= v39;
    if (*(v21 + 8 * v36) != -1)
    {
      OUTLINED_FUNCTION_4_37();
      goto LABEL_23;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_25BBB9804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5E20, &unk_25BCC7150);
    v2 = sub_25BCB75AC();
    v18 = v2;
    sub_25BCB748C();
    while (1)
    {
      v3 = sub_25BCB74BC();
      if (!v3)
      {

        return v2;
      }

      v16 = v3;
      sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
      swift_dynamicCast();
      sub_25BB2BA50(0, &qword_27FBB5E00, 0x277CD7880);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_25BBB9070(v4 + 1, 1);
      }

      v2 = v18;
      v5 = *(v18 + 40);
      result = sub_25BCB6DEC();
      v7 = v18 + 64;
      v8 = -1 << *(v18 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v18 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v18 + 48) + 8 * v11) = v17;
      *(*(v18 + 56) + 8 * v11) = v16;
      ++*(v18 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_25BBB9A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();
  v9 = [a5 placeholderWithShape:a1 dataType:a2 name:v8];

  return v9;
}

uint64_t sub_25BBB9A9C(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_25BB2BA50(0, a3, a4);
  v8 = sub_25BCB673C();

  return v8;
}

unint64_t sub_25BBB9B10()
{
  result = qword_27FBB5E08;
  if (!qword_27FBB5E08)
  {
    sub_25BB2BA50(255, &qword_27FBB3908, 0x277CD7888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E08);
  }

  return result;
}

unint64_t sub_25BBB9B78()
{
  result = qword_27FBB5E10;
  if (!qword_27FBB5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E10);
  }

  return result;
}

uint64_t sub_25BBB9C64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  switch(a3 >> 62)
  {
    case 1uLL:

      result = swift_unknownObjectRelease();
      break;
    case 2uLL:
      goto LABEL_3;
    case 3uLL:
      return result;
    default:
      swift_unknownObjectRelease();
LABEL_3:

      break;
  }

  return result;
}

uint64_t sub_25BBB9CD4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MPSGraphExecutor.ExecutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BBB9DC8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25BBB9E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25BBB9E6C()
{
  result = qword_27FBB5E68;
  if (!qword_27FBB5E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E68);
  }

  return result;
}

uint64_t Sequential.init(_:_:)()
{
  OUTLINED_FUNCTION_22_17();
  (*(*(v3 - 8) + 32))(v2);
  v4 = type metadata accessor for Sequential();
  return (*(*(v0 - 8) + 32))(v2 + *(v4 + 52), v1, v0);
}

void Sequential.initializeParameters(for:)()
{
  OUTLINED_FUNCTION_9_18();
  v20 = v1;
  v3 = v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_16_4();
  v11 = *(v3 + 40);
  v12 = *(v3 + 24);
  v13 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_35_11();
  v19 = *(v3 + 52);
  Layer.callAsFunction(_:)(v20, v5, v4);
  Layer.callAsFunction(_:)(v0, v12, v11);
  (*(v7 + 8))(v0, AssociatedTypeWitness);
  (*(v15 + 8))(&associated type descriptor for Layer.Output, v13);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBBA148(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726579616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x32726579616CLL && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BBBA210(char a1)
{
  if (a1)
  {
    return 0x32726579616CLL;
  }

  else
  {
    return 0x31726579616CLL;
  }
}

BOOL sub_25BBBA238(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_25BADE118(*a1, *a2);
}

uint64_t sub_25BBBA250(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_25BB0856C(*v1);
}

uint64_t sub_25BBBA264(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_25BABA604(a1, *v2);
}

uint64_t sub_25BBBA278(uint64_t a1, void *a2)
{
  sub_25BCB79CC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_25BABA604(v9, *v2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BBBA2C4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_25BBBA210(*v1);
}

uint64_t sub_25BBBA2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_25BBBA148(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_25BBBA30C(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return sub_25BB085B4();
}

uint64_t sub_25BBBA338@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_25BB0716C();
  *a2 = result;
  return result;
}

uint64_t sub_25BBBA36C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BBBA3C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Sequential.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = *(v25 + 24);
  OUTLINED_FUNCTION_9();
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9();
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1();
  v45 = v44 - v43;
  (*(v46 + 16))(v21, v20 + *(v25 + 52), v34);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v25);
    (*(v39 + 32))(v45, v33, v25);
    v47 = Sequential.count.getter(v25);
    v48 = *(v39 + 8);
    v49 = OUTLINED_FUNCTION_34_0();
    v50(v49);
    if (!__OFADD__(v47, 1))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  __swift_storeEnumTagSinglePayload(v33, 1, 1, v25);
  (*(v28 + 8))(v33, v26);
LABEL_6:
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBBA64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_25BCB6E8C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = *(a3 + 24);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  if (a1 == a2)
  {
    v27 = *(a3 + 16);
    v28 = *(a3 + 32);
    a4[3] = v27;
    a4[4] = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    v30 = *(*(v27 - 8) + 16);

    return v30(boxed_opaque_existential_0, v4, v27);
  }

  else
  {
    v32 = v23;
    v35 = v21;
    (*(v22 + 16))(v17, v4 + *(a3 + 52), v13, v24);
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
      (*(v18 + 32))(v26, v12, a3);
      if (!__OFADD__(a2, 1))
      {
        sub_25BBBA64C(v36, a2 + 1, a3);
        return (*(v18 + 8))(v26, a3);
      }

      __break(1u);
    }

    __swift_storeEnumTagSinglePayload(v12, 1, 1, a3);
    (*(v32 + 8))(v12, v35);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_25BCB70FC();

    v38 = 0x60207865646E49;
    v39 = 0xE700000000000000;
    v37 = v36;
    v33 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v33);

    MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDFAC0);
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

void Layer.appending<A>(_:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_35_11();
  (*(v9 + 16))(v0, v10, v2);
  v11 = OUTLINED_FUNCTION_38_10();
  v12(v11);
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_10_16();
}

uint64_t Sequential<>.encode(to:)(void *a1, uint64_t a2)
{
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 40);
  type metadata accessor for Sequential.CodingKeys();
  OUTLINED_FUNCTION_14_24();
  swift_getWitnessTable();
  v5 = sub_25BCB77CC();
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_31_13();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB7B6C();
  sub_25BCB779C();
  if (!v17)
  {
    v12 = *(a2 + 52);
    sub_25BCB779C();
  }

  return (*(v7 + 8))(v2, v5);
}

uint64_t Sequential<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_9();
  v30 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  v33 = v11;
  OUTLINED_FUNCTION_9();
  v32 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_4();
  v34 = v16;
  type metadata accessor for Sequential.CodingKeys();
  OUTLINED_FUNCTION_14_24();
  swift_getWitnessTable();
  v36 = sub_25BCB76FC();
  OUTLINED_FUNCTION_2(v36);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_24();
  v35 = a2;
  v20 = type metadata accessor for Sequential();
  OUTLINED_FUNCTION_2(v20);
  v29 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_16_4();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BCB7B2C();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_25BCB76AC();
  (*(v32 + 32))(a3, v34, v35);
  sub_25BCB76AC();
  v26 = OUTLINED_FUNCTION_29_14();
  v27(v26);
  (*(v30 + 32))(a3 + *(v20 + 52), v33, a3);
  (*(v29 + 16))(a4, a3, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v29 + 8))(a3, v20);
}

uint64_t sub_25BBBB0D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(a3 - 24);
  v6 = a2[4];
  v7 = a2[5];
  return Sequential<>.init(from:)(a1, a2[2], a2[3], a4);
}

uint64_t sub_25BBBB104(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 32);
  return Sequential<>.encode(to:)(a1, a2);
}

void static SequentialBuilder.buildBlock<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_35_11();
  (*(v7 + 16))(v0);
  v8 = OUTLINED_FUNCTION_38_10();
  v9(v8);
  OUTLINED_FUNCTION_28_14();
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v60[1] = v22;
  v61 = v21;
  v65 = v23;
  v66 = v24;
  v26 = v25;
  v28 = v27;
  v62 = v29;
  v64 = v30;
  OUTLINED_FUNCTION_9();
  v32 = v31;
  v34 = *(v33 + 64);
  v63 = a21;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  OUTLINED_FUNCTION_9();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  v67 = v47;
  v68 = v48;
  v69 = v49;
  v70 = v50;
  v51 = type metadata accessor for Sequential();
  OUTLINED_FUNCTION_2(v51);
  v53 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  v57 = MEMORY[0x28223BE20](v56);
  v59 = v60 - v58;
  (*(v40 + 16))(v46, v61, v28, v57);
  (*(v32 + 16))(v38, v62, v26);
  OUTLINED_FUNCTION_34_0();
  Sequential.init(_:_:)();
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  (*(v53 + 8))(v59, v51);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D>(_:_:_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v36 = v5;
  v31 = v6;
  OUTLINED_FUNCTION_9();
  v34 = v8;
  v35 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_4();
  v33 = v11;
  OUTLINED_FUNCTION_9();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v20);
  v32 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_23();
  swift_getWitnessTable();
  v25 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17_24();
  (*(v13 + 16))(v19, v35, v4);
  (*(v34 + 16))(v33, v36, v31);
  Sequential.init(_:_:)();
  Layer.appending<A>(_:)();
  (*(v32 + 8))(v0, v20);
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  (*(v27 + 8))(v2, v25);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E>(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v28;
  a20 = v29;
  v31 = v30;
  v86 = v30;
  v33 = v32;
  v98 = v34;
  v99 = v35;
  v96 = v36;
  v97 = v37;
  v101 = v38;
  v102 = a27;
  v103 = v39;
  v40 = a21;
  v100 = a22;
  v81 = a21;
  v41 = a26;
  v82 = a26;
  v42 = a25;
  v85 = a25;
  v89 = v43;
  OUTLINED_FUNCTION_9();
  v95 = v44;
  v46 = *(v45 + 64);
  v92 = a23;
  v93 = a24;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_4();
  v94 = v48;
  OUTLINED_FUNCTION_9();
  v90 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_4();
  v54 = v53;
  v104 = v55;
  v105 = v56;
  v106 = v58;
  v107 = v57;
  v59 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v59);
  v91 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_13_23();
  v65 = v64;
  v87 = v64;
  WitnessTable = swift_getWitnessTable();
  v104 = v59;
  v105 = v31;
  v106 = WitnessTable;
  v107 = v42;
  v66 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v66);
  v88 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v70);
  v72 = &v79 - v71;
  v80 = swift_getWitnessTable();
  v104 = v66;
  v105 = v40;
  v106 = v80;
  v107 = v41;
  v73 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v73);
  v83 = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_31_13();
  (*(v90 + 16))(v54, v96, v33);
  (*(v95 + 16))(v94, v97, v89);
  Sequential.init(_:_:)();
  Layer.appending<A>(_:)();
  (*(v91 + 8))(v27, v59);
  Layer.appending<A>(_:)();
  (*(v88 + 8))(v72, v66);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a15);
  v78(v65, v73);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F>(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v30;
  a20 = v31;
  v109 = v32;
  v119 = v33;
  v120 = v34;
  v117 = v35;
  v118 = v36;
  v116 = v37;
  v122 = v38;
  v39 = a29;
  v123 = a30;
  v124 = v40;
  v97 = a29;
  v41 = a23;
  v121 = a24;
  v96 = a23;
  v42 = a28;
  v102 = a28;
  v43 = a27;
  v107 = a27;
  v44 = a22;
  v101 = a22;
  v45 = a21;
  v106 = a21;
  v110 = v46;
  OUTLINED_FUNCTION_9();
  v115 = v47;
  v49 = *(v48 + 64);
  v112 = a25;
  v113 = a26;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_4();
  v114 = v51;
  OUTLINED_FUNCTION_9();
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1();
  v59 = v58 - v57;
  v125 = v60;
  v126 = v61;
  v127 = v63;
  v128 = v62;
  v64 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2_44(v64, &a15);
  v111 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v69);
  v71 = v70;
  WitnessTable = swift_getWitnessTable();
  v125 = v64;
  v126 = v45;
  v127 = WitnessTable;
  v128 = v43;
  v72 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v72);
  v108 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v77);
  v103 = v71;
  v100 = swift_getWitnessTable();
  v125 = v72;
  v126 = v44;
  v127 = v100;
  v128 = v42;
  v78 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v78);
  v104 = v79;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v82);
  v84 = &v94 - v83;
  v95 = swift_getWitnessTable();
  v125 = v78;
  v126 = v41;
  v127 = v95;
  v128 = v39;
  v85 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v85);
  v99 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_17_24();
  v90 = v109;
  (*(v53 + 16))(v59, v116, v109);
  (*(v115 + 16))(v114, v117, v110);
  OUTLINED_FUNCTION_37_9(&a14);
  Sequential.init(_:_:)();
  v91 = v98;
  OUTLINED_FUNCTION_27_16();
  Layer.appending<A>(_:)();
  (*(v111 + 8))(v43, v90);
  Layer.appending<A>(_:)();
  (*(v108 + 8))(v91, v72);
  OUTLINED_FUNCTION_10_25();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a13);
  v92(v84, v78);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v129);
  v93(v39, v85);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v33;
  a20 = v34;
  v93 = v35;
  v101[0] = v36;
  v99 = v37;
  v100 = v38;
  v101[2] = v39;
  v101[3] = a33;
  v101[4] = v40;
  v41 = a25;
  v101[1] = a26;
  v42 = a32;
  v43 = a31;
  v44 = a24;
  v45 = a23;
  v46 = a30;
  v47 = a29;
  v48 = a22;
  v94 = a21;
  OUTLINED_FUNCTION_9();
  v98 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5_4();
  v97 = v53;
  OUTLINED_FUNCTION_9();
  v95 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v58);
  v102 = v59;
  v103 = v60;
  WitnessTable = v62;
  v105 = v61;
  v63 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2_44(v63, &a12);
  v96 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v68);
  v102 = v63;
  v103 = v48;
  WitnessTable = swift_getWitnessTable();
  v105 = v47;
  v69 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v69, &WitnessTable);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v73);
  v102 = v47;
  v103 = v45;
  WitnessTable = swift_getWitnessTable();
  v105 = v46;
  v74 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v74);
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v78);
  v102 = v74;
  v103 = v44;
  WitnessTable = swift_getWitnessTable();
  v105 = v43;
  v79 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_16_4();
  v102 = v79;
  v103 = v41;
  WitnessTable = swift_getWitnessTable();
  v105 = v42;
  v83 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_26_1();
  (*(v95 + 16))(v92, v99, v93);
  (*(v98 + 16))(v97, v100, v94);
  Sequential.init(_:_:)();
  Layer.appending<A>(_:)();
  (*(v96 + 8))();
  OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_25_15();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a16);
  v87();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a10);
  v88(v91, v74);
  OUTLINED_FUNCTION_24_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v103);
  v89(v44, v79);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(v101);
  v90(v41, v83);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F, G, H>(_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v37;
  a20 = v38;
  v120 = v39;
  v121[0] = v40;
  v118 = v41;
  v119 = v42;
  v116 = v43;
  v117 = v44;
  v115 = v45;
  v121[2] = v46;
  v121[3] = a36;
  v122 = v47;
  v121[1] = a28;
  v123 = a27;
  v124 = a35;
  v48 = a34;
  v49 = a33;
  v50 = a26;
  v51 = a25;
  v52 = a32;
  v53 = a31;
  v54 = a24;
  v55 = a23;
  v112 = a22;
  OUTLINED_FUNCTION_9();
  v114 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_5_4();
  v113 = v60;
  v111 = v61;
  OUTLINED_FUNCTION_9();
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v65);
  v125 = v66;
  v126 = v67;
  WitnessTable = v69;
  v128 = v68;
  v70 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v70, &a9);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v74);
  v125 = v36;
  v126 = v55;
  WitnessTable = swift_getWitnessTable();
  v128 = v53;
  v75 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v75, &v124);
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v79);
  v109 = swift_getWitnessTable();
  v125 = v36;
  v126 = v54;
  WitnessTable = v109;
  v128 = v52;
  v80 = OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_2_44(v80, v121);
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v84);
  v108 = swift_getWitnessTable();
  v125 = v52;
  v126 = v51;
  WitnessTable = v108;
  v128 = v49;
  v85 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v85);
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v89);
  v107 = swift_getWitnessTable();
  v125 = v85;
  v126 = v50;
  WitnessTable = v107;
  v128 = v48;
  v90 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v90);
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_26_1();
  v106 = swift_getWitnessTable();
  v125 = v90;
  v126 = v123;
  v94 = OUTLINED_FUNCTION_18_22(v106, v124);
  OUTLINED_FUNCTION_2(v94);
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_36_10(&a17);
  v98(v110, v115, v111);
  (*(v114 + 16))(v113, v116, v112);
  Sequential.init(_:_:)();
  OUTLINED_FUNCTION_33_12(&v122);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a18);
  v99();
  OUTLINED_FUNCTION_37_9(&v119);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_10_25();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a13);
  v100(v111, v112);
  OUTLINED_FUNCTION_33_12(&v113);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_23_17();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v128);
  v101 = OUTLINED_FUNCTION_34_0();
  v102(v101);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v123);
  v103(v111, v85);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v120);
  v104(v48, v90);
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v114);
  v105(v55, v94);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F, G, H, I>(_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v40;
  a20 = v41;
  v139[1] = v42;
  v139[2] = v43;
  v137 = v44;
  v138 = v45;
  v135 = v46;
  v136 = v47;
  v133 = v48;
  v134 = v49;
  v139[4] = v50;
  v139[3] = a30;
  v143 = a29;
  v144 = a38;
  v142 = a37;
  v51 = a27;
  v140 = a39;
  v141 = a28;
  v52 = a36;
  v53 = a35;
  v54 = a26;
  v55 = a25;
  v56 = a34;
  v57 = a33;
  v131[2] = a32;
  v131[1] = a31;
  v58 = a24;
  v129 = a23;
  OUTLINED_FUNCTION_9();
  v132 = v59;
  v61 = *(v60 + 64);
  v139[0] = a21;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v63);
  v128 = v64;
  OUTLINED_FUNCTION_9();
  v130 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v69);
  v145 = v70;
  v146 = v71;
  WitnessTable = v73;
  v148 = v72;
  v74 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v74, &WitnessTable);
  v131[0] = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v79);
  v81 = v80;
  v145 = v39;
  v146 = v58;
  WitnessTable = swift_getWitnessTable();
  v148 = v57;
  v82 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v82, &v141);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v86);
  v125 = swift_getWitnessTable();
  v145 = v39;
  v146 = v55;
  WitnessTable = v125;
  v148 = v56;
  v87 = OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_2_44(v87, v139);
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v91);
  v123 = swift_getWitnessTable();
  v145 = v56;
  v146 = v54;
  WitnessTable = v123;
  v148 = v53;
  v92 = OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_2_44(v92, &v133);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v96);
  v122 = swift_getWitnessTable();
  v145 = v56;
  v146 = v51;
  WitnessTable = v122;
  v148 = v52;
  v97 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_19_0(v101);
  v120 = swift_getWitnessTable();
  v145 = v97;
  v146 = v141;
  v102 = OUTLINED_FUNCTION_18_22(v120, v142);
  OUTLINED_FUNCTION_2(v102);
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_31_13();
  v119 = swift_getWitnessTable();
  v145 = v102;
  v146 = v143;
  v106 = OUTLINED_FUNCTION_18_22(v119, v144);
  OUTLINED_FUNCTION_2(v106);
  v108 = *(v107 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_36_10(&a14);
  v110(v127, v133, v128);
  (*(v132 + 16))(v131[3], v134, v129);
  Sequential.init(_:_:)();
  OUTLINED_FUNCTION_25_15();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a15);
  v111();
  OUTLINED_FUNCTION_37_9(&v137);
  OUTLINED_FUNCTION_32_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a10);
  v112(v124, v128);
  OUTLINED_FUNCTION_32_12();
  OUTLINED_FUNCTION_24_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v145);
  v113 = OUTLINED_FUNCTION_34_0();
  v114(v113);
  OUTLINED_FUNCTION_37_9(&v130);
  OUTLINED_FUNCTION_32_12();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v140);
  v115(v121, v128);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v138);
  v116(v126, v97);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v132);
  v117(v58, v102);
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(v131);
  v118(v81, v106);
  OUTLINED_FUNCTION_10_16();
}

void static SequentialBuilder.buildBlock<A, B, C, D, E, F, G, H, I, J>(_:_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_9_18();
  a19 = v42;
  a20 = v43;
  v184[0] = v44;
  v184[1] = v45;
  v182 = v46;
  v183 = v47;
  v180 = v48;
  v181 = v49;
  v179 = v50;
  v178 = v51;
  v187 = v52;
  v185 = a42;
  v186 = a22;
  v193 = a41;
  v184[2] = a21;
  v184[3] = a32;
  v191 = a40;
  v192 = a31;
  v189 = a39;
  v190 = a30;
  v188 = a29;
  v53 = a38;
  v153 = a38;
  v54 = a37;
  v158 = a37;
  v55 = a28;
  v152 = a28;
  v56 = a27;
  v157 = a27;
  v57 = a36;
  v162 = a36;
  v58 = a35;
  v168 = a35;
  v172 = a24;
  OUTLINED_FUNCTION_9();
  v177 = v59;
  v61 = *(v60 + 64);
  v62 = a26;
  v161 = a26;
  v63 = a25;
  v167 = a25;
  v175[1] = a34;
  v175[0] = a33;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v65);
  v171 = v66;
  OUTLINED_FUNCTION_9();
  v173 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_19_0(v71);
  v194 = v72;
  v195 = v73;
  v196 = v75;
  v197 = v74;
  v76 = OUTLINED_FUNCTION_21_19();
  OUTLINED_FUNCTION_2_44(v76, &v193);
  v174 = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_1_42(v81);
  v83 = v82;
  WitnessTable = swift_getWitnessTable();
  v194 = v76;
  v195 = v63;
  v196 = WitnessTable;
  v197 = v58;
  v84 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v84, &v187);
  v169 = v85;
  v87 = *(v86 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v89);
  v160 = swift_getWitnessTable();
  v194 = v63;
  v195 = v62;
  v196 = v160;
  v197 = v57;
  v90 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v90, v184);
  v163 = v91;
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v95);
  v156 = swift_getWitnessTable();
  v194 = v63;
  v195 = v56;
  v196 = v156;
  v197 = v54;
  v96 = OUTLINED_FUNCTION_6_38();
  OUTLINED_FUNCTION_2_44(v96, &v178);
  v159 = v97;
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v101);
  v151 = swift_getWitnessTable();
  v194 = v63;
  v195 = v55;
  v196 = v151;
  v197 = v53;
  v102 = OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_2_44(v102, v175);
  v155 = v103;
  v105 = *(v104 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v107);
  v149 = swift_getWitnessTable();
  v194 = v55;
  v195 = v188;
  v108 = OUTLINED_FUNCTION_18_22(v149, v189);
  OUTLINED_FUNCTION_2(v108);
  v150 = v109;
  v111 = *(v110 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_12_23();
  OUTLINED_FUNCTION_9_29(v113);
  v146 = v83;
  v145 = swift_getWitnessTable();
  v194 = v108;
  v195 = v190;
  v114 = OUTLINED_FUNCTION_18_22(v145, v191);
  OUTLINED_FUNCTION_2(v114);
  v148 = v115;
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v118);
  v120 = &v142 - v119;
  v143 = swift_getWitnessTable();
  v194 = v114;
  v195 = v192;
  v121 = OUTLINED_FUNCTION_18_22(v143, v193);
  OUTLINED_FUNCTION_2(v121);
  v144 = v122;
  v124 = *(v123 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_17_24();
  OUTLINED_FUNCTION_36_10(&a11);
  v126 = v170;
  v127 = v171;
  v128(v170, v178, v171);
  OUTLINED_FUNCTION_36_10(&a16);
  v129(v176, v179, v172);
  v130 = v164;
  Sequential.init(_:_:)();
  OUTLINED_FUNCTION_33_12(&v185);
  v131 = v165;
  OUTLINED_FUNCTION_10_25();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&a12);
  v132(v130, v131);
  v133 = v154;
  OUTLINED_FUNCTION_27_16();
  OUTLINED_FUNCTION_23_17();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v197);
  v134(v126, v127);
  OUTLINED_FUNCTION_33_12(&v176);
  OUTLINED_FUNCTION_27_16();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v191);
  v135(v133, v127);
  v136 = v147;
  OUTLINED_FUNCTION_27_16();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v186);
  v137(v126, v127);
  OUTLINED_FUNCTION_33_12(&v169);
  OUTLINED_FUNCTION_27_16();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v183);
  v138(v136, v127);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v177);
  v139(v126, v108);
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v174);
  v140(v120, v114);
  swift_getWitnessTable();
  Layer.appending<A>(_:)();
  OUTLINED_FUNCTION_12_12(&v170);
  v141(v55, v121);
  OUTLINED_FUNCTION_10_16();
}

uint64_t Array<A>.callAsFunction(_:)()
{
  sub_25BCB68CC();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  return sub_25BCB663C();
}

uint64_t sub_25BBBDD18(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_25BBBDD54(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BBBDDE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_25BBBDFA8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SequentialBuilder(_BYTE *result, int a2, int a3)
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

_BYTE *sub_25BBBE2E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ResolutionDescriptor.init(traverseCapturedDependencies:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = MEMORY[0x277D84FA0];
  return result;
}

uint64_t sub_25BBBE444@<X0>(float *a1@<X8>)
{
  v3 = *(v1 + 128);
  if (v3 == 1)
  {
    v4 = MEMORY[0x277D82F68];
  }

  else
  {
    if (v3 != 2)
    {
      sub_25BBB2E50();
      sub_25BC177D8(1);
      sub_25BA97890();
    }

    v5 = *(v1 + 132);
    if (*(v1 + 136))
    {
      v5 = 0.0;
    }

    *a1 = v5;
    v4 = MEMORY[0x277D82F60];
  }

  v6 = *v4;
  v7 = sub_25BCB530C();
  v8 = *(*(v7 - 8) + 104);

  return v8(a1, v6, v7);
}

void sub_25BBBE560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v23;
  a20 = v24;
  v92 = v22;
  v25 = v21;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v29 = OUTLINED_FUNCTION_6_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_1();
  v93 = v36;
  v37 = sub_25BCB54EC();
  v38 = OUTLINED_FUNCTION_0_54(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_0();
  v45 = v43 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v88 - v47;
  v49 = *(v21 + 40);
  v50 = sub_25BAC4018();
  if (sub_25BB3EE04(v50, v27))
  {
    v52 = v51;
    v94 = v25;
    v95 = v45;
    v91 = v40;
    ObjectType = swift_getObjectType();
    v54 = *(v52 + 16);
    v54(&v97, ObjectType, v52);
    v55 = *(v97 + 16);

    v96 = v48;
    if (v55 < 2)
    {
      v89 = 1;
    }

    else
    {
      v54(&v99, ObjectType, v52);
      if (!*(v99 + 16))
      {
        OUTLINED_FUNCTION_4_38();
        OUTLINED_FUNCTION_11_5();
      }

      v89 = *(v99 + 32);
    }

    type metadata accessor for NativeTensorStorage();
    sub_25BAB9E04(&v97);
    sub_25BAB9E04(&v99);
    v60 = v100;

    v98 = v60;
    OUTLINED_FUNCTION_17_10();
    v61 = v92;
    sub_25BBC0130(v62, v63, v64);
    v66 = v65;
    v92 = v61;
    if (*(*(v65 + 16) + 16))
    {
      v67 = *(v65 + 16);
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_5_0();

    v54(&v97, ObjectType, v52);
    v68 = *(v97 + 16);
    v90 = ObjectType;
    v88 = v52;
    if (!v68)
    {
    }

    v69 = v91;
    OUTLINED_FUNCTION_5_0();

    v70 = *(v69 + 16);
    v71 = v93;
    OUTLINED_FUNCTION_13_24();
    v70(v72);
    OUTLINED_FUNCTION_2_6(v71);
    v73 = v96;
    OUTLINED_FUNCTION_13_24();
    v70(v74);
    v75 = OUTLINED_FUNCTION_2_6(v34);
    MEMORY[0x28223BE20](v75);
    OUTLINED_FUNCTION_9_30();
    v76 = v89;
    *(v77 - 16) = v94;
    *(v77 - 8) = v76;
    MEMORY[0x28223BE20](v78);
    OUTLINED_FUNCTION_35_3();
    *(v79 - 48) = v66;
    *(v79 - 40) = &off_286D4DBE0;
    *(v79 - 32) = v34;
    *(v79 - 24) = sub_25BBC00B8;
    *(v79 - 16) = v80;

    OUTLINED_FUNCTION_39_0();
    v81 = v61;
    v82 = v92;
    sub_25BC675C0(v83, v81, v84, &a15);
    if (v82)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v71);
      v85 = *(v69 + 8);
      v85(v95, v20);
      v85(v73, v20);
      sub_25BB0EA20(v34);
    }

    else
    {

      sub_25BB0EA20(v71);
      sub_25BB0EA20(v34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v86 = OUTLINED_FUNCTION_31();
      *(v86 + 16) = xmmword_25BCBAE50;
      *(v86 + 32) = v66;
      *(v86 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v87 = *(v69 + 8);
      v87(v95, v20);
      v87(v73, v20);
    }
  }

  else
  {
    v56 = sub_25BBB2E50();
    v58 = v57;
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v59 = v56;
    *(v59 + 8) = v58;
    *(v59 + 16) = 0x4000;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBBEA64()
{
  v0 = sub_25BCB530C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25BBBE444(v4);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  sub_25BCB528C();
  return (*(v1 + 8))(v4, v0);
}

void sub_25BBBEBA4()
{
  OUTLINED_FUNCTION_17_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v62 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v61 = v12;
  v13 = sub_25BCB54EC();
  v14 = OUTLINED_FUNCTION_0_54(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 40);
  v22 = sub_25BAC4018();
  if (sub_25BB3EE04(v22, v4))
  {
    v24 = v23;
    v57 = v2;
    v58 = v0;
    ObjectType = swift_getObjectType();
    v26 = *(v24 + 16);
    v26(v63, ObjectType, v24);
    v27 = *(v63[0] + 16);

    v59 = ObjectType;
    v60 = v24;
    if (v27 < 2)
    {
      v56 = 1;
    }

    else
    {
      v26(&v65, ObjectType, v24);
      if (!*(v65 + 16))
      {
        OUTLINED_FUNCTION_4_38();
        OUTLINED_FUNCTION_11_5();
      }

      v56 = *(v65 + 32);
    }

    v30 = v16;
    v31 = v20;
    v32 = v58;
    type metadata accessor for NativeTensorStorage();
    sub_25BAB9E04(v63);
    sub_25BAB9E04(&v65);
    v33 = v66;

    v64 = v33;
    OUTLINED_FUNCTION_17_10();
    v34 = v57;
    sub_25BBC0130(v35, v36, v37);
    v39 = v38;
    v58 = v34;
    v41 = v61;
    v40 = v62;
    if (*(*(v38 + 16) + 16))
    {
      v42 = *(v38 + 16);
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_5_0();

    v43 = v30;
    v44 = *(v30 + 16);
    OUTLINED_FUNCTION_13_24();
    v44();
    OUTLINED_FUNCTION_2_6(v41);
    OUTLINED_FUNCTION_13_24();
    v44();
    v45 = OUTLINED_FUNCTION_2_6(v40);
    MEMORY[0x28223BE20](v45);
    OUTLINED_FUNCTION_9_30();
    *(v46 - 16) = v56;
    MEMORY[0x28223BE20](v47);
    OUTLINED_FUNCTION_35_3();
    *(v48 - 48) = v39;
    *(v48 - 40) = &off_286D4DBE0;
    *(v48 - 32) = v40;
    *(v48 - 24) = sub_25BBC00D4;
    *(v48 - 16) = v49;

    OUTLINED_FUNCTION_39_0();
    v50 = v34;
    v51 = v58;
    sub_25BC675C0(v52, v50, v53, v54);
    if (v51)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v41);
      (*(v43 + 8))(v31, v32);
      sub_25BB0EA20(v40);
    }

    else
    {

      sub_25BB0EA20(v41);
      sub_25BB0EA20(v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v55 = OUTLINED_FUNCTION_31();
      *(v55 + 16) = xmmword_25BCBAE50;
      *(v55 + 32) = v39;
      *(v55 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      (*(v43 + 8))(v31, v32);
    }
  }

  else
  {
    sub_25BB0E2EC();
    v28 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC7640, v28, v29);
  }

  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBBEFF0()
{
  v0 = sub_25BCB530C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D82F58], v0, v3);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  sub_25BCB528C();
  return (*(v1 + 8))(v5, v0);
}

void sub_25BBBF14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_17_1();
  a19 = v23;
  a20 = v24;
  v104 = v22;
  v25 = v21;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v29 = OUTLINED_FUNCTION_6_0(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v93 - v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_1();
  v105 = v39;
  v40 = sub_25BCB54EC();
  v41 = OUTLINED_FUNCTION_0_54(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v47 = v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v48 = *(v21 + 112);
  v49 = sub_25BAC4018();
  v50 = sub_25BB3EE04(v49, v27);
  v106 = v51;
  if (!v50)
  {
    goto LABEL_9;
  }

  v52 = v50;
  v53 = *(v25 + 40);
  v54 = sub_25BAC4018();
  v55 = sub_25BB3EE04(v54, v27);
  if (!v55)
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_25BB0E2EC();
    v65 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC7650, v65, v66);
    goto LABEL_16;
  }

  v57 = v55;
  v103 = v56;
  ObjectType = swift_getObjectType();
  v59 = *(v106 + 8);
  v99 = ObjectType;
  v98 = (v106 + 8);
  v97 = v59;
  v59(v107);
  if (LOBYTE(v107[0]) <= 0xCu && ((1 << SLOBYTE(v107[0])) & 0x1777) != 0)
  {
    v100 = v47;
    v96 = v34;
    v102 = v37;
    v101 = v43;
    v60 = v57;
    v61 = swift_getObjectType();
    v62 = v103;
    v63 = *(v103 + 16);
    v63(v107, v61, v103);
    v64 = *(v107[0] + 16);

    v95 = v60;
    if (v64 < 2)
    {
      v94 = 1;
    }

    else
    {
      v63(&v115, v61, v62);
      if (!*(v115 + 16))
      {
        memset(v107, 0, sizeof(v107));
        v108 = -1;
        v110 = 0;
        v111 = 0;
        v109 = 0;
        v112 = -1;
        v113 = 4;
        OUTLINED_FUNCTION_11_5();
      }

      v94 = *(v115 + 32);
    }

    v67 = v101;
    v68 = v105;
    v69 = v100;
    type metadata accessor for NativeTensorStorage();
    sub_25BAB9E04(v107);
    sub_25BAB9E04(&v115);
    v70 = v116;

    v114 = v70;
    OUTLINED_FUNCTION_17_10();
    v71 = v104;
    sub_25BBC0130(v72, v73, v74);
    v76 = v75;
    v104 = v71;
    v77 = *(*(v75 + 16) + 16);
    v78 = v102;
    v93[1] = v52;
    if (v77)
    {
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_5_0();

    v79 = *(v67 + 16);
    v79(v68, v69, v20);
    OUTLINED_FUNCTION_2_6(v68);
    v79(v78, v69, v20);
    OUTLINED_FUNCTION_2_6(v78);
    v80 = v96;
    v79(v96, v69, v20);
    v93[2] = v20;
    __swift_storeEnumTagSinglePayload(v80, 0, 1, v20);

    v97(v107, v99, v106);
    v81 = sub_25BBF4F40();
    v98 = v93;
    MEMORY[0x28223BE20](v81);
    LODWORD(v93[-4]) = v82;
    v93[-3] = v69;
    v93[-2] = v25;
    v93[-1] = v94;
    MEMORY[0x28223BE20](v82);
    v83 = v103;
    v93[-8] = v95;
    v93[-7] = v83;
    v93[-6] = v78;
    v93[-5] = v76;
    v93[-4] = &off_286D4DBE0;
    v93[-3] = v80;
    v93[-2] = sub_25BBC00F0;
    v93[-1] = v84;
    OUTLINED_FUNCTION_39_0();
    v85 = v104;
    sub_25BC675C0(v86, v87, v88, &a18);
    if (v85)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_16_27();
      sub_25BB0EA20(v80);
      sub_25BB0EA20(v102);
    }

    else
    {

      OUTLINED_FUNCTION_16_27();
      sub_25BB0EA20(v80);
      sub_25BB0EA20(v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v91 = OUTLINED_FUNCTION_31();
      *(v91 + 16) = xmmword_25BCBAE50;
      *(v91 + 32) = v76;
      *(v91 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v89 = OUTLINED_FUNCTION_5_36();
    v90(v89);
  }

  else
  {
    sub_25BB0E2EC();
    OUTLINED_FUNCTION_14_0();
    *v92 = xmmword_25BCC7650;
    *(v92 + 16) = 24576;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

LABEL_16:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBBF7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v6 = sub_25BCB530C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BCB54EC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  (*(v15 + 16))(&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
  sub_25BCB6D8C();
  sub_25BCB526C();
  (*(v7 + 104))(v10, *MEMORY[0x277D82F58], v6);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB525C())
  {
    sub_25BCB50BC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v17 = xmmword_25BCC7650;
    *(v17 + 16) = 0x8000;
    return swift_willThrow();
  }
}

void sub_25BBBFA30()
{
  OUTLINED_FUNCTION_17_1();
  v3 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v7 = OUTLINED_FUNCTION_6_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v65 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v16 = OUTLINED_FUNCTION_6_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = sub_25BCB54EC();
  v20 = OUTLINED_FUNCTION_0_54(v19);
  v66 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v64 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_1();
  v67 = v27;
  v28 = *(v1 + 40);
  v29 = sub_25BAC4018();
  if (sub_25BB3EE04(v29, v5))
  {
    v31 = v30;
    type metadata accessor for NativeTensorStorage();
    sub_25BAB9E04(v71);
    v63 = v3;
    sub_25BAB9E04(&v69);
    v32 = v70;

    v68 = v32;
    OUTLINED_FUNCTION_17_10();
    sub_25BBC0130(v33, v34, v35);
    v37 = v36;
    v61 = v2;
    ObjectType = swift_getObjectType();
    v39 = *(v31 + 16);
    v60[1] = ObjectType;
    v62 = v31;
    v39(v71, ObjectType, v31);
    if (!*(v71[0] + 16))
    {
    }

    sub_25BCB50AC();
    OUTLINED_FUNCTION_17_25();
    sub_25BCB54FC();
    if (*(*(v37 + 16) + 16))
    {
      v40 = *(v37 + 16);
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_17_25();
    v43 = v64;
    sub_25BCB54FC();
    v44 = v66;
    v45 = *(v66 + 16);
    v45(v14, v67, v0);
    OUTLINED_FUNCTION_2_6(v14);
    v46 = v65;
    v45(v65, v43, v0);
    v47 = OUTLINED_FUNCTION_2_6(v46);
    MEMORY[0x28223BE20](v47);
    OUTLINED_FUNCTION_9_30();
    *(v48 - 16) = v63;
    *(v48 - 8) = 1;
    MEMORY[0x28223BE20](v49);
    OUTLINED_FUNCTION_35_3();
    *(v50 - 48) = v37;
    *(v50 - 40) = &off_286D4DBE0;
    *(v50 - 32) = v46;
    *(v50 - 24) = sub_25BBC0114;
    *(v50 - 16) = v51;

    OUTLINED_FUNCTION_39_0();
    v52 = v2;
    v53 = v61;
    sub_25BC675C0(v54, v52, v55, v56);
    if (v53)
    {
      swift_unknownObjectRelease();

      sub_25BB0EA20(v14);
      v57 = *(v44 + 8);
      v57(v43, v0);
      v57(v67, v0);
      sub_25BB0EA20(v46);
    }

    else
    {

      sub_25BB0EA20(v14);
      sub_25BB0EA20(v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      v58 = OUTLINED_FUNCTION_31();
      *(v58 + 16) = xmmword_25BCBAE50;
      *(v58 + 32) = v37;
      *(v58 + 40) = &off_286D4DBE0;
      swift_unknownObjectRelease();
      v59 = *(v44 + 8);
      v59(v43, v0);
      v59(v67, v0);
    }
  }

  else
  {
    sub_25BB0E2EC();
    v41 = OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC7660, v41, v42);
  }

  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBBFEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25BCB530C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB526C();
  (*(v5 + 104))(v8, *MEMORY[0x277D82F70], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = *(a3 + 128);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (sub_25BCB524C())
  {
    sub_25BCB50CC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v11 = xmmword_25BCC7660;
    *(v11 + 16) = 0x8000;
    return swift_willThrow();
  }
}

uint64_t sub_25BBC00B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25BBBEA64();
}

uint64_t sub_25BBC00F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  return sub_25BBBF7BC(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

void sub_25BBC0130(uint64_t *a1, unsigned __int8 *a2, void (*a3)(uint64_t, uint64_t))
{
  v8 = *a1;
  OUTLINED_FUNCTION_7_29(a1, a2);
  if (!v11 & v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = qword_25BCC7770[v9];
  }

  if (*(v8 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v13 == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v14 = 1;
LABEL_10:
  if ((v14 * v12) >> 64 != (v14 * v12) >> 63)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  if (a3 && (, a3(v4, v5), sub_25BA9D148(a3), sub_25BA9D148(a3), v3))
  {
  }

  else
  {
    v16 = v8;
    v15 = v6;
    sub_25BA9FCEC(&v16, &v15, v4, v5, v12);
  }
}

uint64_t sub_25BBC026C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  result = sub_25BAF99E8(*(a2 + 16));
  if (v2)
  {
    v4 = result;
    v5 = sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
    v6 = sub_25BBC0304();
    sub_25BBC052C(v4, v2, v6);
    OUTLINED_FUNCTION_17_26();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBC0304()
{
  result = 2;
  switch(*(v0 + 24))
  {
    case 1:
      result = 6;
      break;
    case 2:
    case 3:
      result = 7;
      break;
    case 4:
      result = 9;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 11;
      break;
    case 7:
      result = 12;
      break;
    case 8:
      return result;
    case 9:
      OUTLINED_FUNCTION_12_24();
      result = OUTLINED_FUNCTION_6_39();
      __break(1u);
      break;
    case 0xA:
      result = 3;
      break;
    case 0xB:
      result = 4;
      break;
    case 0xC:
      result = 0;
      break;
    default:
      result = 5;
      break;
  }

  return result;
}

uint64_t sub_25BBC03B8()
{
  result = 2;
  switch(*(v0 + 32))
  {
    case 1:
      result = 6;
      break;
    case 2:
    case 3:
      result = 7;
      break;
    case 4:
      result = 9;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 11;
      break;
    case 7:
      result = 12;
      break;
    case 8:
      return result;
    case 9:
      OUTLINED_FUNCTION_12_24();
      result = OUTLINED_FUNCTION_6_39();
      __break(1u);
      break;
    case 0xA:
      result = 3;
      break;
    case 0xB:
      result = 4;
      break;
    case 0xC:
      result = 0;
      break;
    default:
      result = 5;
      break;
  }

  return result;
}

uint64_t sub_25BBC046C()
{
  result = 2;
  switch(*(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType))
  {
    case 1:
      result = 6;
      break;
    case 2:
    case 3:
      result = 7;
      break;
    case 4:
      result = 9;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 11;
      break;
    case 7:
      result = 12;
      break;
    case 8:
      return result;
    case 9:
      OUTLINED_FUNCTION_12_24();
      result = OUTLINED_FUNCTION_6_39();
      __break(1u);
      break;
    case 0xA:
      result = 3;
      break;
    case 0xB:
      result = 4;
      break;
    case 0xC:
      result = 0;
      break;
    default:
      result = 5;
      break;
  }

  return result;
}

id sub_25BBC052C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v6 = sub_25BCB672C();

  v7 = [v5 initWithShape:v6 bytes:a2 dataType:a3];

  return v7;
}

uint64_t sub_25BBC05D4()
{
  result = sub_25BCB59BC();
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

void sub_25BBC0694(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *a2;
  if ((v7 - 1) > 0xA)
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_25BCC7770[(v7 - 1)];
  }

  if (*(v6 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v9 == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 1;
LABEL_10:
    if ((v10 * v8) >> 64 == (v10 * v8) >> 63)
    {
      v17 = v6;
      v18 = v7;
      v12 = sub_25BCB6F1C();
      v14 = v13;
      ObjectType = swift_getObjectType();
      v16 = MEMORY[0x28223BE20](ObjectType);
      (*(a5 + 56))(sub_25BBC1530, v16);
      v20 = v17;
      v19 = v18;
      sub_25BA9FCEC(&v20, &v19, v12, v14, v8);
      OUTLINED_FUNCTION_17_26();
      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_20_18();
      return;
    }
  }

  __break(1u);
}

void sub_25BBC0838(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *a2;
  if ((v8 - 1) > 0xA)
  {
    v9 = 1;
  }

  else
  {
    v9 = qword_25BCC7770[(v8 - 1)];
  }

  if (*(v7 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v12)
      {
        break;
      }

      if (v10 == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v11 = 1;
LABEL_10:
  if ((v11 * v9) >> 64 != (v11 * v9) >> 63)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v19 = v7;
  v18 = v8;
  v13 = sub_25BCB6F1C();
  v15 = v14;
  ObjectType = swift_getObjectType();
  v17 = MEMORY[0x28223BE20](ObjectType);
  (*(a5 + 56))(sub_25BBC1578, v17);
  if (v5)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v21 = v19;
    v20 = v18;
    sub_25BA9FCEC(&v21, &v20, v13, v15, v9);
    OUTLINED_FUNCTION_17_26();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_25BBC09FC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  if ((v5 - 1) > 0xA)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_25BCC7770[(v5 - 1)];
  }

  if (v6 > a3)
  {
LABEL_15:
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = a3;
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45();
  }

  OUTLINED_FUNCTION_22_18(a1);
  if (v8)
  {
    OUTLINED_FUNCTION_21_20();
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_3_33(v7);
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = sub_25BCB6F1C();
  v13[0] = v3;
  v14 = v5;
  return sub_25BA9FCEC(v13, &v14, v10, v11, a3);
}

uint64_t sub_25BBC0BE0(uint64_t a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_8_30(a1, a2);
  if (!v7 & v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_25BCC7770[v5];
  }

  if (v8 > v2)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45();
  }

  OUTLINED_FUNCTION_23_18(v4);
  if (v10)
  {
    OUTLINED_FUNCTION_19_17();
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v7)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  OUTLINED_FUNCTION_3_33(v9);
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = sub_25BCB6F1C();
  sub_25BC0649C(v11, v12);
  if (v3)
  {
  }

  else
  {
    return OUTLINED_FUNCTION_13_25(v13, v14, v15, v16, v17, v18, v19, v20, v22);
  }
}

uint64_t sub_25BBC0CD4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if ((v10 - 1) > 0xA)
  {
    v11 = 1;
  }

  else
  {
    v11 = qword_25BCC7770[(v10 - 1)];
  }

  if (v11 > a3)
  {
LABEL_15:
    v19[1] = 0;
    v19[2] = 0;
    v19[0] = a3;
    v20 = -1;
    v22 = 0;
    v23 = 0;
    v21 = v11;
    v24 = -1;
    v25 = 13;
    swift_unknownObjectRelease();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_23_18(a1);
  if (v13)
  {
    OUTLINED_FUNCTION_19_17();
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v14)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_3_33(v12);
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = a3;
  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  ObjectType = swift_getObjectType();
  v17 = MEMORY[0x28223BE20](ObjectType);
  (*(a6 + 56))(sub_25BBC155C, v17);
  v19[0] = v6;
  v26 = v10;
  sub_25BA9FCEC(v19, &v26, v7, v8, v15);
  OUTLINED_FUNCTION_17_26();
  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_20_18();
}

void sub_25BBC0EA4()
{
  OUTLINED_FUNCTION_16_28();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_7_29(v7, v8);
  if (!v12 & v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = qword_25BCC7770[v10];
  }

  if (v13 > v6)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_55();
    sub_25BB0D160(v4, v2);
    OUTLINED_FUNCTION_2_45();
  }

  if (*(*v9 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v13);
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  sub_25BC05C00(v14, v15, v4, v2);
  if (v0)
  {

    sub_25BB0D160(v4, v2);
  }

  else
  {
    OUTLINED_FUNCTION_4_39();
    sub_25BA9FCEC(v16, v17, v18, v19, v6);
    v20 = OUTLINED_FUNCTION_17_26();
    sub_25BB0D160(v20, v2);
  }

  OUTLINED_FUNCTION_20_18();
  OUTLINED_FUNCTION_15_24();
}

void sub_25BBC0FD8()
{
  OUTLINED_FUNCTION_16_28();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_7_29(v7, v8);
  if (!v12 & v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = qword_25BCC7770[v10];
  }

  if (v13 > v6)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45();
  }

  if (*(*v9 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v13);
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  sub_25BB48C20(v14, v15, v4, v2);
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_4_39();
    sub_25BA9FCEC(v16, v17, v18, v19, v6);
  }

  OUTLINED_FUNCTION_15_24();
}

uint64_t sub_25BBC11D0(uint64_t a1, unsigned __int8 *a2, float a3)
{
  OUTLINED_FUNCTION_8_30(a1, a2);
  if (!v11 & v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = qword_25BCC7770[v9];
  }

  if (v12 > v3)
  {
LABEL_17:
    v20[1] = 0;
    v20[2] = 0;
    v20[0] = v3;
    OUTLINED_FUNCTION_0_55();
    OUTLINED_FUNCTION_2_45();
  }

  OUTLINED_FUNCTION_23_18(v8);
  if (v14)
  {
    OUTLINED_FUNCTION_19_17();
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
  OUTLINED_FUNCTION_3_33(v13);
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = sub_25BCB6F1C();
  v17 = v16;
  *v18.i32 = a3;
  sub_25BC0527C(v15, v16, v18);
  if (v4)
  {
  }

  v20[0] = v5;
  v21 = v6;
  return sub_25BA9FCEC(v20, &v21, v15, v17, v3);
}

void sub_25BBC13DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  OUTLINED_FUNCTION_25_16();
  a34 = v35;
  a35 = v38;
  v40 = v39;
  v41 = v37;
  v43 = *v42;
  if ((v43 - 1) > 0xA)
  {
    v44 = 1;
  }

  else
  {
    v44 = qword_25BCC7770[(v43 - 1)];
  }

  if (v44 > v37)
  {
LABEL_16:
    a10 = 0;
    a11 = 0;
    a9 = v41;
    OUTLINED_FUNCTION_0_55();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_45();
  }

  v45 = *v36;
  if (*(*v36 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v46)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v46)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v44);
  if (!v46)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v47 = sub_25BCB6F1C();
  if (!v47)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v49 = v47;
  v50 = v48;
  v51 = [swift_unknownObjectRetain() contents];
  v52 = v40;
  memmove(v49, v51, v50 - v49);
  a9 = v45;
  a25 = v43;
  sub_25BA9FCEC(&a9, &a25, v49, v50, v41);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_24_13();
}

uint64_t RecurrentLayerInput.input.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t RecurrentLayerInput.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  v6 = sub_25BCB6E8C();
  v7 = OUTLINED_FUNCTION_9_3(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2 + v4, v7);
}

uint64_t RecurrentLayerInput.state.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(a2 + 16);
  v6 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9_3(v6);
  v8 = *(v7 + 40);

  return v8(v2 + v4, a1);
}

uint64_t RecurrentLayerInput.init(input:state:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = *(type metadata accessor for RecurrentLayerInput() + 28);
  __swift_storeEnumTagSinglePayload(&a4[v8], 1, 1, a3);
  *a4 = v7;
  v9 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9_3(v9);
  v11 = *(v10 + 40);

  return v11(&a4[v8], a2);
}

uint64_t sub_25BBC17FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BBC18C4(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_25BBC1914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_25BBC17FC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_25BBC1958@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_25BB0716C();
  *a2 = result;
  return result;
}

uint64_t sub_25BBC1984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BBC19D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t RecurrentLayerOutput.init(output:state:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for RecurrentLayerOutput();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 28);

  return v8(v9, a2, a3);
}

uint64_t sub_25BBC1B7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BBC1C3C(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_25BBC1C6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void))
{
  sub_25BCB79CC();
  a4(v8, *v4, *(a2 + 16));
  return sub_25BCB7A3C();
}

uint64_t sub_25BBC1CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_25BBC1B7C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_25BBC1D2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BBC1D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void RecurrentLayerInput<A>.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v40 = v0;
  v38 = v1;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  v7 = sub_25BCB6E8C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v43 = v9;
  v44 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v37 = &v34 - v13;
  type metadata accessor for RecurrentLayerInput.CodingKeys();
  swift_getWitnessTable();
  v39 = sub_25BCB76FC();
  OUTLINED_FUNCTION_2(v39);
  v36 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_16_4();
  v18 = type metadata accessor for RecurrentLayerInput();
  OUTLINED_FUNCTION_2(v18);
  v34 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v42 = *(v25 + 28);
  __swift_storeEnumTagSinglePayload(&v34 + v42 - v23, 1, 1, v3);
  v26 = v5[3];
  v27 = v5[4];
  v41 = v5;
  __swift_project_boxed_opaque_existential_1(v5, v26);
  v28 = v40;
  sub_25BCB7B2C();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v43 + 8))(&v24[v42], v44);
  }

  else
  {
    v40 = v18;
    v29 = v37;
    v45 = 0;
    sub_25BB1B9B0();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_26_17();
    sub_25BCB765C();
    v30 = OUTLINED_FUNCTION_22_19();
    v31(v30);
    (*(v43 + 40))(&v24[v42], v29, v44);
    v32 = v34;
    v33 = v40;
    (*(v34 + 16))(v35, v24, v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v32 + 8))(v24, v33);
  }

  OUTLINED_FUNCTION_16();
}

void sub_25BBC218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  RecurrentLayerInput<A>.init(from:)();
}

void sub_25BBC221C()
{
  OUTLINED_FUNCTION_17_1();
  v22 = v3;
  v4 = v0;
  v6 = v5;
  v19 = v7;
  v20 = *(v7 + 16);
  v21 = v8;
  v9(255);
  swift_getWitnessTable();
  v10 = sub_25BCB77CC();
  OUTLINED_FUNCTION_2(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_4();
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_25BCB7B6C();
  v17 = *v4;
  v23[1] = 0;
  sub_25BB1B95C();

  sub_25BCB779C();

  if (!v1)
  {
    v18 = *(v19 + 28);
    v23[0] = 1;
    v22(&v4[v18], v23, v10, v20, v21);
  }

  (*(v12 + 8))(v2, v10);
  OUTLINED_FUNCTION_16();
}

void RecurrentLayerOutput<A>.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v36 = v0;
  v33 = v2;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  v29 = *(v3 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecurrentLayerOutput.CodingKeys();
  swift_getWitnessTable();
  v35 = sub_25BCB76FC();
  OUTLINED_FUNCTION_2(v35);
  v31 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_16_4();
  v14 = type metadata accessor for RecurrentLayerOutput();
  OUTLINED_FUNCTION_2(v14);
  v28 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  v21 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v34 = v1;
  v22 = v36;
  sub_25BCB7B2C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    v36 = v14;
    v23 = v32;
    v37 = 0;
    sub_25BB1B9B0();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_26_17();
    sub_25BCB76AC();
    v24 = OUTLINED_FUNCTION_23_19();
    v25(v24);
    v26 = v36;
    (*(v29 + 32))(&v20[*(v36 + 28)], v23, v4);
    v27 = v28;
    (*(v28 + 16))(v30, v20, v26);
    __swift_destroy_boxed_opaque_existential_1(v6);
    (*(v27 + 8))(v20, v26);
  }

  OUTLINED_FUNCTION_16();
}

void sub_25BBC2700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  RecurrentLayerOutput<A>.init(from:)();
}

uint64_t LSTM.recurrentWeight.getter()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  *v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_25BAB69FC();
}

uint64_t sub_25BBC281C@<X0>(void *a1@<X8>)
{
  result = LSTM.recurrentWeight.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_25BBC2858(uint64_t *a1)
{
  v2 = *a1;

  return LSTM.recurrentWeight.setter(&v2);
}

uint64_t (*LSTM.recurrentWeight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = OUTLINED_FUNCTION_29(*(v1 + 24));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BBC2984;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BBC2984(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    Parameter.wrappedValue.setter(&v5);
  }

  else
  {
    v5 = *a1;
    return Parameter.wrappedValue.setter(&v5);
  }
}

uint64_t LSTM.$recurrentWeight.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

void LSTM.inputWeight.getter(void *a1@<X8>)
{
  if (*(v1 + 50) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_38();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  *v4 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC();
}

uint64_t *LSTM.inputWeight.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 50) == 1)
  {
    if (v2)
    {
      v3 = *result;
      return Parameter.wrappedValue.setter(&v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t (*LSTM.inputWeight.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 50) != 1)
  {
    *a1 = 0;
    return sub_25BBC2D5C;
  }

  v3 = OUTLINED_FUNCTION_29(*(v1 + 40));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BBC2CA8;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BBC2CA8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v5 = a1[1];
      v6 = *a1;
      return Parameter.wrappedValue.setter(&v6);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_29_15();
    __break(1u);
    return result;
  }

  v3 = a1[1];
  v6 = *a1;

  Parameter.wrappedValue.setter(&v6);
}

uint64_t LSTM.$inputWeight.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 50) == 1)
  {
    v3 = *(v1 + 40);
    if (*(v1 + 49))
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 | *(v1 + 48);
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

void LSTM.bias.getter(void *a1@<X8>)
{
  if (*(v1 + 66) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(v1 + 56);
  v3 = OUTLINED_FUNCTION_38();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  *v4 = v3 & 0x7FFFFFFFFFFFFFFFLL;

  sub_25BAB69FC();
}

uint64_t sub_25BBC2EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;

  return a5(&v7);
}

uint64_t *LSTM.bias.setter(uint64_t *result)
{
  v2 = *result;
  if (*(v1 + 66) == 1)
  {
    if (v2)
    {
      v3 = *result;
      return Parameter.wrappedValue.setter(&v3);
    }

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_8;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_0();
LABEL_8:
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t (*LSTM.bias.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 66) != 1)
  {
    *a1 = 0;
    return sub_25BBC78EC;
  }

  v3 = OUTLINED_FUNCTION_29(*(v1 + 56));
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
  }

  else
  {
    if (v3 < 0)
    {
      *a1 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      return sub_25BBC3094;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BBC3094(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v5 = a1[1];
      v6 = *a1;
      return Parameter.wrappedValue.setter(&v6);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_29_15();
    __break(1u);
    return result;
  }

  v3 = a1[1];
  v6 = *a1;

  Parameter.wrappedValue.setter(&v6);
}

void *sub_25BBC3148(void *result)
{
  if (*result)
  {
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_29_15();
    __break(1u);
  }

  return result;
}

uint64_t LSTM.$bias.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 66) == 1)
  {
    v3 = *(v1 + 56);
    if (*(v1 + 65))
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4 | *(v1 + 64);
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *a1 = result;
  *(a1 + 8) = v5;
  return result;
}

uint64_t LSTM.init(unitCount:recurrentWeightInitializer:inputWeightInitializer:biasInitializer:isBidirectional:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  *a5 = 0;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_9_19();
  *(a5 + 40) = sub_25BB1AB60(v9);
  *(a5 + 48) = 256;
  *(a5 + 50) = 0;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_9_19();
  *(a5 + 56) = sub_25BB1AB60(v10);
  *(a5 + 64) = 256;
  *(a5 + 66) = 0;
  *(a5 + 8) = a1;
  *(a5 + 16) = a4;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();

  *(a5 + 24) = sub_25BB1AB04(v11);
  *(a5 + 32) = 256;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  if (a2)
  {

    v13 = sub_25BB1AB04(v12);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_19();
    v13 = sub_25BB1AB60(v14);
  }

  v15 = v13;

  *(a5 + 40) = v15;
  *(a5 + 48) = 256;
  *(a5 + 50) = a2 != 0;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  if (a3)
  {
    v16 = sub_25BB1AB04(a3);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_9_19();
    v16 = sub_25BB1AB60(v17);
  }

  v18 = v16;

  *(a5 + 56) = v18;
  *(a5 + 64) = 256;
  *(a5 + 66) = a3 != 0;
  return result;
}

void *LSTM.init(recurrentWeight:inputWeight:bias:isBidirectional:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  LOBYTE(__src[0]) = 0;
  type metadata accessor for LayerVariableReference();
  LOBYTE(v9) = 7;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_9_19();
  __src[5] = sub_25BB1AB60(v10);
  LOWORD(__src[6]) = 256;
  BYTE2(__src[6]) = 0;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  v11 = OUTLINED_FUNCTION_9_19();
  __src[7] = sub_25BB1AB60(v11);
  LOWORD(__src[8]) = 256;
  BYTE2(__src[8]) = 0;
  if (a4)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  v13 = *(*(*(v6 + 16) + 152) + 16);
  if ((sub_25BAB74D0(v13, v12, 0, 0) & 1) == 0)
  {
    goto LABEL_34;
  }

  v12 = *(*(v6 + 16) + 152);
  v14 = *(v12 + 16);
  if (a4)
  {
    if (v14 <= 2)
    {
LABEL_41:
      v29 = 2;
LABEL_43:
      v32 = 0uLL;
      v31 = v29;
      v33 = -1;
      v35 = 0;
      v36 = 0;
      v34 = v14;
      v37 = -1;
      v38 = 4;
      goto LABEL_44;
    }

    v9 = *(v12 + 48);
    __src[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_25BCBAE90;
    *(v15 + 32) = 2;
    OUTLINED_FUNCTION_31_14();
    if (!v17)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v31 = v13;
      v32 = xmmword_25BCC77F0;
      v33 = 0;
      v34 = v12;
      v35 = 0;
      LOBYTE(v36) = 0;
      v38 = v9;
      OUTLINED_FUNCTION_7_30();
      goto LABEL_45;
    }

    v18 = v16;
    *(v16 + 40) = 4 * v9;
    *(v16 + 48) = v9;
  }

  else
  {
    if (v14 <= 1)
    {
      v29 = 1;
      goto LABEL_43;
    }

    v9 = *(v12 + 40);
    __src[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    *(swift_allocObject() + 16) = xmmword_25BCBAE70;
    OUTLINED_FUNCTION_31_14();
    if (!v17)
    {
      goto LABEL_33;
    }

    v18 = v19;
    *(v19 + 32) = 4 * v9;
    *(v19 + 40) = v9;
  }

  v20 = sub_25BAB5C48(v12, v18);

  if ((v20 & 1) == 0)
  {
    OUTLINED_FUNCTION_32();
LABEL_40:
    OUTLINED_FUNCTION_7_0();
    sub_25BCB74CC();
    __break(1u);
    goto LABEL_41;
  }

  LOWORD(__src[4]) = 256;
  v31 = v6;
  OUTLINED_FUNCTION_4_40();
  swift_allocObject();
  __src[3] = sub_25BAB6D38(&v31, 0x100000000);
  v21 = 8 * v9;
  if (!v7)
  {
    goto LABEL_24;
  }

  v22 = *(*(*(v7 + 16) + 152) + 16);

  if ((sub_25BAB74D0(v22, 2, 0, 0) & 1) == 0)
  {
    v31 = v22;
    v32 = xmmword_25BCC7800;
    v33 = 0;
    OUTLINED_FUNCTION_32_13();
    OUTLINED_FUNCTION_7_30();
    goto LABEL_45;
  }

  if (a4)
  {
    v23 = 8 * v9;
    if ((v9 - 0x1000000000000000) >> 61 == 7)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v23 = 4 * v9;
LABEL_21:
  v24 = *(*(v7 + 16) + 152);
  if (!*(v24 + 16))
  {
    v31 = 0;
    v32 = 0uLL;
    v33 = -1;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v37 = -1;
    v38 = 4;
LABEL_44:
    sub_25BCB617C();
LABEL_45:
    sub_25BADDD28();
  }

  if (*(v24 + 32) != v23)
  {
    OUTLINED_FUNCTION_32();
    goto LABEL_40;
  }

LABEL_24:
  if (v8)
  {
    v25 = *(*(*(v8 + 16) + 152) + 16);

    if ((sub_25BAB74D0(v25, 1, 0, 0) & 1) == 0)
    {
      v31 = v25;
      v32 = xmmword_25BCC7810;
      v33 = 0;
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_7_30();
      goto LABEL_45;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    OUTLINED_FUNCTION_1_2();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_25BCBAE50;
    if (a4)
    {
      if ((v9 - 0x1000000000000000) >> 61 == 7)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    v21 = 4 * v9;
LABEL_30:
    *(v26 + 32) = v21;
    v27 = sub_25BAB5C48(*(*(v8 + 16) + 152), v26);
    swift_setDeallocating();
    OUTLINED_FUNCTION_30_0();
    swift_deallocClassInstance();
    if (v27)
    {

      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_32:

  v31 = v7;
  OptionalParameter.init(wrappedValue:)(&v31);

  v31 = v8;
  OptionalParameter.init(wrappedValue:)(&v31);
  LOBYTE(__src[2]) = a4 & 1;
  return memcpy(a5, __src, 0x43uLL);
}

uint64_t sub_25BBC38F4(uint64_t *a1)
{
  v2 = *a1;
  if (*(*a1 + 16) < 2uLL)
  {
LABEL_12:
    sub_25BADDD28();
  }

  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_25BCBAE90;
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  if (!v4)
  {
    *(v7 + 48) = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBAE90;
    *(v12 + 32) = v6;
    *(v12 + 40) = v5;
    if ((v3 - 0x2000000000000000) >> 62 == 3)
    {
      v10 = v12;
      v11 = 2;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v7 + 48) = 2 * v3;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE90;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  if ((v3 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = 3;
LABEL_8:
  *(v10 + 48) = v3 << v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25BCBAE90;
  *(v13 + 32) = v8;
  *(v13 + 40) = 10;
  *(v13 + 48) = v8;
  *(v13 + 56) = 10;
  *(v13 + 64) = v10;
  *(v13 + 72) = 10;
  sub_25BCB617C();
  return v13;
}

uint64_t sub_25BBC3AF4(uint64_t result, void *a2, uint64_t a3, char a4, char a5, char a6)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a2[2];
  if (!v6)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v6 == 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v6 < 3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v96 = *(result + 32);
  v15 = a2 + 4;
  v16 = a2[4];
  v18 = a2[5];
  v17 = a2[6];
  v99 = v17;
  if (a5)
  {
    if (v6 == 3)
    {
      __break(1u);
      goto LABEL_37;
    }

    v19 = a2[7];
    if ((a6 & 1) == 0)
    {
      v30 = a2[4];
      v27 = *(v16 + 16);
      v28 = *(v18 + 16);
      v29 = *(v17 + 16);
      v31 = a2[7];

      v94 = 0;
      v95 = 0;
      v93 = 0;
      v24 = 0;
      goto LABEL_17;
    }

    v20 = a2[7];

    v21 = 4;
  }

  else
  {
    if ((a6 & 1) == 0)
    {
      v91 = 0;
      v94 = 0;
      v95 = 0;
      v93 = 0;
      v24 = 0;
      v19 = 0;
      v30 = a2[4];
      v27 = *(v16 + 16);
      v28 = *(v18 + 16);
      v29 = *(v17 + 16);
      goto LABEL_19;
    }

    v19 = 0;
    v21 = 3;
  }

  if (v21 >= v6)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v21 + 1 >= v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v97 = a3;
  v22 = a4;
  v23 = v15[v21];
  v24 = v15[v21 + 1];
  v25 = *(v23 + 16);
  v26 = *(v24 + 16);
  v27 = *(v16 + 16);
  v28 = *(v18 + 16);
  v29 = *(v17 + 16);
  v93 = v23;

  v95 = v25;

  v94 = v26;

  if (v19)
  {
    v30 = v16;
    a4 = v22;
    a3 = v97;
LABEL_17:
    v91 = *(v19 + 16);

    goto LABEL_19;
  }

  v30 = v16;
  v91 = 0;
  a4 = v22;
  a3 = v97;
LABEL_19:
  v32 = *(a3 + 16);
  if (!v32)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v90 = v24;
  v92 = v19;
  v98 = v18;
  v33 = *(a3 + 24);
  if (v33)
  {
    v34 = *(v96 + 16);
    v35 = *(v32 + 16);
    v36 = *(v33 + 16);
    v105[55] = 0;
    v106[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/LSTMLayerOps.swift";
    v106[1] = 114;
    v107 = 2;
    v108 = xmmword_25BCC7820;
    v109 = "init(id:input:recurrentWeight:inputWeight:bias:state:isBidirectional:gradient:zState:cellOutputForward:creationSite:)";
    v110 = 117;
    v111 = 2;
    type metadata accessor for LSTMLayerGradientOperation();
    swift_allocObject();

    v37 = v30;

    sub_25BBC789C(v95);
    v12 = sub_25BB4A7D4(0, 0, 0, v27, v28, v29, v91, v95, v94, a4 & 1, v34, v35, v36, v106);
    sub_25BAA51C8(*(v96 + 16) + 168, v105);
    sub_25BAA51C8(v105, v104);
    sub_25BAA51C8(v104, v103);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v100);

    v38 = v102;

    sub_25BAA4AF4(v100);
    sub_25BAA49B8();
    sub_25BAA4A5C(v100);

    v39 = v101;

    sub_25BAA4AF4(v100);
    type metadata accessor for TensorRepresentation();
    v40 = swift_allocObject();
    v100[0] = 1;
    v41 = sub_25BC10058(v12, 0, v103, 0x100000000, v38, v39, v40);
    type metadata accessor for TensorHandle();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v104);
    sub_25BAA51C8(v105, v104);
    sub_25BAA51C8(v104, v103);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v100);

    v43 = v102;

    sub_25BAA4AF4(v100);
    sub_25BAA49B8();
    sub_25BAA4A5C(v100);

    v44 = v101;

    sub_25BAA4AF4(v100);
    v45 = swift_allocObject();
    v100[0] = 1;
    v46 = sub_25BC10058(v12, 1, v103, 0x100000000, v43, v44, v45);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v104);
    sub_25BAA51C8(v105, v104);
    sub_25BAA51C8(v104, v103);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v100);

    v48 = v102;

    sub_25BAA4AF4(v100);
    sub_25BAA49B8();
    sub_25BAA4A5C(v100);

    v49 = v101;

    sub_25BAA4AF4(v100);
    v50 = swift_allocObject();
    v100[0] = 1;
    v51 = sub_25BC10058(v12, 2, v103, 0x100000000, v48, v49, v50);
    v52 = swift_allocObject();
    *(v52 + 16) = v51;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_25BCBAE90;
    *(v53 + 32) = v42;
    v54 = *(v37 + 16);

    *(v53 + 40) = sub_25BAC42B0();
    *(v53 + 48) = v55;
    *(v53 + 56) = v47;
    v56 = *(v98 + 16);

    *(v53 + 64) = sub_25BAC42B0();
    *(v53 + 72) = v57;
    *(v53 + 80) = v52;
    v58 = *(v99 + 16);

    *(v53 + 88) = sub_25BAC42B0();
    *(v53 + 96) = v59;
    if (v92)
    {
      sub_25BAA51C8(v105, v104);
      sub_25BAA51C8(v104, v103);
      swift_retain_n();

      sub_25BAA49B8();
      sub_25BAA4A5C(v100);

      v60 = v102;

      sub_25BAA4AF4(v100);
      sub_25BAA49B8();
      sub_25BAA4A5C(v100);

      v61 = v101;

      sub_25BAA4AF4(v100);
      v62 = swift_allocObject();
      v100[0] = 1;
      v63 = sub_25BC10058(v12, 3, v103, 0x100000000, v60, v61, v62);
      v64 = swift_allocObject();
      *(v64 + 16) = v63;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v104);
      v65 = *(v92 + 16);

      v66 = sub_25BAC42B0();
      v68 = v67;
      v8 = 4;
      sub_25BAC98F4();
      v53 = v69;

      *(v53 + 16) = 4;
      *(v53 + 104) = v64;
      *(v53 + 112) = v66;
      *(v53 + 120) = v68;
    }

    else
    {
      v8 = 3;
    }

    if (!v93)
    {
      sub_25BA9C2C8(v105);

      sub_25BB4AE24(v95);

      return v53;
    }

    sub_25BAA51C8(v105, v104);
    sub_25BAA51C8(v104, v103);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v100);

    v70 = v102;

    sub_25BAA4AF4(v100);
    sub_25BAA49B8();
    sub_25BAA4A5C(v100);

    v71 = v101;

    sub_25BAA4AF4(v100);
    v72 = swift_allocObject();
    v100[0] = 1;
    v73 = sub_25BC10058(v12, v8, v103, 0x100000000, v70, v71, v72);
    v11 = swift_allocObject();
    *(v11 + 16) = v73;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v104);
    v74 = *(v93 + 16);

    v6 = sub_25BAC42B0();
    v7 = v75;
    v9 = *(v53 + 16);
    v10 = v9 + 1;
    if (v9 < *(v53 + 24) >> 1)
    {
LABEL_26:
      *(v53 + 16) = v10;
      v76 = (v53 + 24 * v9);
      v76[4] = v11;
      v76[5] = v6;
      v76[6] = v7;
      sub_25BAA51C8(v105, v104);
      sub_25BAA51C8(v104, v103);
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v100);

      v77 = v102;

      sub_25BAA4AF4(v100);
      sub_25BAA49B8();
      sub_25BAA4A5C(v100);

      v78 = v101;

      sub_25BAA4AF4(v100);
      v79 = swift_allocObject();
      v100[0] = 1;
      v80 = sub_25BC10058(v12, v8 + 1, v103, 0x100000000, v77, v78, v79);
      v81 = swift_allocObject();
      *(v81 + 16) = v80;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v104);
      v82 = *(v90 + 16);

      v83 = sub_25BAC42B0();
      v85 = v84;
      v86 = *(v53 + 16);
      if (v86 >= *(v53 + 24) >> 1)
      {
        sub_25BAC98F4();
        v53 = v89;
      }

      sub_25BB4AE24(v93);

      sub_25BB4AE24(v95);
      sub_25BA9C2C8(v105);
      *(v53 + 16) = v86 + 1;
      v87 = (v53 + 24 * v86);
      v87[4] = v81;
      v87[5] = v83;
      v87[6] = v85;
      return v53;
    }

LABEL_35:
    sub_25BAC98F4();
    v53 = v88;
    goto LABEL_26;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *LSTM.State.init(hidden:cell:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

__n128 LSTM.forward(_:)@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  memcpy(__dst, v2, 0x43uLL);
  type metadata accessor for LSTMLayerOperationBackwardContext();
  OUTLINED_FUNCTION_30_0();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = v7 + 16;
  *(v7 + 24) = 0;
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(__src);

  type metadata accessor for ResolutionDependencies();
  OUTLINED_FUNCTION_30_0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  *(v9 + 16) = 0;
  *(v9 + 24) = v10;

  __src[9] = v9;
  sub_25BAA49B8();
  sub_25BAB7060(__src);

  sub_25BBC4968(v4, v5, v6, __dst, v7, v36);

  sub_25BAA49B8();
  sub_25BAB814C();

  sub_25BAA4AF4(__src);
  v35 = *v36;
  v11 = *&v36[16];
  sub_25BAA49B8();
  sub_25BAA4A5C(__src);

  memcpy(v36, __src, sizeof(v36));
  if (*&v36[80])
  {
    v12 = *(*&v36[80] + 24);
    sub_25BAA4AF4(v36);
    if (v12)
    {
      v13 = *(v7 + 24);
      if (v13)
      {
        v14 = *(v13 + 16);
        swift_retain_n();

        v15 = sub_25BA928B4();
        [v15 lock];

        OUTLINED_FUNCTION_33_13(v16, v17, v18, v19, v20, v21, v22, v23, v35.n128_i64[0], v35.n128_i64[1], *v36, *&v36[8], *&v36[16], *&v36[24], *&v36[32], *&v36[40], *&v36[48], *&v36[56], *&v36[64], *&v36[72], *&v36[80], *&v36[88], *&v36[96], *&v36[104], *&v36[112], *&v36[120], *&v36[128], v37, __src[0]);
        [*(v14 + 224) unlock];

        swift_unknownObjectRelease();
      }

      if (*v8)
      {
        v24 = *(*v8 + 16);
        swift_retain_n();

        v25 = sub_25BA928B4();
        [v25 lock];

        OUTLINED_FUNCTION_33_13(v26, v27, v28, v29, v30, v31, v32, v33, v35.n128_i64[0], v35.n128_i64[1], *v36, *&v36[8], *&v36[16], *&v36[24], *&v36[32], *&v36[40], *&v36[48], *&v36[56], *&v36[64], *&v36[72], *&v36[80], *&v36[88], *&v36[96], *&v36[104], *&v36[112], *&v36[120], *&v36[128], v37, __src[0]);
        [*(v24 + 224) unlock];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    sub_25BAA4AF4(v36);
  }

  result = v35;
  *a2 = v35;
  a2[1].n128_u64[0] = v11;
  return result;
}

uint64_t sub_25BBC4968@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  if (a2)
  {
    v10 = *(a2 + 16);
    v11 = *(a3 + 16);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  memcpy(__dst, a4, 0x43uLL);
  v12 = *(a1 + 16);
  v66[0] = *(v12 + 152);
  sub_25BCB617C();
  v13 = sub_25BBC38F4(v66);

  v14 = *(*(a4 + 24) + 32);
  if ((~v14 & 0xF000000000000007) != 0 && (v52 = v13, v14 < 0))
  {
    v56 = v11;
    v15 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    memcpy(__dst, a4, 0x43uLL);
    LSTM.inputWeight.getter(v66);
    if (v66[0])
    {
      v16 = *(v66[0] + 16);

      v50 = v16;
    }

    else
    {

      v50 = 0;
    }

    v51 = v15;
    memcpy(__dst, a4, 0x43uLL);
    LSTM.bias.getter(v66);
    if (v66[0])
    {
      v17 = *(v66[0] + 16);
    }

    else
    {
      v17 = 0;
    }

    v55 = a6;
    memcpy(v66, a4, 0x43uLL);
    LSTM.bias.getter(&v73);
    v18 = v73;
    if (v73)
    {
    }

    v19 = v18 != 0;
    v20 = *(a4 + 16);
    v21 = swift_allocObject();
    memcpy((v21 + 16), a4, 0x43uLL);
    *(v21 + 88) = a5;
    *(v21 + 96) = v20;
    *(v21 + 97) = v19;
    *(v21 + 98) = v10 != 0;
    sub_25BB924FC(a4, __dst);

    v22 = sub_25BAAF074(sub_25BBC7884);
    v24 = v23;

    v65 = 0;
    v67[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/LSTMLayerOps.swift";
    v67[1] = 114;
    v68 = 2;
    v69 = xmmword_25BCC7830;
    v70 = "init(id:input:recurrentWeight:inputWeight:bias:hiddenWeight:state:isBidirectional:resultDescriptors:creationSite:backward:)";
    v71 = 123;
    v72 = 2;
    type metadata accessor for LSTMLayerOperation();
    swift_allocObject();
    v54 = v10;
    sub_25BBC789C(v10);
    v25 = sub_25BB4A46C(0, 0, 0, v12, v51, v50, v17, 0, v10, v56, v20, v52, v67, v22, v24);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    sub_25BAA51C8(&v61, v60);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(__dst);

    v26 = v59;

    sub_25BAA4AF4(__dst);
    sub_25BAA49B8();
    sub_25BAA4A5C(__dst);

    v27 = v58;

    sub_25BAA4AF4(__dst);
    type metadata accessor for TensorRepresentation();
    v28 = swift_allocObject();
    LOBYTE(__dst[0]) = 1;
    v29 = sub_25BC0F31C(v25, 0, v60, 0x100000000, v26, v27, v28);
    type metadata accessor for TensorHandle();
    v53 = swift_allocObject();
    *(v53 + 16) = v29;

    sub_25BAA6EB0();

    sub_25BA9C2C8(&v61);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    sub_25BAA51C8(&v61, v60);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(__dst);

    v30 = v59;

    sub_25BAA4AF4(__dst);
    sub_25BAA49B8();
    sub_25BAA4A5C(__dst);

    v31 = v58;

    sub_25BAA4AF4(__dst);
    v32 = swift_allocObject();
    LOBYTE(__dst[0]) = 1;
    v33 = sub_25BC0F31C(v25, 1, v60, 0x100000000, v30, v31, v32);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;

    sub_25BAA6EB0();

    sub_25BA9C2C8(&v61);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    sub_25BAA51C8(&v61, v60);
    v35 = v25;
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(__dst);

    v36 = v59;

    sub_25BAA4AF4(__dst);
    sub_25BAA49B8();
    sub_25BAA4A5C(__dst);

    v37 = v58;

    sub_25BAA4AF4(__dst);
    v38 = swift_allocObject();
    LOBYTE(__dst[0]) = 1;
    v39 = sub_25BC0F31C(v35, 2, v60, 0x100000000, v36, v37, v38);
    v40 = swift_allocObject();
    *(v40 + 16) = v39;

    sub_25BAA6EB0();

    sub_25BA9C2C8(&v61);
    v41 = *(a5 + 24);
    *(a5 + 24) = v34;

    v42 = *(a5 + 16);
    *(a5 + 16) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB60F0, qword_25BCC7FF0);
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D83B88];
    *(v43 + 16) = xmmword_25BCBAE50;
    *(v43 + 56) = v44;
    *(v43 + 64) = &protocol witness table for Int;
    *(v43 + 32) = -1;
    __dst[0] = v53;
    Tensor.subscript.getter(v43, &v61);
    swift_setDeallocating();
    sub_25BC0C550();
    v45 = v61;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_25BCBAE50;
    *(v46 + 56) = v44;
    *(v46 + 64) = &protocol witness table for Int;
    *(v46 + 32) = -1;
    __dst[0] = v34;
    Tensor.subscript.getter(v46, &v61);
    swift_setDeallocating();
    sub_25BC0C550();
    v47 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_25BCC4630;
    *(v48 + 32) = v47;
    *(v48 + 40) = v45;
    *(v48 + 48) = v53;
    *(v48 + 56) = v34;
    *(v48 + 64) = v40;

    sub_25BACEA3C(v48);

    sub_25BB4AE24(v54);
    swift_setDeallocating();
    result = sub_25BAB3FD0();
    v55[1] = v45;
    v55[2] = v47;
    *v55 = v53;
  }

  else
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBC5248(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 50);
  v8 = *(v1 + 56);
  v9 = *(v1 + 66);
  v10 = *(*a1 + 16);
  if ((sub_25BAB74D0(v10, 3, 0, 0) & 1) == 0)
  {
    goto LABEL_22;
  }

  v11 = *(v2 + 16);
  if (v11 <= 2)
  {
    v21 = 0uLL;
    v20 = 2;
    v22 = -1;
    v24 = 0;
    v23 = v11;
    v25 = -1;
    v26 = 4;
LABEL_24:
    sub_25BADDD28();
  }

  v12 = *(v2 + 48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  if (v4)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_25BCBAE90;
    *(v13 + 32) = 2;
    if ((v3 - 0x2000000000000000) >> 62 == 3)
    {
      *(v13 + 40) = 4 * v3;
      *(v13 + 48) = v3;
      v20 = v13;

      sub_25BB1ABC8(&v20);

      v15 = 8 * v3;
      if (!v7)
      {
        goto LABEL_8;
      }

      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_25BCBAE70;
      if ((v3 - 0x1000000000000000) >> 61 == 7)
      {
        *(v16 + 32) = v15;
        *(v16 + 40) = v12;
        v20 = v16;

        sub_25BB1ABC8(&v20);

LABEL_8:
        if (!v9)
        {
          return result;
        }

        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_25BCBAE50;
        if ((v3 - 0x1000000000000000) >> 61 == 7)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v20 = v10;
      v21 = xmmword_25BCBCE20;
      v22 = 0;
      v23 = xmmword_25BCBCE30;
      LOBYTE(v24) = 0;
      v26 = 7;
      goto LABEL_24;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25BCBAE70;
  if ((v3 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_19;
  }

  v15 = 4 * v3;
  *(v18 + 32) = 4 * v3;
  *(v18 + 40) = v3;
  v20 = v18;

  sub_25BB1ABC8(&v20);

  if (v7)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_25BCBAE70;
    *(v19 + 32) = v15;
    *(v19 + 40) = v12;
    v20 = v19;

    sub_25BB1ABC8(&v20);
  }

  if (v9)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_25BCBAE50;
LABEL_16:
    *(v17 + 32) = v15;
    v20 = v17;

    sub_25BB1ABC8(&v20);
  }

  return result;
}

uint64_t LSTM.initializeParameters(for:)(uint64_t *a1)
{
  v2 = *a1;
  memcpy(__dst, v1, sizeof(__dst));
  v4 = *(*(v2 + 16) + 152);
  sub_25BCB617C();
  sub_25BBC5248(&v4);
}

uint64_t sub_25BBC562C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696E7261656CLL && a2 == 0xED00006573616850;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E756F4374696E75 && a2 == 0xE900000000000074;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6572696469427369 && a2 == 0xEF6C616E6F697463;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E65727275636572 && a2 == 0xEF74686769655774;
        if (v8 || (sub_25BCB789C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6965577475706E69 && a2 == 0xEB00000000746867;
          if (v9 || (sub_25BCB789C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 1935763810 && a2 == 0xE400000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_25BCB789C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25BBC5838(char a1)
{
  result = 0x676E696E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 0x6E756F4374696E75;
      break;
    case 2:
      result = 0x6572696469427369;
      break;
    case 3:
      result = 0x6E65727275636572;
      break;
    case 4:
      result = 0x6965577475706E69;
      break;
    case 5:
      result = 1935763810;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BBC591C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BBC562C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BBC5944(uint64_t a1)
{
  v2 = sub_25BBC67DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BBC5980(uint64_t a1)
{
  v2 = sub_25BBC67DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void LSTM.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v33 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E70, &qword_25BCC7848);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = *v0;
  v13 = *(v0 + 1);
  v38 = v0[16];
  v31 = *(v0 + 3);
  v32 = v13;
  v30 = v0[32];
  LODWORD(v13) = v0[33];
  v24 = *(v0 + 5);
  LODWORD(v10) = v0[49];
  v25 = v0[48];
  v26 = v10;
  v27 = v0[50];
  v28 = v13;
  v29 = *(v0 + 7);
  LODWORD(v10) = v0[65];
  v22 = v0[64];
  v23 = v10;
  v14 = v0[66];
  v15 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BBC67DC();
  sub_25BCB7B6C();
  LOBYTE(v34) = v12;
  sub_25BBC6830();
  OUTLINED_FUNCTION_12_25();
  v16 = v33;
  sub_25BCB779C();
  if (!v16)
  {
    v17 = v30;
    v18 = v31;
    LODWORD(v33) = v14;
    v19 = v29;
    LOBYTE(v34) = 1;
    OUTLINED_FUNCTION_15_25();
    sub_25BCB778C();
    LOBYTE(v34) = 2;
    OUTLINED_FUNCTION_15_25();
    sub_25BCB776C();
    v34 = v18;
    v35 = v17;
    v36 = v28;
    v20 = sub_25BB39990();

    OUTLINED_FUNCTION_12_25();
    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();

    if (!v20)
    {
      v34 = v24;
      v35 = v25;
      v36 = v26;
      v37 = v27;
      sub_25BBC6884();

      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_15_25();
      sub_25BCB779C();

      v34 = v19;
      v35 = v22;
      v36 = v23;
      v37 = v33;

      OUTLINED_FUNCTION_12_25();
      OUTLINED_FUNCTION_15_25();
      sub_25BCB779C();
    }
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_16();
}

void LSTM.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E90, &qword_25BCC7850);
  OUTLINED_FUNCTION_2(v27);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_4();
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_9_19();
  sub_25BB1AB60(v8);
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v9 = OUTLINED_FUNCTION_9_19();
  sub_25BB1AB60(v9);
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BBC67DC();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v26 = v4;
    sub_25BBC68D8();
    OUTLINED_FUNCTION_16_29();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_16_29();
    v25 = sub_25BCB769C();
    v47 = v30;
    LOBYTE(v30) = 2;
    OUTLINED_FUNCTION_16_29();
    v11 = sub_25BCB767C();
    sub_25BB3993C();
    OUTLINED_FUNCTION_16_29();
    sub_25BCB76AC();
    v12 = v30;
    v24 = v31;
    v23 = BYTE1(v31);
    sub_25BBC692C();
    OUTLINED_FUNCTION_16_29();
    sub_25BCB76AC();
    v22 = v30;
    v21 = v31;
    v20 = BYTE1(v31);
    v19 = BYTE2(v31);

    OUTLINED_FUNCTION_16_29();
    sub_25BCB76AC();
    v28 = v11 & 1;
    v13 = OUTLINED_FUNCTION_11_27();
    v14(v13);
    v15 = v44;
    v16 = v45;
    v17 = HIBYTE(v45);
    v18 = v46;

    LOBYTE(v29[0]) = v47;
    v29[1] = v25;
    LOBYTE(v29[2]) = v28;
    v29[3] = v30;
    LOWORD(v29[4]) = v31;
    v29[5] = v30;
    LOWORD(v29[6]) = v31;
    BYTE2(v29[6]) = BYTE2(v31);
    v29[7] = v44;
    LOWORD(v29[8]) = v45;
    BYTE2(v29[8]) = v46;
    memcpy(v26, v29, 0x43uLL);
    sub_25BB924FC(v29, &v30);
    __swift_destroy_boxed_opaque_existential_1(v2);
    LOBYTE(v30) = v47;
    v31 = v25;
    v32 = v28;
    v33 = v12;
    v34 = v24;
    v35 = v23;
    v36 = v22;
    v37 = v21;
    v38 = v20;
    v39 = v19;
    v40 = v15;
    v41 = v16;
    v42 = v17;
    v43 = v18;
    sub_25BB92558(&v30);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t LSTM.State.hidden.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t LSTM.State.cell.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_25BBC6254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564646968 && a2 == 0xE600000000000000;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819043171 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_25BCB789C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BBC6318(char a1)
{
  if (a1)
  {
    return 1819043171;
  }

  else
  {
    return 0x6E6564646968;
  }
}

uint64_t sub_25BBC634C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BBC6254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BBC6374(uint64_t a1)
{
  v2 = sub_25BBC6980();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BBC63B0(uint64_t a1)
{
  v2 = sub_25BBC6980();

  return MEMORY[0x2821FE720](a1, v2);
}

void LSTM.State.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5EA8, &qword_25BCC7858);
  OUTLINED_FUNCTION_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v14 = v0[1];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v13 = sub_25BBC6980();

  sub_25BCB7B6C();
  v15 = 0;
  sub_25BB1B95C();
  OUTLINED_FUNCTION_15_25();
  sub_25BCB779C();

  if (!v13)
  {
    v15 = 1;

    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();
  }

  (*(v5 + 8))(v10, v3);
  OUTLINED_FUNCTION_16();
}

void LSTM.State.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_17_1();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FBB5EB8, &qword_25BCC7860);
  OUTLINED_FUNCTION_2(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v20);
  v22 = &v24 - v21;
  v23 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_25BBC6980();
  sub_25BCB7B2C();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v25 = 0;
    sub_25BB1B9B0();
    OUTLINED_FUNCTION_17_27();
    v25 = 1;
    OUTLINED_FUNCTION_17_27();
    (*(v17 + 8))(v22, v15);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t LSTMLayerOperationBackwardContext.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t LSTMLayerOperationBackwardContext.__deallocating_deinit()
{
  LSTMLayerOperationBackwardContext.deinit();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocClassInstance();
}

unint64_t sub_25BBC67DC()
{
  result = qword_27FBB5E78;
  if (!qword_27FBB5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E78);
  }

  return result;
}

unint64_t sub_25BBC6830()
{
  result = qword_27FBB5E80;
  if (!qword_27FBB5E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E80);
  }

  return result;
}

unint64_t sub_25BBC6884()
{
  result = qword_27FBB5E88;
  if (!qword_27FBB5E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E88);
  }

  return result;
}

unint64_t sub_25BBC68D8()
{
  result = qword_27FBB5E98;
  if (!qword_27FBB5E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5E98);
  }

  return result;
}

unint64_t sub_25BBC692C()
{
  result = qword_27FBB5EA0;
  if (!qword_27FBB5EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5EA0);
  }

  return result;
}

unint64_t sub_25BBC6980()
{
  result = qword_27FBB5EB0;
  if (!qword_27FBB5EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5EB0);
  }

  return result;
}

uint64_t sub_25BBC69D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_25BCB6E8C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BBC6A54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 8) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 8) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_25BBC6C08(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 8) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = (&a1[v12 + 8] & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = &a1[v12 + 8] & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BBC6EF4(uint64_t a1)
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

uint64_t sub_25BBC6F74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_25BBC70F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_25BBC7344(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 67))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_25BBC7384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LSTM.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25BBC7500(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BBC7608()
{
  result = qword_27FBB60C0;
  if (!qword_27FBB60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60C0);
  }

  return result;
}

unint64_t sub_25BBC7660()
{
  result = qword_27FBB60C8;
  if (!qword_27FBB60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60C8);
  }

  return result;
}

unint64_t sub_25BBC76B8()
{
  result = qword_27FBB60D0;
  if (!qword_27FBB60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60D0);
  }

  return result;
}

unint64_t sub_25BBC7710()
{
  result = qword_27FBB60D8;
  if (!qword_27FBB60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60D8);
  }

  return result;
}

unint64_t sub_25BBC7768()
{
  result = qword_27FBB60E0;
  if (!qword_27FBB60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60E0);
  }

  return result;
}

unint64_t sub_25BBC77C0()
{
  result = qword_27FBB60E8;
  if (!qword_27FBB60E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60E8);
  }

  return result;
}

uint64_t sub_25BBC789C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25BBC78FC(uint64_t a1)
{
  v4 = v1;
  v6 = *(v1 + 40);
  v7 = sub_25BAC4018();
  v8 = sub_25BB3EE04(v7, a1);
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  v12 = *(v4 + 48);
  v13 = sub_25BAC4018();
  v14 = sub_25BB3EE04(v13, a1);
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v27 = sub_25BAD5A00();
    v29 = v28;
    sub_25BB0E2EC();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    *(v30 + 16) = 0x4000;
    swift_willThrow();
    return ObjectType;
  }

  v16 = v14;
  v47 = v15;
  ObjectType = swift_getObjectType();
  v17 = *(v11 + 8);
  v17((&v48 + 4), ObjectType, v11);
  v18 = sub_25BC8FACC();
  v19 = dynamic_cast_existential_2_conditional(v18);
  if (!v19)
  {
    v31 = sub_25BAD5A00();
    v33 = v32;
    sub_25BB0E2EC();
    swift_allocError();
    *v34 = v31;
    *(v34 + 8) = v33;
    *(v34 + 16) = 24576;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_11:
    swift_unknownObjectRelease();
    return ObjectType;
  }

  v44 = v21;
  v45 = v20;
  v46 = v19;
  v17((&v48 + 3), ObjectType, v11);
  v22 = v16;
  v23 = BYTE3(v48);
  v24 = swift_getObjectType();
  v42 = *(v47 + 8);
  v43 = v24;
  v42((&v48 + 2));
  if (v23 != BYTE2(v48))
  {
    v35 = sub_25BAD5A00();
    v37 = v36;
    v17((&v48 + 1), ObjectType, v11);
    v38 = BYTE1(v48);
    (v42)(&v48, v43, v47);
    v39 = v38 | (v48 << 8) | 0xA000;
    sub_25BB0E2EC();
    swift_allocError();
    *v40 = v35;
    *(v40 + 8) = v37;
    *(v40 + 16) = v39;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
  ObjectType = swift_allocObject();
  *(ObjectType + 16) = xmmword_25BCBAE50;
  v25 = sub_25BBC7C18(v10, v11, v22, v47, v46, v46, v45, v44);
  if (v2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(ObjectType + 16) = 0;
  }

  else
  {
    *(ObjectType + 32) = v25;
    *(ObjectType + 40) = v26;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return ObjectType;
}

uint64_t sub_25BBC7C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = sub_25BCB564C();
  v15 = *(v36 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v36);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a6;
  v32 = a7;
  v37 = a6;
  v38 = a7;
  v19 = v34;
  v33 = a8;
  v39 = a8;
  v40 = a1;
  v20 = a3;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = v34;
  sub_25BCB563C();
  v21 = v35;
  v22 = sub_25BCB562C();
  if (v21)
  {
    (*(v15 + 8))(v18, v36);
  }

  else
  {
    v23 = *(v15 + 8);
    v35 = v22;
    v23(v18, v36);
    v24 = *(v19 + 56);
    v25 = *(v19 + 64);
    type metadata accessor for NativeTensorStorage();
    v46 = v24;
    v45 = v25;
    sub_25BCB617C();
    sub_25BBC0130(&v46, &v45, 0);
    a3 = v26;
    ObjectType = swift_getObjectType();
    v28 = MEMORY[0x28223BE20](ObjectType);
    v29 = v32;
    *(&v31 - 10) = v31;
    *(&v31 - 9) = v29;
    *(&v31 - 8) = v33;
    *(&v31 - 7) = v20;
    *(&v31 - 6) = a4;
    *(&v31 - 5) = a3;
    *(&v31 - 4) = a1;
    *(&v31 - 3) = a2;
    *(&v31 - 2) = v35;
    (*(a2 + 64))(sub_25BBC8B68, v28);
  }

  return a3;
}

uint64_t sub_25BBC7E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v38 = a5;
  v39 = a6;
  v37 = sub_25BCB56AC();
  v44 = *(v37 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25BCB577C();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v36 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  ObjectType = swift_getObjectType();
  (*(a3 + 16))(&v45, ObjectType, a3);
  sub_25BB46100(v9);
  v41 = v20;
  sub_25BCB578C();

  v22 = *(v44 + 8);
  v44 += 8;
  v23 = v37;
  v22(v9, v37);
  v24 = swift_getObjectType();
  (*(v38 + 2))(&v45, v24);
  sub_25BB46100(v9);
  v38 = v17;
  sub_25BCB578C();

  v22(v9, v23);
  v25 = *(v39 + 152);
  swift_getWitnessTable();
  switch(v25)
  {
    case 1:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB569C();
      break;
    case 2:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB566C();
      break;
    case 3:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB565C();
      break;
    case 4:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB56DC();
      break;
    case 5:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB56BC();
      break;
    case 6:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB56CC();
      break;
    case 7:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB568C();
      break;
    default:
      v27 = v40;
      v26 = v41;
      v28 = v38;
      sub_25BCB567C();
      break;
  }

  v29 = v42;
  v30 = v43;
  v31 = *(v42 + 32);
  v31(v43, v27, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4920, &qword_25BCBFB38);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25BCBAE50;
  *(v32 + 56) = v10;
  *(v32 + 64) = swift_getWitnessTable();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v32 + 32));
  v31(boxed_opaque_existential_0, v30, v10);
  v34 = *(v29 + 8);
  v34(v28, v10);
  v34(v26, v10);
  return v32;
}

uint64_t sub_25BBC8390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  ObjectType = swift_getObjectType();
  v21 = a9;
  v22 = a10;
  v23 = a5;
  v24 = a1;
  v25 = a2;
  v26 = a6;
  v27 = a7;
  v28 = a3;
  v29 = a4;
  v30 = a8;
  return (*(a4 + 64))(sub_25BBC8B94, v20, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BBC84BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v21 = a13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4910, &qword_25BCBFB28);
  result = swift_allocObject();
  v67 = result;
  *(result + 16) = xmmword_25BCBAE90;
  v61 = a5;
  v63 = a7;
  if (a1)
  {
    v23 = *(*(a13 - 8) + 72);
    if (!v23)
    {
      __break(1u);
      goto LABEL_50;
    }

    if (a2 - a1 == 0x8000000000000000 && v23 == -1)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v62 = (a2 - a1) / v23;
  }

  else
  {
    v62 = 0;
  }

  v70[0] = *(a3 + 16);
  sub_25BCB617C();
  v25 = sub_25BC6FC68();
  a3 = sub_25BBFCCC8(1, v25);
  a5 = v26;
  v15 = v27;
  a7 = v28;
  v65 = a13;
  if (v28)
  {
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      swift_unknownObjectRelease();
      v29 = MEMORY[0x277D84F90];
    }

    v30 = *(v29 + 16);

    if (__OFSUB__(a7 >> 1, v15))
    {
      goto LABEL_52;
    }

    if (v30 != (a7 >> 1) - v15)
    {
      goto LABEL_53;
    }

    v31 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v21 = a13;
    v15 = v62;
    if (v31)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  while (1)
  {
    sub_25BABA62C(a3, a5, v15, a7);
    v15 = v62;
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    a3 = a14;
    sub_25BCB6C0C();
    result = memcpy((v67 + 32), __src, 0xA0uLL);
    if (a4)
    {
      v32 = *(*(v21 - 8) + 72);
      if (!v32)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v61 - a4 == 0x8000000000000000 && v32 == -1)
      {
        goto LABEL_59;
      }

      v34 = a14;
      v62 = (v61 - a4) / v32;
    }

    else
    {
      v34 = a14;
      v62 = 0;
    }

    ObjectType = swift_getObjectType();
    a5 = v63;
    v36 = *(v63 + 16);
    v36(v70, ObjectType, v63);
    v36(v69, ObjectType, v63);
    v71 = v69[0];
    v37 = sub_25BC6FC68();

    a3 = sub_25BBFCCC8(1, v37);
    v39 = v38;
    a7 = v40;
    v42 = v41;
    if ((v41 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v44 = swift_dynamicCastClass();
    if (!v44)
    {
      swift_unknownObjectRelease();
      v44 = MEMORY[0x277D84F90];
    }

    v45 = *(v44 + 16);

    if (__OFSUB__(v42 >> 1, a7))
    {
      __break(1u);
LABEL_55:
      v34 = a5;
      swift_unknownObjectRelease();
      v21 = v65;
LABEL_26:
      v15 = sub_25BABA62C(a3, v39, a7, v42);
      v43 = a8;
      a5 = v34;
      goto LABEL_33;
    }

    a5 = v34;
    if (v45 != (v42 >> 1) - a7)
    {
      goto LABEL_55;
    }

    v15 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v43 = a8;
    v21 = v65;
    if (v15)
    {
      goto LABEL_34;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_33:
    swift_unknownObjectRelease();
LABEL_34:
    sub_25BCB6C0C();
    result = memcpy((v67 + 192), v69, 0xA0uLL);
    if (!v43)
    {
      goto LABEL_40;
    }

    v46 = *(*(v21 - 8) + 72);
    if (v46)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_unknownObjectRelease();
    v21 = v65;
  }

  if (a9 - v43 != 0x8000000000000000 || v46 != -1)
  {
LABEL_40:
    v48 = swift_getObjectType();
    v49 = *(a11 + 16);
    v49(&v71, v48, a11);
    v49(v70, v48, a11);
    v50 = sub_25BC6FC68();

    v51 = sub_25BBFCCC8(1, v50);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    if ((v56 & 1) == 0)
    {
      goto LABEL_41;
    }

    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      swift_unknownObjectRelease();
      v58 = MEMORY[0x277D84F90];
    }

    v59 = *(v58 + 16);

    if (__OFSUB__(v57 >> 1, v55))
    {
      __break(1u);
    }

    else if (v59 == (v57 >> 1) - v55)
    {
      v60 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v60)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    swift_unknownObjectRelease();
LABEL_41:
    sub_25BABA62C(v51, v53, v55, v57);
LABEL_47:
    swift_unknownObjectRelease();
LABEL_48:
    sub_25BCB6C0C();
    memcpy((v67 + 352), v70, 0xA0uLL);
    v71 = v67;
    sub_25BCB579C();
  }

LABEL_60:
  __break(1u);
  return result;
}

unint64_t sub_25BBC8AB4(uint64_t a1)
{
  result = sub_25BBC8ADC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BBC8ADC()
{
  result = qword_28154D288[0];
  if (!qword_28154D288[0])
  {
    type metadata accessor for BinaryArithmeticOperation();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154D288);
  }

  return result;
}

uint64_t sub_25BBC8B34(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  return sub_25BBC7E8C(a1, *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t sub_25BBC8BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7[0] = v3;
    v7[1] = a3;
    v8 = MEMORY[0x28223BE20](a1);
    v9 = v5;
    sub_25BBA7DBC(sub_25BBC9488);
  }

  else
  {
    MEMORY[0x28223BE20](0);
    v8 = v3;
    v9 = a3;
    sub_25BAD8524(sub_25BBC946C, v7);
  }

  swift_unknownObjectRelease();
  return sub_25BAD700C(a3);
}

void *sub_25BBC8CAC(uint64_t a1)
{
  v2 = v1;
  v2[2] = MEMORY[0x277D84F98];
  swift_weakInit();
  swift_weakInit();
  v2[6] = a1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v2[5] = sub_25BAA6F2C();
  return v2;
}

uint64_t sub_25BBC8D1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    sub_25BAD885C(a2);
    if (v8)
    {
      return swift_endAccess();
    }
  }

  swift_endAccess();
  if (*(a1 + 48) <= *(*(a1 + 16) + 16))
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      v15[0] = 0xD000000000000036;
      v15[1] = 0x800000025BCE0110;
      v16 = 9;
      sub_25BA97890();
    }

    v11 = Strong;
    if (swift_weakLoadStrong())
    {
      swift_weakLoadStrong();
      swift_weakAssign();
    }

    swift_weakLoadStrong();
    swift_weakAssign();

    if (swift_weakLoadStrong())
    {
      swift_weakAssign();
    }

    swift_beginAccess();
    sub_25BBC96AC((v11 + 16));
    swift_endAccess();
  }

  sub_25BAD6F54(a2, v15);
  swift_weakLoadStrong();
  type metadata accessor for LazyTensorFunctionExecutorCache.CacheValue();
  swift_allocObject();
  swift_unknownObjectRetain();
  v12 = sub_25BBC9348(v15, a3, a4);
  if (swift_weakLoadStrong())
  {
    swift_weakAssign();
  }

  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    swift_weakAssign();
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 16);
  sub_25BC1A738(v12, a2);
  *(a1 + 16) = v14;
  swift_endAccess();
}

uint64_t sub_25BBC8FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (!*(v6 + 16) || (v7 = sub_25BAD885C(a2), (v8 & 1) == 0))
  {
    result = swift_endAccess();
LABEL_6:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  if (swift_weakLoadStrong())
  {
    swift_weakLoadStrong();
    swift_weakAssign();
  }

  else
  {
  }

  if (swift_weakLoadStrong())
  {
    swift_weakLoadStrong();
    swift_weakAssign();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;

    if (v12 == v9)
    {
      swift_weakLoadStrong();
      swift_weakAssign();

      if (swift_weakLoadStrong())
      {
        swift_weakAssign();
      }
    }
  }

  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = v13;

    if (v14 == v9)
    {
      swift_weakLoadStrong();
      swift_weakAssign();

      if (swift_weakLoadStrong())
      {
        swift_weakAssign();
      }
    }
  }

  swift_beginAccess();
  v15 = sub_25BBC96AC(a2);
  swift_endAccess();

  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = *(v15 + 104);
  swift_unknownObjectRetain();

  *a3 = v16;
  return result;
}

uint64_t sub_25BBC9228()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6100, &unk_25BCC80B0);
  sub_25BCB619C();
  swift_endAccess();
  swift_weakAssign();
  return swift_weakAssign();
}

uint64_t sub_25BBC92B8()
{
  v1 = *(v0 + 16);

  swift_weakDestroy();
  swift_weakDestroy();
  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_25BBC92F0()
{
  sub_25BBC92B8();

  return swift_deallocClassInstance();
}

void *sub_25BBC9348(const void *a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  swift_weakInit();
  memcpy(v3 + 2, a1, 0x58uLL);
  v3[13] = a2;
  v3[14] = a3;
  swift_weakAssign();

  swift_weakAssign();

  return v3;
}

uint64_t sub_25BBC93E0()
{
  sub_25BAD700C(v0 + 16);
  v1 = *(v0 + 104);
  swift_unknownObjectRelease();
  swift_weakDestroy();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_25BBC9418()
{
  sub_25BBC93E0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBC94A8(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v14 = *v1;
    v15 = sub_25BAFEE6C(a1);
    if (v16)
    {
      v17 = v15;
      v18 = *v2;
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *v2;
      v19 = *(*v2 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E18, &qword_25BCC7148);
      sub_25BCB745C();
      v8 = v20;

      v13 = *(*(v20 + 56) + 8 * v17);
      sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
      sub_25BB2BA50(0, &qword_27FBB5E00, 0x277CD7880);
      sub_25BBB9B10();
      sub_25BCB747C();
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_25BCB74AC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_25BCB617C();
  v7 = sub_25BCB749C();
  v8 = sub_25BBB9804(v4, v7);

  v9 = sub_25BAFEE6C(v5);
  v11 = v10;

  if (v11)
  {

    v13 = *(*(v8 + 56) + 8 * v9);
    sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
    sub_25BB2BA50(0, &qword_27FBB5E00, 0x277CD7880);
    sub_25BBB9B10();
    sub_25BCB747C();

LABEL_10:
    *v2 = v8;
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBC96AC(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_25BAD885C(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB66B0, &unk_25BCC80A0);
  sub_25BCB745C();
  sub_25BAD700C(*(v11 + 48) + 88 * v6);
  v9 = *(*(v11 + 56) + 8 * v6);
  type metadata accessor for LazyTensorFunctionExecutorCache.CacheValue();
  sub_25BBC978C();
  sub_25BCB747C();
  *v2 = v11;
  return v9;
}

unint64_t sub_25BBC978C()
{
  result = qword_27FBB60F8;
  if (!qword_27FBB60F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB60F8);
  }

  return result;
}

uint64_t sub_25BBC97E0(uint64_t a1)
{
  v2 = v1;
  if (qword_27FBB33A8 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_27FBB6110;
  MEMORY[0x28223BE20](a1);

  os_unfair_lock_lock((v3 + 24));
  sub_25BBCA3E8((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));
  if (!v1)
  {
    v2 = v5;
  }

  return v2;
}

id sub_25BBC98B8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_opt_self() deviceWithMTLDevice_];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_25BBC9934()
{
  v1 = *(v0 + 32);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v2 + 1;
    os_unfair_lock_unlock((v1 + 24));
  }
}

id sub_25BBC998C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_25BBC9BE4(v0);
    v2 = *(v0 + 56);
    *(v0 + 56) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

id sub_25BBC99EC()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_25BBC9CD8(v0);
    v2 = *(v0 + 64);
    *(v0 + 64) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

void *sub_25BBC9A4C(NSUInteger a1, char a2)
{

  v4 = objc_autoreleasePoolPush();
  sub_25BBC9F28();
  sub_25BAA3234();
  sub_25BBC9B60();
  v5 = sub_25BB3AB10(a1, a2);

  sub_25BAA3258();

  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t sub_25BBC9AEC()
{
  type metadata accessor for SharedMetalDevice();
  v0 = sub_25BCB614C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6138, &qword_25BCC8148);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_27FBB6110 = result;
  return result;
}

uint64_t sub_25BBC9B60()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 16);
    type metadata accessor for MPSAllocator();
    swift_allocObject();
    v4 = swift_unknownObjectRetain();
    v1 = sub_25BB3AA1C(v4);
    v5 = *(v2 + 48);
    *(v2 + 48) = v1;
  }

  return v1;
}

id sub_25BBC9BE4(uint64_t a1)
{
  result = [*(a1 + 16) newSharedEvent];
  if (!result)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002BLL, 0x800000025BCE03C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
    sub_25BCB73CC();
    sub_25BCB617C();
    sub_25BA97890();
  }

  return result;
}

id sub_25BBC9CD8(uint64_t a1)
{
  result = [*(a1 + 16) newEvent];
  if (!result)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002ALL, 0x800000025BCE02F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
    sub_25BCB73CC();
    sub_25BCB617C();
    sub_25BA97890();
  }

  return result;
}

uint64_t sub_25BBC9DCC(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6130, &qword_25BCC8140);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 16) = a1;
  v5 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v5)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD00000000000002ALL, 0x800000025BCE0410);
    v8 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6120, &qword_25BCBF508);
    sub_25BCB73CC();
    sub_25BCB617C();
    sub_25BA97890();
  }

  v6 = v5;
  swift_unknownObjectRelease();
  *(v2 + 24) = v6;
  return v2;
}

uint64_t sub_25BBC9F28()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = v0;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v1 = sub_25BAA6F2C();
    v3 = *(v2 + 72);
    *(v2 + 72) = v1;
  }

  return v1;
}

uint64_t sub_25BBC9F9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);
  swift_unknownObjectRelease();
  v6 = *(v0 + 64);
  swift_unknownObjectRelease();
  v7 = *(v0 + 72);

  return v0;
}

uint64_t sub_25BBC9FF4()
{
  sub_25BBC9F9C();

  return swift_deallocClassInstance();
}

id sub_25BBCA04C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{

  sub_25BA9D8C4(a4);
  v16 = objc_autoreleasePoolPush();
  sub_25BBC9F28();
  sub_25BAA3234();
  v11 = *(v5 + 16);
  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BBCA1A8;
    aBlock[3] = &block_descriptor_1;
    v12 = _Block_copy(aBlock);
  }

  else
  {
    v12 = 0;
  }

  if ((a3 & 0xFE) != 0)
  {
    v13 = 48;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v11 newBufferWithBytesNoCopy:a1 length:a2 options:v13 deallocator:v12];
  _Block_release(v12);
  sub_25BAA3258();

  sub_25BA9D148(a4);

  objc_autoreleasePoolPop(v16);
  return v14;
}

uint64_t sub_25BBCA1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

id sub_25BBCA208(uint64_t a1, char a2)
{

  v5 = objc_autoreleasePoolPush();
  v6 = sub_25BBC9F28();
  v7 = sub_25BBFA7F0(v6, v2, a1, a2);

  objc_autoreleasePoolPop(v5);
  return v7;
}

uint64_t sub_25BBCA288@<X0>(id a1@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X8>)
{
  result = sub_25BB3F020([a1 registryID], *a2);
  if (result)
  {
    *a3 = result;
  }

  else if (MPSSupportsMTLDevice(a1))
  {
    type metadata accessor for SharedMetalDevice();
    swift_allocObject();
    v7 = swift_unknownObjectRetain();
    v8 = sub_25BBC9DCC(v7);
    [a1 registryID];

    v9 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *a2;
    result = sub_25BC1A840();
    *a2 = v13[0];
    *a3 = v8;
  }

  else
  {
    v13[3] = &unk_286D4F738;
    v13[4] = &off_286D4F7B8;
    v13[5] = a1;
    v10 = swift_unknownObjectRetain_n();
    v14 = sub_25BC176D0(v10);
    sub_25BBA7EB8();
    swift_allocError();
    v12 = v11;
    sub_25BABEF40(v13, v11);
    *(v12 + 108) = 19;
    swift_willThrow();
    return sub_25BABF0A8(v13);
  }

  return result;
}

void static Tensor..< infix<A>(_:_:)()
{
  sub_25BBCAF0C();
}

{
  sub_25BBCB0AC();
}

uint64_t static Tensor..<= infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  Tensor.scalarType.getter();
  OUTLINED_FUNCTION_35_12();
  LODWORD(v15) = 0;
  Tensor.init(coercing:scalarType:on:)(v17, v8, v9, &v14, v9, v10, v11, v12, 0, 0, 0, 0, 0, 0, v15, v16, v17[0], v17[1], v17[2], v18, v19, v20);
  static Tensor..<= infix(_:_:)(&v20, a2);
}

void static Tensor..> infix<A>(_:_:)()
{
  sub_25BBCAF0C();
}

{
  sub_25BBCB0AC();
}

void sub_25BBCAF0C()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_50_6();
  v4 = v3;
  OUTLINED_FUNCTION_17_28(v5, v3, v6);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = OUTLINED_FUNCTION_4_41(v10, v11, v12, v13);
  v15(v14);
  v16 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_21_21(v16, v17);
  v18();
  OUTLINED_FUNCTION_49_9();
  if (sub_25BAA80BC(v0, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v19) ? (v19 = v0 == 12) : (v19 = 0), !v19 ? (v20 = v4 == 12) : (v20 = 0), v20))
  {
    v30 = OUTLINED_FUNCTION_20_19();
    v31(v30);
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_18_24();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_27_18();
    v21();
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_25_17(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  v2(&v45, v4);

  OUTLINED_FUNCTION_10_16();
}

void static Tensor..>= infix<A>(_:_:)()
{
  sub_25BBCAF0C();
}

{
  sub_25BBCB0AC();
}

void sub_25BBCB0AC()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_50_6();
  v4 = v3;
  OUTLINED_FUNCTION_17_28(v3, v5, v6);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = OUTLINED_FUNCTION_4_41(v10, v11, v12, v13);
  v15(v14);
  v16 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_21_21(v16, v17);
  v18();
  OUTLINED_FUNCTION_49_9();
  if (sub_25BAA80BC(v0, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v19) ? (v19 = v0 == 12) : (v19 = 0), !v19 ? (v20 = v4 == 12) : (v20 = 0), v20))
  {
    v30 = OUTLINED_FUNCTION_20_19();
    v31(v30);
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_18_24();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_27_18();
    v21();
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_25_17(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  v2(v4, &v45);

  OUTLINED_FUNCTION_10_16();
}

void static Tensor..== infix<A>(_:_:)()
{
  sub_25BBCB4D0();
}

{
  sub_25BBCB658();
}

void static Tensor..!= infix<A>(_:_:)()
{
  sub_25BBCB4D0();
}

{
  sub_25BBCB658();
}

void sub_25BBCB4D0()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_50_6();
  v4 = v3;
  OUTLINED_FUNCTION_17_28(v5, v3, v6);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = OUTLINED_FUNCTION_4_41(v10, v11, v12, v13);
  v15(v14);
  v16 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_21_21(v16, v17);
  v18();
  OUTLINED_FUNCTION_49_9();
  if (sub_25BAA80BC(v0, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v19) ? (v19 = v0 == 12) : (v19 = 0), !v19 ? (v20 = v4 == 12) : (v20 = 0), v20))
  {
    v30 = OUTLINED_FUNCTION_20_19();
    v31(v30);
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_18_24();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_27_18();
    v21();
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_25_17(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  v2(&v45, v4);

  OUTLINED_FUNCTION_10_16();
}

void sub_25BBCB658()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  OUTLINED_FUNCTION_50_6();
  v4 = v3;
  OUTLINED_FUNCTION_17_28(v3, v5, v6);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = OUTLINED_FUNCTION_4_41(v10, v11, v12, v13);
  v15(v14);
  v16 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_21_21(v16, v17);
  v18();
  OUTLINED_FUNCTION_49_9();
  if (sub_25BAA80BC(v0, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v19) ? (v19 = v0 == 12) : (v19 = 0), !v19 ? (v20 = v4 == 12) : (v20 = 0), v20))
  {
    v30 = OUTLINED_FUNCTION_20_19();
    v31(v30);
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_54_6();
    OUTLINED_FUNCTION_18_24();
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_27_18();
    v21();
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_8_31();
    OUTLINED_FUNCTION_25_17(v22, v23, v24, v25, v26, v27, v28, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  v2(v4, &v45);

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBCB800(uint64_t a1)
{
  v2 = sub_25BCB783C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1;
  Tensor.scalarType.getter();
  (*(v7 + 32))(&v12);
  v8 = *(a1 + 16);
  if (v12 == 2)
  {

    sub_25BB3F8A8(sub_25BBE132C, a1);
  }

  else
  {
    swift_retain_n();
    v9 = sub_25BA928B4();
    [v9 lock];

    sub_25BA92920(v8, 0, 0, &v13);
    [*(v8 + 224) unlock];

    swift_unknownObjectRelease();
    v12 = a1;
    v11[15] = 2;
    (*(v3 + 104))(v6, *MEMORY[0x277D84660], v2);
    Tensor.cast(to:roundingRule:)();
    (*(v3 + 8))(v6, v2);
    sub_25BBCB800(v13);
  }

  OUTLINED_FUNCTION_46_9();

  return v2;
}

uint64_t sub_25BBCB9F8(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    return sub_25BCB617C();
  }

  __break(1u);
  return result;
}

void *sub_25BBCBA58(void *result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = *(*(a3 + 16) + 152);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    v6 = 1;
    v7 = v5;
    v8 = v4;
    do
    {
      v9 = *v7++;
      v10 = v6 * v9;
      if ((v6 * v9) >> 64 != (v6 * v9) >> 63)
      {
        __break(1u);
        goto LABEL_14;
      }

      v6 = v10;
      --v8;
    }

    while (v8);
    if ((v10 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_15;
    }

    v11 = 1;
    while (1)
    {
      v12 = *v5++;
      v13 = v11 * v12;
      if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
      {
        break;
      }

      v11 = v13;
      if (!--v4)
      {
        return sub_25BC54B84(result, v13);
      }
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = 1;
  return sub_25BC54B84(result, v13);
}

uint64_t sub_25BBCBB14(char a1)
{
  result = 6579297;
  switch(a1)
  {
    case 1:
      result = 6452595;
      break;
    case 2:
      result = 7107949;
      break;
    case 3:
      result = 0x7669645F6C616572;
      break;
    case 4:
      result = 7827312;
      break;
    case 5:
      v3 = 1769496941;
      goto LABEL_9;
    case 6:
      v3 = 1768843629;
LABEL_9:
      result = v3 | 0x6D756D00000000;
      break;
    case 7:
      result = 6582125;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25BBCBBB4(char a1)
{
  result = 7235955;
  switch(a1)
  {
    case 1:
      return 1936679777;
    case 2:
      v3 = 1936679777;
      goto LABEL_21;
    case 3:
      return 1852404577;
    case 4:
      v3 = 1852404577;
      goto LABEL_21;
    case 5:
      return 1851880545;
    case 6:
      v3 = 1851880545;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 7:
      result = 1818846563;
      break;
    case 8:
      result = 7565155;
      break;
    case 9:
      result = 1752395619;
      break;
    case 10:
      result = 7370853;
      break;
    case 11:
      result = 846231653;
      break;
    case 12:
      result = 0x726F6F6C66;
      break;
    case 13:
      result = 0x797469746E656469;
      break;
    case 14:
      result = 6778732;
      break;
    case 15:
      result = 0x636F727069636572;
      break;
    case 16:
      result = 0x646E756F72;
      break;
    case 17:
      result = 0x7472717372;
      break;
    case 18:
      result = 1852270963;
      break;
    case 19:
      return result;
    case 20:
      result = 1752066419;
      break;
    case 21:
      result = 1953657203;
      break;
    case 22:
      result = 0x657261757173;
      break;
    case 23:
      result = 7233908;
      break;
    case 24:
      result = 1752064372;
      break;
    default:
      result = 7561825;
      break;
  }

  return result;
}

uint64_t sub_25BBCBD8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v33 = MEMORY[0x277D84F90];
    sub_25BB00850(0, v2, 0);
    v3 = v33;
    result = sub_25BBE092C(a1);
    v7 = result;
    v8 = 0;
    v9 = a1 + 64;
    v27 = v5;
    v28 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v8;
      v31 = v5;
      v29 = v6;
      v11 = (*(a1 + 48) + 16 * v7);
      v12 = v11[1];
      v32 = *v11;
      v13 = *(*(a1 + 56) + 8 * v7);
      v15 = *(v33 + 16);
      v14 = *(v33 + 24);
      sub_25BCB617C();

      if (v15 >= v14 >> 1)
      {
        result = sub_25BB00850((v14 > 1), v15 + 1, 1);
      }

      *(v33 + 16) = v15 + 1;
      v16 = (v33 + 24 * v15);
      v16[4] = v32;
      v16[5] = v12;
      v16[6] = v13;
      v17 = 1 << *(a1 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v9 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v31)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (a1 + 72 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_25BB33E48(v7, v31, v29 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_25BB33E48(v7, v31, v29 & 1);
      }

LABEL_19:
      v6 = 0;
      v8 = v30 + 1;
      v7 = v17;
      v5 = v27;
      if (v30 + 1 == v28)
      {

        goto LABEL_22;
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
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    sub_25BCB614C();
    v25 = sub_25BAD8178(v3);

    sub_25BAD8324(v26);
    return v25;
  }

  return result;
}