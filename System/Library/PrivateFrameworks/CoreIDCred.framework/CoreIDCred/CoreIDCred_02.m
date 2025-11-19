uint64_t sub_245651F6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_245652AD4(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_245651F98(uint64_t a1)
{
  v2 = sub_245652014();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_245651FD4(uint64_t a1)
{
  v2 = sub_245652014();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_245652014()
{
  result = qword_27EE1AD08;
  if (!qword_27EE1AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE1AD08);
  }

  return result;
}

double sub_245652068@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24564A830(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_245652730();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_24564E29C((*(v12 + 56) + 32 * v9), a3);
    sub_2456523C4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_24565210C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB48, &qword_2456618B0);
  v36 = a2;
  result = sub_24565BD94();
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_24564E29C(v25, v37);
      }

      else
      {
        sub_24564CDB4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_24565BF74();
      sub_24565BB54();
      result = sub_24565BFA4();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_24564E29C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2456523C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24565BD04() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_24565BF74();

      sub_24565BB54();
      v14 = sub_24565BFA4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_245652574(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24564A830(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_245652730();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24565210C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24564A830(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_24565BF14();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_24564E29C(a1, v23);
  }

  else
  {
    sub_2456526C4(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2456526C4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24564E29C(a4, (a5[7] + 32 * a1));
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

void *sub_245652730()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AB48, &qword_2456618B0);
  v2 = *v0;
  v3 = sub_24565BD84();
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
        sub_24564CDB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24564E29C(v25, (*(v4 + 56) + v22));
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

uint64_t sub_2456528D4(uint64_t a1)
{
  if (a1 > -26002)
  {
    if (a1 <= -12085)
    {
      if (a1 <= -15033)
      {
        if (a1 == -26001)
        {
          return 15;
        }

        if (a1 == -18084)
        {
          return 9;
        }
      }

      else
      {
        switch(a1)
        {
          case -15032:
            return 8;
          case -15009:
            return 7;
          case -12193:
            return 6;
        }
      }
    }

    else if (a1 > -1202)
    {
      switch(a1)
      {
        case -1:
          return 0;
        case -4:
          return 1;
        case -1201:
          return 2;
      }
    }

    else
    {
      switch(a1)
      {
        case -12084:
          return 5;
        case -12057:
          return 4;
        case -1302:
          return 3;
      }
    }

    return 22;
  }

  if (a1 <= -26044)
  {
    if (a1 <= -31004)
    {
      if (a1 == -31005)
      {
        return 14;
      }

      if (a1 == -31004)
      {
        return 13;
      }
    }

    else
    {
      switch(a1)
      {
        case -31003:
          return 12;
        case -31002:
          return 11;
        case -31001:
          return 10;
      }
    }

    return 22;
  }

  if (a1 > -26041)
  {
    switch(a1)
    {
      case -26040:
        return 18;
      case -26039:
        return 17;
      case -26003:
        return 16;
    }

    return 22;
  }

  if (a1 == -26043)
  {
    return 21;
  }

  if (a1 == -26042)
  {
    return 20;
  }

  return 19;
}

uint64_t sub_245652AD4(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_24565BB24();
  v5 = v4;

  if (v3 == 0x726F727245504944 && v5 == 0xE800000000000000)
  {
  }

  else
  {
    v7 = sub_24565BED4();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = sub_2456528D4([a1 code]);
  if (v8 == 22)
  {
    return 0;
  }

  v10 = v8;
  v11 = [a1 userInfo];
  v12 = sub_24565BAD4();

  v13 = *MEMORY[0x277CCA7E8];
  v14 = sub_24565BB24();
  if (!*(v12 + 16))
  {

    goto LABEL_16;
  }

  v16 = sub_24564A830(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_16:

    v19 = 0;
    goto LABEL_17;
  }

  sub_24564CDB4(*(v12 + 56) + 32 * v16, v30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAD0, &qword_2456615E0);
  if (swift_dynamicCast())
  {
    v19 = v29;
  }

  else
  {
    v19 = 0;
  }

LABEL_17:
  v20 = v19;
  v21 = [a1 userInfo];
  v22 = sub_24565BAD4();

  v23 = *MEMORY[0x277CCA068];
  v24 = sub_24565BB24();
  if (!*(v22 + 16))
  {

    goto LABEL_21;
  }

  v26 = sub_24564A830(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  sub_24564CDB4(*(v22 + 56) + 32 * v26, v30);

  swift_dynamicCast();
LABEL_22:

  return v10;
}

uint64_t getEnumTagSinglePayload for DIPError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245652F00()
{
  result = qword_27EE1AD10[0];
  if (!qword_27EE1AD10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE1AD10);
  }

  return result;
}

void *SendableXPCConnection.__allocating_init(machServiceName:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v16 = sub_24565BB14();

  v17 = [v15 initWithMachServiceName:v16 options:4096];

  sub_24563D310(a9, v22);
  swift_allocObject();
  v18 = sub_245656110(v17, a3, a4, a5, a6, a7, a8, v22, a10, a11);

  sub_2456564BC(a6);
  sub_2456564BC(a4);

  sub_245636C48(a9, &unk_27EE1A8A0, &qword_2456618A0);
  return v18;
}

uint64_t SendableXPCConnection.interruptionHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_2456565F8(a1, a2, &block_descriptor_87, &selRef_setInterruptionHandler_);

  return sub_2456564BC(a1);
}

uint64_t SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_24565312C, 0, 0);
}

uint64_t sub_24565312C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v1;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_24565324C;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return MEMORY[0x282200830](v11, &unk_245662318, v5, sub_24565658C, v7, 0, 0, v10);
}

uint64_t sub_24565324C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_245653394, 0, 0);
  }

  else
  {
    v5 = v3[9];
    v4 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_245653394()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

id SendableXPCConnection.wrapped.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void SendableXPCConnection.exportedObject.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if ([*(v3 + 16) exportedObject])
  {
    sub_24565BCF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  *a1 = v4;
  a1[1] = v5;

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t SendableXPCConnection.exportedObject.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sub_24563D310(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6, v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_24565BEC4();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v3 + 24));
  return sub_245636C48(a1, &unk_27EE1A8A0, &qword_2456618A0);
}

void (*SendableXPCConnection.exportedObject.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  SendableXPCConnection.exportedObject.getter(v3);
  return sub_2456536C4;
}

void sub_2456536C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_24563D310(*a1, v2 + 32);
    SendableXPCConnection.exportedObject.setter(v2 + 32);
    sub_245636C48(v2, &unk_27EE1A8A0, &qword_2456618A0);
  }

  else
  {
    SendableXPCConnection.exportedObject.setter(*a1);
  }

  free(v2);
}

uint64_t (*SendableXPCConnection.interruptionHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) interruptionHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_2456565C0;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_2456565D0;
    *(v6 + 24) = v5;
    return sub_245656598;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_245653830@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = SendableXPCConnection.interruptionHandler.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_245656BE0;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_2456538A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_245656BC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_24561100C(v3);
  sub_2456565F8(v6, v5, &block_descriptor_87, &selRef_setInterruptionHandler_);

  return sub_2456564BC(v6);
}

uint64_t (*SendableXPCConnection.interruptionHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.interruptionHandler.getter();
  a1[1] = v3;
  return sub_2456539A0;
}

uint64_t (*SendableXPCConnection.invalidationHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) invalidationHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_245656BC4;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_245656BE0;
    *(v6 + 24) = v5;
    return sub_245656BC8;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_245653AA8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = SendableXPCConnection.invalidationHandler.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_245656BE0;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_245653B18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_245656BC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_24561100C(v3);
  sub_2456565F8(v6, v5, &block_descriptor_71, &selRef_setInvalidationHandler_);

  return sub_2456564BC(v6);
}

uint64_t SendableXPCConnection.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_2456565F8(a1, a2, &block_descriptor_71, &selRef_setInvalidationHandler_);

  return sub_2456564BC(a1);
}

uint64_t (*SendableXPCConnection.invalidationHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.invalidationHandler.getter();
  a1[1] = v3;
  return sub_245653C70;
}

uint64_t sub_245653C84(uint64_t *a1, char a2, uint64_t a3, SEL *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  if (a2)
  {
    sub_24561100C(v7);
    sub_2456565F8(v4, v5, a3, a4);
    sub_2456564BC(v4);
  }

  else
  {
    sub_2456565F8(v7, v5, a3, a4);
  }

  return sub_2456564BC(v4);
}

void *SendableXPCConnection.__allocating_init(listenerEndpoint:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  sub_24563D310(a8, v21);
  swift_allocObject();
  v17 = sub_245656110(v16, a2, a3, a4, a5, a6, a7, v21, a9, a10);

  sub_2456564BC(a5);
  sub_2456564BC(a3);

  sub_245636C48(a8, &unk_27EE1A8A0, &qword_2456618A0);
  return v17;
}

uint64_t sub_245653EB4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void *, void *))
{
  v16 = a11(a1, a2);

  sub_2456564BC(a5);
  sub_2456564BC(a3);

  return v16;
}

uint64_t SendableXPCConnection.deinit()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  return v0;
}

Swift::Void __swiftcall SendableXPCConnection.invalidate()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t SendableXPCConnection.__deallocating_deinit()
{
  SendableXPCConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_245654030(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x2822009F8](sub_245654080, 0, 0);
}

uint64_t sub_245654080()
{
  v1 = v0[7];
  v2 = v0[3];
  v0[8] = SendableXPCConnection.wrapped.getter();
  v3 = *(v1 + 80);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_245654138;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v9, v4, v8, v6, v3, v7);
}

uint64_t sub_245654138()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_245654274, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_245654274()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  return MEMORY[0x2822009F8](sub_245654300, 0, 0);
}

uint64_t sub_245654300()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_24565443C;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000023, 0x8000000245664120, sub_2456566D8, v3, v8);
}

uint64_t sub_24565443C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2456545BC;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_245654558;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_245654558()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2456545BC()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

void sub_245654628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v19 - v11;
  if (a1)
  {
    v13 = sub_24565BC24();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a4;
    v14[5] = a3;
    v14[6] = a1;
    v14[7] = a2;
    sub_24561100C(a1);

    sub_24564871C(0, 0, v12, &unk_2456623A0, v14);
  }

  else
  {
    if (qword_27EE1A220 != -1)
    {
      swift_once();
    }

    v15 = sub_24565BAC4();
    __swift_project_value_buffer(v15, qword_27EE1A228);
    v20 = sub_24565BAA4();
    v16 = sub_24565BC84();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24560F000, v20, v16, "SendableXPCConnection onCancel is nil", v17, 2u);
      MEMORY[0x245D6D730](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_24565483C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *a4;
  return MEMORY[0x2822009F8](sub_245654888, 0, 0);
}

uint64_t sub_245654888()
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v1 = sub_24565BAC4();
  v0[7] = __swift_project_value_buffer(v1, qword_27EE1A228);
  v2 = sub_24565BAA4();
  v3 = sub_24565BC74();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24560F000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x245D6D730](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v0[8] = SendableXPCConnection.wrapped.getter();
  v10 = swift_allocObject();
  v0[9] = v10;
  v11 = *(v5 + 80);
  v10[2] = v11;
  v10[3] = v6;
  v10[4] = v8;
  v10[5] = v7;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_245654A58;
  v14 = MEMORY[0x277D84F78] + 8;

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v12, v13, &unk_2456623B0, v10, v11, v14);
}

uint64_t sub_245654A58()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_245654B78;
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = sub_245647E94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_245654B78()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  v5 = v1;
  v6 = sub_24565BAA4();
  v7 = sub_24565BC94();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24560F000, v6, v7, "SendableXPCConnection error occurred when cancelling the task: %@", v10, 0xCu);
    sub_245636C48(v11, &qword_27EE1AAD8, &qword_245661680);
    MEMORY[0x245D6D730](v11, -1, -1);
    MEMORY[0x245D6D730](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_245654CE4(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24564ABF0;

  return v8(a2);
}

uint64_t SendableXPCConnection.performSynchronouslyWithRemoteObjectProxy<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v31[0] = a3;
  v31[1] = a2;
  v4 = *(*v3 + 80);
  v5 = sub_24565BCE4();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v31 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  v15 = v31 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = SendableXPCConnection.wrapped.getter();
  v39 = sub_2456566E8;
  v40 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_245655278;
  v38 = &block_descriptor_0;
  v18 = _Block_copy(&aBlock);
  v41[5] = v16;

  v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v18);

  sub_24565BCF4();
  swift_unknownObjectRelease();
  sub_24564CDB4(v41, &aBlock);
  v20 = swift_dynamicCast();
  v21 = *(v11 + 56);
  if (v20)
  {
    v21(v10, 0, 1, v4);
    (*(v11 + 32))(v15, v10, v4);
    swift_beginAccess();
    v22 = *(v16 + 16);
    if (!v22)
    {
      v32(v15);
      (*(v11 + 8))(v15, v4);
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    v24 = v3[3];
    v23 = v3[4];
    v25 = v22;
    v24(v22);
    swift_willThrow();

    (*(v11 + 8))(v15, v4);
  }

  else
  {
    v21(v10, 1, 1, v4);
    (*(v33 + 8))(v10, v34);
    aBlock = 0;
    v36 = 0xE000000000000000;
    sub_24565BD44();
    MEMORY[0x245D6CBA0](0xD000000000000014, 0x8000000245664170);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    sub_24565BEB4();
    MEMORY[0x245D6CBA0](0xD000000000000013, 0x8000000245664190);
    v26 = sub_24565BFF4();
    MEMORY[0x245D6CBA0](v26);

    v27 = aBlock;
    v28 = v36;
    sub_24564CE10();
    swift_allocError();
    *v29 = 2;
    *(v29 + 8) = v27;
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
}

id sub_245655224(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_245655278(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2456552E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v10 = sub_24565BC04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAC8, "^q");
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v26 - v19;
  v21 = sub_24565BC24();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v11 + 16))(v15, a1, v10);
  v22 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v26;
  *(v23 + 5) = a6;
  *(v23 + 6) = a2;
  (*(v11 + 32))(&v23[v22], v15, v10);
  v24 = &v23[(v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v24 = v27;
  *(v24 + 1) = a4;

  sub_24564871C(0, 0, v20, &unk_245662390, v23);
}

uint64_t sub_245655524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v18;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v10 = *(*(v18 - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v11 = sub_24565BCE4();
  v8[19] = v11;
  v12 = *(v11 - 8);
  v8[20] = v12;
  v13 = *(v12 + 64) + 15;
  v8[21] = swift_task_alloc();
  v14 = *(a8 - 8);
  v8[22] = v14;
  v15 = *(v14 + 64) + 15;
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245655670, 0, 0);
}

uint64_t sub_245655670()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  os_unfair_lock_lock((v4 + 24));
  sub_245655CF8((v4 + 16), v3, v1, v2, (v0 + 2));
  os_unfair_lock_unlock((v4 + 24));
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[16];
  sub_24564CDB4((v0 + 2), (v0 + 6));
  v8 = swift_dynamicCast();
  v9 = *(v6 + 56);
  if (v8)
  {
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v13 = v0[16];
    v14 = v0[14];
    v9(v12, 0, 1, v13);
    (*(v11 + 32))(v10, v12, v13);
    v33 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_245655A0C;
    v17 = v0[23];
    v18 = v0[18];
    v19 = v0[15];

    return v33(v18, v17);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    v24 = v0[17];
    v25 = v0[13];
    v9(v21, 1, 1, v0[16]);
    (*(v22 + 8))(v21, v23);
    sub_24565BD44();
    MEMORY[0x245D6CBA0](0xD000000000000014, 0x8000000245664170);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_24565BEB4();
    MEMORY[0x245D6CBA0](0xD000000000000013, 0x8000000245664190);
    v26 = sub_24565BFF4();
    MEMORY[0x245D6CBA0](v26);

    sub_24564CE10();
    v27 = swift_allocError();
    *v28 = 2;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    *(v28 + 24) = 0;
    v0[10] = v27;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
    sub_24565BC04();
    sub_24565BBE4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v29 = v0[23];
    v30 = v0[21];
    v31 = v0[18];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_245655A0C()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_245655C10;
  }

  else
  {
    v3 = sub_245655B20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_245655B20()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BC04();
  sub_24565BBF4();
  (*(v2 + 8))(v1, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_245655C10()
{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v0[13];
  (*(v0[22] + 8))(v0[23], v0[16]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BC04();
  sub_24565BBE4();
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_245655CF8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v9 = sub_24565BC04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v21 - v13;
  v15 = *a1;
  (*(v10 + 16))(v21 - v13, a2, v9);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v10 + 32))(v17 + v16, v14, v9);
  aBlock[4] = sub_245656928;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245655278;
  aBlock[3] = &block_descriptor_62;
  v18 = _Block_copy(aBlock);

  v19 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_24565BCF4();
  return swift_unknownObjectRelease();
}

uint64_t sub_245655F04(void *a1)
{
  if (qword_27EE1A220 != -1)
  {
    swift_once();
  }

  v2 = sub_24565BAC4();
  __swift_project_value_buffer(v2, qword_27EE1A228);
  v3 = a1;
  v4 = sub_24565BAA4();
  v5 = sub_24565BC94();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_24565BF44();
    v10 = sub_24564B55C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24560F000, v4, v5, "XPC connection error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245D6D730](v7, -1, -1);
    MEMORY[0x245D6D730](v6, -1, -1);
  }

  sub_24564CE10();
  v11 = swift_allocError();
  *v12 = 4;
  *(v12 + 8) = 0xD000000000000014;
  *(v12 + 16) = 0x80000002456641D0;
  *(v12 + 24) = a1;
  v15 = v11;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  sub_24565BC04();
  return sub_24565BBE4();
}

void *sub_245656110(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  [a1 setRemoteObjectInterface_];
  if (a3)
  {
    v32 = a3;
    v33 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_245646920;
    v31 = &block_descriptor_68;
    a3 = _Block_copy(&aBlock);
  }

  [a1 setInvalidationHandler_];
  _Block_release(a3);
  if (a5)
  {
    v32 = a5;
    v33 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_245646920;
    v31 = &block_descriptor_65;
    a5 = _Block_copy(&aBlock);
  }

  [a1 setInterruptionHandler_];
  _Block_release(a5);
  [a1 setExportedInterface_];
  sub_24563D310(a8, &aBlock);
  v18 = v31;
  if (v31)
  {
    v19 = __swift_project_boxed_opaque_existential_1(&aBlock, v31);
    v20 = *(v18 - 1);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19, v19);
    v23 = &aBlock - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_24565BEC4();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v24 = 0;
  }

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE1AAE0, &qword_245661688);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = a1;
  v10[2] = v25;
  v10[3] = a9;
  v10[4] = a10;
  v26 = a1;

  [v26 activate];
  sub_245636C48(a8, &unk_27EE1A8A0, &qword_2456618A0);
  return v10;
}

uint64_t sub_2456564BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2456564CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24564ABF0;

  return sub_245654030(a1, v5, v7, v6, v4);
}

uint64_t sub_245656598()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2456565D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_2456565F8(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  if (a1)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_245646920;
    v12[3] = a3;
    v11 = _Block_copy(v12);
  }

  else
  {
    v11 = 0;
  }

  [v10 *a4];
  _Block_release(v11);
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2456567AC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[5];
  v17 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v6 = *(sub_24565BC04() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24564EB28;

  return sub_245655524(a1, v8, v9, v10, v1 + v7, v12, v13, v17);
}

uint64_t sub_245656928(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE1AAD0, &qword_2456615E0);
  v5 = *(*(sub_24565BC04() - 8) + 80);

  return sub_245655F04(a1);
}

uint64_t sub_2456569D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24564ABF0;

  return sub_24565483C(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_245656AA4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24564EB28;

  return sub_245654CE4(a1, a2, v9);
}