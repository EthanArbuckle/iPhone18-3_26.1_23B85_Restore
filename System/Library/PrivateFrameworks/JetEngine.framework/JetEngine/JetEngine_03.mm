uint64_t sub_1AB056FAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438130);
  v32 = a2;
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
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
      v33 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v34 = *(*(v5 + 56) + 16 * v19);
      if ((v32 & 1) == 0)
      {

        sub_1AB017200(v34, *(&v34 + 1));
      }

      sub_1AB4620A4();
      MEMORY[0x1AC59D3F0](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v20 + 40;
        do
        {

          sub_1AB460684();

          v22 += 16;
          --v21;
        }

        while (v21);
      }

      result = sub_1AB462104();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v34;
      ++*(v7 + 16);
      v5 = v31;
      v12 = v33;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v33 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1AB0572BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB057310(**(v1 + 16), *(*(v1 + 16) + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AB057310(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1AB4620A4();
  sub_1AB460684();
  v6 = sub_1AB462104();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1AB461DA4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AB244EA0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1AB15FB28(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1AB05745C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AB0574C0(uint64_t a1)
{
  v3 = type metadata accessor for InMemoryJetPackResourceBundle();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437830);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB437830);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB437830);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v8, type metadata accessor for InMemoryJetPackResourceBundle);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v8, v1 + v12, &unk_1EB437830);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB439890;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17);
        sub_1AB014A58(v42, v39, v17);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for InMemoryJetPackResourceBundle);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for InMemoryJetPackResourceBundle);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for InMemoryJetPackResourceBundle);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for InMemoryJetPackResourceBundle);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC2C, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

uint64_t sub_1AB0579C4(uint64_t a1)
{
  v2 = type metadata accessor for InMemoryJetPackResourceBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB057A20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB439890);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InMemoryJetPackResourceBundle);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for InMemoryJetPackResourceBundle);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InMemoryJetPackResourceBundle);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for InMemoryJetPackResourceBundle);
    v15 = *(v12 + 8);

    v15(sub_1AB057C3C, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB057C54()
{
  v1 = v0 + 2;
  v2 = v0[29];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB057D1C;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB02DAA0(v3);
  sub_1AB014AC0(v3, &unk_1EB439890);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB057D1C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB3A242C, 0, 0);
  }

  else
  {
    v4 = *(v1 + 232);
    v5 = *(v1 + 208);

    sub_1AB059E28(v4, v5);

    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_1AB057E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB057EEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return sub_1AB019F3C(a1, v4);
}

uint64_t sub_1AB057FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_1AB05801C()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB058080(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1AB058108(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1AB058174()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_1AB058330(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 96);
    sub_1AB014AC0(*(v0 + 104), &unk_1EB4395B0);
    *(v0 + 16) = *v4;
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);
    v7 = *(v4 + 48);
    *(v0 + 80) = *(v4 + 64);
    *(v0 + 48) = v6;
    *(v0 + 64) = v7;
    *(v0 + 32) = v5;
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_1AB3A5524;
    v9 = *(v0 + 88);

    return sub_1AB0567BC(v9);
  }

  else
  {
    v11 = *(v0 + 128);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(*(v0 + 120) + 32);
    v14(v11, *(v0 + 104), v12);
    v14(v13, v11, v12);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1AB058330@<X0>(uint64_t a1@<X8>)
{
  aBlock[12] = *MEMORY[0x1E69E9840];
  v3 = sub_1AB45F764();
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v16 = *(v1 + 56);
  v15 = *(v1 + 64);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v41[1] = v15;
    v42 = v16;
    v43 = v5;
    v44 = v11;
    v45 = v14;
    v46 = a1;
    v18 = v17;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v48 = [ObjCClassFromObject uninitializedToken];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    *(inited + 40) = v21;
    sub_1AB0550D0(inited);
    swift_setDeallocating();
    sub_1AB0589A8(inited + 32);
    v22 = sub_1AB460E34();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB428540;
    aBlock[3] = &block_descriptor_49_0;
    v23 = _Block_copy(aBlock);
    v24 = [v18 cachedValuesForKeys:v22 observationToken:&v48 updateHandler:v23];
    _Block_release(v23);

    v25 = sub_1AB4602F4();
    [v18 removeObserverWithToken_];
    v26 = sub_1AB460544();
    if (*(v25 + 16))
    {
      v28 = sub_1AB014DB4(v26, v27);
      v30 = v29;

      if (v30)
      {
        sub_1AB0165C4(*(v25 + 56) + 32 * v28, aBlock);

        if (swift_dynamicCast())
        {
          v31 = v44;
          sub_1AB45F714();

          sub_1AB014A58(v31, v8, &unk_1EB4395B0);
          v32 = *(v47 + 48);
          if (v32(v8, 1, v3) == 1)
          {
            swift_unknownObjectRelease();
            v33 = 1;
            v34 = v45;
          }

          else
          {
            v38 = v43;
            (*(v47 + 32))(v43, v8, v3);
            v34 = v45;
            v42(v38);
            swift_unknownObjectRelease();
            (*(v47 + 8))(v38, v3);
            v33 = 0;
          }

          sub_1AB014AC0(v31, &unk_1EB4395B0);
          v39 = *(v47 + 56);
          v39(v34, v33, 1, v3);
          if (v32(v34, 1, v3) != 1)
          {
            v40 = v46;
            (*(v47 + 32))(v46, v34, v3);
            return (v39)(v40, 0, 1, v3);
          }

          sub_1AB014AC0(v34, &unk_1EB4395B0);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v37 = v46;
        return (*(v47 + 56))(v37, 1, 1, v3);
      }
    }

    else
    {
    }

    v37 = v46;
    swift_unknownObjectRelease();
    return (*(v47 + 56))(v37, 1, 1, v3);
  }

  v35 = *(v47 + 56);

  return v35(a1, 1, 1, v3);
}

void sub_1AB0589FC(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB019150((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1EB435900 = v2;
}

uint64_t sub_1AB058B14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AB058B94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437730);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB437730);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AA9FC(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB017FB8(v11, v5, &unk_1EB4395B0);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB438CA4(v5);
    sub_1AB014AC0(v5, &unk_1EB4395B0);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &qword_1EB43BD80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB058E7C(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB058E7C((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v8, v1 + v13, &unk_1EB437730);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t sub_1AB058EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB058F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB058F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB058FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AB059040()
{
  result = qword_1ED4D05F8;
  if (!qword_1ED4D05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D05F8);
  }

  return result;
}

unint64_t sub_1AB0590BC()
{
  result = qword_1ED4D05F0;
  if (!qword_1ED4D05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D05F0);
  }

  return result;
}

uint64_t sub_1AB059124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45F764();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1AB0591F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1AB0592C0()
{
  v1 = *v0;
  v2 = 1734440037;
  v3 = 0x7845726576726573;
  if (v1 != 6)
  {
    v3 = 0x7963696C6F70;
  }

  v4 = 0x6D754E646C697562;
  if (v1 != 4)
  {
    v4 = 0x7265567465737361;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6164696C61766572;
  if (v1 != 2)
  {
    v5 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    v2 = 0x69646F4D7473616CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for JSONValueType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AB059494()
{
  result = qword_1ED4D0A48[0];
  if (!qword_1ED4D0A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED4D0A48);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for JetPackAssetRequestSourcePolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for JetPackAsset.OSVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t JetPackAsset.Policy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB05CC00();
  sub_1AB462224();
  if (!v2)
  {
    LOBYTE(v30) = 0;
    if (sub_1AB461AF4())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CB0);
      LOBYTE(v27) = 0;
      sub_1AB05CCDC();
      sub_1AB461AC4();
      v34 = a2;
      v9 = v30;
      v10 = v31;
    }

    else
    {
      v34 = a2;
      v10 = 0;
      v9 = 0x40AC200000000000;
    }

    LODWORD(v11) = 1;
    LOBYTE(v30) = 1;
    if (sub_1AB461AF4())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CB0);
      LOBYTE(v27) = 1;
      sub_1AB05CCDC();
      sub_1AB461AC4();
      LODWORD(v26) = v10;
      v25 = v30;
      LODWORD(v11) = v31;
    }

    else
    {
      LODWORD(v26) = v10;
      v25 = 0;
    }

    LOBYTE(v30) = 2;
    if (sub_1AB461AF4())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CB0);
      LOBYTE(v27) = 2;
      sub_1AB05CCDC();
      sub_1AB461AC4();
      v23 = v30;
      v24 = v31;
    }

    else
    {
      v24 = 0;
      v23 = 0x4143C68000000000;
    }

    LOBYTE(v30) = 0;
    v12 = v9;
    if (sub_1AB461AF4() & 1) != 0 && (LOBYTE(v30) = 1, (sub_1AB461AF4() & v26 & v11))
    {
      sub_1AB406B74("JetEngine/JetPackAsset.swift", 0x1CuLL, 2, 0xB5uLL);
      LODWORD(v26) = 0;
      v12 = 0x40AC200000000000;
      LOBYTE(v11) = 1;
      v13 = v34;
    }

    else
    {
      LOBYTE(v30) = 0;
      v14 = sub_1AB461AF4();
      v13 = v34;
      if (v14)
      {
        LOBYTE(v30) = 2;
        if (sub_1AB461AF4())
        {
          if (v26)
          {
            if (v24 && v11)
            {
              v22 = v12;
              if (qword_1EB435780 != -1)
              {
                swift_once();
              }

              sub_1AB4622E4();
              v25 = v32;
              v26 = v33;
              v21 = __swift_project_boxed_opaque_existential_1Tm(&v30, v32);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
              v11 = swift_allocObject();
              *(v11 + 16) = xmmword_1AB4D47F0;
              v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
              v15 = swift_allocObject();
              v19 = xmmword_1AB4D4720;
              *(v15 + 16) = xmmword_1AB4D4720;
              v29 = MEMORY[0x1E69E6158];
              v27 = 0xD00000000000005ELL;
              v28 = 0x80000001AB4FFD50;
              *(v15 + 48) = 0u;
              *(v15 + 32) = 0u;
              sub_1AB0169C4(&v27, v15 + 32);
              *(v15 + 64) = 0;
              *(v11 + 32) = v15;
              v16 = swift_allocObject();
              *(v16 + 16) = v19;
              v29 = MEMORY[0x1E69E6158];
              v27 = 0xD00000000000002BLL;
              v28 = 0x80000001AB4FFDB0;
              *(v16 + 48) = 0u;
              *(v16 + 32) = 0u;
              sub_1AB0169C4(&v27, v16 + 32);
              *(v16 + 64) = 0;
              *(v11 + 40) = v16;
              Logger.warning(_:)(v11, v25, v26);

              __swift_destroy_boxed_opaque_existential_1Tm(&v30);
              LOBYTE(v11) = 0;
              LODWORD(v26) = 1;
              v25 = 0x40AC200000000000;
              v12 = v22;
            }

            else
            {
              LODWORD(v26) = 1;
            }
          }

          else
          {
            LODWORD(v26) = 0;
          }
        }
      }
    }

    LOBYTE(v27) = 3;
    sub_1AB16C718();
    sub_1AB461A54();
    (*(v6 + 8))(v8, v5);
    v17 = v30;
    if (v30 == 5)
    {
      v17 = 0;
    }

    *v13 = v12;
    *(v13 + 8) = v26;
    *(v13 + 16) = v25;
    *(v13 + 24) = v11;
    *(v13 + 32) = v23;
    *(v13 + 40) = v24;
    *(v13 + 41) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1AB059BC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

unint64_t sub_1AB059C08(uint64_t a1)
{
  sub_1AB4620A4();
  v2 = *(a1 + 16);
  MEMORY[0x1AC59D3F0](v2);
  if (v2)
  {
    v3 = a1 + 40;
    do
    {

      sub_1AB460684();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  v4 = sub_1AB462104();

  return sub_1AB059CB8(a1, v4);
}

unint64_t sub_1AB059CB8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_1AB461DA4() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1AB059DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB059E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InMemoryJetPackResourceBundle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AB059E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v8 + 24));
  sub_1AB02F0EC((v8 + 16), &v9);
  os_unfair_lock_unlock((v8 + 24));
  if (v4)
  {
  }

  else
  {
    sub_1AB059FD8(v9, a2, a3, a4);
    os_unfair_lock_lock((v8 + 24));
    sub_1AB05B000((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
  }
}

uint64_t sub_1AB059FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  MEMORY[0x1AC59B990](71);
  v23 = v24;
  MEMORY[0x1AC59BA20](0xD00000000000002ELL, 0x80000001AB503230);
  *(&v25 + 1) = MEMORY[0x1E69E6158];
  *&v26 = &off_1F2000A10;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  sub_1AB014A58(&v24, v28, &qword_1EB439C50);

  v9 = sub_1AB05A334(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB05A334((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v28[0];
  v14 = v28[1];
  v12[8] = v29;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1AC59BA20](63, 0xE100000000000000);
  sub_1AB05A47C(&v24);
  MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB503260);
  *&v28[0] = 0;

  sub_1AB3620A8(v23, *(&v23 + 1), a1, v28, &v24);

  if (v4)
  {
  }

  v16 = *&v28[0];
  if (!*&v28[0])
  {
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();
  *(inited + 16) = v16;
  *(inited + 24) = 0;
  sub_1AB02E720(v9);

  v18 = *(inited + 16);
  v19 = sqlite3_step(v18);
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  if (!sub_1AB15AA44(v19, qword_1ED4D3ED8))
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v18);
  }

  if (v19 == 100)
  {
    sub_1AB05A938(inited, &v24);
    swift_setDeallocating();
    sqlite3_finalize(*(inited + 16));

    v20 = v27;
    v21 = v25;
    *a4 = v24;
    *(a4 + 16) = v21;
    *(a4 + 32) = v26;
    *(a4 + 48) = v20;
  }

  else
  {
    swift_setDeallocating();
    sqlite3_finalize(v18);

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 1;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
  }

  return result;
}

void *sub_1AB05A334(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AB05A47C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB05A4E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB05A588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int *a4@<X8>)
{
  v19 = a4;
  v8 = sub_1AB4605C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 16);
  v18[0] = a1;
  v18[1] = a2;
  sub_1AB460594();
  sub_1AB0273A8();
  v13 = sub_1AB461464();
  (*(v9 + 8))(v11, v8);
  if (qword_1ED4D0998 != -1)
  {
    swift_once();
  }

  if (v13)
  {
    v14 = (v13 + 32);
  }

  else
  {
    v14 = 0;
  }

  v15 = sqlite3_bind_text(v12, a3, v14, -1, qword_1ED4D0988);

  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  result = sub_1AB15AA44(v15, qword_1ED4D3ED8);
  if (result)
  {
    *v19 = v15;
  }

  else
  {
    sub_1AB1F60B4();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AB05A788(uint64_t a1)
{
  v2 = sub_1AB05ABB4(MEMORY[0x1E69E7CC0]);
  v3 = sqlite3_column_count(*(a1 + 16));
  if (v3 < 0)
  {
    goto LABEL_20;
  }

  v4 = v3;
  if (!v3)
  {
    return v2;
  }

  v5 = 0;
  while (1)
  {
    if (!sqlite3_column_name(*(a1 + 16), v5))
    {
      goto LABEL_5;
    }

    v7 = sub_1AB460704();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1AB014DB4(v7, v9);
    v13 = v2[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v2[3] < v16)
    {
      sub_1AB05ACB0(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1AB014DB4(v7, v9);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v22 = v11;
    sub_1AB1D86A4();
    v11 = v22;
    if (v17)
    {
LABEL_4:
      v6 = v11;

      *(v2[7] + 4 * v6) = v5;
      goto LABEL_5;
    }

LABEL_13:
    v2[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v2[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v9;
    *(v2[7] + 4 * v11) = v5;
    v20 = v2[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v2[2] = v21;
LABEL_5:
    if (v4 == ++v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

_BYTE *sub_1AB05A938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB05AB54();
  if (!*(v4 + 16))
  {
    v15 = 0;
    v16 = 0;
    v8 = 0;
    v12 = 0;
    v14 = 0;
    v9 = 1;
    goto LABEL_21;
  }

  v5 = sub_1AB014DB4(25705, 0xE200000000000000);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 4 * v5);
    if (sqlite3_column_type(*(a1 + 16), v7) != 5)
    {
      v8 = sqlite3_column_int(*(a1 + 16), v7);
      v9 = 0;
      if (*(v4 + 16))
      {
        goto LABEL_5;
      }

LABEL_20:
      v15 = 0;
      v16 = 0;
      v12 = 0;
      v14 = 0;
      goto LABEL_21;
    }
  }

  v8 = 0;
  v9 = 1;
  if (!*(v4 + 16))
  {
    goto LABEL_20;
  }

LABEL_5:
  v10 = sub_1AB014DB4(0x656B5F6568636163, 0xE900000000000079);
  if ((v11 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v10)))
  {
    v12 = sub_1AB460714();
    v14 = v13;
    if (!*(v4 + 16))
    {
LABEL_8:
      v15 = 0;
      v16 = 0;
LABEL_21:

      result = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_8;
    }
  }

  v17 = sub_1AB014DB4(0x6D616E5F656C6966, 0xE900000000000065);
  if ((v18 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(*(v4 + 56) + 4 * v17)))
  {
    v16 = sub_1AB460714();
    v15 = v19;
    if (!*(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    if (!*(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  v20 = sub_1AB014DB4(0x617461646174656DLL, 0xE800000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = *(*(v4 + 56) + 4 * v20);

  v23 = sqlite3_column_bytes(*(a1 + 16), v22);
  result = sqlite3_column_blob(*(a1 + 16), v22);
  if (!result)
  {
LABEL_22:
    v25 = 0xF000000000000000;
    goto LABEL_23;
  }

  result = sub_1AB05AF50(result, v23);
LABEL_23:
  *a2 = v8;
  *(a2 + 4) = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;
  *(a2 + 40) = result;
  *(a2 + 48) = v25;
  return result;
}

uint64_t sub_1AB05AB54()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1AB05A788(v0);
    *(v0 + 24) = v1;
  }

  return v1;
}

unint64_t sub_1AB05ABB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4380B8);
    v3 = sub_1AB461924();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AB014DB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AB05ACB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4380B8);
  v34 = a2;
  result = sub_1AB461914();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AB05AF50(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1AB0683DC(a1, &a1[a2]);
  }

  sub_1AB45F464();
  swift_allocObject();
  sub_1AB45F404();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1AB45F7E4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void sub_1AB05B034(uint64_t *a1, uint64_t a2)
{
  v3 = *a1 == 1;
  if (*a1 < 1)
  {
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v9[3] = MEMORY[0x1E69E6158];
    v9[0] = 0xD00000000000005FLL;
    v9[1] = 0x80000001AB508C60;
    *(v8 + 48) = 0u;
    *(v8 + 32) = 0u;
    sub_1AB0169C4(v9, v8 + 32);
    *(v8 + 64) = 0;
    *(v7 + 32) = v8;
    Logger.error(_:)(v7, v5, v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    --*a1;
    if (v3)
    {
      v4 = *(a2 + OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_db);
      os_unfair_lock_lock((v4 + 24));
      sub_1AB05E118((v4 + 16));
      os_unfair_lock_unlock((v4 + 24));
      if (v2)
      {
        __break(1u);
      }
    }
  }
}

Swift::Bool __swiftcall ProcessAssertion.invalidate()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (qword_1EB4358F8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB435900;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  v34 = sub_1AB0168A8(0, 39, 0, MEMORY[0x1E69E7CC0]);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = v2;
  sub_1AB4604F4();
  sub_1AB02F088();
  v7 = sub_1AB4607B4();
  v9 = v8;
  swift_getObjectType();
  *&v31 = sub_1AB462314();
  *(&v31 + 1) = v10;
  MEMORY[0x1AC59BA20](7876666, 0xE300000000000000);
  MEMORY[0x1AC59BA20](v7, v9);

  v30 = MEMORY[0x1E69E6158];

  v29 = v31;
  v31 = 0u;
  v32 = 0u;
  sub_1AB0169C4(&v29, &v31);
  v33 = 0;
  v11 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1AB0168A8(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1AB0168A8((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[40 * v13];
  v15 = v31;
  v16 = v32;
  v14[64] = v33;
  *(v14 + 2) = v15;
  *(v14 + 3) = v16;
  v34 = v11;
  v17._object = 0x80000001AB505AF0;
  v17._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = [(_JEAtomicCounter *)v1 currentValue];
  v30 = MEMORY[0x1E69E6530];
  *&v29 = v18;
  sub_1AB014A58(&v29, v28, &unk_1EB437E60);
  v31 = 0u;
  v32 = 0u;
  sub_1AB0169C4(v28, &v31);
  v33 = 0;
  v19 = v34;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
    v34 = v19;
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v31;
  v24 = v32;
  v22[64] = v33;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v34 = v19;
  sub_1AB014AC0(&v29, &unk_1EB437E60);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v4 + 32) = v34;
  *&v31 = v3;
  LOBYTE(v29) = 3;
  OSLogger.log(contentsOf:withLevel:)(v4, &v29);

  v26 = [v1 decrement];
  if (v26 == 1)
  {
    [v6 invalidate];
  }

  return v26 == 1;
}

uint64_t sub_1AB05B578@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v91 = type metadata accessor for JetPackAsset.Metadata(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1AB45F604();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1AB45F764();
  v101 = *(v102 - 8);
  v7 = MEMORY[0x1EEE9AC00](v102);
  v95 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v88 - v9;
  v105 = sub_1AB45FF84();
  v10 = *(v105 - 8);
  v11 = MEMORY[0x1EEE9AC00](v105);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v88 - v14;
  v93 = *a1;
  v124 = *(a1 + 4);
  v122 = *(a1 + 5);
  v123 = *(a1 + 7);
  v16 = *(a1 + 2);
  v94 = *(a1 + 1);
  v100 = v16;
  v17 = *(a1 + 4);
  v98 = *(a1 + 3);
  v18 = *(a1 + 6);
  v99 = *(a1 + 5);
  v104 = v18;
  if (qword_1ED4D0AF8 != -1)
  {
    swift_once();
  }

  v19 = sub_1AB45FFC4();
  __swift_project_value_buffer(v19, qword_1ED4D0B00);
  sub_1AB45FFA4();
  sub_1AB45FF54();
  v20 = sub_1AB45FFA4();
  v21 = sub_1AB461234();
  if (sub_1AB461314())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v20, v21, v23, "Retrieve Cached Asset by Record", "", v22, 2u);
    MEMORY[0x1AC59F020](v22, -1, -1);
  }

  v10[2](v13, v15, v105);
  sub_1AB460014();
  swift_allocObject();
  v24 = sub_1AB460004();
  v25 = v104;
  if (v104 >> 60 == 15 || !v17)
  {
    goto LABEL_11;
  }

  v90 = a2;
  v106 = v98;
  v89 = v17;
  v107 = v17;
  v26 = v96;
  v27 = v97;
  (*(v96 + 13))(v6, *MEMORY[0x1E6968F70], v97);
  v28 = v99;
  sub_1AB017200(v99, v25);
  sub_1AB0273A8();
  v29 = v95;
  sub_1AB45F754();
  (*(v26 + 1))(v6, v27);
  v30 = v25;
  v31 = v101;
  v32 = v103;
  v33 = v102;
  (*(v101 + 32))(v103, v29, v102);
  if (!v100)
  {
    (*(v31 + 8))(v32, v33);
    sub_1AB03BD58(v28, v30);
    a2 = v90;
LABEL_11:
    v41 = type metadata accessor for JetPackAsset(0);
    (*(*(v41 - 8) + 56))(a2, 1, 1, v41);
    goto LABEL_24;
  }

  v97 = v24;
  v96 = v15;
  v95 = v10;
  v34 = objc_opt_self();

  v35 = [v34 defaultManager];
  sub_1AB45F6E4();
  v36 = sub_1AB460514();

  v37 = [v35 fileExistsAtPath_];

  if (v37)
  {
    sub_1AB45F0D4();
    swift_allocObject();
    sub_1AB45F0C4();
    sub_1AB05C2A4(&qword_1ED4D06B0);
    v38 = v92;
    v39 = v99;
    v40 = v104;
    sub_1AB45F0B4();
    v74 = v38;
    v75 = v103;
    v76 = sub_1AB45F6E4();
    v78 = v77;
    sub_1AB03BD58(v39, v40);

    (*(v31 + 8))(v75, v33);
    v79 = v90;
    v90[3] = &type metadata for JetPackFileStreamSource;
    v79[4] = &protocol witness table for JetPackFileStreamSource;
    v80 = swift_allocObject();
    *v79 = v80;
    v80[2] = v76;
    v80[3] = v78;
    v81 = v94;
    v82 = v100;
    v80[4] = v94;
    v80[5] = v82;
    v83 = type metadata accessor for JetPackAsset(0);
    sub_1AB05DC04(v74, v79 + v83[5], type metadata accessor for JetPackAsset.Metadata);
    v84 = v124;
    v85 = v79 + v83[6];
    *v85 = v93;
    v85[4] = v84;
    v86 = (v79 + v83[7]);
    *v86 = v81;
    v86[1] = v82;
    *(v79 + v83[8]) = 1;
    *(v79 + v83[9]) = 0;
    *(v79 + v83[10]) = 0;
    v87 = (v79 + v83[11]);
    *v87 = 0;
    v87[1] = 0;
    (*(*(v83 - 1) + 56))(v79, 0, 1, v83);
  }

  else
  {

    sub_1AB2FB9D4();
    v42 = swift_allocError();
    *v43 = 3;
    swift_willThrow();
    v44 = v90;
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v45 = v109;
    v46 = v110;
    v47 = __swift_project_boxed_opaque_existential_1Tm(&v106, v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1AB4D4720;
    v121 = sub_1AB0168A8(0, 46, 0, MEMORY[0x1E69E7CC0]);
    v49._object = 0x80000001AB509720;
    v49._countAndFlagsBits = 0xD000000000000027;
    LogMessage.StringInterpolation.appendLiteral(_:)(v49);
    swift_getErrorValue();
    v50 = v117;
    v51 = v118;
    v120 = v118;
    v52 = __swift_allocate_boxed_opaque_existential_0(&v119);
    (*(*(v51 - 8) + 16))(v52, v50, v51);
    sub_1AB01522C(&v119, v113);
    v114 = 0u;
    v115 = 0u;
    sub_1AB0169C4(v113, &v114);
    v116 = 0;
    v53 = v121;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v99;
    v92 = v47;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_1AB0168A8(0, *(v53 + 2) + 1, 1, v53);
    }

    v57 = *(v53 + 2);
    v56 = *(v53 + 3);
    if (v57 >= v56 >> 1)
    {
      v53 = sub_1AB0168A8((v56 > 1), v57 + 1, 1, v53);
    }

    *(v53 + 2) = v57 + 1;
    v58 = &v53[40 * v57];
    v59 = v114;
    v60 = v115;
    v58[64] = v116;
    *(v58 + 2) = v59;
    *(v58 + 3) = v60;
    v121 = v53;
    sub_1AB014AC0(&v119, &unk_1EB437E60);
    v61._countAndFlagsBits = 0x3D6C727520;
    v61._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v61);
    v62 = v102;
    v120 = v102;
    v63 = __swift_allocate_boxed_opaque_existential_0(&v119);
    (*(v101 + 16))(v63, v103, v62);
    sub_1AB01522C(&v119, v113);
    v114 = 0u;
    v115 = 0u;
    sub_1AB0169C4(v113, &v114);
    v116 = 0;
    v64 = v121;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = sub_1AB0168A8(0, *(v64 + 2) + 1, 1, v64);
    }

    v66 = *(v64 + 2);
    v65 = *(v64 + 3);
    if (v66 >= v65 >> 1)
    {
      v64 = sub_1AB0168A8((v65 > 1), v66 + 1, 1, v64);
    }

    *(v64 + 2) = v66 + 1;
    v67 = &v64[40 * v66];
    v68 = v114;
    v69 = v115;
    v67[64] = v116;
    *(v67 + 2) = v68;
    *(v67 + 3) = v69;
    v121 = v64;
    sub_1AB014AC0(&v119, &unk_1EB437E60);
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v70);
    *(v48 + 32) = v121;
    Logger.error(_:)(v48, v45, v46);

    __swift_destroy_boxed_opaque_existential_1Tm(&v106);
    LODWORD(v106) = v93;
    BYTE4(v106) = v124;
    *(&v106 + 5) = v122;
    HIBYTE(v106) = v123;
    v107 = v94;
    v108 = v100;
    v109 = v98;
    v110 = v89;
    v111 = v55;
    v71 = v104;
    v112 = v104;
    sub_1AB2FB290(&v106);
    sub_1AB03BD58(v55, v71);

    (*(v101 + 8))(v103, v102);
    v72 = type metadata accessor for JetPackAsset(0);
    (*(*(v72 - 8) + 56))(v44, 1, 1, v72);
  }

  v10 = v95;
  v15 = v96;
  v24 = v97;
LABEL_24:
  sub_1AB05DC6C(v24, "Retrieve Cached Asset by Record");

  return (v10[1])(v15, v105);
}

uint64_t sub_1AB05C264()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB05C2A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JetPackAsset.Metadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t JetPackAsset.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_1AB45F9B4();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C88);
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v47 - v8;
  v10 = type metadata accessor for JetPackAsset.Metadata(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v13 + *(v11 + 28);
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v14[24] = 1;
  v54 = a1;
  v55 = v11;
  v15 = *(v11 + 44);
  v53 = v13;
  v16 = v13 + v15;
  *v16 = 0x4014000000000000;
  v16[8] = 0;
  *(v16 + 2) = 0;
  v16[24] = 1;
  *(v16 + 4) = 0x4143C68000000000;
  *(v16 + 20) = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB05C900();
  sub_1AB462224();
  if (v2)
  {
    v56 = v2;
    v19 = 0;
    v20 = v55;
    goto LABEL_4;
  }

  v48 = v7;
  LOBYTE(v57) = 0;
  v17 = v50;
  v18 = sub_1AB461A14();
  v22 = v53;
  *v53 = v18;
  v22[1] = v23;
  LOBYTE(v57) = 1;
  v24 = sub_1AB461A14();
  v56 = 0;
  v22[2] = v24;
  v22[3] = v25;
  v47 = v25;
  LOBYTE(v57) = 2;
  sub_1AB05DA4C(&unk_1ED4D0770);
  v26 = v52;
  v27 = v56;
  sub_1AB461AC4();
  v56 = v27;
  if (v27)
  {
    (*(v48 + 8))(v9, v17);
    v19 = 0;
LABEL_12:
    v20 = v55;
    goto LABEL_4;
  }

  (*(v51 + 32))(v22 + v55[6], v6, v26);
  v63 = 3;
  sub_1AB05DA90();
  v28 = v56;
  sub_1AB461A54();
  if (v28)
  {
    v56 = v28;
    (*(v48 + 8))(v9, v17);
    v19 = 1;
    goto LABEL_12;
  }

  v29 = v58;
  v30 = v59;
  *v14 = v57;
  *(v14 + 2) = v29;
  v14[24] = v30;
  LOBYTE(v57) = 4;
  v31 = sub_1AB461A14();
  v20 = v55;
  v32 = v53;
  v33 = (v53 + v55[8]);
  *v33 = v31;
  v33[1] = v34;
  LOBYTE(v57) = 5;
  v35 = sub_1AB461A14();
  v36 = (v32 + v20[9]);
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v57) = 6;
  v38 = sub_1AB461A24();
  v56 = 0;
  *(v32 + v20[10]) = v38;
  v63 = 7;
  sub_1AB05DAE4();
  v39 = v56;
  sub_1AB461AC4();
  v56 = v39;
  if (!v39)
  {
    (*(v48 + 8))(v9, v50);
    v40 = BYTE8(v57);
    v41 = v58;
    v42 = v59;
    v43 = v60;
    v44 = v61;
    v45 = v62;
    *v16 = v57;
    v16[8] = v40;
    *(v16 + 2) = v41;
    v16[24] = v42;
    *(v16 + 4) = v43;
    v16[40] = v44;
    v16[41] = v45;
    v46 = v53;
    sub_1AB05DB38(v53, v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    return sub_1AB05CDE8(v46);
  }

  (*(v48 + 8))(v9, v50);
  v19 = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v54);

  if (v19)
  {
    (*(v51 + 8))(v53 + v20[6], v52);
  }
}

unint64_t sub_1AB05C900()
{
  result = qword_1ED4D0AA8;
  if (!qword_1ED4D0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0AA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONValueType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t JetPackAsset.OSVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB059494();
  sub_1AB462224();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_1AB461AB4();
    v16 = 1;
    v14 = sub_1AB461AB4();
    v15 = 2;
    v11 = sub_1AB461AB4();
    (*(v6 + 8))(v8, v5);
    v12 = v14;
    *a2 = v9;
    a2[1] = v12;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB05CC00()
{
  result = qword_1ED4D0AC8;
  if (!qword_1ED4D0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0AC8);
  }

  return result;
}

unint64_t sub_1AB05CC54()
{
  v1 = 0x65674178616DLL;
  v2 = 0x6567417463697665;
  if (*v0 != 2)
  {
    v2 = 0x696C61766E49736FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

unint64_t sub_1AB05CCDC()
{
  result = qword_1ED4D0478;
  if (!qword_1ED4D0478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAssetRequestSourcePolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1AB05CDE8(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB05CE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for JetPackAsset.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB05CF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1AB4620A4();
  sub_1AB460684();
  v6 = sub_1AB462104();
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
    if (v11 || (sub_1AB461DA4() & 1) != 0)
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

uint64_t sub_1AB05D014@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3[3] = &type metadata for SystemDateProvider;
  v3[4] = &protocol witness table for SystemDateProvider;
  JetPackAssetStandardCachePolicy.status(for:dateProvider:)(a1, v3, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t JetPackAssetStandardCachePolicy.status(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3[3] = &type metadata for SystemDateProvider;
  v3[4] = &protocol witness table for SystemDateProvider;
  JetPackAssetStandardCachePolicy.status(for:dateProvider:)(a1, v3, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1AB05D094()
{
  result = qword_1ED4D1380;
  if (!qword_1ED4D1380)
  {
    sub_1AB45F9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1380);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAsset.OSVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
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

uint64_t sub_1AB05D148()
{
  v1 = *v0;
  if (!*v0)
  {
    v3 = 1;
LABEL_8:

    return v3 & 1;
  }

  v2 = sub_1AB461DA4();

  if ((v2 & 1) == 0)
  {
    if (v1 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1AB461DA4();
    }

    goto LABEL_8;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_1AB05D24C()
{
  sub_1AB05D280();

  return swift_deallocClassInstance();
}

uint64_t sub_1AB05D280()
{
  v1 = v0;
  swift_beginAccess();
  v2 = sqlite3_close_v2(*(v0 + 16));
  if (qword_1ED4D0C30 != -1)
  {
    swift_once();
  }

  if (!sub_1AB15AA44(v2, qword_1ED4D3ED8))
  {
    sub_1AB1F60B4();
    v3 = swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    swift_willThrow();
    if (qword_1EB435D28 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB43A230;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AB4D4720;
    v24 = sub_1AB0168A8(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v7._object = 0x80000001AB505750;
    v7._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    swift_getErrorValue();
    v23[3] = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
    sub_1AB01522C(v23, v17);
    v18 = 0u;
    v19 = 0u;
    sub_1AB0169C4(v17, &v18);
    v20 = 0;
    v9 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v18;
    v14 = v19;
    v12[64] = v20;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v24 = v9;
    sub_1AB0167A8(v23);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v6 + 32) = v24;
    *&v18 = v5;
    LOBYTE(v23[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v6, v23);
  }

  return v1;
}

uint64_t sub_1AB05D53C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1AB252B3C;
  }

  else
  {
    v2 = sub_1AB05D650;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB05D650()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    v1 = *(v0 + 56);
    os_unfair_lock_lock((v1 + 40));
    v3 = (v1 + 16);
    v2 = *(v1 + 16);
    if (v2)
    {
      v4 = *(v0 + 56);
      v5 = *(v4 + 24);
      v6 = v2;
      v7 = v5;

      LOBYTE(v5) = ProcessAssertion.invalidate()();

      if (v5)
      {
        v8 = *v3;
        v9 = *(v4 + 24);
        *(v1 + 24) = 0;
        *(v1 + 32) = 0;
        *v3 = 0;
        sub_1AB05D770(v8, v9);
      }
    }

    os_unfair_lock_unlock((v1 + 40));
  }

  v10 = *(v0 + 8);

  return v10();
}

void *sub_1AB05D770(void *result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SyncEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB05D7F8()
{
  (*(*(*(*v0 + 120) - 8) + 8))(v0 + *(*v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t sub_1AB05D8A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1AB461504() + 1) & ~v5;
    do
    {
      sub_1AB02B4BC(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_1AB461524();
      result = sub_1AB02B2E4(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1AB05DA4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AB45F9B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB05DA90()
{
  result = qword_1ED4D06A8;
  if (!qword_1ED4D06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D06A8);
  }

  return result;
}

unint64_t sub_1AB05DAE4()
{
  result = qword_1ED4D06B8;
  if (!qword_1ED4D06B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D06B8);
  }

  return result;
}

uint64_t sub_1AB05DB38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB05DB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB05DC04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB05DC6C(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_1AB45FFD4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45FF84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED4D0AF8 != -1)
  {
    swift_once();
  }

  v10 = sub_1AB45FFC4();
  __swift_project_value_buffer(v10, qword_1ED4D0B00);
  v11 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v12 = sub_1AB461224();
  if (sub_1AB461314())
  {

    sub_1AB460024();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1AC59F020](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_1AB05DEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3 != 1)
  {

    sub_1AB03BD58(a6, a7);
  }
}

uint64_t sub_1AB05DF60()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1AB2ED7DC;
  }

  else
  {
    v2 = sub_1AB05E074;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1AB05E074()
{
  v1 = v0[8];
  v2 = v0[6];
  os_unfair_lock_lock((v2 + 24));
  sub_1AB05B000((v2 + 16));
  os_unfair_lock_unlock((v0[6] + 24));
  if (!v1)
  {
    v3 = v0[1];

    v3();
  }
}

uint64_t sub_1AB05E118(void *a1)
{

  if (qword_1EB435780 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4D4720;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = 0xD00000000000001BLL;
  v7[1] = 0x80000001AB508CC0;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  sub_1AB0169C4(v7, v5 + 32);
  *(v5 + 64) = 0;
  *(v4 + 32) = v5;
  Logger.info(_:)(v4, v2, v3);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v8);
  *a1 = 0;
  return result;
}

id sub_1AB05E28C()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = v0;
  if ([v1 isValid])
  {
    if (qword_1EB4358F8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EB435900;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1AB4D4720;
    v29 = sub_1AB0168A8(0, 50, 0, MEMORY[0x1E69E7CC0]);
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    v5 = type metadata accessor for ProcessAssertion.JetRBSAssertion();
    v37 = v5;
    v36[0] = v1;
    sub_1AB014A58(v36, v32, &unk_1EB437E60);
    v33 = 0u;
    v34 = 0u;
    v6 = v1;
    sub_1AB0169C4(v32, &v33);
    v35 = 0;
    v7 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    v11 = v33;
    v12 = v34;
    v10[64] = v35;
    *(v10 + 2) = v11;
    *(v10 + 3) = v12;
    sub_1AB014AC0(v36, &unk_1EB437E60);
    v13._object = 0x80000001AB505BA0;
    v13._countAndFlagsBits = 0xD000000000000031;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v3 + 32) = v7;
    *&v33 = v2;
    LOBYTE(v36[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v3, v36);

    *&v33 = 0;
    if ([v6 invalidateSyncWithError_])
    {
      v14 = v33;
    }

    else
    {
      v15 = v33;
      v16 = sub_1AB45F594();

      swift_willThrow();
      v17 = qword_1EB435900;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1AB4D4720;
      v30 = sub_1AB0168A8(0, 64, 0, MEMORY[0x1E69E7CC0]);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      v37 = v5;
      v36[0] = v6;
      sub_1AB014A58(v36, v32, &unk_1EB437E60);
      v33 = 0u;
      v34 = 0u;
      v20 = v6;
      sub_1AB0169C4(v32, &v33);
      v35 = 0;
      v21 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[40 * v23];
      v25 = v33;
      v26 = v34;
      v24[64] = v35;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      sub_1AB014AC0(v36, &unk_1EB437E60);
      v27._countAndFlagsBits = 0xD00000000000003FLL;
      v27._object = 0x80000001AB505BE0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      *(v18 + 32) = v21;
      *&v33 = v17;
      LOBYTE(v36[0]) = 0;
      OSLogger.log(contentsOf:withLevel:)(v18, v36);
    }
  }

  v31.receiver = v1;
  v31.super_class = type metadata accessor for ProcessAssertion.JetRBSAssertion();
  return objc_msgSendSuper2(&v31, sel_dealloc);
}

uint64_t sub_1AB05E6C0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB2EBF24, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB05E830()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB05E924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1AB02B338(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1AB02B2E4(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_1AB02B1D8(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        sub_1AB1D90E4();
        v12 = v14;
      }

      sub_1AB02B2E4(*(v12 + 48) + 40 * v10);

      sub_1AB05D8A8(v10, v12);
      result = sub_1AB02B2E4(a2);
      *v3 = v12;
    }

    else
    {

      return sub_1AB02B2E4(a2);
    }
  }

  return result;
}

uint64_t _s9JetEngine22URLJetPackAssetRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1AB45F694() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for URLJetPackAssetRequest();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = 0x6E4F65746F6D6572;
      v9 = 0xEA0000000000796CLL;
      if (!v7)
      {
LABEL_11:
        v10 = 0xE800000000000000;
        if (v8 != 0x647261646E617473)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v8 = 0x6C6E4F6C61636F6CLL;
      v9 = 0xE900000000000079;
      if (!v7)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = 0xE800000000000000;
    v8 = 0x647261646E617473;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v7 == 1)
  {
    v10 = 0xEA0000000000796CLL;
    if (v8 != 0x6E4F65746F6D6572)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0xE900000000000079;
    if (v8 != 0x6C6E4F6C61636F6CLL)
    {
      goto LABEL_16;
    }
  }

LABEL_14:
  if (v9 == v10)
  {

    goto LABEL_17;
  }

LABEL_16:
  v11 = sub_1AB461DA4();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v12 = *(v4 + 24);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  result = (v14 | v16) == 0;
  if (v14)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    if (*v13 == *v15 && v14 == v16)
    {
      return 1;
    }

    else
    {

      return sub_1AB461DA4();
    }
  }

  return result;
}

double static AutomationSemantics.page(name:id:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AB4D4720;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  sub_1AB01522C(a3, v18);
  sub_1AB01522C(v18, &v16);
  if (v17)
  {
    sub_1AB014B78(&v16, v15);
    sub_1AB0165C4(v15, v14);

    v10 = _sSS9JetEngineE11_unwrappingSSyp_tcfC_0(v14);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    sub_1AB0167A8(v18);
  }

  else
  {

    sub_1AB0167A8(v18);
    v10 = 0;
    v12 = 0;
  }

  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *&v18[0] = v8;
  *&v18[1] = MEMORY[0x1E69E7CC0];
  sub_1AB05ED60(inited);
  result = v18[0];
  *a4 = *v18;
  return result;
}

uint64_t sub_1AB05ED60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB05EE54(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1AB05EE54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1AB05EF60()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1AB05EFC4();
  v3 = v2;

  qword_1ED4D0258 = v1;
  unk_1ED4D0260 = v3;
}

uint64_t sub_1AB05EFC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v39[-v7];
  v42 = 0;
  v43 = 0xE000000000000000;
  v9 = [v1 bundleIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AB460544();
    v13 = v12;

    v40 = 46;
    v41 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v14);
    *&v39[-16] = &v40;
    v15 = sub_1AB021178(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AB021538, &v39[-32], v11, v13, v39);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32 * v16);
      v18 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v20 = v17[3];

      v22 = v21;
      v23 = v19;
      v24 = v18;
      goto LABEL_12;
    }
  }

  v40 = 0;
  v41 = 0xE000000000000000;
  v25 = [v1 executableURL];
  if (v25)
  {
    v26 = v25;
    sub_1AB45F6C4();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_1AB45F764();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v4, v27, 1, v28);
  sub_1AB2D0A88(v4, v8);
  if ((*(v29 + 48))(v8, 1, v28) == 1)
  {
    sub_1AB014AC0(v8, &unk_1EB4395B0);
    v30 = 0xE700000000000000;
    v31 = 0x7070612D74656ALL;
  }

  else
  {
    v32 = sub_1AB45F644();
    v30 = v33;
    (*(v29 + 8))(v8, v28);
    v31 = v32;
  }

  MEMORY[0x1AC59BA20](v31, v30);

  v24 = sub_1AB4613D4();
  v20 = v34;
LABEL_12:
  v35 = MEMORY[0x1AC59B960](v24, v23, v22, v20);
  v37 = v36;

  MEMORY[0x1AC59BA20](v35, v37);

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  return v42;
}

uint64_t sub_1AB05F2E8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4() & 1;
  }
}

uint64_t _AutomationID.axElementID.getter()
{
  v1 = *(v0 + 8);
  if (qword_1ED4D0250 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED4D0258;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB019D78(&qword_1ED4D21F0, &qword_1EB4366C8);
  v2 = sub_1AB460484();
  v4 = v3;

  MEMORY[0x1AC59BA20](v2, v4);

  result = v7;
  if (*(v1 + 16))
  {
    v6 = sub_1AB05F470();
    MEMORY[0x1AC59BA20](v6);

    return v7;
  }

  return result;
}

uint64_t sub_1AB05F470()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D160);
  sub_1AB42A6B8();
  v0 = sub_1AB460484();
  v2 = v1;

  result = v0;
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x1AC59BA20](v0, v2);

    MEMORY[0x1AC59BA20](93, 0xE100000000000000);
    return 91;
  }

  return result;
}

unint64_t sub_1AB05F57C()
{
  result = qword_1ED4D0088;
  if (!qword_1ED4D0088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D168);
    sub_1AB05F600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0088);
  }

  return result;
}

unint64_t sub_1AB05F600()
{
  result = qword_1ED4D0098;
  if (!qword_1ED4D0098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D170);
    sub_1AB019D78(&qword_1ED4D00B0, &qword_1EB43D178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0098);
  }

  return result;
}

uint64_t sub_1AB05F69C(uint64_t result, int a2, int a3)
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

uint64_t sub_1AB05F6DC(uint64_t a1, int a2)
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

void sub_1AB05F724(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1AB45F204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  v9 = a1[3];
  if (v9)
  {
    v11 = *a1;
    v10 = a1[1];
    v19 = a1[2];
    v20 = v9;

    sub_1AB45F1E4();
    sub_1AB0273A8();
    v17 = v8;
    v18 = v9;
    sub_1AB461414();
    if ((v12 & 1) == 0)
    {
      v16 = v11;
      do
      {
        sub_1AB460634();
        v8 = v19;
        v9 = v20;
        v17 = v19;
        v18 = v20;
        sub_1AB461414();
      }

      while ((v13 & 1) == 0);
      v11 = v16;
    }

    v17 = v11;
    v18 = v10;

    MEMORY[0x1AC59BA20](61, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v8, v9);

    v8 = v17;
    v14 = v18;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = 0;
  }

  *a2 = v8;
  a2[1] = v14;
}

uint64_t sub_1AB05F904()
{
  ProcessLaunchTimeInterval = JEGestaltGetProcessLaunchTimeInterval();
  MonotonicTime.init(timeInterval:)(ProcessLaunchTimeInterval);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43A640);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = v2;
  *(result + 24) = v3;
  off_1EB434B78 = result;
  return result;
}

JetEngine::MonotonicTime __swiftcall MonotonicTime.init(timeInterval:)(Swift::Double timeInterval)
{
  if ((*&timeInterval & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (timeInterval <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (timeInterval < 9.22337204e18)
  {
    v2 = timeInterval - trunc(timeInterval);
    if (qword_1ED4D1F88 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v4 = v1;
  v5 = timeInterval;
  v6 = swift_once();
  timeInterval = v5;
  v1 = v4;
LABEL_5:
  v3 = round(v2 * *&qword_1ED4D1F90);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *v1 = timeInterval;
  v1[1] = v3;
LABEL_16:
  result.nanoseconds = v7;
  result.seconds = v6;
  return result;
}

void static PageRenderEvent.willPerformAction()()
{
  static MonotonicTime.now.getter(&v3);
  tv_sec = v3.tv_sec;
  tv_nsec = v3.tv_nsec;
  if (qword_1ED4D0050 != -1)
  {
    swift_once();
  }

  v2 = off_1EB434B78;
  os_unfair_lock_lock(off_1EB434B78 + 8);
  *(v2 + 2) = tv_sec;
  *(v2 + 3) = tv_nsec;

  os_unfair_lock_unlock(v2 + 8);
}

uint64_t sub_1AB05FB28()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB05FB64()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AB05FBF8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1AB05FD00()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB181984, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Future.result.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027460;

  return v9(a1, a2, a3);
}

char *sub_1AB05FF60()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  v6 = sub_1AB45FF84();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = v0[2];
  os_unfair_lock_lock(v13 + 4);
  v14 = v0[3];
  if (v1[5])
  {

    os_unfair_lock_unlock(v13 + 4);
  }

  else
  {
    v47.tv_sec = v13;
    v49 = v14;
    v50 = v5;
    v15 = qword_1EB434BA8;
    v48 = v1[4];

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1AB45FFC4();
    __swift_project_value_buffer(v16, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v17 = sub_1AB45FFA4();
    v18 = sub_1AB461234();
    v19 = sub_1AB461314();
    v46 = v2;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v45 = v6;
      v22 = v21;
      v51.tv_sec = v21;
      *v20 = 136315138;
      v23 = sub_1AB462314();
      v25 = sub_1AB030D2C(v23, v24, &v51.tv_sec);

      *(v20 + 4) = v25;
      v26 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v17, v18, v26, "MakeDependency", "object=%s,type=async", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v27 = v22;
      v6 = v45;
      MEMORY[0x1AC59F020](v27, -1, -1);
      MEMORY[0x1AC59F020](v20, -1, -1);
    }

    (*(v7 + 16))(v10, v12, v6);
    sub_1AB460014();
    swift_allocObject();
    v45 = sub_1AB460004();
    (*(v7 + 8))(v12, v6);
    static MonotonicTime.now.getter(&v51);
    tv_nsec = v51.tv_nsec;
    tv_sec = v51.tv_sec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v29 = v51.tv_sec;
    v30 = *(v46 + 80);
    if (v30 == type metadata accessor for StartUpPerformanceEvent())
    {
      v33 = 0;
      v32 = 0;
    }

    else
    {
      type metadata accessor for BaseObjectGraph();
      v31 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v51.tv_sec = v31;

      swift_task_localValuePush();
      v32 = sub_1AB01DBA0(*(v31 + 16));
      swift_task_localValuePop();

      if (v32)
      {

        v33 = sub_1AB043384(v30);

        if (v33)
        {

          sub_1AB460164();
        }
      }

      else
      {
        v33 = 0;
      }
    }

    type metadata accessor for Promise();
    v14 = Promise.__allocating_init()();
    v1[3] = v14;
    v1[4] = 0;
    *(v1 + 40) = 1;

    sub_1AB057304();
    os_unfair_lock_unlock((v47.tv_sec + 16));

    sub_1AB033004(&v51, v34);
    v35 = sub_1AB460BE4();
    v47 = v51;
    v36 = v50;
    (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    v39 = v48;
    *(v38 + 32) = v49;
    *(v38 + 40) = v39;
    *(v38 + 48) = v47;
    v41 = tv_nsec;
    v40 = v45;
    *(v38 + 64) = tv_sec;
    *(v38 + 72) = v41;
    *(v38 + 80) = v40;
    *(v38 + 88) = v29;
    *(v38 + 96) = v33;
    *(v38 + 104) = v32;
    *(v38 + 112) = v14;
    *(v38 + 120) = v37;

    sub_1AB2313A4(0, 0, v36, &unk_1AB4E5990, v38);
  }

  return v14;
}

uint64_t sub_1AB06052C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB060564()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AB0605D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1AB027460;

  return sub_1AB0606F0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1AB0606F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v17;
  *(v8 + 136) = v18;
  *(v8 + 120) = v16;
  *(v8 + 104) = v15;
  *(v8 + 88) = v14;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v9 = *v17;
  v10 = sub_1AB460134();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  v11 = *(v9 + 80);
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB060844, 0, 0);
}

uint64_t sub_1AB060844()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v1 = swift_allocObject();
  *(v0 + 192) = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v11 = *(v0 + 80);
  *(v0 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v7;
  *(v5 + 56) = v11;
  *(v5 + 72) = v4;
  *(v5 + 80) = v1;
  *(v5 + 88) = v3;
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_1AB066238;
  v9 = *(v0 + 184);

  return MEMORY[0x1EEE6DE98](v9, v0 + 40, &unk_1AB4E59A8, v5, 0, 0, 0xD000000000000021, 0x80000001AB507270);
}

uint64_t sub_1AB0609F0(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1AB027460;

  return sub_1AB060AEC(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1AB060AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  *(v13 + 56) = v20;
  *(v13 + 64) = v21;
  *(v13 + 40) = a7;
  *(v13 + 48) = a8;
  *(v13 + 32) = a6;
  v15 = sub_1AB45FFD4();
  *(v13 + 72) = v15;
  *(v13 + 80) = *(v15 - 8);
  *(v13 + 88) = swift_task_alloc();
  v16 = sub_1AB45FF84();
  *(v13 + 96) = v16;
  *(v13 + 104) = *(v16 - 8);
  *(v13 + 112) = swift_task_alloc();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v17 = swift_task_alloc();
  *(v13 + 120) = v17;
  *v17 = v13;
  v17[1] = sub_1AB063888;

  return sub_1AB06385C(a1, a2, a3, (v13 + 16), v22);
}

uint64_t sub_1AB060C9C()
{
  if (qword_1EB434948 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v1 = *(v0 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1AB033054(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AB033054((v2 > 1), v3 + 1, 1, v1);
  }

  *(v0 + 80) = v1;
  v4 = *(v0 + 64);
  *(v1 + 2) = v3 + 1;
  *&v1[16 * v3 + 32] = v4;
  *(v0 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1AB065E1C;
  v6 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);

  return MEMORY[0x1EEE6DE98](v7, v0 + 24, v8, v6, 0, 0, 0xD000000000000024, 0x80000001AB503F50);
}

uint64_t BaseObjectGraph.inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return BaseObjectGraph._inject<A>(_:)(a1, a2, a3);
}

uint64_t BaseObjectGraph._inject<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_1AB461354();
  v4[6] = v7;
  v4[7] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[8] = v8;
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v4;
  v9[1] = sub_1AB061F14;

  return BaseObjectGraph._injectIfAvailable<A>(_:)(v8, a2, a3);
}

uint64_t BaseObjectGraph._injectIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB06139C, 0, 0);
}

JetEngine::LogMessage::StringInterpolation __swiftcall LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)(JetEngine::LogMessage::StringInterpolation literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  if (__OFADD__(literalCapacity.components._rawValue, interpolationCount))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v2->components._rawValue = MEMORY[0x1E69E7CC0];
    literalCapacity.components._rawValue = sub_1AB0168A8(0, (literalCapacity.components._rawValue + interpolationCount) & ~((literalCapacity.components._rawValue + interpolationCount) >> 63), 0, v4);
    v3->components._rawValue = literalCapacity.components._rawValue;
  }

  return literalCapacity;
}

__n128 sub_1AB061080(uint64_t a1, char a2)
{
  sub_1AB01522C(a1, v11);
  v12 = 0u;
  v13 = 0u;
  sub_1AB0169C4(v11, &v12);
  v14 = a2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1AB0168A8(0, *(v4 + 2) + 1, 1, v4);
    *v2 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[40 * v7];
  result = v12;
  v10 = v13;
  v8[64] = v14;
  *(v8 + 2) = result;
  *(v8 + 3) = v10;
  *v2 = v4;
  return result;
}

uint64_t sub_1AB061160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027554;

  return sub_1AB061214(a1, v5, v6, v4);
}

uint64_t sub_1AB061214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB061238, 0, 0);
}

uint64_t sub_1AB061238()
{
  v0[2] = *(v0[4] + 16);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1AB061B90;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];

  return sub_1AB0612E0(v4, v2, v3);
}

uint64_t sub_1AB0612E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a2;
  v4[19] = a3;
  v4[17] = a1;
  v4[20] = *(a3 - 8);
  v5 = swift_task_alloc();
  v6 = *v3;
  v4[21] = v5;
  v4[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1AB06148C, 0, 0);
}

uint64_t sub_1AB06139C()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_1AB461354();
  *v3 = v0;
  v3[1] = sub_1AB061DD8;
  v5 = *(v0 + 16);

  return sub_1AB0407C0(v5, &unk_1AB4EFD60, v2, v4);
}

uint64_t sub_1AB06148C()
{
  if (*(*(v0 + 176) + 16) && (v1 = sub_1AB016558(*(v0 + 144)), (v2 & 1) != 0))
  {
    sub_1AB0165C4(*(*(v0 + 176) + 56) + 32 * v1, v0 + 48);
    sub_1AB014B78((v0 + 48), (v0 + 16));
    sub_1AB0165C4(v0 + 16, v0 + 80);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 160);
      v4 = *(v0 + 152);
      v5 = *(v0 + 136);
      (*(v3 + 32))(v5, *(v0 + 168), v4);
      (*(v3 + 56))(v5, 0, 1, v4);
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
      goto LABEL_13;
    }

    type metadata accessor for DependencyCell();
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 152);
      v16 = *(v0 + 160);
      v17 = *(v0 + 136);
      sub_1AB031D8C();

      (*(v16 + 56))(v17, 0, 1, v15);
      goto LABEL_12;
    }

    type metadata accessor for ThrowingDependencyCell();
    if (swift_dynamicCast())
    {
      sub_1AB442FA0();
      (*(*(v0 + 160) + 56))(*(v0 + 136), 0, 1, *(v0 + 152));

      goto LABEL_12;
    }

    v19 = type metadata accessor for DependencyPromise();
    if (swift_dynamicCast())
    {
      *(v0 + 184) = *(v0 + 128);
      v20 = swift_task_alloc();
      *(v0 + 192) = v20;
      WitnessTable = swift_getWitnessTable();
      *v20 = v0;
      v20[1] = sub_1AB063CB0;
      v22 = *(v0 + 136);

      return Future.result.getter(v22, v19, WitnessTable);
    }

    else
    {
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
      sub_1AB461D64();
      MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
      v23 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v23);

      MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
      return sub_1AB461884();
    }
  }

  else
  {
    v6 = sub_1AB01D56C(*(v0 + 144), *(v0 + 152));
    if (!v6)
    {
      (*(*(v0 + 160) + 56))(*(v0 + 136), 1, 1, *(v0 + 152));
LABEL_13:

      v18 = *(v0 + 8);

      return v18();
    }

    v8 = v6;
    v9 = v7;
    v10 = swift_task_alloc();
    *(v0 + 208) = v10;
    *v10 = v0;
    v10[1] = sub_1AB0ABBF8;
    v11 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);

    return sub_1AB0AB648(v13, v8, v11, v12, v8, v9);
  }
}

uint64_t sub_1AB061954()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[3];
    (*(v7 + 8))(v1, v6);
    sub_1AB38ECB0(v8, v2);
  }

  (*(v3 + 32))(v0[2], v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB061A78()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v0[2] = v0[7];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1AB061CA4;
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];

  return MEMORY[0x1EEE6DE98](v3, v0 + 2, v4, v2, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB061B90()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1AB38F524;
  }

  else
  {
    v2 = sub_1AB034560;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB061CA4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB38E45C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB061DD8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB268394, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB061F14()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AB3920C0;
  }

  else
  {
    v2 = sub_1AB062028;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB06202C(uint64_t a1)
{
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return (*(v2 + 8))(a1, v2);
  }
}

uint64_t static Bag.fetchBag(forProfile:as:)(__int128 *a1, void *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(&v5, a2, 0);
}

void sub_1AB0620D4()
{
  sub_1AB062170();
  if (v0 <= 0x3F)
  {
    sub_1AB45FD64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AB062170()
{
  if (!qword_1EB433490)
  {
    sub_1AB016760(255, &unk_1ED4D1398);
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB433490);
    }
  }
}

uint64_t sub_1AB0621D8()
{
  v0 = sub_1AB45FD44();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1AB45FD04();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1AB45FD24();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1AB45FD64();
  __swift_allocate_value_buffer(v3, qword_1EB46C1D8);
  __swift_project_value_buffer(v3, qword_1EB46C1D8);
  sub_1AB45FD14();
  sub_1AB45FCF4();
  sub_1AB45FD34();
  return sub_1AB45FD54();
}

uint64_t sub_1AB06233C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB0439B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB062418(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027460;

  return sub_1AB043AA4(a1, v1 + v5);
}

uint64_t sub_1AB0624F4()
{
  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  result = sub_1AB026D00(0xD000000000000012, 0x80000001AB50C4A0);
  byte_1EB4334E0 = (result == 2) | result & 1;
  return result;
}

uint64_t sub_1AB062580(uint64_t a1)
{
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A270);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB435680 = result;
  return result;
}

uint64_t LocalPreferences.__deallocating_deinit()
{
  LocalPreferences.deinit();

  return swift_deallocClassInstance();
}

void LocalPreferences.deinit()
{
  v1 = *(v0 + 56);
  if (v1 && (v2 = *(v0 + 40)) != 0 && (v3 = *(v0 + 48)) != 0)
  {

    v13 = v2;
    v4 = v3;
    os_unfair_lock_lock((v1 + 24));
    v5 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        goto LABEL_15;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        do
        {
LABEL_12:
          v8 &= v8 - 1;

          v12 = sub_1AB460514();

          [v13 removeObserver:v4 forKeyPath:v12 context:0];
        }

        while (v8);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1AB0628A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB0628FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t DeferredLazy.init()()
{
  sub_1AB461354();
  type metadata accessor for os_unfair_recursive_lock_s(255);
  sub_1AB461704();
  *(v0 + 16) = sub_1AB4616F4();
  return v0;
}

uint64_t sub_1AB062A20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(*(v2 + *MEMORY[0x1E69E6B68]) + 16) - 8) + 56))(a2, 1, 1);
}

void *PipelineTask.mapTaskOutput<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1AB062B20(a1, a2, a3, a4, a5, &unk_1F1FFD268, sub_1AB062D04);
}

{
  return sub_1AB062B20(a1, a2, a3, a4, a5, &unk_1F1FFD2B8, sub_1AB063DE8);
}

uint64_t sub_1AB062AE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void *sub_1AB062B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a1;
  v13[6] = a2;

  v14 = PipelineTask.mapTask<A>(_:)(a7, v13, a3);

  return v14;
}

uint64_t PipelineTask.eraseToAnyPipelineTask()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1, v5);
  return AnyPipelineTask.init<A>(_:)(v7, a1, a2);
}

char *sub_1AB062D34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[0] = *a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyPipelineTask();
  AnyPipelineTask.run()();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a2;
  v11[6] = a3;
  v12 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  sub_1AB01C3F4(v16);

  v14 = Promise.flatMap<A>(on:_:)(v16, sub_1AB062E80, v11, v12, WitnessTable);

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v14;
}

uint64_t StartUpPerformanceEvent.record(checkpoint:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);

  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));

  if (!v4)
  {
    sub_1AB405D94("JetEngine/StartUpPerformanceEvent.swift", 39, 2, 145, v2);
  }

  v5 = *(v1 + 40);

  os_unfair_lock_lock(v5 + 6);
  sub_1AB062FCC(&v5[4], v2, &v8);
  os_unfair_lock_unlock(v5 + 6);
  v6 = v8;

  if (v6)
  {

    return sub_1AB3FB5EC();
  }

  return result;
}

unint64_t sub_1AB062FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = sub_1AB0632D0(a2, &v26);
  v6 = v26;
  if (v26 != 1)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AB4D4720;
    v31 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v9._object = 0x80000001AB50E1C0;
    v9._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    v30 = &type metadata for StartUpPerformanceEvent.RawCheckpoint;
    v29[0] = v6;
    sub_1AB01522C(v29, v25);
    v26 = 0u;
    v27 = 0u;
    sub_1AB0169C4(v25, &v26);
    v28 = 0;
    v10 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AB0168A8(0, *(v10 + 2) + 1, 1, v10);
    }

    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1AB0168A8((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[40 * v12];
    v14 = v26;
    v15 = v27;
    v13[64] = v28;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v31 = v10;
    sub_1AB0167A8(v29);
    v16._countAndFlagsBits = 10272;
    v16._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v17 = *(*a1 + 16);
    v30 = MEMORY[0x1E69E6530];
    v29[0] = v17;
    sub_1AB01522C(v29, v25);
    v26 = 0u;
    v27 = 0u;
    sub_1AB0169C4(v25, &v26);
    v28 = 0;
    v18 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
      v31 = v18;
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[40 * v20];
    v22 = v26;
    v23 = v27;
    v21[64] = v28;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v31 = v18;
    sub_1AB0167A8(v29);
    v24._countAndFlagsBits = 0x696E69616D657220;
    v24._object = 0xEB0000000029676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v8 + 32) = v31;
    *&v26 = v7;
    LOBYTE(v29[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v8, v29);
  }

  *a3 = *(*a1 + 16) == 0;
  return result;
}

unint64_t sub_1AB0632D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  sub_1AB4620A4();
  if (a1)
  {
    MEMORY[0x1AC59D3F0](0);
    v6 = a1;
  }

  else
  {
    v6 = 1;
  }

  MEMORY[0x1AC59D3F0](v6);
  result = sub_1AB462104();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_13:
    *a2 = 1;
    return result;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = *(*(v5 + 48) + 8 * v9);
    if (v11)
    {
      break;
    }

    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v11 != a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AB2456A0();
    v13 = v14;
  }

  *a2 = *(*(v13 + 48) + 8 * v9);
  result = sub_1AB16019C(v9);
  *v2 = v14;
  return result;
}

uint64_t sub_1AB063400()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1AB294E88;
  }

  else
  {
    v2 = sub_1AB063514;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB063514()
{
  v27 = v0;
  v1 = (*(v0 + 136) + *(v0 + 232));
  sub_1AB014B78((v0 + 16), *(v0 + 152));
  static MonotonicTime.now.getter(&v26);
  v18 = v1[1];
  v25[0] = *v1;
  v25[1] = v18;
  sub_1AB044C10(v25, &v26);
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v24 = *(v0 + 192);
  v21 = *(v0 + 176);
  v22 = *(v0 + 168);
  v3 = *(v0 + 144);
  v16 = *(v0 + 136);
  v17 = *(v0 + 152);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v19 = *(v0 + 56);
  v20 = *(v0 + 160);
  v23 = *(v0 + 48);
  sub_1AB45F934();
  v2(v6, v4, v8);
  v2(v7, v5, v8);
  sub_1AB45F224();
  v10 = *(v9 + 8);
  v10(v5, v8);
  v10(v4, v8);
  sub_1AB044D4C(v16);
  sub_1AB017FB8(v17, v20, &qword_1EB4396A0);
  *v21 = v19;
  sub_1AB014B78(v20, (v21 + 8));
  v11 = *(v3 + 28);
  v12 = *(v22 + 24);
  v13 = sub_1AB45F244();
  (*(*(v13 - 8) + 32))(v21 + v12, &v20[v11], v13);
  sub_1AB0637F8(v21, v24);
  swift_storeEnumTagMultiPayload();
  sub_1AB017FB8(v24, v23, &qword_1EB439678);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1AB0637F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ResolvedDependency();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB06385C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = a5;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 64) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1AB060C9C, 0, 0);
}

uint64_t sub_1AB063888()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1AB2B6E44;
  }

  else
  {
    v2 = sub_1AB065F6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB06399C()
{
  v10 = v0;
  if (v0[14])
  {
    v2 = v0[19];
    v1 = v0[20];
    v3 = v0[18];
    (*(v2 + 104))(v1, *MEMORY[0x1E6977AC8], v3);
    sub_1AB460174();
    (*(v2 + 8))(v1, v3);
  }

  if (v0[15])
  {
    DynamicType = swift_getDynamicType();
    StartUpPerformanceEvent.record(checkpoint:)(&DynamicType);
  }

  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[22];
  Promise.resolve(_:)(v4);

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AB063AC8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB2B7010, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB063C04()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];

  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB063CB0()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1AB293F50;
  }

  else
  {
    v2 = sub_1AB063C04;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1AB063E00(void *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = *a1;
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyPipelineTask();
  AnyPipelineTask.run()();
  sub_1AB01C3F4(v7);
  v5 = Promise.map<A>(on:_:)(v7, a2, a3);

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t sub_1AB063EC8()
{

  if (v0)
  {

    v1 = sub_1AB38C660;
  }

  else
  {
    v1 = sub_1AB06635C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AB063FEC()
{
  result = sub_1AB064540(&unk_1F1FF1140);
  qword_1ED4D3ED8 = result;
  return result;
}

uint64_t sub_1AB064028()
{
  v0 = sub_1AB45FFC4();
  __swift_allocate_value_buffer(v0, qword_1ED4D0B00);
  __swift_project_value_buffer(v0, qword_1ED4D0B00);
  return sub_1AB45FFB4();
}

unint64_t sub_1AB0640B0()
{
  result = qword_1ED4D0AA0;
  if (!qword_1ED4D0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0AA0);
  }

  return result;
}

unint64_t sub_1AB064118()
{
  result = qword_1ED4D0A38;
  if (!qword_1ED4D0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0A38);
  }

  return result;
}

unint64_t sub_1AB064170()
{
  result = qword_1ED4D0A40;
  if (!qword_1ED4D0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0A40);
  }

  return result;
}

unint64_t sub_1AB0641D8()
{
  result = qword_1ED4D0AB8;
  if (!qword_1ED4D0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0AB8);
  }

  return result;
}

uint64_t sub_1AB064230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439950);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439958);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = result;
  qword_1ED4D3EB0 = v0;
  return result;
}

uint64_t sub_1AB0642C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB05CF1C(**(v2 + 16), *(*(v2 + 16) + 8), *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1AB064308()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1AB26F0B0;
  }

  else
  {
    v2 = sub_1AB064860;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB064438(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URLJetPackAssetRequest();
  MEMORY[0x1EEE9AC00](v3);
  sub_1AB28E900(a2, &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for URLJetPackAssetRequest);
  sub_1AB28E8B8(&qword_1ED4D04A8, type metadata accessor for URLJetPackAssetRequest);
  sub_1AB461564();
  return sub_1AB05E924(0, v7);
}

uint64_t sub_1AB064540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437608);
    v3 = sub_1AB4615A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_1AB4620A4();
      sub_1AB4620D4();
      result = sub_1AB462104();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1AB06467C()
{
  result = qword_1ED4D0D88[0];
  if (!qword_1ED4D0D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED4D0D88);
  }

  return result;
}

unint64_t sub_1AB0646F4()
{
  result = qword_1ED4D0A98;
  if (!qword_1ED4D0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0A98);
  }

  return result;
}

unint64_t sub_1AB064748()
{
  result = qword_1ED4D0AC0;
  if (!qword_1ED4D0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0AC0);
  }

  return result;
}

__n128 sub_1AB0647E4()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];
  v1 = v5;
  v3 = v4;

  result = v3;
  xmmword_1ED4D3E90 = v3;
  qword_1ED4D3EA0 = v1;
  return result;
}

void sub_1AB064860()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock(v2 + 6);
  sub_1AB28EE7C(&v2[4]);
  if (v1)
  {
    v4 = (v0[7] + 24);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    os_unfair_lock_unlock((v0[7] + 24));

    v5 = v0[1];

    v5();
  }
}

uint64_t ValidatedJetPackLoadingCoordinator.init(session:assetLocation:bag:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = sub_1AB0149B0(a2, (a4 + 1));
  a4[6] = a3;
  return result;
}

uint64_t sub_1AB0649B4()
{
  v1 = v0[45];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[26];
  v6 = *(v0[41] - 8);
  v0[46] = v6;
  v8 = v6 + 56;
  v7 = *(v6 + 56);
  v0[47] = v7;
  v0[48] = v8 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1);
  v9 = v5[4];
  v10 = v5[5];
  __swift_project_boxed_opaque_existential_1Tm(v5 + 1, v9);
  (*(v10 + 40))(*v5, v5[6], v9, v10);
  sub_1AB460C44();
  (*(v3 + 8))(v2, v4);
  v0[49] = 0;
  v11 = swift_task_alloc();
  v0[50] = v11;
  *v11 = v0;
  v11[1] = sub_1AB065558;
  v12 = v0[38];
  v13 = v0[34];

  return MEMORY[0x1EEE6DB90](v13, 0, 0, v12, v0 + 20);
}

void sub_1AB064B5C(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1AB45F9B4() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v13 + 80);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = ((((v16 + ((v15 + 32) & ~v15) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 42;
  v20 = ((((((v15 + 40) & ~(v15 | 7)) + v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = ((v20 + v17) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v18 < a2)
  {
    v23 = ~v18 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_55:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v21) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v12 >= v14)
  {
    if (v12 >= a2)
    {
      if ((v10 & 0x80000000) != 0)
      {
        v30 = ((a1 + (v15 | 7) + 40) & ~(v15 | 7));
        if (v11 >= a2)
        {
          v32 = *(v9 + 56);

          v32((v15 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15, a2);
        }

        else
        {
          v31 = ~v11 + a2;
          bzero(v30, v19);
          if (v19 <= 3)
          {
            *v30 = v31;
          }

          else
          {
            *v30 = v31;
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(a1 + 4) = 0u;
        *(a1 + 12) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 3) = (a2 - 1);
      }
    }

    else if (((((((v15 + 40) & ~(v15 | 7)) + v19 + 15) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v29 = ~v12 + a2;
      bzero(a1, v20);
      *a1 = v29;
    }
  }

  else
  {
    v28 = *(v13 + 56);

    v28((a1 + v20 + v17) & ~v17, a2, v14);
  }
}

uint64_t sub_1AB064F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1AB064FDC()
{
  v12 = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + 16);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_1AB06512C((v2 + 16), &v11);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v11;
  *(v0 + 64) = v11;

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = type metadata accessor for JetPackAsset(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  *v5 = v0;
  v5[1] = sub_1AB064308;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v8, v4, v6, v7, v9);
}

uint64_t sub_1AB06512C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AB05628C(a1, v2[2], v2[3], v2[4]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AB065160()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1AB1A891C;
  }

  else
  {
    v2 = sub_1AB065BE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB065274(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1AB45F9B4() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((((((v12 + 40) & ~(v12 | 7)) + ((((v13 + ((v12 + 32) & ~v12) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + v14 + 16;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v17 = (v16 & ~v14) + *(v10 + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v15 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      if (v9 >= v11)
      {
        if ((v8 & 0x80000000) != 0)
        {
          v27 = *(v7 + 48);

          return v27((v12 + ((((a1 + (v12 | 7) + 40) & ~(v12 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12);
        }

        else
        {
          v26 = *(a1 + 3);
          if (v26 >= 0xFFFFFFFF)
          {
            LODWORD(v26) = -1;
          }

          return (v26 + 1);
        }
      }

      else
      {
        v25 = *(v10 + 48);

        return v25((a1 + v16) & ~v14, v11);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = (v16 & ~v14) + *(v10 + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

uint64_t sub_1AB065558()
{

  if (v0)
  {
    v1 = sub_1AB1A880C;
  }

  else
  {
    v1 = sub_1AB065668;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AB065668()
{
  v1 = *(v0 + 272);
  if ((*(*(v0 + 248) + 48))(v1, 1, *(v0 + 240)) == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 392);
    sub_1AB4622E4();
    v32 = *(v0 + 48);
    v33 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1AB4D4720;
    v35 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v4._object = 0x80000001AB501250;
    v4._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    *(v0 + 120) = MEMORY[0x1E69E6530];
    *(v0 + 96) = v2;
    sub_1AB01522C(v0 + 96, v0 + 128);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1AB0169C4(v0 + 128, v0 + 56);
    *(v0 + 88) = 0;
    v5 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AB0168A8(0, *(v35 + 2) + 1, 1, v35);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1AB0168A8((v6 > 1), v7 + 1, 1, v5);
    }

    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    v12 = *(v0 + 336);
    v31 = *(v0 + 328);
    *(v5 + 2) = v7 + 1;
    v13 = &v5[40 * v7];
    v14 = *(v0 + 56);
    v15 = *(v0 + 72);
    v13[64] = *(v0 + 88);
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    sub_1AB0167A8(v0 + 96);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v3 + 32) = v5;
    Logger.debug(_:)(v3, v33, v32);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    (*(v10 + 16))(v11, v9, v12);
    v17 = (*(v8 + 48))(v11, 1, v31);
    v18 = *(v10 + 8);
    if (v17 == 1)
    {
      v19 = *(v0 + 360);
      v20 = *(v0 + 336);
      v18(*(v0 + 352), v20);
      sub_1AB1A8A3C();
      swift_allocError();
      swift_willThrow();
      v18(v19, v20);
    }

    else
    {
      v27 = *(v0 + 368);
      v28 = *(v0 + 352);
      v29 = *(v0 + 328);
      v30 = *(v0 + 168);
      v18(*(v0 + 360), *(v0 + 336));
      (*(v27 + 32))(v30, v28, v29);
    }

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v22 = *(v0 + 176);
    sub_1AB065B84(v1, *(v0 + 264));
    v34 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 408) = v23;
    *v23 = v0;
    v23[1] = sub_1AB065160;
    v24 = *(v0 + 264);
    v25 = *(v0 + 232);

    return v34(v25, v24);
  }
}

uint64_t sub_1AB065B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB065BE8()
{
  v17 = v0[49];
  v16 = v0[47];
  v1 = v0[45];
  v2 = v0[41];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  (*(v0[43] + 8))(v1, v0[42]);
  sub_1AB065B84(v3, v4);
  (*(v7 + 32))(v6, v5, v8);
  sub_1AB065D60(v4, v6, v8, v1);
  v9 = v16(v1, 0, 1, v2);
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  else
  {
    v0[49] = v17 + 1;
    v14 = swift_task_alloc();
    v0[50] = v14;
    *v14 = v0;
    v14[1] = sub_1AB065558;
    v12 = v0[38];
    v9 = v0[34];
    v13 = v0 + 20;
    v10 = 0;
    v11 = 0;
  }

  return MEMORY[0x1EEE6DB90](v9, v10, v11, v12, v13);
}

uint64_t sub_1AB065D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AB065B84(a1, a4);
  v7 = type metadata accessor for ValidatedJetPackLoadingCoordinator.ValidatedJetPackResult();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t sub_1AB065E1C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB20E038, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB065F6C()
{
  v25 = v0;
  static MonotonicTime.now.getter(&v24);
  tv_sec = v24.tv_sec;
  tv_nsec = v24.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v3 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
  v4 = v0[5] / *&qword_1ED4D1F90 + v0[4];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v5 = v3 - v4;
  v6 = sub_1AB45FFC4();
  __swift_project_value_buffer(v6, qword_1EB46C230);

  v7 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v8 = sub_1AB461224();

  if (sub_1AB461314())
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];

    sub_1AB460024();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v13 = "selfTime=%f";
      v12 = 1;
    }

    v14 = v0[7];
    v15 = swift_slowAlloc();
    *v15 = 0;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2048;
    os_unfair_lock_lock((v14 + 24));
    v16 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));
    *(v15 + 4) = v5 - v16;
    v17 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v7, v8, v17, "MakeDependency", v13, v15, 0xCu);
    MEMORY[0x1AC59F020](v15, -1, -1);
  }

  v19 = v0[13];
  v18 = v0[14];
  v20 = v0[12];
  v21 = v0[8];

  (*(v19 + 8))(v18, v20);
  os_unfair_lock_lock((v21 + 24));
  *(v21 + 16) = v5 + *(v21 + 16);
  os_unfair_lock_unlock((v21 + 24));

  v22 = v0[1];

  return v22();
}

uint64_t sub_1AB066238()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1AB2B6C7C;
  }

  else
  {
    v2 = sub_1AB06399C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB06635C()
{
  v61 = v0;
  v2 = *(v0 + 768);
  if ((*(*(v0 + 744) + 48))(v2, 1, *(v0 + 736)) == 1)
  {
    v3 = *(v0 + 904);
    v4 = *(v0 + 888);
    v5 = *(v0 + 880);
    v6 = *(v0 + 872);
    v7 = *(v0 + 856);
    v59 = *(v0 + 848);
    v8 = *(v0 + 688);
    v9 = *(v0 + 672);
    (*(*(v0 + 784) + 8))(*(v0 + 792), *(v0 + 776));
    v60[3] = &type metadata for AsyncObjectGraphMetrics;
    v60[0] = v3;
    sub_1AB1CE624(v60, &type metadata for AsyncObjectGraphMetrics);
    sub_1AB2B5ED0(v4, (v0 + 648), v9);

    sub_1AB38DE5C(v5, v8);

    (*(v7 + 8))(v6, v59);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  sub_1AB066990(v2, v12);
  sub_1AB014A58(v12, v13, &qword_1EB439678);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = **(v0 + 752);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v0 + 888);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1AB2B0EE8(0, v16[2] + 1, 1, *(v0 + 888));
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB2B0EE8((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    v16[v18 + 4] = v14;
    v19 = 1;
  }

  else
  {
    sub_1AB0637F8(*(v0 + 752), *(v0 + 704));
    v19 = 0;
    v16 = *(v0 + 888);
  }

  v20 = *(v0 + 720);
  v21 = *(v0 + 712);
  v22 = *(v0 + 704);
  (*(v20 + 56))(v22, v19, 1, v21);
  v24 = *(v20 + 48);
  v23 = v20 + 48;
  if (v24(v22, 1, v21) == 1)
  {
    v25 = *(v0 + 704);
    sub_1AB014AC0(*(v0 + 760), &qword_1EB439678);
    sub_1AB014AC0(v25, &qword_1EB439670);
LABEL_32:
    *(v0 + 888) = v16;
    v58 = swift_task_alloc();
    *(v0 + 896) = v58;
    *v58 = v0;
    v58[1] = sub_1AB063EC8;
    v43 = *(v0 + 776);
    v40 = *(v0 + 768);
    v44 = v0 + 656;
    v41 = 0;
    v42 = 0;

    return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44);
  }

  v26 = *(v0 + 728);
  sub_1AB0637F8(*(v0 + 704), v26);
  v27 = *v26;
  sub_1AB0165C4((v26 + 1), v0 + 368);
  v28 = *(v0 + 648);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 664) = v28;
  v30 = sub_1AB016558(v27);
  v32 = *(v28 + 16);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_24;
  }

  v23 = v31;
  v1 = (v0 + 664);
  if (*(v28 + 24) >= v35)
  {
    if (v29)
    {
LABEL_21:
      v37 = *v1;
      if (v23)
      {
LABEL_22:
        v38 = (v37[7] + 32 * v30);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        sub_1AB014B78((v0 + 368), v38);
LABEL_27:
        *(v0 + 648) = v37;
        v47 = sub_1AB462314();
        v49 = v48;
        sub_1AB45F234();
        v51 = v50;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(v0 + 904);
        if ((v52 & 1) == 0)
        {
          v53 = sub_1AB01E858(0, *(v53 + 2) + 1, 1, *(v0 + 904));
        }

        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_1AB01E858((v54 > 1), v55 + 1, 1, v53);
        }

        v56 = *(v0 + 760);
        sub_1AB066D28(*(v0 + 728));
        sub_1AB014AC0(v56, &qword_1EB439678);
        *(v53 + 2) = v55 + 1;
        v57 = &v53[24 * v55];
        *(v57 + 4) = v47;
        *(v57 + 5) = v49;
        *(v57 + 6) = v51;
        *(v0 + 904) = v53;
        goto LABEL_32;
      }

LABEL_25:
      v37[(v30 >> 6) + 8] |= 1 << v30;
      *(v37[6] + 8 * v30) = v27;
      v40 = sub_1AB014B78((v0 + 368), (v37[7] + 32 * v30));
      v45 = v37[2];
      v34 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v34)
      {
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v40, v41, v42, v43, v44);
      }

      v37[2] = v46;
      goto LABEL_27;
    }

LABEL_24:
    v39 = v30;
    sub_1AB01A034();
    v30 = v39;
    v37 = *v1;
    if (v23)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  sub_1AB01A340(v35, v29);
  v30 = sub_1AB016558(v27);
  if ((v23 & 1) == (v36 & 1))
  {
    goto LABEL_21;
  }

  return sub_1AB461FC4();
}

uint64_t sub_1AB066990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1AB066A14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AB45F244();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB066ACC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1AB45F244();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void require(_:_:file:line:)(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a1() & 1) == 0)
  {

    sub_1AB41C4F4(a5, a6, a7, a8, a3);
  }
}

unint64_t sub_1AB066C28()
{
  result = qword_1ED4D0D70;
  if (!qword_1ED4D0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0D70);
  }

  return result;
}

unint64_t sub_1AB066C80()
{
  result = qword_1ED4D0D78;
  if (!qword_1ED4D0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0D78);
  }

  return result;
}

unint64_t sub_1AB066CD4()
{
  result = qword_1ED4D1D48;
  if (!qword_1ED4D1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D1D48);
  }

  return result;
}

uint64_t sub_1AB066D28(uint64_t a1)
{
  v2 = type metadata accessor for _ResolvedDependency();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1AB066DD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1AB0165C4(v4, &v15);
  sub_1AB016760(0, qword_1ED4D1BA0);
  if (swift_dynamicCast())
  {
    v8 = v13 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *&v15 = a1;
    *(&v15 + 1) = a2;

    v9 = v13;
    v10 = [v9 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v10)
    {
      sub_1AB461494();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      *(a3 + 24) = &type metadata for FoundationValue;
      *(a3 + 32) = &off_1F1FFB5A8;
      v11 = swift_allocObject();
      *a3 = v11;
      sub_1AB014B78(&v15, (v11 + 16));

      return result;
    }
  }

  sub_1AB014AC0(&v15, &unk_1EB437E60);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1AB066F68()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

double JSONObject.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1AB01EC0C(v4, v12);
  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    (*(v9 + 8))(&v15, a1, a2, v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if (*(&v16 + 1) != 1)
    {
      result = *&v15;
      v11 = v16;
      *a3 = v15;
      *(a3 + 16) = v11;
      *(a3 + 32) = v17;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v12, &qword_1EB436BA0);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1AB06708C()
{
  sub_1AB0165C4(v0, v3);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

char *sub_1AB0670E8()
{
  v1 = *v0;
  sub_1AB461354();
  type metadata accessor for Promise();
  v2 = Promise.__allocating_init()();
  v3 = *(v1 + 112);
  type metadata accessor for Promise();
  Promise<A>.init(_:)([v0[2] valuePromise]);
  v5 = v0[3];
  v4 = v0[4];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v5;
  v6[5] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v8 = sub_1AB016760(0, &qword_1ED4D2060);
  swift_retain_n();

  v10[3] = v8;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_1AB461124();
  Promise.then(perform:orCatchError:on:)(sub_1AB088DD8, v6, sub_1AB089F00, v7, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v2;
}

uint64_t sub_1AB067284()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0672C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0672FC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1AB017200(a3, a4);
          return sub_1AB17E420(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t JSONObject.string.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v1 = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0);
  }

  return v1;
}

uint64_t AnyActionTypes.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2 | 0x8000000000000000;
  return result;
}

unint64_t AnyIntentTypes.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  result = sub_1AB067588(MEMORY[0x1E69E7CC0]);
  a3[2] = result;
  return result;
}

unint64_t sub_1AB067588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4380F8);
    v3 = sub_1AB461924();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v15 = *(i - 1);
      v7 = *i;

      result = sub_1AB014DB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v15;
      *(v11 + 16) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1AB0676CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0);
  v2 = *v0;
  v3 = sub_1AB461904();
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
        sub_1AB0165C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1AB014B78(v25, (*(v4 + 56) + v22));
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

uint64_t OSLogger.Subsystem.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

char *Promise.__allocating_init(on:executor:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = Promise.__allocating_init()();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v7);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v6;
  v10 = *(v8 + 8);

  v10(sub_1AB067988, v9, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_1AB067994(void (*a1)(uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  swift_retain_n();
  a1(j___s9JetEngine7PromiseC7resolve7toValueyx_tF, a3, j___s9JetEngine7PromiseC7resolve7toErrorys0F0_p_tF, a3);
}

void *IntentDispatchOptions.__allocating_init()()
{
  v0 = sub_1AB014B20();
  v2 = MEMORY[0x1AC59B670](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1AB014B88(MEMORY[0x1E69E7CC0]);
  result = swift_allocObject();
  result[3] = 0xD000000000000017;
  result[4] = 0x80000001AB50F340;
  result[2] = v2;
  return result;
}

uint64_t IntentDispatchOptions.withJSONContext(_:)(uint64_t *a1)
{
  v1 = *a1;
  v4[4] = &type metadata for JSONContext;
  v4[0] = &type metadata for JSONContext;
  v4[1] = v1;

  v2 = sub_1AB0300F4(v4);
  sub_1AB01667C(v4);
  return v2;
}

uint64_t static StaticIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = type metadata accessor for StaticIntent();
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  (*(a3 + 40))(v26, a2, a3);
  v25 = a1;
  swift_getExtendedExistentialTypeMetadata();
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, v7);
    (*(v13 + 32))(v15, v12, v7);
    v18 = *(a1 - 8);
    v19 = v24;
    (*(v18 + 32))(v24, v15, a1);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v17(v12, 1, 1, v7);
    (*(v9 + 8))(v12, v8);
    v18 = *(a1 - 8);
    v21 = v24;
  }

  return (*(v18 + 56))(v21, v20, 1, a1);
}

char *sub_1AB067DE4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1AB068000()
{
  v1 = **(v0 + 176);
  (*(*(v0 + 168) + 40))(*(v0 + 160));
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 56), v2);
  v4 = (*(v3 + 32))(v2, v3);
  if (*(v1 + 16))
  {
    v6 = sub_1AB014DB4(v4, v5);
    v8 = v7;

    if (v8)
    {
      v10 = *(v0 + 160);
      v9 = *(v0 + 168);
      v19 = *(v0 + 144);
      sub_1AB01494C(*(v1 + 56) + 40 * v6, v0 + 96);
      sub_1AB0149B0((v0 + 96), v0 + 16);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
      v11 = swift_task_alloc();
      *(v0 + 184) = v11;
      *(v11 + 16) = v10;
      *(v11 + 24) = v9;
      *(v11 + 32) = v0 + 16;
      *(v11 + 40) = v19;
      v12 = swift_task_alloc();
      *(v0 + 192) = v12;
      swift_getAssociatedTypeWitness();
      v13 = type metadata accessor for IntentOutcome();
      *v12 = v0;
      v12[1] = sub_1AB070AE0;
      v14 = *(v0 + 136);

      return sub_1AB0407C0(v14, &unk_1AB4F4D88, v11, v13);
    }
  }

  else
  {
  }

  v16 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v16, 1, 1, AssociatedTypeWitness);
  v18 = *(v0 + 8);

  return v18();
}

void *Bag.subscript.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v6 = [*v3 doubleForKey_];
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
  result = swift_allocObject();
  result[2] = v6;
  result[3] = sub_1AB1EEBE8;
  result[4] = v7;
  *a3 = result;
  return result;
}

unint64_t sub_1AB068378()
{
  result = qword_1EB435908;
  if (!qword_1EB435908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43CF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435908);
  }

  return result;
}

uint64_t sub_1AB0683DC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1AB068494()
{
  result = sub_1AB069E84(&unk_1F1FF0EF8);
  qword_1EB46C248 = result;
  unk_1EB46C250 = v1;
  return result;
}

uint64_t sub_1AB0684C0()
{
  sub_1AB0165C4(v0, v5);
  sub_1AB016760(0, &qword_1ED4D1940);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  [v4 doubleValue];
  v2 = v1;

  return v2;
}

uint64_t JSONObject.isNull.getter()
{
  sub_1AB01EC0C(v0, v5);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    v3 = (*(v2 + 128))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_1AB014AC0(v5, &qword_1EB436BA0);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1AB068604@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = Array<A>.init(deserializing:using:)(a1, a2, *(a3 + 16), *(a4 - 8));
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1AB068638@<X0>(void *a1@<X8>)
{
  sub_1AB0165C4(v1, v8);
  sub_1AB016760(0, &qword_1ED4D0BE0);
  if (swift_dynamicCast())
  {
    v3 = v7;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438018);
    v5 = sub_1AB384CF0;
    v6 = &off_1F2000AF8;
  }

  else
  {
    result = 0;
    v6 = 0;
    v3 = 0;
    v5 = 0;
  }

  a1[3] = result;
  a1[4] = v6;
  *a1 = v3;
  a1[1] = v5;
  a1[2] = 0;
  return result;
}

unint64_t sub_1AB0686F8()
{
  result = qword_1EB4353A8;
  if (!qword_1EB4353A8)
  {
    sub_1AB068778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4353A8);
  }

  return result;
}

unint64_t sub_1AB068750(uint64_t a1)
{
  result = sub_1AB0686F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AB068778()
{
  result = qword_1ED4D0BE0;
  if (!qword_1ED4D0BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D0BE0);
  }

  return result;
}

unint64_t sub_1AB0687C4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AB02FC38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Array<A>.init(tryDeserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v5;
  v6 = JSONArray.compactMap<A>(_:)(sub_1AB2B2AD4, v8, a3);

  sub_1AB06A37C(a1);
  return v6;
}

{
  v7 = *a2;
  sub_1AB014A58(a1, &v27, &qword_1EB436BA0);
  v8 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {

    sub_1AB014AC0(&v27, &qword_1EB436BA0);
    goto LABEL_5;
  }

  v9 = v29;
  __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
  v10 = (*(v9 + 128))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  if (v10)
  {

LABEL_5:
    v11 = sub_1AB4602B4();
    sub_1AB066D84(a1);
    return v11;
  }

  sub_1AB014A58(a1, v21, &qword_1EB436BA0);
  v12 = v22;
  if (v22)
  {
    v13 = v23;
    __swift_project_boxed_opaque_existential_1Tm(v21, v22);
    (*(v13 + 152))(&v24, v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    if (*(&v25 + 1))
    {
      v27 = v24;
      v28 = v25;
      v29 = v26;
      sub_1AB06A28C(&v27, &v24);
      v21[0] = v7;
      v11 = Array<A>.init(tryDeserializing:using:)(&v24, v21, a3, a4);
      sub_1AB066D84(a1);
      sub_1AB06A37C(&v27);
      return v11;
    }
  }

  else
  {
    sub_1AB014AC0(v21, &qword_1EB436BA0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  sub_1AB014AC0(&v24, &qword_1EB437EF8);
  v14 = sub_1AB460A64();
  sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, v7, &v27);

  sub_1AB014A58(&v27, &v24, &qword_1EB436EC0);
  v15 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v16 = v26;
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    sub_1AB163664();
    v17 = swift_allocError();
    v18 = MEMORY[0x1E69E7CC0];
    *v19 = v14;
    v19[1] = v18;
    v19[2] = 0;
    v19[3] = 0;
    (*(v16 + 8))(v14, v17, v15, v16);

    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  }

  else
  {
    sub_1AB014AC0(&v24, &qword_1EB436EC0);
  }

  v11 = sub_1AB4602B4();
  sub_1AB066D84(a1);
  sub_1AB014AC0(&v27, &qword_1EB436EC0);
  return v11;
}

uint64_t sub_1AB0688E4(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v67 = a1;
  v68 = a2;
  v58 = sub_1AB461354();
  v61 = *(v58 - 8);
  v9 = MEMORY[0x1EEE9AC00](v58);
  v73 = &v48 - v10;
  v64 = *(a4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v48 - v13;
  v15 = *(a3 + 16);
  v14 = *(a3 + 24);
  v69 = a3;
  v65 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = &v48 - v16;
  v17 = sub_1AB461354();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v59 = &v48 - v19;
  v71 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v50 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v75 = sub_1AB4602B4();
  (*(v14 + 16))(v15, v14);
  v66 = a4;
  v25 = v22;
  v55 = sub_1AB460A64();
  sub_1AB460984();
  v26 = *(v71 + 16);
  v70 = v4;
  v26(v21, v4, v15);
  v27 = v59;
  sub_1AB4607F4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v71 = v25;
  sub_1AB4613F4();
  v29 = v60;
  v30 = v60 + 48;
  v31 = AssociatedTypeWitness;
  v65 = *(v60 + 48);
  if ((v65)(v27, 1) == 1)
  {
LABEL_2:
    (*(v50 + 8))(v24, v71);
    return v75;
  }

  else
  {
    v33 = *(v29 + 32);
    v62 = (v64 + 6);
    v63 = v33;
    v54 = (v64 + 4);
    v53 = (v64 + 2);
    v52 = v64 + 1;
    v64 = (v29 + 8);
    v51 = (v61 + 8);
    v60 = v29 + 32;
    while (1)
    {
      v34 = v72;
      v63(v72, v27, v31);
      (*(v70 + *(v69 + 36)))(v74, v34);
      v67(v74);
      if (v6)
      {
        break;
      }

      v35 = v66;
      if ((*v62)(v73, 1, v66) == 1)
      {
        sub_1AB066D84(v74);
        (*v64)(v72, v31);
        (*v51)(v73, v58);
      }

      else
      {
        v36 = *v54;
        v61 = 0;
        v37 = v31;
        v38 = v56;
        v36(v56, v73, v35);
        (*v53)(v57, v38, v35);
        v39 = v30;
        v40 = AssociatedConformanceWitness;
        v41 = v24;
        v42 = v35;
        v43 = v72;
        sub_1AB460A14();
        v44 = v38;
        v45 = v37;
        v6 = v61;
        v27 = v59;
        v46 = v42;
        v24 = v41;
        AssociatedConformanceWitness = v40;
        v30 = v39;
        (*v52)(v44, v46);
        sub_1AB066D84(v74);
        v47 = v43;
        v31 = v45;
        (*v64)(v47, v45);
      }

      sub_1AB4613F4();
      if (v65(v27, 1, v31) == 1)
      {
        goto LABEL_2;
      }
    }

    sub_1AB066D84(v74);
    (*v64)(v72, v31);
    (*(v50 + 8))(v24, v71);
  }
}

uint64_t sub_1AB069018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v94 = a2;
  v5 = a1;
  v80 = *a4;
  v6 = *v4;
  v82 = v4[1];
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v77 = v6;
  v78 = v11;
  v76 = result;
  if (v10)
  {
    while (1)
    {
LABEL_8:
      while (1)
      {
        v15 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v16 = (*(v5 + 48) + ((v13 << 10) | (16 * v15)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 16);

        if (v19)
        {
          v20 = sub_1AB0370A8(v17, v18);
          if (v21)
          {
            break;
          }
        }

        if (qword_1ED4D1FC0 != -1)
        {
          swift_once();
        }

        oslog = qword_1ED4D1FC8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1AB4D4720;
        v26 = sub_1AB0168A8(0, 52, 0, MEMORY[0x1E69E7CC0]);
        {
          *(&v92[0] + 1) = MEMORY[0x1E69E6158];
          *&v91 = 0xD000000000000032;
          *(&v91 + 1) = 0x80000001AB500900;
          v84 = 0u;
          v85 = 0u;
          sub_1AB0169C4(&v91, &v84);
          LOBYTE(v86) = 0;
          v28 = *(v26 + 2);
          v27 = *(v26 + 3);
          if (v28 >= v27 >> 1)
          {
            v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
          }

          *(v26 + 2) = v28 + 1;
          v29 = &v26[40 * v28];
          v30 = v84;
          v31 = v85;
          v29[64] = v86;
          *(v29 + 2) = v30;
          *(v29 + 3) = v31;
        }

        *(&v92[0] + 1) = &type metadata for MetricsFieldInclusionRequest;
        *&v91 = v17;
        *(&v91 + 1) = v18;
        sub_1AB01522C(&v91, &v88);
        v84 = 0u;
        v85 = 0u;
        sub_1AB0169C4(&v88, &v84);
        LOBYTE(v86) = 1;
        v33 = *(v26 + 2);
        v32 = *(v26 + 3);
        if (v33 >= v32 >> 1)
        {
          v26 = sub_1AB0168A8((v32 > 1), v33 + 1, 1, v26);
        }

        *(v26 + 2) = v33 + 1;
        v34 = &v26[40 * v33];
        v35 = v84;
        v36 = v85;
        v34[64] = v86;
        *(v34 + 2) = v35;
        *(v34 + 3) = v36;
        sub_1AB014AC0(&v91, &unk_1EB437E60);
        *(&v92[0] + 1) = MEMORY[0x1E69E6158];
        *&v91 = 96;
        *(&v91 + 1) = 0xE100000000000000;
        v84 = 0u;
        v85 = 0u;
        sub_1AB0169C4(&v91, &v84);
        LOBYTE(v86) = 0;
        v38 = *(v26 + 2);
        v37 = *(v26 + 3);
        if (v38 >= v37 >> 1)
        {
          v26 = sub_1AB0168A8((v37 > 1), v38 + 1, 1, v26);
        }

        *(v26 + 2) = v38 + 1;
        v39 = &v26[40 * v38];
        v40 = v84;
        v41 = v85;
        v39[64] = v86;
        *(v39 + 2) = v40;
        *(v39 + 3) = v41;
        *(v25 + 32) = v26;
        v42 = sub_1AB461074();
        if (os_log_type_enabled(oslog, v42))
        {
          if (qword_1EB4359F8 != -1)
          {
            swift_once();
          }

          v43 = off_1EB435A00;
          os_unfair_lock_lock(off_1EB435A00 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v43[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v43 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v5 = v76;
          v45 = swift_allocObject();
          *(v45 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v84 = v25;
          *(&v84 + 1) = sub_1AB0223E4;
          *&v85 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
          sub_1AB016A34();
          v46 = sub_1AB460484();
          v48 = v47;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1AB4D4720;
          *(v49 + 56) = MEMORY[0x1E69E6158];
          *(v49 + 64) = sub_1AB016854();
          *(v49 + 32) = v46;
          *(v49 + 40) = v48;
          sub_1AB45FF14();

          v6 = v77;
          v11 = v78;
          if (!v10)
          {
            goto LABEL_4;
          }
        }

        else
        {

          v5 = v76;
          v6 = v77;
          v11 = v78;
          if (!v10)
          {
            goto LABEL_4;
          }
        }
      }

      v22 = v20;

      sub_1AB01494C(*(v6 + 56) + 40 * v22, &v91);
      sub_1AB0149B0(&v91, &v84);
      v23 = *(&v85 + 1);
      v24 = v86;
      __swift_project_boxed_opaque_existential_1Tm(&v84, *(&v85 + 1));
      *&v91 = v80;
      (*(v24 + 8))(a3, &v91, v23, v24);
      if (v83)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      v11 = v78;
      if (!v10)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_4:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_8;
      }
    }

    v50 = 1 << *(v82 + 32);
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & *(v82 + 64);
    v53 = (v50 + 63) >> 6;
    v54 = v94 + 56;

    v55 = 0;
    while (v52)
    {
      v58 = v55;
LABEL_48:
      v61 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v62 = v61 | (v58 << 6);
      v63 = (*(v82 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      sub_1AB01494C(*(v82 + 56) + 40 * v62, &v88);
      *&v84 = v65;
      *(&v84 + 1) = v64;
      sub_1AB0149B0(&v88, &v85);

LABEL_49:
      v91 = v84;
      v92[0] = v85;
      v92[1] = v86;
      v93 = v87;
      v66 = *(&v84 + 1);
      if (!*(&v84 + 1))
      {
      }

      v67 = v91;
      sub_1AB0149B0(v92, &v88);
      if (*(v94 + 16) && (v68 = v94, sub_1AB4620A4(), sub_1AB460684(), v69 = sub_1AB462104(), v70 = -1 << *(v68 + 32), v71 = v69 & ~v70, ((*(v54 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) != 0))
      {
        v72 = ~v70;
        while (1)
        {
          v73 = (*(v94 + 48) + 16 * v71);
          v74 = *v73 == v67 && v73[1] == v66;
          if (v74 || (sub_1AB461DA4() & 1) != 0)
          {
            break;
          }

          v71 = (v71 + 1) & v72;
          if (((*(v54 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_36:

        v56 = v89;
        v57 = v90;
        __swift_project_boxed_opaque_existential_1Tm(&v88, v89);
        *&v84 = v80;
        (*(v57 + 8))(a3, &v84, v56, v57);
        if (v83)
        {

          v75 = &v88;
          return __swift_destroy_boxed_opaque_existential_1Tm(v75);
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    }

    if (v53 <= v55 + 1)
    {
      v59 = v55 + 1;
    }

    else
    {
      v59 = v53;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v58 >= v53)
      {
        v52 = 0;
        v87 = 0;
        v85 = 0u;
        v86 = 0u;
        v55 = v60;
        v84 = 0u;
        goto LABEL_49;
      }

      v52 = *(v82 + 64 + 8 * v58);
      ++v55;
      if (v52)
      {
        v55 = v58;
        goto LABEL_48;
      }
    }

    __break(1u);
  }

  v75 = &v84;
  return __swift_destroy_boxed_opaque_existential_1Tm(v75);
}

uint64_t sub_1AB069860(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_1AB0699A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  static StaticIntent._unwrapData<A>(of:)(AssociatedTypeWitness, a1, a2, &v14 - v9);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = 1;
  }

  else
  {
    (*(v11 + 32))(a3, v10, AssociatedTypeWitness);
    v12 = 0;
  }

  return (*(v11 + 56))(a3, v12, 1, AssociatedTypeWitness);
}

uint64_t sub_1AB069B4C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  sub_1AB0699A0(v0[5], v0[6], v1);
  v4 = *(v2 + 48);
  v0[16] = v4;
  v0[17] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[12];
    v6 = v0[9];
    v7 = v0[10];
    v8 = *(v7 + 8);
    v0[18] = v8;
    v0[19] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_1AB06C5D0;
    v10 = v0[11];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    return sub_1AB074B6C(v10, v14, v12, v13, v11);
  }

  else
  {
    v16 = v0[15];
    v17 = v0[8];
    v18 = v0[2];
    v19 = *(v0[13] + 32);
    v19(v16, v0[12], v17);
    v19(v18, v16, v17);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1AB069D08()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if ((*(v0 + 128))(v1, 1, v2) == 1)
  {
    (*(v0 + 144))(v1, *(v0 + 72));
    v3 = swift_task_alloc();
    *(v0 + 176) = v3;
    *v3 = v0;
    v3[1] = sub_1AB0C6E34;
    v4 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);

    return sub_1AB075BEC(v7, v8, v5, v6, v4);
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 16);
    v12 = *(*(v0 + 104) + 32);
    v12(v10, v1, v2);
    v12(v11, v10, v2);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1AB069E84(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43CF80);
  v10 = sub_1AB068378();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1AB069F60(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v5;
}

uint64_t sub_1AB069F34()
{
  result = sub_1AB069E84(&unk_1F1FF0ED0);
  qword_1EB46C2A0 = result;
  *algn_1EB46C2A8 = v1;
  return result;
}

_BYTE *sub_1AB069F60@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1AB0683DC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1AB3FE774(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1AB3FE7F0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t JSONObject.double.getter()
{
  sub_1AB01EC0C(v0, v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1Tm(v4, v5);
    v1 = (*(v2 + 80))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1AB014AC0(v4, &qword_1EB436BA0);
  }

  return v1;
}

uint64_t Array<A>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1AB014A58(a1, v14, &qword_1EB436BA0);
  v8 = v15;
  if (!v15)
  {

    sub_1AB014AC0(v14, &qword_1EB436BA0);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
LABEL_6:
    sub_1AB014AC0(&v17, &qword_1EB437EF8);
    v10 = sub_1AB460A64();
    sub_1AB163664();
    swift_allocError();
    v11 = MEMORY[0x1E69E7CC0];
    *v12 = v10;
    v12[1] = v11;
    v12[2] = 0;
    v12[3] = 0;
    swift_willThrow();
    sub_1AB066D84(a1);
    return v10;
  }

  v9 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v9 + 152))(&v17, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!*(&v18 + 1))
  {

    goto LABEL_6;
  }

  v20[0] = v17;
  v20[1] = v18;
  v21 = v19;
  sub_1AB06A28C(v20, &v17);
  v14[0] = v7;
  v10 = Array<A>.init(tryDeserializing:using:)(&v17, v14, a3, a4);
  sub_1AB066D84(a1);
  sub_1AB06A37C(v20);
  return v10;
}

{
  v5 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = v5;
  v6 = JSONArray.map<A>(_:)(sub_1AB2B2AB4, v8, a3);
  sub_1AB06A37C(a1);

  return v6;
}

uint64_t JSONArray.compactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v7);
  return (*(v8 + 56))(a1, a2, a3, v7, v8);
}

uint64_t Promise.always(on:perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  swift_retain_n();
  swift_retain_n();
  Promise.then(perform:orCatchError:on:)(sub_1AB1603B0, v7, sub_1AB1603B0, v8, a1);
}

uint64_t PreferenceKey.lookupName.getter()
{
  v0 = sub_1AB026CF8();

  return v0;
}

uint64_t sub_1AB06A518@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, void *, void *, uint64_t, uint64_t)@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v10 = *v4;
  v9 = v4[1];
  *a4 = v10;
  a4[1] = v9;
  v15[0] = v7;
  v15[1] = v8;
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1Tm(a1, v11);

  return a3(v13, v15, a4, v11, v12);
}

uint64_t sub_1AB06A5D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[3] = a4;
  v38[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, a1, a4);
  v10 = *a2;
  v9 = a2[1];
  sub_1AB01494C(v38, &v33);
  sub_1AB034DC0(&v33, v10, v9, &v35);
  v11 = *(&v36 + 1);
  sub_1AB014AC0(&v35, &qword_1EB4375F8);
  if (v11)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D4720;
    v32 = sub_1AB0168A8(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v14._object = 0x80000001AB5008A0;
    v14._countAndFlagsBits = 0xD000000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v34 = &type metadata for MetricsFieldInclusionRequest;
    *&v33 = v10;
    *(&v33 + 1) = v9;
    sub_1AB01522C(&v33, v31);
    v35 = 0u;
    v36 = 0u;

    sub_1AB0169C4(v31, &v35);
    v37 = 1;
    v15 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0168A8(0, *(v15 + 2) + 1, 1, v15);
      v32 = v15;
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[40 * v17];
    v19 = v35;
    v20 = v36;
    v18[64] = v37;
    *(v18 + 2) = v19;
    *(v18 + 3) = v20;
    v32 = v15;
    sub_1AB014AC0(&v33, &unk_1EB437E60);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v13 + 32) = v32;
    v22 = sub_1AB461094();
    if (os_log_type_enabled(v12, v22))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v23 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v23 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v35 = v13;
      *(&v35 + 1) = sub_1AB0223E4;
      *&v36 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v26 = sub_1AB460484();
      v28 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1AB4D4720;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1AB016854();
      *(v29 + 32) = v26;
      *(v29 + 40) = v28;
      sub_1AB45FF14();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v38);
}

void *sub_1AB06A9E0(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1AB461904();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v2;
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
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v22 = *v20;
        v21 = v20[1];
        v23 = 40 * v18;
        sub_1AB01494C(*(v3 + 56) + 40 * v18, v26);
        v24 = (*(v5 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        sub_1AB0149B0(v26, *(v5 + 56) + v23);
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

        v2 = v25;
        goto LABEL_21;
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

LABEL_21:
    *v2 = v5;
  }

  return result;
}

uint64_t static AMSMetricsIdentifierFieldsProvider.metricsKeys.getter()
{
  if (qword_1EB4334F0 != -1)
  {
    swift_once();
  }
}

id sub_1AB06ABF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AB4D7EA0;
  if (qword_1EB432EB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB432EB8;
  *(v0 + 32) = qword_1EB432EB8;
  v2 = qword_1EB432E98;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB432EA0;
  *(v0 + 40) = qword_1EB432EA0;
  qword_1EB4334F8 = v0 & 0xFFFFFFFFFFFFFF8;

  return v4;
}

void sub_1AB06ACFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = sub_1AB460514();
  v8 = [objc_opt_self() keyWithName:v7 crossDeviceSync:a4 & 1];

  *a5 = v8;
}

uint64_t AMSMetricsIdentifierFieldsProvider.init(accountProvider:process:bag:shouldMigrate:resetInterval:keys:activeITunesAccountRequired:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = *a3;
  sub_1AB01494C(a1, v19);
  *(a7 + 8) = v15;
  *(a7 + 16) = 0;
  *a7 = a4;
  sub_1AB01494C(v19, a7 + 24);
  *(a7 + 64) = a2;
  *(a7 + 72) = a8;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6;
  *(a7 + 96) = sub_1AB2FD5D8;
  *(a7 + 104) = 0;
  if (v15)
  {
    *&v18 = v15;
    swift_unknownObjectRetain_n();
    v16 = sub_1AB3AF064(&v18);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
    *(a7 + 16) = v16;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return result;
}

void static MetricsFieldExclusionRequest.amsMetricsID.getter(uint64_t a1@<X8>)
{
  strcpy(a1, "amsMetricsID");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1AB06B0F0()
{
  v0 = *(sub_1AB06B14C() + 16);

  sub_1AB06B640();
  return v0;
}

uint64_t sub_1AB06B14C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &off_1EB43D640);
  swift_endAccess();
  if (v1)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for _ACAccountStoreObserver();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1AB0167A8(v6);
  }

  objc_sync_enter(v0);
  sub_1AB06B23C(v0, v6);
  objc_sync_exit(v0);
  return *&v6[0];
}

uint64_t sub_1AB06B23C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = objc_getAssociatedObject(a1, &off_1EB43D640);
  swift_endAccess();
  if (v4)
  {
    sub_1AB461494();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1AB0167A8(v12);
    goto LABEL_8;
  }

  type metadata accessor for _ACAccountStoreObserver();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D660);
    swift_allocObject();
    v7 = sub_1AB03356C();
    v8 = sub_1AB06B3D8();
    type metadata accessor for _ACAccountStoreObserver();
    swift_allocObject();
    v6 = sub_1AB06B4F8(v7, v8);

    swift_beginAccess();

    objc_setAssociatedObject(a1, &off_1EB43D640, v6, 0x301);
    swift_endAccess();

    goto LABEL_9;
  }

  v6 = v9;
LABEL_9:
  *a2 = v6;
  return result;
}

id sub_1AB06B3D8()
{
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if (byte_1EB435998 == 1)
  {
    if (qword_1EB435E30 != -1)
    {
      swift_once();
    }

    v0 = off_1EB43D658;
    os_unfair_lock_lock(off_1EB43D658 + 6);
    v1 = *(v0 + 2);
    v2 = v1;
    os_unfair_lock_unlock(v0 + 6);
    if (v1)
    {
      return v2;
    }
  }

  v4 = [objc_opt_self() defaultCenter];

  return v4;
}

uint64_t sub_1AB06B4F8(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v4 = qword_1EB432F00;

  v5 = a2;

  if (v4 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v2 selector:sel_accountStoreDidChange_ name:qword_1EB432F08 object:0];

  v6 = qword_1EB432F18;

  if (v6 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v2 selector:sel_accountCookiesDidChange_ name:qword_1EB432F20 object:0];

  return v2;
}

unint64_t sub_1AB06B640()
{
  result = qword_1EB433410;
  if (!qword_1EB433410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433410);
  }

  return result;
}

uint64_t sub_1AB06B6A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);

  return v3(v4, v1, v2);
}

uint64_t storeEnumTagSinglePayload for DependencyCycleError.Creator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

JetEngine::ActionMetrics __swiftcall ActionMetrics.init(data:custom:)(Swift::OpaquePointer data, JetEngine::ScalarDictionary custom)
{
  v3 = *custom.values._rawValue;
  v2->_rawValue = data._rawValue;
  v2[1]._rawValue = v3;
  result.custom = custom;
  result.data = data;
  return result;
}

void __swiftcall ImpressionMetrics.ID.init(parent:element:index:uniqueID:)(JetEngine::ImpressionMetrics::ID *__return_ptr retstr, Swift::String_optional parent, Swift::String element, Swift::Int index, Swift::String_optional uniqueID)
{
  object = uniqueID.value._object;
  countAndFlagsBits = uniqueID.value._countAndFlagsBits;
  v8 = element._object;
  v9 = element._countAndFlagsBits;
  v10 = parent.value._object;
  v11 = parent.value._countAndFlagsBits;
  v13 = sub_1AB45F9E4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object)
  {
    if (index == -1)
    {
      v20[0] = v15;
      sub_1AB45F9D4();
      countAndFlagsBits = sub_1AB45F9C4();
      object = v19;
      (*(v14 + 8))(v17, v20[0]);
    }

    else
    {
      v20[1] = index;
      countAndFlagsBits = sub_1AB461C44();
      object = v18;
    }
  }

  retstr->parent.value._countAndFlagsBits = v11;
  retstr->parent.value._object = v10;
  retstr->element._countAndFlagsBits = v9;
  retstr->element._object = v8;
  retstr->index = index;
  retstr->uniqueID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->uniqueID.value._object = object;
}

uint64_t sub_1AB06B8BC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1AB0165C4(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1AB014B78(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1AB014AC0(v21, &qword_1EB43A620);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
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
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AB06BA1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1AB0165C4((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}