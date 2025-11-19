void sub_2287E57B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_2287E5860(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = [a2 bundle];
    if (v6 && (v7 = v6, v8 = [v6 identifier], v7, v8))
    {
      v9 = sub_22887F3A0();
      v11 = v10;

      v12 = [a3 state];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 taskState];

        v15 = [a3 state];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 endowmentNamespaces];

          if (v17)
          {
            v18 = sub_22887F5E0();

            v19 = sub_22887F3A0();
            LOBYTE(v17) = sub_2287E5A18(v19, v20, v18);
          }
        }

        else
        {
          LOBYTE(v17) = 0;
        }

        ProcessStateComponent.update(state:visible:for:)(v14, v17 & 1, v9, v11);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2287E5A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22887FC90();
  sub_22887F3E0();
  v6 = sub_22887FCD0();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22887FBF0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ProcessStateComponent.update(state:visible:for:)(unsigned __int8 a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 16);
  os_unfair_lock_lock((v10 + 24));
  if (a1 <= 2u)
  {
    if (a1 != 2)
    {
LABEL_3:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v10 + 16);
      *(v10 + 16) = 0x8000000000000000;
      v12 = 0x6E776F6E6B6E75;
      v13 = 0xE700000000000000;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (a1 == 4)
  {
LABEL_7:
    v14 = "backgroundRunning";
    if (a2)
    {
      v14 = "foregroundRunning";
    }

    v15 = v14 - 32;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v10 + 16);
    *(v10 + 16) = 0x8000000000000000;
    v13 = v15 | 0x8000000000000000;
    v12 = 0xD000000000000011;
    goto LABEL_10;
  }

  if (a1 != 3)
  {
    goto LABEL_3;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v10 + 16);
  *(v10 + 16) = 0x8000000000000000;
  v12 = 0xD000000000000013;
  v13 = 0x80000002288883D0;
LABEL_10:
  sub_2287E5CDC(v12, v13, a3, a4, isUniquelyReferenced_nonNull_native);

  *(v10 + 16) = v19;

  os_unfair_lock_unlock((v10 + 24));
  v16 = *(v5 + 72);
  ObjectType = swift_getObjectType();
  (*(v16 + 8))(v19, v5, &protocol witness table for ProcessStateComponent, ObjectType, v16);
}

uint64_t sub_2287E5CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2287E5E2C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_2287E6134();
      v13 = v21;
      goto LABEL_8;
    }

    sub_2288511A0(v18, a5 & 1);
    v13 = sub_2287E5E2C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_22885B9B8(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_2287E5E2C(uint64_t a1, uint64_t a2)
{
  sub_22887FC90();
  sub_22887F3E0();
  v4 = sub_22887FCD0();

  return sub_2287E5EA4(a1, a2, v4);
}

unint64_t sub_2287E5EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22887FBF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_2287E5F5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2287E5FBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D837D0], a3, MEMORY[0x277D837E0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2287E601C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2287E6134()
{
  v1 = v0;
  sub_2287E5FBC(0, &unk_2813CF350, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_22887FA30();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void sub_2287E62E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  os_unfair_lock_lock((v2 + 40));
  sub_2287E62C4((v2 + 16), &v9);
  if (v1)
  {
    os_unfair_lock_unlock((v2 + 40));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v2 + 40));
    v3 = v9;
    v4 = *(v10 + 16);
    if (v4)
    {
      v5 = (v10 + 40);
      do
      {
        v6 = *v5;
        ObjectType = swift_getObjectType();
        v8 = *(v6 + 8);
        swift_unknownObjectRetain();
        v8(v3, ObjectType, v6);
        swift_unknownObjectRelease();
        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }
}

uint64_t sub_2287E6404(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static SecureCodingValueAnchor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_22887FBF0() & 1) == 0)
  {
    return 0;
  }

  sub_2287E76D0(0, &qword_2813CF4D0);
  return sub_22887F7C0() & 1;
}

unint64_t sub_2287E64D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2287E65A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2287E66B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2287E65A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2287F9170(a5, a6);
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
    result = sub_22887F920();
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

uint64_t sub_2287E66B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2287E670C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2287E6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22887FC90();
  sub_22887F3E0();
  v8 = sub_22887FCD0();

  return sub_2287E75B4(a1, a2, a3, a4, v8);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_2287E68E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock((v9 + 32));
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = *(v9 + 24);
  os_unfair_lock_unlock((v9 + 32));
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, a2, a3, a4, ObjectType, v11);

    swift_unknownObjectRelease();
  }
}

void InputSignalObservationManager.didUpdate<A>(anchor:signal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 32);
  os_unfair_lock_lock((v9 + 32));
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = *(v9 + 24);
  os_unfair_lock_unlock((v9 + 32));
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, a2, a3, a4, ObjectType, v11);

    swift_unknownObjectRelease();
  }
}

uint64_t Orchestrator.didUpdate<A>(anchor:signal:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a1;
  v34 = sub_22887F240();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22887F270();
  v33 = *(v35 - 8);
  v8 = MEMORY[0x28223BE20](v35);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v28 - v16;
  v31 = *(v4 + 40);
  (*(v14 + 16))(&v28 - v16, v29, AssociatedTypeWitness);
  (*(v10 + 16))(v12, a2, a3);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = (v15 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 2) = a3;
  *(v20 + 3) = v21;
  *(v20 + 4) = v4;
  (*(v14 + 32))(&v20[v18], v17, AssociatedTypeWitness);
  (*(v10 + 32))(&v20[v19], v12, a3);
  aBlock[4] = sub_2287E7304;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2287E72C0;
  aBlock[3] = &block_descriptor_4;
  v22 = _Block_copy(aBlock);

  v23 = v30;
  sub_22887F260();
  v37 = MEMORY[0x277D84F90];
  sub_2287E710C(qword_2813CF680, MEMORY[0x277D85198]);
  v24 = MEMORY[0x277D85198];
  sub_2287E70A8(0, &qword_2813CF5C8, 255, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2287E7154(qword_2813CF5B0, &qword_2813CF5C8, v24);
  v25 = v32;
  v26 = v34;
  sub_22887F820();
  MEMORY[0x22AAC0630](0, v23, v25, v22);
  _Block_release(v22);
  (*(v36 + 8))(v25, v26);
  (*(v33 + 8))(v23, v35);
}

uint64_t sub_2287E6F34()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;

  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
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

void sub_2287E70A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2287E710C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2287E7154(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2287E70A8(255, a2, 255, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2287E72C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2287E7304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v3 + 80);
  sub_2287E73E8(v0 + ((v4 + 40) & ~v4), v0 + ((((v4 + 40) & ~v4) + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v1, v2);
}

void sub_2287E73E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22887F2B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v4 + 40);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_22887F2D0();
  v15 = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v16 = *(v4 + 48);
    MEMORY[0x28223BE20](v15);
    *&v19[-48] = a3;
    *&v19[-40] = a4;
    *&v19[-32] = a2;
    *&v19[-24] = a1;
    *&v19[-16] = v4;
    os_unfair_lock_lock((v16 + 104));
    sub_2287E63E0((v16 + 16), &v20);
    os_unfair_lock_unlock((v16 + 104));
    v17 = v20;
    if (v20)
    {

      v17(v18);
      sub_2287E75A4(v17);
      sub_2287E75A4(v17);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2287E75A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2287E75B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = (*(v5 + 48) + 32 * v7);
      if (*v11 == a1 && v11[1] == a2)
      {
        break;
      }

      if (sub_22887FBF0())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_2287E766C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2287E76D0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2287E7718@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, objc_class *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v164 = a7;
  v166 = a6;
  v157 = a3;
  v173 = a2;
  v158 = *(a5 - 8);
  v159 = a4;
  v9 = MEMORY[0x28223BE20](a1);
  v150 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v147 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v148 = &v147 - v15;
  MEMORY[0x28223BE20](v14);
  v149 = &v147 - v16;
  v17 = sub_22887F180();
  v18 = *(v17 - 8);
  v160 = v17;
  v161 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v155 = &v147 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v152 = &v147 - v25;
  MEMORY[0x28223BE20](v24);
  v154 = (&v147 - v26);
  v168 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = sub_22887F7D0();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v167 = &v147 - v33;
  v156 = a1;
  isa = a1[1].isa;
  v153 = v21;
  v151 = v13;
  if (isa)
  {
    v35 = isa;
  }

  else
  {
    v36 = sub_2287F21F4(MEMORY[0x277D84F90]);
    type metadata accessor for InputSignalAnchorSet();
    v35 = swift_allocObject();
    v35[2] = v36;
  }

  v37 = v167;
  v165 = v35;
  InputSignalAnchorSet.anchor<A>(for:)(v168, v166, v167);
  (*(v29 + 16))(v32, v37, v28);
  v38 = v29;
  v39 = *(AssociatedTypeWitness - 8);
  v40 = (*(v39 + 48))(v32, 1, AssociatedTypeWitness);
  v162 = v38;
  v163 = v28;
  if (v40 == 1)
  {
    (*(v38 + 8))(v32, v28);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = v159;
    v43 = v157;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = v157;
    v44 = InputSignalAnchor.isEqual(to:)();
    (*(v39 + 8))(v32, AssociatedTypeWitness);
    v42 = v159;
    if (v44)
    {
      v46 = *(v159 + 2);
      v45 = *(v159 + 3);
      swift_getObjectType();
      v47 = v154;
      (*(v45 + 40))();
      v48 = v158;
      v49 = v149;
      v50 = v168;
      (*(v158 + 16))(v149, v173, v168);

      v51 = sub_22887F160();
      v52 = sub_22887F6B0();

      if (os_log_type_enabled(v51, v52))
      {
        LODWORD(v173) = v52;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v169[0] = v54;
        *v53 = 136315394;
        v170 = v46;
        swift_unknownObjectRetain();
        v55 = sub_22887F3B0();
        v57 = sub_2287E64D8(v55, v56, v169);

        *(v53 + 4) = v57;
        *(v53 + 12) = 2080;
        (*(v166 + 40))(&v170, v50);
        (*(v48 + 8))(v49, v50);
        v58 = v172;
        v59 = v162;
        if (v172)
        {
          v60 = v171;
        }

        else
        {
          v60 = v170;
        }

        v131 = sub_2287E64D8(v60, v58, v169);

        *(v53 + 14) = v131;
        _os_log_impl(&dword_2287E4000, v51, v173, "[%s]: Received spurious update from %s (identical anchors). Ignoring.", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v54, -1, -1);
        MEMORY[0x22AAC1440](v53, -1, -1);

        (*(v161 + 8))(v154, v160);
        goto LABEL_46;
      }

      (*(v48 + 8))(v49, v50);

      (*(v161 + 8))(v47, v160);
LABEL_26:
      result = (*(v162 + 8))(v167, v163);
LABEL_47:
      v138 = v164;
      *v164 = 0;
      v138[1] = 0;
      return result;
    }
  }

  v61 = sub_2287F34E8(v43, v165, AssociatedTypeWitness, AssociatedConformanceWitness);

  v159 = v61;
  v62 = v156;
  v156[1].isa = v61;
  sub_2287F49C8(v43, v62, AssociatedTypeWitness, AssociatedConformanceWitness);
  v63 = v168;
  if ((BYTE2(v62[6].isa) & 1) == 0)
  {
    v64 = *(v166 + 40);
    v64(v169, v168);
    sub_2287F75D4(&v170, v169[0], v169[1], v169[2], v169[3]);

    v65 = v62[7].isa;

    v67 = sub_228875080(v66);
    LOBYTE(v65) = sub_2287F7C24(v65, v67);

    if (v65)
    {
      v157 = v64;
      v69 = *(v42 + 2);
      v68 = *(v42 + 3);
      ObjectType = swift_getObjectType();
      v71 = *(v68 + 40);
      v155 = ObjectType;
      v72 = v68;
      v73 = v152;
      v71(ObjectType, v72);
      v74 = v158;
      v75 = v148;
      (*(v158 + 16))(v148, v173, v63);

      v76 = sub_22887F160();
      v77 = sub_22887F6B0();

      LODWORD(v173) = v77;
      if (os_log_type_enabled(v76, v77))
      {
        v154 = v76;
        v78 = v63;
        v79 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v169[0] = v153;
        *v79 = 136315394;
        v170 = v69;
        swift_unknownObjectRetain();
        v80 = sub_22887F3B0();
        v82 = sub_2287E64D8(v80, v81, v169);

        *(v79 + 4) = v82;
        *(v79 + 12) = 2080;
        v157(&v170, v78, v166);
        (*(v74 + 8))(v75, v78);
        v83 = v172;
        if (v172)
        {
          v84 = v171;
        }

        else
        {
          v84 = v170;
        }

        v121 = v163;
        v139 = v152;

        v140 = sub_2287E64D8(v84, v83, v169);

        *(v79 + 14) = v140;
        v141 = v154;
        _os_log_impl(&dword_2287E4000, v154, v173, "[%s]: Received update from %s. Input signal registration complete.", v79, 0x16u);
        v142 = v153;
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v142, -1, -1);
        MEMORY[0x22AAC1440](v79, -1, -1);

        (*(v161 + 8))(v139, v160);
      }

      else
      {
        (*(v74 + 8))(v75, v63);

        (*(v161 + 8))(v73, v160);
        v121 = v163;
      }

      v143 = sub_22882B11C(v156);
      v145 = v144;

      (*(v162 + 8))(v167, v121);
      result = swift_allocObject();
      *(result + 16) = v143;
      *(result + 24) = v145;
      v146 = v164;
      *v164 = sub_2287FED9C;
      v146[1] = result;
      return result;
    }
  }

  isa_low = LOBYTE(v62[6].isa);
  if (isa_low != 1 || (BYTE1(v62[6].isa) & 1) != 0)
  {
    LODWORD(v157) = BYTE1(v62[6].isa);
    v106 = *(v42 + 2);
    v105 = *(v42 + 3);
    swift_getObjectType();
    v107 = v153;
    (*(v105 + 40))();
    v108 = v158;
    v109 = v150;
    (*(v158 + 16))(v150, v173, v63);

    v110 = sub_22887F160();
    v111 = sub_22887F6B0();

    LODWORD(v173) = v111;
    if (os_log_type_enabled(v110, v111))
    {
      v156 = v110;
      v112 = v108;
      v113 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v169[0] = v155;
      *v113 = 136315906;
      v170 = v106;
      swift_unknownObjectRetain();
      v114 = sub_22887F3B0();
      v116 = sub_2287E64D8(v114, v115, v169);

      *(v113 + 4) = v116;
      *(v113 + 12) = 2080;
      v117 = v168;
      (*(v166 + 40))(&v170, v168);
      (*(v112 + 8))(v109, v117);
      v118 = v172;
      if (v172)
      {
        v119 = v171;
      }

      else
      {
        v119 = v170;
      }

      v122 = sub_2287E64D8(v119, v118, v169);

      *(v113 + 14) = v122;
      *(v113 + 22) = 2080;
      if (isa_low)
      {
        if (isa_low == 1)
        {
          v123 = 0xE600000000000000;
          v124 = 0x657669746341;
        }

        else
        {
          v123 = 0xE500000000000000;
          v124 = 0x6465646E45;
        }
      }

      else
      {
        v123 = 0xEB00000000646574;
        v124 = 0x7261745320746F4ELL;
      }

      v59 = v162;
      v132 = sub_2287E64D8(v124, v123, v169);

      *(v113 + 24) = v132;
      *(v113 + 32) = 2080;
      if (v157)
      {
        v133 = 0x646573756150;
      }

      else
      {
        v133 = 0x676E696E6E7552;
      }

      if (v157)
      {
        v134 = 0xE600000000000000;
      }

      else
      {
        v134 = 0xE700000000000000;
      }

      v135 = sub_2287E64D8(v133, v134, v169);

      *(v113 + 34) = v135;
      v136 = v156;
      _os_log_impl(&dword_2287E4000, v156, v173, "[%s]: Received update from %s; ignoring while (%s, %s).", v113, 0x2Au);
      v137 = v155;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v137, -1, -1);
      MEMORY[0x22AAC1440](v113, -1, -1);

      (*(v161 + 8))(v107, v160);
LABEL_46:
      result = (*(v59 + 8))(v167, v163);
      goto LABEL_47;
    }

    (*(v108 + 8))(v109, v168);

    (*(v161 + 8))(v107, v160);
    goto LABEL_26;
  }

  v86 = sub_2287EB4A4(v62);
  v87 = *(v42 + 2);
  v88 = *(v42 + 3);
  v89 = swift_getObjectType();
  v90 = *(v88 + 40);
  v91 = v155;
  v157 = v89;
  v90(v89, v88);
  v92 = v158;
  v93 = v151;
  (*(v158 + 16))(v151, v173, v63);
  swift_bridgeObjectRetain_n();

  v94 = sub_22887F160();
  v95 = sub_22887F6B0();

  LODWORD(v173) = v95;
  if (os_log_type_enabled(v94, v95))
  {
    v96 = v86;
    v156 = v94;
    v97 = v63;
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v169[0] = v99;
    *v98 = 136315650;
    v170 = v87;
    swift_unknownObjectRetain();
    v100 = sub_22887F3B0();
    v102 = sub_2287E64D8(v100, v101, v169);

    *(v98 + 4) = v102;
    *(v98 + 12) = 2080;
    (*(v166 + 40))(&v170, v97);
    (*(v92 + 8))(v93, v97);
    v103 = v172;
    if (v172)
    {
      v104 = v171;
    }

    else
    {
      v104 = v170;
    }

    v125 = v155;

    v126 = sub_2287E64D8(v104, v103, v169);

    *(v98 + 14) = v126;
    *(v98 + 22) = 2048;
    v127 = *(v96 + 16);

    *(v98 + 24) = v127;

    v128 = v156;
    _os_log_impl(&dword_2287E4000, v156, v173, "[%s]: Received update from %s; enqueuing %ld work sets.", v98, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAC1440](v99, -1, -1);
    MEMORY[0x22AAC1440](v98, -1, -1);

    (*(v161 + 8))(v125, v160);
    (*(v162 + 8))(v167, v163);
  }

  else
  {

    (*(v92 + 8))(v93, v63);

    (*(v161 + 8))(v91, v160);
    (*(v162 + 8))(v167, v163);
    v96 = v86;
  }

  v129 = swift_allocObject();
  *(v129 + 16) = v42;
  *(v129 + 24) = v96;
  v130 = v164;
  *v164 = sub_2287F860C;
  v130[1] = v129;
}

uint64_t InputSignalAnchorSet.anchor<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  (*(a2 + 40))(v14, a1, a2);
  if (!*(v5 + 16))
  {

    goto LABEL_5;
  }

  v6 = sub_2287E6768(v14[0], v14[1], v14[2], v14[3]);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    goto LABEL_6;
  }

  sub_2287E766C(*(v5 + 56) + 40 * v6, v12);
LABEL_6:
  sub_2287E8A08(0, &qword_2813D0F80, sub_22886F60C);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a3, v10 ^ 1u, 1, AssociatedTypeWitness);
}

void sub_2287E8A08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22887F7D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2287E8A5C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2287EC070(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2287E8AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

unint64_t static EnvironmentalStateDescription.appForeground(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  sub_2287E96B0(0, &qword_2813CF210, &qword_2813CF648, sub_2287E9598);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2288817D0;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x8000000228889450;
  sub_2287E975C(0, &qword_2813CF200, sub_22880F394, MEMORY[0x277D84560]);
  v7 = swift_initStackObject();
  *(v7 + 32) = a1;
  *(v7 + 16) = xmmword_2288817D0;
  *(v7 + 40) = a2;
  *(v7 + 48) = 0xD000000000000011;
  *(v7 + 56) = 0x80000002288883B0;

  v8 = sub_2287E97C0(v7);
  swift_setDeallocating();
  sub_2287E8CD4(v7 + 32);
  *(inited + 48) = v8;
  v9 = sub_2287E9944(inited);
  swift_setDeallocating();
  sub_2287E9B08(inited + 32, &qword_2813CF648, sub_2287E9598);
  result = sub_2287E9C2C(MEMORY[0x277D84F90]);
  *a3 = v9;
  a3[1] = result;
  return result;
}

uint64_t sub_2287E8CD4(uint64_t a1)
{
  sub_2287E98EC(0, &qword_2813CF638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2287E8D5C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (*a1 >> 62)
  {
LABEL_14:
    v4 = sub_22887FA20();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAC07F0](i, v3);
      v6 = v7;
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(v3 + 8 * i + 32);

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    v9 = *(v6 + 16);
    MEMORY[0x28223BE20](v7);
    os_unfair_lock_lock((v9 + 44));
    sub_2287EA298((v9 + 16));
    if (v2)
    {
      break;
    }

    v2 = 0;
    os_unfair_lock_unlock((v9 + 44));

    if (v8 == v4)
    {
      return;
    }
  }

  os_unfair_lock_unlock((v9 + 44));
  __break(1u);
}

void sub_2287E8EB8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_2287E611C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_2287E8F24(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 8))(ObjectType, a2);
  v10 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v35 = *a1;
  sub_2287E9230(a3, v8, v10, isUniquelyReferenced_nonNull_native);

  v12 = 0;
  v13 = v35;
  *a1 = v35;
  v14 = a1[2];
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
LABEL_2:
  v17 = v14 + 40 + 16 * v12;
  while (v15 != v12)
  {
    if (v12 >= *(v14 + 16))
    {
      __break(1u);
      return;
    }

    ++v12;
    v18 = v17 + 16;
    v19 = *(v17 - 8);

    v19(&v35, v20);

    v17 = v18;
    if (v35)
    {
      v33 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2287E93C4(0, v16[2] + 1, 1, v16);
      }

      v22 = v16[2];
      v21 = v16[3];
      v23 = v33;
      if (v22 >= v21 >> 1)
      {
        v24 = sub_2287E93C4((v21 > 1), v22 + 1, 1, v16);
        v23 = v33;
        v16 = v24;
      }

      v16[2] = v22 + 1;
      *&v16[2 * v22 + 4] = v23;
      goto LABEL_2;
    }
  }

  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v25 = sub_22887F160();
  v26 = sub_22887F6B0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v35 = v28;
    *v27 = 136315394;
    sub_2287E9598();
    v29 = sub_22887F300();
    v31 = sub_2287E64D8(v29, v30, &v35);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2048;
    v32 = v16[2];

    *(v27 + 14) = v32;

    _os_log_impl(&dword_2287E4000, v25, v26, "Updated environmental state: %s, notifying %ld observers", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x22AAC1440](v28, -1, -1);
    MEMORY[0x22AAC1440](v27, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  *a4 = v13;
  a4[1] = v16;
}

uint64_t sub_2287E9230(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2287E5E2C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2288537D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_228851498(v16, a4 & 1);
    v11 = sub_2287E5E2C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22887FC20();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_22885BAF8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2287E9378@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 24);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_2287E93EC(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2287E670C(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2287E9528()
{
  if (!qword_2813CF248)
  {
    sub_2287E670C(255, qword_2813CF838);
    v0 = sub_22887FBB0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF248);
    }
  }
}

void sub_2287E9598()
{
  if (!qword_2813CF670)
  {
    v0 = sub_22887F320();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF670);
    }
  }
}

void sub_2287E95F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2287E9658(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2287E9B64(255, a3, a4);
    v5 = sub_22887FBB0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2287E96B0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2287E9BC8(255, a3, a4);
    v5 = sub_22887FBB0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2287E9708(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22887F7D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2287E975C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2287E97C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2287E5F5C(0, &unk_2813CF350, MEMORY[0x277D837D0], MEMORY[0x277D84460]);
    v3 = sub_22887FA50();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2287E5E2C(v5, v6);
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

void sub_2287E98EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2287E9970(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_22887FA50();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = a3(v8, v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v6[6] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      *(v6[7] + 8 * result) = v10;
      v14 = v6[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v6[2] = v16;
      if (!--v3)
      {

        return v6;
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

void sub_2287E9A7C()
{
  if (!qword_2813CF330)
  {
    sub_2287E5F5C(255, &qword_2813CF670, MEMORY[0x277D837D0], MEMORY[0x277D834F8]);
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF330);
    }
  }
}

uint64_t sub_2287E9B08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2287E9BC8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2287E9B64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2287E9BC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_2287E9C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_22880ABBC(0, a2, a3, MEMORY[0x277D84460]);
    v5 = sub_22887FA50();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2287E5E2C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

Swift::Bool __swiftcall EnvironmentalStateDescription.matches(_:)(Swift::OpaquePointer a1)
{
  v3 = *v1;
  v42 = v1[1];
  v4 = 1 << *(*v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3[8];
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (v3[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v3[7] + 8 * v11);
    rawValue = a1._rawValue;
    v17 = *(a1._rawValue + 2);

    if (v17 && (, v18 = sub_2287E5E2C(v13, v14), v20 = v19, , (v20 & 1) != 0))
    {
      v21 = *(rawValue[7] + 8 * v18);
    }

    else
    {
      v21 = sub_2287E97C0(MEMORY[0x277D84F90]);
    }

    a1._rawValue = rawValue;
    v6 &= v6 - 1;
    v22 = sub_2287EA00C(v21, v15);

    if ((v22 & 1) == 0)
    {
      v23 = 0;
LABEL_30:

      return v23;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = v3[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  v24 = 1 << *(v42 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v42 + 64);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  while (v26)
  {
LABEL_23:
    v30 = __clz(__rbit64(v26)) | (v28 << 6);
    v31 = (*(v42 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(*(v42 + 56) + 8 * v30);
    v35 = a1._rawValue;
    v36 = *(a1._rawValue + 2);

    if (v36 && (, v37 = sub_2287E5E2C(v32, v33), v39 = v38, , (v39 & 1) != 0))
    {
      v40 = *(v35[7] + 8 * v37);
    }

    else
    {
      v40 = sub_2287E97C0(MEMORY[0x277D84F90]);
    }

    a1._rawValue = v35;
    v26 &= v26 - 1;
    v41 = sub_2287EAAE0(v34, v40);

    if ((v41 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_30;
    }
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
      v23 = 1;
      goto LABEL_30;
    }

    v26 = *(v42 + 64 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_23;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2287EA00C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

LABEL_7:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = (*(a2 + 56) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = (*(a2 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_2287E5E2C(v15, v16);
    v19 = v18;

    if ((v19 & 1) == 0)
    {

      goto LABEL_21;
    }

    v6 &= v6 - 1;
    v20 = (*(a1 + 56) + 16 * v17);
    if (*v20 == v13 && v20[1] == v12)
    {
    }

    else
    {
      v22 = sub_22887FBF0();

      if ((v22 & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  do
  {
    v23 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v23 >= v7)
    {

      return 1;
    }

    v6 = *(v3 + 8 * v23);
    ++v9;
  }

  while (!v6);
  v9 = v23;
  if (*(a1 + 16))
  {
    goto LABEL_7;
  }

LABEL_21:

  return 0;
}

uint64_t ValueAnchor.init(identifier:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = *(a1 + 16);
  v8 = type metadata accessor for ValueAnchor();
  return (*(*(a3 - 8) + 32))(a4 + *(v8 + 52), a2, a3);
}

void sub_2287EA244()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 84));
  sub_2288613B8((v1 + 16));
  os_unfair_lock_unlock((v1 + 84));
}

uint64_t sub_2287EA2B4(_BYTE *a1, void *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v10 = 0;
  v5 = a1 + 8;

  v7._rawValue = a2;
  v8 = sub_2287EA38C(v6, v7, &v10, a1, Current);
  swift_bridgeObjectRelease_n();

  *v5 = v8;
  if (v10 == 1)
  {
    return sub_2287F754C(sub_228863F78, 0);
  }

  return result;
}

void *sub_2287EA38C(uint64_t a1, Swift::OpaquePointer a2, _BYTE *a3, _BYTE *a4, double a5)
{
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v64 = MEMORY[0x277D84F90];
    sub_2287F5734(0, v6, 0);
    v10 = 0;
    v48 = v6;
    v49 = a1 + 32;
    result = v64;
    while (1)
    {
      v56 = v10;
      v11 = (v49 + 216 * v10);
      v12 = v11[21];
      v13 = v11[22];
      v54 = result;
      v55 = v11;
      __swift_project_boxed_opaque_existential_1(v11 + 18, v12);
      result = (*(v13 + 32))(&v57, v12, v13);
      v14 = v57;
      v51 = v58;
      v52 = *(v57 + 16);
      if (v52)
      {
        v15 = 0;
        v16 = v57 + 32;
        v50 = v57 + 32;
        while (2)
        {
          if (v15 >= *(v14 + 16))
          {
LABEL_54:
            __break(1u);
            return result;
          }

          v17 = (v16 + 16 * v15);
          v18 = *v17;
          v53 = v17[8];
          ++v15;
          v19 = *(*v17 + 16);
          result = swift_bridgeObjectRetain_n();
          v20 = 0;
          while (v19 != v20)
          {
            if (v20 >= *(v18 + 16))
            {
              __break(1u);
              goto LABEL_54;
            }

            v21 = v20 + 1;

            v22 = EnvironmentalStateDescription.matches(_:)(a2);

            v20 = v21;
            if (v22)
            {

              swift_bridgeObjectRelease_n();
              v23 = v53;
              v6 = v48;
              goto LABEL_15;
            }
          }

          result = swift_bridgeObjectRelease_n();
          v16 = v50;
          if (v15 != v52)
          {
            continue;
          }

          break;
        }

        v6 = v48;
      }

      else
      {
      }

      v23 = v51;
LABEL_15:
      if (v23 <= 1)
      {
        break;
      }

      if (v23 == 2)
      {
        v24 = 0x616E65746E69616DLL;
        v25 = 0xEB0000000065636ELL;
LABEL_21:
        if (*v55 <= 1u)
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }

      v25 = 0xE700000000000000;
      v24 = 0x64656B636F6C62;
      if (*v55 <= 1u)
      {
LABEL_22:
        v26 = 0x6669636570736E75;
        v27 = 0xEB00000000646569;
        if (*v55)
        {
          v27 = 0xE600000000000000;
          if (v24 != 0x746E65677275)
          {
            goto LABEL_32;
          }

          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_26:
      if (*v55 != 2)
      {
        v27 = 0xE700000000000000;
        if (v24 != 0x64656B636F6C62)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v26 = 0x616E65746E69616DLL;
      v27 = 0xEB0000000065636ELL;
LABEL_28:
      if (v24 != v26)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (v25 == v27)
      {

        goto LABEL_33;
      }

LABEL_32:
      v28 = sub_22887FBF0();

      if ((v28 & 1) == 0)
      {
        *a3 = 1;
        v29 = a4[24];
        if (*a4 && *(*a4 + 40) != 4)
        {
          v29 = *(*a4 + 40);
        }

        sub_2287F71FC(v55, &v59);
        if (v60 > 1u)
        {
          v30 = &v61 + 1;
          if (v60 != 2)
          {
            v30 = v62 + 1;
          }
        }

        else
        {
          v30 = &v60 + 1;
          if (v60)
          {
            v30 = &v61;
          }
        }

        *v30 = a5 - *(&v59 + 1) + *v30;
        *(&v59 + 1) = a5;
        if (v23 > 2)
        {

          v32 = 0;
        }

        else
        {
          v31 = sub_22887FBF0();

          v32 = 0;
          if ((v31 & 1) == 0)
          {
            if (qword_228886B58[v23] >= qword_228886B70[v29])
            {
              v32 = 1;
            }

            else
            {
              v32 = 2;
            }
          }
        }

        LOBYTE(v60) = v32;
        LOBYTE(v59) = v23;
        goto LABEL_49;
      }

LABEL_33:
      sub_2287F71FC(v55, &v59);
LABEL_49:
      result = v54;
      v64 = v54;
      v34 = v54[2];
      v33 = v54[3];
      if (v34 >= v33 >> 1)
      {
        sub_2287F5734((v33 > 1), v34 + 1, 1);
        result = v64;
      }

      ++v10;
      result[2] = v34 + 1;
      v35 = &result[27 * v34];
      v36 = v60;
      *(v35 + 2) = v59;
      *(v35 + 3) = v36;
      v37 = v61;
      v38 = v62[0];
      v39 = v62[2];
      *(v35 + 6) = v62[1];
      *(v35 + 7) = v39;
      *(v35 + 4) = v37;
      *(v35 + 5) = v38;
      v40 = v62[3];
      v41 = v62[4];
      v42 = v62[6];
      *(v35 + 10) = v62[5];
      *(v35 + 11) = v42;
      *(v35 + 8) = v40;
      *(v35 + 9) = v41;
      v43 = v62[7];
      v44 = v62[8];
      v45 = v62[9];
      v35[30] = v63;
      *(v35 + 13) = v44;
      *(v35 + 14) = v45;
      *(v35 + 12) = v43;
      if (v56 + 1 == v6)
      {
        return result;
      }
    }

    v24 = 0x6669636570736E75;
    v25 = 0xEB00000000646569;
    if (v23)
    {
      v25 = 0xE600000000000000;
      v24 = 0x746E65677275;
      if (*v55 <= 1u)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    goto LABEL_21;
  }

  return result;
}

void sub_2287EA938()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_2287EA9B8((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

_BYTE *sub_2287EA9D0(_BYTE *result)
{
  v2 = v1;
  v3 = 0;
  v9 = result;
  v4 = *(result + 1);
  v5 = *(v4 + 16);
  do
  {
    v6 = v3;
    if (v5 == v3)
    {
      break;
    }

    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    ++v3;
    v7 = *(*(v2 + 24) + 16);

    os_unfair_lock_lock((v7 + 40));
    v8._rawValue = *(v7 + 16);

    os_unfair_lock_unlock((v7 + 40));
    LOBYTE(v7) = EnvironmentalStateDescription.matches(_:)(v8);
  }

  while ((v7 & 1) == 0);
  v9[1] = v5 != v6;

  return sub_2287EACF8(v9);
}

uint64_t sub_2287EAAE0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v7;
LABEL_12:
    v7 = (v11 - 1) & v11;
    if (*(a2 + 16))
    {
      v13 = __clz(__rbit64(v11)) | (v10 << 6);
      v14 = *(*(v3 + 56) + 8 * v13);
      v15 = (*(v3 + 48) + 16 * v13);
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_2287E5E2C(v16, v17);
      v20 = v19;

      if ((v20 & 1) != 0 && *(v14 + 16))
      {
        v31 = v3;
        v21 = (*(a2 + 56) + 16 * v18);
        v23 = *v21;
        v22 = v21[1];
        sub_22887FC90();

        sub_22887F3E0();
        v24 = sub_22887FCD0();
        v25 = -1 << *(v14 + 32);
        v26 = v24 & ~v25;
        if ((*(v14 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
        {
          v27 = ~v25;
          while (1)
          {
            v28 = (*(v14 + 48) + 16 * v26);
            v29 = *v28 == v23 && v28[1] == v22;
            if (v29 || (sub_22887FBF0() & 1) != 0)
            {
              break;
            }

            v26 = (v26 + 1) & v27;
            if (((*(v14 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v30 = 0;
LABEL_26:

          return v30;
        }

LABEL_23:

        v3 = v31;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      v30 = 1;
      goto LABEL_26;
    }

    v11 = *(v4 + 8 * v12);
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

_BYTE *sub_2287EACF8(_BYTE *result)
{
  if (*result == 1)
  {
    if (result[16])
    {
      return result;
    }

LABEL_6:
    result[16] = 1;
    v2 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    return (*(v2 + 8))(ObjectType, v2);
  }

  if (result[1] == 1)
  {
    if (result[16])
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result[16])
  {
    result[16] = 0;
    v4 = *(v1 + 40);
    v5 = swift_getObjectType();
    return (*(v4 + 16))(v5, v4);
  }

  return result;
}

void sub_2287EADAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v1 + 44));
  sub_2287EAE0C((v1 + 16));

  os_unfair_lock_unlock((v1 + 44));
}

void sub_2287EAE24(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    if (a1[1] == 2)
    {
      v4 = *a1;
      i = *a1 >> 62;
      if (i)
      {
LABEL_23:
        v20 = a2;
        v21 = sub_22887FA20();
        a2 = v20;
        v6 = v21;
      }

      else
      {
        v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = a2;

      v8 = sub_22887F160();
      v9 = sub_22887F6B0();
      v10 = v7;

      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22 = v6;
        v23 = 0;
        v13 = v12;
        v25 = v12;
        *v11 = 136315394;
        v24 = 0xE000000000000000;
        sub_22887F8A0();

        v23 = 0xD000000000000018;
        v24 = 0x8000000228888690;
        MEMORY[0x22AAC0340](*(v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(v10 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
        MEMORY[0x22AAC0340](62, 0xE100000000000000);
        v14 = sub_2287E64D8(v23, v24, &v25);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v22;
        _os_log_impl(&dword_2287E4000, v8, v9, "%s: Resuming (%ld orchestrators).", v11, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x22AAC1440](v13, -1, -1);
        MEMORY[0x22AAC1440](v11, -1, -1);
      }

      if (i)
      {
        v15 = sub_22887FA20();
        if (!v15)
        {
          return;
        }
      }

      else
      {
        v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          return;
        }
      }

      for (i = 0; ; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AAC07F0](i, v4);
          v17 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_20:
            __break(1u);
            return;
          }
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v16 = *(v4 + 8 * i + 32);

          v17 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_20;
          }
        }

        v18 = *(v16 + 48);
        os_unfair_lock_lock(v18 + 26);
        sub_2287EB0F4(&v18[4], &v23);
        if (v3)
        {
          break;
        }

        v3 = 0;
        os_unfair_lock_unlock(v18 + 26);
        v19._rawValue = v23;
        sub_2287EBD14(v19);

        if (v17 == v15)
        {
          return;
        }
      }

      os_unfair_lock_unlock(v18 + 26);
      __break(1u);
    }
  }
}

uint64_t sub_2287EB110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v5 = sub_22887F180();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = *(a1 + 49);
  v12 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 40);
  if (v11 == 1)
  {
    v14(ObjectType, v12);

    v15 = sub_22887F160();
    v16 = sub_22887F6B0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v17 = 136315138;
      v35 = a2;

      v18 = sub_22887F3B0();
      v20 = sub_2287E64D8(v18, v19, &v36);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_2287E4000, v15, v16, "%s: Resuming.", v17, 0xCu);
      v21 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AAC1440](v21, -1, -1);
      MEMORY[0x22AAC1440](v17, -1, -1);
    }

    (*(v32 + 8))(v10, v33);
    *(a1 + 49) = 0;
    result = sub_2287EB4A4(a1);
  }

  else
  {
    v14(ObjectType, v12);

    v23 = sub_22887F160();
    v24 = sub_22887F6B0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315138;
      v35 = a2;

      v27 = sub_22887F3B0();
      v29 = sub_2287E64D8(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2287E4000, v23, v24, "%s: Ignoring no-op resume.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x22AAC1440](v26, -1, -1);
      MEMORY[0x22AAC1440](v25, -1, -1);
    }

    (*(v32 + 8))(v8, v33);
    result = MEMORY[0x277D84F90];
  }

  *v34 = result;
  return result;
}

uint64_t sub_2287EB4A4(char *a1)
{
  v3 = sub_22887F180();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a1 + 1);
  if (!v81)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1[50] != 1)
  {

    v7 = *a1;
    if (*a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = v81;

    goto LABEL_10;
  }

  *(a1 + 1) = 0;
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  v9 = *(v81 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v90[0] = v8;
  sub_2287F100C(v9, sub_2287EC4C0, 0, isUniquelyReferenced_nonNull_native, v90);

  v11 = *&v90[0];
  type metadata accessor for InputSignalAnchorSet();
  v12 = swift_allocObject();
  *(v12 + 2) = v11;

  if (_s19HealthOrchestration20InputSignalAnchorSetC2eeoiySbAC_ACtFZ_0(v13, v12))
  {

    return MEMORY[0x277D84F90];
  }

LABEL_10:

  *a1 = v12;
  Current = CFAbsoluteTimeGetCurrent();

  v17 = sub_228828824(v16);

  if (v17 >> 62)
  {
LABEL_50:
    v80 = v17 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_22887FA20();
  }

  else
  {
    v80 = v17 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v1;
  v75 = v12;
  v72 = v3;
  v73 = v6;
  v71 = v4;
  if (v18)
  {
    v67 = a1;
    v6 = 0;
    v76 = 0;
    v12 = &v83;
    v79 = v17 & 0xC000000000000001;
    v14 = MEMORY[0x277D84F90];
    v78 = v17;
    while (2)
    {
      v77 = v14;
      while (1)
      {
        a1 = v6;
        while (1)
        {
          if (v79)
          {
            v19 = MEMORY[0x22AAC07F0](a1, v17);
            v3 = v19;
            v4 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (a1 >= *(v80 + 16))
            {
              goto LABEL_49;
            }

            v3 = *(v17 + 8 * a1 + 32);

            v4 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }
          }

          v6 = *(v3 + 136);
          MEMORY[0x28223BE20](v19);
          *(&v59 - 4) = v3;
          *(&v59 - 3) = Current;
          *(&v59 - 2) = v81;
          os_unfair_lock_lock(v6 + 17);
          sub_2287F5E88(v6 + 2, v90);
          os_unfair_lock_unlock(v6 + 17);
          v83 = v90[0];
          v84 = v90[1];
          v85 = v90[2];
          v86 = v90[3];
          v87 = v90[4];
          v88 = v91[0];
          v89 = *&v91[1];
          v1 = *&v90[0];
          if ((*&v90[0] - 1) >= 2)
          {
            break;
          }

          ++a1;
          v17 = v78;
          if (v4 == v18)
          {
            goto LABEL_39;
          }
        }

        if (!v83)
        {
          break;
        }

        v65 = *(&v84 + 1);
        v66 = *(&v83 + 1);
        v69 = v85;
        ObjectType = v84;
        v63 = v86;
        v64 = *(&v85 + 1);
        v68 = *(&v86 + 1);
        v61 = *(&v87 + 1);
        v62 = v87;
        v20 = v88;
        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        *(v22 + 24) = v1;
        v23 = ObjectType;
        *(v22 + 32) = v66;
        *(v22 + 40) = v23;
        v24 = v69;
        *(v22 + 48) = v65;
        *(v22 + 56) = v24;
        *(v22 + 64) = v64;
        v25 = v62;
        v26 = v68;
        *(v22 + 72) = v63;
        *(v22 + 80) = v26;
        v27 = v61;
        *(v22 + 88) = v25;
        *(v22 + 96) = v27;
        *(v22 + 104) = v20;
        *(v22 + 112) = *(v91 + 8);
        *(v22 + 128) = v3;

        swift_unknownObjectRetain();

        sub_2287F3780(&v83, v82);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_2287F3AC0(0, *(v77 + 2) + 1, 1, v77);
        }

        v6 = v4;
        v4 = *(v77 + 2);
        v28 = *(v77 + 3);
        v60 = v4 + 1;
        if (v4 >= v28 >> 1)
        {
          v77 = sub_2287F3AC0((v28 > 1), v4 + 1, 1, v77);
        }

        sub_2287F3C00(&v83);

        v29 = v77;
        *(v77 + 2) = v60;
        v30 = &v29[104 * v4];
        v31 = v66;
        *(v30 + 4) = v1;
        *(v30 + 5) = v31;
        v32 = v65;
        *(v30 + 6) = ObjectType;
        *(v30 + 7) = v32;
        v33 = v63;
        v34 = v64;
        *(v30 + 8) = v69;
        *(v30 + 9) = v34;
        *(v30 + 10) = v33;
        v35 = v61;
        v36 = v62;
        *(v30 + 11) = v68;
        *(v30 + 12) = v36;
        *(v30 + 13) = v35;
        *(v30 + 14) = v20;
        *(v30 + 15) = sub_2287FBECC;
        *(v30 + 16) = v22;
        v17 = v78;
        if (v6 == v18)
        {
LABEL_39:
          v14 = v77;
          goto LABEL_41;
        }
      }

      v37 = *(v3 + 136);
      os_unfair_lock_lock((v37 + 68));
      sub_2288362DC((v37 + 16), v82);
      os_unfair_lock_unlock((v37 + 68));
      v38 = v82[0];
      v39 = *(v3 + 48);
      v92[0] = *(v3 + 32);
      v92[1] = v39;
      v92[2] = *(v3 + 64);
      v1 = *(v67 + 2);
      if (*(v1 + 16) && (v40 = sub_228819DA4(v92), (v41 & 1) != 0))
      {
        v42 = (*(v1 + 56) + 16 * v40);
        v1 = *v42;
        v69 = v42[1];
        ObjectType = swift_getObjectType();
        v68 = v38;
        v43 = *(v3 + 136);
        swift_unknownObjectRetain();
        os_unfair_lock_lock((v43 + 68));
        v44 = *(v43 + 16);

        os_unfair_lock_unlock((v43 + 68));
        (*(v69 + 72))(v68, v44, ObjectType);

        v45 = swift_unknownObjectRelease();
      }

      else
      {
      }

      v14 = v77;
      v6 = v4;
      if (__OFADD__(v76++, 1))
      {
        __break(1u);
        os_unfair_lock_unlock(v45);
        __break(1u);

        __break(1u);
        return result;
      }

      v17 = v78;
      if (v4 != v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v76 = 0;
    v14 = MEMORY[0x277D84F90];
  }

LABEL_41:

  v47 = v76;
  if (v76 < 1)
  {
  }

  else
  {
    v49 = *(v74 + 16);
    v48 = *(v74 + 24);
    swift_getObjectType();
    v50 = v73;
    (*(v48 + 40))();

    v51 = sub_22887F160();
    v52 = sub_22887F6B0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v90[0] = v54;
      *v53 = 136315394;
      *&v83 = v49;
      swift_unknownObjectRetain();
      v55 = sub_22887F3B0();
      v57 = sub_2287E64D8(v55, v56, v90);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2048;
      *(v53 + 14) = v47;
      _os_log_impl(&dword_2287E4000, v51, v52, "[%s]: %ld criteria updated anchors without firing", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x22AAC1440](v54, -1, -1);
      MEMORY[0x22AAC1440](v53, -1, -1);
    }

    else
    {
    }

    (*(v71 + 8))(v50, v72);
  }

  return v14;
}

uint64_t sub_2287EBCD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2287EBD14(Swift::OpaquePointer a1)
{
  v3 = sub_22887F180();
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1._rawValue + 2);
  if (v7)
  {
    v8 = 0;
    v9 = v7 + 1;
    v10 = 32;
    while (--v9)
    {
      v11 = *(a1._rawValue + v10);
      v10 += 104;
      v12 = *(v11 + 16);
      v13 = __OFADD__(v8, v12);
      v8 += v12;
      if (v13)
      {
        __break(1u);
        break;
      }
    }

    v27 = v4;
    v15 = *(v1 + 16);
    v14 = *(v1 + 24);
    swift_getObjectType();
    (*(v14 + 40))();
    swift_bridgeObjectRetain_n();

    v16 = sub_22887F160();
    v17 = sub_22887F6B0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = v3;
      v19 = v18;
      v25 = swift_slowAlloc();
      v28 = v15;
      v29 = v25;
      *v19 = 136315650;
      swift_unknownObjectRetain();
      v20 = sub_22887F3B0();
      v22 = sub_2287E64D8(v20, v21, &v29);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v8;
      *(v19 + 22) = 2048;

      *(v19 + 24) = v7;

      _os_log_impl(&dword_2287E4000, v16, v17, "[%s]: Enqueuing %ld items for %ld criteria.", v19, 0x20u);
      v23 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x22AAC1440](v23, -1, -1);
      MEMORY[0x22AAC1440](v19, -1, -1);

      (*(v27 + 8))(v6, v26);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v27 + 8))(v6, v3);
    }

    WorkQueue.enqueue(_:)(a1);
  }
}

void sub_2287EBFA4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 36));
  sub_2287EBFFC((v1 + 16));

  os_unfair_lock_unlock((v1 + 36));
}

uint64_t sub_2287EC014(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2287EC070(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2287EC0CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 32] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_2287EC320@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v23 = v1[2];
    v8 = v1[3];
LABEL_11:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 32 * v13);
    v16 = *v14;
    v15 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    sub_2287E766C(*(v3 + 56) + 40 * v13, v24);
    *&v26 = v16;
    *(&v26 + 1) = v15;
    *&v27 = v18;
    *(&v27 + 1) = v17;
    sub_2287EC014(v24, &v28);

    v19 = *(&v26 + 1);
    v20 = v26;

    v11 = v8;
    v6 = v23;
LABEL_12:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v19)
    {
      v22 = v1[5];
      *&v24[0] = v20;
      *(&v24[0] + 1) = v19;
      v24[1] = v27;
      v24[2] = v28;
      v24[3] = v29;
      v25 = v30;
      v22(v24);
      return sub_2287F12AC(v24, sub_2287EC514);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v19 = 0;
        v20 = 0;
        v12 = 0;
        v30 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        goto LABEL_12;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        v23 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2287EC4C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  sub_2287E766C((a1 + 4), (a2 + 4));
}

void sub_2287EC514()
{
  if (!qword_2813D0530)
  {
    sub_2287E670C(255, qword_2813D0F88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813D0530);
    }
  }
}

void *sub_2287EC594(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v5 = v4;
  sub_2287EC770(0, a1, a2);
  v6 = *v4;
  v7 = sub_22887FA30();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v5;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    v31 = v8;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v32 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v12 << 6);
        v21 = 32 * v20;
        v22 = (*(v6 + 48) + 32 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = 40 * v20;
        sub_2287E766C(*(v6 + 56) + 40 * v20, v33);
        v28 = (*(v31 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        v28[2] = v25;
        v28[3] = v26;
        a4(v33, *(v31 + 56) + v27);

        v15 = v32;
      }

      while (v32);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v5 = v29;
        v8 = v31;
        goto LABEL_21;
      }

      v19 = *(v6 + 64 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v32 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v8;
  }

  return result;
}

void sub_2287EC770(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2287E670C(255, a3);
    sub_2287F74F8();
    v4 = sub_22887FA60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s19HealthOrchestration20InputSignalAnchorSetC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*(v2 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_13:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v10 << 6);
      v15 = (*(v2 + 48) + 32 * v14);
      v17 = *v15;
      v16 = v15[1];
      v19 = v15[2];
      v18 = v15[3];
      sub_2287E766C(*(v2 + 56) + 40 * v14, &v28);
      *&v30 = v17;
      *(&v30 + 1) = v16;
      *&v31 = v19;
      *(&v31 + 1) = v18;
      sub_2287EC014(&v28, &v32);

      v12 = v10;
LABEL_14:
      v35 = v30;
      v36 = v31;
      v37[0] = v32;
      v37[1] = v33;
      v38 = v34;
      v20 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {

        return 1;
      }

      v21 = v35;
      v22 = v36;
      sub_2287EC014(v37, &v30);
      if (!*(v3 + 16))
      {

LABEL_23:
        __swift_destroy_boxed_opaque_existential_1(&v30);

        return 0;
      }

      v23 = sub_2287E6768(v21, v20, v22, *(&v22 + 1));
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_23;
      }

      sub_2287E766C(*(v3 + 56) + 40 * v23, v27);
      sub_2287EC014(v27, &v28);
      v26 = v29;
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      LOBYTE(v26) = sub_2287F133C(&v30, v26);
      __swift_destroy_boxed_opaque_existential_1(&v30);
      if ((v26 & 1) == 0)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v28);
      v9 = v12;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v28);
    return 0;
  }

LABEL_6:
  if (v7 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      goto LABEL_14;
    }

    v6 = *(v2 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2287ECAD4(unsigned __int8 *a1)
{
  v2 = v1;
  if (!*(a1 + 1))
  {

    a1[1] = 4;
    v7 = *a1;
    v8 = v7 == 4;
    v12 = a1[2];
    v10 = a1 + 2;
    v9 = v12;
    goto LABEL_5;
  }

  v4 = *(*(v1 + 40) + 16);

  os_unfair_lock_lock((v4 + 40));
  v5._rawValue = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 40));
  PriorityRuleSet.priority(for:)(v5);

  v6 = v17;
  a1[1] = v17;
  v7 = *a1;
  v8 = v7 == 4;
  v11 = a1[2];
  v10 = a1 + 2;
  v9 = v11;
  if (v17 == 4)
  {
LABEL_5:
    v6 = v9;
  }

  if (v8)
  {
    v13 = v6;
  }

  else
  {
    v13 = v7;
  }

  result = sub_2287ECD4C(v9, v13);
  if ((result & 1) == 0)
  {
    *v10 = v13;
    v15 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v18 = v13;
    return (*(v15 + 16))(&v18, ObjectType, v15);
  }

  return result;
}

HealthOrchestration::PriorityRuleSet::Priority __swiftcall PriorityRuleSet.priority(for:)(Swift::OpaquePointer a1)
{
  v3 = *v2;
  v4 = v2[8];
  v17 = *(*v2 + 16);
  if (v17)
  {
    rawValue = a1._rawValue;
    v15 = v2[8];
    v6 = 0;
    v7 = v3 + 32;
    v16 = v1;
LABEL_3:
    if (v6 < *(v3 + 16))
    {
      v8 = (v7 + 16 * v6);
      v9 = *v8;
      v4 = v8[8];
      ++v6;
      v10 = *(*v8 + 16);
      LOBYTE(a1._rawValue) = swift_bridgeObjectRetain_n();
      v11 = 0;
      while (1)
      {
        if (v10 == v11)
        {
          LOBYTE(a1._rawValue) = swift_bridgeObjectRelease_n();
          v7 = v3 + 32;
          if (v6 != v17)
          {
            goto LABEL_3;
          }

          v4 = v15;
          goto LABEL_11;
        }

        if (v11 >= *(v9 + 16))
        {
          break;
        }

        v12 = v11 + 1;

        v13 = EnvironmentalStateDescription.matches(_:)(rawValue);

        v11 = v12;
        if (v13)
        {
          LOBYTE(a1._rawValue) = swift_bridgeObjectRelease_n();
LABEL_11:
          v1 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    *v1 = v4;
  }

  return a1._rawValue;
}

uint64_t sub_2287ECD4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x616E65746E69616DLL;
    }

    else
    {
      v5 = 0x64656B636F6C62;
    }

    if (v4 == 2)
    {
      v6 = 0xEB0000000065636ELL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x746E65677275;
    }

    else
    {
      v5 = 0x6669636570736E75;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  v7 = 0x616E65746E69616DLL;
  v8 = 0xEB0000000065636ELL;
  if (a2 != 2)
  {
    v7 = 0x64656B636F6C62;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x746E65677275;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22887FBF0();
  }

  return v11 & 1;
}

uint64_t sub_2287ECEDC(uint64_t a1, char a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 24) = a2;
  if (*a1 && *(*a1 + 40) != 4)
  {
    a2 = *(*a1 + 40);
  }

  v5 = *(a1 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {
    v27 = a1;
    v34 = MEMORY[0x277D84F90];
    sub_2287F5734(0, v6, 0);
    v7 = v5 + 32;
    v8 = v34;
    do
    {
      sub_2287F71FC(v7, v28);
      v9 = v28[0];
      sub_2287F71FC(v28, &v29);
      if (v30 > 1u)
      {
        v10 = &v31 + 1;
        if (v30 != 2)
        {
          v10 = v32 + 1;
        }
      }

      else
      {
        v10 = &v30 + 1;
        if (v30)
        {
          v10 = &v31;
        }
      }

      *v10 = Current - *(&v29 + 1) + *v10;
      *(&v29 + 1) = Current;
      if (v9 > 2u)
      {

        sub_2287F836C(v28);
        v12 = 0;
      }

      else
      {
        v11 = sub_22887FBF0();

        sub_2287F836C(v28);
        v12 = 0;
        if ((v11 & 1) == 0)
        {
          if (qword_228886B58[v9] >= qword_228886B70[a2])
          {
            v12 = 1;
          }

          else
          {
            v12 = 2;
          }
        }
      }

      LOBYTE(v30) = v12;
      LOBYTE(v29) = v9;
      v34 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2287F5734((v13 > 1), v14 + 1, 1);
        v8 = v34;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 216 * v14;
      v16 = v30;
      *(v15 + 32) = v29;
      *(v15 + 48) = v16;
      v17 = v31;
      v18 = v32[0];
      v19 = v32[2];
      *(v15 + 96) = v32[1];
      *(v15 + 112) = v19;
      *(v15 + 64) = v17;
      *(v15 + 80) = v18;
      v20 = v32[3];
      v21 = v32[4];
      v22 = v32[6];
      *(v15 + 160) = v32[5];
      *(v15 + 176) = v22;
      *(v15 + 128) = v20;
      *(v15 + 144) = v21;
      v23 = v32[7];
      v24 = v32[8];
      v25 = v32[9];
      *(v15 + 240) = v33;
      *(v15 + 208) = v24;
      *(v15 + 224) = v25;
      *(v15 + 192) = v23;
      v7 += 216;
      --v6;
    }

    while (v6);

    a1 = v27;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *(a1 + 8) = v8;
  return result;
}

void *sub_2287ED1BC(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = *a1;
    if (*a1 >> 62)
    {
      goto LABEL_29;
    }

    v25 = v3 & 0xFFFFFFFFFFFFFF8;
    v28 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v4 = 0;
    v26 = v3 & 0xC000000000000001;
    v29 = MEMORY[0x277D84F90];
    v24 = v3;
    while (1)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v25 = v3 & 0xFFFFFFFFFFFFFF8;
        v28 = sub_22887FA20();
        v2 = *(v1 + 2);
        goto LABEL_4;
      }

      if (!v28)
      {
        break;
      }

      v5 = &v1[40 * v4];
      v6 = *(v5 + 5);
      v7 = *(v5 + 8);
      v27 = *(v5 + 4);
      v30 = *(v5 + 3);
      if (v26)
      {

        v9 = MEMORY[0x22AAC07F0](0, v3);
        v8 = v9;
      }

      else
      {
        if (!*(v25 + 16))
        {
          goto LABEL_27;
        }

        v8 = *(v3 + 32);
      }

      v10 = *(v8 + 16);
      MEMORY[0x28223BE20](v9);
      os_unfair_lock_lock(v10 + 11);
      sub_2288613E8(&v10[4], &v31);
      os_unfair_lock_unlock(v10 + 11);

      if (!v36)
      {

        v3 = v24;
        goto LABEL_6;
      }

      v45[10] = v41;
      v45[11] = v42;
      v45[12] = v43;
      v46 = v44;
      v45[6] = v37;
      v45[7] = v38;
      v45[8] = v39;
      v45[9] = v40;
      v45[2] = v33;
      v45[3] = v34;
      v45[4] = v35;
      v45[5] = v36;
      v45[0] = v31;
      v45[1] = v32;
      sub_2287F71FC(v45, &v31);
      v3 = swift_allocObject();
      *(v3 + 32) = v30;
      v11 = v42;
      *(v3 + 216) = v41;
      *(v3 + 232) = v11;
      *(v3 + 248) = v43;
      v12 = v38;
      *(v3 + 152) = v37;
      *(v3 + 168) = v12;
      v13 = v40;
      *(v3 + 184) = v39;
      *(v3 + 200) = v13;
      v14 = v34;
      *(v3 + 88) = v33;
      *(v3 + 104) = v14;
      v15 = v36;
      *(v3 + 120) = v35;
      *(v3 + 136) = v15;
      v16 = v32;
      *(v3 + 56) = v31;
      *(v3 + 16) = v27;
      *(v3 + 24) = v6;
      *(v3 + 48) = v7;
      *(v3 + 264) = v44;
      *(v3 + 72) = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_2287F84FC(0, v29[2] + 1, 1, v29);
      }

      v18 = v29[2];
      v17 = v29[3];
      if (v18 >= v17 >> 1)
      {
        v29 = sub_2287F84FC((v17 > 1), v18 + 1, 1, v29);
      }

      v29[2] = v18 + 1;
      v19 = &v29[2 * v18];
      v19[4] = sub_2287F8580;
      v19[5] = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_228872260(v1);
      }

      v20 = *(v1 + 2);
      if (v4 >= v20)
      {
        goto LABEL_28;
      }

      v21 = v20 - 1;
      memmove(&v1[40 * v4 + 32], &v1[40 * v4 + 72], 40 * (v20 - 1 - v4));
      *(v1 + 2) = v21;

      a1[1] = v1;
      sub_2287F836C(v45);
      v3 = v24;
LABEL_7:
      v2 = *(v1 + 2);
      if (v4 >= v2)
      {
        return v29;
      }
    }

    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
LABEL_6:
    sub_2287F712C(&v31, &qword_2813D1040, &type metadata for EnqueuedWorkPlan);
    ++v4;
    goto LABEL_7;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2287ED5E4()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 200);

  return MEMORY[0x2821FE8E8](v0, 272, 7);
}

uint64_t OrchestrationDirector.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_logger;
  v4 = sub_22887F180();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t storeEnumTagSinglePayload for PriorityRuleSet.Priority(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t OrchestrationDirector.recheckFailedTriggers(priorityThresholdOverride:barrier:)(char *a1, uint64_t a2, uint64_t a3)
{
  v14 = *a1;
  v4 = *(v3 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_protectedState);
  os_unfair_lock_lock((v4 + 44));
  sub_2287ED988((v4 + 16), &v17);
  os_unfair_lock_unlock((v4 + 44));
  v5 = v17;
  if (v17 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22887FA20())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAC07F0](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v10 = *(v8 + 48);
      os_unfair_lock_lock(v10 + 26);
      sub_2287EDB80(&v17);
      os_unfair_lock_unlock(v10 + 26);
      v11._rawValue = v17;
      sub_2287EBD14(v11);

      ++v7;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  LOBYTE(v17) = v14;
  sub_2287F8E74(a2);
  WorkQueue.enqueue(priorityThresholdOverride:barrier:)();
}

uint64_t sub_2287ED948()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2287ED9A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  v6 = sub_22887F160();
  v7 = sub_22887F6B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    sub_22887F8A0();

    MEMORY[0x22AAC0340](*(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier), *(a2 + OBJC_IVAR____TtC19HealthOrchestration21OrchestrationDirector_debugIdentifier + 8));
    MEMORY[0x22AAC0340](62, 0xE100000000000000);
    v10 = sub_2287E64D8(0xD000000000000018, 0x8000000228888690, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_2287E4000, v6, v7, "%s: Triggering failed work criteria recheck.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AAC1440](v9, -1, -1);
    MEMORY[0x22AAC1440](v8, -1, -1);
  }

  *a3 = *a1;
}

char *sub_2287EDB44@<X0>(char **a1@<X8>)
{
  result = sub_2287EDBCC();
  *a1 = result;
  return result;
}

char *sub_2287EDB9C@<X0>(char **a1@<X8>)
{
  result = sub_2287EDBCC();
  *a1 = result;
  return result;
}

char *sub_2287EDBCC()
{
  CFAbsoluteTimeGetCurrent();

  v1 = sub_228828824(v0);

  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  v30 = v1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22887FA20())
  {
    v3 = 0;
    v28 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAC07F0](v3, v1);
      v4 = v5;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_18;
      }

LABEL_7:
      v7 = i;
      v8 = *(v4 + 136);
      MEMORY[0x28223BE20](v5);
      os_unfair_lock_lock(v8 + 17);
      sub_2287EDFA4(&v8[4], v39);
      os_unfair_lock_unlock(v8 + 17);
      v32 = v39[0];
      v33 = v39[1];
      v34 = v39[2];
      v35 = v39[3];
      v36 = v39[4];
      v37 = *v40;
      v38 = *&v40[16];
      v9 = *&v39[0];
      if (*&v39[0] > 2uLL)
      {
        v23 = *(&v33 + 1);
        v24 = *(&v32 + 1);
        v26 = v34;
        v27 = v33;
        v21 = v35;
        v22 = *(&v34 + 1);
        v25 = *(&v35 + 1);
        v19 = *(&v36 + 1);
        v20 = v36;
        v10 = v37;
        v11 = swift_allocObject();
        swift_weakInit();
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v12 + 24) = v9;
        *(v12 + 32) = v24;
        *(v12 + 40) = v27;
        *(v12 + 48) = v23;
        *(v12 + 56) = v26;
        *(v12 + 64) = v22;
        *(v12 + 72) = v21;
        *(v12 + 80) = v25;
        *(v12 + 88) = v20;
        *(v12 + 96) = v19;
        *(v12 + 104) = v10;
        *(v12 + 112) = *&v40[8];
        *(v12 + 128) = v4;

        swift_unknownObjectRetain();

        sub_2287F3780(&v32, &v31);

        v13 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2287F3AC0(0, *(v28 + 2) + 1, 1, v28);
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        v18 = v15;
        v29 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v13 = sub_2287F3AC0((v14 > 1), v15 + 1, 1, v13);
        }

        sub_2287F3C00(&v32);

        *(v13 + 2) = v29;
        v28 = v13;
        v16 = &v13[104 * v18];
        *(v16 + 4) = v9;
        *(v16 + 5) = v24;
        *(v16 + 6) = v27;
        *(v16 + 7) = v23;
        *(v16 + 8) = v26;
        *(v16 + 9) = v22;
        *(v16 + 10) = v21;
        *(v16 + 11) = v25;
        *(v16 + 12) = v20;
        *(v16 + 13) = v19;
        *(v16 + 14) = v10;
        *(v16 + 15) = sub_2287FBEDC;
        *(v16 + 16) = v12;
        i = v7;
        v3 = v6;
        if (v6 == v7)
        {
          goto LABEL_22;
        }
      }

      else
      {

        ++v3;
        i = v7;
        if (v6 == v7)
        {
          goto LABEL_22;
        }
      }
    }

    if (v3 >= *(v30 + 16))
    {
      goto LABEL_19;
    }

    v4 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v30 = v1 & 0xFFFFFFFFFFFFFF8;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_22:

  return v28;
}

uint64_t sub_2287EDFC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(result + 48) == 1 && (*(result + 48) = 0, (v3 = *(result + 16)) != 0))
  {
    *(result + 16) = *(result + 8);
    v4 = result;

    sub_2287EE074(v4, v3, a2, a3);
  }

  else
  {
    *a2 = 2;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
  }

  return result;
}

uint64_t sub_2287EE074@<X0>(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v197 = a3;
  v9 = sub_22887F180();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v186 - v15;
  MEMORY[0x28223BE20](v14);
  v203 = &v186 - v17;
  v18 = *isUniquelyReferenced_nonNull_native;

  v20 = sub_2287EF684(v19, isUniquelyReferenced_nonNull_native, a2, v5);

  v200 = a2;

  v199 = isUniquelyReferenced_nonNull_native;
  if (*(isUniquelyReferenced_nonNull_native + 16))
  {
    type metadata accessor for InputSignalAnchorSet();
    swift_allocObject();

    v198 = sub_22886F6CC(v21);
  }

  else
  {
    v22 = sub_2287F21F4(MEMORY[0x277D84F90]);
    type metadata accessor for InputSignalAnchorSet();
    v198 = swift_allocObject();
    *(v198 + 16) = v22;
  }

  v23 = *(v20 + 16);
  v201 = v5;
  if (v23)
  {
    v193 = v18;
    v25 = v5[2];
    v24 = v5[3];
    ObjectType = swift_getObjectType();
    v27 = *(v24 + 40);
    v28 = v203;
    v195 = v25;
    v194 = v24;
    v192 = v27;
    (v27)(ObjectType, v24);

    v29 = sub_22887F160();
    v30 = sub_22887F6B0();

    v31 = os_log_type_enabled(v29, v30);
    v202 = v13;
    if (v31)
    {
      v187 = v30;
      v188 = v29;
      v32 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      *&v210 = v186;
      v189 = v32;
      *v32 = 136315650;
      v34 = v5[4];
      v33 = v5[5];
      v35 = v5;
      v36 = v5[6];
      v37 = v5[7];
      v38 = v35[8];
      v39 = v35[9];
      v214 = 60;
      v215 = 0xE100000000000000;

      MEMORY[0x22AAC0340](v34, v33);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      if (v39)
      {
        v40 = v39;
      }

      else
      {

        v38 = v36;
        v40 = v37;
      }

      MEMORY[0x22AAC0340](v38, v40);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);

      v57 = sub_2287E64D8(v214, v215, &v210);

      v58 = v189;
      *(v189 + 1) = v57;
      *(v58 + 6) = 2080;
      if (v201[13])
      {
        v59 = v201[12];
        v60 = v201[13];
      }

      else
      {
        v59 = v201[10];
        v60 = v201[11];
      }

      v61 = v203;

      v62 = sub_2287E64D8(v59, v60, &v210);

      *(v58 + 14) = v62;
      *(v58 + 11) = 2080;
      v63 = *(v20 + 16);
      if (v63)
      {
        v190 = v10;
        v191 = v9;
        *&v208 = MEMORY[0x277D84F90];
        sub_2287F2304(0, v63, 0);
        v64 = v208;
        v65 = (v20 + 56);
        do
        {
          v66 = *(v65 - 3);
          v67 = *(v65 - 2);
          v68 = *(v65 - 1);
          v69 = *v65;
          v214 = 0;
          v215 = 0xE000000000000000;
          if (v69)
          {
            v70 = v69;
          }

          else
          {

            v68 = v66;
            v70 = v67;
          }

          swift_bridgeObjectRetain_n();
          MEMORY[0x22AAC0340](v68, v70);

          v71 = v214;
          v72 = v215;
          *&v208 = v64;
          v74 = *(v64 + 16);
          v73 = *(v64 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_2287F2304((v73 > 1), v74 + 1, 1);
            v64 = v208;
          }

          v65 += 4;
          *(v64 + 16) = v74 + 1;
          v75 = v64 + 16 * v74;
          *(v75 + 32) = v71;
          *(v75 + 40) = v72;
          --v63;
        }

        while (v63);

        v9 = v191;
        v10 = v190;
        v61 = v203;
        v58 = v189;
      }

      else
      {

        v64 = MEMORY[0x277D84F90];
      }

      v214 = v64;
      sub_22887E094(0, &qword_2813CF5A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_2287F2498();
      v76 = sub_22887F350();
      v78 = v77;

      v79 = sub_2287E64D8(v76, v78, &v210);

      *(v58 + 3) = v79;
      v80 = v188;
      _os_log_impl(&dword_2287E4000, v188, v187, "%s:%s: Updated anchor has relevant changes for input signals (%s), requesting work plans.", v58, 0x20u);
      v81 = v186;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v81, -1, -1);
      MEMORY[0x22AAC1440](v58, -1, -1);

      v55 = *(v10 + 8);
      v55(v61, v9);
      v5 = v201;
    }

    else
    {

      v55 = *(v10 + 8);
      v55(v28, v9);
    }

    v82 = v5[15];
    isUniquelyReferenced_nonNull_native = swift_getObjectType();
    type metadata accessor for InputSignalAnchorSet();
    swift_allocObject();

    v84 = sub_22886F6CC(v83);

    (*(v82 + 40))(v193, v84, v198, isUniquelyReferenced_nonNull_native, v82);

    swift_getAssociatedTypeWitness();
    sub_2287EC070(0, &qword_2813CF7F8);
    v56 = sub_22887F9C0();

    if (*(v56 + 16))
    {
LABEL_41:
      v203 = *(v56 + 16);
      if (v203)
      {
        v103 = 0;
        v104 = (v56 + 32);
        v105 = MEMORY[0x277D84F98];
        v202 = v56;
        while (1)
        {
          if (v103 >= *(v56 + 16))
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          sub_2287E766C(v104, &v214);
          v107 = v216;
          v108 = v217;
          __swift_project_boxed_opaque_existential_1(&v214, v216);
          (*(v108 + 24))(&v205, v107, v108);
          if (v105[2])
          {
            v109 = sub_2287F2514(v205, *(&v205 + 1), v206);
            v111 = v110;

            if (v111)
            {
              sub_2287E766C(v105[7] + 40 * v109, &v208);
              sub_2287EC014(&v208, &v210);
              v112 = v216;
              v113 = v217;
              __swift_project_boxed_opaque_existential_1(&v214, v216);
              (*(v113 + 24))(v207, v112, v113);
              v115 = v207[0];
              v114 = v207[1];
              v116 = v207[2];
              v117 = v212;
              v118 = v213;
              __swift_project_boxed_opaque_existential_1(&v210, v212);
              sub_22885EE18(&v214, v117, v118, &v208);
              sub_2287EC014(&v208, &v205);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v204 = v105;
              v120 = sub_2287F2514(v115, v114, v116);
              v121 = v105[2];
              v122 = (v119 & 1) == 0;
              v123 = v121 + v122;
              if (__OFADD__(v121, v122))
              {
                goto LABEL_95;
              }

              v124 = v119;
              if (v105[3] >= v123)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_2288543DC();
                }
              }

              else
              {
                sub_2287F268C(v123, isUniquelyReferenced_nonNull_native);
                v125 = sub_2287F2514(v115, v114, v116);
                if ((v124 & 1) != (v126 & 1))
                {
                  goto LABEL_99;
                }

                v120 = v125;
              }

              v105 = v204;
              if (v124)
              {
                v142 = v204[7] + 40 * v120;
                __swift_destroy_boxed_opaque_existential_1(v142);
                sub_2287EC014(&v205, v142);
              }

              else
              {
                v204[(v120 >> 6) + 8] |= 1 << v120;
                v143 = (v105[6] + 24 * v120);
                *v143 = v115;
                v143[1] = v114;
                v143[2] = v116;
                sub_2287EC014(&v205, v105[7] + 40 * v120);
                v144 = v105[2];
                v135 = __OFADD__(v144, 1);
                v145 = v144 + 1;
                if (v135)
                {
                  goto LABEL_96;
                }

                v105[2] = v145;
              }

              __swift_destroy_boxed_opaque_existential_1(&v210);
              goto LABEL_44;
            }
          }

          else
          {
          }

          v127 = v216;
          isUniquelyReferenced_nonNull_native = v217;
          __swift_project_boxed_opaque_existential_1(&v214, v216);
          (*(isUniquelyReferenced_nonNull_native + 24))(&v208, v127, isUniquelyReferenced_nonNull_native);
          v128 = v208;
          v129 = v209;
          sub_2287E766C(&v214, &v210);
          v130 = swift_isUniquelyReferenced_nonNull_native();
          *&v205 = v105;
          v131 = sub_2287F2514(v128, *(&v128 + 1), v129);
          v133 = v105[2];
          v134 = (v132 & 1) == 0;
          v135 = __OFADD__(v133, v134);
          v136 = v133 + v134;
          if (v135)
          {
            goto LABEL_93;
          }

          v137 = v132;
          if (v105[3] >= v136)
          {
            if ((v130 & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = v131;
              sub_2288543DC();
              v131 = isUniquelyReferenced_nonNull_native;
            }
          }

          else
          {
            sub_2287F268C(v136, v130);
            v131 = sub_2287F2514(v128, *(&v128 + 1), v129);
            if ((v137 & 1) != (v138 & 1))
            {
LABEL_99:
              result = sub_22887FC20();
              __break(1u);
              return result;
            }
          }

          v105 = v205;
          if (v137)
          {
            v106 = *(v205 + 56) + 40 * v131;
            __swift_destroy_boxed_opaque_existential_1(v106);
            sub_2287EC014(&v210, v106);
          }

          else
          {
            *(v205 + 8 * (v131 >> 6) + 64) |= 1 << v131;
            v139 = v105[6] + 24 * v131;
            *v139 = v128;
            *(v139 + 16) = v129;
            sub_2287EC014(&v210, v105[7] + 40 * v131);
            v140 = v105[2];
            v135 = __OFADD__(v140, 1);
            v141 = v140 + 1;
            if (v135)
            {
              goto LABEL_94;
            }

            v105[2] = v141;
          }

LABEL_44:
          v56 = v202;
          ++v103;
          __swift_destroy_boxed_opaque_existential_1(&v214);
          v104 += 5;
          if (v203 == v103)
          {
            goto LABEL_70;
          }
        }
      }

      v105 = MEMORY[0x277D84F98];
LABEL_70:

      v146 = v105[2];
      v104 = v201;
      if (v146)
      {
        v147 = sub_2287F29E4(v105[2], 0);
        v148 = sub_2287F2AB0(&v214, (v147 + 32), v146, v105);
        sub_2287EF604();
        isUniquelyReferenced_nonNull_native = v200;
        v149 = v199;
        if (v148 == v146)
        {
          goto LABEL_74;
        }

        __break(1u);
      }

      v147 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = v200;
      v149 = v199;
LABEL_74:

      *(v149 + 16) = isUniquelyReferenced_nonNull_native;
      if (!v203)
      {

        sub_2288764A0(v149, isUniquelyReferenced_nonNull_native, v197);
      }

      v150 = *(v149 + 40);
      v151 = *(v147 + 2);
      v152 = MEMORY[0x277D84F90];
      v202 = v147;
      if (v151)
      {
        v203 = v150;
        *&v208 = MEMORY[0x277D84F90];
        sub_2287F3018(0, v151, 0);
        v152 = v208;
        v153 = (v147 + 32);
        do
        {
          sub_2287E766C(v153, &v214);
          v154 = v216;
          v155 = v217;
          __swift_project_boxed_opaque_existential_1(&v214, v216);
          (*(v155 + 24))(&v210, v154, v155);
          __swift_destroy_boxed_opaque_existential_1(&v214);
          v156 = v210;
          v157 = v211;
          *&v208 = v152;
          v159 = *(v152 + 16);
          v158 = *(v152 + 24);
          if (v159 >= v158 >> 1)
          {
            sub_2287F3018((v158 > 1), v159 + 1, 1);
            v152 = v208;
          }

          *(v152 + 16) = v159 + 1;
          v160 = v152 + 24 * v159;
          *(v160 + 32) = v156;
          *(v160 + 48) = v157;
          v153 += 40;
          --v151;
        }

        while (v151);
        v104 = v201;
        isUniquelyReferenced_nonNull_native = v200;
        v149 = v199;
        v150 = v203;
      }

      v161 = sub_2287F3038(v152);

      v162 = *(v149 + 48);
      type metadata accessor for WorkCriteriaRecord.Epoch();
      v105 = swift_allocObject();
      v105[3] = v150;
      sub_2287F36D8(0, &qword_2813CF478);
      v163 = swift_allocObject();
      *(v163 + 36) = 0;
      *(v163 + 16) = isUniquelyReferenced_nonNull_native;
      *(v163 + 24) = v161;
      *(v163 + 32) = (v162 & 1) == 0;
      v105[2] = v163;
      if (__OFADD__(v150, 1))
      {
LABEL_97:
        __break(1u);
      }

      else
      {
        *(v149 + 40) = v150 + 1;

        MEMORY[0x22AAC03E0](v164);
        if (*((*(v149 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v149 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_83:
          sub_22887F520();
          v166 = v104[4];
          v165 = v104[5];
          v168 = v104[6];
          v167 = v104[7];
          v170 = v104[8];
          v169 = v104[9];
          type metadata accessor for InputSignalAnchorSet();
          swift_allocObject();

          v171 = sub_22886F6CC(isUniquelyReferenced_nonNull_native);

          v172 = swift_allocObject();
          swift_weakInit();
          v173 = swift_allocObject();
          *(v173 + 16) = v172;
          *(v173 + 24) = v105;
          v174 = v197;
          *v197 = v202;
          *(v174 + 1) = v166;
          *(v174 + 2) = v165;
          *(v174 + 3) = v168;
          *(v174 + 4) = v167;
          *(v174 + 5) = v170;
          *(v174 + 6) = v169;
          *(v174 + 7) = v171;
          v175 = v194;
          *(v174 + 8) = v195;
          *(v174 + 9) = v175;
          v174[10] = a4;
          *(v174 + 11) = sub_2287FC308;
          *(v174 + 12) = v173;
          return swift_unknownObjectRetain();
        }
      }

      sub_22887F4E0();
      goto LABEL_83;
    }

    v13 = v202;
  }

  else
  {

    v42 = v5[2];
    v41 = v5[3];
    v43 = swift_getObjectType();
    v44 = *(v41 + 40);
    v195 = v42;
    v194 = v41;
    v192 = v44;
    (v44)(v43, v41);

    v45 = sub_22887F160();
    v46 = sub_22887F680();

    if (os_log_type_enabled(v45, v46))
    {
      LODWORD(v203) = v46;
      v202 = v13;
      v190 = v10;
      v191 = v9;
      v47 = v5;
      v48 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *&v210 = v193;
      *v48 = 136315394;
      v50 = v47[4];
      v49 = v47[5];
      v51 = v47[6];
      v52 = v47[7];
      v53 = v47[8];
      v54 = v47[9];
      v214 = 60;
      v215 = 0xE100000000000000;

      MEMORY[0x22AAC0340](v50, v49);
      MEMORY[0x22AAC0340](8250, 0xE200000000000000);
      if (v54)
      {
        isUniquelyReferenced_nonNull_native = v54;
      }

      else
      {

        v53 = v51;
        isUniquelyReferenced_nonNull_native = v52;
      }

      MEMORY[0x22AAC0340](v53, isUniquelyReferenced_nonNull_native);

      MEMORY[0x22AAC0340](62, 0xE100000000000000);

      v85 = sub_2287E64D8(v214, v215, &v210);

      *(v48 + 4) = v85;
      *(v48 + 12) = 2080;
      if (v201[13])
      {
        v86 = v201[12];
        v87 = v201[13];
      }

      else
      {
        v86 = v201[10];
        v87 = v201[11];
      }

      v9 = v191;
      v10 = v190;
      v13 = v202;

      v88 = sub_2287E64D8(v86, v87, &v210);

      *(v48 + 14) = v88;
      _os_log_impl(&dword_2287E4000, v45, v203, "%s:%s: Updated anchor has no relevant changes; ignoring.", v48, 0x16u);
      v89 = v193;
      swift_arrayDestroy();
      MEMORY[0x22AAC1440](v89, -1, -1);
      MEMORY[0x22AAC1440](v48, -1, -1);

      v55 = *(v10 + 8);
      v55(v16, v9);
      v56 = MEMORY[0x277D84F90];
      v5 = v201;
    }

    else
    {

      v55 = *(v10 + 8);
      v55(v16, v9);
      v56 = MEMORY[0x277D84F90];
    }
  }

  v90 = *(v199 + 24);
  if (!v90)
  {
    goto LABEL_41;
  }

  v91 = *(v199 + 8);
  if (!v91 || *(v90 + 16) >= *(v91 + 16))
  {
    goto LABEL_41;
  }

  v92 = swift_getObjectType();
  v192(v92);

  v93 = sub_22887F160();
  v94 = sub_22887F680();

  if (os_log_type_enabled(v93, v94))
  {
    v202 = v13;
    v190 = v10;
    v191 = v9;
    v95 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    *&v210 = v203;
    *v95 = 136315394;
    v97 = v5[4];
    v96 = v5[5];
    v200 = v5[6];
    v98 = v5;
    v99 = v5[7];
    v101 = v98[8];
    v100 = v98[9];
    v214 = 60;
    v215 = 0xE100000000000000;

    MEMORY[0x22AAC0340](v97, v96);
    MEMORY[0x22AAC0340](8250, 0xE200000000000000);
    if (v100)
    {
      v102 = v100;
    }

    else
    {

      v101 = v200;
      v102 = v99;
    }

    MEMORY[0x22AAC0340](v101, v102);

    MEMORY[0x22AAC0340](62, 0xE100000000000000);

    v179 = sub_2287E64D8(v214, v215, &v210);

    *(v95 + 4) = v179;
    *(v95 + 12) = 2080;
    if (v201[13])
    {
      v180 = v201[12];
      v181 = v201[13];
    }

    else
    {
      v180 = v201[10];
      v181 = v201[11];
    }

    v182 = v191;
    v183 = v203;

    v184 = sub_2287E64D8(v180, v181, &v210);

    *(v95 + 14) = v184;
    _os_log_impl(&dword_2287E4000, v93, v94, "%s:%s: Updated anchor has no relevant changes, and has incomplete signals, ignoring without saving anchor.", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC1440](v183, -1, -1);
    MEMORY[0x22AAC1440](v95, -1, -1);

    v177 = v202;
    v178 = v182;
  }

  else
  {

    v177 = v13;
    v178 = v9;
  }

  result = (v55)(v177, v178);
  v185 = v197;
  *v197 = 1;
  *(v185 + 1) = 0u;
  *(v185 + 3) = 0u;
  *(v185 + 5) = 0u;
  *(v185 + 7) = 0u;
  *(v185 + 9) = 0u;
  *(v185 + 11) = 0u;
  return result;
}

uint64_t sub_2287EF60C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287EF644()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2287EF684(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  v10 = a1 + 32;
  result = MEMORY[0x277D84F90];
  v28 = v10;
  do
  {
    v33 = result;
    v12 = (v10 + 40 * v9);
    for (i = v9; ; ++i)
    {
      if (i >= v5)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      sub_2287EF82C(v12, a2, a3, a4, &v29);
      if (v4)
      {
        v24 = v33;

        return v24;
      }

      v14 = v30;
      if (v30)
      {
        break;
      }

      result = sub_22887DEE0(v29, 0);
      v12 += 5;
      if (v9 == v5)
      {
        return v33;
      }
    }

    v26 = v31;
    v27 = v29;
    v25 = v32;
    v15 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_2287F0E98(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v18 = v15;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    if (v17 >= v16 >> 1)
    {
      v23 = sub_2287F0E98((v16 > 1), v17 + 1, 1, v15);
      v19 = v25;
      v20 = v26;
      v18 = v23;
      v21 = v27;
    }

    *(v18 + 2) = v17 + 1;
    result = v18;
    v22 = &v18[32 * v17];
    *(v22 + 4) = v21;
    *(v22 + 5) = v14;
    *(v22 + 6) = v20;
    *(v22 + 7) = v19;
    v10 = v28;
  }

  while (v9 != v5);
  return result;
}

uint64_t sub_2287EF82C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22887F180();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v103 = (&v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v104 = (&v100 - v13);
  v14 = *(a2 + 16);
  v107 = a5;
  if (v14)
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = a1;
    v18 = a4;
    v19 = *(v16 + 16);

    v20 = v16;
    a5 = v107;
    v19(&v118, v15, v20);
    a4 = v18;
    a1 = v17;
    v115 = v118;
    v116 = v119;
    sub_228875478(&v115, v14, v121);
  }

  else
  {
    v122 = 0;
    memset(v121, 0, sizeof(v121));
  }

  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 16))(v114, v21, v22);
  v112[0] = v114[0];
  v112[1] = v114[1];
  v112[2] = v114[2];
  v113 = v114[3];
  sub_228875478(v112, a3, &v115);

  if (*(&v116 + 1))
  {
    sub_2287EC014(&v115, &v118);
    v23 = *(&v119 + 1);
    v24 = v120;
    __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
    v25 = sub_2287F045C(v121, a1, v23, v24);
    v26 = a4[3];
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 40);
    if (v25)
    {
      v29 = v104;
      v28(ObjectType, v26);
      sub_2287E766C(a1, &v115);
      sub_2287F09B0(v121, v114);
      sub_2287E766C(&v118, v112);

      v30 = sub_22887F160();
      v31 = sub_22887F680();

      if (os_log_type_enabled(v30, v31))
      {
        v101 = v31;
        v103 = v30;
        v32 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v123 = v100;
        *v32 = 136316162;
        v33 = a4[4];
        v34 = a4[5];
        v35 = a4[6];
        v36 = a4[7];
        v102 = a4;
        v38 = a4[8];
        v37 = a4[9];
        v108 = 60;
        v109 = 0xE100000000000000;

        MEMORY[0x22AAC0340](v33, v34);
        MEMORY[0x22AAC0340](8250, 0xE200000000000000);
        if (v37)
        {
          v39 = v37;
        }

        else
        {

          v38 = v35;
          v39 = v36;
        }

        MEMORY[0x22AAC0340](v38, v39);

        MEMORY[0x22AAC0340](62, 0xE100000000000000);

        v53 = sub_2287E64D8(v108, v109, &v123);

        *(v32 + 4) = v53;
        *(v32 + 12) = 2080;
        if (v102[13])
        {
          v54 = v102[12];
          v55 = v102[13];
        }

        else
        {
          v54 = v102[10];
          v55 = v102[11];
        }

        a5 = v107;

        v59 = sub_2287E64D8(v54, v55, &v123);

        *(v32 + 14) = v59;
        *(v32 + 22) = 2080;
        v60 = *(&v116 + 1);
        v61 = v117;
        __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
        (*(v61 + 16))(&v108, v60, v61);
        v62 = v111;
        if (v111)
        {
          v63 = v110;
        }

        else
        {
          v63 = v108;
        }

        __swift_destroy_boxed_opaque_existential_1(&v115);
        v69 = sub_2287E64D8(v63, v62, &v123);

        *(v32 + 24) = v69;
        *(v32 + 32) = 2080;
        sub_2287F09B0(v114, &v108);
        sub_2287E8A5C(0, &qword_2813D0F80, qword_2813D0F88, &protocol descriptor for InputSignalAnchor, MEMORY[0x277D83D88]);
        v70 = sub_22887F3B0();
        v72 = v71;
        sub_2287F0AC8(v114);
        v73 = sub_2287E64D8(v70, v72, &v123);

        *(v32 + 34) = v73;
        *(v32 + 42) = 2080;
        v74 = __swift_project_boxed_opaque_existential_1(v112, v113);
        MEMORY[0x28223BE20](v74);
        (*(v76 + 16))(&v100 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
        v77 = sub_22887F3B0();
        v79 = v78;
        __swift_destroy_boxed_opaque_existential_1(v112);
        v80 = sub_2287E64D8(v77, v79, &v123);

        *(v32 + 44) = v80;
        v81 = v103;
        _os_log_impl(&dword_2287E4000, v103, v101, "%s:%s: Anchor difference for %s %s -> (%s.", v32, 0x34u);
        v82 = v100;
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v82, -1, -1);
        MEMORY[0x22AAC1440](v32, -1, -1);

        (*(v105 + 8))(v104, v106);
      }

      else
      {

        sub_2287F0AC8(v114);
        (*(v105 + 8))(v29, v106);
        __swift_destroy_boxed_opaque_existential_1(&v115);
        __swift_destroy_boxed_opaque_existential_1(v112);
      }

      v83 = a1[3];
      v84 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v83);
      (*(v84 + 16))(&v115, v83, v84);
      sub_2287F0AC8(v121);
      v85 = *(&v115 + 1);
      *a5 = v115;
      *(a5 + 8) = v85;
      *(a5 + 16) = v116;
    }

    else
    {
      v41 = v103;
      v28(ObjectType, v26);
      sub_2287E766C(a1, &v115);
      sub_2287F09B0(v121, v114);
      sub_2287E766C(&v118, v112);

      v42 = sub_22887F160();
      v43 = sub_22887F680();

      if (os_log_type_enabled(v42, v43))
      {
        v101 = v43;
        v104 = v42;
        v44 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v123 = v100;
        *v44 = 136316162;
        v45 = a4[4];
        v46 = a4[5];
        v47 = a4;
        v48 = a4[6];
        v49 = a4[7];
        v50 = v47[8];
        v51 = v47[9];
        v102 = v47;
        v108 = 60;
        v109 = 0xE100000000000000;

        MEMORY[0x22AAC0340](v45, v46);
        MEMORY[0x22AAC0340](8250, 0xE200000000000000);
        if (v51)
        {
          v52 = v51;
        }

        else
        {

          v50 = v48;
          v52 = v49;
        }

        MEMORY[0x22AAC0340](v50, v52);

        MEMORY[0x22AAC0340](62, 0xE100000000000000);

        v56 = sub_2287E64D8(v108, v109, &v123);

        *(v44 + 4) = v56;
        *(v44 + 12) = 2080;
        if (v102[13])
        {
          v57 = v102[12];
          v58 = v102[13];
        }

        else
        {
          v57 = v102[10];
          v58 = v102[11];
        }

        a5 = v107;

        v64 = sub_2287E64D8(v57, v58, &v123);

        *(v44 + 14) = v64;
        *(v44 + 22) = 2080;
        v65 = *(&v116 + 1);
        v66 = v117;
        __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
        (*(v66 + 16))(&v108, v65, v66);
        v67 = v111;
        if (v111)
        {
          v68 = v110;
        }

        else
        {
          v68 = v108;
        }

        __swift_destroy_boxed_opaque_existential_1(&v115);
        v86 = sub_2287E64D8(v68, v67, &v123);

        *(v44 + 24) = v86;
        *(v44 + 32) = 2080;
        sub_2287F09B0(v114, &v108);
        sub_2287E8A5C(0, &qword_2813D0F80, qword_2813D0F88, &protocol descriptor for InputSignalAnchor, MEMORY[0x277D83D88]);
        v87 = sub_22887F3B0();
        v89 = v88;
        sub_2287F0AC8(v114);
        v90 = sub_2287E64D8(v87, v89, &v123);

        *(v44 + 34) = v90;
        *(v44 + 42) = 2080;
        v91 = __swift_project_boxed_opaque_existential_1(v112, v113);
        MEMORY[0x28223BE20](v91);
        (*(v93 + 16))(&v100 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
        v94 = sub_22887F3B0();
        v96 = v95;
        __swift_destroy_boxed_opaque_existential_1(v112);
        v97 = sub_2287E64D8(v94, v96, &v123);

        *(v44 + 44) = v97;
        v98 = v104;
        _os_log_impl(&dword_2287E4000, v104, v101, "%s:%s: No anchor difference for %s %s -> (%s.", v44, 0x34u);
        v99 = v100;
        swift_arrayDestroy();
        MEMORY[0x22AAC1440](v99, -1, -1);
        MEMORY[0x22AAC1440](v44, -1, -1);

        (*(v105 + 8))(v41, v106);
        sub_2287F0AC8(v121);
      }

      else
      {

        sub_2287F0AC8(v114);
        (*(v105 + 8))(v41, v106);
        sub_2287F0AC8(v121);
        __swift_destroy_boxed_opaque_existential_1(&v115);
        __swift_destroy_boxed_opaque_existential_1(v112);
      }

      *a5 = 0u;
      *(a5 + 16) = 0u;
    }

    return __swift_destroy_boxed_opaque_existential_1(&v118);
  }

  else
  {
    sub_2287F0AC8(v121);
    result = sub_2287F0AC8(&v115);
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2287F0418@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_2287F045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v7 = sub_22887F7D0();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v36 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_22887F7D0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v18);
  v23 = &v32 - v22;
  sub_2287E766C(a2, v41);
  sub_2287EC070(0, qword_2813CFDF8);
  v24 = swift_dynamicCast();
  v25 = *(v21 + 56);
  if (!v24)
  {
    v25(v20, 1, 1, AssociatedTypeWitness);
    (*(v17 + 8))(v20, v16);
LABEL_9:
    v30 = 0;
    return v30 & 1;
  }

  v25(v20, 0, 1, AssociatedTypeWitness);
  (*(v21 + 32))(v23, v20, AssociatedTypeWitness);
  sub_2287F09B0(v35, &v39);
  if (!v40)
  {
    sub_2287F0AC8(&v39);
    (*(v36 + 56))(v10, 1, 1, a3);
    v30 = (*(v34 + 64))(v10, v23, a3);
    (*(v37 + 8))(v10, v38);
    goto LABEL_7;
  }

  sub_2287EC014(&v39, v41);
  sub_2287E766C(v41, &v39);
  sub_2287EC070(0, qword_2813D0F88);
  v26 = swift_dynamicCast();
  v27 = v36;
  v28 = *(v36 + 56);
  if (!v26)
  {
    v28(v13, 1, 1, a3);
    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v21 + 8))(v23, AssociatedTypeWitness);
    (*(v37 + 8))(v13, v38);
    goto LABEL_9;
  }

  v28(v13, 0, 1, a3);
  v29 = v33;
  (*(v27 + 32))(v33, v13, a3);
  (*(v27 + 16))(v10, v29, a3);
  v28(v10, 0, 1, a3);
  v30 = (*(v34 + 64))(v10, v23, a3);
  (*(v37 + 8))(v10, v38);
  (*(v27 + 8))(v29, a3);
  __swift_destroy_boxed_opaque_existential_1(v41);
LABEL_7:
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v30 & 1;
}

uint64_t sub_2287F09B0(uint64_t a1, uint64_t a2)
{
  sub_2287F0A14();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2287F0A14()
{
  if (!qword_2813D0F80)
  {
    sub_2287EC070(255, qword_2813D0F88);
    v0 = sub_22887F7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D0F80);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2287F0A88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2287F0AC8(uint64_t a1)
{
  sub_2287F0A14();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ValueAnchor.hasDifference(from:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22887F7D0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v13 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v9, a3);
    v14 = sub_22887F360();
    (*(v10 + 8))(v12, a3);
    v13 = v14 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_2287F0D14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

char *sub_2287F0E98(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF288, &type metadata for InputSignalIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2287F0FBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2287F100C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v38 = a1;
  v39 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v40 = v8;
  v41 = 0;
  v42 = v11 & v9;
  v43 = a2;
  v44 = a3;

  sub_2287EC320(&v33);
  v12 = v34;
  if (!v34)
  {
LABEL_5:
    sub_2287EF604();
  }

  while (1)
  {
    v15 = v33;
    v17 = v35;
    v16 = v36;
    sub_2287EC014(&v37, v32);
    v18 = *a5;
    v20 = sub_2287E6768(v15, v12, v17, v16);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if (a4)
      {
        v27 = *a5;
        if (v19)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_2287F130C();
        v27 = *a5;
        if (v24)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_2287F4118(v23, a4 & 1);
      v25 = sub_2287E6768(v15, v12, v17, v16);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_21;
      }

      v20 = v25;
      v27 = *a5;
      if (v24)
      {
LABEL_6:

        v14 = v27[7] + 40 * v20;
        __swift_destroy_boxed_opaque_existential_1(v14);
        sub_2287EC014(v32, v14);
        goto LABEL_7;
      }
    }

    v27[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v27[6] + 32 * v20);
    *v28 = v15;
    v28[1] = v12;
    v28[2] = v17;
    v28[3] = v16;
    sub_2287EC014(v32, v27[7] + 40 * v20);
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    v27[2] = v31;
LABEL_7:
    sub_2287EC320(&v33);
    v12 = v34;
    a4 = 1;
    if (!v34)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22887FC20();
  __break(1u);
  return result;
}

uint64_t sub_2287F124C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2287F12AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2287F133C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22887F7D0();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v17[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_2287E766C(a1, v17);
  sub_2287EC070(0, qword_2813D0F88);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v13(v8, 0, 1, a2);
    (*(v9 + 32))(v11, v8, a2);
    v14 = sub_22887F360();
    (*(v9 + 8))(v11, a2);
  }

  else
  {
    v13(v8, 1, 1, a2);
    (*(v5 + 8))(v8, v4);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t static ValueAnchor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = sub_22887FBF0(), v4 = 0, (v3 & 1) != 0))
  {
    type metadata accessor for ValueAnchor();
    v4 = sub_22887F360();
  }

  return v4 & 1;
}

uint64_t static SecureCodingOptionalValueAnchor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_22887FBF0(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {
        v7 = v3;
        v8 = v2;
        v9 = sub_22887F7C0();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_2287F16B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 32) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = (&a1[v11 + 32] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 32] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

BOOL static OptionalValueAnchor.== infix(_:_:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v37 = a5;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22887F7D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v35 = v33 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = v33 - v17;
  if (*a1 == *a2 && *(a1 + 1) == a2[1] || (v19 = sub_22887FBF0(), result = 0, (v19 & 1) != 0))
  {
    v33[0] = v12;
    v33[1] = a6;
    v38 = a3;
    v39 = v36;
    v40 = v37;
    v41 = a6;
    v21 = *(type metadata accessor for OptionalValueAnchor() + 52);
    v36 = TupleTypeMetadata2;
    v37 = v14;
    v22 = *(TupleTypeMetadata2 + 48);
    v23 = *(v14 + 16);
    v23(v18, &a1[v21], v13);
    v24 = a2 + v21;
    v25 = v10;
    v23(&v18[v22], v24, v13);
    v26 = *(v10 + 48);
    if (v26(v18, 1, a3) == 1)
    {
      if (v26(&v18[v22], 1, a3) == 1)
      {
        (*(v37 + 8))(v18, v13);
        return 1;
      }
    }

    else
    {
      v27 = v35;
      v23(v35, v18, v13);
      if (v26(&v18[v22], 1, a3) != 1)
      {
        v28 = &v18[v22];
        v29 = v33[0];
        (*(v25 + 32))(v33[0], v28, a3);
        v30 = v27;
        v31 = sub_22887F360();
        v32 = *(v25 + 8);
        v32(v29, a3);
        v32(v30, a3);
        (*(v37 + 8))(v18, v13);
        return (v31 & 1) != 0;
      }

      (*(v25 + 8))(v27, a3);
    }

    (*(v34 + 8))(v18, v36);
    return 0;
  }

  return result;
}

uint64_t static SecureCodingValuesAnchor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = sub_22887FBF0(), v4 = 0, (v3 & 1) != 0))
  {
    type metadata accessor for SecureCodingValuesAnchor();
    v4 = sub_22887F360();
  }

  return v4 & 1;
}

uint64_t sub_2287F1E7C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t _s19HealthOrchestration17LocaleInputSignalC6AnchorV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22887FBF0() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_22887FBF0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_22887FBF0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t InputSignalAnchorSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WorkQueue.priorityThreshold.setter(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 21);
  sub_2287F20BC(&v2[4], v3, &v9);
  os_unfair_lock_unlock(v2 + 21);
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = v9 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }
}

void sub_2287F20BC(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  *(a1 + 64) = a2;
  v5 = *a1;
  if (!(*a1 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_15:
    *a3 = sub_2287ED1BC(a1);
    return;
  }

LABEL_14:
  v6 = sub_22887FA20();
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_3:
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x22AAC07F0](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    v10 = *(v8 + 16);
    os_unfair_lock_lock(v10 + 11);
    sub_2287ECEDC(&v10[4], a2);
    if (v4)
    {
      break;
    }

    v4 = 0;
    os_unfair_lock_unlock(v10 + 11);

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_15;
    }
  }

  os_unfair_lock_unlock(v10 + 11);
  __break(1u);
}

unint64_t sub_2287F21F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2287F70AC();
    v3 = sub_22887FA50();
    v4 = a1 + 32;

    while (1)
    {
      sub_22880A470(v4, &v13);
      result = sub_2287E6768(v13, v14, v15, *(&v15 + 1));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 32 * result;
      v8 = v14;
      v9 = v15;
      *v7 = v13;
      *(v7 + 8) = v8;
      *(v7 + 16) = v9;
      result = sub_2287EC014(&v16, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

char *sub_2287F2304(char *a1, int64_t a2, char a3)
{
  result = sub_2287F2324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2287F2324(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF220, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2287F2448(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2287F2498()
{
  result = qword_2813CF598;
  if (!qword_2813CF598)
  {
    sub_2287F2448(255, &qword_2813CF5A0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813CF598);
  }

  return result;
}

unint64_t sub_2287F2514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22887FC90();
  sub_22887F3E0();
  MEMORY[0x22AAC0BD0](a3);
  v6 = sub_22887FCD0();

  return sub_2287F25A8(a1, a2, a3, v6);
}

unint64_t sub_2287F25A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (sub_22887FBF0()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_2287F268C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2287F2964();
  v36 = a2;
  result = sub_22887FA40();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v26 = (v21 + 40 * v20);
      if (v36)
      {
        sub_2287EC014(v26, v37);
      }

      else
      {
        sub_2287E766C(v26, v37);
      }

      sub_22887FC90();
      sub_22887F3E0();
      MEMORY[0x22AAC0BD0](v25);
      result = sub_22887FCD0();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      result = sub_2287EC014(v37, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_2287F2964()
{
  if (!qword_2813CF3D0)
  {
    sub_2287E670C(255, &qword_2813CF7F8);
    sub_2287F30D8();
    v0 = sub_22887FA60();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CF3D0);
    }
  }
}

void *sub_2287F29E4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2287E8A5C(0, &qword_2813CF238, &qword_2813CF7F8, &protocol descriptor for WorkPlan, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_2287F2AB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      sub_2287E766C(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_2287EC014(v20, v21);
      sub_2287EC014(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

double sub_2287F2C1C@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a1 + 8);
  v9 = *(a1 + 8);

  v11 = sub_2287F2F80(v10, a2, a3, a1);
  v13 = v12;

  if (v13)
  {
    *(a4 + 208) = 0;
    *&v14 = 0;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return *&v14;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v9 + 16))
  {
    sub_2287F71FC(v9 + 216 * v11 + 32, v32);
    v15 = *(a1 + 24);
    if (*a1 && *(*a1 + 40) != 4)
    {
      v15 = *(*a1 + 40);
    }

    if (qword_228886B70[v32[0]] >= qword_228886B70[v15])
    {
      sub_2287F836C(v32);
      *&v14 = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 208) = 0;
      return *&v14;
    }

    sub_2287F82A0(v11, v30);
    sub_2287F836C(v30);
    Current = CFAbsoluteTimeGetCurrent();
    sub_2288258B4(a4, Current);
    sub_2287F71FC(a4, v30);
    v8 = *(a1 + 16);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_16:
  v8 = sub_2287F72C0(0, *(v8 + 2) + 1, 1, v8);
LABEL_10:
  v18 = *(v8 + 2);
  v17 = *(v8 + 3);
  if (v18 >= v17 >> 1)
  {
    v8 = sub_2287F72C0((v17 > 1), v18 + 1, 1, v8);
  }

  sub_2287F836C(v32);
  *(v8 + 2) = v18 + 1;
  v19 = &v8[216 * v18];
  v20 = v30[1];
  *(v19 + 2) = v30[0];
  *(v19 + 3) = v20;
  v21 = v30[5];
  v23 = v30[2];
  v22 = v30[3];
  *(v19 + 6) = v30[4];
  *(v19 + 7) = v21;
  *(v19 + 4) = v23;
  *(v19 + 5) = v22;
  v24 = v30[9];
  v26 = v30[6];
  v25 = v30[7];
  *(v19 + 10) = v30[8];
  *(v19 + 11) = v24;
  *(v19 + 8) = v26;
  *(v19 + 9) = v25;
  v27 = v30[11];
  v14 = v30[12];
  v28 = v30[10];
  *(v19 + 30) = v31;
  *(v19 + 13) = v27;
  *(v19 + 14) = v14;
  *(v19 + 12) = v28;
  *(a1 + 16) = v8;
  return *&v14;
}

char *sub_2287F2E48(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF298, &type metadata for WorkPlanIdentifier, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2287F2F80(uint64_t a1, uint64_t (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = 0;
  for (i = (a1 + 32); ; i += 27)
  {
    v11 = sub_2287F803C(i, a2, a3, a4);
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (v5 == ++v9)
    {
      return 0;
    }
  }

  return v9;
}

char *sub_2287F3018(char *a1, int64_t a2, char a3)
{
  result = sub_2287F2E48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2287F3038(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2287F30D8();
  result = MEMORY[0x22AAC0530](v2, &type metadata for WorkPlanIdentifier, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 2);

      sub_2287F3174(&v9, v8, v7, v6);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_2287F30D8()
{
  result = qword_2813D0C20;
  if (!qword_2813D0C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D0C20);
  }

  return result;
}

uint64_t sub_2287F312C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2287F3174(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  sub_22887FC90();
  sub_22887F3E0();
  MEMORY[0x22AAC0BD0](a4);
  v9 = sub_22887FCD0();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v8 + 48);
    while (1)
    {
      v14 = (v13 + 24 * v11);
      v15 = v14[2];
      v16 = *v14 == a2 && v14[1] == a3;
      if (v16 || (sub_22887FBF0()) && v15 == a4)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v19 = (*(v8 + 48) + 24 * v11);
    v21 = *v19;
    v20 = v19[1];
    v22 = v19[2];
    *a1 = v21;
    a1[1] = v20;
    a1[2] = v22;

    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;

    sub_2287F330C(a2, a3, a4, v11, isUniquelyReferenced_nonNull_native);
    *v23 = v25;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t sub_2287F330C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_228878BFC();
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_22887A410();
      goto LABEL_18;
    }

    sub_22887B784();
  }

  v13 = *v5;
  sub_22887FC90();
  sub_22887F3E0();
  MEMORY[0x22AAC0BD0](a3);
  result = sub_22887FCD0();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = (v17 + 24 * a4);
      result = *v18;
      v19 = v18[2];
      v20 = *v18 == v10 && v18[1] == a2;
      if (v20 || (result = sub_22887FBF0(), (result & 1) != 0))
      {
        if (v19 == a3)
        {
          goto LABEL_21;
        }
      }

      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = (*(v21 + 48) + 24 * a4);
  *v22 = v10;
  v22[1] = a2;
  v22[2] = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_21:
  result = sub_22887FC10();
  __break(1u);
  return result;
}

uint64_t sub_2287F34E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = *a2;
  v25 = *(a3 - 8);
  v7 = v25;
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = *(v7 + 16);
  v13(&v22 - v11);
  v14 = a2[2];
  v15 = *(a4 + 48);

  v15(v28, a3, a4);
  v16 = v28[1];
  v17 = v28[3];
  v23 = v28[2];
  v24 = v28[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v14;
  (v13)(v10, v12, a3);
  sub_2287F37DC(v10, v24, v16, v23, v17, isUniquelyReferenced_nonNull_native, &v27, a3, a4);

  v19 = v27;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  (*(v25 + 8))(v12, a3);
  return v20;
}

void sub_2287F36D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v3 = sub_22887F910();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t ValueAnchor.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  v3 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_2287F37DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9)
{
  v37 = a8;
  v38 = a9;
  v35 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a1, a8);
  v18 = *a7;
  v20 = sub_2287E6768(a2, a3, a4, a5);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a6 & 1) != 0)
  {
LABEL_7:
    v26 = *a7;
    if (v24)
    {
LABEL_8:
      v27 = v26[7] + 40 * v20;
      __swift_destroy_boxed_opaque_existential_1(v27);
      return sub_2287EC014(&v36, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a6 & 1) == 0)
  {
    sub_2287F130C();
    goto LABEL_7;
  }

  sub_2287F4118(v23, a6 & 1);
  v29 = sub_2287E6768(a2, a3, a4, a5);
  if ((v24 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_22887FC20();
    __break(1u);
    return result;
  }

  v20 = v29;
  v26 = *a7;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  MEMORY[0x28223BE20](v31);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_2287F48B8(v20, a2, a3, a4, a5, v33, v26, a8, v35);

  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t get_enum_tag_for_layout_string_19HealthOrchestration18WorkCriteriaRecordC11CheckResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

char *sub_2287F3AC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F0FBC(0, &qword_2813CF230, &type metadata for WorkQueue.WorkSet, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Void __swiftcall WorkQueue.enqueue(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock((v2 + 84));
  sub_2287F3DD0((v2 + 16), &v7);
  os_unfair_lock_unlock((v2 + 84));
  v3 = *(v7 + 16);
  if (v3)
  {
    v4 = v7 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

void *sub_2287F3CF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = v6[3];
      v8 = v6[5];
      v21 = v6[4];
      v22 = v8;
      v9 = v6[1];
      v18[0] = *v6;
      v18[1] = v9;
      v10 = v6[3];
      v12 = *v6;
      v11 = v6[1];
      v19 = v6[2];
      v20 = v10;
      v13 = v6[5];
      v16[4] = v21;
      v16[5] = v13;
      v16[0] = v12;
      v16[1] = v11;
      v23 = *(v6 + 12);
      v17 = *(v6 + 12);
      v16[2] = v19;
      v16[3] = v7;
      sub_2287F3DEC(v18, v15);
      sub_2287F4148(v16, a1);
      sub_2287F800C(v18);
      v6 = (v6 + 104);
      --v5;
    }

    while (v5);
  }

  result = sub_2287ED1BC(a1);
  *a3 = result;
  return result;
}

uint64_t sub_2287F3E24(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v7 = v6;
  v9 = *v6;
  sub_2287EC770(0, a3, a4);
  v40 = a2;
  result = sub_22887FA40();
  v11 = result;
  if (*(v9 + 16))
  {
    v39 = v9;
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
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 56);
      v26 = (*(v9 + 48) + 32 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[3];
      v42 = v26[2];
      v30 = v25 + 40 * v24;
      if (v40)
      {
        a6(v30, v43);
      }

      else
      {
        sub_2287E766C(v30, v43);
      }

      sub_22887FC90();
      sub_22887F3E0();
      result = sub_22887FCD0();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 32 * v19);
      *v20 = v27;
      v20[1] = v28;
      v20[2] = v42;
      v20[3] = v29;
      result = (a6)(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
      v9 = v39;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v7 = v6;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v7 = v11;
  return result;
}

uint64_t sub_2287F4148(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 80);
  v52 = *(a1 + 64);
  v53 = v4;
  v54 = *(a1 + 96);
  v5 = *(a1 + 16);
  *v51 = *a1;
  *&v51[16] = v5;
  v6 = *(a1 + 48);
  *&v51[32] = *(a1 + 32);
  *&v51[48] = v6;
  v7 = sub_2287F45CC(a2);
  v8 = *(*(v2 + 24) + 16);
  os_unfair_lock_lock(v8 + 10);

  os_unfair_lock_unlock(v8 + 10);
  v10 = *(*v51 + 16);
  if (v10)
  {
    v38 = v7;
    v50 = MEMORY[0x277D84F90];
    sub_2287F49A8(0, v10, 0);
    v11 = v50;
    v55 = *&v51[8];
    v56 = *&v51[24];
    v57 = *&v51[40];
    v12 = *&v51[56];
    v13 = v10;
    v14 = *v51 + 32;
    v15 = v53;
    v39 = v52;
    v37 = v13;
    do
    {
      sub_2287E766C(v14, v46);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      v18 = v53;
      *(v17 + 80) = v52;
      *(v17 + 96) = v18;
      v19 = v54;
      v20 = *&v51[16];
      *(v17 + 16) = *v51;
      *(v17 + 32) = v20;
      v21 = *&v51[48];
      *(v17 + 48) = *&v51[32];
      *(v17 + 64) = v21;
      *(v17 + 112) = v19;
      *(v17 + 120) = v16;
      v42 = v39;
      v44 = v56;
      v45 = v57;
      v43 = v55;
      *(&v47 + 1) = v12;
      *&v48 = v15;
      *(&v48 + 1) = sub_2287FBD40;
      v49 = v17;
      swift_unknownObjectRetain();
      sub_2287F56D8(&v55, &v40);

      v9 = sub_2287F3DEC(v51, &v40);
      v50 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        v9 = sub_2287F49A8((v22 > 1), v23 + 1, 1);
        v11 = v50;
      }

      *(v11 + 16) = v23 + 1;
      v24 = v11 + 136 * v23;
      *(v24 + 32) = v42;
      v25 = v43;
      v26 = v44;
      v27 = v46[0];
      *(v24 + 80) = v45;
      *(v24 + 96) = v27;
      *(v24 + 48) = v25;
      *(v24 + 64) = v26;
      v28 = v46[1];
      v29 = v47;
      v30 = v48;
      *(v24 + 160) = v49;
      *(v24 + 128) = v29;
      *(v24 + 144) = v30;
      *(v24 + 112) = v28;
      v14 += 40;
      --v13;
    }

    while (v13);
    v7 = v38;
    v10 = v37;
  }

  v31 = *(v7 + 16);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock(v31 + 11);
  sub_2287F5E6C(&v31[4]);
  os_unfair_lock_unlock(v31 + 11);

  sub_2287F7E00((a2 + 3), &v40);
  if (v41)
  {
    sub_2287EC014(&v40, &v42);
    v32 = *(&v43 + 1);
    v33 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    v34 = v52;
    v35 = sub_2287F7E64(a2);
    (*(v33 + 8))(v10, v34, *(&v34 + 1), v35, v32, v33);

    return __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {

    return sub_228800814(&v40, sub_2287FDE90);
  }
}

uint64_t sub_2287F44D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2287F450C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_2287F45CC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 >> 62)
  {
    v3 = sub_22887FA20();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  v4 = __OFSUB__(v3, 1);
  result = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_17:
    v6 = MEMORY[0x22AAC07F0](result, v2);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v2 + 8 * result + 32);

LABEL_8:
    v7 = *(v6 + 16);
    os_unfair_lock_lock((v7 + 44));
    v8 = *(v7 + 16);
    os_unfair_lock_unlock((v7 + 44));
    if (!v8)
    {
      return v6;
    }

LABEL_10:
    type metadata accessor for WorkEpoch();
    v6 = swift_allocObject();
    sub_2287F36D8(0, &qword_2813CF400);
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D84F90];
    *(v9 + 24) = MEMORY[0x277D84F90];
    *(v9 + 32) = v10;
    *(v9 + 40) = 3;
    *(v6 + 16) = v9;
    *(v9 + 44) = 0;
    v11 = (v9 + 44);
    *(v9 + 16) = 0;
    v12 = v9 + 16;
    v13 = *(a1 + 64);
    os_unfair_lock_lock((v9 + 44));
    sub_2287ECEDC(v12, v13);
    os_unfair_lock_unlock(v11);

    MEMORY[0x22AAC03E0](v14);
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22887F4E0();
    }

    sub_22887F520();
    return v6;
  }

  __break(1u);
  return result;
}

char *sub_2287F4780(char *result, int64_t a2, char a3, char *a4)
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
    sub_2287F2448(0, &qword_2813CF2A0, &type metadata for ScheduledWorkPlan, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2287F48B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v24 = a8;
  v25 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a6, a8);
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v18 = (a7[6] + 32 * a1);
  *v18 = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
  result = sub_2287EC014(&v23, a7[7] + 40 * a1);
  v20 = a7[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v22;
  }

  return result;
}

char *sub_2287F49A8(char *a1, int64_t a2, char a3)
{
  result = sub_2287F4780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2287F49C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v104 = a1;
  v8 = 0;
  v101 = a3;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v96 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = v84 - v12;
  v102 = sub_22887F180();
  v13 = *(v102 - 8);
  v14 = MEMORY[0x28223BE20](v102);
  v100 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v93 = v84 - v16;
  v18 = *a2;
  result = a2[1];
  if (*a2)
  {
    if (result)
    {
      v19 = *(result + 16);
    }

    else
    {
      v19 = sub_2287F21F4(MEMORY[0x277D84F90]);
      type metadata accessor for InputSignalAnchorSet();
      *(swift_allocObject() + 16) = v19;
    }

    v20 = *(v18 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v110 = v20;
    sub_2287F100C(v19, sub_2287EC4C0, 0, isUniquelyReferenced_nonNull_native, &v110);

    v22 = v110;
    type metadata accessor for InputSignalAnchorSet();
    v103 = swift_allocObject();
    *(v103 + 16) = v22;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v103 = a2[1];
  }

  v23 = *(a4 + 48);
  v92 = a4 + 48;
  v91 = v23;
  v23(&v110, v101, a4);
  v24 = a2[5];
  if (!*(v24 + 16))
  {
  }

  v25 = sub_2287E6768(v110, *(&v110 + 1), v111, *(&v111 + 1));
  v27 = v26;

  if ((v27 & 1) == 0)
  {
  }

  v88 = a4;
  v28 = *(*(v24 + 56) + 8 * v25);
  v29 = *(v28 + 16);
  v30 = v103;
  if (v29)
  {
    v31 = v28 + 32;
    v99 = (v9 + 16);
    v98 = (v9 + 8);
    v97 = (v13 + 8);
    v84[1] = v28;

    *&v32 = 136315650;
    v85 = v32;
    *&v32 = 136315906;
    v86 = v32;
    v33 = v101;
    v34 = v100;
    v87 = v5;
    do
    {
      sub_2287F567C(v31, &v110);
      if (v116)
      {
        sub_2287F5CA8(&v110);
      }

      else
      {
        v119 = v112;
        v120 = v113;
        v121 = v114;
        v122 = v115;
        v117 = v110;
        v118 = v111;

        v36 = sub_228836FD8(v35, v30);
        v105 = v8;

        if (*(v36 + 16))
        {
          v37 = *(v5 + 16);
          v38 = *(v5 + 24);
          ObjectType = swift_getObjectType();
          v40 = *(v38 + 40);
          v94 = ObjectType;
          v40(ObjectType, v38);
          v41 = v96;
          (*v99)(v96, v104, v33);
          sub_2288372E4(&v117, &v110);

          v42 = v34;
          v43 = sub_22887F160();
          v44 = v5;
          v45 = sub_22887F6B0();

          v95 = v45;
          if (os_log_type_enabled(v43, v45))
          {
            v46 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v109 = v89;
            *v46 = v86;
            v106[0] = v37;
            swift_unknownObjectRetain();
            v47 = sub_22887F3B0();
            v49 = sub_2287E64D8(v47, v48, &v109);

            *(v46 + 4) = v49;
            *(v46 + 12) = 2080;
            v91(v106, v33, v88);
            (*v98)(v41, v33);
            v50 = v108;
            if (v108)
            {
              v51 = v107;
            }

            else
            {
              v51 = v106[0];
            }

            v64 = sub_2287E64D8(v51, v50, &v109);

            *(v46 + 14) = v64;
            *(v46 + 22) = 2080;
            v65 = *(&v111 + 1);
            v66 = v112;
            __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
            (*(v66 + 40))(v106, v65, v66);
            v67 = v108;
            if (v108)
            {
              v68 = v107;
            }

            else
            {
              v68 = v106[0];
            }

            sub_228837340(&v110);
            v69 = sub_2287E64D8(v68, v67, &v109);

            *(v46 + 24) = v69;
            *(v46 + 32) = 2080;
            sub_2287F74F8();
            v70 = sub_22887F5F0();
            v72 = v71;

            v73 = sub_2287E64D8(v70, v72, &v109);

            *(v46 + 34) = v73;
            _os_log_impl(&dword_2287E4000, v43, v95, "[%s]: Queuing update for dependent input signal %s -> %s; awaiting anchors from %s", v46, 0x2Au);
            v74 = v89;
            swift_arrayDestroy();
            MEMORY[0x22AAC1440](v74, -1, -1);
            MEMORY[0x22AAC1440](v46, -1, -1);

            v34 = v100;
            (*v97)(v100, v102);
            v5 = v87;
            v33 = v101;
          }

          else
          {
            (*v98)(v41, v33);

            (*v97)(v42, v102);
            sub_228837340(&v110);
            v34 = v42;
            v5 = v44;
          }

          sub_228837340(&v117);
          v8 = v105;
          v30 = v103;
        }

        else
        {

          v52 = *(v5 + 16);
          v53 = *(v5 + 24);
          swift_getObjectType();
          v54 = v93;
          (*(v53 + 40))();
          v55 = v90;
          (*v99)(v90, v104, v33);
          sub_2288372E4(&v117, &v110);

          v56 = sub_22887F160();
          v57 = sub_22887F6B0();

          if (os_log_type_enabled(v56, v57))
          {
            v95 = v57;
            v58 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v109 = v94;
            *v58 = v85;
            v106[0] = v52;
            swift_unknownObjectRetain();
            v59 = sub_22887F3B0();
            v61 = sub_2287E64D8(v59, v60, &v109);

            *(v58 + 4) = v61;
            *(v58 + 12) = 2080;
            v91(v106, v33, v88);
            (*v98)(v55, v33);
            v62 = v108;
            if (v108)
            {
              v63 = v107;
            }

            else
            {
              v63 = v106[0];
            }

            v30 = v103;

            v75 = sub_2287E64D8(v63, v62, &v109);

            *(v58 + 14) = v75;
            *(v58 + 22) = 2080;
            v76 = *(&v111 + 1);
            v77 = v112;
            __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
            (*(v77 + 40))(v106, v76, v77);
            v78 = v108;
            if (v108)
            {
              v79 = v107;
            }

            else
            {
              v79 = v106[0];
            }

            sub_228837340(&v110);
            v80 = sub_2287E64D8(v79, v78, &v109);

            *(v58 + 24) = v80;
            _os_log_impl(&dword_2287E4000, v56, v95, "[%s]: Updating dependent input signal %s -> %s.", v58, 0x20u);
            v81 = v94;
            swift_arrayDestroy();
            MEMORY[0x22AAC1440](v81, -1, -1);
            MEMORY[0x22AAC1440](v58, -1, -1);

            (*v97)(v93, v102);
            v33 = v101;
          }

          else
          {
            (*v98)(v55, v33);

            (*v97)(v54, v102);
            sub_228837340(&v110);
            v30 = v103;
          }

          v82 = *(&v118 + 1);
          v83 = v119;
          __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
          (*(v83 + 80))(v30, v82, v83);
          sub_228837340(&v117);
          v8 = v105;
          v34 = v100;
        }
      }

      v31 += 96;
      --v29;
    }

    while (v29);
  }
}

char *sub_2287F5734(char *a1, int64_t a2, char a3)
{
  result = sub_2287F5D2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2287F5760(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3)
{
  if (*(a1 + 25))
  {
    v3 = 2;
LABEL_5:
    sub_228861258();
    swift_allocError();
    *v4 = v3;
    return swift_willThrow();
  }

  if (*a1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v6 = *(a2 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v47 = *(a1 + 24);
    v70 = MEMORY[0x277D84F90];
    v9 = a2;
    sub_2287F5734(0, v6, 0);
    v10 = 0;
    v46 = v9;
    v49 = v6;
    v50 = v9 + 32;
    v55 = v70;
    while (1)
    {
      v54 = v10;
      sub_2287F5EE4(v50 + 136 * v10, v59);
      sub_2287F5EE4(v59, v58);
      v11 = v63;
      v12 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      result = (*(v12 + 32))(&v56, v11, v12);
      v13 = v56;
      v14 = v57;
      v52 = *(v56 + 16);
      if (v52)
      {
        v48 = v57;
        v15 = 0;
        v16 = v56 + 32;
        v51 = v56 + 32;
        while (2)
        {
          if (v15 >= *(v13 + 16))
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v17 = (v16 + 16 * v15);
          v18 = *v17;
          v53 = v17[8];
          ++v15;
          v19 = *(*v17 + 16);
          result = swift_bridgeObjectRetain_n();
          v20 = 0;
          while (v19 != v20)
          {
            if (v20 >= *(v18 + 16))
            {
              __break(1u);
              goto LABEL_36;
            }

            v21 = v20 + 1;

            v22 = EnvironmentalStateDescription.matches(_:)(a3);

            v20 = v21;
            if (v22)
            {

              swift_bridgeObjectRelease_n();
              v14 = v53;
              goto LABEL_19;
            }
          }

          result = swift_bridgeObjectRelease_n();
          v16 = v51;
          if (v15 != v52)
          {
            continue;
          }

          break;
        }

        v14 = v48;
      }

      else
      {
      }

LABEL_19:
      memset(&v66[8], 0, 48);
      v66[56] = 1;
      sub_2287F5EE4(v58, v67);
      LOBYTE(v65) = v14;
      *(&v65 + 1) = CFAbsoluteTimeGetCurrent();
      if (v14 > 2)
      {

        sub_2287F6C04(v58);
        v24 = 0;
      }

      else
      {
        v23 = sub_22887FBF0();

        sub_2287F6C04(v58);
        v24 = 0;
        if ((v23 & 1) == 0)
        {
          if (qword_228886B58[v14] >= qword_228886B70[v47])
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }
        }
      }

      v66[0] = v24;
      sub_2287F6C04(v59);
      v25 = v55;
      v70 = v55;
      v27 = *(v55 + 16);
      v26 = *(v55 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2287F5734((v26 > 1), v27 + 1, 1);
        v25 = v70;
      }

      v10 = v54 + 1;
      *(v25 + 16) = v27 + 1;
      v55 = v25;
      v28 = v25 + 216 * v27;
      v29 = *v66;
      *(v28 + 32) = v65;
      *(v28 + 48) = v29;
      v30 = *&v66[16];
      v31 = *&v66[32];
      v32 = v67[0];
      *(v28 + 96) = *&v66[48];
      *(v28 + 112) = v32;
      *(v28 + 64) = v30;
      *(v28 + 80) = v31;
      v33 = v67[1];
      v34 = v67[2];
      v35 = v67[4];
      *(v28 + 160) = v67[3];
      *(v28 + 176) = v35;
      *(v28 + 128) = v33;
      *(v28 + 144) = v34;
      v36 = v67[5];
      v37 = v67[6];
      v38 = v68;
      *(v28 + 240) = v69;
      *(v28 + 208) = v37;
      *(v28 + 224) = v38;
      *(v28 + 192) = v36;
      if (v54 + 1 == v49)
      {
        a2 = v46;
        v39 = a1;
        v7 = MEMORY[0x277D84F90];
        goto LABEL_30;
      }
    }
  }

  v39 = a1;
  v55 = MEMORY[0x277D84F90];
LABEL_30:
  v58[0] = v7;
  v40 = a2;

  result = sub_2287FBEE0((v39 + 8), v40, v58);
  v41 = *(*(v39 + 8) + 16);
  if (v41 < result)
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    sub_2287FC310(result, v41);
    v42 = *(v58[0] + 2);
    if (v42)
    {
      v43 = v58[0] + 32;
      do
      {
        sub_2287F71FC(v43, &v65);
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        v61 = 2;
        (*(&v68 + 1))(v67, v59);
        sub_2287FE448(v59);
        sub_2287F836C(&v65);
        v43 += 216;
        --v42;
      }

      while (v42);
    }

    v44 = sub_2287F6C58(v55, v58);

    sub_2287F7400(v44);
    sub_2287F754C(sub_228863F78, 0);
  }

  return result;
}